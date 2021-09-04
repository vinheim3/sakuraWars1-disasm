; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0df", ROMX[$4000], BANK[$df]

	ld   a, c                                        ; $4000: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4001: $cf
	rst  $38                                         ; $4002: $ff
	rst  $38                                         ; $4003: $ff
	rst  $38                                         ; $4004: $ff
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	rst  $38                                         ; $4009: $ff
	cp   $cc                                         ; $400a: $fe $cc
	cp   c                                           ; $400c: $b9
	ld   [hl], h                                     ; $400d: $74
	ld   d, h                                        ; $400e: $54
	ld   de, $1111                                   ; $400f: $11 $11 $11
	ld   de, $1111                                   ; $4012: $11 $11 $11
	ld   de, $1111                                   ; $4015: $11 $11 $11
	ld   de, $1211                                   ; $4018: $11 $11 $12
	ld   b, a                                        ; $401b: $47
	sbc  h                                           ; $401c: $9c
	rst  $38                                         ; $401d: $ff
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	rst  $38                                         ; $4025: $ff
	rst  $38                                         ; $4026: $ff
	db   $dd                                         ; $4027: $dd
	cp   d                                           ; $4028: $ba
	sub  [hl]                                        ; $4029: $96
	ld   b, e                                        ; $402a: $43
	ld   de, $1111                                   ; $402b: $11 $11 $11
	ld   de, $1111                                   ; $402e: $11 $11 $11
	ld   de, $1111                                   ; $4031: $11 $11 $11
	ld   de, $6513                                   ; $4034: $11 $13 $65
	ld   a, e                                        ; $4037: $7b
	rst  $28                                         ; $4038: $ef
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	rst  $38                                         ; $403c: $ff
	rst  $38                                         ; $403d: $ff
	rst  $38                                         ; $403e: $ff
	rst  $38                                         ; $403f: $ff
	rst  $38                                         ; $4040: $ff
	rst  $38                                         ; $4041: $ff
	db   $dd                                         ; $4042: $dd
	db   $ed                                         ; $4043: $ed
	xor  c                                           ; $4044: $a9
	ld   h, l                                        ; $4045: $65
	ld   h, h                                        ; $4046: $64
	ld   de, $1111                                   ; $4047: $11 $11 $11
	ld   de, $1111                                   ; $404a: $11 $11 $11
	ld   de, $1111                                   ; $404d: $11 $11 $11
	ld   de, $a714                                   ; $4050: $11 $14 $a7
	adc  l                                           ; $4053: $8d
	rst  $38                                         ; $4054: $ff
	rst  $38                                         ; $4055: $ff
	rst  $38                                         ; $4056: $ff
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	rst  $38                                         ; $4059: $ff
	rst  $38                                         ; $405a: $ff
	rst  $38                                         ; $405b: $ff
	rst  $38                                         ; $405c: $ff
	rst  $38                                         ; $405d: $ff
	xor  $ed                                         ; $405e: $ee $ed
	ret                                              ; $4060: $c9


	ld   h, h                                        ; $4061: $64
	inc  [hl]                                        ; $4062: $34
	ld   sp, $1111                                   ; $4063: $31 $11 $11
	ld   de, $1111                                   ; $4066: $11 $11 $11
	ld   de, $1111                                   ; $4069: $11 $11 $11
	ld   de, $bb16                                   ; $406c: $11 $16 $bb
	adc  $ff                                         ; $406f: $ce $ff
	rst  $38                                         ; $4071: $ff
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	rst  $38                                         ; $4075: $ff
	rst  $38                                         ; $4076: $ff
	rst  $38                                         ; $4077: $ff
	rst  $38                                         ; $4078: $ff
	rst  $38                                         ; $4079: $ff
	rst  $38                                         ; $407a: $ff
	cp   d                                           ; $407b: $ba
	cp   e                                           ; $407c: $bb
	ld   [hl], h                                     ; $407d: $74
	inc  sp                                          ; $407e: $33
	inc  sp                                          ; $407f: $33
	ld   de, $1111                                   ; $4080: $11 $11 $11
	ld   de, $1111                                   ; $4083: $11 $11 $11
	ld   de, $1111                                   ; $4086: $11 $11 $11
	ld   [de], a                                     ; $4089: $12
	adc  [hl]                                        ; $408a: $8e
	rst  $38                                         ; $408b: $ff
	rst  $38                                         ; $408c: $ff
	rst  $38                                         ; $408d: $ff
	rst  $38                                         ; $408e: $ff
	rst  $38                                         ; $408f: $ff
	rst  $38                                         ; $4090: $ff
	rst  $38                                         ; $4091: $ff
	rst  $38                                         ; $4092: $ff
	rst  $38                                         ; $4093: $ff
	rst  $38                                         ; $4094: $ff
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	db   $fd                                         ; $4097: $fd
	xor  b                                           ; $4098: $a8
	halt                                             ; $4099: $76
	ld   d, l                                        ; $409a: $55
	ld   b, d                                        ; $409b: $42
	ld   hl, $1111                                   ; $409c: $21 $11 $11
	ld   de, $1111                                   ; $409f: $11 $11 $11
	ld   de, $1111                                   ; $40a2: $11 $11 $11
	ld   de, $ef3a                                   ; $40a5: $11 $3a $ef
	rst  $38                                         ; $40a8: $ff
	rst  $38                                         ; $40a9: $ff
	rst  $38                                         ; $40aa: $ff
	rst  $38                                         ; $40ab: $ff
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	rst  $38                                         ; $40b0: $ff
	rst  $38                                         ; $40b1: $ff
	rst  $38                                         ; $40b2: $ff
	xor  $cb                                         ; $40b3: $ee $cb
	sbc  c                                           ; $40b5: $99
	halt                                             ; $40b6: $76
	ld   d, l                                        ; $40b7: $55
	ld   b, e                                        ; $40b8: $43
	ld   hl, $1111                                   ; $40b9: $21 $11 $11
	ld   de, $1111                                   ; $40bc: $11 $11 $11
	ld   de, $1111                                   ; $40bf: $11 $11 $11
	inc  de                                          ; $40c2: $13
	adc  h                                           ; $40c3: $8c
	rst  $28                                         ; $40c4: $ef
	rst  $38                                         ; $40c5: $ff
	rst  $38                                         ; $40c6: $ff
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	rst  $38                                         ; $40ca: $ff
	rst  $38                                         ; $40cb: $ff
	rst  $38                                         ; $40cc: $ff
	rst  $38                                         ; $40cd: $ff
	rst  $38                                         ; $40ce: $ff
	rst  $38                                         ; $40cf: $ff
	db   $ec                                         ; $40d0: $ec
	xor  c                                           ; $40d1: $a9
	adc  c                                           ; $40d2: $89
	add  [hl]                                        ; $40d3: $86
	ld   d, h                                        ; $40d4: $54
	inc  [hl]                                        ; $40d5: $34
	ld   [hl-], a                                    ; $40d6: $32
	ld   de, $1111                                   ; $40d7: $11 $11 $11
	ld   de, $1111                                   ; $40da: $11 $11 $11
	ld   de, $1711                                   ; $40dd: $11 $11 $17
	rst  JumpTable                                         ; $40e0: $df
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	rst  $38                                         ; $40e3: $ff
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	rst  $38                                         ; $40e6: $ff
	rst  $38                                         ; $40e7: $ff
	rst  $38                                         ; $40e8: $ff
	rst  $38                                         ; $40e9: $ff
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	xor  $cb                                         ; $40ec: $ee $cb
	xor  c                                           ; $40ee: $a9
	sbc  b                                           ; $40ef: $98
	add  a                                           ; $40f0: $87
	ld   h, l                                        ; $40f1: $65
	ld   b, e                                        ; $40f2: $43
	ld   [hl-], a                                    ; $40f3: $32
	ld   de, $1111                                   ; $40f4: $11 $11 $11
	ld   de, $1111                                   ; $40f7: $11 $11 $11
	ld   de, $1811                                   ; $40fa: $11 $11 $18
	rst  JumpTable                                         ; $40fd: $df
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	rst  $38                                         ; $4102: $ff
	rst  $38                                         ; $4103: $ff
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	db   $fd                                         ; $4108: $fd
	cp   $ee                                         ; $4109: $fe $ee
	cp   c                                           ; $410b: $b9
	ld   a, c                                        ; $410c: $79
	xor  c                                           ; $410d: $a9
	ld   h, l                                        ; $410e: $65
	ld   b, e                                        ; $410f: $43
	ld   b, e                                        ; $4110: $43
	ld   hl, $1111                                   ; $4111: $21 $11 $11
	ld   de, $1111                                   ; $4114: $11 $11 $11
	ld   de, $1611                                   ; $4117: $11 $11 $16
	rst  JumpTable                                         ; $411a: $df
	rst  $38                                         ; $411b: $ff
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	rst  $38                                         ; $4120: $ff
	rst  $38                                         ; $4121: $ff
	cp   $ff                                         ; $4122: $fe $ff
	rst  $38                                         ; $4124: $ff
	rst  $38                                         ; $4125: $ff
	cp   $ed                                         ; $4126: $fe $ed
	cp   e                                           ; $4128: $bb
	sbc  c                                           ; $4129: $99
	sbc  c                                           ; $412a: $99
	sbc  b                                           ; $412b: $98
	ld   h, l                                        ; $412c: $65
	ld   b, e                                        ; $412d: $43
	ld   sp, $1111                                   ; $412e: $31 $11 $11
	ld   de, $1111                                   ; $4131: $11 $11 $11
	ld   de, $1111                                   ; $4134: $11 $11 $11
	adc  l                                           ; $4137: $8d
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	rst  $38                                         ; $413b: $ff
	rst  $38                                         ; $413c: $ff
	rst  $38                                         ; $413d: $ff
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	rst  $28                                         ; $4140: $ef
	rst  $38                                         ; $4141: $ff
	rst  $38                                         ; $4142: $ff
	rst  $38                                         ; $4143: $ff
	rst  $38                                         ; $4144: $ff
	db   $ec                                         ; $4145: $ec
	cp   b                                           ; $4146: $b8
	sbc  c                                           ; $4147: $99
	xor  c                                           ; $4148: $a9
	add  [hl]                                        ; $4149: $86
	ld   d, l                                        ; $414a: $55
	ld   b, e                                        ; $414b: $43
	ld   de, $1111                                   ; $414c: $11 $11 $11
	ld   de, $1111                                   ; $414f: $11 $11 $11
	ld   de, $2a11                                   ; $4152: $11 $11 $2a
	rst  $28                                         ; $4155: $ef
	rst  $38                                         ; $4156: $ff
	rst  $38                                         ; $4157: $ff
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	cp   $dd                                         ; $415a: $fe $dd
	xor  $ed                                         ; $415c: $ee $ed
	rst  $28                                         ; $415e: $ef
	rst  $38                                         ; $415f: $ff
	rst  $38                                         ; $4160: $ff
	rst  $38                                         ; $4161: $ff
	cp   $db                                         ; $4162: $fe $db
	sub  a                                           ; $4164: $97
	ld   [hl], a                                     ; $4165: $77
	adc  c                                           ; $4166: $89
	ld   [hl], l                                     ; $4167: $75
	ld   b, d                                        ; $4168: $42
	ld   [hl-], a                                    ; $4169: $32
	ld   de, $1111                                   ; $416a: $11 $11 $11
	ld   de, $1111                                   ; $416d: $11 $11 $11
	ld   de, $bf14                                   ; $4170: $11 $14 $bf
	rst  $38                                         ; $4173: $ff
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff

Jump_0df_4176:
	rst  $38                                         ; $4176: $ff
	cp   $cb                                         ; $4177: $fe $cb
	db   $dd                                         ; $4179: $dd
	call c, $ffdd                                    ; $417a: $dc $dd $ff
	rst  $38                                         ; $417d: $ff
	rst  $38                                         ; $417e: $ff
	rst  $38                                         ; $417f: $ff
	db   $fd                                         ; $4180: $fd
	and  a                                           ; $4181: $a7
	ld   [hl], a                                     ; $4182: $77
	add  a                                           ; $4183: $87
	ld   [hl], h                                     ; $4184: $74
	inc  [hl]                                        ; $4185: $34
	ld   d, h                                        ; $4186: $54
	ld   hl, $1111                                   ; $4187: $21 $11 $11
	ld   de, $1111                                   ; $418a: $11 $11 $11
	ld   de, $6d11                                   ; $418d: $11 $11 $6d
	rst  $38                                         ; $4190: $ff
	rst  $38                                         ; $4191: $ff
	rst  $38                                         ; $4192: $ff
	rst  $38                                         ; $4193: $ff
	rst  $38                                         ; $4194: $ff
	jp   c, $99a9                                    ; $4195: $da $a9 $99

	adc  e                                           ; $4198: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4199: $cf
	rst  $38                                         ; $419a: $ff
	rst  $38                                         ; $419b: $ff
	rst  $38                                         ; $419c: $ff
	rst  $38                                         ; $419d: $ff
	ld   a, [$6687]                                  ; $419e: $fa $87 $66
	ld   d, l                                        ; $41a1: $55
	inc  sp                                          ; $41a2: $33
	inc  sp                                          ; $41a3: $33
	ld   sp, $1111                                   ; $41a4: $31 $11 $11
	ld   de, $1111                                   ; $41a7: $11 $11 $11
	ld   de, $4a11                                   ; $41aa: $11 $11 $4a
	rst  $38                                         ; $41ad: $ff
	rst  $38                                         ; $41ae: $ff
	rst  $38                                         ; $41af: $ff
	rst  $38                                         ; $41b0: $ff
	rst  $38                                         ; $41b1: $ff
	db   $fd                                         ; $41b2: $fd
	xor  c                                           ; $41b3: $a9
	ld   [hl], l                                     ; $41b4: $75
	ld   b, [hl]                                     ; $41b5: $46
	ld   a, d                                        ; $41b6: $7a
	rst  $28                                         ; $41b7: $ef
	rst  $38                                         ; $41b8: $ff
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	rst  $38                                         ; $41bb: $ff
	cp   d                                           ; $41bc: $ba
	add  l                                           ; $41bd: $85
	ld   d, e                                        ; $41be: $53
	ld   hl, $1112                                   ; $41bf: $21 $12 $11
	ld   de, $1111                                   ; $41c2: $11 $11 $11
	ld   de, $1111                                   ; $41c5: $11 $11 $11
	ld   de, $cf15                                   ; $41c8: $11 $15 $cf
	rst  $38                                         ; $41cb: $ff
	rst  $38                                         ; $41cc: $ff
	rst  $38                                         ; $41cd: $ff
	rst  $38                                         ; $41ce: $ff
	rst  $38                                         ; $41cf: $ff
	db   $eb                                         ; $41d0: $eb
	sub  l                                           ; $41d1: $95
	ld   [hl+], a                                    ; $41d2: $22
	dec  [hl]                                        ; $41d3: $35
	adc  e                                           ; $41d4: $8b
	rst  JumpTable                                         ; $41d5: $df
	rst  $38                                         ; $41d6: $ff
	rst  $38                                         ; $41d7: $ff
	rst  $38                                         ; $41d8: $ff
	rst  $38                                         ; $41d9: $ff

Call_0df_41da:
	db   $ec                                         ; $41da: $ec
	sub  [hl]                                        ; $41db: $96
	ld   sp, $1111                                   ; $41dc: $31 $11 $11
	ld   de, $1111                                   ; $41df: $11 $11 $11
	ld   de, $1111                                   ; $41e2: $11 $11 $11
	ld   de, $9d15                                   ; $41e5: $11 $15 $9d
	rst  $38                                         ; $41e8: $ff
	rst  $38                                         ; $41e9: $ff
	rst  $38                                         ; $41ea: $ff
	rst  $38                                         ; $41eb: $ff
	rst  $38                                         ; $41ec: $ff
	rst  $38                                         ; $41ed: $ff
	cp   c                                           ; $41ee: $b9
	ld   d, e                                        ; $41ef: $53
	ld   de, $5823                                   ; $41f0: $11 $23 $58
	cp   l                                           ; $41f3: $bd
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	rst  $38                                         ; $41f6: $ff
	rst  $38                                         ; $41f7: $ff
	ei                                               ; $41f8: $fb
	add  l                                           ; $41f9: $85
	ld   hl, $1111                                   ; $41fa: $21 $11 $11
	ld   de, $1111                                   ; $41fd: $11 $11 $11
	ld   de, $1111                                   ; $4200: $11 $11 $11
	inc  d                                           ; $4203: $14
	ld   l, d                                        ; $4204: $6a
	cp   a                                           ; $4205: $bf
	rst  $38                                         ; $4206: $ff
	rst  $38                                         ; $4207: $ff
	rst  $38                                         ; $4208: $ff
	rst  $38                                         ; $4209: $ff
	rst  $38                                         ; $420a: $ff
	db   $fd                                         ; $420b: $fd
	sub  a                                           ; $420c: $97
	ld   d, h                                        ; $420d: $54
	inc  [hl]                                        ; $420e: $34
	ld   b, l                                        ; $420f: $45
	ld   l, b                                        ; $4210: $68
	cp   e                                           ; $4211: $bb
	db   $dd                                         ; $4212: $dd
	sbc  $dc                                         ; $4213: $de $dc
	ret                                              ; $4215: $c9


	adc  c                                           ; $4216: $89
	ld   [hl], a                                     ; $4217: $77
	ld   h, l                                        ; $4218: $65
	ld   h, l                                        ; $4219: $65
	ld   d, [hl]                                     ; $421a: $56
	ld   h, [hl]                                     ; $421b: $66
	ld   h, [hl]                                     ; $421c: $66
	ld   h, [hl]                                     ; $421d: $66
	ld   d, [hl]                                     ; $421e: $56
	ld   d, l                                        ; $421f: $55
	ld   b, h                                        ; $4220: $44
	inc  sp                                          ; $4221: $33
	inc  sp                                          ; $4222: $33
	ld   [hl-], a                                    ; $4223: $32
	inc  sp                                          ; $4224: $33
	inc  [hl]                                        ; $4225: $34
	ld   d, l                                        ; $4226: $55
	ld   h, a                                        ; $4227: $67
	ld   a, c                                        ; $4228: $79
	sbc  c                                           ; $4229: $99
	xor  e                                           ; $422a: $ab
	cp   h                                           ; $422b: $bc
	call $ffff                                       ; $422c: $cd $ff $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	rst  $38                                         ; $4231: $ff
	rst  $38                                         ; $4232: $ff
	rst  $38                                         ; $4233: $ff
	db   $ec                                         ; $4234: $ec
	cp   e                                           ; $4235: $bb
	xor  c                                           ; $4236: $a9
	sbc  b                                           ; $4237: $98
	halt                                             ; $4238: $76
	ld   h, l                                        ; $4239: $65
	ld   d, l                                        ; $423a: $55
	ld   b, h                                        ; $423b: $44
	ld   b, h                                        ; $423c: $44
	inc  sp                                          ; $423d: $33
	inc  sp                                          ; $423e: $33
	inc  sp                                          ; $423f: $33
	ld   [hl-], a                                    ; $4240: $32
	ld   [hl+], a                                    ; $4241: $22
	ld   [hl+], a                                    ; $4242: $22
	ld   [hl+], a                                    ; $4243: $22
	ld   [hl+], a                                    ; $4244: $22
	inc  sp                                          ; $4245: $33
	ld   b, l                                        ; $4246: $45
	ld   h, [hl]                                     ; $4247: $66
	ld   a, b                                        ; $4248: $78
	sbc  d                                           ; $4249: $9a
	cp   e                                           ; $424a: $bb
	call z, $decc                                    ; $424b: $cc $cc $de
	sbc  $ee                                         ; $424e: $de $ee
	xor  $ed                                         ; $4250: $ee $ed
	db   $dd                                         ; $4252: $dd
	call c, $aabb                                    ; $4253: $dc $bb $aa
	xor  d                                           ; $4256: $aa
	sbc  b                                           ; $4257: $98
	sbc  b                                           ; $4258: $98
	add  a                                           ; $4259: $87
	ld   [hl], a                                     ; $425a: $77
	ld   h, [hl]                                     ; $425b: $66
	ld   h, [hl]                                     ; $425c: $66
	ld   h, [hl]                                     ; $425d: $66
	ld   d, l                                        ; $425e: $55
	ld   d, l                                        ; $425f: $55
	ld   d, l                                        ; $4260: $55
	ld   d, l                                        ; $4261: $55
	ld   b, h                                        ; $4262: $44
	ld   b, e                                        ; $4263: $43
	ld   [hl-], a                                    ; $4264: $32
	ld   [hl+], a                                    ; $4265: $22
	ld   de, $3322                                   ; $4266: $11 $22 $33
	ld   b, l                                        ; $4269: $45
	ld   h, a                                        ; $426a: $67
	adc  b                                           ; $426b: $88
	sbc  c                                           ; $426c: $99
	xor  d                                           ; $426d: $aa
	xor  e                                           ; $426e: $ab
	xor  e                                           ; $426f: $ab
	cp   h                                           ; $4270: $bc
	cp   h                                           ; $4271: $bc
	call $ddcd                                       ; $4272: $cd $cd $dd
	db   $dd                                         ; $4275: $dd
	db   $dd                                         ; $4276: $dd
	db   $dd                                         ; $4277: $dd
	call z, $aabb                                    ; $4278: $cc $bb $aa
	sbc  c                                           ; $427b: $99
	add  a                                           ; $427c: $87
	ld   [hl], a                                     ; $427d: $77
	ld   h, [hl]                                     ; $427e: $66
	ld   h, l                                        ; $427f: $65
	ld   d, l                                        ; $4280: $55
	ld   d, l                                        ; $4281: $55
	ld   d, l                                        ; $4282: $55
	ld   d, l                                        ; $4283: $55
	ld   d, h                                        ; $4284: $54
	ld   b, h                                        ; $4285: $44
	ld   b, h                                        ; $4286: $44
	ld   b, h                                        ; $4287: $44
	inc  sp                                          ; $4288: $33
	inc  sp                                          ; $4289: $33
	inc  sp                                          ; $428a: $33
	inc  sp                                          ; $428b: $33
	ld   b, h                                        ; $428c: $44
	ld   d, l                                        ; $428d: $55
	ld   h, [hl]                                     ; $428e: $66
	ld   [hl], a                                     ; $428f: $77
	adc  c                                           ; $4290: $89
	sbc  c                                           ; $4291: $99
	sbc  d                                           ; $4292: $9a
	xor  e                                           ; $4293: $ab
	set  1, h                                        ; $4294: $cb $cc
	db   $dd                                         ; $4296: $dd
	db   $dd                                         ; $4297: $dd
	db   $dd                                         ; $4298: $dd
	db   $dd                                         ; $4299: $dd
	call c, $bbdc                                    ; $429a: $dc $dc $bb
	xor  e                                           ; $429d: $ab
	xor  d                                           ; $429e: $aa
	sbc  b                                           ; $429f: $98
	adc  b                                           ; $42a0: $88
	ld   [hl], a                                     ; $42a1: $77
	ld   h, [hl]                                     ; $42a2: $66
	ld   h, [hl]                                     ; $42a3: $66
	ld   d, l                                        ; $42a4: $55
	ld   d, l                                        ; $42a5: $55
	ld   d, l                                        ; $42a6: $55
	ld   d, l                                        ; $42a7: $55
	ld   d, l                                        ; $42a8: $55
	ld   d, l                                        ; $42a9: $55
	ld   b, h                                        ; $42aa: $44
	ld   b, h                                        ; $42ab: $44
	ld   b, h                                        ; $42ac: $44
	inc  sp                                          ; $42ad: $33
	inc  sp                                          ; $42ae: $33
	inc  sp                                          ; $42af: $33
	ld   b, h                                        ; $42b0: $44
	ld   d, l                                        ; $42b1: $55
	ld   h, [hl]                                     ; $42b2: $66
	ld   [hl], a                                     ; $42b3: $77
	adc  c                                           ; $42b4: $89
	adc  c                                           ; $42b5: $89
	sbc  d                                           ; $42b6: $9a
	sbc  d                                           ; $42b7: $9a
	xor  e                                           ; $42b8: $ab
	cp   d                                           ; $42b9: $ba
	cp   e                                           ; $42ba: $bb
	set  1, h                                        ; $42bb: $cb $cc
	db   $dd                                         ; $42bd: $dd
	db   $dd                                         ; $42be: $dd
	db   $dd                                         ; $42bf: $dd
	call z, $babc                                    ; $42c0: $cc $bc $ba
	cp   d                                           ; $42c3: $ba
	sbc  c                                           ; $42c4: $99
	sbc  b                                           ; $42c5: $98
	adc  b                                           ; $42c6: $88
	ld   [hl], a                                     ; $42c7: $77
	halt                                             ; $42c8: $76
	ld   h, [hl]                                     ; $42c9: $66
	ld   h, [hl]                                     ; $42ca: $66
	ld   h, l                                        ; $42cb: $65
	ld   d, l                                        ; $42cc: $55
	ld   d, l                                        ; $42cd: $55
	ld   d, l                                        ; $42ce: $55
	ld   d, l                                        ; $42cf: $55
	ld   d, l                                        ; $42d0: $55
	ld   b, h                                        ; $42d1: $44
	ld   b, h                                        ; $42d2: $44
	ld   b, e                                        ; $42d3: $43
	inc  sp                                          ; $42d4: $33
	inc  sp                                          ; $42d5: $33
	ld   b, h                                        ; $42d6: $44
	ld   d, l                                        ; $42d7: $55
	ld   h, [hl]                                     ; $42d8: $66
	ld   a, b                                        ; $42d9: $78
	adc  b                                           ; $42da: $88
	sbc  d                                           ; $42db: $9a
	sbc  d                                           ; $42dc: $9a
	xor  d                                           ; $42dd: $aa
	cp   e                                           ; $42de: $bb
	cp   h                                           ; $42df: $bc
	set  1, h                                        ; $42e0: $cb $cc
	call $ccdc                                       ; $42e2: $cd $dc $cc
	call $bbcc                                       ; $42e5: $cd $cc $bb
	cp   d                                           ; $42e8: $ba
	xor  d                                           ; $42e9: $aa
	xor  c                                           ; $42ea: $a9
	adc  c                                           ; $42eb: $89
	add  a                                           ; $42ec: $87
	ld   [hl], a                                     ; $42ed: $77
	halt                                             ; $42ee: $76
	ld   h, [hl]                                     ; $42ef: $66
	ld   h, [hl]                                     ; $42f0: $66
	ld   h, l                                        ; $42f1: $65
	ld   d, l                                        ; $42f2: $55
	ld   d, l                                        ; $42f3: $55
	ld   d, l                                        ; $42f4: $55
	ld   d, l                                        ; $42f5: $55
	ld   d, l                                        ; $42f6: $55
	ld   d, l                                        ; $42f7: $55
	ld   d, l                                        ; $42f8: $55
	ld   b, h                                        ; $42f9: $44
	ld   b, h                                        ; $42fa: $44
	ld   b, h                                        ; $42fb: $44
	ld   d, l                                        ; $42fc: $55
	ld   d, l                                        ; $42fd: $55
	ld   h, [hl]                                     ; $42fe: $66
	ld   [hl], a                                     ; $42ff: $77
	adc  c                                           ; $4300: $89
	adc  c                                           ; $4301: $89
	xor  d                                           ; $4302: $aa
	xor  e                                           ; $4303: $ab
	xor  e                                           ; $4304: $ab
	cp   e                                           ; $4305: $bb
	call z, $ccbc                                    ; $4306: $cc $bc $cc
	call z, $ccdc                                    ; $4309: $cc $dc $cc
	set  1, e                                        ; $430c: $cb $cb
	xor  e                                           ; $430e: $ab
	xor  c                                           ; $430f: $a9
	xor  c                                           ; $4310: $a9
	adc  b                                           ; $4311: $88
	add  a                                           ; $4312: $87
	ld   [hl], a                                     ; $4313: $77
	halt                                             ; $4314: $76
	ld   h, [hl]                                     ; $4315: $66
	ld   h, [hl]                                     ; $4316: $66
	ld   h, [hl]                                     ; $4317: $66
	ld   h, l                                        ; $4318: $65
	ld   d, l                                        ; $4319: $55
	ld   d, l                                        ; $431a: $55
	ld   d, l                                        ; $431b: $55
	ld   d, l                                        ; $431c: $55
	ld   d, l                                        ; $431d: $55
	ld   d, l                                        ; $431e: $55
	ld   d, l                                        ; $431f: $55
	ld   d, l                                        ; $4320: $55
	ld   d, l                                        ; $4321: $55
	ld   d, l                                        ; $4322: $55
	ld   d, [hl]                                     ; $4323: $56
	ld   h, [hl]                                     ; $4324: $66
	ld   h, a                                        ; $4325: $67
	ld   [hl], a                                     ; $4326: $77
	adc  c                                           ; $4327: $89
	adc  c                                           ; $4328: $89
	xor  c                                           ; $4329: $a9
	xor  d                                           ; $432a: $aa
	xor  e                                           ; $432b: $ab
	cp   d                                           ; $432c: $ba
	xor  e                                           ; $432d: $ab
	cp   e                                           ; $432e: $bb
	cp   e                                           ; $432f: $bb
	cp   e                                           ; $4330: $bb
	call z, $cbcc                                    ; $4331: $cc $cc $cb
	cp   e                                           ; $4334: $bb
	xor  e                                           ; $4335: $ab
	xor  c                                           ; $4336: $a9
	sbc  c                                           ; $4337: $99
	sbc  b                                           ; $4338: $98
	adc  b                                           ; $4339: $88
	ld   [hl], a                                     ; $433a: $77
	ld   [hl], a                                     ; $433b: $77
	add  [hl]                                        ; $433c: $86
	ld   a, b                                        ; $433d: $78
	ld   d, a                                        ; $433e: $57
	ld   h, [hl]                                     ; $433f: $66
	ld   h, l                                        ; $4340: $65
	ld   h, [hl]                                     ; $4341: $66
	cp   b                                           ; $4342: $b8
	adc  e                                           ; $4343: $8b
	ld   l, b                                        ; $4344: $68
	cp   c                                           ; $4345: $b9
	adc  b                                           ; $4346: $88
	jp   nz, Jump_0df_568d                           ; $4347: $c2 $8d $56

	ld   b, e                                        ; $434a: $43
	ld   b, [hl]                                     ; $434b: $46
	ld   d, l                                        ; $434c: $55
	ld   d, e                                        ; $434d: $53
	ld   d, [hl]                                     ; $434e: $56
	ld   d, a                                        ; $434f: $57
	sbc  b                                           ; $4350: $98
	xor  e                                           ; $4351: $ab
	sbc  l                                           ; $4352: $9d
	db   $ed                                         ; $4353: $ed
	cp   e                                           ; $4354: $bb
	call $dcfe                                       ; $4355: $cd $fe $dc
	sbc  $ff                                         ; $4358: $de $ff
	cp   $ff                                         ; $435a: $fe $ff
	rst  $38                                         ; $435c: $ff
	ld   sp, hl                                      ; $435d: $f9
	ld   a, b                                        ; $435e: $78
	add  a                                           ; $435f: $87
	ld   b, d                                        ; $4360: $42
	ld   de, $1123                                   ; $4361: $11 $23 $11
	ld   de, $1111                                   ; $4364: $11 $11 $11
	ld   de, $1111                                   ; $4367: $11 $11 $11
	ld   de, $3611                                   ; $436a: $11 $11 $36
	ld   a, e                                        ; $436d: $7b
	rst  $38                                         ; $436e: $ff
	rst  $38                                         ; $436f: $ff
	rst  $38                                         ; $4370: $ff
	rst  $38                                         ; $4371: $ff
	rst  $38                                         ; $4372: $ff
	rst  $38                                         ; $4373: $ff
	db   $fc                                         ; $4374: $fc
	jp   z, $4464                                    ; $4375: $ca $64 $44

	ld   l, b                                        ; $4378: $68
	adc  c                                           ; $4379: $89
	sbc  d                                           ; $437a: $9a
	cp   l                                           ; $437b: $bd
	jp   z, $1174                                    ; $437c: $ca $74 $11

	ld   de, $1111                                   ; $437f: $11 $11 $11
	ld   de, $1111                                   ; $4382: $11 $11 $11
	ld   de, $ff5c                                   ; $4385: $11 $5c $ff
	rst  $38                                         ; $4388: $ff
	rst  $38                                         ; $4389: $ff
	rst  $38                                         ; $438a: $ff
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	add  d                                           ; $438e: $82
	ld   de, $1111                                   ; $438f: $11 $11 $11
	ld   c, c                                        ; $4392: $49
	rst  JumpTable                                         ; $4393: $df
	rst  $38                                         ; $4394: $ff
	rst  $38                                         ; $4395: $ff
	or   a                                           ; $4396: $b7
	ld   de, $1111                                   ; $4397: $11 $11 $11
	ld   de, $1111                                   ; $439a: $11 $11 $11
	ld   de, $ff1c                                   ; $439d: $11 $1c $ff
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	rst  $38                                         ; $43a2: $ff
	rst  $38                                         ; $43a3: $ff
	rst  $38                                         ; $43a4: $ff
	rst  $38                                         ; $43a5: $ff
	sub  e                                           ; $43a6: $93
	ld   de, $2411                                   ; $43a7: $11 $11 $24
	adc  h                                           ; $43aa: $8c
	rst  $38                                         ; $43ab: $ff
	rst  $38                                         ; $43ac: $ff
	jp   hl                                          ; $43ad: $e9


	ld   sp, $1111                                   ; $43ae: $31 $11 $11
	ld   de, $1111                                   ; $43b1: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $43b4: $11 $11 $ff
	rst  $38                                         ; $43b7: $ff
	rst  $38                                         ; $43b8: $ff
	rst  $38                                         ; $43b9: $ff
	rst  $38                                         ; $43ba: $ff
	rst  $38                                         ; $43bb: $ff
	rst  $38                                         ; $43bc: $ff
	ei                                               ; $43bd: $fb
	ld   [hl], c                                     ; $43be: $71
	ld   de, $ac37                                   ; $43bf: $11 $37 $ac
	rst  $28                                         ; $43c2: $ef
	cp   $b7                                         ; $43c3: $fe $b7
	ld   hl, $1111                                   ; $43c5: $21 $11 $11
	ld   de, $1111                                   ; $43c8: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $43cb: $11 $13 $ff
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	rst  $38                                         ; $43d2: $ff
	rst  $38                                         ; $43d3: $ff
	db   $eb                                         ; $43d4: $eb
	add  h                                           ; $43d5: $84
	inc  hl                                          ; $43d6: $23
	ld   e, b                                        ; $43d7: $58
	adc  $ff                                         ; $43d8: $ce $ff
	db   $ec                                         ; $43da: $ec
	sub  e                                           ; $43db: $93
	ld   de, $1111                                   ; $43dc: $11 $11 $11
	ld   de, $1111                                   ; $43df: $11 $11 $11
	ld   de, $ff1d                                   ; $43e2: $11 $1d $ff
	rst  $38                                         ; $43e5: $ff
	rst  $38                                         ; $43e6: $ff
	rst  $38                                         ; $43e7: $ff
	rst  $38                                         ; $43e8: $ff
	rst  $38                                         ; $43e9: $ff
	cp   $ba                                         ; $43ea: $fe $ba
	add  [hl]                                        ; $43ec: $86
	ld   h, [hl]                                     ; $43ed: $66
	adc  e                                           ; $43ee: $8b
	rst  $38                                         ; $43ef: $ff
	cp   $b5                                         ; $43f0: $fe $b5
	ld   de, $1111                                   ; $43f2: $11 $11 $11
	ld   de, $1111                                   ; $43f5: $11 $11 $11
	ld   de, $9f11                                   ; $43f8: $11 $11 $9f
	rst  $38                                         ; $43fb: $ff
	rst  $38                                         ; $43fc: $ff
	rst  $38                                         ; $43fd: $ff
	rst  $38                                         ; $43fe: $ff
	rst  $38                                         ; $43ff: $ff
	rst  $38                                         ; $4400: $ff
	db   $fd                                         ; $4401: $fd
	db   $eb                                         ; $4402: $eb
	xor  c                                           ; $4403: $a9
	sbc  b                                           ; $4404: $98
	sbc  e                                           ; $4405: $9b
	call z, $2196                                    ; $4406: $cc $96 $21
	ld   de, $1111                                   ; $4409: $11 $11 $11
	ld   de, $1111                                   ; $440c: $11 $11 $11
	ld   de, $ff1f                                   ; $440f: $11 $1f $ff
	rst  $38                                         ; $4412: $ff
	rst  $38                                         ; $4413: $ff
	rst  $38                                         ; $4414: $ff
	rst  $38                                         ; $4415: $ff
	rst  $38                                         ; $4416: $ff
	cp   $cc                                         ; $4417: $fe $cc
	cp   d                                           ; $4419: $ba
	xor  c                                           ; $441a: $a9
	sbc  d                                           ; $441b: $9a
	sbc  $d9                                         ; $441c: $de $d9
	ld   sp, $1111                                   ; $441e: $31 $11 $11
	ld   de, $1111                                   ; $4421: $11 $11 $11
	ld   de, $5f11                                   ; $4424: $11 $11 $5f
	rst  $38                                         ; $4427: $ff
	rst  $38                                         ; $4428: $ff
	rst  $38                                         ; $4429: $ff
	rst  $38                                         ; $442a: $ff
	rst  $38                                         ; $442b: $ff
	rst  $38                                         ; $442c: $ff
	cp   $cb                                         ; $442d: $fe $cb
	xor  e                                           ; $442f: $ab
	cp   d                                           ; $4430: $ba
	xor  d                                           ; $4431: $aa
	call $21b8                                       ; $4432: $cd $b8 $21
	ld   de, $1111                                   ; $4435: $11 $11 $11
	ld   de, $1111                                   ; $4438: $11 $11 $11
	ld   de, $ffcf                                   ; $443b: $11 $cf $ff
	rst  $38                                         ; $443e: $ff
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	rst  $38                                         ; $4442: $ff
	cp   $ea                                         ; $4443: $fe $ea
	sbc  h                                           ; $4445: $9c
	cp   e                                           ; $4446: $bb
	set  1, h                                        ; $4447: $cb $cc
	add  l                                           ; $4449: $85
	ld   de, $1111                                   ; $444a: $11 $11 $11
	ld   de, $1111                                   ; $444d: $11 $11 $11
	ld   de, $ff17                                   ; $4450: $11 $17 $ff
	rst  $38                                         ; $4453: $ff
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	rst  $38                                         ; $4456: $ff
	rst  $38                                         ; $4457: $ff
	rst  $38                                         ; $4458: $ff
	db   $fd                                         ; $4459: $fd
	cp   c                                           ; $445a: $b9
	sbc  l                                           ; $445b: $9d
	db   $db                                         ; $445c: $db
	res  3, b                                        ; $445d: $cb $98
	ld   d, c                                        ; $445f: $51
	ld   de, $1111                                   ; $4460: $11 $11 $11
	ld   de, $1111                                   ; $4463: $11 $11 $11
	ld   de, $ffbf                                   ; $4466: $11 $bf $ff
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	rst  $38                                         ; $446b: $ff
	rst  $38                                         ; $446c: $ff
	rst  $38                                         ; $446d: $ff
	db   $fd                                         ; $446e: $fd
	sbc  c                                           ; $446f: $99
	ld   a, b                                        ; $4470: $78
	jp   z, $cbbd                                    ; $4471: $ca $bd $cb

	ld   h, c                                        ; $4474: $61
	ld   de, $1111                                   ; $4475: $11 $11 $11
	ld   de, $1111                                   ; $4478: $11 $11 $11
	ld   de, $ff1d                                   ; $447b: $11 $1d $ff
	rst  $38                                         ; $447e: $ff
	rst  $38                                         ; $447f: $ff
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	db   $fd                                         ; $4484: $fd
	xor  c                                           ; $4485: $a9
	cp   h                                           ; $4486: $bc
	xor  b                                           ; $4487: $a8
	xor  d                                           ; $4488: $aa
	ld   h, e                                        ; $4489: $63
	ld   de, $1111                                   ; $448a: $11 $11 $11
	ld   de, $1111                                   ; $448d: $11 $11 $11
	ld   de, $ff1c                                   ; $4490: $11 $1c $ff
	rst  $38                                         ; $4493: $ff
	rst  $38                                         ; $4494: $ff
	rst  $38                                         ; $4495: $ff
	rst  $38                                         ; $4496: $ff
	rst  $38                                         ; $4497: $ff
	rst  $38                                         ; $4498: $ff
	cp   $b6                                         ; $4499: $fe $b6
	adc  e                                           ; $449b: $8b
	set  1, h                                        ; $449c: $cb $cc
	ld   [hl], d                                     ; $449e: $72
	ld   de, $1111                                   ; $449f: $11 $11 $11
	ld   de, $1111                                   ; $44a2: $11 $11 $11
	ld   de, $ff1b                                   ; $44a5: $11 $1b $ff
	rst  $38                                         ; $44a8: $ff
	rst  $38                                         ; $44a9: $ff
	rst  $38                                         ; $44aa: $ff
	rst  $38                                         ; $44ab: $ff
	rst  $38                                         ; $44ac: $ff
	rst  $38                                         ; $44ad: $ff
	db   $fc                                         ; $44ae: $fc
	cp   c                                           ; $44af: $b9
	adc  l                                           ; $44b0: $8d
	set  5, h                                        ; $44b1: $cb $ec
	ld   [hl], e                                     ; $44b3: $73
	ld   de, $1111                                   ; $44b4: $11 $11 $11
	ld   de, $1111                                   ; $44b7: $11 $11 $11
	ld   de, $ff1f                                   ; $44ba: $11 $1f $ff
	rst  $38                                         ; $44bd: $ff
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	rst  $38                                         ; $44c0: $ff
	rst  $38                                         ; $44c1: $ff
	rst  $38                                         ; $44c2: $ff
	cp   h                                           ; $44c3: $bc
	and  a                                           ; $44c4: $a7
	xor  h                                           ; $44c5: $ac
	cp   [hl]                                        ; $44c6: $be
	call c, $1191                                    ; $44c7: $dc $91 $11
	ld   de, $1111                                   ; $44ca: $11 $11 $11
	ld   de, $1111                                   ; $44cd: $11 $11 $11
	sbc  a                                           ; $44d0: $9f
	rst  $38                                         ; $44d1: $ff
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	rst  $38                                         ; $44d4: $ff
	rst  $38                                         ; $44d5: $ff
	rst  $38                                         ; $44d6: $ff
	db   $fd                                         ; $44d7: $fd
	rst  ToBoot                                         ; $44d8: $c7
	ld   e, b                                        ; $44d9: $58
	adc  e                                           ; $44da: $8b
	call c, Call_0df_41da                            ; $44db: $dc $da $41
	ld   de, $1111                                   ; $44de: $11 $11 $11
	ld   de, $1111                                   ; $44e1: $11 $11 $11
	ld   a, [de]                                     ; $44e4: $1a
	rst  $38                                         ; $44e5: $ff
	rst  $38                                         ; $44e6: $ff
	rst  $38                                         ; $44e7: $ff
	rst  $38                                         ; $44e8: $ff
	rst  $38                                         ; $44e9: $ff
	rst  $38                                         ; $44ea: $ff
	rst  $38                                         ; $44eb: $ff
	ld   sp, hl                                      ; $44ec: $f9
	ld   sp, $bd4a                                   ; $44ed: $31 $4a $bd
	db   $eb                                         ; $44f0: $eb
	ld   [hl], e                                     ; $44f1: $73
	ld   de, $1111                                   ; $44f2: $11 $11 $11
	ld   de, $1111                                   ; $44f5: $11 $11 $11
	ld   de, $ffff                                   ; $44f8: $11 $ff $ff
	rst  $38                                         ; $44fb: $ff
	rst  $38                                         ; $44fc: $ff
	rst  $38                                         ; $44fd: $ff
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	ld   sp, hl                                      ; $4500: $f9
	ld   h, c                                        ; $4501: $61
	rla                                              ; $4502: $17
	ld   a, c                                        ; $4503: $79
	and  a                                           ; $4504: $a7
	sub  a                                           ; $4505: $97
	ld   hl, $1111                                   ; $4506: $21 $11 $11
	ld   de, $1111                                   ; $4509: $11 $11 $11
	ld   de, $ffbf                                   ; $450c: $11 $bf $ff
	rst  $38                                         ; $450f: $ff
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	ld   sp, hl                                      ; $4514: $f9
	ld   b, c                                        ; $4515: $41
	inc  d                                           ; $4516: $14
	ld   h, l                                        ; $4517: $65
	ld   h, l                                        ; $4518: $65
	sbc  c                                           ; $4519: $99
	ld   b, e                                        ; $451a: $43
	ld   de, $1111                                   ; $451b: $11 $11 $11
	ld   de, $1111                                   ; $451e: $11 $11 $11
	dec  l                                           ; $4521: $2d
	rst  $38                                         ; $4522: $ff
	rst  $38                                         ; $4523: $ff
	rst  $38                                         ; $4524: $ff
	rst  $38                                         ; $4525: $ff
	rst  $38                                         ; $4526: $ff
	rst  $38                                         ; $4527: $ff
	db   $fc                                         ; $4528: $fc
	ld   d, c                                        ; $4529: $51
	inc  de                                          ; $452a: $13
	ld   sp, $2711                                   ; $452b: $31 $11 $27
	ld   h, h                                        ; $452e: $64
	ld   de, $1111                                   ; $452f: $11 $11 $11
	ld   de, $1111                                   ; $4532: $11 $11 $11
	inc  h                                           ; $4535: $24
	cp   a                                           ; $4536: $bf
	rst  $38                                         ; $4537: $ff
	rst  $38                                         ; $4538: $ff
	rst  $38                                         ; $4539: $ff
	rst  $38                                         ; $453a: $ff
	rst  $38                                         ; $453b: $ff
	ld   a, [$3363]                                  ; $453c: $fa $63 $33
	ld   de, $6511                                   ; $453f: $11 $11 $65
	ld   de, $1111                                   ; $4542: $11 $11 $11
	ld   de, $1111                                   ; $4545: $11 $11 $11
	ld   de, $9f11                                   ; $4548: $11 $11 $9f
	rst  $38                                         ; $454b: $ff
	rst  $38                                         ; $454c: $ff
	rst  $38                                         ; $454d: $ff
	rst  $38                                         ; $454e: $ff
	rst  $38                                         ; $454f: $ff
	cp   $da                                         ; $4550: $fe $da
	ld   sp, $1311                                   ; $4552: $31 $11 $13
	ld   de, $1111                                   ; $4555: $11 $11 $11
	ld   de, $1111                                   ; $4558: $11 $11 $11
	ld   de, $1411                                   ; $455b: $11 $11 $14
	ld   a, a                                        ; $455e: $7f
	rst  $38                                         ; $455f: $ff
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	rst  $38                                         ; $4562: $ff
	rst  $38                                         ; $4563: $ff
	rst  $38                                         ; $4564: $ff
	db   $fd                                         ; $4565: $fd
	ld   h, c                                        ; $4566: $61
	ld   de, $1111                                   ; $4567: $11 $11 $11
	ld   de, $1111                                   ; $456a: $11 $11 $11
	ld   de, $1111                                   ; $456d: $11 $11 $11
	ld   de, $1b11                                   ; $4570: $11 $11 $1b
	rst  $38                                         ; $4573: $ff
	rst  $38                                         ; $4574: $ff

Jump_0df_4575:
	rst  $38                                         ; $4575: $ff
	rst  $38                                         ; $4576: $ff
	rst  $38                                         ; $4577: $ff
	rst  $38                                         ; $4578: $ff
	rst  $38                                         ; $4579: $ff
	ld   b, c                                        ; $457a: $41
	ld   de, $1132                                   ; $457b: $11 $32 $11
	ld   de, $1111                                   ; $457e: $11 $11 $11
	ld   de, $1111                                   ; $4581: $11 $11 $11
	ld   de, $1d11                                   ; $4584: $11 $11 $1d
	rst  $38                                         ; $4587: $ff
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	rst  $38                                         ; $458a: $ff
	rst  $38                                         ; $458b: $ff
	rst  $38                                         ; $458c: $ff
	db   $fc                                         ; $458d: $fc
	ld   a, c                                        ; $458e: $79
	ld   [$5521], a                                  ; $458f: $ea $21 $55
	ld   hl, $1111                                   ; $4592: $21 $11 $11
	ld   de, $1111                                   ; $4595: $11 $11 $11
	ld   de, $1111                                   ; $4598: $11 $11 $11
	scf                                              ; $459b: $37
	cp   a                                           ; $459c: $bf
	rst  $38                                         ; $459d: $ff
	rst  $38                                         ; $459e: $ff
	rst  $38                                         ; $459f: $ff
	rst  $38                                         ; $45a0: $ff
	rst  $38                                         ; $45a1: $ff
	rst  $38                                         ; $45a2: $ff
	rst  $38                                         ; $45a3: $ff
	cp   $fc                                         ; $45a4: $fe $fc
	xor  e                                           ; $45a6: $ab
	and  [hl]                                        ; $45a7: $a6
	ld   h, e                                        ; $45a8: $63
	ld   hl, $1111                                   ; $45a9: $21 $11 $11
	ld   de, $1111                                   ; $45ac: $11 $11 $11
	ld   de, $1111                                   ; $45af: $11 $11 $11
	ld   c, a                                        ; $45b2: $4f
	rst  $38                                         ; $45b3: $ff
	rst  $38                                         ; $45b4: $ff
	rst  $38                                         ; $45b5: $ff
	rst  $38                                         ; $45b6: $ff
	rst  $38                                         ; $45b7: $ff
	rst  $38                                         ; $45b8: $ff
	rst  $38                                         ; $45b9: $ff
	rst  $38                                         ; $45ba: $ff
	cp   a                                           ; $45bb: $bf
	or   l                                           ; $45bc: $b5
	and  a                                           ; $45bd: $a7
	ld   b, h                                        ; $45be: $44
	ld   de, $1101                                   ; $45bf: $11 $01 $11
	ld   de, $1111                                   ; $45c2: $11 $11 $11
	ld   de, $1211                                   ; $45c5: $11 $11 $12

Call_0df_45c8:
	ld   [hl-], a                                    ; $45c8: $32
	cp   a                                           ; $45c9: $bf
	rst  $38                                         ; $45ca: $ff
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	rst  $38                                         ; $45cd: $ff
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	db   $db                                         ; $45d0: $db
	db   $fc                                         ; $45d1: $fc
	ld   sp, $1114                                   ; $45d2: $31 $14 $11
	ld   de, $1111                                   ; $45d5: $11 $11 $11
	ld   de, $1111                                   ; $45d8: $11 $11 $11
	ld   de, $1111                                   ; $45db: $11 $11 $11
	xor  e                                           ; $45de: $ab
	rst  $28                                         ; $45df: $ef
	rst  $38                                         ; $45e0: $ff
	rst  $38                                         ; $45e1: $ff
	rst  $38                                         ; $45e2: $ff
	rst  $38                                         ; $45e3: $ff
	rst  $38                                         ; $45e4: $ff
	rst  $38                                         ; $45e5: $ff
	rst  $30                                         ; $45e6: $f7
	add  e                                           ; $45e7: $83
	ld   de, $1111                                   ; $45e8: $11 $11 $11
	ld   de, $1111                                   ; $45eb: $11 $11 $11
	ld   de, $1111                                   ; $45ee: $11 $11 $11
	ld   de, $2711                                   ; $45f1: $11 $11 $27
	rst  JumpTable                                         ; $45f4: $df
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	db   $fc                                         ; $45fb: $fc
	and  h                                           ; $45fc: $a4
	ld   de, $1111                                   ; $45fd: $11 $11 $11
	ld   de, $1111                                   ; $4600: $11 $11 $11
	ld   de, $1111                                   ; $4603: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4606: $11 $11 $ff
	rst  $38                                         ; $4609: $ff
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	rst  $38                                         ; $460c: $ff
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	cp   $11                                         ; $4610: $fe $11
	ld   hl, $1111                                   ; $4612: $21 $11 $11
	ld   de, $1111                                   ; $4615: $11 $11 $11
	ld   de, $1111                                   ; $4618: $11 $11 $11
	ld   de, $ffef                                   ; $461b: $11 $ef $ff
	rst  $38                                         ; $461e: $ff
	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	rst  $38                                         ; $4623: $ff
	db   $fc                                         ; $4624: $fc
	ld   de, $1111                                   ; $4625: $11 $11 $11
	ld   de, $1111                                   ; $4628: $11 $11 $11
	ld   de, $1111                                   ; $462b: $11 $11 $11
	ld   sp, rAUD1LOW                                   ; $462e: $31 $13 $ff
	rst  $38                                         ; $4631: $ff
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	rst  $38                                         ; $4636: $ff
	cp   c                                           ; $4637: $b9
	and  e                                           ; $4638: $a3
	ld   de, $1111                                   ; $4639: $11 $11 $11
	ld   de, $1111                                   ; $463c: $11 $11 $11
	ld   de, $1111                                   ; $463f: $11 $11 $11
	ld   de, $ffdf                                   ; $4642: $11 $df $ff
	rst  $38                                         ; $4645: $ff
	rst  $38                                         ; $4646: $ff
	rst  $38                                         ; $4647: $ff
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	ld   a, [$1185]                                  ; $464a: $fa $85 $11
	ld   de, $1111                                   ; $464d: $11 $11 $11
	ld   de, $1111                                   ; $4650: $11 $11 $11
	ld   de, $1111                                   ; $4653: $11 $11 $11
	xor  a                                           ; $4656: $af
	rst  $38                                         ; $4657: $ff
	rst  $38                                         ; $4658: $ff
	rst  $38                                         ; $4659: $ff
	rst  $38                                         ; $465a: $ff
	rst  $38                                         ; $465b: $ff
	rst  $38                                         ; $465c: $ff
	ld   hl, sp+$45                                  ; $465d: $f8 $45
	ld   de, $1111                                   ; $465f: $11 $11 $11
	ld   de, $1111                                   ; $4662: $11 $11 $11
	ld   de, $1111                                   ; $4665: $11 $11 $11
	ld   de, $ffcf                                   ; $4668: $11 $cf $ff
	rst  $38                                         ; $466b: $ff
	rst  $38                                         ; $466c: $ff
	rst  $38                                         ; $466d: $ff
	rst  $38                                         ; $466e: $ff
	rst  $38                                         ; $466f: $ff
	ld   sp, hl                                      ; $4670: $f9
	ld   h, h                                        ; $4671: $64
	ld   de, $1111                                   ; $4672: $11 $11 $11
	ld   de, $1111                                   ; $4675: $11 $11 $11
	ld   de, $1611                                   ; $4678: $11 $11 $16
	ld   [hl], d                                     ; $467b: $72
	ld   e, $ff                                      ; $467c: $1e $ff
	rst  $38                                         ; $467e: $ff
	rst  $38                                         ; $467f: $ff
	rst  $38                                         ; $4680: $ff
	rst  $38                                         ; $4681: $ff
	rst  $38                                         ; $4682: $ff
	rst  $30                                         ; $4683: $f7
	ld   de, $1121                                   ; $4684: $11 $21 $11
	ld   de, $1111                                   ; $4687: $11 $11 $11
	ld   de, $1111                                   ; $468a: $11 $11 $11
	ld   a, [de]                                     ; $468d: $1a
	and  d                                           ; $468e: $a2
	adc  a                                           ; $468f: $8f
	rst  $38                                         ; $4690: $ff
	rst  $38                                         ; $4691: $ff
	rst  $38                                         ; $4692: $ff
	rst  $38                                         ; $4693: $ff

Jump_0df_4694:
	rst  $38                                         ; $4694: $ff

Jump_0df_4695:
	rst  $38                                         ; $4695: $ff
	ldh  a, [c]                                      ; $4696: $f2
	ld   de, $1111                                   ; $4697: $11 $11 $11
	ld   de, $1111                                   ; $469a: $11 $11 $11
	ld   de, $1111                                   ; $469d: $11 $11 $11
	ld   [de], a                                     ; $46a0: $12
	ld   h, a                                        ; $46a1: $67
	cp   a                                           ; $46a2: $bf
	rst  $38                                         ; $46a3: $ff
	rst  $38                                         ; $46a4: $ff
	rst  $38                                         ; $46a5: $ff
	rst  $38                                         ; $46a6: $ff
	rst  $38                                         ; $46a7: $ff
	rst  $38                                         ; $46a8: $ff
	di                                               ; $46a9: $f3
	ld   de, $1111                                   ; $46aa: $11 $11 $11
	ld   de, $1111                                   ; $46ad: $11 $11 $11
	ld   de, $1111                                   ; $46b0: $11 $11 $11
	ld   d, $ba                                      ; $46b3: $16 $ba
	rst  JumpTable                                         ; $46b5: $df
	rst  $38                                         ; $46b6: $ff
	rst  $38                                         ; $46b7: $ff
	rst  $38                                         ; $46b8: $ff
	rst  $38                                         ; $46b9: $ff
	rst  $38                                         ; $46ba: $ff
	rst  $38                                         ; $46bb: $ff
	jp   nc, $1111                                   ; $46bc: $d2 $11 $11

	ld   de, $1111                                   ; $46bf: $11 $11 $11
	ld   de, $1111                                   ; $46c2: $11 $11 $11
	ld   de, wPlayerName+3                                   ; $46c5: $11 $11 $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46c8: $cf
	rst  $38                                         ; $46c9: $ff
	rst  $38                                         ; $46ca: $ff
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	rst  $38                                         ; $46cd: $ff
	ld   a, [$1195]                                  ; $46ce: $fa $95 $11
	ld   de, $1111                                   ; $46d1: $11 $11 $11
	ld   de, $1131                                   ; $46d4: $11 $31 $11
	ld   de, $1211                                   ; $46d7: $11 $11 $12
	sub  [hl]                                        ; $46da: $96
	rst  $28                                         ; $46db: $ef
	rst  $38                                         ; $46dc: $ff
	rst  $38                                         ; $46dd: $ff
	rst  $38                                         ; $46de: $ff
	rst  $38                                         ; $46df: $ff
	rst  $38                                         ; $46e0: $ff
	ei                                               ; $46e1: $fb
	pop  bc                                          ; $46e2: $c1
	ld   de, $1111                                   ; $46e3: $11 $11 $11
	ld   de, $7114                                   ; $46e6: $11 $14 $71
	ld   de, $1111                                   ; $46e9: $11 $11 $11
	ld   de, $bfea                                   ; $46ec: $11 $ea $bf
	rst  $38                                         ; $46ef: $ff
	rst  $38                                         ; $46f0: $ff
	rst  $38                                         ; $46f1: $ff
	rst  $38                                         ; $46f2: $ff
	rst  $38                                         ; $46f3: $ff
	or   a                                           ; $46f4: $b7
	ld   d, [hl]                                     ; $46f5: $56
	ld   de, $1611                                   ; $46f6: $11 $11 $16
	ld   de, $5211                                   ; $46f9: $11 $11 $52
	ld   de, $1111                                   ; $46fc: $11 $11 $11
	ld   de, $af7a                                   ; $46ff: $11 $7a $af
	rst  $38                                         ; $4702: $ff
	rst  $38                                         ; $4703: $ff
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	and  a                                           ; $4707: $a7
	sub  e                                           ; $4708: $93
	ld   de, $1411                                   ; $4709: $11 $11 $14
	ld   [hl], c                                     ; $470c: $71
	ld   de, $1137                                   ; $470d: $11 $37 $11
	ld   de, $1111                                   ; $4710: $11 $11 $11
	dec  h                                           ; $4713: $25
	rst  $38                                         ; $4714: $ff
	rst  $38                                         ; $4715: $ff
	rst  $38                                         ; $4716: $ff
	rst  $38                                         ; $4717: $ff
	rst  $38                                         ; $4718: $ff
	rst  $38                                         ; $4719: $ff
	rst  $30                                         ; $471a: $f7
	ld   b, c                                        ; $471b: $41
	ld   de, $1211                                   ; $471c: $11 $11 $12
	ld   [hl], h                                     ; $471f: $74
	ld   de, $1113                                   ; $4720: $11 $13 $11
	ld   de, $1111                                   ; $4723: $11 $11 $11
	dec  d                                           ; $4726: $15
	ld   l, a                                        ; $4727: $6f
	rst  $38                                         ; $4728: $ff
	rst  $38                                         ; $4729: $ff
	rst  $38                                         ; $472a: $ff
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	rst  $30                                         ; $472d: $f7
	inc  d                                           ; $472e: $14
	ld   de, $1411                                   ; $472f: $11 $11 $14
	xor  a                                           ; $4732: $af
	add  c                                           ; $4733: $81
	ld   de, $1151                                   ; $4734: $11 $51 $11
	ld   de, $1111                                   ; $4737: $11 $11 $11
	ld   e, h                                        ; $473a: $5c
	rst  $38                                         ; $473b: $ff
	rst  $38                                         ; $473c: $ff
	rst  $38                                         ; $473d: $ff
	rst  $38                                         ; $473e: $ff
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	jp   nz, $2311                                   ; $4741: $c2 $11 $23

	ld   de, $ca5b                                   ; $4744: $11 $5b $ca
	ld   d, c                                        ; $4747: $51
	ld   [de], a                                     ; $4748: $12
	ld   de, $1111                                   ; $4749: $11 $11 $11
	ld   de, $ef14                                   ; $474c: $11 $14 $ef
	rst  $38                                         ; $474f: $ff
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	rst  $38                                         ; $4752: $ff
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	and  c                                           ; $4755: $a1
	ld   de, $bc4b                                   ; $4756: $11 $4b $bc
	ret                                              ; $4759: $c9


	xor  d                                           ; $475a: $aa
	ld   d, e                                        ; $475b: $53
	ld   de, $1111                                   ; $475c: $11 $11 $11
	ld   de, $1611                                   ; $475f: $11 $11 $16
	rst  $38                                         ; $4762: $ff
	rst  $38                                         ; $4763: $ff
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	rst  $38                                         ; $4767: $ff
	rst  $38                                         ; $4768: $ff
	sub  c                                           ; $4769: $91
	inc  de                                          ; $476a: $13
	ld   a, l                                        ; $476b: $7d
	cp   l                                           ; $476c: $bd
	cp   $d6                                         ; $476d: $fe $d6
	ld   [hl+], a                                    ; $476f: $22
	ld   de, $1111                                   ; $4770: $11 $11 $11
	ld   de, $1711                                   ; $4773: $11 $11 $17
	rst  $38                                         ; $4776: $ff
	rst  $38                                         ; $4777: $ff
	rst  $38                                         ; $4778: $ff
	rst  $38                                         ; $4779: $ff
	rst  $38                                         ; $477a: $ff
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	rst  $10                                         ; $477d: $d7
	ld   de, $ff9b                                   ; $477e: $11 $9b $ff
	xor  h                                           ; $4781: $ac
	and  a                                           ; $4782: $a7
	ld   h, c                                        ; $4783: $61
	ld   de, $1111                                   ; $4784: $11 $11 $11
	ld   de, $1111                                   ; $4787: $11 $11 $11
	ccf                                              ; $478a: $3f
	rst  $38                                         ; $478b: $ff
	rst  $38                                         ; $478c: $ff
	rst  $38                                         ; $478d: $ff
	rst  $38                                         ; $478e: $ff
	rst  $38                                         ; $478f: $ff
	rst  $38                                         ; $4790: $ff
	rst  $38                                         ; $4791: $ff
	sub  a                                           ; $4792: $97
	ld   e, b                                        ; $4793: $58
	cp   h                                           ; $4794: $bc
	db   $dd                                         ; $4795: $dd
	call z, $1195                                    ; $4796: $cc $95 $11
	ld   de, $1111                                   ; $4799: $11 $11 $11
	ld   de, $1111                                   ; $479c: $11 $11 $11
	add  hl, de                                      ; $479f: $19
	rst  $38                                         ; $47a0: $ff
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	rst  $38                                         ; $47a5: $ff
	rst  $38                                         ; $47a6: $ff
	db   $fd                                         ; $47a7: $fd
	call $aaba                                       ; $47a8: $cd $ba $aa
	jp   z, $1152                                    ; $47ab: $ca $52 $11

	ld   de, $1111                                   ; $47ae: $11 $11 $11
	ld   de, $1111                                   ; $47b1: $11 $11 $11
	ld   de, $ff8e                                   ; $47b4: $11 $8e $ff
	rst  $38                                         ; $47b7: $ff
	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	rst  $38                                         ; $47bc: $ff
	rst  $38                                         ; $47bd: $ff
	sub  e                                           ; $47be: $93
	rla                                              ; $47bf: $17
	ei                                               ; $47c0: $fb
	ld   d, c                                        ; $47c1: $51
	ld   de, $4135                                   ; $47c2: $11 $35 $41
	ld   de, $1111                                   ; $47c5: $11 $11 $11
	ld   de, $1111                                   ; $47c8: $11 $11 $11
	dec  sp                                          ; $47cb: $3b
	jp   z, $ef9b                                    ; $47cc: $ca $9b $ef

	rst  $38                                         ; $47cf: $ff
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	rst  $38                                         ; $47d2: $ff
	cp   $da                                         ; $47d3: $fe $da
	rst  JumpTable                                         ; $47d5: $df
	ld   [$4564], a                                  ; $47d6: $ea $64 $45
	ld   h, l                                        ; $47d9: $65
	ld   hl, $1111                                   ; $47da: $21 $11 $11
	ld   de, $2311                                   ; $47dd: $11 $11 $23
	ld   sp, $1321                                   ; $47e0: $31 $21 $13
	inc  [hl]                                        ; $47e3: $34
	ld   a, d                                        ; $47e4: $7a
	res  2, a                                        ; $47e5: $cb $97
	sbc  l                                           ; $47e7: $9d
	rst  $38                                         ; $47e8: $ff
	rst  JumpTable                                         ; $47e9: $df
	rst  $38                                         ; $47ea: $ff
	db   $fd                                         ; $47eb: $fd
	db   $dd                                         ; $47ec: $dd
	call $a8da                                       ; $47ed: $cd $da $a8
	sbc  b                                           ; $47f0: $98
	halt                                             ; $47f1: $76
	ld   d, l                                        ; $47f2: $55
	ld   b, h                                        ; $47f3: $44
	ld   d, l                                        ; $47f4: $55
	ld   d, l                                        ; $47f5: $55
	adc  c                                           ; $47f6: $89
	sbc  c                                           ; $47f7: $99
	sbc  c                                           ; $47f8: $99
	sbc  d                                           ; $47f9: $9a
	cp   e                                           ; $47fa: $bb
	and  a                                           ; $47fb: $a7
	ld   h, a                                        ; $47fc: $67
	ld   [hl], a                                     ; $47fd: $77
	ld   [hl], a                                     ; $47fe: $77
	ld   [hl], a                                     ; $47ff: $77
	ld   [hl], a                                     ; $4800: $77
	ld   [hl], a                                     ; $4801: $77
	adc  b                                           ; $4802: $88
	add  a                                           ; $4803: $87
	ld   [hl], a                                     ; $4804: $77
	adc  b                                           ; $4805: $88
	sbc  d                                           ; $4806: $9a
	sbc  d                                           ; $4807: $9a
	adc  c                                           ; $4808: $89
	sbc  e                                           ; $4809: $9b
	cp   h                                           ; $480a: $bc
	cp   e                                           ; $480b: $bb
	cp   e                                           ; $480c: $bb
	xor  c                                           ; $480d: $a9
	sbc  d                                           ; $480e: $9a
	xor  d                                           ; $480f: $aa
	xor  c                                           ; $4810: $a9
	add  a                                           ; $4811: $87
	ld   a, b                                        ; $4812: $78
	adc  b                                           ; $4813: $88
	ld   [hl], a                                     ; $4814: $77
	ld   h, [hl]                                     ; $4815: $66
	ld   h, a                                        ; $4816: $67
	adc  b                                           ; $4817: $88
	halt                                             ; $4818: $76
	ld   h, [hl]                                     ; $4819: $66
	ld   a, b                                        ; $481a: $78
	sbc  c                                           ; $481b: $99
	add  a                                           ; $481c: $87
	ld   [hl], a                                     ; $481d: $77
	adc  b                                           ; $481e: $88
	sbc  c                                           ; $481f: $99
	sbc  c                                           ; $4820: $99
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	sbc  c                                           ; $4823: $99
	sbc  b                                           ; $4824: $98
	adc  b                                           ; $4825: $88
	adc  c                                           ; $4826: $89
	sbc  c                                           ; $4827: $99
	add  a                                           ; $4828: $87
	ld   [hl], a                                     ; $4829: $77
	ld   [hl], a                                     ; $482a: $77
	ld   [hl], a                                     ; $482b: $77
	halt                                             ; $482c: $76
	ld   h, a                                        ; $482d: $67
	ld   a, b                                        ; $482e: $78
	add  a                                           ; $482f: $87
	ld   [hl], a                                     ; $4830: $77
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	ld   [hl], a                                     ; $4833: $77
	adc  b                                           ; $4834: $88
	adc  c                                           ; $4835: $89
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  c                                           ; $4838: $89
	xor  d                                           ; $4839: $aa
	sbc  c                                           ; $483a: $99
	adc  b                                           ; $483b: $88
	sbc  b                                           ; $483c: $98
	adc  c                                           ; $483d: $89
	add  a                                           ; $483e: $87
	ld   [hl], a                                     ; $483f: $77
	ld   [hl], a                                     ; $4840: $77
	ld   [hl], a                                     ; $4841: $77
	halt                                             ; $4842: $76
	ld   h, a                                        ; $4843: $67
	ld   [hl], a                                     ; $4844: $77
	ld   [hl], a                                     ; $4845: $77
	ld   [hl], a                                     ; $4846: $77
	ld   a, b                                        ; $4847: $78
	adc  c                                           ; $4848: $89
	sbc  c                                           ; $4849: $99
	sbc  b                                           ; $484a: $98
	sbc  b                                           ; $484b: $98
	sbc  c                                           ; $484c: $99
	adc  c                                           ; $484d: $89
	adc  b                                           ; $484e: $88
	sbc  c                                           ; $484f: $99
	sbc  c                                           ; $4850: $99
	adc  b                                           ; $4851: $88
	adc  b                                           ; $4852: $88
	adc  c                                           ; $4853: $89
	adc  b                                           ; $4854: $88
	add  a                                           ; $4855: $87
	ld   a, b                                        ; $4856: $78
	add  a                                           ; $4857: $87
	ld   [hl], a                                     ; $4858: $77
	ld   [hl], a                                     ; $4859: $77
	ld   [hl], a                                     ; $485a: $77
	ld   [hl], a                                     ; $485b: $77
	ld   [hl], a                                     ; $485c: $77
	ld   [hl], a                                     ; $485d: $77
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	adc  c                                           ; $4861: $89
	sbc  c                                           ; $4862: $99
	adc  b                                           ; $4863: $88
	adc  b                                           ; $4864: $88
	adc  b                                           ; $4865: $88
	sbc  b                                           ; $4866: $98
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	adc  b                                           ; $486b: $88
	ld   [hl], a                                     ; $486c: $77
	ld   [hl], a                                     ; $486d: $77
	ld   [hl], a                                     ; $486e: $77
	ld   [hl], a                                     ; $486f: $77
	ld   [hl], a                                     ; $4870: $77
	ld   [hl], a                                     ; $4871: $77
	adc  b                                           ; $4872: $88
	adc  b                                           ; $4873: $88
	adc  b                                           ; $4874: $88
	adc  b                                           ; $4875: $88
	adc  b                                           ; $4876: $88
	adc  b                                           ; $4877: $88
	adc  b                                           ; $4878: $88
	adc  b                                           ; $4879: $88
	adc  b                                           ; $487a: $88
	adc  b                                           ; $487b: $88
	adc  c                                           ; $487c: $89
	sbc  c                                           ; $487d: $99
	adc  b                                           ; $487e: $88
	adc  b                                           ; $487f: $88
	adc  b                                           ; $4880: $88
	adc  b                                           ; $4881: $88
	adc  b                                           ; $4882: $88
	adc  b                                           ; $4883: $88
	adc  b                                           ; $4884: $88
	adc  b                                           ; $4885: $88
	adc  b                                           ; $4886: $88
	adc  b                                           ; $4887: $88
	adc  b                                           ; $4888: $88
	adc  b                                           ; $4889: $88
	adc  b                                           ; $488a: $88
	adc  b                                           ; $488b: $88
	adc  b                                           ; $488c: $88
	adc  b                                           ; $488d: $88
	adc  b                                           ; $488e: $88
	adc  b                                           ; $488f: $88
	adc  b                                           ; $4890: $88
	adc  b                                           ; $4891: $88
	adc  b                                           ; $4892: $88
	adc  b                                           ; $4893: $88
	adc  b                                           ; $4894: $88
	adc  b                                           ; $4895: $88
	adc  b                                           ; $4896: $88
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	adc  b                                           ; $4899: $88
	adc  b                                           ; $489a: $88
	adc  b                                           ; $489b: $88
	adc  b                                           ; $489c: $88
	adc  b                                           ; $489d: $88
	adc  b                                           ; $489e: $88
	adc  b                                           ; $489f: $88
	adc  b                                           ; $48a0: $88
	adc  b                                           ; $48a1: $88
	adc  b                                           ; $48a2: $88
	adc  b                                           ; $48a3: $88
	adc  b                                           ; $48a4: $88
	adc  b                                           ; $48a5: $88
	adc  b                                           ; $48a6: $88
	adc  b                                           ; $48a7: $88
	adc  b                                           ; $48a8: $88
	adc  b                                           ; $48a9: $88
	adc  b                                           ; $48aa: $88
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	adc  b                                           ; $48ad: $88
	adc  b                                           ; $48ae: $88
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  b                                           ; $48b2: $88
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	adc  b                                           ; $48b6: $88
	adc  b                                           ; $48b7: $88
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	adc  b                                           ; $48ba: $88
	adc  b                                           ; $48bb: $88
	adc  b                                           ; $48bc: $88
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  b                                           ; $48c3: $88
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  b                                           ; $48d6: $88
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	adc  b                                           ; $48da: $88
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	adc  b                                           ; $48de: $88
	adc  b                                           ; $48df: $88
	adc  b                                           ; $48e0: $88
	adc  b                                           ; $48e1: $88
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	adc  b                                           ; $48eb: $88
	adc  b                                           ; $48ec: $88
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	adc  b                                           ; $48f5: $88
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	adc  b                                           ; $48f9: $88
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	adc  b                                           ; $4905: $88
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	adc  b                                           ; $490a: $88
	adc  b                                           ; $490b: $88
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	adc  b                                           ; $4913: $88
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	adc  b                                           ; $4918: $88
	adc  b                                           ; $4919: $88
	adc  b                                           ; $491a: $88
	adc  b                                           ; $491b: $88
	adc  c                                           ; $491c: $89
	adc  c                                           ; $491d: $89
	bit  4, e                                        ; $491e: $cb $63
	ld   b, a                                        ; $4920: $47
	xor  h                                           ; $4921: $ac
	and  l                                           ; $4922: $a5
	ld   c, c                                        ; $4923: $49
	cp   d                                           ; $4924: $ba
	ld   [hl], e                                     ; $4925: $73
	ld   [hl], $9a                                   ; $4926: $36 $9a
	sub  a                                           ; $4928: $97
	ld   h, a                                        ; $4929: $67
	adc  c                                           ; $492a: $89
	sbc  c                                           ; $492b: $99
	add  a                                           ; $492c: $87
	ld   a, c                                        ; $492d: $79
	sbc  b                                           ; $492e: $98
	ld   [hl], a                                     ; $492f: $77
	ld   a, c                                        ; $4930: $79
	sub  a                                           ; $4931: $97
	ld   d, [hl]                                     ; $4932: $56
	cp   a                                           ; $4933: $bf
	db   $e4                                         ; $4934: $e4
	inc  de                                          ; $4935: $13
	ld   l, b                                        ; $4936: $68
	cp   [hl]                                        ; $4937: $be
	cp   b                                           ; $4938: $b8
	inc  sp                                          ; $4939: $33
	ld   l, d                                        ; $493a: $6a
	or   [hl]                                        ; $493b: $b6
	ld   hl, $da59                                   ; $493c: $21 $59 $da
	ld   d, h                                        ; $493f: $54
	ld   l, h                                        ; $4940: $6c
	db   $db                                         ; $4941: $db
	ld   h, l                                        ; $4942: $65
	ld   a, e                                        ; $4943: $7b
	cp   $93                                         ; $4944: $fe $93
	inc  bc                                          ; $4946: $03
	ld   b, l                                        ; $4947: $45
	xor  l                                           ; $4948: $ad
	reti                                             ; $4949: $d9


	ld   l, b                                        ; $494a: $68
	xor  h                                           ; $494b: $ac
	and  [hl]                                        ; $494c: $a6
	ld   [hl-], a                                    ; $494d: $32
	ld   e, c                                        ; $494e: $59
	cp   c                                           ; $494f: $b9
	ld   d, e                                        ; $4950: $53
	ld   l, d                                        ; $4951: $6a
	cp   d                                           ; $4952: $ba
	ld   d, h                                        ; $4953: $54
	ld   a, e                                        ; $4954: $7b
	cp   c                                           ; $4955: $b9
	ld   d, e                                        ; $4956: $53
	ld   e, c                                        ; $4957: $59
	ret                                              ; $4958: $c9


	sub  a                                           ; $4959: $97
	sbc  c                                           ; $495a: $99
	sbc  c                                           ; $495b: $99
	adc  d                                           ; $495c: $8a
	adc  b                                           ; $495d: $88
	adc  c                                           ; $495e: $89
	sbc  b                                           ; $495f: $98
	add  [hl]                                        ; $4960: $86
	ld   h, a                                        ; $4961: $67
	xor  c                                           ; $4962: $a9
	ld   [hl], l                                     ; $4963: $75
	ld   d, [hl]                                     ; $4964: $56
	adc  d                                           ; $4965: $8a
	sbc  b                                           ; $4966: $98
	ld   [hl], a                                     ; $4967: $77
	ld   a, c                                        ; $4968: $79
	xor  e                                           ; $4969: $ab
	sub  [hl]                                        ; $496a: $96
	inc  [hl]                                        ; $496b: $34
	adc  h                                           ; $496c: $8c
	add  sp, $21                                     ; $496d: $e8 $21
	ld   e, c                                        ; $496f: $59
	rst  JumpTable                                         ; $4970: $df
	db   $dd                                         ; $4971: $dd
	ret  z                                           ; $4972: $c8

	ld   h, h                                        ; $4973: $64
	ld   a, b                                        ; $4974: $78
	cp   c                                           ; $4975: $b9
	ld   h, e                                        ; $4976: $63
	ld   b, a                                        ; $4977: $47
	sbc  d                                           ; $4978: $9a
	halt                                             ; $4979: $76
	ld   e, b                                        ; $497a: $58
	sbc  d                                           ; $497b: $9a
	add  a                                           ; $497c: $87
	ld   a, b                                        ; $497d: $78
	xor  b                                           ; $497e: $a8
	ld   [hl], h                                     ; $497f: $74
	ld   l, b                                        ; $4980: $68
	cp   l                                           ; $4981: $bd
	call c, $7599                                    ; $4982: $dc $99 $75
	ld   [hl], $89                                   ; $4985: $36 $89
	add  l                                           ; $4987: $85
	ld   l, b                                        ; $4988: $68
	rst  $28                                         ; $4989: $ef
	ei                                               ; $498a: $fb
	ld   d, h                                        ; $498b: $54
	ld   a, b                                        ; $498c: $78
	sbc  b                                           ; $498d: $98
	ld   h, h                                        ; $498e: $64
	ld   d, l                                        ; $498f: $55
	ld   l, b                                        ; $4990: $68
	adc  c                                           ; $4991: $89
	halt                                             ; $4992: $76
	ld   l, c                                        ; $4993: $69
	call z, Call_0df_56a5                            ; $4994: $cc $a5 $56
	sbc  d                                           ; $4997: $9a
	ld   [hl], h                                     ; $4998: $74
	ld   [hl], $bd                                   ; $4999: $36 $bd
	cp   b                                           ; $499b: $b8
	adc  [hl]                                        ; $499c: $8e
	rst  $38                                         ; $499d: $ff
	jp   hl                                          ; $499e: $e9


	ld   [hl], a                                     ; $499f: $77
	ld   [hl], a                                     ; $49a0: $77
	adc  c                                           ; $49a1: $89
	ld   [hl], l                                     ; $49a2: $75
	inc  sp                                          ; $49a3: $33
	inc  [hl]                                        ; $49a4: $34
	ld   h, [hl]                                     ; $49a5: $66
	ld   h, a                                        ; $49a6: $67
	xor  e                                           ; $49a7: $ab
	cp   d                                           ; $49a8: $ba
	ld   h, [hl]                                     ; $49a9: $66
	xor  h                                           ; $49aa: $ac
	ret                                              ; $49ab: $c9


	ld   h, l                                        ; $49ac: $65
	adc  h                                           ; $49ad: $8c
	reti                                             ; $49ae: $d9


	ld   h, [hl]                                     ; $49af: $66
	add  a                                           ; $49b0: $87
	sbc  c                                           ; $49b1: $99
	ld   a, c                                        ; $49b2: $79
	sub  a                                           ; $49b3: $97
	ld   a, d                                        ; $49b4: $7a
	ld   [hl], l                                     ; $49b5: $75
	adc  c                                           ; $49b6: $89
	xor  d                                           ; $49b7: $aa
	sbc  c                                           ; $49b8: $99
	ld   h, l                                        ; $49b9: $65
	ld   a, e                                        ; $49ba: $7b
	xor  b                                           ; $49bb: $a8
	ld   d, l                                        ; $49bc: $55
	ld   a, e                                        ; $49bd: $7b
	and  l                                           ; $49be: $a5
	ld   e, b                                        ; $49bf: $58
	xor  h                                           ; $49c0: $ac
	or   a                                           ; $49c1: $b7
	ld   a, c                                        ; $49c2: $79
	call Call_0df_45c8                               ; $49c3: $cd $c8 $45
	xor  [hl]                                        ; $49c6: $ae
	call nc, $ac25                                   ; $49c7: $d4 $25 $ac
	add  l                                           ; $49ca: $85
	ld   c, b                                        ; $49cb: $48
	call z, $3595                                    ; $49cc: $cc $95 $35
	sbc  d                                           ; $49cf: $9a
	ld   [hl], l                                     ; $49d0: $75
	halt                                             ; $49d1: $76
	ld   d, l                                        ; $49d2: $55
	ld   h, [hl]                                     ; $49d3: $66
	ld   e, b                                        ; $49d4: $58
	ld   [hl], h                                     ; $49d5: $74
	ld   b, [hl]                                     ; $49d6: $46
	xor  b                                           ; $49d7: $a8
	halt                                             ; $49d8: $76
	ld   l, b                                        ; $49d9: $68
	xor  c                                           ; $49da: $a9
	halt                                             ; $49db: $76
	sbc  e                                           ; $49dc: $9b
	call z, $af87                                    ; $49dd: $cc $87 $af
	db   $fc                                         ; $49e0: $fc
	sbc  d                                           ; $49e1: $9a
	rst  JumpTable                                         ; $49e2: $df
	db   $fc                                         ; $49e3: $fc
	xor  l                                           ; $49e4: $ad
	db   $fd                                         ; $49e5: $fd
	call c, $aaba                                    ; $49e6: $dc $ba $aa
	adc  e                                           ; $49e9: $8b
	add  [hl]                                        ; $49ea: $86
	ld   d, [hl]                                     ; $49eb: $56
	ld   h, h                                        ; $49ec: $64
	ld   de, $1111                                   ; $49ed: $11 $11 $11
	ld   de, $1111                                   ; $49f0: $11 $11 $11
	ld   de, $3611                                   ; $49f3: $11 $11 $36
	sbc  c                                           ; $49f6: $99
	adc  $ff                                         ; $49f7: $ce $ff
	rst  $38                                         ; $49f9: $ff
	rst  $38                                         ; $49fa: $ff
	rst  $38                                         ; $49fb: $ff
	rst  $38                                         ; $49fc: $ff
	rst  $38                                         ; $49fd: $ff
	rst  $38                                         ; $49fe: $ff
	rst  $38                                         ; $49ff: $ff
	ret                                              ; $4a00: $c9


	sub  a                                           ; $4a01: $97
	adc  b                                           ; $4a02: $88
	sbc  b                                           ; $4a03: $98
	ld   h, a                                        ; $4a04: $67
	ld   l, b                                        ; $4a05: $68
	adc  b                                           ; $4a06: $88
	ld   h, e                                        ; $4a07: $63
	ld   de, $1111                                   ; $4a08: $11 $11 $11
	ld   de, $1111                                   ; $4a0b: $11 $11 $11
	ld   de, $5613                                   ; $4a0e: $11 $13 $56
	adc  l                                           ; $4a11: $8d
	rst  $38                                         ; $4a12: $ff
	rst  $38                                         ; $4a13: $ff
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	rst  $38                                         ; $4a16: $ff
	rst  $38                                         ; $4a17: $ff
	rst  $38                                         ; $4a18: $ff
	cp   $da                                         ; $4a19: $fe $da
	ld   h, [hl]                                     ; $4a1b: $66
	ld   d, a                                        ; $4a1c: $57
	ld   a, c                                        ; $4a1d: $79
	sub  a                                           ; $4a1e: $97
	add  a                                           ; $4a1f: $87
	sbc  d                                           ; $4a20: $9a
	sub  a                                           ; $4a21: $97
	ld   h, h                                        ; $4a22: $64
	inc  sp                                          ; $4a23: $33
	ld   de, $1111                                   ; $4a24: $11 $11 $11
	ld   de, $1111                                   ; $4a27: $11 $11 $11
	ld   de, $5c11                                   ; $4a2a: $11 $11 $5c
	rst  $38                                         ; $4a2d: $ff
	rst  $38                                         ; $4a2e: $ff
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	rst  $38                                         ; $4a31: $ff
	rst  $38                                         ; $4a32: $ff
	rst  $38                                         ; $4a33: $ff

jr_0df_4a34:
	rst  $38                                         ; $4a34: $ff
	or   a                                           ; $4a35: $b7
	ld   h, a                                        ; $4a36: $67
	add  a                                           ; $4a37: $87
	ld   b, e                                        ; $4a38: $43
	ld   b, l                                        ; $4a39: $45
	adc  d                                           ; $4a3a: $8a
	sbc  c                                           ; $4a3b: $99
	adc  b                                           ; $4a3c: $88
	adc  d                                           ; $4a3d: $8a
	xor  c                                           ; $4a3e: $a9
	ld   d, c                                        ; $4a3f: $51
	ld   de, $1111                                   ; $4a40: $11 $11 $11
	ld   de, $1111                                   ; $4a43: $11 $11 $11
	ld   de, $bf16                                   ; $4a46: $11 $16 $bf
	rst  $38                                         ; $4a49: $ff
	rst  $38                                         ; $4a4a: $ff
	rst  $38                                         ; $4a4b: $ff
	rst  $38                                         ; $4a4c: $ff
	rst  $38                                         ; $4a4d: $ff
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	rst  $38                                         ; $4a50: $ff
	db   $fc                                         ; $4a51: $fc
	xor  c                                           ; $4a52: $a9
	xor  d                                           ; $4a53: $aa
	add  a                                           ; $4a54: $87
	ld   h, a                                        ; $4a55: $67
	adc  c                                           ; $4a56: $89
	add  a                                           ; $4a57: $87
	ld   d, h                                        ; $4a58: $54
	ld   b, e                                        ; $4a59: $43
	ld   hl, $1111                                   ; $4a5a: $21 $11 $11
	ld   de, $1111                                   ; $4a5d: $11 $11 $11
	ld   de, $1111                                   ; $4a60: $11 $11 $11
	jr   c, jr_0df_4a34                              ; $4a63: $38 $cf

	rst  $38                                         ; $4a65: $ff
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	rst  $38                                         ; $4a6a: $ff
	rst  $38                                         ; $4a6b: $ff
	rst  $38                                         ; $4a6c: $ff
	rst  $38                                         ; $4a6d: $ff
	db   $fd                                         ; $4a6e: $fd
	call c, $bbcc                                    ; $4a6f: $dc $cc $bb
	xor  c                                           ; $4a72: $a9
	add  [hl]                                        ; $4a73: $86
	ld   d, h                                        ; $4a74: $54
	ld   hl, $1111                                   ; $4a75: $21 $11 $11
	ld   de, $1111                                   ; $4a78: $11 $11 $11
	ld   de, $1111                                   ; $4a7b: $11 $11 $11
	ld   de, $cf37                                   ; $4a7e: $11 $37 $cf
	rst  $38                                         ; $4a81: $ff
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	rst  $38                                         ; $4a86: $ff
	rst  $38                                         ; $4a87: $ff
	rst  $38                                         ; $4a88: $ff
	rst  $38                                         ; $4a89: $ff
	rst  $38                                         ; $4a8a: $ff
	db   $ec                                         ; $4a8b: $ec
	cp   h                                           ; $4a8c: $bc
	res  7, d                                        ; $4a8d: $cb $ba
	add  [hl]                                        ; $4a8f: $86
	ld   d, h                                        ; $4a90: $54
	ld   [hl-], a                                    ; $4a91: $32
	ld   de, $1111                                   ; $4a92: $11 $11 $11
	ld   de, $1111                                   ; $4a95: $11 $11 $11
	ld   de, $1111                                   ; $4a98: $11 $11 $11
	dec  d                                           ; $4a9b: $15
	xor  l                                           ; $4a9c: $ad
	rst  $38                                         ; $4a9d: $ff
	rst  $38                                         ; $4a9e: $ff
	rst  $38                                         ; $4a9f: $ff
	rst  $38                                         ; $4aa0: $ff
	rst  $38                                         ; $4aa1: $ff
	rst  $38                                         ; $4aa2: $ff
	rst  $38                                         ; $4aa3: $ff
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	db   $ed                                         ; $4aa7: $ed
	call c, $aaba                                    ; $4aa8: $dc $ba $aa
	sub  a                                           ; $4aab: $97
	ld   h, l                                        ; $4aac: $65
	ld   b, d                                        ; $4aad: $42
	ld   hl, $1111                                   ; $4aae: $21 $11 $11
	ld   de, $1111                                   ; $4ab1: $11 $11 $11
	ld   de, $1111                                   ; $4ab4: $11 $11 $11
	ld   de, $df48                                   ; $4ab7: $11 $48 $df
	rst  $38                                         ; $4aba: $ff
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	rst  $38                                         ; $4abd: $ff
	rst  $38                                         ; $4abe: $ff
	rst  $38                                         ; $4abf: $ff
	rst  $38                                         ; $4ac0: $ff
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	db   $ed                                         ; $4ac3: $ed
	call c, $b9cb                                    ; $4ac4: $dc $cb $b9
	sbc  b                                           ; $4ac7: $98
	halt                                             ; $4ac8: $76

Jump_0df_4ac9:
	ld   d, h                                        ; $4ac9: $54
	ld   [hl-], a                                    ; $4aca: $32
	ld   de, $1111                                   ; $4acb: $11 $11 $11
	ld   de, $1111                                   ; $4ace: $11 $11 $11
	ld   de, $1111                                   ; $4ad1: $11 $11 $11
	inc  de                                          ; $4ad4: $13
	ld   a, e                                        ; $4ad5: $7b
	rst  $28                                         ; $4ad6: $ef
	rst  $38                                         ; $4ad7: $ff
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	rst  $38                                         ; $4ada: $ff
	rst  $38                                         ; $4adb: $ff
	rst  $38                                         ; $4adc: $ff
	rst  $38                                         ; $4add: $ff
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	db   $ed                                         ; $4ae0: $ed
	call z, $a8ba                                    ; $4ae1: $cc $ba $a8
	add  a                                           ; $4ae4: $87
	ld   h, l                                        ; $4ae5: $65
	ld   d, l                                        ; $4ae6: $55
	ld   [hl-], a                                    ; $4ae7: $32
	ld   de, $1111                                   ; $4ae8: $11 $11 $11
	ld   de, $1111                                   ; $4aeb: $11 $11 $11
	ld   de, $1111                                   ; $4aee: $11 $11 $11
	inc  de                                          ; $4af1: $13
	ld   l, d                                        ; $4af2: $6a
	rst  $28                                         ; $4af3: $ef
	rst  $38                                         ; $4af4: $ff
	rst  $38                                         ; $4af5: $ff
	rst  $38                                         ; $4af6: $ff
	rst  $38                                         ; $4af7: $ff
	rst  $38                                         ; $4af8: $ff
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	db   $ec                                         ; $4afd: $ec
	call z, $99aa                                    ; $4afe: $cc $aa $99
	ld   [hl], a                                     ; $4b01: $77
	ld   h, [hl]                                     ; $4b02: $66
	ld   h, l                                        ; $4b03: $65
	ld   b, e                                        ; $4b04: $43
	ld   sp, $1111                                   ; $4b05: $31 $11 $11
	ld   de, $1111                                   ; $4b08: $11 $11 $11
	ld   de, $1111                                   ; $4b0b: $11 $11 $11
	ld   de, $be47                                   ; $4b0e: $11 $47 $be
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff
	rst  $38                                         ; $4b16: $ff
	rst  $38                                         ; $4b17: $ff
	rst  $38                                         ; $4b18: $ff
	cp   $dd                                         ; $4b19: $fe $dd
	db   $db                                         ; $4b1b: $db
	cp   e                                           ; $4b1c: $bb
	sbc  c                                           ; $4b1d: $99
	add  a                                           ; $4b1e: $87
	ld   h, [hl]                                     ; $4b1f: $66
	ld   d, [hl]                                     ; $4b20: $56
	ld   d, l                                        ; $4b21: $55
	ld   b, h                                        ; $4b22: $44
	ld   sp, $1111                                   ; $4b23: $31 $11 $11
	ld   de, $1111                                   ; $4b26: $11 $11 $11
	ld   de, $1111                                   ; $4b29: $11 $11 $11
	inc  de                                          ; $4b2c: $13
	ld   l, c                                        ; $4b2d: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b2e: $cf
	rst  $38                                         ; $4b2f: $ff
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	rst  $38                                         ; $4b32: $ff
	rst  $38                                         ; $4b33: $ff
	rst  $38                                         ; $4b34: $ff
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	db   $fd                                         ; $4b37: $fd
	call c, $badb                                    ; $4b38: $dc $db $ba
	xor  b                                           ; $4b3b: $a8
	add  a                                           ; $4b3c: $87
	ld   h, [hl]                                     ; $4b3d: $66
	ld   d, [hl]                                     ; $4b3e: $56
	ld   h, [hl]                                     ; $4b3f: $66
	ld   d, h                                        ; $4b40: $54
	ld   [hl-], a                                    ; $4b41: $32
	ld   de, $1111                                   ; $4b42: $11 $11 $11
	ld   de, $1111                                   ; $4b45: $11 $11 $11
	ld   de, $1211                                   ; $4b48: $11 $11 $12
	ld   e, c                                        ; $4b4b: $59
	cp   [hl]                                        ; $4b4c: $be
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	rst  $38                                         ; $4b4f: $ff
	rst  $38                                         ; $4b50: $ff
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	rst  $38                                         ; $4b53: $ff
	rst  $38                                         ; $4b54: $ff
	rst  $38                                         ; $4b55: $ff
	db   $ed                                         ; $4b56: $ed
	call c, $98ca                                    ; $4b57: $dc $ca $98
	add  a                                           ; $4b5a: $87
	ld   h, l                                        ; $4b5b: $65
	ld   d, l                                        ; $4b5c: $55
	ld   h, [hl]                                     ; $4b5d: $66
	halt                                             ; $4b5e: $76
	ld   h, l                                        ; $4b5f: $65
	ld   b, e                                        ; $4b60: $43
	ld   [hl+], a                                    ; $4b61: $22
	ld   de, $1111                                   ; $4b62: $11 $11 $11
	ld   de, $1111                                   ; $4b65: $11 $11 $11
	ld   de, $8b15                                   ; $4b68: $11 $15 $8b
	rst  $28                                         ; $4b6b: $ef
	rst  $38                                         ; $4b6c: $ff
	rst  $38                                         ; $4b6d: $ff
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	rst  $38                                         ; $4b73: $ff
	rst  $38                                         ; $4b74: $ff
	cp   $ed                                         ; $4b75: $fe $ed
	jp   z, $7687                                    ; $4b77: $ca $87 $76

	ld   h, l                                        ; $4b7a: $65
	ld   b, l                                        ; $4b7b: $45
	ld   h, a                                        ; $4b7c: $67
	adc  b                                           ; $4b7d: $88
	halt                                             ; $4b7e: $76
	ld   d, h                                        ; $4b7f: $54
	ld   b, d                                        ; $4b80: $42
	ld   de, $1111                                   ; $4b81: $11 $11 $11
	ld   de, $1111                                   ; $4b84: $11 $11 $11
	ld   de, $ae26                                   ; $4b87: $11 $26 $ae
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	rst  $38                                         ; $4b8e: $ff
	rst  $38                                         ; $4b8f: $ff
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	rst  $38                                         ; $4b92: $ff
	rst  $38                                         ; $4b93: $ff
	db   $fd                                         ; $4b94: $fd
	db   $dd                                         ; $4b95: $dd
	cp   c                                           ; $4b96: $b9
	halt                                             ; $4b97: $76
	ld   h, [hl]                                     ; $4b98: $66
	halt                                             ; $4b99: $76
	ld   d, l                                        ; $4b9a: $55
	ld   a, c                                        ; $4b9b: $79
	xor  d                                           ; $4b9c: $aa
	add  a                                           ; $4b9d: $87
	halt                                             ; $4b9e: $76
	ld   b, d                                        ; $4b9f: $42
	ld   de, $1111                                   ; $4ba0: $11 $11 $11
	ld   de, $1111                                   ; $4ba3: $11 $11 $11
	dec  d                                           ; $4ba6: $15
	ld   d, l                                        ; $4ba7: $55
	ld   a, h                                        ; $4ba8: $7c
	rst  $28                                         ; $4ba9: $ef
	db   $fc                                         ; $4baa: $fc
	cp   l                                           ; $4bab: $bd
	rst  $38                                         ; $4bac: $ff
	cp   $df                                         ; $4bad: $fe $df
	rst  $38                                         ; $4baf: $ff
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	rst  $38                                         ; $4bb2: $ff
	cp   $cb                                         ; $4bb3: $fe $cb
	call z, Call_0df_77a9                            ; $4bb5: $cc $a9 $77
	adc  d                                           ; $4bb8: $8a
	xor  c                                           ; $4bb9: $a9
	sbc  c                                           ; $4bba: $99
	xor  e                                           ; $4bbb: $ab
	xor  c                                           ; $4bbc: $a9
	ld   h, h                                        ; $4bbd: $64
	ld   b, d                                        ; $4bbe: $42
	ld   de, $1111                                   ; $4bbf: $11 $11 $11
	ld   de, $1111                                   ; $4bc2: $11 $11 $11
	ld   de, $7868                                   ; $4bc5: $11 $68 $78
	cp   [hl]                                        ; $4bc8: $be
	rst  $38                                         ; $4bc9: $ff
	ld   [$ffae], a                                  ; $4bca: $ea $ae $ff
	xor  $ff                                         ; $4bcd: $ee $ff
	rst  $38                                         ; $4bcf: $ff
	rst  $38                                         ; $4bd0: $ff
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	db   $db                                         ; $4bd3: $db
	sbc  d                                           ; $4bd4: $9a
	xor  d                                           ; $4bd5: $aa
	sbc  c                                           ; $4bd6: $99
	adc  d                                           ; $4bd7: $8a
	cp   e                                           ; $4bd8: $bb
	cp   d                                           ; $4bd9: $ba
	xor  d                                           ; $4bda: $aa
	xor  c                                           ; $4bdb: $a9
	add  a                                           ; $4bdc: $87
	ld   d, h                                        ; $4bdd: $54
	ld   [hl-], a                                    ; $4bde: $32
	ld   de, $1111                                   ; $4bdf: $11 $11 $11
	ld   de, $1111                                   ; $4be2: $11 $11 $11
	ld   de, $99ac                                   ; $4be5: $11 $ac $99
	rst  $28                                         ; $4be8: $ef
	rst  $38                                         ; $4be9: $ff
	and  l                                           ; $4bea: $a5
	adc  [hl]                                        ; $4beb: $8e
	rst  $38                                         ; $4bec: $ff
	rst  $28                                         ; $4bed: $ef
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	cp   $c9                                         ; $4bf2: $fe $c9
	ld   l, c                                        ; $4bf4: $69
	set  1, e                                        ; $4bf5: $cb $cb
	xor  e                                           ; $4bf7: $ab
	adc  $c9                                         ; $4bf8: $ce $c9
	ld   a, c                                        ; $4bfa: $79
	ld   a, b                                        ; $4bfb: $78
	add  l                                           ; $4bfc: $85
	ld   b, e                                        ; $4bfd: $43
	ld   b, l                                        ; $4bfe: $45
	ld   hl, $1111                                   ; $4bff: $21 $11 $11
	ld   de, $1111                                   ; $4c02: $11 $11 $11
	ld   de, $cdbf                                   ; $4c05: $11 $bf $cd
	rst  JumpTable                                         ; $4c08: $df
	rst  $38                                         ; $4c09: $ff
	add  e                                           ; $4c0a: $83
	ld   e, e                                        ; $4c0b: $5b
	rst  $38                                         ; $4c0c: $ff
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	db   $fd                                         ; $4c10: $fd
	db   $dd                                         ; $4c11: $dd
	db   $ed                                         ; $4c12: $ed
	sub  a                                           ; $4c13: $97
	adc  h                                           ; $4c14: $8c
	cp   $eb                                         ; $4c15: $fe $eb
	cp   l                                           ; $4c17: $bd
	db   $eb                                         ; $4c18: $eb
	add  [hl]                                        ; $4c19: $86
	ld   h, a                                        ; $4c1a: $67
	adc  c                                           ; $4c1b: $89
	add  [hl]                                        ; $4c1c: $86
	ld   h, a                                        ; $4c1d: $67
	add  [hl]                                        ; $4c1e: $86
	ld   sp, $1111                                   ; $4c1f: $31 $11 $11
	ld   de, $1111                                   ; $4c22: $11 $11 $11
	ld   de, $fe9f                                   ; $4c25: $11 $9f $fe
	sbc  h                                           ; $4c28: $9c
	db   $fc                                         ; $4c29: $fc
	sub  e                                           ; $4c2a: $93
	ld   d, $ff                                      ; $4c2b: $16 $ff
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	ld   a, [$9e89]                                  ; $4c30: $fa $89 $9e
	db   $ec                                         ; $4c33: $ec
	cp   e                                           ; $4c34: $bb
	rst  JumpTable                                         ; $4c35: $df
	cp   $da                                         ; $4c36: $fe $da
	xor  e                                           ; $4c38: $ab
	sbc  c                                           ; $4c39: $99
	ld   d, h                                        ; $4c3a: $54
	ld   a, b                                        ; $4c3b: $78
	xor  e                                           ; $4c3c: $ab
	sbc  b                                           ; $4c3d: $98
	add  a                                           ; $4c3e: $87
	ld   h, e                                        ; $4c3f: $63
	ld   de, $1111                                   ; $4c40: $11 $11 $11
	ld   de, $1111                                   ; $4c43: $11 $11 $11
	ld   de, $fbbf                                   ; $4c46: $11 $bf $fb
	xor  c                                           ; $4c49: $a9
	jp   z, $2b94                                    ; $4c4a: $ca $94 $2b

	rst  $38                                         ; $4c4d: $ff
	rst  $38                                         ; $4c4e: $ff
	rst  $38                                         ; $4c4f: $ff
	rst  $38                                         ; $4c50: $ff
	ld   hl, sp+$6a                                  ; $4c51: $f8 $6a
	rst  $28                                         ; $4c53: $ef
	db   $fc                                         ; $4c54: $fc
	xor  d                                           ; $4c55: $aa
	rst  $38                                         ; $4c56: $ff
	ei                                               ; $4c57: $fb
	sbc  c                                           ; $4c58: $99
	cp   h                                           ; $4c59: $bc
	and  a                                           ; $4c5a: $a7
	ld   b, [hl]                                     ; $4c5b: $46
	xor  h                                           ; $4c5c: $ac
	cp   e                                           ; $4c5d: $bb
	sub  a                                           ; $4c5e: $97
	adc  b                                           ; $4c5f: $88
	ld   b, c                                        ; $4c60: $41
	ld   de, $1111                                   ; $4c61: $11 $11 $11
	ld   de, $1111                                   ; $4c64: $11 $11 $11
	ld   de, $df36                                   ; $4c67: $11 $36 $df
	cp   e                                           ; $4c6a: $bb
	call z, $879a                                    ; $4c6b: $cc $9a $87
	cp   a                                           ; $4c6e: $bf
	rst  $38                                         ; $4c6f: $ff
	rst  $38                                         ; $4c70: $ff
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	adc  b                                           ; $4c73: $88
	cp   $ff                                         ; $4c74: $fe $ff
	cp   h                                           ; $4c76: $bc
	call c, $acfc                                    ; $4c77: $dc $fc $ac
	cp   e                                           ; $4c7a: $bb
	ret  z                                           ; $4c7b: $c8

	add  a                                           ; $4c7c: $87
	ld   a, d                                        ; $4c7d: $7a
	jp   z, $77a8                                    ; $4c7e: $ca $a8 $77

	ld   sp, $1111                                   ; $4c81: $31 $11 $11
	ld   de, $1111                                   ; $4c84: $11 $11 $11
	ld   de, $3311                                   ; $4c87: $11 $11 $33
	ld   a, [hl-]                                    ; $4c8a: $3a
	rst  $28                                         ; $4c8b: $ef
	db   $db                                         ; $4c8c: $db
	ret                                              ; $4c8d: $c9


	adc  h                                           ; $4c8e: $8c
	adc  e                                           ; $4c8f: $8b
	rst  $38                                         ; $4c90: $ff
	rst  $38                                         ; $4c91: $ff
	rst  $38                                         ; $4c92: $ff
	db   $ec                                         ; $4c93: $ec
	db   $ec                                         ; $4c94: $ec
	sbc  h                                           ; $4c95: $9c
	xor  $ed                                         ; $4c96: $ee $ed
	db   $dd                                         ; $4c98: $dd
	adc  $fc                                         ; $4c99: $ce $fc
	call $97aa                                       ; $4c9b: $cd $aa $97
	sbc  c                                           ; $4c9e: $99
	sbc  d                                           ; $4c9f: $9a
	xor  c                                           ; $4ca0: $a9
	xor  b                                           ; $4ca1: $a8
	ld   d, e                                        ; $4ca2: $53
	ld   de, $1123                                   ; $4ca3: $11 $23 $11
	ld   de, $1111                                   ; $4ca6: $11 $11 $11
	ld   de, $2111                                   ; $4ca9: $11 $11 $21
	inc  e                                           ; $4cac: $1c
	cp   $ab                                         ; $4cad: $fe $ab
	adc  $fa                                         ; $4caf: $ce $fa
	adc  c                                           ; $4cb1: $89
	rst  $38                                         ; $4cb2: $ff
	cp   $fe                                         ; $4cb3: $fe $fe
	rst  $28                                         ; $4cb5: $ef
	ei                                               ; $4cb6: $fb
	cp   e                                           ; $4cb7: $bb
	rst  $38                                         ; $4cb8: $ff
	cp   e                                           ; $4cb9: $bb
	xor  h                                           ; $4cba: $ac
	cp   $ec                                         ; $4cbb: $fe $ec
	sbc  d                                           ; $4cbd: $9a
	cp   e                                           ; $4cbe: $bb
	sbc  b                                           ; $4cbf: $98
	ld   a, d                                        ; $4cc0: $7a
	cp   c                                           ; $4cc1: $b9
	add  [hl]                                        ; $4cc2: $86
	ld   h, l                                        ; $4cc3: $65
	ld   sp, $3211                                   ; $4cc4: $31 $11 $32
	ld   de, $1111                                   ; $4cc7: $11 $11 $11
	ld   de, $1111                                   ; $4cca: $11 $11 $11
	ld   de, $fb4f                                   ; $4ccd: $11 $4f $fb
	adc  e                                           ; $4cd0: $8b
	rst  $28                                         ; $4cd1: $ef
	ld   sp, hl                                      ; $4cd2: $f9
	ld   a, d                                        ; $4cd3: $7a
	rst  $38                                         ; $4cd4: $ff
	db   $fc                                         ; $4cd5: $fc
	adc  $ff                                         ; $4cd6: $ce $ff
	ld   a, [$ffac]                                  ; $4cd8: $fa $ac $ff
	xor  c                                           ; $4cdb: $a9
	cp   [hl]                                        ; $4cdc: $be
	rst  $38                                         ; $4cdd: $ff
	jp   z, $fbac                                    ; $4cde: $ca $ac $fb

	ld   h, a                                        ; $4ce1: $67
	xor  h                                           ; $4ce2: $ac
	rst  ToBoot                                         ; $4ce3: $c7
	ld   b, l                                        ; $4ce4: $45
	ld   d, l                                        ; $4ce5: $55
	ld   b, c                                        ; $4ce6: $41
	ld   de, $1134                                   ; $4ce7: $11 $34 $11
	ld   de, $1111                                   ; $4cea: $11 $11 $11
	ld   de, $1121                                   ; $4ced: $11 $21 $11
	ld   c, h                                        ; $4cf0: $4c
	db   $ec                                         ; $4cf1: $ec
	sbc  e                                           ; $4cf2: $9b
	rst  $38                                         ; $4cf3: $ff
	ei                                               ; $4cf4: $fb
	ld   a, d                                        ; $4cf5: $7a
	rst  $38                                         ; $4cf6: $ff
	db   $fc                                         ; $4cf7: $fc
	cp   a                                           ; $4cf8: $bf
	rst  $38                                         ; $4cf9: $ff
	db   $eb                                         ; $4cfa: $eb
	xor  h                                           ; $4cfb: $ac
	xor  $aa                                         ; $4cfc: $ee $aa
	rst  JumpTable                                         ; $4cfe: $df
	call c, $debb                                    ; $4cff: $dc $bb $de
	jp   c, $aaaa                                    ; $4d02: $da $aa $aa

	sub  l                                           ; $4d05: $95
	ld   b, [hl]                                     ; $4d06: $46
	ld   h, h                                        ; $4d07: $64
	ld   de, $4234                                   ; $4d08: $11 $34 $42
	ld   de, $1101                                   ; $4d0b: $11 $01 $11
	ld   de, $1111                                   ; $4d0e: $11 $11 $11
	ld   de, $899a                                   ; $4d11: $11 $9a $89
	cp   [hl]                                        ; $4d14: $be
	db   $ed                                         ; $4d15: $ed
	db   $db                                         ; $4d16: $db
	cp   l                                           ; $4d17: $bd
	db   $dd                                         ; $4d18: $dd
	db   $dd                                         ; $4d19: $dd
	rst  $28                                         ; $4d1a: $ef
	rst  $38                                         ; $4d1b: $ff
	call c, $dccc                                    ; $4d1c: $dc $cc $dc
	set  1, e                                        ; $4d1f: $cb $cb
	cp   d                                           ; $4d21: $ba
	xor  e                                           ; $4d22: $ab
	call z, $cbab                                    ; $4d23: $cc $ab $cb
	xor  c                                           ; $4d26: $a9
	ld   [hl], a                                     ; $4d27: $77
	ld   [hl], a                                     ; $4d28: $77
	ld   d, e                                        ; $4d29: $53
	inc  de                                          ; $4d2a: $13
	ld   b, l                                        ; $4d2b: $45
	ld   sp, $3312                                   ; $4d2c: $31 $12 $33
	ld   de, $3112                                   ; $4d2f: $11 $12 $31
	ld   de, $5712                                   ; $4d32: $11 $12 $57
	ld   h, [hl]                                     ; $4d35: $66
	adc  e                                           ; $4d36: $8b
	call z, $cecc                                    ; $4d37: $cc $cc $ce
	db   $fd                                         ; $4d3a: $fd
	cp   h                                           ; $4d3b: $bc
	call z, $abbb                                    ; $4d3c: $cc $bb $ab
	cp   e                                           ; $4d3f: $bb
	cp   d                                           ; $4d40: $ba
	xor  e                                           ; $4d41: $ab
	res  5, d                                        ; $4d42: $cb $aa
	xor  d                                           ; $4d44: $aa
	sbc  d                                           ; $4d45: $9a
	sbc  b                                           ; $4d46: $98
	adc  c                                           ; $4d47: $89
	add  a                                           ; $4d48: $87
	halt                                             ; $4d49: $76
	ld   h, [hl]                                     ; $4d4a: $66
	ld   d, l                                        ; $4d4b: $55
	ld   b, h                                        ; $4d4c: $44
	ld   b, h                                        ; $4d4d: $44
	ld   b, e                                        ; $4d4e: $43
	inc  sp                                          ; $4d4f: $33
	ld   b, e                                        ; $4d50: $43
	ld   [hl-], a                                    ; $4d51: $32
	inc  sp                                          ; $4d52: $33
	ld   b, h                                        ; $4d53: $44
	ld   b, l                                        ; $4d54: $45
	ld   h, [hl]                                     ; $4d55: $66
	ld   a, b                                        ; $4d56: $78
	sbc  c                                           ; $4d57: $99
	cp   e                                           ; $4d58: $bb
	cp   e                                           ; $4d59: $bb
	cp   d                                           ; $4d5a: $ba
	xor  d                                           ; $4d5b: $aa
	xor  d                                           ; $4d5c: $aa
	sbc  c                                           ; $4d5d: $99
	sbc  b                                           ; $4d5e: $98
	sbc  c                                           ; $4d5f: $99
	sbc  b                                           ; $4d60: $98
	adc  b                                           ; $4d61: $88
	sbc  c                                           ; $4d62: $99
	xor  c                                           ; $4d63: $a9
	xor  d                                           ; $4d64: $aa
	xor  e                                           ; $4d65: $ab
	cp   d                                           ; $4d66: $ba
	xor  d                                           ; $4d67: $aa
	cp   e                                           ; $4d68: $bb
	cp   e                                           ; $4d69: $bb
	cp   d                                           ; $4d6a: $ba
	xor  e                                           ; $4d6b: $ab
	cp   d                                           ; $4d6c: $ba
	xor  c                                           ; $4d6d: $a9
	sbc  d                                           ; $4d6e: $9a
	sbc  c                                           ; $4d6f: $99
	sbc  b                                           ; $4d70: $98
	adc  b                                           ; $4d71: $88
	adc  c                                           ; $4d72: $89
	adc  b                                           ; $4d73: $88
	adc  b                                           ; $4d74: $88
	adc  b                                           ; $4d75: $88
	ld   [hl], a                                     ; $4d76: $77
	add  a                                           ; $4d77: $87
	ld   [hl], a                                     ; $4d78: $77
	ld   [hl], a                                     ; $4d79: $77
	ld   [hl], a                                     ; $4d7a: $77
	ld   [hl], a                                     ; $4d7b: $77
	ld   [hl], a                                     ; $4d7c: $77
	ld   [hl], a                                     ; $4d7d: $77
	ld   [hl], a                                     ; $4d7e: $77
	ld   [hl], a                                     ; $4d7f: $77
	ld   [hl], a                                     ; $4d80: $77
	ld   [hl], a                                     ; $4d81: $77
	adc  b                                           ; $4d82: $88
	adc  b                                           ; $4d83: $88
	adc  b                                           ; $4d84: $88
	adc  b                                           ; $4d85: $88
	adc  b                                           ; $4d86: $88
	adc  b                                           ; $4d87: $88
	adc  b                                           ; $4d88: $88
	adc  b                                           ; $4d89: $88
	adc  b                                           ; $4d8a: $88
	adc  b                                           ; $4d8b: $88
	adc  b                                           ; $4d8c: $88
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	adc  b                                           ; $4d8f: $88
	adc  b                                           ; $4d90: $88
	adc  b                                           ; $4d91: $88
	adc  b                                           ; $4d92: $88
	adc  b                                           ; $4d93: $88
	adc  b                                           ; $4d94: $88
	adc  b                                           ; $4d95: $88
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	adc  b                                           ; $4d98: $88
	adc  b                                           ; $4d99: $88
	adc  b                                           ; $4d9a: $88
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	adc  b                                           ; $4d9d: $88
	ld   [hl], a                                     ; $4d9e: $77
	ld   [hl], a                                     ; $4d9f: $77
	ld   [hl], a                                     ; $4da0: $77
	ld   [hl], a                                     ; $4da1: $77
	ld   [hl], a                                     ; $4da2: $77
	ld   [hl], a                                     ; $4da3: $77
	ld   [hl], a                                     ; $4da4: $77
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	adc  b                                           ; $4da7: $88
	adc  b                                           ; $4da8: $88
	adc  b                                           ; $4da9: $88
	adc  b                                           ; $4daa: $88
	adc  b                                           ; $4dab: $88
	adc  b                                           ; $4dac: $88
	adc  b                                           ; $4dad: $88
	adc  b                                           ; $4dae: $88
	adc  b                                           ; $4daf: $88
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	adc  b                                           ; $4db5: $88
	adc  b                                           ; $4db6: $88
	adc  b                                           ; $4db7: $88
	adc  b                                           ; $4db8: $88
	adc  b                                           ; $4db9: $88
	adc  b                                           ; $4dba: $88
	adc  b                                           ; $4dbb: $88
	adc  b                                           ; $4dbc: $88
	adc  b                                           ; $4dbd: $88
	adc  b                                           ; $4dbe: $88
	adc  b                                           ; $4dbf: $88
	adc  b                                           ; $4dc0: $88
	adc  b                                           ; $4dc1: $88
	adc  b                                           ; $4dc2: $88
	adc  b                                           ; $4dc3: $88
	adc  b                                           ; $4dc4: $88
	adc  b                                           ; $4dc5: $88
	adc  b                                           ; $4dc6: $88
	adc  b                                           ; $4dc7: $88
	adc  b                                           ; $4dc8: $88
	adc  b                                           ; $4dc9: $88
	adc  b                                           ; $4dca: $88
	adc  b                                           ; $4dcb: $88
	adc  b                                           ; $4dcc: $88
	adc  b                                           ; $4dcd: $88
	adc  b                                           ; $4dce: $88
	adc  b                                           ; $4dcf: $88
	adc  b                                           ; $4dd0: $88
	adc  b                                           ; $4dd1: $88
	adc  b                                           ; $4dd2: $88
	adc  b                                           ; $4dd3: $88
	adc  b                                           ; $4dd4: $88
	adc  b                                           ; $4dd5: $88
	adc  b                                           ; $4dd6: $88
	adc  b                                           ; $4dd7: $88
	adc  b                                           ; $4dd8: $88
	adc  b                                           ; $4dd9: $88
	adc  b                                           ; $4dda: $88
	adc  b                                           ; $4ddb: $88
	adc  b                                           ; $4ddc: $88
	adc  b                                           ; $4ddd: $88
	adc  b                                           ; $4dde: $88
	adc  b                                           ; $4ddf: $88
	adc  b                                           ; $4de0: $88
	adc  b                                           ; $4de1: $88
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	adc  b                                           ; $4de5: $88
	adc  b                                           ; $4de6: $88
	adc  b                                           ; $4de7: $88
	adc  b                                           ; $4de8: $88
	adc  b                                           ; $4de9: $88
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	adc  b                                           ; $4ded: $88
	adc  b                                           ; $4dee: $88
	adc  b                                           ; $4def: $88
	adc  b                                           ; $4df0: $88
	adc  b                                           ; $4df1: $88
	adc  b                                           ; $4df2: $88
	adc  b                                           ; $4df3: $88
	adc  b                                           ; $4df4: $88
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	adc  b                                           ; $4df8: $88
	adc  b                                           ; $4df9: $88
	adc  b                                           ; $4dfa: $88
	adc  b                                           ; $4dfb: $88
	adc  b                                           ; $4dfc: $88
	adc  b                                           ; $4dfd: $88
	adc  b                                           ; $4dfe: $88
	adc  b                                           ; $4dff: $88
	adc  b                                           ; $4e00: $88
	adc  b                                           ; $4e01: $88
	adc  b                                           ; $4e02: $88
	adc  b                                           ; $4e03: $88
	adc  b                                           ; $4e04: $88
	adc  b                                           ; $4e05: $88
	adc  b                                           ; $4e06: $88
	adc  b                                           ; $4e07: $88
	adc  b                                           ; $4e08: $88
	adc  b                                           ; $4e09: $88
	adc  b                                           ; $4e0a: $88
	adc  b                                           ; $4e0b: $88
	adc  b                                           ; $4e0c: $88
	adc  b                                           ; $4e0d: $88
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	adc  b                                           ; $4e10: $88
	adc  b                                           ; $4e11: $88
	adc  b                                           ; $4e12: $88
	adc  b                                           ; $4e13: $88
	adc  b                                           ; $4e14: $88
	adc  b                                           ; $4e15: $88
	adc  b                                           ; $4e16: $88
	adc  b                                           ; $4e17: $88
	adc  b                                           ; $4e18: $88
	adc  b                                           ; $4e19: $88
	adc  b                                           ; $4e1a: $88
	adc  b                                           ; $4e1b: $88
	adc  b                                           ; $4e1c: $88
	adc  b                                           ; $4e1d: $88
	adc  b                                           ; $4e1e: $88
	adc  b                                           ; $4e1f: $88
	adc  b                                           ; $4e20: $88
	adc  b                                           ; $4e21: $88
	adc  b                                           ; $4e22: $88
	adc  b                                           ; $4e23: $88
	adc  b                                           ; $4e24: $88
	adc  b                                           ; $4e25: $88
	adc  b                                           ; $4e26: $88
	adc  b                                           ; $4e27: $88
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	adc  b                                           ; $4e2b: $88
	adc  b                                           ; $4e2c: $88
	adc  b                                           ; $4e2d: $88
	adc  b                                           ; $4e2e: $88
	adc  b                                           ; $4e2f: $88
	adc  b                                           ; $4e30: $88
	adc  b                                           ; $4e31: $88
	adc  b                                           ; $4e32: $88
	adc  b                                           ; $4e33: $88
	adc  b                                           ; $4e34: $88
	adc  b                                           ; $4e35: $88
	adc  b                                           ; $4e36: $88
	adc  b                                           ; $4e37: $88
	adc  b                                           ; $4e38: $88
	adc  b                                           ; $4e39: $88
	adc  b                                           ; $4e3a: $88
	adc  b                                           ; $4e3b: $88
	adc  b                                           ; $4e3c: $88
	adc  b                                           ; $4e3d: $88
	adc  b                                           ; $4e3e: $88
	adc  b                                           ; $4e3f: $88
	adc  b                                           ; $4e40: $88
	adc  b                                           ; $4e41: $88
	adc  b                                           ; $4e42: $88
	adc  b                                           ; $4e43: $88
	adc  b                                           ; $4e44: $88
	adc  b                                           ; $4e45: $88
	adc  b                                           ; $4e46: $88
	adc  b                                           ; $4e47: $88
	adc  b                                           ; $4e48: $88
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  b                                           ; $4e4b: $88
	adc  b                                           ; $4e4c: $88
	adc  b                                           ; $4e4d: $88
	adc  b                                           ; $4e4e: $88
	adc  b                                           ; $4e4f: $88
	adc  b                                           ; $4e50: $88
	adc  b                                           ; $4e51: $88
	adc  b                                           ; $4e52: $88
	adc  b                                           ; $4e53: $88
	adc  b                                           ; $4e54: $88
	adc  b                                           ; $4e55: $88
	adc  b                                           ; $4e56: $88
	adc  b                                           ; $4e57: $88
	adc  b                                           ; $4e58: $88
	adc  b                                           ; $4e59: $88
	adc  b                                           ; $4e5a: $88
	adc  b                                           ; $4e5b: $88
	adc  b                                           ; $4e5c: $88
	adc  b                                           ; $4e5d: $88
	adc  b                                           ; $4e5e: $88
	adc  b                                           ; $4e5f: $88
	adc  b                                           ; $4e60: $88
	adc  b                                           ; $4e61: $88
	adc  b                                           ; $4e62: $88
	adc  b                                           ; $4e63: $88
	adc  b                                           ; $4e64: $88
	adc  b                                           ; $4e65: $88
	adc  b                                           ; $4e66: $88
	adc  b                                           ; $4e67: $88
	adc  b                                           ; $4e68: $88
	adc  b                                           ; $4e69: $88
	adc  b                                           ; $4e6a: $88
	adc  b                                           ; $4e6b: $88
	adc  b                                           ; $4e6c: $88
	adc  b                                           ; $4e6d: $88
	adc  b                                           ; $4e6e: $88
	adc  b                                           ; $4e6f: $88
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	adc  b                                           ; $4e72: $88
	adc  b                                           ; $4e73: $88
	adc  b                                           ; $4e74: $88
	adc  b                                           ; $4e75: $88
	adc  b                                           ; $4e76: $88
	adc  b                                           ; $4e77: $88
	adc  b                                           ; $4e78: $88
	adc  b                                           ; $4e79: $88
	adc  b                                           ; $4e7a: $88
	sbc  b                                           ; $4e7b: $98
	adc  b                                           ; $4e7c: $88
	adc  c                                           ; $4e7d: $89
	sbc  b                                           ; $4e7e: $98
	adc  b                                           ; $4e7f: $88
	sbc  c                                           ; $4e80: $99
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	adc  b                                           ; $4e83: $88
	adc  b                                           ; $4e84: $88
	sbc  c                                           ; $4e85: $99
	sbc  c                                           ; $4e86: $99
	sbc  c                                           ; $4e87: $99
	adc  c                                           ; $4e88: $89
	sbc  c                                           ; $4e89: $99
	sub  a                                           ; $4e8a: $97
	ld   [hl], a                                     ; $4e8b: $77
	ld   [hl], a                                     ; $4e8c: $77
	ld   [hl], a                                     ; $4e8d: $77
	ld   a, b                                        ; $4e8e: $78
	sbc  b                                           ; $4e8f: $98
	sbc  b                                           ; $4e90: $98
	adc  c                                           ; $4e91: $89
	xor  c                                           ; $4e92: $a9
	adc  b                                           ; $4e93: $88
	add  a                                           ; $4e94: $87
	ld   [hl], a                                     ; $4e95: $77
	ld   h, [hl]                                     ; $4e96: $66
	ld   [hl], a                                     ; $4e97: $77
	ld   [hl], a                                     ; $4e98: $77
	ld   [hl], a                                     ; $4e99: $77
	adc  b                                           ; $4e9a: $88
	ld   [hl], a                                     ; $4e9b: $77
	ld   a, b                                        ; $4e9c: $78
	adc  b                                           ; $4e9d: $88
	halt                                             ; $4e9e: $76
	ld   h, [hl]                                     ; $4e9f: $66
	ld   h, [hl]                                     ; $4ea0: $66
	ld   h, [hl]                                     ; $4ea1: $66
	ld   [hl], a                                     ; $4ea2: $77
	ld   [hl], a                                     ; $4ea3: $77
	ld   [hl], a                                     ; $4ea4: $77
	ld   [hl], a                                     ; $4ea5: $77
	ld   [hl], a                                     ; $4ea6: $77
	halt                                             ; $4ea7: $76
	ld   [hl], a                                     ; $4ea8: $77
	ld   h, [hl]                                     ; $4ea9: $66
	ld   [hl], a                                     ; $4eaa: $77
	ld   h, a                                        ; $4eab: $67
	ld   [hl], a                                     ; $4eac: $77
	sbc  c                                           ; $4ead: $99
	ld   a, b                                        ; $4eae: $78
	sbc  c                                           ; $4eaf: $99
	halt                                             ; $4eb0: $76
	ld   [hl], a                                     ; $4eb1: $77
	ld   h, [hl]                                     ; $4eb2: $66
	ld   [hl], a                                     ; $4eb3: $77
	ld   a, b                                        ; $4eb4: $78
	adc  b                                           ; $4eb5: $88
	ld   a, b                                        ; $4eb6: $78
	sbc  c                                           ; $4eb7: $99
	add  a                                           ; $4eb8: $87
	adc  c                                           ; $4eb9: $89
	ld   [hl], a                                     ; $4eba: $77
	ld   h, l                                        ; $4ebb: $65
	ld   a, b                                        ; $4ebc: $78
	add  a                                           ; $4ebd: $87
	ld   d, [hl]                                     ; $4ebe: $56
	adc  e                                           ; $4ebf: $8b
	and  l                                           ; $4ec0: $a5
	ld   l, c                                        ; $4ec1: $69
	ld   [hl], a                                     ; $4ec2: $77
	adc  b                                           ; $4ec3: $88
	ld   d, e                                        ; $4ec4: $53
	xor  c                                           ; $4ec5: $a9
	ld   e, b                                        ; $4ec6: $58
	ld   h, a                                        ; $4ec7: $67
	and  a                                           ; $4ec8: $a7
	sub  [hl]                                        ; $4ec9: $96
	ld   e, d                                        ; $4eca: $5a
	ld   a, c                                        ; $4ecb: $79
	sub  d                                           ; $4ecc: $92
	sbc  l                                           ; $4ecd: $9d
	ld   h, a                                        ; $4ece: $67
	ld   l, d                                        ; $4ecf: $6a
	add  [hl]                                        ; $4ed0: $86
	add  sp, $5c                                     ; $4ed1: $e8 $5c
	xor  d                                           ; $4ed3: $aa
	sbc  d                                           ; $4ed4: $9a
	db   $db                                         ; $4ed5: $db
	call z, $eb9c                                    ; $4ed6: $cc $9c $eb
	ld   d, a                                        ; $4ed9: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eda: $cf
	rst  $20                                         ; $4edb: $e7
	ld   l, c                                        ; $4edc: $69
	rst  $38                                         ; $4edd: $ff
	ld   [hl], l                                     ; $4ede: $75
	ld   l, e                                        ; $4edf: $6b
	rst  ToBoot                                         ; $4ee0: $c7
	ld   h, a                                        ; $4ee1: $67
	ld   a, c                                        ; $4ee2: $79
	ld   [hl], e                                     ; $4ee3: $73
	dec  h                                           ; $4ee4: $25
	ld   h, h                                        ; $4ee5: $64
	ld   h, c                                        ; $4ee6: $61
	ld   d, $31                                      ; $4ee7: $16 $31
	ld   de, $1611                                   ; $4ee9: $11 $11 $16
	ld   [hl], c                                     ; $4eec: $71
	ld   de, $b7cf                                   ; $4eed: $11 $cf $b7
	ld   a, d                                        ; $4ef0: $7a
	rst  $38                                         ; $4ef1: $ff
	push hl                                          ; $4ef2: $e5
	xor  a                                           ; $4ef3: $af
	rst  $38                                         ; $4ef4: $ff
	sub  a                                           ; $4ef5: $97
	rst  $38                                         ; $4ef6: $ff
	ei                                               ; $4ef7: $fb
	adc  [hl]                                        ; $4ef8: $8e
	rst  $38                                         ; $4ef9: $ff
	call nz, $fc9f                                   ; $4efa: $c4 $9f $fc
	ld   e, d                                        ; $4efd: $5a
	rst  $38                                         ; $4efe: $ff
	push de                                          ; $4eff: $d5
	ld   c, d                                        ; $4f00: $4a
	db   $ed                                         ; $4f01: $ed
	ld   de, $4212                                   ; $4f02: $11 $12 $42
	ld   de, $1351                                   ; $4f05: $11 $51 $13
	ld   de, $1511                                   ; $4f08: $11 $11 $15
	ld   sp, rAUD1LEN                                   ; $4f0b: $31 $11 $ff
	cp   d                                           ; $4f0e: $ba
	dec  sp                                          ; $4f0f: $3b
	rst  $38                                         ; $4f10: $ff
	and  c                                           ; $4f11: $a1
	ld   e, a                                        ; $4f12: $5f
	rst  $38                                         ; $4f13: $ff
	ld   hl, sp-$21                                  ; $4f14: $f8 $df
	db   $fc                                         ; $4f16: $fc
	ld   a, [hl-]                                    ; $4f17: $3a
	rst  $38                                         ; $4f18: $ff
	ld   sp, hl                                      ; $4f19: $f9
	ld   l, [hl]                                     ; $4f1a: $6e
	rst  $38                                         ; $4f1b: $ff
	and  l                                           ; $4f1c: $a5
	rst  JumpTable                                         ; $4f1d: $df
	ld   sp, hl                                      ; $4f1e: $f9
	ld   de, $61be                                   ; $4f1f: $11 $be $61
	dec  [hl]                                        ; $4f22: $35
	ld   [hl], e                                     ; $4f23: $73
	ld   de, $2112                                   ; $4f24: $11 $12 $21
	inc  d                                           ; $4f27: $14
	ld   de, $1311                                   ; $4f28: $11 $11 $13
	inc  de                                          ; $4f2b: $13
	ld   de, $63be                                   ; $4f2c: $11 $be $63
	cp   a                                           ; $4f2f: $bf
	ld   h, a                                        ; $4f30: $67
	ld   a, [$ff8f]                                  ; $4f31: $fa $8f $ff
	ld   a, [sRandomSeed]                                  ; $4f34: $fa $ff $bf
	rst  $28                                         ; $4f37: $ef
	rst  $38                                         ; $4f38: $ff
	ld   sp, hl                                      ; $4f39: $f9
	xor  a                                           ; $4f3a: $af
	cp   h                                           ; $4f3b: $bc
	db   $db                                         ; $4f3c: $db
	set  1, a                                        ; $4f3d: $cb $cf
	ld   [hl], e                                     ; $4f3f: $73
	xor  c                                           ; $4f40: $a9
	ld   a, c                                        ; $4f41: $79
	daa                                              ; $4f42: $27
	add  c                                           ; $4f43: $81
	ld   de, $1117                                   ; $4f44: $11 $17 $11
	ld   sp, $1112                                   ; $4f47: $31 $12 $11
	ld   de, $1131                                   ; $4f4a: $11 $31 $11
	ld   de, $e91f                                   ; $4f4d: $11 $1f $e9
	call z, $3ffc                                    ; $4f50: $cc $fc $3f
	ld   a, [$ffff]                                  ; $4f53: $fa $ff $ff
	ret  z                                           ; $4f56: $c8

	xor  $ff                                         ; $4f57: $ee $ff
	db   $fc                                         ; $4f59: $fc
	rst  ToBoot                                         ; $4f5a: $c7
	sbc  $7c                                         ; $4f5b: $de $7c
	db   $dd                                         ; $4f5d: $dd
	ld   a, [$468b]                                  ; $4f5e: $fa $8b $46
	sub  h                                           ; $4f61: $94
	adc  d                                           ; $4f62: $8a
	ld   sp, $1211                                   ; $4f63: $31 $11 $12
	ld   [de], a                                     ; $4f66: $12
	ld   de, $1134                                   ; $4f67: $11 $34 $11
	ld   de, $1157                                   ; $4f6a: $11 $57 $11
	ld   [hl], a                                     ; $4f6d: $77
	ld   b, c                                        ; $4f6e: $41
	ld   e, $fe                                      ; $4f6f: $1e $fe
	pop  de                                          ; $4f71: $d1
	ccf                                              ; $4f72: $3f
	rst  $38                                         ; $4f73: $ff
	rst  $30                                         ; $4f74: $f7
	rst  $28                                         ; $4f75: $ef
	rst  $38                                         ; $4f76: $ff
	ld   h, c                                        ; $4f77: $61
	rst  $38                                         ; $4f78: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f79: $cf
	push bc                                          ; $4f7a: $c5
	rst  $38                                         ; $4f7b: $ff
	ld   sp, hl                                      ; $4f7c: $f9
	ld   a, $ff                                      ; $4f7d: $3e $ff
	add  l                                           ; $4f7f: $85
	dec  hl                                          ; $4f80: $2b
	call nz, $7b74                                   ; $4f81: $c4 $74 $7b
	ld   [hl+], a                                    ; $4f84: $22
	ld   de, $1146                                   ; $4f85: $11 $46 $11
	ld   de, $1113                                   ; $4f88: $11 $13 $11
	rla                                              ; $4f8b: $17
	add  c                                           ; $4f8c: $81
	ld   de, $5911                                   ; $4f8d: $11 $11 $59
	xor  d                                           ; $4f90: $aa
	sbc  a                                           ; $4f91: $9f
	db   $fd                                         ; $4f92: $fd
	xor  e                                           ; $4f93: $ab
	db   $ed                                         ; $4f94: $ed
	rst  $38                                         ; $4f95: $ff
	rst  $38                                         ; $4f96: $ff
	adc  e                                           ; $4f97: $8b
	cp   $ee                                         ; $4f98: $fe $ee
	rst  $38                                         ; $4f9a: $ff
	db   $fd                                         ; $4f9b: $fd
	xor  e                                           ; $4f9c: $ab
	sbc  h                                           ; $4f9d: $9c
	ld   [$bacd], a                                  ; $4f9e: $ea $cd $ba
	add  [hl]                                        ; $4fa1: $86
	ld   l, d                                        ; $4fa2: $6a
	sub  d                                           ; $4fa3: $92
	inc  de                                          ; $4fa4: $13
	ld   de, $4411                                   ; $4fa5: $11 $11 $44
	ld   de, $1111                                   ; $4fa8: $11 $11 $11
	ld   de, $c612                                   ; $4fab: $11 $12 $c6
	ld   de, $db19                                   ; $4fae: $11 $19 $db
	and  [hl]                                        ; $4fb1: $a6
	adc  a                                           ; $4fb2: $8f
	rst  $38                                         ; $4fb3: $ff
	adc  d                                           ; $4fb4: $8a
	rst  $38                                         ; $4fb5: $ff
	rst  $38                                         ; $4fb6: $ff
	rst  $38                                         ; $4fb7: $ff
	xor  b                                           ; $4fb8: $a8
	rst  $38                                         ; $4fb9: $ff
	cp   a                                           ; $4fba: $bf
	rst  $38                                         ; $4fbb: $ff
	db   $ec                                         ; $4fbc: $ec
	db   $fd                                         ; $4fbd: $fd
	ld   a, e                                        ; $4fbe: $7b
	jp   z, $a7bc                                    ; $4fbf: $ca $bc $a7

	ld   b, a                                        ; $4fc2: $47
	and  l                                           ; $4fc3: $a5
	ld   b, l                                        ; $4fc4: $45
	ld   de, $1131                                   ; $4fc5: $11 $31 $11
	ld   de, $1111                                   ; $4fc8: $11 $11 $11
	ld   de, $1111                                   ; $4fcb: $11 $11 $11
	dec  h                                           ; $4fce: $25
	inc  de                                          ; $4fcf: $13
	rst  $28                                         ; $4fd0: $ef
	db   $fc                                         ; $4fd1: $fc
	adc  [hl]                                        ; $4fd2: $8e
	xor  $c5                                         ; $4fd3: $ee $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fd5: $cf
	rst  $38                                         ; $4fd6: $ff
	rst  $28                                         ; $4fd7: $ef
	rst  $38                                         ; $4fd8: $ff
	xor  [hl]                                        ; $4fd9: $ae
	call c, $b9ff                                    ; $4fda: $dc $ff $b9
	rst  JumpTable                                         ; $4fdd: $df
	ld   sp, hl                                      ; $4fde: $f9
	ld   a, l                                        ; $4fdf: $7d
	cp   $96                                         ; $4fe0: $fe $96
	sbc  c                                           ; $4fe2: $99
	inc  sp                                          ; $4fe3: $33
	ld   h, h                                        ; $4fe4: $64
	ld   de, $1111                                   ; $4fe5: $11 $11 $11
	ld   [de], a                                     ; $4fe8: $12
	ld   de, $3111                                   ; $4fe9: $11 $11 $31
	ld   de, $2713                                   ; $4fec: $11 $13 $27
	ret  c                                           ; $4fef: $d8

	ld   a, h                                        ; $4ff0: $7c
	cp   $9b                                         ; $4ff1: $fe $9b
	cp   l                                           ; $4ff3: $bd
	rst  JumpTable                                         ; $4ff4: $df
	rst  $38                                         ; $4ff5: $ff
	rst  $38                                         ; $4ff6: $ff
	rst  JumpTable                                         ; $4ff7: $df
	cp   $d9                                         ; $4ff8: $fe $d9
	rst  JumpTable                                         ; $4ffa: $df
	rst  $38                                         ; $4ffb: $ff
	cp   h                                           ; $4ffc: $bc
	db   $fd                                         ; $4ffd: $fd
	rst  $28                                         ; $4ffe: $ef
	set  1, e                                        ; $4fff: $cb $cb
	xor  b                                           ; $5001: $a8
	halt                                             ; $5002: $76
	ld   hl, $5146                                   ; $5003: $21 $46 $51
	ld   de, $1111                                   ; $5006: $11 $11 $11
	ld   de, $1111                                   ; $5009: $11 $11 $11
	ld   de, $4517                                   ; $500c: $11 $17 $45
	adc  c                                           ; $500f: $89
	rst  $38                                         ; $5010: $ff
	rst  $28                                         ; $5011: $ef
	db   $ec                                         ; $5012: $ec
	cp   $ef                                         ; $5013: $fe $ef
	rst  $28                                         ; $5015: $ef
	rst  $38                                         ; $5016: $ff
	db   $fd                                         ; $5017: $fd
	rst  $38                                         ; $5018: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5019: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501a: $cf
	db   $fd                                         ; $501b: $fd
	db   $eb                                         ; $501c: $eb
	cp   l                                           ; $501d: $bd
	sbc  $db                                         ; $501e: $de $db
	res  7, c                                        ; $5020: $cb $b9
	ld   sp, $1133                                   ; $5022: $31 $33 $11
	inc  de                                          ; $5025: $13
	ld   de, $1111                                   ; $5026: $11 $11 $11
	ld   de, $1111                                   ; $5029: $11 $11 $11
	ld   de, $c719                                   ; $502c: $11 $19 $c7
	rst  $38                                         ; $502f: $ff
	rst  $38                                         ; $5030: $ff
	rst  $28                                         ; $5031: $ef
	ei                                               ; $5032: $fb
	rst  $38                                         ; $5033: $ff
	rst  $28                                         ; $5034: $ef
	rst  $38                                         ; $5035: $ff
	cp   $ff                                         ; $5036: $fe $ff
	xor  $cf                                         ; $5038: $ee $cf
	cp   $fc                                         ; $503a: $fe $fc
	cp   h                                           ; $503c: $bc
	call $edb9                                       ; $503d: $cd $b9 $ed
	sbc  c                                           ; $5040: $99
	ld   d, h                                        ; $5041: $54
	ld   b, c                                        ; $5042: $41
	ld   de, $1111                                   ; $5043: $11 $11 $11
	ld   de, $1111                                   ; $5046: $11 $11 $11
	ld   de, $1111                                   ; $5049: $11 $11 $11
	rla                                              ; $504c: $17
	sbc  h                                           ; $504d: $9c
	xor  a                                           ; $504e: $af
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5052: $cf
	rst  $38                                         ; $5053: $ff
	rst  $38                                         ; $5054: $ff
	rst  JumpTable                                         ; $5055: $df
	rst  $38                                         ; $5056: $ff
	db   $ec                                         ; $5057: $ec
	cp   $ff                                         ; $5058: $fe $ff
	cp   h                                           ; $505a: $bc
	sbc  $b8                                         ; $505b: $de $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $505d: $cf
	cp   d                                           ; $505e: $ba
	add  a                                           ; $505f: $87
	add  l                                           ; $5060: $85
	ld   de, $1111                                   ; $5061: $11 $11 $11
	ld   de, $1111                                   ; $5064: $11 $11 $11
	ld   de, $1111                                   ; $5067: $11 $11 $11
	ld   de, $7a8a                                   ; $506a: $11 $8a $7a
	rst  $28                                         ; $506d: $ef
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	rst  $38                                         ; $5070: $ff
	rst  $38                                         ; $5071: $ff
	rst  $38                                         ; $5072: $ff
	ld   a, [$dffe]                                  ; $5073: $fa $fe $df
	sbc  $ff                                         ; $5076: $de $ff
	db   $fd                                         ; $5078: $fd
	rst  JumpTable                                         ; $5079: $df
	xor  d                                           ; $507a: $aa
	jp   z, $8ab7                                    ; $507b: $ca $b7 $8a

	ld   l, c                                        ; $507e: $69
	ld   h, c                                        ; $507f: $61
	ld   hl, $1111                                   ; $5080: $21 $11 $11
	ld   de, $1111                                   ; $5083: $11 $11 $11
	ld   de, $1111                                   ; $5086: $11 $11 $11
	ld   [de], a                                     ; $5089: $12
	ld   e, d                                        ; $508a: $5a
	cp   [hl]                                        ; $508b: $be
	rst  $38                                         ; $508c: $ff
	rst  $38                                         ; $508d: $ff
	rst  $38                                         ; $508e: $ff
	rst  $38                                         ; $508f: $ff
	rst  $38                                         ; $5090: $ff
	rst  $38                                         ; $5091: $ff
	cp   $dd                                         ; $5092: $fe $dd
	call c, $fdde                                    ; $5094: $dc $de $fd
	rst  $28                                         ; $5097: $ef
	db   $fd                                         ; $5098: $fd
	res  7, e                                        ; $5099: $cb $bb
	xor  c                                           ; $509b: $a9
	add  [hl]                                        ; $509c: $86
	ld   b, h                                        ; $509d: $44
	ld   hl, $1111                                   ; $509e: $21 $11 $11
	ld   de, $1111                                   ; $50a1: $11 $11 $11
	ld   de, $1111                                   ; $50a4: $11 $11 $11
	ld   de, $6825                                   ; $50a7: $11 $25 $68
	sbc  a                                           ; $50aa: $9f
	rst  $38                                         ; $50ab: $ff
	rst  $38                                         ; $50ac: $ff
	rst  $38                                         ; $50ad: $ff
	rst  $38                                         ; $50ae: $ff
	rst  $38                                         ; $50af: $ff
	rst  $28                                         ; $50b0: $ef
	db   $fd                                         ; $50b1: $fd
	call z, $fece                                    ; $50b2: $cc $ce $fe
	rst  JumpTable                                         ; $50b5: $df
	cp   $ad                                         ; $50b6: $fe $ad
	db   $ec                                         ; $50b8: $ec
	sbc  c                                           ; $50b9: $99
	xor  b                                           ; $50ba: $a8
	ld   h, e                                        ; $50bb: $63
	ld   [hl+], a                                    ; $50bc: $22
	ld   de, $1111                                   ; $50bd: $11 $11 $11
	ld   de, $1111                                   ; $50c0: $11 $11 $11
	ld   de, $1111                                   ; $50c3: $11 $11 $11
	ld   de, $5824                                   ; $50c6: $11 $24 $58
	rst  JumpTable                                         ; $50c9: $df
	rst  $28                                         ; $50ca: $ef
	rst  $38                                         ; $50cb: $ff
	rst  $38                                         ; $50cc: $ff
	rst  $38                                         ; $50cd: $ff
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	adc  $da                                         ; $50d0: $ce $da
	cp   l                                           ; $50d2: $bd
	call $dede                                       ; $50d3: $cd $de $de
	call c, $b8ed                                    ; $50d6: $dc $ed $b8
	xor  b                                           ; $50d9: $a8
	ld   b, c                                        ; $50da: $41
	ld   de, $1111                                   ; $50db: $11 $11 $11
	ld   de, $1111                                   ; $50de: $11 $11 $11
	ld   de, $1111                                   ; $50e1: $11 $11 $11
	ld   de, $1312                                   ; $50e4: $11 $12 $13
	add  a                                           ; $50e7: $87
	adc  e                                           ; $50e8: $8b
	rst  $38                                         ; $50e9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50ea: $cf
	rst  $38                                         ; $50eb: $ff
	rst  $38                                         ; $50ec: $ff
	rst  $38                                         ; $50ed: $ff
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	call z, $ccca                                    ; $50f0: $cc $ca $cc
	xor  d                                           ; $50f3: $aa
	call $ccbc                                       ; $50f4: $cd $bc $cc
	jp   z, $4398                                    ; $50f7: $ca $98 $43

	ld   [hl-], a                                    ; $50fa: $32
	ld   de, $1111                                   ; $50fb: $11 $11 $11
	ld   de, $1411                                   ; $50fe: $11 $11 $14
	ld   de, $1213                                   ; $5101: $11 $13 $12
	ld   de, $5117                                   ; $5104: $11 $17 $51
	sbc  l                                           ; $5107: $9d
	xor  b                                           ; $5108: $a8
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	rst  $38                                         ; $510b: $ff
	rst  $38                                         ; $510c: $ff
	rst  $38                                         ; $510d: $ff
	rst  $38                                         ; $510e: $ff
	db   $ec                                         ; $510f: $ec
	sbc  $98                                         ; $5110: $de $98
	res  3, b                                        ; $5112: $cb $98
	cp   h                                           ; $5114: $bc
	res  3, e                                        ; $5115: $cb $9b
	cp   d                                           ; $5117: $ba
	ld   d, l                                        ; $5118: $55
	ld   h, h                                        ; $5119: $64
	ld   sp, $1111                                   ; $511a: $31 $11 $11
	ld   de, $1111                                   ; $511d: $11 $11 $11
	ld   de, $1342                                   ; $5120: $11 $42 $13
	ld   d, c                                        ; $5123: $51
	add  hl, hl                                      ; $5124: $29
	ld   [hl], d                                     ; $5125: $72
	ld   l, e                                        ; $5126: $6b
	sbc  c                                           ; $5127: $99
	db   $ec                                         ; $5128: $ec
	rst  $28                                         ; $5129: $ef
	rst  $38                                         ; $512a: $ff
	rst  $38                                         ; $512b: $ff
	rst  $38                                         ; $512c: $ff
	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	call c, $96dd                                    ; $512f: $dc $dd $96
	cp   d                                           ; $5132: $ba
	ld   a, b                                        ; $5133: $78
	xor  d                                           ; $5134: $aa
	ld   a, b                                        ; $5135: $78
	sub  a                                           ; $5136: $97
	ld   h, a                                        ; $5137: $67
	ld   [hl], l                                     ; $5138: $75
	inc  [hl]                                        ; $5139: $34
	ld   d, e                                        ; $513a: $53
	ld   [de], a                                     ; $513b: $12
	ld   b, d                                        ; $513c: $42
	ld   de, $1252                                   ; $513d: $11 $52 $12
	ld   h, d                                        ; $5140: $62
	ld   [de], a                                     ; $5141: $12
	ld   d, h                                        ; $5142: $54
	inc  hl                                          ; $5143: $23
	scf                                              ; $5144: $37
	add  [hl]                                        ; $5145: $86
	ld   l, b                                        ; $5146: $68
	cp   e                                           ; $5147: $bb
	cp   d                                           ; $5148: $ba
	cp   a                                           ; $5149: $bf
	db   $fc                                         ; $514a: $fc
	rst  $38                                         ; $514b: $ff
	db   $fd                                         ; $514c: $fd
	rst  $38                                         ; $514d: $ff
	xor  $ec                                         ; $514e: $ee $ec
	cp   l                                           ; $5150: $bd
	rst  ToBoot                                         ; $5151: $c7
	sbc  e                                           ; $5152: $9b
	and  a                                           ; $5153: $a7
	adc  c                                           ; $5154: $89
	xor  d                                           ; $5155: $aa
	halt                                             ; $5156: $76
	xor  h                                           ; $5157: $ac
	ld   d, l                                        ; $5158: $55
	sub  l                                           ; $5159: $95
	ld   b, [hl]                                     ; $515a: $46
	ld   b, c                                        ; $515b: $41
	ld   l, b                                        ; $515c: $68
	ld   [de], a                                     ; $515d: $12
	add  h                                           ; $515e: $84
	ld   d, $a1                                      ; $515f: $16 $a1
	add  hl, hl                                      ; $5161: $29
	ld   h, e                                        ; $5162: $63
	ld   h, [hl]                                     ; $5163: $66
	dec  h                                           ; $5164: $25
	sub  [hl]                                        ; $5165: $96
	daa                                              ; $5166: $27
	add  $5a                                         ; $5167: $c6 $5a
	or   a                                           ; $5169: $b7
	xor  e                                           ; $516a: $ab
	adc  e                                           ; $516b: $8b
	cp   e                                           ; $516c: $bb
	cp   l                                           ; $516d: $bd
	set  1, l                                        ; $516e: $cb $cd
	jp   z, $9deb                                    ; $5170: $ca $eb $9d

	ret                                              ; $5173: $c9


	sbc  h                                           ; $5174: $9c
	sbc  b                                           ; $5175: $98
	add  [hl]                                        ; $5176: $86
	ld   a, b                                        ; $5177: $78
	sbc  b                                           ; $5178: $98
	adc  d                                           ; $5179: $8a
	adc  b                                           ; $517a: $88
	sbc  d                                           ; $517b: $9a
	ld   [hl], a                                     ; $517c: $77
	and  [hl]                                        ; $517d: $a6
	ld   h, [hl]                                     ; $517e: $66
	ld   h, l                                        ; $517f: $65
	ld   [hl], $45                                   ; $5180: $36 $45
	ld   d, a                                        ; $5182: $57
	add  l                                           ; $5183: $85
	adc  c                                           ; $5184: $89
	add  a                                           ; $5185: $87
	sbc  d                                           ; $5186: $9a
	ld   l, b                                        ; $5187: $68
	sub  l                                           ; $5188: $95
	ld   a, b                                        ; $5189: $78
	halt                                             ; $518a: $76
	sub  a                                           ; $518b: $97
	ld   a, d                                        ; $518c: $7a
	ld   a, b                                        ; $518d: $78
	ld   a, c                                        ; $518e: $79
	sub  a                                           ; $518f: $97
	ld   l, c                                        ; $5190: $69
	sbc  c                                           ; $5191: $99
	cp   c                                           ; $5192: $b9
	sbc  e                                           ; $5193: $9b
	sbc  c                                           ; $5194: $99
	adc  d                                           ; $5195: $8a
	sbc  d                                           ; $5196: $9a
	sbc  b                                           ; $5197: $98
	sbc  d                                           ; $5198: $9a
	xor  b                                           ; $5199: $a8
	adc  c                                           ; $519a: $89
	xor  e                                           ; $519b: $ab
	adc  c                                           ; $519c: $89
	xor  d                                           ; $519d: $aa
	and  a                                           ; $519e: $a7
	ld   a, b                                        ; $519f: $78
	and  a                                           ; $51a0: $a7
	ld   l, c                                        ; $51a1: $69
	adc  e                                           ; $51a2: $8b
	ld   [hl], a                                     ; $51a3: $77
	sub  a                                           ; $51a4: $97
	and  a                                           ; $51a5: $a7
	adc  c                                           ; $51a6: $89
	add  a                                           ; $51a7: $87
	adc  c                                           ; $51a8: $89
	ld   a, b                                        ; $51a9: $78
	add  [hl]                                        ; $51aa: $86
	ld   a, c                                        ; $51ab: $79
	sub  a                                           ; $51ac: $97
	sbc  b                                           ; $51ad: $98
	adc  b                                           ; $51ae: $88
	ld   a, c                                        ; $51af: $79
	ld   [hl], a                                     ; $51b0: $77
	ld   a, d                                        ; $51b1: $7a
	ld   [hl], a                                     ; $51b2: $77
	and  [hl]                                        ; $51b3: $a6
	ld   a, d                                        ; $51b4: $7a
	add  a                                           ; $51b5: $87
	sub  a                                           ; $51b6: $97
	adc  c                                           ; $51b7: $89
	ld   a, c                                        ; $51b8: $79
	ld   a, c                                        ; $51b9: $79
	add  a                                           ; $51ba: $87
	adc  c                                           ; $51bb: $89
	sub  a                                           ; $51bc: $97
	add  a                                           ; $51bd: $87
	sbc  d                                           ; $51be: $9a
	ld   a, b                                        ; $51bf: $78
	adc  b                                           ; $51c0: $88
	sbc  b                                           ; $51c1: $98
	xor  b                                           ; $51c2: $a8
	sbc  c                                           ; $51c3: $99
	adc  d                                           ; $51c4: $8a
	ld   a, d                                        ; $51c5: $7a
	ld   [hl], a                                     ; $51c6: $77
	ld   [hl], a                                     ; $51c7: $77
	sub  a                                           ; $51c8: $97
	sub  a                                           ; $51c9: $97
	sbc  c                                           ; $51ca: $99
	ld   l, b                                        ; $51cb: $68
	adc  b                                           ; $51cc: $88
	ld   a, c                                        ; $51cd: $79
	sub  a                                           ; $51ce: $97
	ld   [hl], a                                     ; $51cf: $77
	sub  a                                           ; $51d0: $97
	ld   a, b                                        ; $51d1: $78
	ld   h, a                                        ; $51d2: $67
	add  a                                           ; $51d3: $87
	halt                                             ; $51d4: $76
	add  a                                           ; $51d5: $87
	add  a                                           ; $51d6: $87
	ld   a, c                                        ; $51d7: $79
	ld   [hl], a                                     ; $51d8: $77
	ld   a, b                                        ; $51d9: $78
	ld   [hl], a                                     ; $51da: $77
	add  [hl]                                        ; $51db: $86
	ld   a, c                                        ; $51dc: $79
	add  a                                           ; $51dd: $87
	add  a                                           ; $51de: $87
	ld   a, b                                        ; $51df: $78
	add  a                                           ; $51e0: $87
	ld   a, b                                        ; $51e1: $78
	ld   [hl], a                                     ; $51e2: $77
	add  a                                           ; $51e3: $87
	ld   a, b                                        ; $51e4: $78
	ld   [hl], a                                     ; $51e5: $77
	ld   a, b                                        ; $51e6: $78
	ld   [hl], a                                     ; $51e7: $77
	add  a                                           ; $51e8: $87
	ld   a, b                                        ; $51e9: $78
	ld   a, b                                        ; $51ea: $78
	add  a                                           ; $51eb: $87
	ld   [hl], a                                     ; $51ec: $77
	add  a                                           ; $51ed: $87
	ld   [hl], a                                     ; $51ee: $77
	ld   a, b                                        ; $51ef: $78
	ld   [hl], a                                     ; $51f0: $77
	ld   [hl], a                                     ; $51f1: $77
	ld   [hl], a                                     ; $51f2: $77
	add  a                                           ; $51f3: $87
	ld   [hl], a                                     ; $51f4: $77
	ld   [hl], a                                     ; $51f5: $77
	ld   [hl], a                                     ; $51f6: $77
	ld   [hl], a                                     ; $51f7: $77
	ld   [hl], a                                     ; $51f8: $77
	add  a                                           ; $51f9: $87
	ld   [hl], a                                     ; $51fa: $77
	ld   [hl], a                                     ; $51fb: $77
	ld   a, b                                        ; $51fc: $78
	ld   [hl], a                                     ; $51fd: $77
	add  a                                           ; $51fe: $87
	ld   [hl], a                                     ; $51ff: $77
	adc  b                                           ; $5200: $88
	ld   a, b                                        ; $5201: $78
	ld   [hl], a                                     ; $5202: $77
	ld   a, b                                        ; $5203: $78
	adc  b                                           ; $5204: $88
	sbc  b                                           ; $5205: $98
	ld   a, b                                        ; $5206: $78
	adc  b                                           ; $5207: $88
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	add  a                                           ; $520f: $87
	add  a                                           ; $5210: $87
	adc  b                                           ; $5211: $88
	ld   a, b                                        ; $5212: $78
	adc  b                                           ; $5213: $88
	adc  b                                           ; $5214: $88
	ld   [hl], a                                     ; $5215: $77
	sbc  b                                           ; $5216: $98
	ld   a, b                                        ; $5217: $78
	ld   [hl], a                                     ; $5218: $77
	adc  b                                           ; $5219: $88
	ld   [hl], a                                     ; $521a: $77
	adc  b                                           ; $521b: $88
	ld   [hl], a                                     ; $521c: $77
	adc  b                                           ; $521d: $88
	adc  b                                           ; $521e: $88
	ld   [hl], a                                     ; $521f: $77
	adc  b                                           ; $5220: $88
	ld   a, b                                        ; $5221: $78
	ld   a, b                                        ; $5222: $78
	adc  b                                           ; $5223: $88
	sub  a                                           ; $5224: $97
	adc  c                                           ; $5225: $89
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  c                                           ; $5228: $89
	sbc  b                                           ; $5229: $98
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	ld   a, b                                        ; $522c: $78
	sbc  b                                           ; $522d: $98
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	add  a                                           ; $5230: $87
	add  a                                           ; $5231: $87
	adc  b                                           ; $5232: $88
	ld   a, b                                        ; $5233: $78
	adc  c                                           ; $5234: $89
	ld   a, b                                        ; $5235: $78
	adc  b                                           ; $5236: $88
	sub  a                                           ; $5237: $97
	adc  b                                           ; $5238: $88
	add  a                                           ; $5239: $87
	ld   a, b                                        ; $523a: $78
	ld   a, c                                        ; $523b: $79
	adc  b                                           ; $523c: $88
	ld   a, b                                        ; $523d: $78
	sbc  b                                           ; $523e: $98
	add  a                                           ; $523f: $87
	adc  b                                           ; $5240: $88
	adc  b                                           ; $5241: $88
	sbc  b                                           ; $5242: $98
	adc  b                                           ; $5243: $88
	adc  c                                           ; $5244: $89
	adc  b                                           ; $5245: $88
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	adc  b                                           ; $5248: $88
	ld   a, b                                        ; $5249: $78
	sub  a                                           ; $524a: $97
	adc  b                                           ; $524b: $88
	add  a                                           ; $524c: $87
	adc  b                                           ; $524d: $88
	ld   a, b                                        ; $524e: $78
	add  a                                           ; $524f: $87
	ld   a, c                                        ; $5250: $79
	add  a                                           ; $5251: $87
	adc  b                                           ; $5252: $88
	adc  c                                           ; $5253: $89
	add  a                                           ; $5254: $87
	adc  b                                           ; $5255: $88
	adc  b                                           ; $5256: $88
	adc  b                                           ; $5257: $88
	sbc  b                                           ; $5258: $98
	add  a                                           ; $5259: $87
	sbc  b                                           ; $525a: $98
	adc  b                                           ; $525b: $88
	ld   a, b                                        ; $525c: $78
	sub  a                                           ; $525d: $97
	ld   a, b                                        ; $525e: $78
	add  a                                           ; $525f: $87
	adc  c                                           ; $5260: $89
	adc  b                                           ; $5261: $88
	adc  c                                           ; $5262: $89
	adc  b                                           ; $5263: $88
	adc  b                                           ; $5264: $88
	add  a                                           ; $5265: $87
	sbc  c                                           ; $5266: $99
	adc  c                                           ; $5267: $89
	ld   a, c                                        ; $5268: $79
	sbc  b                                           ; $5269: $98
	adc  c                                           ; $526a: $89
	cp   c                                           ; $526b: $b9
	sbc  c                                           ; $526c: $99
	halt                                             ; $526d: $76
	adc  b                                           ; $526e: $88
	ld   h, a                                        ; $526f: $67
	add  a                                           ; $5270: $87
	adc  b                                           ; $5271: $88
	ld   a, b                                        ; $5272: $78
	adc  b                                           ; $5273: $88
	sbc  b                                           ; $5274: $98
	adc  c                                           ; $5275: $89
	add  a                                           ; $5276: $87
	adc  d                                           ; $5277: $8a
	jp   z, $77bb                                    ; $5278: $ca $bb $77

	add  [hl]                                        ; $527b: $86
	ld   h, a                                        ; $527c: $67
	xor  c                                           ; $527d: $a9
	sbc  d                                           ; $527e: $9a
	halt                                             ; $527f: $76
	ld   h, a                                        ; $5280: $67
	ld   h, [hl]                                     ; $5281: $66
	halt                                             ; $5282: $76
	sbc  c                                           ; $5283: $99
	adc  b                                           ; $5284: $88
	sbc  c                                           ; $5285: $99
	ld   a, c                                        ; $5286: $79
	ld   [hl], a                                     ; $5287: $77
	xor  c                                           ; $5288: $a9
	sub  a                                           ; $5289: $97
	halt                                             ; $528a: $76
	adc  c                                           ; $528b: $89
	ld   l, d                                        ; $528c: $6a
	adc  b                                           ; $528d: $88
	halt                                             ; $528e: $76
	ld   h, a                                        ; $528f: $67
	and  [hl]                                        ; $5290: $a6
	add  a                                           ; $5291: $87
	adc  d                                           ; $5292: $8a
	ld   l, c                                        ; $5293: $69
	ld   l, b                                        ; $5294: $68
	ld   [hl], a                                     ; $5295: $77
	sub  l                                           ; $5296: $95
	sbc  c                                           ; $5297: $99
	ld   a, b                                        ; $5298: $78
	xor  c                                           ; $5299: $a9
	ld   a, d                                        ; $529a: $7a
	ld   l, b                                        ; $529b: $68
	sbc  e                                           ; $529c: $9b
	rst  $10                                         ; $529d: $d7
	sbc  e                                           ; $529e: $9b
	ld   [hl], a                                     ; $529f: $77
	ld   h, [hl]                                     ; $52a0: $66
	ld   h, a                                        ; $52a1: $67
	ld   h, [hl]                                     ; $52a2: $66
	halt                                             ; $52a3: $76
	and  a                                           ; $52a4: $a7
	ld   l, b                                        ; $52a5: $68
	sbc  d                                           ; $52a6: $9a
	ld   a, c                                        ; $52a7: $79
	ld   a, d                                        ; $52a8: $7a
	sub  [hl]                                        ; $52a9: $96
	add  l                                           ; $52aa: $85
	sub  a                                           ; $52ab: $97
	ld   h, [hl]                                     ; $52ac: $66
	ld   l, d                                        ; $52ad: $6a
	ld   h, [hl]                                     ; $52ae: $66
	ld   [hl], a                                     ; $52af: $77
	and  [hl]                                        ; $52b0: $a6
	halt                                             ; $52b1: $76
	adc  d                                           ; $52b2: $8a
	ld   a, d                                        ; $52b3: $7a
	ld   l, c                                        ; $52b4: $69
	sbc  b                                           ; $52b5: $98
	halt                                             ; $52b6: $76

Call_0df_52b7:
	xor  b                                           ; $52b7: $a8
	halt                                             ; $52b8: $76
	ld   a, d                                        ; $52b9: $7a
	ld   a, b                                        ; $52ba: $78
	ld   d, a                                        ; $52bb: $57
	sub  a                                           ; $52bc: $97
	add  [hl]                                        ; $52bd: $86
	xor  b                                           ; $52be: $a8
	ld   h, a                                        ; $52bf: $67
	adc  c                                           ; $52c0: $89
	ld   e, d                                        ; $52c1: $5a
	ld   l, b                                        ; $52c2: $68
	sub  l                                           ; $52c3: $95
	and  [hl]                                        ; $52c4: $a6
	adc  b                                           ; $52c5: $88
	ld   a, b                                        ; $52c6: $78
	ld   a, e                                        ; $52c7: $7b
	adc  c                                           ; $52c8: $89
	ld   a, b                                        ; $52c9: $78
	or   l                                           ; $52ca: $b5
	sub  l                                           ; $52cb: $95
	sbc  e                                           ; $52cc: $9b
	ld   l, b                                        ; $52cd: $68
	ld   a, c                                        ; $52ce: $79
	ld   a, b                                        ; $52cf: $78
	ld   [hl], l                                     ; $52d0: $75
	cp   c                                           ; $52d1: $b9
	sbc  b                                           ; $52d2: $98
	ld   a, e                                        ; $52d3: $7b
	sub  a                                           ; $52d4: $97
	ld   l, b                                        ; $52d5: $68
	adc  c                                           ; $52d6: $89
	and  [hl]                                        ; $52d7: $a6
	xor  h                                           ; $52d8: $ac
	cp   b                                           ; $52d9: $b8
	sbc  d                                           ; $52da: $9a
	adc  d                                           ; $52db: $8a
	adc  b                                           ; $52dc: $88
	sbc  b                                           ; $52dd: $98
	add  l                                           ; $52de: $85
	ld   d, l                                        ; $52df: $55
	ld   b, h                                        ; $52e0: $44
	ld   d, a                                        ; $52e1: $57
	adc  b                                           ; $52e2: $88
	halt                                             ; $52e3: $76
	xor  d                                           ; $52e4: $aa
	xor  d                                           ; $52e5: $aa
	xor  d                                           ; $52e6: $aa
	xor  d                                           ; $52e7: $aa
	ld   h, [hl]                                     ; $52e8: $66
	adc  c                                           ; $52e9: $89
	add  h                                           ; $52ea: $84
	ld   l, d                                        ; $52eb: $6a
	ld   [hl], h                                     ; $52ec: $74
	ld   a, b                                        ; $52ed: $78
	ld   a, c                                        ; $52ee: $79
	add  a                                           ; $52ef: $87
	xor  e                                           ; $52f0: $ab
	and  a                                           ; $52f1: $a7
	ld   l, d                                        ; $52f2: $6a
	xor  b                                           ; $52f3: $a8
	ld   d, l                                        ; $52f4: $55
	adc  d                                           ; $52f5: $8a
	add  h                                           ; $52f6: $84
	ld   e, d                                        ; $52f7: $5a
	or   [hl]                                        ; $52f8: $b6
	scf                                              ; $52f9: $37
	jp   z, $8a56                                    ; $52fa: $ca $56 $8a

	or   [hl]                                        ; $52fd: $b6
	ld   d, a                                        ; $52fe: $57
	cp   c                                           ; $52ff: $b9
	ld   b, l                                        ; $5300: $45
	sbc  e                                           ; $5301: $9b
	add  [hl]                                        ; $5302: $86
	ld   l, c                                        ; $5303: $69
	or   a                                           ; $5304: $b7
	ld   h, [hl]                                     ; $5305: $66
	xor  e                                           ; $5306: $ab
	ld   [hl], l                                     ; $5307: $75
	ld   l, h                                        ; $5308: $6c
	or   [hl]                                        ; $5309: $b6
	ld   l, c                                        ; $530a: $69
	ret  z                                           ; $530b: $c8

	ld   a, d                                        ; $530c: $7a
	xor  d                                           ; $530d: $aa
	cp   c                                           ; $530e: $b9
	ld   a, d                                        ; $530f: $7a
	bit  7, c                                        ; $5310: $cb $79
	res  4, a                                        ; $5312: $cb $a7
	adc  e                                           ; $5314: $8b
	xor  c                                           ; $5315: $a9
	sbc  b                                           ; $5316: $98
	xor  d                                           ; $5317: $aa
	and  a                                           ; $5318: $a7
	ld   a, c                                        ; $5319: $79
	sub  a                                           ; $531a: $97
	ld   h, a                                        ; $531b: $67
	ld   [hl], a                                     ; $531c: $77
	ld   h, e                                        ; $531d: $63
	inc  de                                          ; $531e: $13
	ld   sp, $1111                                   ; $531f: $31 $11 $11
	ld   de, $1111                                   ; $5322: $11 $11 $11
	ld   de, $ab5a                                   ; $5325: $11 $5a $ab
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	rst  $38                                         ; $532c: $ff
	rst  $38                                         ; $532d: $ff
	cp   $ef                                         ; $532e: $fe $ef
	or   a                                           ; $5330: $b7
	ld   a, d                                        ; $5331: $7a
	xor  b                                           ; $5332: $a8
	adc  d                                           ; $5333: $8a
	cp   d                                           ; $5334: $ba
	xor  d                                           ; $5335: $aa
	sbc  c                                           ; $5336: $99
	ld   h, l                                        ; $5337: $65
	ld   sp, $1111                                   ; $5338: $31 $11 $11
	ld   de, $1111                                   ; $533b: $11 $11 $11
	ld   de, $af11                                   ; $533e: $11 $11 $af
	rst  $28                                         ; $5341: $ef
	rst  $38                                         ; $5342: $ff
	rst  $38                                         ; $5343: $ff
	rst  $38                                         ; $5344: $ff
	rst  $38                                         ; $5345: $ff
	rst  $38                                         ; $5346: $ff
	rst  $38                                         ; $5347: $ff
	and  [hl]                                        ; $5348: $a6
	ld   h, [hl]                                     ; $5349: $66
	ld   d, l                                        ; $534a: $55
	ld   a, b                                        ; $534b: $78
	xor  [hl]                                        ; $534c: $ae
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	cp   $b6                                         ; $5350: $fe $b6
	ld   b, c                                        ; $5352: $41
	ld   de, $1111                                   ; $5353: $11 $11 $11
	ld   de, $1111                                   ; $5356: $11 $11 $11
	ld   de, $2511                                   ; $5359: $11 $11 $25
	ld   a, e                                        ; $535c: $7b
	rst  $38                                         ; $535d: $ff
	rst  $38                                         ; $535e: $ff
	rst  $38                                         ; $535f: $ff
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	rst  $38                                         ; $5362: $ff
	rst  $38                                         ; $5363: $ff
	db   $eb                                         ; $5364: $eb
	add  [hl]                                        ; $5365: $86
	add  a                                           ; $5366: $87
	ld   d, a                                        ; $5367: $57
	sbc  e                                           ; $5368: $9b
	cp   [hl]                                        ; $5369: $be
	rst  $38                                         ; $536a: $ff
	rst  $38                                         ; $536b: $ff
	rst  $38                                         ; $536c: $ff
	db   $fd                                         ; $536d: $fd
	sub  [hl]                                        ; $536e: $96
	ld   sp, $1111                                   ; $536f: $31 $11 $11
	ld   de, $1111                                   ; $5372: $11 $11 $11
	ld   de, $1111                                   ; $5375: $11 $11 $11
	inc  de                                          ; $5378: $13
	sbc  e                                           ; $5379: $9b
	rst  JumpTable                                         ; $537a: $df
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	rst  $38                                         ; $537d: $ff
	rst  $38                                         ; $537e: $ff
	rst  $38                                         ; $537f: $ff
	rst  $38                                         ; $5380: $ff
	ret                                              ; $5381: $c9


	sub  [hl]                                        ; $5382: $96
	ld   l, b                                        ; $5383: $68
	ld   [hl], a                                     ; $5384: $77
	xor  [hl]                                        ; $5385: $ae
	db   $ed                                         ; $5386: $ed

Jump_0df_5387:
	rst  $38                                         ; $5387: $ff
	rst  $38                                         ; $5388: $ff
	rst  $38                                         ; $5389: $ff
	db   $fd                                         ; $538a: $fd
	sub  [hl]                                        ; $538b: $96
	ld   b, d                                        ; $538c: $42
	ld   de, $1111                                   ; $538d: $11 $11 $11
	ld   de, $1111                                   ; $5390: $11 $11 $11
	ld   de, $1111                                   ; $5393: $11 $11 $11
	ld   b, a                                        ; $5396: $47
	sbc  e                                           ; $5397: $9b
	rst  $28                                         ; $5398: $ef
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	rst  $38                                         ; $539b: $ff
	rst  $38                                         ; $539c: $ff
	rst  $38                                         ; $539d: $ff
	rst  $38                                         ; $539e: $ff
	cp   d                                           ; $539f: $ba
	cp   c                                           ; $53a0: $b9
	ld   h, [hl]                                     ; $53a1: $66
	xor  e                                           ; $53a2: $ab
	sbc  d                                           ; $53a3: $9a
	rst  JumpTable                                         ; $53a4: $df
	xor  $ff                                         ; $53a5: $ee $ff
	db   $ed                                         ; $53a7: $ed
	jp   z, $3186                                    ; $53a8: $ca $86 $31

	ld   de, $1111                                   ; $53ab: $11 $11 $11
	ld   de, $1111                                   ; $53ae: $11 $11 $11
	ld   de, $1111                                   ; $53b1: $11 $11 $11
	ld   de, $9a57                                   ; $53b4: $11 $57 $9a
	rst  JumpTable                                         ; $53b7: $df
	rst  $38                                         ; $53b8: $ff
	rst  $38                                         ; $53b9: $ff
	rst  $38                                         ; $53ba: $ff
	rst  $38                                         ; $53bb: $ff
	rst  $38                                         ; $53bc: $ff
	db   $fc                                         ; $53bd: $fc
	res  5, d                                        ; $53be: $cb $aa
	sbc  b                                           ; $53c0: $98
	sbc  d                                           ; $53c1: $9a
	xor  e                                           ; $53c2: $ab
	cp   e                                           ; $53c3: $bb
	set  1, d                                        ; $53c4: $cb $ca
	cp   e                                           ; $53c6: $bb
	and  a                                           ; $53c7: $a7
	ld   d, l                                        ; $53c8: $55
	ld   b, e                                        ; $53c9: $43
	ld   hl, $1111                                   ; $53ca: $21 $11 $11
	ld   de, $1222                                   ; $53cd: $11 $22 $12
	ld   [hl-], a                                    ; $53d0: $32
	inc  sp                                          ; $53d1: $33
	inc  h                                           ; $53d2: $24
	inc  hl                                          ; $53d3: $23
	ld   d, h                                        ; $53d4: $54
	ld   h, [hl]                                     ; $53d5: $66
	ld   h, a                                        ; $53d6: $67
	ld   a, b                                        ; $53d7: $78
	xor  c                                           ; $53d8: $a9
	sbc  e                                           ; $53d9: $9b
	xor  e                                           ; $53da: $ab
	call c, $dddc                                    ; $53db: $dc $dc $dd
	call $cddc                                       ; $53de: $cd $dc $cd
	cp   e                                           ; $53e1: $bb
	call z, $a9ba                                    ; $53e2: $cc $ba $a9
	xor  d                                           ; $53e5: $aa
	sbc  b                                           ; $53e6: $98
	add  a                                           ; $53e7: $87
	ld   [hl], a                                     ; $53e8: $77
	add  a                                           ; $53e9: $87
	ld   l, b                                        ; $53ea: $68
	add  a                                           ; $53eb: $87
	adc  c                                           ; $53ec: $89
	ld   a, c                                        ; $53ed: $79
	sub  a                                           ; $53ee: $97
	add  a                                           ; $53ef: $87
	ld   a, c                                        ; $53f0: $79
	adc  b                                           ; $53f1: $88
	adc  b                                           ; $53f2: $88
	adc  b                                           ; $53f3: $88
	adc  b                                           ; $53f4: $88
	sbc  b                                           ; $53f5: $98
	adc  b                                           ; $53f6: $88
	ld   a, b                                        ; $53f7: $78
	add  a                                           ; $53f8: $87
	ld   a, b                                        ; $53f9: $78
	ld   [hl], a                                     ; $53fa: $77
	adc  b                                           ; $53fb: $88
	adc  b                                           ; $53fc: $88
	adc  c                                           ; $53fd: $89
	sbc  c                                           ; $53fe: $99
	sbc  b                                           ; $53ff: $98
	adc  c                                           ; $5400: $89
	adc  c                                           ; $5401: $89
	adc  b                                           ; $5402: $88
	sbc  c                                           ; $5403: $99
	sbc  c                                           ; $5404: $99
	sbc  c                                           ; $5405: $99
	adc  b                                           ; $5406: $88
	sbc  c                                           ; $5407: $99
	sbc  d                                           ; $5408: $9a
	sbc  d                                           ; $5409: $9a
	xor  d                                           ; $540a: $aa
	xor  d                                           ; $540b: $aa
	xor  d                                           ; $540c: $aa
	xor  d                                           ; $540d: $aa
	xor  d                                           ; $540e: $aa
	xor  c                                           ; $540f: $a9
	xor  d                                           ; $5410: $aa
	sbc  c                                           ; $5411: $99
	sbc  b                                           ; $5412: $98
	adc  c                                           ; $5413: $89
	sbc  b                                           ; $5414: $98
	adc  b                                           ; $5415: $88
	adc  b                                           ; $5416: $88
	ld   [hl], a                                     ; $5417: $77
	adc  b                                           ; $5418: $88
	ld   a, b                                        ; $5419: $78
	adc  b                                           ; $541a: $88
	adc  b                                           ; $541b: $88
	adc  b                                           ; $541c: $88
	ld   [hl], a                                     ; $541d: $77
	ld   [hl], a                                     ; $541e: $77
	ld   [hl], a                                     ; $541f: $77
	ld   [hl], a                                     ; $5420: $77
	ld   [hl], a                                     ; $5421: $77
	ld   [hl], a                                     ; $5422: $77
	ld   [hl], a                                     ; $5423: $77
	ld   [hl], a                                     ; $5424: $77
	ld   [hl], a                                     ; $5425: $77
	ld   a, b                                        ; $5426: $78
	adc  b                                           ; $5427: $88
	adc  b                                           ; $5428: $88
	adc  b                                           ; $5429: $88
	adc  b                                           ; $542a: $88
	adc  b                                           ; $542b: $88
	adc  b                                           ; $542c: $88
	adc  b                                           ; $542d: $88
	adc  b                                           ; $542e: $88
	adc  b                                           ; $542f: $88
	adc  b                                           ; $5430: $88
	adc  b                                           ; $5431: $88
	adc  b                                           ; $5432: $88
	adc  b                                           ; $5433: $88
	adc  b                                           ; $5434: $88
	adc  b                                           ; $5435: $88
	adc  b                                           ; $5436: $88
	adc  b                                           ; $5437: $88
	adc  b                                           ; $5438: $88
	adc  b                                           ; $5439: $88
	adc  b                                           ; $543a: $88
	adc  b                                           ; $543b: $88
	ld   [hl], a                                     ; $543c: $77
	ld   [hl], a                                     ; $543d: $77
	ld   [hl], a                                     ; $543e: $77
	ld   [hl], a                                     ; $543f: $77
	ld   [hl], a                                     ; $5440: $77
	ld   [hl], a                                     ; $5441: $77
	ld   [hl], a                                     ; $5442: $77
	ld   a, b                                        ; $5443: $78
	adc  b                                           ; $5444: $88
	adc  b                                           ; $5445: $88
	adc  b                                           ; $5446: $88
	adc  b                                           ; $5447: $88
	adc  b                                           ; $5448: $88
	adc  b                                           ; $5449: $88
	adc  b                                           ; $544a: $88
	add  a                                           ; $544b: $87
	ld   [hl], a                                     ; $544c: $77
	ld   [hl], a                                     ; $544d: $77
	ld   [hl], a                                     ; $544e: $77
	ld   [hl], a                                     ; $544f: $77
	ld   [hl], a                                     ; $5450: $77
	ld   [hl], a                                     ; $5451: $77
	ld   [hl], a                                     ; $5452: $77
	ld   [hl], a                                     ; $5453: $77
	ld   [hl], a                                     ; $5454: $77
	ld   [hl], a                                     ; $5455: $77
	ld   [hl], a                                     ; $5456: $77
	ld   [hl], a                                     ; $5457: $77
	ld   [hl], a                                     ; $5458: $77
	ld   [hl], a                                     ; $5459: $77
	ld   [hl], a                                     ; $545a: $77
	ld   [hl], a                                     ; $545b: $77
	ld   [hl], a                                     ; $545c: $77
	ld   a, b                                        ; $545d: $78
	adc  b                                           ; $545e: $88
	adc  b                                           ; $545f: $88
	adc  b                                           ; $5460: $88
	adc  b                                           ; $5461: $88
	adc  b                                           ; $5462: $88
	adc  b                                           ; $5463: $88
	add  a                                           ; $5464: $87
	ld   [hl], a                                     ; $5465: $77
	ld   [hl], a                                     ; $5466: $77
	ld   [hl], a                                     ; $5467: $77
	ld   [hl], a                                     ; $5468: $77
	ld   [hl], a                                     ; $5469: $77
	ld   [hl], a                                     ; $546a: $77
	ld   [hl], a                                     ; $546b: $77
	ld   [hl], a                                     ; $546c: $77
	ld   [hl], a                                     ; $546d: $77
	ld   [hl], a                                     ; $546e: $77
	ld   [hl], a                                     ; $546f: $77
	ld   [hl], a                                     ; $5470: $77
	ld   [hl], a                                     ; $5471: $77
	ld   [hl], a                                     ; $5472: $77
	ld   [hl], a                                     ; $5473: $77
	ld   [hl], a                                     ; $5474: $77
	ld   [hl], a                                     ; $5475: $77
	ld   [hl], a                                     ; $5476: $77
	ld   a, b                                        ; $5477: $78
	adc  b                                           ; $5478: $88
	adc  b                                           ; $5479: $88
	adc  b                                           ; $547a: $88
	adc  b                                           ; $547b: $88
	adc  b                                           ; $547c: $88
	adc  b                                           ; $547d: $88
	adc  b                                           ; $547e: $88
	adc  b                                           ; $547f: $88
	adc  b                                           ; $5480: $88
	add  a                                           ; $5481: $87
	ld   [hl], a                                     ; $5482: $77
	ld   [hl], a                                     ; $5483: $77
	ld   [hl], a                                     ; $5484: $77
	ld   [hl], a                                     ; $5485: $77
	ld   [hl], a                                     ; $5486: $77
	ld   [hl], a                                     ; $5487: $77
	ld   [hl], a                                     ; $5488: $77
	ld   [hl], a                                     ; $5489: $77
	ld   [hl], a                                     ; $548a: $77
	ld   [hl], a                                     ; $548b: $77
	ld   [hl], a                                     ; $548c: $77
	ld   [hl], a                                     ; $548d: $77
	ld   [hl], a                                     ; $548e: $77
	ld   [hl], a                                     ; $548f: $77
	ld   [hl], a                                     ; $5490: $77
	ld   a, b                                        ; $5491: $78
	add  a                                           ; $5492: $87
	adc  b                                           ; $5493: $88
	adc  b                                           ; $5494: $88
	adc  b                                           ; $5495: $88
	adc  b                                           ; $5496: $88
	adc  b                                           ; $5497: $88
	adc  b                                           ; $5498: $88
	adc  b                                           ; $5499: $88
	adc  b                                           ; $549a: $88
	adc  b                                           ; $549b: $88
	adc  b                                           ; $549c: $88
	adc  b                                           ; $549d: $88
	adc  b                                           ; $549e: $88
	adc  b                                           ; $549f: $88
	adc  b                                           ; $54a0: $88
	adc  b                                           ; $54a1: $88
	adc  b                                           ; $54a2: $88
	adc  b                                           ; $54a3: $88
	adc  b                                           ; $54a4: $88

Call_0df_54a5:
	adc  b                                           ; $54a5: $88
	adc  b                                           ; $54a6: $88
	adc  b                                           ; $54a7: $88
	adc  b                                           ; $54a8: $88
	adc  b                                           ; $54a9: $88
	adc  b                                           ; $54aa: $88
	adc  b                                           ; $54ab: $88
	adc  b                                           ; $54ac: $88
	ld   [hl], a                                     ; $54ad: $77
	adc  b                                           ; $54ae: $88
	adc  b                                           ; $54af: $88
	adc  b                                           ; $54b0: $88
	adc  b                                           ; $54b1: $88
	adc  b                                           ; $54b2: $88
	adc  b                                           ; $54b3: $88
	adc  b                                           ; $54b4: $88
	adc  b                                           ; $54b5: $88
	adc  b                                           ; $54b6: $88
	adc  b                                           ; $54b7: $88
	adc  b                                           ; $54b8: $88
	adc  b                                           ; $54b9: $88
	adc  b                                           ; $54ba: $88
	adc  b                                           ; $54bb: $88
	adc  b                                           ; $54bc: $88
	adc  b                                           ; $54bd: $88
	adc  b                                           ; $54be: $88
	adc  b                                           ; $54bf: $88
	adc  b                                           ; $54c0: $88
	adc  b                                           ; $54c1: $88
	adc  b                                           ; $54c2: $88
	adc  b                                           ; $54c3: $88
	adc  b                                           ; $54c4: $88
	adc  b                                           ; $54c5: $88
	adc  b                                           ; $54c6: $88
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	adc  b                                           ; $54c9: $88
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	adc  b                                           ; $54cd: $88
	adc  b                                           ; $54ce: $88
	sbc  b                                           ; $54cf: $98
	adc  b                                           ; $54d0: $88
	adc  b                                           ; $54d1: $88
	adc  b                                           ; $54d2: $88
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  b                                           ; $54d5: $88
	sbc  b                                           ; $54d6: $98
	adc  b                                           ; $54d7: $88
	adc  c                                           ; $54d8: $89
	adc  b                                           ; $54d9: $88
	adc  b                                           ; $54da: $88
	adc  b                                           ; $54db: $88
	adc  b                                           ; $54dc: $88
	adc  b                                           ; $54dd: $88
	adc  b                                           ; $54de: $88
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	adc  b                                           ; $54e8: $88
	adc  b                                           ; $54e9: $88
	adc  b                                           ; $54ea: $88
	adc  b                                           ; $54eb: $88
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  b                                           ; $54f1: $88
	adc  b                                           ; $54f2: $88
	adc  b                                           ; $54f3: $88
	adc  b                                           ; $54f4: $88
	adc  b                                           ; $54f5: $88
	adc  b                                           ; $54f6: $88
	adc  b                                           ; $54f7: $88
	adc  b                                           ; $54f8: $88
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	adc  b                                           ; $54fb: $88
	adc  b                                           ; $54fc: $88
	adc  b                                           ; $54fd: $88
	adc  b                                           ; $54fe: $88
	adc  b                                           ; $54ff: $88
	adc  b                                           ; $5500: $88
	adc  b                                           ; $5501: $88
	adc  b                                           ; $5502: $88
	adc  b                                           ; $5503: $88
	adc  b                                           ; $5504: $88
	adc  b                                           ; $5505: $88
	adc  b                                           ; $5506: $88
	adc  b                                           ; $5507: $88
	adc  b                                           ; $5508: $88
	adc  b                                           ; $5509: $88
	adc  b                                           ; $550a: $88
	adc  b                                           ; $550b: $88
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  b                                           ; $550e: $88
	adc  b                                           ; $550f: $88
	adc  b                                           ; $5510: $88
	adc  b                                           ; $5511: $88
	adc  b                                           ; $5512: $88
	adc  b                                           ; $5513: $88
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	adc  b                                           ; $5516: $88
	adc  b                                           ; $5517: $88
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	adc  b                                           ; $551a: $88
	adc  b                                           ; $551b: $88
	adc  b                                           ; $551c: $88
	adc  b                                           ; $551d: $88
	adc  b                                           ; $551e: $88
	adc  b                                           ; $551f: $88
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	adc  b                                           ; $5522: $88
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  b                                           ; $5525: $88
	adc  b                                           ; $5526: $88
	adc  b                                           ; $5527: $88
	adc  b                                           ; $5528: $88
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	adc  b                                           ; $552c: $88
	add  a                                           ; $552d: $87
	adc  b                                           ; $552e: $88
	adc  b                                           ; $552f: $88
	adc  b                                           ; $5530: $88
	adc  c                                           ; $5531: $89
	adc  b                                           ; $5532: $88
	adc  b                                           ; $5533: $88
	add  a                                           ; $5534: $87
	adc  b                                           ; $5535: $88
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  b                                           ; $5539: $88
	adc  b                                           ; $553a: $88
	adc  b                                           ; $553b: $88
	adc  b                                           ; $553c: $88
	adc  b                                           ; $553d: $88
	adc  c                                           ; $553e: $89
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	adc  b                                           ; $5541: $88
	adc  b                                           ; $5542: $88
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88

Jump_0df_5545:
	adc  b                                           ; $5545: $88
	adc  b                                           ; $5546: $88
	adc  b                                           ; $5547: $88
	adc  b                                           ; $5548: $88
	sbc  b                                           ; $5549: $98
	ld   [hl], a                                     ; $554a: $77
	adc  c                                           ; $554b: $89
	add  a                                           ; $554c: $87
	adc  b                                           ; $554d: $88
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  b                                           ; $5550: $88
	ld   a, b                                        ; $5551: $78
	adc  b                                           ; $5552: $88
	adc  b                                           ; $5553: $88
	adc  b                                           ; $5554: $88
	adc  c                                           ; $5555: $89
	adc  c                                           ; $5556: $89
	add  a                                           ; $5557: $87
	sbc  c                                           ; $5558: $99
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	sbc  b                                           ; $555b: $98
	add  a                                           ; $555c: $87
	ld   a, b                                        ; $555d: $78
	adc  b                                           ; $555e: $88
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	add  a                                           ; $5561: $87
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	add  a                                           ; $5564: $87
	sbc  c                                           ; $5565: $99
	adc  b                                           ; $5566: $88
	ld   a, b                                        ; $5567: $78
	adc  b                                           ; $5568: $88
	add  a                                           ; $5569: $87
	adc  b                                           ; $556a: $88
	adc  b                                           ; $556b: $88
	adc  b                                           ; $556c: $88
	ld   a, b                                        ; $556d: $78
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	adc  c                                           ; $5570: $89
	sbc  b                                           ; $5571: $98
	sbc  c                                           ; $5572: $99
	sbc  b                                           ; $5573: $98
	sbc  b                                           ; $5574: $98
	adc  c                                           ; $5575: $89
	adc  b                                           ; $5576: $88
	add  a                                           ; $5577: $87
	adc  b                                           ; $5578: $88
	ld   a, b                                        ; $5579: $78
	ld   a, b                                        ; $557a: $78
	adc  b                                           ; $557b: $88
	ld   [hl], a                                     ; $557c: $77
	ld   [hl], a                                     ; $557d: $77
	adc  b                                           ; $557e: $88
	sbc  c                                           ; $557f: $99
	sbc  c                                           ; $5580: $99
	adc  c                                           ; $5581: $89
	adc  c                                           ; $5582: $89
	adc  c                                           ; $5583: $89
	adc  c                                           ; $5584: $89
	adc  b                                           ; $5585: $88
	sbc  c                                           ; $5586: $99
	adc  d                                           ; $5587: $8a
	sbc  c                                           ; $5588: $99
	add  a                                           ; $5589: $87
	ld   [hl], a                                     ; $558a: $77
	ld   [hl], a                                     ; $558b: $77
	ld   [hl], a                                     ; $558c: $77
	adc  b                                           ; $558d: $88
	adc  b                                           ; $558e: $88
	add  a                                           ; $558f: $87
	ld   l, b                                        ; $5590: $68
	add  a                                           ; $5591: $87
	ld   [hl], a                                     ; $5592: $77
	sbc  b                                           ; $5593: $98
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	sbc  b                                           ; $5596: $98
	adc  c                                           ; $5597: $89
	add  a                                           ; $5598: $87
	adc  c                                           ; $5599: $89
	sub  a                                           ; $559a: $97
	adc  c                                           ; $559b: $89
	adc  b                                           ; $559c: $88
	ld   [hl], a                                     ; $559d: $77
	add  a                                           ; $559e: $87
	sbc  b                                           ; $559f: $98
	ld   a, b                                        ; $55a0: $78
	adc  c                                           ; $55a1: $89
	add  a                                           ; $55a2: $87
	adc  c                                           ; $55a3: $89
	sbc  c                                           ; $55a4: $99
	sbc  b                                           ; $55a5: $98
	adc  c                                           ; $55a6: $89
	adc  b                                           ; $55a7: $88
	sbc  b                                           ; $55a8: $98
	adc  c                                           ; $55a9: $89
	sbc  b                                           ; $55aa: $98
	ld   a, b                                        ; $55ab: $78
	xor  b                                           ; $55ac: $a8
	adc  d                                           ; $55ad: $8a
	adc  c                                           ; $55ae: $89
	xor  c                                           ; $55af: $a9
	sbc  b                                           ; $55b0: $98
	sbc  d                                           ; $55b1: $9a
	sbc  c                                           ; $55b2: $99
	adc  b                                           ; $55b3: $88
	sub  a                                           ; $55b4: $97
	sbc  b                                           ; $55b5: $98
	add  a                                           ; $55b6: $87
	adc  c                                           ; $55b7: $89
	ld   a, b                                        ; $55b8: $78
	ld   a, b                                        ; $55b9: $78
	sub  a                                           ; $55ba: $97
	xor  b                                           ; $55bb: $a8
	ld   a, d                                        ; $55bc: $7a
	ld   a, b                                        ; $55bd: $78
	sub  a                                           ; $55be: $97
	adc  d                                           ; $55bf: $8a
	adc  b                                           ; $55c0: $88
	adc  b                                           ; $55c1: $88
	cp   d                                           ; $55c2: $ba
	sub  a                                           ; $55c3: $97
	adc  c                                           ; $55c4: $89
	adc  b                                           ; $55c5: $88
	ld   [hl], a                                     ; $55c6: $77
	ld   a, b                                        ; $55c7: $78
	add  a                                           ; $55c8: $87
	ld   a, c                                        ; $55c9: $79
	adc  c                                           ; $55ca: $89
	sub  [hl]                                        ; $55cb: $96
	adc  c                                           ; $55cc: $89
	sbc  b                                           ; $55cd: $98
	ld   a, c                                        ; $55ce: $79
	sbc  d                                           ; $55cf: $9a
	add  [hl]                                        ; $55d0: $86
	ld   l, b                                        ; $55d1: $68
	adc  b                                           ; $55d2: $88
	ld   [hl], a                                     ; $55d3: $77
	ld   a, c                                        ; $55d4: $79
	adc  b                                           ; $55d5: $88
	add  a                                           ; $55d6: $87
	xor  c                                           ; $55d7: $a9
	adc  b                                           ; $55d8: $88
	adc  c                                           ; $55d9: $89
	sbc  c                                           ; $55da: $99
	ld   a, b                                        ; $55db: $78
	ld   l, b                                        ; $55dc: $68
	sbc  c                                           ; $55dd: $99
	halt                                             ; $55de: $76
	sbc  c                                           ; $55df: $99
	add  a                                           ; $55e0: $87
	ld   a, c                                        ; $55e1: $79
	adc  d                                           ; $55e2: $8a
	add  a                                           ; $55e3: $87
	adc  c                                           ; $55e4: $89
	add  [hl]                                        ; $55e5: $86
	adc  c                                           ; $55e6: $89
	adc  c                                           ; $55e7: $89
	ld   a, c                                        ; $55e8: $79
	ld   [hl], a                                     ; $55e9: $77
	adc  c                                           ; $55ea: $89
	add  a                                           ; $55eb: $87
	adc  b                                           ; $55ec: $88
	cp   c                                           ; $55ed: $b9
	ld   a, b                                        ; $55ee: $78
	ld   a, c                                        ; $55ef: $79
	adc  b                                           ; $55f0: $88
	add  a                                           ; $55f1: $87
	sbc  b                                           ; $55f2: $98
	ld   a, b                                        ; $55f3: $78
	ld   a, c                                        ; $55f4: $79
	ld   [hl], a                                     ; $55f5: $77
	add  a                                           ; $55f6: $87
	adc  c                                           ; $55f7: $89
	sub  a                                           ; $55f8: $97
	adc  c                                           ; $55f9: $89
	add  a                                           ; $55fa: $87
	ld   a, c                                        ; $55fb: $79
	ld   [hl], a                                     ; $55fc: $77
	ld   l, c                                        ; $55fd: $69
	xor  b                                           ; $55fe: $a8
	add  a                                           ; $55ff: $87
	sbc  c                                           ; $5600: $99
	add  a                                           ; $5601: $87
	ld   l, b                                        ; $5602: $68
	xor  c                                           ; $5603: $a9
	ld   h, a                                        ; $5604: $67
	ld   a, d                                        ; $5605: $7a
	and  a                                           ; $5606: $a7
	ld   l, b                                        ; $5607: $68
	adc  b                                           ; $5608: $88
	ld   [hl], a                                     ; $5609: $77
	ld   a, b                                        ; $560a: $78
	sub  a                                           ; $560b: $97
	ld   h, [hl]                                     ; $560c: $66
	adc  e                                           ; $560d: $8b
	add  [hl]                                        ; $560e: $86
	adc  e                                           ; $560f: $8b
	sbc  b                                           ; $5610: $98
	ld   [hl], a                                     ; $5611: $77
	adc  e                                           ; $5612: $8b
	add  [hl]                                        ; $5613: $86
	ld   l, b                                        ; $5614: $68
	sub  [hl]                                        ; $5615: $96
	ld   d, [hl]                                     ; $5616: $56
	adc  d                                           ; $5617: $8a
	add  a                                           ; $5618: $87
	xor  c                                           ; $5619: $a9
	sbc  c                                           ; $561a: $99
	add  a                                           ; $561b: $87
	sbc  d                                           ; $561c: $9a
	ld   h, [hl]                                     ; $561d: $66
	adc  b                                           ; $561e: $88
	adc  c                                           ; $561f: $89
	sbc  b                                           ; $5620: $98
	ld   h, a                                        ; $5621: $67
	adc  b                                           ; $5622: $88
	add  a                                           ; $5623: $87
	sub  a                                           ; $5624: $97
	adc  d                                           ; $5625: $8a
	add  a                                           ; $5626: $87
	ld   l, b                                        ; $5627: $68
	sub  [hl]                                        ; $5628: $96
	ld   h, a                                        ; $5629: $67
	adc  b                                           ; $562a: $88
	sub  [hl]                                        ; $562b: $96
	ld   a, d                                        ; $562c: $7a
	sbc  c                                           ; $562d: $99
	ld   h, a                                        ; $562e: $67
	sbc  c                                           ; $562f: $99
	add  [hl]                                        ; $5630: $86
	adc  c                                           ; $5631: $89
	add  a                                           ; $5632: $87
	ld   [hl], a                                     ; $5633: $77
	ld   a, b                                        ; $5634: $78
	jp   z, $8868                                    ; $5635: $ca $68 $88

	ld   [hl], a                                     ; $5638: $77
	ld   a, b                                        ; $5639: $78
	sbc  b                                           ; $563a: $98
	halt                                             ; $563b: $76
	adc  b                                           ; $563c: $88
	sbc  d                                           ; $563d: $9a
	ld   [hl], a                                     ; $563e: $77
	adc  c                                           ; $563f: $89
	add  [hl]                                        ; $5640: $86
	add  a                                           ; $5641: $87
	ld   l, c                                        ; $5642: $69
	ld   h, [hl]                                     ; $5643: $66
	sbc  c                                           ; $5644: $99
	add  l                                           ; $5645: $85
	ld   a, d                                        ; $5646: $7a
	ld   [hl], a                                     ; $5647: $77
	ld   l, b                                        ; $5648: $68
	cp   d                                           ; $5649: $ba
	halt                                             ; $564a: $76
	xor  c                                           ; $564b: $a9
	sub  [hl]                                        ; $564c: $96
	ld   l, b                                        ; $564d: $68
	ld   a, c                                        ; $564e: $79
	ld   d, a                                        ; $564f: $57
	sbc  b                                           ; $5650: $98

jr_0df_5651:
	add  [hl]                                        ; $5651: $86
	ld   a, c                                        ; $5652: $79
	sub  a                                           ; $5653: $97
	ld   a, e                                        ; $5654: $7b
	and  a                                           ; $5655: $a7
	ld   a, c                                        ; $5656: $79
	and  a                                           ; $5657: $a7
	ld   [hl], a                                     ; $5658: $77
	adc  c                                           ; $5659: $89
	ld   [hl], a                                     ; $565a: $77
	add  a                                           ; $565b: $87
	sbc  b                                           ; $565c: $98
	ld   h, [hl]                                     ; $565d: $66
	xor  e                                           ; $565e: $ab
	add  [hl]                                        ; $565f: $86
	ld   l, h                                        ; $5660: $6c
	or   l                                           ; $5661: $b5
	ld   a, d                                        ; $5662: $7a
	and  a                                           ; $5663: $a7
	ld   b, l                                        ; $5664: $45
	ld   c, c                                        ; $5665: $49
	or   [hl]                                        ; $5666: $b6
	jr   c, jr_0df_5651                              ; $5667: $38 $e8

	ld   c, b                                        ; $5669: $48
	bit  4, [hl]                                     ; $566a: $cb $66
	ld   a, e                                        ; $566c: $7b
	add  l                                           ; $566d: $85
	sbc  e                                           ; $566e: $9b
	rst  $10                                         ; $566f: $d7
	ld   e, b                                        ; $5670: $58
	xor  h                                           ; $5671: $ac
	ld   d, d                                        ; $5672: $52
	ld   l, c                                        ; $5673: $69
	or   e                                           ; $5674: $b3
	add  hl, de                                      ; $5675: $19
	cp   b                                           ; $5676: $b8
	ld   d, a                                        ; $5677: $57
	sbc  h                                           ; $5678: $9c
	cp   b                                           ; $5679: $b8
	adc  c                                           ; $567a: $89
	rst  ToBoot                                         ; $567b: $c7
	ld   d, a                                        ; $567c: $57
	cp   d                                           ; $567d: $ba
	ld   d, [hl]                                     ; $567e: $56
	cp   b                                           ; $567f: $b8
	ld   d, h                                        ; $5680: $54
	sbc  h                                           ; $5681: $9c
	ld   d, [hl]                                     ; $5682: $56
	cp   d                                           ; $5683: $ba
	ld   a, c                                        ; $5684: $79
	add  a                                           ; $5685: $87

Jump_0df_5686:
	xor  d                                           ; $5686: $aa
	ld   d, l                                        ; $5687: $55
	sbc  c                                           ; $5688: $99
	ld   h, [hl]                                     ; $5689: $66
	ld   e, d                                        ; $568a: $5a
	sub  h                                           ; $568b: $94
	ld   a, b                                        ; $568c: $78

Jump_0df_568d:
	and  a                                           ; $568d: $a7
	ld   h, a                                        ; $568e: $67
	ld   l, d                                        ; $568f: $6a
	ld   [hl], h                                     ; $5690: $74
	ld   a, c                                        ; $5691: $79
	and  l                                           ; $5692: $a5
	adc  e                                           ; $5693: $8b
	ld   a, c                                        ; $5694: $79
	sbc  b                                           ; $5695: $98
	ld   h, [hl]                                     ; $5696: $66
	or   [hl]                                        ; $5697: $b6
	ld   l, d                                        ; $5698: $6a
	sbc  b                                           ; $5699: $98
	ld   l, e                                        ; $569a: $6b
	cp   e                                           ; $569b: $bb
	and  a                                           ; $569c: $a7
	cp   e                                           ; $569d: $bb
	or   [hl]                                        ; $569e: $b6
	ld   e, e                                        ; $569f: $5b
	ld   [hl], l                                     ; $56a0: $75
	ld   d, l                                        ; $56a1: $55
	add  [hl]                                        ; $56a2: $86
	adc  b                                           ; $56a3: $88
	adc  e                                           ; $56a4: $8b

Call_0df_56a5:
	adc  e                                           ; $56a5: $8b
	halt                                             ; $56a6: $76
	ret  z                                           ; $56a7: $c8

	ld   e, b                                        ; $56a8: $58
	or   a                                           ; $56a9: $b7
	ld   e, c                                        ; $56aa: $59
	sub  h                                           ; $56ab: $94
	ld   l, b                                        ; $56ac: $68
	ld   [hl], h                                     ; $56ad: $74
	ld   a, c                                        ; $56ae: $79
	ld   d, h                                        ; $56af: $54
	adc  d                                           ; $56b0: $8a
	ld   h, l                                        ; $56b1: $65
	sbc  d                                           ; $56b2: $9a
	ld   h, [hl]                                     ; $56b3: $66
	sub  a                                           ; $56b4: $97
	ld   l, c                                        ; $56b5: $69
	halt                                             ; $56b6: $76
	ld   l, b                                        ; $56b7: $68
	sub  [hl]                                        ; $56b8: $96
	ld   l, c                                        ; $56b9: $69
	and  a                                           ; $56ba: $a7
	ld   l, e                                        ; $56bb: $6b
	or   a                                           ; $56bc: $b7
	xor  h                                           ; $56bd: $ac
	cp   b                                           ; $56be: $b8
	cp   h                                           ; $56bf: $bc
	xor  h                                           ; $56c0: $ac
	call z, $daad                                    ; $56c1: $cc $ad $da
	res  7, e                                        ; $56c4: $cb $bb
	xor  e                                           ; $56c6: $ab
	adc  e                                           ; $56c7: $8b
	sub  $79                                         ; $56c8: $d6 $79
	ld   [hl], l                                     ; $56ca: $75
	ld   e, b                                        ; $56cb: $58
	ld   sp, $2155                                   ; $56cc: $31 $55 $21
	ld   hl, $1111                                   ; $56cf: $21 $11 $11
	ld   de, $1111                                   ; $56d2: $11 $11 $11
	ld   [de], a                                     ; $56d5: $12
	ld   [hl], $8a                                   ; $56d6: $36 $8a
	cp   a                                           ; $56d8: $bf
	rst  $38                                         ; $56d9: $ff
	rst  $38                                         ; $56da: $ff
	rst  $38                                         ; $56db: $ff
	rst  $38                                         ; $56dc: $ff
	rst  $38                                         ; $56dd: $ff
	rst  $38                                         ; $56de: $ff
	rst  $38                                         ; $56df: $ff
	db   $ed                                         ; $56e0: $ed
	cp   d                                           ; $56e1: $ba
	add  [hl]                                        ; $56e2: $86
	ld   h, l                                        ; $56e3: $65
	ld   d, e                                        ; $56e4: $53
	ld   b, l                                        ; $56e5: $45
	dec  [hl]                                        ; $56e6: $35
	ld   d, d                                        ; $56e7: $52
	ld   b, l                                        ; $56e8: $45
	ld   de, $1111                                   ; $56e9: $11 $11 $11
	ld   de, $1111                                   ; $56ec: $11 $11 $11
	ld   de, $1311                                   ; $56ef: $11 $11 $13
	ld   e, c                                        ; $56f2: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56f3: $cf
	rst  $38                                         ; $56f4: $ff
	rst  $38                                         ; $56f5: $ff
	rst  $38                                         ; $56f6: $ff
	rst  $38                                         ; $56f7: $ff
	rst  $38                                         ; $56f8: $ff
	rst  $38                                         ; $56f9: $ff
	rst  $38                                         ; $56fa: $ff
	call c, Call_0df_54a5                            ; $56fb: $dc $a5 $54
	ld   hl, $0322                                   ; $56fe: $21 $22 $03
	halt                                             ; $5701: $76
	ld   c, b                                        ; $5702: $48
	add  l                                           ; $5703: $85
	add  a                                           ; $5704: $87
	ld   sp, $1111                                   ; $5705: $31 $11 $11
	ld   de, $1111                                   ; $5708: $11 $11 $11
	ld   de, $1511                                   ; $570b: $11 $11 $15
	sbc  h                                           ; $570e: $9c
	rst  $38                                         ; $570f: $ff
	rst  $38                                         ; $5710: $ff
	rst  $38                                         ; $5711: $ff
	rst  $38                                         ; $5712: $ff
	rst  $38                                         ; $5713: $ff
	rst  $38                                         ; $5714: $ff
	rst  $38                                         ; $5715: $ff
	ei                                               ; $5716: $fb
	add  l                                           ; $5717: $85
	ld   b, e                                        ; $5718: $43
	ld   de, $1211                                   ; $5719: $11 $11 $12
	ld   d, [hl]                                     ; $571c: $56
	ld   l, d                                        ; $571d: $6a
	xor  c                                           ; $571e: $a9
	sbc  b                                           ; $571f: $98
	ld   [hl], l                                     ; $5720: $75
	ld   sp, $1111                                   ; $5721: $31 $11 $11
	ld   de, $1111                                   ; $5724: $11 $11 $11
	ld   de, $4812                                   ; $5727: $11 $12 $48
	rst  $28                                         ; $572a: $ef
	rst  $38                                         ; $572b: $ff
	rst  $38                                         ; $572c: $ff
	rst  $38                                         ; $572d: $ff
	rst  $38                                         ; $572e: $ff
	rst  $38                                         ; $572f: $ff
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	cp   b                                           ; $5732: $b8
	ld   h, e                                        ; $5733: $63
	ld   de, $1211                                   ; $5734: $11 $11 $12
	ld   b, l                                        ; $5737: $45
	ld   h, [hl]                                     ; $5738: $66
	xor  c                                           ; $5739: $a9
	sbc  d                                           ; $573a: $9a
	ld   d, [hl]                                     ; $573b: $56
	add  d                                           ; $573c: $82
	ld   de, $1111                                   ; $573d: $11 $11 $11
	ld   de, $1111                                   ; $5740: $11 $11 $11
	ld   de, $df15                                   ; $5743: $11 $15 $df
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	rst  $38                                         ; $5748: $ff
	rst  $38                                         ; $5749: $ff
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	rst  $38                                         ; $574c: $ff
	jp   c, $1183                                    ; $574d: $da $83 $11

	ld   de, $4411                                   ; $5750: $11 $11 $44
	ld   d, a                                        ; $5753: $57
	sbc  d                                           ; $5754: $9a
	sbc  c                                           ; $5755: $99
	xor  b                                           ; $5756: $a8
	ld   h, h                                        ; $5757: $64
	ld   de, $1111                                   ; $5758: $11 $11 $11
	ld   de, $1111                                   ; $575b: $11 $11 $11
	ld   de, $9e15                                   ; $575e: $11 $15 $9e
	rst  $38                                         ; $5761: $ff
	rst  $38                                         ; $5762: $ff
	rst  $38                                         ; $5763: $ff
	rst  $38                                         ; $5764: $ff
	rst  $38                                         ; $5765: $ff
	rst  $38                                         ; $5766: $ff
	rst  $38                                         ; $5767: $ff
	add  sp, $43                                     ; $5768: $e8 $43
	ld   hl, $1311                                   ; $576a: $21 $11 $13
	dec  h                                           ; $576d: $25
	sbc  c                                           ; $576e: $99
	sbc  h                                           ; $576f: $9c
	jp   z, Jump_0df_62a9                            ; $5770: $ca $a9 $62

	ld   de, $1111                                   ; $5773: $11 $11 $11
	ld   de, $1111                                   ; $5776: $11 $11 $11
	ld   de, $ff18                                   ; $5779: $11 $18 $ff
	rst  $38                                         ; $577c: $ff
	rst  $38                                         ; $577d: $ff
	rst  $38                                         ; $577e: $ff
	rst  $38                                         ; $577f: $ff
	rst  $38                                         ; $5780: $ff
	rst  $38                                         ; $5781: $ff
	cp   $c9                                         ; $5782: $fe $c9
	ld   d, c                                        ; $5784: $51
	ld   de, $1411                                   ; $5785: $11 $11 $14
	ld   [hl], a                                     ; $5788: $77
	xor  h                                           ; $5789: $ac
	cp   h                                           ; $578a: $bc
	sbc  d                                           ; $578b: $9a
	sub  [hl]                                        ; $578c: $96
	ld   de, $1111                                   ; $578d: $11 $11 $11
	ld   de, $1111                                   ; $5790: $11 $11 $11
	ld   de, $8e12                                   ; $5793: $11 $12 $8e
	rst  $38                                         ; $5796: $ff
	rst  $38                                         ; $5797: $ff
	rst  $38                                         ; $5798: $ff
	rst  $38                                         ; $5799: $ff
	rst  $38                                         ; $579a: $ff
	rst  $38                                         ; $579b: $ff
	rst  $38                                         ; $579c: $ff
	db   $fc                                         ; $579d: $fc
	ld   d, e                                        ; $579e: $53
	ld   [hl-], a                                    ; $579f: $32
	ld   hl, $7826                                   ; $57a0: $21 $26 $78
	sbc  l                                           ; $57a3: $9d
	db   $ed                                         ; $57a4: $ed
	jp   z, $1198                                    ; $57a5: $ca $98 $11

	ld   de, $1111                                   ; $57a8: $11 $11 $11
	ld   de, $1111                                   ; $57ab: $11 $11 $11
	inc  d                                           ; $57ae: $14
	ld   l, [hl]                                     ; $57af: $6e
	rst  $38                                         ; $57b0: $ff
	rst  $38                                         ; $57b1: $ff
	rst  $38                                         ; $57b2: $ff
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	rst  $38                                         ; $57b5: $ff
	rst  $38                                         ; $57b6: $ff
	db   $ec                                         ; $57b7: $ec
	ld   h, [hl]                                     ; $57b8: $66
	ld   [hl-], a                                    ; $57b9: $32
	ld   b, c                                        ; $57ba: $41
	ld   b, l                                        ; $57bb: $45
	ld   a, d                                        ; $57bc: $7a
	sbc  h                                           ; $57bd: $9c
	db   $db                                         ; $57be: $db
	cp   b                                           ; $57bf: $b8
	add  [hl]                                        ; $57c0: $86
	ld   de, $1111                                   ; $57c1: $11 $11 $11
	ld   de, $1111                                   ; $57c4: $11 $11 $11
	ld   de, $bf16                                   ; $57c7: $11 $16 $bf
	rst  $38                                         ; $57ca: $ff
	rst  $38                                         ; $57cb: $ff
	rst  $38                                         ; $57cc: $ff
	rst  $38                                         ; $57cd: $ff
	rst  $38                                         ; $57ce: $ff
	rst  $38                                         ; $57cf: $ff
	rst  $38                                         ; $57d0: $ff
	ret  c                                           ; $57d1: $d8

	ld   c, b                                        ; $57d2: $48
	ld   b, c                                        ; $57d3: $41
	ld   b, l                                        ; $57d4: $45
	ld   [hl], l                                     ; $57d5: $75
	ld   l, l                                        ; $57d6: $6d
	jp   c, $d898                                    ; $57d7: $da $98 $d8

	ld   de, $1111                                   ; $57da: $11 $11 $11
	ld   de, $1111                                   ; $57dd: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $57e0: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57e3: $cf
	rst  $38                                         ; $57e4: $ff
	rst  $38                                         ; $57e5: $ff
	rst  $38                                         ; $57e6: $ff
	rst  $38                                         ; $57e7: $ff
	rst  $38                                         ; $57e8: $ff
	ei                                               ; $57e9: $fb
	sbc  e                                           ; $57ea: $9b
	or   l                                           ; $57eb: $b5
	dec  h                                           ; $57ec: $25
	ld   l, b                                        ; $57ed: $68
	halt                                             ; $57ee: $76
	adc  d                                           ; $57ef: $8a
	jp   c, Jump_0df_5545                            ; $57f0: $da $45 $55

	ld   de, $1111                                   ; $57f3: $11 $11 $11
	ld   de, $1111                                   ; $57f6: $11 $11 $11
	ld   de, $df15                                   ; $57f9: $11 $15 $df
	rst  $38                                         ; $57fc: $ff
	rst  $38                                         ; $57fd: $ff
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	rst  $38                                         ; $5801: $ff
	cp   $fc                                         ; $5802: $fe $fc
	adc  h                                           ; $5804: $8c
	xor  c                                           ; $5805: $a9
	ld   [hl], l                                     ; $5806: $75
	xor  c                                           ; $5807: $a9
	ld   a, c                                        ; $5808: $79
	ld   [hl], l                                     ; $5809: $75
	inc  sp                                          ; $580a: $33
	ld   b, c                                        ; $580b: $41
	ld   de, $1111                                   ; $580c: $11 $11 $11
	ld   de, $1111                                   ; $580f: $11 $11 $11
	ld   de, $fc3f                                   ; $5812: $11 $3f $fc
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	rst  $38                                         ; $5817: $ff
	rst  $38                                         ; $5818: $ff
	rst  $38                                         ; $5819: $ff
	rst  $38                                         ; $581a: $ff
	rst  $28                                         ; $581b: $ef
	adc  $b8                                         ; $581c: $ce $b8
	or   a                                           ; $581e: $b7
	ld   a, d                                        ; $581f: $7a
	ld   a, d                                        ; $5820: $7a
	ld   d, e                                        ; $5821: $53
	ld   d, c                                        ; $5822: $51
	ld   hl, $1111                                   ; $5823: $21 $11 $11
	ld   de, $1111                                   ; $5826: $11 $11 $11
	ld   de, $1512                                   ; $5829: $11 $12 $15
	rst  $28                                         ; $582c: $ef
	rst  $38                                         ; $582d: $ff
	rst  $38                                         ; $582e: $ff
	rst  $38                                         ; $582f: $ff
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	rst  $38                                         ; $5832: $ff
	ei                                               ; $5833: $fb
	cp   l                                           ; $5834: $bd
	ret  c                                           ; $5835: $d8

	ld   l, b                                        ; $5836: $68
	cp   h                                           ; $5837: $bc
	sub  [hl]                                        ; $5838: $96
	ld   d, l                                        ; $5839: $55
	add  c                                           ; $583a: $81
	ld   de, $1111                                   ; $583b: $11 $11 $11
	ld   de, $1111                                   ; $583e: $11 $11 $11
	ld   de, $4b11                                   ; $5841: $11 $11 $4b
	rst  $38                                         ; $5844: $ff
	rst  $38                                         ; $5845: $ff
	rst  $38                                         ; $5846: $ff
	rst  $38                                         ; $5847: $ff
	rst  $38                                         ; $5848: $ff
	rst  $38                                         ; $5849: $ff
	rst  $38                                         ; $584a: $ff
	rst  $38                                         ; $584b: $ff
	cp   $b9                                         ; $584c: $fe $b9
	sbc  e                                           ; $584e: $9b
	or   l                                           ; $584f: $b5
	ld   h, [hl]                                     ; $5850: $66
	ld   d, d                                        ; $5851: $52
	ld   de, $1111                                   ; $5852: $11 $11 $11
	ld   de, $1111                                   ; $5855: $11 $11 $11
	ld   de, $1111                                   ; $5858: $11 $11 $11
	rst  JumpTable                                         ; $585b: $df
	rst  $38                                         ; $585c: $ff
	rst  $38                                         ; $585d: $ff
	rst  $38                                         ; $585e: $ff
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	rst  $38                                         ; $5861: $ff
	rst  $38                                         ; $5862: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5863: $cf
	rst  $38                                         ; $5864: $ff
	add  sp, -$25                                    ; $5865: $e8 $db
	adc  c                                           ; $5867: $89
	inc  sp                                          ; $5868: $33
	ld   de, $1111                                   ; $5869: $11 $11 $11
	ld   de, $1111                                   ; $586c: $11 $11 $11
	ld   de, $6416                                   ; $586f: $11 $16 $64
	dec  e                                           ; $5872: $1d
	rst  $38                                         ; $5873: $ff

Jump_0df_5874:
	cp   $ff                                         ; $5874: $fe $ff
	rst  $38                                         ; $5876: $ff
	rst  $38                                         ; $5877: $ff
	rst  $38                                         ; $5878: $ff
	rst  $38                                         ; $5879: $ff
	db   $ed                                         ; $587a: $ed
	xor  a                                           ; $587b: $af
	ld   a, [$7975]                                  ; $587c: $fa $75 $79
	ld   d, e                                        ; $587f: $53
	ld   de, $1111                                   ; $5880: $11 $11 $11
	ld   de, $1111                                   ; $5883: $11 $11 $11
	ld   de, $2111                                   ; $5886: $11 $11 $21
	adc  a                                           ; $5889: $8f
	rst  $38                                         ; $588a: $ff
	rst  $38                                         ; $588b: $ff
	rst  $38                                         ; $588c: $ff
	rst  $38                                         ; $588d: $ff
	rst  $38                                         ; $588e: $ff
	rst  $28                                         ; $588f: $ef
	rst  $38                                         ; $5890: $ff
	ld   sp, hl                                      ; $5891: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5892: $cf
	rst  JumpTable                                         ; $5893: $df
	sub  l                                           ; $5894: $95
	ld   h, h                                        ; $5895: $64
	ld   [hl], h                                     ; $5896: $74
	ld   de, $1111                                   ; $5897: $11 $11 $11
	ld   de, $1111                                   ; $589a: $11 $11 $11
	ld   de, $9f11                                   ; $589d: $11 $11 $9f
	cp   $ff                                         ; $58a0: $fe $ff
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	rst  $38                                         ; $58a4: $ff
	rst  $38                                         ; $58a5: $ff
	rst  $38                                         ; $58a6: $ff
	rst  $38                                         ; $58a7: $ff
	rst  $38                                         ; $58a8: $ff
	bit  5, c                                        ; $58a9: $cb $69
	sub  l                                           ; $58ab: $95
	ld   b, c                                        ; $58ac: $41
	ld   de, $1111                                   ; $58ad: $11 $11 $11
	ld   de, $1111                                   ; $58b0: $11 $11 $11
	ld   de, $1721                                   ; $58b3: $11 $21 $17

Jump_0df_58b6:
jr_0df_58b6:
	xor  $df                                         ; $58b6: $ee $df
	rst  $38                                         ; $58b8: $ff
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	rst  $38                                         ; $58bd: $ff
	ei                                               ; $58be: $fb
	db   $db                                         ; $58bf: $db
	xor  c                                           ; $58c0: $a9
	ld   a, b                                        ; $58c1: $78
	ld   d, c                                        ; $58c2: $51
	ld   hl, $1121                                   ; $58c3: $21 $21 $11
	ld   de, $1111                                   ; $58c6: $11 $11 $11
	ld   de, $5a11                                   ; $58c9: $11 $11 $5a
	jp   z, $ffff                                    ; $58cc: $ca $ff $ff

	db   $fc                                         ; $58cf: $fc
	rst  $38                                         ; $58d0: $ff
	rst  $38                                         ; $58d1: $ff
	xor  $ff                                         ; $58d2: $ee $ff
	rst  $38                                         ; $58d4: $ff
	call $d8ac                                       ; $58d5: $cd $ac $d8
	ld   h, c                                        ; $58d8: $61
	ld   de, $1111                                   ; $58d9: $11 $11 $11
	ld   de, $1111                                   ; $58dc: $11 $11 $11
	ld   de, $6116                                   ; $58df: $11 $16 $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58e2: $cf
	rst  $38                                         ; $58e3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58e4: $cf
	rst  $38                                         ; $58e5: $ff
	rst  $38                                         ; $58e6: $ff
	rst  $28                                         ; $58e7: $ef
	rst  $38                                         ; $58e8: $ff
	db   $fd                                         ; $58e9: $fd
	db   $fd                                         ; $58ea: $fd
	call z, $c6ac                                    ; $58eb: $cc $ac $c6
	ld   sp, $3311                                   ; $58ee: $31 $11 $33
	ld   de, $1211                                   ; $58f1: $11 $11 $12
	ld   de, $4511                                   ; $58f4: $11 $11 $45
	ld   l, h                                        ; $58f7: $6c
	rst  $20                                         ; $58f8: $e7
	ld   a, e                                        ; $58f9: $7b
	rst  $38                                         ; $58fa: $ff
	ld   a, [$ffef]                                  ; $58fb: $fa $ef $ff
	rst  $38                                         ; $58fe: $ff
	cp   d                                           ; $58ff: $ba
	rst  JumpTable                                         ; $5900: $df
	jp   c, Jump_0df_7499                            ; $5901: $da $99 $74

	dec  h                                           ; $5904: $25
	ld   sp, $5212                                   ; $5905: $31 $12 $52
	ld   de, $1111                                   ; $5908: $11 $11 $11
	ld   d, [hl]                                     ; $590b: $56
	jr   c, jr_0df_58b6                              ; $590c: $38 $a8

	ld   a, d                                        ; $590e: $7a
	rst  $38                                         ; $590f: $ff
	cp   $ff                                         ; $5910: $fe $ff
	cp   a                                           ; $5912: $bf
	ld   a, [$ffcd]                                  ; $5913: $fa $cd $ff
	xor  h                                           ; $5916: $ac
	ld   h, l                                        ; $5917: $65
	add  e                                           ; $5918: $83
	add  [hl]                                        ; $5919: $86
	ld   b, l                                        ; $591a: $45
	dec  h                                           ; $591b: $25
	ld   h, c                                        ; $591c: $61
	ld   hl, $1214                                   ; $591d: $21 $14 $12
	ld   [hl-], a                                    ; $5920: $32
	ld   b, d                                        ; $5921: $42
	daa                                              ; $5922: $27
	adc  c                                           ; $5923: $89
	xor  e                                           ; $5924: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5925: $cf
	ei                                               ; $5926: $fb
	cp   a                                           ; $5927: $bf
	rst  $28                                         ; $5928: $ef
	db   $fd                                         ; $5929: $fd
	cp   d                                           ; $592a: $ba
	sbc  e                                           ; $592b: $9b
	jp   z, Jump_0df_6996                            ; $592c: $ca $96 $69

	cp   d                                           ; $592f: $ba
	ld   [hl], e                                     ; $5930: $73
	ld   de, $5211                                   ; $5931: $11 $11 $52
	ld   de, $8813                                   ; $5934: $11 $13 $88
	ld   d, l                                        ; $5937: $55
	ld   a, c                                        ; $5938: $79
	cp   b                                           ; $5939: $b8
	cp   d                                           ; $593a: $ba
	xor  e                                           ; $593b: $ab
	sbc  a                                           ; $593c: $9f
	rst  $38                                         ; $593d: $ff
	db   $fc                                         ; $593e: $fc
	rst  $38                                         ; $593f: $ff
	call c, $ca77                                    ; $5940: $dc $77 $ca
	jp   c, $3813                                    ; $5943: $da $13 $38

	call nc, $1111                                   ; $5946: $d4 $11 $11
	inc  hl                                          ; $5949: $23
	ld   sp, $5624                                   ; $594a: $31 $24 $56
	ld   h, a                                        ; $594d: $67
	sbc  h                                           ; $594e: $9c
	xor  d                                           ; $594f: $aa
	sbc  $fc                                         ; $5950: $de $fc
	call c, $efbf                                    ; $5952: $dc $bf $ef
	ei                                               ; $5955: $fb
	sub  h                                           ; $5956: $94
	ld   l, d                                        ; $5957: $6a
	cp   [hl]                                        ; $5958: $be
	xor  b                                           ; $5959: $a8
	ld   d, e                                        ; $595a: $53
	ld   b, d                                        ; $595b: $42
	inc  sp                                          ; $595c: $33
	ld   de, $3312                                   ; $595d: $11 $12 $33
	ld   b, c                                        ; $5960: $41
	ld   [de], a                                     ; $5961: $12
	ld   a, l                                        ; $5962: $7d
	cp   d                                           ; $5963: $ba
	and  d                                           ; $5964: $a2
	ld   a, a                                        ; $5965: $7f
	rst  $38                                         ; $5966: $ff
	jp   z, $fffd                                    ; $5967: $ca $fd $ff

	call z, $eb5a                                    ; $596a: $cc $5a $eb
	rst  ToBoot                                         ; $596d: $c7
	ld   b, h                                        ; $596e: $44
	dec  [hl]                                        ; $596f: $35
	ld   b, e                                        ; $5970: $43
	ld   [hl-], a                                    ; $5971: $32
	ld   de, $3633                                   ; $5972: $11 $33 $36
	inc  sp                                          ; $5975: $33
	ld   de, $cf67                                   ; $5976: $11 $67 $cf
	xor  l                                           ; $5979: $ad
	cp   d                                           ; $597a: $ba
	db   $ed                                         ; $597b: $ed
	rst  $38                                         ; $597c: $ff
	cp   h                                           ; $597d: $bc
	cp   a                                           ; $597e: $bf
	db   $fd                                         ; $597f: $fd
	xor  e                                           ; $5980: $ab
	sub  h                                           ; $5981: $94
	ld   b, [hl]                                     ; $5982: $46
	xor  c                                           ; $5983: $a9
	ld   b, h                                        ; $5984: $44
	inc  de                                          ; $5985: $13
	ld   b, e                                        ; $5986: $43
	ld   [hl], l                                     ; $5987: $75
	ld   [hl], $68                                   ; $5988: $36 $68
	ld   h, d                                        ; $598a: $62
	ld   hl, $a97c                                   ; $598b: $21 $7c $a9
	sbc  d                                           ; $598e: $9a
	set  3, l                                        ; $598f: $cb $dd
	cp   h                                           ; $5991: $bc
	jp   z, $bbdb                                    ; $5992: $ca $db $bb

	xor  e                                           ; $5995: $ab
	xor  b                                           ; $5996: $a8
	ld   [hl], h                                     ; $5997: $74
	ld   b, [hl]                                     ; $5998: $46
	ld   [hl], a                                     ; $5999: $77
	ld   d, h                                        ; $599a: $54
	ld   sp, $4834                                   ; $599b: $31 $34 $48
	ld   d, e                                        ; $599e: $53
	ld   h, e                                        ; $599f: $63
	adc  l                                           ; $59a0: $8d
	cp   e                                           ; $59a1: $bb
	ld   d, h                                        ; $59a2: $54
	sbc  b                                           ; $59a3: $98
	rst  $28                                         ; $59a4: $ef
	call z, wNumProcessedInterruptScriptBytes                                    ; $59a5: $cc $87 $cb
	jp   c, Jump_0df_7947                            ; $59a8: $da $47 $79

	jp   c, $3696                                    ; $59ab: $da $96 $36

	ld   h, h                                        ; $59ae: $64
	ld   [hl], a                                     ; $59af: $77
	ld   [hl], a                                     ; $59b0: $77
	inc  d                                           ; $59b1: $14
	adc  c                                           ; $59b2: $89
	rst  ToBoot                                         ; $59b3: $c7
	ld   d, a                                        ; $59b4: $57
	ld   b, l                                        ; $59b5: $45
	sbc  c                                           ; $59b6: $99
	cp   e                                           ; $59b7: $bb
	sbc  d                                           ; $59b8: $9a
	ld   h, a                                        ; $59b9: $67
	xor  d                                           ; $59ba: $aa
	db   $ec                                         ; $59bb: $ec
	sub  a                                           ; $59bc: $97
	ld   b, a                                        ; $59bd: $47
	sbc  c                                           ; $59be: $99
	sub  l                                           ; $59bf: $95
	ld   l, b                                        ; $59c0: $68
	adc  d                                           ; $59c1: $8a
	adc  b                                           ; $59c2: $88
	sub  h                                           ; $59c3: $94
	ld   d, [hl]                                     ; $59c4: $56
	ld   l, e                                        ; $59c5: $6b
	add  [hl]                                        ; $59c6: $86
	ld   d, h                                        ; $59c7: $54
	adc  d                                           ; $59c8: $8a
	cp   e                                           ; $59c9: $bb
	add  [hl]                                        ; $59ca: $86
	ld   h, a                                        ; $59cb: $67
	sbc  c                                           ; $59cc: $99
	sub  a                                           ; $59cd: $97
	ld   [hl], a                                     ; $59ce: $77
	ld   a, d                                        ; $59cf: $7a
	xor  d                                           ; $59d0: $aa
	xor  c                                           ; $59d1: $a9
	cp   d                                           ; $59d2: $ba
	adc  b                                           ; $59d3: $88
	ld   a, c                                        ; $59d4: $79
	sub  a                                           ; $59d5: $97
	ld   d, d                                        ; $59d6: $52
	scf                                              ; $59d7: $37
	xor  h                                           ; $59d8: $ac
	and  l                                           ; $59d9: $a5
	ld   b, l                                        ; $59da: $45
	ld   a, c                                        ; $59db: $79
	sbc  e                                           ; $59dc: $9b
	xor  b                                           ; $59dd: $a8
	add  [hl]                                        ; $59de: $86
	ld   a, d                                        ; $59df: $7a
	xor  e                                           ; $59e0: $ab
	add  a                                           ; $59e1: $87
	ld   h, [hl]                                     ; $59e2: $66
	ld   a, c                                        ; $59e3: $79
	adc  b                                           ; $59e4: $88
	sbc  b                                           ; $59e5: $98
	sbc  e                                           ; $59e6: $9b
	adc  c                                           ; $59e7: $89
	halt                                             ; $59e8: $76
	ld   [hl], h                                     ; $59e9: $74
	ld   h, a                                        ; $59ea: $67
	ld   a, d                                        ; $59eb: $7a
	sbc  b                                           ; $59ec: $98
	halt                                             ; $59ed: $76
	adc  c                                           ; $59ee: $89
	sbc  c                                           ; $59ef: $99
	ld   a, b                                        ; $59f0: $78
	sbc  b                                           ; $59f1: $98
	sbc  d                                           ; $59f2: $9a
	sbc  c                                           ; $59f3: $99
	adc  b                                           ; $59f4: $88
	ld   [hl], a                                     ; $59f5: $77
	halt                                             ; $59f6: $76
	ld   a, b                                        ; $59f7: $78
	add  a                                           ; $59f8: $87
	adc  c                                           ; $59f9: $89
	add  a                                           ; $59fa: $87
	halt                                             ; $59fb: $76
	ld   h, [hl]                                     ; $59fc: $66
	adc  d                                           ; $59fd: $8a
	xor  c                                           ; $59fe: $a9
	add  a                                           ; $59ff: $87
	ld   h, a                                        ; $5a00: $67
	ld   a, c                                        ; $5a01: $79
	xor  b                                           ; $5a02: $a8
	add  a                                           ; $5a03: $87
	ld   a, b                                        ; $5a04: $78
	ld   a, b                                        ; $5a05: $78
	xor  c                                           ; $5a06: $a9
	sbc  d                                           ; $5a07: $9a
	sbc  c                                           ; $5a08: $99
	add  a                                           ; $5a09: $87
	ld   h, l                                        ; $5a0a: $65
	ld   l, c                                        ; $5a0b: $69
	sbc  c                                           ; $5a0c: $99
	sbc  b                                           ; $5a0d: $98
	add  a                                           ; $5a0e: $87
	ld   d, l                                        ; $5a0f: $55
	ld   a, b                                        ; $5a10: $78
	sbc  b                                           ; $5a11: $98
	ld   [hl], a                                     ; $5a12: $77
	ld   a, b                                        ; $5a13: $78
	sbc  b                                           ; $5a14: $98
	add  a                                           ; $5a15: $87
	ld   a, b                                        ; $5a16: $78
	xor  c                                           ; $5a17: $a9
	sbc  c                                           ; $5a18: $99
	adc  b                                           ; $5a19: $88
	ld   a, b                                        ; $5a1a: $78
	adc  c                                           ; $5a1b: $89
	add  a                                           ; $5a1c: $87
	ld   a, b                                        ; $5a1d: $78
	adc  d                                           ; $5a1e: $8a
	adc  b                                           ; $5a1f: $88
	halt                                             ; $5a20: $76
	ld   h, [hl]                                     ; $5a21: $66
	ld   a, c                                        ; $5a22: $79
	sbc  d                                           ; $5a23: $9a
	adc  c                                           ; $5a24: $89
	sbc  b                                           ; $5a25: $98
	adc  b                                           ; $5a26: $88
	adc  b                                           ; $5a27: $88
	ld   [hl], a                                     ; $5a28: $77
	ld   a, b                                        ; $5a29: $78
	adc  c                                           ; $5a2a: $89
	sbc  b                                           ; $5a2b: $98
	ld   a, b                                        ; $5a2c: $78
	sbc  c                                           ; $5a2d: $99
	sbc  c                                           ; $5a2e: $99
	sub  a                                           ; $5a2f: $97
	ld   [hl], a                                     ; $5a30: $77
	ld   a, c                                        ; $5a31: $79
	adc  c                                           ; $5a32: $89
	sbc  b                                           ; $5a33: $98
	sbc  c                                           ; $5a34: $99
	adc  b                                           ; $5a35: $88
	ld   [hl], a                                     ; $5a36: $77
	adc  c                                           ; $5a37: $89
	sub  a                                           ; $5a38: $97
	ld   h, [hl]                                     ; $5a39: $66
	ld   [hl], a                                     ; $5a3a: $77
	adc  c                                           ; $5a3b: $89
	adc  c                                           ; $5a3c: $89
	adc  b                                           ; $5a3d: $88
	sbc  c                                           ; $5a3e: $99
	sbc  b                                           ; $5a3f: $98
	adc  c                                           ; $5a40: $89
	sbc  c                                           ; $5a41: $99
	adc  c                                           ; $5a42: $89
	sbc  c                                           ; $5a43: $99
	sbc  b                                           ; $5a44: $98
	ld   [hl], a                                     ; $5a45: $77
	ld   a, b                                        ; $5a46: $78
	sbc  b                                           ; $5a47: $98
	add  a                                           ; $5a48: $87
	ld   [hl], a                                     ; $5a49: $77
	ld   [hl], a                                     ; $5a4a: $77
	ld   [hl], a                                     ; $5a4b: $77
	adc  b                                           ; $5a4c: $88
	xor  c                                           ; $5a4d: $a9
	sbc  b                                           ; $5a4e: $98
	sbc  c                                           ; $5a4f: $99
	sbc  b                                           ; $5a50: $98
	add  a                                           ; $5a51: $87
	ld   [hl], a                                     ; $5a52: $77
	adc  c                                           ; $5a53: $89
	adc  b                                           ; $5a54: $88
	adc  c                                           ; $5a55: $89
	sbc  d                                           ; $5a56: $9a
	xor  c                                           ; $5a57: $a9
	halt                                             ; $5a58: $76
	ld   [hl], a                                     ; $5a59: $77
	adc  b                                           ; $5a5a: $88
	ld   [hl], a                                     ; $5a5b: $77
	ld   [hl], a                                     ; $5a5c: $77
	adc  b                                           ; $5a5d: $88
	adc  b                                           ; $5a5e: $88
	sbc  c                                           ; $5a5f: $99
	sbc  c                                           ; $5a60: $99
	ld   [hl], a                                     ; $5a61: $77
	ld   [hl], a                                     ; $5a62: $77
	adc  b                                           ; $5a63: $88
	sbc  b                                           ; $5a64: $98
	adc  b                                           ; $5a65: $88
	sbc  c                                           ; $5a66: $99
	sbc  c                                           ; $5a67: $99
	adc  b                                           ; $5a68: $88
	adc  c                                           ; $5a69: $89
	sbc  c                                           ; $5a6a: $99
	add  a                                           ; $5a6b: $87
	ld   a, b                                        ; $5a6c: $78
	sbc  b                                           ; $5a6d: $98
	adc  c                                           ; $5a6e: $89
	adc  b                                           ; $5a6f: $88
	adc  b                                           ; $5a70: $88
	adc  b                                           ; $5a71: $88
	add  a                                           ; $5a72: $87
	ld   a, b                                        ; $5a73: $78
	sbc  b                                           ; $5a74: $98
	adc  b                                           ; $5a75: $88
	sbc  c                                           ; $5a76: $99
	adc  b                                           ; $5a77: $88
	ld   a, b                                        ; $5a78: $78
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	adc  c                                           ; $5a7b: $89
	sbc  b                                           ; $5a7c: $98
	adc  b                                           ; $5a7d: $88
	adc  b                                           ; $5a7e: $88
	adc  b                                           ; $5a7f: $88
	adc  b                                           ; $5a80: $88
	adc  b                                           ; $5a81: $88
	adc  b                                           ; $5a82: $88
	adc  b                                           ; $5a83: $88
	adc  b                                           ; $5a84: $88
	sbc  b                                           ; $5a85: $98
	sbc  b                                           ; $5a86: $98
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	add  a                                           ; $5a8f: $87
	ld   [hl], a                                     ; $5a90: $77
	adc  b                                           ; $5a91: $88
	adc  b                                           ; $5a92: $88
	adc  b                                           ; $5a93: $88
	adc  b                                           ; $5a94: $88
	adc  b                                           ; $5a95: $88
	adc  b                                           ; $5a96: $88
	adc  b                                           ; $5a97: $88
	adc  b                                           ; $5a98: $88
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	adc  b                                           ; $5a9b: $88
	adc  b                                           ; $5a9c: $88
	adc  b                                           ; $5a9d: $88
	adc  b                                           ; $5a9e: $88
	adc  b                                           ; $5a9f: $88
	adc  b                                           ; $5aa0: $88
	adc  b                                           ; $5aa1: $88
	ld   [hl], a                                     ; $5aa2: $77
	adc  b                                           ; $5aa3: $88
	adc  b                                           ; $5aa4: $88
	adc  b                                           ; $5aa5: $88
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	adc  b                                           ; $5aa9: $88
	adc  b                                           ; $5aaa: $88

Jump_0df_5aab:
	adc  b                                           ; $5aab: $88
	adc  b                                           ; $5aac: $88
	adc  b                                           ; $5aad: $88
	adc  b                                           ; $5aae: $88
	adc  b                                           ; $5aaf: $88
	adc  b                                           ; $5ab0: $88
	adc  b                                           ; $5ab1: $88
	adc  b                                           ; $5ab2: $88
	adc  b                                           ; $5ab3: $88
	adc  b                                           ; $5ab4: $88
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	adc  b                                           ; $5ab7: $88
	adc  b                                           ; $5ab8: $88
	adc  b                                           ; $5ab9: $88
	adc  b                                           ; $5aba: $88
	adc  b                                           ; $5abb: $88
	adc  b                                           ; $5abc: $88
	adc  b                                           ; $5abd: $88
	adc  b                                           ; $5abe: $88
	adc  b                                           ; $5abf: $88
	adc  b                                           ; $5ac0: $88
	adc  b                                           ; $5ac1: $88
	adc  b                                           ; $5ac2: $88
	adc  b                                           ; $5ac3: $88
	adc  b                                           ; $5ac4: $88
	ld   de, $1111                                   ; $5ac5: $11 $11 $11
	ld   de, $1111                                   ; $5ac8: $11 $11 $11
	ld   de, $1111                                   ; $5acb: $11 $11 $11
	ld   de, $1111                                   ; $5ace: $11 $11 $11
	ld   de, $1111                                   ; $5ad1: $11 $11 $11
	ld   de, $1111                                   ; $5ad4: $11 $11 $11
	ld   de, $1111                                   ; $5ad7: $11 $11 $11
	ld   de, $1111                                   ; $5ada: $11 $11 $11
	ld   de, $1111                                   ; $5add: $11 $11 $11
	ld   de, $1111                                   ; $5ae0: $11 $11 $11
	ld   de, $1111                                   ; $5ae3: $11 $11 $11
	ld   de, $1111                                   ; $5ae6: $11 $11 $11
	ld   de, $1111                                   ; $5ae9: $11 $11 $11
	ld   de, $1111                                   ; $5aec: $11 $11 $11
	ld   de, $1111                                   ; $5aef: $11 $11 $11
	ld   de, $1111                                   ; $5af2: $11 $11 $11
	ld   de, $1111                                   ; $5af5: $11 $11 $11
	ld   de, $1111                                   ; $5af8: $11 $11 $11
	ld   de, $1111                                   ; $5afb: $11 $11 $11
	nop                                              ; $5afe: $00
	ld   c, b                                        ; $5aff: $48
	ld   de, $1111                                   ; $5b00: $11 $11 $11
	ld   de, $1111                                   ; $5b03: $11 $11 $11
	ld   de, $1111                                   ; $5b06: $11 $11 $11
	ld   de, $5413                                   ; $5b09: $11 $13 $54
	ld   d, h                                        ; $5b0c: $54
	ld   d, h                                        ; $5b0d: $54
	ld   b, c                                        ; $5b0e: $41
	rra                                              ; $5b0f: $1f
	rst  $38                                         ; $5b10: $ff
	pop  af                                          ; $5b11: $f1
	ld   de, $1411                                   ; $5b12: $11 $11 $14
	pop  bc                                          ; $5b15: $c1
	ld   de, $dd1c                                   ; $5b16: $11 $1c $dd
	call z, $c1dd                                    ; $5b19: $cc $dd $c1
	ld   de, $1111                                   ; $5b1c: $11 $11 $11
	ld   de, $1111                                   ; $5b1f: $11 $11 $11
	ld   de, $1111                                   ; $5b22: $11 $11 $11
	ld   de, $1111                                   ; $5b25: $11 $11 $11
	ld   de, $5411                                   ; $5b28: $11 $11 $54
	ld   b, h                                        ; $5b2b: $44
	or   h                                           ; $5b2c: $b4
	ld   de, $5454                                   ; $5b2d: $11 $54 $54
	ld   h, a                                        ; $5b30: $67
	ld   [hl], d                                     ; $5b31: $72
	ld   de, $1111                                   ; $5b32: $11 $11 $11
	ld   de, $1112                                   ; $5b35: $11 $12 $11
	ld   [de], a                                     ; $5b38: $12
	ld   de, $1111                                   ; $5b39: $11 $11 $11
	ld   h, [hl]                                     ; $5b3c: $66
	halt                                             ; $5b3d: $76
	and  h                                           ; $5b3e: $a4
	ld   de, $8888                                   ; $5b3f: $11 $88 $88
	adc  b                                           ; $5b42: $88
	adc  b                                           ; $5b43: $88
	adc  b                                           ; $5b44: $88
	adc  b                                           ; $5b45: $88
	adc  b                                           ; $5b46: $88
	adc  b                                           ; $5b47: $88
	adc  b                                           ; $5b48: $88
	adc  b                                           ; $5b49: $88
	adc  b                                           ; $5b4a: $88
	adc  b                                           ; $5b4b: $88
	adc  b                                           ; $5b4c: $88
	adc  b                                           ; $5b4d: $88
	adc  b                                           ; $5b4e: $88
	adc  b                                           ; $5b4f: $88
	adc  b                                           ; $5b50: $88
	adc  b                                           ; $5b51: $88
	adc  b                                           ; $5b52: $88
	adc  b                                           ; $5b53: $88
	adc  b                                           ; $5b54: $88
	adc  b                                           ; $5b55: $88
	adc  b                                           ; $5b56: $88
	adc  b                                           ; $5b57: $88
	adc  b                                           ; $5b58: $88
	adc  b                                           ; $5b59: $88
	adc  b                                           ; $5b5a: $88
	adc  b                                           ; $5b5b: $88
	adc  b                                           ; $5b5c: $88
	adc  b                                           ; $5b5d: $88
	adc  b                                           ; $5b5e: $88
	adc  b                                           ; $5b5f: $88
	adc  b                                           ; $5b60: $88
	adc  b                                           ; $5b61: $88
	adc  b                                           ; $5b62: $88
	adc  b                                           ; $5b63: $88
	adc  b                                           ; $5b64: $88
	adc  b                                           ; $5b65: $88
	adc  b                                           ; $5b66: $88
	adc  b                                           ; $5b67: $88
	adc  c                                           ; $5b68: $89
	sbc  c                                           ; $5b69: $99
	sbc  c                                           ; $5b6a: $99
	sbc  c                                           ; $5b6b: $99
	sbc  b                                           ; $5b6c: $98
	sbc  c                                           ; $5b6d: $99
	adc  c                                           ; $5b6e: $89
	sbc  c                                           ; $5b6f: $99
	sbc  c                                           ; $5b70: $99
	sbc  c                                           ; $5b71: $99
	adc  c                                           ; $5b72: $89
	adc  b                                           ; $5b73: $88
	adc  b                                           ; $5b74: $88
	adc  b                                           ; $5b75: $88
	ld   a, b                                        ; $5b76: $78
	add  a                                           ; $5b77: $87
	ld   [hl], a                                     ; $5b78: $77
	ld   [hl], a                                     ; $5b79: $77
	ld   [hl], a                                     ; $5b7a: $77
	ld   [hl], a                                     ; $5b7b: $77
	ld   [hl], a                                     ; $5b7c: $77
	ld   [hl], a                                     ; $5b7d: $77
	ld   [hl], a                                     ; $5b7e: $77
	ld   [hl], a                                     ; $5b7f: $77
	ld   [hl], a                                     ; $5b80: $77
	ld   [hl], a                                     ; $5b81: $77
	ld   [hl], a                                     ; $5b82: $77
	ld   [hl], a                                     ; $5b83: $77
	ld   [hl], a                                     ; $5b84: $77
	ld   [hl], a                                     ; $5b85: $77
	ld   [hl], a                                     ; $5b86: $77
	ld   [hl], a                                     ; $5b87: $77
	adc  b                                           ; $5b88: $88
	adc  c                                           ; $5b89: $89
	adc  c                                           ; $5b8a: $89
	adc  c                                           ; $5b8b: $89
	sbc  d                                           ; $5b8c: $9a
	xor  d                                           ; $5b8d: $aa
	xor  d                                           ; $5b8e: $aa
	xor  e                                           ; $5b8f: $ab
	cp   e                                           ; $5b90: $bb
	xor  e                                           ; $5b91: $ab
	cp   e                                           ; $5b92: $bb
	xor  d                                           ; $5b93: $aa
	xor  c                                           ; $5b94: $a9
	xor  c                                           ; $5b95: $a9
	adc  b                                           ; $5b96: $88
	sbc  b                                           ; $5b97: $98
	add  a                                           ; $5b98: $87
	ld   [hl], a                                     ; $5b99: $77
	ld   h, [hl]                                     ; $5b9a: $66
	ld   h, l                                        ; $5b9b: $65
	ld   d, l                                        ; $5b9c: $55
	ld   b, h                                        ; $5b9d: $44
	inc  sp                                          ; $5b9e: $33
	ld   [hl-], a                                    ; $5b9f: $32
	ld   [de], a                                     ; $5ba0: $12
	ld   hl, $2212                                   ; $5ba1: $21 $12 $22
	ld   b, h                                        ; $5ba4: $44
	ld   l, b                                        ; $5ba5: $68
	adc  d                                           ; $5ba6: $8a
	cp   h                                           ; $5ba7: $bc
	db   $dd                                         ; $5ba8: $dd
	xor  $ef                                         ; $5ba9: $ee $ef
	xor  $ee                                         ; $5bab: $ee $ee
	db   $dd                                         ; $5bad: $dd
	call c, $abbc                                    ; $5bae: $dc $bc $ab
	xor  d                                           ; $5bb1: $aa
	xor  c                                           ; $5bb2: $a9
	sbc  c                                           ; $5bb3: $99
	adc  d                                           ; $5bb4: $8a
	sbc  c                                           ; $5bb5: $99
	xor  c                                           ; $5bb6: $a9
	adc  b                                           ; $5bb7: $88
	adc  c                                           ; $5bb8: $89
	ld   [hl], a                                     ; $5bb9: $77
	ld   [hl], a                                     ; $5bba: $77
	ld   h, [hl]                                     ; $5bbb: $66
	ld   h, l                                        ; $5bbc: $65
	ld   d, h                                        ; $5bbd: $54
	inc  sp                                          ; $5bbe: $33
	ld   hl, $1101                                   ; $5bbf: $21 $01 $11
	ld   de, $1211                                   ; $5bc2: $11 $11 $12
	ld   d, l                                        ; $5bc5: $55
	ld   l, c                                        ; $5bc6: $69
	sbc  d                                           ; $5bc7: $9a
	set  3, l                                        ; $5bc8: $cb $dd
	adc  $ed                                         ; $5bca: $ce $ed
	db   $dd                                         ; $5bcc: $dd
	sbc  $ed                                         ; $5bcd: $de $ed
	call c, $bccc                                    ; $5bcf: $dc $cc $bc
	cp   d                                           ; $5bd2: $ba
	cp   d                                           ; $5bd3: $ba
	xor  d                                           ; $5bd4: $aa
	xor  c                                           ; $5bd5: $a9
	sbc  c                                           ; $5bd6: $99
	sbc  c                                           ; $5bd7: $99
	adc  b                                           ; $5bd8: $88
	add  a                                           ; $5bd9: $87
	ld   [hl], a                                     ; $5bda: $77
	ld   h, [hl]                                     ; $5bdb: $66
	ld   h, l                                        ; $5bdc: $65
	ld   d, h                                        ; $5bdd: $54
	ld   b, e                                        ; $5bde: $43
	ld   hl, $1111                                   ; $5bdf: $21 $11 $11
	ld   de, $1111                                   ; $5be2: $11 $11 $11
	dec  [hl]                                        ; $5be5: $35
	ld   c, b                                        ; $5be6: $48
	sbc  d                                           ; $5be7: $9a
	set  3, [hl]                                     ; $5be8: $cb $de
	sbc  $ff                                         ; $5bea: $de $ff
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	cp   $ee                                         ; $5bee: $fe $ee
	db   $dd                                         ; $5bf0: $dd
	set  1, d                                        ; $5bf1: $cb $ca
	xor  d                                           ; $5bf3: $aa
	adc  c                                           ; $5bf4: $89
	adc  b                                           ; $5bf5: $88
	sbc  b                                           ; $5bf6: $98
	adc  b                                           ; $5bf7: $88
	ld   [hl], a                                     ; $5bf8: $77
	ld   [hl], a                                     ; $5bf9: $77
	ld   [hl], a                                     ; $5bfa: $77
	halt                                             ; $5bfb: $76
	ld   h, [hl]                                     ; $5bfc: $66
	ld   b, l                                        ; $5bfd: $45
	ld   b, d                                        ; $5bfe: $42
	ld   hl, $1111                                   ; $5bff: $21 $11 $11
	ld   de, $1111                                   ; $5c02: $11 $11 $11
	dec  [hl]                                        ; $5c05: $35
	ld   e, b                                        ; $5c06: $58
	xor  e                                           ; $5c07: $ab
	call c, $ffef                                    ; $5c08: $dc $ef $ff
	rst  $38                                         ; $5c0b: $ff
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	rst  $28                                         ; $5c0f: $ef
	db   $dd                                         ; $5c10: $dd
	jp   z, $9aca                                    ; $5c11: $ca $ca $9a

	adc  c                                           ; $5c14: $89
	add  a                                           ; $5c15: $87
	sbc  b                                           ; $5c16: $98
	ld   [hl], a                                     ; $5c17: $77
	ld   [hl], a                                     ; $5c18: $77
	halt                                             ; $5c19: $76
	halt                                             ; $5c1a: $76
	ld   h, l                                        ; $5c1b: $65
	ld   d, l                                        ; $5c1c: $55
	ld   b, h                                        ; $5c1d: $44
	ld   hl, $1111                                   ; $5c1e: $21 $11 $11
	ld   de, $1111                                   ; $5c21: $11 $11 $11
	ld   de, $7a45                                   ; $5c24: $11 $45 $7a
	cp   h                                           ; $5c27: $bc
	sbc  $ff                                         ; $5c28: $de $ff
	rst  $38                                         ; $5c2a: $ff
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	rst  $38                                         ; $5c2d: $ff
	rst  $38                                         ; $5c2e: $ff
	rst  $28                                         ; $5c2f: $ef
	call c, $b9cb                                    ; $5c30: $dc $cb $b9
	sbc  c                                           ; $5c33: $99
	add  a                                           ; $5c34: $87
	ld   [hl], a                                     ; $5c35: $77
	halt                                             ; $5c36: $76
	ld   [hl], a                                     ; $5c37: $77
	halt                                             ; $5c38: $76
	ld   h, a                                        ; $5c39: $67
	ld   h, [hl]                                     ; $5c3a: $66
	ld   h, l                                        ; $5c3b: $65
	ld   d, h                                        ; $5c3c: $54
	inc  sp                                          ; $5c3d: $33
	ld   hl, $1111                                   ; $5c3e: $21 $11 $11
	ld   de, $1111                                   ; $5c41: $11 $11 $11
	inc  d                                           ; $5c44: $14
	ld   d, [hl]                                     ; $5c45: $56
	sbc  d                                           ; $5c46: $9a
	call $ffff                                       ; $5c47: $cd $ff $ff
	rst  $38                                         ; $5c4a: $ff
	rst  $38                                         ; $5c4b: $ff
	rst  $38                                         ; $5c4c: $ff
	rst  $38                                         ; $5c4d: $ff
	rst  $38                                         ; $5c4e: $ff
	cp   $db                                         ; $5c4f: $fe $db
	cp   d                                           ; $5c51: $ba
	sbc  b                                           ; $5c52: $98
	add  a                                           ; $5c53: $87
	ld   [hl], a                                     ; $5c54: $77
	ld   h, a                                        ; $5c55: $67
	ld   h, [hl]                                     ; $5c56: $66
	ld   h, [hl]                                     ; $5c57: $66
	ld   h, [hl]                                     ; $5c58: $66
	ld   h, [hl]                                     ; $5c59: $66
	ld   h, l                                        ; $5c5a: $65
	ld   d, l                                        ; $5c5b: $55
	inc  sp                                          ; $5c5c: $33
	ld   hl, $1111                                   ; $5c5d: $21 $11 $11
	ld   de, $1111                                   ; $5c60: $11 $11 $11
	ld   [de], a                                     ; $5c63: $12
	ld   d, [hl]                                     ; $5c64: $56
	adc  e                                           ; $5c65: $8b
	call $ffff                                       ; $5c66: $cd $ff $ff
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	rst  $38                                         ; $5c6b: $ff
	rst  $38                                         ; $5c6c: $ff
	rst  $38                                         ; $5c6d: $ff
	db   $fd                                         ; $5c6e: $fd
	call c, $a8b9                                    ; $5c6f: $dc $b9 $a8
	ld   [hl], a                                     ; $5c72: $77
	ld   h, [hl]                                     ; $5c73: $66
	ld   h, l                                        ; $5c74: $65
	ld   h, [hl]                                     ; $5c75: $66
	ld   d, [hl]                                     ; $5c76: $56
	halt                                             ; $5c77: $76
	ld   h, a                                        ; $5c78: $67
	ld   d, l                                        ; $5c79: $55
	ld   h, h                                        ; $5c7a: $64
	ld   b, d                                        ; $5c7b: $42
	ld   hl, $1111                                   ; $5c7c: $21 $11 $11
	ld   de, $1111                                   ; $5c7f: $11 $11 $11
	ld   [de], a                                     ; $5c82: $12
	ld   b, a                                        ; $5c83: $47
	adc  d                                           ; $5c84: $8a
	sbc  $ff                                         ; $5c85: $de $ff
	rst  $38                                         ; $5c87: $ff
	rst  $38                                         ; $5c88: $ff
	rst  $38                                         ; $5c89: $ff
	rst  $38                                         ; $5c8a: $ff
	rst  $38                                         ; $5c8b: $ff
	cp   $fe                                         ; $5c8c: $fe $fe
	cp   h                                           ; $5c8e: $bc
	sbc  d                                           ; $5c8f: $9a
	add  [hl]                                        ; $5c90: $86
	ld   [hl], a                                     ; $5c91: $77
	ld   d, a                                        ; $5c92: $57
	ld   h, l                                        ; $5c93: $65
	halt                                             ; $5c94: $76
	ld   h, a                                        ; $5c95: $67
	ld   h, a                                        ; $5c96: $67
	halt                                             ; $5c97: $76
	ld   h, l                                        ; $5c98: $65
	ld   b, h                                        ; $5c99: $44
	ld   [hl-], a                                    ; $5c9a: $32
	ld   de, $1111                                   ; $5c9b: $11 $11 $11
	ld   de, $1111                                   ; $5c9e: $11 $11 $11
	ld   [de], a                                     ; $5ca1: $12
	ld   d, a                                        ; $5ca2: $57
	sbc  l                                           ; $5ca3: $9d
	rst  $28                                         ; $5ca4: $ef
	rst  $38                                         ; $5ca5: $ff
	rst  $38                                         ; $5ca6: $ff
	rst  $38                                         ; $5ca7: $ff
	rst  $38                                         ; $5ca8: $ff
	rst  $38                                         ; $5ca9: $ff
	rst  $38                                         ; $5caa: $ff
	rst  $38                                         ; $5cab: $ff
	db   $ec                                         ; $5cac: $ec
	ret                                              ; $5cad: $c9


	ld   [hl], a                                     ; $5cae: $77
	ld   [hl], l                                     ; $5caf: $75
	ld   d, l                                        ; $5cb0: $55
	ld   d, l                                        ; $5cb1: $55
	ld   d, l                                        ; $5cb2: $55
	ld   h, a                                        ; $5cb3: $67
	ld   h, a                                        ; $5cb4: $67
	ld   [hl], a                                     ; $5cb5: $77
	ld   [hl], l                                     ; $5cb6: $75
	ld   h, [hl]                                     ; $5cb7: $66
	ld   b, e                                        ; $5cb8: $43
	ld   hl, $1111                                   ; $5cb9: $21 $11 $11
	ld   de, $1111                                   ; $5cbc: $11 $11 $11
	ld   de, $7924                                   ; $5cbf: $11 $24 $79
	cp   a                                           ; $5cc2: $bf
	rst  $38                                         ; $5cc3: $ff
	rst  $38                                         ; $5cc4: $ff
	rst  $38                                         ; $5cc5: $ff
	rst  $38                                         ; $5cc6: $ff
	rst  $38                                         ; $5cc7: $ff
	rst  $38                                         ; $5cc8: $ff
	rst  $38                                         ; $5cc9: $ff
	db   $ec                                         ; $5cca: $ec
	ret                                              ; $5ccb: $c9


	add  a                                           ; $5ccc: $87
	ld   d, [hl]                                     ; $5ccd: $56
	ld   d, l                                        ; $5cce: $55
	ld   d, l                                        ; $5ccf: $55
	ld   h, [hl]                                     ; $5cd0: $66
	ld   h, a                                        ; $5cd1: $67
	sbc  b                                           ; $5cd2: $98
	adc  d                                           ; $5cd3: $8a
	sub  a                                           ; $5cd4: $97
	halt                                             ; $5cd5: $76
	ld   d, l                                        ; $5cd6: $55
	ld   sp, $1111                                   ; $5cd7: $31 $11 $11
	ld   de, $1111                                   ; $5cda: $11 $11 $11
	ld   de, $3811                                   ; $5cdd: $11 $11 $38
	xor  e                                           ; $5ce0: $ab
	rst  $28                                         ; $5ce1: $ef
	rst  $38                                         ; $5ce2: $ff
	rst  $38                                         ; $5ce3: $ff
	rst  $38                                         ; $5ce4: $ff
	rst  $38                                         ; $5ce5: $ff
	rst  $38                                         ; $5ce6: $ff
	rst  $38                                         ; $5ce7: $ff
	db   $fc                                         ; $5ce8: $fc
	sbc  c                                           ; $5ce9: $99
	halt                                             ; $5cea: $76
	ld   b, h                                        ; $5ceb: $44
	ld   b, h                                        ; $5cec: $44
	ld   d, l                                        ; $5ced: $55
	ld   h, a                                        ; $5cee: $67
	adc  c                                           ; $5cef: $89
	xor  d                                           ; $5cf0: $aa
	cp   h                                           ; $5cf1: $bc
	xor  c                                           ; $5cf2: $a9
	or   a                                           ; $5cf3: $b7
	ld   d, [hl]                                     ; $5cf4: $56
	ld   [hl+], a                                    ; $5cf5: $22
	ld   de, $1111                                   ; $5cf6: $11 $11 $11
	ld   de, $1111                                   ; $5cf9: $11 $11 $11
	ld   de, $8d32                                   ; $5cfc: $11 $32 $8d
	rst  $28                                         ; $5cff: $ef
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	rst  $38                                         ; $5d02: $ff
	rst  $38                                         ; $5d03: $ff
	rst  $38                                         ; $5d04: $ff
	rst  $38                                         ; $5d05: $ff
	call c, Call_0df_66a5                            ; $5d06: $dc $a5 $66
	inc  hl                                          ; $5d09: $23
	ld   d, h                                        ; $5d0a: $54
	ld   h, [hl]                                     ; $5d0b: $66
	ld   a, h                                        ; $5d0c: $7c
	xor  d                                           ; $5d0d: $aa
	db   $ec                                         ; $5d0e: $ec
	adc  $bb                                         ; $5d0f: $ce $bb
	sub  l                                           ; $5d11: $95
	ld   b, e                                        ; $5d12: $43
	ld   de, $1111                                   ; $5d13: $11 $11 $11
	ld   de, $1111                                   ; $5d16: $11 $11 $11
	ld   de, $6914                                   ; $5d19: $11 $14 $69
	rst  $38                                         ; $5d1c: $ff
	rst  $38                                         ; $5d1d: $ff
	rst  $38                                         ; $5d1e: $ff
	rst  $38                                         ; $5d1f: $ff
	rst  $38                                         ; $5d20: $ff
	rst  $38                                         ; $5d21: $ff
	rst  $38                                         ; $5d22: $ff
	xor  c                                           ; $5d23: $a9
	ld   h, e                                        ; $5d24: $63
	ld   de, $1211                                   ; $5d25: $11 $11 $12
	ld   a, c                                        ; $5d28: $79
	xor  h                                           ; $5d29: $ac
	rst  $28                                         ; $5d2a: $ef
	rst  $38                                         ; $5d2b: $ff
	rst  $38                                         ; $5d2c: $ff
	db   $ed                                         ; $5d2d: $ed
	sub  l                                           ; $5d2e: $95
	ld   de, $1111                                   ; $5d2f: $11 $11 $11
	ld   de, $1111                                   ; $5d32: $11 $11 $11
	ld   de, $1811                                   ; $5d35: $11 $11 $18
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	rst  $38                                         ; $5d3e: $ff
	reti                                             ; $5d3f: $d9


	sub  l                                           ; $5d40: $95
	ld   [de], a                                     ; $5d41: $12
	ld   sp, $7a35                                   ; $5d42: $31 $35 $7a
	cp   a                                           ; $5d45: $bf
	rst  $38                                         ; $5d46: $ff
	rst  $38                                         ; $5d47: $ff
	rst  $38                                         ; $5d48: $ff
	db   $fc                                         ; $5d49: $fc
	and  [hl]                                        ; $5d4a: $a6
	ld   sp, $1111                                   ; $5d4b: $31 $11 $11
	ld   de, $1111                                   ; $5d4e: $11 $11 $11
	ld   de, $2111                                   ; $5d51: $11 $11 $21
	daa                                              ; $5d54: $27
	rst  $28                                         ; $5d55: $ef
	rst  JumpTable                                         ; $5d56: $df
	rst  $38                                         ; $5d57: $ff
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	rst  $38                                         ; $5d5a: $ff
	rst  $38                                         ; $5d5b: $ff
	call z, Call_0df_67ba                            ; $5d5c: $cc $ba $67
	add  a                                           ; $5d5f: $87
	ld   h, a                                        ; $5d60: $67
	xor  h                                           ; $5d61: $ac
	rst  $38                                         ; $5d62: $ff
	rst  $38                                         ; $5d63: $ff
	rst  $38                                         ; $5d64: $ff
	rst  $38                                         ; $5d65: $ff
	res  2, a                                        ; $5d66: $cb $97
	ld   b, d                                        ; $5d68: $42
	ld   de, $1111                                   ; $5d69: $11 $11 $11
	ld   de, $1111                                   ; $5d6c: $11 $11 $11
	ld   de, $2111                                   ; $5d6f: $11 $11 $21
	ld   c, l                                        ; $5d72: $4d
	cp   $ff                                         ; $5d73: $fe $ff
	rst  $38                                         ; $5d75: $ff
	rst  $38                                         ; $5d76: $ff
	rst  $38                                         ; $5d77: $ff
	rst  $38                                         ; $5d78: $ff
	rst  $38                                         ; $5d79: $ff
	and  a                                           ; $5d7a: $a7
	xor  b                                           ; $5d7b: $a8
	sbc  d                                           ; $5d7c: $9a
	ld   h, a                                        ; $5d7d: $67
	xor  e                                           ; $5d7e: $ab
	rst  $38                                         ; $5d7f: $ff
	rst  $38                                         ; $5d80: $ff
	rst  $38                                         ; $5d81: $ff
	rst  $38                                         ; $5d82: $ff
	db   $ed                                         ; $5d83: $ed
	add  [hl]                                        ; $5d84: $86
	ld   d, e                                        ; $5d85: $53
	ld   de, $1111                                   ; $5d86: $11 $11 $11
	ld   de, $1111                                   ; $5d89: $11 $11 $11
	ld   de, $1111                                   ; $5d8c: $11 $11 $11
	ld   [de], a                                     ; $5d8f: $12
	ld   a, [hl-]                                    ; $5d90: $3a
	db   $ed                                         ; $5d91: $ed
	rst  $38                                         ; $5d92: $ff
	rst  $38                                         ; $5d93: $ff
	rst  $38                                         ; $5d94: $ff
	rst  $38                                         ; $5d95: $ff
	rst  $38                                         ; $5d96: $ff
	rst  $38                                         ; $5d97: $ff
	or   a                                           ; $5d98: $b7
	adc  b                                           ; $5d99: $88
	adc  d                                           ; $5d9a: $8a
	sub  a                                           ; $5d9b: $97
	adc  d                                           ; $5d9c: $8a
	rst  $28                                         ; $5d9d: $ef
	rst  $38                                         ; $5d9e: $ff
	rst  $38                                         ; $5d9f: $ff
	rst  $38                                         ; $5da0: $ff
	db   $fc                                         ; $5da1: $fc
	add  h                                           ; $5da2: $84
	ld   [hl+], a                                    ; $5da3: $22
	ld   de, $1111                                   ; $5da4: $11 $11 $11
	ld   de, $1111                                   ; $5da7: $11 $11 $11
	ld   de, $1111                                   ; $5daa: $11 $11 $11
	ld   de, $cf26                                   ; $5dad: $11 $26 $cf
	rst  $28                                         ; $5db0: $ef
	rst  $38                                         ; $5db1: $ff
	rst  $38                                         ; $5db2: $ff
	rst  $38                                         ; $5db3: $ff
	rst  $38                                         ; $5db4: $ff
	rst  $38                                         ; $5db5: $ff
	ret                                              ; $5db6: $c9


	halt                                             ; $5db7: $76
	adc  b                                           ; $5db8: $88
	sbc  c                                           ; $5db9: $99
	xor  h                                           ; $5dba: $ac
	rst  $38                                         ; $5dbb: $ff
	rst  $38                                         ; $5dbc: $ff
	rst  $38                                         ; $5dbd: $ff
	rst  $38                                         ; $5dbe: $ff
	db   $eb                                         ; $5dbf: $eb
	ld   [hl], l                                     ; $5dc0: $75
	ld   hl, $1111                                   ; $5dc1: $21 $11 $11
	ld   de, $1111                                   ; $5dc4: $11 $11 $11
	ld   de, $1111                                   ; $5dc7: $11 $11 $11
	ld   de, $1311                                   ; $5dca: $11 $11 $13
	xor  a                                           ; $5dcd: $af
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	rst  $38                                         ; $5dd0: $ff
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	db   $ec                                         ; $5dd3: $ec
	xor  c                                           ; $5dd4: $a9
	ld   h, [hl]                                     ; $5dd5: $66
	ld   [hl], a                                     ; $5dd6: $77
	adc  e                                           ; $5dd7: $8b
	adc  $ff                                         ; $5dd8: $ce $ff
	rst  $38                                         ; $5dda: $ff
	rst  $38                                         ; $5ddb: $ff
	cp   $c8                                         ; $5ddc: $fe $c8
	ld   d, e                                        ; $5dde: $53
	ld   de, $1111                                   ; $5ddf: $11 $11 $11
	ld   de, $1111                                   ; $5de2: $11 $11 $11
	ld   de, $1111                                   ; $5de5: $11 $11 $11
	ld   de, $1111                                   ; $5de8: $11 $11 $11
	ld   l, e                                        ; $5deb: $6b
	rst  $38                                         ; $5dec: $ff
	rst  $38                                         ; $5ded: $ff
	rst  $38                                         ; $5dee: $ff
	rst  $38                                         ; $5def: $ff
	rst  $38                                         ; $5df0: $ff
	db   $ec                                         ; $5df1: $ec
	and  [hl]                                        ; $5df2: $a6
	ld   [hl], a                                     ; $5df3: $77
	ld   l, c                                        ; $5df4: $69
	sbc  d                                           ; $5df5: $9a
	rst  JumpTable                                         ; $5df6: $df
	rst  $38                                         ; $5df7: $ff
	rst  $38                                         ; $5df8: $ff
	rst  $38                                         ; $5df9: $ff
	cp   $b8                                         ; $5dfa: $fe $b8
	ld   d, d                                        ; $5dfc: $52
	ld   bc, $1111                                   ; $5dfd: $01 $11 $11
	ld   de, $1111                                   ; $5e00: $11 $11 $11
	ld   de, $1111                                   ; $5e03: $11 $11 $11
	ld   de, $1111                                   ; $5e06: $11 $11 $11
	rla                                              ; $5e09: $17
	rst  $28                                         ; $5e0a: $ef
	rst  $38                                         ; $5e0b: $ff
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	cp   $a5                                         ; $5e0f: $fe $a5
	ld   b, [hl]                                     ; $5e11: $46
	adc  e                                           ; $5e12: $8b
	sbc  $ed                                         ; $5e13: $de $ed
	rst  $28                                         ; $5e15: $ef
	rst  $38                                         ; $5e16: $ff
	rst  $38                                         ; $5e17: $ff
	ei                                               ; $5e18: $fb
	ld   [hl], l                                     ; $5e19: $75
	ld   d, h                                        ; $5e1a: $54
	ld   [hl-], a                                    ; $5e1b: $32
	ld   de, $1211                                   ; $5e1c: $11 $11 $12
	inc  hl                                          ; $5e1f: $23
	ld   de, $1111                                   ; $5e20: $11 $11 $11
	ld   de, $1111                                   ; $5e23: $11 $11 $11
	ld   de, $af13                                   ; $5e26: $11 $13 $af
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	rst  $38                                         ; $5e2b: $ff
	rst  $38                                         ; $5e2c: $ff
	call c, Call_0df_77b8                            ; $5e2d: $dc $b8 $77
	ld   d, a                                        ; $5e30: $57
	xor  e                                           ; $5e31: $ab
	rst  $38                                         ; $5e32: $ff
	rst  $38                                         ; $5e33: $ff
	rst  $38                                         ; $5e34: $ff
	rst  $38                                         ; $5e35: $ff
	cp   $b7                                         ; $5e36: $fe $b7
	ld   b, d                                        ; $5e38: $42
	ld   de, $2222                                   ; $5e39: $11 $22 $22
	ld   de, $2111                                   ; $5e3c: $11 $11 $21
	ld   de, $1111                                   ; $5e3f: $11 $11 $11
	ld   de, $1111                                   ; $5e42: $11 $11 $11
	ld   [de], a                                     ; $5e45: $12
	sbc  a                                           ; $5e46: $9f
	rst  $38                                         ; $5e47: $ff
	rst  $38                                         ; $5e48: $ff
	rst  $38                                         ; $5e49: $ff
	rst  $38                                         ; $5e4a: $ff
	cp   $cb                                         ; $5e4b: $fe $cb
	add  [hl]                                        ; $5e4d: $86
	ld   e, b                                        ; $5e4e: $58
	cp   [hl]                                        ; $5e4f: $be
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	rst  $38                                         ; $5e52: $ff
	rst  $38                                         ; $5e53: $ff
	rst  $38                                         ; $5e54: $ff
	and  [hl]                                        ; $5e55: $a6
	ld   b, d                                        ; $5e56: $42
	ld   [de], a                                     ; $5e57: $12
	inc  sp                                          ; $5e58: $33
	ld   [hl-], a                                    ; $5e59: $32
	ld   [de], a                                     ; $5e5a: $12
	ld   de, $1111                                   ; $5e5b: $11 $11 $11
	ld   de, $1111                                   ; $5e5e: $11 $11 $11
	ld   de, $1111                                   ; $5e61: $11 $11 $11
	adc  a                                           ; $5e64: $8f
	rst  $38                                         ; $5e65: $ff
	rst  $38                                         ; $5e66: $ff
	rst  $38                                         ; $5e67: $ff
	rst  $38                                         ; $5e68: $ff
	set  1, e                                        ; $5e69: $cb $cb
	adc  c                                           ; $5e6b: $89
	sbc  b                                           ; $5e6c: $98
	xor  e                                           ; $5e6d: $ab
	rst  $38                                         ; $5e6e: $ff
	rst  $38                                         ; $5e6f: $ff
	rst  $38                                         ; $5e70: $ff
	rst  $38                                         ; $5e71: $ff
	rst  $38                                         ; $5e72: $ff
	ret  c                                           ; $5e73: $d8

	ld   h, d                                        ; $5e74: $62
	ld   de, $4412                                   ; $5e75: $11 $12 $44
	ld   sp, $1111                                   ; $5e78: $31 $11 $11
	ld   de, $1111                                   ; $5e7b: $11 $11 $11
	ld   de, $1111                                   ; $5e7e: $11 $11 $11
	inc  de                                          ; $5e81: $13
	ld   a, d                                        ; $5e82: $7a
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	rst  $38                                         ; $5e86: $ff
	set  1, e                                        ; $5e87: $cb $cb
	call c, $aacb                                    ; $5e89: $dc $cb $aa
	cp   l                                           ; $5e8c: $bd
	rst  $38                                         ; $5e8d: $ff
	rst  $38                                         ; $5e8e: $ff
	rst  $38                                         ; $5e8f: $ff
	db   $fd                                         ; $5e90: $fd
	xor  c                                           ; $5e91: $a9
	ld   h, e                                        ; $5e92: $63
	ld   sp, $1211                                   ; $5e93: $31 $11 $12
	ld   [hl-], a                                    ; $5e96: $32
	ld   de, $1111                                   ; $5e97: $11 $11 $11
	ld   de, $1111                                   ; $5e9a: $11 $11 $11
	ld   de, $3611                                   ; $5e9d: $11 $11 $36
	cp   [hl]                                        ; $5ea0: $be
	rst  $38                                         ; $5ea1: $ff
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	set  3, h                                        ; $5ea5: $cb $dc
	adc  $bb                                         ; $5ea7: $ce $bb
	cp   e                                           ; $5ea9: $bb
	rst  JumpTable                                         ; $5eaa: $df
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	rst  $38                                         ; $5ead: $ff
	cp   d                                           ; $5eae: $ba
	sub  [hl]                                        ; $5eaf: $96
	ld   d, h                                        ; $5eb0: $54
	ld   [hl-], a                                    ; $5eb1: $32
	ld   de, $1111                                   ; $5eb2: $11 $11 $11
	ld   de, $1111                                   ; $5eb5: $11 $11 $11
	ld   de, $1111                                   ; $5eb8: $11 $11 $11
	ld   de, $5a11                                   ; $5ebb: $11 $11 $5a
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	db   $ed                                         ; $5ec2: $ed
	call $dafe                                       ; $5ec3: $cd $fe $da
	adc  b                                           ; $5ec6: $88
	sbc  d                                           ; $5ec7: $9a
	rst  $38                                         ; $5ec8: $ff
	rst  $38                                         ; $5ec9: $ff
	rst  $38                                         ; $5eca: $ff
	db   $fc                                         ; $5ecb: $fc
	sbc  b                                           ; $5ecc: $98
	ld   d, h                                        ; $5ecd: $54
	ld   sp, $1111                                   ; $5ece: $31 $11 $11
	ld   de, $1111                                   ; $5ed1: $11 $11 $11
	ld   de, $1111                                   ; $5ed4: $11 $11 $11
	ld   de, $1111                                   ; $5ed7: $11 $11 $11
	ld   l, e                                        ; $5eda: $6b
	rst  $38                                         ; $5edb: $ff
	rst  $38                                         ; $5edc: $ff
	rst  $38                                         ; $5edd: $ff
	rst  $38                                         ; $5ede: $ff
	xor  $ed                                         ; $5edf: $ee $ed
	db   $ed                                         ; $5ee1: $ed
	cp   c                                           ; $5ee2: $b9
	halt                                             ; $5ee3: $76
	adc  d                                           ; $5ee4: $8a
	rst  $38                                         ; $5ee5: $ff
	rst  $38                                         ; $5ee6: $ff
	rst  $38                                         ; $5ee7: $ff
	db   $fc                                         ; $5ee8: $fc
	sbc  b                                           ; $5ee9: $98
	ld   h, h                                        ; $5eea: $64
	ld   sp, $1111                                   ; $5eeb: $31 $11 $11
	ld   de, $1111                                   ; $5eee: $11 $11 $11
	ld   de, $1111                                   ; $5ef1: $11 $11 $11
	ld   de, $1111                                   ; $5ef4: $11 $11 $11
	ld   a, l                                        ; $5ef7: $7d
	rst  $38                                         ; $5ef8: $ff
	rst  $38                                         ; $5ef9: $ff
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	call z, $ffef                                    ; $5efc: $cc $ef $ff
	or   a                                           ; $5eff: $b7
	ld   h, h                                        ; $5f00: $64
	ld   a, h                                        ; $5f01: $7c
	rst  $38                                         ; $5f02: $ff
	rst  $38                                         ; $5f03: $ff
	rst  $38                                         ; $5f04: $ff
	jp   z, $4274                                    ; $5f05: $ca $74 $42

	ld   de, $1111                                   ; $5f08: $11 $11 $11
	ld   de, $1111                                   ; $5f0b: $11 $11 $11
	ld   de, $1111                                   ; $5f0e: $11 $11 $11
	ld   de, $2711                                   ; $5f11: $11 $11 $27
	rst  JumpTable                                         ; $5f14: $df
	rst  $38                                         ; $5f15: $ff
	rst  $38                                         ; $5f16: $ff
	rst  $38                                         ; $5f17: $ff
	rst  $38                                         ; $5f18: $ff
	rst  $38                                         ; $5f19: $ff
	rst  $38                                         ; $5f1a: $ff
	add  sp, $74                                     ; $5f1b: $e8 $74
	scf                                              ; $5f1d: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f1e: $cf
	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	ld   [$3374], a                                  ; $5f21: $ea $74 $33
	ld   de, $1111                                   ; $5f24: $11 $11 $11
	ld   de, $1111                                   ; $5f27: $11 $11 $11
	ld   de, $1111                                   ; $5f2a: $11 $11 $11
	ld   de, $5912                                   ; $5f2d: $11 $12 $59
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	rst  $38                                         ; $5f35: $ff
	rst  $38                                         ; $5f36: $ff
	ei                                               ; $5f37: $fb
	ld   [hl], a                                     ; $5f38: $77
	ld   [hl], a                                     ; $5f39: $77
	rst  JumpTable                                         ; $5f3a: $df
	rst  $38                                         ; $5f3b: $ff
	rst  $38                                         ; $5f3c: $ff
	add  sp, $64                                     ; $5f3d: $e8 $64
	ld   de, $1111                                   ; $5f3f: $11 $11 $11
	ld   de, $1111                                   ; $5f42: $11 $11 $11
	ld   de, $1111                                   ; $5f45: $11 $11 $11
	ld   de, $3411                                   ; $5f48: $11 $11 $34
	ld   a, a                                        ; $5f4b: $7f
	rst  $38                                         ; $5f4c: $ff
	rst  $38                                         ; $5f4d: $ff
	rst  $38                                         ; $5f4e: $ff
	rst  $38                                         ; $5f4f: $ff
	cp   $ff                                         ; $5f50: $fe $ff
	rst  $38                                         ; $5f52: $ff
	ret                                              ; $5f53: $c9


	halt                                             ; $5f54: $76
	ld   a, h                                        ; $5f55: $7c
	rst  $38                                         ; $5f56: $ff
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	ret  z                                           ; $5f59: $c8

	ld   b, c                                        ; $5f5a: $41
	ld   de, $1111                                   ; $5f5b: $11 $11 $11
	ld   de, $1111                                   ; $5f5e: $11 $11 $11
	ld   de, $1111                                   ; $5f61: $11 $11 $11
	ld   de, $5d11                                   ; $5f64: $11 $11 $5d
	rst  $38                                         ; $5f67: $ff
	rst  $38                                         ; $5f68: $ff
	rst  $38                                         ; $5f69: $ff
	rst  $38                                         ; $5f6a: $ff
	rst  $38                                         ; $5f6b: $ff
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	reti                                             ; $5f6e: $d9


	ld   d, e                                        ; $5f6f: $53
	add  hl, sp                                      ; $5f70: $39
	rst  JumpTable                                         ; $5f71: $df
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	rst  ToBoot                                         ; $5f74: $c7
	ld   b, c                                        ; $5f75: $41
	ld   de, $1111                                   ; $5f76: $11 $11 $11
	ld   de, $1111                                   ; $5f79: $11 $11 $11
	ld   de, $1111                                   ; $5f7c: $11 $11 $11
	ld   de, $1911                                   ; $5f7f: $11 $11 $19
	rst  $38                                         ; $5f82: $ff
	rst  $38                                         ; $5f83: $ff
	rst  $38                                         ; $5f84: $ff
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	ei                                               ; $5f89: $fb
	ld   [hl], h                                     ; $5f8a: $74
	ld   c, b                                        ; $5f8b: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f8c: $cf
	rst  $38                                         ; $5f8d: $ff
	rst  $38                                         ; $5f8e: $ff
	jp   z, $2163                                    ; $5f8f: $ca $63 $21

	ld   de, $1111                                   ; $5f92: $11 $11 $11
	ld   de, $1111                                   ; $5f95: $11 $11 $11
	ld   de, $1111                                   ; $5f98: $11 $11 $11
	ld   de, $ff38                                   ; $5f9b: $11 $38 $ff
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	rst  $38                                         ; $5fa3: $ff
	cp   $64                                         ; $5fa4: $fe $64
	ld   h, a                                        ; $5fa6: $67
	rst  $28                                         ; $5fa7: $ef
	rst  $38                                         ; $5fa8: $ff
	rst  $38                                         ; $5fa9: $ff
	sub  $13                                         ; $5faa: $d6 $13
	ld   de, $1111                                   ; $5fac: $11 $11 $11
	ld   de, $1111                                   ; $5faf: $11 $11 $11
	ld   de, $1121                                   ; $5fb2: $11 $21 $11
	ld   de, $6f11                                   ; $5fb5: $11 $11 $6f
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	rst  $38                                         ; $5fbc: $ff
	rst  $38                                         ; $5fbd: $ff
	rst  $38                                         ; $5fbe: $ff
	rst  $30                                         ; $5fbf: $f7
	ld   b, [hl]                                     ; $5fc0: $46
	ld   l, e                                        ; $5fc1: $6b
	rst  $38                                         ; $5fc2: $ff
	rst  $38                                         ; $5fc3: $ff
	db   $fc                                         ; $5fc4: $fc
	and  h                                           ; $5fc5: $a4
	inc  sp                                          ; $5fc6: $33
	ld   [de], a                                     ; $5fc7: $12
	ld   bc, $1111                                   ; $5fc8: $01 $11 $11
	ld   de, $1211                                   ; $5fcb: $11 $11 $12
	ld   hl, $1111                                   ; $5fce: $21 $11 $11
	ld   [de], a                                     ; $5fd1: $12
	xor  a                                           ; $5fd2: $af
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	rst  $38                                         ; $5fd5: $ff
	rst  $38                                         ; $5fd6: $ff
	rst  $38                                         ; $5fd7: $ff
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	ret  z                                           ; $5fda: $c8

	sbc  c                                           ; $5fdb: $99
	xor  a                                           ; $5fdc: $af
	rst  $38                                         ; $5fdd: $ff
	cp   $cb                                         ; $5fde: $fe $cb
	ld   [hl], l                                     ; $5fe0: $75
	ld   b, c                                        ; $5fe1: $41
	ld   de, $1111                                   ; $5fe2: $11 $11 $11
	ld   de, $1111                                   ; $5fe5: $11 $11 $11
	ld   de, $1111                                   ; $5fe8: $11 $11 $11
	ld   de, $df26                                   ; $5feb: $11 $26 $df
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	rst  $38                                         ; $5ff0: $ff
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	rst  $38                                         ; $5ff3: $ff
	rst  $38                                         ; $5ff4: $ff
	cp   l                                           ; $5ff5: $bd
	xor  c                                           ; $5ff6: $a9
	db   $fd                                         ; $5ff7: $fd
	rst  JumpTable                                         ; $5ff8: $df
	jp   z, Jump_0df_58b6                            ; $5ff9: $ca $b6 $58

	ld   b, h                                        ; $5ffc: $44

jr_0df_5ffd:
	ld   b, c                                        ; $5ffd: $41
	ld   de, $1111                                   ; $5ffe: $11 $11 $11
	ld   de, $1111                                   ; $6001: $11 $11 $11
	ld   de, $1111                                   ; $6004: $11 $11 $11
	daa                                              ; $6007: $27
	sbc  [hl]                                        ; $6008: $9e
	rst  $38                                         ; $6009: $ff
	rst  $38                                         ; $600a: $ff
	rst  $38                                         ; $600b: $ff
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	rst  $38                                         ; $600e: $ff
	cp   $eb                                         ; $600f: $fe $eb
	ld   l, b                                        ; $6011: $68
	xor  c                                           ; $6012: $a9
	rst  $38                                         ; $6013: $ff
	rst  $38                                         ; $6014: $ff
	reti                                             ; $6015: $d9


	ld   h, c                                        ; $6016: $61
	ld   de, $1111                                   ; $6017: $11 $11 $11
	ld   de, $1111                                   ; $601a: $11 $11 $11
	ld   de, $3325                                   ; $601d: $11 $25 $33
	ld   de, $1411                                   ; $6020: $11 $11 $14
	xor  a                                           ; $6023: $af
	rst  $38                                         ; $6024: $ff
	rst  $38                                         ; $6025: $ff
	rst  $38                                         ; $6026: $ff
	rst  $38                                         ; $6027: $ff
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	rst  $38                                         ; $602a: $ff
	reti                                             ; $602b: $d9


	sbc  d                                           ; $602c: $9a
	sbc  d                                           ; $602d: $9a
	xor  e                                           ; $602e: $ab
	xor  c                                           ; $602f: $a9
	cp   c                                           ; $6030: $b9
	halt                                             ; $6031: $76
	ld   h, d                                        ; $6032: $62
	ld   [hl+], a                                    ; $6033: $22
	ld   de, $1111                                   ; $6034: $11 $11 $11
	ld   de, $2411                                   ; $6037: $11 $11 $24
	ld   hl, $1111                                   ; $603a: $21 $11 $11
	ld   c, c                                        ; $603d: $49
	rst  JumpTable                                         ; $603e: $df
	rst  $38                                         ; $603f: $ff
	rst  $38                                         ; $6040: $ff
	rst  $38                                         ; $6041: $ff
	rst  $38                                         ; $6042: $ff
	rst  $38                                         ; $6043: $ff
	rst  $38                                         ; $6044: $ff
	rst  $38                                         ; $6045: $ff
	call c, $9999                                    ; $6046: $dc $99 $99
	db   $db                                         ; $6049: $db
	bit  6, a                                        ; $604a: $cb $77
	ld   h, e                                        ; $604c: $63
	inc  sp                                          ; $604d: $33
	inc  sp                                          ; $604e: $33
	ld   de, $1111                                   ; $604f: $11 $11 $11
	ld   de, $1111                                   ; $6052: $11 $11 $11
	ld   de, $1111                                   ; $6055: $11 $11 $11
	ld   c, d                                        ; $6058: $4a
	rst  JumpTable                                         ; $6059: $df
	rst  $38                                         ; $605a: $ff
	rst  $38                                         ; $605b: $ff
	rst  $38                                         ; $605c: $ff
	rst  $38                                         ; $605d: $ff
	rst  $38                                         ; $605e: $ff
	rst  $38                                         ; $605f: $ff
	ei                                               ; $6060: $fb
	ret  z                                           ; $6061: $c8

	jr   c, jr_0df_5ffd                              ; $6062: $38 $99

	db   $fc                                         ; $6064: $fc
	call c, Call_0df_6277                            ; $6065: $dc $77 $62
	ld   b, e                                        ; $6068: $43
	ld   [de], a                                     ; $6069: $12
	ld   de, $1111                                   ; $606a: $11 $11 $11
	ld   de, $4521                                   ; $606d: $11 $21 $45
	ld   [de], a                                     ; $6070: $12
	ld   de, $1911                                   ; $6071: $11 $11 $19
	xor  a                                           ; $6074: $af
	rst  $38                                         ; $6075: $ff
	rst  $38                                         ; $6076: $ff
	rst  $38                                         ; $6077: $ff
	rst  $38                                         ; $6078: $ff
	rst  $38                                         ; $6079: $ff
	rst  $38                                         ; $607a: $ff
	ei                                               ; $607b: $fb
	push hl                                          ; $607c: $e5
	ld   e, c                                        ; $607d: $59
	ld   e, d                                        ; $607e: $5a
	cp   d                                           ; $607f: $ba
	db   $fc                                         ; $6080: $fc
	ld   e, d                                        ; $6081: $5a
	ld   b, c                                        ; $6082: $41
	ld   [hl], d                                     ; $6083: $72
	inc  h                                           ; $6084: $24
	ld   de, $1111                                   ; $6085: $11 $11 $11
	ld   de, $3111                                   ; $6088: $11 $11 $31
	inc  de                                          ; $608b: $13
	ld   de, $7d11                                   ; $608c: $11 $11 $7d
	rst  JumpTable                                         ; $608f: $df
	rst  $38                                         ; $6090: $ff
	rst  $38                                         ; $6091: $ff
	rst  $38                                         ; $6092: $ff
	rst  $38                                         ; $6093: $ff
	rst  $38                                         ; $6094: $ff
	rst  $38                                         ; $6095: $ff
	db   $fc                                         ; $6096: $fc
	sbc  c                                           ; $6097: $99
	ld   h, [hl]                                     ; $6098: $66
	ld   a, b                                        ; $6099: $78
	cp   h                                           ; $609a: $bc
	db   $eb                                         ; $609b: $eb
	halt                                             ; $609c: $76
	ld   b, e                                        ; $609d: $43
	ld   [de], a                                     ; $609e: $12
	ld   de, $1111                                   ; $609f: $11 $11 $11
	ld   de, $1111                                   ; $60a2: $11 $11 $11
	ld   de, $1111                                   ; $60a5: $11 $11 $11
	ld   d, $5f                                      ; $60a8: $16 $5f
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	rst  $38                                         ; $60ac: $ff
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	rst  $38                                         ; $60af: $ff
	rst  $38                                         ; $60b0: $ff
	add  $62                                         ; $60b1: $c6 $62
	scf                                              ; $60b3: $37
	adc  h                                           ; $60b4: $8c
	cp   $c8                                         ; $60b5: $fe $c8
	ld   d, h                                        ; $60b7: $54
	ld   b, l                                        ; $60b8: $45
	ld   h, [hl]                                     ; $60b9: $66
	ld   d, d                                        ; $60ba: $52
	ld   de, $1111                                   ; $60bb: $11 $11 $11
	ld   de, $1101                                   ; $60be: $11 $01 $11
	ld   de, $7e31                                   ; $60c1: $11 $31 $7e
	rst  $38                                         ; $60c4: $ff
	rst  $38                                         ; $60c5: $ff
	rst  $38                                         ; $60c6: $ff
	rst  $38                                         ; $60c7: $ff
	rst  JumpTable                                         ; $60c8: $df
	rst  $38                                         ; $60c9: $ff
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	rst  $10                                         ; $60cc: $d7
	sub  [hl]                                        ; $60cd: $96
	ld   a, e                                        ; $60ce: $7b
	ld   a, d                                        ; $60cf: $7a
	cp   b                                           ; $60d0: $b8
	ld   [hl], l                                     ; $60d1: $75
	ld   [hl-], a                                    ; $60d2: $32
	ld   de, $1121                                   ; $60d3: $11 $21 $11
	ld   de, $1111                                   ; $60d6: $11 $11 $11
	ld   de, $1111                                   ; $60d9: $11 $11 $11
	ld   de, $ee17                                   ; $60dc: $11 $17 $ee
	rst  $38                                         ; $60df: $ff
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	rst  $38                                         ; $60e5: $ff
	or   a                                           ; $60e6: $b7
	ld   d, [hl]                                     ; $60e7: $56
	ld   e, d                                        ; $60e8: $5a
	db   $db                                         ; $60e9: $db
	res  0, [hl]                                     ; $60ea: $cb $86
	ld   b, d                                        ; $60ec: $42
	ld   [hl+], a                                    ; $60ed: $22
	inc  hl                                          ; $60ee: $23
	ld   de, $1111                                   ; $60ef: $11 $11 $11
	ld   de, $1112                                   ; $60f2: $11 $12 $11
	ld   de, $1511                                   ; $60f5: $11 $11 $15
	rst  $38                                         ; $60f8: $ff
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	rst  $38                                         ; $60fc: $ff
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	ret  z                                           ; $6100: $c8

	inc  [hl]                                        ; $6101: $34
	ld   d, h                                        ; $6102: $54
	adc  c                                           ; $6103: $89
	xor  l                                           ; $6104: $ad
	or   [hl]                                        ; $6105: $b6
	sub  e                                           ; $6106: $93
	inc  [hl]                                        ; $6107: $34
	inc  de                                          ; $6108: $13
	ld   [hl-], a                                    ; $6109: $32
	ld   de, $1111                                   ; $610a: $11 $11 $11
	ld   de, $1113                                   ; $610d: $11 $13 $11
	ld   de, $ff39                                   ; $6110: $11 $39 $ff
	rst  $38                                         ; $6113: $ff
	rst  $38                                         ; $6114: $ff
	rst  $38                                         ; $6115: $ff
	rst  $38                                         ; $6116: $ff
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	cp   $e8                                         ; $6119: $fe $e8
	xor  l                                           ; $611b: $ad
	cp   l                                           ; $611c: $bd
	db   $ed                                         ; $611d: $ed
	reti                                             ; $611e: $d9


	ld   h, h                                        ; $611f: $64
	ld   de, $1111                                   ; $6120: $11 $11 $11
	ld   de, $1111                                   ; $6123: $11 $11 $11
	ld   de, $1111                                   ; $6126: $11 $11 $11
	ld   de, $a915                                   ; $6129: $11 $15 $a9
	rst  $38                                         ; $612c: $ff
	rst  $38                                         ; $612d: $ff
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	rst  $38                                         ; $6132: $ff
	ei                                               ; $6133: $fb
	add  e                                           ; $6134: $83
	ld   d, $89                                      ; $6135: $16 $89
	cp   $cb                                         ; $6137: $fe $cb
	ld   b, d                                        ; $6139: $42
	ld   de, $1134                                   ; $613a: $11 $34 $11
	ld   de, $1111                                   ; $613d: $11 $11 $11
	ld   de, $3111                                   ; $6140: $11 $11 $31
	inc  de                                          ; $6143: $13
	ld   c, c                                        ; $6144: $49
	rst  $38                                         ; $6145: $ff
	rst  $38                                         ; $6146: $ff
	rst  $38                                         ; $6147: $ff
	rst  $38                                         ; $6148: $ff
	rst  $38                                         ; $6149: $ff
	rst  $38                                         ; $614a: $ff
	rst  $38                                         ; $614b: $ff
	db   $fc                                         ; $614c: $fc
	and  [hl]                                        ; $614d: $a6
	daa                                              ; $614e: $27
	ld   l, b                                        ; $614f: $68
	db   $fd                                         ; $6150: $fd
	jp   z, $1121                                    ; $6151: $ca $21 $11

	inc  de                                          ; $6154: $13
	ld   b, l                                        ; $6155: $45
	ld   de, $1111                                   ; $6156: $11 $11 $11
	ld   de, $1121                                   ; $6159: $11 $21 $11
	ld   de, $ff4f                                   ; $615c: $11 $4f $ff
	rst  $38                                         ; $615f: $ff
	rst  $38                                         ; $6160: $ff
	rst  $38                                         ; $6161: $ff
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	rst  $38                                         ; $6164: $ff
	rst  $20                                         ; $6165: $e7
	ld   h, l                                        ; $6166: $65
	ld   a, c                                        ; $6167: $79
	call z, $4786                                    ; $6168: $cc $86 $47
	ld   d, h                                        ; $616b: $54
	ld   b, c                                        ; $616c: $41
	ld   de, $1111                                   ; $616d: $11 $11 $11
	ld   de, $1111                                   ; $6170: $11 $11 $11
	ld   de, $7d11                                   ; $6173: $11 $11 $7d
	rst  $38                                         ; $6176: $ff
	rst  $38                                         ; $6177: $ff
	rst  $38                                         ; $6178: $ff
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	rst  $38                                         ; $617b: $ff
	rst  $38                                         ; $617c: $ff
	cp   $c7                                         ; $617d: $fe $c7
	ld   h, a                                        ; $617f: $67
	adc  d                                           ; $6180: $8a
	call c, $32a8                                    ; $6181: $dc $a8 $32
	ld   de, $1111                                   ; $6184: $11 $11 $11
	ld   de, $1111                                   ; $6187: $11 $11 $11
	ld   de, $1111                                   ; $618a: $11 $11 $11
	dec  d                                           ; $618d: $15
	xor  a                                           ; $618e: $af
	rst  $38                                         ; $618f: $ff
	rst  $38                                         ; $6190: $ff
	rst  $38                                         ; $6191: $ff
	rst  $38                                         ; $6192: $ff
	rst  $38                                         ; $6193: $ff
	rst  $38                                         ; $6194: $ff
	rst  $38                                         ; $6195: $ff
	add  $11                                         ; $6196: $c6 $11
	ld   e, e                                        ; $6198: $5b
	rst  $38                                         ; $6199: $ff
	rst  $30                                         ; $619a: $f7
	ld   de, $1311                                   ; $619b: $11 $11 $13
	ld   b, c                                        ; $619e: $41
	ld   de, $1111                                   ; $619f: $11 $11 $11
	ld   de, $1111                                   ; $61a2: $11 $11 $11
	inc  de                                          ; $61a5: $13
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	rst  $38                                         ; $61a8: $ff
	rst  $38                                         ; $61a9: $ff
	rst  $38                                         ; $61aa: $ff
	rst  $38                                         ; $61ab: $ff
	rst  $38                                         ; $61ac: $ff
	rst  $38                                         ; $61ad: $ff
	sub  a                                           ; $61ae: $97
	ld   l, b                                        ; $61af: $68
	xor  l                                           ; $61b0: $ad
	db   $eb                                         ; $61b1: $eb
	ld   [hl], e                                     ; $61b2: $73
	ld   de, $3212                                   ; $61b3: $11 $12 $32
	ld   de, $1111                                   ; $61b6: $11 $11 $11
	ld   de, $1111                                   ; $61b9: $11 $11 $11
	ld   de, $ff6f                                   ; $61bc: $11 $6f $ff
	rst  $38                                         ; $61bf: $ff
	rst  $38                                         ; $61c0: $ff
	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	db   $fd                                         ; $61c5: $fd
	call $baed                                       ; $61c6: $cd $ed $ba
	ld   h, h                                        ; $61c9: $64
	ld   d, h                                        ; $61ca: $54
	ld   d, h                                        ; $61cb: $54
	ld   de, $1111                                   ; $61cc: $11 $11 $11
	ld   de, $1111                                   ; $61cf: $11 $11 $11
	ld   de, $1a11                                   ; $61d2: $11 $11 $1a
	rst  $38                                         ; $61d5: $ff
	rst  $38                                         ; $61d6: $ff
	rst  $38                                         ; $61d7: $ff
	rst  $38                                         ; $61d8: $ff
	rst  $38                                         ; $61d9: $ff
	rst  $38                                         ; $61da: $ff
	rst  $38                                         ; $61db: $ff
	cp   $fb                                         ; $61dc: $fe $fb
	xor  d                                           ; $61de: $aa
	ld   l, b                                        ; $61df: $68
	halt                                             ; $61e0: $76
	add  l                                           ; $61e1: $85
	ld   b, e                                        ; $61e2: $43
	ld   de, $1111                                   ; $61e3: $11 $11 $11
	ld   de, $1111                                   ; $61e6: $11 $11 $11
	ld   de, $1111                                   ; $61e9: $11 $11 $11
	rst  $28                                         ; $61ec: $ef
	rst  $38                                         ; $61ed: $ff
	rst  $38                                         ; $61ee: $ff
	rst  $38                                         ; $61ef: $ff
	rst  $38                                         ; $61f0: $ff
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	db   $fc                                         ; $61f3: $fc
	ret  c                                           ; $61f4: $d8

	sbc  d                                           ; $61f5: $9a
	ld   d, [hl]                                     ; $61f6: $56
	halt                                             ; $61f7: $76
	xor  b                                           ; $61f8: $a8
	ld   [hl], l                                     ; $61f9: $75
	ld   de, $1111                                   ; $61fa: $11 $11 $11
	ld   de, $1111                                   ; $61fd: $11 $11 $11
	ld   de, $2e11                                   ; $6200: $11 $11 $2e
	rst  $38                                         ; $6203: $ff
	rst  $38                                         ; $6204: $ff
	rst  $38                                         ; $6205: $ff
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	rst  $38                                         ; $6208: $ff
	rst  $38                                         ; $6209: $ff
	cp   $b9                                         ; $620a: $fe $b9
	add  a                                           ; $620c: $87
	adc  d                                           ; $620d: $8a
	cp   d                                           ; $620e: $ba
	add  l                                           ; $620f: $85
	ld   de, $1111                                   ; $6210: $11 $11 $11
	ld   de, $1111                                   ; $6213: $11 $11 $11
	ld   de, $2711                                   ; $6216: $11 $11 $27
	rst  $38                                         ; $6219: $ff
	rst  $38                                         ; $621a: $ff
	rst  $38                                         ; $621b: $ff
	rst  $38                                         ; $621c: $ff
	rst  $38                                         ; $621d: $ff
	rst  $38                                         ; $621e: $ff
	rst  $38                                         ; $621f: $ff
	cp   $c9                                         ; $6220: $fe $c9
	ld   l, b                                        ; $6222: $68
	sbc  c                                           ; $6223: $99
	xor  c                                           ; $6224: $a9
	add  l                                           ; $6225: $85
	ld   [hl-], a                                    ; $6226: $32
	ld   de, $1111                                   ; $6227: $11 $11 $11
	ld   de, $1111                                   ; $622a: $11 $11 $11
	ld   de, $ff1c                                   ; $622d: $11 $1c $ff
	rst  $38                                         ; $6230: $ff
	rst  $38                                         ; $6231: $ff
	rst  $38                                         ; $6232: $ff
	rst  $38                                         ; $6233: $ff
	rst  $38                                         ; $6234: $ff
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	sub  l                                           ; $6237: $95
	sbc  b                                           ; $6238: $98
	sbc  c                                           ; $6239: $99
	ld   h, a                                        ; $623a: $67
	ld   h, [hl]                                     ; $623b: $66
	ld   h, d                                        ; $623c: $62
	ld   de, $1111                                   ; $623d: $11 $11 $11
	ld   de, $1111                                   ; $6240: $11 $11 $11
	ld   de, $cf15                                   ; $6243: $11 $15 $cf
	rst  $38                                         ; $6246: $ff
	rst  $38                                         ; $6247: $ff
	rst  $38                                         ; $6248: $ff
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	rst  $38                                         ; $624b: $ff
	db   $fd                                         ; $624c: $fd
	cp   d                                           ; $624d: $ba
	sub  a                                           ; $624e: $97
	ld   b, c                                        ; $624f: $41
	dec  h                                           ; $6250: $25
	add  a                                           ; $6251: $87
	ld   de, $1111                                   ; $6252: $11 $11 $11
	ld   de, $1111                                   ; $6255: $11 $11 $11
	ld   de, $2a11                                   ; $6258: $11 $11 $2a
	call $ffff                                       ; $625b: $cd $ff $ff
	rst  $38                                         ; $625e: $ff
	rst  $38                                         ; $625f: $ff
	rst  $38                                         ; $6260: $ff
	rst  $38                                         ; $6261: $ff
	adc  b                                           ; $6262: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6263: $cf
	or   c                                           ; $6264: $b1
	ld   de, $b11d                                   ; $6265: $11 $1d $b1
	ld   de, $2115                                   ; $6268: $11 $15 $21
	ld   de, $1111                                   ; $626b: $11 $11 $11
	ld   de, $7111                                   ; $626e: $11 $11 $71
	ld   c, a                                        ; $6271: $4f
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	rst  $38                                         ; $6274: $ff
	rst  $38                                         ; $6275: $ff
	rst  $38                                         ; $6276: $ff

Call_0df_6277:
	rst  $38                                         ; $6277: $ff
	rst  $38                                         ; $6278: $ff
	pop  bc                                          ; $6279: $c1
	ld   de, $3126                                   ; $627a: $11 $26 $31
	ld   de, $4114                                   ; $627d: $11 $14 $41
	ld   de, $1111                                   ; $6280: $11 $11 $11
	ld   de, $1111                                   ; $6283: $11 $11 $11
	ld   d, $ff                                      ; $6286: $16 $ff
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	rst  $38                                         ; $628a: $ff
	rst  $38                                         ; $628b: $ff
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	and  h                                           ; $628e: $a4
	inc  hl                                          ; $628f: $23
	ld   de, $1111                                   ; $6290: $11 $11 $11
	ld   de, $1111                                   ; $6293: $11 $11 $11
	ld   de, $1111                                   ; $6296: $11 $11 $11
	ld   de, $1211                                   ; $6299: $11 $11 $12
	add  hl, sp                                      ; $629c: $39
	rst  $38                                         ; $629d: $ff
	rst  $38                                         ; $629e: $ff
	rst  $38                                         ; $629f: $ff
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	ld   h, e                                        ; $62a4: $63
	ld   [de], a                                     ; $62a5: $12
	ld   de, $1111                                   ; $62a6: $11 $11 $11

Jump_0df_62a9:
	ld   de, $1111                                   ; $62a9: $11 $11 $11
	ld   de, $1111                                   ; $62ac: $11 $11 $11
	ld   de, $1111                                   ; $62af: $11 $11 $11
	rst  $38                                         ; $62b2: $ff
	rst  $38                                         ; $62b3: $ff
	rst  $38                                         ; $62b4: $ff
	rst  $38                                         ; $62b5: $ff
	rst  $38                                         ; $62b6: $ff
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff
	rst  $38                                         ; $62b9: $ff
	ld   d, c                                        ; $62ba: $51
	ld   de, $1111                                   ; $62bb: $11 $11 $11
	ld   de, $2111                                   ; $62be: $11 $11 $21
	ld   de, $1111                                   ; $62c1: $11 $11 $11
	ld   de, $1111                                   ; $62c4: $11 $11 $11
	adc  a                                           ; $62c7: $8f
	cp   c                                           ; $62c8: $b9
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	rst  $38                                         ; $62cb: $ff
	rst  $38                                         ; $62cc: $ff
	rst  $38                                         ; $62cd: $ff
	rst  $38                                         ; $62ce: $ff
	ld   sp, hl                                      ; $62cf: $f9
	inc  h                                           ; $62d0: $24
	ld   de, $1111                                   ; $62d1: $11 $11 $11
	ld   de, $1111                                   ; $62d4: $11 $11 $11
	ld   de, $1111                                   ; $62d7: $11 $11 $11
	ld   de, $1f11                                   ; $62da: $11 $11 $1f
	ld   d, c                                        ; $62dd: $51
	rst  $38                                         ; $62de: $ff

Call_0df_62df:
	rst  $38                                         ; $62df: $ff
	rst  $38                                         ; $62e0: $ff
	rst  $38                                         ; $62e1: $ff
	rst  $38                                         ; $62e2: $ff
	rst  $38                                         ; $62e3: $ff
	rst  $38                                         ; $62e4: $ff
	cp   $11                                         ; $62e5: $fe $11
	ld   de, $1111                                   ; $62e7: $11 $11 $11
	ld   de, $1111                                   ; $62ea: $11 $11 $11
	ld   de, $1111                                   ; $62ed: $11 $11 $11
	ld   de, $1732                                   ; $62f0: $11 $32 $17
	rst  $38                                         ; $62f3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f4: $cf
	rst  $38                                         ; $62f5: $ff
	rst  $38                                         ; $62f6: $ff
	rst  $38                                         ; $62f7: $ff
	rst  $38                                         ; $62f8: $ff
	rst  $38                                         ; $62f9: $ff
	cp   $9d                                         ; $62fa: $fe $9d
	ld   d, c                                        ; $62fc: $51
	ld   de, $1111                                   ; $62fd: $11 $11 $11
	ld   de, $1111                                   ; $6300: $11 $11 $11
	ld   de, $1211                                   ; $6303: $11 $11 $12
	ld   de, $484c                                   ; $6306: $11 $4c $48
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	rst  $38                                         ; $630f: $ff
	ld   a, [$3157]                                  ; $6310: $fa $57 $31
	ld   de, $1111                                   ; $6313: $11 $11 $11
	ld   de, $1111                                   ; $6316: $11 $11 $11
	ld   de, $1111                                   ; $6319: $11 $11 $11
	ld   de, $bf16                                   ; $631c: $11 $16 $bf
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	rst  $38                                         ; $6322: $ff
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	ld   [$1193], a                                  ; $6326: $ea $93 $11
	ld   de, $1111                                   ; $6329: $11 $11 $11
	ld   de, $1111                                   ; $632c: $11 $11 $11
	ld   de, $1111                                   ; $632f: $11 $11 $11
	ld   [de], a                                     ; $6332: $12
	ld   b, [hl]                                     ; $6333: $46
	rst  $38                                         ; $6334: $ff
	rst  $38                                         ; $6335: $ff
	rst  $38                                         ; $6336: $ff
	rst  $38                                         ; $6337: $ff
	rst  $38                                         ; $6338: $ff
	rst  $38                                         ; $6339: $ff
	rst  $38                                         ; $633a: $ff
	rst  $38                                         ; $633b: $ff
	and  l                                           ; $633c: $a5
	ld   d, c                                        ; $633d: $51
	ld   de, $1111                                   ; $633e: $11 $11 $11
	ld   de, $1111                                   ; $6341: $11 $11 $11
	ld   de, $1111                                   ; $6344: $11 $11 $11
	ld   de, $3f21                                   ; $6347: $11 $21 $3f
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	rst  $38                                         ; $634c: $ff
	rst  $38                                         ; $634d: $ff
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	rst  $38                                         ; $6350: $ff
	ei                                               ; $6351: $fb
	ld   b, l                                        ; $6352: $45
	ld   de, $1111                                   ; $6353: $11 $11 $11
	ld   de, $1111                                   ; $6356: $11 $11 $11
	ld   de, $1111                                   ; $6359: $11 $11 $11
	ld   de, $9711                                   ; $635c: $11 $11 $97
	cp   a                                           ; $635f: $bf
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	adc  c                                           ; $6367: $89
	ld   hl, $1111                                   ; $6368: $21 $11 $11
	ld   de, $1111                                   ; $636b: $11 $11 $11
	ld   de, $1111                                   ; $636e: $11 $11 $11
	ld   de, $1117                                   ; $6371: $11 $17 $11
	rst  JumpTable                                         ; $6374: $df
	rst  $38                                         ; $6375: $ff
	rst  $38                                         ; $6376: $ff
	rst  $38                                         ; $6377: $ff
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	rst  $38                                         ; $637a: $ff
	rst  $38                                         ; $637b: $ff
	ret                                              ; $637c: $c9


	ld   sp, $1111                                   ; $637d: $31 $11 $11
	ld   de, $1111                                   ; $6380: $11 $11 $11
	ld   de, $1111                                   ; $6383: $11 $11 $11
	ld   de, $1111                                   ; $6386: $11 $11 $11
	ld   l, a                                        ; $6389: $6f
	rst  $38                                         ; $638a: $ff
	rst  $38                                         ; $638b: $ff
	rst  $38                                         ; $638c: $ff
	rst  $38                                         ; $638d: $ff
	rst  $38                                         ; $638e: $ff
	rst  $38                                         ; $638f: $ff
	rst  $38                                         ; $6390: $ff
	db   $eb                                         ; $6391: $eb
	ld   de, $1111                                   ; $6392: $11 $11 $11
	ld   de, $1111                                   ; $6395: $11 $11 $11
	ld   de, $1111                                   ; $6398: $11 $11 $11
	ld   de, $1311                                   ; $639b: $11 $11 $13
	ld   e, b                                        ; $639e: $58
	rst  $38                                         ; $639f: $ff
	rst  $38                                         ; $63a0: $ff
	rst  $38                                         ; $63a1: $ff
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	rst  $38                                         ; $63a5: $ff
	ret  z                                           ; $63a6: $c8

	ld   hl, $1111                                   ; $63a7: $21 $11 $11
	ld   de, $1111                                   ; $63aa: $11 $11 $11
	ld   de, $1111                                   ; $63ad: $11 $11 $11
	ld   de, $1711                                   ; $63b0: $11 $11 $17
	or   $9f                                         ; $63b3: $f6 $9f
	rst  $38                                         ; $63b5: $ff
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff
	rst  $38                                         ; $63b8: $ff
	rst  $38                                         ; $63b9: $ff
	db   $fc                                         ; $63ba: $fc
	sbc  d                                           ; $63bb: $9a
	ld   [hl], c                                     ; $63bc: $71
	inc  de                                          ; $63bd: $13
	ld   b, h                                        ; $63be: $44
	ld   d, l                                        ; $63bf: $55
	ld   de, $1121                                   ; $63c0: $11 $21 $11
	ld   de, $1111                                   ; $63c3: $11 $11 $11
	ld   de, $eb11                                   ; $63c6: $11 $11 $eb
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	rst  $38                                         ; $63cb: $ff
	rst  $38                                         ; $63cc: $ff
	rst  $38                                         ; $63cd: $ff
	rst  $38                                         ; $63ce: $ff
	ei                                               ; $63cf: $fb
	ld   a, l                                        ; $63d0: $7d
	add  h                                           ; $63d1: $84
	ld   a, b                                        ; $63d2: $78
	db   $db                                         ; $63d3: $db
	ld   a, c                                        ; $63d4: $79
	ld   [hl], d                                     ; $63d5: $72
	ld   de, $1111                                   ; $63d6: $11 $11 $11
	ld   de, $1111                                   ; $63d9: $11 $11 $11
	inc  d                                           ; $63dc: $14
	adc  a                                           ; $63dd: $8f
	rst  $38                                         ; $63de: $ff
	rst  $38                                         ; $63df: $ff
	rst  $38                                         ; $63e0: $ff
	rst  $38                                         ; $63e1: $ff
	rst  $38                                         ; $63e2: $ff
	rst  $38                                         ; $63e3: $ff
	db   $eb                                         ; $63e4: $eb
	rst  $28                                         ; $63e5: $ef
	db   $fc                                         ; $63e6: $fc
	rst  $28                                         ; $63e7: $ef
	cp   $db                                         ; $63e8: $fe $db
	ld   hl, $1111                                   ; $63ea: $21 $11 $11
	ld   de, $1111                                   ; $63ed: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $63f0: $11 $12 $ff
	rst  $38                                         ; $63f3: $ff
	rst  $38                                         ; $63f4: $ff
	rst  $38                                         ; $63f5: $ff
	rst  JumpTable                                         ; $63f6: $df
	rst  $38                                         ; $63f7: $ff
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	db   $ed                                         ; $63fd: $ed
	ret  c                                           ; $63fe: $d8

	ld   de, $1111                                   ; $63ff: $11 $11 $11
	ld   de, $1111                                   ; $6402: $11 $11 $11
	ld   de, $eb15                                   ; $6405: $11 $15 $eb
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	rst  $38                                         ; $640c: $ff
	rst  $38                                         ; $640d: $ff
	rst  $38                                         ; $640e: $ff
	rst  $38                                         ; $640f: $ff
	rst  $38                                         ; $6410: $ff
	db   $fc                                         ; $6411: $fc
	cp   a                                           ; $6412: $bf
	ld   b, c                                        ; $6413: $41
	ld   d, [hl]                                     ; $6414: $56
	ld   de, $1111                                   ; $6415: $11 $11 $11
	ld   de, $1111                                   ; $6418: $11 $11 $11
	ld   de, $1f81                                   ; $641b: $11 $81 $1f
	rst  $38                                         ; $641e: $ff
	rst  $38                                         ; $641f: $ff
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	rst  $38                                         ; $6426: $ff
	rst  $38                                         ; $6427: $ff
	rst  $10                                         ; $6428: $d7
	sub  l                                           ; $6429: $95
	ld   de, $1111                                   ; $642a: $11 $11 $11
	ld   de, $1111                                   ; $642d: $11 $11 $11
	ld   de, $1a17                                   ; $6430: $11 $17 $1a
	db   $fc                                         ; $6433: $fc
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	rst  $38                                         ; $6439: $ff
	rst  $38                                         ; $643a: $ff
	rst  $38                                         ; $643b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $643c: $cf
	xor  c                                           ; $643d: $a9
	sub  h                                           ; $643e: $94
	ld   d, c                                        ; $643f: $51
	ld   de, $1111                                   ; $6440: $11 $11 $11
	ld   de, $1111                                   ; $6443: $11 $11 $11
	ld   de, $971e                                   ; $6446: $11 $1e $97
	rst  $38                                         ; $6449: $ff
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	adc  $ff                                         ; $644c: $ce $ff
	ei                                               ; $644e: $fb
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	rst  $38                                         ; $6452: $ff
	call nc, Call_0df_7191                           ; $6453: $d4 $91 $71
	ld   de, $1111                                   ; $6456: $11 $11 $11
	ld   de, $1131                                   ; $6459: $11 $31 $11
	ld   de, $8a11                                   ; $645c: $11 $11 $8a
	rst  $38                                         ; $645f: $ff
	rst  $38                                         ; $6460: $ff
	rst  $38                                         ; $6461: $ff
	db   $fc                                         ; $6462: $fc
	sbc  a                                           ; $6463: $9f
	rst  $38                                         ; $6464: $ff
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	ld   a, [$f3af]                                  ; $6467: $fa $af $f3
	ld   h, $15                                      ; $646a: $26 $15
	ld   de, $1111                                   ; $646c: $11 $11 $11
	ld   de, $1111                                   ; $646f: $11 $11 $11
	ld   de, $6311                                   ; $6472: $11 $11 $63
	rst  $38                                         ; $6475: $ff
	xor  a                                           ; $6476: $af
	rst  $38                                         ; $6477: $ff
	ld   hl, sp-$06                                  ; $6478: $f8 $fa
	rst  $38                                         ; $647a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $647b: $cf
	rst  $38                                         ; $647c: $ff
	ld   a, [$8ff9]                                  ; $647d: $fa $f9 $8f
	inc  h                                           ; $6480: $24
	ld   [de], a                                     ; $6481: $12
	ld   de, $1111                                   ; $6482: $11 $11 $11
	ld   de, $1113                                   ; $6485: $11 $13 $11
	ld   de, $2f11                                   ; $6488: $11 $11 $2f
	rst  JumpTable                                         ; $648b: $df
	cp   $ff                                         ; $648c: $fe $ff
	cp   $8f                                         ; $648e: $fe $8f
	rst  $38                                         ; $6490: $ff
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	ret  c                                           ; $6494: $d8

	db   $ed                                         ; $6495: $ed
	sub  [hl]                                        ; $6496: $96
	inc  d                                           ; $6497: $14
	ld   de, $1111                                   ; $6498: $11 $11 $11
	inc  de                                          ; $649b: $13
	ld   de, $a111                                   ; $649c: $11 $11 $a1
	ld   [de], a                                     ; $649f: $12
	rra                                              ; $64a0: $1f
	cp   a                                           ; $64a1: $bf
	or   $ff                                         ; $64a2: $f6 $ff
	rst  $38                                         ; $64a4: $ff
	rra                                              ; $64a5: $1f
	rst  $38                                         ; $64a6: $ff
	rst  $30                                         ; $64a7: $f7
	rst  $38                                         ; $64a8: $ff
	rst  $38                                         ; $64a9: $ff
	cpl                                              ; $64aa: $2f
	di                                               ; $64ab: $f3
	pop  af                                          ; $64ac: $f1
	ld   l, a                                        ; $64ad: $6f
	ld   de, $9111                                   ; $64ae: $11 $11 $91
	ld   de, $1116                                   ; $64b1: $11 $16 $11
	ld   de, $ca11                                   ; $64b4: $11 $11 $ca
	rla                                              ; $64b7: $17
	rst  $38                                         ; $64b8: $ff
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	xor  a                                           ; $64bb: $af
	pop  bc                                          ; $64bc: $c1
	rst  $38                                         ; $64bd: $ff
	rst  $38                                         ; $64be: $ff
	xor  a                                           ; $64bf: $af
	rst  $38                                         ; $64c0: $ff
	ldh  a, [c]                                      ; $64c1: $f2
	add  c                                           ; $64c2: $81
	ld   sp, hl                                      ; $64c3: $f9
	ld   de, $2111                                   ; $64c4: $11 $11 $21
	ld   de, $5417                                   ; $64c7: $11 $17 $54
	ld   de, $2111                                   ; $64ca: $11 $11 $21
	ld   de, $f5ff                                   ; $64cd: $11 $ff $f5
	rst  $38                                         ; $64d0: $ff
	rst  $28                                         ; $64d1: $ef
	rst  $38                                         ; $64d2: $ff
	db   $db                                         ; $64d3: $db
	db   $fd                                         ; $64d4: $fd
	adc  a                                           ; $64d5: $8f
	rst  $38                                         ; $64d6: $ff
	ld   a, [$b6f8]                                  ; $64d7: $fa $f8 $b6
	ld   e, [hl]                                     ; $64da: $5e
	ld   de, $1111                                   ; $64db: $11 $11 $11
	ld   de, $111b                                   ; $64de: $11 $1b $11
	ld   de, $1511                                   ; $64e1: $11 $11 $15
	rra                                              ; $64e4: $1f
	di                                               ; $64e5: $f3
	sbc  a                                           ; $64e6: $9f
	rst  $38                                         ; $64e7: $ff
	xor  e                                           ; $64e8: $ab
	cp   a                                           ; $64e9: $bf
	rst  $38                                         ; $64ea: $ff
	call $ffff                                       ; $64eb: $cd $ff $ff
	call c, Call_0df_62df                            ; $64ee: $dc $df $62
	ld   hl, $1111                                   ; $64f1: $21 $11 $11
	inc  de                                          ; $64f4: $13
	ld   h, c                                        ; $64f5: $61
	ld   de, $1119                                   ; $64f6: $11 $19 $11
	ld   de, $11ff                                   ; $64f9: $11 $ff $11
	rst  $28                                         ; $64fc: $ef
	rst  $38                                         ; $64fd: $ff
	or   $7f                                         ; $64fe: $f6 $7f
	rst  $30                                         ; $6500: $f7
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	rst  $38                                         ; $6503: $ff
	sbc  l                                           ; $6504: $9d
	rst  $38                                         ; $6505: $ff
	or   d                                           ; $6506: $b2
	ld   a, [hl-]                                    ; $6507: $3a
	reti                                             ; $6508: $d9


	ld   de, $9511                                   ; $6509: $11 $11 $95
	ld   de, $211e                                   ; $650c: $11 $1e $21
	ld   de, $1113                                   ; $650f: $11 $13 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6512: $cf
	rst  $38                                         ; $6513: $ff
	rst  $38                                         ; $6514: $ff
	rst  $38                                         ; $6515: $ff
	ld   sp, hl                                      ; $6516: $f9
	rst  $38                                         ; $6517: $ff
	rst  $38                                         ; $6518: $ff
	db   $fd                                         ; $6519: $fd
	ld   l, a                                        ; $651a: $6f
	rst  $38                                         ; $651b: $ff
	and  e                                           ; $651c: $a3
	ei                                               ; $651d: $fb
	sub  $11                                         ; $651e: $d6 $11
	inc  de                                          ; $6520: $13
	ld   de, $1111                                   ; $6521: $11 $11 $11
	ld   [de], a                                     ; $6524: $12
	ld   de, $2111                                   ; $6525: $11 $11 $21
	ld   de, $ff7f                                   ; $6528: $11 $7f $ff
	sbc  l                                           ; $652b: $9d
	rst  $38                                         ; $652c: $ff
	rst  $38                                         ; $652d: $ff
	rst  $28                                         ; $652e: $ef
	rst  $38                                         ; $652f: $ff
	db   $fd                                         ; $6530: $fd
	cp   h                                           ; $6531: $bc
	db   $fc                                         ; $6532: $fc
	add  $4a                                         ; $6533: $c6 $4a
	sbc  b                                           ; $6535: $98
	ld   b, d                                        ; $6536: $42
	ld   d, [hl]                                     ; $6537: $56
	ld   hl, $8614                                   ; $6538: $21 $14 $86
	ld   sp, $8814                                   ; $653b: $31 $14 $88
	ld   de, $2136                                   ; $653e: $11 $36 $21
	inc  de                                          ; $6541: $13
	ld   a, d                                        ; $6542: $7a
	cp   h                                           ; $6543: $bc
	rst  $28                                         ; $6544: $ef
	rst  $38                                         ; $6545: $ff
	sbc  $ff                                         ; $6546: $de $ff
	call z, $b8cd                                    ; $6548: $cc $cd $b8
	ld   [hl], a                                     ; $654b: $77
	sbc  d                                           ; $654c: $9a
	or   a                                           ; $654d: $b7
	adc  c                                           ; $654e: $89
	sbc  c                                           ; $654f: $99
	ld   h, a                                        ; $6550: $67
	ld   h, [hl]                                     ; $6551: $66
	ld   h, [hl]                                     ; $6552: $66
	sub  [hl]                                        ; $6553: $96
	adc  c                                           ; $6554: $89
	sbc  e                                           ; $6555: $9b
	sbc  c                                           ; $6556: $99
	sbc  b                                           ; $6557: $98
	add  [hl]                                        ; $6558: $86
	ld   b, [hl]                                     ; $6559: $46
	ld   a, b                                        ; $655a: $78
	sub  [hl]                                        ; $655b: $96
	ld   h, a                                        ; $655c: $67
	adc  b                                           ; $655d: $88
	ld   h, [hl]                                     ; $655e: $66
	ld   h, a                                        ; $655f: $67
	sbc  c                                           ; $6560: $99
	sub  a                                           ; $6561: $97
	ld   a, c                                        ; $6562: $79
	xor  c                                           ; $6563: $a9
	sbc  c                                           ; $6564: $99
	xor  d                                           ; $6565: $aa
	xor  d                                           ; $6566: $aa
	xor  d                                           ; $6567: $aa
	xor  d                                           ; $6568: $aa
	cp   d                                           ; $6569: $ba
	cp   d                                           ; $656a: $ba
	xor  d                                           ; $656b: $aa
	sbc  d                                           ; $656c: $9a
	xor  c                                           ; $656d: $a9
	add  [hl]                                        ; $656e: $86
	ld   h, a                                        ; $656f: $67
	adc  b                                           ; $6570: $88
	ld   [hl], l                                     ; $6571: $75
	ld   h, a                                        ; $6572: $67
	halt                                             ; $6573: $76
	ld   h, a                                        ; $6574: $67
	ld   a, b                                        ; $6575: $78
	ld   [hl], a                                     ; $6576: $77
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	ld   a, b                                        ; $6579: $78
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  b                                           ; $657c: $88
	sbc  c                                           ; $657d: $99
	adc  c                                           ; $657e: $89
	sbc  c                                           ; $657f: $99
	sbc  c                                           ; $6580: $99
	xor  c                                           ; $6581: $a9
	sbc  c                                           ; $6582: $99
	sbc  c                                           ; $6583: $99
	sbc  c                                           ; $6584: $99
	sbc  b                                           ; $6585: $98
	adc  b                                           ; $6586: $88
	ld   a, b                                        ; $6587: $78
	ld   [hl], a                                     ; $6588: $77
	add  a                                           ; $6589: $87
	ld   [hl], a                                     ; $658a: $77
	ld   [hl], a                                     ; $658b: $77
	ld   [hl], a                                     ; $658c: $77
	ld   [hl], a                                     ; $658d: $77
	ld   a, b                                        ; $658e: $78
	adc  b                                           ; $658f: $88
	ld   a, c                                        ; $6590: $79
	sbc  c                                           ; $6591: $99
	adc  c                                           ; $6592: $89
	sbc  c                                           ; $6593: $99
	adc  c                                           ; $6594: $89
	adc  b                                           ; $6595: $88
	sbc  c                                           ; $6596: $99
	sbc  c                                           ; $6597: $99
	adc  b                                           ; $6598: $88
	sbc  b                                           ; $6599: $98
	sbc  b                                           ; $659a: $98
	add  a                                           ; $659b: $87
	adc  b                                           ; $659c: $88
	ld   [hl], a                                     ; $659d: $77
	ld   [hl], a                                     ; $659e: $77
	add  a                                           ; $659f: $87
	ld   [hl], a                                     ; $65a0: $77
	ld   [hl], a                                     ; $65a1: $77
	ld   [hl], a                                     ; $65a2: $77
	ld   [hl], a                                     ; $65a3: $77
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  b                                           ; $65a6: $88
	sbc  b                                           ; $65a7: $98
	sbc  b                                           ; $65a8: $98
	sbc  c                                           ; $65a9: $99
	adc  b                                           ; $65aa: $88
	adc  c                                           ; $65ab: $89
	sbc  c                                           ; $65ac: $99
	adc  c                                           ; $65ad: $89
	sbc  c                                           ; $65ae: $99
	sbc  c                                           ; $65af: $99
	adc  b                                           ; $65b0: $88
	adc  b                                           ; $65b1: $88
	add  a                                           ; $65b2: $87
	ld   a, b                                        ; $65b3: $78
	ld   [hl], a                                     ; $65b4: $77
	ld   [hl], a                                     ; $65b5: $77
	ld   [hl], a                                     ; $65b6: $77
	ld   [hl], a                                     ; $65b7: $77

Call_0df_65b8:
	ld   [hl], a                                     ; $65b8: $77
	ld   [hl], a                                     ; $65b9: $77
	adc  b                                           ; $65ba: $88
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	sbc  b                                           ; $65be: $98
	adc  b                                           ; $65bf: $88
	adc  c                                           ; $65c0: $89
	sbc  b                                           ; $65c1: $98
	adc  b                                           ; $65c2: $88
	sbc  b                                           ; $65c3: $98
	sbc  b                                           ; $65c4: $98
	adc  c                                           ; $65c5: $89
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  b                                           ; $65c8: $88
	adc  b                                           ; $65c9: $88
	ld   a, b                                        ; $65ca: $78
	ld   a, b                                        ; $65cb: $78
	add  a                                           ; $65cc: $87
	add  a                                           ; $65cd: $87
	adc  b                                           ; $65ce: $88
	add  a                                           ; $65cf: $87
	ld   a, b                                        ; $65d0: $78
	adc  b                                           ; $65d1: $88
	adc  b                                           ; $65d2: $88
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  b                                           ; $65d6: $88
	adc  b                                           ; $65d7: $88
	adc  b                                           ; $65d8: $88
	adc  b                                           ; $65d9: $88
	adc  b                                           ; $65da: $88
	adc  b                                           ; $65db: $88
	adc  b                                           ; $65dc: $88
	adc  b                                           ; $65dd: $88
	adc  b                                           ; $65de: $88
	adc  b                                           ; $65df: $88
	adc  b                                           ; $65e0: $88
	adc  b                                           ; $65e1: $88
	adc  b                                           ; $65e2: $88
	adc  b                                           ; $65e3: $88
	adc  b                                           ; $65e4: $88
	adc  b                                           ; $65e5: $88
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	adc  b                                           ; $65e8: $88
	adc  b                                           ; $65e9: $88
	adc  b                                           ; $65ea: $88
	adc  b                                           ; $65eb: $88
	adc  b                                           ; $65ec: $88
	adc  b                                           ; $65ed: $88
	adc  b                                           ; $65ee: $88
	adc  b                                           ; $65ef: $88
	adc  b                                           ; $65f0: $88
	adc  b                                           ; $65f1: $88
	adc  b                                           ; $65f2: $88
	adc  b                                           ; $65f3: $88
	adc  b                                           ; $65f4: $88
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	adc  b                                           ; $65f8: $88
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  b                                           ; $65fd: $88
	adc  b                                           ; $65fe: $88
	adc  b                                           ; $65ff: $88
	adc  b                                           ; $6600: $88
	adc  b                                           ; $6601: $88
	adc  b                                           ; $6602: $88
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	adc  b                                           ; $6605: $88
	adc  b                                           ; $6606: $88
	adc  b                                           ; $6607: $88
	adc  b                                           ; $6608: $88
	adc  b                                           ; $6609: $88
	adc  b                                           ; $660a: $88
	adc  b                                           ; $660b: $88
	adc  b                                           ; $660c: $88
	adc  b                                           ; $660d: $88
	adc  b                                           ; $660e: $88
	adc  b                                           ; $660f: $88
	adc  b                                           ; $6610: $88
	adc  b                                           ; $6611: $88
	adc  b                                           ; $6612: $88
	adc  b                                           ; $6613: $88
	adc  b                                           ; $6614: $88
	adc  b                                           ; $6615: $88
	adc  b                                           ; $6616: $88
	adc  b                                           ; $6617: $88
	adc  b                                           ; $6618: $88
	adc  b                                           ; $6619: $88
	adc  b                                           ; $661a: $88
	adc  b                                           ; $661b: $88
	adc  b                                           ; $661c: $88
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	adc  b                                           ; $661f: $88
	adc  b                                           ; $6620: $88
	adc  b                                           ; $6621: $88
	adc  b                                           ; $6622: $88
	adc  b                                           ; $6623: $88
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  b                                           ; $6629: $88
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	adc  b                                           ; $662d: $88
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  b                                           ; $6630: $88
	adc  b                                           ; $6631: $88
	adc  b                                           ; $6632: $88
	adc  b                                           ; $6633: $88
	adc  b                                           ; $6634: $88
	adc  b                                           ; $6635: $88
	adc  b                                           ; $6636: $88
	adc  b                                           ; $6637: $88
	adc  b                                           ; $6638: $88
	adc  b                                           ; $6639: $88
	adc  b                                           ; $663a: $88
	adc  b                                           ; $663b: $88
	adc  b                                           ; $663c: $88
	adc  b                                           ; $663d: $88
	adc  b                                           ; $663e: $88
	adc  b                                           ; $663f: $88
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	adc  b                                           ; $6648: $88
	adc  b                                           ; $6649: $88
	adc  b                                           ; $664a: $88
	adc  b                                           ; $664b: $88
	adc  b                                           ; $664c: $88
	adc  b                                           ; $664d: $88
	adc  b                                           ; $664e: $88
	adc  b                                           ; $664f: $88
	adc  b                                           ; $6650: $88
	adc  b                                           ; $6651: $88
	adc  b                                           ; $6652: $88
	adc  b                                           ; $6653: $88
	adc  b                                           ; $6654: $88
	adc  b                                           ; $6655: $88
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	adc  b                                           ; $6658: $88
	adc  b                                           ; $6659: $88
	adc  b                                           ; $665a: $88
	adc  b                                           ; $665b: $88
	adc  b                                           ; $665c: $88
	adc  b                                           ; $665d: $88
	adc  b                                           ; $665e: $88
	adc  b                                           ; $665f: $88
	adc  b                                           ; $6660: $88
	adc  b                                           ; $6661: $88
	adc  b                                           ; $6662: $88
	adc  b                                           ; $6663: $88
	adc  b                                           ; $6664: $88
	adc  b                                           ; $6665: $88
	adc  b                                           ; $6666: $88
	adc  b                                           ; $6667: $88
	adc  b                                           ; $6668: $88
	adc  b                                           ; $6669: $88
	adc  b                                           ; $666a: $88
	adc  b                                           ; $666b: $88
	adc  b                                           ; $666c: $88
	adc  b                                           ; $666d: $88
	adc  b                                           ; $666e: $88
	adc  b                                           ; $666f: $88
	adc  b                                           ; $6670: $88
	adc  b                                           ; $6671: $88
	adc  b                                           ; $6672: $88
	adc  b                                           ; $6673: $88
	adc  b                                           ; $6674: $88
	adc  b                                           ; $6675: $88
	adc  b                                           ; $6676: $88
	adc  b                                           ; $6677: $88
	adc  b                                           ; $6678: $88
	adc  b                                           ; $6679: $88
	adc  b                                           ; $667a: $88
	adc  b                                           ; $667b: $88
	adc  b                                           ; $667c: $88
	adc  b                                           ; $667d: $88
	adc  b                                           ; $667e: $88
	adc  b                                           ; $667f: $88
	adc  b                                           ; $6680: $88
	adc  b                                           ; $6681: $88
	adc  b                                           ; $6682: $88
	adc  b                                           ; $6683: $88
	adc  b                                           ; $6684: $88
	adc  b                                           ; $6685: $88
	adc  b                                           ; $6686: $88
	adc  b                                           ; $6687: $88
	adc  b                                           ; $6688: $88
	adc  b                                           ; $6689: $88
	adc  b                                           ; $668a: $88
	adc  b                                           ; $668b: $88
	adc  b                                           ; $668c: $88
	adc  b                                           ; $668d: $88
	adc  b                                           ; $668e: $88
	adc  b                                           ; $668f: $88
	adc  b                                           ; $6690: $88
	adc  b                                           ; $6691: $88
	adc  b                                           ; $6692: $88
	adc  b                                           ; $6693: $88
	adc  b                                           ; $6694: $88
	adc  b                                           ; $6695: $88
	adc  b                                           ; $6696: $88
	adc  b                                           ; $6697: $88
	adc  b                                           ; $6698: $88
	adc  b                                           ; $6699: $88
	adc  b                                           ; $669a: $88
	adc  b                                           ; $669b: $88
	adc  b                                           ; $669c: $88
	adc  b                                           ; $669d: $88
	adc  b                                           ; $669e: $88
	adc  b                                           ; $669f: $88
	adc  b                                           ; $66a0: $88
	adc  b                                           ; $66a1: $88
	adc  b                                           ; $66a2: $88
	adc  b                                           ; $66a3: $88
	adc  b                                           ; $66a4: $88

Call_0df_66a5:
	adc  b                                           ; $66a5: $88
	adc  b                                           ; $66a6: $88
	adc  b                                           ; $66a7: $88
	adc  b                                           ; $66a8: $88
	adc  b                                           ; $66a9: $88
	adc  b                                           ; $66aa: $88
	adc  c                                           ; $66ab: $89
	ld   [hl], a                                     ; $66ac: $77
	ld   a, c                                        ; $66ad: $79
	adc  c                                           ; $66ae: $89
	adc  b                                           ; $66af: $88
	adc  b                                           ; $66b0: $88
	adc  b                                           ; $66b1: $88
	adc  b                                           ; $66b2: $88
	adc  b                                           ; $66b3: $88
	adc  b                                           ; $66b4: $88
	ld   a, b                                        ; $66b5: $78
	adc  b                                           ; $66b6: $88
	adc  c                                           ; $66b7: $89
	sbc  b                                           ; $66b8: $98
	ld   a, b                                        ; $66b9: $78
	adc  c                                           ; $66ba: $89
	sbc  b                                           ; $66bb: $98
	adc  b                                           ; $66bc: $88
	sbc  c                                           ; $66bd: $99
	add  [hl]                                        ; $66be: $86
	ld   l, b                                        ; $66bf: $68
	cp   d                                           ; $66c0: $ba
	ld   [hl], h                                     ; $66c1: $74
	ld   c, b                                        ; $66c2: $48
	cp   d                                           ; $66c3: $ba
	ld   [hl], h                                     ; $66c4: $74
	ld   e, c                                        ; $66c5: $59
	cp   e                                           ; $66c6: $bb
	add  [hl]                                        ; $66c7: $86
	ld   d, a                                        ; $66c8: $57
	xor  e                                           ; $66c9: $ab
	sub  a                                           ; $66ca: $97
	ld   h, a                                        ; $66cb: $67
	adc  d                                           ; $66cc: $8a
	sub  a                                           ; $66cd: $97
	ld   a, b                                        ; $66ce: $78
	xor  d                                           ; $66cf: $aa
	sub  [hl]                                        ; $66d0: $96
	ld   h, a                                        ; $66d1: $67
	sbc  c                                           ; $66d2: $99
	ld   [hl], a                                     ; $66d3: $77
	ld   a, b                                        ; $66d4: $78
	sbc  b                                           ; $66d5: $98
	halt                                             ; $66d6: $76
	ld   a, b                                        ; $66d7: $78
	sbc  c                                           ; $66d8: $99
	adc  b                                           ; $66d9: $88
	adc  b                                           ; $66da: $88
	adc  b                                           ; $66db: $88
	sbc  b                                           ; $66dc: $98
	sbc  b                                           ; $66dd: $98
	halt                                             ; $66de: $76
	ld   a, b                                        ; $66df: $78
	sbc  d                                           ; $66e0: $9a
	add  a                                           ; $66e1: $87
	ld   h, a                                        ; $66e2: $67
	adc  d                                           ; $66e3: $8a
	and  a                                           ; $66e4: $a7
	ld   d, l                                        ; $66e5: $55
	adc  d                                           ; $66e6: $8a
	cp   d                                           ; $66e7: $ba
	halt                                             ; $66e8: $76
	ld   a, c                                        ; $66e9: $79
	adc  b                                           ; $66ea: $88
	ld   [hl], a                                     ; $66eb: $77
	ld   a, b                                        ; $66ec: $78
	sbc  c                                           ; $66ed: $99
	halt                                             ; $66ee: $76
	ld   [hl], a                                     ; $66ef: $77
	sbc  b                                           ; $66f0: $98
	adc  b                                           ; $66f1: $88
	ld   a, b                                        ; $66f2: $78
	sbc  c                                           ; $66f3: $99
	sbc  b                                           ; $66f4: $98
	ld   [hl], a                                     ; $66f5: $77
	adc  c                                           ; $66f6: $89
	sub  a                                           ; $66f7: $97
	ld   [hl], a                                     ; $66f8: $77
	sbc  b                                           ; $66f9: $98
	adc  b                                           ; $66fa: $88
	ld   [hl], a                                     ; $66fb: $77
	ld   a, b                                        ; $66fc: $78
	add  a                                           ; $66fd: $87
	ld   a, d                                        ; $66fe: $7a
	xor  e                                           ; $66ff: $ab
	sub  a                                           ; $6700: $97
	ld   d, l                                        ; $6701: $55
	adc  d                                           ; $6702: $8a
	xor  b                                           ; $6703: $a8
	ld   h, l                                        ; $6704: $65
	ld   a, c                                        ; $6705: $79
	and  a                                           ; $6706: $a7
	ld   h, a                                        ; $6707: $67
	adc  c                                           ; $6708: $89
	adc  b                                           ; $6709: $88
	sbc  b                                           ; $670a: $98
	adc  c                                           ; $670b: $89
	adc  b                                           ; $670c: $88
	sbc  c                                           ; $670d: $99
	halt                                             ; $670e: $76
	adc  c                                           ; $670f: $89
	cp   d                                           ; $6710: $ba
	and  a                                           ; $6711: $a7
	ld   a, b                                        ; $6712: $78
	sbc  c                                           ; $6713: $99
	halt                                             ; $6714: $76
	ld   h, a                                        ; $6715: $67
	ld   a, c                                        ; $6716: $79
	cp   b                                           ; $6717: $b8
	ld   d, h                                        ; $6718: $54
	ld   l, c                                        ; $6719: $69
	cp   d                                           ; $671a: $ba
	ld   [hl], l                                     ; $671b: $75
	ld   a, d                                        ; $671c: $7a
	xor  d                                           ; $671d: $aa
	ld   [hl], a                                     ; $671e: $77
	ld   a, b                                        ; $671f: $78
	sbc  d                                           ; $6720: $9a
	halt                                             ; $6721: $76
	ld   a, b                                        ; $6722: $78
	xor  c                                           ; $6723: $a9
	adc  b                                           ; $6724: $88
	add  [hl]                                        ; $6725: $86
	ld   a, b                                        ; $6726: $78
	sbc  d                                           ; $6727: $9a
	add  [hl]                                        ; $6728: $86
	adc  c                                           ; $6729: $89
	ld   [hl], a                                     ; $672a: $77
	adc  d                                           ; $672b: $8a
	cp   b                                           ; $672c: $b8
	ld   h, [hl]                                     ; $672d: $66
	sbc  d                                           ; $672e: $9a
	and  a                                           ; $672f: $a7
	halt                                             ; $6730: $76
	adc  b                                           ; $6731: $88
	sbc  c                                           ; $6732: $99
	ld   [hl], a                                     ; $6733: $77
	ld   [hl], a                                     ; $6734: $77
	sbc  c                                           ; $6735: $99
	add  a                                           ; $6736: $87
	ld   h, a                                        ; $6737: $67
	sbc  d                                           ; $6738: $9a
	sbc  c                                           ; $6739: $99
	halt                                             ; $673a: $76
	ld   a, c                                        ; $673b: $79
	cp   b                                           ; $673c: $b8
	ld   h, [hl]                                     ; $673d: $66
	sbc  e                                           ; $673e: $9b
	cp   b                                           ; $673f: $b8
	ld   h, l                                        ; $6740: $65
	ld   l, b                                        ; $6741: $68
	sbc  d                                           ; $6742: $9a
	sbc  c                                           ; $6743: $99
	halt                                             ; $6744: $76
	adc  c                                           ; $6745: $89
	xor  c                                           ; $6746: $a9
	ld   h, l                                        ; $6747: $65
	ld   a, c                                        ; $6748: $79
	xor  b                                           ; $6749: $a8
	ld   h, l                                        ; $674a: $65
	ld   a, d                                        ; $674b: $7a
	xor  d                                           ; $674c: $aa
	ld   [hl], l                                     ; $674d: $75
	ld   e, b                                        ; $674e: $58
	xor  e                                           ; $674f: $ab
	cp   b                                           ; $6750: $b8
	ld   h, a                                        ; $6751: $67
	ld   a, b                                        ; $6752: $78
	ld   [hl], a                                     ; $6753: $77
	sbc  b                                           ; $6754: $98
	ld   [hl], a                                     ; $6755: $77
	ld   [hl], a                                     ; $6756: $77
	sbc  c                                           ; $6757: $99
	sbc  b                                           ; $6758: $98
	ld   [hl], a                                     ; $6759: $77
	ld   a, b                                        ; $675a: $78
	sbc  b                                           ; $675b: $98
	ld   a, b                                        ; $675c: $78
	adc  c                                           ; $675d: $89
	cp   d                                           ; $675e: $ba
	add  [hl]                                        ; $675f: $86
	ld   h, a                                        ; $6760: $67
	xor  d                                           ; $6761: $aa
	sub  a                                           ; $6762: $97
	ld   d, [hl]                                     ; $6763: $56
	ld   a, c                                        ; $6764: $79
	adc  c                                           ; $6765: $89
	adc  b                                           ; $6766: $88
	halt                                             ; $6767: $76
	ld   a, d                                        ; $6768: $7a
	xor  c                                           ; $6769: $a9
	add  a                                           ; $676a: $87
	ld   [hl], a                                     ; $676b: $77
	ld   [hl], a                                     ; $676c: $77
	sbc  d                                           ; $676d: $9a
	sub  [hl]                                        ; $676e: $96
	ld   d, a                                        ; $676f: $57
	add  a                                           ; $6770: $87
	ld   [hl], a                                     ; $6771: $77
	ld   l, c                                        ; $6772: $69
	xor  d                                           ; $6773: $aa
	and  a                                           ; $6774: $a7

Jump_0df_6775:
	ld   h, [hl]                                     ; $6775: $66
	ld   a, d                                        ; $6776: $7a

Jump_0df_6777:
	cp   e                                           ; $6777: $bb
	halt                                             ; $6778: $76
	ld   d, [hl]                                     ; $6779: $56
	sbc  e                                           ; $677a: $9b
	xor  b                                           ; $677b: $a8
	ld   d, l                                        ; $677c: $55
	ld   a, d                                        ; $677d: $7a
	ret                                              ; $677e: $c9


	ld   d, e                                        ; $677f: $53
	ld   e, b                                        ; $6780: $58
	cp   h                                           ; $6781: $bc
	add  l                                           ; $6782: $85
	ld   d, [hl]                                     ; $6783: $56
	xor  e                                           ; $6784: $ab
	or   a                                           ; $6785: $b7
	ld   d, l                                        ; $6786: $55
	adc  h                                           ; $6787: $8c
	cp   c                                           ; $6788: $b9
	add  [hl]                                        ; $6789: $86
	ld   h, [hl]                                     ; $678a: $66
	adc  c                                           ; $678b: $89
	sbc  b                                           ; $678c: $98
	ld   h, [hl]                                     ; $678d: $66
	ld   a, c                                        ; $678e: $79
	xor  d                                           ; $678f: $aa
	and  [hl]                                        ; $6790: $a6
	ld   d, h                                        ; $6791: $54
	sbc  l                                           ; $6792: $9d
	jp   c, $5853                                    ; $6793: $da $53 $58

	call z, Call_0df_65b8                            ; $6796: $cc $b8 $65
	ld   d, a                                        ; $6799: $57
	xor  d                                           ; $679a: $aa
	and  a                                           ; $679b: $a7
	ld   h, [hl]                                     ; $679c: $66
	ld   a, c                                        ; $679d: $79
	cp   b                                           ; $679e: $b8
	ld   h, a                                        ; $679f: $67
	xor  e                                           ; $67a0: $ab
	and  [hl]                                        ; $67a1: $a6
	ld   b, [hl]                                     ; $67a2: $46
	adc  e                                           ; $67a3: $8b
	cp   b                                           ; $67a4: $b8
	ld   h, l                                        ; $67a5: $65
	ld   l, b                                        ; $67a6: $68
	cp   d                                           ; $67a7: $ba
	sub  a                                           ; $67a8: $97
	ld   h, [hl]                                     ; $67a9: $66
	ld   [hl], a                                     ; $67aa: $77
	adc  b                                           ; $67ab: $88
	sbc  e                                           ; $67ac: $9b
	xor  b                                           ; $67ad: $a8
	ld   h, [hl]                                     ; $67ae: $66
	ld   l, c                                        ; $67af: $69
	cp   d                                           ; $67b0: $ba
	add  a                                           ; $67b1: $87
	ld   h, a                                        ; $67b2: $67
	ld   [hl], a                                     ; $67b3: $77
	add  a                                           ; $67b4: $87
	adc  c                                           ; $67b5: $89
	xor  c                                           ; $67b6: $a9
	ld   [hl], a                                     ; $67b7: $77
	ld   a, b                                        ; $67b8: $78
	adc  c                                           ; $67b9: $89

Call_0df_67ba:
	sub  a                                           ; $67ba: $97
	ld   h, a                                        ; $67bb: $67
	sbc  d                                           ; $67bc: $9a
	and  a                                           ; $67bd: $a7
	ld   h, a                                        ; $67be: $67
	adc  d                                           ; $67bf: $8a
	add  [hl]                                        ; $67c0: $86
	ld   a, c                                        ; $67c1: $79
	xor  d                                           ; $67c2: $aa
	add  l                                           ; $67c3: $85
	ld   l, b                                        ; $67c4: $68
	xor  e                                           ; $67c5: $ab
	add  a                                           ; $67c6: $87
	ld   d, [hl]                                     ; $67c7: $56
	adc  d                                           ; $67c8: $8a
	xor  c                                           ; $67c9: $a9
	halt                                             ; $67ca: $76
	ld   a, b                                        ; $67cb: $78
	sbc  c                                           ; $67cc: $99
	sub  a                                           ; $67cd: $97
	ld   a, b                                        ; $67ce: $78
	sbc  c                                           ; $67cf: $99
	sbc  b                                           ; $67d0: $98
	ld   a, b                                        ; $67d1: $78
	sbc  c                                           ; $67d2: $99
	sbc  b                                           ; $67d3: $98
	ld   [hl], a                                     ; $67d4: $77
	ld   [hl], a                                     ; $67d5: $77
	adc  c                                           ; $67d6: $89
	sbc  b                                           ; $67d7: $98
	adc  b                                           ; $67d8: $88
	sbc  c                                           ; $67d9: $99
	adc  b                                           ; $67da: $88
	ld   a, b                                        ; $67db: $78
	sbc  c                                           ; $67dc: $99
	sbc  b                                           ; $67dd: $98
	halt                                             ; $67de: $76
	ld   l, b                                        ; $67df: $68
	sbc  d                                           ; $67e0: $9a
	sub  a                                           ; $67e1: $97
	ld   a, c                                        ; $67e2: $79
	sbc  c                                           ; $67e3: $99
	add  a                                           ; $67e4: $87
	ld   l, b                                        ; $67e5: $68
	sbc  c                                           ; $67e6: $99
	sbc  b                                           ; $67e7: $98
	add  a                                           ; $67e8: $87
	ld   h, a                                        ; $67e9: $67
	sbc  c                                           ; $67ea: $99
	sbc  b                                           ; $67eb: $98
	sub  a                                           ; $67ec: $97
	ld   [hl], a                                     ; $67ed: $77
	ld   a, c                                        ; $67ee: $79
	sbc  c                                           ; $67ef: $99
	add  a                                           ; $67f0: $87
	ld   a, c                                        ; $67f1: $79
	sub  a                                           ; $67f2: $97
	ld   a, b                                        ; $67f3: $78
	sbc  b                                           ; $67f4: $98
	ld   [hl], a                                     ; $67f5: $77
	ld   [hl], a                                     ; $67f6: $77
	adc  b                                           ; $67f7: $88
	sbc  d                                           ; $67f8: $9a
	sbc  b                                           ; $67f9: $98
	halt                                             ; $67fa: $76
	ld   h, a                                        ; $67fb: $67
	sbc  d                                           ; $67fc: $9a
	sbc  b                                           ; $67fd: $98
	halt                                             ; $67fe: $76
	ld   h, a                                        ; $67ff: $67
	sbc  d                                           ; $6800: $9a
	xor  c                                           ; $6801: $a9
	ld   [hl], a                                     ; $6802: $77
	ld   [hl], a                                     ; $6803: $77
	adc  c                                           ; $6804: $89
	sbc  b                                           ; $6805: $98
	sbc  b                                           ; $6806: $98
	ld   [hl], a                                     ; $6807: $77
	ld   [hl], a                                     ; $6808: $77
	adc  c                                           ; $6809: $89
	add  a                                           ; $680a: $87
	ld   a, b                                        ; $680b: $78
	adc  b                                           ; $680c: $88
	ld   [hl], a                                     ; $680d: $77
	ld   a, b                                        ; $680e: $78
	add  a                                           ; $680f: $87
	ld   [hl], a                                     ; $6810: $77
	adc  c                                           ; $6811: $89
	xor  c                                           ; $6812: $a9
	halt                                             ; $6813: $76
	ld   a, b                                        ; $6814: $78
	sbc  c                                           ; $6815: $99
	add  a                                           ; $6816: $87
	ld   h, l                                        ; $6817: $65
	ld   l, b                                        ; $6818: $68
	sbc  d                                           ; $6819: $9a
	add  a                                           ; $681a: $87
	ld   [hl], a                                     ; $681b: $77
	ld   [hl], a                                     ; $681c: $77
	ld   a, b                                        ; $681d: $78
	adc  b                                           ; $681e: $88
	adc  b                                           ; $681f: $88
	ld   a, b                                        ; $6820: $78
	adc  b                                           ; $6821: $88
	ld   [hl], a                                     ; $6822: $77
	ld   a, c                                        ; $6823: $79
	sbc  c                                           ; $6824: $99
	halt                                             ; $6825: $76
	ld   d, [hl]                                     ; $6826: $56
	sbc  e                                           ; $6827: $9b
	jp   z, Jump_0df_4575                            ; $6828: $ca $75 $45

	adc  e                                           ; $682b: $8b
	xor  d                                           ; $682c: $aa
	halt                                             ; $682d: $76
	ld   d, [hl]                                     ; $682e: $56
	ld   a, d                                        ; $682f: $7a
	xor  d                                           ; $6830: $aa
	add  [hl]                                        ; $6831: $86
	ld   h, a                                        ; $6832: $67
	adc  d                                           ; $6833: $8a
	sbc  b                                           ; $6834: $98
	ld   h, l                                        ; $6835: $65
	ld   l, b                                        ; $6836: $68
	xor  d                                           ; $6837: $aa
	xor  c                                           ; $6838: $a9
	halt                                             ; $6839: $76
	ld   h, a                                        ; $683a: $67
	sbc  c                                           ; $683b: $99
	adc  b                                           ; $683c: $88
	ld   [hl], a                                     ; $683d: $77
	ld   a, b                                        ; $683e: $78
	sub  a                                           ; $683f: $97
	ld   [hl], a                                     ; $6840: $77
	adc  c                                           ; $6841: $89
	adc  c                                           ; $6842: $89
	halt                                             ; $6843: $76
	ld   h, a                                        ; $6844: $67
	ld   a, d                                        ; $6845: $7a
	cp   d                                           ; $6846: $ba
	sub  [hl]                                        ; $6847: $96
	ld   d, [hl]                                     ; $6848: $56
	ld   a, d                                        ; $6849: $7a
	xor  d                                           ; $684a: $aa
	add  a                                           ; $684b: $87
	halt                                             ; $684c: $76
	ld   h, [hl]                                     ; $684d: $66
	ld   a, d                                        ; $684e: $7a
	cp   e                                           ; $684f: $bb
	sub  [hl]                                        ; $6850: $96
	ld   d, l                                        ; $6851: $55
	ld   l, b                                        ; $6852: $68
	sbc  c                                           ; $6853: $99
	sbc  c                                           ; $6854: $99
	halt                                             ; $6855: $76
	ld   [hl], a                                     ; $6856: $77
	sbc  d                                           ; $6857: $9a
	xor  b                                           ; $6858: $a8
	halt                                             ; $6859: $76
	ld   h, [hl]                                     ; $685a: $66
	ld   h, a                                        ; $685b: $67
	sbc  e                                           ; $685c: $9b
	and  a                                           ; $685d: $a7
	ld   d, h                                        ; $685e: $54
	ld   l, b                                        ; $685f: $68
	sbc  c                                           ; $6860: $99
	add  a                                           ; $6861: $87
	sbc  b                                           ; $6862: $98
	adc  b                                           ; $6863: $88
	ld   [hl], a                                     ; $6864: $77
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	adc  b                                           ; $6867: $88
	ld   [hl], a                                     ; $6868: $77
	ld   a, b                                        ; $6869: $78
	sbc  c                                           ; $686a: $99
	add  a                                           ; $686b: $87
	ld   h, [hl]                                     ; $686c: $66
	ld   a, b                                        ; $686d: $78
	sbc  c                                           ; $686e: $99
	adc  b                                           ; $686f: $88
	ld   [hl], a                                     ; $6870: $77
	ld   a, b                                        ; $6871: $78
	adc  b                                           ; $6872: $88
	adc  b                                           ; $6873: $88
	ld   [hl], a                                     ; $6874: $77
	ld   a, b                                        ; $6875: $78
	adc  c                                           ; $6876: $89
	sbc  b                                           ; $6877: $98
	add  a                                           ; $6878: $87
	ld   h, [hl]                                     ; $6879: $66
	ld   a, c                                        ; $687a: $79
	adc  b                                           ; $687b: $88
	ld   h, [hl]                                     ; $687c: $66
	adc  d                                           ; $687d: $8a
	sbc  c                                           ; $687e: $99
	halt                                             ; $687f: $76
	ld   a, b                                        ; $6880: $78
	adc  b                                           ; $6881: $88
	add  a                                           ; $6882: $87
	adc  b                                           ; $6883: $88
	sbc  d                                           ; $6884: $9a
	sbc  b                                           ; $6885: $98
	ld   [hl], a                                     ; $6886: $77
	ld   a, b                                        ; $6887: $78
	adc  b                                           ; $6888: $88
	adc  b                                           ; $6889: $88
	add  a                                           ; $688a: $87
	sbc  c                                           ; $688b: $99
	sbc  b                                           ; $688c: $98
	adc  c                                           ; $688d: $89
	sbc  c                                           ; $688e: $99
	ld   [hl], a                                     ; $688f: $77
	ld   h, a                                        ; $6890: $67
	adc  b                                           ; $6891: $88
	ld   [hl], a                                     ; $6892: $77
	adc  d                                           ; $6893: $8a
	res  4, a                                        ; $6894: $cb $a7
	ld   d, l                                        ; $6896: $55
	ld   a, e                                        ; $6897: $7b
	xor  d                                           ; $6898: $aa
	ld   h, h                                        ; $6899: $64
	ld   b, [hl]                                     ; $689a: $46
	sbc  d                                           ; $689b: $9a
	sbc  c                                           ; $689c: $99
	ld   [hl], a                                     ; $689d: $77
	ld   [hl], a                                     ; $689e: $77
	sbc  d                                           ; $689f: $9a
	xor  d                                           ; $68a0: $aa
	sub  [hl]                                        ; $68a1: $96
	ld   h, [hl]                                     ; $68a2: $66
	adc  d                                           ; $68a3: $8a
	cp   d                                           ; $68a4: $ba
	sub  [hl]                                        ; $68a5: $96
	ld   d, h                                        ; $68a6: $54
	ld   d, a                                        ; $68a7: $57
	sbc  e                                           ; $68a8: $9b
	cp   c                                           ; $68a9: $b9
	ld   [hl], l                                     ; $68aa: $75
	ld   l, b                                        ; $68ab: $68
	cp   e                                           ; $68ac: $bb
	cp   c                                           ; $68ad: $b9
	halt                                             ; $68ae: $76
	ld   d, a                                        ; $68af: $57
	sbc  d                                           ; $68b0: $9a
	sbc  b                                           ; $68b1: $98
	halt                                             ; $68b2: $76
	ld   a, b                                        ; $68b3: $78
	sbc  d                                           ; $68b4: $9a
	sub  a                                           ; $68b5: $97
	ld   [hl], a                                     ; $68b6: $77
	adc  c                                           ; $68b7: $89
	xor  c                                           ; $68b8: $a9
	adc  b                                           ; $68b9: $88
	ld   a, b                                        ; $68ba: $78
	add  a                                           ; $68bb: $87
	ld   [hl], a                                     ; $68bc: $77
	sbc  e                                           ; $68bd: $9b
	jp   z, Jump_0df_5686                            ; $68be: $ca $86 $56

	sbc  e                                           ; $68c1: $9b
	cp   e                                           ; $68c2: $bb
	add  [hl]                                        ; $68c3: $86
	ld   d, [hl]                                     ; $68c4: $56
	ld   d, h                                        ; $68c5: $54
	ld   e, b                                        ; $68c6: $58
	xor  a                                           ; $68c7: $af
	rst  $38                                         ; $68c8: $ff
	add  $11                                         ; $68c9: $c6 $11
	adc  [hl]                                        ; $68cb: $8e
	rst  $38                                         ; $68cc: $ff
	call nc, $1511                                   ; $68cd: $d4 $11 $15
	adc  [hl]                                        ; $68d0: $8e
	cp   c                                           ; $68d1: $b9
	halt                                             ; $68d2: $76
	ld   h, [hl]                                     ; $68d3: $66
	ld   a, c                                        ; $68d4: $79
	jp   z, $a9a9                                    ; $68d5: $ca $a9 $a9

	xor  d                                           ; $68d8: $aa
	xor  h                                           ; $68d9: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68da: $cf
	cp   $71                                         ; $68db: $fe $71
	ld   de, $ad13                                   ; $68dd: $11 $13 $ad
	rst  ToBoot                                         ; $68e0: $c7
	ld   sp, $ff4a                                   ; $68e1: $31 $4a $ff
	db   $eb                                         ; $68e4: $eb
	add  [hl]                                        ; $68e5: $86
	ld   d, h                                        ; $68e6: $54
	ld   d, a                                        ; $68e7: $57
	ld   a, b                                        ; $68e8: $78
	xor  d                                           ; $68e9: $aa
	add  [hl]                                        ; $68ea: $86
	ld   l, b                                        ; $68eb: $68
	cp   d                                           ; $68ec: $ba
	add  e                                           ; $68ed: $83
	inc  b                                           ; $68ee: $04
	xor  l                                           ; $68ef: $ad
	ret  z                                           ; $68f0: $c8

	ld   hl, $9c04                                   ; $68f1: $21 $04 $9c
	call z, $11c9                                    ; $68f4: $cc $c9 $11
	ld   a, [de]                                     ; $68f7: $1a
	db   $eb                                         ; $68f8: $eb
	or   a                                           ; $68f9: $b7
	ld   [hl-], a                                    ; $68fa: $32
	ld   c, l                                        ; $68fb: $4d
	rst  $38                                         ; $68fc: $ff
	jp   $9d14                                       ; $68fd: $c3 $14 $9d


	jp   hl                                          ; $6900: $e9


	ld   hl, $7e11                                   ; $6901: $21 $11 $7e
	rst  $38                                         ; $6904: $ff
	ld   hl, sp+$24                                  ; $6905: $f8 $24
	sbc  [hl]                                        ; $6907: $9e
	rst  $38                                         ; $6908: $ff
	and  c                                           ; $6909: $a1
	ld   de, $9838                                   ; $690a: $11 $38 $98
	ld   h, a                                        ; $690d: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $690e: $cf
	rst  $38                                         ; $690f: $ff
	rst  $38                                         ; $6910: $ff
	rst  $10                                         ; $6911: $d7
	ld   hl, $1111                                   ; $6912: $21 $11 $11
	ld   l, c                                        ; $6915: $69
	ld   hl, $ff18                                   ; $6916: $21 $18 $ff
	rst  $38                                         ; $6919: $ff
	ei                                               ; $691a: $fb
	adc  d                                           ; $691b: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $691c: $cf
	pop  de                                          ; $691d: $d1
	ld   de, $bb17                                   ; $691e: $11 $17 $bb
	ld   hl, $9f65                                   ; $6921: $21 $65 $9f
	rst  $38                                         ; $6924: $ff
	sub  $77                                         ; $6925: $d6 $77
	ld   [hl], a                                     ; $6927: $77
	ld   e, e                                        ; $6928: $5b
	ld   [hl], h                                     ; $6929: $74
	ld   d, d                                        ; $692a: $52
	ld   de, $7636                                   ; $692b: $11 $36 $76
	add  [hl]                                        ; $692e: $86
	ld   d, a                                        ; $692f: $57
	ld   a, l                                        ; $6930: $7d
	db   $eb                                         ; $6931: $eb
	add  e                                           ; $6932: $83
	ld   hl, $7627                                   ; $6933: $21 $27 $76
	ld   d, c                                        ; $6936: $51
	ld   de, $9a14                                   ; $6937: $11 $14 $9a
	ld   [hl], l                                     ; $693a: $75
	scf                                              ; $693b: $37
	xor  a                                           ; $693c: $af
	rst  $38                                         ; $693d: $ff
	rst  $38                                         ; $693e: $ff
	rst  $38                                         ; $693f: $ff
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	db   $ec                                         ; $6942: $ec
	call z, $dbde                                    ; $6943: $cc $de $db
	ld   h, e                                        ; $6946: $63
	ld   de, $2123                                   ; $6947: $11 $23 $21
	ld   de, $1111                                   ; $694a: $11 $11 $11
	ld   de, $1111                                   ; $694d: $11 $11 $11
	ld   e, a                                        ; $6950: $5f
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	rst  $38                                         ; $6954: $ff
	rst  $38                                         ; $6955: $ff
	rst  $38                                         ; $6956: $ff
	rst  $38                                         ; $6957: $ff
	ld   [hl], h                                     ; $6958: $74
	ld   d, d                                        ; $6959: $52
	ld   b, [hl]                                     ; $695a: $46
	sbc  c                                           ; $695b: $99
	res  2, l                                        ; $695c: $cb $95
	ld   de, $1111                                   ; $695e: $11 $11 $11
	ld   de, $1111                                   ; $6961: $11 $11 $11
	ld   de, $ffef                                   ; $6964: $11 $ef $ff
	rst  $38                                         ; $6967: $ff
	rst  $38                                         ; $6968: $ff
	rst  $38                                         ; $6969: $ff
	rst  $38                                         ; $696a: $ff
	rst  $38                                         ; $696b: $ff
	sub  l                                           ; $696c: $95
	ld   de, $bc26                                   ; $696d: $11 $26 $bc
	rst  $28                                         ; $6970: $ef
	db   $fc                                         ; $6971: $fc
	add  l                                           ; $6972: $85
	ld   de, $1111                                   ; $6973: $11 $11 $11
	ld   de, $1111                                   ; $6976: $11 $11 $11
	rra                                              ; $6979: $1f
	rst  $38                                         ; $697a: $ff
	rst  $38                                         ; $697b: $ff
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	ld   sp, hl                                      ; $6980: $f9
	ld   d, e                                        ; $6981: $53
	ld   e, d                                        ; $6982: $5a
	rst  $38                                         ; $6983: $ff
	rst  $38                                         ; $6984: $ff
	cp   $83                                         ; $6985: $fe $83
	ld   de, $1111                                   ; $6987: $11 $11 $11
	ld   de, $1111                                   ; $698a: $11 $11 $11
	dec  de                                          ; $698d: $1b
	rst  $38                                         ; $698e: $ff
	rst  $38                                         ; $698f: $ff
	rst  $38                                         ; $6990: $ff
	rst  $38                                         ; $6991: $ff
	rst  $38                                         ; $6992: $ff
	rst  $38                                         ; $6993: $ff
	cp   $ac                                         ; $6994: $fe $ac

Jump_0df_6996:
	adc  [hl]                                        ; $6996: $8e
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	ei                                               ; $6999: $fb
	ld   d, c                                        ; $699a: $51
	ld   de, $1111                                   ; $699b: $11 $11 $11
	ld   de, $1111                                   ; $699e: $11 $11 $11
	dec  e                                           ; $69a1: $1d
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	rst  $38                                         ; $69a5: $ff
	rst  $10                                         ; $69a6: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69a7: $cf
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	call c, $ffff                                    ; $69aa: $dc $ff $ff
	ld   a, [$1131]                                  ; $69ad: $fa $31 $11
	ld   de, $1111                                   ; $69b0: $11 $11 $11
	ld   de, $1b11                                   ; $69b3: $11 $11 $1b
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	rst  $20                                         ; $69ba: $e7
	rst  JumpTable                                         ; $69bb: $df
	rst  $38                                         ; $69bc: $ff
	cp   $eb                                         ; $69bd: $fe $eb
	rst  $28                                         ; $69bf: $ef
	rst  $38                                         ; $69c0: $ff
	ld   sp, hl                                      ; $69c1: $f9
	ld   hl, $1111                                   ; $69c2: $21 $11 $11
	ld   de, $1111                                   ; $69c5: $11 $11 $11
	ld   de, $ff1b                                   ; $69c8: $11 $1b $ff
	rst  $38                                         ; $69cb: $ff
	rst  $38                                         ; $69cc: $ff
	rst  $38                                         ; $69cd: $ff
	reti                                             ; $69ce: $d9


	cp   a                                           ; $69cf: $bf
	rst  $38                                         ; $69d0: $ff
	rst  $38                                         ; $69d1: $ff
	sbc  e                                           ; $69d2: $9b
	rst  $28                                         ; $69d3: $ef
	rst  $38                                         ; $69d4: $ff
	ei                                               ; $69d5: $fb
	ld   de, $1111                                   ; $69d6: $11 $11 $11
	ld   de, $1111                                   ; $69d9: $11 $11 $11
	ld   de, $ff3e                                   ; $69dc: $11 $3e $ff
	rst  $38                                         ; $69df: $ff
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	or   a                                           ; $69e2: $b7
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	rst  $38                                         ; $69e5: $ff
	db   $eb                                         ; $69e6: $eb
	rst  $28                                         ; $69e7: $ef
	rst  $38                                         ; $69e8: $ff
	ei                                               ; $69e9: $fb
	ld   de, $1111                                   ; $69ea: $11 $11 $11
	ld   de, $1111                                   ; $69ed: $11 $11 $11
	ld   de, $ff5f                                   ; $69f0: $11 $5f $ff
	rst  $38                                         ; $69f3: $ff
	rst  $38                                         ; $69f4: $ff
	rst  $38                                         ; $69f5: $ff
	db   $db                                         ; $69f6: $db
	rst  $28                                         ; $69f7: $ef
	rst  $38                                         ; $69f8: $ff
	cp   $dd                                         ; $69f9: $fe $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69fb: $cf
	rst  $38                                         ; $69fc: $ff
	ei                                               ; $69fd: $fb
	ld   sp, $1111                                   ; $69fe: $31 $11 $11
	ld   de, $1111                                   ; $6a01: $11 $11 $11
	ld   de, $ff7f                                   ; $6a04: $11 $7f $ff
	rst  $38                                         ; $6a07: $ff
	rst  $38                                         ; $6a08: $ff
	rst  $38                                         ; $6a09: $ff
	call z, $ffff                                    ; $6a0a: $cc $ff $ff
	db   $ed                                         ; $6a0d: $ed
	xor  d                                           ; $6a0e: $aa
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	db   $fd                                         ; $6a11: $fd
	ld   h, c                                        ; $6a12: $61
	ld   de, $1111                                   ; $6a13: $11 $11 $11
	ld   de, $1111                                   ; $6a16: $11 $11 $11
	ld   e, a                                        ; $6a19: $5f
	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	rst  $38                                         ; $6a1d: $ff
	db   $fc                                         ; $6a1e: $fc
	rst  $38                                         ; $6a1f: $ff
	rst  $38                                         ; $6a20: $ff
	jp   c, $af88                                    ; $6a21: $da $88 $af

	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	add  c                                           ; $6a26: $81
	ld   de, $1111                                   ; $6a27: $11 $11 $11
	ld   de, $1111                                   ; $6a2a: $11 $11 $11
	inc  e                                           ; $6a2d: $1c
	rst  $38                                         ; $6a2e: $ff
	rst  $38                                         ; $6a2f: $ff
	rst  $38                                         ; $6a30: $ff
	rst  $38                                         ; $6a31: $ff
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	rst  $38                                         ; $6a34: $ff
	ret  z                                           ; $6a35: $c8

	ld   b, e                                        ; $6a36: $43
	ld   l, h                                        ; $6a37: $6c
	rst  $38                                         ; $6a38: $ff
	rst  $38                                         ; $6a39: $ff
	sub  $11                                         ; $6a3a: $d6 $11
	ld   de, $1111                                   ; $6a3c: $11 $11 $11
	ld   de, $1111                                   ; $6a3f: $11 $11 $11
	rst  $38                                         ; $6a42: $ff
	rst  $38                                         ; $6a43: $ff
	rst  $38                                         ; $6a44: $ff
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	rst  $38                                         ; $6a48: $ff
	rst  $10                                         ; $6a49: $d7
	ld   hl, $cf16                                   ; $6a4a: $21 $16 $cf
	rst  $38                                         ; $6a4d: $ff
	jp   hl                                          ; $6a4e: $e9


	ld   d, c                                        ; $6a4f: $51
	ld   de, $1111                                   ; $6a50: $11 $11 $11
	ld   de, $1111                                   ; $6a53: $11 $11 $11
	inc  d                                           ; $6a56: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a57: $cf
	rst  $38                                         ; $6a58: $ff
	rst  $38                                         ; $6a59: $ff
	rst  $38                                         ; $6a5a: $ff
	rst  $38                                         ; $6a5b: $ff
	rst  $38                                         ; $6a5c: $ff
	rst  $38                                         ; $6a5d: $ff
	jp   z, Jump_0df_6777                            ; $6a5e: $ca $77 $67

	adc  d                                           ; $6a61: $8a
	call z, Call_0df_74c9                            ; $6a62: $cc $c9 $74
	ld   hl, $1111                                   ; $6a65: $21 $11 $11
	ld   de, $1111                                   ; $6a68: $11 $11 $11
	ld   de, $5811                                   ; $6a6b: $11 $11 $58
	cp   l                                           ; $6a6e: $bd
	rst  $28                                         ; $6a6f: $ef
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	cp   $df                                         ; $6a74: $fe $df
	rst  $38                                         ; $6a76: $ff
	db   $fd                                         ; $6a77: $fd
	sub  l                                           ; $6a78: $95
	ld   b, h                                        ; $6a79: $44
	ld   d, [hl]                                     ; $6a7a: $56
	ld   h, a                                        ; $6a7b: $67
	ld   d, e                                        ; $6a7c: $53
	ld   de, $1111                                   ; $6a7d: $11 $11 $11
	ld   [hl+], a                                    ; $6a80: $22
	ld   de, $1111                                   ; $6a81: $11 $11 $11
	ld   [de], a                                     ; $6a84: $12
	ld   d, [hl]                                     ; $6a85: $56
	adc  c                                           ; $6a86: $89
	sbc  e                                           ; $6a87: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a88: $cf
	rst  $38                                         ; $6a89: $ff
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	cp   $fe                                         ; $6a8c: $fe $fe
	rst  $38                                         ; $6a8e: $ff
	cp   $cb                                         ; $6a8f: $fe $cb
	sbc  b                                           ; $6a91: $98
	ld   [hl], a                                     ; $6a92: $77
	ld   [hl], a                                     ; $6a93: $77
	halt                                             ; $6a94: $76
	ld   d, h                                        ; $6a95: $54
	ld   [hl-], a                                    ; $6a96: $32
	ld   [hl+], a                                    ; $6a97: $22
	inc  [hl]                                        ; $6a98: $34
	ld   b, l                                        ; $6a99: $45
	ld   d, l                                        ; $6a9a: $55
	ld   d, l                                        ; $6a9b: $55
	ld   h, l                                        ; $6a9c: $65
	ld   h, [hl]                                     ; $6a9d: $66
	ld   h, [hl]                                     ; $6a9e: $66
	ld   h, [hl]                                     ; $6a9f: $66
	ld   h, [hl]                                     ; $6aa0: $66
	ld   h, [hl]                                     ; $6aa1: $66
	ld   h, a                                        ; $6aa2: $67
	ld   a, b                                        ; $6aa3: $78
	sbc  c                                           ; $6aa4: $99
	cp   e                                           ; $6aa5: $bb
	call z, $cdcd                                    ; $6aa6: $cc $cd $cd
	db   $dd                                         ; $6aa9: $dd
	call z, $bacb                                    ; $6aaa: $cc $cb $ba
	xor  c                                           ; $6aad: $a9
	sbc  c                                           ; $6aae: $99
	sbc  b                                           ; $6aaf: $98
	adc  b                                           ; $6ab0: $88
	ld   [hl], a                                     ; $6ab1: $77
	ld   h, [hl]                                     ; $6ab2: $66
	ld   h, [hl]                                     ; $6ab3: $66
	ld   h, [hl]                                     ; $6ab4: $66
	ld   h, l                                        ; $6ab5: $65
	ld   h, l                                        ; $6ab6: $65
	ld   h, [hl]                                     ; $6ab7: $66
	ld   h, [hl]                                     ; $6ab8: $66
	ld   h, [hl]                                     ; $6ab9: $66
	ld   h, a                                        ; $6aba: $67
	ld   [hl], a                                     ; $6abb: $77
	ld   [hl], a                                     ; $6abc: $77
	ld   [hl], a                                     ; $6abd: $77
	halt                                             ; $6abe: $76
	ld   [hl], a                                     ; $6abf: $77
	ld   [hl], a                                     ; $6ac0: $77
	adc  b                                           ; $6ac1: $88
	sbc  c                                           ; $6ac2: $99
	xor  d                                           ; $6ac3: $aa
	xor  d                                           ; $6ac4: $aa
	xor  d                                           ; $6ac5: $aa
	sbc  c                                           ; $6ac6: $99
	xor  c                                           ; $6ac7: $a9
	sbc  b                                           ; $6ac8: $98
	adc  b                                           ; $6ac9: $88
	add  a                                           ; $6aca: $87
	ld   [hl], a                                     ; $6acb: $77
	ld   [hl], a                                     ; $6acc: $77
	ld   [hl], a                                     ; $6acd: $77
	ld   [hl], a                                     ; $6ace: $77
	ld   [hl], a                                     ; $6acf: $77
	ld   [hl], a                                     ; $6ad0: $77
	ld   [hl], a                                     ; $6ad1: $77
	ld   [hl], a                                     ; $6ad2: $77
	ld   [hl], a                                     ; $6ad3: $77
	ld   a, b                                        ; $6ad4: $78
	adc  c                                           ; $6ad5: $89
	adc  c                                           ; $6ad6: $89
	sbc  c                                           ; $6ad7: $99
	sbc  c                                           ; $6ad8: $99
	sbc  c                                           ; $6ad9: $99
	sbc  b                                           ; $6ada: $98
	sbc  b                                           ; $6adb: $98
	add  a                                           ; $6adc: $87
	ld   [hl], a                                     ; $6add: $77
	ld   [hl], a                                     ; $6ade: $77
	ld   [hl], a                                     ; $6adf: $77
	ld   [hl], a                                     ; $6ae0: $77
	ld   [hl], a                                     ; $6ae1: $77
	ld   [hl], a                                     ; $6ae2: $77
	ld   [hl], a                                     ; $6ae3: $77
	ld   [hl], a                                     ; $6ae4: $77
	halt                                             ; $6ae5: $76
	ld   h, [hl]                                     ; $6ae6: $66
	ld   h, a                                        ; $6ae7: $67
	ld   [hl], a                                     ; $6ae8: $77
	ld   a, b                                        ; $6ae9: $78
	adc  b                                           ; $6aea: $88
	sbc  c                                           ; $6aeb: $99
	sbc  b                                           ; $6aec: $98
	sbc  c                                           ; $6aed: $99
	sbc  c                                           ; $6aee: $99
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	sbc  c                                           ; $6af2: $99
	sbc  c                                           ; $6af3: $99
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	ld   [hl], a                                     ; $6af8: $77
	ld   [hl], a                                     ; $6af9: $77
	halt                                             ; $6afa: $76
	ld   h, [hl]                                     ; $6afb: $66
	ld   h, a                                        ; $6afc: $67
	ld   [hl], a                                     ; $6afd: $77
	ld   [hl], a                                     ; $6afe: $77
	adc  b                                           ; $6aff: $88
	adc  c                                           ; $6b00: $89
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	sbc  c                                           ; $6b03: $99
	adc  b                                           ; $6b04: $88
	adc  b                                           ; $6b05: $88
	adc  c                                           ; $6b06: $89
	sbc  c                                           ; $6b07: $99
	sbc  b                                           ; $6b08: $98
	adc  c                                           ; $6b09: $89
	sbc  c                                           ; $6b0a: $99
	sbc  c                                           ; $6b0b: $99
	adc  b                                           ; $6b0c: $88
	add  a                                           ; $6b0d: $87
	ld   [hl], a                                     ; $6b0e: $77
	ld   [hl], a                                     ; $6b0f: $77
	ld   [hl], a                                     ; $6b10: $77
	ld   [hl], a                                     ; $6b11: $77
	ld   [hl], a                                     ; $6b12: $77
	ld   [hl], a                                     ; $6b13: $77
	ld   [hl], a                                     ; $6b14: $77
	ld   a, b                                        ; $6b15: $78
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	adc  b                                           ; $6b1a: $88
	sbc  c                                           ; $6b1b: $99
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	sbc  c                                           ; $6b20: $99
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	add  a                                           ; $6b23: $87
	ld   [hl], a                                     ; $6b24: $77
	ld   [hl], a                                     ; $6b25: $77
	ld   [hl], a                                     ; $6b26: $77
	ld   [hl], a                                     ; $6b27: $77
	ld   [hl], a                                     ; $6b28: $77
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	add  a                                           ; $6b2b: $87
	ld   [hl], a                                     ; $6b2c: $77
	ld   [hl], a                                     ; $6b2d: $77
	ld   [hl], a                                     ; $6b2e: $77
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	add  a                                           ; $6b36: $87
	ld   [hl], a                                     ; $6b37: $77
	ld   a, b                                        ; $6b38: $78
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	sbc  c                                           ; $6b3d: $99
	sbc  b                                           ; $6b3e: $98
	adc  b                                           ; $6b3f: $88
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	add  a                                           ; $6b4a: $87
	ld   [hl], a                                     ; $6b4b: $77
	ld   [hl], a                                     ; $6b4c: $77
	ld   [hl], a                                     ; $6b4d: $77
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	sbc  c                                           ; $6b50: $99
	sbc  c                                           ; $6b51: $99
	sbc  c                                           ; $6b52: $99
	sbc  c                                           ; $6b53: $99
	sbc  c                                           ; $6b54: $99
	sbc  c                                           ; $6b55: $99
	sbc  b                                           ; $6b56: $98
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	ld   [hl], a                                     ; $6b5f: $77
	ld   [hl], a                                     ; $6b60: $77
	ld   [hl], a                                     ; $6b61: $77
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	sbc  c                                           ; $6b65: $99
	sbc  c                                           ; $6b66: $99
	sbc  c                                           ; $6b67: $99
	sbc  c                                           ; $6b68: $99
	sbc  c                                           ; $6b69: $99
	sbc  c                                           ; $6b6a: $99
	sbc  b                                           ; $6b6b: $98
	adc  b                                           ; $6b6c: $88
	adc  b                                           ; $6b6d: $88
	adc  b                                           ; $6b6e: $88
	adc  b                                           ; $6b6f: $88
	adc  b                                           ; $6b70: $88
	adc  b                                           ; $6b71: $88
	adc  b                                           ; $6b72: $88
	adc  b                                           ; $6b73: $88
	adc  b                                           ; $6b74: $88
	adc  b                                           ; $6b75: $88
	adc  b                                           ; $6b76: $88
	adc  b                                           ; $6b77: $88
	adc  b                                           ; $6b78: $88
	adc  b                                           ; $6b79: $88
	adc  b                                           ; $6b7a: $88
	adc  b                                           ; $6b7b: $88
	adc  b                                           ; $6b7c: $88
	adc  c                                           ; $6b7d: $89
	sbc  c                                           ; $6b7e: $99
	sbc  b                                           ; $6b7f: $98
	adc  b                                           ; $6b80: $88
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	adc  b                                           ; $6b87: $88
	adc  b                                           ; $6b88: $88
	adc  b                                           ; $6b89: $88
	adc  b                                           ; $6b8a: $88
	adc  b                                           ; $6b8b: $88
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	sbc  c                                           ; $6b92: $99
	sbc  b                                           ; $6b93: $98
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  c                                           ; $6b99: $89
	xor  c                                           ; $6b9a: $a9
	sbc  c                                           ; $6b9b: $99
	sbc  h                                           ; $6b9c: $9c
	xor  d                                           ; $6b9d: $aa
	add  [hl]                                        ; $6b9e: $86
	ld   [hl], a                                     ; $6b9f: $77
	halt                                             ; $6ba0: $76
	ld   [hl], l                                     ; $6ba1: $75
	ld   a, b                                        ; $6ba2: $78
	ld   a, b                                        ; $6ba3: $78
	adc  c                                           ; $6ba4: $89
	adc  e                                           ; $6ba5: $8b
	xor  c                                           ; $6ba6: $a9
	add  a                                           ; $6ba7: $87
	add  a                                           ; $6ba8: $87
	sbc  b                                           ; $6ba9: $98
	cp   d                                           ; $6baa: $ba
	sbc  b                                           ; $6bab: $98
	add  a                                           ; $6bac: $87
	ld   a, c                                        ; $6bad: $79
	sbc  c                                           ; $6bae: $99
	adc  d                                           ; $6baf: $8a
	sbc  c                                           ; $6bb0: $99
	add  [hl]                                        ; $6bb1: $86
	ld   d, l                                        ; $6bb2: $55
	ld   d, [hl]                                     ; $6bb3: $56
	ld   a, b                                        ; $6bb4: $78
	sbc  c                                           ; $6bb5: $99
	adc  b                                           ; $6bb6: $88
	halt                                             ; $6bb7: $76
	ld   a, b                                        ; $6bb8: $78
	xor  d                                           ; $6bb9: $aa
	cp   d                                           ; $6bba: $ba
	xor  b                                           ; $6bbb: $a8
	ld   [hl], a                                     ; $6bbc: $77
	ld   h, a                                        ; $6bbd: $67
	ld   a, c                                        ; $6bbe: $79
	sbc  d                                           ; $6bbf: $9a
	xor  b                                           ; $6bc0: $a8
	add  a                                           ; $6bc1: $87
	ld   a, c                                        ; $6bc2: $79
	sbc  c                                           ; $6bc3: $99
	add  a                                           ; $6bc4: $87
	ld   d, l                                        ; $6bc5: $55
	ld   h, [hl]                                     ; $6bc6: $66
	adc  d                                           ; $6bc7: $8a
	xor  d                                           ; $6bc8: $aa
	adc  b                                           ; $6bc9: $88
	ld   h, [hl]                                     ; $6bca: $66
	ld   l, b                                        ; $6bcb: $68
	xor  d                                           ; $6bcc: $aa
	cp   d                                           ; $6bcd: $ba
	cp   h                                           ; $6bce: $bc
	cp   e                                           ; $6bcf: $bb
	cp   [hl]                                        ; $6bd0: $be
	db   $ec                                         ; $6bd1: $ec
	cp   d                                           ; $6bd2: $ba
	sub  a                                           ; $6bd3: $97
	ld   b, d                                        ; $6bd4: $42
	dec  h                                           ; $6bd5: $25
	sbc  e                                           ; $6bd6: $9b
	and  [hl]                                        ; $6bd7: $a6
	ld   sp, $7d11                                   ; $6bd8: $31 $11 $7d
	rst  $38                                         ; $6bdb: $ff
	ret  z                                           ; $6bdc: $c8

	ld   de, $7b12                                   ; $6bdd: $11 $12 $7b
	db   $eb                                         ; $6be0: $eb
	sub  e                                           ; $6be1: $93
	ld   sp, $cf49                                   ; $6be2: $31 $49 $cf
	db   $ec                                         ; $6be5: $ec
	ld   [hl], l                                     ; $6be6: $75
	ld   b, l                                        ; $6be7: $45
	sbc  d                                           ; $6be8: $9a
	db   $eb                                         ; $6be9: $eb
	sub  [hl]                                        ; $6bea: $96
	ld   d, l                                        ; $6beb: $55
	ld   d, a                                        ; $6bec: $57
	ld   a, b                                        ; $6bed: $78
	adc  b                                           ; $6bee: $88
	ld   h, h                                        ; $6bef: $64
	ld   d, h                                        ; $6bf0: $54
	ld   a, b                                        ; $6bf1: $78
	sbc  b                                           ; $6bf2: $98
	add  a                                           ; $6bf3: $87
	ld   h, a                                        ; $6bf4: $67
	sbc  d                                           ; $6bf5: $9a
	cp   e                                           ; $6bf6: $bb
	sub  a                                           ; $6bf7: $97
	ld   h, l                                        ; $6bf8: $65
	ld   l, b                                        ; $6bf9: $68
	xor  e                                           ; $6bfa: $ab
	sub  a                                           ; $6bfb: $97
	ld   h, l                                        ; $6bfc: $65
	ld   l, b                                        ; $6bfd: $68
	sbc  d                                           ; $6bfe: $9a
	cp   d                                           ; $6bff: $ba
	add  a                                           ; $6c00: $87
	ld   h, a                                        ; $6c01: $67
	adc  b                                           ; $6c02: $88
	cp   d                                           ; $6c03: $ba
	sub  a                                           ; $6c04: $97
	ld   b, h                                        ; $6c05: $44
	ld   l, b                                        ; $6c06: $68
	xor  d                                           ; $6c07: $aa
	add  [hl]                                        ; $6c08: $86
	ld   h, a                                        ; $6c09: $67
	sbc  l                                           ; $6c0a: $9d
	sbc  $ca                                         ; $6c0b: $de $ca
	sub  [hl]                                        ; $6c0d: $96
	ld   a, b                                        ; $6c0e: $78
	sbc  e                                           ; $6c0f: $9b
	jp   z, $6986                                    ; $6c10: $ca $86 $69

	cp   h                                           ; $6c13: $bc
	cp   b                                           ; $6c14: $b8
	ld   b, c                                        ; $6c15: $41
	ld   de, $1311                                   ; $6c16: $11 $11 $13
	ld   [hl-], a                                    ; $6c19: $32
	ld   de, $4911                                   ; $6c1a: $11 $11 $49
	rst  $38                                         ; $6c1d: $ff
	rst  $38                                         ; $6c1e: $ff
	rst  $38                                         ; $6c1f: $ff
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	cp   d                                           ; $6c24: $ba
	add  [hl]                                        ; $6c25: $86
	ld   h, h                                        ; $6c26: $64
	ld   [hl-], a                                    ; $6c27: $32
	ld   de, $1111                                   ; $6c28: $11 $11 $11
	ld   de, $1111                                   ; $6c2b: $11 $11 $11
	ld   de, $df3a                                   ; $6c2e: $11 $3a $df
	rst  $38                                         ; $6c31: $ff
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	rst  $38                                         ; $6c34: $ff
	rst  $38                                         ; $6c35: $ff
	ld   a, [$5565]                                  ; $6c36: $fa $65 $55
	ld   h, a                                        ; $6c39: $67
	ld   [hl], a                                     ; $6c3a: $77
	adc  c                                           ; $6c3b: $89
	cp   h                                           ; $6c3c: $bc
	bit  4, c                                        ; $6c3d: $cb $61
	ld   de, $1111                                   ; $6c3f: $11 $11 $11
	ld   de, $6d11                                   ; $6c42: $11 $11 $6d
	rst  $38                                         ; $6c45: $ff
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	ei                                               ; $6c4a: $fb
	ld   hl, $1111                                   ; $6c4b: $21 $11 $11
	ld   de, $ff5a                                   ; $6c4e: $11 $5a $ff
	rst  $38                                         ; $6c51: $ff
	ld   a, [$1111]                                  ; $6c52: $fa $11 $11
	ld   de, $1111                                   ; $6c55: $11 $11 $11
	ld   a, [de]                                     ; $6c58: $1a
	rst  $38                                         ; $6c59: $ff
	rst  $38                                         ; $6c5a: $ff
	rst  $38                                         ; $6c5b: $ff
	rst  $38                                         ; $6c5c: $ff
	rst  $38                                         ; $6c5d: $ff
	ld   a, [$1111]                                  ; $6c5e: $fa $11 $11
	ld   de, $5d11                                   ; $6c61: $11 $11 $5d
	rst  $38                                         ; $6c64: $ff
	rst  $38                                         ; $6c65: $ff
	rst  $38                                         ; $6c66: $ff
	ld   b, c                                        ; $6c67: $41
	ld   de, $1111                                   ; $6c68: $11 $11 $11
	ld   de, $ff19                                   ; $6c6b: $11 $19 $ff
	rst  $38                                         ; $6c6e: $ff
	rst  $38                                         ; $6c6f: $ff
	rst  $38                                         ; $6c70: $ff
	rst  $38                                         ; $6c71: $ff
	push af                                          ; $6c72: $f5
	ld   de, $1111                                   ; $6c73: $11 $11 $11
	ld   [de], a                                     ; $6c76: $12
	cp   a                                           ; $6c77: $bf
	rst  $38                                         ; $6c78: $ff
	rst  $38                                         ; $6c79: $ff
	rst  $38                                         ; $6c7a: $ff
	ld   sp, $1111                                   ; $6c7b: $31 $11 $11
	ld   de, $1f11                                   ; $6c7e: $11 $11 $1f
	rst  $38                                         ; $6c81: $ff
	rst  $38                                         ; $6c82: $ff
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	rst  $38                                         ; $6c85: $ff
	ld   [hl], c                                     ; $6c86: $71
	ld   de, $1111                                   ; $6c87: $11 $11 $11
	ld   a, [de]                                     ; $6c8a: $1a
	rst  $38                                         ; $6c8b: $ff
	rst  $38                                         ; $6c8c: $ff
	rst  $38                                         ; $6c8d: $ff
	ld   hl, sp+$11                                  ; $6c8e: $f8 $11
	ld   de, $1111                                   ; $6c90: $11 $11 $11
	ld   de, $ff7f                                   ; $6c93: $11 $7f $ff
	rst  $38                                         ; $6c96: $ff
	rst  $38                                         ; $6c97: $ff
	rst  $38                                         ; $6c98: $ff
	db   $fc                                         ; $6c99: $fc
	ld   hl, $1111                                   ; $6c9a: $21 $11 $11
	ld   d, $df                                      ; $6c9d: $16 $df
	rst  $38                                         ; $6c9f: $ff
	rst  $38                                         ; $6ca0: $ff
	cp   $31                                         ; $6ca1: $fe $31
	ld   de, $1111                                   ; $6ca3: $11 $11 $11
	ld   de, $ff1d                                   ; $6ca6: $11 $1d $ff
	rst  $38                                         ; $6ca9: $ff
	rst  $38                                         ; $6caa: $ff
	rst  $38                                         ; $6cab: $ff
	db   $fc                                         ; $6cac: $fc
	or   l                                           ; $6cad: $b5
	ld   bc, $8f12                                   ; $6cae: $01 $12 $8f
	rst  $38                                         ; $6cb1: $ff
	rst  $38                                         ; $6cb2: $ff
	rst  $38                                         ; $6cb3: $ff
	rst  $38                                         ; $6cb4: $ff
	ld   h, c                                        ; $6cb5: $61
	ld   de, $1111                                   ; $6cb6: $11 $11 $11
	ld   de, $1f11                                   ; $6cb9: $11 $11 $1f
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	rst  $38                                         ; $6cbe: $ff
	cp   $ee                                         ; $6cbf: $fe $ee
	rst  $38                                         ; $6cc1: $ff
	db   $ec                                         ; $6cc2: $ec
	cp   l                                           ; $6cc3: $bd
	rst  $38                                         ; $6cc4: $ff
	rst  $38                                         ; $6cc5: $ff
	rst  $38                                         ; $6cc6: $ff
	rst  $38                                         ; $6cc7: $ff
	ei                                               ; $6cc8: $fb
	ld   d, c                                        ; $6cc9: $51
	ld   de, $1111                                   ; $6cca: $11 $11 $11
	ld   de, $1111                                   ; $6ccd: $11 $11 $11
	rst  $38                                         ; $6cd0: $ff
	rst  $38                                         ; $6cd1: $ff
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	rst  $38                                         ; $6cd4: $ff
	rst  $38                                         ; $6cd5: $ff
	rst  $38                                         ; $6cd6: $ff
	db   $fd                                         ; $6cd7: $fd
	rst  $28                                         ; $6cd8: $ef
	rst  $38                                         ; $6cd9: $ff
	rst  $38                                         ; $6cda: $ff
	rst  $38                                         ; $6cdb: $ff
	rst  $38                                         ; $6cdc: $ff
	or   l                                           ; $6cdd: $b5
	ld   bc, $1111                                   ; $6cde: $01 $11 $11
	ld   de, $1111                                   ; $6ce1: $11 $11 $11
	ccf                                              ; $6ce4: $3f
	rst  $38                                         ; $6ce5: $ff
	rst  $38                                         ; $6ce6: $ff
	rst  $38                                         ; $6ce7: $ff
	rst  $38                                         ; $6ce8: $ff
	rst  $38                                         ; $6ce9: $ff
	rst  $38                                         ; $6cea: $ff
	rst  $38                                         ; $6ceb: $ff
	rst  JumpTable                                         ; $6cec: $df
	rst  $38                                         ; $6ced: $ff
	rst  $38                                         ; $6cee: $ff
	rst  $38                                         ; $6cef: $ff
	rst  $38                                         ; $6cf0: $ff
	rst  $20                                         ; $6cf1: $e7
	ld   sp, $1111                                   ; $6cf2: $31 $11 $11
	ld   de, $1111                                   ; $6cf5: $11 $11 $11
	ld   d, $ff                                      ; $6cf8: $16 $ff
	rst  $38                                         ; $6cfa: $ff
	rst  $38                                         ; $6cfb: $ff
	rst  $38                                         ; $6cfc: $ff
	rst  $38                                         ; $6cfd: $ff
	rst  $38                                         ; $6cfe: $ff
	rst  $38                                         ; $6cff: $ff
	rst  $38                                         ; $6d00: $ff
	rst  $38                                         ; $6d01: $ff
	rst  $38                                         ; $6d02: $ff
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	db   $fc                                         ; $6d05: $fc
	ld   h, c                                        ; $6d06: $61
	ld   de, $1111                                   ; $6d07: $11 $11 $11
	ld   de, $1111                                   ; $6d0a: $11 $11 $11
	adc  a                                           ; $6d0d: $8f
	rst  $38                                         ; $6d0e: $ff
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	rst  $38                                         ; $6d11: $ff
	rst  $38                                         ; $6d12: $ff
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	rst  $38                                         ; $6d17: $ff
	rst  $38                                         ; $6d18: $ff
	rst  $38                                         ; $6d19: $ff
	sub  l                                           ; $6d1a: $95
	ld   de, $1111                                   ; $6d1b: $11 $11 $11
	ld   de, $1111                                   ; $6d1e: $11 $11 $11
	inc  de                                          ; $6d21: $13
	xor  a                                           ; $6d22: $af
	rst  $38                                         ; $6d23: $ff
	rst  $38                                         ; $6d24: $ff
	rst  $38                                         ; $6d25: $ff
	rst  $38                                         ; $6d26: $ff
	rst  $38                                         ; $6d27: $ff
	rst  $38                                         ; $6d28: $ff
	rst  $38                                         ; $6d29: $ff
	rst  $38                                         ; $6d2a: $ff
	rst  $38                                         ; $6d2b: $ff
	rst  $38                                         ; $6d2c: $ff
	rst  $38                                         ; $6d2d: $ff
	db   $eb                                         ; $6d2e: $eb
	ld   [hl], h                                     ; $6d2f: $74
	ld   de, $1111                                   ; $6d30: $11 $11 $11
	ld   de, $1111                                   ; $6d33: $11 $11 $11
	inc  de                                          ; $6d36: $13
	ld   a, c                                        ; $6d37: $79
	cp   l                                           ; $6d38: $bd
	rst  $28                                         ; $6d39: $ef
	rst  $38                                         ; $6d3a: $ff
	rst  $38                                         ; $6d3b: $ff
	rst  $38                                         ; $6d3c: $ff
	rst  $38                                         ; $6d3d: $ff
	rst  $38                                         ; $6d3e: $ff
	rst  $38                                         ; $6d3f: $ff
	rst  $38                                         ; $6d40: $ff
	rst  $38                                         ; $6d41: $ff
	cp   $ba                                         ; $6d42: $fe $ba
	ld   [hl], l                                     ; $6d44: $75
	ld   de, $1111                                   ; $6d45: $11 $11 $11
	ld   de, $1111                                   ; $6d48: $11 $11 $11
	ld   de, $5713                                   ; $6d4b: $11 $13 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d4e: $cf
	rst  $38                                         ; $6d4f: $ff
	rst  $38                                         ; $6d50: $ff
	rst  $38                                         ; $6d51: $ff
	rst  $38                                         ; $6d52: $ff
	rst  $38                                         ; $6d53: $ff
	rst  $38                                         ; $6d54: $ff
	rst  $38                                         ; $6d55: $ff
	rst  $38                                         ; $6d56: $ff
	cp   $ca                                         ; $6d57: $fe $ca
	ld   [hl], l                                     ; $6d59: $75
	ld   de, $1111                                   ; $6d5a: $11 $11 $11
	ld   de, $1111                                   ; $6d5d: $11 $11 $11
	ld   de, $1411                                   ; $6d60: $11 $11 $14
	sbc  [hl]                                        ; $6d63: $9e
	rst  $38                                         ; $6d64: $ff
	rst  $38                                         ; $6d65: $ff
	rst  $38                                         ; $6d66: $ff
	rst  $38                                         ; $6d67: $ff
	rst  $38                                         ; $6d68: $ff
	rst  $38                                         ; $6d69: $ff
	rst  $38                                         ; $6d6a: $ff
	rst  $38                                         ; $6d6b: $ff
	rst  $38                                         ; $6d6c: $ff
	ld   [$2175], a                                  ; $6d6d: $ea $75 $21
	ld   de, $1111                                   ; $6d70: $11 $11 $11
	ld   de, $1111                                   ; $6d73: $11 $11 $11
	ld   de, $9e13                                   ; $6d76: $11 $13 $9e
	rst  $38                                         ; $6d79: $ff
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	rst  $38                                         ; $6d7d: $ff
	rst  $38                                         ; $6d7e: $ff
	rst  $38                                         ; $6d7f: $ff
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	db   $eb                                         ; $6d82: $eb
	add  l                                           ; $6d83: $85
	ld   hl, $1111                                   ; $6d84: $21 $11 $11
	ld   de, $1111                                   ; $6d87: $11 $11 $11
	ld   de, $1211                                   ; $6d8a: $11 $11 $12
	ld   a, l                                        ; $6d8d: $7d
	rst  $38                                         ; $6d8e: $ff
	rst  $38                                         ; $6d8f: $ff
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	rst  $38                                         ; $6d94: $ff
	rst  $38                                         ; $6d95: $ff
	rst  $38                                         ; $6d96: $ff
	db   $fc                                         ; $6d97: $fc
	sub  [hl]                                        ; $6d98: $96
	ld   sp, $1111                                   ; $6d99: $31 $11 $11
	ld   de, $1111                                   ; $6d9c: $11 $11 $11
	ld   de, $1211                                   ; $6d9f: $11 $11 $12
	ld   a, l                                        ; $6da2: $7d
	rst  $38                                         ; $6da3: $ff
	rst  $38                                         ; $6da4: $ff
	rst  $38                                         ; $6da5: $ff
	rst  $38                                         ; $6da6: $ff
	rst  $38                                         ; $6da7: $ff
	rst  $38                                         ; $6da8: $ff
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	rst  $38                                         ; $6dab: $ff
	db   $fd                                         ; $6dac: $fd
	and  [hl]                                        ; $6dad: $a6
	ld   sp, $1111                                   ; $6dae: $31 $11 $11
	ld   de, $1111                                   ; $6db1: $11 $11 $11
	ld   de, $1211                                   ; $6db4: $11 $11 $12
	adc  l                                           ; $6db7: $8d
	rst  $38                                         ; $6db8: $ff
	rst  $38                                         ; $6db9: $ff
	rst  $38                                         ; $6dba: $ff
	rst  $38                                         ; $6dbb: $ff
	rst  $38                                         ; $6dbc: $ff
	rst  $38                                         ; $6dbd: $ff
	rst  $38                                         ; $6dbe: $ff
	rst  $38                                         ; $6dbf: $ff
	rst  $38                                         ; $6dc0: $ff
	cp   $a7                                         ; $6dc1: $fe $a7
	ld   sp, $1111                                   ; $6dc3: $31 $11 $11
	ld   de, $1111                                   ; $6dc6: $11 $11 $11
	ld   de, $1311                                   ; $6dc9: $11 $11 $13
	sbc  [hl]                                        ; $6dcc: $9e
	rst  $38                                         ; $6dcd: $ff
	rst  $38                                         ; $6dce: $ff
	rst  $38                                         ; $6dcf: $ff
	rst  $38                                         ; $6dd0: $ff
	rst  $38                                         ; $6dd1: $ff
	rst  $38                                         ; $6dd2: $ff
	rst  $38                                         ; $6dd3: $ff
	rst  $38                                         ; $6dd4: $ff
	rst  $38                                         ; $6dd5: $ff
	db   $fd                                         ; $6dd6: $fd
	and  [hl]                                        ; $6dd7: $a6
	ld   hl, $1111                                   ; $6dd8: $21 $11 $11
	ld   de, $1111                                   ; $6ddb: $11 $11 $11
	ld   de, $1411                                   ; $6dde: $11 $11 $14
	xor  a                                           ; $6de1: $af
	rst  $38                                         ; $6de2: $ff
	rst  $38                                         ; $6de3: $ff
	rst  $38                                         ; $6de4: $ff
	rst  $38                                         ; $6de5: $ff
	rst  $38                                         ; $6de6: $ff
	rst  $38                                         ; $6de7: $ff
	rst  $38                                         ; $6de8: $ff
	rst  $38                                         ; $6de9: $ff
	rst  $38                                         ; $6dea: $ff
	db   $ec                                         ; $6deb: $ec
	add  l                                           ; $6dec: $85
	ld   de, $1111                                   ; $6ded: $11 $11 $11
	ld   de, $1111                                   ; $6df0: $11 $11 $11
	ld   de, $2711                                   ; $6df3: $11 $11 $27
	rst  JumpTable                                         ; $6df6: $df
	rst  $38                                         ; $6df7: $ff
	rst  $38                                         ; $6df8: $ff
	rst  $38                                         ; $6df9: $ff
	rst  $38                                         ; $6dfa: $ff
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	rst  $38                                         ; $6dfd: $ff
	rst  $38                                         ; $6dfe: $ff
	rst  $38                                         ; $6dff: $ff
	jp   c, $1163                                    ; $6e00: $da $63 $11

	ld   de, $1111                                   ; $6e03: $11 $11 $11
	ld   de, $1111                                   ; $6e06: $11 $11 $11
	ld   de, $ff5b                                   ; $6e09: $11 $5b $ff
	rst  $38                                         ; $6e0c: $ff
	rst  $38                                         ; $6e0d: $ff
	rst  $38                                         ; $6e0e: $ff
	rst  $38                                         ; $6e0f: $ff
	rst  $38                                         ; $6e10: $ff
	rst  $38                                         ; $6e11: $ff
	rst  $38                                         ; $6e12: $ff
	rst  $38                                         ; $6e13: $ff
	db   $fd                                         ; $6e14: $fd
	cp   b                                           ; $6e15: $b8
	ld   b, c                                        ; $6e16: $41
	ld   de, $1111                                   ; $6e17: $11 $11 $11
	ld   de, $1111                                   ; $6e1a: $11 $11 $11
	ld   de, $bf37                                   ; $6e1d: $11 $37 $bf
	rst  $38                                         ; $6e20: $ff
	rst  $38                                         ; $6e21: $ff
	rst  $38                                         ; $6e22: $ff
	rst  $38                                         ; $6e23: $ff
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	rst  $38                                         ; $6e26: $ff
	rst  $38                                         ; $6e27: $ff
	rst  $38                                         ; $6e28: $ff
	db   $ec                                         ; $6e29: $ec
	add  l                                           ; $6e2a: $85
	ld   de, $1111                                   ; $6e2b: $11 $11 $11
	ld   de, $1111                                   ; $6e2e: $11 $11 $11
	ld   de, $cf38                                   ; $6e31: $11 $38 $cf
	rst  $38                                         ; $6e34: $ff
	rst  $38                                         ; $6e35: $ff
	rst  $38                                         ; $6e36: $ff
	rst  $38                                         ; $6e37: $ff
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	rst  $38                                         ; $6e3a: $ff
	rst  $38                                         ; $6e3b: $ff
	rst  $38                                         ; $6e3c: $ff
	db   $fd                                         ; $6e3d: $fd
	or   a                                           ; $6e3e: $b7
	ld   hl, $1111                                   ; $6e3f: $21 $11 $11
	ld   de, $1111                                   ; $6e42: $11 $11 $11
	inc  de                                          ; $6e45: $13
	adc  h                                           ; $6e46: $8c
	rst  $38                                         ; $6e47: $ff
	rst  $38                                         ; $6e48: $ff
	rst  $38                                         ; $6e49: $ff
	rst  $38                                         ; $6e4a: $ff
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	rst  $38                                         ; $6e50: $ff
	rst  $38                                         ; $6e51: $ff
	cp   c                                           ; $6e52: $b9
	ld   hl, $1111                                   ; $6e53: $21 $11 $11
	ld   de, $1111                                   ; $6e56: $11 $11 $11
	inc  e                                           ; $6e59: $1c
	rst  $38                                         ; $6e5a: $ff
	rst  $38                                         ; $6e5b: $ff
	rst  $38                                         ; $6e5c: $ff
	rst  $38                                         ; $6e5d: $ff
	rst  $38                                         ; $6e5e: $ff
	rst  $38                                         ; $6e5f: $ff
	rst  $38                                         ; $6e60: $ff
	rst  $38                                         ; $6e61: $ff
	rst  $38                                         ; $6e62: $ff
	rst  $38                                         ; $6e63: $ff
	rst  $38                                         ; $6e64: $ff
	cp   $a3                                         ; $6e65: $fe $a3
	ld   de, $1111                                   ; $6e67: $11 $11 $11
	ld   de, $1111                                   ; $6e6a: $11 $11 $11
	ld   l, a                                        ; $6e6d: $6f
	rst  $38                                         ; $6e6e: $ff
	rst  $38                                         ; $6e6f: $ff
	cp   $ee                                         ; $6e70: $fe $ee
	rst  $38                                         ; $6e72: $ff
	rst  $38                                         ; $6e73: $ff
	rst  $38                                         ; $6e74: $ff
	rst  $38                                         ; $6e75: $ff
	rst  $38                                         ; $6e76: $ff
	rst  $38                                         ; $6e77: $ff
	rst  $38                                         ; $6e78: $ff
	add  sp, $41                                     ; $6e79: $e8 $41
	ld   de, $1111                                   ; $6e7b: $11 $11 $11
	ld   de, $1111                                   ; $6e7e: $11 $11 $11
	sbc  a                                           ; $6e81: $9f
	rst  $38                                         ; $6e82: $ff
	rst  $38                                         ; $6e83: $ff
	db   $fd                                         ; $6e84: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e85: $cf
	rst  $38                                         ; $6e86: $ff
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	rst  $38                                         ; $6e8a: $ff
	rst  $38                                         ; $6e8b: $ff
	rst  $38                                         ; $6e8c: $ff
	add  $21                                         ; $6e8d: $c6 $21
	ld   de, $1111                                   ; $6e8f: $11 $11 $11
	ld   de, $1311                                   ; $6e92: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e95: $cf
	rst  $38                                         ; $6e96: $ff
	rst  $38                                         ; $6e97: $ff
	cp   e                                           ; $6e98: $bb
	rst  JumpTable                                         ; $6e99: $df
	rst  $38                                         ; $6e9a: $ff
	rst  $38                                         ; $6e9b: $ff
	rst  $38                                         ; $6e9c: $ff
	rst  $38                                         ; $6e9d: $ff
	rst  $38                                         ; $6e9e: $ff
	rst  $38                                         ; $6e9f: $ff
	ei                                               ; $6ea0: $fb
	sub  l                                           ; $6ea1: $95
	ld   de, $1111                                   ; $6ea2: $11 $11 $11
	ld   de, $1111                                   ; $6ea5: $11 $11 $11
	dec  de                                          ; $6ea8: $1b
	rst  $38                                         ; $6ea9: $ff
	rst  $38                                         ; $6eaa: $ff
	ei                                               ; $6eab: $fb
	adc  b                                           ; $6eac: $88
	rst  $38                                         ; $6ead: $ff
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	rst  $38                                         ; $6eb0: $ff
	rst  $38                                         ; $6eb1: $ff
	rst  $38                                         ; $6eb2: $ff
	db   $fd                                         ; $6eb3: $fd
	xor  d                                           ; $6eb4: $aa
	ld   b, c                                        ; $6eb5: $41
	ld   de, $1111                                   ; $6eb6: $11 $11 $11
	ld   de, $1111                                   ; $6eb9: $11 $11 $11
	sbc  a                                           ; $6ebc: $9f
	rst  $38                                         ; $6ebd: $ff
	rst  $38                                         ; $6ebe: $ff
	ret  z                                           ; $6ebf: $c8

	sbc  a                                           ; $6ec0: $9f
	rst  $38                                         ; $6ec1: $ff
	rst  $38                                         ; $6ec2: $ff
	rst  $38                                         ; $6ec3: $ff
	rst  $38                                         ; $6ec4: $ff
	rst  $38                                         ; $6ec5: $ff
	rst  $38                                         ; $6ec6: $ff
	ret                                              ; $6ec7: $c9


	add  h                                           ; $6ec8: $84
	ld   de, $1111                                   ; $6ec9: $11 $11 $11
	ld   de, $1111                                   ; $6ecc: $11 $11 $11
	ld   c, e                                        ; $6ecf: $4b
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	push af                                          ; $6ed2: $f5
	ld   a, e                                        ; $6ed3: $7b
	rst  $38                                         ; $6ed4: $ff
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	rst  $38                                         ; $6ed7: $ff
	rst  $38                                         ; $6ed8: $ff
	rst  $38                                         ; $6ed9: $ff
	ld   a, [$41a7]                                  ; $6eda: $fa $a7 $41
	ld   de, $1111                                   ; $6edd: $11 $11 $11
	ld   de, $1411                                   ; $6ee0: $11 $11 $14
	rst  JumpTable                                         ; $6ee3: $df
	rst  $38                                         ; $6ee4: $ff
	ei                                               ; $6ee5: $fb
	adc  c                                           ; $6ee6: $89
	rst  JumpTable                                         ; $6ee7: $df
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	rst  $38                                         ; $6eec: $ff
	res  0, a                                        ; $6eed: $cb $87
	ld   [hl], e                                     ; $6eef: $73
	ld   de, $1111                                   ; $6ef0: $11 $11 $11
	ld   de, $1111                                   ; $6ef3: $11 $11 $11
	cp   a                                           ; $6ef6: $bf
	rst  $38                                         ; $6ef7: $ff
	ld   a, [$cf8a]                                  ; $6ef8: $fa $8a $cf
	rst  $38                                         ; $6efb: $ff
	rst  $38                                         ; $6efc: $ff
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	rst  $38                                         ; $6eff: $ff
	call z, $9488                                    ; $6f00: $cc $88 $94
	ld   de, $1111                                   ; $6f03: $11 $11 $11
	ld   de, $1111                                   ; $6f06: $11 $11 $11
	ld   e, a                                        ; $6f09: $5f
	rst  $38                                         ; $6f0a: $ff
	db   $fd                                         ; $6f0b: $fd
	ld   a, c                                        ; $6f0c: $79
	cp   a                                           ; $6f0d: $bf
	rst  $38                                         ; $6f0e: $ff
	rst  $38                                         ; $6f0f: $ff
	rst  $38                                         ; $6f10: $ff
	rst  $38                                         ; $6f11: $ff
	rst  $38                                         ; $6f12: $ff
	call z, $93bb                                    ; $6f13: $cc $bb $93
	ld   de, $1111                                   ; $6f16: $11 $11 $11
	ld   de, $1111                                   ; $6f19: $11 $11 $11
	cp   a                                           ; $6f1c: $bf
	rst  $38                                         ; $6f1d: $ff
	ld   a, [$df8c]                                  ; $6f1e: $fa $8c $df
	rst  $38                                         ; $6f21: $ff
	rst  $38                                         ; $6f22: $ff
	rst  $38                                         ; $6f23: $ff
	rst  $38                                         ; $6f24: $ff
	rst  $38                                         ; $6f25: $ff
	adc  $e8                                         ; $6f26: $ce $e8
	ld   b, c                                        ; $6f28: $41
	ld   de, $1111                                   ; $6f29: $11 $11 $11
	ld   de, $1911                                   ; $6f2c: $11 $11 $19
	rst  $28                                         ; $6f2f: $ef
	rst  $38                                         ; $6f30: $ff
	rst  $38                                         ; $6f31: $ff
	rst  $28                                         ; $6f32: $ef
	cp   h                                           ; $6f33: $bc
	cp   $ff                                         ; $6f34: $fe $ff
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	db   $fd                                         ; $6f38: $fd
	cp   h                                           ; $6f39: $bc
	ld   [hl], h                                     ; $6f3a: $74
	ld   de, $1111                                   ; $6f3b: $11 $11 $11
	ld   de, $1111                                   ; $6f3e: $11 $11 $11
	ld   a, [de]                                     ; $6f41: $1a
	rst  $38                                         ; $6f42: $ff
	rst  $38                                         ; $6f43: $ff
	db   $fc                                         ; $6f44: $fc
	db   $ed                                         ; $6f45: $ed
	cp   a                                           ; $6f46: $bf
	rst  $38                                         ; $6f47: $ff
	rst  $38                                         ; $6f48: $ff
	rst  $38                                         ; $6f49: $ff
	rst  $38                                         ; $6f4a: $ff
	db   $fd                                         ; $6f4b: $fd
	cp   e                                           ; $6f4c: $bb
	ld   d, c                                        ; $6f4d: $51
	ld   de, $1111                                   ; $6f4e: $11 $11 $11
	ld   de, $1111                                   ; $6f51: $11 $11 $11
	sbc  a                                           ; $6f54: $9f
	rst  $38                                         ; $6f55: $ff
	rst  $38                                         ; $6f56: $ff
	db   $fd                                         ; $6f57: $fd
	db   $fc                                         ; $6f58: $fc
	cp   [hl]                                        ; $6f59: $be
	rst  $38                                         ; $6f5a: $ff
	rst  $38                                         ; $6f5b: $ff
	rst  $38                                         ; $6f5c: $ff
	rst  $38                                         ; $6f5d: $ff
	cp   $93                                         ; $6f5e: $fe $93
	ld   de, $1111                                   ; $6f60: $11 $11 $11
	ld   de, $1111                                   ; $6f63: $11 $11 $11
	dec  d                                           ; $6f66: $15
	rst  $28                                         ; $6f67: $ef
	rst  $38                                         ; $6f68: $ff
	rst  $38                                         ; $6f69: $ff
	rst  $38                                         ; $6f6a: $ff
	db   $dd                                         ; $6f6b: $dd
	sbc  $ff                                         ; $6f6c: $de $ff
	rst  $38                                         ; $6f6e: $ff
	rst  $38                                         ; $6f6f: $ff
	rst  $38                                         ; $6f70: $ff
	jp   hl                                          ; $6f71: $e9


	ld   hl, $1111                                   ; $6f72: $21 $11 $11
	ld   de, $1111                                   ; $6f75: $11 $11 $11
	ld   de, $ff5f                                   ; $6f78: $11 $5f $ff
	rst  $38                                         ; $6f7b: $ff
	rst  $38                                         ; $6f7c: $ff
	rst  $38                                         ; $6f7d: $ff
	ld   l, b                                        ; $6f7e: $68
	rst  $28                                         ; $6f7f: $ef
	rst  $38                                         ; $6f80: $ff
	rst  $38                                         ; $6f81: $ff
	rst  $28                                         ; $6f82: $ef
	db   $fc                                         ; $6f83: $fc
	ld   h, c                                        ; $6f84: $61
	ld   de, $1121                                   ; $6f85: $11 $21 $11
	ld   de, $1111                                   ; $6f88: $11 $11 $11
	dec  d                                           ; $6f8b: $15
	rst  $38                                         ; $6f8c: $ff
	rst  $38                                         ; $6f8d: $ff
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	jp   nc, $ff4e                                   ; $6f90: $d2 $4e $ff

	rst  $38                                         ; $6f93: $ff
	rst  $38                                         ; $6f94: $ff
	rst  $38                                         ; $6f95: $ff
	jp   nc, $1111                                   ; $6f96: $d2 $11 $11

	ld   de, $1111                                   ; $6f99: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6f9c: $11 $11 $ff
	rst  $38                                         ; $6f9f: $ff
	rst  $38                                         ; $6fa0: $ff
	rst  $38                                         ; $6fa1: $ff
	rst  $30                                         ; $6fa2: $f7
	dec  de                                          ; $6fa3: $1b
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	cp   $ff                                         ; $6fa6: $fe $ff
	or   $11                                         ; $6fa8: $f6 $11
	inc  h                                           ; $6faa: $24
	ld   de, $1111                                   ; $6fab: $11 $11 $11
	ld   de, $3f11                                   ; $6fae: $11 $11 $3f
	rst  $38                                         ; $6fb1: $ff
	rst  $38                                         ; $6fb2: $ff
	rst  $38                                         ; $6fb3: $ff
	rst  $38                                         ; $6fb4: $ff
	ld   b, c                                        ; $6fb5: $41
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	rst  $38                                         ; $6fb9: $ff
	db   $fd                                         ; $6fba: $fd
	ld   de, $1164                                   ; $6fbb: $11 $64 $11
	ld   de, $1111                                   ; $6fbe: $11 $11 $11
	ld   de, $ff1e                                   ; $6fc1: $11 $1e $ff
	rst  $38                                         ; $6fc4: $ff
	rst  $38                                         ; $6fc5: $ff
	cp   $51                                         ; $6fc6: $fe $51
	xor  a                                           ; $6fc8: $af
	rst  $38                                         ; $6fc9: $ff
	rst  $38                                         ; $6fca: $ff
	rst  $38                                         ; $6fcb: $ff
	ei                                               ; $6fcc: $fb
	inc  sp                                          ; $6fcd: $33
	xor  c                                           ; $6fce: $a9
	ld   de, $1111                                   ; $6fcf: $11 $11 $11
	ld   de, $1211                                   ; $6fd2: $11 $11 $12
	rst  $38                                         ; $6fd5: $ff
	rst  $38                                         ; $6fd6: $ff
	rst  $38                                         ; $6fd7: $ff
	rst  $38                                         ; $6fd8: $ff
	rst  $30                                         ; $6fd9: $f7
	ld   l, a                                        ; $6fda: $6f
	rst  $38                                         ; $6fdb: $ff
	rst  $38                                         ; $6fdc: $ff
	rst  $38                                         ; $6fdd: $ff
	rst  $38                                         ; $6fde: $ff
	add  l                                           ; $6fdf: $85
	adc  c                                           ; $6fe0: $89
	ld   b, c                                        ; $6fe1: $41
	ld   de, $1111                                   ; $6fe2: $11 $11 $11
	ld   de, $8f11                                   ; $6fe5: $11 $11 $8f
	rst  $38                                         ; $6fe8: $ff
	rst  $38                                         ; $6fe9: $ff
	rst  $38                                         ; $6fea: $ff
	rst  $38                                         ; $6feb: $ff
	call $ccff                                       ; $6fec: $cd $ff $cc
	rst  $38                                         ; $6fef: $ff
	rst  $38                                         ; $6ff0: $ff
	ret                                              ; $6ff1: $c9


	adc  d                                           ; $6ff2: $8a
	and  h                                           ; $6ff3: $a4
	ld   de, $1111                                   ; $6ff4: $11 $11 $11
	ld   de, $1a11                                   ; $6ff7: $11 $11 $1a
	rst  $38                                         ; $6ffa: $ff
	rst  $38                                         ; $6ffb: $ff
	rst  $38                                         ; $6ffc: $ff
	rst  $38                                         ; $6ffd: $ff
	cp   $ff                                         ; $6ffe: $fe $ff
	rst  $30                                         ; $7000: $f7
	adc  d                                           ; $7001: $8a
	rst  $38                                         ; $7002: $ff
	sub  d                                           ; $7003: $92
	ld   c, d                                        ; $7004: $4a
	ld   [$1111], a                                  ; $7005: $ea $11 $11
	ld   de, $1111                                   ; $7008: $11 $11 $11
	ld   de, $ff6b                                   ; $700b: $11 $6b $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	rst  $38                                         ; $7010: $ff
	rst  $38                                         ; $7011: $ff
	rst  $38                                         ; $7012: $ff
	db   $ec                                         ; $7013: $ec
	xor  b                                           ; $7014: $a8
	ld   b, c                                        ; $7015: $41
	ld   hl, $5657                                   ; $7016: $21 $57 $56
	ld   hl, $1111                                   ; $7019: $21 $11 $11
	ld   de, $1211                                   ; $701c: $11 $11 $12
	inc  h                                           ; $701f: $24
	xor  a                                           ; $7020: $af
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	rst  $38                                         ; $7023: $ff
	rst  $38                                         ; $7024: $ff
	db   $fd                                         ; $7025: $fd
	cp   h                                           ; $7026: $bc
	ret                                              ; $7027: $c9


	ld   h, [hl]                                     ; $7028: $66
	ld   a, d                                        ; $7029: $7a
	xor  b                                           ; $702a: $a8
	ld   [hl], a                                     ; $702b: $77
	halt                                             ; $702c: $76
	ld   d, l                                        ; $702d: $55
	ld   d, e                                        ; $702e: $53
	ld   hl, $1111                                   ; $702f: $21 $11 $11
	ld   de, $1211                                   ; $7032: $11 $11 $12
	ld   b, l                                        ; $7035: $45
	ld   l, c                                        ; $7036: $69
	rst  $28                                         ; $7037: $ef
	rst  $38                                         ; $7038: $ff
	rst  $28                                         ; $7039: $ef
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	cp   $ef                                         ; $703e: $fe $ef
	rst  $38                                         ; $7040: $ff
	call c, $96cc                                    ; $7041: $dc $cc $96
	ld   h, e                                        ; $7044: $63
	ld   hl, $1111                                   ; $7045: $21 $11 $11
	ld   de, $1111                                   ; $7048: $11 $11 $11
	ld   de, $6924                                   ; $704b: $11 $24 $69
	xor  e                                           ; $704e: $ab
	call $ffef                                       ; $704f: $cd $ef $ff
	rst  $38                                         ; $7052: $ff
	rst  $38                                         ; $7053: $ff
	rst  $38                                         ; $7054: $ff
	rst  $38                                         ; $7055: $ff
	rst  $38                                         ; $7056: $ff
	rst  $38                                         ; $7057: $ff
	xor  $c9                                         ; $7058: $ee $c9
	ld   [hl], l                                     ; $705a: $75
	ld   b, d                                        ; $705b: $42
	ld   de, $1111                                   ; $705c: $11 $11 $11
	ld   de, $1111                                   ; $705f: $11 $11 $11
	ld   de, $2511                                   ; $7062: $11 $11 $25
	ld   a, c                                        ; $7065: $79
	cp   [hl]                                        ; $7066: $be
	rst  $38                                         ; $7067: $ff
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	rst  $38                                         ; $706a: $ff
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	rst  $38                                         ; $706e: $ff
	db   $ed                                         ; $706f: $ed
	ret                                              ; $7070: $c9


	sub  a                                           ; $7071: $97
	ld   d, h                                        ; $7072: $54
	ld   [hl-], a                                    ; $7073: $32
	ld   de, $1111                                   ; $7074: $11 $11 $11
	ld   de, $1111                                   ; $7077: $11 $11 $11
	ld   de, $4512                                   ; $707a: $11 $12 $45
	ld   a, c                                        ; $707d: $79
	xor  e                                           ; $707e: $ab
	sbc  $ff                                         ; $707f: $de $ff
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	rst  $38                                         ; $7083: $ff
	rst  $38                                         ; $7084: $ff
	rst  $38                                         ; $7085: $ff
	rst  $38                                         ; $7086: $ff
	xor  $db                                         ; $7087: $ee $db
	xor  c                                           ; $7089: $a9
	halt                                             ; $708a: $76
	ld   d, h                                        ; $708b: $54
	ld   [hl-], a                                    ; $708c: $32
	ld   de, $1111                                   ; $708d: $11 $11 $11
	ld   de, $1111                                   ; $7090: $11 $11 $11
	ld   de, $3412                                   ; $7093: $11 $12 $34
	ld   l, b                                        ; $7096: $68
	cp   e                                           ; $7097: $bb
	call $ffef                                       ; $7098: $cd $ef $ff
	rst  $38                                         ; $709b: $ff
	rst  $38                                         ; $709c: $ff
	rst  $38                                         ; $709d: $ff
	rst  $38                                         ; $709e: $ff
	rst  $38                                         ; $709f: $ff
	db   $fd                                         ; $70a0: $fd
	jp   z, $7598                                    ; $70a1: $ca $98 $75

	ld   d, h                                        ; $70a4: $54
	ld   b, d                                        ; $70a5: $42
	ld   de, $1111                                   ; $70a6: $11 $11 $11
	ld   de, $1111                                   ; $70a9: $11 $11 $11
	ld   de, $5624                                   ; $70ac: $11 $24 $56
	sbc  h                                           ; $70af: $9c
	rst  $38                                         ; $70b0: $ff
	rst  $38                                         ; $70b1: $ff
	rst  $38                                         ; $70b2: $ff
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	rst  $38                                         ; $70b7: $ff
	rst  $38                                         ; $70b8: $ff
	db   $fc                                         ; $70b9: $fc
	sbc  b                                           ; $70ba: $98
	sub  [hl]                                        ; $70bb: $96
	ld   hl, $1111                                   ; $70bc: $21 $11 $11
	ld   de, $1111                                   ; $70bf: $11 $11 $11
	ld   de, $1111                                   ; $70c2: $11 $11 $11
	ld   h, $ac                                      ; $70c5: $26 $ac
	rst  JumpTable                                         ; $70c7: $df
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	rst  $38                                         ; $70cc: $ff
	rst  $38                                         ; $70cd: $ff
	db   $fd                                         ; $70ce: $fd
	bit  6, e                                        ; $70cf: $cb $73
	ld   b, h                                        ; $70d1: $44
	ld   sp, $1111                                   ; $70d2: $31 $11 $11
	ld   de, $1111                                   ; $70d5: $11 $11 $11
	ld   de, $1111                                   ; $70d8: $11 $11 $11
	ld   a, e                                        ; $70db: $7b
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	rst  $38                                         ; $70df: $ff
	rst  $38                                         ; $70e0: $ff
	rst  $38                                         ; $70e1: $ff
	db   $fd                                         ; $70e2: $fd
	sbc  c                                           ; $70e3: $99
	sub  h                                           ; $70e4: $94
	inc  d                                           ; $70e5: $14
	ld   [hl], h                                     ; $70e6: $74
	inc  sp                                          ; $70e7: $33
	ld   hl, $1111                                   ; $70e8: $21 $11 $11
	ld   de, $1111                                   ; $70eb: $11 $11 $11
	ld   de, $ef14                                   ; $70ee: $11 $14 $ef
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	rst  $38                                         ; $70f6: $ff
	cp   b                                           ; $70f7: $b8
	ld   d, c                                        ; $70f8: $51
	ld   de, $3113                                   ; $70f9: $11 $13 $31
	ld   de, $1121                                   ; $70fc: $11 $21 $11
	ld   de, $1111                                   ; $70ff: $11 $11 $11
	ld   de, $cf11                                   ; $7102: $11 $11 $cf
	rst  $38                                         ; $7105: $ff
	rst  $38                                         ; $7106: $ff
	rst  $38                                         ; $7107: $ff
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	or   [hl]                                        ; $710b: $b6
	ld   hl, $1111                                   ; $710c: $21 $11 $11
	ld   de, $1111                                   ; $710f: $11 $11 $11
	ld   de, $1111                                   ; $7112: $11 $11 $11
	ld   de, $2911                                   ; $7115: $11 $11 $29
	rst  $38                                         ; $7118: $ff
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	db   $fc                                         ; $711e: $fc
	ld   b, c                                        ; $711f: $41
	ld   de, $1111                                   ; $7120: $11 $11 $11
	ld   de, $1111                                   ; $7123: $11 $11 $11
	ld   de, $1111                                   ; $7126: $11 $11 $11
	ld   de, $cf15                                   ; $7129: $11 $15 $cf
	rst  $38                                         ; $712c: $ff
	rst  $38                                         ; $712d: $ff
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	rst  $38                                         ; $7130: $ff
	rst  $38                                         ; $7131: $ff
	or   l                                           ; $7132: $b5
	ld   de, $1111                                   ; $7133: $11 $11 $11
	ld   de, $1111                                   ; $7136: $11 $11 $11
	ld   de, $1111                                   ; $7139: $11 $11 $11
	ld   de, $5f11                                   ; $713c: $11 $11 $5f
	rst  $38                                         ; $713f: $ff
	rst  $38                                         ; $7140: $ff
	rst  $38                                         ; $7141: $ff
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	rst  $38                                         ; $7144: $ff
	ret  c                                           ; $7145: $d8

	ld   sp, $1211                                   ; $7146: $31 $11 $12
	ld   [hl+], a                                    ; $7149: $22
	ld   [hl+], a                                    ; $714a: $22
	ld   de, $1111                                   ; $714b: $11 $11 $11
	ld   de, $1111                                   ; $714e: $11 $11 $11
	jr   @+$01                                       ; $7151: $18 $ff

	rst  $38                                         ; $7153: $ff
	rst  $38                                         ; $7154: $ff
	rst  $38                                         ; $7155: $ff
	rst  $38                                         ; $7156: $ff
	rst  $38                                         ; $7157: $ff
	jp   hl                                          ; $7158: $e9


	ld   d, d                                        ; $7159: $52
	ld   de, $3211                                   ; $715a: $11 $11 $32
	ld   b, l                                        ; $715d: $45
	ld   [hl-], a                                    ; $715e: $32
	ld   de, $1111                                   ; $715f: $11 $11 $11
	ld   de, $1111                                   ; $7162: $11 $11 $11
	xor  a                                           ; $7165: $af
	rst  $38                                         ; $7166: $ff
	rst  $38                                         ; $7167: $ff
	rst  $38                                         ; $7168: $ff
	rst  $38                                         ; $7169: $ff
	rst  $38                                         ; $716a: $ff
	db   $fc                                         ; $716b: $fc
	ld   [hl], d                                     ; $716c: $72
	ld   de, $2211                                   ; $716d: $11 $11 $22
	inc  sp                                          ; $7170: $33
	inc  hl                                          ; $7171: $23
	ld   hl, $1111                                   ; $7172: $21 $11 $11
	ld   de, $1111                                   ; $7175: $11 $11 $11
	ld   e, l                                        ; $7178: $5d
	rst  $38                                         ; $7179: $ff
	rst  $38                                         ; $717a: $ff
	rst  $38                                         ; $717b: $ff
	rst  $38                                         ; $717c: $ff
	rst  $38                                         ; $717d: $ff
	rst  $38                                         ; $717e: $ff
	push bc                                          ; $717f: $c5
	ld   de, $1111                                   ; $7180: $11 $11 $11
	inc  h                                           ; $7183: $24
	ld   b, h                                        ; $7184: $44
	ld   hl, $1111                                   ; $7185: $21 $11 $11
	ld   de, $1111                                   ; $7188: $11 $11 $11
	rla                                              ; $718b: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $718c: $cf
	rst  $38                                         ; $718d: $ff
	rst  $38                                         ; $718e: $ff
	rst  $38                                         ; $718f: $ff
	rst  $38                                         ; $7190: $ff

Call_0df_7191:
	rst  $38                                         ; $7191: $ff
	cp   $71                                         ; $7192: $fe $71
	ld   de, $1111                                   ; $7194: $11 $11 $11
	inc  hl                                          ; $7197: $23
	inc  h                                           ; $7198: $24
	ld   hl, $1111                                   ; $7199: $21 $11 $11
	ld   de, $1111                                   ; $719c: $11 $11 $11
	inc  e                                           ; $719f: $1c
	rst  $38                                         ; $71a0: $ff
	rst  $38                                         ; $71a1: $ff
	rst  $38                                         ; $71a2: $ff
	rst  $38                                         ; $71a3: $ff
	rst  $38                                         ; $71a4: $ff
	rst  $38                                         ; $71a5: $ff
	db   $fd                                         ; $71a6: $fd
	ld   [hl], e                                     ; $71a7: $73
	ld   de, $1211                                   ; $71a8: $11 $11 $12
	ld   [hl+], a                                    ; $71ab: $22
	ld   sp, $1111                                   ; $71ac: $31 $11 $11
	ld   de, $1111                                   ; $71af: $11 $11 $11
	ld   de, $ef6d                                   ; $71b2: $11 $6d $ef
	rst  $38                                         ; $71b5: $ff
	rst  $38                                         ; $71b6: $ff
	rst  $38                                         ; $71b7: $ff
	rst  $38                                         ; $71b8: $ff
	rst  $38                                         ; $71b9: $ff
	ei                                               ; $71ba: $fb
	ld   [hl], l                                     ; $71bb: $75
	ld   de, $1311                                   ; $71bc: $11 $11 $13
	ld   de, $3111                                   ; $71bf: $11 $11 $31
	ld   de, $1111                                   ; $71c2: $11 $11 $11
	ld   de, $7a11                                   ; $71c5: $11 $11 $7a
	sbc  a                                           ; $71c8: $9f
	rst  $38                                         ; $71c9: $ff
	rst  $38                                         ; $71ca: $ff
	rst  $38                                         ; $71cb: $ff
	rst  $38                                         ; $71cc: $ff
	rst  $38                                         ; $71cd: $ff
	cp   $a6                                         ; $71ce: $fe $a6
	ld   b, e                                        ; $71d0: $43
	ld   hl, $1122                                   ; $71d1: $21 $22 $11
	ld   [de], a                                     ; $71d4: $12
	ld   de, $1111                                   ; $71d5: $11 $11 $11
	ld   de, $1111                                   ; $71d8: $11 $11 $11
	jr   @-$65                                       ; $71db: $18 $99

	rst  $38                                         ; $71dd: $ff
	rst  $38                                         ; $71de: $ff
	rst  $38                                         ; $71df: $ff
	rst  $38                                         ; $71e0: $ff
	rst  $38                                         ; $71e1: $ff
	rst  $38                                         ; $71e2: $ff
	call c, $34a6                                    ; $71e3: $dc $a6 $34
	ld   sp, $0121                                   ; $71e6: $31 $21 $01
	ld   de, $1111                                   ; $71e9: $11 $11 $11
	ld   de, $1111                                   ; $71ec: $11 $11 $11
	ld   de, $9b36                                   ; $71ef: $11 $36 $9b
	rst  $38                                         ; $71f2: $ff
	rst  $38                                         ; $71f3: $ff
	rst  $38                                         ; $71f4: $ff
	rst  $38                                         ; $71f5: $ff
	rst  $38                                         ; $71f6: $ff
	rst  $38                                         ; $71f7: $ff
	db   $fd                                         ; $71f8: $fd
	and  a                                           ; $71f9: $a7
	halt                                             ; $71fa: $76
	ld   b, d                                        ; $71fb: $42
	inc  hl                                          ; $71fc: $23
	ld   [hl-], a                                    ; $71fd: $32
	inc  de                                          ; $71fe: $13
	ld   [hl-], a                                    ; $71ff: $32
	ld   de, $1121                                   ; $7200: $11 $21 $11
	ld   de, $3411                                   ; $7203: $11 $11 $34
	ld   d, [hl]                                     ; $7206: $56
	adc  e                                           ; $7207: $8b
	db   $ed                                         ; $7208: $ed
	rst  $38                                         ; $7209: $ff
	rst  $38                                         ; $720a: $ff
	rst  $38                                         ; $720b: $ff
	rst  $38                                         ; $720c: $ff
	rst  $38                                         ; $720d: $ff
	reti                                             ; $720e: $d9


	adc  c                                           ; $720f: $89
	halt                                             ; $7210: $76
	ld   h, [hl]                                     ; $7211: $66
	ld   d, h                                        ; $7212: $54
	ld   b, l                                        ; $7213: $45
	ld   b, e                                        ; $7214: $43
	inc  [hl]                                        ; $7215: $34
	ld   b, e                                        ; $7216: $43
	inc  h                                           ; $7217: $24
	ld   b, e                                        ; $7218: $43
	inc  [hl]                                        ; $7219: $34
	ld   b, h                                        ; $721a: $44
	ld   b, l                                        ; $721b: $45
	ld   h, [hl]                                     ; $721c: $66
	ld   h, a                                        ; $721d: $67
	sbc  c                                           ; $721e: $99
	xor  d                                           ; $721f: $aa
	xor  l                                           ; $7220: $ad
	call z, $ccdd                                    ; $7221: $cc $dd $cc
	call c, $babb                                    ; $7224: $dc $bb $ba
	sbc  c                                           ; $7227: $99
	sbc  c                                           ; $7228: $99
	ld   [hl], a                                     ; $7229: $77
	add  a                                           ; $722a: $87
	ld   h, a                                        ; $722b: $67
	add  [hl]                                        ; $722c: $86
	ld   h, a                                        ; $722d: $67
	halt                                             ; $722e: $76
	halt                                             ; $722f: $76
	ld   h, a                                        ; $7230: $67
	ld   h, a                                        ; $7231: $67
	ld   [hl], a                                     ; $7232: $77
	ld   [hl], a                                     ; $7233: $77
	add  a                                           ; $7234: $87
	ld   a, b                                        ; $7235: $78
	sbc  b                                           ; $7236: $98
	adc  b                                           ; $7237: $88
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  c                                           ; $723a: $89
	adc  b                                           ; $723b: $88
	adc  c                                           ; $723c: $89
	sbc  b                                           ; $723d: $98
	sbc  b                                           ; $723e: $98
	sbc  c                                           ; $723f: $99
	adc  b                                           ; $7240: $88
	sbc  c                                           ; $7241: $99
	sbc  b                                           ; $7242: $98
	sbc  c                                           ; $7243: $99
	sbc  b                                           ; $7244: $98
	sbc  c                                           ; $7245: $99
	adc  b                                           ; $7246: $88
	sbc  b                                           ; $7247: $98
	adc  b                                           ; $7248: $88
	adc  b                                           ; $7249: $88
	adc  b                                           ; $724a: $88
	adc  b                                           ; $724b: $88
	ld   [hl], a                                     ; $724c: $77
	add  a                                           ; $724d: $87
	ld   a, b                                        ; $724e: $78
	ld   [hl], a                                     ; $724f: $77
	ld   [hl], a                                     ; $7250: $77
	ld   a, b                                        ; $7251: $78
	ld   [hl], a                                     ; $7252: $77
	adc  b                                           ; $7253: $88
	ld   a, b                                        ; $7254: $78
	adc  b                                           ; $7255: $88
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  b                                           ; $7259: $88
	sbc  c                                           ; $725a: $99
	adc  c                                           ; $725b: $89
	adc  b                                           ; $725c: $88
	sbc  b                                           ; $725d: $98
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  b                                           ; $7263: $88
	adc  b                                           ; $7264: $88
	ld   [hl], a                                     ; $7265: $77
	ld   [hl], a                                     ; $7266: $77
	ld   [hl], a                                     ; $7267: $77
	ld   [hl], a                                     ; $7268: $77
	ld   a, b                                        ; $7269: $78
	adc  b                                           ; $726a: $88
	adc  b                                           ; $726b: $88
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	adc  b                                           ; $726f: $88
	adc  b                                           ; $7270: $88
	adc  b                                           ; $7271: $88
	adc  b                                           ; $7272: $88
	adc  b                                           ; $7273: $88
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  b                                           ; $7276: $88
	adc  b                                           ; $7277: $88
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	adc  b                                           ; $727a: $88
	adc  b                                           ; $727b: $88
	adc  b                                           ; $727c: $88
	adc  b                                           ; $727d: $88
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	adc  b                                           ; $7281: $88
	adc  b                                           ; $7282: $88
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  b                                           ; $7286: $88
	adc  b                                           ; $7287: $88
	adc  b                                           ; $7288: $88
	adc  b                                           ; $7289: $88
	adc  b                                           ; $728a: $88
	adc  b                                           ; $728b: $88
	adc  b                                           ; $728c: $88
	adc  b                                           ; $728d: $88
	adc  b                                           ; $728e: $88
	adc  b                                           ; $728f: $88
	adc  b                                           ; $7290: $88
	adc  b                                           ; $7291: $88
	adc  b                                           ; $7292: $88
	adc  b                                           ; $7293: $88
	adc  b                                           ; $7294: $88
	adc  b                                           ; $7295: $88
	adc  b                                           ; $7296: $88
	adc  b                                           ; $7297: $88
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	adc  b                                           ; $729b: $88
	adc  b                                           ; $729c: $88
	adc  b                                           ; $729d: $88
	adc  b                                           ; $729e: $88
	adc  b                                           ; $729f: $88
	adc  b                                           ; $72a0: $88
	adc  b                                           ; $72a1: $88
	adc  b                                           ; $72a2: $88
	adc  b                                           ; $72a3: $88
	adc  b                                           ; $72a4: $88
	adc  b                                           ; $72a5: $88
	adc  b                                           ; $72a6: $88
	adc  b                                           ; $72a7: $88
	adc  b                                           ; $72a8: $88
	adc  b                                           ; $72a9: $88
	adc  b                                           ; $72aa: $88
	adc  b                                           ; $72ab: $88
	adc  b                                           ; $72ac: $88
	adc  b                                           ; $72ad: $88
	adc  b                                           ; $72ae: $88
	adc  b                                           ; $72af: $88
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	adc  b                                           ; $72b3: $88
	adc  b                                           ; $72b4: $88
	adc  b                                           ; $72b5: $88
	adc  b                                           ; $72b6: $88
	adc  b                                           ; $72b7: $88
	adc  b                                           ; $72b8: $88
	adc  b                                           ; $72b9: $88
	adc  b                                           ; $72ba: $88
	adc  b                                           ; $72bb: $88
	adc  b                                           ; $72bc: $88
	adc  b                                           ; $72bd: $88
	adc  b                                           ; $72be: $88
	adc  b                                           ; $72bf: $88
	adc  b                                           ; $72c0: $88
	adc  b                                           ; $72c1: $88
	adc  b                                           ; $72c2: $88
	adc  b                                           ; $72c3: $88
	adc  b                                           ; $72c4: $88
	adc  b                                           ; $72c5: $88
	adc  b                                           ; $72c6: $88
	adc  b                                           ; $72c7: $88
	adc  b                                           ; $72c8: $88
	adc  b                                           ; $72c9: $88
	adc  b                                           ; $72ca: $88
	adc  b                                           ; $72cb: $88
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	adc  b                                           ; $72ce: $88
	adc  b                                           ; $72cf: $88
	adc  b                                           ; $72d0: $88
	adc  b                                           ; $72d1: $88
	adc  b                                           ; $72d2: $88
	adc  b                                           ; $72d3: $88
	adc  b                                           ; $72d4: $88
	adc  b                                           ; $72d5: $88
	adc  b                                           ; $72d6: $88
	adc  b                                           ; $72d7: $88
	adc  b                                           ; $72d8: $88
	adc  b                                           ; $72d9: $88
	adc  b                                           ; $72da: $88
	adc  b                                           ; $72db: $88
	adc  b                                           ; $72dc: $88
	adc  b                                           ; $72dd: $88
	adc  b                                           ; $72de: $88
	adc  b                                           ; $72df: $88
	adc  b                                           ; $72e0: $88
	adc  b                                           ; $72e1: $88
	adc  b                                           ; $72e2: $88
	adc  b                                           ; $72e3: $88
	adc  b                                           ; $72e4: $88
	adc  b                                           ; $72e5: $88
	adc  b                                           ; $72e6: $88
	adc  b                                           ; $72e7: $88
	adc  b                                           ; $72e8: $88
	adc  b                                           ; $72e9: $88
	adc  b                                           ; $72ea: $88
	adc  b                                           ; $72eb: $88
	adc  b                                           ; $72ec: $88
	adc  b                                           ; $72ed: $88
	adc  b                                           ; $72ee: $88
	adc  b                                           ; $72ef: $88
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	adc  b                                           ; $72f2: $88
	adc  b                                           ; $72f3: $88
	adc  b                                           ; $72f4: $88
	adc  b                                           ; $72f5: $88
	adc  b                                           ; $72f6: $88
	adc  b                                           ; $72f7: $88
	adc  b                                           ; $72f8: $88
	adc  b                                           ; $72f9: $88
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	adc  b                                           ; $72fc: $88
	adc  b                                           ; $72fd: $88
	adc  b                                           ; $72fe: $88
	adc  b                                           ; $72ff: $88
	adc  b                                           ; $7300: $88
	adc  b                                           ; $7301: $88
	adc  b                                           ; $7302: $88
	adc  b                                           ; $7303: $88
	adc  b                                           ; $7304: $88
	adc  b                                           ; $7305: $88
	adc  b                                           ; $7306: $88
	adc  b                                           ; $7307: $88
	adc  b                                           ; $7308: $88
	adc  b                                           ; $7309: $88
	adc  b                                           ; $730a: $88
	adc  b                                           ; $730b: $88
	adc  b                                           ; $730c: $88
	adc  b                                           ; $730d: $88
	adc  b                                           ; $730e: $88
	adc  b                                           ; $730f: $88
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	adc  b                                           ; $7312: $88
	adc  b                                           ; $7313: $88
	adc  b                                           ; $7314: $88
	adc  b                                           ; $7315: $88
	adc  b                                           ; $7316: $88
	adc  b                                           ; $7317: $88
	adc  b                                           ; $7318: $88
	adc  b                                           ; $7319: $88
	adc  b                                           ; $731a: $88
	adc  b                                           ; $731b: $88
	adc  b                                           ; $731c: $88
	adc  b                                           ; $731d: $88
	adc  b                                           ; $731e: $88
	adc  b                                           ; $731f: $88
	adc  b                                           ; $7320: $88
	adc  b                                           ; $7321: $88
	adc  b                                           ; $7322: $88
	adc  b                                           ; $7323: $88
	adc  b                                           ; $7324: $88
	adc  b                                           ; $7325: $88
	adc  b                                           ; $7326: $88
	adc  b                                           ; $7327: $88
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	adc  b                                           ; $732a: $88
	adc  b                                           ; $732b: $88
	adc  b                                           ; $732c: $88
	adc  b                                           ; $732d: $88
	adc  b                                           ; $732e: $88
	adc  b                                           ; $732f: $88
	adc  b                                           ; $7330: $88
	adc  b                                           ; $7331: $88
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  d                                           ; $7334: $8a
	sbc  b                                           ; $7335: $98
	ld   h, a                                        ; $7336: $67
	xor  c                                           ; $7337: $a9
	ld   l, b                                        ; $7338: $68
	or   l                                           ; $7339: $b5
	ld   l, d                                        ; $733a: $6a
	ld   h, a                                        ; $733b: $67
	sub  a                                           ; $733c: $97
	sbc  c                                           ; $733d: $99
	ld   a, [hl]                                     ; $733e: $7e
	sub  d                                           ; $733f: $92
	ld   l, [hl]                                     ; $7340: $6e
	pop  bc                                          ; $7341: $c1
	push hl                                          ; $7342: $e5
	ccf                                              ; $7343: $3f
	ld   d, h                                        ; $7344: $54
	call nz, $376f                                   ; $7345: $c4 $6f $37
	or   h                                           ; $7348: $b4
	ld   a, c                                        ; $7349: $79
	and  [hl]                                        ; $734a: $a6
	sub  a                                           ; $734b: $97
	xor  c                                           ; $734c: $a9
	ld   a, [hl+]                                    ; $734d: $2a
	db   $e4                                         ; $734e: $e4
	ld   a, h                                        ; $734f: $7c
	ld   a, c                                        ; $7350: $79
	or   h                                           ; $7351: $b4
	sbc  [hl]                                        ; $7352: $9e
	ld   e, b                                        ; $7353: $58
	or   l                                           ; $7354: $b5
	adc  c                                           ; $7355: $89
	ld   l, b                                        ; $7356: $68
	add  [hl]                                        ; $7357: $86
	adc  b                                           ; $7358: $88
	ld   a, b                                        ; $7359: $78
	halt                                             ; $735a: $76
	add  a                                           ; $735b: $87
	ld   a, d                                        ; $735c: $7a
	ld   a, b                                        ; $735d: $78
	adc  b                                           ; $735e: $88
	add  a                                           ; $735f: $87
	ret  z                                           ; $7360: $c8

	ld   l, h                                        ; $7361: $6c
	halt                                             ; $7362: $76
	and  [hl]                                        ; $7363: $a6
	ld   l, c                                        ; $7364: $69
	ld   h, a                                        ; $7365: $67
	sub  [hl]                                        ; $7366: $96
	adc  b                                           ; $7367: $88
	ld   l, b                                        ; $7368: $68
	ld   [hl], a                                     ; $7369: $77
	sbc  b                                           ; $736a: $98
	ld   a, c                                        ; $736b: $79
	adc  b                                           ; $736c: $88
	add  a                                           ; $736d: $87
	ld   a, b                                        ; $736e: $78
	sbc  b                                           ; $736f: $98
	sbc  c                                           ; $7370: $99
	adc  b                                           ; $7371: $88
	adc  c                                           ; $7372: $89
	add  a                                           ; $7373: $87
	and  a                                           ; $7374: $a7
	ld   a, d                                        ; $7375: $7a
	add  a                                           ; $7376: $87
	sub  a                                           ; $7377: $97
	ld   a, d                                        ; $7378: $7a
	ld   [hl], a                                     ; $7379: $77
	sub  a                                           ; $737a: $97
	adc  d                                           ; $737b: $8a
	ld   l, c                                        ; $737c: $69
	sub  a                                           ; $737d: $97
	sbc  b                                           ; $737e: $98
	ld   l, e                                        ; $737f: $6b
	add  [hl]                                        ; $7380: $86
	and  a                                           ; $7381: $a7
	ld   a, d                                        ; $7382: $7a
	ld   l, c                                        ; $7383: $69
	and  [hl]                                        ; $7384: $a6
	xor  b                                           ; $7385: $a8
	ld   l, d                                        ; $7386: $6a
	ld   l, c                                        ; $7387: $69
	sub  [hl]                                        ; $7388: $96
	sbc  c                                           ; $7389: $99
	ld   a, b                                        ; $738a: $78
	add  a                                           ; $738b: $87
	xor  b                                           ; $738c: $a8
	ld   a, c                                        ; $738d: $79
	add  a                                           ; $738e: $87
	sbc  b                                           ; $738f: $98
	ld   l, c                                        ; $7390: $69
	ld   a, b                                        ; $7391: $78
	sub  a                                           ; $7392: $97
	sbc  b                                           ; $7393: $98
	ld   a, c                                        ; $7394: $79
	adc  c                                           ; $7395: $89
	adc  b                                           ; $7396: $88
	add  a                                           ; $7397: $87
	sbc  c                                           ; $7398: $99
	ld   a, c                                        ; $7399: $79
	ld   a, c                                        ; $739a: $79
	adc  c                                           ; $739b: $89
	add  a                                           ; $739c: $87
	sub  [hl]                                        ; $739d: $96
	ld   a, d                                        ; $739e: $7a
	ld   h, a                                        ; $739f: $67
	sub  a                                           ; $73a0: $97
	ld   a, c                                        ; $73a1: $79
	ld   a, b                                        ; $73a2: $78
	sbc  b                                           ; $73a3: $98
	adc  c                                           ; $73a4: $89
	ld   a, b                                        ; $73a5: $78
	and  [hl]                                        ; $73a6: $a6
	sbc  d                                           ; $73a7: $9a
	ld   l, b                                        ; $73a8: $68
	and  [hl]                                        ; $73a9: $a6
	adc  c                                           ; $73aa: $89
	ld   h, a                                        ; $73ab: $67
	add  a                                           ; $73ac: $87
	adc  d                                           ; $73ad: $8a
	ld   [hl], a                                     ; $73ae: $77
	sbc  b                                           ; $73af: $98
	add  a                                           ; $73b0: $87
	sbc  c                                           ; $73b1: $99
	ld   [hl], a                                     ; $73b2: $77
	sbc  b                                           ; $73b3: $98
	ld   [hl], a                                     ; $73b4: $77
	ld   a, c                                        ; $73b5: $79
	ld   l, c                                        ; $73b6: $69
	add  [hl]                                        ; $73b7: $86
	sub  a                                           ; $73b8: $97
	and  a                                           ; $73b9: $a7
	adc  c                                           ; $73ba: $89
	ld   l, d                                        ; $73bb: $6a

jr_0df_73bc:
	ld   l, b                                        ; $73bc: $68
	sub  l                                           ; $73bd: $95
	adc  b                                           ; $73be: $88
	add  [hl]                                        ; $73bf: $86
	ld   a, c                                        ; $73c0: $79
	ld   e, c                                        ; $73c1: $59
	and  l                                           ; $73c2: $a5
	xor  d                                           ; $73c3: $aa
	ld   l, d                                        ; $73c4: $6a
	ld   a, c                                        ; $73c5: $79
	sub  [hl]                                        ; $73c6: $96
	ld   a, b                                        ; $73c7: $78
	add  l                                           ; $73c8: $85
	add  a                                           ; $73c9: $87
	ld   a, b                                        ; $73ca: $78
	adc  c                                           ; $73cb: $89
	ld   a, b                                        ; $73cc: $78
	adc  c                                           ; $73cd: $89
	ld   a, d                                        ; $73ce: $7a
	sub  l                                           ; $73cf: $95
	cp   e                                           ; $73d0: $bb
	ld   c, c                                        ; $73d1: $49
	and  h                                           ; $73d2: $a4
	ld   a, d                                        ; $73d3: $7a
	ld   l, b                                        ; $73d4: $68
	add  [hl]                                        ; $73d5: $86
	and  [hl]                                        ; $73d6: $a6
	adc  d                                           ; $73d7: $8a
	ld   l, c                                        ; $73d8: $69
	ld   l, h                                        ; $73d9: $6c
	ld   [hl], h                                     ; $73da: $74
	jp   Jump_0df_5aab                               ; $73db: $c3 $ab $5a


	ld   h, a                                        ; $73de: $67
	sub  l                                           ; $73df: $95
	adc  b                                           ; $73e0: $88
	add  h                                           ; $73e1: $84
	cp   e                                           ; $73e2: $bb
	rra                                              ; $73e3: $1f
	ld   h, d                                        ; $73e4: $62
	db   $f4                                         ; $73e5: $f4
	ld   [hl], l                                     ; $73e6: $75
	cp   h                                           ; $73e7: $bc
	dec  de                                          ; $73e8: $1b
	and  [hl]                                        ; $73e9: $a6
	sub  l                                           ; $73ea: $95
	and  a                                           ; $73eb: $a7
	ld   e, c                                        ; $73ec: $59
	ld   d, a                                        ; $73ed: $57
	or   [hl]                                        ; $73ee: $b6
	ld   a, b                                        ; $73ef: $78
	and  h                                           ; $73f0: $a4
	adc  d                                           ; $73f1: $8a
	ld   a, e                                        ; $73f2: $7b
	ld   l, d                                        ; $73f3: $6a
	ld   a, c                                        ; $73f4: $79
	xor  b                                           ; $73f5: $a8
	sub  h                                           ; $73f6: $94
	rst  ToBoot                                         ; $73f7: $c7
	ld   c, d                                        ; $73f8: $4a
	sbc  b                                           ; $73f9: $98
	or   e                                           ; $73fa: $b3
	cp   d                                           ; $73fb: $ba
	dec  l                                           ; $73fc: $2d
	ld   e, d                                        ; $73fd: $5a
	and  [hl]                                        ; $73fe: $a6
	and  e                                           ; $73ff: $a3
	or   [hl]                                        ; $7400: $b6
	ld   e, h                                        ; $7401: $5c
	jr   c, jr_0df_73bc                              ; $7402: $38 $b8

	ld   h, [hl]                                     ; $7404: $66
	ldh  a, [c]                                      ; $7405: $f2
	xor  e                                           ; $7406: $ab
	ld   e, e                                        ; $7407: $5b
	ld   a, $67                                      ; $7408: $3e $67
	sub  [hl]                                        ; $740a: $96
	jp   nc, Jump_0df_4ac9                           ; $740b: $d2 $c9 $4a

	adc  d                                           ; $740e: $8a
	adc  b                                           ; $740f: $88
	sbc  c                                           ; $7410: $99
	ld   a, c                                        ; $7411: $79
	ld   e, b                                        ; $7412: $58
	and  [hl]                                        ; $7413: $a6
	or   a                                           ; $7414: $b7
	adc  b                                           ; $7415: $88
	adc  l                                           ; $7416: $8d
	ld   c, c                                        ; $7417: $49
	and  [hl]                                        ; $7418: $a6
	or   l                                           ; $7419: $b5
	sbc  c                                           ; $741a: $99
	ld   l, e                                        ; $741b: $6b
	ld   e, d                                        ; $741c: $5a
	add  a                                           ; $741d: $87
	and  a                                           ; $741e: $a7
	or   a                                           ; $741f: $b7
	sbc  e                                           ; $7420: $9b
	ld   e, d                                        ; $7421: $5a
	ld   a, c                                        ; $7422: $79
	ld   a, d                                        ; $7423: $7a
	add  l                                           ; $7424: $85
	push de                                          ; $7425: $d5
	adc  c                                           ; $7426: $89
	and  h                                           ; $7427: $a4
	ld   e, a                                        ; $7428: $5f
	scf                                              ; $7429: $37
	ld   a, d                                        ; $742a: $7a
	sub  l                                           ; $742b: $95
	xor  c                                           ; $742c: $a9
	halt                                             ; $742d: $76
	and  [hl]                                        ; $742e: $a6
	adc  d                                           ; $742f: $8a
	halt                                             ; $7430: $76
	adc  d                                           ; $7431: $8a
	ld   l, c                                        ; $7432: $69
	halt                                             ; $7433: $76
	xor  b                                           ; $7434: $a8
	ld   l, b                                        ; $7435: $68
	and  a                                           ; $7436: $a7
	ld   l, c                                        ; $7437: $69
	and  l                                           ; $7438: $a5
	sbc  b                                           ; $7439: $98
	ld   a, c                                        ; $743a: $79
	adc  c                                           ; $743b: $89
	ld   l, b                                        ; $743c: $68
	ld   a, b                                        ; $743d: $78
	add  [hl]                                        ; $743e: $86
	add  [hl]                                        ; $743f: $86
	sbc  b                                           ; $7440: $98
	ld   a, b                                        ; $7441: $78
	ld   a, d                                        ; $7442: $7a
	ld   l, c                                        ; $7443: $69
	add  a                                           ; $7444: $87
	ld   a, b                                        ; $7445: $78
	and  a                                           ; $7446: $a7
	and  a                                           ; $7447: $a7
	add  a                                           ; $7448: $87
	ld   a, c                                        ; $7449: $79
	ld   a, c                                        ; $744a: $79
	ld   a, c                                        ; $744b: $79
	adc  b                                           ; $744c: $88
	adc  c                                           ; $744d: $89
	adc  b                                           ; $744e: $88
	adc  b                                           ; $744f: $88
	add  a                                           ; $7450: $87
	adc  b                                           ; $7451: $88
	ld   a, b                                        ; $7452: $78
	adc  b                                           ; $7453: $88
	sbc  b                                           ; $7454: $98
	adc  c                                           ; $7455: $89
	adc  c                                           ; $7456: $89
	adc  c                                           ; $7457: $89
	adc  c                                           ; $7458: $89
	adc  b                                           ; $7459: $88
	adc  b                                           ; $745a: $88
	sbc  b                                           ; $745b: $98
	adc  b                                           ; $745c: $88
	ld   a, c                                        ; $745d: $79
	adc  b                                           ; $745e: $88
	adc  b                                           ; $745f: $88
	sbc  b                                           ; $7460: $98
	sbc  b                                           ; $7461: $98
	adc  b                                           ; $7462: $88
	adc  c                                           ; $7463: $89
	adc  b                                           ; $7464: $88
	adc  b                                           ; $7465: $88
	adc  b                                           ; $7466: $88
	sbc  b                                           ; $7467: $98
	adc  b                                           ; $7468: $88
	adc  b                                           ; $7469: $88
	adc  c                                           ; $746a: $89
	adc  b                                           ; $746b: $88
	adc  b                                           ; $746c: $88
	sbc  b                                           ; $746d: $98
	adc  b                                           ; $746e: $88
	adc  c                                           ; $746f: $89
	adc  b                                           ; $7470: $88
	adc  b                                           ; $7471: $88
	adc  b                                           ; $7472: $88
	adc  b                                           ; $7473: $88
	adc  b                                           ; $7474: $88
	adc  b                                           ; $7475: $88
	adc  b                                           ; $7476: $88
	adc  b                                           ; $7477: $88
	adc  b                                           ; $7478: $88
	adc  b                                           ; $7479: $88
	adc  b                                           ; $747a: $88
	adc  b                                           ; $747b: $88
	adc  b                                           ; $747c: $88
	adc  b                                           ; $747d: $88
	adc  b                                           ; $747e: $88
	adc  b                                           ; $747f: $88
	adc  b                                           ; $7480: $88
	adc  b                                           ; $7481: $88
	adc  b                                           ; $7482: $88
	adc  b                                           ; $7483: $88
	adc  b                                           ; $7484: $88
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	adc  b                                           ; $7487: $88
	adc  b                                           ; $7488: $88
	adc  b                                           ; $7489: $88
	adc  b                                           ; $748a: $88
	adc  b                                           ; $748b: $88
	adc  b                                           ; $748c: $88
	adc  b                                           ; $748d: $88
	adc  b                                           ; $748e: $88
	adc  b                                           ; $748f: $88
	adc  b                                           ; $7490: $88
	adc  b                                           ; $7491: $88
	adc  b                                           ; $7492: $88
	adc  b                                           ; $7493: $88
	adc  b                                           ; $7494: $88
	adc  b                                           ; $7495: $88
	adc  b                                           ; $7496: $88
	adc  b                                           ; $7497: $88
	adc  b                                           ; $7498: $88

Jump_0df_7499:
	adc  b                                           ; $7499: $88
	adc  b                                           ; $749a: $88
	adc  b                                           ; $749b: $88
	adc  b                                           ; $749c: $88
	adc  b                                           ; $749d: $88
	adc  b                                           ; $749e: $88
	adc  b                                           ; $749f: $88
	adc  b                                           ; $74a0: $88
	adc  b                                           ; $74a1: $88
	adc  b                                           ; $74a2: $88
	adc  b                                           ; $74a3: $88
	adc  b                                           ; $74a4: $88
	adc  b                                           ; $74a5: $88
	adc  b                                           ; $74a6: $88
	adc  b                                           ; $74a7: $88
	adc  b                                           ; $74a8: $88
	adc  b                                           ; $74a9: $88
	adc  b                                           ; $74aa: $88
	adc  b                                           ; $74ab: $88
	adc  b                                           ; $74ac: $88
	adc  b                                           ; $74ad: $88
	adc  b                                           ; $74ae: $88
	adc  b                                           ; $74af: $88
	adc  b                                           ; $74b0: $88
	adc  b                                           ; $74b1: $88
	adc  b                                           ; $74b2: $88
	adc  b                                           ; $74b3: $88
	adc  b                                           ; $74b4: $88
	adc  b                                           ; $74b5: $88
	adc  b                                           ; $74b6: $88
	adc  b                                           ; $74b7: $88
	adc  b                                           ; $74b8: $88
	adc  b                                           ; $74b9: $88
	adc  b                                           ; $74ba: $88
	adc  b                                           ; $74bb: $88
	adc  b                                           ; $74bc: $88
	adc  b                                           ; $74bd: $88
	adc  b                                           ; $74be: $88
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	adc  b                                           ; $74c1: $88
	adc  b                                           ; $74c2: $88
	adc  b                                           ; $74c3: $88
	adc  b                                           ; $74c4: $88
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88

Call_0df_74c9:
	adc  b                                           ; $74c9: $88
	adc  b                                           ; $74ca: $88
	adc  b                                           ; $74cb: $88
	adc  b                                           ; $74cc: $88
	adc  b                                           ; $74cd: $88
	adc  b                                           ; $74ce: $88
	adc  b                                           ; $74cf: $88
	adc  b                                           ; $74d0: $88
	adc  b                                           ; $74d1: $88
	adc  b                                           ; $74d2: $88
	adc  b                                           ; $74d3: $88
	adc  b                                           ; $74d4: $88
	adc  b                                           ; $74d5: $88
	adc  b                                           ; $74d6: $88
	adc  b                                           ; $74d7: $88
	adc  b                                           ; $74d8: $88
	adc  b                                           ; $74d9: $88
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	adc  b                                           ; $74dd: $88
	adc  b                                           ; $74de: $88
	adc  b                                           ; $74df: $88
	adc  b                                           ; $74e0: $88
	adc  b                                           ; $74e1: $88
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	adc  b                                           ; $74e5: $88
	adc  b                                           ; $74e6: $88
	adc  b                                           ; $74e7: $88
	adc  b                                           ; $74e8: $88
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	adc  b                                           ; $74eb: $88
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	adc  b                                           ; $74ee: $88
	adc  b                                           ; $74ef: $88
	adc  b                                           ; $74f0: $88
	adc  b                                           ; $74f1: $88
	adc  b                                           ; $74f2: $88
	adc  b                                           ; $74f3: $88
	adc  b                                           ; $74f4: $88
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	adc  b                                           ; $74f7: $88
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	adc  b                                           ; $7500: $88
	adc  b                                           ; $7501: $88
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	adc  b                                           ; $7508: $88
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	adc  b                                           ; $750d: $88
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  b                                           ; $7518: $88
	sbc  b                                           ; $7519: $98
	adc  b                                           ; $751a: $88
	sbc  b                                           ; $751b: $98
	sbc  c                                           ; $751c: $99
	ld   a, b                                        ; $751d: $78
	sbc  b                                           ; $751e: $98
	sub  a                                           ; $751f: $97
	ld   a, c                                        ; $7520: $79
	add  a                                           ; $7521: $87
	add  a                                           ; $7522: $87
	adc  c                                           ; $7523: $89
	add  a                                           ; $7524: $87
	adc  b                                           ; $7525: $88
	adc  c                                           ; $7526: $89
	ld   a, b                                        ; $7527: $78
	ld   a, b                                        ; $7528: $78
	adc  c                                           ; $7529: $89
	sub  a                                           ; $752a: $97
	adc  c                                           ; $752b: $89
	add  a                                           ; $752c: $87
	sbc  b                                           ; $752d: $98
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	sub  a                                           ; $7530: $97
	sbc  c                                           ; $7531: $99
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	sbc  b                                           ; $7534: $98
	adc  c                                           ; $7535: $89
	ld   [hl], a                                     ; $7536: $77
	and  a                                           ; $7537: $a7
	ld   a, c                                        ; $7538: $79
	add  a                                           ; $7539: $87
	adc  c                                           ; $753a: $89
	ld   [hl], a                                     ; $753b: $77
	sbc  b                                           ; $753c: $98
	ld   [hl], a                                     ; $753d: $77
	sub  a                                           ; $753e: $97
	ld   [hl], a                                     ; $753f: $77
	ld   a, b                                        ; $7540: $78
	halt                                             ; $7541: $76
	and  a                                           ; $7542: $a7
	ld   a, c                                        ; $7543: $79
	ld   [hl], a                                     ; $7544: $77
	adc  c                                           ; $7545: $89
	ld   l, b                                        ; $7546: $68
	add  a                                           ; $7547: $87
	sub  [hl]                                        ; $7548: $96
	sbc  b                                           ; $7549: $98
	adc  d                                           ; $754a: $8a
	sbc  c                                           ; $754b: $99
	adc  c                                           ; $754c: $89
	sbc  b                                           ; $754d: $98
	ld   h, [hl]                                     ; $754e: $66
	add  a                                           ; $754f: $87
	ld   l, b                                        ; $7550: $68
	ld   h, a                                        ; $7551: $67
	sub  a                                           ; $7552: $97
	ld   h, a                                        ; $7553: $67
	adc  b                                           ; $7554: $88
	sbc  b                                           ; $7555: $98
	adc  c                                           ; $7556: $89
	sbc  c                                           ; $7557: $99
	sbc  b                                           ; $7558: $98
	ld   a, c                                        ; $7559: $79
	ld   [hl], a                                     ; $755a: $77
	halt                                             ; $755b: $76
	adc  b                                           ; $755c: $88
	halt                                             ; $755d: $76
	ld   h, a                                        ; $755e: $67
	ld   h, [hl]                                     ; $755f: $66
	ld   h, [hl]                                     ; $7560: $66
	ld   h, [hl]                                     ; $7561: $66
	ld   h, [hl]                                     ; $7562: $66
	halt                                             ; $7563: $76
	ld   h, [hl]                                     ; $7564: $66
	ld   a, b                                        ; $7565: $78
	add  a                                           ; $7566: $87
	adc  b                                           ; $7567: $88
	xor  c                                           ; $7568: $a9
	adc  c                                           ; $7569: $89
	sbc  d                                           ; $756a: $9a
	xor  b                                           ; $756b: $a8
	sbc  c                                           ; $756c: $99
	sbc  c                                           ; $756d: $99
	adc  b                                           ; $756e: $88
	xor  c                                           ; $756f: $a9
	sbc  d                                           ; $7570: $9a
	sbc  c                                           ; $7571: $99
	xor  d                                           ; $7572: $aa
	sbc  c                                           ; $7573: $99
	adc  b                                           ; $7574: $88
	ld   [hl], l                                     ; $7575: $75
	ld   d, e                                        ; $7576: $53
	ld   de, $1111                                   ; $7577: $11 $11 $11
	ld   de, $1a11                                   ; $757a: $11 $11 $1a
	ld   a, [$ffdf]                                  ; $757d: $fa $df $ff
	rst  $38                                         ; $7580: $ff
	rst  $38                                         ; $7581: $ff
	rst  $38                                         ; $7582: $ff
	xor  b                                           ; $7583: $a8
	cp   e                                           ; $7584: $bb
	ld   sp, $ca16                                   ; $7585: $31 $16 $ca
	ld   a, d                                        ; $7588: $7a
	rst  $38                                         ; $7589: $ff
	or   $11                                         ; $758a: $f6 $11
	ld   de, $1111                                   ; $758c: $11 $11 $11
	ld   de, $df11                                   ; $758f: $11 $11 $df
	rst  $38                                         ; $7592: $ff
	rst  $38                                         ; $7593: $ff
	rst  $38                                         ; $7594: $ff
	rst  $38                                         ; $7595: $ff
	add  c                                           ; $7596: $81
	ld   de, $1211                                   ; $7597: $11 $11 $12
	adc  a                                           ; $759a: $8f
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	db   $fc                                         ; $759e: $fc
	ld   b, c                                        ; $759f: $41
	ld   de, $1111                                   ; $75a0: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $75a3: $11 $11 $ff
	rst  $38                                         ; $75a6: $ff

Call_0df_75a7:
	rst  $38                                         ; $75a7: $ff
	rst  $38                                         ; $75a8: $ff
	rst  $30                                         ; $75a9: $f7
	sbc  h                                           ; $75aa: $9c
	ld   hl, rAUD1HIGH                                   ; $75ab: $21 $14 $ff
	rst  $38                                         ; $75ae: $ff
	rst  $38                                         ; $75af: $ff
	rst  $38                                         ; $75b0: $ff
	rst  $38                                         ; $75b1: $ff
	and  a                                           ; $75b2: $a7
	ld   de, $1111                                   ; $75b3: $11 $11 $11
	ld   de, $1111                                   ; $75b6: $11 $11 $11
	ld   de, $d919                                   ; $75b9: $11 $19 $d9
	rst  $38                                         ; $75bc: $ff
	rst  $38                                         ; $75bd: $ff
	rst  $38                                         ; $75be: $ff
	rst  $38                                         ; $75bf: $ff
	rst  $38                                         ; $75c0: $ff
	ld   [hl], h                                     ; $75c1: $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c2: $cf
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	rst  $38                                         ; $75c5: $ff
	cp   $cc                                         ; $75c6: $fe $cc
	rst  ToBoot                                         ; $75c8: $c7
	ld   d, h                                        ; $75c9: $54
	ld   de, $1111                                   ; $75ca: $11 $11 $11
	ld   de, $1111                                   ; $75cd: $11 $11 $11
	cp   a                                           ; $75d0: $bf
	rst  $38                                         ; $75d1: $ff
	rst  $38                                         ; $75d2: $ff
	rst  $38                                         ; $75d3: $ff
	di                                               ; $75d4: $f3
	rra                                              ; $75d5: $1f
	ld   hl, sp+$18                                  ; $75d6: $f8 $18
	rst  $38                                         ; $75d8: $ff
	rst  $38                                         ; $75d9: $ff
	rst  $38                                         ; $75da: $ff
	rst  $38                                         ; $75db: $ff
	and  c                                           ; $75dc: $a1
	inc  d                                           ; $75dd: $14
	ld   h, e                                        ; $75de: $63
	ld   de, $1113                                   ; $75df: $11 $13 $11
	ld   de, $1111                                   ; $75e2: $11 $11 $11
	ld   de, $ffff                                   ; $75e5: $11 $ff $ff
	rst  $38                                         ; $75e8: $ff
	rst  $38                                         ; $75e9: $ff
	ld   h, c                                        ; $75ea: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75eb: $cf
	jp   $ff8f                                       ; $75ec: $c3 $8f $ff


	rst  $38                                         ; $75ef: $ff
	rst  $38                                         ; $75f0: $ff
	ei                                               ; $75f1: $fb
	ld   de, $4115                                   ; $75f2: $11 $15 $41
	ld   de, $1111                                   ; $75f5: $11 $11 $11
	ld   de, $1111                                   ; $75f8: $11 $11 $11
	rra                                              ; $75fb: $1f
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	rst  $38                                         ; $75fe: $ff
	cp   $12                                         ; $75ff: $fe $12
	rst  $38                                         ; $7601: $ff
	ld   a, [$ffdf]                                  ; $7602: $fa $df $ff
	ei                                               ; $7605: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7606: $cf
	db   $f4                                         ; $7607: $f4
	ld   de, $5139                                   ; $7608: $11 $39 $51
	ld   de, $1111                                   ; $760b: $11 $11 $11
	ld   de, $1111                                   ; $760e: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7611: $cf
	rst  $38                                         ; $7612: $ff
	rst  $38                                         ; $7613: $ff
	rst  $38                                         ; $7614: $ff
	rst  $30                                         ; $7615: $f7
	dec  hl                                          ; $7616: $2b
	ei                                               ; $7617: $fb
	rst  $38                                         ; $7618: $ff
	rst  $38                                         ; $7619: $ff
	rst  $38                                         ; $761a: $ff
	ei                                               ; $761b: $fb
	sbc  c                                           ; $761c: $99
	ld   sp, $2113                                   ; $761d: $31 $13 $21
	ld   de, $1111                                   ; $7620: $11 $11 $11
	ld   de, $1111                                   ; $7623: $11 $11 $11
	inc  e                                           ; $7626: $1c
	rst  $38                                         ; $7627: $ff
	rst  $38                                         ; $7628: $ff
	rst  $38                                         ; $7629: $ff
	rst  $38                                         ; $762a: $ff
	sub  a                                           ; $762b: $97
	ld   a, d                                        ; $762c: $7a
	rst  $38                                         ; $762d: $ff
	rst  $38                                         ; $762e: $ff
	rst  $38                                         ; $762f: $ff
	rst  $38                                         ; $7630: $ff
	rst  ToBoot                                         ; $7631: $c7
	ld   de, $4223                                   ; $7632: $11 $23 $42
	ld   de, $1111                                   ; $7635: $11 $11 $11
	ld   de, $1111                                   ; $7638: $11 $11 $11
	ld   [de], a                                     ; $763b: $12
	rst  $38                                         ; $763c: $ff
	rst  $38                                         ; $763d: $ff
	rst  $38                                         ; $763e: $ff
	rst  $38                                         ; $763f: $ff
	and  $26                                         ; $7640: $e6 $26
	rst  $28                                         ; $7642: $ef
	rst  $38                                         ; $7643: $ff
	rst  $38                                         ; $7644: $ff
	rst  $38                                         ; $7645: $ff
	ld   sp, hl                                      ; $7646: $f9
	ld   de, $5324                                   ; $7647: $11 $24 $53
	ld   de, $1111                                   ; $764a: $11 $11 $11
	ld   de, $1111                                   ; $764d: $11 $11 $11
	ld   de, $ff3f                                   ; $7650: $11 $3f $ff
	rst  $38                                         ; $7653: $ff
	rst  $38                                         ; $7654: $ff
	db   $fc                                         ; $7655: $fc
	ld   [hl], e                                     ; $7656: $73
	ld   a, a                                        ; $7657: $7f
	rst  $38                                         ; $7658: $ff
	rst  $38                                         ; $7659: $ff
	rst  $38                                         ; $765a: $ff
	db   $fd                                         ; $765b: $fd
	ld   h, c                                        ; $765c: $61
	inc  de                                          ; $765d: $13
	ld   b, e                                        ; $765e: $43
	ld   de, $1111                                   ; $765f: $11 $11 $11
	ld   de, $1111                                   ; $7662: $11 $11 $11
	ld   de, $ff19                                   ; $7665: $11 $19 $ff
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	jp   z, $ff7b                                    ; $766b: $ca $7b $ff

	rst  $38                                         ; $766e: $ff
	rst  $38                                         ; $766f: $ff
	rst  $38                                         ; $7670: $ff
	rst  ToBoot                                         ; $7671: $c7
	ld   [de], a                                     ; $7672: $12
	ld   d, l                                        ; $7673: $55
	ld   d, c                                        ; $7674: $51
	ld   de, $1111                                   ; $7675: $11 $11 $11
	ld   de, $1111                                   ; $7678: $11 $11 $11
	ld   de, $ffff                                   ; $767b: $11 $ff $ff
	rst  $38                                         ; $767e: $ff
	rst  $38                                         ; $767f: $ff
	db   $fc                                         ; $7680: $fc
	ld   b, [hl]                                     ; $7681: $46
	rst  $38                                         ; $7682: $ff
	rst  $38                                         ; $7683: $ff
	rst  $38                                         ; $7684: $ff
	rst  $38                                         ; $7685: $ff
	ld   hl, sp+$11                                  ; $7686: $f8 $11
	ld   b, e                                        ; $7688: $43
	ld   sp, $1111                                   ; $7689: $31 $11 $11
	ld   de, $1111                                   ; $768c: $11 $11 $11
	ld   de, $7f11                                   ; $768f: $11 $11 $7f
	rst  $38                                         ; $7692: $ff
	rst  $38                                         ; $7693: $ff
	rst  $38                                         ; $7694: $ff
	rst  $38                                         ; $7695: $ff
	add  e                                           ; $7696: $83
	xor  a                                           ; $7697: $af
	rst  $38                                         ; $7698: $ff
	rst  $38                                         ; $7699: $ff
	rst  $38                                         ; $769a: $ff
	cp   $41                                         ; $769b: $fe $41
	inc  d                                           ; $769d: $14
	ld   h, e                                        ; $769e: $63
	ld   de, $1111                                   ; $769f: $11 $11 $11
	ld   de, $1111                                   ; $76a2: $11 $11 $11
	ld   de, $ff7f                                   ; $76a5: $11 $7f $ff
	rst  $38                                         ; $76a8: $ff
	rst  $38                                         ; $76a9: $ff
	rst  $38                                         ; $76aa: $ff
	and  l                                           ; $76ab: $a5
	rst  JumpTable                                         ; $76ac: $df
	rst  $38                                         ; $76ad: $ff
	rst  $38                                         ; $76ae: $ff
	rst  $38                                         ; $76af: $ff
	rst  $38                                         ; $76b0: $ff
	add  c                                           ; $76b1: $81
	inc  d                                           ; $76b2: $14
	ld   d, l                                        ; $76b3: $55
	ld   de, $1111                                   ; $76b4: $11 $11 $11
	ld   de, $1111                                   ; $76b7: $11 $11 $11
	ld   de, $ff4f                                   ; $76ba: $11 $4f $ff
	rst  $38                                         ; $76bd: $ff
	rst  $38                                         ; $76be: $ff
	rst  $38                                         ; $76bf: $ff
	reti                                             ; $76c0: $d9


	cp   a                                           ; $76c1: $bf
	rst  $38                                         ; $76c2: $ff
	rst  $38                                         ; $76c3: $ff
	rst  $38                                         ; $76c4: $ff
	rst  $38                                         ; $76c5: $ff
	or   h                                           ; $76c6: $b4
	inc  sp                                          ; $76c7: $33
	ld   b, h                                        ; $76c8: $44
	ld   de, $1111                                   ; $76c9: $11 $11 $11
	ld   de, $1111                                   ; $76cc: $11 $11 $11
	ld   de, $ff1e                                   ; $76cf: $11 $1e $ff
	rst  $38                                         ; $76d2: $ff
	rst  $38                                         ; $76d3: $ff
	rst  $38                                         ; $76d4: $ff
	ld   hl, sp-$71                                  ; $76d5: $f8 $8f
	rst  $38                                         ; $76d7: $ff
	rst  $38                                         ; $76d8: $ff
	rst  $38                                         ; $76d9: $ff
	rst  $38                                         ; $76da: $ff
	rst  $30                                         ; $76db: $f7
	ld   b, [hl]                                     ; $76dc: $46
	ld   h, [hl]                                     ; $76dd: $66
	ld   de, $1111                                   ; $76de: $11 $11 $11
	ld   de, $1111                                   ; $76e1: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $76e4: $11 $12 $ff
	rst  $38                                         ; $76e7: $ff
	rst  $38                                         ; $76e8: $ff
	rst  $38                                         ; $76e9: $ff
	rst  $38                                         ; $76ea: $ff
	call z, $ffff                                    ; $76eb: $cc $ff $ff
	rst  $38                                         ; $76ee: $ff
	rst  $38                                         ; $76ef: $ff
	cp   $96                                         ; $76f0: $fe $96
	ld   d, h                                        ; $76f2: $54
	ld   sp, $1111                                   ; $76f3: $31 $11 $11
	ld   de, $1111                                   ; $76f6: $11 $11 $11
	ld   de, $7f11                                   ; $76f9: $11 $11 $7f
	rst  $38                                         ; $76fc: $ff
	rst  $38                                         ; $76fd: $ff
	rst  $38                                         ; $76fe: $ff
	rst  $38                                         ; $76ff: $ff
	ei                                               ; $7700: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7701: $cf
	rst  $38                                         ; $7702: $ff
	rst  $38                                         ; $7703: $ff
	rst  $38                                         ; $7704: $ff
	rst  $38                                         ; $7705: $ff
	ret  z                                           ; $7706: $c8

	ld   h, h                                        ; $7707: $64
	ld   b, h                                        ; $7708: $44
	ld   de, $1111                                   ; $7709: $11 $11 $11
	ld   de, $1111                                   ; $770c: $11 $11 $11
	ld   de, $ff17                                   ; $770f: $11 $17 $ff
	rst  $38                                         ; $7712: $ff
	rst  $38                                         ; $7713: $ff
	rst  $38                                         ; $7714: $ff
	rst  $38                                         ; $7715: $ff
	db   $dd                                         ; $7716: $dd
	rst  $38                                         ; $7717: $ff
	rst  $38                                         ; $7718: $ff
	db   $fd                                         ; $7719: $fd
	rst  $28                                         ; $771a: $ef
	db   $fd                                         ; $771b: $fd
	and  a                                           ; $771c: $a7
	ld   h, [hl]                                     ; $771d: $66
	ld   b, c                                        ; $771e: $41
	ld   de, $1111                                   ; $771f: $11 $11 $11
	ld   de, $1111                                   ; $7722: $11 $11 $11
	ld   de, $ff8f                                   ; $7725: $11 $8f $ff
	rst  $38                                         ; $7728: $ff
	rst  $38                                         ; $7729: $ff
	rst  $38                                         ; $772a: $ff
	db   $fd                                         ; $772b: $fd
	rst  $38                                         ; $772c: $ff
	rst  $38                                         ; $772d: $ff
	rst  $38                                         ; $772e: $ff
	rst  $38                                         ; $772f: $ff
	rst  $38                                         ; $7730: $ff
	cp   b                                           ; $7731: $b8
	halt                                             ; $7732: $76
	ld   h, l                                        ; $7733: $65
	ld   de, $1111                                   ; $7734: $11 $11 $11
	ld   de, $1111                                   ; $7737: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $773a: $11 $12 $ff
	rst  $38                                         ; $773d: $ff
	rst  $38                                         ; $773e: $ff
	rst  $38                                         ; $773f: $ff
	rst  $38                                         ; $7740: $ff
	rst  $38                                         ; $7741: $ff
	rst  $38                                         ; $7742: $ff
	rst  $38                                         ; $7743: $ff
	rst  $38                                         ; $7744: $ff
	cp   $fd                                         ; $7745: $fe $fd
	xor  d                                           ; $7747: $aa
	and  l                                           ; $7748: $a5
	ld   d, e                                        ; $7749: $53
	ld   de, $1111                                   ; $774a: $11 $11 $11
	ld   de, $1111                                   ; $774d: $11 $11 $11
	ld   de, $df11                                   ; $7750: $11 $11 $df
	rst  $38                                         ; $7753: $ff
	rst  $38                                         ; $7754: $ff
	rst  $38                                         ; $7755: $ff
	rst  $38                                         ; $7756: $ff
	cp   $ff                                         ; $7757: $fe $ff
	rst  $38                                         ; $7759: $ff
	rst  $38                                         ; $775a: $ff
	db   $ed                                         ; $775b: $ed
	sbc  $aa                                         ; $775c: $de $aa
	sub  [hl]                                        ; $775e: $96
	ld   d, e                                        ; $775f: $53
	ld   de, $1111                                   ; $7760: $11 $11 $11
	ld   de, $1111                                   ; $7763: $11 $11 $11
	ld   de, $cf11                                   ; $7766: $11 $11 $cf
	rst  $38                                         ; $7769: $ff
	rst  $38                                         ; $776a: $ff
	rst  $38                                         ; $776b: $ff
	rst  $38                                         ; $776c: $ff
	rst  $38                                         ; $776d: $ff
	sbc  $ff                                         ; $776e: $de $ff
	rst  $38                                         ; $7770: $ff
	db   $dd                                         ; $7771: $dd
	db   $ed                                         ; $7772: $ed
	cp   e                                           ; $7773: $bb
	ld   [hl], l                                     ; $7774: $75
	ld   h, e                                        ; $7775: $63
	ld   de, $1111                                   ; $7776: $11 $11 $11
	ld   de, $1111                                   ; $7779: $11 $11 $11
	ld   de, $bf11                                   ; $777c: $11 $11 $bf
	rst  $38                                         ; $777f: $ff
	rst  $38                                         ; $7780: $ff
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	xor  $ef                                         ; $7783: $ee $ef
	rst  $38                                         ; $7785: $ff
	rst  $38                                         ; $7786: $ff
	db   $dd                                         ; $7787: $dd
	db   $ec                                         ; $7788: $ec
	xor  c                                           ; $7789: $a9
	add  [hl]                                        ; $778a: $86
	ld   [hl], l                                     ; $778b: $75
	ld   de, $1111                                   ; $778c: $11 $11 $11
	ld   de, $1111                                   ; $778f: $11 $11 $11
	ld   de, $3f11                                   ; $7792: $11 $11 $3f
	rst  $38                                         ; $7795: $ff
	rst  $38                                         ; $7796: $ff
	rst  $38                                         ; $7797: $ff
	rst  $38                                         ; $7798: $ff
	db   $fc                                         ; $7799: $fc
	sbc  $ff                                         ; $779a: $de $ff
	rst  $38                                         ; $779c: $ff
	cp   $fd                                         ; $779d: $fe $fd
	jp   z, Jump_0df_4695                            ; $779f: $ca $95 $46

	ld   b, d                                        ; $77a2: $42
	ld   de, $1111                                   ; $77a3: $11 $11 $11
	ld   de, $1111                                   ; $77a6: $11 $11 $11

Call_0df_77a9:
	ld   de, $ff15                                   ; $77a9: $11 $15 $ff
	rst  $38                                         ; $77ac: $ff
	rst  $38                                         ; $77ad: $ff
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77b0: $cf
	rst  $38                                         ; $77b1: $ff
	rst  $38                                         ; $77b2: $ff
	rst  $38                                         ; $77b3: $ff
	rst  $38                                         ; $77b4: $ff
	db   $ed                                         ; $77b5: $ed
	cp   b                                           ; $77b6: $b8
	ld   h, l                                        ; $77b7: $65

Call_0df_77b8:
	ld   h, h                                        ; $77b8: $64
	ld   de, $1111                                   ; $77b9: $11 $11 $11
	ld   de, $1111                                   ; $77bc: $11 $11 $11
	ld   de, $7f11                                   ; $77bf: $11 $11 $7f
	rst  $38                                         ; $77c2: $ff
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	rst  $38                                         ; $77c5: $ff
	db   $dd                                         ; $77c6: $dd
	rst  $38                                         ; $77c7: $ff
	rst  $38                                         ; $77c8: $ff
	rst  $38                                         ; $77c9: $ff
	rst  $38                                         ; $77ca: $ff
	rst  $38                                         ; $77cb: $ff
	jp   c, Jump_0df_4694                            ; $77cc: $da $94 $46

	ld   de, $1111                                   ; $77cf: $11 $11 $11
	ld   de, $1111                                   ; $77d2: $11 $11 $11
	ld   de, $1811                                   ; $77d5: $11 $11 $18
	rst  $38                                         ; $77d8: $ff
	rst  $38                                         ; $77d9: $ff
	rst  $38                                         ; $77da: $ff
	rst  $38                                         ; $77db: $ff
	cp   $df                                         ; $77dc: $fe $df
	rst  $38                                         ; $77de: $ff
	rst  $38                                         ; $77df: $ff
	rst  $38                                         ; $77e0: $ff
	rst  $38                                         ; $77e1: $ff
	db   $ed                                         ; $77e2: $ed
	and  [hl]                                        ; $77e3: $a6
	ld   d, l                                        ; $77e4: $55
	ld   h, l                                        ; $77e5: $65
	ld   b, c                                        ; $77e6: $41
	ld   de, $1111                                   ; $77e7: $11 $11 $11
	ld   de, $1111                                   ; $77ea: $11 $11 $11
	ld   de, $ff3f                                   ; $77ed: $11 $3f $ff
	rst  $38                                         ; $77f0: $ff
	rst  $38                                         ; $77f1: $ff
	rst  $28                                         ; $77f2: $ef
	ld   [$ffff], a                                  ; $77f3: $ea $ff $ff
	rst  $38                                         ; $77f6: $ff
	rst  $38                                         ; $77f7: $ff
	cp   $ca                                         ; $77f8: $fe $ca
	halt                                             ; $77fa: $76
	ld   b, a                                        ; $77fb: $47
	ld   [hl], e                                     ; $77fc: $73
	ld   b, d                                        ; $77fd: $42
	ld   de, $1111                                   ; $77fe: $11 $11 $11
	ld   de, $1111                                   ; $7801: $11 $11 $11
	ld   [de], a                                     ; $7804: $12
	ld   e, a                                        ; $7805: $5f
	rst  $38                                         ; $7806: $ff
	rst  $38                                         ; $7807: $ff
	db   $fd                                         ; $7808: $fd
	xor  l                                           ; $7809: $ad
	db   $db                                         ; $780a: $db
	rst  $38                                         ; $780b: $ff
	rst  $38                                         ; $780c: $ff
	rst  $38                                         ; $780d: $ff
	rst  $38                                         ; $780e: $ff
	ld   a, [$76ba]                                  ; $780f: $fa $ba $76
	ld   b, a                                        ; $7812: $47
	add  [hl]                                        ; $7813: $86
	ld   h, e                                        ; $7814: $63
	ld   de, $1111                                   ; $7815: $11 $11 $11
	ld   de, $1111                                   ; $7818: $11 $11 $11
	inc  de                                          ; $781b: $13
	ld   l, a                                        ; $781c: $6f
	rst  $38                                         ; $781d: $ff
	rst  $38                                         ; $781e: $ff
	db   $eb                                         ; $781f: $eb
	adc  l                                           ; $7820: $8d
	db   $fc                                         ; $7821: $fc
	rst  $38                                         ; $7822: $ff
	rst  $38                                         ; $7823: $ff
	rst  $38                                         ; $7824: $ff
	rst  $38                                         ; $7825: $ff
	db   $fc                                         ; $7826: $fc
	xor  d                                           ; $7827: $aa
	halt                                             ; $7828: $76
	ld   c, b                                        ; $7829: $48
	add  [hl]                                        ; $782a: $86
	add  h                                           ; $782b: $84
	ld   de, $1111                                   ; $782c: $11 $11 $11
	ld   de, $1111                                   ; $782f: $11 $11 $11
	inc  de                                          ; $7832: $13
	ld   e, e                                        ; $7833: $5b
	rst  $38                                         ; $7834: $ff
	rst  $38                                         ; $7835: $ff
	ld   a, [$dd8b]                                  ; $7836: $fa $8b $dd
	rst  $28                                         ; $7839: $ef
	rst  $38                                         ; $783a: $ff
	rst  $38                                         ; $783b: $ff
	cp   $eb                                         ; $783c: $fe $eb
	adc  e                                           ; $783e: $8b
	halt                                             ; $783f: $76
	ld   h, l                                        ; $7840: $65
	sbc  c                                           ; $7841: $99
	xor  d                                           ; $7842: $aa
	ld   b, c                                        ; $7843: $41
	ld   de, $1111                                   ; $7844: $11 $11 $11
	ld   de, $1111                                   ; $7847: $11 $11 $11
	ld   a, [hl-]                                    ; $784a: $3a
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	ei                                               ; $784d: $fb
	ld   a, e                                        ; $784e: $7b
	sbc  l                                           ; $784f: $9d
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	rst  $38                                         ; $7852: $ff
	rst  $38                                         ; $7853: $ff
	rst  JumpTable                                         ; $7854: $df
	xor  b                                           ; $7855: $a8
	or   l                                           ; $7856: $b5
	adc  c                                           ; $7857: $89
	adc  e                                           ; $7858: $8b
	sbc  d                                           ; $7859: $9a
	add  h                                           ; $785a: $84
	ld   de, $1111                                   ; $785b: $11 $11 $11
	ld   de, $1111                                   ; $785e: $11 $11 $11
	inc  d                                           ; $7861: $14
	xor  a                                           ; $7862: $af
	rst  $38                                         ; $7863: $ff
	rst  $38                                         ; $7864: $ff
	cp   b                                           ; $7865: $b8
	sbc  c                                           ; $7866: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7867: $cf
	rst  $38                                         ; $7868: $ff
	rst  $38                                         ; $7869: $ff
	rst  $38                                         ; $786a: $ff
	rst  $38                                         ; $786b: $ff
	ld   [$898a], a                                  ; $786c: $ea $8a $89
	sbc  b                                           ; $786f: $98
	sbc  d                                           ; $7870: $9a
	cp   e                                           ; $7871: $bb
	ld   [hl], e                                     ; $7872: $73
	ld   de, $1111                                   ; $7873: $11 $11 $11
	ld   de, $1111                                   ; $7876: $11 $11 $11
	ld   d, $ff                                      ; $7879: $16 $ff
	rst  $38                                         ; $787b: $ff
	db   $fd                                         ; $787c: $fd
	adc  c                                           ; $787d: $89
	adc  c                                           ; $787e: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $787f: $cf
	rst  $38                                         ; $7880: $ff
	rst  $38                                         ; $7881: $ff
	rst  $38                                         ; $7882: $ff
	cp   $b7                                         ; $7883: $fe $b7
	ld   a, b                                        ; $7885: $78
	xor  d                                           ; $7886: $aa
	sbc  c                                           ; $7887: $99
	sbc  e                                           ; $7888: $9b
	db   $eb                                         ; $7889: $eb
	ld   [hl], c                                     ; $788a: $71
	ld   de, $1111                                   ; $788b: $11 $11 $11
	ld   de, $1111                                   ; $788e: $11 $11 $11
	inc  e                                           ; $7891: $1c
	rst  $38                                         ; $7892: $ff
	rst  $38                                         ; $7893: $ff
	rst  $30                                         ; $7894: $f7
	ld   a, d                                        ; $7895: $7a
	ld   h, a                                        ; $7896: $67
	rst  $38                                         ; $7897: $ff
	rst  $38                                         ; $7898: $ff
	rst  $38                                         ; $7899: $ff
	rst  $38                                         ; $789a: $ff
	rst  $38                                         ; $789b: $ff
	sub  a                                           ; $789c: $97
	halt                                             ; $789d: $76
	cp   l                                           ; $789e: $bd
	cp   e                                           ; $789f: $bb
	call z, $82dd                                    ; $78a0: $cc $dd $82
	ld   de, $1111                                   ; $78a3: $11 $11 $11
	ld   de, $1111                                   ; $78a6: $11 $11 $11
	add  hl, de                                      ; $78a9: $19
	rst  $38                                         ; $78aa: $ff
	rst  $38                                         ; $78ab: $ff
	cp   c                                           ; $78ac: $b9
	xor  b                                           ; $78ad: $a8
	ld   h, l                                        ; $78ae: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78af: $cf
	rst  $38                                         ; $78b0: $ff
	rst  $38                                         ; $78b1: $ff
	rst  $38                                         ; $78b2: $ff
	cp   $96                                         ; $78b3: $fe $96
	ld   b, a                                        ; $78b5: $47
	rst  JumpTable                                         ; $78b6: $df
	call z, $febd                                    ; $78b7: $cc $bd $fe
	sub  e                                           ; $78ba: $93
	ld   de, $1111                                   ; $78bb: $11 $11 $11
	ld   de, $1111                                   ; $78be: $11 $11 $11
	ld   de, $ffff                                   ; $78c1: $11 $ff $ff
	set  1, e                                        ; $78c4: $cb $cb
	push bc                                          ; $78c6: $c5
	inc  e                                           ; $78c7: $1c
	rst  $38                                         ; $78c8: $ff
	rst  $38                                         ; $78c9: $ff
	rst  $38                                         ; $78ca: $ff
	rst  $38                                         ; $78cb: $ff
	and  $14                                         ; $78cc: $e6 $14
	xor  a                                           ; $78ce: $af
	db   $fc                                         ; $78cf: $fc
	sbc  l                                           ; $78d0: $9d
	rst  $38                                         ; $78d1: $ff
	rst  $20                                         ; $78d2: $e7
	ld   de, $1111                                   ; $78d3: $11 $11 $11
	ld   de, $1111                                   ; $78d6: $11 $11 $11
	ld   de, $ff1e                                   ; $78d9: $11 $1e $ff
	rst  $38                                         ; $78dc: $ff
	db   $fd                                         ; $78dd: $fd
	xor  b                                           ; $78de: $a8
	ld   d, d                                        ; $78df: $52
	cp   a                                           ; $78e0: $bf
	rst  $38                                         ; $78e1: $ff
	rst  $38                                         ; $78e2: $ff
	rst  $38                                         ; $78e3: $ff
	db   $fd                                         ; $78e4: $fd
	ld   [hl], e                                     ; $78e5: $73
	ld   e, d                                        ; $78e6: $5a
	cp   [hl]                                        ; $78e7: $be
	jp   c, $fedf                                    ; $78e8: $da $df $fe

	add  e                                           ; $78eb: $83
	ld   de, $1111                                   ; $78ec: $11 $11 $11
	ld   de, $1111                                   ; $78ef: $11 $11 $11
	ld   de, $ff6f                                   ; $78f2: $11 $6f $ff
	rst  $38                                         ; $78f5: $ff
	cp   $a2                                         ; $78f6: $fe $a2
	dec  d                                           ; $78f8: $15
	rst  $38                                         ; $78f9: $ff
	rst  $38                                         ; $78fa: $ff
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	push af                                          ; $78fd: $f5
	daa                                              ; $78fe: $27
	sbc  b                                           ; $78ff: $98
	xor  c                                           ; $7900: $a9
	xor  a                                           ; $7901: $af
	rst  $38                                         ; $7902: $ff
	jp   c, Jump_0df_4176                            ; $7903: $da $76 $41

	ld   de, $1111                                   ; $7906: $11 $11 $11
	ld   de, $1111                                   ; $7909: $11 $11 $11
	rra                                              ; $790c: $1f
	rst  $38                                         ; $790d: $ff
	rst  $38                                         ; $790e: $ff
	rst  $38                                         ; $790f: $ff
	call nz, rAUD1LEN                                   ; $7910: $c4 $11 $ff
	rst  $38                                         ; $7913: $ff
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	or   $15                                         ; $7916: $f6 $15
	db   $ec                                         ; $7918: $ec
	ld   h, l                                        ; $7919: $65
	ld   l, l                                        ; $791a: $6d
	rst  $38                                         ; $791b: $ff
	reti                                             ; $791c: $d9


	ld   a, c                                        ; $791d: $79
	sub  e                                           ; $791e: $93
	ld   de, $1111                                   ; $791f: $11 $11 $11
	ld   de, $1111                                   ; $7922: $11 $11 $11
	rra                                              ; $7925: $1f
	rst  $38                                         ; $7926: $ff
	sbc  $ff                                         ; $7927: $de $ff
	or   $11                                         ; $7929: $f6 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $792b: $cf
	rst  $38                                         ; $792c: $ff
	rst  $28                                         ; $792d: $ef
	rst  $38                                         ; $792e: $ff
	ei                                               ; $792f: $fb
	ld   [hl], $bd                                   ; $7930: $36 $bd
	ld   [hl], c                                     ; $7932: $71
	inc  l                                           ; $7933: $2c
	rst  $38                                         ; $7934: $ff
	jp   hl                                          ; $7935: $e9


	sbc  h                                           ; $7936: $9c
	rst  $10                                         ; $7937: $d7
	ld   de, $1111                                   ; $7938: $11 $11 $11
	ld   de, $1111                                   ; $793b: $11 $11 $11
	ld   de, $fcff                                   ; $793e: $11 $ff $fc
	rst  $38                                         ; $7941: $ff
	rst  $38                                         ; $7942: $ff
	ld   de, $ff1f                                   ; $7943: $11 $1f $ff
	rst  $38                                         ; $7946: $ff

Jump_0df_7947:
	rst  $38                                         ; $7947: $ff
	rst  $38                                         ; $7948: $ff
	sub  [hl]                                        ; $7949: $96
	xor  [hl]                                        ; $794a: $ae
	or   l                                           ; $794b: $b5
	ld   [de], a                                     ; $794c: $12
	rst  JumpTable                                         ; $794d: $df
	db   $ec                                         ; $794e: $ec
	cp   d                                           ; $794f: $ba
	db   $ed                                         ; $7950: $ed
	ld   h, c                                        ; $7951: $61
	ld   de, $1111                                   ; $7952: $11 $11 $11
	ld   de, $1111                                   ; $7955: $11 $11 $11
	ld   c, a                                        ; $7958: $4f
	rst  $38                                         ; $7959: $ff
	rst  JumpTable                                         ; $795a: $df
	rst  $38                                         ; $795b: $ff
	pop  hl                                          ; $795c: $e1
	ld   [de], a                                     ; $795d: $12
	rst  $38                                         ; $795e: $ff
	adc  $ff                                         ; $795f: $ce $ff
	rst  $38                                         ; $7961: $ff
	db   $fd                                         ; $7962: $fd
	adc  $d8                                         ; $7963: $ce $d8
	ld   b, c                                        ; $7965: $41
	ld   a, [hl+]                                    ; $7966: $2a
	set  1, h                                        ; $7967: $cb $cc
	cp   [hl]                                        ; $7969: $be
	add  sp, $42                                     ; $796a: $e8 $42
	ld   de, $1111                                   ; $796c: $11 $11 $11
	ld   de, $1c11                                   ; $796f: $11 $11 $1c
	rst  $38                                         ; $7972: $ff
	rst  JumpTable                                         ; $7973: $df
	rst  $38                                         ; $7974: $ff
	db   $fd                                         ; $7975: $fd
	ld   de, $a58e                                   ; $7976: $11 $8e $a5
	xor  a                                           ; $7979: $af
	rst  $38                                         ; $797a: $ff
	rst  $38                                         ; $797b: $ff
	rst  $38                                         ; $797c: $ff
	cp   $95                                         ; $797d: $fe $95
	dec  [hl]                                        ; $797f: $35
	sub  a                                           ; $7980: $97
	ld   d, a                                        ; $7981: $57
	xor  e                                           ; $7982: $ab
	call c, Call_0df_75a7                            ; $7983: $dc $a7 $75
	ld   de, $1111                                   ; $7986: $11 $11 $11
	ld   de, $cf11                                   ; $7989: $11 $11 $cf
	db   $dd                                         ; $798c: $dd
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	di                                               ; $798f: $f3
	ld   e, [hl]                                     ; $7990: $5e
	rst  $30                                         ; $7991: $f7
	ld   [hl], $af                                   ; $7992: $36 $af
	rst  $38                                         ; $7994: $ff
	rst  $38                                         ; $7995: $ff
	rst  $38                                         ; $7996: $ff
	rst  $38                                         ; $7997: $ff
	ret  z                                           ; $7998: $c8

	sbc  d                                           ; $7999: $9a
	ld   h, h                                        ; $799a: $64
	inc  [hl]                                        ; $799b: $34
	ld   d, a                                        ; $799c: $57
	add  a                                           ; $799d: $87
	ld   h, a                                        ; $799e: $67
	ld   [hl], e                                     ; $799f: $73
	ld   de, $1111                                   ; $79a0: $11 $11 $11
	ld   de, $7515                                   ; $79a3: $11 $15 $75
	adc  a                                           ; $79a6: $8f
	rst  $38                                         ; $79a7: $ff
	rst  $38                                         ; $79a8: $ff
	rst  JumpTable                                         ; $79a9: $df
	rst  $38                                         ; $79aa: $ff
	add  sp, $6a                                     ; $79ab: $e8 $6a
	rst  $28                                         ; $79ad: $ef
	jp   z, $ffcf                                    ; $79ae: $ca $cf $ff

	cp   $df                                         ; $79b1: $fe $df
	db   $eb                                         ; $79b3: $eb
	ld   [hl], l                                     ; $79b4: $75
	inc  sp                                          ; $79b5: $33
	ld   b, e                                        ; $79b6: $43
	ld   [hl+], a                                    ; $79b7: $22
	ld   b, h                                        ; $79b8: $44
	ld   b, e                                        ; $79b9: $43
	ld   de, $1111                                   ; $79ba: $11 $11 $11
	ld   de, $1121                                   ; $79bd: $11 $21 $11
	ld   e, d                                        ; $79c0: $5a
	db   $dd                                         ; $79c1: $dd
	cp   d                                           ; $79c2: $ba
	rst  JumpTable                                         ; $79c3: $df
	rst  $38                                         ; $79c4: $ff
	xor  $ff                                         ; $79c5: $ee $ff
	db   $fd                                         ; $79c7: $fd
	db   $dd                                         ; $79c8: $dd
	sbc  $fe                                         ; $79c9: $de $fe
	db   $dd                                         ; $79cb: $dd
	db   $dd                                         ; $79cc: $dd
	call z, $aabb                                    ; $79cd: $cc $bb $aa
	xor  d                                           ; $79d0: $aa
	adc  b                                           ; $79d1: $88
	ld   h, l                                        ; $79d2: $65
	ld   d, e                                        ; $79d3: $53
	ld   hl, $1111                                   ; $79d4: $21 $11 $11
	ld   de, $1111                                   ; $79d7: $11 $11 $11
	ld   de, $4711                                   ; $79da: $11 $11 $47
	xor  h                                           ; $79dd: $ac
	rst  $28                                         ; $79de: $ef
	rst  $38                                         ; $79df: $ff
	rst  $38                                         ; $79e0: $ff
	rst  $38                                         ; $79e1: $ff
	rst  $38                                         ; $79e2: $ff
	rst  $38                                         ; $79e3: $ff
	rst  $38                                         ; $79e4: $ff
	rst  $38                                         ; $79e5: $ff
	rst  $38                                         ; $79e6: $ff
	cp   $dc                                         ; $79e7: $fe $dc
	cp   c                                           ; $79e9: $b9
	sub  a                                           ; $79ea: $97
	ld   b, d                                        ; $79eb: $42
	ld   de, $1111                                   ; $79ec: $11 $11 $11
	ld   de, $1111                                   ; $79ef: $11 $11 $11
	ld   de, $1211                                   ; $79f2: $11 $11 $12
	ld   e, d                                        ; $79f5: $5a
	rst  JumpTable                                         ; $79f6: $df
	rst  $38                                         ; $79f7: $ff
	rst  $38                                         ; $79f8: $ff
	rst  $38                                         ; $79f9: $ff
	rst  $38                                         ; $79fa: $ff
	rst  $38                                         ; $79fb: $ff
	rst  $38                                         ; $79fc: $ff
	rst  $38                                         ; $79fd: $ff
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	db   $ed                                         ; $7a00: $ed
	jp   z, Jump_0df_5387                            ; $7a01: $ca $87 $53

	ld   de, $1111                                   ; $7a04: $11 $11 $11
	ld   de, $1111                                   ; $7a07: $11 $11 $11
	ld   de, $1111                                   ; $7a0a: $11 $11 $11
	ld   h, $be                                      ; $7a0d: $26 $be
	rst  $38                                         ; $7a0f: $ff
	rst  $38                                         ; $7a10: $ff
	rst  $38                                         ; $7a11: $ff
	rst  $38                                         ; $7a12: $ff
	rst  $38                                         ; $7a13: $ff
	rst  $38                                         ; $7a14: $ff
	rst  $38                                         ; $7a15: $ff
	rst  $38                                         ; $7a16: $ff
	rst  $38                                         ; $7a17: $ff
	cp   $db                                         ; $7a18: $fe $db
	sbc  b                                           ; $7a1a: $98
	ld   h, h                                        ; $7a1b: $64
	ld   sp, $1111                                   ; $7a1c: $31 $11 $11
	ld   de, $1111                                   ; $7a1f: $11 $11 $11
	ld   de, $1111                                   ; $7a22: $11 $11 $11
	ld   [de], a                                     ; $7a25: $12
	ld   l, d                                        ; $7a26: $6a
	rst  $38                                         ; $7a27: $ff
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	rst  $38                                         ; $7a2c: $ff
	rst  $38                                         ; $7a2d: $ff
	rst  $38                                         ; $7a2e: $ff
	rst  $38                                         ; $7a2f: $ff
	rst  $38                                         ; $7a30: $ff
	db   $ed                                         ; $7a31: $ed
	cp   e                                           ; $7a32: $bb
	sub  [hl]                                        ; $7a33: $96
	ld   b, d                                        ; $7a34: $42
	ld   hl, $1111                                   ; $7a35: $21 $11 $11
	ld   de, $1111                                   ; $7a38: $11 $11 $11
	ld   de, $1111                                   ; $7a3b: $11 $11 $11
	inc  d                                           ; $7a3e: $14
	sbc  l                                           ; $7a3f: $9d
	rst  $38                                         ; $7a40: $ff
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	rst  $38                                         ; $7a44: $ff
	rst  $38                                         ; $7a45: $ff
	rst  $38                                         ; $7a46: $ff
	rst  $38                                         ; $7a47: $ff
	rst  $38                                         ; $7a48: $ff
	rst  $38                                         ; $7a49: $ff
	call c, $85ca                                    ; $7a4a: $dc $ca $85
	ld   [hl-], a                                    ; $7a4d: $32
	ld   de, $1111                                   ; $7a4e: $11 $11 $11
	ld   de, $1111                                   ; $7a51: $11 $11 $11
	ld   de, $1111                                   ; $7a54: $11 $11 $11
	scf                                              ; $7a57: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a58: $cf
	rst  $38                                         ; $7a59: $ff
	rst  $38                                         ; $7a5a: $ff
	rst  $38                                         ; $7a5b: $ff
	rst  $38                                         ; $7a5c: $ff
	rst  $38                                         ; $7a5d: $ff
	rst  $38                                         ; $7a5e: $ff
	rst  $38                                         ; $7a5f: $ff
	rst  $38                                         ; $7a60: $ff
	rst  $38                                         ; $7a61: $ff
	rst  $38                                         ; $7a62: $ff
	db   $ed                                         ; $7a63: $ed
	ret                                              ; $7a64: $c9


	ld   h, h                                        ; $7a65: $64
	ld   hl, $1111                                   ; $7a66: $21 $11 $11
	ld   de, $1111                                   ; $7a69: $11 $11 $11
	ld   de, $1111                                   ; $7a6c: $11 $11 $11
	ld   de, $ff6b                                   ; $7a6f: $11 $6b $ff
	rst  $38                                         ; $7a72: $ff
	rst  $38                                         ; $7a73: $ff
	rst  $38                                         ; $7a74: $ff
	rst  $38                                         ; $7a75: $ff
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	rst  $38                                         ; $7a79: $ff
	rst  $38                                         ; $7a7a: $ff
	xor  $dc                                         ; $7a7b: $ee $dc
	and  a                                           ; $7a7d: $a7
	ld   b, e                                        ; $7a7e: $43
	ld   hl, $1111                                   ; $7a7f: $21 $11 $11
	ld   de, $1111                                   ; $7a82: $11 $11 $11
	ld   de, $1111                                   ; $7a85: $11 $11 $11
	ld   d, $be                                      ; $7a88: $16 $be
	rst  $38                                         ; $7a8a: $ff
	rst  $38                                         ; $7a8b: $ff
	rst  $38                                         ; $7a8c: $ff
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	rst  $38                                         ; $7a90: $ff
	rst  $38                                         ; $7a91: $ff
	rst  $38                                         ; $7a92: $ff
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	db   $db                                         ; $7a95: $db
	ld   h, e                                        ; $7a96: $63
	ld   de, $1111                                   ; $7a97: $11 $11 $11
	ld   de, $1111                                   ; $7a9a: $11 $11 $11
	ld   de, $3411                                   ; $7a9d: $11 $11 $34
	add  hl, sp                                      ; $7aa0: $39
	rst  $38                                         ; $7aa1: $ff
	rst  $38                                         ; $7aa2: $ff
	rst  $38                                         ; $7aa3: $ff
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	rst  $38                                         ; $7aaa: $ff
	ld   sp, hl                                      ; $7aab: $f9
	cp   [hl]                                        ; $7aac: $be
	and  e                                           ; $7aad: $a3
	ld   de, $1111                                   ; $7aae: $11 $11 $11
	ld   de, $1111                                   ; $7ab1: $11 $11 $11
	ld   de, $2b11                                   ; $7ab4: $11 $11 $2b
	rst  $38                                         ; $7ab7: $ff
	rst  $38                                         ; $7ab8: $ff
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	cp   $ff                                         ; $7abb: $fe $ff
	rst  $38                                         ; $7abd: $ff
	xor  e                                           ; $7abe: $ab
	rst  $38                                         ; $7abf: $ff
	rst  $38                                         ; $7ac0: $ff
	rst  $38                                         ; $7ac1: $ff
	rst  $38                                         ; $7ac2: $ff
	ld   a, [$c37d]                                  ; $7ac3: $fa $7d $c3
	ld   de, $1111                                   ; $7ac6: $11 $11 $11
	ld   de, $1111                                   ; $7ac9: $11 $11 $11
	ld   de, $1441                                   ; $7acc: $11 $41 $14
	rst  $38                                         ; $7acf: $ff
	rst  $38                                         ; $7ad0: $ff
	rst  JumpTable                                         ; $7ad1: $df
	rst  $38                                         ; $7ad2: $ff
	push hl                                          ; $7ad3: $e5
	ld   a, a                                        ; $7ad4: $7f
	rst  $38                                         ; $7ad5: $ff
	sub  l                                           ; $7ad6: $95
	rst  $38                                         ; $7ad7: $ff
	cp   $af                                         ; $7ad8: $fe $af
	rst  $38                                         ; $7ada: $ff
	or   $6e                                         ; $7adb: $f6 $6e
	rst  $30                                         ; $7add: $f7
	ld   de, $1135                                   ; $7ade: $11 $35 $11
	ld   de, $1111                                   ; $7ae1: $11 $11 $11
	ld   de, $1171                                   ; $7ae4: $11 $71 $11
	rst  $38                                         ; $7ae7: $ff
	rst  $38                                         ; $7ae8: $ff
	rst  JumpTable                                         ; $7ae9: $df
	rst  $38                                         ; $7aea: $ff
	pop  bc                                          ; $7aeb: $c1
	ld   e, a                                        ; $7aec: $5f
	rst  $38                                         ; $7aed: $ff
	ld   b, [hl]                                     ; $7aee: $46
	rst  $38                                         ; $7aef: $ff
	db   $fc                                         ; $7af0: $fc
	xor  a                                           ; $7af1: $af
	rst  $38                                         ; $7af2: $ff
	call nc, $f39f                                   ; $7af3: $d4 $9f $f3
	ld   de, $1188                                   ; $7af6: $11 $88 $11
	ld   de, $1111                                   ; $7af9: $11 $11 $11
	ld   de, $1261                                   ; $7afc: $11 $61 $12
	rst  $38                                         ; $7aff: $ff
	db   $fd                                         ; $7b00: $fd
	rst  $38                                         ; $7b01: $ff
	rst  $38                                         ; $7b02: $ff
	sub  c                                           ; $7b03: $91
	ld   a, a                                        ; $7b04: $7f
	db   $fd                                         ; $7b05: $fd
	ld   a, [hl-]                                    ; $7b06: $3a
	rst  $38                                         ; $7b07: $ff
	db   $fc                                         ; $7b08: $fc
	rst  JumpTable                                         ; $7b09: $df
	rst  $38                                         ; $7b0a: $ff
	sub  [hl]                                        ; $7b0b: $96
	rst  JumpTable                                         ; $7b0c: $df
	pop  bc                                          ; $7b0d: $c1
	inc  de                                          ; $7b0e: $13
	sub  l                                           ; $7b0f: $95
	ld   de, $1111                                   ; $7b10: $11 $11 $11
	ld   de, $4111                                   ; $7b13: $11 $11 $41
	rla                                              ; $7b16: $17
	rst  $38                                         ; $7b17: $ff
	rst  $38                                         ; $7b18: $ff
	rst  $38                                         ; $7b19: $ff
	rst  $38                                         ; $7b1a: $ff
	ld   [hl], c                                     ; $7b1b: $71
	sbc  a                                           ; $7b1c: $9f
	ld   sp, hl                                      ; $7b1d: $f9
	ld   c, a                                        ; $7b1e: $4f
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	rst  $38                                         ; $7b22: $ff
	ld   a, c                                        ; $7b23: $79
	rst  $38                                         ; $7b24: $ff
	ld   d, c                                        ; $7b25: $51
	ld   d, $81                                      ; $7b26: $16 $81
	ld   de, $1111                                   ; $7b28: $11 $11 $11
	ld   de, $4111                                   ; $7b2b: $11 $11 $41
	ld   e, $ff                                      ; $7b2e: $1e $ff
	rst  $38                                         ; $7b30: $ff
	rst  $38                                         ; $7b31: $ff
	rst  $38                                         ; $7b32: $ff
	ld   sp, $f4bf                                   ; $7b33: $31 $bf $f4
	sbc  a                                           ; $7b36: $9f
	rst  $38                                         ; $7b37: $ff
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	db   $fd                                         ; $7b3a: $fd
	ld   a, e                                        ; $7b3b: $7b
	ei                                               ; $7b3c: $fb
	ld   de, $4136                                   ; $7b3d: $11 $36 $41
	ld   de, $1111                                   ; $7b40: $11 $11 $11
	ld   de, $3111                                   ; $7b43: $11 $11 $31
	cpl                                              ; $7b46: $2f
	rst  $38                                         ; $7b47: $ff
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	ei                                               ; $7b4a: $fb
	dec  d                                           ; $7b4b: $15
	rst  $38                                         ; $7b4c: $ff
	sub  e                                           ; $7b4d: $93
	rst  $38                                         ; $7b4e: $ff
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	rst  $38                                         ; $7b51: $ff
	or   $9f                                         ; $7b52: $f6 $9f
	db   $e4                                         ; $7b54: $e4
	ld   [de], a                                     ; $7b55: $12
	ld   d, l                                        ; $7b56: $55
	ld   de, $1111                                   ; $7b57: $11 $11 $11
	ld   de, $1611                                   ; $7b5a: $11 $11 $16
	ld   de, $ffff                                   ; $7b5d: $11 $ff $ff
	rst  $38                                         ; $7b60: $ff
	rst  $38                                         ; $7b61: $ff
	pop  af                                          ; $7b62: $f1
	ld   e, a                                        ; $7b63: $5f
	or   $4f                                         ; $7b64: $f6 $4f
	rst  $38                                         ; $7b66: $ff
	rst  $38                                         ; $7b67: $ff
	rst  $38                                         ; $7b68: $ff
	rst  $38                                         ; $7b69: $ff
	ld   l, e                                        ; $7b6a: $6b
	ei                                               ; $7b6b: $fb
	ld   sp, $3136                                   ; $7b6c: $31 $36 $31
	ld   de, $1111                                   ; $7b6f: $11 $11 $11
	ld   de, $6111                                   ; $7b72: $11 $11 $61
	rra                                              ; $7b75: $1f

Jump_0df_7b76:
	rst  $38                                         ; $7b76: $ff
	rst  $38                                         ; $7b77: $ff
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	dec  [hl]                                        ; $7b7a: $35
	rst  $38                                         ; $7b7b: $ff
	sub  h                                           ; $7b7c: $94
	rst  $38                                         ; $7b7d: $ff
	rst  $38                                         ; $7b7e: $ff
	rst  $38                                         ; $7b7f: $ff
	rst  $38                                         ; $7b80: $ff
	rst  $30                                         ; $7b81: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b82: $cf
	or   h                                           ; $7b83: $b4
	inc  de                                          ; $7b84: $13
	ld   d, c                                        ; $7b85: $51
	ld   de, $1111                                   ; $7b86: $11 $11 $11
	ld   de, $1611                                   ; $7b89: $11 $11 $16
	ld   de, $ffff                                   ; $7b8c: $11 $ff $ff
	rst  $38                                         ; $7b8f: $ff
	rst  $38                                         ; $7b90: $ff
	di                                               ; $7b91: $f3
	rst  JumpTable                                         ; $7b92: $df
	ld   hl, sp+$7f                                  ; $7b93: $f8 $7f
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	db   $fd                                         ; $7b98: $fd
	sbc  [hl]                                        ; $7b99: $9e
	add  sp, $11                                     ; $7b9a: $e8 $11
	ld   d, e                                        ; $7b9c: $53
	ld   de, $1111                                   ; $7b9d: $11 $11 $11
	ld   de, $1411                                   ; $7ba0: $11 $11 $14
	ld   de, $ffff                                   ; $7ba3: $11 $ff $ff
	rst  $38                                         ; $7ba6: $ff
	rst  $38                                         ; $7ba7: $ff
	ld   hl, sp-$11                                  ; $7ba8: $f8 $ef
	db   $fd                                         ; $7baa: $fd
	sbc  a                                           ; $7bab: $9f
	rst  $38                                         ; $7bac: $ff
	rst  $28                                         ; $7bad: $ef
	rst  $38                                         ; $7bae: $ff
	db   $fd                                         ; $7baf: $fd
	xor  [hl]                                        ; $7bb0: $ae
	ret  c                                           ; $7bb1: $d8

	ld   sp, $1134                                   ; $7bb2: $31 $34 $11
	ld   de, $1111                                   ; $7bb5: $11 $11 $11
	ld   de, $1116                                   ; $7bb8: $11 $16 $11
	rst  $38                                         ; $7bbb: $ff
	rst  $38                                         ; $7bbc: $ff
	rst  $38                                         ; $7bbd: $ff
	rst  $38                                         ; $7bbe: $ff
	ld   a, [$fcdf]                                  ; $7bbf: $fa $df $fc
	sbc  a                                           ; $7bc2: $9f
	rst  $38                                         ; $7bc3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bc4: $cf
	rst  $38                                         ; $7bc5: $ff
	cp   $7d                                         ; $7bc6: $fe $7d
	ret  c                                           ; $7bc8: $d8

	ld   hl, $1134                                   ; $7bc9: $21 $34 $11
	ld   de, $1111                                   ; $7bcc: $11 $11 $11
	ld   de, $1613                                   ; $7bcf: $11 $13 $16
	rst  $38                                         ; $7bd2: $ff
	rst  $38                                         ; $7bd3: $ff
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	db   $fc                                         ; $7bd6: $fc
	rst  $38                                         ; $7bd7: $ff
	ld   a, [$ffdf]                                  ; $7bd8: $fa $df $ff
	rst  $28                                         ; $7bdb: $ef
	rst  $38                                         ; $7bdc: $ff
	ld   a, [$938d]                                  ; $7bdd: $fa $8d $93
	ld   de, $1111                                   ; $7be0: $11 $11 $11
	ld   de, $1111                                   ; $7be3: $11 $11 $11
	ld   de, $3f41                                   ; $7be6: $11 $41 $3f
	rst  $38                                         ; $7be9: $ff
	rst  $38                                         ; $7bea: $ff
	rst  $38                                         ; $7beb: $ff
	rst  $38                                         ; $7bec: $ff
	rst  $38                                         ; $7bed: $ff
	rst  $38                                         ; $7bee: $ff
	rst  $28                                         ; $7bef: $ef
	rst  $38                                         ; $7bf0: $ff
	db   $fd                                         ; $7bf1: $fd
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	xor  c                                           ; $7bf4: $a9
	cp   c                                           ; $7bf5: $b9
	ld   hl, $1111                                   ; $7bf6: $21 $11 $11
	ld   de, $1111                                   ; $7bf9: $11 $11 $11
	ld   de, $1d24                                   ; $7bfc: $11 $24 $1d
	rst  $38                                         ; $7bff: $ff
	rst  $38                                         ; $7c00: $ff
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	rst  $38                                         ; $7c06: $ff
	db   $fd                                         ; $7c07: $fd
	rst  $38                                         ; $7c08: $ff
	db   $fd                                         ; $7c09: $fd
	sbc  c                                           ; $7c0a: $99
	add  [hl]                                        ; $7c0b: $86
	ld   de, $1111                                   ; $7c0c: $11 $11 $11
	ld   de, $1111                                   ; $7c0f: $11 $11 $11
	ld   de, $9f44                                   ; $7c12: $11 $44 $9f
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	rst  $38                                         ; $7c1a: $ff
	rst  $38                                         ; $7c1b: $ff
	rst  $38                                         ; $7c1c: $ff
	rst  $38                                         ; $7c1d: $ff
	rst  $38                                         ; $7c1e: $ff
	db   $fc                                         ; $7c1f: $fc
	halt                                             ; $7c20: $76
	ld   d, c                                        ; $7c21: $51
	ld   de, $1111                                   ; $7c22: $11 $11 $11
	ld   de, $1111                                   ; $7c25: $11 $11 $11
	inc  d                                           ; $7c28: $14
	ld   a, e                                        ; $7c29: $7b
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $38                                         ; $7c2c: $ff
	rst  $38                                         ; $7c2d: $ff
	rst  $38                                         ; $7c2e: $ff
	rst  $38                                         ; $7c2f: $ff
	rst  $38                                         ; $7c30: $ff
	rst  $38                                         ; $7c31: $ff
	rst  $38                                         ; $7c32: $ff
	rst  $38                                         ; $7c33: $ff
	db   $fc                                         ; $7c34: $fc
	and  l                                           ; $7c35: $a5
	ld   hl, $1111                                   ; $7c36: $21 $11 $11
	ld   de, $1111                                   ; $7c39: $11 $11 $11
	ld   de, $7d13                                   ; $7c3c: $11 $13 $7d
	rst  $38                                         ; $7c3f: $ff
	rst  $38                                         ; $7c40: $ff
	rst  $38                                         ; $7c41: $ff
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	rst  $38                                         ; $7c44: $ff
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	rst  $38                                         ; $7c47: $ff
	rst  $38                                         ; $7c48: $ff
	ei                                               ; $7c49: $fb
	add  [hl]                                        ; $7c4a: $86
	ld   hl, $1111                                   ; $7c4b: $21 $11 $11
	ld   de, $1111                                   ; $7c4e: $11 $11 $11
	ld   de, $7e17                                   ; $7c51: $11 $17 $7e
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	rst  $38                                         ; $7c58: $ff
	rst  $38                                         ; $7c59: $ff
	rst  $38                                         ; $7c5a: $ff
	rst  $38                                         ; $7c5b: $ff
	rst  $38                                         ; $7c5c: $ff
	rst  $38                                         ; $7c5d: $ff
	reti                                             ; $7c5e: $d9


	ld   d, d                                        ; $7c5f: $52
	ld   de, $1111                                   ; $7c60: $11 $11 $11
	ld   de, $1111                                   ; $7c63: $11 $11 $11
	inc  de                                          ; $7c66: $13
	ld   h, a                                        ; $7c67: $67
	rst  $38                                         ; $7c68: $ff
	rst  $38                                         ; $7c69: $ff
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	rst  $38                                         ; $7c6e: $ff
	rst  $38                                         ; $7c6f: $ff
	rst  $38                                         ; $7c70: $ff
	rst  $38                                         ; $7c71: $ff
	db   $ec                                         ; $7c72: $ec
	and  l                                           ; $7c73: $a5
	ld   de, $1111                                   ; $7c74: $11 $11 $11
	ld   de, $1111                                   ; $7c77: $11 $11 $11
	ld   d, $51                                      ; $7c7a: $16 $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c7c: $cf
	rst  $38                                         ; $7c7d: $ff
	rst  $38                                         ; $7c7e: $ff
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	rst  $38                                         ; $7c81: $ff
	rst  $38                                         ; $7c82: $ff
	rst  $38                                         ; $7c83: $ff
	rst  $38                                         ; $7c84: $ff
	rst  $38                                         ; $7c85: $ff
	rst  $38                                         ; $7c86: $ff
	and  l                                           ; $7c87: $a5
	ld   de, $1111                                   ; $7c88: $11 $11 $11
	ld   de, $1111                                   ; $7c8b: $11 $11 $11
	ld   [de], a                                     ; $7c8e: $12
	ld   [de], a                                     ; $7c8f: $12
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	rst  $38                                         ; $7c97: $ff
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	sub  c                                           ; $7c9b: $91
	ld   de, $1111                                   ; $7c9c: $11 $11 $11
	ld   de, $1111                                   ; $7c9f: $11 $11 $11
	ld   hl, $ff19                                   ; $7ca2: $21 $19 $ff
	rst  $38                                         ; $7ca5: $ff
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	rst  $38                                         ; $7ca9: $ff
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	db   $fc                                         ; $7cae: $fc
	ld   d, c                                        ; $7caf: $51
	ld   de, $1111                                   ; $7cb0: $11 $11 $11
	ld   de, $1111                                   ; $7cb3: $11 $11 $11
	ld   de, $fccf                                   ; $7cb6: $11 $cf $fc
	rst  $28                                         ; $7cb9: $ef
	rst  $38                                         ; $7cba: $ff
	rst  $38                                         ; $7cbb: $ff
	rst  $38                                         ; $7cbc: $ff
	rst  $38                                         ; $7cbd: $ff
	rst  $38                                         ; $7cbe: $ff
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	jp   nc, $1111                                   ; $7cc2: $d2 $11 $11

	ld   de, $1111                                   ; $7cc5: $11 $11 $11
	ld   de, $4f11                                   ; $7cc8: $11 $11 $4f
	rst  $38                                         ; $7ccb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ccc: $cf
	rst  $38                                         ; $7ccd: $ff
	rst  $38                                         ; $7cce: $ff
	rst  $38                                         ; $7ccf: $ff
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	rst  $38                                         ; $7cd3: $ff
	rst  $38                                         ; $7cd4: $ff
	ld   hl, sp+$21                                  ; $7cd5: $f8 $21
	ld   de, $1111                                   ; $7cd7: $11 $11 $11
	ld   de, $1111                                   ; $7cda: $11 $11 $11
	jr   @+$01                                       ; $7cdd: $18 $ff

	adc  $ff                                         ; $7cdf: $ce $ff
	rst  $38                                         ; $7ce1: $ff
	rst  $38                                         ; $7ce2: $ff
	rst  $38                                         ; $7ce3: $ff
	rst  $38                                         ; $7ce4: $ff
	rst  $38                                         ; $7ce5: $ff
	rst  $38                                         ; $7ce6: $ff
	rst  $38                                         ; $7ce7: $ff
	db   $fc                                         ; $7ce8: $fc
	ld   b, c                                        ; $7ce9: $41
	ld   de, $1111                                   ; $7cea: $11 $11 $11
	ld   de, $1111                                   ; $7ced: $11 $11 $11
	dec  d                                           ; $7cf0: $15
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	db   $fd                                         ; $7cf3: $fd
	rst  $38                                         ; $7cf4: $ff
	rst  $38                                         ; $7cf5: $ff
	rst  $38                                         ; $7cf6: $ff
	rst  $38                                         ; $7cf7: $ff
	rst  $38                                         ; $7cf8: $ff
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	ld   h, c                                        ; $7cfc: $61
	ld   de, $1111                                   ; $7cfd: $11 $11 $11
	ld   de, $1111                                   ; $7d00: $11 $11 $11
	ld   de, $b7ff                                   ; $7d03: $11 $ff $b7
	rst  $38                                         ; $7d06: $ff
	rst  $38                                         ; $7d07: $ff
	rst  JumpTable                                         ; $7d08: $df
	rst  $38                                         ; $7d09: $ff
	rst  $38                                         ; $7d0a: $ff
	rst  $38                                         ; $7d0b: $ff
	rst  $38                                         ; $7d0c: $ff
	xor  $ff                                         ; $7d0d: $ee $ff
	ld   sp, $1111                                   ; $7d0f: $31 $11 $11
	ld   de, $1111                                   ; $7d12: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7d15: $11 $13 $ff
	ld   a, [$ffff]                                  ; $7d18: $fa $ff $ff
	rst  $28                                         ; $7d1b: $ef
	rst  $38                                         ; $7d1c: $ff
	rst  $38                                         ; $7d1d: $ff
	rst  $38                                         ; $7d1e: $ff
	rst  $38                                         ; $7d1f: $ff
	db   $fd                                         ; $7d20: $fd
	cp   $41                                         ; $7d21: $fe $41
	ld   de, $1111                                   ; $7d23: $11 $11 $11
	ld   de, $1111                                   ; $7d26: $11 $11 $11
	add  hl, de                                      ; $7d29: $19
	rst  $38                                         ; $7d2a: $ff
	db   $dd                                         ; $7d2b: $dd
	rst  $38                                         ; $7d2c: $ff
	rst  JumpTable                                         ; $7d2d: $df
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	sub  $11                                         ; $7d34: $d6 $11
	ld   de, $1111                                   ; $7d36: $11 $11 $11
	ld   de, $1111                                   ; $7d39: $11 $11 $11
	dec  e                                           ; $7d3c: $1d
	rst  JumpTable                                         ; $7d3d: $df
	rst  $38                                         ; $7d3e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d3f: $cf
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	ei                                               ; $7d46: $fb
	add  l                                           ; $7d47: $85

jr_0df_7d48:
	ld   de, $1111                                   ; $7d48: $11 $11 $11
	ld   de, $1311                                   ; $7d4b: $11 $11 $13
	ld   de, $fc1f                                   ; $7d4e: $11 $1f $fc
	ld   c, a                                        ; $7d51: $4f
	rst  $38                                         ; $7d52: $ff
	sbc  a                                           ; $7d53: $9f
	rst  $38                                         ; $7d54: $ff
	rst  $38                                         ; $7d55: $ff
	rst  $38                                         ; $7d56: $ff
	rst  $38                                         ; $7d57: $ff
	ld   a, [$61ff]                                  ; $7d58: $fa $ff $61
	ld   de, $1111                                   ; $7d5b: $11 $11 $11
	ld   de, $1111                                   ; $7d5e: $11 $11 $11
	jr   z, jr_0df_7d79                              ; $7d61: $28 $16

	rst  $38                                         ; $7d63: $ff
	ret  z                                           ; $7d64: $c8

	rst  $38                                         ; $7d65: $ff
	rst  $38                                         ; $7d66: $ff
	rst  $38                                         ; $7d67: $ff
	rst  $38                                         ; $7d68: $ff
	rst  $38                                         ; $7d69: $ff
	rst  $38                                         ; $7d6a: $ff
	ei                                               ; $7d6b: $fb
	adc  d                                           ; $7d6c: $8a
	add  d                                           ; $7d6d: $82
	ld   de, $1111                                   ; $7d6e: $11 $11 $11
	ld   de, $1111                                   ; $7d71: $11 $11 $11
	ld   de, $ff8f                                   ; $7d74: $11 $8f $ff
	ld   sp, hl                                      ; $7d77: $f9
	rst  $38                                         ; $7d78: $ff

jr_0df_7d79:
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	rst  $38                                         ; $7d7b: $ff
	rst  $38                                         ; $7d7c: $ff
	rst  $38                                         ; $7d7d: $ff
	ld   a, [$739a]                                  ; $7d7e: $fa $9a $73
	ld   de, $1111                                   ; $7d81: $11 $11 $11
	ld   de, $1111                                   ; $7d84: $11 $11 $11
	jr   jr_0df_7d48                                 ; $7d87: $18 $bf

	rst  $38                                         ; $7d89: $ff
	db   $fc                                         ; $7d8a: $fc
	rst  $38                                         ; $7d8b: $ff
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	rst  $38                                         ; $7d8f: $ff
	rst  $38                                         ; $7d90: $ff
	ld   a, [$818d]                                  ; $7d91: $fa $8d $81
	ld   de, $1111                                   ; $7d94: $11 $11 $11
	ld   de, $1311                                   ; $7d97: $11 $11 $13
	ld   de, $ffff                                   ; $7d9a: $11 $ff $ff
	rst  $28                                         ; $7d9d: $ef
	rst  $38                                         ; $7d9e: $ff
	rst  JumpTable                                         ; $7d9f: $df
	rst  $38                                         ; $7da0: $ff
	rst  $38                                         ; $7da1: $ff
	rst  $38                                         ; $7da2: $ff
	rst  $38                                         ; $7da3: $ff
	cp   c                                           ; $7da4: $b9
	ld   sp, hl                                      ; $7da5: $f9
	ld   de, $1111                                   ; $7da6: $11 $11 $11
	ld   de, $1111                                   ; $7da9: $11 $11 $11
	ld   [de], a                                     ; $7dac: $12
	ld   de, $fc9f                                   ; $7dad: $11 $9f $fc
	xor  a                                           ; $7db0: $af
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	rst  $38                                         ; $7db3: $ff
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	rst  $38                                         ; $7db6: $ff
	sub  l                                           ; $7db7: $95
	xor  d                                           ; $7db8: $aa
	sub  l                                           ; $7db9: $95
	ld   de, $1111                                   ; $7dba: $11 $11 $11
	ld   de, $1111                                   ; $7dbd: $11 $11 $11
	rla                                              ; $7dc0: $17
	db   $fc                                         ; $7dc1: $fc
	sbc  a                                           ; $7dc2: $9f
	rst  $38                                         ; $7dc3: $ff
	or   $ff                                         ; $7dc4: $f6 $ff
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	ld   a, a                                        ; $7dca: $7f
	ldh  a, [c]                                      ; $7dcb: $f2
	ld   [hl], l                                     ; $7dcc: $75
	inc  hl                                          ; $7dcd: $23
	ld   de, $1111                                   ; $7dce: $11 $11 $11
	ld   de, $5111                                   ; $7dd1: $11 $11 $51
	cpl                                              ; $7dd4: $2f
	ld   hl, sp+$6f                                  ; $7dd5: $f8 $6f
	db   $fd                                         ; $7dd7: $fd
	rst  $38                                         ; $7dd8: $ff
	rst  $28                                         ; $7dd9: $ef
	rst  $38                                         ; $7dda: $ff
	rst  $38                                         ; $7ddb: $ff
	rst  $38                                         ; $7ddc: $ff
	sbc  d                                           ; $7ddd: $9a
	ld   a, [$1292]                                  ; $7dde: $fa $92 $12
	ld   sp, $1111                                   ; $7de1: $31 $11 $11
	ld   de, $1311                                   ; $7de4: $11 $11 $13
	and  d                                           ; $7de7: $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7de8: $cf
	ei                                               ; $7de9: $fb
	sbc  a                                           ; $7dea: $9f
	cp   $ff                                         ; $7deb: $fe $ff
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	rst  $38                                         ; $7def: $ff
	db   $fd                                         ; $7df0: $fd
	cp   e                                           ; $7df1: $bb
	or   l                                           ; $7df2: $b5
	ld   d, e                                        ; $7df3: $53
	ld   de, $1111                                   ; $7df4: $11 $11 $11
	ld   de, $1111                                   ; $7df7: $11 $11 $11
	ld   e, h                                        ; $7dfa: $5c
	ld   e, a                                        ; $7dfb: $5f
	and  $ff                                         ; $7dfc: $e6 $ff
	ei                                               ; $7dfe: $fb
	ld   l, a                                        ; $7dff: $6f
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	rst  $38                                         ; $7e02: $ff
	db   $ed                                         ; $7e03: $ed
	ret  z                                           ; $7e04: $c8

	ei                                               ; $7e05: $fb
	ld   h, $12                                      ; $7e06: $26 $12
	ld   de, $1111                                   ; $7e08: $11 $11 $11
	ld   de, $1e11                                   ; $7e0b: $11 $11 $1e
	pop  af                                          ; $7e0e: $f1
	rst  $38                                         ; $7e0f: $ff
	ld   l, d                                        ; $7e10: $6a
	rst  $38                                         ; $7e11: $ff
	ld   a, c                                        ; $7e12: $79
	rst  $38                                         ; $7e13: $ff
	rst  $38                                         ; $7e14: $ff
	rst  $38                                         ; $7e15: $ff
	rst  $38                                         ; $7e16: $ff
	db   $fd                                         ; $7e17: $fd
	call Call_0df_52b7                               ; $7e18: $cd $b7 $52
	ld   de, $1111                                   ; $7e1b: $11 $11 $11
	ld   de, $3a11                                   ; $7e1e: $11 $11 $3a
	ld   de, $fa4f                                   ; $7e21: $11 $4f $fa
	ld   d, a                                        ; $7e24: $57
	rst  $38                                         ; $7e25: $ff
	sub  c                                           ; $7e26: $91
	rst  $38                                         ; $7e27: $ff
	rst  $38                                         ; $7e28: $ff
	rst  $38                                         ; $7e29: $ff
	rst  $38                                         ; $7e2a: $ff
	rst  $30                                         ; $7e2b: $f7
	adc  a                                           ; $7e2c: $8f
	or   c                                           ; $7e2d: $b1
	ld   [hl-], a                                    ; $7e2e: $32
	ld   sp, $1111                                   ; $7e2f: $31 $11 $11
	ld   de, $6111                                   ; $7e32: $11 $11 $61
	rla                                              ; $7e35: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e36: $cf
	ld   l, l                                        ; $7e37: $6d
	db   $f4                                         ; $7e38: $f4
	rst  $38                                         ; $7e39: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e3a: $cf
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	rst  $38                                         ; $7e3d: $ff
	rst  $38                                         ; $7e3e: $ff
	db   $fd                                         ; $7e3f: $fd
	ld   c, c                                        ; $7e40: $49
	adc  c                                           ; $7e41: $89
	ld   [hl], c                                     ; $7e42: $71
	ld   de, $1111                                   ; $7e43: $11 $11 $11
	ld   de, $1411                                   ; $7e46: $11 $11 $14
	and  a                                           ; $7e49: $a7
	inc  de                                          ; $7e4a: $13
	rst  $38                                         ; $7e4b: $ff
	rst  $38                                         ; $7e4c: $ff
	rra                                              ; $7e4d: $1f
	rst  $38                                         ; $7e4e: $ff
	cp   $ff                                         ; $7e4f: $fe $ff
	rst  $28                                         ; $7e51: $ef
	rst  JumpTable                                         ; $7e52: $df
	ei                                               ; $7e53: $fb
	ld   [hl], $de                                   ; $7e54: $36 $de
	ld   d, c                                        ; $7e56: $51
	ld   de, $1111                                   ; $7e57: $11 $11 $11
	inc  hl                                          ; $7e5a: $23
	ld   de, $1225                                   ; $7e5b: $11 $25 $12
	xor  a                                           ; $7e5e: $af
	db   $e4                                         ; $7e5f: $e4
	xor  a                                           ; $7e60: $af
	cp   $ff                                         ; $7e61: $fe $ff
	rst  $38                                         ; $7e63: $ff
	rst  $38                                         ; $7e64: $ff
	rst  $38                                         ; $7e65: $ff
	rst  $38                                         ; $7e66: $ff
	ei                                               ; $7e67: $fb
	db   $fc                                         ; $7e68: $fc
	ld   a, c                                        ; $7e69: $79
	ld   hl, $1121                                   ; $7e6a: $21 $21 $11
	ld   de, $1111                                   ; $7e6d: $11 $11 $11
	ld   de, $1942                                   ; $7e70: $11 $42 $19
	ld   hl, sp+$6f                                  ; $7e73: $f8 $6f
	cp   $df                                         ; $7e75: $fe $df
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	rst  $38                                         ; $7e79: $ff
	rst  $38                                         ; $7e7a: $ff
	cp   c                                           ; $7e7b: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e7c: $cf
	ret  z                                           ; $7e7d: $c8

	ld   d, l                                        ; $7e7e: $55
	add  c                                           ; $7e7f: $81
	ld   de, $1111                                   ; $7e80: $11 $11 $11
	ld   de, $6711                                   ; $7e83: $11 $11 $67
	inc  de                                          ; $7e86: $13
	rra                                              ; $7e87: $1f
	ld   a, [$ff53]                                  ; $7e88: $fa $53 $ff
	sub  $ff                                         ; $7e8b: $d6 $ff
	rst  $38                                         ; $7e8d: $ff
	adc  a                                           ; $7e8e: $8f
	rst  $38                                         ; $7e8f: $ff
	pop  af                                          ; $7e90: $f1
	cpl                                              ; $7e91: $2f
	db   $f4                                         ; $7e92: $f4
	ld   de, $1176                                   ; $7e93: $11 $76 $11
	ld   de, $1111                                   ; $7e96: $11 $11 $11
	ld   d, $14                                      ; $7e99: $16 $14
	ld   [hl], c                                     ; $7e9b: $71
	rst  $38                                         ; $7e9c: $ff
	dec  l                                           ; $7e9d: $2d
	rst  $28                                         ; $7e9e: $ef
	rst  $38                                         ; $7e9f: $ff
	rst  $38                                         ; $7ea0: $ff
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	rst  $38                                         ; $7ea4: $ff
	sbc  d                                           ; $7ea5: $9a
	sbc  c                                           ; $7ea6: $99
	ld   h, h                                        ; $7ea7: $64
	ld   b, c                                        ; $7ea8: $41
	inc  de                                          ; $7ea9: $13
	ld   de, $1111                                   ; $7eaa: $11 $11 $11
	ld   de, $e611                                   ; $7ead: $11 $11 $e6
	ld   de, $c4ff                                   ; $7eb0: $11 $ff $c4
	sbc  a                                           ; $7eb3: $9f
	rst  $38                                         ; $7eb4: $ff
	db   $fc                                         ; $7eb5: $fc
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	ld   c, a                                        ; $7eb8: $4f
	rst  $38                                         ; $7eb9: $ff
	ldh  a, [c]                                      ; $7eba: $f2
	ld   l, h                                        ; $7ebb: $6c
	ld   [hl], e                                     ; $7ebc: $73
	ld   de, $1115                                   ; $7ebd: $11 $15 $11
	ld   de, $1211                                   ; $7ec0: $11 $11 $12
	ld   hl, $5b18                                   ; $7ec3: $21 $18 $5b
	ld   a, [$ff5e]                                  ; $7ec6: $fa $5e $ff
	dec  e                                           ; $7ec9: $1d
	rst  $38                                         ; $7eca: $ff
	ld   hl, sp-$01                                  ; $7ecb: $f8 $ff
	rst  $38                                         ; $7ecd: $ff
	ld   a, [de]                                     ; $7ece: $1a
	rst  $38                                         ; $7ecf: $ff
	ld   sp, $b14f                                   ; $7ed0: $31 $4f $b1
	ld   de, $1195                                   ; $7ed3: $11 $95 $11
	dec  d                                           ; $7ed6: $15
	or   c                                           ; $7ed7: $b1
	ld   de, $514f                                   ; $7ed8: $11 $4f $51
	ld   a, a                                        ; $7edb: $7f
	or   $1f                                         ; $7edc: $f6 $1f
	rst  $38                                         ; $7ede: $ff
	db   $f4                                         ; $7edf: $f4
	rst  $38                                         ; $7ee0: $ff
	db   $fd                                         ; $7ee1: $fd
	ld   e, a                                        ; $7ee2: $5f
	rst  $38                                         ; $7ee3: $ff
	add  c                                           ; $7ee4: $81
	ld   e, h                                        ; $7ee5: $5c
	pop  de                                          ; $7ee6: $d1
	ld   [de], a                                     ; $7ee7: $12
	sbc  b                                           ; $7ee8: $98
	ld   de, $3114                                   ; $7ee9: $11 $14 $31
	ld   de, $11a4                                   ; $7eec: $11 $a4 $11
	cpl                                              ; $7eef: $2f
	pop  bc                                          ; $7ef0: $c1
	db   $fc                                         ; $7ef1: $fc
	rst  $38                                         ; $7ef2: $ff
	ld   c, c                                        ; $7ef3: $49
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	rst  $38                                         ; $7ef6: $ff
	rst  $28                                         ; $7ef7: $ef
	ld   sp, hl                                      ; $7ef8: $f9
	adc  c                                           ; $7ef9: $89
	call c, $8233                                    ; $7efa: $dc $33 $82
	ld   de, $1113                                   ; $7efd: $11 $13 $11
	ld   de, $1321                                   ; $7f00: $11 $21 $13
	ld   b, c                                        ; $7f03: $41
	ld   de, $34df                                   ; $7f04: $11 $df $34
	rst  $38                                         ; $7f07: $ff
	or   $bf                                         ; $7f08: $f6 $bf
	rst  $38                                         ; $7f0a: $ff
	cp   h                                           ; $7f0b: $bc
	rst  $38                                         ; $7f0c: $ff

jr_0df_7f0d:
	db   $dd                                         ; $7f0d: $dd
	cp   a                                           ; $7f0e: $bf
	ld   hl, sp+$67                                  ; $7f0f: $f8 $67
	xor  b                                           ; $7f11: $a8
	ld   sp, $4104                                   ; $7f12: $31 $04 $41
	ld   de, $1111                                   ; $7f15: $11 $11 $11
	ld   d, $51                                      ; $7f18: $16 $51
	ld   c, e                                        ; $7f1a: $4b
	add  sp, $13                                     ; $7f1b: $e8 $13
	rst  $38                                         ; $7f1d: $ff
	xor  h                                           ; $7f1e: $ac
	rst  $38                                         ; $7f1f: $ff
	db   $fd                                         ; $7f20: $fd
	sbc  $ff                                         ; $7f21: $de $ff
	ld   hl, sp-$32                                  ; $7f23: $f8 $ce
	reti                                             ; $7f25: $d9


	inc  sp                                          ; $7f26: $33
	ld   d, [hl]                                     ; $7f27: $56
	sub  c                                           ; $7f28: $91
	inc  d                                           ; $7f29: $14
	ld   b, d                                        ; $7f2a: $42
	ld   de, $1113                                   ; $7f2b: $11 $13 $11
	inc  d                                           ; $7f2e: $14
	jp   hl                                          ; $7f2f: $e9


	ld   de, $b19f                                   ; $7f30: $11 $9f $b1
	rst  $28                                         ; $7f33: $ef
	rst  $38                                         ; $7f34: $ff
	ld   l, [hl]                                     ; $7f35: $6e
	rst  $38                                         ; $7f36: $ff
	db   $fc                                         ; $7f37: $fc
	rst  $28                                         ; $7f38: $ef
	rst  $38                                         ; $7f39: $ff
	ld   d, a                                        ; $7f3a: $57
	jp   c, Jump_0df_5874                            ; $7f3b: $da $74 $58

	ld   h, d                                        ; $7f3e: $62
	ld   [de], a                                     ; $7f3f: $12
	ld   d, h                                        ; $7f40: $54
	ld   de, $4116                                   ; $7f41: $11 $16 $41
	dec  d                                           ; $7f44: $15
	ld   a, b                                        ; $7f45: $78
	sub  e                                           ; $7f46: $93
	ld   c, e                                        ; $7f47: $4b
	cp   e                                           ; $7f48: $bb
	xor  d                                           ; $7f49: $aa
	rst  $38                                         ; $7f4a: $ff
	cp   c                                           ; $7f4b: $b9
	xor  a                                           ; $7f4c: $af
	ld   sp, hl                                      ; $7f4d: $f9
	db   $fd                                         ; $7f4e: $fd
	cp   l                                           ; $7f4f: $bd
	db   $db                                         ; $7f50: $db
	adc  c                                           ; $7f51: $89
	reti                                             ; $7f52: $d9


	halt                                             ; $7f53: $76
	ld   h, $21                                      ; $7f54: $26 $21
	ld   b, [hl]                                     ; $7f56: $46
	ld   d, l                                        ; $7f57: $55
	daa                                              ; $7f58: $27
	ld   d, c                                        ; $7f59: $51
	ld   d, e                                        ; $7f5a: $53
	rla                                              ; $7f5b: $17
	ld   a, b                                        ; $7f5c: $78
	sub  a                                           ; $7f5d: $97
	ld   a, d                                        ; $7f5e: $7a
	add  $3f                                         ; $7f5f: $c6 $3f
	rst  $30                                         ; $7f61: $f7
	adc  e                                           ; $7f62: $8b
	cp   $9d                                         ; $7f63: $fe $9d
	add  a                                           ; $7f65: $87
	db   $fc                                         ; $7f66: $fc
	ld   a, c                                        ; $7f67: $79
	xor  h                                           ; $7f68: $ac
	ld   h, c                                        ; $7f69: $61
	ld   a, d                                        ; $7f6a: $7a
	sub  [hl]                                        ; $7f6b: $96
	inc  de                                          ; $7f6c: $13
	ld   a, c                                        ; $7f6d: $79
	add  c                                           ; $7f6e: $81
	rla                                              ; $7f6f: $17
	ld   [hl], a                                     ; $7f70: $77
	ld   b, c                                        ; $7f71: $41
	sbc  b                                           ; $7f72: $98
	ld   a, c                                        ; $7f73: $79
	ld   l, c                                        ; $7f74: $69
	or   [hl]                                        ; $7f75: $b6
	ld   l, b                                        ; $7f76: $68
	db   $ed                                         ; $7f77: $ed
	ld   h, a                                        ; $7f78: $67
	xor  h                                           ; $7f79: $ac
	add  sp, $7b                                     ; $7f7a: $e8 $7b
	call $c975                                       ; $7f7c: $cd $75 $c9
	ld   a, c                                        ; $7f7f: $79
	ld   h, a                                        ; $7f80: $67
	adc  b                                           ; $7f81: $88
	sub  h                                           ; $7f82: $94
	jr   c, jr_0df_7f0d                              ; $7f83: $38 $88

	ld   h, l                                        ; $7f85: $65
	ld   a, c                                        ; $7f86: $79
	sub  e                                           ; $7f87: $93
	daa                                              ; $7f88: $27
	sbc  d                                           ; $7f89: $9a
	ld   [hl], e                                     ; $7f8a: $73
	ld   l, c                                        ; $7f8b: $69
	reti                                             ; $7f8c: $d9


	ld   d, $ed                                      ; $7f8d: $16 $ed
	add  h                                           ; $7f8f: $84
	xor  a                                           ; $7f90: $af
	rst  ToBoot                                         ; $7f91: $c7
	ld   b, h                                        ; $7f92: $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f93: $cf
	add  [hl]                                        ; $7f94: $86
	sbc  d                                           ; $7f95: $9a
	ret                                              ; $7f96: $c9


	ld   h, a                                        ; $7f97: $67
	ld   a, d                                        ; $7f98: $7a
	and  l                                           ; $7f99: $a5
	ld   a, c                                        ; $7f9a: $79
	adc  d                                           ; $7f9b: $8a
	ld   [hl], h                                     ; $7f9c: $74
	ld   h, a                                        ; $7f9d: $67
	ld   h, [hl]                                     ; $7f9e: $66
	ld   l, c                                        ; $7f9f: $69
	add  [hl]                                        ; $7fa0: $86
	adc  b                                           ; $7fa1: $88
	ld   b, l                                        ; $7fa2: $45
	sbc  d                                           ; $7fa3: $9a
	sbc  b                                           ; $7fa4: $98
	sbc  d                                           ; $7fa5: $9a
	add  a                                           ; $7fa6: $87
	sbc  l                                           ; $7fa7: $9d
	add  [hl]                                        ; $7fa8: $86
	sbc  c                                           ; $7fa9: $99
	cp   e                                           ; $7faa: $bb
	adc  c                                           ; $7fab: $89
	ld   a, d                                        ; $7fac: $7a
	sub  [hl]                                        ; $7fad: $96
	sbc  d                                           ; $7fae: $9a
	sbc  c                                           ; $7faf: $99
	adc  b                                           ; $7fb0: $88
	sub  a                                           ; $7fb1: $97
	add  l                                           ; $7fb2: $85
	ld   b, a                                        ; $7fb3: $47
	ld   a, c                                        ; $7fb4: $79
	or   [hl]                                        ; $7fb5: $b6
	ld   d, [hl]                                     ; $7fb6: $56
	adc  c                                           ; $7fb7: $89
	halt                                             ; $7fb8: $76
	ld   d, a                                        ; $7fb9: $57
	cp   c                                           ; $7fba: $b9
	ld   h, a                                        ; $7fbb: $67
	ld   e, b                                        ; $7fbc: $58
	rst  ToBoot                                         ; $7fbd: $c7
	ld   a, e                                        ; $7fbe: $7b
	add  a                                           ; $7fbf: $87
	ld   b, a                                        ; $7fc0: $47
	jp   z, Jump_0df_7b76                            ; $7fc1: $ca $76 $7b

	or   a                                           ; $7fc4: $b7
	ld   l, b                                        ; $7fc5: $68
	xor  c                                           ; $7fc6: $a9
	ld   a, c                                        ; $7fc7: $79
	cp   h                                           ; $7fc8: $bc
	add  h                                           ; $7fc9: $84
	ld   b, [hl]                                     ; $7fca: $46
	adc  b                                           ; $7fcb: $88
	ld   d, h                                        ; $7fcc: $54
	ld   a, d                                        ; $7fcd: $7a
	and  [hl]                                        ; $7fce: $a6
	ld   d, [hl]                                     ; $7fcf: $56
	adc  c                                           ; $7fd0: $89
	sbc  c                                           ; $7fd1: $99
	ld   l, c                                        ; $7fd2: $69
	cp   b                                           ; $7fd3: $b8
	halt                                             ; $7fd4: $76
	ld   c, d                                        ; $7fd5: $4a
	ret  c                                           ; $7fd6: $d8

	ld   a, d                                        ; $7fd7: $7a
	jp   z, Jump_0df_6775                            ; $7fd8: $ca $75 $67

	xor  d                                           ; $7fdb: $aa
	ld   h, a                                        ; $7fdc: $67
	sbc  d                                           ; $7fdd: $9a
	sub  l                                           ; $7fde: $95
	ld   e, c                                        ; $7fdf: $59
	xor  b                                           ; $7fe0: $a8
	ld   h, [hl]                                     ; $7fe1: $66
	sbc  c                                           ; $7fe2: $99
	and  [hl]                                        ; $7fe3: $a6
	ld   c, b                                        ; $7fe4: $48
	sub  a                                           ; $7fe5: $97
	ld   h, a                                        ; $7fe6: $67
	adc  e                                           ; $7fe7: $8b
	sub  [hl]                                        ; $7fe8: $96
	ld   a, c                                        ; $7fe9: $79
	and  [hl]                                        ; $7fea: $a6
	ld   d, a                                        ; $7feb: $57
	sbc  c                                           ; $7fec: $99
	adc  c                                           ; $7fed: $89
	sbc  b                                           ; $7fee: $98
	adc  c                                           ; $7fef: $89
	sbc  b                                           ; $7ff0: $98
	add  a                                           ; $7ff1: $87
	adc  e                                           ; $7ff2: $8b
	sub  a                                           ; $7ff3: $97
	add  a                                           ; $7ff4: $87
	ld   d, [hl]                                     ; $7ff5: $56
	ld   [hl], a                                     ; $7ff6: $77
	sbc  c                                           ; $7ff7: $99
	ld   [hl], a                                     ; $7ff8: $77
	ld   a, c                                        ; $7ff9: $79
	sub  a                                           ; $7ffa: $97
	ld   h, a                                        ; $7ffb: $67
	adc  b                                           ; $7ffc: $88
	sub  a                                           ; $7ffd: $97
	adc  c                                           ; $7ffe: $89
	adc  b                                           ; $7fff: $88
