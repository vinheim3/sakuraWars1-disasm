; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f4", ROMX[$4000], BANK[$f4]

	cp   b                                           ; $4000: $b8
	rst  $38                                         ; $4001: $ff
	rst  $38                                         ; $4002: $ff
	and  c                                           ; $4003: $a1
	ld   de, $7f11                                   ; $4004: $11 $11 $7f
	rst  $38                                         ; $4007: $ff
	db   $fc                                         ; $4008: $fc
	rst  $38                                         ; $4009: $ff
	rst  $38                                         ; $400a: $ff
	pop  bc                                          ; $400b: $c1
	ld   de, $df11                                   ; $400c: $11 $11 $df
	cp   $88                                         ; $400f: $fe $88
	rst  $28                                         ; $4011: $ef
	rst  $38                                         ; $4012: $ff
	and  c                                           ; $4013: $a1
	ld   de, rAUD1LEN                                   ; $4014: $11 $11 $ff
	ei                                               ; $4017: $fb
	sbc  c                                           ; $4018: $99
	rst  $38                                         ; $4019: $ff
	rst  $38                                         ; $401a: $ff
	ld   h, c                                        ; $401b: $61
	ld   de, rAUD1LOW                                   ; $401c: $11 $13 $ff
	ei                                               ; $401f: $fb
	xor  l                                           ; $4020: $ad
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	ld   d, c                                        ; $4023: $51
	ld   de, $ff16                                   ; $4024: $11 $16 $ff
	ei                                               ; $4027: $fb
	xor  h                                           ; $4028: $ac
	rst  $38                                         ; $4029: $ff
	db   $fd                                         ; $402a: $fd
	ld   de, $1911                                   ; $402b: $11 $11 $19
	rst  $38                                         ; $402e: $ff
	db   $eb                                         ; $402f: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4030: $cf
	rst  $38                                         ; $4031: $ff
	ld   hl, sp+$11                                  ; $4032: $f8 $11
	ld   de, $ff1a                                   ; $4034: $11 $1a $ff
	db   $fd                                         ; $4037: $fd
	rst  JumpTable                                         ; $4038: $df
	rst  $38                                         ; $4039: $ff
	and  $11                                         ; $403a: $e6 $11
	ld   de, $fe2f                                   ; $403c: $11 $2f $fe
	xor  e                                           ; $403f: $ab
	rst  $28                                         ; $4040: $ef
	rst  $38                                         ; $4041: $ff
	and  h                                           ; $4042: $a4
	ld   de, $4d11                                   ; $4043: $11 $11 $4d
	rst  $38                                         ; $4046: $ff
	call z, $ffef                                    ; $4047: $cc $ef $ff
	sub  e                                           ; $404a: $93
	ld   de, $9f11                                   ; $404b: $11 $11 $9f
	db   $fc                                         ; $404e: $fc
	sbc  d                                           ; $404f: $9a
	rst  $38                                         ; $4050: $ff
	rst  $38                                         ; $4051: $ff
	ld   [hl], c                                     ; $4052: $71
	ld   de, $ff16                                   ; $4053: $11 $16 $ff
	and  h                                           ; $4056: $a4
	ld   a, l                                        ; $4057: $7d
	rst  $38                                         ; $4058: $ff
	ei                                               ; $4059: $fb
	ld   hl, $1611                                   ; $405a: $21 $11 $16
	xor  $a8                                         ; $405d: $ee $a8
	sbc  [hl]                                        ; $405f: $9e
	rst  $38                                         ; $4060: $ff
	ld   sp, hl                                      ; $4061: $f9
	ld   sp, $1711                                   ; $4062: $31 $11 $17
	adc  $b9                                         ; $4065: $ce $b9
	cp   a                                           ; $4067: $bf
	rst  $38                                         ; $4068: $ff
	ret  c                                           ; $4069: $d8

	ld   de, $4c11                                   ; $406a: $11 $11 $4c
	ld   a, [$af76]                                  ; $406d: $fa $76 $af
	rst  $38                                         ; $4070: $ff
	jp   $1311                                       ; $4071: $c3 $11 $13


	cp   [hl]                                        ; $4074: $be
	push bc                                          ; $4075: $c5
	ld   b, a                                        ; $4076: $47
	rst  $38                                         ; $4077: $ff
	rst  $38                                         ; $4078: $ff
	ld   [hl], c                                     ; $4079: $71
	ld   de, $bd15                                   ; $407a: $11 $15 $bd
	sub  [hl]                                        ; $407d: $96
	ld   l, b                                        ; $407e: $68
	rst  $38                                         ; $407f: $ff
	db   $fd                                         ; $4080: $fd
	ld   [hl], d                                     ; $4081: $72
	ld   de, $bb16                                   ; $4082: $11 $16 $bb
	or   [hl]                                        ; $4085: $b6
	ld   l, d                                        ; $4086: $6a
	rst  $28                                         ; $4087: $ef
	db   $fc                                         ; $4088: $fc
	ld   [hl], c                                     ; $4089: $71
	ld   de, $bc49                                   ; $408a: $11 $49 $bc
	ld   [hl], l                                     ; $408d: $75
	ld   l, e                                        ; $408e: $6b
	rst  $38                                         ; $408f: $ff
	ld   a, [$1141]                                  ; $4090: $fa $41 $11
	ld   a, d                                        ; $4093: $7a
	bit  2, l                                        ; $4094: $cb $55
	ld   l, h                                        ; $4096: $6c
	rst  $38                                         ; $4097: $ff
	reti                                             ; $4098: $d9


	ld   d, c                                        ; $4099: $51
	ld   [de], a                                     ; $409a: $12
	ld   a, d                                        ; $409b: $7a
	cp   d                                           ; $409c: $ba
	ld   h, l                                        ; $409d: $65
	ld   e, e                                        ; $409e: $5b
	rst  $28                                         ; $409f: $ef
	jp   hl                                          ; $40a0: $e9


	ld   d, c                                        ; $40a1: $51
	inc  d                                           ; $40a2: $14
	sbc  d                                           ; $40a3: $9a
	jp   z, Jump_0f4_6a55                            ; $40a4: $ca $55 $6a

	rst  $28                                         ; $40a7: $ef
	ld   [$1451], a                                  ; $40a8: $ea $51 $14
	sbc  h                                           ; $40ab: $9c
	cp   b                                           ; $40ac: $b8
	ld   b, e                                        ; $40ad: $43
	ld   a, e                                        ; $40ae: $7b
	rst  $38                                         ; $40af: $ff
	ret  z                                           ; $40b0: $c8

	ld   b, d                                        ; $40b1: $42
	dec  d                                           ; $40b2: $15
	sbc  e                                           ; $40b3: $9b
	xor  b                                           ; $40b4: $a8
	ld   d, l                                        ; $40b5: $55
	ld   l, c                                        ; $40b6: $69
	db   $dd                                         ; $40b7: $dd
	ret                                              ; $40b8: $c9


	ld   h, h                                        ; $40b9: $64
	dec  h                                           ; $40ba: $25
	sbc  e                                           ; $40bb: $9b
	cp   c                                           ; $40bc: $b9
	ld   h, l                                        ; $40bd: $65
	ld   l, c                                        ; $40be: $69
	call $86ca                                       ; $40bf: $cd $ca $86
	ld   b, h                                        ; $40c2: $44
	ld   l, c                                        ; $40c3: $69
	xor  d                                           ; $40c4: $aa
	ld   [hl], l                                     ; $40c5: $75
	ld   d, a                                        ; $40c6: $57
	xor  h                                           ; $40c7: $ac
	jp   z, Jump_0f4_6487                            ; $40c8: $ca $87 $64

	ld   d, a                                        ; $40cb: $57
	cp   h                                           ; $40cc: $bc
	add  a                                           ; $40cd: $87
	ld   d, [hl]                                     ; $40ce: $56
	sbc  d                                           ; $40cf: $9a
	cp   c                                           ; $40d0: $b9
	xor  c                                           ; $40d1: $a9
	ld   [hl], l                                     ; $40d2: $75
	ld   b, [hl]                                     ; $40d3: $46
	sbc  d                                           ; $40d4: $9a
	and  a                                           ; $40d5: $a7
	ld   d, [hl]                                     ; $40d6: $56
	ld   a, c                                        ; $40d7: $79
	xor  d                                           ; $40d8: $aa
	cp   b                                           ; $40d9: $b8
	halt                                             ; $40da: $76
	ld   d, [hl]                                     ; $40db: $56
	adc  d                                           ; $40dc: $8a
	cp   d                                           ; $40dd: $ba
	ld   d, h                                        ; $40de: $54
	ld   e, c                                        ; $40df: $59
	res  2, [hl]                                     ; $40e0: $cb $96
	ld   h, a                                        ; $40e2: $67
	ld   [hl], a                                     ; $40e3: $77
	ld   a, b                                        ; $40e4: $78
	xor  d                                           ; $40e5: $aa
	add  [hl]                                        ; $40e6: $86
	ld   h, a                                        ; $40e7: $67
	sbc  d                                           ; $40e8: $9a
	xor  d                                           ; $40e9: $aa
	halt                                             ; $40ea: $76
	ld   d, [hl]                                     ; $40eb: $56
	adc  d                                           ; $40ec: $8a
	xor  d                                           ; $40ed: $aa
	halt                                             ; $40ee: $76
	ld   h, a                                        ; $40ef: $67
	adc  d                                           ; $40f0: $8a
	xor  c                                           ; $40f1: $a9
	ld   [hl], l                                     ; $40f2: $75
	ld   h, a                                        ; $40f3: $67
	sbc  c                                           ; $40f4: $99
	xor  b                                           ; $40f5: $a8
	adc  b                                           ; $40f6: $88
	adc  c                                           ; $40f7: $89
	adc  c                                           ; $40f8: $89
	sbc  b                                           ; $40f9: $98
	add  a                                           ; $40fa: $87
	ld   [hl], a                                     ; $40fb: $77
	adc  c                                           ; $40fc: $89
	adc  b                                           ; $40fd: $88
	sbc  b                                           ; $40fe: $98
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	adc  c                                           ; $4101: $89
	adc  b                                           ; $4102: $88
	ld   a, b                                        ; $4103: $78
	adc  c                                           ; $4104: $89
	adc  c                                           ; $4105: $89
	sbc  b                                           ; $4106: $98
	adc  b                                           ; $4107: $88
	adc  b                                           ; $4108: $88
	sbc  b                                           ; $4109: $98
	ld   [hl], a                                     ; $410a: $77
	ld   a, b                                        ; $410b: $78
	adc  b                                           ; $410c: $88
	adc  b                                           ; $410d: $88
	adc  b                                           ; $410e: $88
	adc  b                                           ; $410f: $88
	adc  b                                           ; $4110: $88
	ld   [hl], a                                     ; $4111: $77
	ld   a, b                                        ; $4112: $78
	ld   a, b                                        ; $4113: $78
	adc  b                                           ; $4114: $88
	adc  b                                           ; $4115: $88
	adc  b                                           ; $4116: $88
	sbc  b                                           ; $4117: $98
	adc  b                                           ; $4118: $88
	adc  b                                           ; $4119: $88
	adc  b                                           ; $411a: $88
	adc  b                                           ; $411b: $88
	adc  b                                           ; $411c: $88
	sbc  b                                           ; $411d: $98
	adc  b                                           ; $411e: $88
	adc  b                                           ; $411f: $88
	adc  b                                           ; $4120: $88
	adc  b                                           ; $4121: $88
	add  a                                           ; $4122: $87
	ld   a, b                                        ; $4123: $78
	sbc  b                                           ; $4124: $98
	adc  c                                           ; $4125: $89
	add  a                                           ; $4126: $87
	ld   a, b                                        ; $4127: $78
	sbc  b                                           ; $4128: $98
	sbc  b                                           ; $4129: $98
	ld   [hl], a                                     ; $412a: $77
	adc  b                                           ; $412b: $88
	sbc  c                                           ; $412c: $99
	adc  b                                           ; $412d: $88
	adc  b                                           ; $412e: $88
	sbc  b                                           ; $412f: $98
	adc  b                                           ; $4130: $88
	ld   [hl], a                                     ; $4131: $77
	adc  b                                           ; $4132: $88
	adc  b                                           ; $4133: $88
	adc  b                                           ; $4134: $88
	adc  b                                           ; $4135: $88
	adc  c                                           ; $4136: $89
	sbc  b                                           ; $4137: $98
	add  a                                           ; $4138: $87
	adc  b                                           ; $4139: $88
	sbc  b                                           ; $413a: $98
	adc  b                                           ; $413b: $88
	ld   a, b                                        ; $413c: $78
	adc  c                                           ; $413d: $89
	sbc  c                                           ; $413e: $99
	adc  b                                           ; $413f: $88
	ld   a, b                                        ; $4140: $78
	adc  b                                           ; $4141: $88
	adc  c                                           ; $4142: $89
	adc  b                                           ; $4143: $88
	adc  b                                           ; $4144: $88
	adc  b                                           ; $4145: $88
	sbc  b                                           ; $4146: $98
	adc  b                                           ; $4147: $88
	ld   a, b                                        ; $4148: $78
	adc  b                                           ; $4149: $88
	sbc  c                                           ; $414a: $99
	adc  b                                           ; $414b: $88
	ld   [hl], a                                     ; $414c: $77
	adc  c                                           ; $414d: $89
	sbc  b                                           ; $414e: $98
	add  a                                           ; $414f: $87
	adc  b                                           ; $4150: $88
	adc  c                                           ; $4151: $89
	adc  b                                           ; $4152: $88
	adc  b                                           ; $4153: $88
	adc  b                                           ; $4154: $88
	adc  b                                           ; $4155: $88
	adc  b                                           ; $4156: $88
	adc  b                                           ; $4157: $88
	adc  b                                           ; $4158: $88
	adc  b                                           ; $4159: $88
	adc  c                                           ; $415a: $89
	adc  b                                           ; $415b: $88
	add  a                                           ; $415c: $87
	adc  b                                           ; $415d: $88
	sbc  b                                           ; $415e: $98
	adc  b                                           ; $415f: $88
	adc  b                                           ; $4160: $88
	adc  b                                           ; $4161: $88
	adc  b                                           ; $4162: $88
	adc  b                                           ; $4163: $88
	adc  b                                           ; $4164: $88
	adc  b                                           ; $4165: $88
	adc  b                                           ; $4166: $88
	adc  b                                           ; $4167: $88
	adc  b                                           ; $4168: $88
	adc  b                                           ; $4169: $88
	adc  b                                           ; $416a: $88
	adc  b                                           ; $416b: $88
	adc  b                                           ; $416c: $88
	adc  b                                           ; $416d: $88
	adc  b                                           ; $416e: $88
	adc  b                                           ; $416f: $88
	adc  b                                           ; $4170: $88
	adc  b                                           ; $4171: $88
	adc  b                                           ; $4172: $88
	adc  b                                           ; $4173: $88
	adc  b                                           ; $4174: $88
	adc  b                                           ; $4175: $88
	adc  b                                           ; $4176: $88
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	adc  b                                           ; $4179: $88
	adc  b                                           ; $417a: $88
	adc  b                                           ; $417b: $88
	adc  b                                           ; $417c: $88
	adc  b                                           ; $417d: $88
	adc  b                                           ; $417e: $88
	adc  b                                           ; $417f: $88
	adc  b                                           ; $4180: $88
	adc  b                                           ; $4181: $88
	adc  b                                           ; $4182: $88
	adc  b                                           ; $4183: $88
	adc  b                                           ; $4184: $88
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88

Jump_0f4_4187:
	adc  b                                           ; $4187: $88
	adc  b                                           ; $4188: $88
	adc  b                                           ; $4189: $88
	ld   de, $1111                                   ; $418a: $11 $11 $11
	ld   de, $1111                                   ; $418d: $11 $11 $11
	ld   de, $0011                                   ; $4190: $11 $11 $00
	ld   c, b                                        ; $4193: $48
	ld   de, $1111                                   ; $4194: $11 $11 $11
	ld   de, $1111                                   ; $4197: $11 $11 $11
	ld   de, $1111                                   ; $419a: $11 $11 $11
	ld   de, $5413                                   ; $419d: $11 $13 $54
	ld   d, h                                        ; $41a0: $54
	ld   d, h                                        ; $41a1: $54
	ld   b, c                                        ; $41a2: $41
	rra                                              ; $41a3: $1f
	rst  $38                                         ; $41a4: $ff
	pop  af                                          ; $41a5: $f1
	ld   de, $1511                                   ; $41a6: $11 $11 $15
	add  c                                           ; $41a9: $81
	ld   de, $dd1c                                   ; $41aa: $11 $1c $dd
	call c, $d1dd                                    ; $41ad: $dc $dd $d1
	ld   de, $1111                                   ; $41b0: $11 $11 $11
	ld   de, $1111                                   ; $41b3: $11 $11 $11
	ld   de, $1111                                   ; $41b6: $11 $11 $11
	ld   de, $1111                                   ; $41b9: $11 $11 $11
	ld   de, $5411                                   ; $41bc: $11 $11 $54
	ld   b, h                                        ; $41bf: $44
	ld   [hl], l                                     ; $41c0: $75
	ld   de, $5454                                   ; $41c1: $11 $54 $54
	ld   h, a                                        ; $41c4: $67
	ld   [hl], d                                     ; $41c5: $72
	ld   de, $1111                                   ; $41c6: $11 $11 $11
	ld   de, $1112                                   ; $41c9: $11 $12 $11
	ld   [de], a                                     ; $41cc: $12
	ld   de, $1111                                   ; $41cd: $11 $11 $11
	ld   h, [hl]                                     ; $41d0: $66
	halt                                             ; $41d1: $76
	ld   d, l                                        ; $41d2: $55
	ld   de, $9988                                   ; $41d3: $11 $88 $99
	sbc  c                                           ; $41d6: $99
	sbc  c                                           ; $41d7: $99
	adc  b                                           ; $41d8: $88
	ld   [hl], a                                     ; $41d9: $77
	ld   h, [hl]                                     ; $41da: $66
	ld   h, [hl]                                     ; $41db: $66
	ld   h, a                                        ; $41dc: $67
	adc  c                                           ; $41dd: $89
	sbc  e                                           ; $41de: $9b
	cp   e                                           ; $41df: $bb
	xor  d                                           ; $41e0: $aa
	xor  b                                           ; $41e1: $a8
	add  a                                           ; $41e2: $87
	ld   [hl], a                                     ; $41e3: $77
	ld   h, [hl]                                     ; $41e4: $66
	ld   d, h                                        ; $41e5: $54
	ld   [hl-], a                                    ; $41e6: $32
	inc  hl                                          ; $41e7: $23
	ld   d, a                                        ; $41e8: $57
	xor  l                                           ; $41e9: $ad
	rst  $38                                         ; $41ea: $ff
	cp   $ba                                         ; $41eb: $fe $ba
	ld   [hl], l                                     ; $41ed: $75
	ld   b, e                                        ; $41ee: $43
	ld   b, l                                        ; $41ef: $45
	ld   d, [hl]                                     ; $41f0: $56
	ld   [hl], a                                     ; $41f1: $77
	adc  b                                           ; $41f2: $88
	sbc  e                                           ; $41f3: $9b
	call $ffef                                       ; $41f4: $cd $ef $ff
	reti                                             ; $41f7: $d9


	ld   h, d                                        ; $41f8: $62
	ld   de, $1111                                   ; $41f9: $11 $11 $11
	ld   c, b                                        ; $41fc: $48
	rst  $28                                         ; $41fd: $ef
	rst  $38                                         ; $41fe: $ff
	rst  $38                                         ; $41ff: $ff
	db   $ec                                         ; $4200: $ec
	sub  a                                           ; $4201: $97
	ld   h, h                                        ; $4202: $64
	inc  sp                                          ; $4203: $33
	ld   hl, $3612                                   ; $4204: $21 $12 $36
	xor  [hl]                                        ; $4207: $ae
	rst  $38                                         ; $4208: $ff
	rst  $38                                         ; $4209: $ff
	rst  $38                                         ; $420a: $ff
	add  $11                                         ; $420b: $c6 $11
	ld   de, $1111                                   ; $420d: $11 $11 $11
	ld   e, d                                        ; $4210: $5a
	rst  $38                                         ; $4211: $ff
	rst  $38                                         ; $4212: $ff
	rst  $38                                         ; $4213: $ff
	rst  $38                                         ; $4214: $ff
	ret                                              ; $4215: $c9


	ld   h, d                                        ; $4216: $62
	ld   de, $1111                                   ; $4217: $11 $11 $11
	ld   e, d                                        ; $421a: $5a
	rst  $38                                         ; $421b: $ff
	rst  $38                                         ; $421c: $ff
	rst  $38                                         ; $421d: $ff
	ld   sp, hl                                      ; $421e: $f9
	ld   de, $1111                                   ; $421f: $11 $11 $11
	ld   de, $ff29                                   ; $4222: $11 $29 $ff
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	rst  $38                                         ; $4227: $ff
	cp   $95                                         ; $4228: $fe $95
	ld   de, $1111                                   ; $422a: $11 $11 $11
	ld   a, [hl-]                                    ; $422d: $3a
	rst  $38                                         ; $422e: $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	db   $d3                                         ; $4231: $d3
	ld   de, $1111                                   ; $4232: $11 $11 $11
	ld   d, $df                                      ; $4235: $16 $df
	rst  $38                                         ; $4237: $ff
	rst  $38                                         ; $4238: $ff
	rst  $38                                         ; $4239: $ff
	rst  $38                                         ; $423a: $ff
	xor  $b7                                         ; $423b: $ee $b7
	ld   sp, $1311                                   ; $423d: $31 $11 $13
	xor  a                                           ; $4240: $af
	rst  $38                                         ; $4241: $ff
	rst  $38                                         ; $4242: $ff
	db   $d3                                         ; $4243: $d3
	ld   de, $1111                                   ; $4244: $11 $11 $11
	ld   a, $ff                                      ; $4247: $3e $ff
	rst  $38                                         ; $4249: $ff
	db   $fd                                         ; $424a: $fd
	xor  d                                           ; $424b: $aa
	xor  h                                           ; $424c: $ac
	adc  $da                                         ; $424d: $ce $da
	ld   [hl], e                                     ; $424f: $73
	ld   de, $bf14                                   ; $4250: $11 $14 $bf
	rst  $38                                         ; $4253: $ff
	rst  $38                                         ; $4254: $ff
	pop  bc                                          ; $4255: $c1
	ld   de, $1111                                   ; $4256: $11 $11 $11
	ld   l, $ff                                      ; $4259: $2e $ff
	rst  $38                                         ; $425b: $ff
	rst  $38                                         ; $425c: $ff
	jp   z, $bc8a                                    ; $425d: $ca $8a $bc

	cp   d                                           ; $4260: $ba
	ld   h, d                                        ; $4261: $62
	ld   de, $bf14                                   ; $4262: $11 $14 $bf
	rst  $38                                         ; $4265: $ff
	rst  $38                                         ; $4266: $ff
	pop  bc                                          ; $4267: $c1
	ld   de, $1111                                   ; $4268: $11 $11 $11
	inc  e                                           ; $426b: $1c
	rst  $38                                         ; $426c: $ff
	rst  $38                                         ; $426d: $ff
	rst  $38                                         ; $426e: $ff
	res  5, h                                        ; $426f: $cb $ac
	cp   l                                           ; $4271: $bd
	jp   z, $1173                                    ; $4272: $ca $73 $11

	inc  d                                           ; $4275: $14
	sbc  a                                           ; $4276: $9f
	rst  $38                                         ; $4277: $ff
	rst  $38                                         ; $4278: $ff
	pop  de                                          ; $4279: $d1
	ld   de, $1111                                   ; $427a: $11 $11 $11
	dec  e                                           ; $427d: $1d
	rst  $38                                         ; $427e: $ff
	rst  $38                                         ; $427f: $ff
	rst  $38                                         ; $4280: $ff
	db   $ed                                         ; $4281: $ed
	xor  h                                           ; $4282: $ac
	cp   l                                           ; $4283: $bd
	jp   z, $2173                                    ; $4284: $ca $73 $21

	inc  h                                           ; $4287: $24
	cp   a                                           ; $4288: $bf
	rst  $38                                         ; $4289: $ff
	rst  $38                                         ; $428a: $ff
	db   $d3                                         ; $428b: $d3
	ld   de, $1111                                   ; $428c: $11 $11 $11
	rla                                              ; $428f: $17
	rst  $38                                         ; $4290: $ff
	rst  $38                                         ; $4291: $ff
	rst  $38                                         ; $4292: $ff
	rst  $38                                         ; $4293: $ff
	db   $dd                                         ; $4294: $dd
	db   $dd                                         ; $4295: $dd

Jump_0f4_4296:
	ret                                              ; $4296: $c9


	ld   [hl], d                                     ; $4297: $72
	ld   de, $8f14                                   ; $4298: $11 $14 $8f
	rst  $38                                         ; $429b: $ff
	rst  $38                                         ; $429c: $ff
	or   $11                                         ; $429d: $f6 $11
	ld   de, $1111                                   ; $429f: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42a2: $cf
	rst  $38                                         ; $42a3: $ff
	rst  $38                                         ; $42a4: $ff
	rst  $38                                         ; $42a5: $ff
	cp   $ff                                         ; $42a6: $fe $ff
	ld   [$1173], a                                  ; $42a8: $ea $73 $11
	ld   de, $ff6b                                   ; $42ab: $11 $6b $ff
	rst  $38                                         ; $42ae: $ff
	db   $fd                                         ; $42af: $fd
	ld   de, $1111                                   ; $42b0: $11 $11 $11
	ld   de, $ff2e                                   ; $42b3: $11 $2e $ff
	rst  $38                                         ; $42b6: $ff
	rst  $38                                         ; $42b7: $ff
	rst  $38                                         ; $42b8: $ff
	rst  $38                                         ; $42b9: $ff
	db   $fd                                         ; $42ba: $fd
	add  l                                           ; $42bb: $85
	ld   de, $2711                                   ; $42bc: $11 $11 $27
	rst  $28                                         ; $42bf: $ef
	rst  $38                                         ; $42c0: $ff
	rst  $38                                         ; $42c1: $ff
	or   c                                           ; $42c2: $b1
	ld   de, $1111                                   ; $42c3: $11 $11 $11
	ld   de, $ffbf                                   ; $42c6: $11 $bf $ff
	rst  $38                                         ; $42c9: $ff
	rst  $38                                         ; $42ca: $ff
	rst  $38                                         ; $42cb: $ff
	rst  $38                                         ; $42cc: $ff
	rst  $10                                         ; $42cd: $d7
	ld   sp, $1311                                   ; $42ce: $31 $11 $13
	adc  [hl]                                        ; $42d1: $8e
	rst  $38                                         ; $42d2: $ff
	rst  $38                                         ; $42d3: $ff
	ei                                               ; $42d4: $fb
	ld   de, $1111                                   ; $42d5: $11 $11 $11
	ld   de, $ff15                                   ; $42d8: $11 $15 $ff
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	rst  $38                                         ; $42de: $ff
	ei                                               ; $42df: $fb
	ld   [hl], d                                     ; $42e0: $72
	ld   de, $1911                                   ; $42e1: $11 $11 $19
	rst  JumpTable                                         ; $42e4: $df
	rst  $38                                         ; $42e5: $ff
	rst  $38                                         ; $42e6: $ff
	db   $e4                                         ; $42e7: $e4
	ld   de, $1111                                   ; $42e8: $11 $11 $11
	ld   de, $ff18                                   ; $42eb: $11 $18 $ff
	rst  $38                                         ; $42ee: $ff
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	rst  $38                                         ; $42f1: $ff
	rst  $10                                         ; $42f2: $d7
	ld   sp, $1111                                   ; $42f3: $31 $11 $11
	ld   e, e                                        ; $42f6: $5b
	rst  $38                                         ; $42f7: $ff
	rst  $38                                         ; $42f8: $ff
	rst  $38                                         ; $42f9: $ff
	db   $d3                                         ; $42fa: $d3
	ld   de, $1111                                   ; $42fb: $11 $11 $11
	ld   de, $ff16                                   ; $42fe: $11 $16 $ff
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	rst  $38                                         ; $4303: $ff
	rst  $38                                         ; $4304: $ff
	or   [hl]                                        ; $4305: $b6
	ld   sp, $1111                                   ; $4306: $31 $11 $11
	ld   c, e                                        ; $4309: $4b
	rst  $28                                         ; $430a: $ef
	rst  $38                                         ; $430b: $ff
	rst  $38                                         ; $430c: $ff
	db   $f4                                         ; $430d: $f4
	ld   de, $1111                                   ; $430e: $11 $11 $11
	ld   de, $ff16                                   ; $4311: $11 $16 $ff
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	rst  $38                                         ; $4316: $ff
	rst  $38                                         ; $4317: $ff
	add  $31                                         ; $4318: $c6 $31
	ld   de, $2a11                                   ; $431a: $11 $11 $2a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $431d: $cf
	rst  $38                                         ; $431e: $ff
	rst  $38                                         ; $431f: $ff
	or   $11                                         ; $4320: $f6 $11
	ld   de, $1111                                   ; $4322: $11 $11 $11
	ld   [de], a                                     ; $4325: $12
	rst  $38                                         ; $4326: $ff
	rst  $38                                         ; $4327: $ff
	rst  $38                                         ; $4328: $ff
	rst  $38                                         ; $4329: $ff
	rst  $38                                         ; $432a: $ff
	rst  $20                                         ; $432b: $e7
	ld   b, c                                        ; $432c: $41
	ld   de, $1a11                                   ; $432d: $11 $11 $1a
	cp   a                                           ; $4330: $bf
	rst  $38                                         ; $4331: $ff
	rst  $38                                         ; $4332: $ff
	ld   sp, hl                                      ; $4333: $f9
	ld   de, $1111                                   ; $4334: $11 $11 $11
	ld   de, $bf11                                   ; $4337: $11 $11 $bf
	rst  $38                                         ; $433a: $ff
	rst  $38                                         ; $433b: $ff
	rst  $38                                         ; $433c: $ff
	rst  $38                                         ; $433d: $ff
	rst  $30                                         ; $433e: $f7
	ld   b, c                                        ; $433f: $41
	ld   de, $1711                                   ; $4340: $11 $11 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4343: $cf
	rst  $38                                         ; $4344: $ff
	rst  $38                                         ; $4345: $ff
	cp   $21                                         ; $4346: $fe $21
	ld   de, $1111                                   ; $4348: $11 $11 $11
	ld   de, $ff6f                                   ; $434b: $11 $6f $ff
	rst  $38                                         ; $434e: $ff
	rst  $38                                         ; $434f: $ff
	rst  $38                                         ; $4350: $ff
	ld   a, [$1131]                                  ; $4351: $fa $31 $11
	ld   de, $cf13                                   ; $4354: $11 $13 $cf
	rst  $38                                         ; $4357: $ff
	rst  $38                                         ; $4358: $ff
	rst  $38                                         ; $4359: $ff
	ld   h, c                                        ; $435a: $61
	ld   de, $1111                                   ; $435b: $11 $11 $11
	ld   de, $ff1e                                   ; $435e: $11 $1e $ff
	rst  $38                                         ; $4361: $ff
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	db   $fc                                         ; $4364: $fc
	ld   b, c                                        ; $4365: $41
	ld   de, $1111                                   ; $4366: $11 $11 $11
	xor  [hl]                                        ; $4369: $ae
	rst  $38                                         ; $436a: $ff
	rst  $38                                         ; $436b: $ff
	rst  $38                                         ; $436c: $ff
	pop  bc                                          ; $436d: $c1
	ld   de, $1111                                   ; $436e: $11 $11 $11
	ld   de, $ff18                                   ; $4371: $11 $18 $ff
	rst  $38                                         ; $4374: $ff
	rst  $38                                         ; $4375: $ff
	rst  $38                                         ; $4376: $ff
	cp   $71                                         ; $4377: $fe $71
	ld   de, $1111                                   ; $4379: $11 $11 $11
	ld   c, [hl]                                     ; $437c: $4e
	rst  $38                                         ; $437d: $ff
	rst  $38                                         ; $437e: $ff
	rst  $38                                         ; $437f: $ff
	or   $11                                         ; $4380: $f6 $11
	ld   de, $1111                                   ; $4382: $11 $11 $11
	ld   de, $ffcf                                   ; $4385: $11 $cf $ff
	rst  $38                                         ; $4388: $ff
	rst  $38                                         ; $4389: $ff
	rst  $38                                         ; $438a: $ff
	or   d                                           ; $438b: $b2
	ld   de, $1111                                   ; $438c: $11 $11 $11
	jr   @+$01                                       ; $438f: $18 $ff

	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	cp   $11                                         ; $4393: $fe $11
	ld   de, $1111                                   ; $4395: $11 $11 $11
	ld   de, $ff2f                                   ; $4398: $11 $2f $ff
	rst  $38                                         ; $439b: $ff
	rst  $38                                         ; $439c: $ff
	rst  $38                                         ; $439d: $ff
	rst  ToBoot                                         ; $439e: $c7
	ld   de, $1111                                   ; $439f: $11 $11 $11
	ld   de, $ffcf                                   ; $43a2: $11 $cf $ff
	rst  $38                                         ; $43a5: $ff
	rst  $38                                         ; $43a6: $ff
	add  c                                           ; $43a7: $81
	ld   de, $1111                                   ; $43a8: $11 $11 $11
	ld   de, $ff18                                   ; $43ab: $11 $18 $ff
	rst  $38                                         ; $43ae: $ff
	rst  $38                                         ; $43af: $ff
	rst  $38                                         ; $43b0: $ff
	ld   a, [$1131]                                  ; $43b1: $fa $31 $11
	ld   de, $4f11                                   ; $43b4: $11 $11 $4f
	rst  $38                                         ; $43b7: $ff
	rst  $38                                         ; $43b8: $ff
	rst  $38                                         ; $43b9: $ff
	db   $e4                                         ; $43ba: $e4
	ld   de, $1111                                   ; $43bb: $11 $11 $11
	ld   de, $cf11                                   ; $43be: $11 $11 $cf
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	db   $fd                                         ; $43c4: $fd
	ld   h, c                                        ; $43c5: $61
	ld   de, $1111                                   ; $43c6: $11 $11 $11
	rla                                              ; $43c9: $17
	rst  $38                                         ; $43ca: $ff
	rst  $38                                         ; $43cb: $ff
	rst  $38                                         ; $43cc: $ff
	ld   sp, hl                                      ; $43cd: $f9
	ld   de, $1111                                   ; $43ce: $11 $11 $11
	ld   de, $2f11                                   ; $43d1: $11 $11 $2f
	rst  $38                                         ; $43d4: $ff
	rst  $38                                         ; $43d5: $ff
	rst  $38                                         ; $43d6: $ff
	rst  $38                                         ; $43d7: $ff
	add  e                                           ; $43d8: $83
	ld   de, $1111                                   ; $43d9: $11 $11 $11
	inc  de                                          ; $43dc: $13
	rst  $28                                         ; $43dd: $ef
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
	db   $fd                                         ; $43e0: $fd
	ld   sp, $1111                                   ; $43e1: $31 $11 $11
	ld   de, $1b11                                   ; $43e4: $11 $11 $1b
	rst  $38                                         ; $43e7: $ff
	rst  $38                                         ; $43e8: $ff
	rst  $38                                         ; $43e9: $ff
	rst  $38                                         ; $43ea: $ff
	or   l                                           ; $43eb: $b5
	ld   de, $1111                                   ; $43ec: $11 $11 $11
	ld   de, $ff7f                                   ; $43ef: $11 $7f $ff
	rst  $38                                         ; $43f2: $ff
	rst  $38                                         ; $43f3: $ff
	ld   d, c                                        ; $43f4: $51
	ld   de, $1111                                   ; $43f5: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $43f8: $11 $14 $ff
	rst  $38                                         ; $43fb: $ff
	rst  $38                                         ; $43fc: $ff
	rst  $38                                         ; $43fd: $ff
	and  $11                                         ; $43fe: $e6 $11
	ld   de, $1111                                   ; $4400: $11 $11 $11
	ld   c, a                                        ; $4403: $4f
	rst  $38                                         ; $4404: $ff
	rst  $38                                         ; $4405: $ff
	rst  $38                                         ; $4406: $ff
	ld   h, c                                        ; $4407: $61
	ld   de, $1111                                   ; $4408: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $440b: $11 $11 $ff
	rst  $38                                         ; $440e: $ff
	rst  $38                                         ; $440f: $ff
	rst  $38                                         ; $4410: $ff
	rst  $30                                         ; $4411: $f7
	ld   hl, $1111                                   ; $4412: $21 $11 $11
	ld   de, $ff3d                                   ; $4415: $11 $3d $ff
	rst  $38                                         ; $4418: $ff
	rst  $38                                         ; $4419: $ff
	ld   h, c                                        ; $441a: $61
	ld   de, $1111                                   ; $441b: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $441e: $11 $11 $ff
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	reti                                             ; $4424: $d9


	ld   b, d                                        ; $4425: $42
	ld   de, $1111                                   ; $4426: $11 $11 $11
	ld   c, a                                        ; $4429: $4f
	rst  $38                                         ; $442a: $ff
	rst  $38                                         ; $442b: $ff
	cp   $31                                         ; $442c: $fe $31
	ld   de, $1111                                   ; $442e: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4431: $11 $14 $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	db   $eb                                         ; $4437: $eb
	ld   h, h                                        ; $4438: $64
	ld   de, $1111                                   ; $4439: $11 $11 $11
	sbc  a                                           ; $443c: $9f
	rst  $38                                         ; $443d: $ff
	rst  $38                                         ; $443e: $ff
	rst  $30                                         ; $443f: $f7
	ld   de, $1111                                   ; $4440: $11 $11 $11
	ld   de, $1c11                                   ; $4443: $11 $11 $1c
	rst  $38                                         ; $4446: $ff
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	rst  $38                                         ; $4449: $ff
	rst  $38                                         ; $444a: $ff
	sub  e                                           ; $444b: $93
	ld   de, $1511                                   ; $444c: $11 $11 $15
	rst  $38                                         ; $444f: $ff
	rst  $38                                         ; $4450: $ff
	rst  $38                                         ; $4451: $ff
	jp   $1111                                       ; $4452: $c3 $11 $11


	ld   de, $1111                                   ; $4455: $11 $11 $11
	sbc  a                                           ; $4458: $9f
	rst  $38                                         ; $4459: $ff
	rst  $38                                         ; $445a: $ff
	rst  $38                                         ; $445b: $ff
	rst  $38                                         ; $445c: $ff
	db   $fd                                         ; $445d: $fd
	ld   de, $1111                                   ; $445e: $11 $11 $11
	ld   c, a                                        ; $4461: $4f
	rst  $38                                         ; $4462: $ff
	rst  $38                                         ; $4463: $ff
	rst  $38                                         ; $4464: $ff
	add  h                                           ; $4465: $84
	ld   b, c                                        ; $4466: $41
	ld   de, $1111                                   ; $4467: $11 $11 $11
	dec  e                                           ; $446a: $1d
	rst  $38                                         ; $446b: $ff
	rst  $38                                         ; $446c: $ff
	rst  $38                                         ; $446d: $ff
	rst  $38                                         ; $446e: $ff
	rst  $38                                         ; $446f: $ff
	pop  bc                                          ; $4470: $c1
	ld   de, $1611                                   ; $4471: $11 $11 $16
	rst  $38                                         ; $4474: $ff
	rst  $38                                         ; $4475: $ff
	rst  $38                                         ; $4476: $ff
	rst  $38                                         ; $4477: $ff
	ld   d, d                                        ; $4478: $52
	ld   de, $1111                                   ; $4479: $11 $11 $11
	ld   de, $ffbf                                   ; $447c: $11 $bf $ff
	rst  $38                                         ; $447f: $ff
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	or   $11                                         ; $4482: $f6 $11
	ld   de, $5c11                                   ; $4484: $11 $11 $5c
	rst  $38                                         ; $4487: $ff
	rst  $38                                         ; $4488: $ff
	rst  $38                                         ; $4489: $ff
	or   c                                           ; $448a: $b1
	ld   de, $1111                                   ; $448b: $11 $11 $11
	ld   de, $ff3a                                   ; $448e: $11 $3a $ff
	rst  $38                                         ; $4491: $ff
	rst  $38                                         ; $4492: $ff
	rst  $38                                         ; $4493: $ff
	db   $fc                                         ; $4494: $fc
	ld   hl, $1111                                   ; $4495: $21 $11 $11
	ld   [hl], $ef                                   ; $4498: $36 $ef
	rst  $38                                         ; $449a: $ff
	rst  $38                                         ; $449b: $ff
	or   $11                                         ; $449c: $f6 $11
	ld   de, $1111                                   ; $449e: $11 $11 $11
	ld   a, [de]                                     ; $44a1: $1a
	rst  JumpTable                                         ; $44a2: $df
	rst  $38                                         ; $44a3: $ff
	rst  $38                                         ; $44a4: $ff
	rst  $38                                         ; $44a5: $ff
	cp   $71                                         ; $44a6: $fe $71
	ld   de, $1411                                   ; $44a8: $11 $11 $14
	adc  a                                           ; $44ab: $8f
	rst  $38                                         ; $44ac: $ff
	rst  $38                                         ; $44ad: $ff
	ld   sp, hl                                      ; $44ae: $f9
	ld   de, $1111                                   ; $44af: $11 $11 $11
	ld   de, $cf18                                   ; $44b2: $11 $18 $cf
	rst  $38                                         ; $44b5: $ff
	rst  $38                                         ; $44b6: $ff
	rst  $38                                         ; $44b7: $ff
	rst  $38                                         ; $44b8: $ff
	sub  c                                           ; $44b9: $91
	ld   de, $1211                                   ; $44ba: $11 $11 $12
	ld   e, h                                        ; $44bd: $5c
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	ld   sp, hl                                      ; $44c0: $f9
	ld   de, $1111                                   ; $44c1: $11 $11 $11
	ld   de, $bf17                                   ; $44c4: $11 $17 $bf
	rst  $38                                         ; $44c7: $ff
	rst  $38                                         ; $44c8: $ff
	rst  $38                                         ; $44c9: $ff
	rst  $38                                         ; $44ca: $ff
	add  c                                           ; $44cb: $81
	ld   de, $1111                                   ; $44cc: $11 $11 $11
	add  hl, hl                                      ; $44cf: $29
	rst  $38                                         ; $44d0: $ff
	rst  $38                                         ; $44d1: $ff
	push hl                                          ; $44d2: $e5
	ld   hl, $1111                                   ; $44d3: $21 $11 $11
	ld   de, $af19                                   ; $44d6: $11 $19 $af
	rst  $38                                         ; $44d9: $ff
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	db   $fd                                         ; $44dc: $fd
	ld   h, d                                        ; $44dd: $62
	ld   de, $1121                                   ; $44de: $11 $21 $11
	ld   e, $ff                                      ; $44e1: $1e $ff
	rst  $38                                         ; $44e3: $ff
	ld   d, e                                        ; $44e4: $53
	ld   de, $1111                                   ; $44e5: $11 $11 $11
	ld   de, $cf68                                   ; $44e8: $11 $68 $cf
	rst  $38                                         ; $44eb: $ff
	rst  $38                                         ; $44ec: $ff
	rst  $38                                         ; $44ed: $ff
	ld   hl, sp+$62                                  ; $44ee: $f8 $62
	dec  [hl]                                        ; $44f0: $35
	ld   de, $9f11                                   ; $44f1: $11 $11 $9f
	rst  $38                                         ; $44f4: $ff
	or   $13                                         ; $44f5: $f6 $13
	ld   de, $1111                                   ; $44f7: $11 $11 $11
	ld   d, $99                                      ; $44fa: $16 $99
	cp   $ff                                         ; $44fc: $fe $ff
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	xor  b                                           ; $4500: $a8
	ld   h, a                                        ; $4501: $67
	ld   d, c                                        ; $4502: $51
	ld   de, $ff2c                                   ; $4503: $11 $2c $ff
	db   $fd                                         ; $4506: $fd
	ld   d, d                                        ; $4507: $52
	ld   b, d                                        ; $4508: $42
	ld   de, $1111                                   ; $4509: $11 $11 $11
	sub  [hl]                                        ; $450c: $96
	ld   a, a                                        ; $450d: $7f
	rst  $28                                         ; $450e: $ef
	rst  $38                                         ; $450f: $ff
	rst  $38                                         ; $4510: $ff
	db   $ec                                         ; $4511: $ec
	cp   b                                           ; $4512: $b8
	sub  h                                           ; $4513: $94
	ld   de, $ff16                                   ; $4514: $11 $16 $ff
	rst  $38                                         ; $4517: $ff
	and  l                                           ; $4518: $a5
	ld   b, l                                        ; $4519: $45
	ld   de, $1111                                   ; $451a: $11 $11 $11
	ld   a, [de]                                     ; $451d: $1a

jr_0f4_451e:
	jr   jr_0f4_451e                                 ; $451e: $18 $fe

	rst  $38                                         ; $4520: $ff
	rst  $38                                         ; $4521: $ff
	rst  $38                                         ; $4522: $ff
	db   $fd                                         ; $4523: $fd
	xor  b                                           ; $4524: $a8
	ld   de, $ae11                                   ; $4525: $11 $11 $ae
	rst  $38                                         ; $4528: $ff
	ret                                              ; $4529: $c9


	ld   d, h                                        ; $452a: $54
	ld   d, c                                        ; $452b: $51
	ld   de, $1111                                   ; $452c: $11 $11 $11
	ld   [hl], c                                     ; $452f: $71
	cp   a                                           ; $4530: $bf
	rst  $38                                         ; $4531: $ff
	rst  $38                                         ; $4532: $ff
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	add  sp, $41                                     ; $4535: $e8 $41
	ld   [de], a                                     ; $4537: $12
	sbc  e                                           ; $4538: $9b
	rst  JumpTable                                         ; $4539: $df
	res  2, h                                        ; $453a: $cb $94
	ld   sp, $1111                                   ; $453c: $31 $11 $11
	ld   de, $2f51                                   ; $453f: $11 $51 $2f
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	ld   sp, hl                                      ; $4546: $f9
	ld   h, h                                        ; $4547: $64
	inc  de                                          ; $4548: $13
	adc  c                                           ; $4549: $89
	xor  a                                           ; $454a: $af
	db   $eb                                         ; $454b: $eb
	and  h                                           ; $454c: $a4
	ld   hl, $1111                                   ; $454d: $21 $11 $11
	ld   de, $1d15                                   ; $4550: $11 $15 $1d
	rst  $38                                         ; $4553: $ff
	rst  $38                                         ; $4554: $ff
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	cp   $76                                         ; $4557: $fe $76
	inc  [hl]                                        ; $4559: $34
	ld   a, c                                        ; $455a: $79
	adc  e                                           ; $455b: $8b
	jp   c, $01a5                                    ; $455c: $da $a5 $01

	ld   de, $1111                                   ; $455f: $11 $11 $11
	ld   d, $26                                      ; $4562: $16 $26
	rst  $38                                         ; $4564: $ff
	rst  $38                                         ; $4565: $ff
	rst  $38                                         ; $4566: $ff
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	add  a                                           ; $4569: $87
	ld   [hl], h                                     ; $456a: $74
	ld   a, d                                        ; $456b: $7a
	adc  d                                           ; $456c: $8a
	call z, $2195                                    ; $456d: $cc $95 $21
	ld   de, $1111                                   ; $4570: $11 $11 $11
	ld   [de], a                                     ; $4573: $12
	ld   b, e                                        ; $4574: $43
	rst  $28                                         ; $4575: $ef
	rst  $38                                         ; $4576: $ff
	rst  $38                                         ; $4577: $ff
	rst  $38                                         ; $4578: $ff
	rst  $38                                         ; $4579: $ff
	ret                                              ; $457a: $c9


	sub  [hl]                                        ; $457b: $96
	ld   a, d                                        ; $457c: $7a
	adc  c                                           ; $457d: $89
	cp   e                                           ; $457e: $bb
	and  [hl]                                        ; $457f: $a6
	inc  sp                                          ; $4580: $33
	ld   bc, $1111                                   ; $4581: $01 $11 $11
	ld   de, $1e26                                   ; $4584: $11 $26 $1e
	cp   $ff                                         ; $4587: $fe $ff
	rst  $38                                         ; $4589: $ff
	rst  $38                                         ; $458a: $ff
	db   $fd                                         ; $458b: $fd
	sbc  h                                           ; $458c: $9c
	xor  b                                           ; $458d: $a8
	sbc  b                                           ; $458e: $98
	adc  e                                           ; $458f: $8b
	cp   c                                           ; $4590: $b9
	ld   h, h                                        ; $4591: $64
	ld   [hl+], a                                    ; $4592: $22
	ld   de, $1111                                   ; $4593: $11 $11 $11
	ld   de, $7f23                                   ; $4596: $11 $23 $7f
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	rst  $38                                         ; $459b: $ff
	rst  $38                                         ; $459c: $ff
	cp   $cf                                         ; $459d: $fe $cf
	or   a                                           ; $459f: $b7
	xor  c                                           ; $45a0: $a9
	sbc  l                                           ; $45a1: $9d
	ld   [hl], l                                     ; $45a2: $75
	ld   h, d                                        ; $45a3: $62
	ld   hl, $1111                                   ; $45a4: $21 $11 $11
	ld   de, $1311                                   ; $45a7: $11 $11 $13
	cp   h                                           ; $45aa: $bc
	rst  $38                                         ; $45ab: $ff
	rst  $38                                         ; $45ac: $ff
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	call $a9a9                                       ; $45b0: $cd $a9 $a9
	xor  d                                           ; $45b3: $aa
	sbc  b                                           ; $45b4: $98
	ld   h, e                                        ; $45b5: $63
	ld   d, l                                        ; $45b6: $55
	inc  de                                          ; $45b7: $13
	ld   de, $1111                                   ; $45b8: $11 $11 $11
	ld   [de], a                                     ; $45bb: $12
	inc  h                                           ; $45bc: $24
	adc  d                                           ; $45bd: $8a
	cp   [hl]                                        ; $45be: $be
	rst  $38                                         ; $45bf: $ff
	rst  $38                                         ; $45c0: $ff
	rst  $38                                         ; $45c1: $ff
	cp   $ce                                         ; $45c2: $fe $ce
	cp   d                                           ; $45c4: $ba
	jp   z, $999b                                    ; $45c5: $ca $9b $99

	ld   h, [hl]                                     ; $45c8: $66
	ld   d, [hl]                                     ; $45c9: $56
	ld   h, c                                        ; $45ca: $61
	ld   d, c                                        ; $45cb: $51
	ld   de, $1111                                   ; $45cc: $11 $11 $11
	ld   b, c                                        ; $45cf: $41
	ld   h, a                                        ; $45d0: $67
	ld   l, l                                        ; $45d1: $6d

jr_0f4_45d2:
	cp   [hl]                                        ; $45d2: $be
	rst  $38                                         ; $45d3: $ff
	rst  $38                                         ; $45d4: $ff
	rst  $38                                         ; $45d5: $ff
	rst  JumpTable                                         ; $45d6: $df
	ld   [$9abd], a                                  ; $45d7: $ea $bd $9a
	reti                                             ; $45da: $d9


	sbc  b                                           ; $45db: $98
	adc  c                                           ; $45dc: $89
	ld   e, c                                        ; $45dd: $59
	ld   d, e                                        ; $45de: $53
	ld   [hl], c                                     ; $45df: $71
	ld   de, $1111                                   ; $45e0: $11 $11 $11
	ld   de, $6644                                   ; $45e3: $11 $44 $66
	xor  c                                           ; $45e6: $a9
	adc  $de                                         ; $45e7: $ce $de
	xor  $dd                                         ; $45e9: $ee $dd
	db   $eb                                         ; $45eb: $eb
	db   $dd                                         ; $45ec: $dd
	cp   l                                           ; $45ed: $bd
	call z, $a9b9                                    ; $45ee: $cc $b9 $a9
	sbc  b                                           ; $45f1: $98
	add  [hl]                                        ; $45f2: $86
	add  h                                           ; $45f3: $84
	ld   d, a                                        ; $45f4: $57
	ld   d, $13                                      ; $45f5: $16 $13
	ld   d, c                                        ; $45f7: $51
	ld   d, d                                        ; $45f8: $52
	ld   d, $41                                      ; $45f9: $16 $41
	sub  h                                           ; $45fb: $94
	ld   l, d                                        ; $45fc: $6a
	ld   a, h                                        ; $45fd: $7c
	cp   d                                           ; $45fe: $ba
	cp   l                                           ; $45ff: $bd
	jp   c, $afdd                                    ; $4600: $da $dd $af

	cp   d                                           ; $4603: $ba
	ld   [$9bc9], a                                  ; $4604: $ea $c9 $9b
	cp   d                                           ; $4607: $ba
	ld   l, d                                        ; $4608: $6a
	xor  b                                           ; $4609: $a8
	sub  l                                           ; $460a: $95
	ld   e, b                                        ; $460b: $58
	ld   b, l                                        ; $460c: $45
	ld   b, c                                        ; $460d: $41
	ld   b, l                                        ; $460e: $45
	ld   d, d                                        ; $460f: $52
	ld   h, d                                        ; $4610: $62
	ld   l, c                                        ; $4611: $69
	jr   z, jr_0f4_465e                              ; $4612: $28 $4a

	ld   [hl], a                                     ; $4614: $77
	and  h                                           ; $4615: $a4
	ret  c                                           ; $4616: $d8

	cp   h                                           ; $4617: $bc
	ld   a, a                                        ; $4618: $7f
	xor  l                                           ; $4619: $ad
	db   $db                                         ; $461a: $db
	add  sp, -$25                                    ; $461b: $e8 $db
	adc  e                                           ; $461d: $8b
	add  a                                           ; $461e: $87
	sub  a                                           ; $461f: $97
	ld   e, c                                        ; $4620: $59
	ld   d, a                                        ; $4621: $57
	add  a                                           ; $4622: $87
	ld   e, c                                        ; $4623: $59
	ld   h, [hl]                                     ; $4624: $66
	add  h                                           ; $4625: $84
	ld   [hl], e                                     ; $4626: $73
	add  c                                           ; $4627: $81
	and  [hl]                                        ; $4628: $a6
	ld   c, e                                        ; $4629: $4b
	dec  hl                                          ; $462a: $2b
	ld   l, d                                        ; $462b: $6a
	and  a                                           ; $462c: $a7
	rst  $10                                         ; $462d: $d7
	cp   h                                           ; $462e: $bc
	ld   c, l                                        ; $462f: $4d
	or   d                                           ; $4630: $b2
	ldh  a, [c]                                      ; $4631: $f2
	sbc  h                                           ; $4632: $9c
	ld   l, $88                                      ; $4633: $2e $88
	ld   a, c                                        ; $4635: $79
	sbc  b                                           ; $4636: $98
	ld   h, a                                        ; $4637: $67
	ld   [hl], a                                     ; $4638: $77
	or   c                                           ; $4639: $b1
	add  a                                           ; $463a: $87
	ld   e, l                                        ; $463b: $5d
	scf                                              ; $463c: $37
	or   [hl]                                        ; $463d: $b6
	rst  ToBoot                                         ; $463e: $c7
	ld   a, h                                        ; $463f: $7c
	ld   l, h                                        ; $4640: $6c
	add  [hl]                                        ; $4641: $86
	or   a                                           ; $4642: $b7
	or   a                                           ; $4643: $b7
	ld   l, h                                        ; $4644: $6c
	dec  sp                                          ; $4645: $3b
	sub  d                                           ; $4646: $92
	db   $e4                                         ; $4647: $e4
	ld   a, e                                        ; $4648: $7b
	jr   c, jr_0f4_46c5                              ; $4649: $38 $7a

	jr   c, jr_0f4_45d2                              ; $464b: $38 $85

	or   a                                           ; $464d: $b7
	add  a                                           ; $464e: $87
	or   l                                           ; $464f: $b5
	sub  $5f                                         ; $4650: $d6 $5f
	dec  hl                                          ; $4652: $2b
	sub  [hl]                                        ; $4653: $96
	push de                                          ; $4654: $d5
	or   a                                           ; $4655: $b7
	ld   a, c                                        ; $4656: $79
	sbc  d                                           ; $4657: $9a
	ld   e, e                                        ; $4658: $5b
	ld   e, c                                        ; $4659: $59
	sub  e                                           ; $465a: $93
	db   $d3                                         ; $465b: $d3
	sbc  c                                           ; $465c: $99
	ld   e, c                                        ; $465d: $59

jr_0f4_465e:
	ld   l, d                                        ; $465e: $6a
	ld   l, c                                        ; $465f: $69
	ld   h, a                                        ; $4660: $67
	sbc  b                                           ; $4661: $98
	ld   [hl], a                                     ; $4662: $77
	or   a                                           ; $4663: $b7
	sub  [hl]                                        ; $4664: $96
	and  a                                           ; $4665: $a7
	ld   a, h                                        ; $4666: $7c
	ld   c, h                                        ; $4667: $4c
	ld   l, e                                        ; $4668: $6b
	add  [hl]                                        ; $4669: $86
	push bc                                          ; $466a: $c5
	xor  b                                           ; $466b: $a8
	add  a                                           ; $466c: $87
	ld   a, c                                        ; $466d: $79
	ld   e, b                                        ; $466e: $58
	adc  b                                           ; $466f: $88
	ld   l, c                                        ; $4670: $69
	and  l                                           ; $4671: $a5
	or   [hl]                                        ; $4672: $b6
	and  a                                           ; $4673: $a7
	ld   l, d                                        ; $4674: $6a
	ld   l, c                                        ; $4675: $69
	add  a                                           ; $4676: $87
	ld   a, c                                        ; $4677: $79
	ld   l, d                                        ; $4678: $6a
	ld   l, c                                        ; $4679: $69
	sub  [hl]                                        ; $467a: $96
	or   e                                           ; $467b: $b3
	or   a                                           ; $467c: $b7
	ld   a, d                                        ; $467d: $7a
	ld   c, e                                        ; $467e: $4b
	ld   l, b                                        ; $467f: $68
	ld   [hl], a                                     ; $4680: $77
	call nz, Call_0f4_6cc7                           ; $4681: $c4 $c7 $6c
	ld   c, h                                        ; $4684: $4c
	ld   l, d                                        ; $4685: $6a
	sub  [hl]                                        ; $4686: $96
	call nz, Call_0f4_7ba6                           ; $4687: $c4 $a6 $7b
	ld   c, c                                        ; $468a: $49
	and  [hl]                                        ; $468b: $a6
	and  a                                           ; $468c: $a7
	ld   e, e                                        ; $468d: $5b
	ld   e, d                                        ; $468e: $5a
	ld   h, [hl]                                     ; $468f: $66
	jp   nz, Jump_0f4_5ba7                           ; $4690: $c2 $a7 $5b

	ld   c, e                                        ; $4693: $4b
	ld   l, b                                        ; $4694: $68
	jp   Jump_0f4_7dd6                               ; $4695: $c3 $d6 $7d


	ld   e, d                                        ; $4698: $5a
	sub  a                                           ; $4699: $97
	and  [hl]                                        ; $469a: $a6
	or   [hl]                                        ; $469b: $b6
	sbc  c                                           ; $469c: $99
	ld   e, d                                        ; $469d: $5a
	ld   e, c                                        ; $469e: $59
	ld   a, c                                        ; $469f: $79
	ld   c, c                                        ; $46a0: $49
	ld   [hl], l                                     ; $46a1: $75
	jp   nz, $89c5                                   ; $46a2: $c2 $c5 $89

	ld   e, e                                        ; $46a5: $5b
	ld   e, d                                        ; $46a6: $5a
	sub  [hl]                                        ; $46a7: $96
	adc  c                                           ; $46a8: $89
	adc  c                                           ; $46a9: $89
	sub  a                                           ; $46aa: $97
	sbc  c                                           ; $46ab: $99
	ld   a, d                                        ; $46ac: $7a
	ld   a, d                                        ; $46ad: $7a
	ld   a, c                                        ; $46ae: $79
	halt                                             ; $46af: $76
	pop  hl                                          ; $46b0: $e1
	rst  $10                                         ; $46b1: $d7
	ld   c, [hl]                                     ; $46b2: $4e
	ld   a, [hl-]                                    ; $46b3: $3a
	add  [hl]                                        ; $46b4: $86
	sub  a                                           ; $46b5: $97
	adc  c                                           ; $46b6: $89
	ld   c, h                                        ; $46b7: $4c
	ld   e, c                                        ; $46b8: $59
	add  h                                           ; $46b9: $84
	ldh  [c], a                                      ; $46ba: $e2
	or   [hl]                                        ; $46bb: $b6
	ld   a, b                                        ; $46bc: $78
	sbc  b                                           ; $46bd: $98
	ld   a, d                                        ; $46be: $7a
	ld   e, h                                        ; $46bf: $5c
	dec  a                                           ; $46c0: $3d
	ld   d, a                                        ; $46c1: $57
	jp   nc, $9be4                                   ; $46c2: $d2 $e4 $9b

jr_0f4_46c5:
	ld   e, d                                        ; $46c5: $5a
	ld   a, b                                        ; $46c6: $78
	adc  c                                           ; $46c7: $89
	ld   [hl], a                                     ; $46c8: $77
	and  a                                           ; $46c9: $a7
	ld   a, b                                        ; $46ca: $78
	sub  a                                           ; $46cb: $97
	sbc  b                                           ; $46cc: $98
	ld   l, h                                        ; $46cd: $6c
	ld   e, d                                        ; $46ce: $5a
	and  h                                           ; $46cf: $a4
	push de                                          ; $46d0: $d5
	xor  b                                           ; $46d1: $a8
	ld   a, c                                        ; $46d2: $79
	ld   l, h                                        ; $46d3: $6c
	dec  sp                                          ; $46d4: $3b
	halt                                             ; $46d5: $76
	ldh  [c], a                                      ; $46d6: $e2
	ret                                              ; $46d7: $c9


	ld   a, $49                                      ; $46d8: $3e $49
	jp   $99c6                                       ; $46da: $c3 $c6 $99


	ld   l, e                                        ; $46dd: $6b
	ld   l, d                                        ; $46de: $6a
	ld   [hl], a                                     ; $46df: $77
	or   h                                           ; $46e0: $b4
	cp   c                                           ; $46e1: $b9
	ld   c, [hl]                                     ; $46e2: $4e
	ld   d, a                                        ; $46e3: $57
	or   [hl]                                        ; $46e4: $b6
	add  a                                           ; $46e5: $87
	sub  l                                           ; $46e6: $95
	or   [hl]                                        ; $46e7: $b6
	and  l                                           ; $46e8: $a5

Call_0f4_46e9:
	adc  e                                           ; $46e9: $8b
	rra                                              ; $46ea: $1f
	add  hl, sp                                      ; $46eb: $39
	or   l                                           ; $46ec: $b5
	and  a                                           ; $46ed: $a7
	ld   a, b                                        ; $46ee: $78
	or   l                                           ; $46ef: $b5
	xor  c                                           ; $46f0: $a9
	ld   l, h                                        ; $46f1: $6c
	halt                                             ; $46f2: $76
	push bc                                          ; $46f3: $c5
	xor  d                                           ; $46f4: $aa
	ld   e, d                                        ; $46f5: $5a
	ld   [hl], a                                     ; $46f6: $77
	sub  a                                           ; $46f7: $97
	adc  c                                           ; $46f8: $89
	dec  a                                           ; $46f9: $3d
	ld   e, b                                        ; $46fa: $58
	or   e                                           ; $46fb: $b3
	push bc                                          ; $46fc: $c5
	or   [hl]                                        ; $46fd: $b6
	sbc  b                                           ; $46fe: $98
	ld   l, e                                        ; $46ff: $6b
	ld   e, d                                        ; $4700: $5a
	ld   c, l                                        ; $4701: $4d
	ld   [hl], h                                     ; $4702: $74
	db   $d3                                         ; $4703: $d3
	rst  ToBoot                                         ; $4704: $c7
	sub  a                                           ; $4705: $97
	ld   l, l                                        ; $4706: $6d
	add  hl, sp                                      ; $4707: $39
	sub  [hl]                                        ; $4708: $96
	adc  c                                           ; $4709: $89
	ld   a, c                                        ; $470a: $79
	ld   a, c                                        ; $470b: $79
	add  [hl]                                        ; $470c: $86
	jp   nc, Jump_0f4_6cc6                           ; $470d: $d2 $c6 $6c

jr_0f4_4710:
	rra                                              ; $4710: $1f
	ld   a, [hl+]                                    ; $4711: $2a
	and  l                                           ; $4712: $a5
	or   h                                           ; $4713: $b4
	push bc                                          ; $4714: $c5
	xor  c                                           ; $4715: $a9
	ld   l, c                                        ; $4716: $69
	adc  d                                           ; $4717: $8a
	ld   c, h                                        ; $4718: $4c
	ld   h, a                                        ; $4719: $67
	sub  a                                           ; $471a: $97
	ld   a, c                                        ; $471b: $79
	add  a                                           ; $471c: $87
	and  l                                           ; $471d: $a5
	or   [hl]                                        ; $471e: $b6
	ld   a, d                                        ; $471f: $7a
	ld   a, d                                        ; $4720: $7a
	ld   e, h                                        ; $4721: $5c
	ld   e, b                                        ; $4722: $58
	and  d                                           ; $4723: $a2
	add  $98                                         ; $4724: $c6 $98
	ld   a, d                                        ; $4726: $7a
	add  a                                           ; $4727: $87
	sub  a                                           ; $4728: $97
	ld   l, h                                        ; $4729: $6c
	ld   a, $47                                      ; $472a: $3e $47
	or   l                                           ; $472c: $b5
	pop  de                                          ; $472d: $d1
	di                                               ; $472e: $f3
	sbc  e                                           ; $472f: $9b
	ld   l, $2c                                      ; $4730: $2e $2c
	ld   e, h                                        ; $4732: $5c
	ld   [hl], l                                     ; $4733: $75
	ldh  [c], a                                      ; $4734: $e2
	db   $d3                                         ; $4735: $d3
	xor  d                                           ; $4736: $aa
	inc  a                                           ; $4737: $3c
	ld   d, [hl]                                     ; $4738: $56
	call nz, $2d7c                                   ; $4739: $c4 $7c $2d
	ld   h, [hl]                                     ; $473c: $66
	jp   Jump_0f4_4eb8                               ; $473d: $c3 $b8 $4e


	scf                                              ; $4740: $37
	pop  de                                          ; $4741: $d1
	di                                               ; $4742: $f3
	ld   l, h                                        ; $4743: $6c
	ld   l, $47                                      ; $4744: $2e $47
	push bc                                          ; $4746: $c5
	ld   a, h                                        ; $4747: $7c
	ld   c, b                                        ; $4748: $48
	sub  [hl]                                        ; $4749: $96
	and  l                                           ; $474a: $a5
	and  a                                           ; $474b: $a7
	ld   a, h                                        ; $474c: $7c
	ld   c, b                                        ; $474d: $48
	sub  h                                           ; $474e: $94
	or   [hl]                                        ; $474f: $b6
	ld   l, l                                        ; $4750: $6d
	ld   c, c                                        ; $4751: $49
	or   d                                           ; $4752: $b2
	xor  d                                           ; $4753: $aa
	ld   e, d                                        ; $4754: $5a
	ld   l, d                                        ; $4755: $6a
	ld   l, b                                        ; $4756: $68
	and  h                                           ; $4757: $a4
	xor  c                                           ; $4758: $a9
	halt                                             ; $4759: $76
	and  h                                           ; $475a: $a4
	or   [hl]                                        ; $475b: $b6
	ld   a, d                                        ; $475c: $7a
	ld   c, [hl]                                     ; $475d: $4e
	ld   c, e                                        ; $475e: $4b
	ld   e, b                                        ; $475f: $58
	or   l                                           ; $4760: $b5
	ld   a, b                                        ; $4761: $78
	add  l                                           ; $4762: $85
	db   $d3                                         ; $4763: $d3
	adc  d                                           ; $4764: $8a
	ld   h, a                                        ; $4765: $67
	call nc, $1f8c                                   ; $4766: $d4 $8c $1f
	jr   c, jr_0f4_4710                              ; $4769: $38 $a5

	and  a                                           ; $476b: $a7
	and  h                                           ; $476c: $a4
	or   a                                           ; $476d: $b7
	ld   l, d                                        ; $476e: $6a
	ld   l, b                                        ; $476f: $68
	sbc  c                                           ; $4770: $99
	ld   e, d                                        ; $4771: $5a
	ld   l, b                                        ; $4772: $68
	and  a                                           ; $4773: $a7
	ld   l, d                                        ; $4774: $6a
	ld   [hl], a                                     ; $4775: $77
	or   e                                           ; $4776: $b3
	push bc                                          ; $4777: $c5
	sbc  d                                           ; $4778: $9a
	ld   e, c                                        ; $4779: $59
	adc  b                                           ; $477a: $88
	adc  c                                           ; $477b: $89
	ld   e, e                                        ; $477c: $5b
	ld   e, l                                        ; $477d: $5d
	ld   c, b                                        ; $477e: $48
	pop  de                                          ; $477f: $d1
	call nc, $7a98                                   ; $4780: $d4 $98 $7a
	ld   e, b                                        ; $4783: $58
	and  l                                           ; $4784: $a5
	add  $5e                                         ; $4785: $c6 $5e
	dec  hl                                          ; $4787: $2b
	ld   l, c                                        ; $4788: $69
	ld   a, b                                        ; $4789: $78
	and  h                                           ; $478a: $a4
	jp   nz, $99c5                                   ; $478b: $c2 $c5 $99

	ld   c, [hl]                                     ; $478e: $4e
	ld   c, d                                        ; $478f: $4a
	halt                                             ; $4790: $76
	xor  d                                           ; $4791: $aa
	dec  a                                           ; $4792: $3d
	ld   l, b                                        ; $4793: $68
	and  h                                           ; $4794: $a4
	or   l                                           ; $4795: $b5
	call nc, $b7a6                                   ; $4796: $d4 $a6 $b7
	ld   a, d                                        ; $4799: $7a
	cpl                                              ; $479a: $2f
	dec  e                                           ; $479b: $1d
	ld   b, [hl]                                     ; $479c: $46
	pop  af                                          ; $479d: $f1
	ldh  a, [c]                                      ; $479e: $f2
	xor  c                                           ; $479f: $a9
	ld   c, a                                        ; $47a0: $4f
	ld   e, $66                                      ; $47a1: $1e $66
	db   $d3                                         ; $47a3: $d3
	push bc                                          ; $47a4: $c5
	xor  c                                           ; $47a5: $a9
	ld   a, b                                        ; $47a6: $78
	adc  b                                           ; $47a7: $88
	ld   a, e                                        ; $47a8: $7b
	ld   c, e                                        ; $47a9: $4b
	ld   [hl], a                                     ; $47aa: $77
	and  [hl]                                        ; $47ab: $a6
	ld   l, e                                        ; $47ac: $6b
	ld   l, c                                        ; $47ad: $69
	sub  l                                           ; $47ae: $95
	or   h                                           ; $47af: $b4
	call nc, Call_0f4_588b                           ; $47b0: $d4 $8b $58
	and  l                                           ; $47b3: $a5
	adc  h                                           ; $47b4: $8c
	ld   e, l                                        ; $47b5: $5d
	dec  e                                           ; $47b6: $1d
	ld   h, l                                        ; $47b7: $65
	pop  af                                          ; $47b8: $f1
	di                                               ; $47b9: $f3
	ld   a, h                                        ; $47ba: $7c
	ld   e, $56                                      ; $47bb: $1e $56
	call nc, Call_0f4_6ba9                           ; $47bd: $d4 $a9 $6b
	ld   l, $73                                      ; $47c0: $2e $73
	ldh  [c], a                                      ; $47c2: $e2
	cp   b                                           ; $47c3: $b8
	add  a                                           ; $47c4: $87
	adc  c                                           ; $47c5: $89
	sub  a                                           ; $47c6: $97
	ld   a, e                                        ; $47c7: $7b
	cpl                                              ; $47c8: $2f
	ld   c, b                                        ; $47c9: $48
	sub  l                                           ; $47ca: $95
	call nz, $8697                                   ; $47cb: $c4 $97 $86
	and  [hl]                                        ; $47ce: $a6
	ld   a, d                                        ; $47cf: $7a
	ld   e, h                                        ; $47d0: $5c
	ld   e, b                                        ; $47d1: $58
	jp   $2fb8                                       ; $47d2: $c3 $b8 $2f


	dec  hl                                          ; $47d5: $2b
	and  d                                           ; $47d6: $a2
	pop  af                                          ; $47d7: $f1
	db   $e4                                         ; $47d8: $e4
	sbc  h                                           ; $47d9: $9c
	rra                                              ; $47da: $1f
	ld   c, b                                        ; $47db: $48
	and  a                                           ; $47dc: $a7
	add  a                                           ; $47dd: $87
	sub  a                                           ; $47de: $97
	adc  b                                           ; $47df: $88
	add  a                                           ; $47e0: $87
	sub  [hl]                                        ; $47e1: $96
	sub  a                                           ; $47e2: $97
	adc  b                                           ; $47e3: $88
	adc  b                                           ; $47e4: $88
	ld   l, e                                        ; $47e5: $6b
	ld   e, e                                        ; $47e6: $5b
	halt                                             ; $47e7: $76
	or   [hl]                                        ; $47e8: $b6
	or   [hl]                                        ; $47e9: $b6
	adc  d                                           ; $47ea: $8a
	ld   c, e                                        ; $47eb: $4b
	add  h                                           ; $47ec: $84
	or   a                                           ; $47ed: $b7
	ld   a, d                                        ; $47ee: $7a
	ld   e, b                                        ; $47ef: $58
	adc  c                                           ; $47f0: $89
	ld   [hl], a                                     ; $47f1: $77
	sbc  c                                           ; $47f2: $99
	ld   e, e                                        ; $47f3: $5b
	sub  e                                           ; $47f4: $93
	ldh  [c], a                                      ; $47f5: $e2
	sub  $6e                                         ; $47f6: $d6 $6e
	rra                                              ; $47f8: $1f
	ld   d, [hl]                                     ; $47f9: $56
	push de                                          ; $47fa: $d5
	ld   a, e                                        ; $47fb: $7b
	ld   [hl], a                                     ; $47fc: $77
	call nz, Call_0f4_7ac6                           ; $47fd: $c4 $c6 $7a
	ld   e, e                                        ; $4800: $5b
	ld   e, e                                        ; $4801: $5b
	ld   [hl], a                                     ; $4802: $77
	sub  [hl]                                        ; $4803: $96
	and  l                                           ; $4804: $a5
	jp   $6ec7                                       ; $4805: $c3 $c7 $6e


	rra                                              ; $4808: $1f
	daa                                              ; $4809: $27
	pop  hl                                          ; $480a: $e1
	or   $96                                         ; $480b: $f6 $96
	sub  [hl]                                        ; $480d: $96
	xor  e                                           ; $480e: $ab
	rra                                              ; $480f: $1f
	ld   h, l                                        ; $4810: $65
	pop  af                                          ; $4811: $f1
	sbc  l                                           ; $4812: $9d
	ld   c, c                                        ; $4813: $49
	add  a                                           ; $4814: $87
	sbc  c                                           ; $4815: $99
	ld   l, c                                        ; $4816: $69
	sub  e                                           ; $4817: $93
	db   $f4                                         ; $4818: $f4
	ld   a, e                                        ; $4819: $7b
	cpl                                              ; $481a: $2f
	dec  sp                                          ; $481b: $3b
	ld   [hl], a                                     ; $481c: $77
	call nz, $f5e1                                   ; $481d: $c4 $e1 $f5
	ld   l, [hl]                                     ; $4820: $6e
	dec  hl                                          ; $4821: $2b
	ld   c, l                                        ; $4822: $4d
	add  hl, hl                                      ; $4823: $29
	pop  bc                                          ; $4824: $c1
	ldh  a, [c]                                      ; $4825: $f2
	adc  l                                           ; $4826: $8d
	rra                                              ; $4827: $1f
	ld   h, h                                        ; $4828: $64
	pop  af                                          ; $4829: $f1
	cp   b                                           ; $482a: $b8
	ld   e, e                                        ; $482b: $5b
	dec  a                                           ; $482c: $3d
	ld   h, a                                        ; $482d: $67
	pop  bc                                          ; $482e: $c1
	di                                               ; $482f: $f3
	sbc  l                                           ; $4830: $9d
	rra                                              ; $4831: $1f
	ld   c, c                                        ; $4832: $49
	ld   a, b                                        ; $4833: $78
	add  [hl]                                        ; $4834: $86
	or   h                                           ; $4835: $b4
	or   h                                           ; $4836: $b4
	or   a                                           ; $4837: $b7
	ld   a, d                                        ; $4838: $7a
	ld   l, c                                        ; $4839: $69
	ld   [hl], a                                     ; $483a: $77
	adc  d                                           ; $483b: $8a
	ld   [hl], a                                     ; $483c: $77
	xor  c                                           ; $483d: $a9
	ld   c, e                                        ; $483e: $4b
	add  l                                           ; $483f: $85
	xor  d                                           ; $4840: $aa
	ld   c, b                                        ; $4841: $48
	or   e                                           ; $4842: $b3
	cp   d                                           ; $4843: $ba
	ld   e, h                                        ; $4844: $5c
	add  e                                           ; $4845: $83
	call nc, $2b6f                                   ; $4846: $d4 $6f $2b
	and  e                                           ; $4849: $a3
	call nz, $5ca7                                   ; $484a: $c4 $a7 $5c
	dec  a                                           ; $484d: $3d
	ld   d, a                                        ; $484e: $57
	and  l                                           ; $484f: $a5
	db   $e4                                         ; $4850: $e4
	cp   b                                           ; $4851: $b8
	ld   e, c                                        ; $4852: $59
	and  a                                           ; $4853: $a7
	ld   c, [hl]                                     ; $4854: $4e
	dec  sp                                          ; $4855: $3b
	and  e                                           ; $4856: $a3
	and  [hl]                                        ; $4857: $a6
	sbc  c                                           ; $4858: $99
	adc  b                                           ; $4859: $88
	and  l                                           ; $485a: $a5
	and  [hl]                                        ; $485b: $a6
	ld   a, d                                        ; $485c: $7a
	sub  [hl]                                        ; $485d: $96
	ld   l, a                                        ; $485e: $6f
	rra                                              ; $485f: $1f
	ld   a, [de]                                     ; $4860: $1a
	and  c                                           ; $4861: $a1
	pop  af                                          ; $4862: $f1
	pop  af                                          ; $4863: $f1
	sbc  [hl]                                        ; $4864: $9e
	rra                                              ; $4865: $1f
	ld   e, $84                                      ; $4866: $1e $84
	or   l                                           ; $4868: $b5
	adc  e                                           ; $4869: $8b
	ld   b, a                                        ; $486a: $47
	cp   d                                           ; $486b: $ba
	ld   e, b                                        ; $486c: $58
	sub  h                                           ; $486d: $94
	push hl                                          ; $486e: $e5
	sbc  e                                           ; $486f: $9b
	ld   d, a                                        ; $4870: $57
	and  a                                           ; $4871: $a7
	ld   e, [hl]                                     ; $4872: $5e
	ld   d, l                                        ; $4873: $55
	di                                               ; $4874: $f3
	ld   a, e                                        ; $4875: $7b
	inc  l                                           ; $4876: $2c
	ld   a, d                                        ; $4877: $7a
	ld   h, [hl]                                     ; $4878: $66
	pop  de                                          ; $4879: $d1
	sub  $3f                                         ; $487a: $d6 $3f
	ld   a, [hl-]                                    ; $487c: $3a
	halt                                             ; $487d: $76
	jp   $6ac7                                       ; $487e: $c3 $c7 $6a


	ld   e, [hl]                                     ; $4881: $5e
	ld   b, [hl]                                     ; $4882: $46
	pop  hl                                          ; $4883: $e1
	rst  $10                                         ; $4884: $d7
	ccf                                              ; $4885: $3f
	dec  e                                           ; $4886: $1d
	sub  c                                           ; $4887: $91
	pop  af                                          ; $4888: $f1
	cp   b                                           ; $4889: $b8
	ld   a, $5a                                      ; $488a: $3e $5a
	ld   e, e                                        ; $488c: $5b
	and  l                                           ; $488d: $a5
	cp   c                                           ; $488e: $b9
	ld   l, b                                        ; $488f: $68
	or   d                                           ; $4890: $b2
	call nc, $1f7d                                   ; $4891: $d4 $7d $1f
	inc  e                                           ; $4894: $1c
	pop  bc                                          ; $4895: $c1
	pop  af                                          ; $4896: $f1
	xor  e                                           ; $4897: $ab
	inc  a                                           ; $4898: $3c
	ld   l, b                                        ; $4899: $68
	sbc  b                                           ; $489a: $98
	sub  e                                           ; $489b: $93
	rst  $20                                         ; $489c: $e7
	cpl                                              ; $489d: $2f
	ld   a, [de]                                     ; $489e: $1a
	jp   nc, $97d5                                   ; $489f: $d2 $d5 $97

	xor  c                                           ; $48a2: $a9
	ld   a, [hl-]                                    ; $48a3: $3a
	sub  h                                           ; $48a4: $94
	ret                                              ; $48a5: $c9


	rra                                              ; $48a6: $1f
	ld   b, l                                        ; $48a7: $45
	ldh  [c], a                                      ; $48a8: $e2
	ret  z                                           ; $48a9: $c8

	ld   e, d                                        ; $48aa: $5a
	ld   l, b                                        ; $48ab: $68
	call nz, Call_0f4_499c                           ; $48ac: $c4 $9c $49
	ld   c, h                                        ; $48af: $4c
	sub  h                                           ; $48b0: $94
	push de                                          ; $48b1: $d5
	adc  d                                           ; $48b2: $8a
	ld   [hl], h                                     ; $48b3: $74
	push de                                          ; $48b4: $d5
	ld   a, e                                        ; $48b5: $7b
	inc  l                                           ; $48b6: $2c
	ld   c, h                                        ; $48b7: $4c
	ld   b, a                                        ; $48b8: $47
	db   $d3                                         ; $48b9: $d3
	or   a                                           ; $48ba: $b7
	add  l                                           ; $48bb: $85
	push de                                          ; $48bc: $d5
	adc  e                                           ; $48bd: $8b
	ld   e, c                                        ; $48be: $59
	adc  c                                           ; $48bf: $89
	ld   a, c                                        ; $48c0: $79
	ld   e, [hl]                                     ; $48c1: $5e
	add  hl, sp                                      ; $48c2: $39
	and  h                                           ; $48c3: $a4
	call nz, $bad1                                   ; $48c4: $c4 $d1 $ba
	ccf                                              ; $48c7: $3f
	dec  de                                          ; $48c8: $1b
	ld   [hl], a                                     ; $48c9: $77
	or   h                                           ; $48ca: $b4
	push bc                                          ; $48cb: $c5
	xor  c                                           ; $48cc: $a9
	ld   c, h                                        ; $48cd: $4c
	ld   a, c                                        ; $48ce: $79
	ld   h, [hl]                                     ; $48cf: $66
	db   $e4                                         ; $48d0: $e4
	push bc                                          ; $48d1: $c5
	ld   e, [hl]                                     ; $48d2: $5e
	ld   e, c                                        ; $48d3: $59
	cp   b                                           ; $48d4: $b8
	ld   e, h                                        ; $48d5: $5c
	ld   e, d                                        ; $48d6: $5a
	ld   a, b                                        ; $48d7: $78
	sub  e                                           ; $48d8: $93
	pop  af                                          ; $48d9: $f1
	cp   c                                           ; $48da: $b9
	ld   a, $3e                                      ; $48db: $3e $3e
	ld   h, d                                        ; $48dd: $62
	db   $f4                                         ; $48de: $f4
	ld   l, h                                        ; $48df: $6c
	rra                                              ; $48e0: $1f
	sub  c                                           ; $48e1: $91
	db   $e4                                         ; $48e2: $e4
	ret  c                                           ; $48e3: $d8

	ld   e, $4c                                      ; $48e4: $1e $4c
	sub  c                                           ; $48e6: $91
	rst  ToBoot                                         ; $48e7: $c7
	ld   a, e                                        ; $48e8: $7b
	ld   d, h                                        ; $48e9: $54
	or   $3e                                         ; $48ea: $f6 $3e
	ld   c, b                                        ; $48ec: $48
	or   h                                           ; $48ed: $b4
	rst  $10                                         ; $48ee: $d7
	ld   e, b                                        ; $48ef: $58
	sbc  l                                           ; $48f0: $9d
	ld   a, [de]                                     ; $48f1: $1a
	and  l                                           ; $48f2: $a5
	pop  af                                          ; $48f3: $f1
	jp   z, $1e7b                                    ; $48f4: $ca $7b $1e

	ld   [hl], a                                     ; $48f7: $77
	add  h                                           ; $48f8: $84
	db   $f4                                         ; $48f9: $f4
	cpl                                              ; $48fa: $2f
	ld   a, [hl-]                                    ; $48fb: $3a
	or   c                                           ; $48fc: $b1
	rst  $30                                         ; $48fd: $f7
	ld   a, d                                        ; $48fe: $7a
	ld   c, e                                        ; $48ff: $4b
	sub  a                                           ; $4900: $97
	adc  c                                           ; $4901: $89
	ld   c, c                                        ; $4902: $49
	xor  b                                           ; $4903: $a8
	ld   d, [hl]                                     ; $4904: $56
	push bc                                          ; $4905: $c5
	ld   a, d                                        ; $4906: $7a
	ld   h, a                                        ; $4907: $67
	call nz, $3a8a                                   ; $4908: $c4 $8a $3a
	and  l                                           ; $490b: $a5
	ld   l, h                                        ; $490c: $6c
	halt                                             ; $490d: $76
	ld   l, h                                        ; $490e: $6c
	sub  c                                           ; $490f: $91
	call z, Call_0f4_533b                            ; $4910: $cc $3b $53
	db   $f4                                         ; $4913: $f4
	dec  e                                           ; $4914: $1d
	or   [hl]                                        ; $4915: $b6
	ld   l, c                                        ; $4916: $69
	ld   e, c                                        ; $4917: $59
	sub  [hl]                                        ; $4918: $96
	ld   l, c                                        ; $4919: $69
	ld   h, [hl]                                     ; $491a: $66
	ldh  a, [c]                                      ; $491b: $f2
	ld   c, l                                        ; $491c: $4d
	ld   e, c                                        ; $491d: $59
	ld   [hl], h                                     ; $491e: $74
	reti                                             ; $491f: $d9


	add  hl, sp                                      ; $4920: $39
	ld   a, h                                        ; $4921: $7c
	ld   h, e                                        ; $4922: $63
	push hl                                          ; $4923: $e5
	and  a                                           ; $4924: $a7
	ld   c, [hl]                                     ; $4925: $4e
	ld   h, [hl]                                     ; $4926: $66
	ld   l, e                                        ; $4927: $6b
	halt                                             ; $4928: $76
	or   h                                           ; $4929: $b4
	adc  d                                           ; $492a: $8a
	add  [hl]                                        ; $492b: $86
	sbc  c                                           ; $492c: $99
	ld   l, b                                        ; $492d: $68
	ld   a, d                                        ; $492e: $7a
	ld   [hl], a                                     ; $492f: $77
	sbc  b                                           ; $4930: $98
	sub  l                                           ; $4931: $95
	sbc  h                                           ; $4932: $9c
	ld   l, b                                        ; $4933: $68
	ld   a, c                                        ; $4934: $79
	sub  l                                           ; $4935: $95
	xor  b                                           ; $4936: $a8
	ld   a, c                                        ; $4937: $79
	adc  b                                           ; $4938: $88
	sbc  d                                           ; $4939: $9a
	ld   a, c                                        ; $493a: $79
	and  a                                           ; $493b: $a7
	adc  d                                           ; $493c: $8a
	halt                                             ; $493d: $76
	xor  b                                           ; $493e: $a8
	ld   a, b                                        ; $493f: $78
	sbc  b                                           ; $4940: $98
	sub  a                                           ; $4941: $97
	sbc  e                                           ; $4942: $9b
	sub  [hl]                                        ; $4943: $96
	sbc  d                                           ; $4944: $9a
	ld   [hl], a                                     ; $4945: $77
	sbc  c                                           ; $4946: $99
	ld   a, c                                        ; $4947: $79
	sbc  c                                           ; $4948: $99
	adc  b                                           ; $4949: $88
	sbc  c                                           ; $494a: $99
	ld   a, b                                        ; $494b: $78
	xor  b                                           ; $494c: $a8
	ld   a, c                                        ; $494d: $79
	sbc  b                                           ; $494e: $98
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	sbc  b                                           ; $4951: $98
	sbc  b                                           ; $4952: $98
	ld   a, c                                        ; $4953: $79
	sub  a                                           ; $4954: $97
	adc  c                                           ; $4955: $89
	sbc  b                                           ; $4956: $98
	add  a                                           ; $4957: $87
	sbc  c                                           ; $4958: $99
	ld   a, c                                        ; $4959: $79
	sub  a                                           ; $495a: $97
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  c                                           ; $495e: $89
	adc  c                                           ; $495f: $89
	adc  b                                           ; $4960: $88
	sbc  c                                           ; $4961: $99
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	sbc  b                                           ; $4964: $98
	adc  b                                           ; $4965: $88
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  c                                           ; $496c: $89
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	add  a                                           ; $4974: $87
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	adc  b                                           ; $4979: $88
	sbc  b                                           ; $497a: $98
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	adc  b                                           ; $497d: $88
	adc  b                                           ; $497e: $88
	adc  b                                           ; $497f: $88
	adc  b                                           ; $4980: $88
	adc  b                                           ; $4981: $88
	adc  b                                           ; $4982: $88
	adc  b                                           ; $4983: $88
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	adc  b                                           ; $4986: $88
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
	adc  b                                           ; $498b: $88
	adc  b                                           ; $498c: $88
	adc  b                                           ; $498d: $88
	adc  b                                           ; $498e: $88
	adc  b                                           ; $498f: $88
	adc  b                                           ; $4990: $88
	adc  b                                           ; $4991: $88
	adc  b                                           ; $4992: $88
	adc  b                                           ; $4993: $88
	adc  b                                           ; $4994: $88
	adc  b                                           ; $4995: $88
	adc  b                                           ; $4996: $88
	adc  b                                           ; $4997: $88
	adc  b                                           ; $4998: $88
	adc  b                                           ; $4999: $88
	adc  b                                           ; $499a: $88
	adc  b                                           ; $499b: $88

Call_0f4_499c:
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	adc  b                                           ; $499f: $88
	adc  b                                           ; $49a0: $88
	adc  b                                           ; $49a1: $88
	adc  b                                           ; $49a2: $88
	adc  b                                           ; $49a3: $88
	adc  b                                           ; $49a4: $88
	adc  b                                           ; $49a5: $88
	adc  b                                           ; $49a6: $88
	adc  b                                           ; $49a7: $88
	adc  b                                           ; $49a8: $88
	adc  b                                           ; $49a9: $88
	adc  b                                           ; $49aa: $88
	adc  b                                           ; $49ab: $88
	adc  b                                           ; $49ac: $88
	adc  b                                           ; $49ad: $88
	adc  b                                           ; $49ae: $88
	adc  b                                           ; $49af: $88
	adc  b                                           ; $49b0: $88
	adc  b                                           ; $49b1: $88
	adc  b                                           ; $49b2: $88
	adc  b                                           ; $49b3: $88
	adc  b                                           ; $49b4: $88
	adc  b                                           ; $49b5: $88
	adc  b                                           ; $49b6: $88
	adc  b                                           ; $49b7: $88
	adc  b                                           ; $49b8: $88
	adc  b                                           ; $49b9: $88
	adc  b                                           ; $49ba: $88
	adc  b                                           ; $49bb: $88
	adc  b                                           ; $49bc: $88
	adc  b                                           ; $49bd: $88
	adc  b                                           ; $49be: $88
	adc  b                                           ; $49bf: $88
	adc  b                                           ; $49c0: $88
	adc  b                                           ; $49c1: $88
	adc  b                                           ; $49c2: $88
	adc  b                                           ; $49c3: $88
	adc  b                                           ; $49c4: $88
	adc  b                                           ; $49c5: $88
	adc  b                                           ; $49c6: $88
	adc  b                                           ; $49c7: $88
	adc  b                                           ; $49c8: $88
	adc  b                                           ; $49c9: $88
	adc  b                                           ; $49ca: $88
	adc  b                                           ; $49cb: $88
	adc  b                                           ; $49cc: $88
	adc  b                                           ; $49cd: $88
	adc  b                                           ; $49ce: $88
	adc  b                                           ; $49cf: $88
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	adc  b                                           ; $49d3: $88
	adc  b                                           ; $49d4: $88
	adc  b                                           ; $49d5: $88
	adc  b                                           ; $49d6: $88
	adc  b                                           ; $49d7: $88
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	adc  b                                           ; $49da: $88
	adc  b                                           ; $49db: $88
	adc  b                                           ; $49dc: $88
	adc  b                                           ; $49dd: $88
	adc  b                                           ; $49de: $88
	adc  b                                           ; $49df: $88
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	adc  b                                           ; $49e2: $88
	adc  b                                           ; $49e3: $88
	adc  b                                           ; $49e4: $88
	adc  b                                           ; $49e5: $88
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	adc  b                                           ; $49e8: $88
	adc  b                                           ; $49e9: $88
	adc  b                                           ; $49ea: $88
	adc  b                                           ; $49eb: $88
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	adc  b                                           ; $49ee: $88
	adc  b                                           ; $49ef: $88
	adc  b                                           ; $49f0: $88
	adc  b                                           ; $49f1: $88
	adc  b                                           ; $49f2: $88
	adc  b                                           ; $49f3: $88
	adc  b                                           ; $49f4: $88
	adc  b                                           ; $49f5: $88
	adc  b                                           ; $49f6: $88
	adc  b                                           ; $49f7: $88
	adc  b                                           ; $49f8: $88
	adc  b                                           ; $49f9: $88
	adc  b                                           ; $49fa: $88
	adc  b                                           ; $49fb: $88
	adc  b                                           ; $49fc: $88
	adc  b                                           ; $49fd: $88
	adc  b                                           ; $49fe: $88
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	adc  b                                           ; $4a01: $88
	adc  b                                           ; $4a02: $88
	adc  b                                           ; $4a03: $88
	adc  b                                           ; $4a04: $88
	adc  b                                           ; $4a05: $88
	adc  b                                           ; $4a06: $88
	adc  b                                           ; $4a07: $88
	adc  b                                           ; $4a08: $88
	adc  b                                           ; $4a09: $88
	adc  b                                           ; $4a0a: $88
	adc  b                                           ; $4a0b: $88
	adc  b                                           ; $4a0c: $88
	adc  b                                           ; $4a0d: $88
	adc  b                                           ; $4a0e: $88
	adc  b                                           ; $4a0f: $88
	adc  b                                           ; $4a10: $88
	adc  b                                           ; $4a11: $88
	adc  b                                           ; $4a12: $88
	adc  b                                           ; $4a13: $88
	adc  b                                           ; $4a14: $88
	adc  b                                           ; $4a15: $88
	adc  b                                           ; $4a16: $88
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  b                                           ; $4a19: $88
	adc  b                                           ; $4a1a: $88
	adc  b                                           ; $4a1b: $88
	adc  b                                           ; $4a1c: $88
	adc  b                                           ; $4a1d: $88
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	adc  b                                           ; $4a20: $88
	adc  b                                           ; $4a21: $88
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	adc  b                                           ; $4a24: $88
	adc  b                                           ; $4a25: $88
	adc  b                                           ; $4a26: $88
	adc  b                                           ; $4a27: $88
	adc  b                                           ; $4a28: $88
	adc  b                                           ; $4a29: $88
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	adc  b                                           ; $4a2e: $88
	adc  b                                           ; $4a2f: $88
	adc  b                                           ; $4a30: $88
	adc  b                                           ; $4a31: $88
	adc  b                                           ; $4a32: $88
	adc  b                                           ; $4a33: $88
	adc  b                                           ; $4a34: $88
	adc  b                                           ; $4a35: $88
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	adc  b                                           ; $4a38: $88
	adc  b                                           ; $4a39: $88
	adc  b                                           ; $4a3a: $88
	adc  b                                           ; $4a3b: $88
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	adc  b                                           ; $4a3e: $88
	adc  b                                           ; $4a3f: $88
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	adc  b                                           ; $4a47: $88
	adc  b                                           ; $4a48: $88
	adc  b                                           ; $4a49: $88
	adc  b                                           ; $4a4a: $88
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	adc  b                                           ; $4a4e: $88
	adc  b                                           ; $4a4f: $88
	adc  b                                           ; $4a50: $88
	adc  b                                           ; $4a51: $88
	adc  b                                           ; $4a52: $88
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	adc  b                                           ; $4a57: $88
	adc  b                                           ; $4a58: $88
	adc  b                                           ; $4a59: $88
	adc  b                                           ; $4a5a: $88
	adc  b                                           ; $4a5b: $88
	adc  b                                           ; $4a5c: $88
	adc  b                                           ; $4a5d: $88
	adc  b                                           ; $4a5e: $88
	adc  b                                           ; $4a5f: $88
	adc  b                                           ; $4a60: $88
	adc  b                                           ; $4a61: $88
	adc  b                                           ; $4a62: $88
	adc  b                                           ; $4a63: $88
	adc  b                                           ; $4a64: $88
	adc  b                                           ; $4a65: $88
	adc  b                                           ; $4a66: $88
	adc  b                                           ; $4a67: $88
	adc  b                                           ; $4a68: $88
	adc  b                                           ; $4a69: $88
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	adc  b                                           ; $4a6c: $88
	adc  b                                           ; $4a6d: $88
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	adc  b                                           ; $4a70: $88
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	adc  b                                           ; $4a74: $88
	adc  b                                           ; $4a75: $88
	adc  b                                           ; $4a76: $88
	adc  b                                           ; $4a77: $88
	adc  b                                           ; $4a78: $88
	adc  b                                           ; $4a79: $88
	adc  b                                           ; $4a7a: $88
	adc  b                                           ; $4a7b: $88
	adc  b                                           ; $4a7c: $88
	adc  b                                           ; $4a7d: $88
	adc  b                                           ; $4a7e: $88
	adc  b                                           ; $4a7f: $88
	adc  b                                           ; $4a80: $88
	adc  b                                           ; $4a81: $88
	adc  b                                           ; $4a82: $88
	adc  b                                           ; $4a83: $88
	adc  b                                           ; $4a84: $88
	adc  b                                           ; $4a85: $88
	adc  b                                           ; $4a86: $88
	adc  b                                           ; $4a87: $88
	adc  b                                           ; $4a88: $88
	adc  b                                           ; $4a89: $88
	adc  b                                           ; $4a8a: $88
	adc  b                                           ; $4a8b: $88
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	adc  b                                           ; $4a91: $88
	adc  b                                           ; $4a92: $88
	adc  b                                           ; $4a93: $88
	adc  b                                           ; $4a94: $88
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  b                                           ; $4a98: $88
	adc  b                                           ; $4a99: $88
	adc  b                                           ; $4a9a: $88
	adc  b                                           ; $4a9b: $88
	adc  b                                           ; $4a9c: $88
	adc  b                                           ; $4a9d: $88
	adc  b                                           ; $4a9e: $88
	adc  b                                           ; $4a9f: $88
	adc  b                                           ; $4aa0: $88
	adc  b                                           ; $4aa1: $88
	adc  b                                           ; $4aa2: $88
	adc  b                                           ; $4aa3: $88
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	adc  b                                           ; $4aa6: $88
	adc  b                                           ; $4aa7: $88
	adc  b                                           ; $4aa8: $88
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	adc  b                                           ; $4aad: $88
	adc  b                                           ; $4aae: $88
	adc  b                                           ; $4aaf: $88
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  b                                           ; $4ab7: $88
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	adc  b                                           ; $4aba: $88
	adc  b                                           ; $4abb: $88
	adc  b                                           ; $4abc: $88
	adc  b                                           ; $4abd: $88
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	adc  b                                           ; $4ac0: $88
	adc  b                                           ; $4ac1: $88
	adc  b                                           ; $4ac2: $88
	adc  b                                           ; $4ac3: $88
	adc  b                                           ; $4ac4: $88
	adc  b                                           ; $4ac5: $88
	adc  b                                           ; $4ac6: $88
	adc  b                                           ; $4ac7: $88
	adc  b                                           ; $4ac8: $88
	adc  b                                           ; $4ac9: $88
	adc  b                                           ; $4aca: $88
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	adc  b                                           ; $4ad0: $88
	adc  b                                           ; $4ad1: $88
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
	adc  b                                           ; $4af8: $88
	adc  b                                           ; $4af9: $88
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  b                                           ; $4b02: $88
	adc  b                                           ; $4b03: $88
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	adc  b                                           ; $4b07: $88
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	adc  b                                           ; $4b0b: $88
	adc  b                                           ; $4b0c: $88
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	adc  b                                           ; $4b15: $88
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	adc  b                                           ; $4b25: $88
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	adc  b                                           ; $4b3b: $88
	adc  b                                           ; $4b3c: $88
	adc  b                                           ; $4b3d: $88
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	adc  b                                           ; $4b46: $88
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	adc  b                                           ; $4b4a: $88
	adc  b                                           ; $4b4b: $88
	adc  b                                           ; $4b4c: $88
	adc  b                                           ; $4b4d: $88
	adc  b                                           ; $4b4e: $88
	adc  b                                           ; $4b4f: $88
	adc  b                                           ; $4b50: $88
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	adc  b                                           ; $4b53: $88
	adc  b                                           ; $4b54: $88
	adc  b                                           ; $4b55: $88
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	adc  b                                           ; $4b5a: $88
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	adc  b                                           ; $4b5d: $88
	adc  b                                           ; $4b5e: $88
	adc  b                                           ; $4b5f: $88
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	adc  b                                           ; $4b68: $88
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	adc  b                                           ; $4b6b: $88
	adc  b                                           ; $4b6c: $88
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  b                                           ; $4b6f: $88
	adc  b                                           ; $4b70: $88
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	adc  b                                           ; $4b73: $88
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88
	adc  b                                           ; $4b7a: $88
	adc  b                                           ; $4b7b: $88
	adc  b                                           ; $4b7c: $88
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	adc  b                                           ; $4b86: $88
	adc  b                                           ; $4b87: $88
	adc  b                                           ; $4b88: $88
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  b                                           ; $4b91: $88
	adc  b                                           ; $4b92: $88
	adc  b                                           ; $4b93: $88
	adc  b                                           ; $4b94: $88
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	add  a                                           ; $4b9a: $87
	ld   a, b                                        ; $4b9b: $78
	adc  b                                           ; $4b9c: $88
	adc  b                                           ; $4b9d: $88
	adc  b                                           ; $4b9e: $88
	sbc  c                                           ; $4b9f: $99
	sbc  c                                           ; $4ba0: $99
	sbc  c                                           ; $4ba1: $99
	sbc  b                                           ; $4ba2: $98
	adc  b                                           ; $4ba3: $88
	adc  b                                           ; $4ba4: $88
	ld   [hl], a                                     ; $4ba5: $77
	ld   [hl], a                                     ; $4ba6: $77
	ld   [hl], a                                     ; $4ba7: $77
	ld   [hl], a                                     ; $4ba8: $77
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  c                                           ; $4bac: $89
	adc  c                                           ; $4bad: $89
	sbc  c                                           ; $4bae: $99
	sbc  b                                           ; $4baf: $98
	adc  b                                           ; $4bb0: $88
	adc  c                                           ; $4bb1: $89
	sbc  b                                           ; $4bb2: $98
	sbc  c                                           ; $4bb3: $99
	sbc  b                                           ; $4bb4: $98
	adc  c                                           ; $4bb5: $89
	adc  b                                           ; $4bb6: $88
	add  a                                           ; $4bb7: $87
	halt                                             ; $4bb8: $76
	ld   d, [hl]                                     ; $4bb9: $56
	ld   h, a                                        ; $4bba: $67
	add  a                                           ; $4bbb: $87
	adc  b                                           ; $4bbc: $88
	sbc  d                                           ; $4bbd: $9a
	xor  d                                           ; $4bbe: $aa
	xor  c                                           ; $4bbf: $a9
	adc  c                                           ; $4bc0: $89
	sbc  b                                           ; $4bc1: $98
	sbc  c                                           ; $4bc2: $99
	adc  c                                           ; $4bc3: $89
	adc  c                                           ; $4bc4: $89
	xor  c                                           ; $4bc5: $a9
	adc  c                                           ; $4bc6: $89
	sub  a                                           ; $4bc7: $97
	ld   [hl], h                                     ; $4bc8: $74
	inc  sp                                          ; $4bc9: $33
	inc  h                                           ; $4bca: $24
	ld   h, [hl]                                     ; $4bcb: $66
	ld   a, c                                        ; $4bcc: $79
	adc  d                                           ; $4bcd: $8a
	db   $dd                                         ; $4bce: $dd
	res  5, c                                        ; $4bcf: $cb $a9
	add  a                                           ; $4bd1: $87
	ld   [hl], a                                     ; $4bd2: $77
	ld   a, b                                        ; $4bd3: $78
	sbc  d                                           ; $4bd4: $9a
	xor  d                                           ; $4bd5: $aa
	cp   e                                           ; $4bd6: $bb
	xor  c                                           ; $4bd7: $a9
	add  [hl]                                        ; $4bd8: $86
	ld   sp, $1411                                   ; $4bd9: $31 $11 $14
	ld   h, a                                        ; $4bdc: $67
	cp   d                                           ; $4bdd: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bde: $cf
	rst  $38                                         ; $4bdf: $ff
	ld   [$5677], a                                  ; $4be0: $ea $77 $56
	ld   [hl], l                                     ; $4be3: $75
	ld   d, a                                        ; $4be4: $57
	adc  h                                           ; $4be5: $8c
	cp   $db                                         ; $4be6: $fe $db
	adc  b                                           ; $4be8: $88
	ld   h, c                                        ; $4be9: $61
	ld   de, $5711                                   ; $4bea: $11 $11 $57
	cp   a                                           ; $4bed: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bee: $cf
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	ld   h, h                                        ; $4bf1: $64
	ld   d, l                                        ; $4bf2: $55
	halt                                             ; $4bf3: $76
	ld   b, d                                        ; $4bf4: $42
	ld   a, l                                        ; $4bf5: $7d
	rst  $38                                         ; $4bf6: $ff
	ei                                               ; $4bf7: $fb
	sub  a                                           ; $4bf8: $97
	ld   d, d                                        ; $4bf9: $52
	ld   de, $1b11                                   ; $4bfa: $11 $11 $1b
	rst  $28                                         ; $4bfd: $ef
	rst  $38                                         ; $4bfe: $ff
	rst  $38                                         ; $4bff: $ff
	rst  $38                                         ; $4c00: $ff
	ld   d, c                                        ; $4c01: $51
	ld   [de], a                                     ; $4c02: $12
	ld   [hl], a                                     ; $4c03: $77
	ld   h, e                                        ; $4c04: $63
	ld   e, a                                        ; $4c05: $5f
	rst  $38                                         ; $4c06: $ff
	db   $fc                                         ; $4c07: $fc
	ld   d, a                                        ; $4c08: $57
	ld   h, h                                        ; $4c09: $64
	ld   de, $1a11                                   ; $4c0a: $11 $11 $1a
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	sub  c                                           ; $4c11: $91
	ld   de, $892a                                   ; $4c12: $11 $2a $89
	ld   e, [hl]                                     ; $4c15: $5e
	rst  $38                                         ; $4c16: $ff
	rst  $38                                         ; $4c17: $ff
	ld   [hl], e                                     ; $4c18: $73
	ld   a, b                                        ; $4c19: $78
	add  c                                           ; $4c1a: $81
	ld   de, $af11                                   ; $4c1b: $11 $11 $af
	rst  $38                                         ; $4c1e: $ff
	rst  $38                                         ; $4c1f: $ff
	rst  $38                                         ; $4c20: $ff
	rst  $30                                         ; $4c21: $f7
	ld   de, $ee11                                   ; $4c22: $11 $11 $ee
	db   $fd                                         ; $4c25: $fd
	rst  $28                                         ; $4c26: $ef
	rst  $38                                         ; $4c27: $ff
	ld   sp, hl                                      ; $4c28: $f9
	rla                                              ; $4c29: $17
	xor  [hl]                                        ; $4c2a: $ae
	ld   b, c                                        ; $4c2b: $41
	ld   de, rAUD1LEN                                   ; $4c2c: $11 $11 $ff
	rst  $38                                         ; $4c2f: $ff
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	pop  de                                          ; $4c32: $d1
	ld   de, rAUD1HIGH                                   ; $4c33: $11 $14 $ff
	rst  $38                                         ; $4c36: $ff
	rst  $38                                         ; $4c37: $ff
	rst  $38                                         ; $4c38: $ff
	di                                               ; $4c39: $f3
	ld   a, [de]                                     ; $4c3a: $1a
	sbc  $11                                         ; $4c3b: $de $11
	ld   de, rAUD1HIGH                                   ; $4c3d: $11 $14 $ff
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	rst  $38                                         ; $4c42: $ff
	ld   de, $1a11                                   ; $4c43: $11 $11 $1a
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	rst  $38                                         ; $4c48: $ff
	rst  $38                                         ; $4c49: $ff
	sub  [hl]                                        ; $4c4a: $96
	ld   c, d                                        ; $4c4b: $4a
	db   $fc                                         ; $4c4c: $fc
	ld   de, $1511                                   ; $4c4d: $11 $11 $15
	rst  $38                                         ; $4c50: $ff
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	cp   $11                                         ; $4c53: $fe $11
	ld   de, $ff1a                                   ; $4c55: $11 $1a $ff
	rst  $38                                         ; $4c58: $ff
	rst  $38                                         ; $4c59: $ff
	cp   $87                                         ; $4c5a: $fe $87
	ld   a, [hl]                                     ; $4c5c: $7e
	db   $fc                                         ; $4c5d: $fc
	ld   de, $1111                                   ; $4c5e: $11 $11 $11
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	rst  $38                                         ; $4c63: $ff
	ei                                               ; $4c64: $fb
	ld   de, $1811                                   ; $4c65: $11 $11 $18
	rst  $38                                         ; $4c68: $ff
	rst  $38                                         ; $4c69: $ff
	db   $fd                                         ; $4c6a: $fd
	add  [hl]                                        ; $4c6b: $86
	sbc  e                                           ; $4c6c: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c6d: $cf
	ei                                               ; $4c6e: $fb
	ld   de, $1111                                   ; $4c6f: $11 $11 $11
	rst  $38                                         ; $4c72: $ff
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	ld   sp, hl                                      ; $4c75: $f9
	ld   de, $1311                                   ; $4c76: $11 $11 $13
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	ld   a, [$6d12]                                  ; $4c7b: $fa $12 $6d
	rst  $38                                         ; $4c7e: $ff
	db   $fc                                         ; $4c7f: $fc
	ld   de, $1111                                   ; $4c80: $11 $11 $11
	ld   l, a                                        ; $4c83: $6f
	rst  $38                                         ; $4c84: $ff
	rst  $38                                         ; $4c85: $ff
	rst  $20                                         ; $4c86: $e7
	ld   de, $1111                                   ; $4c87: $11 $11 $11
	rst  $38                                         ; $4c8a: $ff
	rst  $38                                         ; $4c8b: $ff
	rst  $38                                         ; $4c8c: $ff
	ld   de, $ff19                                   ; $4c8d: $11 $19 $ff
	rst  $38                                         ; $4c90: $ff
	ld   d, c                                        ; $4c91: $51
	ld   de, $1911                                   ; $4c92: $11 $11 $19
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	ld   a, [$1111]                                  ; $4c97: $fa $11 $11
	ld   de, $ff2f                                   ; $4c9a: $11 $2f $ff
	rst  $38                                         ; $4c9d: $ff
	ld   [hl], c                                     ; $4c9e: $71
	ld   de, $ffff                                   ; $4c9f: $11 $ff $ff
	pop  bc                                          ; $4ca2: $c1
	ld   de, $1111                                   ; $4ca3: $11 $11 $11
	ccf                                              ; $4ca6: $3f
	rst  $38                                         ; $4ca7: $ff
	rst  $38                                         ; $4ca8: $ff
	ld   d, c                                        ; $4ca9: $51
	ld   de, $1311                                   ; $4caa: $11 $11 $13
	rst  $38                                         ; $4cad: $ff
	rst  $38                                         ; $4cae: $ff
	db   $f4                                         ; $4caf: $f4
	ld   de, $ff1f                                   ; $4cb0: $11 $1f $ff
	ld   a, [$1111]                                  ; $4cb3: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $4cb6: $11 $11 $ff
	rst  $38                                         ; $4cb9: $ff
	ld   hl, sp+$11                                  ; $4cba: $f8 $11
	ld   de, $1f11                                   ; $4cbc: $11 $11 $1f
	rst  $38                                         ; $4cbf: $ff
	rst  $38                                         ; $4cc0: $ff
	sub  c                                           ; $4cc1: $91
	ld   de, $ffef                                   ; $4cc2: $11 $ef $ff
	pop  de                                          ; $4cc5: $d1
	ld   de, $1111                                   ; $4cc6: $11 $11 $11
	dec  d                                           ; $4cc9: $15
	rst  $38                                         ; $4cca: $ff
	rst  $38                                         ; $4ccb: $ff
	pop  af                                          ; $4ccc: $f1
	ld   de, $1111                                   ; $4ccd: $11 $11 $11
	adc  a                                           ; $4cd0: $8f
	rst  $38                                         ; $4cd1: $ff
	rst  $38                                         ; $4cd2: $ff
	ld   de, rAUD1HIGH                                   ; $4cd3: $11 $14 $ff
	rst  $38                                         ; $4cd6: $ff
	ld   d, c                                        ; $4cd7: $51
	ld   de, $1111                                   ; $4cd8: $11 $11 $11
	ld   a, [de]                                     ; $4cdb: $1a
	rst  $38                                         ; $4cdc: $ff
	rst  $38                                         ; $4cdd: $ff
	pop  bc                                          ; $4cde: $c1
	ld   de, $1111                                   ; $4cdf: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ce2: $cf
	rst  $38                                         ; $4ce3: $ff
	cp   $11                                         ; $4ce4: $fe $11
	ld   a, [de]                                     ; $4ce6: $1a
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	ld   d, c                                        ; $4ce9: $51
	ld   de, $1111                                   ; $4cea: $11 $11 $11
	inc  de                                          ; $4ced: $13
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	pop  af                                          ; $4cf0: $f1
	ld   de, $1211                                   ; $4cf1: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf4: $cf
	rst  $38                                         ; $4cf5: $ff
	rst  $38                                         ; $4cf6: $ff
	ld   de, $ff16                                   ; $4cf7: $11 $16 $ff
	rst  $38                                         ; $4cfa: $ff
	ld   d, c                                        ; $4cfb: $51
	ld   de, $1111                                   ; $4cfc: $11 $11 $11
	ld   de, $ffff                                   ; $4cff: $11 $ff $ff
	pop  af                                          ; $4d02: $f1
	ld   de, $1111                                   ; $4d03: $11 $11 $11
	cp   a                                           ; $4d06: $bf
	rst  $38                                         ; $4d07: $ff
	rst  $38                                         ; $4d08: $ff
	ld   de, $ff15                                   ; $4d09: $11 $15 $ff
	rst  $38                                         ; $4d0c: $ff
	add  c                                           ; $4d0d: $81
	ld   de, $1111                                   ; $4d0e: $11 $11 $11
	ld   de, $ffff                                   ; $4d11: $11 $ff $ff
	di                                               ; $4d14: $f3
	ld   de, $1111                                   ; $4d15: $11 $11 $11
	sbc  a                                           ; $4d18: $9f
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	ld   sp, rAUD1LEN                                   ; $4d1b: $31 $11 $ff
	rst  $38                                         ; $4d1e: $ff
	push hl                                          ; $4d1f: $e5
	ld   de, $1111                                   ; $4d20: $11 $11 $11
	ld   de, $ff1f                                   ; $4d23: $11 $1f $ff
	rst  $38                                         ; $4d26: $ff
	ld   de, $1111                                   ; $4d27: $11 $11 $11
	ld   e, h                                        ; $4d2a: $5c
	rst  $38                                         ; $4d2b: $ff
	rst  $38                                         ; $4d2c: $ff
	pop  af                                          ; $4d2d: $f1
	ld   de, $ff2f                                   ; $4d2e: $11 $2f $ff
	ld   sp, hl                                      ; $4d31: $f9
	ld   de, $1111                                   ; $4d32: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4d35: $11 $11 $ff
	rst  $38                                         ; $4d38: $ff
	pop  af                                          ; $4d39: $f1
	ld   de, $1711                                   ; $4d3a: $11 $11 $17
	rst  JumpTable                                         ; $4d3d: $df
	rst  $38                                         ; $4d3e: $ff
	rst  $38                                         ; $4d3f: $ff
	ld   de, rAUD1LOW                                   ; $4d40: $11 $13 $ff
	rst  $38                                         ; $4d43: $ff
	or   d                                           ; $4d44: $b2
	ld   de, $1111                                   ; $4d45: $11 $11 $11
	ld   de, $ff1f                                   ; $4d48: $11 $1f $ff
	rst  $38                                         ; $4d4b: $ff
	ld   de, $1111                                   ; $4d4c: $11 $11 $11
	ld   a, h                                        ; $4d4f: $7c
	rst  $38                                         ; $4d50: $ff
	rst  $38                                         ; $4d51: $ff
	pop  af                                          ; $4d52: $f1
	ld   de, $ff4f                                   ; $4d53: $11 $4f $ff
	ld   hl, sp+$11                                  ; $4d56: $f8 $11
	ld   de, $1111                                   ; $4d58: $11 $11 $11
	ld   de, $ffff                                   ; $4d5b: $11 $ff $ff
	pop  af                                          ; $4d5e: $f1
	ld   de, $1511                                   ; $4d5f: $11 $11 $15
	sbc  a                                           ; $4d62: $9f
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	ld   b, c                                        ; $4d65: $41
	ld   de, $ffff                                   ; $4d66: $11 $ff $ff
	push af                                          ; $4d69: $f5
	ld   sp, $1111                                   ; $4d6a: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $4d6d: $11 $11 $ff
	rst  $38                                         ; $4d70: $ff
	pop  af                                          ; $4d71: $f1
	ld   de, $2211                                   ; $4d72: $11 $11 $22
	ld   e, a                                        ; $4d75: $5f
	rst  $38                                         ; $4d76: $ff
	rst  $38                                         ; $4d77: $ff
	ld   de, rAUD1ENV                                   ; $4d78: $11 $12 $ff
	rst  $38                                         ; $4d7b: $ff
	sub  [hl]                                        ; $4d7c: $96
	ld   h, c                                        ; $4d7d: $61
	ld   de, $1111                                   ; $4d7e: $11 $11 $11
	ld   de, $ffff                                   ; $4d81: $11 $ff $ff
	pop  af                                          ; $4d84: $f1
	ld   de, $2111                                   ; $4d85: $11 $11 $21
	ld   a, a                                        ; $4d88: $7f
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	ld   de, rAUD1LOW                                   ; $4d8b: $11 $13 $ff
	rst  $38                                         ; $4d8e: $ff
	cp   e                                           ; $4d8f: $bb
	call nz, $1111                                   ; $4d90: $c4 $11 $11
	ld   de, $cf11                                   ; $4d93: $11 $11 $cf
	rst  $38                                         ; $4d96: $ff
	pop  af                                          ; $4d97: $f1
	ld   de, $2111                                   ; $4d98: $11 $11 $21
	ld   c, a                                        ; $4d9b: $4f
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	ld   de, rAUD1LEN                                   ; $4d9e: $11 $11 $ff
	rst  $38                                         ; $4da1: $ff
	rst  $38                                         ; $4da2: $ff
	rst  $30                                         ; $4da3: $f7
	ld   de, $1111                                   ; $4da4: $11 $11 $11
	ld   de, $ff1f                                   ; $4da7: $11 $1f $ff
	or   $11                                         ; $4daa: $f6 $11
	ld   de, $1911                                   ; $4dac: $11 $11 $19
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	and  c                                           ; $4db1: $a1
	ld   de, $ff7f                                   ; $4db2: $11 $7f $ff
	rst  $38                                         ; $4db5: $ff
	cp   $11                                         ; $4db6: $fe $11
	ld   de, $1111                                   ; $4db8: $11 $11 $11
	inc  de                                          ; $4dbb: $13
	rst  $38                                         ; $4dbc: $ff
	rst  $38                                         ; $4dbd: $ff
	ld   de, $1111                                   ; $4dbe: $11 $11 $11
	ld   de, $ff9f                                   ; $4dc1: $11 $9f $ff
	or   $11                                         ; $4dc4: $f6 $11
	jr   @+$01                                       ; $4dc6: $18 $ff

	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	pop  af                                          ; $4dca: $f1
	ld   de, $1111                                   ; $4dcb: $11 $11 $11
	ld   de, $ffbf                                   ; $4dce: $11 $bf $ff
	pop  af                                          ; $4dd1: $f1
	ld   de, $1111                                   ; $4dd2: $11 $11 $11
	rra                                              ; $4dd5: $1f
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	ld   [hl], c                                     ; $4dd8: $71
	ld   de, $9f36                                   ; $4dd9: $11 $36 $9f
	rst  $38                                         ; $4ddc: $ff
	rst  $38                                         ; $4ddd: $ff
	ld   de, $1111                                   ; $4dde: $11 $11 $11
	ld   de, $ff15                                   ; $4de1: $11 $15 $ff
	rst  $38                                         ; $4de4: $ff
	ld   de, $1111                                   ; $4de5: $11 $11 $11
	ld   de, $ffdf                                   ; $4de8: $11 $df $ff
	cp   $41                                         ; $4deb: $fe $41
	ld   de, $ef13                                   ; $4ded: $11 $13 $ef
	rst  $38                                         ; $4df0: $ff
	push af                                          ; $4df1: $f5
	ld   de, $1111                                   ; $4df2: $11 $11 $11
	ld   de, $ff1f                                   ; $4df5: $11 $1f $ff
	db   $fc                                         ; $4df8: $fc
	ld   de, $1111                                   ; $4df9: $11 $11 $11
	dec  d                                           ; $4dfc: $15
	rst  $38                                         ; $4dfd: $ff
	rst  $38                                         ; $4dfe: $ff
	db   $fd                                         ; $4dff: $fd
	ld   [hl], e                                     ; $4e00: $73
	ld   de, $ff19                                   ; $4e01: $11 $19 $ff
	rst  $38                                         ; $4e04: $ff
	jp   $1111                                       ; $4e05: $c3 $11 $11


	ld   de, rAUD1LEN                                   ; $4e08: $11 $11 $ff
	rst  $38                                         ; $4e0b: $ff
	rst  $30                                         ; $4e0c: $f7
	ld   de, $1111                                   ; $4e0d: $11 $11 $11
	ld   e, $ff                                      ; $4e10: $1e $ff
	rst  $38                                         ; $4e12: $ff
	rst  $38                                         ; $4e13: $ff
	sub  c                                           ; $4e14: $91
	ld   de, $ff1e                                   ; $4e15: $11 $1e $ff
	rst  $38                                         ; $4e18: $ff
	sub  $11                                         ; $4e19: $d6 $11
	ld   de, $1111                                   ; $4e1b: $11 $11 $11
	rst  $38                                         ; $4e1e: $ff
	rst  $38                                         ; $4e1f: $ff
	ld   a, [$1111]                                  ; $4e20: $fa $11 $11
	ld   de, $ff1f                                   ; $4e23: $11 $1f $ff
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	and  c                                           ; $4e28: $a1
	ld   de, $ff3d                                   ; $4e29: $11 $3d $ff
	rst  $38                                         ; $4e2c: $ff
	and  $11                                         ; $4e2d: $e6 $11
	ld   de, $1311                                   ; $4e2f: $11 $11 $13
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	db   $fc                                         ; $4e34: $fc
	ld   sp, $1111                                   ; $4e35: $31 $11 $11
	rra                                              ; $4e38: $1f
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	pop  hl                                          ; $4e3c: $e1
	ld   de, $ff2a                                   ; $4e3d: $11 $2a $ff
	rst  $38                                         ; $4e40: $ff
	ei                                               ; $4e41: $fb
	ld   de, $1111                                   ; $4e42: $11 $11 $11
	inc  de                                          ; $4e45: $13
	rst  $38                                         ; $4e46: $ff
	rst  $38                                         ; $4e47: $ff
	rst  $38                                         ; $4e48: $ff
	add  c                                           ; $4e49: $81
	ld   de, $1911                                   ; $4e4a: $11 $11 $19
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	push af                                          ; $4e50: $f5
	ld   de, $cf15                                   ; $4e51: $11 $15 $cf
	rst  $38                                         ; $4e54: $ff
	ei                                               ; $4e55: $fb
	ld   de, $1111                                   ; $4e56: $11 $11 $11
	rla                                              ; $4e59: $17
	rst  $38                                         ; $4e5a: $ff
	rst  $38                                         ; $4e5b: $ff
	rst  $38                                         ; $4e5c: $ff
	db   $e4                                         ; $4e5d: $e4
	ld   de, $1411                                   ; $4e5e: $11 $11 $14
	rst  JumpTable                                         ; $4e61: $df
	rst  $38                                         ; $4e62: $ff
	rst  $38                                         ; $4e63: $ff
	ld   a, [$1411]                                  ; $4e64: $fa $11 $14
	ld   a, b                                        ; $4e67: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e68: $cf
	db   $fd                                         ; $4e69: $fd
	ld   b, c                                        ; $4e6a: $41
	ld   de, $1711                                   ; $4e6b: $11 $11 $17
	rst  $38                                         ; $4e6e: $ff
	rst  $38                                         ; $4e6f: $ff
	rst  $38                                         ; $4e70: $ff
	rst  $30                                         ; $4e71: $f7
	ld   de, $1111                                   ; $4e72: $11 $11 $11
	ld   a, [hl-]                                    ; $4e75: $3a
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	rst  $38                                         ; $4e78: $ff
	and  l                                           ; $4e79: $a5
	ld   h, [hl]                                     ; $4e7a: $66
	inc  hl                                          ; $4e7b: $23
	ld   l, d                                        ; $4e7c: $6a
	rst  $38                                         ; $4e7d: $ff
	add  c                                           ; $4e7e: $81
	ld   de, $1411                                   ; $4e7f: $11 $11 $14
	rst  JumpTable                                         ; $4e82: $df
	rst  $38                                         ; $4e83: $ff
	rst  $38                                         ; $4e84: $ff
	db   $fc                                         ; $4e85: $fc
	ld   hl, $1111                                   ; $4e86: $21 $11 $11
	ld   [de], a                                     ; $4e89: $12
	cp   a                                           ; $4e8a: $bf
	rst  $38                                         ; $4e8b: $ff
	rst  $38                                         ; $4e8c: $ff
	rst  $38                                         ; $4e8d: $ff
	jp   z, $3641                                    ; $4e8e: $ca $41 $36

	xor  h                                           ; $4e91: $ac
	ld   [hl], d                                     ; $4e92: $72
	ld   de, $1311                                   ; $4e93: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e96: $cf
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	rst  $38                                         ; $4e99: $ff
	sub  c                                           ; $4e9a: $91
	ld   de, $1111                                   ; $4e9b: $11 $11 $11
	dec  hl                                          ; $4e9e: $2b
	rst  $38                                         ; $4e9f: $ff
	rst  $38                                         ; $4ea0: $ff
	rst  $38                                         ; $4ea1: $ff
	rst  $38                                         ; $4ea2: $ff
	push bc                                          ; $4ea3: $c5
	ld   b, l                                        ; $4ea4: $45
	ld   e, c                                        ; $4ea5: $59
	ld   h, e                                        ; $4ea6: $63
	ld   de, $1111                                   ; $4ea7: $11 $11 $11
	ld   l, l                                        ; $4eaa: $6d
	cp   $df                                         ; $4eab: $fe $df
	rst  $38                                         ; $4ead: $ff
	ld   a, [$4133]                                  ; $4eae: $fa $33 $41
	ld   de, $7b11                                   ; $4eb1: $11 $11 $7b
	rst  $38                                         ; $4eb4: $ff
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff

Jump_0f4_4eb8:
	jp   c, Jump_0f4_6696                            ; $4eb8: $da $96 $66

	ld   sp, $1111                                   ; $4ebb: $31 $11 $11
	ld   de, $b889                                   ; $4ebe: $11 $89 $b8
	sbc  a                                           ; $4ec1: $9f
	rst  $38                                         ; $4ec2: $ff
	ld   a, [$a99b]                                  ; $4ec3: $fa $9b $a9
	ld   h, e                                        ; $4ec6: $63
	dec  h                                           ; $4ec7: $25
	ld   l, b                                        ; $4ec8: $68
	sbc  c                                           ; $4ec9: $99
	cp   h                                           ; $4eca: $bc
	xor  $fe                                         ; $4ecb: $ee $fe
	res  5, c                                        ; $4ecd: $cb $a9
	xor  d                                           ; $4ecf: $aa
	sub  a                                           ; $4ed0: $97
	ld   d, l                                        ; $4ed1: $55
	ld   b, e                                        ; $4ed2: $43
	inc  sp                                          ; $4ed3: $33
	ld   b, l                                        ; $4ed4: $45
	ld   b, e                                        ; $4ed5: $43
	inc  sp                                          ; $4ed6: $33
	ld   b, h                                        ; $4ed7: $44
	ld   d, [hl]                                     ; $4ed8: $56
	ld   h, [hl]                                     ; $4ed9: $66
	ld   a, c                                        ; $4eda: $79
	cp   e                                           ; $4edb: $bb
	cp   h                                           ; $4edc: $bc
	call z, $abcc                                    ; $4edd: $cc $cc $ab
	xor  d                                           ; $4ee0: $aa
	xor  c                                           ; $4ee1: $a9
	sbc  d                                           ; $4ee2: $9a
	cp   e                                           ; $4ee3: $bb
	cp   d                                           ; $4ee4: $ba
	cp   d                                           ; $4ee5: $ba
	cp   d                                           ; $4ee6: $ba
	sbc  c                                           ; $4ee7: $99
	ld   [hl], a                                     ; $4ee8: $77
	ld   h, [hl]                                     ; $4ee9: $66
	ld   d, e                                        ; $4eea: $53
	ld   hl, $2211                                   ; $4eeb: $21 $11 $22
	inc  hl                                          ; $4eee: $23
	ld   d, [hl]                                     ; $4eef: $56
	adc  c                                           ; $4ef0: $89
	xor  e                                           ; $4ef1: $ab
	xor  e                                           ; $4ef2: $ab
	res  5, d                                        ; $4ef3: $cb $aa
	xor  e                                           ; $4ef5: $ab
	cp   h                                           ; $4ef6: $bc
	res  7, e                                        ; $4ef7: $cb $bb
	cp   e                                           ; $4ef9: $bb
	cp   d                                           ; $4efa: $ba
	xor  d                                           ; $4efb: $aa
	xor  c                                           ; $4efc: $a9
	sbc  b                                           ; $4efd: $98
	halt                                             ; $4efe: $76
	ld   h, l                                        ; $4eff: $65
	ld   b, e                                        ; $4f00: $43
	ld   de, $3312                                   ; $4f01: $11 $12 $33
	ld   b, l                                        ; $4f04: $45
	ld   a, b                                        ; $4f05: $78
	sbc  c                                           ; $4f06: $99
	xor  c                                           ; $4f07: $a9
	xor  c                                           ; $4f08: $a9
	xor  d                                           ; $4f09: $aa
	xor  d                                           ; $4f0a: $aa
	cp   d                                           ; $4f0b: $ba
	cp   e                                           ; $4f0c: $bb
	xor  d                                           ; $4f0d: $aa
	xor  c                                           ; $4f0e: $a9
	sbc  c                                           ; $4f0f: $99
	xor  d                                           ; $4f10: $aa
	sbc  c                                           ; $4f11: $99
	xor  c                                           ; $4f12: $a9
	sbc  b                                           ; $4f13: $98
	add  a                                           ; $4f14: $87
	ld   h, [hl]                                     ; $4f15: $66
	ld   d, l                                        ; $4f16: $55
	ld   b, h                                        ; $4f17: $44
	ld   b, h                                        ; $4f18: $44
	ld   b, h                                        ; $4f19: $44
	ld   d, l                                        ; $4f1a: $55
	ld   d, [hl]                                     ; $4f1b: $56
	ld   h, a                                        ; $4f1c: $67
	ld   [hl], a                                     ; $4f1d: $77
	sbc  c                                           ; $4f1e: $99
	xor  d                                           ; $4f1f: $aa
	cp   e                                           ; $4f20: $bb
	cp   e                                           ; $4f21: $bb
	cp   d                                           ; $4f22: $ba
	sbc  d                                           ; $4f23: $9a
	sbc  c                                           ; $4f24: $99
	xor  d                                           ; $4f25: $aa
	sbc  b                                           ; $4f26: $98
	adc  b                                           ; $4f27: $88
	adc  b                                           ; $4f28: $88
	sbc  c                                           ; $4f29: $99
	sbc  c                                           ; $4f2a: $99
	sbc  c                                           ; $4f2b: $99
	adc  b                                           ; $4f2c: $88
	add  a                                           ; $4f2d: $87
	halt                                             ; $4f2e: $76
	ld   d, l                                        ; $4f2f: $55
	ld   b, h                                        ; $4f30: $44
	ld   b, h                                        ; $4f31: $44
	ld   b, l                                        ; $4f32: $45
	ld   h, a                                        ; $4f33: $67
	adc  c                                           ; $4f34: $89
	adc  c                                           ; $4f35: $89
	xor  c                                           ; $4f36: $a9
	sbc  c                                           ; $4f37: $99
	sbc  c                                           ; $4f38: $99
	sbc  d                                           ; $4f39: $9a
	sbc  c                                           ; $4f3a: $99
	adc  c                                           ; $4f3b: $89
	adc  c                                           ; $4f3c: $89
	sbc  b                                           ; $4f3d: $98
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	sbc  b                                           ; $4f40: $98
	sbc  c                                           ; $4f41: $99
	xor  c                                           ; $4f42: $a9
	xor  c                                           ; $4f43: $a9
	sbc  b                                           ; $4f44: $98
	ld   [hl], a                                     ; $4f45: $77
	halt                                             ; $4f46: $76
	ld   h, [hl]                                     ; $4f47: $66
	ld   h, [hl]                                     ; $4f48: $66
	ld   h, [hl]                                     ; $4f49: $66
	ld   h, [hl]                                     ; $4f4a: $66
	ld   h, [hl]                                     ; $4f4b: $66
	ld   [hl], a                                     ; $4f4c: $77
	ld   a, b                                        ; $4f4d: $78
	adc  b                                           ; $4f4e: $88
	sbc  c                                           ; $4f4f: $99
	sbc  c                                           ; $4f50: $99
	adc  b                                           ; $4f51: $88
	adc  b                                           ; $4f52: $88
	adc  b                                           ; $4f53: $88
	adc  b                                           ; $4f54: $88
	sbc  c                                           ; $4f55: $99
	sbc  c                                           ; $4f56: $99
	adc  c                                           ; $4f57: $89
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	adc  b                                           ; $4f5a: $88
	sbc  b                                           ; $4f5b: $98
	sbc  c                                           ; $4f5c: $99
	xor  d                                           ; $4f5d: $aa
	xor  c                                           ; $4f5e: $a9
	sbc  b                                           ; $4f5f: $98
	adc  b                                           ; $4f60: $88
	ld   [hl], a                                     ; $4f61: $77
	halt                                             ; $4f62: $76
	ld   h, [hl]                                     ; $4f63: $66
	ld   h, [hl]                                     ; $4f64: $66
	ld   h, [hl]                                     ; $4f65: $66
	ld   h, [hl]                                     ; $4f66: $66
	ld   h, a                                        ; $4f67: $67
	ld   [hl], a                                     ; $4f68: $77
	adc  b                                           ; $4f69: $88
	sbc  c                                           ; $4f6a: $99
	adc  b                                           ; $4f6b: $88
	sbc  c                                           ; $4f6c: $99
	adc  b                                           ; $4f6d: $88
	adc  b                                           ; $4f6e: $88
	sbc  b                                           ; $4f6f: $98
	sbc  c                                           ; $4f70: $99
	xor  c                                           ; $4f71: $a9
	sbc  d                                           ; $4f72: $9a
	sbc  c                                           ; $4f73: $99
	sbc  c                                           ; $4f74: $99
	xor  d                                           ; $4f75: $aa
	sbc  b                                           ; $4f76: $98
	sbc  b                                           ; $4f77: $98
	ld   [hl], a                                     ; $4f78: $77
	ld   h, l                                        ; $4f79: $65
	ld   d, l                                        ; $4f7a: $55
	ld   d, l                                        ; $4f7b: $55
	ld   d, l                                        ; $4f7c: $55
	ld   h, [hl]                                     ; $4f7d: $66
	ld   [hl], a                                     ; $4f7e: $77
	adc  b                                           ; $4f7f: $88
	adc  b                                           ; $4f80: $88
	sbc  c                                           ; $4f81: $99
	adc  b                                           ; $4f82: $88
	sbc  b                                           ; $4f83: $98
	sbc  c                                           ; $4f84: $99
	sbc  c                                           ; $4f85: $99
	sbc  c                                           ; $4f86: $99
	sbc  c                                           ; $4f87: $99
	sbc  c                                           ; $4f88: $99
	sbc  b                                           ; $4f89: $98
	adc  b                                           ; $4f8a: $88
	sbc  c                                           ; $4f8b: $99
	sbc  b                                           ; $4f8c: $98
	adc  b                                           ; $4f8d: $88
	adc  b                                           ; $4f8e: $88
	ld   [hl], a                                     ; $4f8f: $77
	ld   a, b                                        ; $4f90: $78
	adc  b                                           ; $4f91: $88
	adc  c                                           ; $4f92: $89
	sbc  c                                           ; $4f93: $99
	adc  b                                           ; $4f94: $88
	adc  b                                           ; $4f95: $88
	adc  b                                           ; $4f96: $88
	adc  b                                           ; $4f97: $88
	adc  c                                           ; $4f98: $89
	sbc  c                                           ; $4f99: $99
	sbc  c                                           ; $4f9a: $99
	sbc  c                                           ; $4f9b: $99
	sbc  c                                           ; $4f9c: $99
	sbc  b                                           ; $4f9d: $98
	adc  c                                           ; $4f9e: $89
	sbc  c                                           ; $4f9f: $99
	sbc  c                                           ; $4fa0: $99
	sbc  b                                           ; $4fa1: $98
	sbc  b                                           ; $4fa2: $98
	adc  b                                           ; $4fa3: $88
	add  a                                           ; $4fa4: $87
	ld   [hl], a                                     ; $4fa5: $77
	ld   [hl], a                                     ; $4fa6: $77
	ld   [hl], a                                     ; $4fa7: $77
	halt                                             ; $4fa8: $76
	ld   h, [hl]                                     ; $4fa9: $66
	ld   h, [hl]                                     ; $4faa: $66
	ld   [hl], a                                     ; $4fab: $77
	ld   [hl], a                                     ; $4fac: $77
	adc  b                                           ; $4fad: $88
	sbc  b                                           ; $4fae: $98
	sbc  c                                           ; $4faf: $99
	sbc  c                                           ; $4fb0: $99
	xor  d                                           ; $4fb1: $aa
	xor  c                                           ; $4fb2: $a9
	sbc  c                                           ; $4fb3: $99
	xor  c                                           ; $4fb4: $a9
	sbc  b                                           ; $4fb5: $98
	adc  b                                           ; $4fb6: $88
	ld   [hl], a                                     ; $4fb7: $77
	ld   [hl], a                                     ; $4fb8: $77
	ld   h, [hl]                                     ; $4fb9: $66
	ld   h, [hl]                                     ; $4fba: $66
	ld   h, [hl]                                     ; $4fbb: $66
	ld   h, [hl]                                     ; $4fbc: $66
	ld   h, [hl]                                     ; $4fbd: $66
	ld   [hl], a                                     ; $4fbe: $77
	ld   a, b                                        ; $4fbf: $78
	adc  c                                           ; $4fc0: $89
	sbc  c                                           ; $4fc1: $99
	sbc  d                                           ; $4fc2: $9a
	xor  d                                           ; $4fc3: $aa
	xor  c                                           ; $4fc4: $a9
	sbc  c                                           ; $4fc5: $99
	xor  d                                           ; $4fc6: $aa
	xor  d                                           ; $4fc7: $aa
	xor  c                                           ; $4fc8: $a9
	sbc  c                                           ; $4fc9: $99
	adc  c                                           ; $4fca: $89
	sbc  b                                           ; $4fcb: $98
	adc  b                                           ; $4fcc: $88
	adc  b                                           ; $4fcd: $88
	adc  b                                           ; $4fce: $88
	adc  b                                           ; $4fcf: $88
	sbc  c                                           ; $4fd0: $99
	sbc  b                                           ; $4fd1: $98
	adc  b                                           ; $4fd2: $88
	adc  b                                           ; $4fd3: $88
	adc  c                                           ; $4fd4: $89
	sbc  c                                           ; $4fd5: $99
	adc  b                                           ; $4fd6: $88
	adc  c                                           ; $4fd7: $89
	sbc  b                                           ; $4fd8: $98
	adc  b                                           ; $4fd9: $88
	adc  b                                           ; $4fda: $88
	adc  b                                           ; $4fdb: $88
	adc  b                                           ; $4fdc: $88
	adc  b                                           ; $4fdd: $88
	adc  b                                           ; $4fde: $88
	adc  b                                           ; $4fdf: $88
	add  a                                           ; $4fe0: $87
	ld   a, b                                        ; $4fe1: $78
	adc  b                                           ; $4fe2: $88
	adc  b                                           ; $4fe3: $88
	adc  b                                           ; $4fe4: $88
	adc  b                                           ; $4fe5: $88
	adc  b                                           ; $4fe6: $88
	adc  b                                           ; $4fe7: $88
	adc  b                                           ; $4fe8: $88
	adc  c                                           ; $4fe9: $89
	sbc  c                                           ; $4fea: $99
	sbc  c                                           ; $4feb: $99
	sbc  c                                           ; $4fec: $99
	sbc  b                                           ; $4fed: $98
	adc  b                                           ; $4fee: $88
	adc  b                                           ; $4fef: $88
	sbc  c                                           ; $4ff0: $99
	sbc  c                                           ; $4ff1: $99
	sbc  b                                           ; $4ff2: $98
	adc  b                                           ; $4ff3: $88
	adc  b                                           ; $4ff4: $88
	adc  b                                           ; $4ff5: $88
	adc  b                                           ; $4ff6: $88
	adc  b                                           ; $4ff7: $88
	adc  b                                           ; $4ff8: $88
	adc  b                                           ; $4ff9: $88
	adc  b                                           ; $4ffa: $88
	adc  b                                           ; $4ffb: $88
	adc  b                                           ; $4ffc: $88
	adc  b                                           ; $4ffd: $88
	adc  b                                           ; $4ffe: $88
	sbc  c                                           ; $4fff: $99
	sbc  b                                           ; $5000: $98
	adc  b                                           ; $5001: $88
	adc  b                                           ; $5002: $88
	adc  b                                           ; $5003: $88
	adc  b                                           ; $5004: $88
	sbc  c                                           ; $5005: $99
	sbc  c                                           ; $5006: $99
	adc  b                                           ; $5007: $88
	adc  b                                           ; $5008: $88
	adc  b                                           ; $5009: $88
	adc  b                                           ; $500a: $88
	adc  b                                           ; $500b: $88
	adc  b                                           ; $500c: $88
	adc  b                                           ; $500d: $88
	adc  b                                           ; $500e: $88
	adc  b                                           ; $500f: $88
	adc  b                                           ; $5010: $88
	adc  b                                           ; $5011: $88
	adc  b                                           ; $5012: $88
	adc  b                                           ; $5013: $88
	adc  b                                           ; $5014: $88
	adc  b                                           ; $5015: $88
	adc  b                                           ; $5016: $88
	adc  b                                           ; $5017: $88
	adc  b                                           ; $5018: $88
	adc  b                                           ; $5019: $88
	sbc  b                                           ; $501a: $98
	adc  b                                           ; $501b: $88
	adc  b                                           ; $501c: $88
	adc  b                                           ; $501d: $88
	adc  b                                           ; $501e: $88
	adc  b                                           ; $501f: $88
	adc  b                                           ; $5020: $88
	adc  b                                           ; $5021: $88
	adc  b                                           ; $5022: $88
	adc  b                                           ; $5023: $88
	adc  b                                           ; $5024: $88
	adc  b                                           ; $5025: $88
	adc  b                                           ; $5026: $88
	adc  b                                           ; $5027: $88
	adc  b                                           ; $5028: $88
	adc  b                                           ; $5029: $88
	adc  b                                           ; $502a: $88
	adc  b                                           ; $502b: $88
	adc  b                                           ; $502c: $88
	adc  b                                           ; $502d: $88
	adc  b                                           ; $502e: $88
	adc  b                                           ; $502f: $88
	adc  b                                           ; $5030: $88
	adc  b                                           ; $5031: $88
	adc  b                                           ; $5032: $88
	adc  b                                           ; $5033: $88
	adc  b                                           ; $5034: $88
	adc  b                                           ; $5035: $88
	adc  b                                           ; $5036: $88
	adc  b                                           ; $5037: $88
	adc  b                                           ; $5038: $88
	adc  b                                           ; $5039: $88
	adc  b                                           ; $503a: $88
	adc  b                                           ; $503b: $88
	adc  b                                           ; $503c: $88
	adc  b                                           ; $503d: $88
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	adc  b                                           ; $5040: $88
	adc  b                                           ; $5041: $88
	adc  b                                           ; $5042: $88
	adc  b                                           ; $5043: $88
	adc  b                                           ; $5044: $88
	adc  b                                           ; $5045: $88
	adc  b                                           ; $5046: $88
	adc  b                                           ; $5047: $88
	adc  b                                           ; $5048: $88
	adc  b                                           ; $5049: $88
	adc  b                                           ; $504a: $88
	adc  b                                           ; $504b: $88
	adc  b                                           ; $504c: $88
	adc  b                                           ; $504d: $88
	adc  b                                           ; $504e: $88
	adc  b                                           ; $504f: $88
	adc  b                                           ; $5050: $88
	adc  b                                           ; $5051: $88
	adc  b                                           ; $5052: $88
	adc  b                                           ; $5053: $88
	adc  b                                           ; $5054: $88
	adc  b                                           ; $5055: $88
	adc  b                                           ; $5056: $88
	adc  b                                           ; $5057: $88
	adc  b                                           ; $5058: $88
	adc  b                                           ; $5059: $88
	adc  b                                           ; $505a: $88
	adc  b                                           ; $505b: $88
	adc  b                                           ; $505c: $88
	adc  b                                           ; $505d: $88
	adc  b                                           ; $505e: $88
	adc  b                                           ; $505f: $88
	adc  b                                           ; $5060: $88
	adc  b                                           ; $5061: $88
	adc  b                                           ; $5062: $88
	adc  b                                           ; $5063: $88
	adc  b                                           ; $5064: $88
	adc  b                                           ; $5065: $88
	adc  b                                           ; $5066: $88
	adc  b                                           ; $5067: $88
	adc  b                                           ; $5068: $88
	adc  b                                           ; $5069: $88
	adc  b                                           ; $506a: $88
	adc  b                                           ; $506b: $88
	adc  b                                           ; $506c: $88
	adc  b                                           ; $506d: $88
	adc  b                                           ; $506e: $88
	adc  b                                           ; $506f: $88
	adc  b                                           ; $5070: $88
	adc  b                                           ; $5071: $88
	adc  b                                           ; $5072: $88
	adc  b                                           ; $5073: $88
	adc  b                                           ; $5074: $88
	adc  b                                           ; $5075: $88
	adc  b                                           ; $5076: $88
	adc  b                                           ; $5077: $88
	adc  b                                           ; $5078: $88
	adc  b                                           ; $5079: $88
	adc  b                                           ; $507a: $88
	adc  b                                           ; $507b: $88
	adc  b                                           ; $507c: $88
	adc  b                                           ; $507d: $88
	adc  b                                           ; $507e: $88
	adc  b                                           ; $507f: $88
	adc  b                                           ; $5080: $88
	adc  b                                           ; $5081: $88
	adc  b                                           ; $5082: $88
	adc  b                                           ; $5083: $88
	adc  b                                           ; $5084: $88
	adc  b                                           ; $5085: $88
	adc  b                                           ; $5086: $88
	adc  b                                           ; $5087: $88
	adc  b                                           ; $5088: $88
	adc  b                                           ; $5089: $88
	adc  b                                           ; $508a: $88
	adc  b                                           ; $508b: $88
	adc  b                                           ; $508c: $88
	adc  b                                           ; $508d: $88
	adc  b                                           ; $508e: $88
	adc  b                                           ; $508f: $88
	adc  b                                           ; $5090: $88
	adc  b                                           ; $5091: $88
	adc  b                                           ; $5092: $88
	adc  b                                           ; $5093: $88
	adc  b                                           ; $5094: $88
	adc  b                                           ; $5095: $88
	adc  b                                           ; $5096: $88
	adc  b                                           ; $5097: $88
	adc  b                                           ; $5098: $88
	adc  b                                           ; $5099: $88
	adc  b                                           ; $509a: $88
	adc  b                                           ; $509b: $88
	adc  b                                           ; $509c: $88
	adc  b                                           ; $509d: $88
	adc  b                                           ; $509e: $88
	adc  b                                           ; $509f: $88
	adc  b                                           ; $50a0: $88
	adc  b                                           ; $50a1: $88
	adc  b                                           ; $50a2: $88
	adc  b                                           ; $50a3: $88
	adc  b                                           ; $50a4: $88
	adc  b                                           ; $50a5: $88
	adc  b                                           ; $50a6: $88
	adc  b                                           ; $50a7: $88
	adc  b                                           ; $50a8: $88
	adc  b                                           ; $50a9: $88
	adc  b                                           ; $50aa: $88
	adc  b                                           ; $50ab: $88
	adc  b                                           ; $50ac: $88
	adc  b                                           ; $50ad: $88
	adc  b                                           ; $50ae: $88
	adc  b                                           ; $50af: $88
	adc  b                                           ; $50b0: $88
	adc  b                                           ; $50b1: $88
	adc  b                                           ; $50b2: $88
	adc  b                                           ; $50b3: $88
	adc  b                                           ; $50b4: $88
	adc  b                                           ; $50b5: $88
	adc  b                                           ; $50b6: $88
	adc  b                                           ; $50b7: $88
	adc  b                                           ; $50b8: $88
	adc  b                                           ; $50b9: $88
	adc  b                                           ; $50ba: $88
	adc  b                                           ; $50bb: $88
	adc  b                                           ; $50bc: $88
	adc  b                                           ; $50bd: $88
	adc  b                                           ; $50be: $88
	adc  b                                           ; $50bf: $88
	adc  b                                           ; $50c0: $88
	adc  b                                           ; $50c1: $88
	adc  b                                           ; $50c2: $88
	adc  b                                           ; $50c3: $88
	adc  b                                           ; $50c4: $88
	adc  b                                           ; $50c5: $88
	adc  b                                           ; $50c6: $88
	adc  b                                           ; $50c7: $88
	adc  b                                           ; $50c8: $88
	adc  b                                           ; $50c9: $88
	adc  b                                           ; $50ca: $88
	adc  b                                           ; $50cb: $88
	adc  b                                           ; $50cc: $88
	adc  b                                           ; $50cd: $88
	adc  b                                           ; $50ce: $88
	adc  b                                           ; $50cf: $88
	adc  b                                           ; $50d0: $88
	adc  b                                           ; $50d1: $88
	adc  b                                           ; $50d2: $88
	adc  b                                           ; $50d3: $88
	adc  b                                           ; $50d4: $88
	adc  b                                           ; $50d5: $88
	adc  b                                           ; $50d6: $88
	adc  b                                           ; $50d7: $88
	adc  b                                           ; $50d8: $88
	adc  b                                           ; $50d9: $88
	adc  b                                           ; $50da: $88
	adc  b                                           ; $50db: $88
	adc  b                                           ; $50dc: $88
	adc  b                                           ; $50dd: $88
	adc  b                                           ; $50de: $88
	adc  b                                           ; $50df: $88
	adc  b                                           ; $50e0: $88
	adc  b                                           ; $50e1: $88
	adc  b                                           ; $50e2: $88
	adc  b                                           ; $50e3: $88
	adc  b                                           ; $50e4: $88
	adc  b                                           ; $50e5: $88
	adc  b                                           ; $50e6: $88
	adc  b                                           ; $50e7: $88
	adc  b                                           ; $50e8: $88
	adc  b                                           ; $50e9: $88
	adc  b                                           ; $50ea: $88
	adc  b                                           ; $50eb: $88
	adc  b                                           ; $50ec: $88
	adc  b                                           ; $50ed: $88
	adc  b                                           ; $50ee: $88
	adc  b                                           ; $50ef: $88
	adc  b                                           ; $50f0: $88
	adc  b                                           ; $50f1: $88
	adc  b                                           ; $50f2: $88
	adc  b                                           ; $50f3: $88
	adc  b                                           ; $50f4: $88
	adc  b                                           ; $50f5: $88
	adc  b                                           ; $50f6: $88
	adc  b                                           ; $50f7: $88
	adc  b                                           ; $50f8: $88
	adc  b                                           ; $50f9: $88
	adc  b                                           ; $50fa: $88
	adc  b                                           ; $50fb: $88
	adc  b                                           ; $50fc: $88
	adc  b                                           ; $50fd: $88
	adc  b                                           ; $50fe: $88
	adc  b                                           ; $50ff: $88
	adc  b                                           ; $5100: $88
	adc  b                                           ; $5101: $88
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	adc  b                                           ; $5104: $88
	adc  b                                           ; $5105: $88
	adc  b                                           ; $5106: $88
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

Jump_0f4_5198:
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
	adc  b                                           ; $51a4: $88
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
	adc  b                                           ; $51ba: $88
	adc  b                                           ; $51bb: $88
	adc  b                                           ; $51bc: $88
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
	adc  b                                           ; $51cd: $88
	adc  b                                           ; $51ce: $88
	adc  b                                           ; $51cf: $88
	adc  b                                           ; $51d0: $88
	adc  b                                           ; $51d1: $88
	adc  b                                           ; $51d2: $88
	adc  b                                           ; $51d3: $88
	adc  b                                           ; $51d4: $88
	adc  b                                           ; $51d5: $88
	adc  b                                           ; $51d6: $88
	adc  b                                           ; $51d7: $88
	adc  b                                           ; $51d8: $88
	adc  b                                           ; $51d9: $88
	adc  b                                           ; $51da: $88
	adc  b                                           ; $51db: $88
	adc  b                                           ; $51dc: $88
	adc  b                                           ; $51dd: $88
	adc  b                                           ; $51de: $88
	adc  b                                           ; $51df: $88
	adc  b                                           ; $51e0: $88
	adc  b                                           ; $51e1: $88
	adc  b                                           ; $51e2: $88
	adc  b                                           ; $51e3: $88
	adc  b                                           ; $51e4: $88
	adc  b                                           ; $51e5: $88
	adc  b                                           ; $51e6: $88
	adc  b                                           ; $51e7: $88
	adc  b                                           ; $51e8: $88
	adc  b                                           ; $51e9: $88
	adc  b                                           ; $51ea: $88
	adc  b                                           ; $51eb: $88
	adc  b                                           ; $51ec: $88
	adc  b                                           ; $51ed: $88
	adc  b                                           ; $51ee: $88
	adc  b                                           ; $51ef: $88
	adc  b                                           ; $51f0: $88
	adc  b                                           ; $51f1: $88
	adc  b                                           ; $51f2: $88
	adc  b                                           ; $51f3: $88
	adc  b                                           ; $51f4: $88
	adc  b                                           ; $51f5: $88
	adc  b                                           ; $51f6: $88
	adc  b                                           ; $51f7: $88
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  b                                           ; $51fb: $88
	adc  b                                           ; $51fc: $88
	adc  b                                           ; $51fd: $88
	adc  b                                           ; $51fe: $88
	adc  b                                           ; $51ff: $88
	adc  b                                           ; $5200: $88
	adc  b                                           ; $5201: $88
	adc  b                                           ; $5202: $88
	adc  b                                           ; $5203: $88
	adc  b                                           ; $5204: $88
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	adc  b                                           ; $520f: $88
	adc  b                                           ; $5210: $88
	adc  b                                           ; $5211: $88
	adc  b                                           ; $5212: $88
	adc  b                                           ; $5213: $88
	adc  b                                           ; $5214: $88
	adc  b                                           ; $5215: $88
	adc  b                                           ; $5216: $88
	adc  b                                           ; $5217: $88
	adc  b                                           ; $5218: $88
	adc  b                                           ; $5219: $88
	adc  b                                           ; $521a: $88
	adc  b                                           ; $521b: $88
	adc  b                                           ; $521c: $88
	adc  b                                           ; $521d: $88
	adc  b                                           ; $521e: $88
	adc  b                                           ; $521f: $88
	adc  b                                           ; $5220: $88
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	adc  b                                           ; $5224: $88
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	sbc  c                                           ; $522e: $99
	adc  b                                           ; $522f: $88
	sbc  c                                           ; $5230: $99
	xor  d                                           ; $5231: $aa
	xor  b                                           ; $5232: $a8
	sbc  d                                           ; $5233: $9a
	add  a                                           ; $5234: $87
	ld   h, [hl]                                     ; $5235: $66
	ld   [hl], a                                     ; $5236: $77
	halt                                             ; $5237: $76
	ld   [hl], a                                     ; $5238: $77
	adc  b                                           ; $5239: $88
	sbc  b                                           ; $523a: $98
	adc  c                                           ; $523b: $89
	sbc  c                                           ; $523c: $99
	xor  d                                           ; $523d: $aa
	sbc  d                                           ; $523e: $9a
	xor  c                                           ; $523f: $a9
	add  a                                           ; $5240: $87
	ld   h, l                                        ; $5241: $65
	ld   d, h                                        ; $5242: $54
	ld   b, h                                        ; $5243: $44
	ld   b, e                                        ; $5244: $43
	ld   de, $9d26                                   ; $5245: $11 $26 $9d
	ret                                              ; $5248: $c9


	xor  e                                           ; $5249: $ab
	db   $dd                                         ; $524a: $dd
	add  $54                                         ; $524b: $c6 $54
	ld   d, a                                        ; $524d: $57
	ld   [hl], l                                     ; $524e: $75
	dec  [hl]                                        ; $524f: $35
	ld   a, h                                        ; $5250: $7c
	rst  $38                                         ; $5251: $ff
	call c, $eccd                                    ; $5252: $dc $cd $ec
	and  a                                           ; $5255: $a7
	ld   h, a                                        ; $5256: $67
	add  a                                           ; $5257: $87
	ld   d, d                                        ; $5258: $52
	ld   de, $ad11                                   ; $5259: $11 $11 $ad
	cp   $ad                                         ; $525c: $fe $ad
	rst  $38                                         ; $525e: $ff
	ei                                               ; $525f: $fb
	ld   de, $5312                                   ; $5260: $11 $12 $53
	ld   de, $ff6c                                   ; $5263: $11 $6c $ff
	db   $ec                                         ; $5266: $ec
	cp   l                                           ; $5267: $bd
	db   $dd                                         ; $5268: $dd
	ld   d, c                                        ; $5269: $51
	ld   [de], a                                     ; $526a: $12
	adc  e                                           ; $526b: $8b
	cp   d                                           ; $526c: $ba
	adc  $ff                                         ; $526d: $ce $ff
	ld   sp, hl                                      ; $526f: $f9
	ld   h, l                                        ; $5270: $65
	ld   h, l                                        ; $5271: $65
	ld   de, $1811                                   ; $5272: $11 $11 $18
	rst  $38                                         ; $5275: $ff
	cp   $ff                                         ; $5276: $fe $ff
	rst  $38                                         ; $5278: $ff
	and  c                                           ; $5279: $a1
	ld   de, $5414                                   ; $527a: $11 $14 $54
	inc  a                                           ; $527d: $3c
	rst  $38                                         ; $527e: $ff
	rst  $38                                         ; $527f: $ff
	sub  l                                           ; $5280: $95
	ld   [hl], a                                     ; $5281: $77
	add  d                                           ; $5282: $82
	ld   de, $ff6f                                   ; $5283: $11 $6f $ff
	cp   $bc                                         ; $5286: $fe $bc
	cp   b                                           ; $5288: $b8
	ld   hl, $1111                                   ; $5289: $21 $11 $11
	ld   e, a                                        ; $528c: $5f
	rst  $38                                         ; $528d: $ff
	rst  $38                                         ; $528e: $ff
	rst  $38                                         ; $528f: $ff
	rst  $10                                         ; $5290: $d7
	ld   de, $4811                                   ; $5291: $11 $11 $48
	cp   c                                           ; $5294: $b9
	rst  $38                                         ; $5295: $ff
	rst  $38                                         ; $5296: $ff
	rst  $30                                         ; $5297: $f7
	ld   de, $3215                                   ; $5298: $11 $15 $32
	ld   e, c                                        ; $529b: $59
	rst  $38                                         ; $529c: $ff
	rst  $38                                         ; $529d: $ff
	jp   hl                                          ; $529e: $e9


	adc  b                                           ; $529f: $88
	ld   h, h                                        ; $52a0: $64
	ld   de, $1311                                   ; $52a1: $11 $11 $13
	rst  $38                                         ; $52a4: $ff
	rst  $38                                         ; $52a5: $ff
	rst  $38                                         ; $52a6: $ff
	ei                                               ; $52a7: $fb
	ld   h, c                                        ; $52a8: $61
	ld   de, $ef17                                   ; $52a9: $11 $17 $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ac: $cf
	rst  $38                                         ; $52ad: $ff
	db   $fd                                         ; $52ae: $fd
	ld   sp, $6711                                   ; $52af: $31 $11 $67
	ld   e, c                                        ; $52b2: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52b3: $cf
	rst  $38                                         ; $52b4: $ff
	ld   a, [$9865]                                  ; $52b5: $fa $65 $98
	ld   [hl], e                                     ; $52b8: $73
	ld   de, $1f11                                   ; $52b9: $11 $11 $1f
	rst  $38                                         ; $52bc: $ff
	cp   $ef                                         ; $52bd: $fe $ef
	add  sp, $11                                     ; $52bf: $e8 $11
	ld   de, $fc6f                                   ; $52c1: $11 $6f $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52c4: $cf
	rst  $38                                         ; $52c5: $ff
	db   $f4                                         ; $52c6: $f4
	ld   de, $b906                                   ; $52c7: $11 $06 $b9
	xor  e                                           ; $52ca: $ab
	rst  $38                                         ; $52cb: $ff
	rst  $38                                         ; $52cc: $ff
	and  [hl]                                        ; $52cd: $a6
	ld   c, c                                        ; $52ce: $49
	sbc  d                                           ; $52cf: $9a
	ld   h, c                                        ; $52d0: $61
	ld   de, $cf11                                   ; $52d1: $11 $11 $cf
	rst  $38                                         ; $52d4: $ff
	db   $fc                                         ; $52d5: $fc
	rst  $38                                         ; $52d6: $ff
	sub  h                                           ; $52d7: $94
	ld   de, $df12                                   ; $52d8: $11 $12 $df
	ei                                               ; $52db: $fb
	rst  $38                                         ; $52dc: $ff
	rst  $38                                         ; $52dd: $ff
	ld   [hl], c                                     ; $52de: $71
	ld   de, $dc3a                                   ; $52df: $11 $3a $dc
	adc  $ff                                         ; $52e2: $ce $ff
	ld   a, [$5974]                                  ; $52e4: $fa $74 $59
	ret                                              ; $52e7: $c9


	ld   d, c                                        ; $52e8: $51
	ld   de, rAUD1ENV                                   ; $52e9: $11 $12 $ff
	rst  $38                                         ; $52ec: $ff
	cp   l                                           ; $52ed: $bd
	db   $fd                                         ; $52ee: $fd
	ld   h, c                                        ; $52ef: $61
	ld   de, $ff1c                                   ; $52f0: $11 $1c $ff
	cp   h                                           ; $52f3: $bc
	rst  $38                                         ; $52f4: $ff
	ld   sp, hl                                      ; $52f5: $f9
	ld   de, $af12                                   ; $52f6: $11 $12 $af
	call c, $ffdf                                    ; $52f9: $dc $df $ff
	and  l                                           ; $52fc: $a5
	ld   b, l                                        ; $52fd: $45
	xor  h                                           ; $52fe: $ac
	or   [hl]                                        ; $52ff: $b6
	ld   de, $1d11                                   ; $5300: $11 $11 $1d
	rst  $38                                         ; $5303: $ff
	cp   $bf                                         ; $5304: $fe $bf
	ld   sp, hl                                      ; $5306: $f9
	ld   hl, $4e11                                   ; $5307: $21 $11 $4e
	rst  $38                                         ; $530a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $530b: $cf
	rst  $38                                         ; $530c: $ff
	push af                                          ; $530d: $f5
	ld   de, $cf14                                   ; $530e: $11 $14 $cf
	cp   $ff                                         ; $5311: $fe $ff
	cp   $75                                         ; $5313: $fe $75
	ld   b, a                                        ; $5315: $47
	xor  h                                           ; $5316: $ac
	sub  [hl]                                        ; $5317: $96
	ld   de, $1f11                                   ; $5318: $11 $11 $1f
	rst  $38                                         ; $531b: $ff
	ei                                               ; $531c: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $531d: $cf
	add  $11                                         ; $531e: $c6 $11
	ld   de, $feaf                                   ; $5320: $11 $af $fe
	cp   a                                           ; $5323: $bf
	rst  $38                                         ; $5324: $ff
	and  c                                           ; $5325: $a1
	ld   de, $ef19                                   ; $5326: $11 $19 $ef
	db   $fd                                         ; $5329: $fd
	rst  $38                                         ; $532a: $ff
	ei                                               ; $532b: $fb
	ld   h, e                                        ; $532c: $63
	ld   e, c                                        ; $532d: $59
	cp   l                                           ; $532e: $bd
	sub  e                                           ; $532f: $93
	ld   de, $bf11                                   ; $5330: $11 $11 $bf
	rst  $38                                         ; $5333: $ff
	ld   [$92fe], a                                  ; $5334: $ea $fe $92
	ld   de, rAUD1HIGH                                   ; $5337: $11 $14 $ff
	ei                                               ; $533a: $fb

Call_0f4_533b:
	rst  JumpTable                                         ; $533b: $df
	rst  $38                                         ; $533c: $ff
	ld   d, c                                        ; $533d: $51
	ld   de, $fe6e                                   ; $533e: $11 $6e $fe
	db   $ed                                         ; $5341: $ed
	rst  $38                                         ; $5342: $ff
	rst  $30                                         ; $5343: $f7
	ld   b, e                                        ; $5344: $43
	ld   a, h                                        ; $5345: $7c
	db   $eb                                         ; $5346: $eb
	ld   h, c                                        ; $5347: $61
	ld   de, rAUD1LEN                                   ; $5348: $11 $11 $ff
	rst  $38                                         ; $534b: $ff
	db   $ec                                         ; $534c: $ec
	db   $fc                                         ; $534d: $fc
	ld   h, c                                        ; $534e: $61
	ld   de, $ff16                                   ; $534f: $11 $16 $ff
	db   $fd                                         ; $5352: $fd
	rst  $28                                         ; $5353: $ef
	db   $fc                                         ; $5354: $fc
	ld   hl, $7f11                                   ; $5355: $21 $11 $7f
	cp   $ef                                         ; $5358: $fe $ef
	rst  $38                                         ; $535a: $ff
	push bc                                          ; $535b: $c5
	ld   b, h                                        ; $535c: $44
	sbc  h                                           ; $535d: $9c
	jp   z, $1141                                    ; $535e: $ca $41 $11

	ld   [de], a                                     ; $5361: $12
	rst  $38                                         ; $5362: $ff
	rst  $38                                         ; $5363: $ff
	call $31fb                                       ; $5364: $cd $fb $31
	ld   de, $ff1c                                   ; $5367: $11 $1c $ff
	db   $ed                                         ; $536a: $ed
	rst  $38                                         ; $536b: $ff
	rst  $30                                         ; $536c: $f7
	ld   de, $af13                                   ; $536d: $11 $13 $af
	cp   $ff                                         ; $5370: $fe $ff
	rst  $38                                         ; $5372: $ff
	sub  l                                           ; $5373: $95
	ld   b, l                                        ; $5374: $45
	xor  l                                           ; $5375: $ad
	rst  ToBoot                                         ; $5376: $c7
	ld   de, $1f11                                   ; $5377: $11 $11 $1f
	rst  $38                                         ; $537a: $ff
	db   $fd                                         ; $537b: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $537c: $cf
	push hl                                          ; $537d: $e5
	ld   de, $8f11                                   ; $537e: $11 $11 $8f
	rst  $38                                         ; $5381: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5382: $cf
	rst  $38                                         ; $5383: $ff
	or   c                                           ; $5384: $b1
	ld   de, $ff27                                   ; $5385: $11 $27 $ff
	rst  $38                                         ; $5388: $ff
	rst  $38                                         ; $5389: $ff
	ei                                               ; $538a: $fb
	ld   d, l                                        ; $538b: $55
	ld   e, c                                        ; $538c: $59
	cp   e                                           ; $538d: $bb
	add  c                                           ; $538e: $81
	ld   de, rAUD1LEN                                   ; $538f: $11 $11 $ff
	rst  $38                                         ; $5392: $ff
	db   $eb                                         ; $5393: $eb
	rst  $38                                         ; $5394: $ff
	ld   h, c                                        ; $5395: $61
	ld   de, $ff16                                   ; $5396: $11 $16 $ff
	db   $fc                                         ; $5399: $fc
	rst  $38                                         ; $539a: $ff
	db   $fc                                         ; $539b: $fc
	ld   sp, $6e11                                   ; $539c: $31 $11 $6e
	cp   $ef                                         ; $539f: $fe $ef
	rst  $38                                         ; $53a1: $ff
	sub  $55                                         ; $53a2: $d6 $55
	sbc  e                                           ; $53a4: $9b
	cp   b                                           ; $53a5: $b8
	ld   bc, $1d11                                   ; $53a6: $01 $11 $1d
	rst  $38                                         ; $53a9: $ff
	rst  $38                                         ; $53aa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ab: $cf
	rst  $30                                         ; $53ac: $f7
	ld   de, $4f11                                   ; $53ad: $11 $11 $4f
	rst  $38                                         ; $53b0: $ff
	rst  JumpTable                                         ; $53b1: $df
	rst  $38                                         ; $53b2: $ff
	db   $e3                                         ; $53b3: $e3
	ld   de, $bf14                                   ; $53b4: $11 $14 $bf
	rst  $28                                         ; $53b7: $ef
	rst  $38                                         ; $53b8: $ff
	cp   $76                                         ; $53b9: $fe $76
	ld   d, [hl]                                     ; $53bb: $56
	xor  c                                           ; $53bc: $a9
	ld   [hl], c                                     ; $53bd: $71
	ld   de, $ef11                                   ; $53be: $11 $11 $ef
	rst  $38                                         ; $53c1: $ff
	db   $eb                                         ; $53c2: $eb
	rst  $38                                         ; $53c3: $ff
	ld   [hl], c                                     ; $53c4: $71
	ld   de, $ee14                                   ; $53c5: $11 $14 $ee
	db   $fd                                         ; $53c8: $fd
	rst  $38                                         ; $53c9: $ff
	cp   $31                                         ; $53ca: $fe $31
	ld   de, $eb4a                                   ; $53cc: $11 $4a $eb
	rst  $38                                         ; $53cf: $ff
	rst  $38                                         ; $53d0: $ff
	rst  $20                                         ; $53d1: $e7
	halt                                             ; $53d2: $76
	ld   l, c                                        ; $53d3: $69
	add  l                                           ; $53d4: $85
	ld   de, $1f11                                   ; $53d5: $11 $11 $1f
	rst  $38                                         ; $53d8: $ff
	db   $fc                                         ; $53d9: $fc
	rst  JumpTable                                         ; $53da: $df
	or   $11                                         ; $53db: $f6 $11
	ld   de, $dd5d                                   ; $53dd: $11 $5d $dd
	rst  JumpTable                                         ; $53e0: $df
	rst  $38                                         ; $53e1: $ff
	jp   nc, $2411                                   ; $53e2: $d2 $11 $24

	xor  d                                           ; $53e5: $aa
	xor  a                                           ; $53e6: $af
	rst  $38                                         ; $53e7: $ff
	cp   $77                                         ; $53e8: $fe $77
	ld   h, a                                        ; $53ea: $67
	sub  l                                           ; $53eb: $95
	ld   hl, $1111                                   ; $53ec: $21 $11 $11
	rst  $38                                         ; $53ef: $ff
	rst  $38                                         ; $53f0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53f1: $cf
	db   $fd                                         ; $53f2: $fd
	ld   b, c                                        ; $53f3: $41
	ld   de, $bc15                                   ; $53f4: $11 $15 $bc
	sbc  $ff                                         ; $53f7: $de $ff
	db   $fd                                         ; $53f9: $fd
	ld   hl, $4911                                   ; $53fa: $21 $11 $49
	ld   a, d                                        ; $53fd: $7a
	rst  $38                                         ; $53fe: $ff
	rst  $38                                         ; $53ff: $ff
	jp   hl                                          ; $5400: $e9


	sub  [hl]                                        ; $5401: $96
	add  [hl]                                        ; $5402: $86
	ld   b, c                                        ; $5403: $41
	ld   de, $4f11                                   ; $5404: $11 $11 $4f
	rst  $38                                         ; $5407: $ff
	db   $fc                                         ; $5408: $fc
	rst  $38                                         ; $5409: $ff
	and  e                                           ; $540a: $a3
	ld   de, $6911                                   ; $540b: $11 $11 $69
	cp   h                                           ; $540e: $bc
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff

Call_0f4_5411:
	and  e                                           ; $5411: $a3
	ld   de, $8415                                   ; $5412: $11 $15 $84
	cp   a                                           ; $5415: $bf
	rst  $38                                         ; $5416: $ff
	db   $fc                                         ; $5417: $fc
	cp   c                                           ; $5418: $b9
	ld   l, b                                        ; $5419: $68
	ld   b, c                                        ; $541a: $41
	ld   de, $1d11                                   ; $541b: $11 $11 $1d
	rst  $38                                         ; $541e: $ff
	rst  $38                                         ; $541f: $ff
	rst  $38                                         ; $5420: $ff
	ld   sp, hl                                      ; $5421: $f9
	ld   de, $1611                                   ; $5422: $11 $11 $16
	ld   l, c                                        ; $5425: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5426: $cf
	rst  $38                                         ; $5427: $ff
	ld   sp, hl                                      ; $5428: $f9
	ld   h, e                                        ; $5429: $63
	inc  sp                                          ; $542a: $33
	ld   b, d                                        ; $542b: $42
	ld   e, h                                        ; $542c: $5c
	rst  $38                                         ; $542d: $ff
	rst  $38                                         ; $542e: $ff
	db   $ed                                         ; $542f: $ed
	xor  c                                           ; $5430: $a9
	ld   d, c                                        ; $5431: $51
	ld   de, $1311                                   ; $5432: $11 $11 $13
	rst  $38                                         ; $5435: $ff
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	db   $fd                                         ; $5438: $fd
	ld   h, c                                        ; $5439: $61
	ld   de, $3411                                   ; $543a: $11 $11 $34
	adc  a                                           ; $543d: $8f
	rst  $38                                         ; $543e: $ff
	rst  $38                                         ; $543f: $ff
	xor  c                                           ; $5440: $a9
	ld   [hl], l                                     ; $5441: $75
	ld   d, c                                        ; $5442: $51
	rla                                              ; $5443: $17
	xor  a                                           ; $5444: $af
	rst  $38                                         ; $5445: $ff
	xor  $da                                         ; $5446: $ee $da
	ld   [hl], c                                     ; $5448: $71
	ld   de, $1a11                                   ; $5449: $11 $11 $1a
	rst  $28                                         ; $544c: $ef
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	db   $fd                                         ; $544f: $fd
	ld   b, c                                        ; $5450: $41
	ld   de, $1211                                   ; $5451: $11 $11 $12
	sbc  a                                           ; $5454: $9f
	rst  $38                                         ; $5455: $ff
	rst  $38                                         ; $5456: $ff
	rst  $38                                         ; $5457: $ff
	cp   b                                           ; $5458: $b8
	ld   d, c                                        ; $5459: $51
	ld   b, [hl]                                     ; $545a: $46
	sbc  e                                           ; $545b: $9b
	set  1, h                                        ; $545c: $cb $cc
	sub  [hl]                                        ; $545e: $96
	ld   de, $1911                                   ; $545f: $11 $11 $19
	ld   a, l                                        ; $5462: $7d
	db   $ec                                         ; $5463: $ec
	rst  $38                                         ; $5464: $ff
	cp   $91                                         ; $5465: $fe $91
	ld   b, e                                        ; $5467: $43
	ld   de, $6d11                                   ; $5468: $11 $11 $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $546b: $cf
	rst  $38                                         ; $546c: $ff
	rst  $38                                         ; $546d: $ff
	db   $fd                                         ; $546e: $fd
	sub  [hl]                                        ; $546f: $96
	add  a                                           ; $5470: $87
	ld   a, b                                        ; $5471: $78
	ld   [hl], a                                     ; $5472: $77
	xor  c                                           ; $5473: $a9
	ld   h, d                                        ; $5474: $62
	ld   de, $bb11                                   ; $5475: $11 $11 $bb
	xor  e                                           ; $5478: $ab
	sbc  a                                           ; $5479: $9f
	rst  $38                                         ; $547a: $ff
	add  sp, $36                                     ; $547b: $e8 $36
	ld   [hl], d                                     ; $547d: $72
	ld   de, wNameReplacementCharToReplace                                   ; $547e: $11 $14 $cb
	cp   l                                           ; $5481: $bd
	rst  JumpTable                                         ; $5482: $df
	rst  $38                                         ; $5483: $ff
	call c, $988b                                    ; $5484: $dc $8b $98
	add  a                                           ; $5487: $87
	adc  c                                           ; $5488: $89
	and  a                                           ; $5489: $a7
	ld   h, c                                        ; $548a: $61
	ld   de, $7a11                                   ; $548b: $11 $11 $7a
	sbc  h                                           ; $548e: $9c
	adc  a                                           ; $548f: $8f
	rst  $38                                         ; $5490: $ff
	db   $fc                                         ; $5491: $fc
	ld   h, a                                        ; $5492: $67
	and  e                                           ; $5493: $a3
	ld   de, $9811                                   ; $5494: $11 $11 $98
	sbc  e                                           ; $5497: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5498: $cf
	rst  $38                                         ; $5499: $ff
	cp   $bd                                         ; $549a: $fe $bd
	ret  z                                           ; $549c: $c8

	add  a                                           ; $549d: $87
	ld   l, b                                        ; $549e: $68
	add  l                                           ; $549f: $85
	ld   d, d                                        ; $54a0: $52
	ld   de, $6911                                   ; $54a1: $11 $11 $69
	ld   a, d                                        ; $54a4: $7a
	ld   a, l                                        ; $54a5: $7d
	rst  $38                                         ; $54a6: $ff
	db   $fc                                         ; $54a7: $fc
	adc  b                                           ; $54a8: $88
	or   [hl]                                        ; $54a9: $b6
	ld   sp, $6611                                   ; $54aa: $31 $11 $66
	ld   e, c                                        ; $54ad: $59
	adc  a                                           ; $54ae: $8f
	rst  $38                                         ; $54af: $ff
	rst  $38                                         ; $54b0: $ff
	rst  $28                                         ; $54b1: $ef
	ei                                               ; $54b2: $fb
	and  a                                           ; $54b3: $a7
	ld   [hl], a                                     ; $54b4: $77
	ld   [hl], l                                     ; $54b5: $75
	ld   b, c                                        ; $54b6: $41
	ld   de, $4811                                   ; $54b7: $11 $11 $48
	ld   l, e                                        ; $54ba: $6b
	ld   a, h                                        ; $54bb: $7c
	rst  $38                                         ; $54bc: $ff
	cp   $98                                         ; $54bd: $fe $98
	ret  c                                           ; $54bf: $d8

	ld   d, c                                        ; $54c0: $51
	ld   de, $3665                                   ; $54c1: $11 $65 $36
	ld   e, e                                        ; $54c4: $5b
	rst  $28                                         ; $54c5: $ef
	rst  $28                                         ; $54c6: $ef
	rst  $38                                         ; $54c7: $ff
	db   $fd                                         ; $54c8: $fd
	ld   [$8598], a                                  ; $54c9: $ea $98 $85
	ld   b, d                                        ; $54cc: $42
	ld   de, $1611                                   ; $54cd: $11 $11 $16
	ld   e, b                                        ; $54d0: $58
	halt                                             ; $54d1: $76
	rst  $28                                         ; $54d2: $ef
	rst  $38                                         ; $54d3: $ff
	jp   hl                                          ; $54d4: $e9


	db   $dd                                         ; $54d5: $dd
	sub  a                                           ; $54d6: $97
	ld   hl, $4547                                   ; $54d7: $21 $47 $45
	inc  [hl]                                        ; $54da: $34
	adc  e                                           ; $54db: $8b
	call z, $ffcc                                    ; $54dc: $cc $cc $ff
	cp   $cb                                         ; $54df: $fe $cb
	xor  c                                           ; $54e1: $a9
	ld   h, [hl]                                     ; $54e2: $66
	ld   hl, $1111                                   ; $54e3: $21 $11 $11
	ld   b, e                                        ; $54e6: $43
	ld   h, l                                        ; $54e7: $65
	ld   c, c                                        ; $54e8: $49
	cp   h                                           ; $54e9: $bc
	cp   e                                           ; $54ea: $bb
	sbc  d                                           ; $54eb: $9a
	set  1, c                                        ; $54ec: $cb $c9
	adc  b                                           ; $54ee: $88
	sbc  c                                           ; $54ef: $99
	add  a                                           ; $54f0: $87
	ld   h, a                                        ; $54f1: $67
	ld   h, a                                        ; $54f2: $67
	ld   h, a                                        ; $54f3: $67
	ld   a, b                                        ; $54f4: $78
	xor  c                                           ; $54f5: $a9
	cp   d                                           ; $54f6: $ba
	xor  d                                           ; $54f7: $aa
	cp   e                                           ; $54f8: $bb
	cp   e                                           ; $54f9: $bb
	xor  e                                           ; $54fa: $ab
	xor  b                                           ; $54fb: $a8
	ld   [hl], a                                     ; $54fc: $77
	ld   d, l                                        ; $54fd: $55
	ld   b, h                                        ; $54fe: $44
	inc  sp                                          ; $54ff: $33
	inc  sp                                          ; $5500: $33
	inc  sp                                          ; $5501: $33
	ld   b, l                                        ; $5502: $45
	ld   h, a                                        ; $5503: $67
	adc  c                                           ; $5504: $89
	xor  e                                           ; $5505: $ab
	cp   e                                           ; $5506: $bb
	call z, $a9aa                                    ; $5507: $cc $aa $a9
	sbc  c                                           ; $550a: $99
	adc  c                                           ; $550b: $89
	adc  b                                           ; $550c: $88
	sbc  c                                           ; $550d: $99
	xor  d                                           ; $550e: $aa
	xor  d                                           ; $550f: $aa
	xor  e                                           ; $5510: $ab
	xor  c                                           ; $5511: $a9
	sbc  b                                           ; $5512: $98
	ld   [hl], a                                     ; $5513: $77
	ld   h, l                                        ; $5514: $65
	ld   b, e                                        ; $5515: $43
	inc  sp                                          ; $5516: $33
	inc  [hl]                                        ; $5517: $34
	ld   b, h                                        ; $5518: $44
	ld   d, [hl]                                     ; $5519: $56
	ld   a, c                                        ; $551a: $79
	sbc  d                                           ; $551b: $9a
	xor  e                                           ; $551c: $ab
	cp   e                                           ; $551d: $bb
	xor  d                                           ; $551e: $aa
	xor  d                                           ; $551f: $aa
	xor  d                                           ; $5520: $aa
	sbc  b                                           ; $5521: $98
	adc  b                                           ; $5522: $88
	adc  c                                           ; $5523: $89
	xor  d                                           ; $5524: $aa
	xor  c                                           ; $5525: $a9
	xor  d                                           ; $5526: $aa
	cp   e                                           ; $5527: $bb
	xor  d                                           ; $5528: $aa
	sbc  c                                           ; $5529: $99
	sbc  b                                           ; $552a: $98
	halt                                             ; $552b: $76
	ld   d, h                                        ; $552c: $54
	ld   b, e                                        ; $552d: $43
	inc  sp                                          ; $552e: $33
	ld   b, h                                        ; $552f: $44
	ld   d, l                                        ; $5530: $55
	ld   h, a                                        ; $5531: $67
	sbc  c                                           ; $5532: $99
	xor  d                                           ; $5533: $aa
	xor  e                                           ; $5534: $ab
	xor  d                                           ; $5535: $aa
	xor  c                                           ; $5536: $a9
	xor  c                                           ; $5537: $a9
	sbc  b                                           ; $5538: $98
	sbc  c                                           ; $5539: $99
	adc  c                                           ; $553a: $89
	sbc  c                                           ; $553b: $99
	sbc  d                                           ; $553c: $9a
	sbc  d                                           ; $553d: $9a
	xor  d                                           ; $553e: $aa
	xor  d                                           ; $553f: $aa
	xor  d                                           ; $5540: $aa
	sbc  c                                           ; $5541: $99
	add  a                                           ; $5542: $87
	halt                                             ; $5543: $76
	ld   d, h                                        ; $5544: $54
	inc  sp                                          ; $5545: $33
	inc  sp                                          ; $5546: $33
	ld   b, h                                        ; $5547: $44
	ld   d, [hl]                                     ; $5548: $56
	ld   a, c                                        ; $5549: $79
	sbc  d                                           ; $554a: $9a
	xor  c                                           ; $554b: $a9
	xor  e                                           ; $554c: $ab
	cp   d                                           ; $554d: $ba
	xor  c                                           ; $554e: $a9
	sbc  c                                           ; $554f: $99
	sbc  c                                           ; $5550: $99
	sbc  b                                           ; $5551: $98
	sbc  c                                           ; $5552: $99
	sbc  c                                           ; $5553: $99
	sbc  c                                           ; $5554: $99
	xor  d                                           ; $5555: $aa
	xor  d                                           ; $5556: $aa
	xor  d                                           ; $5557: $aa
	cp   e                                           ; $5558: $bb
	xor  c                                           ; $5559: $a9
	sub  a                                           ; $555a: $97
	halt                                             ; $555b: $76
	ld   d, h                                        ; $555c: $54
	inc  sp                                          ; $555d: $33
	inc  [hl]                                        ; $555e: $34
	ld   b, l                                        ; $555f: $45
	ld   d, [hl]                                     ; $5560: $56
	ld   a, b                                        ; $5561: $78
	sbc  d                                           ; $5562: $9a
	xor  d                                           ; $5563: $aa
	xor  d                                           ; $5564: $aa
	xor  d                                           ; $5565: $aa
	sbc  d                                           ; $5566: $9a
	xor  d                                           ; $5567: $aa
	sbc  c                                           ; $5568: $99
	sbc  b                                           ; $5569: $98
	adc  b                                           ; $556a: $88
	adc  c                                           ; $556b: $89
	sbc  c                                           ; $556c: $99
	sbc  c                                           ; $556d: $99
	xor  e                                           ; $556e: $ab
	cp   e                                           ; $556f: $bb
	xor  d                                           ; $5570: $aa
	cp   c                                           ; $5571: $b9
	adc  b                                           ; $5572: $88
	halt                                             ; $5573: $76
	ld   d, l                                        ; $5574: $55
	ld   b, e                                        ; $5575: $43
	inc  [hl]                                        ; $5576: $34
	ld   b, l                                        ; $5577: $45
	ld   d, l                                        ; $5578: $55
	ld   h, a                                        ; $5579: $67
	sbc  c                                           ; $557a: $99
	sbc  c                                           ; $557b: $99
	sbc  d                                           ; $557c: $9a
	cp   e                                           ; $557d: $bb
	xor  d                                           ; $557e: $aa
	sbc  c                                           ; $557f: $99
	sbc  c                                           ; $5580: $99
	sbc  c                                           ; $5581: $99
	adc  b                                           ; $5582: $88
	adc  c                                           ; $5583: $89
	sbc  d                                           ; $5584: $9a
	xor  c                                           ; $5585: $a9
	xor  d                                           ; $5586: $aa
	cp   d                                           ; $5587: $ba
	cp   e                                           ; $5588: $bb
	xor  d                                           ; $5589: $aa
	xor  b                                           ; $558a: $a8
	halt                                             ; $558b: $76
	ld   h, l                                        ; $558c: $65
	ld   b, h                                        ; $558d: $44
	inc  sp                                          ; $558e: $33
	inc  [hl]                                        ; $558f: $34
	ld   d, l                                        ; $5590: $55
	ld   h, a                                        ; $5591: $67
	adc  b                                           ; $5592: $88
	sbc  d                                           ; $5593: $9a
	xor  c                                           ; $5594: $a9
	sbc  d                                           ; $5595: $9a
	xor  d                                           ; $5596: $aa
	sbc  b                                           ; $5597: $98
	adc  c                                           ; $5598: $89
	sbc  b                                           ; $5599: $98
	adc  c                                           ; $559a: $89
	sbc  d                                           ; $559b: $9a
	xor  d                                           ; $559c: $aa
	xor  d                                           ; $559d: $aa
	xor  d                                           ; $559e: $aa
	cp   e                                           ; $559f: $bb
	xor  e                                           ; $55a0: $ab
	xor  d                                           ; $55a1: $aa
	xor  c                                           ; $55a2: $a9
	halt                                             ; $55a3: $76
	ld   d, h                                        ; $55a4: $54
	ld   b, e                                        ; $55a5: $43
	inc  sp                                          ; $55a6: $33

Call_0f4_55a7:
	inc  [hl]                                        ; $55a7: $34
	ld   d, [hl]                                     ; $55a8: $56
	ld   h, a                                        ; $55a9: $67
	adc  c                                           ; $55aa: $89
	sbc  c                                           ; $55ab: $99
	sbc  d                                           ; $55ac: $9a
	xor  d                                           ; $55ad: $aa
	xor  c                                           ; $55ae: $a9
	sbc  c                                           ; $55af: $99
	adc  c                                           ; $55b0: $89
	adc  b                                           ; $55b1: $88
	sbc  c                                           ; $55b2: $99
	adc  d                                           ; $55b3: $8a
	xor  d                                           ; $55b4: $aa
	xor  d                                           ; $55b5: $aa
	xor  e                                           ; $55b6: $ab

Call_0f4_55b7:
	res  7, e                                        ; $55b7: $cb $bb
	xor  c                                           ; $55b9: $a9
	sbc  b                                           ; $55ba: $98
	ld   h, l                                        ; $55bb: $65
	ld   b, h                                        ; $55bc: $44
	inc  sp                                          ; $55bd: $33
	inc  sp                                          ; $55be: $33
	inc  [hl]                                        ; $55bf: $34
	ld   h, [hl]                                     ; $55c0: $66
	ld   [hl], a                                     ; $55c1: $77
	ld   a, c                                        ; $55c2: $79
	sbc  c                                           ; $55c3: $99
	xor  c                                           ; $55c4: $a9
	sbc  c                                           ; $55c5: $99
	xor  d                                           ; $55c6: $aa
	sbc  c                                           ; $55c7: $99
	adc  b                                           ; $55c8: $88
	sbc  c                                           ; $55c9: $99
	sbc  c                                           ; $55ca: $99
	sbc  d                                           ; $55cb: $9a
	xor  d                                           ; $55cc: $aa
	xor  e                                           ; $55cd: $ab
	cp   h                                           ; $55ce: $bc
	res  5, d                                        ; $55cf: $cb $aa
	sbc  c                                           ; $55d1: $99
	sub  a                                           ; $55d2: $97
	ld   h, l                                        ; $55d3: $65
	inc  sp                                          ; $55d4: $33
	ld   [hl+], a                                    ; $55d5: $22
	ld   [hl+], a                                    ; $55d6: $22
	dec  [hl]                                        ; $55d7: $35
	ld   h, [hl]                                     ; $55d8: $66
	ld   [hl], a                                     ; $55d9: $77
	adc  c                                           ; $55da: $89
	sbc  d                                           ; $55db: $9a
	sbc  d                                           ; $55dc: $9a
	sbc  d                                           ; $55dd: $9a
	xor  c                                           ; $55de: $a9
	sbc  c                                           ; $55df: $99
	adc  c                                           ; $55e0: $89
	adc  c                                           ; $55e1: $89
	xor  d                                           ; $55e2: $aa
	xor  h                                           ; $55e3: $ac
	call z, $bccc                                    ; $55e4: $cc $cc $bc
	xor  b                                           ; $55e7: $a8
	ld   [hl], l                                     ; $55e8: $75
	ld   [hl-], a                                    ; $55e9: $32
	ld   hl, $2311                                   ; $55ea: $21 $11 $23
	ld   b, l                                        ; $55ed: $45
	ld   h, [hl]                                     ; $55ee: $66
	ld   a, b                                        ; $55ef: $78
	sbc  c                                           ; $55f0: $99
	xor  c                                           ; $55f1: $a9
	sbc  d                                           ; $55f2: $9a
	xor  d                                           ; $55f3: $aa
	xor  c                                           ; $55f4: $a9
	sbc  c                                           ; $55f5: $99
	adc  b                                           ; $55f6: $88
	sbc  c                                           ; $55f7: $99
	xor  e                                           ; $55f8: $ab
	cp   l                                           ; $55f9: $bd
	call z, $bbcc                                    ; $55fa: $cc $cc $bb
	add  [hl]                                        ; $55fd: $86
	ld   b, e                                        ; $55fe: $43
	ld   [hl+], a                                    ; $55ff: $22
	ld   de, $3412                                   ; $5600: $11 $12 $34
	ld   d, [hl]                                     ; $5603: $56
	ld   h, a                                        ; $5604: $67
	adc  c                                           ; $5605: $89
	xor  d                                           ; $5606: $aa
	sbc  c                                           ; $5607: $99
	xor  e                                           ; $5608: $ab
	cp   d                                           ; $5609: $ba
	xor  b                                           ; $560a: $a8
	adc  c                                           ; $560b: $89
	xor  c                                           ; $560c: $a9
	xor  e                                           ; $560d: $ab
	cp   h                                           ; $560e: $bc
	call c, $cbcd                                    ; $560f: $dc $cd $cb
	add  a                                           ; $5612: $87
	ld   d, e                                        ; $5613: $53
	ld   [hl+], a                                    ; $5614: $22
	ld   de, $3412                                   ; $5615: $11 $12 $34
	ld   d, [hl]                                     ; $5618: $56
	ld   h, a                                        ; $5619: $67
	adc  c                                           ; $561a: $89
	xor  d                                           ; $561b: $aa
	xor  c                                           ; $561c: $a9
	sbc  d                                           ; $561d: $9a
	cp   d                                           ; $561e: $ba
	sbc  c                                           ; $561f: $99
	sbc  c                                           ; $5620: $99
	xor  e                                           ; $5621: $ab
	xor  e                                           ; $5622: $ab
	call z, $cccd                                    ; $5623: $cc $cd $cc
	cp   c                                           ; $5626: $b9
	add  [hl]                                        ; $5627: $86
	ld   b, d                                        ; $5628: $42
	ld   de, $1211                                   ; $5629: $11 $11 $12
	ld   b, l                                        ; $562c: $45
	ld   h, [hl]                                     ; $562d: $66
	ld   [hl], a                                     ; $562e: $77
	sbc  d                                           ; $562f: $9a
	xor  d                                           ; $5630: $aa
	xor  c                                           ; $5631: $a9
	sbc  e                                           ; $5632: $9b
	cp   d                                           ; $5633: $ba
	sbc  d                                           ; $5634: $9a
	sbc  c                                           ; $5635: $99
	cp   e                                           ; $5636: $bb
	call z, $ddcd                                    ; $5637: $cc $cd $dd
	res  5, c                                        ; $563a: $cb $a9
	ld   h, h                                        ; $563c: $64
	ld   [hl-], a                                    ; $563d: $32
	ld   de, $2311                                   ; $563e: $11 $11 $23
	ld   b, l                                        ; $5641: $45
	ld   h, [hl]                                     ; $5642: $66
	ld   a, b                                        ; $5643: $78
	sbc  d                                           ; $5644: $9a
	xor  d                                           ; $5645: $aa
	xor  d                                           ; $5646: $aa
	cp   d                                           ; $5647: $ba
	xor  d                                           ; $5648: $aa
	xor  c                                           ; $5649: $a9
	xor  d                                           ; $564a: $aa
	cp   h                                           ; $564b: $bc
	cp   h                                           ; $564c: $bc
	call c, $b9dd                                    ; $564d: $dc $dd $b9
	add  l                                           ; $5650: $85
	ld   b, d                                        ; $5651: $42
	ld   de, $1211                                   ; $5652: $11 $11 $12
	dec  [hl]                                        ; $5655: $35
	ld   d, [hl]                                     ; $5656: $56
	ld   h, [hl]                                     ; $5657: $66
	adc  c                                           ; $5658: $89
	sbc  c                                           ; $5659: $99
	sbc  d                                           ; $565a: $9a
	xor  e                                           ; $565b: $ab
	cp   e                                           ; $565c: $bb
	xor  e                                           ; $565d: $ab
	xor  e                                           ; $565e: $ab
	cp   h                                           ; $565f: $bc
	call z, $dccd                                    ; $5660: $cc $cd $dc
	db   $db                                         ; $5663: $db
	add  [hl]                                        ; $5664: $86
	ld   b, e                                        ; $5665: $43
	ld   hl, $1111                                   ; $5666: $21 $11 $11
	inc  [hl]                                        ; $5669: $34
	ld   d, [hl]                                     ; $566a: $56
	ld   h, [hl]                                     ; $566b: $66
	ld   a, c                                        ; $566c: $79
	sbc  d                                           ; $566d: $9a
	xor  d                                           ; $566e: $aa
	xor  d                                           ; $566f: $aa
	cp   e                                           ; $5670: $bb
	cp   e                                           ; $5671: $bb
	cp   d                                           ; $5672: $ba
	cp   e                                           ; $5673: $bb
	db   $dd                                         ; $5674: $dd
	call z, $dbcd                                    ; $5675: $cc $cd $db
	sub  a                                           ; $5678: $97
	ld   b, e                                        ; $5679: $43
	ld   hl, $1111                                   ; $567a: $21 $11 $11
	inc  [hl]                                        ; $567d: $34
	ld   h, [hl]                                     ; $567e: $66
	ld   h, [hl]                                     ; $567f: $66
	ld   a, c                                        ; $5680: $79
	xor  c                                           ; $5681: $a9
	sbc  d                                           ; $5682: $9a
	sbc  c                                           ; $5683: $99
	xor  h                                           ; $5684: $ac
	res  5, e                                        ; $5685: $cb $ab
	cp   e                                           ; $5687: $bb
	call c, $cccc                                    ; $5688: $dc $cc $cc
	res  0, [hl]                                     ; $568b: $cb $86
	ld   b, d                                        ; $568d: $42
	ld   hl, $0111                                   ; $568e: $21 $11 $01
	dec  [hl]                                        ; $5691: $35
	ld   h, [hl]                                     ; $5692: $66
	ld   h, [hl]                                     ; $5693: $66
	ld   a, c                                        ; $5694: $79
	xor  c                                           ; $5695: $a9
	sbc  c                                           ; $5696: $99
	sbc  d                                           ; $5697: $9a
	cp   e                                           ; $5698: $bb
	cp   h                                           ; $5699: $bc
	cp   d                                           ; $569a: $ba
	cp   h                                           ; $569b: $bc
	call $cccd                                       ; $569c: $cd $cd $cc
	cp   d                                           ; $569f: $ba
	ld   [hl], l                                     ; $56a0: $75
	ld   [hl-], a                                    ; $56a1: $32
	ld   de, $1211                                   ; $56a2: $11 $11 $12
	ld   b, [hl]                                     ; $56a5: $46
	ld   [hl], a                                     ; $56a6: $77
	ld   [hl], a                                     ; $56a7: $77
	adc  c                                           ; $56a8: $89
	xor  c                                           ; $56a9: $a9
	xor  c                                           ; $56aa: $a9
	xor  d                                           ; $56ab: $aa
	res  7, e                                        ; $56ac: $cb $bb
	cp   e                                           ; $56ae: $bb
	cp   h                                           ; $56af: $bc
	db   $dd                                         ; $56b0: $dd
	call c, $97ca                                    ; $56b1: $dc $ca $97
	ld   d, e                                        ; $56b4: $53
	ld   hl, $1211                                   ; $56b5: $21 $11 $12
	inc  [hl]                                        ; $56b8: $34
	ld   h, a                                        ; $56b9: $67
	ld   [hl], a                                     ; $56ba: $77
	adc  b                                           ; $56bb: $88
	sbc  c                                           ; $56bc: $99
	xor  c                                           ; $56bd: $a9
	xor  c                                           ; $56be: $a9
	cp   e                                           ; $56bf: $bb
	cp   e                                           ; $56c0: $bb
	cp   e                                           ; $56c1: $bb
	cp   e                                           ; $56c2: $bb
	call c, $bacd                                    ; $56c3: $dc $cd $ba
	xor  b                                           ; $56c6: $a8
	ld   h, h                                        ; $56c7: $64
	ld   [hl-], a                                    ; $56c8: $32
	ld   de, $2411                                   ; $56c9: $11 $11 $24
	ld   d, a                                        ; $56cc: $57
	ld   [hl], a                                     ; $56cd: $77
	adc  c                                           ; $56ce: $89
	sbc  c                                           ; $56cf: $99
	xor  d                                           ; $56d0: $aa
	sbc  d                                           ; $56d1: $9a
	cp   e                                           ; $56d2: $bb
	cp   h                                           ; $56d3: $bc
	cp   e                                           ; $56d4: $bb
	cp   h                                           ; $56d5: $bc
	call $cadc                                       ; $56d6: $cd $dc $ca
	add  a                                           ; $56d9: $87
	ld   d, h                                        ; $56da: $54
	inc  sp                                          ; $56db: $33
	ld   hl, $2411                                   ; $56dc: $21 $11 $24
	ld   h, a                                        ; $56df: $67
	ld   [hl], a                                     ; $56e0: $77
	adc  c                                           ; $56e1: $89
	sbc  d                                           ; $56e2: $9a
	cp   e                                           ; $56e3: $bb
	xor  d                                           ; $56e4: $aa
	cp   e                                           ; $56e5: $bb
	set  1, e                                        ; $56e6: $cb $cb
	call z, $dddc                                    ; $56e8: $cc $dc $dd
	sub  [hl]                                        ; $56eb: $96
	ld   sp, $5413                                   ; $56ec: $31 $13 $54
	ld   b, d                                        ; $56ef: $42
	dec  h                                           ; $56f0: $25
	ld   a, d                                        ; $56f1: $7a
	xor  c                                           ; $56f2: $a9
	ld   h, a                                        ; $56f3: $67
	sbc  d                                           ; $56f4: $9a
	jp   z, $9c97                                    ; $56f5: $ca $97 $9c

	db   $ed                                         ; $56f8: $ed
	ret                                              ; $56f9: $c9


	sbc  e                                           ; $56fa: $9b
	rst  $38                                         ; $56fb: $ff
	db   $ec                                         ; $56fc: $ec
	add  l                                           ; $56fd: $85
	ld   de, $1611                                   ; $56fe: $11 $11 $16
	sbc  e                                           ; $5701: $9b
	sub  l                                           ; $5702: $95
	ld   a, d                                        ; $5703: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5704: $cf
	or   a                                           ; $5705: $b7
	ld   [hl], a                                     ; $5706: $77
	sbc  l                                           ; $5707: $9d
	sbc  b                                           ; $5708: $98
	adc  c                                           ; $5709: $89
	cp   [hl]                                        ; $570a: $be
	set  1, h                                        ; $570b: $cb $cc
	rst  $38                                         ; $570d: $ff
	db   $ec                                         ; $570e: $ec
	sub  h                                           ; $570f: $94
	ld   de, $1411                                   ; $5710: $11 $11 $14
	db   $dd                                         ; $5713: $dd
	sub  $48                                         ; $5714: $d6 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5716: $cf
	jp   hl                                          ; $5717: $e9


	ld   d, a                                        ; $5718: $57
	xor  l                                           ; $5719: $ad
	reti                                             ; $571a: $d9


	ld   [hl], a                                     ; $571b: $77
	adc  h                                           ; $571c: $8c
	db   $ec                                         ; $571d: $ec
	xor  $ff                                         ; $571e: $ee $ff
	db   $eb                                         ; $5720: $eb
	ld   [hl], d                                     ; $5721: $72
	ld   de, $1d11                                   ; $5722: $11 $11 $1d
	rst  $38                                         ; $5725: $ff
	and  e                                           ; $5726: $a3
	ld   l, d                                        ; $5727: $6a
	sbc  $a6                                         ; $5728: $de $a6
	ld   a, d                                        ; $572a: $7a
	rst  JumpTable                                         ; $572b: $df
	xor  b                                           ; $572c: $a8
	ld   h, a                                        ; $572d: $67
	xor  [hl]                                        ; $572e: $ae
	rst  JumpTable                                         ; $572f: $df
	db   $fd                                         ; $5730: $fd
	db   $ed                                         ; $5731: $ed
	and  a                                           ; $5732: $a7
	ld   de, $1411                                   ; $5733: $11 $11 $14
	rst  $38                                         ; $5736: $ff
	ld   hl, sp+$16                                  ; $5737: $f8 $16
	sbc  l                                           ; $5739: $9d
	add  sp, $47                                     ; $573a: $e8 $47
	xor  a                                           ; $573c: $af
	ei                                               ; $573d: $fb
	ld   [hl], l                                     ; $573e: $75
	ld   l, d                                        ; $573f: $6a
	rst  $38                                         ; $5740: $ff
	rst  $38                                         ; $5741: $ff
	db   $dd                                         ; $5742: $dd
	reti                                             ; $5743: $d9


	ld   b, c                                        ; $5744: $41
	ld   de, $df11                                   ; $5745: $11 $11 $df
	rst  $38                                         ; $5748: $ff
	ld   sp, $ed6b                                   ; $5749: $31 $6b $ed
	ld   h, l                                        ; $574c: $65
	sbc  h                                           ; $574d: $9c
	cp   $95                                         ; $574e: $fe $95
	ld   b, a                                        ; $5750: $47
	rst  $28                                         ; $5751: $ef
	rst  $38                                         ; $5752: $ff
	db   $eb                                         ; $5753: $eb
	ret                                              ; $5754: $c9


	ld   d, c                                        ; $5755: $51
	ld   de, $ef11                                   ; $5756: $11 $11 $ef
	rst  $38                                         ; $5759: $ff
	ld   sp, $ee4b                                   ; $575a: $31 $4b $ee
	ld   [hl], h                                     ; $575d: $74
	ld   a, e                                        ; $575e: $7b
	rst  $38                                         ; $575f: $ff
	and  h                                           ; $5760: $a4
	dec  [hl]                                        ; $5761: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5762: $cf
	rst  $38                                         ; $5763: $ff
	jp   c, Jump_0f4_5198                            ; $5764: $da $98 $51

	ld   de, rAUD1LEN                                   ; $5767: $11 $11 $ff
	ei                                               ; $576a: $fb
	ld   de, $fd4d                                   ; $576b: $11 $4d $fd
	ld   h, h                                        ; $576e: $64
	ld   a, [hl]                                     ; $576f: $7e
	rst  $38                                         ; $5770: $ff
	sub  d                                           ; $5771: $92
	ld   h, $ff                                      ; $5772: $26 $ff

Jump_0f4_5774:
	rst  $38                                         ; $5774: $ff
	and  a                                           ; $5775: $a7
	ld   h, l                                        ; $5776: $65
	ld   de, $1f11                                   ; $5777: $11 $11 $1f
	rst  $38                                         ; $577a: $ff
	pop  hl                                          ; $577b: $e1
	ld   de, $f8bf                                   ; $577c: $11 $bf $f8
	ld   b, h                                        ; $577f: $44
	xor  a                                           ; $5780: $af
	db   $fc                                         ; $5781: $fc
	ld   b, c                                        ; $5782: $41
	ld   c, l                                        ; $5783: $4d
	rst  $38                                         ; $5784: $ff
	db   $fc                                         ; $5785: $fc
	ld   h, h                                        ; $5786: $64
	ld   sp, $1111                                   ; $5787: $31 $11 $11
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	ld   de, $ff1a                                   ; $578c: $11 $1a $ff
	and  l                                           ; $578f: $a5
	ld   c, e                                        ; $5790: $4b
	rst  $38                                         ; $5791: $ff
	and  e                                           ; $5792: $a3
	dec  d                                           ; $5793: $15
	rst  $38                                         ; $5794: $ff
	rst  $38                                         ; $5795: $ff
	and  h                                           ; $5796: $a4
	ld   hl, $1111                                   ; $5797: $21 $11 $11
	xor  a                                           ; $579a: $af
	rst  $38                                         ; $579b: $ff
	ld   d, c                                        ; $579c: $51
	dec  d                                           ; $579d: $15
	rst  $28                                         ; $579e: $ef
	add  sp, $68                                     ; $579f: $e8 $68
	rst  $38                                         ; $57a1: $ff
	push de                                          ; $57a2: $d5
	inc  de                                          ; $57a3: $13
	cp   a                                           ; $57a4: $bf
	rst  $38                                         ; $57a5: $ff
	call nz, $1111                                   ; $57a6: $c4 $11 $11
	ld   de, $ffcf                                   ; $57a9: $11 $cf $ff
	ld   b, c                                        ; $57ac: $41
	dec  d                                           ; $57ad: $15
	rst  $28                                         ; $57ae: $ef
	ld   a, [$ff79]                                  ; $57af: $fa $79 $ff
	or   h                                           ; $57b2: $b4
	inc  de                                          ; $57b3: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57b4: $cf
	rst  $38                                         ; $57b5: $ff
	or   e                                           ; $57b6: $b3
	ld   de, $1111                                   ; $57b7: $11 $11 $11
	rst  $38                                         ; $57ba: $ff
	rst  $38                                         ; $57bb: $ff
	ld   de, $ff17                                   ; $57bc: $11 $17 $ff
	ld   sp, hl                                      ; $57bf: $f9
	sbc  h                                           ; $57c0: $9c
	cp   $92                                         ; $57c1: $fe $92
	dec  d                                           ; $57c3: $15
	rst  $28                                         ; $57c4: $ef
	rst  $38                                         ; $57c5: $ff
	add  c                                           ; $57c6: $81
	ld   de, $1b11                                   ; $57c7: $11 $11 $1b
	rst  $38                                         ; $57ca: $ff
	push af                                          ; $57cb: $f5
	ld   de, $ff3c                                   ; $57cc: $11 $3c $ff
	cp   c                                           ; $57cf: $b9
	cp   a                                           ; $57d0: $bf
	db   $fc                                         ; $57d1: $fc
	ld   b, c                                        ; $57d2: $41
	dec  sp                                          ; $57d3: $3b
	rst  $38                                         ; $57d4: $ff
	db   $fc                                         ; $57d5: $fc
	ld   hl, $1111                                   ; $57d6: $21 $11 $11
	adc  a                                           ; $57d9: $8f
	rst  $38                                         ; $57da: $ff
	sub  c                                           ; $57db: $91
	ld   de, $febf                                   ; $57dc: $11 $bf $fe
	cp   e                                           ; $57df: $bb
	rst  $28                                         ; $57e0: $ef
	or   l                                           ; $57e1: $b5
	ld   [de], a                                     ; $57e2: $12
	xor  a                                           ; $57e3: $af
	rst  $38                                         ; $57e4: $ff
	jp   nz, $1111                                   ; $57e5: $c2 $11 $11

	dec  e                                           ; $57e8: $1d
	rst  $38                                         ; $57e9: $ff
	db   $f4                                         ; $57ea: $f4
	ld   de, $ff2c                                   ; $57eb: $11 $2c $ff
	call c, $faef                                    ; $57ee: $dc $ef $fa
	ld   sp, $ff4d                                   ; $57f1: $31 $4d $ff
	ld   sp, hl                                      ; $57f4: $f9
	ld   de, $1411                                   ; $57f5: $11 $11 $14
	rst  $38                                         ; $57f8: $ff
	ld   a, [$1811]                                  ; $57f9: $fa $11 $18
	rst  $38                                         ; $57fc: $ff
	db   $fc                                         ; $57fd: $fc
	xor  $fc                                         ; $57fe: $ee $fc
	ld   d, c                                        ; $5800: $51
	add  hl, de                                      ; $5801: $19
	rst  $38                                         ; $5802: $ff
	db   $fd                                         ; $5803: $fd
	ld   de, $1111                                   ; $5804: $11 $11 $11
	rst  $38                                         ; $5807: $ff
	cp   $11                                         ; $5808: $fe $11
	dec  d                                           ; $580a: $15
	rst  $28                                         ; $580b: $ef
	db   $fd                                         ; $580c: $fd
	rst  $28                                         ; $580d: $ef
	db   $fd                                         ; $580e: $fd
	ld   h, c                                        ; $580f: $61
	add  hl, de                                      ; $5810: $19
	rst  $38                                         ; $5811: $ff
	cp   $11                                         ; $5812: $fe $11
	ld   de, rAUD1HIGH                                   ; $5814: $11 $14 $ff
	db   $fc                                         ; $5817: $fc
	ld   de, $ff18                                   ; $5818: $11 $18 $ff
	ei                                               ; $581b: $fb
	rst  $28                                         ; $581c: $ef
	cp   $51                                         ; $581d: $fe $51
	add  hl, de                                      ; $581f: $19
	rst  $38                                         ; $5820: $ff
	db   $fc                                         ; $5821: $fc
	ld   de, $1a11                                   ; $5822: $11 $11 $1a
	rst  $38                                         ; $5825: $ff
	rst  $30                                         ; $5826: $f7
	ld   de, $ff1b                                   ; $5827: $11 $1b $ff
	cp   $ff                                         ; $582a: $fe $ff
	ld   sp, hl                                      ; $582c: $f9
	ld   hl, $ff4f                                   ; $582d: $21 $4f $ff
	push af                                          ; $5830: $f5
	ld   de, $1f11                                   ; $5831: $11 $11 $1f
	rst  $38                                         ; $5834: $ff
	pop  hl                                          ; $5835: $e1
	ld   de, $ff7f                                   ; $5836: $11 $7f $ff
	sbc  $ef                                         ; $5839: $de $ef
	push bc                                          ; $583b: $c5
	inc  de                                          ; $583c: $13
	cp   a                                           ; $583d: $bf
	rst  $38                                         ; $583e: $ff
	sub  c                                           ; $583f: $91
	ld   de, rAUD1LEN                                   ; $5840: $11 $11 $ff
	rst  $38                                         ; $5843: $ff
	ld   de, $ff15                                   ; $5844: $11 $15 $ff
	cp   $dd                                         ; $5847: $fe $dd
	db   $fd                                         ; $5849: $fd
	ld   h, c                                        ; $584a: $61
	inc  a                                           ; $584b: $3c
	rst  $38                                         ; $584c: $ff
	ld   hl, sp+$11                                  ; $584d: $f8 $11
	ld   de, $ff1f                                   ; $584f: $11 $1f $ff
	pop  af                                          ; $5852: $f1
	ld   de, $ff7f                                   ; $5853: $11 $7f $ff
	db   $ec                                         ; $5856: $ec
	cp   [hl]                                        ; $5857: $be
	push bc                                          ; $5858: $c5
	dec  [hl]                                        ; $5859: $35
	rst  JumpTable                                         ; $585a: $df
	rst  $38                                         ; $585b: $ff
	ld   b, c                                        ; $585c: $41
	ld   de, $ff1b                                   ; $585d: $11 $1b $ff
	db   $f4                                         ; $5860: $f4
	ld   de, $ff1f                                   ; $5861: $11 $1f $ff
	ld   a, [$d989]                                  ; $5864: $fa $89 $d9
	ld   h, l                                        ; $5867: $65
	xor  a                                           ; $5868: $af
	rst  $38                                         ; $5869: $ff
	sub  c                                           ; $586a: $91
	ld   de, rAUD1LEN                                   ; $586b: $11 $11 $ff
	cp   $11                                         ; $586e: $fe $11
	rla                                              ; $5870: $17
	rst  $38                                         ; $5871: $ff
	rst  $38                                         ; $5872: $ff
	sub  [hl]                                        ; $5873: $96
	adc  d                                           ; $5874: $8a
	ld   [hl], a                                     ; $5875: $77
	xor  a                                           ; $5876: $af
	rst  $38                                         ; $5877: $ff
	pop  de                                          ; $5878: $d1
	ld   de, rAUD1LEN                                   ; $5879: $11 $11 $ff
	rst  $38                                         ; $587c: $ff
	ld   de, rAUD1LOW                                   ; $587d: $11 $13 $ff
	rst  $38                                         ; $5880: $ff
	sub  h                                           ; $5881: $94
	ld   l, c                                        ; $5882: $69
	adc  c                                           ; $5883: $89
	cp   a                                           ; $5884: $bf
	rst  $38                                         ; $5885: $ff
	pop  bc                                          ; $5886: $c1
	ld   de, rAUD1LEN                                   ; $5887: $11 $11 $ff
	rst  $38                                         ; $588a: $ff

Call_0f4_588b:
	ld   de, rAUD1HIGH                                   ; $588b: $11 $14 $ff
	rst  $38                                         ; $588e: $ff
	add  e                                           ; $588f: $83
	ld   c, b                                        ; $5890: $48
	adc  e                                           ; $5891: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5892: $cf
	rst  $38                                         ; $5893: $ff
	sub  c                                           ; $5894: $91
	ld   de, rAUD1ENV                                   ; $5895: $11 $12 $ff
	ld   sp, hl                                      ; $5898: $f9
	ld   de, $ff1a                                   ; $5899: $11 $1a $ff
	db   $fd                                         ; $589c: $fd
	ld   b, e                                        ; $589d: $43
	ld   e, e                                        ; $589e: $5b
	cp   l                                           ; $589f: $bd
	rst  $28                                         ; $58a0: $ef
	db   $fc                                         ; $58a1: $fc
	ld   b, c                                        ; $58a2: $41
	ld   de, $ff1d                                   ; $58a3: $11 $1d $ff
	pop  af                                          ; $58a6: $f1
	ld   de, $ff1f                                   ; $58a7: $11 $1f $ff
	ld   a, [$4c11]                                  ; $58aa: $fa $11 $4c
	rst  $38                                         ; $58ad: $ff
	rst  $38                                         ; $58ae: $ff
	or   h                                           ; $58af: $b4
	ld   de, $af11                                   ; $58b0: $11 $11 $af
	rst  $38                                         ; $58b3: $ff
	ld   b, c                                        ; $58b4: $41
	ld   de, $ffef                                   ; $58b5: $11 $ef $ff
	pop  de                                          ; $58b8: $d1
	ld   de, $ff9f                                   ; $58b9: $11 $9f $ff
	ei                                               ; $58bc: $fb
	ld   b, c                                        ; $58bd: $41
	ld   de, $ff19                                   ; $58be: $11 $19 $ff
	or   $11                                         ; $58c1: $f6 $11
	ld   e, $ff                                      ; $58c3: $1e $ff
	db   $fc                                         ; $58c5: $fc
	ld   de, $ff1a                                   ; $58c6: $11 $1a $ff
	rst  $38                                         ; $58c9: $ff
	add  c                                           ; $58ca: $81
	ld   de, rAUD1LEN                                   ; $58cb: $11 $11 $ff
	rst  $38                                         ; $58ce: $ff
	ld   de, rAUD1LEN                                   ; $58cf: $11 $11 $ff
	rst  $38                                         ; $58d2: $ff
	sub  c                                           ; $58d3: $91
	inc  de                                          ; $58d4: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58d5: $cf
	rst  $38                                         ; $58d6: $ff
	push bc                                          ; $58d7: $c5
	ld   de, $1f11                                   ; $58d8: $11 $11 $1f
	rst  $38                                         ; $58db: $ff
	pop  hl                                          ; $58dc: $e1
	ld   de, $ff6f                                   ; $58dd: $11 $6f $ff
	ldh  a, [c]                                      ; $58e0: $f2
	ld   de, $ff8f                                   ; $58e1: $11 $8f $ff
	rst  $30                                         ; $58e4: $f7
	ld   de, $1f11                                   ; $58e5: $11 $11 $1f
	rst  $38                                         ; $58e8: $ff
	pop  af                                          ; $58e9: $f1
	ld   de, $ff1f                                   ; $58ea: $11 $1f $ff
	or   $11                                         ; $58ed: $f6 $11
	ld   c, a                                        ; $58ef: $4f
	rst  $38                                         ; $58f0: $ff
	ld   sp, hl                                      ; $58f1: $f9
	ld   de, $1f11                                   ; $58f2: $11 $11 $1f
	rst  $38                                         ; $58f5: $ff
	pop  af                                          ; $58f6: $f1
	ld   de, $ff1f                                   ; $58f7: $11 $1f $ff
	db   $fc                                         ; $58fa: $fc
	ld   de, $ff1b                                   ; $58fb: $11 $1b $ff
	ei                                               ; $58fe: $fb
	ld   de, $1f11                                   ; $58ff: $11 $11 $1f
	rst  $38                                         ; $5902: $ff
	ldh  a, [c]                                      ; $5903: $f2
	ld   de, $ff1f                                   ; $5904: $11 $1f $ff
	ei                                               ; $5907: $fb
	ld   de, $ff2b                                   ; $5908: $11 $2b $ff
	db   $fc                                         ; $590b: $fc
	ld   de, $1f11                                   ; $590c: $11 $11 $1f
	rst  $38                                         ; $590f: $ff
	pop  af                                          ; $5910: $f1
	ld   de, $ff1f                                   ; $5911: $11 $1f $ff
	ld   hl, sp+$11                                  ; $5914: $f8 $11
	ld   c, a                                        ; $5916: $4f
	rst  $38                                         ; $5917: $ff
	rst  $30                                         ; $5918: $f7
	ld   de, $1f11                                   ; $5919: $11 $11 $1f
	rst  $38                                         ; $591c: $ff
	pop  af                                          ; $591d: $f1
	ld   de, $ff3f                                   ; $591e: $11 $3f $ff
	di                                               ; $5921: $f3
	ld   de, $ff8f                                   ; $5922: $11 $8f $ff
	jp   nc, $1111                                   ; $5925: $d2 $11 $11

	rst  JumpTable                                         ; $5928: $df
	rst  $38                                         ; $5929: $ff
	ld   sp, rAUD1LEN                                   ; $592a: $31 $11 $ff
	rst  $38                                         ; $592d: $ff
	and  c                                           ; $592e: $a1
	inc  d                                           ; $592f: $14
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	ld   [hl], c                                     ; $5932: $71
	ld   de, rAUD1ENV                                   ; $5933: $11 $12 $ff
	ei                                               ; $5936: $fb
	ld   de, $ff1a                                   ; $5937: $11 $1a $ff
	rst  $38                                         ; $593a: $ff
	ld   de, $ff1e                                   ; $593b: $11 $1e $ff
	rst  $30                                         ; $593e: $f7
	ld   de, $1f11                                   ; $593f: $11 $11 $1f
	rst  $38                                         ; $5942: $ff
	pop  af                                          ; $5943: $f1
	ld   de, $ff5f                                   ; $5944: $11 $5f $ff
	pop  af                                          ; $5947: $f1
	ld   de, $ffbf                                   ; $5948: $11 $bf $ff
	and  c                                           ; $594b: $a1
	ld   de, rAUD1LEN                                   ; $594c: $11 $11 $ff
	rst  $38                                         ; $594f: $ff
	ld   de, rAUD1LOW                                   ; $5950: $11 $13 $ff
	rst  $38                                         ; $5953: $ff
	ld   de, $ff19                                   ; $5954: $11 $19 $ff
	ld   a, [$1111]                                  ; $5957: $fa $11 $11
	rra                                              ; $595a: $1f
	rst  $38                                         ; $595b: $ff
	pop  af                                          ; $595c: $f1
	ld   de, $ff3f                                   ; $595d: $11 $3f $ff
	pop  af                                          ; $5960: $f1
	ld   de, $ff9f                                   ; $5961: $11 $9f $ff
	pop  bc                                          ; $5964: $c1
	ld   de, rAUD1LEN                                   ; $5965: $11 $11 $ff
	cp   $11                                         ; $5968: $fe $11
	rla                                              ; $596a: $17
	rst  $38                                         ; $596b: $ff
	rst  $38                                         ; $596c: $ff
	ld   de, $ff1a                                   ; $596d: $11 $1a $ff
	ld   hl, sp+$11                                  ; $5970: $f8 $11
	ld   de, $ff9f                                   ; $5972: $11 $9f $ff
	ld   [hl], c                                     ; $5975: $71
	ld   de, $ffdf                                   ; $5976: $11 $df $ff
	pop  de                                          ; $5979: $d1
	ld   de, $ffef                                   ; $597a: $11 $ef $ff
	ld   sp, $1f11                                   ; $597d: $31 $11 $1f
	rst  $38                                         ; $5980: $ff
	pop  af                                          ; $5981: $f1
	ld   de, $ff1f                                   ; $5982: $11 $1f $ff
	push af                                          ; $5985: $f5
	ld   de, $ff4f                                   ; $5986: $11 $4f $ff
	pop  bc                                          ; $5989: $c1
	ld   de, rAUD1LEN                                   ; $598a: $11 $11 $ff
	cp   $11                                         ; $598d: $fe $11
	ld   d, $ff                                      ; $598f: $16 $ff
	rst  $38                                         ; $5991: $ff
	ld   de, $ff19                                   ; $5992: $11 $19 $ff
	or   $11                                         ; $5995: $f6 $11
	ld   de, $ffff                                   ; $5997: $11 $ff $ff
	ld   bc, rAUD1LEN                                   ; $599a: $01 $11 $ff
	rst  $38                                         ; $599d: $ff
	add  c                                           ; $599e: $81
	inc  de                                          ; $599f: $13
	rst  $38                                         ; $59a0: $ff
	ei                                               ; $59a1: $fb
	ld   de, $3f11                                   ; $59a2: $11 $11 $3f
	rst  $38                                         ; $59a5: $ff
	pop  bc                                          ; $59a6: $c1
	ld   de, $ffaf                                   ; $59a7: $11 $af $ff
	pop  af                                          ; $59aa: $f1
	ld   de, $fbcf                                   ; $59ab: $11 $cf $fb
	ld   de, $1f11                                   ; $59ae: $11 $11 $1f
	rst  $38                                         ; $59b1: $ff
	pop  hl                                          ; $59b2: $e1
	ld   de, $ff7f                                   ; $59b3: $11 $7f $ff
	pop  af                                          ; $59b6: $f1
	ld   de, $fdcf                                   ; $59b7: $11 $cf $fd
	ld   de, $1f11                                   ; $59ba: $11 $11 $1f
	rst  $38                                         ; $59bd: $ff
	pop  af                                          ; $59be: $f1
	ld   de, $ff2f                                   ; $59bf: $11 $2f $ff
	pop  af                                          ; $59c2: $f1
	ld   de, $fe9f                                   ; $59c3: $11 $9f $fe
	ld   de, $1f11                                   ; $59c6: $11 $11 $1f
	rst  $38                                         ; $59c9: $ff
	pop  af                                          ; $59ca: $f1
	ld   de, $ff2f                                   ; $59cb: $11 $2f $ff
	ldh  a, [c]                                      ; $59ce: $f2
	ld   de, $fd9f                                   ; $59cf: $11 $9f $fd
	ld   de, $1f11                                   ; $59d2: $11 $11 $1f
	rst  $38                                         ; $59d5: $ff
	pop  af                                          ; $59d6: $f1
	ld   de, $ff5f                                   ; $59d7: $11 $5f $ff
	pop  af                                          ; $59da: $f1
	ld   de, $fbdf                                   ; $59db: $11 $df $fb
	ld   de, $4f11                                   ; $59de: $11 $11 $4f
	rst  $38                                         ; $59e1: $ff
	or   c                                           ; $59e2: $b1
	ld   de, $ff9f                                   ; $59e3: $11 $9f $ff
	pop  af                                          ; $59e6: $f1
	ld   de, $fadf                                   ; $59e7: $11 $df $fa
	ld   de, $8f11                                   ; $59ea: $11 $11 $8f
	rst  $38                                         ; $59ed: $ff
	ld   [hl], c                                     ; $59ee: $71
	ld   de, $ffff                                   ; $59ef: $11 $ff $ff
	or   c                                           ; $59f2: $b1
	inc  d                                           ; $59f3: $14
	rst  $38                                         ; $59f4: $ff
	di                                               ; $59f5: $f3
	ld   de, rAUD1LEN                                   ; $59f6: $11 $11 $ff
	rst  $38                                         ; $59f9: $ff
	ld   de, rAUD1LEN                                   ; $59fa: $11 $11 $ff
	rst  $38                                         ; $59fd: $ff
	ld   b, c                                        ; $59fe: $41
	jr   @+$01                                       ; $59ff: $18 $ff

	pop  de                                          ; $5a01: $d1
	ld   de, rAUD1LEN                                   ; $5a02: $11 $11 $ff
	db   $fc                                         ; $5a05: $fc
	ld   de, $ff19                                   ; $5a06: $11 $19 $ff
	rst  $38                                         ; $5a09: $ff
	ld   de, $ff2e                                   ; $5a0a: $11 $2e $ff
	ld   [hl], c                                     ; $5a0d: $71
	ld   de, $ff1d                                   ; $5a0e: $11 $1d $ff
	pop  af                                          ; $5a11: $f1
	ld   de, $ff1f                                   ; $5a12: $11 $1f $ff
	ld   sp, hl                                      ; $5a15: $f9
	ld   de, $fd7f                                   ; $5a16: $11 $7f $fd
	ld   de, $1f11                                   ; $5a19: $11 $11 $1f
	rst  $38                                         ; $5a1c: $ff
	pop  hl                                          ; $5a1d: $e1
	ld   de, $ff8f                                   ; $5a1e: $11 $8f $ff
	pop  af                                          ; $5a21: $f1
	ld   [de], a                                     ; $5a22: $12
	rst  $38                                         ; $5a23: $ff
	or   $11                                         ; $5a24: $f6 $11
	ld   de, $ffff                                   ; $5a26: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $5a29: $11 $11 $ff
	rst  $38                                         ; $5a2c: $ff
	ld   h, c                                        ; $5a2d: $61
	ld   a, [de]                                     ; $5a2e: $1a
	rst  $38                                         ; $5a2f: $ff
	and  c                                           ; $5a30: $a1
	ld   de, $ff15                                   ; $5a31: $11 $15 $ff
	ld   sp, hl                                      ; $5a34: $f9
	ld   de, $ff1c                                   ; $5a35: $11 $1c $ff
	cp   $11                                         ; $5a38: $fe $11
	ld   e, a                                        ; $5a3a: $5f
	rst  $38                                         ; $5a3b: $ff
	ld   de, $1f11                                   ; $5a3c: $11 $11 $1f
	rst  $38                                         ; $5a3f: $ff
	pop  af                                          ; $5a40: $f1
	ld   de, $ff4f                                   ; $5a41: $11 $4f $ff
	pop  af                                          ; $5a44: $f1
	ld   [de], a                                     ; $5a45: $12
	rst  $28                                         ; $5a46: $ef
	push af                                          ; $5a47: $f5
	ld   de, rAUD1LEN                                   ; $5a48: $11 $11 $ff
	rst  $38                                         ; $5a4b: $ff
	ld   de, rAUD1LEN                                   ; $5a4c: $11 $11 $ff
	rst  $38                                         ; $5a4f: $ff
	ld   hl, $ff1b                                   ; $5a50: $21 $1b $ff
	sub  c                                           ; $5a53: $91
	ld   de, $ff1f                                   ; $5a54: $11 $1f $ff
	pop  af                                          ; $5a57: $f1
	ld   de, $ff1f                                   ; $5a58: $11 $1f $ff
	push af                                          ; $5a5b: $f5
	ld   de, $fb9f                                   ; $5a5c: $11 $9f $fb
	ld   de, $df11                                   ; $5a5f: $11 $11 $df
	rst  $38                                         ; $5a62: $ff
	ld   de, rAUD1LEN                                   ; $5a63: $11 $11 $ff
	rst  $38                                         ; $5a66: $ff
	ld   b, c                                        ; $5a67: $41
	add  hl, de                                      ; $5a68: $19
	rst  $38                                         ; $5a69: $ff
	and  c                                           ; $5a6a: $a1
	ld   de, $ff1f                                   ; $5a6b: $11 $1f $ff
	pop  af                                          ; $5a6e: $f1
	ld   de, $ff1f                                   ; $5a6f: $11 $1f $ff
	db   $f4                                         ; $5a72: $f4
	ld   de, $fc8f                                   ; $5a73: $11 $8f $fc
	ld   de, $df11                                   ; $5a76: $11 $11 $df
	rst  $38                                         ; $5a79: $ff
	ld   de, rAUD1LEN                                   ; $5a7a: $11 $11 $ff
	rst  $38                                         ; $5a7d: $ff
	ld   d, c                                        ; $5a7e: $51
	add  hl, de                                      ; $5a7f: $19
	rst  $38                                         ; $5a80: $ff
	pop  bc                                          ; $5a81: $c1
	ld   de, $ff1d                                   ; $5a82: $11 $1d $ff
	pop  af                                          ; $5a85: $f1
	ld   de, $ff1f                                   ; $5a86: $11 $1f $ff
	push af                                          ; $5a89: $f5
	ld   de, $fd7f                                   ; $5a8a: $11 $7f $fd
	ld   de, rAUD1LEN                                   ; $5a8d: $11 $11 $ff
	rst  $38                                         ; $5a90: $ff
	ld   de, rAUD1LEN                                   ; $5a91: $11 $11 $ff
	rst  $38                                         ; $5a94: $ff
	ld   sp, $ff19                                   ; $5a95: $31 $19 $ff
	pop  de                                          ; $5a98: $d1
	ld   de, $ff1f                                   ; $5a99: $11 $1f $ff
	pop  af                                          ; $5a9c: $f1
	ld   de, $ff1f                                   ; $5a9d: $11 $1f $ff
	pop  af                                          ; $5aa0: $f1
	ld   de, $faaf                                   ; $5aa1: $11 $af $fa
	ld   de, rAUD1LEN                                   ; $5aa4: $11 $11 $ff
	rst  $38                                         ; $5aa7: $ff
	ld   de, rAUD1LEN                                   ; $5aa8: $11 $11 $ff
	rst  $38                                         ; $5aab: $ff
	ld   de, $ff1c                                   ; $5aac: $11 $1c $ff
	sub  c                                           ; $5aaf: $91
	ld   de, $ff1f                                   ; $5ab0: $11 $1f $ff
	pop  af                                          ; $5ab3: $f1
	ld   de, $ff1f                                   ; $5ab4: $11 $1f $ff
	pop  af                                          ; $5ab7: $f1
	ld   de, $f8df                                   ; $5ab8: $11 $df $f8
	ld   de, rAUD1LEN                                   ; $5abb: $11 $11 $ff
	rst  $38                                         ; $5abe: $ff
	ld   de, rAUD1LOW                                   ; $5abf: $11 $13 $ff
	rst  $38                                         ; $5ac2: $ff
	ld   de, $ff1f                                   ; $5ac3: $11 $1f $ff
	ld   h, c                                        ; $5ac6: $61
	ld   de, $ff1f                                   ; $5ac7: $11 $1f $ff
	pop  af                                          ; $5aca: $f1
	ld   de, $ff7f                                   ; $5acb: $11 $7f $ff
	pop  af                                          ; $5ace: $f1
	ld   de, $f3ff                                   ; $5acf: $11 $ff $f3
	ld   de, rAUD1LEN                                   ; $5ad2: $11 $11 $ff
	ei                                               ; $5ad5: $fb
	ld   de, $ff1a                                   ; $5ad6: $11 $1a $ff
	cp   $11                                         ; $5ad9: $fe $11
	cpl                                              ; $5adb: $2f
	rst  $38                                         ; $5adc: $ff
	ld   de, $2f11                                   ; $5add: $11 $11 $2f
	rst  $38                                         ; $5ae0: $ff
	add  c                                           ; $5ae1: $81
	ld   de, $ffdf                                   ; $5ae2: $11 $df $ff
	pop  de                                          ; $5ae5: $d1
	inc  de                                          ; $5ae6: $13
	rst  $38                                         ; $5ae7: $ff
	pop  af                                          ; $5ae8: $f1
	ld   de, rAUD1LOW                                   ; $5ae9: $11 $13 $ff
	rst  $30                                         ; $5aec: $f7
	ld   de, $ff1f                                   ; $5aed: $11 $1f $ff
	ld   sp, hl                                      ; $5af0: $f9
	ld   de, $ff4f                                   ; $5af1: $11 $4f $ff
	ld   de, $9f11                                   ; $5af4: $11 $11 $9f
	rst  $38                                         ; $5af7: $ff
	ld   hl, rAUD1LEN                                   ; $5af8: $21 $11 $ff
	rst  $38                                         ; $5afb: $ff
	ld   h, c                                        ; $5afc: $61
	rla                                              ; $5afd: $17
	rst  $38                                         ; $5afe: $ff
	pop  af                                          ; $5aff: $f1
	ld   de, $ff1b                                   ; $5b00: $11 $1b $ff
	pop  af                                          ; $5b03: $f1
	ld   de, $ff1f                                   ; $5b04: $11 $1f $ff
	db   $f4                                         ; $5b07: $f4
	ld   de, $fd8f                                   ; $5b08: $11 $8f $fd
	ld   de, rAUD1LEN                                   ; $5b0b: $11 $11 $ff
	rst  $38                                         ; $5b0e: $ff
	ld   de, rAUD1LEN                                   ; $5b0f: $11 $11 $ff
	rst  $38                                         ; $5b12: $ff
	ld   de, $ff1b                                   ; $5b13: $11 $1b $ff
	pop  bc                                          ; $5b16: $c1
	ld   de, $ff1f                                   ; $5b17: $11 $1f $ff
	pop  af                                          ; $5b1a: $f1
	ld   de, $ff1f                                   ; $5b1b: $11 $1f $ff
	pop  af                                          ; $5b1e: $f1
	ld   de, $f7ef                                   ; $5b1f: $11 $ef $f7
	ld   de, rAUD1LEN                                   ; $5b22: $11 $11 $ff
	rst  $38                                         ; $5b25: $ff
	ld   de, $ff16                                   ; $5b26: $11 $16 $ff
	rst  $38                                         ; $5b29: $ff
	ld   de, $ff1f                                   ; $5b2a: $11 $1f $ff
	ld   h, c                                        ; $5b2d: $61
	ld   de, $ff1f                                   ; $5b2e: $11 $1f $ff
	pop  af                                          ; $5b31: $f1
	ld   de, $ffaf                                   ; $5b32: $11 $af $ff
	pop  af                                          ; $5b35: $f1
	ld   [de], a                                     ; $5b36: $12
	rst  $38                                         ; $5b37: $ff
	pop  af                                          ; $5b38: $f1
	ld   de, rAUD1ENV                                   ; $5b39: $11 $12 $ff
	ld   hl, sp+$11                                  ; $5b3c: $f8 $11
	rra                                              ; $5b3e: $1f
	rst  $38                                         ; $5b3f: $ff
	ld   hl, sp+$11                                  ; $5b40: $f8 $11
	ld   e, a                                        ; $5b42: $5f
	rst  $38                                         ; $5b43: $ff
	ld   de, $cf11                                   ; $5b44: $11 $11 $cf
	rst  $38                                         ; $5b47: $ff
	ld   de, rAUD1LEN                                   ; $5b48: $11 $11 $ff
	rst  $38                                         ; $5b4b: $ff
	ld   de, $ff1a                                   ; $5b4c: $11 $1a $ff
	pop  af                                          ; $5b4f: $f1
	ld   de, $ff1f                                   ; $5b50: $11 $1f $ff
	pop  af                                          ; $5b53: $f1
	ld   de, $ff1f                                   ; $5b54: $11 $1f $ff
	pop  af                                          ; $5b57: $f1
	ld   de, $fdbf                                   ; $5b58: $11 $bf $fd
	ld   de, rAUD1LEN                                   ; $5b5b: $11 $11 $ff
	rst  $38                                         ; $5b5e: $ff
	ld   de, rAUD1LEN                                   ; $5b5f: $11 $11 $ff
	rst  $38                                         ; $5b62: $ff
	ld   de, $ff1e                                   ; $5b63: $11 $1e $ff
	add  c                                           ; $5b66: $81
	ld   de, $ff1f                                   ; $5b67: $11 $1f $ff
	pop  af                                          ; $5b6a: $f1
	ld   de, $ffaf                                   ; $5b6b: $11 $af $ff
	pop  af                                          ; $5b6e: $f1
	ld   de, $f2ff                                   ; $5b6f: $11 $ff $f2
	ld   de, rAUD1ENV                                   ; $5b72: $11 $12 $ff
	rst  $30                                         ; $5b75: $f7
	ld   de, $ff1f                                   ; $5b76: $11 $1f $ff
	ld   sp, hl                                      ; $5b79: $f9
	ld   de, $ff4f                                   ; $5b7a: $11 $4f $ff
	ld   de, $cf11                                   ; $5b7d: $11 $11 $cf
	rst  $38                                         ; $5b80: $ff
	ld   de, rAUD1LEN                                   ; $5b81: $11 $11 $ff
	rst  $38                                         ; $5b84: $ff
	ld   hl, $ff18                                   ; $5b85: $21 $18 $ff
	pop  af                                          ; $5b88: $f1
	ld   de, $ff1f                                   ; $5b89: $11 $1f $ff
	pop  af                                          ; $5b8c: $f1
	ld   de, $ff1f                                   ; $5b8d: $11 $1f $ff
	pop  af                                          ; $5b90: $f1
	ld   de, $fabf                                   ; $5b91: $11 $bf $fa
	ld   de, rAUD1LEN                                   ; $5b94: $11 $11 $ff
	rst  $38                                         ; $5b97: $ff
	ld   de, $ff15                                   ; $5b98: $11 $15 $ff
	rst  $38                                         ; $5b9b: $ff
	ld   de, $ff1f                                   ; $5b9c: $11 $1f $ff
	ld   h, c                                        ; $5b9f: $61
	ld   de, $ff1f                                   ; $5ba0: $11 $1f $ff
	pop  de                                          ; $5ba3: $d1
	ld   de, $ffcf                                   ; $5ba4: $11 $cf $ff

Jump_0f4_5ba7:
	pop  de                                          ; $5ba7: $d1
	inc  de                                          ; $5ba8: $13
	rst  $38                                         ; $5ba9: $ff
	pop  af                                          ; $5baa: $f1
	ld   de, $ff16                                   ; $5bab: $11 $16 $ff
	ldh  a, [c]                                      ; $5bae: $f2
	ld   de, $ff1f                                   ; $5baf: $11 $1f $ff
	db   $f4                                         ; $5bb2: $f4
	ld   de, $ff6f                                   ; $5bb3: $11 $6f $ff
	ld   de, rAUD1LEN                                   ; $5bb6: $11 $11 $ff
	rst  $38                                         ; $5bb9: $ff
	ld   de, rAUD1LEN                                   ; $5bba: $11 $11 $ff
	rst  $38                                         ; $5bbd: $ff
	ld   de, $ff19                                   ; $5bbe: $11 $19 $ff
	pop  bc                                          ; $5bc1: $c1
	ld   de, $ff1f                                   ; $5bc2: $11 $1f $ff
	pop  af                                          ; $5bc5: $f1
	ld   de, $ff2f                                   ; $5bc6: $11 $2f $ff
	pop  af                                          ; $5bc9: $f1
	ld   de, $f9df                                   ; $5bca: $11 $df $f9
	ld   de, rAUD1LEN                                   ; $5bcd: $11 $11 $ff
	rst  $38                                         ; $5bd0: $ff
	ld   de, $ff1a                                   ; $5bd1: $11 $1a $ff
	db   $fd                                         ; $5bd4: $fd
	ld   de, $ff1f                                   ; $5bd5: $11 $1f $ff
	ld   de, $5f11                                   ; $5bd8: $11 $11 $5f
	rst  $38                                         ; $5bdb: $ff
	ld   sp, rAUD1LEN                                   ; $5bdc: $31 $11 $ff
	rst  $38                                         ; $5bdf: $ff
	ld   h, c                                        ; $5be0: $61
	ld   d, $ff                                      ; $5be1: $16 $ff
	pop  af                                          ; $5be3: $f1
	ld   de, $ff1f                                   ; $5be4: $11 $1f $ff
	pop  af                                          ; $5be7: $f1
	ld   de, $ff1f                                   ; $5be8: $11 $1f $ff
	pop  af                                          ; $5beb: $f1
	ld   de, $fcaf                                   ; $5bec: $11 $af $fc
	ld   de, rAUD1LEN                                   ; $5bef: $11 $11 $ff
	rst  $38                                         ; $5bf2: $ff
	ld   de, $ff15                                   ; $5bf3: $11 $15 $ff
	rst  $38                                         ; $5bf6: $ff
	ld   de, $ff1e                                   ; $5bf7: $11 $1e $ff
	ld   h, c                                        ; $5bfa: $61
	ld   de, $ff1f                                   ; $5bfb: $11 $1f $ff
	pop  bc                                          ; $5bfe: $c1
	ld   de, $ffdf                                   ; $5bff: $11 $df $ff
	or   c                                           ; $5c02: $b1
	ld   [de], a                                     ; $5c03: $12
	rst  $38                                         ; $5c04: $ff
	pop  af                                          ; $5c05: $f1
	ld   de, $ff19                                   ; $5c06: $11 $19 $ff
	pop  af                                          ; $5c09: $f1
	ld   de, $ff1f                                   ; $5c0a: $11 $1f $ff
	di                                               ; $5c0d: $f3
	ld   de, $ff7f                                   ; $5c0e: $11 $7f $ff
	ld   de, rAUD1LEN                                   ; $5c11: $11 $11 $ff
	rst  $38                                         ; $5c14: $ff
	ld   de, rAUD1LEN                                   ; $5c15: $11 $11 $ff
	rst  $38                                         ; $5c18: $ff
	ld   de, $ff1d                                   ; $5c19: $11 $1d $ff
	sub  c                                           ; $5c1c: $91
	ld   de, $ff1f                                   ; $5c1d: $11 $1f $ff
	pop  af                                          ; $5c20: $f1
	ld   de, $ffbf                                   ; $5c21: $11 $bf $ff
	pop  de                                          ; $5c24: $d1
	ld   de, $f2ff                                   ; $5c25: $11 $ff $f2
	ld   de, rAUD1HIGH                                   ; $5c28: $11 $14 $ff
	db   $f4                                         ; $5c2b: $f4
	ld   de, $ff1f                                   ; $5c2c: $11 $1f $ff
	or   $11                                         ; $5c2f: $f6 $11
	ld   c, a                                        ; $5c31: $4f
	rst  $38                                         ; $5c32: $ff
	ld   de, $df11                                   ; $5c33: $11 $11 $df
	rst  $38                                         ; $5c36: $ff
	ld   de, rAUD1LEN                                   ; $5c37: $11 $11 $ff
	rst  $38                                         ; $5c3a: $ff
	ld   de, $ff18                                   ; $5c3b: $11 $18 $ff
	pop  af                                          ; $5c3e: $f1
	ld   de, $ff1f                                   ; $5c3f: $11 $1f $ff
	pop  af                                          ; $5c42: $f1
	ld   de, $ff1f                                   ; $5c43: $11 $1f $ff
	pop  af                                          ; $5c46: $f1
	ld   de, $f9cf                                   ; $5c47: $11 $cf $f9
	ld   de, rAUD1LEN                                   ; $5c4a: $11 $11 $ff
	rst  $38                                         ; $5c4d: $ff
	ld   de, $ff1b                                   ; $5c4e: $11 $1b $ff
	cp   $11                                         ; $5c51: $fe $11
	rra                                              ; $5c53: $1f
	rst  $38                                         ; $5c54: $ff
	ld   hl, $4f11                                   ; $5c55: $21 $11 $4f
	rst  $38                                         ; $5c58: $ff
	ld   sp, rAUD1LEN                                   ; $5c59: $31 $11 $ff
	rst  $38                                         ; $5c5c: $ff
	ld   d, c                                        ; $5c5d: $51
	inc  d                                           ; $5c5e: $14
	rst  $38                                         ; $5c5f: $ff
	pop  af                                          ; $5c60: $f1
	ld   de, $ff1d                                   ; $5c61: $11 $1d $ff
	pop  af                                          ; $5c64: $f1
	ld   de, $ff1f                                   ; $5c65: $11 $1f $ff
	pop  af                                          ; $5c68: $f1
	ld   de, $ff8f                                   ; $5c69: $11 $8f $ff
	ld   de, rAUD1LEN                                   ; $5c6c: $11 $11 $ff
	rst  $38                                         ; $5c6f: $ff
	ld   de, rAUD1LEN                                   ; $5c70: $11 $11 $ff
	rst  $38                                         ; $5c73: $ff
	ld   de, $ff1b                                   ; $5c74: $11 $1b $ff
	and  c                                           ; $5c77: $a1
	ld   de, $ff1f                                   ; $5c78: $11 $1f $ff
	pop  af                                          ; $5c7b: $f1
	ld   de, $ffaf                                   ; $5c7c: $11 $af $ff
	pop  hl                                          ; $5c7f: $e1
	ld   de, $f4ff                                   ; $5c80: $11 $ff $f4
	ld   de, rAUD1LOW                                   ; $5c83: $11 $13 $ff
	db   $f4                                         ; $5c86: $f4
	ld   de, $ff1f                                   ; $5c87: $11 $1f $ff
	or   $11                                         ; $5c8a: $f6 $11
	ld   c, a                                        ; $5c8c: $4f
	rst  $38                                         ; $5c8d: $ff
	ld   de, rAUD1LEN                                   ; $5c8e: $11 $11 $ff
	rst  $38                                         ; $5c91: $ff
	ld   de, rAUD1LEN                                   ; $5c92: $11 $11 $ff
	rst  $38                                         ; $5c95: $ff
	ld   de, $ff19                                   ; $5c96: $11 $19 $ff
	pop  af                                          ; $5c99: $f1
	ld   de, $ff1f                                   ; $5c9a: $11 $1f $ff
	pop  af                                          ; $5c9d: $f1
	ld   de, $ff3f                                   ; $5c9e: $11 $3f $ff
	pop  af                                          ; $5ca1: $f1
	ld   de, $fadf                                   ; $5ca2: $11 $df $fa
	ld   de, rAUD1LEN                                   ; $5ca5: $11 $11 $ff
	cp   $11                                         ; $5ca8: $fe $11
	dec  de                                          ; $5caa: $1b
	rst  $38                                         ; $5cab: $ff
	cp   $11                                         ; $5cac: $fe $11
	rra                                              ; $5cae: $1f
	rst  $38                                         ; $5caf: $ff
	ld   sp, $5f11                                   ; $5cb0: $31 $11 $5f
	rst  $38                                         ; $5cb3: $ff
	ld   sp, rAUD1LEN                                   ; $5cb4: $31 $11 $ff
	rst  $38                                         ; $5cb7: $ff
	ld   d, c                                        ; $5cb8: $51
	inc  de                                          ; $5cb9: $13
	rst  $38                                         ; $5cba: $ff
	pop  af                                          ; $5cbb: $f1
	ld   de, $ff1f                                   ; $5cbc: $11 $1f $ff
	pop  af                                          ; $5cbf: $f1
	ld   de, $ff1f                                   ; $5cc0: $11 $1f $ff
	pop  af                                          ; $5cc3: $f1
	ld   de, $ff9f                                   ; $5cc4: $11 $9f $ff
	ld   de, rAUD1LEN                                   ; $5cc7: $11 $11 $ff
	rst  $38                                         ; $5cca: $ff
	ld   de, rAUD1HIGH                                   ; $5ccb: $11 $14 $ff
	rst  $38                                         ; $5cce: $ff
	ld   de, $ff1d                                   ; $5ccf: $11 $1d $ff
	sub  c                                           ; $5cd2: $91
	ld   de, $ff1f                                   ; $5cd3: $11 $1f $ff
	pop  bc                                          ; $5cd6: $c1
	ld   de, $ffef                                   ; $5cd7: $11 $ef $ff
	pop  bc                                          ; $5cda: $c1
	ld   de, $f3ff                                   ; $5cdb: $11 $ff $f3
	ld   de, rAUD1LOW                                   ; $5cde: $11 $13 $ff
	db   $f4                                         ; $5ce1: $f4
	ld   de, $ff1f                                   ; $5ce2: $11 $1f $ff
	rst  $30                                         ; $5ce5: $f7
	ld   de, $ff3f                                   ; $5ce6: $11 $3f $ff
	ld   de, rAUD1LEN                                   ; $5ce9: $11 $11 $ff
	rst  $38                                         ; $5cec: $ff
	ld   de, rAUD1LEN                                   ; $5ced: $11 $11 $ff
	rst  $38                                         ; $5cf0: $ff
	ld   de, $ff17                                   ; $5cf1: $11 $17 $ff
	pop  af                                          ; $5cf4: $f1
	ld   de, $ff1f                                   ; $5cf5: $11 $1f $ff
	pop  af                                          ; $5cf8: $f1
	ld   de, $ff1f                                   ; $5cf9: $11 $1f $ff
	pop  af                                          ; $5cfc: $f1
	ld   de, $fcbf                                   ; $5cfd: $11 $bf $fc
	ld   de, rAUD1LEN                                   ; $5d00: $11 $11 $ff
	rst  $38                                         ; $5d03: $ff
	ld   de, $ff19                                   ; $5d04: $11 $19 $ff
	rst  $38                                         ; $5d07: $ff
	ld   de, $ff1f                                   ; $5d08: $11 $1f $ff
	ld   h, c                                        ; $5d0b: $61
	ld   de, $ff1f                                   ; $5d0c: $11 $1f $ff
	ld   [hl], c                                     ; $5d0f: $71
	ld   de, $ffff                                   ; $5d10: $11 $ff $ff
	and  c                                           ; $5d13: $a1
	ld   de, $f2ff                                   ; $5d14: $11 $ff $f2
	ld   de, $ff16                                   ; $5d17: $11 $16 $ff
	di                                               ; $5d1a: $f3
	ld   de, $ff1f                                   ; $5d1b: $11 $1f $ff
	or   $11                                         ; $5d1e: $f6 $11
	ccf                                              ; $5d20: $3f
	rst  $38                                         ; $5d21: $ff
	ld   de, $df11                                   ; $5d22: $11 $11 $df
	rst  $38                                         ; $5d25: $ff
	ld   de, rAUD1LEN                                   ; $5d26: $11 $11 $ff
	rst  $38                                         ; $5d29: $ff
	ld   de, $ff17                                   ; $5d2a: $11 $17 $ff
	pop  af                                          ; $5d2d: $f1
	ld   de, $ff1f                                   ; $5d2e: $11 $1f $ff
	pop  af                                          ; $5d31: $f1
	ld   de, $ff1f                                   ; $5d32: $11 $1f $ff
	pop  af                                          ; $5d35: $f1
	ld   de, $ff7f                                   ; $5d36: $11 $7f $ff
	ld   de, rAUD1LEN                                   ; $5d39: $11 $11 $ff
	rst  $38                                         ; $5d3c: $ff
	ld   de, rAUD1LEN                                   ; $5d3d: $11 $11 $ff
	rst  $38                                         ; $5d40: $ff
	ld   de, $ff1a                                   ; $5d41: $11 $1a $ff
	pop  af                                          ; $5d44: $f1
	ld   de, $ff1f                                   ; $5d45: $11 $1f $ff
	pop  af                                          ; $5d48: $f1
	ld   de, $ff1f                                   ; $5d49: $11 $1f $ff
	pop  af                                          ; $5d4c: $f1
	ld   de, $ffbf                                   ; $5d4d: $11 $bf $ff
	ld   de, rAUD1LEN                                   ; $5d50: $11 $11 $ff
	rst  $38                                         ; $5d53: $ff
	ld   de, rAUD1LEN                                   ; $5d54: $11 $11 $ff
	rst  $38                                         ; $5d57: $ff
	ld   de, $ff1a                                   ; $5d58: $11 $1a $ff
	pop  af                                          ; $5d5b: $f1
	ld   de, $ff1f                                   ; $5d5c: $11 $1f $ff
	pop  af                                          ; $5d5f: $f1
	ld   de, $ff1f                                   ; $5d60: $11 $1f $ff
	pop  af                                          ; $5d63: $f1
	ld   de, $ff9f                                   ; $5d64: $11 $9f $ff
	ld   de, rAUD1LEN                                   ; $5d67: $11 $11 $ff
	rst  $38                                         ; $5d6a: $ff
	ld   de, rAUD1LEN                                   ; $5d6b: $11 $11 $ff
	rst  $38                                         ; $5d6e: $ff
	ld   de, $ff19                                   ; $5d6f: $11 $19 $ff
	pop  af                                          ; $5d72: $f1
	ld   de, $ff1e                                   ; $5d73: $11 $1e $ff
	pop  af                                          ; $5d76: $f1
	ld   de, $ff1f                                   ; $5d77: $11 $1f $ff
	di                                               ; $5d7a: $f3
	ld   de, $ff6f                                   ; $5d7b: $11 $6f $ff
	ld   de, $af11                                   ; $5d7e: $11 $11 $af
	rst  $38                                         ; $5d81: $ff
	ld   de, rAUD1LEN                                   ; $5d82: $11 $11 $ff
	rst  $38                                         ; $5d85: $ff
	ld   d, c                                        ; $5d86: $51
	inc  d                                           ; $5d87: $14
	rst  $38                                         ; $5d88: $ff
	ldh  a, [c]                                      ; $5d89: $f2
	ld   de, rAUD1ENV                                   ; $5d8a: $11 $12 $ff
	rst  $30                                         ; $5d8d: $f7
	ld   de, $ff1f                                   ; $5d8e: $11 $1f $ff
	ei                                               ; $5d91: $fb
	ld   de, $ff1f                                   ; $5d92: $11 $1f $ff
	add  c                                           ; $5d95: $81
	ld   de, $ff1f                                   ; $5d96: $11 $1f $ff
	pop  de                                          ; $5d99: $d1
	ld   de, $ffaf                                   ; $5d9a: $11 $af $ff
	pop  af                                          ; $5d9d: $f1
	ld   de, $fcef                                   ; $5d9e: $11 $ef $fc
	ld   de, rAUD1LEN                                   ; $5da1: $11 $11 $ff
	rst  $38                                         ; $5da4: $ff
	ld   de, rAUD1HIGH                                   ; $5da5: $11 $14 $ff
	rst  $38                                         ; $5da8: $ff
	ld   de, $ff1c                                   ; $5da9: $11 $1c $ff
	pop  af                                          ; $5dac: $f1
	ld   de, $ff1f                                   ; $5dad: $11 $1f $ff
	pop  af                                          ; $5db0: $f1
	ld   de, $ff1f                                   ; $5db1: $11 $1f $ff
	di                                               ; $5db4: $f3
	ld   de, $ff6f                                   ; $5db5: $11 $6f $ff
	ld   de, $4f11                                   ; $5db8: $11 $11 $4f
	rst  $38                                         ; $5dbb: $ff
	ld   d, c                                        ; $5dbc: $51
	ld   de, $ffff                                   ; $5dbd: $11 $ff $ff
	and  c                                           ; $5dc0: $a1
	ld   de, $f9ff                                   ; $5dc1: $11 $ff $f9
	ld   de, rAUD1LEN                                   ; $5dc4: $11 $11 $ff
	rst  $38                                         ; $5dc7: $ff
	ld   de, $ff15                                   ; $5dc8: $11 $15 $ff
	rst  $38                                         ; $5dcb: $ff
	ld   de, $ff1d                                   ; $5dcc: $11 $1d $ff
	pop  af                                          ; $5dcf: $f1
	ld   de, $ff1f                                   ; $5dd0: $11 $1f $ff
	pop  af                                          ; $5dd3: $f1
	ld   de, $ff1f                                   ; $5dd4: $11 $1f $ff
	ldh  a, [c]                                      ; $5dd7: $f2
	ld   de, $ff5f                                   ; $5dd8: $11 $5f $ff
	ld   sp, $2f11                                   ; $5ddb: $31 $11 $2f
	rst  $38                                         ; $5dde: $ff
	ld   h, c                                        ; $5ddf: $61
	ld   de, $ffff                                   ; $5de0: $11 $ff $ff
	and  c                                           ; $5de3: $a1
	ld   de, $fbff                                   ; $5de4: $11 $ff $fb
	ld   de, rAUD1LEN                                   ; $5de7: $11 $11 $ff
	rst  $38                                         ; $5dea: $ff
	ld   de, rAUD1HIGH                                   ; $5deb: $11 $14 $ff
	rst  $38                                         ; $5dee: $ff
	ld   de, $ff1b                                   ; $5def: $11 $1b $ff
	pop  af                                          ; $5df2: $f1
	ld   de, $ff19                                   ; $5df3: $11 $19 $ff
	pop  af                                          ; $5df6: $f1
	ld   de, $ff1f                                   ; $5df7: $11 $1f $ff
	push af                                          ; $5dfa: $f5
	ld   de, $ff3f                                   ; $5dfb: $11 $3f $ff
	and  c                                           ; $5dfe: $a1
	ld   de, $ff1f                                   ; $5dff: $11 $1f $ff
	pop  af                                          ; $5e02: $f1
	ld   de, $ff6f                                   ; $5e03: $11 $6f $ff
	pop  af                                          ; $5e06: $f1
	ld   de, $ffcf                                   ; $5e07: $11 $cf $ff
	ld   de, $5f11                                   ; $5e0a: $11 $11 $5f
	rst  $38                                         ; $5e0d: $ff
	ld   sp, rAUD1LEN                                   ; $5e0e: $31 $11 $ff
	rst  $38                                         ; $5e11: $ff
	ld   [hl], c                                     ; $5e12: $71
	ld   [de], a                                     ; $5e13: $12
	rst  $38                                         ; $5e14: $ff
	db   $fc                                         ; $5e15: $fc
	ld   de, rAUD1LEN                                   ; $5e16: $11 $11 $ff
	rst  $38                                         ; $5e19: $ff
	ld   de, rAUD1LEN                                   ; $5e1a: $11 $11 $ff
	rst  $38                                         ; $5e1d: $ff
	ld   de, $ff1a                                   ; $5e1e: $11 $1a $ff
	db   $f4                                         ; $5e21: $f4
	ld   de, rAUD1LEN                                   ; $5e22: $11 $11 $ff
	ei                                               ; $5e25: $fb
	ld   de, $ff1d                                   ; $5e26: $11 $1d $ff
	db   $fc                                         ; $5e29: $fc
	ld   de, $ff1f                                   ; $5e2a: $11 $1f $ff
	pop  af                                          ; $5e2d: $f1
	ld   de, rAUD1HIGH                                   ; $5e2e: $11 $14 $ff
	di                                               ; $5e31: $f3
	ld   de, $ff1f                                   ; $5e32: $11 $1f $ff
	ld   hl, sp+$11                                  ; $5e35: $f8 $11
	ccf                                              ; $5e37: $3f
	rst  $38                                         ; $5e38: $ff
	pop  de                                          ; $5e39: $d1
	ld   de, $ff1c                                   ; $5e3a: $11 $1c $ff
	pop  af                                          ; $5e3d: $f1
	ld   de, $ff1f                                   ; $5e3e: $11 $1f $ff
	di                                               ; $5e41: $f3
	ld   de, $ff6f                                   ; $5e42: $11 $6f $ff
	and  c                                           ; $5e45: $a1
	ld   de, $ff1f                                   ; $5e46: $11 $1f $ff
	pop  af                                          ; $5e49: $f1
	ld   de, $ff1f                                   ; $5e4a: $11 $1f $ff
	ldh  a, [c]                                      ; $5e4d: $f2
	ld   de, $ff7f                                   ; $5e4e: $11 $7f $ff
	and  c                                           ; $5e51: $a1
	ld   de, $ff1f                                   ; $5e52: $11 $1f $ff
	pop  af                                          ; $5e55: $f1
	ld   de, $ff1f                                   ; $5e56: $11 $1f $ff
	pop  af                                          ; $5e59: $f1
	ld   de, $ff8f                                   ; $5e5a: $11 $8f $ff
	sub  c                                           ; $5e5d: $91
	ld   de, $ff1f                                   ; $5e5e: $11 $1f $ff
	pop  af                                          ; $5e61: $f1
	ld   de, $ff2f                                   ; $5e62: $11 $2f $ff
	pop  af                                          ; $5e65: $f1
	ld   de, $ffaf                                   ; $5e66: $11 $af $ff
	ld   [hl], c                                     ; $5e69: $71
	ld   de, $ff1f                                   ; $5e6a: $11 $1f $ff
	pop  af                                          ; $5e6d: $f1
	ld   de, $ff2f                                   ; $5e6e: $11 $2f $ff
	pop  af                                          ; $5e71: $f1
	ld   de, $ff8f                                   ; $5e72: $11 $8f $ff
	ld   [hl], c                                     ; $5e75: $71
	ld   de, $ff1f                                   ; $5e76: $11 $1f $ff
	pop  af                                          ; $5e79: $f1
	ld   de, $ff5f                                   ; $5e7a: $11 $5f $ff
	pop  af                                          ; $5e7d: $f1
	ld   de, $ffbf                                   ; $5e7e: $11 $bf $ff
	ld   b, c                                        ; $5e81: $41
	ld   de, $ff1f                                   ; $5e82: $11 $1f $ff
	pop  af                                          ; $5e85: $f1
	ld   de, $ff9f                                   ; $5e86: $11 $9f $ff
	pop  af                                          ; $5e89: $f1
	ld   de, $ffbf                                   ; $5e8a: $11 $bf $ff
	ld   d, c                                        ; $5e8d: $51
	ld   de, $ff1f                                   ; $5e8e: $11 $1f $ff
	pop  af                                          ; $5e91: $f1
	ld   de, $ff6f                                   ; $5e92: $11 $6f $ff
	pop  af                                          ; $5e95: $f1
	ld   de, $ffcf                                   ; $5e96: $11 $cf $ff
	ld   b, c                                        ; $5e99: $41
	ld   de, $ff1f                                   ; $5e9a: $11 $1f $ff
	pop  af                                          ; $5e9d: $f1
	ld   de, $ff7f                                   ; $5e9e: $11 $7f $ff
	pop  af                                          ; $5ea1: $f1
	ld   de, $ffdf                                   ; $5ea2: $11 $df $ff
	ld   b, c                                        ; $5ea5: $41
	ld   de, $ff1f                                   ; $5ea6: $11 $1f $ff
	pop  af                                          ; $5ea9: $f1
	ld   de, $ff5f                                   ; $5eaa: $11 $5f $ff
	pop  af                                          ; $5ead: $f1
	ld   de, $ffaf                                   ; $5eae: $11 $af $ff
	ld   [hl], c                                     ; $5eb1: $71
	ld   de, $ff1f                                   ; $5eb2: $11 $1f $ff
	pop  af                                          ; $5eb5: $f1
	ld   de, $ff1f                                   ; $5eb6: $11 $1f $ff
	pop  af                                          ; $5eb9: $f1
	ld   de, $ffaf                                   ; $5eba: $11 $af $ff
	add  c                                           ; $5ebd: $81
	ld   de, $ff1f                                   ; $5ebe: $11 $1f $ff
	pop  af                                          ; $5ec1: $f1
	ld   de, $ff1f                                   ; $5ec2: $11 $1f $ff
	ldh  a, [c]                                      ; $5ec5: $f2
	ld   de, $ff8f                                   ; $5ec6: $11 $8f $ff
	or   c                                           ; $5ec9: $b1
	ld   de, $ff1c                                   ; $5eca: $11 $1c $ff
	pop  af                                          ; $5ecd: $f1
	ld   de, $ff1f                                   ; $5ece: $11 $1f $ff
	push af                                          ; $5ed1: $f5
	ld   de, $ff6f                                   ; $5ed2: $11 $6f $ff
	pop  de                                          ; $5ed5: $d1
	ld   de, rAUD1HIGH                                   ; $5ed6: $11 $14 $ff
	push af                                          ; $5ed9: $f5
	ld   de, $ff1f                                   ; $5eda: $11 $1f $ff
	ld   a, [$2f11]                                  ; $5edd: $fa $11 $2f
	rst  $38                                         ; $5ee0: $ff
	ldh  [c], a                                      ; $5ee1: $e2
	ld   de, rAUD1LEN                                   ; $5ee2: $11 $11 $ff
	db   $fd                                         ; $5ee5: $fd
	ld   de, $ff18                                   ; $5ee6: $11 $18 $ff
	rst  $38                                         ; $5ee9: $ff
	ld   de, $ff1c                                   ; $5eea: $11 $1c $ff
	or   $11                                         ; $5eed: $f6 $11
	ld   de, $ffff                                   ; $5eef: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $5ef2: $11 $11 $ff
	rst  $38                                         ; $5ef5: $ff
	ld   de, $ff1a                                   ; $5ef6: $11 $1a $ff
	ld   sp, hl                                      ; $5ef9: $f9
	ld   de, $df11                                   ; $5efa: $11 $11 $df
	rst  $38                                         ; $5efd: $ff
	ld   de, rAUD1LEN                                   ; $5efe: $11 $11 $ff
	rst  $38                                         ; $5f01: $ff
	ld   b, c                                        ; $5f02: $41
	dec  d                                           ; $5f03: $15
	rst  $38                                         ; $5f04: $ff
	cp   $11                                         ; $5f05: $fe $11
	ld   de, $ff3f                                   ; $5f07: $11 $3f $ff
	ld   h, c                                        ; $5f0a: $61
	ld   de, $ffff                                   ; $5f0b: $11 $ff $ff
	sub  c                                           ; $5f0e: $91
	inc  de                                          ; $5f0f: $13
	rst  $38                                         ; $5f10: $ff
	rst  $38                                         ; $5f11: $ff
	ld   sp, $1f11                                   ; $5f12: $31 $11 $1f
	rst  $38                                         ; $5f15: $ff
	pop  af                                          ; $5f16: $f1
	ld   de, $ff6f                                   ; $5f17: $11 $6f $ff
	pop  af                                          ; $5f1a: $f1
	ld   de, $ffbf                                   ; $5f1b: $11 $bf $ff
	add  c                                           ; $5f1e: $81
	ld   de, $ff1f                                   ; $5f1f: $11 $1f $ff
	pop  af                                          ; $5f22: $f1
	ld   de, $ff1f                                   ; $5f23: $11 $1f $ff
	pop  af                                          ; $5f26: $f1
	ld   de, $ff9f                                   ; $5f27: $11 $9f $ff
	and  c                                           ; $5f2a: $a1
	ld   de, $ff15                                   ; $5f2b: $11 $15 $ff
	push af                                          ; $5f2e: $f5
	ld   de, $ff1f                                   ; $5f2f: $11 $1f $ff
	ld   hl, sp+$11                                  ; $5f32: $f8 $11
	ccf                                              ; $5f34: $3f
	rst  $38                                         ; $5f35: $ff
	push af                                          ; $5f36: $f5
	ld   de, rAUD1LEN                                   ; $5f37: $11 $11 $ff
	rst  $38                                         ; $5f3a: $ff
	ld   de, rAUD1LEN                                   ; $5f3b: $11 $11 $ff
	rst  $38                                         ; $5f3e: $ff
	ld   de, $ff1b                                   ; $5f3f: $11 $1b $ff
	ld   sp, hl                                      ; $5f42: $f9
	ld   de, $6f11                                   ; $5f43: $11 $11 $6f
	rst  $38                                         ; $5f46: $ff
	ld   b, c                                        ; $5f47: $41
	ld   de, $ffff                                   ; $5f48: $11 $ff $ff
	ld   h, c                                        ; $5f4b: $61
	dec  d                                           ; $5f4c: $15
	rst  $38                                         ; $5f4d: $ff
	db   $fd                                         ; $5f4e: $fd
	ld   d, c                                        ; $5f4f: $51
	ld   de, $ff1f                                   ; $5f50: $11 $1f $ff
	pop  af                                          ; $5f53: $f1
	ld   de, $ff1f                                   ; $5f54: $11 $1f $ff
	pop  af                                          ; $5f57: $f1
	ld   de, $ffdf                                   ; $5f58: $11 $df $ff
	and  c                                           ; $5f5b: $a1
	ld   de, rAUD1LEN                                   ; $5f5c: $11 $11 $ff
	ld   a, [$1c11]                                  ; $5f5f: $fa $11 $1c
	rst  $38                                         ; $5f62: $ff
	ld   a, [$2f11]                                  ; $5f63: $fa $11 $2f
	rst  $38                                         ; $5f66: $ff
	ld   hl, sp+$11                                  ; $5f67: $f8 $11
	ld   de, $ff9f                                   ; $5f69: $11 $9f $ff
	ld   sp, rAUD1LEN                                   ; $5f6c: $31 $11 $ff
	rst  $38                                         ; $5f6f: $ff
	ld   sp, $ff16                                   ; $5f70: $31 $16 $ff
	cp   $71                                         ; $5f73: $fe $71
	ld   de, $ff1f                                   ; $5f75: $11 $1f $ff
	pop  af                                          ; $5f78: $f1
	ld   de, $ff1f                                   ; $5f79: $11 $1f $ff
	pop  af                                          ; $5f7c: $f1
	ld   de, $ffaf                                   ; $5f7d: $11 $af $ff
	call nz, $1111                                   ; $5f80: $c4 $11 $11
	rst  $38                                         ; $5f83: $ff
	rst  $38                                         ; $5f84: $ff
	ld   de, rAUD1LEN                                   ; $5f85: $11 $11 $ff
	rst  $38                                         ; $5f88: $ff
	ld   de, $ff1e                                   ; $5f89: $11 $1e $ff
	ld   a, [$1121]                                  ; $5f8c: $fa $21 $11
	rra                                              ; $5f8f: $1f
	rst  $38                                         ; $5f90: $ff
	pop  af                                          ; $5f91: $f1
	ld   de, $ff7f                                   ; $5f92: $11 $7f $ff
	sub  c                                           ; $5f95: $91
	ld   de, $ffff                                   ; $5f96: $11 $ff $ff
	ld   [hl], c                                     ; $5f99: $71
	ld   de, rAUD1LEN                                   ; $5f9a: $11 $11 $ff
	ld   sp, hl                                      ; $5f9d: $f9
	ld   de, $ff1d                                   ; $5f9e: $11 $1d $ff
	or   $11                                         ; $5fa1: $f6 $11
	ccf                                              ; $5fa3: $3f
	rst  $38                                         ; $5fa4: $ff
	ld   sp, hl                                      ; $5fa5: $f9
	ld   de, $5f11                                   ; $5fa6: $11 $11 $5f
	rst  $38                                         ; $5fa9: $ff
	ld   h, c                                        ; $5faa: $61
	ld   de, $ffff                                   ; $5fab: $11 $ff $ff
	ld   b, c                                        ; $5fae: $41
	dec  d                                           ; $5faf: $15
	rst  $38                                         ; $5fb0: $ff
	rst  $38                                         ; $5fb1: $ff
	ld   [hl], c                                     ; $5fb2: $71
	ld   de, $ff17                                   ; $5fb3: $11 $17 $ff
	di                                               ; $5fb6: $f3
	ld   de, $ff1f                                   ; $5fb7: $11 $1f $ff
	ldh  a, [c]                                      ; $5fba: $f2
	ld   de, $ff6f                                   ; $5fbb: $11 $6f $ff
	sub  $11                                         ; $5fbe: $d6 $11
	ld   de, $ff7f                                   ; $5fc0: $11 $7f $ff
	ld   sp, rAUD1LEN                                   ; $5fc3: $31 $11 $ff
	rst  $38                                         ; $5fc6: $ff
	ld   hl, $ff16                                   ; $5fc7: $21 $16 $ff
	cp   $51                                         ; $5fca: $fe $51
	ld   de, $ff18                                   ; $5fcc: $11 $18 $ff
	di                                               ; $5fcf: $f3
	ld   de, $ff1f                                   ; $5fd0: $11 $1f $ff
	pop  af                                          ; $5fd3: $f1
	ld   de, $ff7f                                   ; $5fd4: $11 $7f $ff
	sub  $11                                         ; $5fd7: $d6 $11
	ld   de, $ff6f                                   ; $5fd9: $11 $6f $ff
	ld   b, c                                        ; $5fdc: $41
	ld   de, $ffff                                   ; $5fdd: $11 $ff $ff
	ld   sp, $ff15                                   ; $5fe0: $31 $15 $ff
	rst  $38                                         ; $5fe3: $ff
	ld   [hl], c                                     ; $5fe4: $71
	ld   de, rAUD1LOW                                   ; $5fe5: $11 $13 $ff
	ld   hl, sp+$11                                  ; $5fe8: $f8 $11
	ld   e, $ff                                      ; $5fea: $1e $ff
	push af                                          ; $5fec: $f5
	ld   de, $ff4f                                   ; $5fed: $11 $4f $ff
	ld   sp, hl                                      ; $5ff0: $f9
	ld   de, $1f11                                   ; $5ff1: $11 $11 $1f
	rst  $38                                         ; $5ff4: $ff
	pop  hl                                          ; $5ff5: $e1
	ld   de, $ff9f                                   ; $5ff6: $11 $9f $ff
	sub  c                                           ; $5ff9: $91
	ld   de, $ffff                                   ; $5ffa: $11 $ff $ff
	sub  c                                           ; $5ffd: $91
	ld   de, rAUD1LEN                                   ; $5ffe: $11 $11 $ff
	rst  $38                                         ; $6001: $ff
	ld   de, rAUD1LOW                                   ; $6002: $11 $13 $ff
	db   $fd                                         ; $6005: $fd
	ld   de, $ff1e                                   ; $6006: $11 $1e $ff
	ei                                               ; $6009: $fb
	ld   hl, $1f11                                   ; $600a: $21 $11 $1f
	rst  $38                                         ; $600d: $ff
	pop  af                                          ; $600e: $f1
	ld   de, $ff1f                                   ; $600f: $11 $1f $ff
	pop  af                                          ; $6012: $f1
	ld   de, $ffbf                                   ; $6013: $11 $bf $ff
	db   $e4                                         ; $6016: $e4
	ld   de, $9f11                                   ; $6017: $11 $11 $9f
	rst  $38                                         ; $601a: $ff
	ld   hl, rAUD1LEN                                   ; $601b: $21 $11 $ff
	rst  $38                                         ; $601e: $ff
	ld   de, $ff16                                   ; $601f: $11 $16 $ff
	rst  $38                                         ; $6022: $ff
	ld   h, c                                        ; $6023: $61
	ld   de, rAUD1LEN                                   ; $6024: $11 $11 $ff
	cp   $11                                         ; $6027: $fe $11
	jr   @+$01                                       ; $6029: $18 $ff

	ld   sp, hl                                      ; $602b: $f9
	ld   de, $ff1f                                   ; $602c: $11 $1f $ff
	ei                                               ; $602f: $fb
	ld   de, $1f11                                   ; $6030: $11 $11 $1f
	rst  $38                                         ; $6033: $ff
	pop  af                                          ; $6034: $f1
	ld   de, $ff1f                                   ; $6035: $11 $1f $ff
	pop  af                                          ; $6038: $f1
	ld   de, $ffcf                                   ; $6039: $11 $cf $ff
	call nc, $1111                                   ; $603c: $d4 $11 $11
	rra                                              ; $603f: $1f
	rst  $38                                         ; $6040: $ff
	and  c                                           ; $6041: $a1
	ld   de, $ffbf                                   ; $6042: $11 $bf $ff
	ld   h, c                                        ; $6045: $61
	ld   de, $ffff                                   ; $6046: $11 $ff $ff
	sub  c                                           ; $6049: $91
	ld   de, rAUD1LEN                                   ; $604a: $11 $11 $ff
	rst  $38                                         ; $604d: $ff
	ld   de, rAUD1LEN                                   ; $604e: $11 $11 $ff
	rst  $38                                         ; $6051: $ff
	ld   de, $ff1c                                   ; $6052: $11 $1c $ff
	db   $fc                                         ; $6055: $fc
	ld   sp, $1111                                   ; $6056: $31 $11 $11
	rst  $38                                         ; $6059: $ff
	ld   a, [$1b11]                                  ; $605a: $fa $11 $1b
	rst  $38                                         ; $605d: $ff
	push af                                          ; $605e: $f5
	ld   de, $ff2f                                   ; $605f: $11 $2f $ff
	rst  $30                                         ; $6062: $f7
	ld   de, $1b11                                   ; $6063: $11 $11 $1b
	rst  $38                                         ; $6066: $ff
	pop  af                                          ; $6067: $f1
	ld   de, $ff1f                                   ; $6068: $11 $1f $ff
	pop  af                                          ; $606b: $f1
	ld   de, $ff9f                                   ; $606c: $11 $9f $ff
	db   $e4                                         ; $606f: $e4
	ld   de, $1f11                                   ; $6070: $11 $11 $1f
	rst  $38                                         ; $6073: $ff
	pop  af                                          ; $6074: $f1
	ld   de, $ff1f                                   ; $6075: $11 $1f $ff
	pop  af                                          ; $6078: $f1
	ld   de, $ffef                                   ; $6079: $11 $ef $ff
	call nz, $1111                                   ; $607c: $c4 $11 $11
	rra                                              ; $607f: $1f
	rst  $38                                         ; $6080: $ff
	pop  af                                          ; $6081: $f1
	ld   de, $ff2f                                   ; $6082: $11 $2f $ff
	pop  bc                                          ; $6085: $c1
	ld   de, $ffff                                   ; $6086: $11 $ff $ff
	sub  d                                           ; $6089: $92
	ld   de, $1f11                                   ; $608a: $11 $11 $1f
	rst  $38                                         ; $608d: $ff
	pop  hl                                          ; $608e: $e1
	ld   de, $ff7f                                   ; $608f: $11 $7f $ff
	add  c                                           ; $6092: $81
	ld   de, $ffff                                   ; $6093: $11 $ff $ff
	add  d                                           ; $6096: $82
	ld   de, $1f11                                   ; $6097: $11 $11 $1f
	rst  $38                                         ; $609a: $ff
	pop  hl                                          ; $609b: $e1
	ld   de, $ff6f                                   ; $609c: $11 $6f $ff
	add  c                                           ; $609f: $81
	ld   de, $ffff                                   ; $60a0: $11 $ff $ff
	ld   [hl], c                                     ; $60a3: $71
	ld   de, $1f11                                   ; $60a4: $11 $11 $1f
	rst  $38                                         ; $60a7: $ff
	pop  af                                          ; $60a8: $f1
	ld   de, $ff4f                                   ; $60a9: $11 $4f $ff
	or   c                                           ; $60ac: $b1
	ld   de, $ffff                                   ; $60ad: $11 $ff $ff
	sub  d                                           ; $60b0: $92
	ld   de, $1f11                                   ; $60b1: $11 $11 $1f
	rst  $38                                         ; $60b4: $ff
	pop  af                                          ; $60b5: $f1
	ld   de, $ff1f                                   ; $60b6: $11 $1f $ff
	pop  af                                          ; $60b9: $f1
	ld   de, $ffff                                   ; $60ba: $11 $ff $ff
	and  d                                           ; $60bd: $a2
	ld   de, $1f11                                   ; $60be: $11 $11 $1f
	rst  $38                                         ; $60c1: $ff
	pop  af                                          ; $60c2: $f1
	ld   de, $ff1f                                   ; $60c3: $11 $1f $ff
	pop  af                                          ; $60c6: $f1
	ld   de, $ffcf                                   ; $60c7: $11 $cf $ff
	call nz, $1111                                   ; $60ca: $c4 $11 $11
	ld   a, [de]                                     ; $60cd: $1a
	rst  $38                                         ; $60ce: $ff
	pop  af                                          ; $60cf: $f1
	ld   de, $ff1f                                   ; $60d0: $11 $1f $ff
	pop  af                                          ; $60d3: $f1
	ld   de, $ff8f                                   ; $60d4: $11 $8f $ff
	db   $e4                                         ; $60d7: $e4
	ld   de, $1111                                   ; $60d8: $11 $11 $11
	rst  $38                                         ; $60db: $ff
	ld   a, [$1911]                                  ; $60dc: $fa $11 $19
	rst  $38                                         ; $60df: $ff
	or   $11                                         ; $60e0: $f6 $11
	rra                                              ; $60e2: $1f
	rst  $38                                         ; $60e3: $ff
	rst  $30                                         ; $60e4: $f7
	ld   de, $1111                                   ; $60e5: $11 $11 $11
	rst  $38                                         ; $60e8: $ff
	rst  $38                                         ; $60e9: $ff
	ld   de, rAUD1LEN                                   ; $60ea: $11 $11 $ff
	rst  $38                                         ; $60ed: $ff
	ld   de, $ff1e                                   ; $60ee: $11 $1e $ff
	ld   sp, hl                                      ; $60f1: $f9
	ld   de, $1111                                   ; $60f2: $11 $11 $11
	ld   l, a                                        ; $60f5: $6f
	rst  $38                                         ; $60f6: $ff
	ld   d, c                                        ; $60f7: $51
	ld   de, $ffff                                   ; $60f8: $11 $ff $ff
	ld   de, $ff15                                   ; $60fb: $11 $15 $ff
	rst  $38                                         ; $60fe: $ff
	ld   b, c                                        ; $60ff: $41
	ld   de, $1f11                                   ; $6100: $11 $11 $1f
	rst  $38                                         ; $6103: $ff
	pop  af                                          ; $6104: $f1
	ld   de, $ff1f                                   ; $6105: $11 $1f $ff
	pop  af                                          ; $6108: $f1
	ld   de, $ffff                                   ; $6109: $11 $ff $ff
	sub  c                                           ; $610c: $91
	ld   de, $1211                                   ; $610d: $11 $11 $12
	rst  $38                                         ; $6110: $ff
	ld   a, [$1c11]                                  ; $6111: $fa $11 $1c
	rst  $38                                         ; $6114: $ff
	db   $f4                                         ; $6115: $f4
	ld   de, $ff2f                                   ; $6116: $11 $2f $ff
	push af                                          ; $6119: $f5
	ld   de, $1111                                   ; $611a: $11 $11 $11
	ld   a, a                                        ; $611d: $7f
	rst  $38                                         ; $611e: $ff
	ld   hl, rAUD1LEN                                   ; $611f: $21 $11 $ff
	rst  $38                                         ; $6122: $ff
	ld   de, $ff19                                   ; $6123: $11 $19 $ff
	db   $fc                                         ; $6126: $fc
	ld   sp, $1111                                   ; $6127: $31 $11 $11
	ld   e, $ff                                      ; $612a: $1e $ff
	pop  af                                          ; $612c: $f1
	ld   de, $ff1f                                   ; $612d: $11 $1f $ff
	pop  af                                          ; $6130: $f1
	ld   de, $ffdf                                   ; $6131: $11 $df $ff
	and  d                                           ; $6134: $a2
	ld   de, $1111                                   ; $6135: $11 $11 $11
	rst  $38                                         ; $6138: $ff
	rst  $38                                         ; $6139: $ff
	ld   de, rAUD1LEN                                   ; $613a: $11 $11 $ff
	cp   $11                                         ; $613d: $fe $11
	rra                                              ; $613f: $1f
	rst  $38                                         ; $6140: $ff
	ld   hl, sp+$11                                  ; $6141: $f8 $11
	ld   de, $1f11                                   ; $6143: $11 $11 $1f
	rst  $38                                         ; $6146: $ff
	pop  af                                          ; $6147: $f1
	ld   de, $ff3f                                   ; $6148: $11 $3f $ff
	pop  de                                          ; $614b: $d1
	ld   de, $ffff                                   ; $614c: $11 $ff $ff
	ld   [hl], c                                     ; $614f: $71
	ld   de, $1111                                   ; $6150: $11 $11 $11
	rst  $38                                         ; $6153: $ff
	rst  $38                                         ; $6154: $ff
	ld   de, rAUD1ENV                                   ; $6155: $11 $12 $ff
	db   $fd                                         ; $6158: $fd
	ld   de, $ff1f                                   ; $6159: $11 $1f $ff
	rst  $30                                         ; $615c: $f7
	ld   de, $1121                                   ; $615d: $11 $21 $11
	dec  de                                          ; $6160: $1b
	rst  $38                                         ; $6161: $ff
	pop  af                                          ; $6162: $f1
	ld   de, $ff1f                                   ; $6163: $11 $1f $ff
	pop  af                                          ; $6166: $f1
	ld   de, $ffcf                                   ; $6167: $11 $cf $ff
	add  c                                           ; $616a: $81
	inc  d                                           ; $616b: $14
	ld   sp, $4f11                                   ; $616c: $31 $11 $4f
	rst  $38                                         ; $616f: $ff
	ld   b, c                                        ; $6170: $41
	ld   de, $ffff                                   ; $6171: $11 $ff $ff
	ld   de, $ff18                                   ; $6174: $11 $18 $ff
	ei                                               ; $6177: $fb
	ld   de, $1134                                   ; $6178: $11 $34 $11
	ld   de, $fdff                                   ; $617b: $11 $ff $fd
	ld   de, $ff1b                                   ; $617e: $11 $1b $ff
	db   $f4                                         ; $6181: $f4
	ld   de, $ff1f                                   ; $6182: $11 $1f $ff
	di                                               ; $6185: $f3
	ld   [de], a                                     ; $6186: $12
	ld   d, d                                        ; $6187: $52
	ld   de, $ff1a                                   ; $6188: $11 $1a $ff
	pop  af                                          ; $618b: $f1
	ld   de, $ff1f                                   ; $618c: $11 $1f $ff
	pop  af                                          ; $618f: $f1
	ld   de, $ffdf                                   ; $6190: $11 $df $ff
	ld   [hl], c                                     ; $6193: $71
	dec  d                                           ; $6194: $15
	ld   [hl], c                                     ; $6195: $71
	ld   de, $ff1f                                   ; $6196: $11 $1f $ff
	or   c                                           ; $6199: $b1
	ld   de, $ffdf                                   ; $619a: $11 $df $ff
	ld   de, rAUD1LOW                                   ; $619d: $11 $13 $ff
	db   $fd                                         ; $61a0: $fd
	ld   de, $7129                                   ; $61a1: $11 $29 $71
	ld   de, $ff4f                                   ; $61a4: $11 $4f $ff
	ld   hl, rAUD1LEN                                   ; $61a7: $21 $11 $ff
	rst  $38                                         ; $61aa: $ff
	ld   de, $ff1b                                   ; $61ab: $11 $1b $ff
	or   $11                                         ; $61ae: $f6 $11
	adc  e                                           ; $61b0: $8b
	ld   sp, $df11                                   ; $61b1: $31 $11 $df
	rst  $38                                         ; $61b4: $ff
	ld   de, rAUD1LEN                                   ; $61b5: $11 $11 $ff
	ei                                               ; $61b8: $fb
	ld   de, $ff1f                                   ; $61b9: $11 $1f $ff
	db   $f4                                         ; $61bc: $f4
	inc  de                                          ; $61bd: $13
	xor  c                                           ; $61be: $a9
	ld   de, rAUD1LEN                                   ; $61bf: $11 $11 $ff
	db   $fd                                         ; $61c2: $fd
	ld   de, $ff1b                                   ; $61c3: $11 $1b $ff
	di                                               ; $61c6: $f3
	ld   de, $ff2f                                   ; $61c7: $11 $2f $ff
	jp   nz, $b715                                   ; $61ca: $c2 $15 $b7

	ld   de, rAUD1LEN                                   ; $61cd: $11 $11 $ff
	ld   hl, sp+$11                                  ; $61d0: $f8 $11
	rra                                              ; $61d2: $1f
	rst  $38                                         ; $61d3: $ff
	pop  af                                          ; $61d4: $f1
	ld   de, $ff6f                                   ; $61d5: $11 $6f $ff
	or   c                                           ; $61d8: $b1
	ld   d, $b7                                      ; $61d9: $16 $b7
	ld   de, rAUD1HIGH                                   ; $61db: $11 $14 $ff
	db   $f4                                         ; $61de: $f4
	ld   de, $ff1f                                   ; $61df: $11 $1f $ff
	pop  af                                          ; $61e2: $f1
	ld   de, $ff8f                                   ; $61e3: $11 $8f $ff
	add  c                                           ; $61e6: $81
	ld   d, $b7                                      ; $61e7: $16 $b7
	ld   de, $ff15                                   ; $61e9: $11 $15 $ff
	di                                               ; $61ec: $f3
	ld   de, $ff1f                                   ; $61ed: $11 $1f $ff
	pop  af                                          ; $61f0: $f1
	ld   de, $ff9f                                   ; $61f1: $11 $9f $ff
	add  c                                           ; $61f4: $81
	ld   d, $a7                                      ; $61f5: $16 $a7
	ld   de, $ff15                                   ; $61f7: $11 $15 $ff
	ldh  a, [c]                                      ; $61fa: $f2
	ld   de, $ff1f                                   ; $61fb: $11 $1f $ff
	pop  af                                          ; $61fe: $f1
	ld   de, $ffaf                                   ; $61ff: $11 $af $ff
	add  c                                           ; $6202: $81
	rla                                              ; $6203: $17
	ret  z                                           ; $6204: $c8

	ld   de, rAUD1ENV                                   ; $6205: $11 $12 $ff
	or   $11                                         ; $6208: $f6 $11
	rra                                              ; $620a: $1f
	rst  $38                                         ; $620b: $ff
	pop  af                                          ; $620c: $f1
	ld   de, $ff7f                                   ; $620d: $11 $7f $ff
	sub  c                                           ; $6210: $91
	rla                                              ; $6211: $17
	rl   c                                           ; $6212: $cb $11
	ld   de, $fbff                                   ; $6214: $11 $ff $fb
	ld   de, $ff1d                                   ; $6217: $11 $1d $ff
	pop  af                                          ; $621a: $f1
	ld   de, $ff3f                                   ; $621b: $11 $3f $ff
	pop  bc                                          ; $621e: $c1
	ld   d, $ce                                      ; $621f: $16 $ce
	ld   sp, $cf11                                   ; $6221: $31 $11 $cf
	rst  $38                                         ; $6224: $ff
	ld   de, rAUD1LEN                                   ; $6225: $11 $11 $ff
	db   $fc                                         ; $6228: $fc
	ld   de, $ff1f                                   ; $6229: $11 $1f $ff
	push af                                          ; $622c: $f5
	inc  de                                          ; $622d: $13
	cp   a                                           ; $622e: $bf
	and  c                                           ; $622f: $a1
	ld   de, $ff2f                                   ; $6230: $11 $2f $ff
	ld   [hl], c                                     ; $6233: $71
	ld   de, $ffff                                   ; $6234: $11 $ff $ff
	ld   de, $ff17                                   ; $6237: $11 $17 $ff
	ld   sp, hl                                      ; $623a: $f9
	ld   de, $f27f                                   ; $623b: $11 $7f $f2
	ld   de, $ff1e                                   ; $623e: $11 $1e $ff
	pop  af                                          ; $6241: $f1
	ld   de, $ff3f                                   ; $6242: $11 $3f $ff
	add  c                                           ; $6245: $81
	ld   de, $ffff                                   ; $6246: $11 $ff $ff
	ld   sp, $fb3c                                   ; $6249: $31 $3c $fb
	ld   de, rAUD1LEN                                   ; $624c: $11 $11 $ff
	ld   a, [$1f11]                                  ; $624f: $fa $11 $1f
	rst  $38                                         ; $6252: $ff
	pop  af                                          ; $6253: $f1
	ld   de, $ff6f                                   ; $6254: $11 $6f $ff
	sub  c                                           ; $6257: $91
	jr   @+$01                                       ; $6258: $18 $ff

	ld   d, c                                        ; $625a: $51
	ld   de, $ff7f                                   ; $625b: $11 $7f $ff
	ld   de, rAUD1LEN                                   ; $625e: $11 $11 $ff
	rst  $38                                         ; $6261: $ff
	ld   de, $ff1d                                   ; $6262: $11 $1d $ff
	push af                                          ; $6265: $f5
	ld   [de], a                                     ; $6266: $12
	xor  a                                           ; $6267: $af
	pop  af                                          ; $6268: $f1
	ld   de, $ff1f                                   ; $6269: $11 $1f $ff
	pop  af                                          ; $626c: $f1
	ld   de, $ff5f                                   ; $626d: $11 $5f $ff
	ld   [hl], c                                     ; $6270: $71
	ld   de, $fdff                                   ; $6271: $11 $ff $fd
	ld   sp, $fb5c                                   ; $6274: $31 $5c $fb
	ld   de, rAUD1LEN                                   ; $6277: $11 $11 $ff
	db   $fd                                         ; $627a: $fd
	ld   de, $ff1a                                   ; $627b: $11 $1a $ff
	ldh  a, [c]                                      ; $627e: $f2
	ld   de, $ff3f                                   ; $627f: $11 $3f $ff
	or   c                                           ; $6282: $b1
	ld   d, $df                                      ; $6283: $16 $df
	add  c                                           ; $6285: $81
	ld   de, $ff2f                                   ; $6286: $11 $2f $ff
	ld   [hl], c                                     ; $6289: $71
	ld   de, $ffff                                   ; $628a: $11 $ff $ff
	ld   de, $ff17                                   ; $628d: $11 $17 $ff
	ld   sp, hl                                      ; $6290: $f9
	ld   de, $f58f                                   ; $6291: $11 $8f $f5
	ld   de, $ff15                                   ; $6294: $11 $15 $ff
	di                                               ; $6297: $f3
	ld   de, $ff1f                                   ; $6298: $11 $1f $ff
	pop  af                                          ; $629b: $f1
	ld   de, $ffbf                                   ; $629c: $11 $bf $ff
	ld   [hl], c                                     ; $629f: $71
	jr   @+$01                                       ; $62a0: $18 $ff

	ld   sp, $7f11                                   ; $62a2: $31 $11 $7f
	rst  $38                                         ; $62a5: $ff
	ld   de, rAUD1LEN                                   ; $62a6: $11 $11 $ff
	rst  $38                                         ; $62a9: $ff
	ld   de, $ff1d                                   ; $62aa: $11 $1d $ff
	push af                                          ; $62ad: $f5
	ld   [de], a                                     ; $62ae: $12
	sbc  a                                           ; $62af: $9f
	di                                               ; $62b0: $f3
	ld   de, $ff18                                   ; $62b1: $11 $18 $ff
	pop  af                                          ; $62b4: $f1
	ld   de, $ff1f                                   ; $62b5: $11 $1f $ff
	pop  af                                          ; $62b8: $f1
	ld   de, $ffef                                   ; $62b9: $11 $ef $ff
	ld   d, c                                        ; $62bc: $51
	dec  hl                                          ; $62bd: $2b
	rst  $38                                         ; $62be: $ff
	ld   sp, $8f11                                   ; $62bf: $31 $11 $8f
	rst  $38                                         ; $62c2: $ff
	ld   de, rAUD1LEN                                   ; $62c3: $11 $11 $ff
	cp   $11                                         ; $62c6: $fe $11
	ld   e, $ff                                      ; $62c8: $1e $ff
	push af                                          ; $62ca: $f5
	inc  de                                          ; $62cb: $13
	xor  a                                           ; $62cc: $af
	di                                               ; $62cd: $f3
	ld   de, $ff17                                   ; $62ce: $11 $17 $ff
	pop  af                                          ; $62d1: $f1
	ld   de, $ff1f                                   ; $62d2: $11 $1f $ff
	pop  af                                          ; $62d5: $f1
	ld   de, $ffcf                                   ; $62d6: $11 $cf $ff
	ld   h, c                                        ; $62d9: $61
	ld   a, [hl-]                                    ; $62da: $3a
	cp   $41                                         ; $62db: $fe $41
	ld   de, $ff5f                                   ; $62dd: $11 $5f $ff
	ld   b, c                                        ; $62e0: $41
	ld   de, $ffff                                   ; $62e1: $11 $ff $ff
	ld   de, $ff1b                                   ; $62e4: $11 $1b $ff
	ld   hl, sp+$13                                  ; $62e7: $f8 $13
	sbc  a                                           ; $62e9: $9f
	push hl                                          ; $62ea: $e5
	ld   de, rAUD1HIGH                                   ; $62eb: $11 $14 $ff
	push af                                          ; $62ee: $f5
	ld   de, $ff1f                                   ; $62ef: $11 $1f $ff
	pop  af                                          ; $62f2: $f1
	ld   de, $ff9f                                   ; $62f3: $11 $9f $ff
	sub  c                                           ; $62f6: $91
	add  hl, hl                                      ; $62f7: $29
	rst  $28                                         ; $62f8: $ef
	ld   [hl], c                                     ; $62f9: $71
	ld   de, $ff1f                                   ; $62fa: $11 $1f $ff
	or   c                                           ; $62fd: $b1
	ld   de, $ffcf                                   ; $62fe: $11 $cf $ff
	ld   sp, rAUD1HIGH                                   ; $6301: $31 $14 $ff
	ei                                               ; $6304: $fb
	ld   sp, $fa7c                                   ; $6305: $31 $7c $fa
	ld   de, $cf11                                   ; $6308: $11 $11 $cf
	rst  $38                                         ; $630b: $ff
	ld   de, rAUD1LEN                                   ; $630c: $11 $11 $ff
	db   $fc                                         ; $630f: $fc
	ld   de, $ff1c                                   ; $6310: $11 $1c $ff
	or   $14                                         ; $6313: $f6 $14
	sbc  a                                           ; $6315: $9f
	push af                                          ; $6316: $f5
	ld   de, rAUD1LOW                                   ; $6317: $11 $13 $ff
	ld   sp, hl                                      ; $631a: $f9
	ld   de, $ff1f                                   ; $631b: $11 $1f $ff
	pop  af                                          ; $631e: $f1
	ld   de, $ff6f                                   ; $631f: $11 $6f $ff
	and  d                                           ; $6322: $a2
	rla                                              ; $6323: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6324: $cf
	sub  c                                           ; $6325: $91
	ld   de, $ff1f                                   ; $6326: $11 $1f $ff
	pop  af                                          ; $6329: $f1
	ld   de, $ff7f                                   ; $632a: $11 $7f $ff
	ld   h, c                                        ; $632d: $61
	ld   de, $feff                                   ; $632e: $11 $ff $fe
	ld   d, c                                        ; $6331: $51
	ld   e, c                                        ; $6332: $59
	db   $fd                                         ; $6333: $fd
	ld   sp, $9f11                                   ; $6334: $31 $11 $9f
	rst  $38                                         ; $6337: $ff
	ld   de, rAUD1LEN                                   ; $6338: $11 $11 $ff
	rst  $38                                         ; $633b: $ff
	ld   de, $ff1a                                   ; $633c: $11 $1a $ff
	ld   sp, hl                                      ; $633f: $f9
	ld   [bc], a                                     ; $6340: $02
	ld   a, l                                        ; $6341: $7d
	rst  $30                                         ; $6342: $f7
	ld   de, rAUD1LEN                                   ; $6343: $11 $11 $ff
	ei                                               ; $6346: $fb
	ld   de, $ff1d                                   ; $6347: $11 $1d $ff
	di                                               ; $634a: $f3
	ld   de, $ff3f                                   ; $634b: $11 $3f $ff
	jp   $bf14                                       ; $634e: $c3 $14 $bf


	pop  bc                                          ; $6351: $c1
	ld   de, $ff1c                                   ; $6352: $11 $1c $ff
	pop  af                                          ; $6355: $f1
	ld   de, $ff2f                                   ; $6356: $11 $2f $ff
	pop  bc                                          ; $6359: $c1
	ld   de, $ffdf                                   ; $635a: $11 $df $ff
	ld   h, c                                        ; $635d: $61

jr_0f4_635e:
	jr   z, jr_0f4_635e                              ; $635e: $28 $fe

	ld   h, c                                        ; $6360: $61
	ld   de, $ff3f                                   ; $6361: $11 $3f $ff
	ld   [hl], c                                     ; $6364: $71
	ld   de, $ffff                                   ; $6365: $11 $ff $ff
	ld   de, $ff16                                   ; $6368: $11 $16 $ff
	ld   a, [$5c11]                                  ; $636b: $fa $11 $5c
	ei                                               ; $636e: $fb
	ld   de, rAUD1LEN                                   ; $636f: $11 $11 $ff
	rst  $38                                         ; $6372: $ff
	ld   de, $ff16                                   ; $6373: $11 $16 $ff
	rst  $30                                         ; $6376: $f7
	ld   de, $ff1e                                   ; $6377: $11 $1e $ff
	db   $f4                                         ; $637a: $f4
	inc  de                                          ; $637b: $13
	sbc  a                                           ; $637c: $9f
	push hl                                          ; $637d: $e5
	ld   de, $ff15                                   ; $637e: $11 $15 $ff
	push af                                          ; $6381: $f5
	ld   de, $ff1f                                   ; $6382: $11 $1f $ff
	pop  af                                          ; $6385: $f1
	ld   de, $ff9f                                   ; $6386: $11 $9f $ff
	sub  c                                           ; $6389: $91
	ld   d, $cf                                      ; $638a: $16 $cf
	sub  c                                           ; $638c: $91
	ld   de, $ff1f                                   ; $638d: $11 $1f $ff
	pop  de                                          ; $6390: $d1
	ld   de, $ff9f                                   ; $6391: $11 $9f $ff
	ld   d, c                                        ; $6394: $51
	ld   [de], a                                     ; $6395: $12
	rst  $38                                         ; $6396: $ff
	db   $fc                                         ; $6397: $fc
	ld   sp, $fc3a                                   ; $6398: $31 $3a $fc
	ld   b, c                                        ; $639b: $41
	ld   de, $ff7f                                   ; $639c: $11 $7f $ff
	ld   sp, rAUD1LEN                                   ; $639f: $31 $11 $ff
	rst  $38                                         ; $63a2: $ff
	ld   de, $ff19                                   ; $63a3: $11 $19 $ff
	ld   hl, sp+$12                                  ; $63a6: $f8 $12
	ld   l, h                                        ; $63a8: $6c
	ld   sp, hl                                      ; $63a9: $f9
	ld   de, rAUD1LEN                                   ; $63aa: $11 $11 $ff
	db   $fc                                         ; $63ad: $fc
	ld   de, $ff1b                                   ; $63ae: $11 $1b $ff
	db   $f4                                         ; $63b1: $f4
	ld   de, $ff3f                                   ; $63b2: $11 $3f $ff
	jp   $af14                                       ; $63b5: $c3 $14 $af


	call nz, $1611                                   ; $63b8: $c4 $11 $16
	rst  $38                                         ; $63bb: $ff
	push af                                          ; $63bc: $f5
	ld   de, $ff1f                                   ; $63bd: $11 $1f $ff
	pop  af                                          ; $63c0: $f1
	ld   de, $ff9f                                   ; $63c1: $11 $9f $ff
	sub  c                                           ; $63c4: $91
	ld   h, $de                                      ; $63c5: $26 $de
	sub  c                                           ; $63c7: $91
	ld   de, $ff1f                                   ; $63c8: $11 $1f $ff
	pop  af                                          ; $63cb: $f1
	ld   de, $ff6f                                   ; $63cc: $11 $6f $ff
	sub  c                                           ; $63cf: $91
	ld   de, $fedf                                   ; $63d0: $11 $df $fe
	ld   d, c                                        ; $63d3: $51
	add  hl, sp                                      ; $63d4: $39
	db   $ec                                         ; $63d5: $ec
	ld   h, c                                        ; $63d6: $61
	ld   de, $ff3f                                   ; $63d7: $11 $3f $ff
	sub  c                                           ; $63da: $91
	ld   de, $ffff                                   ; $63db: $11 $ff $ff
	ld   hl, $ff17                                   ; $63de: $21 $17 $ff
	ei                                               ; $63e1: $fb
	ld   sp, $eb5b                                   ; $63e2: $31 $5b $eb
	ld   hl, $cf11                                   ; $63e5: $21 $11 $cf
	rst  $38                                         ; $63e8: $ff
	ld   de, rAUD1LOW                                   ; $63e9: $11 $13 $ff
	ei                                               ; $63ec: $fb
	ld   de, $ff1b                                   ; $63ed: $11 $1b $ff
	rst  $30                                         ; $63f0: $f7
	inc  de                                          ; $63f1: $13
	ld   a, [hl]                                     ; $63f2: $7e
	reti                                             ; $63f3: $d9


	ld   de, rAUD1LEN                                   ; $63f4: $11 $11 $ff
	db   $fd                                         ; $63f7: $fd
	ld   de, $ff1b                                   ; $63f8: $11 $1b $ff
	push af                                          ; $63fb: $f5
	ld   de, $ff4f                                   ; $63fc: $11 $4f $ff
	push de                                          ; $63ff: $d5
	inc  h                                           ; $6400: $24
	sbc  [hl]                                        ; $6401: $9e
	or   l                                           ; $6402: $b5
	ld   de, $ff16                                   ; $6403: $11 $16 $ff
	push af                                          ; $6406: $f5
	ld   de, $ff1f                                   ; $6407: $11 $1f $ff
	ldh  [c], a                                      ; $640a: $e2
	ld   de, $ff9f                                   ; $640b: $11 $9f $ff
	sub  e                                           ; $640e: $93
	ld   h, $cd                                      ; $640f: $26 $cd
	and  c                                           ; $6411: $a1
	ld   de, $ff1b                                   ; $6412: $11 $1b $ff
	pop  af                                          ; $6415: $f1
	ld   de, $ff4f                                   ; $6416: $11 $4f $ff
	or   c                                           ; $6419: $b1
	ld   de, $ffcf                                   ; $641a: $11 $cf $ff
	ld   [hl], d                                     ; $641d: $72
	scf                                              ; $641e: $37
	db   $dd                                         ; $641f: $dd
	add  c                                           ; $6420: $81
	ld   de, $ff1f                                   ; $6421: $11 $1f $ff
	or   c                                           ; $6424: $b1
	ld   de, $ffbf                                   ; $6425: $11 $bf $ff
	ld   d, c                                        ; $6428: $51
	dec  d                                           ; $6429: $15
	rst  JumpTable                                         ; $642a: $df
	ei                                               ; $642b: $fb
	ld   d, d                                        ; $642c: $52
	ld   c, c                                        ; $642d: $49
	call c, $1161                                    ; $642e: $dc $61 $11
	ld   c, a                                        ; $6431: $4f
	rst  $38                                         ; $6432: $ff
	add  c                                           ; $6433: $81
	ld   de, $ffef                                   ; $6434: $11 $ef $ff
	ld   b, c                                        ; $6437: $41
	rla                                              ; $6438: $17
	rst  $38                                         ; $6439: $ff
	ld   a, [$5a43]                                  ; $643a: $fa $43 $5a
	reti                                             ; $643d: $d9


	ld   hl, $af11                                   ; $643e: $21 $11 $af
	rst  $38                                         ; $6441: $ff
	ld   hl, rAUD1HIGH                                   ; $6442: $21 $14 $ff
	db   $fc                                         ; $6445: $fc
	ld   hl, $ff1b                                   ; $6446: $21 $1b $ff
	ld   hl, sp+$33                                  ; $6449: $f8 $33
	ld   l, h                                        ; $644b: $6c
	ret                                              ; $644c: $c9


	ld   de, $ef11                                   ; $644d: $11 $11 $ef
	rst  $38                                         ; $6450: $ff
	ld   de, $ff17                                   ; $6451: $11 $17 $ff
	ld   sp, hl                                      ; $6454: $f9
	ld   hl, $ff3c                                   ; $6455: $21 $3c $ff
	rst  $10                                         ; $6458: $d7
	inc  [hl]                                        ; $6459: $34
	ld   a, h                                        ; $645a: $7c
	or   a                                           ; $645b: $b7
	ld   de, rAUD1ENV                                   ; $645c: $11 $12 $ff
	ld   a, [$1c11]                                  ; $645f: $fa $11 $1c
	rst  $38                                         ; $6462: $ff
	or   $11                                         ; $6463: $f6 $11
	ld   l, l                                        ; $6465: $6d
	rst  $38                                         ; $6466: $ff
	or   l                                           ; $6467: $b5
	inc  [hl]                                        ; $6468: $34
	sbc  h                                           ; $6469: $9c
	and  [hl]                                        ; $646a: $a6
	ld   de, rAUD1HIGH                                   ; $646b: $11 $14 $ff
	ld   hl, sp+$11                                  ; $646e: $f8 $11
	dec  e                                           ; $6470: $1d
	rst  $38                                         ; $6471: $ff
	or   $11                                         ; $6472: $f6 $11
	ld   a, h                                        ; $6474: $7c
	rst  $38                                         ; $6475: $ff
	or   l                                           ; $6476: $b5
	dec  [hl]                                        ; $6477: $35
	adc  e                                           ; $6478: $8b
	and  h                                           ; $6479: $a4
	ld   de, $ff17                                   ; $647a: $11 $17 $ff
	or   $11                                         ; $647d: $f6 $11
	ld   e, $ff                                      ; $647f: $1e $ff
	push de                                          ; $6481: $d5
	ld   de, $fe8d                                   ; $6482: $11 $8d $fe
	sub  l                                           ; $6485: $95
	ld   b, l                                        ; $6486: $45

Jump_0f4_6487:
	sbc  e                                           ; $6487: $9b
	add  c                                           ; $6488: $81
	ld   de, $ff1c                                   ; $6489: $11 $1c $ff
	pop  af                                          ; $648c: $f1
	ld   de, $ff6f                                   ; $648d: $11 $6f $ff

jr_0f4_6490:
	and  h                                           ; $6490: $a4
	inc  d                                           ; $6491: $14
	sbc  a                                           ; $6492: $9f
	db   $fd                                         ; $6493: $fd
	add  h                                           ; $6494: $84
	ld   b, [hl]                                     ; $6495: $46
	xor  d                                           ; $6496: $aa
	add  c                                           ; $6497: $81
	ld   de, $ff1f                                   ; $6498: $11 $1f $ff
	pop  bc                                          ; $649b: $c1
	ld   de, $ff9f                                   ; $649c: $11 $9f $ff
	sub  h                                           ; $649f: $94
	dec  d                                           ; $64a0: $15
	xor  a                                           ; $64a1: $af
	db   $fc                                         ; $64a2: $fc
	ld   [hl], h                                     ; $64a3: $74
	ld   b, a                                        ; $64a4: $47
	sbc  c                                           ; $64a5: $99
	ld   b, c                                        ; $64a6: $41
	ld   de, $ff9f                                   ; $64a7: $11 $9f $ff
	ld   d, c                                        ; $64aa: $51
	inc  de                                          ; $64ab: $13
	rst  $28                                         ; $64ac: $ef
	db   $fc                                         ; $64ad: $fc
	ld   h, d                                        ; $64ae: $62
	jr   c, jr_0f4_6490                              ; $64af: $38 $df

	ld   [$5854], a                                  ; $64b1: $ea $54 $58
	sbc  b                                           ; $64b4: $98
	ld   de, $df11                                   ; $64b5: $11 $11 $df
	db   $fd                                         ; $64b8: $fd
	ld   hl, $ff18                                   ; $64b9: $21 $18 $ff
	ld   a, [$5952]                                  ; $64bc: $fa $52 $59
	rst  JumpTable                                         ; $64bf: $df
	ret  c                                           ; $64c0: $d8

	ld   d, h                                        ; $64c1: $54
	ld   l, c                                        ; $64c2: $69
	add  h                                           ; $64c3: $84
	ld   de, $ff19                                   ; $64c4: $11 $19 $ff
	db   $f4                                         ; $64c7: $f4
	ld   de, $ff5f                                   ; $64c8: $11 $5f $ff
	add  $24                                         ; $64cb: $c6 $24
	adc  l                                           ; $64cd: $8d
	cp   $95                                         ; $64ce: $fe $95
	ld   b, l                                        ; $64d0: $45
	adc  c                                           ; $64d1: $89
	ld   [hl], c                                     ; $64d2: $71
	ld   de, $ff3e                                   ; $64d3: $11 $3e $ff
	or   c                                           ; $64d6: $b1
	ld   de, $ffbf                                   ; $64d7: $11 $bf $ff
	sub  l                                           ; $64da: $95
	ld   [hl], $ae                                   ; $64db: $36 $ae
	db   $eb                                         ; $64dd: $eb
	add  l                                           ; $64de: $85
	ld   d, [hl]                                     ; $64df: $56
	adc  b                                           ; $64e0: $88
	ld   b, c                                        ; $64e1: $41
	ld   de, $ff9f                                   ; $64e2: $11 $9f $ff
	ld   d, c                                        ; $64e5: $51
	dec  d                                           ; $64e6: $15
	rst  $28                                         ; $64e7: $ef
	db   $fc                                         ; $64e8: $fc
	sub  h                                           ; $64e9: $94
	ld   c, b                                        ; $64ea: $48
	cp   [hl]                                        ; $64eb: $be
	jp   z, $5765                                    ; $64ec: $ca $65 $57

	ld   h, e                                        ; $64ef: $63
	ld   de, $ff2b                                   ; $64f0: $11 $2b $ff
	db   $e4                                         ; $64f3: $e4
	ld   de, $ff7f                                   ; $64f4: $11 $7f $ff
	or   a                                           ; $64f7: $b7
	dec  [hl]                                        ; $64f8: $35
	sbc  h                                           ; $64f9: $9c
	db   $ed                                         ; $64fa: $ed
	and  [hl]                                        ; $64fb: $a6
	ld   b, l                                        ; $64fc: $45
	adc  b                                           ; $64fd: $88
	ld   h, c                                        ; $64fe: $61
	ld   de, $ff4e                                   ; $64ff: $11 $4e $ff
	sub  e                                           ; $6502: $93
	ld   [hl+], a                                    ; $6503: $22
	cp   a                                           ; $6504: $bf
	rst  $38                                         ; $6505: $ff
	and  [hl]                                        ; $6506: $a6
	ld   [hl], $9c                                   ; $6507: $36 $9c
	db   $db                                         ; $6509: $db
	add  l                                           ; $650a: $85
	inc  sp                                          ; $650b: $33
	ld   hl, $9f13                                   ; $650c: $21 $13 $9f
	db   $ed                                         ; $650f: $ed
	ld   h, d                                        ; $6510: $62
	inc  d                                           ; $6511: $14
	rst  $28                                         ; $6512: $ef
	db   $fd                                         ; $6513: $fd
	add  h                                           ; $6514: $84
	scf                                              ; $6515: $37
	cp   [hl]                                        ; $6516: $be
	db   $eb                                         ; $6517: $eb
	ld   [hl], l                                     ; $6518: $75
	ld   b, [hl]                                     ; $6519: $46
	sbc  c                                           ; $651a: $99
	ld   [hl], d                                     ; $651b: $72
	ld   de, $ff3b                                   ; $651c: $11 $3b $ff
	push de                                          ; $651f: $d5
	inc  sp                                          ; $6520: $33
	adc  a                                           ; $6521: $8f
	rst  $38                                         ; $6522: $ff
	cp   b                                           ; $6523: $b8
	ld   b, l                                        ; $6524: $45
	adc  e                                           ; $6525: $8b
	jp   z, $1184                                    ; $6526: $ca $84 $11

	ld   de, $ff6f                                   ; $6529: $11 $6f $ff
	and  c                                           ; $652c: $a1
	ld   de, $ff8f                                   ; $652d: $11 $8f $ff
	and  [hl]                                        ; $6530: $a6
	inc  de                                          ; $6531: $13
	ld   a, h                                        ; $6532: $7c
	cp   $b6                                         ; $6533: $fe $b6
	ld   b, h                                        ; $6535: $44
	ld   a, c                                        ; $6536: $79
	xor  c                                           ; $6537: $a9
	ld   d, c                                        ; $6538: $51
	ld   de, $ed5a                                   ; $6539: $11 $5a $ed
	or   a                                           ; $653c: $b7
	ld   d, [hl]                                     ; $653d: $56
	sbc  h                                           ; $653e: $9c
	xor  $da                                         ; $653f: $ee $da
	ld   [hl], a                                     ; $6541: $77
	ld   a, b                                        ; $6542: $78
	ld   [hl], h                                     ; $6543: $74
	ld   de, $af11                                   ; $6544: $11 $11 $af
	rst  $38                                         ; $6547: $ff
	ld   h, c                                        ; $6548: $61
	ld   [de], a                                     ; $6549: $12
	rst  JumpTable                                         ; $654a: $df
	rst  $38                                         ; $654b: $ff
	ld   [hl], c                                     ; $654c: $71
	inc  de                                          ; $654d: $13
	xor  a                                           ; $654e: $af
	cp   $83                                         ; $654f: $fe $83
	inc  h                                           ; $6551: $24
	adc  h                                           ; $6552: $8c
	db   $db                                         ; $6553: $db
	ld   h, e                                        ; $6554: $63
	inc  hl                                          ; $6555: $23
	ld   a, d                                        ; $6556: $7a
	call z, Call_0f4_77a8                            ; $6557: $cc $a8 $77
	sbc  e                                           ; $655a: $9b
	call c, $74ba                                    ; $655b: $dc $ba $74
	ld   hl, $1311                                   ; $655e: $21 $11 $13
	xor  a                                           ; $6561: $af
	db   $fc                                         ; $6562: $fc
	ld   [hl], e                                     ; $6563: $73
	ld   h, $cf                                      ; $6564: $26 $cf
	db   $fd                                         ; $6566: $fd
	sub  l                                           ; $6567: $95
	ld   b, a                                        ; $6568: $47
	sbc  h                                           ; $6569: $9c
	res  0, [hl]                                     ; $656a: $cb $86
	ld   h, a                                        ; $656c: $67
	sbc  b                                           ; $656d: $98
	ld   [hl], l                                     ; $656e: $75
	ld   [hl+], a                                    ; $656f: $22
	ld   b, a                                        ; $6570: $47
	xor  e                                           ; $6571: $ab
	cp   c                                           ; $6572: $b9
	ld   [hl], a                                     ; $6573: $77
	adc  e                                           ; $6574: $8b
	call $a8ca                                       ; $6575: $cd $ca $a8
	sbc  b                                           ; $6578: $98
	ld   [hl], h                                     ; $6579: $74
	ld   de, $7f11                                   ; $657a: $11 $11 $7f
	rst  $38                                         ; $657d: $ff
	sub  c                                           ; $657e: $91
	ld   de, $ff9f                                   ; $657f: $11 $9f $ff
	sub  e                                           ; $6582: $93
	ld   [de], a                                     ; $6583: $12
	ld   a, l                                        ; $6584: $7d
	cp   $95                                         ; $6585: $fe $95
	inc  [hl]                                        ; $6587: $34
	ld   a, d                                        ; $6588: $7a
	cp   d                                           ; $6589: $ba
	add  l                                           ; $658a: $85
	inc  [hl]                                        ; $658b: $34
	ld   l, c                                        ; $658c: $69
	call z, Call_0f4_77ca                            ; $658d: $cc $ca $77
	adc  d                                           ; $6590: $8a
	call z, $75c9                                    ; $6591: $cc $c9 $75
	ld   hl, $0411                                   ; $6594: $21 $11 $04
	xor  [hl]                                        ; $6597: $ae
	db   $db                                         ; $6598: $db
	ld   [hl], h                                     ; $6599: $74
	ld   b, a                                        ; $659a: $47
	adc  $fc                                         ; $659b: $ce $fc
	sub  [hl]                                        ; $659d: $96
	ld   d, a                                        ; $659e: $57
	sbc  e                                           ; $659f: $9b
	cp   d                                           ; $65a0: $ba
	add  [hl]                                        ; $65a1: $86
	ld   h, a                                        ; $65a2: $67
	ld   [hl], a                                     ; $65a3: $77
	ld   h, h                                        ; $65a4: $64
	ld   b, l                                        ; $65a5: $45
	ld   a, d                                        ; $65a6: $7a
	xor  d                                           ; $65a7: $aa

Jump_0f4_65a8:
	sbc  b                                           ; $65a8: $98
	adc  c                                           ; $65a9: $89
	cp   h                                           ; $65aa: $bc
	res  5, c                                        ; $65ab: $cb $a9
	sbc  c                                           ; $65ad: $99
	add  a                                           ; $65ae: $87
	ld   d, c                                        ; $65af: $51
	ld   de, $ef15                                   ; $65b0: $11 $15 $ef
	ld   a, [$1831]                                  ; $65b3: $fa $31 $18
	rst  $28                                         ; $65b6: $ef
	ld   a, [$3651]                                  ; $65b7: $fa $51 $36
	adc  $da                                         ; $65ba: $ce $da
	ld   h, e                                        ; $65bc: $63
	ld   [hl], $9b                                   ; $65bd: $36 $9b
	cp   c                                           ; $65bf: $b9
	ld   h, h                                        ; $65c0: $64
	ld   b, [hl]                                     ; $65c1: $46
	sbc  h                                           ; $65c2: $9c
	call z, Call_0f4_7797                            ; $65c3: $cc $97 $77
	sbc  d                                           ; $65c6: $9a
	res  3, b                                        ; $65c7: $cb $98
	ld   d, e                                        ; $65c9: $53
	ld   de, $4911                                   ; $65ca: $11 $11 $49
	call $55b8                                       ; $65cd: $cd $b8 $55
	ld   a, d                                        ; $65d0: $7a
	sbc  $db                                         ; $65d1: $de $db
	halt                                             ; $65d3: $76
	ld   h, a                                        ; $65d4: $67
	sbc  e                                           ; $65d5: $9b
	xor  c                                           ; $65d6: $a9
	ld   h, l                                        ; $65d7: $65
	ld   b, h                                        ; $65d8: $44
	ld   b, l                                        ; $65d9: $45
	ld   h, a                                        ; $65da: $67
	adc  d                                           ; $65db: $8a
	sbc  b                                           ; $65dc: $98
	ld   [hl], a                                     ; $65dd: $77
	sbc  d                                           ; $65de: $9a
	call z, $89ca                                    ; $65df: $cc $ca $89
	sbc  c                                           ; $65e2: $99
	xor  d                                           ; $65e3: $aa
	add  l                                           ; $65e4: $85
	ld   hl, $5c11                                   ; $65e5: $21 $11 $5c
	cp   $b4                                         ; $65e8: $fe $b4
	ld   [hl+], a                                    ; $65ea: $22
	ld   a, l                                        ; $65eb: $7d
	rst  $38                                         ; $65ec: $ff
	ret  z                                           ; $65ed: $c8

	ld   b, h                                        ; $65ee: $44
	ld   a, d                                        ; $65ef: $7a
	call c, $4496                                    ; $65f0: $dc $96 $44
	ld   l, c                                        ; $65f3: $69
	xor  c                                           ; $65f4: $a9
	add  l                                           ; $65f5: $85
	ld   b, l                                        ; $65f6: $45
	ld   a, d                                        ; $65f7: $7a
	cp   h                                           ; $65f8: $bc
	xor  c                                           ; $65f9: $a9
	adc  b                                           ; $65fa: $88
	adc  d                                           ; $65fb: $8a
	cp   h                                           ; $65fc: $bc
	jp   z, $5397                                    ; $65fd: $ca $97 $53

	ld   hl, $5a12                                   ; $6600: $21 $12 $5a
	call Call_0f4_55b7                               ; $6603: $cd $b7 $55
	adc  e                                           ; $6606: $8b
	rst  JumpTable                                         ; $6607: $df
	ret                                              ; $6608: $c9


	ld   [hl], l                                     ; $6609: $75
	ld   l, b                                        ; $660a: $68
	xor  e                                           ; $660b: $ab
	sbc  b                                           ; $660c: $98
	ld   h, l                                        ; $660d: $65
	ld   d, [hl]                                     ; $660e: $56
	ld   h, a                                        ; $660f: $67
	ld   [hl], a                                     ; $6610: $77
	adc  b                                           ; $6611: $88
	ld   a, b                                        ; $6612: $78
	adc  c                                           ; $6613: $89
	xor  e                                           ; $6614: $ab
	jp   z, $99a9                                    ; $6615: $ca $a9 $99

	xor  d                                           ; $6618: $aa
	xor  b                                           ; $6619: $a8
	ld   d, d                                        ; $661a: $52
	ld   de, $ad15                                   ; $661b: $11 $15 $ad
	db   $db                                         ; $661e: $db
	ld   h, h                                        ; $661f: $64
	ld   b, a                                        ; $6620: $47
	adc  $fc                                         ; $6621: $ce $fc
	and  [hl]                                        ; $6623: $a6
	ld   d, [hl]                                     ; $6624: $56
	sbc  d                                           ; $6625: $9a
	cp   d                                           ; $6626: $ba
	add  [hl]                                        ; $6627: $86
	ld   d, [hl]                                     ; $6628: $56
	ld   a, c                                        ; $6629: $79
	adc  b                                           ; $662a: $88
	ld   [hl], a                                     ; $662b: $77
	ld   [hl], a                                     ; $662c: $77
	adc  c                                           ; $662d: $89
	xor  d                                           ; $662e: $aa
	xor  d                                           ; $662f: $aa
	xor  c                                           ; $6630: $a9
	sbc  c                                           ; $6631: $99
	xor  d                                           ; $6632: $aa
	xor  d                                           ; $6633: $aa
	sub  [hl]                                        ; $6634: $96
	ld   sp, $4711                                   ; $6635: $31 $11 $47
	xor  e                                           ; $6638: $ab
	cp   c                                           ; $6639: $b9
	ld   h, [hl]                                     ; $663a: $66
	ld   l, d                                        ; $663b: $6a
	sbc  $ec                                         ; $663c: $de $ec
	add  [hl]                                        ; $663e: $86
	ld   h, a                                        ; $663f: $67
	adc  d                                           ; $6640: $8a
	cp   c                                           ; $6641: $b9
	ld   [hl], l                                     ; $6642: $75
	ld   b, h                                        ; $6643: $44
	ld   d, a                                        ; $6644: $57
	sbc  d                                           ; $6645: $9a
	xor  c                                           ; $6646: $a9
	halt                                             ; $6647: $76
	ld   l, b                                        ; $6648: $68
	xor  e                                           ; $6649: $ab
	res  3, b                                        ; $664a: $cb $98
	ld   a, b                                        ; $664c: $78
	sbc  d                                           ; $664d: $9a
	cp   c                                           ; $664e: $b9
	ld   h, e                                        ; $664f: $63
	ld   de, $9c15                                   ; $6650: $11 $15 $9c
	jp   z, Jump_0f4_5774                            ; $6653: $ca $74 $57

	cp   l                                           ; $6656: $bd
	db   $ed                                         ; $6657: $ed
	sub  a                                           ; $6658: $97
	ld   d, [hl]                                     ; $6659: $56
	adc  d                                           ; $665a: $8a
	cp   e                                           ; $665b: $bb
	add  [hl]                                        ; $665c: $86
	ld   b, e                                        ; $665d: $43
	ld   d, [hl]                                     ; $665e: $56
	adc  d                                           ; $665f: $8a
	xor  c                                           ; $6660: $a9
	halt                                             ; $6661: $76
	ld   h, a                                        ; $6662: $67
	sbc  e                                           ; $6663: $9b
	call z, Call_0f4_77a9                            ; $6664: $cc $a9 $77
	adc  d                                           ; $6667: $8a
	cp   e                                           ; $6668: $bb
	sub  l                                           ; $6669: $95
	ld   hl, $6b13                                   ; $666a: $21 $13 $6b
	cp   d                                           ; $666d: $ba
	add  [hl]                                        ; $666e: $86
	ld   d, [hl]                                     ; $666f: $56
	xor  l                                           ; $6670: $ad
	sbc  $a8                                         ; $6671: $de $a8
	ld   h, l                                        ; $6673: $65
	ld   a, c                                        ; $6674: $79
	cp   d                                           ; $6675: $ba
	sub  [hl]                                        ; $6676: $96
	ld   b, e                                        ; $6677: $43
	dec  [hl]                                        ; $6678: $35
	sbc  d                                           ; $6679: $9a
	cp   c                                           ; $667a: $b9
	add  [hl]                                        ; $667b: $86
	ld   d, [hl]                                     ; $667c: $56
	sbc  e                                           ; $667d: $9b
	call z, Call_0f4_77b9                            ; $667e: $cc $b9 $77
	adc  c                                           ; $6681: $89
	xor  d                                           ; $6682: $aa
	sub  [hl]                                        ; $6683: $96
	ld   sp, $7b13                                   ; $6684: $31 $13 $7b
	cp   e                                           ; $6687: $bb
	add  l                                           ; $6688: $85
	ld   d, [hl]                                     ; $6689: $56
	xor  h                                           ; $668a: $ac
	db   $ed                                         ; $668b: $ed
	xor  b                                           ; $668c: $a8
	ld   h, [hl]                                     ; $668d: $66
	ld   a, c                                        ; $668e: $79
	cp   d                                           ; $668f: $ba
	sub  [hl]                                        ; $6690: $96
	ld   b, e                                        ; $6691: $43
	ld   b, [hl]                                     ; $6692: $46
	adc  d                                           ; $6693: $8a
	xor  d                                           ; $6694: $aa
	halt                                             ; $6695: $76

Jump_0f4_6696:
	ld   d, a                                        ; $6696: $57
	sbc  e                                           ; $6697: $9b
	call z, Call_0f4_77a8                            ; $6698: $cc $a8 $77
	sbc  d                                           ; $669b: $9a
	xor  d                                           ; $669c: $aa
	add  l                                           ; $669d: $85
	ld   sp, $8b25                                   ; $669e: $31 $25 $8b
	xor  c                                           ; $66a1: $a9
	halt                                             ; $66a2: $76
	ld   h, a                                        ; $66a3: $67
	xor  h                                           ; $66a4: $ac
	call c, Call_0f4_66a8                            ; $66a5: $dc $a8 $66

Call_0f4_66a8:
	adc  c                                           ; $66a8: $89
	cp   d                                           ; $66a9: $ba
	add  l                                           ; $66aa: $85
	ld   hl, $9c36                                   ; $66ab: $21 $36 $9c
	cp   c                                           ; $66ae: $b9
	ld   [hl], l                                     ; $66af: $75
	ld   d, a                                        ; $66b0: $57
	cp   l                                           ; $66b1: $bd
	db   $db                                         ; $66b2: $db
	sub  a                                           ; $66b3: $97
	ld   h, [hl]                                     ; $66b4: $66
	adc  d                                           ; $66b5: $8a
	cp   d                                           ; $66b6: $ba
	ld   [hl], l                                     ; $66b7: $75

Call_0f4_66b8:
	ld   [hl+], a                                    ; $66b8: $22
	ld   b, a                                        ; $66b9: $47
	xor  h                                           ; $66ba: $ac
	xor  c                                           ; $66bb: $a9
	ld   h, l                                        ; $66bc: $65
	ld   e, b                                        ; $66bd: $58
	cp   h                                           ; $66be: $bc
	res  2, [hl]                                     ; $66bf: $cb $96
	ld   h, a                                        ; $66c1: $67
	sbc  d                                           ; $66c2: $9a
	cp   d                                           ; $66c3: $ba
	ld   h, e                                        ; $66c4: $63
	ld   [hl+], a                                    ; $66c5: $22
	ld   b, a                                        ; $66c6: $47
	cp   h                                           ; $66c7: $bc
	xor  b                                           ; $66c8: $a8
	ld   d, l                                        ; $66c9: $55
	ld   l, c                                        ; $66ca: $69
	call $86ca                                       ; $66cb: $cd $ca $86
	ld   h, a                                        ; $66ce: $67
	xor  e                                           ; $66cf: $ab
	xor  c                                           ; $66d0: $a9
	ld   h, e                                        ; $66d1: $63
	inc  de                                          ; $66d2: $13
	ld   e, c                                        ; $66d3: $59
	call z, Call_0f4_55a7                            ; $66d4: $cc $a7 $55
	ld   a, d                                        ; $66d7: $7a
	call Call_0f4_76ca                               ; $66d8: $cd $ca $76
	ld   l, b                                        ; $66db: $68
	xor  e                                           ; $66dc: $ab
	cp   b                                           ; $66dd: $b8
	ld   d, d                                        ; $66de: $52
	inc  h                                           ; $66df: $24
	ld   a, d                                        ; $66e0: $7a
	res  2, [hl]                                     ; $66e1: $cb $96
	ld   d, l                                        ; $66e3: $55
	adc  e                                           ; $66e4: $8b
	call Call_0f4_66b8                               ; $66e5: $cd $b8 $66
	ld   a, b                                        ; $66e8: $78
	cp   e                                           ; $66e9: $bb
	and  a                                           ; $66ea: $a7
	ld   b, d                                        ; $66eb: $42
	dec  h                                           ; $66ec: $25
	adc  d                                           ; $66ed: $8a
	res  0, [hl]                                     ; $66ee: $cb $86
	ld   d, [hl]                                     ; $66f0: $56
	sbc  h                                           ; $66f1: $9c
	call Call_0f4_66a8                               ; $66f2: $cd $a8 $66
	ld   a, c                                        ; $66f5: $79
	xor  d                                           ; $66f6: $aa
	sub  [hl]                                        ; $66f7: $96
	ld   [hl-], a                                    ; $66f8: $32
	ld   [hl], $9b                                   ; $66f9: $36 $9b
	cp   c                                           ; $66fb: $b9
	ld   [hl], l                                     ; $66fc: $75
	ld   d, a                                        ; $66fd: $57
	xor  h                                           ; $66fe: $ac

Call_0f4_66ff:
	res  4, a                                        ; $66ff: $cb $a7
	ld   h, [hl]                                     ; $6701: $66
	adc  c                                           ; $6702: $89
	xor  d                                           ; $6703: $aa
	add  l                                           ; $6704: $85
	inc  sp                                          ; $6705: $33
	ld   b, a                                        ; $6706: $47
	xor  e                                           ; $6707: $ab
	cp   b                                           ; $6708: $b8
	ld   h, l                                        ; $6709: $65
	ld   l, c                                        ; $670a: $69
	cp   h                                           ; $670b: $bc
	res  2, a                                        ; $670c: $cb $97
	ld   h, a                                        ; $670e: $67
	sbc  d                                           ; $670f: $9a
	cp   c                                           ; $6710: $b9
	ld   [hl], h                                     ; $6711: $74
	inc  [hl]                                        ; $6712: $34
	ld   l, c                                        ; $6713: $69
	cp   d                                           ; $6714: $ba
	sub  a                                           ; $6715: $97
	ld   h, [hl]                                     ; $6716: $66
	ld   a, d                                        ; $6717: $7a
	cp   h                                           ; $6718: $bc
	ret                                              ; $6719: $c9


	add  [hl]                                        ; $671a: $86
	ld   a, b                                        ; $671b: $78
	xor  d                                           ; $671c: $aa
	sbc  b                                           ; $671d: $98
	ld   h, h                                        ; $671e: $64
	inc  [hl]                                        ; $671f: $34
	ld   a, d                                        ; $6720: $7a
	xor  e                                           ; $6721: $ab
	sub  a                                           ; $6722: $97
	ld   h, [hl]                                     ; $6723: $66
	adc  e                                           ; $6724: $8b
	cp   h                                           ; $6725: $bc
	xor  b                                           ; $6726: $a8
	halt                                             ; $6727: $76
	ld   a, c                                        ; $6728: $79
	sbc  d                                           ; $6729: $9a
	sub  a                                           ; $672a: $97
	ld   d, e                                        ; $672b: $53
	ld   b, [hl]                                     ; $672c: $46
	sbc  d                                           ; $672d: $9a
	cp   c                                           ; $672e: $b9
	add  [hl]                                        ; $672f: $86
	ld   h, a                                        ; $6730: $67
	xor  e                                           ; $6731: $ab
	cp   e                                           ; $6732: $bb
	sbc  b                                           ; $6733: $98
	ld   [hl], a                                     ; $6734: $77
	adc  c                                           ; $6735: $89
	sbc  c                                           ; $6736: $99
	halt                                             ; $6737: $76
	ld   b, h                                        ; $6738: $44
	ld   d, a                                        ; $6739: $57
	sbc  d                                           ; $673a: $9a
	xor  b                                           ; $673b: $a8
	halt                                             ; $673c: $76
	ld   a, b                                        ; $673d: $78
	xor  h                                           ; $673e: $ac
	jp   z, Jump_0f4_7787                            ; $673f: $ca $87 $77

	sbc  c                                           ; $6742: $99
	sbc  b                                           ; $6743: $98
	ld   h, l                                        ; $6744: $65
	ld   b, l                                        ; $6745: $45
	ld   l, b                                        ; $6746: $68
	sbc  d                                           ; $6747: $9a
	sbc  b                                           ; $6748: $98
	ld   [hl], a                                     ; $6749: $77
	adc  c                                           ; $674a: $89
	xor  e                                           ; $674b: $ab
	cp   c                                           ; $674c: $b9
	add  a                                           ; $674d: $87
	ld   a, b                                        ; $674e: $78
	sbc  c                                           ; $674f: $99
	sub  a                                           ; $6750: $97
	ld   d, l                                        ; $6751: $55
	ld   d, [hl]                                     ; $6752: $56
	adc  c                                           ; $6753: $89
	sbc  c                                           ; $6754: $99
	add  a                                           ; $6755: $87
	ld   a, b                                        ; $6756: $78
	sbc  e                                           ; $6757: $9b
	cp   e                                           ; $6758: $bb
	xor  b                                           ; $6759: $a8
	ld   [hl], a                                     ; $675a: $77
	adc  c                                           ; $675b: $89
	adc  b                                           ; $675c: $88
	halt                                             ; $675d: $76
	ld   d, l                                        ; $675e: $55
	ld   h, a                                        ; $675f: $67
	sbc  d                                           ; $6760: $9a
	sbc  b                                           ; $6761: $98
	ld   [hl], a                                     ; $6762: $77
	adc  c                                           ; $6763: $89
	xor  e                                           ; $6764: $ab
	xor  d                                           ; $6765: $aa
	sub  a                                           ; $6766: $97
	ld   a, b                                        ; $6767: $78
	adc  c                                           ; $6768: $89
	add  a                                           ; $6769: $87
	ld   h, l                                        ; $676a: $65
	ld   d, [hl]                                     ; $676b: $56
	ld   a, b                                        ; $676c: $78
	sbc  c                                           ; $676d: $99
	sub  a                                           ; $676e: $97
	ld   a, b                                        ; $676f: $78
	adc  c                                           ; $6770: $89
	xor  d                                           ; $6771: $aa
	xor  c                                           ; $6772: $a9
	add  a                                           ; $6773: $87
	adc  b                                           ; $6774: $88
	adc  b                                           ; $6775: $88

Jump_0f4_6776:
	halt                                             ; $6776: $76
	ld   h, [hl]                                     ; $6777: $66
	ld   h, a                                        ; $6778: $67
	sbc  b                                           ; $6779: $98
	adc  c                                           ; $677a: $89
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	xor  c                                           ; $677d: $a9
	sbc  c                                           ; $677e: $99
	adc  b                                           ; $677f: $88
	ld   [hl], a                                     ; $6780: $77
	adc  b                                           ; $6781: $88
	ld   [hl], a                                     ; $6782: $77
	ld   h, [hl]                                     ; $6783: $66
	ld   h, a                                        ; $6784: $67
	ld   a, c                                        ; $6785: $79
	adc  b                                           ; $6786: $88
	sbc  b                                           ; $6787: $98
	adc  c                                           ; $6788: $89
	sbc  d                                           ; $6789: $9a
	sbc  d                                           ; $678a: $9a
	sbc  c                                           ; $678b: $99
	adc  b                                           ; $678c: $88
	adc  b                                           ; $678d: $88
	ld   [hl], a                                     ; $678e: $77
	halt                                             ; $678f: $76
	ld   h, [hl]                                     ; $6790: $66
	ld   a, b                                        ; $6791: $78
	sbc  b                                           ; $6792: $98
	sbc  b                                           ; $6793: $98
	adc  b                                           ; $6794: $88
	adc  c                                           ; $6795: $89
	xor  d                                           ; $6796: $aa
	sbc  c                                           ; $6797: $99
	sbc  b                                           ; $6798: $98
	add  a                                           ; $6799: $87
	ld   [hl], a                                     ; $679a: $77
	ld   [hl], a                                     ; $679b: $77
	ld   h, a                                        ; $679c: $67
	ld   [hl], a                                     ; $679d: $77
	adc  c                                           ; $679e: $89
	sbc  c                                           ; $679f: $99
	sbc  c                                           ; $67a0: $99
	adc  c                                           ; $67a1: $89
	sbc  d                                           ; $67a2: $9a
	sbc  c                                           ; $67a3: $99
	sbc  b                                           ; $67a4: $98
	add  a                                           ; $67a5: $87
	ld   [hl], a                                     ; $67a6: $77
	ld   [hl], a                                     ; $67a7: $77
	ld   [hl], a                                     ; $67a8: $77
	ld   [hl], a                                     ; $67a9: $77
	adc  c                                           ; $67aa: $89
	sbc  c                                           ; $67ab: $99
	sbc  c                                           ; $67ac: $99
	adc  c                                           ; $67ad: $89
	sbc  c                                           ; $67ae: $99
	sbc  c                                           ; $67af: $99
	adc  b                                           ; $67b0: $88
	add  a                                           ; $67b1: $87
	ld   [hl], a                                     ; $67b2: $77
	ld   [hl], a                                     ; $67b3: $77
	ld   [hl], a                                     ; $67b4: $77
	ld   [hl], a                                     ; $67b5: $77
	adc  b                                           ; $67b6: $88
	sbc  c                                           ; $67b7: $99
	sbc  c                                           ; $67b8: $99
	adc  c                                           ; $67b9: $89
	sbc  c                                           ; $67ba: $99
	sbc  c                                           ; $67bb: $99
	adc  b                                           ; $67bc: $88
	add  a                                           ; $67bd: $87
	ld   [hl], a                                     ; $67be: $77
	ld   [hl], a                                     ; $67bf: $77
	ld   [hl], a                                     ; $67c0: $77
	ld   [hl], a                                     ; $67c1: $77
	adc  b                                           ; $67c2: $88
	sbc  c                                           ; $67c3: $99
	adc  b                                           ; $67c4: $88
	sbc  c                                           ; $67c5: $99
	sbc  c                                           ; $67c6: $99
	sbc  c                                           ; $67c7: $99
	adc  b                                           ; $67c8: $88
	add  a                                           ; $67c9: $87
	ld   [hl], a                                     ; $67ca: $77
	ld   h, a                                        ; $67cb: $67
	ld   [hl], a                                     ; $67cc: $77
	ld   a, b                                        ; $67cd: $78
	adc  b                                           ; $67ce: $88
	sbc  c                                           ; $67cf: $99
	adc  c                                           ; $67d0: $89
	sbc  c                                           ; $67d1: $99
	sbc  c                                           ; $67d2: $99
	sbc  b                                           ; $67d3: $98
	adc  b                                           ; $67d4: $88
	ld   [hl], a                                     ; $67d5: $77
	ld   [hl], a                                     ; $67d6: $77
	ld   [hl], a                                     ; $67d7: $77
	ld   [hl], a                                     ; $67d8: $77
	adc  b                                           ; $67d9: $88
	adc  c                                           ; $67da: $89
	sbc  c                                           ; $67db: $99
	adc  c                                           ; $67dc: $89
	sbc  c                                           ; $67dd: $99
	sbc  c                                           ; $67de: $99
	adc  c                                           ; $67df: $89
	add  a                                           ; $67e0: $87
	ld   [hl], a                                     ; $67e1: $77
	ld   [hl], a                                     ; $67e2: $77
	ld   [hl], a                                     ; $67e3: $77
	ld   [hl], a                                     ; $67e4: $77
	adc  b                                           ; $67e5: $88
	adc  c                                           ; $67e6: $89
	sbc  b                                           ; $67e7: $98
	sbc  c                                           ; $67e8: $99
	sbc  c                                           ; $67e9: $99
	sbc  c                                           ; $67ea: $99
	sbc  b                                           ; $67eb: $98
	ld   [hl], a                                     ; $67ec: $77
	ld   [hl], a                                     ; $67ed: $77
	ld   [hl], a                                     ; $67ee: $77
	ld   [hl], a                                     ; $67ef: $77
	ld   a, b                                        ; $67f0: $78
	adc  b                                           ; $67f1: $88
	sbc  c                                           ; $67f2: $99
	adc  c                                           ; $67f3: $89
	sbc  c                                           ; $67f4: $99
	sbc  c                                           ; $67f5: $99
	adc  c                                           ; $67f6: $89
	adc  b                                           ; $67f7: $88
	ld   [hl], a                                     ; $67f8: $77
	ld   [hl], a                                     ; $67f9: $77
	ld   [hl], a                                     ; $67fa: $77
	ld   a, b                                        ; $67fb: $78
	adc  b                                           ; $67fc: $88
	adc  b                                           ; $67fd: $88
	sbc  b                                           ; $67fe: $98
	adc  c                                           ; $67ff: $89
	sbc  c                                           ; $6800: $99
	sbc  b                                           ; $6801: $98
	sbc  b                                           ; $6802: $98
	add  a                                           ; $6803: $87
	ld   [hl], a                                     ; $6804: $77
	ld   [hl], a                                     ; $6805: $77
	ld   [hl], a                                     ; $6806: $77
	adc  b                                           ; $6807: $88
	adc  b                                           ; $6808: $88
	adc  c                                           ; $6809: $89
	sbc  b                                           ; $680a: $98
	adc  c                                           ; $680b: $89
	sbc  c                                           ; $680c: $99
	adc  c                                           ; $680d: $89
	add  a                                           ; $680e: $87
	ld   [hl], a                                     ; $680f: $77
	ld   [hl], a                                     ; $6810: $77
	ld   [hl], a                                     ; $6811: $77
	ld   a, b                                        ; $6812: $78
	adc  b                                           ; $6813: $88
	adc  c                                           ; $6814: $89
	sbc  b                                           ; $6815: $98
	adc  b                                           ; $6816: $88
	adc  b                                           ; $6817: $88
	adc  c                                           ; $6818: $89
	adc  b                                           ; $6819: $88
	ld   [hl], a                                     ; $681a: $77
	ld   [hl], a                                     ; $681b: $77
	ld   [hl], a                                     ; $681c: $77
	ld   a, b                                        ; $681d: $78
	adc  b                                           ; $681e: $88
	adc  b                                           ; $681f: $88
	sbc  c                                           ; $6820: $99
	adc  b                                           ; $6821: $88
	adc  b                                           ; $6822: $88
	adc  c                                           ; $6823: $89
	adc  b                                           ; $6824: $88
	add  a                                           ; $6825: $87
	ld   [hl], a                                     ; $6826: $77
	ld   [hl], a                                     ; $6827: $77
	ld   [hl], a                                     ; $6828: $77
	adc  b                                           ; $6829: $88
	adc  b                                           ; $682a: $88
	adc  c                                           ; $682b: $89
	sbc  c                                           ; $682c: $99
	adc  b                                           ; $682d: $88
	adc  b                                           ; $682e: $88
	sbc  b                                           ; $682f: $98
	add  a                                           ; $6830: $87
	ld   [hl], a                                     ; $6831: $77
	ld   [hl], a                                     ; $6832: $77
	ld   [hl], a                                     ; $6833: $77
	ld   a, b                                        ; $6834: $78
	adc  b                                           ; $6835: $88
	adc  c                                           ; $6836: $89
	sbc  c                                           ; $6837: $99
	sbc  c                                           ; $6838: $99
	sbc  c                                           ; $6839: $99
	sbc  b                                           ; $683a: $98
	adc  b                                           ; $683b: $88
	ld   [hl], a                                     ; $683c: $77
	ld   [hl], a                                     ; $683d: $77
	ld   [hl], a                                     ; $683e: $77
	ld   a, b                                        ; $683f: $78
	adc  b                                           ; $6840: $88
	adc  b                                           ; $6841: $88
	adc  c                                           ; $6842: $89
	sbc  c                                           ; $6843: $99
	sbc  c                                           ; $6844: $99
	sbc  b                                           ; $6845: $98
	adc  b                                           ; $6846: $88
	ld   [hl], a                                     ; $6847: $77
	ld   [hl], a                                     ; $6848: $77
	ld   [hl], a                                     ; $6849: $77
	ld   [hl], a                                     ; $684a: $77
	adc  b                                           ; $684b: $88
	adc  b                                           ; $684c: $88
	adc  b                                           ; $684d: $88
	adc  c                                           ; $684e: $89
	sbc  b                                           ; $684f: $98
	adc  b                                           ; $6850: $88
	adc  b                                           ; $6851: $88
	ld   [hl], a                                     ; $6852: $77
	ld   [hl], a                                     ; $6853: $77
	ld   [hl], a                                     ; $6854: $77
	ld   a, b                                        ; $6855: $78
	adc  b                                           ; $6856: $88
	adc  b                                           ; $6857: $88
	adc  b                                           ; $6858: $88
	adc  b                                           ; $6859: $88
	adc  b                                           ; $685a: $88
	adc  b                                           ; $685b: $88
	adc  b                                           ; $685c: $88
	add  a                                           ; $685d: $87
	ld   [hl], a                                     ; $685e: $77
	ld   [hl], a                                     ; $685f: $77
	adc  b                                           ; $6860: $88
	adc  b                                           ; $6861: $88
	adc  b                                           ; $6862: $88
	adc  b                                           ; $6863: $88
	adc  b                                           ; $6864: $88
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	adc  b                                           ; $6867: $88
	adc  b                                           ; $6868: $88
	adc  b                                           ; $6869: $88
	adc  b                                           ; $686a: $88
	adc  b                                           ; $686b: $88
	adc  b                                           ; $686c: $88
	adc  b                                           ; $686d: $88
	adc  b                                           ; $686e: $88
	adc  b                                           ; $686f: $88
	adc  b                                           ; $6870: $88
	adc  b                                           ; $6871: $88
	adc  b                                           ; $6872: $88
	adc  b                                           ; $6873: $88
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	adc  b                                           ; $687b: $88
	adc  b                                           ; $687c: $88
	add  c                                           ; $687d: $81
	nop                                              ; $687e: $00
	ld   c, b                                        ; $687f: $48
	ld   de, $1111                                   ; $6880: $11 $11 $11
	ld   de, $1111                                   ; $6883: $11 $11 $11
	ld   de, $1111                                   ; $6886: $11 $11 $11
	ld   de, $5413                                   ; $6889: $11 $13 $54
	ld   d, h                                        ; $688c: $54
	ld   d, h                                        ; $688d: $54
	ld   b, c                                        ; $688e: $41
	rra                                              ; $688f: $1f
	rst  $38                                         ; $6890: $ff
	pop  af                                          ; $6891: $f1
	ld   de, $1411                                   ; $6892: $11 $11 $14
	pop  hl                                          ; $6895: $e1

Jump_0f4_6896:
	ld   de, $dd1c                                   ; $6896: $11 $1c $dd
	call c, $d1dd                                    ; $6899: $dc $dd $d1
	ld   de, $1111                                   ; $689c: $11 $11 $11
	ld   de, $1111                                   ; $689f: $11 $11 $11
	ld   de, $1111                                   ; $68a2: $11 $11 $11
	ld   de, $1111                                   ; $68a5: $11 $11 $11
	ld   de, $5411                                   ; $68a8: $11 $11 $54
	ld   b, h                                        ; $68ab: $44
	call nc, Call_0f4_5411                           ; $68ac: $d4 $11 $54
	ld   d, h                                        ; $68af: $54
	ld   h, a                                        ; $68b0: $67
	ld   [hl], d                                     ; $68b1: $72
	ld   de, $1111                                   ; $68b2: $11 $11 $11
	ld   de, $1112                                   ; $68b5: $11 $12 $11
	ld   [de], a                                     ; $68b8: $12
	ld   de, $1111                                   ; $68b9: $11 $11 $11
	ld   h, [hl]                                     ; $68bc: $66
	halt                                             ; $68bd: $76
	and  h                                           ; $68be: $a4
	ld   de, $8888                                   ; $68bf: $11 $88 $88
	adc  b                                           ; $68c2: $88
	adc  b                                           ; $68c3: $88
	adc  b                                           ; $68c4: $88
	adc  b                                           ; $68c5: $88
	adc  b                                           ; $68c6: $88
	adc  b                                           ; $68c7: $88
	adc  b                                           ; $68c8: $88
	adc  b                                           ; $68c9: $88
	adc  b                                           ; $68ca: $88
	adc  b                                           ; $68cb: $88
	adc  b                                           ; $68cc: $88
	adc  b                                           ; $68cd: $88
	adc  b                                           ; $68ce: $88
	adc  b                                           ; $68cf: $88
	adc  b                                           ; $68d0: $88
	adc  b                                           ; $68d1: $88
	adc  b                                           ; $68d2: $88
	adc  b                                           ; $68d3: $88
	sbc  b                                           ; $68d4: $98
	adc  b                                           ; $68d5: $88
	adc  b                                           ; $68d6: $88
	adc  b                                           ; $68d7: $88
	adc  b                                           ; $68d8: $88
	adc  b                                           ; $68d9: $88
	adc  b                                           ; $68da: $88
	adc  b                                           ; $68db: $88
	adc  c                                           ; $68dc: $89
	sbc  c                                           ; $68dd: $99
	adc  b                                           ; $68de: $88
	ld   [hl], a                                     ; $68df: $77
	adc  b                                           ; $68e0: $88
	sbc  b                                           ; $68e1: $98
	adc  b                                           ; $68e2: $88
	ld   a, b                                        ; $68e3: $78
	adc  b                                           ; $68e4: $88
	adc  b                                           ; $68e5: $88
	sbc  b                                           ; $68e6: $98
	adc  b                                           ; $68e7: $88
	adc  b                                           ; $68e8: $88
	adc  c                                           ; $68e9: $89
	adc  b                                           ; $68ea: $88
	adc  b                                           ; $68eb: $88
	adc  b                                           ; $68ec: $88
	adc  c                                           ; $68ed: $89
	adc  b                                           ; $68ee: $88
	ld   [hl], a                                     ; $68ef: $77
	adc  b                                           ; $68f0: $88
	adc  c                                           ; $68f1: $89
	sbc  b                                           ; $68f2: $98
	ld   [hl], a                                     ; $68f3: $77
	ld   a, b                                        ; $68f4: $78
	adc  c                                           ; $68f5: $89
	sbc  b                                           ; $68f6: $98
	add  a                                           ; $68f7: $87
	ld   a, b                                        ; $68f8: $78
	adc  b                                           ; $68f9: $88
	adc  c                                           ; $68fa: $89
	sub  a                                           ; $68fb: $97
	ld   [hl], a                                     ; $68fc: $77
	ld   a, c                                        ; $68fd: $79
	adc  b                                           ; $68fe: $88
	sub  a                                           ; $68ff: $97
	ld   [hl], a                                     ; $6900: $77
	ld   a, c                                        ; $6901: $79
	adc  c                                           ; $6902: $89
	adc  b                                           ; $6903: $88
	add  a                                           ; $6904: $87
	ld   a, b                                        ; $6905: $78
	adc  b                                           ; $6906: $88
	sbc  c                                           ; $6907: $99
	adc  b                                           ; $6908: $88
	add  a                                           ; $6909: $87
	adc  b                                           ; $690a: $88
	adc  b                                           ; $690b: $88
	sbc  c                                           ; $690c: $99
	add  a                                           ; $690d: $87
	ld   [hl], a                                     ; $690e: $77
	adc  b                                           ; $690f: $88
	sbc  c                                           ; $6910: $99
	sbc  b                                           ; $6911: $98
	ld   [hl], a                                     ; $6912: $77
	ld   a, c                                        ; $6913: $79
	sbc  c                                           ; $6914: $99
	sbc  b                                           ; $6915: $98
	ld   [hl], a                                     ; $6916: $77
	ld   a, b                                        ; $6917: $78
	adc  c                                           ; $6918: $89
	adc  c                                           ; $6919: $89
	sub  a                                           ; $691a: $97
	ld   [hl], a                                     ; $691b: $77
	ld   a, b                                        ; $691c: $78
	sbc  c                                           ; $691d: $99
	sbc  c                                           ; $691e: $99
	ld   a, b                                        ; $691f: $78
	ld   [hl], a                                     ; $6920: $77
	sbc  b                                           ; $6921: $98
	adc  c                                           ; $6922: $89
	ld   a, b                                        ; $6923: $78
	ld   a, b                                        ; $6924: $78
	adc  c                                           ; $6925: $89
	adc  b                                           ; $6926: $88
	ld   a, b                                        ; $6927: $78
	halt                                             ; $6928: $76
	halt                                             ; $6929: $76
	ld   a, b                                        ; $692a: $78
	ld   a, c                                        ; $692b: $79
	sbc  b                                           ; $692c: $98
	add  a                                           ; $692d: $87
	ld   [hl], a                                     ; $692e: $77
	ld   [hl], a                                     ; $692f: $77
	adc  b                                           ; $6930: $88
	sbc  c                                           ; $6931: $99
	sbc  b                                           ; $6932: $98
	ld   a, b                                        ; $6933: $78
	sbc  c                                           ; $6934: $99
	xor  c                                           ; $6935: $a9
	sbc  d                                           ; $6936: $9a
	adc  b                                           ; $6937: $88
	adc  c                                           ; $6938: $89
	adc  c                                           ; $6939: $89
	xor  c                                           ; $693a: $a9
	add  a                                           ; $693b: $87
	ld   a, b                                        ; $693c: $78
	adc  c                                           ; $693d: $89
	add  a                                           ; $693e: $87
	halt                                             ; $693f: $76
	ld   h, [hl]                                     ; $6940: $66
	ld   h, a                                        ; $6941: $67
	ld   h, [hl]                                     ; $6942: $66
	ld   h, [hl]                                     ; $6943: $66
	ld   h, [hl]                                     ; $6944: $66
	ld   h, [hl]                                     ; $6945: $66
	ld   h, [hl]                                     ; $6946: $66
	ld   h, a                                        ; $6947: $67
	ld   a, b                                        ; $6948: $78
	sbc  d                                           ; $6949: $9a
	set  1, h                                        ; $694a: $cb $cc
	res  5, d                                        ; $694c: $cb $aa
	xor  e                                           ; $694e: $ab
	xor  d                                           ; $694f: $aa
	cp   d                                           ; $6950: $ba
	sbc  d                                           ; $6951: $9a
	adc  b                                           ; $6952: $88
	sub  a                                           ; $6953: $97
	ld   [hl], a                                     ; $6954: $77
	ld   h, a                                        ; $6955: $67
	ld   [hl], a                                     ; $6956: $77
	ld   h, h                                        ; $6957: $64
	ld   [hl+], a                                    ; $6958: $22
	inc  hl                                          ; $6959: $23
	ld   d, l                                        ; $695a: $55
	ld   d, h                                        ; $695b: $54
	ld   [hl+], a                                    ; $695c: $22
	inc  h                                           ; $695d: $24
	sbc  h                                           ; $695e: $9c
	rst  $28                                         ; $695f: $ef
	db   $fd                                         ; $6960: $fd
	db   $db                                         ; $6961: $db
	xor  l                                           ; $6962: $ad
	cp   h                                           ; $6963: $bc
	ei                                               ; $6964: $fb
	res  3, e                                        ; $6965: $cb $9b
	sbc  c                                           ; $6967: $99
	and  a                                           ; $6968: $a7
	sub  a                                           ; $6969: $97
	adc  b                                           ; $696a: $88
	ld   [hl], a                                     ; $696b: $77
	ld   d, h                                        ; $696c: $54
	ld   hl, $2211                                   ; $696d: $21 $11 $22
	inc  h                                           ; $6970: $24
	ld   [de], a                                     ; $6971: $12
	ld   de, $bf36                                   ; $6972: $11 $36 $bf
	rst  $38                                         ; $6975: $ff
	rst  $38                                         ; $6976: $ff
	db   $db                                         ; $6977: $db
	cp   e                                           ; $6978: $bb
	set  5, l                                        ; $6979: $cb $ed
	adc  $bb                                         ; $697b: $ce $bb
	sub  a                                           ; $697d: $97
	add  [hl]                                        ; $697e: $86
	ld   a, b                                        ; $697f: $78
	ld   [hl], a                                     ; $6980: $77
	ld   h, e                                        ; $6981: $63
	ld   de, $1111                                   ; $6982: $11 $11 $11
	ld   de, $1111                                   ; $6985: $11 $11 $11
	ld   de, $ffcf                                   ; $6988: $11 $cf $ff
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	db   $ed                                         ; $698d: $ed
	db   $dd                                         ; $698e: $dd
	sbc  $dd                                         ; $698f: $de $dd
	jp   z, $98a9                                    ; $6991: $ca $a9 $98

	add  a                                           ; $6994: $87
	ld   b, h                                        ; $6995: $44
	ld   hl, $1111                                   ; $6996: $21 $11 $11
	ld   de, $1111                                   ; $6999: $11 $11 $11
	ld   de, $ff6f                                   ; $699c: $11 $6f $ff
	rst  $38                                         ; $699f: $ff
	rst  $38                                         ; $69a0: $ff
	ei                                               ; $69a1: $fb
	cp   a                                           ; $69a2: $bf
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	jp   hl                                          ; $69a5: $e9


	ld   [hl], a                                     ; $69a6: $77
	sbc  e                                           ; $69a7: $9b
	cp   e                                           ; $69a8: $bb
	ld   [hl], e                                     ; $69a9: $73
	ld   de, $1111                                   ; $69aa: $11 $11 $11
	ld   de, $1111                                   ; $69ad: $11 $11 $11
	ld   de, $ff9f                                   ; $69b0: $11 $9f $ff
	rst  $38                                         ; $69b3: $ff
	rst  $38                                         ; $69b4: $ff
	db   $fc                                         ; $69b5: $fc
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	db   $fd                                         ; $69b8: $fd
	cp   b                                           ; $69b9: $b8
	xor  e                                           ; $69ba: $ab
	call z, $2195                                    ; $69bb: $cc $95 $21
	ld   de, $1111                                   ; $69be: $11 $11 $11
	ld   de, $1111                                   ; $69c1: $11 $11 $11
	ld   a, [de]                                     ; $69c4: $1a
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  JumpTable                                         ; $69c8: $df
	xor  a                                           ; $69c9: $af
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	db   $ec                                         ; $69cc: $ec
	ld   h, a                                        ; $69cd: $67
	xor  e                                           ; $69ce: $ab
	db   $fd                                         ; $69cf: $fd
	or   a                                           ; $69d0: $b7
	ld   de, $1111                                   ; $69d1: $11 $11 $11
	ld   de, $1111                                   ; $69d4: $11 $11 $11
	ld   de, $ffff                                   ; $69d7: $11 $ff $ff
	rst  $38                                         ; $69da: $ff
	add  sp, -$65                                    ; $69db: $e8 $9b
	rst  $38                                         ; $69dd: $ff
	rst  $38                                         ; $69de: $ff
	ei                                               ; $69df: $fb
	ld   h, h                                        ; $69e0: $64
	ld   a, [hl]                                     ; $69e1: $7e
	rst  $38                                         ; $69e2: $ff
	ld   sp, hl                                      ; $69e3: $f9
	ld   sp, $1111                                   ; $69e4: $31 $11 $11
	ld   de, $1111                                   ; $69e7: $11 $11 $11
	inc  d                                           ; $69ea: $14
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff

Jump_0f4_69ed:
	rst  $38                                         ; $69ed: $ff
	db   $fc                                         ; $69ee: $fc
	adc  $ff                                         ; $69ef: $ce $ff
	rst  $38                                         ; $69f1: $ff
	db   $ec                                         ; $69f2: $ec
	add  [hl]                                        ; $69f3: $86
	rst  JumpTable                                         ; $69f4: $df
	rst  $38                                         ; $69f5: $ff
	ld   a, [$1121]                                  ; $69f6: $fa $21 $11
	ld   de, $1111                                   ; $69f9: $11 $11 $11
	ld   de, $ff18                                   ; $69fc: $11 $18 $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	and  [hl]                                        ; $6a01: $a6
	sbc  a                                           ; $6a02: $9f
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	ld   sp, hl                                      ; $6a05: $f9
	adc  b                                           ; $6a06: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a07: $cf
	rst  $38                                         ; $6a08: $ff
	rst  $30                                         ; $6a09: $f7
	ld   de, $1111                                   ; $6a0a: $11 $11 $11
	ld   de, $1111                                   ; $6a0d: $11 $11 $11
	ccf                                              ; $6a10: $3f
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	db   $fc                                         ; $6a13: $fc
	ld   d, [hl]                                     ; $6a14: $56
	ld   l, a                                        ; $6a15: $6f
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	ld   [$ff89], a                                  ; $6a18: $ea $89 $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $20                                         ; $6a1c: $e7
	ld   de, $1111                                   ; $6a1d: $11 $11 $11
	ld   de, $1111                                   ; $6a20: $11 $11 $11
	ld   e, a                                        ; $6a23: $5f
	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	ld   hl, sp+$12                                  ; $6a26: $f8 $12
	ld   a, a                                        ; $6a28: $7f
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	cp   d                                           ; $6a2b: $ba
	adc  e                                           ; $6a2c: $8b
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	jp   $1111                                       ; $6a2f: $c3 $11 $11


	ld   de, $1111                                   ; $6a32: $11 $11 $11
	ld   de, $ff3f                                   ; $6a35: $11 $3f $ff
	rst  $38                                         ; $6a38: $ff
	ld   sp, hl                                      ; $6a39: $f9
	ld   de, $ff5b                                   ; $6a3a: $11 $5b $ff
	rst  $38                                         ; $6a3d: $ff
	ei                                               ; $6a3e: $fb
	xor  h                                           ; $6a3f: $ac
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	ld   hl, sp+$11                                  ; $6a42: $f8 $11
	ld   de, $1111                                   ; $6a44: $11 $11 $11
	ld   de, $1611                                   ; $6a47: $11 $11 $16
	rst  $38                                         ; $6a4a: $ff
	rst  $38                                         ; $6a4b: $ff
	rst  $38                                         ; $6a4c: $ff
	sub  c                                           ; $6a4d: $91
	inc  de                                          ; $6a4e: $13
	adc  a                                           ; $6a4f: $8f
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	db   $ed                                         ; $6a52: $ed
	rst  $28                                         ; $6a53: $ef
	rst  $38                                         ; $6a54: $ff

Jump_0f4_6a55:
	rst  $38                                         ; $6a55: $ff
	add  d                                           ; $6a56: $82
	ld   de, $1111                                   ; $6a57: $11 $11 $11
	ld   de, $1111                                   ; $6a5a: $11 $11 $11
	ld   a, a                                        ; $6a5d: $7f
	rst  $38                                         ; $6a5e: $ff
	rst  $38                                         ; $6a5f: $ff
	ld   hl, sp+$11                                  ; $6a60: $f8 $11
	dec  d                                           ; $6a62: $15
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	ld   a, [$1172]                                  ; $6a69: $fa $72 $11
	ld   de, $1111                                   ; $6a6c: $11 $11 $11
	ld   de, $cf11                                   ; $6a6f: $11 $11 $cf
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	db   $f4                                         ; $6a74: $f4
	ld   de, $df15                                   ; $6a75: $11 $15 $df
	rst  $38                                         ; $6a78: $ff
	rst  $38                                         ; $6a79: $ff
	rst  $38                                         ; $6a7a: $ff
	rst  $38                                         ; $6a7b: $ff
	rst  $38                                         ; $6a7c: $ff
	ld   [$1152], a                                  ; $6a7d: $ea $52 $11
	ld   de, $1111                                   ; $6a80: $11 $11 $11
	ld   de, $cf11                                   ; $6a83: $11 $11 $cf
	rst  $38                                         ; $6a86: $ff
	rst  $38                                         ; $6a87: $ff
	db   $f4                                         ; $6a88: $f4
	ld   de, $bf11                                   ; $6a89: $11 $11 $bf
	rst  $38                                         ; $6a8c: $ff
	rst  $38                                         ; $6a8d: $ff
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	rst  $38                                         ; $6a90: $ff
	ei                                               ; $6a91: $fb
	add  [hl]                                        ; $6a92: $86
	ld   sp, $1111                                   ; $6a93: $31 $11 $11
	ld   de, $1111                                   ; $6a96: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a99: $cf
	rst  $38                                         ; $6a9a: $ff
	rst  $38                                         ; $6a9b: $ff
	db   $f4                                         ; $6a9c: $f4
	ld   de, $9e11                                   ; $6a9d: $11 $11 $9e
	rst  $38                                         ; $6aa0: $ff
	rst  $38                                         ; $6aa1: $ff
	rst  $38                                         ; $6aa2: $ff
	rst  $38                                         ; $6aa3: $ff
	rst  $38                                         ; $6aa4: $ff
	ld   [$4166], a                                  ; $6aa5: $ea $66 $41
	ld   de, $1111                                   ; $6aa8: $11 $11 $11
	ld   de, $9f11                                   ; $6aab: $11 $11 $9f
	rst  $38                                         ; $6aae: $ff
	rst  $38                                         ; $6aaf: $ff
	ei                                               ; $6ab0: $fb
	ld   hl, $2a11                                   ; $6ab1: $21 $11 $2a
	rst  $38                                         ; $6ab4: $ff
	rst  $38                                         ; $6ab5: $ff
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	rst  $38                                         ; $6ab8: $ff
	ld   hl, sp+$66                                  ; $6ab9: $f8 $66
	ld   d, l                                        ; $6abb: $55
	ld   hl, $1111                                   ; $6abc: $21 $11 $11
	ld   de, $2b11                                   ; $6abf: $11 $11 $2b
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	ld   [hl], c                                     ; $6ac5: $71
	ld   de, $ef16                                   ; $6ac6: $11 $16 $ef
	rst  $38                                         ; $6ac9: $ff
	rst  $38                                         ; $6aca: $ff
	rst  $38                                         ; $6acb: $ff
	rst  $38                                         ; $6acc: $ff
	rst  $38                                         ; $6acd: $ff
	add  [hl]                                        ; $6ace: $86
	ld   b, d                                        ; $6acf: $42
	ld   de, $1111                                   ; $6ad0: $11 $11 $11
	ld   de, $1411                                   ; $6ad3: $11 $11 $14
	rst  $28                                         ; $6ad6: $ef
	rst  $38                                         ; $6ad7: $ff
	rst  $38                                         ; $6ad8: $ff
	db   $e3                                         ; $6ad9: $e3
	ld   de, $5c12                                   ; $6ada: $11 $12 $5c
	rst  $38                                         ; $6add: $ff
	rst  $38                                         ; $6ade: $ff
	rst  $38                                         ; $6adf: $ff
	rst  $38                                         ; $6ae0: $ff
	rst  $38                                         ; $6ae1: $ff
	and  a                                           ; $6ae2: $a7
	ld   h, a                                        ; $6ae3: $67
	ld   d, e                                        ; $6ae4: $53
	ld   de, $1111                                   ; $6ae5: $11 $11 $11
	ld   de, $1a11                                   ; $6ae8: $11 $11 $1a
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	rst  $38                                         ; $6aed: $ff
	ld   d, c                                        ; $6aee: $51
	ld   de, $ff2b                                   ; $6aef: $11 $2b $ff
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	rst  $38                                         ; $6af4: $ff
	rst  $38                                         ; $6af5: $ff
	ld   a, [$4564]                                  ; $6af6: $fa $64 $45
	ld   b, c                                        ; $6af9: $41
	ld   de, $1111                                   ; $6afa: $11 $11 $11
	ld   de, $8f11                                   ; $6afd: $11 $11 $8f
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	rst  $30                                         ; $6b02: $f7
	ld   de, $7c11                                   ; $6b03: $11 $11 $7c
	rst  $38                                         ; $6b06: $ff
	rst  $38                                         ; $6b07: $ff
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	and  $44                                         ; $6b0b: $e6 $44
	ld   b, h                                        ; $6b0d: $44
	ld   hl, $1111                                   ; $6b0e: $21 $11 $11
	ld   de, $1311                                   ; $6b11: $11 $11 $13
	rst  $28                                         ; $6b14: $ef
	rst  $38                                         ; $6b15: $ff
	rst  $38                                         ; $6b16: $ff
	db   $d3                                         ; $6b17: $d3
	ld   de, $df16                                   ; $6b18: $11 $16 $df
	rst  $38                                         ; $6b1b: $ff
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	or   [hl]                                        ; $6b20: $b6
	inc  sp                                          ; $6b21: $33
	ld   sp, $1111                                   ; $6b22: $31 $11 $11
	ld   de, $1111                                   ; $6b25: $11 $11 $11
	inc  c                                           ; $6b28: $0c
	rst  $38                                         ; $6b29: $ff
	rst  $38                                         ; $6b2a: $ff
	cp   $62                                         ; $6b2b: $fe $62
	ld   [de], a                                     ; $6b2d: $12
	ld   l, c                                        ; $6b2e: $69
	rst  $28                                         ; $6b2f: $ef
	rst  $38                                         ; $6b30: $ff
	rst  $38                                         ; $6b31: $ff
	rst  $38                                         ; $6b32: $ff
	rst  $38                                         ; $6b33: $ff
	db   $fc                                         ; $6b34: $fc
	add  a                                           ; $6b35: $87
	halt                                             ; $6b36: $76
	ld   b, c                                        ; $6b37: $41
	ld   de, $1111                                   ; $6b38: $11 $11 $11
	ld   de, $4e11                                   ; $6b3b: $11 $11 $4e
	rst  $38                                         ; $6b3e: $ff
	rst  $38                                         ; $6b3f: $ff
	db   $fc                                         ; $6b40: $fc
	ld   d, d                                        ; $6b41: $52
	inc  h                                           ; $6b42: $24
	sbc  e                                           ; $6b43: $9b
	rst  $28                                         ; $6b44: $ef
	rst  $38                                         ; $6b45: $ff
	rst  $38                                         ; $6b46: $ff
	rst  $38                                         ; $6b47: $ff
	rst  $38                                         ; $6b48: $ff
	ei                                               ; $6b49: $fb
	ld   [hl], a                                     ; $6b4a: $77
	ld   h, l                                        ; $6b4b: $65
	ld   sp, $1111                                   ; $6b4c: $31 $11 $11
	ld   de, $1111                                   ; $6b4f: $11 $11 $11
	ld   c, a                                        ; $6b52: $4f
	rst  $38                                         ; $6b53: $ff
	rst  $38                                         ; $6b54: $ff
	ld   a, [$3742]                                  ; $6b55: $fa $42 $37
	sbc  h                                           ; $6b58: $9c
	rst  $28                                         ; $6b59: $ef
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	rst  $38                                         ; $6b5c: $ff
	rst  $38                                         ; $6b5d: $ff
	ld   sp, hl                                      ; $6b5e: $f9
	ld   h, a                                        ; $6b5f: $67
	halt                                             ; $6b60: $76
	ld   b, c                                        ; $6b61: $41
	ld   de, $1111                                   ; $6b62: $11 $11 $11
	ld   de, $1c11                                   ; $6b65: $11 $11 $1c
	rst  $38                                         ; $6b68: $ff
	rst  $38                                         ; $6b69: $ff
	db   $fd                                         ; $6b6a: $fd
	ld   [hl], e                                     ; $6b6b: $73
	ld   [hl], $ac                                   ; $6b6c: $36 $ac
	rst  $28                                         ; $6b6e: $ef
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	rst  $38                                         ; $6b71: $ff
	rst  $38                                         ; $6b72: $ff
	ei                                               ; $6b73: $fb
	ld   [hl], l                                     ; $6b74: $75
	ld   d, [hl]                                     ; $6b75: $56
	ld   h, e                                        ; $6b76: $63
	ld   de, $1111                                   ; $6b77: $11 $11 $11
	ld   de, $1511                                   ; $6b7a: $11 $11 $15
	rst  $38                                         ; $6b7d: $ff
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	or   a                                           ; $6b80: $b7
	ld   h, [hl]                                     ; $6b81: $66
	sbc  e                                           ; $6b82: $9b
	cp   l                                           ; $6b83: $bd
	sbc  $ff                                         ; $6b84: $de $ff
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	rst  $38                                         ; $6b88: $ff
	and  a                                           ; $6b89: $a7
	halt                                             ; $6b8a: $76
	ld   h, h                                        ; $6b8b: $64
	ld   de, $1111                                   ; $6b8c: $11 $11 $11
	ld   de, $1111                                   ; $6b8f: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b92: $cf
	rst  $38                                         ; $6b93: $ff
	rst  $38                                         ; $6b94: $ff
	ld   sp, hl                                      ; $6b95: $f9
	ld   h, [hl]                                     ; $6b96: $66
	adc  c                                           ; $6b97: $89
	cp   d                                           ; $6b98: $ba
	cp   h                                           ; $6b99: $bc
	rst  JumpTable                                         ; $6b9a: $df
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	rst  $38                                         ; $6b9d: $ff
	ret  c                                           ; $6b9e: $d8

	ld   h, [hl]                                     ; $6b9f: $66
	halt                                             ; $6ba0: $76
	ld   sp, $1111                                   ; $6ba1: $31 $11 $11
	ld   de, $1111                                   ; $6ba4: $11 $11 $11
	inc  l                                           ; $6ba7: $2c
	rst  $38                                         ; $6ba8: $ff

Call_0f4_6ba9:
	rst  $38                                         ; $6ba9: $ff
	cp   $a8                                         ; $6baa: $fe $a8
	ld   a, c                                        ; $6bac: $79
	cp   d                                           ; $6bad: $ba
	xor  d                                           ; $6bae: $aa
	cp   l                                           ; $6baf: $bd
	rst  $38                                         ; $6bb0: $ff
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	cp   $99                                         ; $6bb3: $fe $99
	ld   [hl], a                                     ; $6bb5: $77
	ld   h, e                                        ; $6bb6: $63
	ld   de, $1111                                   ; $6bb7: $11 $11 $11
	ld   de, $1211                                   ; $6bba: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bbd: $cf
	rst  $38                                         ; $6bbe: $ff
	rst  $38                                         ; $6bbf: $ff
	ld   a, [$9b98]                                  ; $6bc0: $fa $98 $9b
	xor  b                                           ; $6bc3: $a8
	sbc  b                                           ; $6bc4: $98
	cp   a                                           ; $6bc5: $bf
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	rst  $38                                         ; $6bc8: $ff
	ei                                               ; $6bc9: $fb
	xor  c                                           ; $6bca: $a9
	halt                                             ; $6bcb: $76
	ld   b, c                                        ; $6bcc: $41
	ld   de, $1111                                   ; $6bcd: $11 $11 $11
	ld   de, $1511                                   ; $6bd0: $11 $11 $15
	rst  $38                                         ; $6bd3: $ff
	rst  $38                                         ; $6bd4: $ff
	rst  $38                                         ; $6bd5: $ff
	ret                                              ; $6bd6: $c9


	sbc  e                                           ; $6bd7: $9b
	call Call_0f4_77b8                               ; $6bd8: $cd $b8 $77
	xor  a                                           ; $6bdb: $af
	rst  $38                                         ; $6bdc: $ff
	rst  $38                                         ; $6bdd: $ff
	rst  $38                                         ; $6bde: $ff
	ei                                               ; $6bdf: $fb
	cp   d                                           ; $6be0: $ba
	and  a                                           ; $6be1: $a7
	ld   sp, $1111                                   ; $6be2: $31 $11 $11
	ld   de, $1111                                   ; $6be5: $11 $11 $11
	inc  d                                           ; $6be8: $14
	rst  $38                                         ; $6be9: $ff
	rst  $38                                         ; $6bea: $ff
	rst  $38                                         ; $6beb: $ff
	cp   c                                           ; $6bec: $b9
	xor  e                                           ; $6bed: $ab
	xor  $b7                                         ; $6bee: $ee $b7
	ld   d, l                                        ; $6bf0: $55
	adc  a                                           ; $6bf1: $8f
	rst  $38                                         ; $6bf2: $ff
	rst  $38                                         ; $6bf3: $ff
	rst  $38                                         ; $6bf4: $ff
	db   $ec                                         ; $6bf5: $ec
	call z, $41b8                                    ; $6bf6: $cc $b8 $41
	ld   de, $1111                                   ; $6bf9: $11 $11 $11
	ld   de, $1411                                   ; $6bfc: $11 $11 $14
	rst  $38                                         ; $6bff: $ff
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	ret                                              ; $6c02: $c9


	xor  h                                           ; $6c03: $ac
	rst  $38                                         ; $6c04: $ff
	or   a                                           ; $6c05: $b7
	ld   b, h                                        ; $6c06: $44
	ld   l, l                                        ; $6c07: $6d
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	rst  $38                                         ; $6c0a: $ff
	db   $fd                                         ; $6c0b: $fd
	sbc  $d9                                         ; $6c0c: $de $d9
	ld   d, c                                        ; $6c0e: $51
	ld   de, $1111                                   ; $6c0f: $11 $11 $11
	ld   de, $1211                                   ; $6c12: $11 $11 $12
	rst  JumpTable                                         ; $6c15: $df
	rst  $38                                         ; $6c16: $ff
	rst  $38                                         ; $6c17: $ff
	ld   [$ffbe], a                                  ; $6c18: $ea $be $ff
	rst  ToBoot                                         ; $6c1b: $c7
	inc  sp                                          ; $6c1c: $33
	ld   c, e                                        ; $6c1d: $4b
	rst  $38                                         ; $6c1e: $ff
	rst  $38                                         ; $6c1f: $ff
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	db   $fc                                         ; $6c23: $fc
	ld   [hl], c                                     ; $6c24: $71
	ld   de, $1111                                   ; $6c25: $11 $11 $11
	ld   de, $1111                                   ; $6c28: $11 $11 $11
	ld   a, a                                        ; $6c2b: $7f
	rst  $38                                         ; $6c2c: $ff
	rst  $38                                         ; $6c2d: $ff
	ei                                               ; $6c2e: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c2f: $cf
	rst  $38                                         ; $6c30: $ff
	ld   sp, hl                                      ; $6c31: $f9
	ld   b, d                                        ; $6c32: $42
	ld   h, $ef                                      ; $6c33: $26 $ef
	rst  $38                                         ; $6c35: $ff
	rst  $38                                         ; $6c36: $ff
	cp   $ff                                         ; $6c37: $fe $ff
	rst  $38                                         ; $6c39: $ff
	or   l                                           ; $6c3a: $b5
	ld   de, $1111                                   ; $6c3b: $11 $11 $11
	ld   de, $1111                                   ; $6c3e: $11 $11 $11
	dec  de                                          ; $6c41: $1b
	rst  $38                                         ; $6c42: $ff
	rst  $38                                         ; $6c43: $ff
	db   $fd                                         ; $6c44: $fd
	db   $dd                                         ; $6c45: $dd
	rst  $38                                         ; $6c46: $ff
	db   $fd                                         ; $6c47: $fd
	ld   [hl], e                                     ; $6c48: $73
	inc  hl                                          ; $6c49: $23
	adc  [hl]                                        ; $6c4a: $8e
	rst  $38                                         ; $6c4b: $ff
	rst  $38                                         ; $6c4c: $ff
	cp   $ff                                         ; $6c4d: $fe $ff
	rst  $38                                         ; $6c4f: $ff
	ld   [$1131], a                                  ; $6c50: $ea $31 $11
	ld   de, $1111                                   ; $6c53: $11 $11 $11
	ld   de, $cf12                                   ; $6c56: $11 $12 $cf
	rst  $38                                         ; $6c59: $ff
	rst  $38                                         ; $6c5a: $ff
	call $ffff                                       ; $6c5b: $cd $ff $ff
	rst  ToBoot                                         ; $6c5e: $c7
	ld   b, e                                        ; $6c5f: $43
	ld   e, d                                        ; $6c60: $5a
	rst  $38                                         ; $6c61: $ff
	rst  $38                                         ; $6c62: $ff
	db   $fd                                         ; $6c63: $fd
	rst  $28                                         ; $6c64: $ef
	rst  $38                                         ; $6c65: $ff
	cp   $93                                         ; $6c66: $fe $93
	ld   de, $1111                                   ; $6c68: $11 $11 $11
	ld   de, $1111                                   ; $6c6b: $11 $11 $11
	ld   a, [hl+]                                    ; $6c6e: $2a
	rst  $38                                         ; $6c6f: $ff
	rst  $38                                         ; $6c70: $ff
	db   $ed                                         ; $6c71: $ed
	rst  $28                                         ; $6c72: $ef
	rst  $38                                         ; $6c73: $ff
	cp   $84                                         ; $6c74: $fe $84
	ld   b, l                                        ; $6c76: $45
	sbc  h                                           ; $6c77: $9c
	rst  $38                                         ; $6c78: $ff
	cp   $ce                                         ; $6c79: $fe $ce
	rst  $38                                         ; $6c7b: $ff
	rst  $38                                         ; $6c7c: $ff
	ld   [$1151], a                                  ; $6c7d: $ea $51 $11
	ld   de, $1111                                   ; $6c80: $11 $11 $11
	ld   de, $5b11                                   ; $6c83: $11 $11 $5b
	rst  $38                                         ; $6c86: $ff
	db   $ed                                         ; $6c87: $ed
	db   $dd                                         ; $6c88: $dd
	rst  $38                                         ; $6c89: $ff
	rst  $38                                         ; $6c8a: $ff
	ei                                               ; $6c8b: $fb
	add  [hl]                                        ; $6c8c: $86
	ld   l, c                                        ; $6c8d: $69
	cp   l                                           ; $6c8e: $bd
	xor  $cb                                         ; $6c8f: $ee $cb
	call $ffff                                       ; $6c91: $cd $ff $ff
	cp   c                                           ; $6c94: $b9
	ld   h, h                                        ; $6c95: $64
	ld   b, h                                        ; $6c96: $44
	ld   b, d                                        ; $6c97: $42
	ld   de, $1111                                   ; $6c98: $11 $11 $11
	ld   de, $9b37                                   ; $6c9b: $11 $37 $9b
	xor  d                                           ; $6c9e: $aa
	cp   e                                           ; $6c9f: $bb
	rst  $28                                         ; $6ca0: $ef
	rst  $38                                         ; $6ca1: $ff
	db   $fd                                         ; $6ca2: $fd
	xor  c                                           ; $6ca3: $a9
	sbc  d                                           ; $6ca4: $9a
	cp   h                                           ; $6ca5: $bc
	res  5, d                                        ; $6ca6: $cb $aa
	xor  h                                           ; $6ca8: $ac
	xor  $fd                                         ; $6ca9: $ee $fd
	jp   z, Jump_0f4_7797                            ; $6cab: $ca $97 $77

	ld   h, h                                        ; $6cae: $64
	ld   hl, $1111                                   ; $6caf: $21 $11 $11
	ld   de, $5613                                   ; $6cb2: $11 $13 $56
	ld   h, [hl]                                     ; $6cb5: $66
	ld   a, c                                        ; $6cb6: $79
	xor  l                                           ; $6cb7: $ad
	rst  $38                                         ; $6cb8: $ff
	cp   $cc                                         ; $6cb9: $fe $cc
	cp   e                                           ; $6cbb: $bb
	cp   h                                           ; $6cbc: $bc
	res  5, c                                        ; $6cbd: $cb $a9
	xor  d                                           ; $6cbf: $aa
	cp   h                                           ; $6cc0: $bc
	db   $dd                                         ; $6cc1: $dd
	call z, $a9ba                                    ; $6cc2: $cc $ba $a9
	add  a                                           ; $6cc5: $87

Jump_0f4_6cc6:
	ld   h, l                                        ; $6cc6: $65

Call_0f4_6cc7:
	ld   [hl-], a                                    ; $6cc7: $32
	ld   de, $1111                                   ; $6cc8: $11 $11 $11
	ld   [de], a                                     ; $6ccb: $12
	inc  sp                                          ; $6ccc: $33
	inc  sp                                          ; $6ccd: $33
	ld   d, a                                        ; $6cce: $57
	sbc  e                                           ; $6ccf: $9b
	sbc  $dc                                         ; $6cd0: $de $dc
	cp   e                                           ; $6cd2: $bb
	cp   e                                           ; $6cd3: $bb
	call c, $bacc                                    ; $6cd4: $dc $cc $ba
	cp   h                                           ; $6cd7: $bc
	adc  $dd                                         ; $6cd8: $ce $dd
	db   $dd                                         ; $6cda: $dd
	cp   e                                           ; $6cdb: $bb
	xor  e                                           ; $6cdc: $ab
	xor  d                                           ; $6cdd: $aa
	sub  a                                           ; $6cde: $97
	ld   d, h                                        ; $6cdf: $54
	ld   hl, $1111                                   ; $6ce0: $21 $11 $11
	ld   de, $1111                                   ; $6ce3: $11 $11 $11
	dec  [hl]                                        ; $6ce6: $35
	ld   a, c                                        ; $6ce7: $79
	xor  e                                           ; $6ce8: $ab
	cp   e                                           ; $6ce9: $bb
	cp   e                                           ; $6cea: $bb
	cp   l                                           ; $6ceb: $bd
	db   $dd                                         ; $6cec: $dd
	call c, $cecc                                    ; $6ced: $dc $cc $ce
	xor  $ee                                         ; $6cf0: $ee $ee
	xor  $dc                                         ; $6cf2: $ee $dc
	call c, $a8ca                                    ; $6cf4: $dc $ca $a8
	ld   h, h                                        ; $6cf7: $64
	ld   sp, $1111                                   ; $6cf8: $31 $11 $11
	ld   de, $1111                                   ; $6cfb: $11 $11 $11
	inc  de                                          ; $6cfe: $13
	ld   d, a                                        ; $6cff: $57
	sbc  c                                           ; $6d00: $99
	xor  e                                           ; $6d01: $ab
	call z, $ffdd                                    ; $6d02: $cc $dd $ff
	cp   $ee                                         ; $6d05: $fe $ee
	rst  $28                                         ; $6d07: $ef
	rst  $28                                         ; $6d08: $ef
	rst  $38                                         ; $6d09: $ff
	db   $fd                                         ; $6d0a: $fd
	db   $dd                                         ; $6d0b: $dd
	res  5, b                                        ; $6d0c: $cb $a8
	halt                                             ; $6d0e: $76
	ld   b, d                                        ; $6d0f: $42
	ld   de, $1111                                   ; $6d10: $11 $11 $11
	ld   de, $1111                                   ; $6d13: $11 $11 $11
	inc  de                                          ; $6d16: $13
	ld   d, a                                        ; $6d17: $57
	adc  d                                           ; $6d18: $8a
	cp   e                                           ; $6d19: $bb
	sbc  $ef                                         ; $6d1a: $de $ef
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	xor  $ef                                         ; $6d1e: $ee $ef
	rst  $38                                         ; $6d20: $ff
	rst  $38                                         ; $6d21: $ff
	xor  $cc                                         ; $6d22: $ee $cc
	cp   d                                           ; $6d24: $ba
	add  a                                           ; $6d25: $87
	ld   h, h                                        ; $6d26: $64
	ld   hl, $1111                                   ; $6d27: $21 $11 $11
	ld   de, $1111                                   ; $6d2a: $11 $11 $11
	ld   de, $7835                                   ; $6d2d: $11 $35 $78
	sbc  e                                           ; $6d30: $9b
	call $ffde                                       ; $6d31: $cd $de $ff
	rst  $38                                         ; $6d34: $ff
	rst  $38                                         ; $6d35: $ff
	rst  $38                                         ; $6d36: $ff
	rst  $38                                         ; $6d37: $ff
	rst  $38                                         ; $6d38: $ff
	cp   $ed                                         ; $6d39: $fe $ed
	cp   d                                           ; $6d3b: $ba
	sbc  c                                           ; $6d3c: $99
	ld   [hl], l                                     ; $6d3d: $75
	ld   [hl-], a                                    ; $6d3e: $32
	ld   de, $1111                                   ; $6d3f: $11 $11 $11
	ld   de, $1111                                   ; $6d42: $11 $11 $11
	inc  de                                          ; $6d45: $13
	ld   d, a                                        ; $6d46: $57
	sbc  d                                           ; $6d47: $9a
	cp   h                                           ; $6d48: $bc
	db   $dd                                         ; $6d49: $dd
	rst  $38                                         ; $6d4a: $ff
	rst  $38                                         ; $6d4b: $ff
	rst  $38                                         ; $6d4c: $ff
	rst  $38                                         ; $6d4d: $ff
	rst  $38                                         ; $6d4e: $ff
	rst  $38                                         ; $6d4f: $ff
	rst  $38                                         ; $6d50: $ff
	db   $ed                                         ; $6d51: $ed
	call c, $86b9                                    ; $6d52: $dc $b9 $86
	ld   d, e                                        ; $6d55: $53
	ld   hl, $1111                                   ; $6d56: $21 $11 $11
	ld   de, $1111                                   ; $6d59: $11 $11 $11
	ld   de, $7835                                   ; $6d5c: $11 $35 $78
	xor  e                                           ; $6d5f: $ab
	call $ffdf                                       ; $6d60: $cd $df $ff
	rst  $38                                         ; $6d63: $ff
	rst  $38                                         ; $6d64: $ff
	rst  $38                                         ; $6d65: $ff
	rst  $38                                         ; $6d66: $ff
	rst  $38                                         ; $6d67: $ff
	db   $ed                                         ; $6d68: $ed
	res  7, d                                        ; $6d69: $cb $ba
	add  a                                           ; $6d6b: $87
	ld   h, h                                        ; $6d6c: $64
	ld   sp, $1111                                   ; $6d6d: $31 $11 $11
	ld   de, $1111                                   ; $6d70: $11 $11 $11
	ld   de, $6724                                   ; $6d73: $11 $24 $67
	adc  d                                           ; $6d76: $8a
	cp   h                                           ; $6d77: $bc
	sbc  $ff                                         ; $6d78: $de $ff
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	rst  $38                                         ; $6d7d: $ff
	rst  $38                                         ; $6d7e: $ff
	cp   $dc                                         ; $6d7f: $fe $dc
	res  5, b                                        ; $6d81: $cb $a8
	ld   [hl], l                                     ; $6d83: $75
	ld   b, d                                        ; $6d84: $42
	ld   de, $1111                                   ; $6d85: $11 $11 $11
	ld   de, $1111                                   ; $6d88: $11 $11 $11
	inc  de                                          ; $6d8b: $13
	ld   d, [hl]                                     ; $6d8c: $56
	adc  d                                           ; $6d8d: $8a
	xor  e                                           ; $6d8e: $ab
	call $ffff                                       ; $6d8f: $cd $ff $ff
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	rst  $38                                         ; $6d94: $ff
	rst  $38                                         ; $6d95: $ff
	rst  $38                                         ; $6d96: $ff
	db   $ed                                         ; $6d97: $ed
	jp   z, Jump_0f4_76a8                            ; $6d98: $ca $a8 $76

	ld   b, e                                        ; $6d9b: $43
	ld   de, $1111                                   ; $6d9c: $11 $11 $11
	ld   de, $1111                                   ; $6d9f: $11 $11 $11
	ld   [bc], a                                     ; $6da2: $02
	ld   b, [hl]                                     ; $6da3: $46
	ld   a, b                                        ; $6da4: $78
	xor  e                                           ; $6da5: $ab
	adc  $ef                                         ; $6da6: $ce $ef
	rst  $38                                         ; $6da8: $ff
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	rst  $38                                         ; $6dab: $ff
	rst  $38                                         ; $6dac: $ff
	rst  $38                                         ; $6dad: $ff
	db   $ec                                         ; $6dae: $ec
	res  7, c                                        ; $6daf: $cb $b9
	halt                                             ; $6db1: $76
	ld   b, e                                        ; $6db2: $43
	ld   hl, $1111                                   ; $6db3: $21 $11 $11
	ld   de, $1111                                   ; $6db6: $11 $11 $11
	ld   [de], a                                     ; $6db9: $12
	ld   b, l                                        ; $6dba: $45
	ld   a, c                                        ; $6dbb: $79
	sbc  e                                           ; $6dbc: $9b
	adc  $ff                                         ; $6dbd: $ce $ff
	rst  $38                                         ; $6dbf: $ff
	rst  $38                                         ; $6dc0: $ff
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	rst  $38                                         ; $6dc3: $ff
	rst  $38                                         ; $6dc4: $ff
	call c, $b9cb                                    ; $6dc5: $dc $cb $b9
	halt                                             ; $6dc8: $76
	ld   d, e                                        ; $6dc9: $53
	ld   hl, $1111                                   ; $6dca: $21 $11 $11
	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   [de], a                                     ; $6dd0: $12
	ld   b, l                                        ; $6dd1: $45
	ld   a, b                                        ; $6dd2: $78
	xor  e                                           ; $6dd3: $ab
	adc  $ef                                         ; $6dd4: $ce $ef
	rst  $38                                         ; $6dd6: $ff
	rst  $38                                         ; $6dd7: $ff
	rst  $38                                         ; $6dd8: $ff
	rst  $38                                         ; $6dd9: $ff
	rst  $38                                         ; $6dda: $ff
	rst  $38                                         ; $6ddb: $ff
	db   $ec                                         ; $6ddc: $ec
	res  7, c                                        ; $6ddd: $cb $b9
	halt                                             ; $6ddf: $76
	ld   b, e                                        ; $6de0: $43
	ld   hl, $1111                                   ; $6de1: $21 $11 $11
	ld   de, $1111                                   ; $6de4: $11 $11 $11
	ld   [de], a                                     ; $6de7: $12
	ld   b, l                                        ; $6de8: $45
	ld   a, b                                        ; $6de9: $78
	sbc  e                                           ; $6dea: $9b
	sbc  $ef                                         ; $6deb: $de $ef
	rst  $38                                         ; $6ded: $ff
	rst  $38                                         ; $6dee: $ff
	rst  $38                                         ; $6def: $ff
	rst  $38                                         ; $6df0: $ff
	rst  $38                                         ; $6df1: $ff
	cp   $ec                                         ; $6df2: $fe $ec
	res  5, b                                        ; $6df4: $cb $a8
	halt                                             ; $6df6: $76
	ld   b, e                                        ; $6df7: $43
	ld   hl, $1111                                   ; $6df8: $21 $11 $11
	ld   de, $1111                                   ; $6dfb: $11 $11 $11
	ld   [de], a                                     ; $6dfe: $12
	ld   b, l                                        ; $6dff: $45
	ld   a, c                                        ; $6e00: $79
	xor  h                                           ; $6e01: $ac
	sbc  $ff                                         ; $6e02: $de $ff
	rst  $38                                         ; $6e04: $ff
	rst  $38                                         ; $6e05: $ff
	rst  $38                                         ; $6e06: $ff
	rst  $38                                         ; $6e07: $ff
	rst  $38                                         ; $6e08: $ff
	xor  $dd                                         ; $6e09: $ee $dd
	cp   e                                           ; $6e0b: $bb
	sbc  c                                           ; $6e0c: $99
	ld   [hl], l                                     ; $6e0d: $75
	ld   b, d                                        ; $6e0e: $42
	ld   de, $1111                                   ; $6e0f: $11 $11 $11
	ld   de, $1111                                   ; $6e12: $11 $11 $11
	inc  de                                          ; $6e15: $13
	ld   d, [hl]                                     ; $6e16: $56
	ld   a, c                                        ; $6e17: $79
	xor  h                                           ; $6e18: $ac
	sbc  $ff                                         ; $6e19: $de $ff
	rst  $38                                         ; $6e1b: $ff
	rst  $38                                         ; $6e1c: $ff
	rst  $38                                         ; $6e1d: $ff
	rst  $38                                         ; $6e1e: $ff
	rst  $38                                         ; $6e1f: $ff
	db   $fd                                         ; $6e20: $fd
	call c, $98cb                                    ; $6e21: $dc $cb $98
	ld   h, l                                        ; $6e24: $65
	ld   [hl-], a                                    ; $6e25: $32
	ld   de, $1111                                   ; $6e26: $11 $11 $11
	ld   de, $1111                                   ; $6e29: $11 $11 $11
	inc  h                                           ; $6e2c: $24
	ld   d, a                                        ; $6e2d: $57
	sbc  d                                           ; $6e2e: $9a
	call $ffdf                                       ; $6e2f: $cd $df $ff
	rst  $38                                         ; $6e32: $ff
	rst  $38                                         ; $6e33: $ff
	rst  $38                                         ; $6e34: $ff
	rst  $38                                         ; $6e35: $ff
	cp   $ee                                         ; $6e36: $fe $ee
	call z, $87ba                                    ; $6e38: $cc $ba $87
	ld   d, h                                        ; $6e3b: $54
	ld   hl, $1111                                   ; $6e3c: $21 $11 $11
	ld   de, $1111                                   ; $6e3f: $11 $11 $11
	ld   [de], a                                     ; $6e42: $12
	dec  [hl]                                        ; $6e43: $35
	ld   h, a                                        ; $6e44: $67
	sbc  d                                           ; $6e45: $9a
	call $ffee                                       ; $6e46: $cd $ee $ff
	rst  $38                                         ; $6e49: $ff
	rst  $38                                         ; $6e4a: $ff
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	xor  $dd                                         ; $6e4d: $ee $dd
	call z, $86b9                                    ; $6e4f: $cc $b9 $86
	ld   d, e                                        ; $6e52: $53
	ld   hl, $1111                                   ; $6e53: $21 $11 $11
	ld   de, $1111                                   ; $6e56: $11 $11 $11
	inc  de                                          ; $6e59: $13
	ld   b, [hl]                                     ; $6e5a: $46
	ld   a, c                                        ; $6e5b: $79
	xor  h                                           ; $6e5c: $ac
	call $ffff                                       ; $6e5d: $cd $ff $ff
	rst  $38                                         ; $6e60: $ff
	rst  $38                                         ; $6e61: $ff
	rst  $38                                         ; $6e62: $ff
	rst  $38                                         ; $6e63: $ff
	cp   $dc                                         ; $6e64: $fe $dc
	res  5, b                                        ; $6e66: $cb $a8
	ld   [hl], l                                     ; $6e68: $75
	ld   b, e                                        ; $6e69: $43
	ld   de, $1111                                   ; $6e6a: $11 $11 $11
	ld   de, $1111                                   ; $6e6d: $11 $11 $11
	inc  hl                                          ; $6e70: $23
	ld   d, [hl]                                     ; $6e71: $56
	ld   a, c                                        ; $6e72: $79
	xor  h                                           ; $6e73: $ac
	sbc  $ef                                         ; $6e74: $de $ef
	rst  $38                                         ; $6e76: $ff
	rst  $38                                         ; $6e77: $ff
	rst  $38                                         ; $6e78: $ff
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	xor  $dc                                         ; $6e7b: $ee $dc
	jp   z, Jump_0f4_65a8                            ; $6e7d: $ca $a8 $65

	ld   [hl-], a                                    ; $6e80: $32
	ld   de, $1111                                   ; $6e81: $11 $11 $11
	ld   de, $1111                                   ; $6e84: $11 $11 $11
	inc  h                                           ; $6e87: $24
	ld   d, a                                        ; $6e88: $57
	adc  c                                           ; $6e89: $89
	cp   l                                           ; $6e8a: $bd
	xor  $ef                                         ; $6e8b: $ee $ef
	rst  $38                                         ; $6e8d: $ff
	rst  $38                                         ; $6e8e: $ff
	rst  $38                                         ; $6e8f: $ff
	rst  $38                                         ; $6e90: $ff
	xor  $dd                                         ; $6e91: $ee $dd
	call z, $97cb                                    ; $6e93: $cc $cb $97
	ld   h, h                                        ; $6e96: $64
	ld   [hl-], a                                    ; $6e97: $32
	ld   de, $1111                                   ; $6e98: $11 $11 $11
	ld   de, $1211                                   ; $6e9b: $11 $11 $12
	dec  [hl]                                        ; $6e9e: $35
	ld   h, a                                        ; $6e9f: $67
	sbc  e                                           ; $6ea0: $9b
	cp   l                                           ; $6ea1: $bd
	rst  $28                                         ; $6ea2: $ef
	rst  $28                                         ; $6ea3: $ef
	rst  $38                                         ; $6ea4: $ff
	rst  $38                                         ; $6ea5: $ff
	rst  $38                                         ; $6ea6: $ff
	cp   $ee                                         ; $6ea7: $fe $ee
	db   $ed                                         ; $6ea9: $ed
	db   $db                                         ; $6eaa: $db
	cp   d                                           ; $6eab: $ba
	sub  a                                           ; $6eac: $97
	ld   d, h                                        ; $6ead: $54
	ld   hl, $1111                                   ; $6eae: $21 $11 $11
	ld   de, $1111                                   ; $6eb1: $11 $11 $11
	ld   [de], a                                     ; $6eb4: $12
	ld   b, l                                        ; $6eb5: $45
	ld   a, b                                        ; $6eb6: $78
	sbc  e                                           ; $6eb7: $9b
	sbc  $ef                                         ; $6eb8: $de $ef
	rst  $28                                         ; $6eba: $ef
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	rst  $38                                         ; $6ebd: $ff
	rst  $28                                         ; $6ebe: $ef
	db   $ed                                         ; $6ebf: $ed
	db   $dd                                         ; $6ec0: $dd
	call z, $86ba                                    ; $6ec1: $cc $ba $86
	ld   d, e                                        ; $6ec4: $53
	ld   hl, $1111                                   ; $6ec5: $21 $11 $11
	ld   de, $1111                                   ; $6ec8: $11 $11 $11
	inc  hl                                          ; $6ecb: $23
	ld   d, [hl]                                     ; $6ecc: $56
	ld   a, c                                        ; $6ecd: $79
	cp   h                                           ; $6ece: $bc
	db   $dd                                         ; $6ecf: $dd
	xor  $ff                                         ; $6ed0: $ee $ff
	rst  $38                                         ; $6ed2: $ff
	cp   $fe                                         ; $6ed3: $fe $fe
	xor  $ee                                         ; $6ed5: $ee $ee
	call c, $a9cb                                    ; $6ed7: $dc $cb $a9
	ld   [hl], l                                     ; $6eda: $75
	ld   b, e                                        ; $6edb: $43
	ld   de, $1111                                   ; $6edc: $11 $11 $11
	ld   de, $1211                                   ; $6edf: $11 $11 $12
	dec  [hl]                                        ; $6ee2: $35
	ld   h, a                                        ; $6ee3: $67
	adc  d                                           ; $6ee4: $8a
	call z, $ffde                                    ; $6ee5: $cc $de $ff
	xor  $ee                                         ; $6ee8: $ee $ee
	rst  $28                                         ; $6eea: $ef
	rst  $38                                         ; $6eeb: $ff
	db   $ed                                         ; $6eec: $ed
	db   $ed                                         ; $6eed: $ed
	call z, $a8ba                                    ; $6eee: $cc $ba $a8
	ld   h, l                                        ; $6ef1: $65
	ld   b, d                                        ; $6ef2: $42
	ld   de, $1111                                   ; $6ef3: $11 $11 $11
	ld   de, $1311                                   ; $6ef6: $11 $11 $13
	ld   b, [hl]                                     ; $6ef9: $46
	ld   a, b                                        ; $6efa: $78
	sbc  e                                           ; $6efb: $9b
	sbc  $ee                                         ; $6efc: $de $ee
	rst  $28                                         ; $6efe: $ef
	xor  $ef                                         ; $6eff: $ee $ef
	cp   $ee                                         ; $6f01: $fe $ee
	xor  $dd                                         ; $6f03: $ee $dd
	call c, $97ca                                    ; $6f05: $dc $ca $97
	ld   h, h                                        ; $6f08: $64
	ld   [hl-], a                                    ; $6f09: $32
	ld   de, $1111                                   ; $6f0a: $11 $11 $11
	ld   de, $2411                                   ; $6f0d: $11 $11 $24
	ld   d, [hl]                                     ; $6f10: $56
	ld   a, c                                        ; $6f11: $79
	cp   e                                           ; $6f12: $bb
	db   $dd                                         ; $6f13: $dd
	xor  $de                                         ; $6f14: $ee $de
	rst  $38                                         ; $6f16: $ff
	rst  $38                                         ; $6f17: $ff
	xor  $ee                                         ; $6f18: $ee $ee
	db   $dd                                         ; $6f1a: $dd
	call c, $a9cb                                    ; $6f1b: $dc $cb $a9
	add  [hl]                                        ; $6f1e: $86
	ld   d, e                                        ; $6f1f: $53
	ld   hl, $1111                                   ; $6f20: $21 $11 $11
	ld   de, $1211                                   ; $6f23: $11 $11 $12
	dec  [hl]                                        ; $6f26: $35
	ld   h, a                                        ; $6f27: $67
	adc  d                                           ; $6f28: $8a
	call z, $eeee                                    ; $6f29: $cc $ee $ee
	xor  $ef                                         ; $6f2c: $ee $ef
	xor  $ee                                         ; $6f2e: $ee $ee
	db   $dd                                         ; $6f30: $dd
	db   $ed                                         ; $6f31: $ed
	call $a9bb                                       ; $6f32: $cd $bb $a9
	ld   [hl], l                                     ; $6f35: $75
	ld   b, d                                        ; $6f36: $42
	ld   de, $1111                                   ; $6f37: $11 $11 $11
	ld   de, $2311                                   ; $6f3a: $11 $11 $23
	ld   b, [hl]                                     ; $6f3d: $46
	ld   a, b                                        ; $6f3e: $78
	sbc  e                                           ; $6f3f: $9b
	db   $dd                                         ; $6f40: $dd
	db   $dd                                         ; $6f41: $dd
	db   $dd                                         ; $6f42: $dd
	xor  $fe                                         ; $6f43: $ee $fe
	db   $ed                                         ; $6f45: $ed
	db   $dd                                         ; $6f46: $dd
	sbc  $ed                                         ; $6f47: $de $ed
	call c, $87ba                                    ; $6f49: $dc $ba $87
	ld   d, h                                        ; $6f4c: $54
	ld   hl, $1111                                   ; $6f4d: $21 $11 $11
	ld   de, $1211                                   ; $6f50: $11 $11 $12
	inc  [hl]                                        ; $6f53: $34
	ld   d, a                                        ; $6f54: $57
	adc  d                                           ; $6f55: $8a
	cp   h                                           ; $6f56: $bc
	db   $dd                                         ; $6f57: $dd
	db   $dd                                         ; $6f58: $dd
	sbc  $ee                                         ; $6f59: $de $ee
	xor  $dd                                         ; $6f5b: $ee $dd
	db   $dd                                         ; $6f5d: $dd
	sbc  $dc                                         ; $6f5e: $de $dc
	call z, Call_0f4_76b9                            ; $6f60: $cc $b9 $76
	ld   b, e                                        ; $6f63: $43
	ld   de, $1111                                   ; $6f64: $11 $11 $11
	ld   de, $1311                                   ; $6f67: $11 $11 $13
	ld   b, l                                        ; $6f6a: $45
	ld   h, a                                        ; $6f6b: $67
	sbc  e                                           ; $6f6c: $9b
	call $eeed                                       ; $6f6d: $cd $ed $ee
	sbc  $ee                                         ; $6f70: $de $ee
	db   $ed                                         ; $6f72: $ed
	xor  $dd                                         ; $6f73: $ee $dd
	db   $ed                                         ; $6f75: $ed
	call z, $98cb                                    ; $6f76: $cc $cb $98
	ld   h, h                                        ; $6f79: $64
	ld   sp, $1111                                   ; $6f7a: $31 $11 $11
	ld   de, $1111                                   ; $6f7d: $11 $11 $11
	inc  [hl]                                        ; $6f80: $34
	ld   d, [hl]                                     ; $6f81: $56
	ld   a, c                                        ; $6f82: $79
	xor  h                                           ; $6f83: $ac
	sbc  $de                                         ; $6f84: $de $de
	db   $ed                                         ; $6f86: $ed
	xor  $ed                                         ; $6f87: $ee $ed
	xor  $ee                                         ; $6f89: $ee $ee
	xor  $dc                                         ; $6f8b: $ee $dc
	call z, $86ba                                    ; $6f8d: $cc $ba $86
	ld   b, e                                        ; $6f90: $43
	ld   de, $1111                                   ; $6f91: $11 $11 $11
	ld   de, $1211                                   ; $6f94: $11 $11 $12
	ld   b, l                                        ; $6f97: $45
	ld   h, a                                        ; $6f98: $67
	sbc  d                                           ; $6f99: $9a
	call $ddee                                       ; $6f9a: $cd $ee $dd
	db   $ed                                         ; $6f9d: $ed
	xor  $de                                         ; $6f9e: $ee $de
	db   $dd                                         ; $6fa0: $dd
	sbc  $ed                                         ; $6fa1: $de $ed
	call z, $98ca                                    ; $6fa3: $cc $ca $98
	ld   h, l                                        ; $6fa6: $65
	ld   [hl-], a                                    ; $6fa7: $32
	ld   de, $1111                                   ; $6fa8: $11 $11 $11
	ld   de, $2411                                   ; $6fab: $11 $11 $24
	ld   d, [hl]                                     ; $6fae: $56
	ld   a, b                                        ; $6faf: $78
	cp   h                                           ; $6fb0: $bc
	sbc  $ed                                         ; $6fb1: $de $ed
	db   $dd                                         ; $6fb3: $dd
	db   $ed                                         ; $6fb4: $ed
	sbc  $dd                                         ; $6fb5: $de $dd
	db   $dd                                         ; $6fb7: $dd
	sbc  $dd                                         ; $6fb8: $de $dd
	res  7, c                                        ; $6fba: $cb $b9
	sub  a                                           ; $6fbc: $97
	ld   d, e                                        ; $6fbd: $53
	ld   hl, $1111                                   ; $6fbe: $21 $11 $11
	ld   de, $1211                                   ; $6fc1: $11 $11 $12
	ld   b, l                                        ; $6fc4: $45
	ld   h, a                                        ; $6fc5: $67
	adc  d                                           ; $6fc6: $8a
	cp   h                                           ; $6fc7: $bc
	xor  $dd                                         ; $6fc8: $ee $dd
	db   $dd                                         ; $6fca: $dd
	db   $dd                                         ; $6fcb: $dd
	db   $dd                                         ; $6fcc: $dd
	call c, $dddd                                    ; $6fcd: $dc $dd $dd
	db   $dd                                         ; $6fd0: $dd
	call z, Call_0f4_76b9                            ; $6fd1: $cc $b9 $76
	ld   b, e                                        ; $6fd4: $43
	ld   de, $1111                                   ; $6fd5: $11 $11 $11
	ld   de, $2411                                   ; $6fd8: $11 $11 $24
	ld   d, [hl]                                     ; $6fdb: $56
	ld   a, b                                        ; $6fdc: $78
	xor  e                                           ; $6fdd: $ab
	adc  $ed                                         ; $6fde: $ce $ed
	db   $dd                                         ; $6fe0: $dd
	db   $dd                                         ; $6fe1: $dd
	db   $dd                                         ; $6fe2: $dd
	call $cdcd                                       ; $6fe3: $cd $cd $cd
	db   $dd                                         ; $6fe6: $dd
	call c, $a8ca                                    ; $6fe7: $dc $ca $a8
	ld   [hl], l                                     ; $6fea: $75
	ld   [hl-], a                                    ; $6feb: $32
	ld   de, $1111                                   ; $6fec: $11 $11 $11
	ld   de, $3512                                   ; $6fef: $11 $12 $35
	ld   d, [hl]                                     ; $6ff2: $56
	ld   a, c                                        ; $6ff3: $79
	xor  h                                           ; $6ff4: $ac
	sbc  $dc                                         ; $6ff5: $de $dc
	db   $dd                                         ; $6ff7: $dd
	call c, $ccdd                                    ; $6ff8: $dc $dd $cc
	call z, $dccd                                    ; $6ffb: $cc $cd $dc
	call z, $98ba                                    ; $6ffe: $cc $ba $98
	ld   h, h                                        ; $7001: $64
	ld   hl, $1111                                   ; $7002: $21 $11 $11
	ld   de, $2311                                   ; $7005: $11 $11 $23
	ld   d, [hl]                                     ; $7008: $56
	ld   h, a                                        ; $7009: $67
	adc  d                                           ; $700a: $8a
	cp   h                                           ; $700b: $bc
	db   $dd                                         ; $700c: $dd
	call c, $cccc                                    ; $700d: $dc $cc $cc
	call z, $bcbb                                    ; $7010: $cc $bb $bc
	call c, $cbcd                                    ; $7013: $dc $cd $cb
	xor  c                                           ; $7016: $a9
	add  [hl]                                        ; $7017: $86
	ld   d, e                                        ; $7018: $53
	ld   de, $1111                                   ; $7019: $11 $11 $11
	ld   de, $4512                                   ; $701c: $11 $12 $45
	ld   h, a                                        ; $701f: $67
	ld   a, b                                        ; $7020: $78
	xor  h                                           ; $7021: $ac
	call $cbcc                                       ; $7022: $cd $cc $cb
	cp   e                                           ; $7025: $bb
	cp   e                                           ; $7026: $bb
	xor  e                                           ; $7027: $ab
	xor  e                                           ; $7028: $ab
	call z, $cccc                                    ; $7029: $cc $cc $cc
	res  7, c                                        ; $702c: $cb $b9
	ld   [hl], l                                     ; $702e: $75
	ld   [hl-], a                                    ; $702f: $32
	ld   de, $1122                                   ; $7030: $11 $22 $11
	ld   de, $6724                                   ; $7033: $11 $24 $67
	ld   [hl], a                                     ; $7036: $77
	adc  d                                           ; $7037: $8a
	xor  h                                           ; $7038: $ac
	call c, $aaba                                    ; $7039: $dc $ba $aa
	xor  d                                           ; $703c: $aa
	xor  c                                           ; $703d: $a9
	xor  d                                           ; $703e: $aa
	xor  e                                           ; $703f: $ab
	cp   h                                           ; $7040: $bc
	call z, $bbcc                                    ; $7041: $cc $cc $bb
	cp   d                                           ; $7044: $ba
	ld   h, e                                        ; $7045: $63
	ld   de, $2211                                   ; $7046: $11 $11 $22
	ld   de, $5812                                   ; $7049: $11 $12 $58
	xor  c                                           ; $704c: $a9
	sbc  c                                           ; $704d: $99
	xor  h                                           ; $704e: $ac
	sbc  $db                                         ; $704f: $de $db
	sbc  b                                           ; $7051: $98
	adc  b                                           ; $7052: $88
	sbc  c                                           ; $7053: $99
	adc  b                                           ; $7054: $88
	adc  b                                           ; $7055: $88
	cp   h                                           ; $7056: $bc
	call $bbcb                                       ; $7057: $cd $cb $bb
	xor  e                                           ; $705a: $ab
	sub  [hl]                                        ; $705b: $96
	ld   sp, $1211                                   ; $705c: $31 $11 $12
	inc  sp                                          ; $705f: $33
	ld   sp, $9b36                                   ; $7060: $31 $36 $9b
	call z, $bbaa                                    ; $7063: $cc $aa $bb
	db   $ed                                         ; $7066: $ed
	cp   c                                           ; $7067: $b9
	ld   h, [hl]                                     ; $7068: $66
	ld   h, a                                        ; $7069: $67
	add  [hl]                                        ; $706a: $86
	ld   h, a                                        ; $706b: $67
	adc  e                                           ; $706c: $8b
	sbc  $fe                                         ; $706d: $de $fe
	res  7, e                                        ; $706f: $cb $bb
	xor  c                                           ; $7071: $a9
	ld   h, d                                        ; $7072: $62
	ld   de, $1311                                   ; $7073: $11 $11 $13
	inc  [hl]                                        ; $7076: $34
	inc  sp                                          ; $7077: $33
	ld   a, d                                        ; $7078: $7a
	rst  $28                                         ; $7079: $ef
	db   $fc                                         ; $707a: $fc
	cp   e                                           ; $707b: $bb
	call $64d9                                       ; $707c: $cd $d9 $64
	ld   b, h                                        ; $707f: $44
	ld   h, a                                        ; $7080: $67
	ld   h, l                                        ; $7081: $65
	ld   l, b                                        ; $7082: $68
	cp   [hl]                                        ; $7083: $be
	rst  $38                                         ; $7084: $ff
	rst  $38                                         ; $7085: $ff
	sbc  $cb                                         ; $7086: $de $cb
	add  [hl]                                        ; $7088: $86
	ld   de, $1111                                   ; $7089: $11 $11 $11
	inc  [hl]                                        ; $708c: $34
	ld   h, a                                        ; $708d: $67
	ld   l, e                                        ; $708e: $6b
	rst  $38                                         ; $708f: $ff
	rst  $38                                         ; $7090: $ff
	ld   [$a8cc], a                                  ; $7091: $ea $cc $a8
	ld   b, c                                        ; $7094: $41
	ld   [de], a                                     ; $7095: $12
	ld   d, [hl]                                     ; $7096: $56
	add  [hl]                                        ; $7097: $86
	ld   e, c                                        ; $7098: $59
	rst  $28                                         ; $7099: $ef
	rst  $38                                         ; $709a: $ff
	db   $ed                                         ; $709b: $ed
	rst  $38                                         ; $709c: $ff
	db   $fc                                         ; $709d: $fc
	ld   [hl], d                                     ; $709e: $72
	ld   de, $1111                                   ; $709f: $11 $11 $11
	ld   d, $ad                                      ; $70a2: $16 $ad
	ld   sp, hl                                      ; $70a4: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70a5: $cf
	rst  $38                                         ; $70a6: $ff
	ei                                               ; $70a7: $fb
	ld   b, l                                        ; $70a8: $45
	sub  a                                           ; $70a9: $97
	ld   h, d                                        ; $70aa: $62
	ld   de, $bb49                                   ; $70ab: $11 $49 $bb
	xor  b                                           ; $70ae: $a8
	rst  $28                                         ; $70af: $ef
	rst  $38                                         ; $70b0: $ff
	ei                                               ; $70b1: $fb
	cp   [hl]                                        ; $70b2: $be
	call c, $1384                                    ; $70b3: $dc $84 $13
	ld   hl, $1111                                   ; $70b6: $21 $11 $11
	rst  $28                                         ; $70b9: $ef
	ei                                               ; $70ba: $fb
	ld   l, l                                        ; $70bb: $6d
	rst  $38                                         ; $70bc: $ff
	ei                                               ; $70bd: $fb
	ld   d, c                                        ; $70be: $51
	adc  d                                           ; $70bf: $8a
	add  l                                           ; $70c0: $85
	ld   de, $db3c                                   ; $70c1: $11 $3c $db
	and  a                                           ; $70c4: $a7
	xor  a                                           ; $70c5: $af
	rst  $38                                         ; $70c6: $ff
	ei                                               ; $70c7: $fb
	xor  h                                           ; $70c8: $ac
	db   $fd                                         ; $70c9: $fd
	sub  [hl]                                        ; $70ca: $96
	inc  [hl]                                        ; $70cb: $34
	ld   h, e                                        ; $70cc: $63
	ld   de, $8f11                                   ; $70cd: $11 $11 $8f
	db   $ed                                         ; $70d0: $ed
	halt                                             ; $70d1: $76
	rst  $38                                         ; $70d2: $ff
	db   $fc                                         ; $70d3: $fc
	ld   h, c                                        ; $70d4: $61
	dec  a                                           ; $70d5: $3d
	or   [hl]                                        ; $70d6: $b6
	ld   hl, $fc18                                   ; $70d7: $21 $18 $fc
	xor  b                                           ; $70da: $a8
	ld   a, [hl]                                     ; $70db: $7e
	rst  $38                                         ; $70dc: $ff
	db   $ec                                         ; $70dd: $ec
	adc  c                                           ; $70de: $89
	sbc  $ca                                         ; $70df: $de $ca
	ld   h, l                                        ; $70e1: $65
	adc  b                                           ; $70e2: $88
	ld   sp, $1811                                   ; $70e3: $31 $11 $18
	db   $fc                                         ; $70e6: $fc
	add  $7f                                         ; $70e7: $c6 $7f
	rst  $38                                         ; $70e9: $ff
	or   l                                           ; $70ea: $b5
	dec  h                                           ; $70eb: $25
	jp   hl                                          ; $70ec: $e9


	ld   d, d                                        ; $70ed: $52
	inc  de                                          ; $70ee: $13
	xor  [hl]                                        ; $70ef: $ae
	cp   d                                           ; $70f0: $ba
	add  a                                           ; $70f1: $87
	rst  $38                                         ; $70f2: $ff
	db   $fd                                         ; $70f3: $fd
	cp   b                                           ; $70f4: $b8
	cp   l                                           ; $70f5: $bd
	res  2, a                                        ; $70f6: $cb $97
	ld   l, c                                        ; $70f8: $69
	ld   [hl], e                                     ; $70f9: $73
	ld   de, $8f11                                   ; $70fa: $11 $11 $8f
	call c, $ff77                                    ; $70fd: $dc $77 $ff
	ld   a, [$5c52]                                  ; $7100: $fa $52 $5c
	add  l                                           ; $7103: $85
	ld   sp, $da49                                   ; $7104: $31 $49 $da
	sbc  b                                           ; $7107: $98
	adc  [hl]                                        ; $7108: $8e
	rst  $38                                         ; $7109: $ff
	ret  z                                           ; $710a: $c8

	ld   a, c                                        ; $710b: $79
	db   $db                                         ; $710c: $db
	xor  e                                           ; $710d: $ab
	sbc  c                                           ; $710e: $99
	jp   z, $1151                                    ; $710f: $ca $51 $11

	ld   de, $cadf                                   ; $7112: $11 $df $ca
	ld   l, l                                        ; $7115: $6d
	rst  $38                                         ; $7116: $ff
	sub  $53                                         ; $7117: $d6 $53
	xor  e                                           ; $7119: $ab
	ld   d, l                                        ; $711a: $55
	inc  de                                          ; $711b: $13
	ld   l, d                                        ; $711c: $6a
	cp   b                                           ; $711d: $b8
	xor  b                                           ; $711e: $a8
	cp   a                                           ; $711f: $bf
	db   $ec                                         ; $7120: $ec
	xor  d                                           ; $7121: $aa
	adc  e                                           ; $7122: $8b
	ret  z                                           ; $7123: $c8

	cp   h                                           ; $7124: $bc
	xor  d                                           ; $7125: $aa
	and  [hl]                                        ; $7126: $a6
	ld   sp, $1511                                   ; $7127: $31 $11 $15
	cp   $d8                                         ; $712a: $fe $d8
	adc  a                                           ; $712c: $8f
	rst  $38                                         ; $712d: $ff
	sub  l                                           ; $712e: $95
	inc  [hl]                                        ; $712f: $34
	or   a                                           ; $7130: $b7
	ld   h, h                                        ; $7131: $64
	dec  d                                           ; $7132: $15
	adc  l                                           ; $7133: $8d
	xor  d                                           ; $7134: $aa
	add  a                                           ; $7135: $87
	sbc  $ea                                         ; $7136: $de $ea
	add  a                                           ; $7138: $87
	sbc  h                                           ; $7139: $9c
	xor  c                                           ; $713a: $a9
	xor  e                                           ; $713b: $ab
	call $31a6                                       ; $713c: $cd $a6 $31
	ld   de, $fe13                                   ; $713f: $11 $13 $fe
	db   $db                                         ; $7142: $db
	adc  a                                           ; $7143: $8f
	rst  $38                                         ; $7144: $ff
	add  l                                           ; $7145: $85
	ld   b, h                                        ; $7146: $44
	cp   b                                           ; $7147: $b8
	ld   h, l                                        ; $7148: $65
	dec  h                                           ; $7149: $25
	adc  h                                           ; $714a: $8c
	sbc  b                                           ; $714b: $98
	sub  a                                           ; $714c: $97
	sbc  $c9                                         ; $714d: $de $c9
	ld   a, d                                        ; $714f: $7a
	sbc  e                                           ; $7150: $9b
	and  a                                           ; $7151: $a7
	xor  [hl]                                        ; $7152: $ae
	xor  $c6                                         ; $7153: $ee $c6
	ld   sp, $1111                                   ; $7155: $31 $11 $11
	rst  $38                                         ; $7158: $ff
	xor  $7d                                         ; $7159: $ee $7d
	rst  $38                                         ; $715b: $ff
	and  h                                           ; $715c: $a4
	ld   b, d                                        ; $715d: $42
	xor  e                                           ; $715e: $ab
	halt                                             ; $715f: $76
	inc  d                                           ; $7160: $14
	ld   a, h                                        ; $7161: $7c
	cp   b                                           ; $7162: $b8
	add  a                                           ; $7163: $87
	rst  JumpTable                                         ; $7164: $df
	db   $eb                                         ; $7165: $eb
	ld   h, a                                        ; $7166: $67
	adc  e                                           ; $7167: $8b
	xor  c                                           ; $7168: $a9
	adc  e                                           ; $7169: $8b
	rst  $38                                         ; $716a: $ff
	ld   a, [$1152]                                  ; $716b: $fa $52 $11
	ld   de, $ff1f                                   ; $716e: $11 $1f $ff
	ret  c                                           ; $7171: $d8

	rst  JumpTable                                         ; $7172: $df
	rst  $30                                         ; $7173: $f7
	inc  sp                                          ; $7174: $33
	inc  l                                           ; $7175: $2c
	rst  ToBoot                                         ; $7176: $c7
	ld   d, d                                        ; $7177: $52
	ld   c, b                                        ; $7178: $48
	ret  c                                           ; $7179: $d8

	ld   l, b                                        ; $717a: $68
	sbc  a                                           ; $717b: $9f
	db   $fd                                         ; $717c: $fd
	halt                                             ; $717d: $76
	sbc  e                                           ; $717e: $9b
	or   a                                           ; $717f: $b7
	ld   h, a                                        ; $7180: $67
	rst  $28                                         ; $7181: $ef
	db   $fd                                         ; $7182: $fd
	sub  l                                           ; $7183: $95
	ld   sp, $1311                                   ; $7184: $31 $11 $13
	rst  $38                                         ; $7187: $ff
	ei                                               ; $7188: $fb
	ld   a, l                                        ; $7189: $7d
	db   $fd                                         ; $718a: $fd
	ld   sp, $fd15                                   ; $718b: $31 $15 $fd
	ld   d, d                                        ; $718e: $52
	scf                                              ; $718f: $37
	call z, $8b53                                    ; $7190: $cc $53 $8b
	rst  $38                                         ; $7193: $ff
	or   [hl]                                        ; $7194: $b6
	adc  c                                           ; $7195: $89
	cp   d                                           ; $7196: $ba
	ld   d, h                                        ; $7197: $54
	sbc  a                                           ; $7198: $9f
	rst  $38                                         ; $7199: $ff
	rst  ToBoot                                         ; $719a: $c7
	ld   d, e                                        ; $719b: $53
	ld   de, $9f11                                   ; $719c: $11 $11 $9f
	rst  $38                                         ; $719f: $ff
	ret  z                                           ; $71a0: $c8

	rst  $38                                         ; $71a1: $ff
	and  c                                           ; $71a2: $a1
	inc  de                                          ; $71a3: $13
	adc  a                                           ; $71a4: $8f
	or   e                                           ; $71a5: $b3
	ld   b, l                                        ; $71a6: $45
	sbc  h                                           ; $71a7: $9c
	and  c                                           ; $71a8: $a1
	ld   c, e                                        ; $71a9: $4b
	rst  JumpTable                                         ; $71aa: $df
	rst  $20                                         ; $71ab: $e7
	ld   l, d                                        ; $71ac: $6a
	jp   c, $5f64                                    ; $71ad: $da $64 $5f

	rst  $38                                         ; $71b0: $ff
	ret                                              ; $71b1: $c9


	ld   d, l                                        ; $71b2: $55
	ld   de, $1f11                                   ; $71b3: $11 $11 $1f
	rst  $38                                         ; $71b6: $ff
	rst  ToBoot                                         ; $71b7: $c7
	rst  JumpTable                                         ; $71b8: $df
	pop  bc                                          ; $71b9: $c1
	ld   [de], a                                     ; $71ba: $12
	ld   l, a                                        ; $71bb: $6f
	db   $f4                                         ; $71bc: $f4
	ld   b, [hl]                                     ; $71bd: $46
	xor  h                                           ; $71be: $ac
	sub  d                                           ; $71bf: $92
	dec  de                                          ; $71c0: $1b
	rst  $28                                         ; $71c1: $ef
	ld   hl, sp-$76                                  ; $71c2: $f8 $8a
	ret                                              ; $71c4: $c9


	ld   h, h                                        ; $71c5: $64
	ld   e, [hl]                                     ; $71c6: $5e
	rst  $38                                         ; $71c7: $ff
	ei                                               ; $71c8: $fb
	add  [hl]                                        ; $71c9: $86
	ld   de, $1f11                                   ; $71ca: $11 $11 $1f
	rst  $38                                         ; $71cd: $ff
	db   $fc                                         ; $71ce: $fc
	xor  a                                           ; $71cf: $af
	pop  bc                                          ; $71d0: $c1
	ld   [de], a                                     ; $71d1: $12
	ld   a, l                                        ; $71d2: $7d
	or   $48                                         ; $71d3: $f6 $48
	sbc  d                                           ; $71d5: $9a
	add  e                                           ; $71d6: $83
	add  hl, de                                      ; $71d7: $19
	db   $fd                                         ; $71d8: $fd
	ei                                               ; $71d9: $fb
	adc  h                                           ; $71da: $8c
	or   [hl]                                        ; $71db: $b6
	ld   b, [hl]                                     ; $71dc: $46
	ld   a, [hl]                                     ; $71dd: $7e
	rst  $38                                         ; $71de: $ff
	db   $dd                                         ; $71df: $dd
	sub  l                                           ; $71e0: $95
	ld   de, $1f11                                   ; $71e1: $11 $11 $1f
	rst  $38                                         ; $71e4: $ff
	db   $fc                                         ; $71e5: $fc
	cp   a                                           ; $71e6: $bf
	and  c                                           ; $71e7: $a1
	inc  de                                          ; $71e8: $13
	adc  l                                           ; $71e9: $8d
	or   $5a                                         ; $71ea: $f6 $5a
	sbc  c                                           ; $71ec: $99
	ld   d, d                                        ; $71ed: $52
	dec  de                                          ; $71ee: $1b
	db   $fd                                         ; $71ef: $fd
	ld   [$f99d], a                                  ; $71f0: $ea $9d $f9
	dec  h                                           ; $71f3: $25
	ld   e, l                                        ; $71f4: $5d
	cp   $cc                                         ; $71f5: $fe $cc
	sub  h                                           ; $71f7: $94
	ld   de, $9f11                                   ; $71f8: $11 $11 $9f
	cp   $da                                         ; $71fb: $fe $da
	cp   $31                                         ; $71fd: $fe $31
	rla                                              ; $71ff: $17
	cp   a                                           ; $7200: $bf
	or   h                                           ; $7201: $b4
	xor  e                                           ; $7202: $ab
	rst  ToBoot                                         ; $7203: $c7
	ld   hl, $de5e                                   ; $7204: $21 $5e $de
	set  5, l                                        ; $7207: $cb $ed
	sub  h                                           ; $7209: $94
	ld   b, [hl]                                     ; $720a: $46
	rst  $28                                         ; $720b: $ef
	db   $ec                                         ; $720c: $ec
	ret                                              ; $720d: $c9


	ld   d, c                                        ; $720e: $51
	ld   de, $ff17                                   ; $720f: $11 $17 $ff
	adc  $cf                                         ; $7212: $ce $cf
	di                                               ; $7214: $f3
	ld   de, $fc8a                                   ; $7215: $11 $8a $fc
	ld   a, [hl-]                                    ; $7218: $3a
	db   $db                                         ; $7219: $db
	ld   h, d                                        ; $721a: $62
	dec  h                                           ; $721b: $25
	db   $fc                                         ; $721c: $fc
	cp   l                                           ; $721d: $bd
	call Call_0f4_46e9                               ; $721e: $cd $e9 $46
	adc  h                                           ; $7221: $8c
	db   $fd                                         ; $7222: $fd
	xor  e                                           ; $7223: $ab
	ld   [hl], c                                     ; $7224: $71
	ld   de, rAUD1LEN                                   ; $7225: $11 $11 $ff
	xor  $dc                                         ; $7228: $ee $dc
	ld   sp, hl                                      ; $722a: $f9
	ld   de, $bf2a                                   ; $722b: $11 $2a $bf
	ld   h, l                                        ; $722e: $65
	db   $fc                                         ; $722f: $fc
	and  h                                           ; $7230: $a4
	inc  hl                                          ; $7231: $23
	sbc  a                                           ; $7232: $9f
	sbc  e                                           ; $7233: $9b
	call c, Call_0f4_66ff                            ; $7234: $dc $ff $66
	ld   l, c                                        ; $7237: $69
	db   $fd                                         ; $7238: $fd
	sbc  d                                           ; $7239: $9a
	add  d                                           ; $723a: $82
	ld   de, rAUD1LEN                                   ; $723b: $11 $11 $ff
	call c, $f9dc                                    ; $723e: $dc $dc $f9
	ld   de, $9d4b                                   ; $7241: $11 $4b $9d
	ld   b, [hl]                                     ; $7244: $46
	ei                                               ; $7245: $fb
	add  h                                           ; $7246: $84
	ld   b, l                                        ; $7247: $45
	cp   l                                           ; $7248: $bd
	ld   a, h                                        ; $7249: $7c
	db   $ed                                         ; $724a: $ed
	db   $fc                                         ; $724b: $fc
	ld   a, b                                        ; $724c: $78
	sbc  h                                           ; $724d: $9c
	db   $eb                                         ; $724e: $eb
	adc  d                                           ; $724f: $8a
	add  c                                           ; $7250: $81
	ld   de, rAUD1LEN                                   ; $7251: $11 $11 $ff
	set  7, l                                        ; $7254: $cb $fd
	ld   hl, sp+$11                                  ; $7256: $f8 $11
	ld   l, e                                        ; $7258: $6b
	ld   a, e                                        ; $7259: $7b
	ld   d, a                                        ; $725a: $57
	db   $fc                                         ; $725b: $fc
	ld   [hl], h                                     ; $725c: $74
	ld   [hl], a                                     ; $725d: $77
	sbc  h                                           ; $725e: $9c
	ld   a, e                                        ; $725f: $7b
	cp   $ec                                         ; $7260: $fe $ec
	cp   c                                           ; $7262: $b9
	cp   l                                           ; $7263: $bd
	sbc  c                                           ; $7264: $99
	sub  [hl]                                        ; $7265: $96
	ld   hl, $1c11                                   ; $7266: $21 $11 $1c
	rst  $38                                         ; $7269: $ff
	sbc  a                                           ; $726a: $9f
	rst  $38                                         ; $726b: $ff
	sub  c                                           ; $726c: $91
	inc  d                                           ; $726d: $14
	push de                                          ; $726e: $d5
	adc  b                                           ; $726f: $88
	ld   l, [hl]                                     ; $7270: $6e
	rst  ToBoot                                         ; $7271: $c7
	ld   c, b                                        ; $7272: $48
	xor  b                                           ; $7273: $a8
	or   a                                           ; $7274: $b7
	sbc  [hl]                                        ; $7275: $9e
	rst  $38                                         ; $7276: $ff
	xor  h                                           ; $7277: $ac
	sbc  d                                           ; $7278: $9a
	ld   [$7269], a                                  ; $7279: $ea $69 $72
	ld   de, $ef11                                   ; $727c: $11 $11 $ef
	ret  c                                           ; $727f: $d8

	rst  $38                                         ; $7280: $ff
	ld   sp, hl                                      ; $7281: $f9
	ld   de, $466c                                   ; $7282: $11 $6c $46
	ld   [hl], a                                     ; $7285: $77
	ld   a, [$ab65]                                  ; $7286: $fa $65 $ab
	ld   a, d                                        ; $7289: $7a
	sbc  e                                           ; $728a: $9b
	db   $fc                                         ; $728b: $fc
	cp   e                                           ; $728c: $bb
	set  1, l                                        ; $728d: $cb $cd
	sbc  d                                           ; $728f: $9a
	and  l                                           ; $7290: $a5
	ld   de, $1d11                                   ; $7291: $11 $11 $1d
	ei                                               ; $7294: $fb
	xor  a                                           ; $7295: $af
	rst  $38                                         ; $7296: $ff
	ld   [hl], c                                     ; $7297: $71
	jr   @-$5c                                       ; $7298: $18 $a2

	ld   l, b                                        ; $729a: $68
	adc  h                                           ; $729b: $8c
	add  [hl]                                        ; $729c: $86
	ld   a, l                                        ; $729d: $7d
	or   [hl]                                        ; $729e: $b6
	xor  c                                           ; $729f: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72a0: $cf
	jp   hl                                          ; $72a1: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72a2: $cf
	call $89b6                                       ; $72a3: $cd $b6 $89
	ld   de, $1611                                   ; $72a6: $11 $11 $16
	cp   $7f                                         ; $72a9: $fe $7f
	rst  $38                                         ; $72ab: $ff
	or   h                                           ; $72ac: $b4
	ld   d, $b2                                      ; $72ad: $16 $b2
	add  hl, sp                                      ; $72af: $39
	ld   a, d                                        ; $72b0: $7a
	and  [hl]                                        ; $72b1: $a6
	adc  l                                           ; $72b2: $8d
	add  $9b                                         ; $72b3: $c6 $9b
	xor  a                                           ; $72b5: $af
	ld   a, [$dcae]                                  ; $72b6: $fa $ae $dc
	or   a                                           ; $72b9: $b7
	adc  d                                           ; $72ba: $8a
	ld   sp, $1311                                   ; $72bb: $31 $11 $13
	ei                                               ; $72be: $fb
	ld   l, a                                        ; $72bf: $6f
	rst  $38                                         ; $72c0: $ff
	add  $47                                         ; $72c1: $c6 $47
	sub  c                                           ; $72c3: $91
	add  hl, de                                      ; $72c4: $19
	ld   a, b                                        ; $72c5: $78
	add  [hl]                                        ; $72c6: $86
	xor  [hl]                                        ; $72c7: $ae
	push bc                                          ; $72c8: $c5
	sbc  l                                           ; $72c9: $9d
	db   $dd                                         ; $72ca: $dd
	set  5, a                                        ; $72cb: $cb $ef
	db   $ec                                         ; $72cd: $ec
	xor  b                                           ; $72ce: $a8
	sub  [hl]                                        ; $72cf: $96
	ld   de, $1611                                   ; $72d0: $11 $11 $16

jr_0f4_72d3:
	or   $9f                                         ; $72d3: $f6 $9f
	rst  $38                                         ; $72d5: $ff
	ret  z                                           ; $72d6: $c8

	ld   l, e                                        ; $72d7: $6b
	ld   [hl], c                                     ; $72d8: $71
	ld   c, b                                        ; $72d9: $48
	ld   d, [hl]                                     ; $72da: $56
	ld   h, a                                        ; $72db: $67
	cp   a                                           ; $72dc: $bf
	and  a                                           ; $72dd: $a7
	call $8cfe                                       ; $72de: $cd $fe $8c
	cp   $bc                                         ; $72e1: $fe $bc
	sbc  c                                           ; $72e3: $99
	add  c                                           ; $72e4: $81
	ld   de, $2d11                                   ; $72e5: $11 $11 $2d
	scf                                              ; $72e8: $37
	rst  $38                                         ; $72e9: $ff
	rst  $38                                         ; $72ea: $ff
	cp   b                                           ; $72eb: $b8
	ret  c                                           ; $72ec: $d8

	inc  d                                           ; $72ed: $14
	ld   h, d                                        ; $72ee: $62
	ld   b, l                                        ; $72ef: $45
	ld   c, d                                        ; $72f0: $4a
	ld   sp, hl                                      ; $72f1: $f9
	sbc  a                                           ; $72f2: $9f
	cp   $fc                                         ; $72f3: $fe $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72f5: $cf
	ei                                               ; $72f6: $fb
	ret                                              ; $72f7: $c9


	ld   [hl], a                                     ; $72f8: $77
	ld   de, $1311                                   ; $72f9: $11 $11 $13
	add  c                                           ; $72fc: $81
	adc  a                                           ; $72fd: $8f
	rst  $38                                         ; $72fe: $ff
	cp   $bf                                         ; $72ff: $fe $bf
	ld   [hl], c                                     ; $7301: $71
	halt                                             ; $7302: $76
	ld   [de], a                                     ; $7303: $12
	inc  sp                                          ; $7304: $33
	sbc  h                                           ; $7305: $9c
	ld   l, e                                        ; $7306: $6b
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	rst  $38                                         ; $7309: $ff
	rst  $38                                         ; $730a: $ff
	cp   h                                           ; $730b: $bc
	and  [hl]                                        ; $730c: $a6
	ld   hl, $1111                                   ; $730d: $21 $11 $11
	ld   sp, $fe3d                                   ; $7310: $31 $3d $fe
	rst  $38                                         ; $7313: $ff
	rst  $38                                         ; $7314: $ff
	rst  ToBoot                                         ; $7315: $c7
	sbc  b                                           ; $7316: $98
	ld   sp, $4712                                   ; $7317: $31 $12 $47
	ld   e, b                                        ; $731a: $58
	sbc  $ff                                         ; $731b: $de $ff
	rst  $38                                         ; $731d: $ff
	rst  $38                                         ; $731e: $ff
	db   $ed                                         ; $731f: $ed
	ret                                              ; $7320: $c9


	ld   b, c                                        ; $7321: $41
	ld   de, $1111                                   ; $7322: $11 $11 $11
	jr   jr_0f4_72d3                                 ; $7325: $18 $ac

	rst  $28                                         ; $7327: $ef
	rst  $38                                         ; $7328: $ff
	db   $ec                                         ; $7329: $ec
	db   $ec                                         ; $732a: $ec
	ld   [hl], l                                     ; $732b: $75
	ld   [hl-], a                                    ; $732c: $32
	inc  [hl]                                        ; $732d: $34
	inc  d                                           ; $732e: $14
	sbc  d                                           ; $732f: $9a
	xor  [hl]                                        ; $7330: $ae
	rst  $38                                         ; $7331: $ff
	rst  $38                                         ; $7332: $ff
	rst  $38                                         ; $7333: $ff
	ei                                               ; $7334: $fb
	ld   d, c                                        ; $7335: $51
	ld   de, $1111                                   ; $7336: $11 $11 $11
	ld   [de], a                                     ; $7339: $12
	ld   d, a                                        ; $733a: $57
	xor  l                                           ; $733b: $ad
	rst  $38                                         ; $733c: $ff
	rst  JumpTable                                         ; $733d: $df
	db   $fd                                         ; $733e: $fd
	cp   d                                           ; $733f: $ba
	halt                                             ; $7340: $76
	ld   h, l                                        ; $7341: $65
	ld   d, [hl]                                     ; $7342: $56
	ld   h, a                                        ; $7343: $67
	adc  d                                           ; $7344: $8a
	rst  JumpTable                                         ; $7345: $df
	rst  $28                                         ; $7346: $ef
	xor  $c9                                         ; $7347: $ee $c9
	ld   d, e                                        ; $7349: $53
	ld   [hl+], a                                    ; $734a: $22
	ld   de, $2211                                   ; $734b: $11 $11 $22
	dec  [hl]                                        ; $734e: $35
	ld   a, d                                        ; $734f: $7a
	cp   d                                           ; $7350: $ba
	cp   h                                           ; $7351: $bc
	call z, $a9ba                                    ; $7352: $cc $ba $a9
	sbc  c                                           ; $7355: $99
	sbc  c                                           ; $7356: $99
	xor  c                                           ; $7357: $a9
	xor  e                                           ; $7358: $ab
	cp   e                                           ; $7359: $bb
	set  1, d                                        ; $735a: $cb $ca
	xor  c                                           ; $735c: $a9
	add  a                                           ; $735d: $87
	ld   d, e                                        ; $735e: $53
	ld   [hl+], a                                    ; $735f: $22
	ld   [hl+], a                                    ; $7360: $22
	inc  hl                                          ; $7361: $23
	dec  [hl]                                        ; $7362: $35
	ld   h, [hl]                                     ; $7363: $66
	ld   a, b                                        ; $7364: $78
	adc  c                                           ; $7365: $89
	sbc  d                                           ; $7366: $9a
	xor  d                                           ; $7367: $aa
	xor  c                                           ; $7368: $a9
	xor  d                                           ; $7369: $aa
	xor  e                                           ; $736a: $ab
	set  3, l                                        ; $736b: $cb $dd
	xor  $ec                                         ; $736d: $ee $ec
	cp   e                                           ; $736f: $bb
	add  a                                           ; $7370: $87
	ld   d, e                                        ; $7371: $53
	ld   hl, $1211                                   ; $7372: $21 $11 $12
	inc  hl                                          ; $7375: $23
	ld   b, l                                        ; $7376: $45
	ld   l, b                                        ; $7377: $68
	sbc  c                                           ; $7378: $99
	xor  d                                           ; $7379: $aa
	xor  e                                           ; $737a: $ab
	xor  e                                           ; $737b: $ab
	cp   e                                           ; $737c: $bb
	xor  e                                           ; $737d: $ab
	cp   e                                           ; $737e: $bb
	call z, $ddde                                    ; $737f: $cc $de $dd
	res  4, a                                        ; $7382: $cb $a7
	ld   h, h                                        ; $7384: $64
	ld   hl, $1111                                   ; $7385: $21 $11 $11
	inc  hl                                          ; $7388: $23
	ld   b, l                                        ; $7389: $45
	ld   l, b                                        ; $738a: $68
	sbc  c                                           ; $738b: $99
	xor  d                                           ; $738c: $aa
	xor  d                                           ; $738d: $aa
	xor  c                                           ; $738e: $a9
	xor  e                                           ; $738f: $ab
	xor  e                                           ; $7390: $ab
	call z, $dedd                                    ; $7391: $cc $dd $de
	db   $ed                                         ; $7394: $ed
	jp   z, $5397                                    ; $7395: $ca $97 $53

	ld   hl, $1111                                   ; $7398: $21 $11 $11
	ld   [hl+], a                                    ; $739b: $22
	ld   b, l                                        ; $739c: $45
	ld   l, b                                        ; $739d: $68
	adc  d                                           ; $739e: $8a
	xor  e                                           ; $739f: $ab
	cp   d                                           ; $73a0: $ba
	cp   e                                           ; $73a1: $bb
	xor  d                                           ; $73a2: $aa
	cp   e                                           ; $73a3: $bb
	cp   h                                           ; $73a4: $bc
	db   $dd                                         ; $73a5: $dd
	sbc  $ed                                         ; $73a6: $de $ed
	cp   d                                           ; $73a8: $ba
	add  [hl]                                        ; $73a9: $86
	ld   b, d                                        ; $73aa: $42
	ld   de, $1211                                   ; $73ab: $11 $11 $12
	inc  hl                                          ; $73ae: $23
	ld   d, [hl]                                     ; $73af: $56
	ld   a, b                                        ; $73b0: $78
	sbc  d                                           ; $73b1: $9a
	xor  e                                           ; $73b2: $ab
	cp   e                                           ; $73b3: $bb
	cp   e                                           ; $73b4: $bb
	cp   e                                           ; $73b5: $bb
	call z, $dccc                                    ; $73b6: $cc $cc $dc
	call z, $a8cb                                    ; $73b9: $cc $cb $a8
	ld   h, h                                        ; $73bc: $64
	ld   hl, $1111                                   ; $73bd: $21 $11 $11
	ld   [hl+], a                                    ; $73c0: $22
	dec  [hl]                                        ; $73c1: $35
	ld   h, a                                        ; $73c2: $67
	adc  c                                           ; $73c3: $89
	sbc  e                                           ; $73c4: $9b
	xor  e                                           ; $73c5: $ab
	call z, $bccb                                    ; $73c6: $cc $cb $bc
	call z, $cddd                                    ; $73c9: $cc $dd $cd
	res  3, c                                        ; $73cc: $cb $99
	ld   h, h                                        ; $73ce: $64
	ld   [hl-], a                                    ; $73cf: $32
	ld   de, $2211                                   ; $73d0: $11 $11 $22
	inc  h                                           ; $73d3: $24
	ld   d, [hl]                                     ; $73d4: $56
	ld   a, c                                        ; $73d5: $79
	xor  d                                           ; $73d6: $aa
	xor  d                                           ; $73d7: $aa
	cp   h                                           ; $73d8: $bc
	cp   h                                           ; $73d9: $bc
	call z, $dddd                                    ; $73da: $cc $dd $dd
	db   $dd                                         ; $73dd: $dd
	res  5, b                                        ; $73de: $cb $a8
	ld   h, h                                        ; $73e0: $64
	ld   sp, $0111                                   ; $73e1: $31 $11 $01
	ld   [hl+], a                                    ; $73e4: $22
	inc  [hl]                                        ; $73e5: $34
	ld   h, a                                        ; $73e6: $67
	adc  b                                           ; $73e7: $88
	xor  d                                           ; $73e8: $aa
	cp   d                                           ; $73e9: $ba
	res  7, h                                        ; $73ea: $cb $bc
	call $edde                                       ; $73ec: $cd $de $ed
	db   $ed                                         ; $73ef: $ed
	db   $db                                         ; $73f0: $db
	sbc  b                                           ; $73f1: $98
	ld   h, h                                        ; $73f2: $64
	ld   hl, $1111                                   ; $73f3: $21 $11 $11
	ld   [de], a                                     ; $73f6: $12
	inc  [hl]                                        ; $73f7: $34
	ld   h, a                                        ; $73f8: $67
	sbc  c                                           ; $73f9: $99
	xor  d                                           ; $73fa: $aa
	cp   h                                           ; $73fb: $bc
	call z, $cdcc                                    ; $73fc: $cc $cc $cd
	db   $ed                                         ; $73ff: $ed
	sbc  $ec                                         ; $7400: $de $ec
	cp   e                                           ; $7402: $bb
	sub  [hl]                                        ; $7403: $96
	ld   b, e                                        ; $7404: $43
	ld   de, $1111                                   ; $7405: $11 $11 $11
	ld   [de], a                                     ; $7408: $12
	dec  [hl]                                        ; $7409: $35
	ld   l, b                                        ; $740a: $68
	adc  c                                           ; $740b: $89
	xor  e                                           ; $740c: $ab
	call z, $dddd                                    ; $740d: $cc $dd $dd
	xor  $ee                                         ; $7410: $ee $ee
	sbc  $cb                                         ; $7412: $de $cb
	xor  c                                           ; $7414: $a9
	ld   h, h                                        ; $7415: $64
	ld   hl, $1111                                   ; $7416: $21 $11 $11
	ld   bc, $5623                                   ; $7419: $01 $23 $56
	adc  c                                           ; $741c: $89
	sbc  d                                           ; $741d: $9a
	set  3, h                                        ; $741e: $cb $dc
	call $ffde                                       ; $7420: $cd $de $ff
	xor  $ed                                         ; $7423: $ee $ed
	cp   c                                           ; $7425: $b9
	ld   [hl], l                                     ; $7426: $75
	ld   sp, $1111                                   ; $7427: $31 $11 $11
	ld   de, $4612                                   ; $742a: $11 $12 $46
	ld   a, c                                        ; $742d: $79
	xor  d                                           ; $742e: $aa
	cp   h                                           ; $742f: $bc
	call z, $dfdd                                    ; $7430: $cc $dd $df
	rst  $28                                         ; $7433: $ef
	rst  $38                                         ; $7434: $ff
	call c, $85ca                                    ; $7435: $dc $ca $85
	ld   [hl-], a                                    ; $7438: $32
	ld   de, $1111                                   ; $7439: $11 $11 $11
	ld   [de], a                                     ; $743c: $12
	dec  [hl]                                        ; $743d: $35
	ld   a, b                                        ; $743e: $78
	xor  e                                           ; $743f: $ab
	cp   e                                           ; $7440: $bb
	call $eeed                                       ; $7441: $cd $ed $ee
	rst  $38                                         ; $7444: $ff
	rst  $38                                         ; $7445: $ff
	db   $dd                                         ; $7446: $dd
	cp   c                                           ; $7447: $b9
	ld   [hl], l                                     ; $7448: $75
	ld   sp, $1111                                   ; $7449: $31 $11 $11
	ld   de, $4612                                   ; $744c: $11 $12 $46
	ld   a, c                                        ; $744f: $79
	xor  d                                           ; $7450: $aa
	cp   e                                           ; $7451: $bb
	db   $dd                                         ; $7452: $dd
	rst  JumpTable                                         ; $7453: $df
	rst  $38                                         ; $7454: $ff
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	call c, $53a7                                    ; $7457: $dc $a7 $53
	ld   de, $1111                                   ; $745a: $11 $11 $11
	ld   de, $5724                                   ; $745d: $11 $24 $57
	adc  d                                           ; $7460: $8a
	xor  e                                           ; $7461: $ab
	cp   l                                           ; $7462: $bd
	sbc  $ff                                         ; $7463: $de $ff
	rst  $38                                         ; $7465: $ff
	rst  $38                                         ; $7466: $ff
	xor  $b9                                         ; $7467: $ee $b9
	ld   [hl], l                                     ; $7469: $75
	ld   sp, $1111                                   ; $746a: $31 $11 $11
	ld   de, $4612                                   ; $746d: $11 $12 $46
	ld   a, c                                        ; $7470: $79
	sbc  e                                           ; $7471: $9b
	cp   h                                           ; $7472: $bc
	sbc  $ee                                         ; $7473: $de $ee
	rst  $38                                         ; $7475: $ff
	rst  $38                                         ; $7476: $ff
	rst  $38                                         ; $7477: $ff
	jp   z, Jump_0f4_4296                            ; $7478: $ca $96 $42

	ld   de, $1111                                   ; $747b: $11 $11 $11
	ld   [de], a                                     ; $747e: $12
	dec  [hl]                                        ; $747f: $35
	ld   l, b                                        ; $7480: $68
	sbc  e                                           ; $7481: $9b
	cp   e                                           ; $7482: $bb
	db   $dd                                         ; $7483: $dd
	rst  $28                                         ; $7484: $ef
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	rst  $38                                         ; $7487: $ff
	jp   c, $3296                                    ; $7488: $da $96 $32

	ld   de, $1111                                   ; $748b: $11 $11 $11
	ld   [de], a                                     ; $748e: $12
	dec  [hl]                                        ; $748f: $35
	ld   a, b                                        ; $7490: $78
	sbc  d                                           ; $7491: $9a
	cp   h                                           ; $7492: $bc
	sbc  $ff                                         ; $7493: $de $ff
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	cp   $ca                                         ; $7497: $fe $ca
	ld   [hl], h                                     ; $7499: $74
	ld   de, $1111                                   ; $749a: $11 $11 $11
	ld   de, $5723                                   ; $749d: $11 $23 $57
	sbc  e                                           ; $74a0: $9b
	cp   l                                           ; $74a1: $bd
	xor  $ef                                         ; $74a2: $ee $ef
	rst  $38                                         ; $74a4: $ff
	rst  $38                                         ; $74a5: $ff
	rst  $38                                         ; $74a6: $ff
	ret                                              ; $74a7: $c9


	ld   [hl], l                                     ; $74a8: $75
	ld   de, $1111                                   ; $74a9: $11 $11 $11
	ld   de, $4623                                   ; $74ac: $11 $23 $46
	sbc  e                                           ; $74af: $9b
	call $eeef                                       ; $74b0: $cd $ef $ee
	rst  $38                                         ; $74b3: $ff
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	db   $eb                                         ; $74b6: $eb
	ld   [hl], l                                     ; $74b7: $75
	ld   hl, $1111                                   ; $74b8: $21 $11 $11
	ld   de, $4613                                   ; $74bb: $11 $13 $46
	sbc  d                                           ; $74be: $9a
	db   $dd                                         ; $74bf: $dd
	rst  $38                                         ; $74c0: $ff
	rst  $38                                         ; $74c1: $ff
	rst  $38                                         ; $74c2: $ff
	rst  $38                                         ; $74c3: $ff
	cp   $ea                                         ; $74c4: $fe $ea
	ld   h, h                                        ; $74c6: $64
	ld   de, $1111                                   ; $74c7: $11 $11 $11
	ld   de, $5732                                   ; $74ca: $11 $32 $57
	xor  h                                           ; $74cd: $ac
	db   $ed                                         ; $74ce: $ed
	rst  $38                                         ; $74cf: $ff
	rst  JumpTable                                         ; $74d0: $df
	rst  $38                                         ; $74d1: $ff
	rst  $38                                         ; $74d2: $ff
	rst  $38                                         ; $74d3: $ff
	or   [hl]                                        ; $74d4: $b6
	ld   b, c                                        ; $74d5: $41
	ld   de, $1111                                   ; $74d6: $11 $11 $11
	inc  de                                          ; $74d9: $13
	dec  [hl]                                        ; $74da: $35
	adc  d                                           ; $74db: $8a
	adc  $ff                                         ; $74dc: $ce $ff
	db   $fd                                         ; $74de: $fd
	rst  $38                                         ; $74df: $ff
	rst  $38                                         ; $74e0: $ff
	rst  $38                                         ; $74e1: $ff
	ei                                               ; $74e2: $fb
	ld   h, e                                        ; $74e3: $63
	ld   de, $1111                                   ; $74e4: $11 $11 $11
	ld   de, $6943                                   ; $74e7: $11 $43 $69
	call $ffff                                       ; $74ea: $cd $ff $ff
	rst  $28                                         ; $74ed: $ef
	rst  $38                                         ; $74ee: $ff
	rst  $38                                         ; $74ef: $ff
	cp   $84                                         ; $74f0: $fe $84
	ld   de, $1111                                   ; $74f2: $11 $11 $11
	ld   de, $5913                                   ; $74f5: $11 $13 $59
	call $ffff                                       ; $74f8: $cd $ff $ff
	rst  $38                                         ; $74fb: $ff
	rst  $38                                         ; $74fc: $ff
	rst  $38                                         ; $74fd: $ff
	db   $fd                                         ; $74fe: $fd
	sub  h                                           ; $74ff: $94
	ld   hl, $1111                                   ; $7500: $21 $11 $11
	ld   de, $4713                                   ; $7503: $11 $13 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7506: $cf
	rst  $38                                         ; $7507: $ff
	rst  $38                                         ; $7508: $ff
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	rst  $38                                         ; $750b: $ff
	db   $fd                                         ; $750c: $fd
	sub  e                                           ; $750d: $93
	ld   de, $1111                                   ; $750e: $11 $11 $11
	ld   de, $5812                                   ; $7511: $11 $12 $58
	sbc  $ff                                         ; $7514: $de $ff
	rst  $38                                         ; $7516: $ff
	rst  $38                                         ; $7517: $ff
	rst  $38                                         ; $7518: $ff
	rst  $38                                         ; $7519: $ff
	call c, $1172                                    ; $751a: $dc $72 $11
	ld   de, $1111                                   ; $751d: $11 $11 $11
	inc  de                                          ; $7520: $13
	ld   l, d                                        ; $7521: $6a
	rst  $28                                         ; $7522: $ef
	rst  $38                                         ; $7523: $ff
	rst  $38                                         ; $7524: $ff
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	swap c                                           ; $7528: $cb $31
	ld   de, $1111                                   ; $752a: $11 $11 $11
	ld   de, $9c15                                   ; $752d: $11 $15 $9c
	rst  $38                                         ; $7530: $ff
	rst  $38                                         ; $7531: $ff
	rst  $38                                         ; $7532: $ff
	rst  $38                                         ; $7533: $ff
	rst  $38                                         ; $7534: $ff
	db   $fd                                         ; $7535: $fd
	or   h                                           ; $7536: $b4
	ld   de, $1111                                   ; $7537: $11 $11 $11
	ld   de, $4711                                   ; $753a: $11 $11 $47
	rst  JumpTable                                         ; $753d: $df
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	rst  $38                                         ; $7541: $ff
	rst  $38                                         ; $7542: $ff
	bit  0, c                                        ; $7543: $cb $41
	ld   de, $1111                                   ; $7545: $11 $11 $11
	ld   de, $7d15                                   ; $7548: $11 $15 $7d
	rst  $38                                         ; $754b: $ff
	rst  $38                                         ; $754c: $ff
	rst  $38                                         ; $754d: $ff
	rst  $38                                         ; $754e: $ff
	rst  $38                                         ; $754f: $ff
	db   $fc                                         ; $7550: $fc
	sub  e                                           ; $7551: $93
	ld   de, $1111                                   ; $7552: $11 $11 $11
	ld   de, $7a11                                   ; $7555: $11 $11 $7a
	xor  $ff                                         ; $7558: $ee $ff
	rst  $38                                         ; $755a: $ff
	rst  $38                                         ; $755b: $ff
	rst  $38                                         ; $755c: $ff
	rst  $38                                         ; $755d: $ff
	sub  [hl]                                        ; $755e: $96
	ld   de, $1111                                   ; $755f: $11 $11 $11
	ld   de, $5a11                                   ; $7562: $11 $11 $5a
	rst  JumpTable                                         ; $7565: $df
	rst  $38                                         ; $7566: $ff
	rst  $38                                         ; $7567: $ff
	rst  $38                                         ; $7568: $ff
	rst  $38                                         ; $7569: $ff
	rst  $38                                         ; $756a: $ff
	sub  a                                           ; $756b: $97
	ld   sp, $1111                                   ; $756c: $31 $11 $11
	ld   de, $2b21                                   ; $756f: $11 $21 $2b
	cp   a                                           ; $7572: $bf
	rst  $38                                         ; $7573: $ff
	rst  $38                                         ; $7574: $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	or   l                                           ; $7578: $b5
	ld   hl, $1111                                   ; $7579: $21 $11 $11
	ld   de, $1911                                   ; $757c: $11 $11 $19
	xor  $ff                                         ; $757f: $ee $ff
	rst  $38                                         ; $7581: $ff
	rst  $38                                         ; $7582: $ff
	rst  $38                                         ; $7583: $ff
	rst  $38                                         ; $7584: $ff
	and  l                                           ; $7585: $a5
	ld   hl, $1111                                   ; $7586: $21 $11 $11
	ld   de, $1a11                                   ; $7589: $11 $11 $1a
	db   $fd                                         ; $758c: $fd
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	rst  $38                                         ; $758f: $ff
	rst  $38                                         ; $7590: $ff
	rst  $38                                         ; $7591: $ff
	add  h                                           ; $7592: $84
	ld   hl, $1111                                   ; $7593: $21 $11 $11
	ld   de, $2a21                                   ; $7596: $11 $21 $2a
	db   $fd                                         ; $7599: $fd
	rst  $38                                         ; $759a: $ff
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	ld   d, l                                        ; $759f: $55
	ld   de, $1111                                   ; $75a0: $11 $11 $11
	ld   de, $5c11                                   ; $75a3: $11 $11 $5c
	db   $fd                                         ; $75a6: $fd
	rst  $38                                         ; $75a7: $ff
	rst  $38                                         ; $75a8: $ff
	rst  $38                                         ; $75a9: $ff
	rst  $38                                         ; $75aa: $ff
	cp   $53                                         ; $75ab: $fe $53
	ld   de, $1111                                   ; $75ad: $11 $11 $11
	ld   [de], a                                     ; $75b0: $12
	ld   de, $ed7e                                   ; $75b1: $11 $7e $ed
	rst  $38                                         ; $75b4: $ff
	rst  $38                                         ; $75b5: $ff
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff
	ld   sp, hl                                      ; $75b8: $f9
	inc  sp                                          ; $75b9: $33
	ld   de, $1111                                   ; $75ba: $11 $11 $11
	ld   de, $bf14                                   ; $75bd: $11 $14 $bf
	cp   a                                           ; $75c0: $bf
	rst  $38                                         ; $75c1: $ff
	rst  $38                                         ; $75c2: $ff
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	push af                                          ; $75c5: $f5
	ld   [hl-], a                                    ; $75c6: $32
	ld   de, $1112                                   ; $75c7: $11 $12 $11
	ld   sp, $fd16                                   ; $75ca: $31 $16 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75cd: $cf
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	sub  e                                           ; $75d2: $93
	ld   b, e                                        ; $75d3: $43
	ld   de, $1211                                   ; $75d4: $11 $11 $12
	ld   de, $e94d                                   ; $75d7: $11 $4d $e9
	rst  $38                                         ; $75da: $ff
	rst  $38                                         ; $75db: $ff
	rst  $38                                         ; $75dc: $ff
	rst  $38                                         ; $75dd: $ff
	ei                                               ; $75de: $fb
	ld   [hl], d                                     ; $75df: $72
	ld   b, d                                        ; $75e0: $42
	ld   de, $1201                                   ; $75e1: $11 $01 $12
	inc  de                                          ; $75e4: $13
	ld   a, a                                        ; $75e5: $7f
	sbc  a                                           ; $75e6: $9f
	db   $fd                                         ; $75e7: $fd
	rst  $38                                         ; $75e8: $ff
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	cp   c                                           ; $75eb: $b9
	ld   d, d                                        ; $75ec: $52
	ld   h, c                                        ; $75ed: $61
	inc  d                                           ; $75ee: $14
	ld   de, $3431                                   ; $75ef: $11 $31 $34
	db   $fc                                         ; $75f2: $fc
	sbc  a                                           ; $75f3: $9f
	cp   $ff                                         ; $75f4: $fe $ff
	rst  $38                                         ; $75f6: $ff
	cp   $88                                         ; $75f7: $fe $88
	inc  d                                           ; $75f9: $14
	ld   b, c                                        ; $75fa: $41
	ld   de, $1312                                   ; $75fb: $11 $12 $13
	ld   b, a                                        ; $75fe: $47
	rst  $30                                         ; $75ff: $f7
	rst  $38                                         ; $7600: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7601: $cf
	rst  $38                                         ; $7602: $ff
	rst  $38                                         ; $7603: $ff
	ld   a, [$1885]                                  ; $7604: $fa $85 $18
	ld   de, $1571                                   ; $7607: $11 $71 $15
	ld   d, $3f                                      ; $760a: $16 $3f
	and  $ff                                         ; $760c: $e6 $ff
	rst  JumpTable                                         ; $760e: $df
	rst  $38                                         ; $760f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7610: $cf
	db   $f4                                         ; $7611: $f4
	or   d                                           ; $7612: $b2
	scf                                              ; $7613: $37
	ld   [de], a                                     ; $7614: $12
	ld   hl, $2751                                   ; $7615: $21 $51 $27
	ld   c, a                                        ; $7618: $4f
	adc  [hl]                                        ; $7619: $8e
	ld   sp, hl                                      ; $761a: $f9
	rst  $38                                         ; $761b: $ff
	rst  $38                                         ; $761c: $ff
	rst  JumpTable                                         ; $761d: $df
	or   a                                           ; $761e: $b7
	add  c                                           ; $761f: $81
	ld   [hl], e                                     ; $7620: $73
	rla                                              ; $7621: $17
	ld   de, $6471                                   ; $7622: $11 $71 $64
	ld   a, a                                        ; $7625: $7f
	ld   e, a                                        ; $7626: $5f
	ld   a, [$fcff]                                  ; $7627: $fa $ff $fc
	rst  $28                                         ; $762a: $ef
	adc  b                                           ; $762b: $88
	ld   [hl], c                                     ; $762c: $71
	add  c                                           ; $762d: $81
	jr   jr_0f4_7641                                 ; $762e: $18 $11

	add  c                                           ; $7630: $81
	add  e                                           ; $7631: $83
	sbc  a                                           ; $7632: $9f
	ld   c, a                                        ; $7633: $4f
	ld   sp, hl                                      ; $7634: $f9
	db   $fd                                         ; $7635: $fd
	ld   a, [$78cf]                                  ; $7636: $fa $cf $78
	and  c                                           ; $7639: $a1
	and  d                                           ; $763a: $a2
	ld   a, [de]                                     ; $763b: $1a
	ld   de, $8481                                   ; $763c: $11 $81 $84
	adc  a                                           ; $763f: $8f
	ld   c, a                                        ; $7640: $4f

jr_0f4_7641:
	ld   a, [$fcee]                                  ; $7641: $fa $ee $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7644: $cf
	ret  c                                           ; $7645: $d8

	ld   [hl], e                                     ; $7646: $73
	ld   e, c                                        ; $7647: $59
	inc  d                                           ; $7648: $14
	ld   [hl], c                                     ; $7649: $71
	ld   [hl], e                                     ; $764a: $73
	ld   b, a                                        ; $764b: $47
	ccf                                              ; $764c: $3f
	ld   a, d                                        ; $764d: $7a
	ld   sp, hl                                      ; $764e: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $764f: $cf
	db   $db                                         ; $7650: $db
	xor  l                                           ; $7651: $ad
	db   $db                                         ; $7652: $db
	add  [hl]                                        ; $7653: $86
	dec  de                                          ; $7654: $1b
	ld   hl, $18c1                                   ; $7655: $21 $c1 $18
	jr   jr_0f4_7684                                 ; $7658: $18 $2a

	di                                               ; $765a: $f3
	rst  $38                                         ; $765b: $ff
	sbc  l                                           ; $765c: $9d
	db   $ec                                         ; $765d: $ec
	sbc  h                                           ; $765e: $9c
	db   $db                                         ; $765f: $db
	cp   e                                           ; $7660: $bb
	ld   [hl-], a                                    ; $7661: $32
	pop  de                                          ; $7662: $d1
	inc  e                                           ; $7663: $1c
	ld   de, $7174                                   ; $7664: $11 $74 $71
	cp   a                                           ; $7667: $bf
	ccf                                              ; $7668: $3f
	ld   sp, hl                                      ; $7669: $f9
	cp   l                                           ; $766a: $bd
	rst  ToBoot                                         ; $766b: $c7
	cp   l                                           ; $766c: $bd
	sbc  e                                           ; $766d: $9b
	add  $18                                         ; $766e: $c6 $18
	or   c                                           ; $7670: $b1
	inc  l                                           ; $7671: $2c
	ld   [de], a                                     ; $7672: $12
	add  h                                           ; $7673: $84
	ld   d, e                                        ; $7674: $53
	ld   sp, hl                                      ; $7675: $f9
	ld   l, a                                        ; $7676: $6f
	ret  c                                           ; $7677: $d8

	sbc  $78                                         ; $7678: $de $78
	db   $db                                         ; $767a: $db
	adc  h                                           ; $767b: $8c
	ldh  a, [c]                                      ; $767c: $f2
	dec  e                                           ; $767d: $1d
	ld   h, c                                        ; $767e: $61
	ld   e, e                                        ; $767f: $5b
	ld   de, $26a3                                   ; $7680: $11 $a3 $26
	rst  $30                                         ; $7683: $f7

jr_0f4_7684:
	ld   a, a                                        ; $7684: $7f
	rst  $10                                         ; $7685: $d7
	sbc  $66                                         ; $7686: $de $66
	rst  $30                                         ; $7688: $f7
	ld   c, a                                        ; $7689: $4f
	push af                                          ; $768a: $f5
	ld   d, [hl]                                     ; $768b: $56
	and  d                                           ; $768c: $a2
	dec  de                                          ; $768d: $1b
	ld   hl, $27a5                                   ; $768e: $21 $a5 $27
	xor  [hl]                                        ; $7691: $ae
	ld   l, l                                        ; $7692: $6d
	ld   hl, sp-$42                                  ; $7693: $f8 $be
	and  l                                           ; $7695: $a5
	sbc  h                                           ; $7696: $9c
	ld   d, a                                        ; $7697: $57
	db   $eb                                         ; $7698: $eb
	ld   [hl], a                                     ; $7699: $77
	ld   e, b                                        ; $769a: $58
	ld   d, c                                        ; $769b: $51
	ld   [hl], l                                     ; $769c: $75
	rla                                              ; $769d: $17
	ld   h, e                                        ; $769e: $63
	add  a                                           ; $769f: $87
	jp   hl                                          ; $76a0: $e9


	xor  a                                           ; $76a1: $af
	cp   c                                           ; $76a2: $b9
	cp   e                                           ; $76a3: $bb
	ld   h, a                                        ; $76a4: $67
	sub  [hl]                                        ; $76a5: $96
	ld   l, d                                        ; $76a6: $6a
	db   $db                                         ; $76a7: $db

Jump_0f4_76a8:
	sbc  c                                           ; $76a8: $99
	ld   d, [hl]                                     ; $76a9: $56
	or   c                                           ; $76aa: $b1
	ld   c, c                                        ; $76ab: $49
	ld   d, $64                                      ; $76ac: $16 $64
	and  l                                           ; $76ae: $a5
	db   $eb                                         ; $76af: $eb
	adc  a                                           ; $76b0: $8f
	reti                                             ; $76b1: $d9


	sbc  d                                           ; $76b2: $9a
	ld   h, l                                        ; $76b3: $65
	ld   h, a                                        ; $76b4: $67
	ld   h, [hl]                                     ; $76b5: $66
	jp   c, Jump_0f4_69ed                            ; $76b6: $da $ed $69

Call_0f4_76b9:
	ld   l, b                                        ; $76b9: $68
	ld   sp, $3791                                   ; $76ba: $31 $91 $37
	ld   c, c                                        ; $76bd: $49
	ld   l, e                                        ; $76be: $6b
	cp   b                                           ; $76bf: $b8
	db   $dd                                         ; $76c0: $dd
	sbc  c                                           ; $76c1: $99
	or   [hl]                                        ; $76c2: $b6
	ld   d, a                                        ; $76c3: $57
	ld   h, a                                        ; $76c4: $67
	ld   a, h                                        ; $76c5: $7c
	cp   d                                           ; $76c6: $ba
	db   $fd                                         ; $76c7: $fd
	ld   d, a                                        ; $76c8: $57
	adc  d                                           ; $76c9: $8a

Call_0f4_76ca:
	ld   de, $1bc1                                   ; $76ca: $11 $c1 $1b
	ld   b, l                                        ; $76cd: $45
	ld   a, l                                        ; $76ce: $7d
	or   [hl]                                        ; $76cf: $b6
	rst  $28                                         ; $76d0: $ef
	ld   a, c                                        ; $76d1: $79
	rst  $10                                         ; $76d2: $d7
	ld   c, b                                        ; $76d3: $48
	add  l                                           ; $76d4: $85
	ld   l, e                                        ; $76d5: $6b
	adc  c                                           ; $76d6: $89
	sbc  $fa                                         ; $76d7: $de $fa
	add  [hl]                                        ; $76d9: $86
	ld   c, e                                        ; $76da: $4b
	ld   de, $1791                                   ; $76db: $11 $91 $17
	ld   l, b                                        ; $76de: $68
	ld   a, e                                        ; $76df: $7b
	ld   [$a7bf], a                                  ; $76e0: $ea $bf $a7
	cp   c                                           ; $76e3: $b9
	ld   d, l                                        ; $76e4: $55
	ld   h, [hl]                                     ; $76e5: $66
	scf                                              ; $76e6: $37
	sbc  b                                           ; $76e7: $98
	sbc  l                                           ; $76e8: $9d
	set  5, a                                        ; $76e9: $cb $ef
	sub  [hl]                                        ; $76eb: $96
	dec  [hl]                                        ; $76ec: $35
	add  c                                           ; $76ed: $81
	dec  hl                                          ; $76ee: $2b
	dec  d                                           ; $76ef: $15
	sub  [hl]                                        ; $76f0: $96
	sbc  b                                           ; $76f1: $98
	cp   $8c                                         ; $76f2: $fe $8c
	rst  $30                                         ; $76f4: $f7
	ld   l, e                                        ; $76f5: $6b
	ld   h, e                                        ; $76f6: $63
	ld   b, a                                        ; $76f7: $47
	ld   h, e                                        ; $76f8: $63
	sbc  c                                           ; $76f9: $99
	ld   a, d                                        ; $76fa: $7a
	call z, $eb9d                                    ; $76fb: $cc $9d $eb
	cp   l                                           ; $76fe: $bd
	reti                                             ; $76ff: $d9


	ld   b, d                                        ; $7700: $42
	ld   d, $11                                      ; $7701: $16 $11
	and  e                                           ; $7703: $a3
	inc  e                                           ; $7704: $1c
	adc  h                                           ; $7705: $8c
	cp   e                                           ; $7706: $bb
	ei                                               ; $7707: $fb
	sbc  l                                           ; $7708: $9d
	or   h                                           ; $7709: $b4
	ld   h, a                                        ; $770a: $67
	ld   b, e                                        ; $770b: $43
	ld   b, a                                        ; $770c: $47
	ld   d, [hl]                                     ; $770d: $56
	cp   d                                           ; $770e: $ba
	sbc  e                                           ; $770f: $9b
	jp   z, $98ab                                    ; $7710: $ca $ab $98

	ld   [hl], a                                     ; $7713: $77
	ld   [hl], l                                     ; $7714: $75
	ld   l, c                                        ; $7715: $69
	adc  c                                           ; $7716: $89
	sbc  $9e                                         ; $7717: $de $9e
	rst  $30                                         ; $7719: $f7
	ld   hl, $1fe2                                   ; $771a: $21 $e2 $1f
	ld   h, c                                        ; $771d: $61
	adc  d                                           ; $771e: $8a
	sub  $8f                                         ; $771f: $d6 $8f
	or   h                                           ; $7721: $b4
	adc  $44                                         ; $7722: $ce $44
	sub  a                                           ; $7724: $97
	ld   b, e                                        ; $7725: $43
	sbc  d                                           ; $7726: $9a
	ld   e, c                                        ; $7727: $59
	cp   d                                           ; $7728: $ba
	sbc  d                                           ; $7729: $9a
	cp   c                                           ; $772a: $b9
	ld   a, b                                        ; $772b: $78
	sub  [hl]                                        ; $772c: $96
	ld   l, c                                        ; $772d: $69
	add  [hl]                                        ; $772e: $86
	ld   l, b                                        ; $772f: $68
	add  a                                           ; $7730: $87
	adc  c                                           ; $7731: $89
	adc  b                                           ; $7732: $88
	sbc  d                                           ; $7733: $9a
	sbc  b                                           ; $7734: $98
	adc  b                                           ; $7735: $88
	ld   [hl], a                                     ; $7736: $77
	adc  b                                           ; $7737: $88
	ld   a, b                                        ; $7738: $78
	sbc  b                                           ; $7739: $98
	sbc  c                                           ; $773a: $99
	xor  d                                           ; $773b: $aa
	cp   e                                           ; $773c: $bb
	xor  h                                           ; $773d: $ac
	add  a                                           ; $773e: $87
	sub  [hl]                                        ; $773f: $96
	ld   h, c                                        ; $7740: $61
	rra                                              ; $7741: $1f
	ld   de, $a7f7                                   ; $7742: $11 $f7 $a7
	cp   a                                           ; $7745: $bf
	ld   d, a                                        ; $7746: $57
	add  sp, $35                                     ; $7747: $e8 $35
	add  a                                           ; $7749: $87
	inc  [hl]                                        ; $774a: $34
	xor  c                                           ; $774b: $a9
	ld   l, d                                        ; $774c: $6a
	res  3, c                                        ; $774d: $cb $99
	xor  d                                           ; $774f: $aa
	ld   h, a                                        ; $7750: $67
	sub  a                                           ; $7751: $97
	ld   a, b                                        ; $7752: $78
	sbc  c                                           ; $7753: $99
	ld   a, c                                        ; $7754: $79
	sbc  b                                           ; $7755: $98
	adc  c                                           ; $7756: $89
	adc  c                                           ; $7757: $89
	ld   a, b                                        ; $7758: $78
	adc  c                                           ; $7759: $89
	adc  b                                           ; $775a: $88
	adc  b                                           ; $775b: $88
	ld   [hl], a                                     ; $775c: $77
	ld   a, b                                        ; $775d: $78
	ld   [hl], a                                     ; $775e: $77
	sbc  c                                           ; $775f: $99
	sbc  b                                           ; $7760: $98
	xor  c                                           ; $7761: $a9
	adc  c                                           ; $7762: $89
	sbc  b                                           ; $7763: $98
	adc  b                                           ; $7764: $88
	ld   [hl], a                                     ; $7765: $77
	ld   a, b                                        ; $7766: $78
	ld   a, b                                        ; $7767: $78
	sbc  b                                           ; $7768: $98
	adc  c                                           ; $7769: $89
	adc  c                                           ; $776a: $89
	adc  b                                           ; $776b: $88
	add  a                                           ; $776c: $87
	ld   [hl], a                                     ; $776d: $77
	ld   a, b                                        ; $776e: $78
	adc  b                                           ; $776f: $88
	adc  c                                           ; $7770: $89
	sbc  b                                           ; $7771: $98
	sbc  c                                           ; $7772: $99
	adc  b                                           ; $7773: $88
	adc  b                                           ; $7774: $88
	adc  b                                           ; $7775: $88
	adc  b                                           ; $7776: $88
	adc  b                                           ; $7777: $88
	adc  c                                           ; $7778: $89
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  b                                           ; $777c: $88
	adc  b                                           ; $777d: $88
	adc  b                                           ; $777e: $88
	adc  b                                           ; $777f: $88
	add  a                                           ; $7780: $87
	adc  b                                           ; $7781: $88
	add  a                                           ; $7782: $87
	ld   a, b                                        ; $7783: $78
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	adc  b                                           ; $7786: $88

Jump_0f4_7787:
	adc  b                                           ; $7787: $88
	adc  b                                           ; $7788: $88
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	adc  b                                           ; $778b: $88
	adc  b                                           ; $778c: $88
	adc  b                                           ; $778d: $88
	adc  b                                           ; $778e: $88
	adc  b                                           ; $778f: $88
	adc  b                                           ; $7790: $88
	adc  b                                           ; $7791: $88
	adc  b                                           ; $7792: $88
	adc  b                                           ; $7793: $88
	adc  b                                           ; $7794: $88
	adc  b                                           ; $7795: $88
	adc  b                                           ; $7796: $88

Call_0f4_7797:
Jump_0f4_7797:
	adc  b                                           ; $7797: $88
	adc  b                                           ; $7798: $88
	adc  b                                           ; $7799: $88
	adc  b                                           ; $779a: $88
	adc  b                                           ; $779b: $88
	adc  b                                           ; $779c: $88
	adc  b                                           ; $779d: $88
	adc  b                                           ; $779e: $88
	adc  b                                           ; $779f: $88
	adc  b                                           ; $77a0: $88
	adc  b                                           ; $77a1: $88
	adc  b                                           ; $77a2: $88
	adc  b                                           ; $77a3: $88
	adc  b                                           ; $77a4: $88
	adc  b                                           ; $77a5: $88
	adc  b                                           ; $77a6: $88
	adc  b                                           ; $77a7: $88

Call_0f4_77a8:
	adc  b                                           ; $77a8: $88

Call_0f4_77a9:
	adc  b                                           ; $77a9: $88
	adc  b                                           ; $77aa: $88
	adc  b                                           ; $77ab: $88
	adc  b                                           ; $77ac: $88
	adc  b                                           ; $77ad: $88
	adc  b                                           ; $77ae: $88
	adc  b                                           ; $77af: $88
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	adc  b                                           ; $77b2: $88
	adc  b                                           ; $77b3: $88
	adc  b                                           ; $77b4: $88
	adc  b                                           ; $77b5: $88
	adc  b                                           ; $77b6: $88
	adc  b                                           ; $77b7: $88

Call_0f4_77b8:
	adc  b                                           ; $77b8: $88

Call_0f4_77b9:
	adc  b                                           ; $77b9: $88
	adc  b                                           ; $77ba: $88
	adc  b                                           ; $77bb: $88
	adc  b                                           ; $77bc: $88
	adc  b                                           ; $77bd: $88
	adc  b                                           ; $77be: $88
	adc  b                                           ; $77bf: $88
	adc  b                                           ; $77c0: $88
	adc  b                                           ; $77c1: $88
	adc  b                                           ; $77c2: $88
	adc  b                                           ; $77c3: $88
	adc  b                                           ; $77c4: $88
	adc  b                                           ; $77c5: $88
	adc  b                                           ; $77c6: $88
	adc  b                                           ; $77c7: $88
	adc  b                                           ; $77c8: $88
	adc  b                                           ; $77c9: $88

Call_0f4_77ca:
	adc  b                                           ; $77ca: $88
	adc  b                                           ; $77cb: $88
	adc  b                                           ; $77cc: $88
	adc  b                                           ; $77cd: $88
	adc  b                                           ; $77ce: $88
	adc  b                                           ; $77cf: $88
	adc  b                                           ; $77d0: $88
	adc  b                                           ; $77d1: $88
	adc  b                                           ; $77d2: $88
	adc  b                                           ; $77d3: $88
	adc  b                                           ; $77d4: $88
	adc  b                                           ; $77d5: $88
	adc  b                                           ; $77d6: $88
	adc  b                                           ; $77d7: $88
	adc  b                                           ; $77d8: $88
	adc  b                                           ; $77d9: $88
	adc  b                                           ; $77da: $88
	adc  b                                           ; $77db: $88
	adc  b                                           ; $77dc: $88
	adc  b                                           ; $77dd: $88
	adc  b                                           ; $77de: $88
	adc  b                                           ; $77df: $88
	adc  b                                           ; $77e0: $88
	adc  b                                           ; $77e1: $88
	adc  b                                           ; $77e2: $88
	adc  b                                           ; $77e3: $88
	adc  b                                           ; $77e4: $88
	adc  b                                           ; $77e5: $88
	adc  b                                           ; $77e6: $88
	adc  b                                           ; $77e7: $88
	adc  b                                           ; $77e8: $88
	adc  b                                           ; $77e9: $88
	adc  b                                           ; $77ea: $88
	adc  b                                           ; $77eb: $88
	adc  b                                           ; $77ec: $88
	adc  b                                           ; $77ed: $88
	adc  b                                           ; $77ee: $88
	adc  b                                           ; $77ef: $88
	adc  b                                           ; $77f0: $88
	adc  b                                           ; $77f1: $88
	adc  b                                           ; $77f2: $88
	adc  b                                           ; $77f3: $88
	adc  b                                           ; $77f4: $88
	adc  b                                           ; $77f5: $88
	adc  b                                           ; $77f6: $88
	adc  b                                           ; $77f7: $88
	adc  b                                           ; $77f8: $88
	adc  b                                           ; $77f9: $88
	adc  b                                           ; $77fa: $88
	adc  b                                           ; $77fb: $88
	adc  b                                           ; $77fc: $88
	adc  b                                           ; $77fd: $88
	adc  b                                           ; $77fe: $88
	adc  b                                           ; $77ff: $88
	adc  b                                           ; $7800: $88
	adc  b                                           ; $7801: $88
	adc  b                                           ; $7802: $88
	adc  b                                           ; $7803: $88
	adc  b                                           ; $7804: $88
	adc  b                                           ; $7805: $88
	adc  b                                           ; $7806: $88
	adc  b                                           ; $7807: $88
	adc  b                                           ; $7808: $88
	adc  b                                           ; $7809: $88
	adc  b                                           ; $780a: $88
	adc  b                                           ; $780b: $88
	adc  b                                           ; $780c: $88
	adc  b                                           ; $780d: $88
	adc  b                                           ; $780e: $88
	adc  b                                           ; $780f: $88
	adc  b                                           ; $7810: $88
	adc  b                                           ; $7811: $88
	adc  b                                           ; $7812: $88
	adc  b                                           ; $7813: $88
	adc  b                                           ; $7814: $88
	adc  b                                           ; $7815: $88
	adc  b                                           ; $7816: $88
	adc  b                                           ; $7817: $88
	adc  b                                           ; $7818: $88
	adc  b                                           ; $7819: $88
	adc  b                                           ; $781a: $88
	adc  b                                           ; $781b: $88
	adc  b                                           ; $781c: $88
	adc  b                                           ; $781d: $88
	adc  b                                           ; $781e: $88
	adc  b                                           ; $781f: $88
	adc  b                                           ; $7820: $88
	adc  b                                           ; $7821: $88
	adc  b                                           ; $7822: $88
	adc  b                                           ; $7823: $88
	adc  b                                           ; $7824: $88
	adc  b                                           ; $7825: $88
	adc  b                                           ; $7826: $88
	adc  b                                           ; $7827: $88
	adc  b                                           ; $7828: $88
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	adc  b                                           ; $782b: $88
	adc  b                                           ; $782c: $88
	adc  b                                           ; $782d: $88
	adc  b                                           ; $782e: $88
	adc  b                                           ; $782f: $88
	adc  b                                           ; $7830: $88
	adc  b                                           ; $7831: $88
	adc  b                                           ; $7832: $88
	adc  b                                           ; $7833: $88
	adc  b                                           ; $7834: $88
	adc  b                                           ; $7835: $88
	adc  b                                           ; $7836: $88
	adc  b                                           ; $7837: $88
	adc  b                                           ; $7838: $88
	adc  b                                           ; $7839: $88
	adc  b                                           ; $783a: $88
	adc  b                                           ; $783b: $88
	adc  b                                           ; $783c: $88
	adc  b                                           ; $783d: $88
	adc  b                                           ; $783e: $88
	adc  b                                           ; $783f: $88
	adc  b                                           ; $7840: $88
	adc  b                                           ; $7841: $88
	adc  b                                           ; $7842: $88
	adc  b                                           ; $7843: $88
	adc  b                                           ; $7844: $88
	adc  b                                           ; $7845: $88
	adc  b                                           ; $7846: $88
	adc  b                                           ; $7847: $88
	adc  b                                           ; $7848: $88
	adc  b                                           ; $7849: $88
	adc  b                                           ; $784a: $88
	adc  b                                           ; $784b: $88
	adc  b                                           ; $784c: $88
	adc  b                                           ; $784d: $88
	adc  b                                           ; $784e: $88
	adc  b                                           ; $784f: $88
	adc  b                                           ; $7850: $88
	adc  b                                           ; $7851: $88
	adc  b                                           ; $7852: $88
	adc  b                                           ; $7853: $88
	adc  b                                           ; $7854: $88
	adc  b                                           ; $7855: $88
	adc  b                                           ; $7856: $88
	adc  b                                           ; $7857: $88
	adc  b                                           ; $7858: $88
	adc  b                                           ; $7859: $88
	adc  b                                           ; $785a: $88
	adc  b                                           ; $785b: $88
	adc  b                                           ; $785c: $88
	adc  b                                           ; $785d: $88
	adc  b                                           ; $785e: $88
	adc  b                                           ; $785f: $88
	adc  b                                           ; $7860: $88
	adc  b                                           ; $7861: $88
	adc  b                                           ; $7862: $88
	adc  b                                           ; $7863: $88
	adc  b                                           ; $7864: $88
	adc  b                                           ; $7865: $88
	adc  b                                           ; $7866: $88
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	adc  b                                           ; $786a: $88
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	adc  b                                           ; $7870: $88
	adc  b                                           ; $7871: $88
	adc  b                                           ; $7872: $88
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	adc  b                                           ; $7883: $88
	adc  b                                           ; $7884: $88
	adc  b                                           ; $7885: $88
	adc  b                                           ; $7886: $88
	adc  b                                           ; $7887: $88
	adc  b                                           ; $7888: $88
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	adc  b                                           ; $788d: $88
	adc  b                                           ; $788e: $88
	adc  b                                           ; $788f: $88
	adc  b                                           ; $7890: $88
	adc  b                                           ; $7891: $88
	adc  b                                           ; $7892: $88
	adc  b                                           ; $7893: $88
	adc  b                                           ; $7894: $88
	adc  b                                           ; $7895: $88
	adc  b                                           ; $7896: $88
	adc  b                                           ; $7897: $88
	adc  b                                           ; $7898: $88
	adc  b                                           ; $7899: $88
	adc  b                                           ; $789a: $88
	adc  b                                           ; $789b: $88
	adc  b                                           ; $789c: $88
	adc  b                                           ; $789d: $88
	adc  b                                           ; $789e: $88
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	adc  b                                           ; $78a1: $88
	adc  b                                           ; $78a2: $88
	adc  b                                           ; $78a3: $88
	adc  b                                           ; $78a4: $88
	adc  b                                           ; $78a5: $88
	adc  b                                           ; $78a6: $88
	adc  b                                           ; $78a7: $88
	adc  b                                           ; $78a8: $88
	adc  b                                           ; $78a9: $88
	adc  b                                           ; $78aa: $88
	adc  b                                           ; $78ab: $88
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  b                                           ; $78b0: $88
	adc  b                                           ; $78b1: $88
	adc  b                                           ; $78b2: $88
	adc  b                                           ; $78b3: $88
	adc  b                                           ; $78b4: $88
	adc  b                                           ; $78b5: $88
	adc  b                                           ; $78b6: $88
	adc  b                                           ; $78b7: $88
	adc  b                                           ; $78b8: $88
	adc  b                                           ; $78b9: $88
	adc  b                                           ; $78ba: $88
	adc  b                                           ; $78bb: $88
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	adc  b                                           ; $78be: $88
	adc  b                                           ; $78bf: $88
	adc  b                                           ; $78c0: $88
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	adc  b                                           ; $78c5: $88
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	adc  b                                           ; $78c8: $88
	adc  b                                           ; $78c9: $88
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	adc  b                                           ; $78cc: $88
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	adc  b                                           ; $78f2: $88
	adc  b                                           ; $78f3: $88
	adc  b                                           ; $78f4: $88
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  b                                           ; $78fc: $88
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	adc  b                                           ; $7905: $88
	adc  b                                           ; $7906: $88
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	adc  b                                           ; $790a: $88
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	adc  b                                           ; $7911: $88
	adc  b                                           ; $7912: $88
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	adc  b                                           ; $7939: $88
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	adc  b                                           ; $7947: $88
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	adc  b                                           ; $795e: $88
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	adc  b                                           ; $7973: $88
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	adc  b                                           ; $7978: $88
	adc  b                                           ; $7979: $88
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88
	adc  b                                           ; $79b6: $88
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	adc  b                                           ; $79c5: $88
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  b                                           ; $79d7: $88
	adc  b                                           ; $79d8: $88
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	adc  b                                           ; $79de: $88
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	adc  b                                           ; $79e1: $88
	adc  b                                           ; $79e2: $88
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	adc  b                                           ; $79e5: $88
	adc  d                                           ; $79e6: $8a
	cp   d                                           ; $79e7: $ba
	add  [hl]                                        ; $79e8: $86
	inc  [hl]                                        ; $79e9: $34
	ld   e, c                                        ; $79ea: $59
	db   $dd                                         ; $79eb: $dd
	jp   z, Jump_0f4_6776                            ; $79ec: $ca $76 $67

	adc  b                                           ; $79ef: $88
	ld   h, h                                        ; $79f0: $64
	inc  bc                                          ; $79f1: $03
	adc  l                                           ; $79f2: $8d
	rst  $38                                         ; $79f3: $ff
	jp   nz, $1b11                                   ; $79f4: $c2 $11 $1b

	rst  $38                                         ; $79f7: $ff
	ld   a, [$4574]                                  ; $79f8: $fa $74 $45
	ld   d, a                                        ; $79fb: $57
	ld   a, d                                        ; $79fc: $7a
	rst  JumpTable                                         ; $79fd: $df
	cp   $92                                         ; $79fe: $fe $92
	ld   de, $5e12                                   ; $7a00: $11 $12 $5e
	rst  $38                                         ; $7a03: $ff
	db   $fc                                         ; $7a04: $fc
	ld   [hl], c                                     ; $7a05: $71
	ld   de, $ff2d                                   ; $7a06: $11 $2d $ff
	db   $fd                                         ; $7a09: $fd
	ld   [hl], c                                     ; $7a0a: $71
	ld   de, $af26                                   ; $7a0b: $11 $26 $af
	rst  $38                                         ; $7a0e: $ff
	ld   sp, hl                                      ; $7a0f: $f9
	ld   de, $4f11                                   ; $7a10: $11 $11 $4f
	rst  $38                                         ; $7a13: $ff
	db   $fc                                         ; $7a14: $fc
	ld   de, $9d11                                   ; $7a15: $11 $11 $9d
	rst  $38                                         ; $7a18: $ff
	rst  $38                                         ; $7a19: $ff
	and  a                                           ; $7a1a: $a7
	ld   de, $bf11                                   ; $7a1b: $11 $11 $bf
	rst  $38                                         ; $7a1e: $ff
	db   $f4                                         ; $7a1f: $f4
	ld   de, $bf11                                   ; $7a20: $11 $11 $bf
	rst  $38                                         ; $7a23: $ff
	or   $11                                         ; $7a24: $f6 $11
	ld   [de], a                                     ; $7a26: $12
	adc  a                                           ; $7a27: $8f
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	add  $11                                         ; $7a2a: $c6 $11
	rla                                              ; $7a2c: $17
	rst  $38                                         ; $7a2d: $ff
	rst  $38                                         ; $7a2e: $ff
	add  c                                           ; $7a2f: $81
	ld   de, $ff19                                   ; $7a30: $11 $19 $ff
	rst  $38                                         ; $7a33: $ff
	ld   de, $bb11                                   ; $7a34: $11 $11 $bb
	rst  $38                                         ; $7a37: $ff
	rst  JumpTable                                         ; $7a38: $df
	rst  $28                                         ; $7a39: $ef
	or   e                                           ; $7a3a: $b3
	ld   [hl-], a                                    ; $7a3b: $32
	xor  [hl]                                        ; $7a3c: $ae
	db   $ed                                         ; $7a3d: $ed
	ld   b, c                                        ; $7a3e: $41
	ld   de, $ff19                                   ; $7a3f: $11 $19 $ff
	rst  $38                                         ; $7a42: $ff
	ld   de, rAUD1LEN                                   ; $7a43: $11 $11 $ff
	rst  $38                                         ; $7a46: $ff
	sbc  l                                           ; $7a47: $9d
	xor  a                                           ; $7a48: $af
	ret  z                                           ; $7a49: $c8

	add  l                                           ; $7a4a: $85
	adc  c                                           ; $7a4b: $89
	ld   h, [hl]                                     ; $7a4c: $66
	ld   de, $bf11                                   ; $7a4d: $11 $11 $bf
	rst  $38                                         ; $7a50: $ff
	pop  af                                          ; $7a51: $f1
	ld   de, $ff1c                                   ; $7a52: $11 $1c $ff
	ei                                               ; $7a55: $fb
	xor  $ff                                         ; $7a56: $ee $ff
	and  l                                           ; $7a58: $a5
	ld   de, $9345                                   ; $7a59: $11 $45 $93
	ld   de, $ff1d                                   ; $7a5c: $11 $1d $ff
	ei                                               ; $7a5f: $fb
	ld   de, rAUD1ENV                                   ; $7a60: $11 $12 $ff
	db   $fd                                         ; $7a63: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a64: $cf
	rst  $38                                         ; $7a65: $ff
	pop  de                                          ; $7a66: $d1
	ld   de, $e17f                                   ; $7a67: $11 $7f $e1
	ld   de, $ff1f                                   ; $7a6a: $11 $1f $ff
	pop  af                                          ; $7a6d: $f1
	ld   de, $ff1c                                   ; $7a6e: $11 $1c $ff
	cp   $ff                                         ; $7a71: $fe $ff
	rst  $38                                         ; $7a73: $ff
	ld   de, $ff15                                   ; $7a74: $11 $15 $ff
	ld   de, rAUD1LEN                                   ; $7a77: $11 $11 $ff
	rst  $38                                         ; $7a7a: $ff
	ld   sp, $5f11                                   ; $7a7b: $31 $11 $5f
	rst  $38                                         ; $7a7e: $ff
	rst  $38                                         ; $7a7f: $ff
	rst  $38                                         ; $7a80: $ff
	pop  af                                          ; $7a81: $f1
	ld   de, $f37f                                   ; $7a82: $11 $7f $f3
	ld   de, $ff1a                                   ; $7a85: $11 $1a $ff
	cp   $11                                         ; $7a88: $fe $11
	ld   de, $dfef                                   ; $7a8a: $11 $ef $df
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	ld   de, rAUD1HIGH                                   ; $7a8f: $11 $14 $ff
	and  c                                           ; $7a92: $a1
	ld   de, $ff1f                                   ; $7a93: $11 $1f $ff
	pop  af                                          ; $7a96: $f1
	ld   de, $fa17                                   ; $7a97: $11 $17 $fa
	rst  JumpTable                                         ; $7a9a: $df
	rst  $38                                         ; $7a9b: $ff
	rst  $30                                         ; $7a9c: $f7
	ld   de, $ff1e                                   ; $7a9d: $11 $1e $ff
	ld   de, rAUD1LEN                                   ; $7aa0: $11 $11 $ff
	rst  $38                                         ; $7aa3: $ff
	pop  bc                                          ; $7aa4: $c1
	ld   de, $b827                                   ; $7aa5: $11 $27 $b8
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	pop  af                                          ; $7aaa: $f1
	ld   de, $f85f                                   ; $7aab: $11 $5f $f8
	ld   de, rAUD1LEN                                   ; $7aae: $11 $11 $ff
	rst  $38                                         ; $7ab1: $ff
	ld   d, c                                        ; $7ab2: $51
	ld   de, $3643                                   ; $7ab3: $11 $43 $36
	rst  $38                                         ; $7ab6: $ff
	rst  $38                                         ; $7ab7: $ff
	pop  de                                          ; $7ab8: $d1
	ld   de, $f18f                                   ; $7ab9: $11 $8f $f1
	ld   de, rAUD1LEN                                   ; $7abc: $11 $11 $ff
	rst  $38                                         ; $7abf: $ff
	add  c                                           ; $7ac0: $81
	ld   de, $2821                                   ; $7ac1: $11 $21 $28
	rst  $38                                         ; $7ac4: $ff
	rst  $38                                         ; $7ac5: $ff

Call_0f4_7ac6:
	and  c                                           ; $7ac6: $a1
	ld   de, $d19f                                   ; $7ac7: $11 $9f $d1
	ld   de, rAUD1LEN                                   ; $7aca: $11 $11 $ff
	rst  $38                                         ; $7acd: $ff
	ldh  a, [c]                                      ; $7ace: $f2
	ld   de, $1811                                   ; $7acf: $11 $11 $18
	rst  $38                                         ; $7ad2: $ff
	rst  $38                                         ; $7ad3: $ff
	db   $d3                                         ; $7ad4: $d3
	inc  d                                           ; $7ad5: $14
	xor  e                                           ; $7ad6: $ab
	add  c                                           ; $7ad7: $81
	ld   de, $1f11                                   ; $7ad8: $11 $11 $1f
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	ld   [hl], c                                     ; $7add: $71
	ld   de, $ff15                                   ; $7ade: $11 $15 $ff
	rst  $38                                         ; $7ae1: $ff
	db   $fc                                         ; $7ae2: $fc
	add  [hl]                                        ; $7ae3: $86
	ld   h, a                                        ; $7ae4: $67
	ld   d, c                                        ; $7ae5: $51
	ld   de, $1411                                   ; $7ae6: $11 $11 $14
	rst  $38                                         ; $7ae9: $ff
	rst  $38                                         ; $7aea: $ff
	ld   hl, sp+$11                                  ; $7aeb: $f8 $11
	inc  [hl]                                        ; $7aed: $34
	adc  [hl]                                        ; $7aee: $8e
	rst  $38                                         ; $7aef: $ff
	rst  $38                                         ; $7af0: $ff
	reti                                             ; $7af1: $d9


	halt                                             ; $7af2: $76
	ld   d, c                                        ; $7af3: $51
	ld   de, $1111                                   ; $7af4: $11 $11 $11
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	rst  $38                                         ; $7af9: $ff
	cp   c                                           ; $7afa: $b9
	sub  a                                           ; $7afb: $97
	ld   l, c                                        ; $7afc: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7afd: $cf
	rst  $38                                         ; $7afe: $ff
	jp   c, Jump_0f4_4187                            ; $7aff: $da $87 $41

	ld   de, $1111                                   ; $7b02: $11 $11 $11
	sbc  a                                           ; $7b05: $9f
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	db   $fc                                         ; $7b08: $fc
	xor  b                                           ; $7b09: $a8
	ld   d, l                                        ; $7b0a: $55
	cp   a                                           ; $7b0b: $bf
	rst  $38                                         ; $7b0c: $ff
	and  e                                           ; $7b0d: $a3
	ld   de, $1111                                   ; $7b0e: $11 $11 $11
	ld   de, $ff1f                                   ; $7b11: $11 $1f $ff
	rst  $38                                         ; $7b14: $ff
	rst  $38                                         ; $7b15: $ff
	ei                                               ; $7b16: $fb
	ld   de, $ff5f                                   ; $7b17: $11 $5f $ff
	ld   h, c                                        ; $7b1a: $61
	ld   de, $1111                                   ; $7b1b: $11 $11 $11
	rla                                              ; $7b1e: $17
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	rst  $38                                         ; $7b22: $ff
	ld   h, c                                        ; $7b23: $61
	ld   a, [de]                                     ; $7b24: $1a
	rst  $38                                         ; $7b25: $ff
	ldh  [c], a                                      ; $7b26: $e2
	ld   de, $1111                                   ; $7b27: $11 $11 $11
	inc  d                                           ; $7b2a: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b2b: $cf
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	rst  ToBoot                                         ; $7b2f: $c7
	ld   l, b                                        ; $7b30: $68
	db   $dd                                         ; $7b31: $dd
	ret  c                                           ; $7b32: $d8

	ld   bc, $1111                                   ; $7b33: $01 $11 $11
	dec  d                                           ; $7b36: $15
	ld   a, d                                        ; $7b37: $7a
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	rst  $38                                         ; $7b3a: $ff
	ld   a, [$baaa]                                  ; $7b3b: $fa $aa $ba
	xor  b                                           ; $7b3e: $a8
	ld   h, c                                        ; $7b3f: $61
	ld   de, $1311                                   ; $7b40: $11 $11 $13
	ld   h, [hl]                                     ; $7b43: $66
	ld   d, a                                        ; $7b44: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b45: $cf
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	db   $eb                                         ; $7b48: $eb
	call z, $99a9                                    ; $7b49: $cc $a9 $99
	ld   d, c                                        ; $7b4c: $51
	ld   de, $5612                                   ; $7b4d: $11 $12 $56
	ld   h, l                                        ; $7b50: $65
	ld   b, h                                        ; $7b51: $44
	ld   d, a                                        ; $7b52: $57
	xor  h                                           ; $7b53: $ac
	sbc  $fd                                         ; $7b54: $de $fd
	jp   z, $ab99                                    ; $7b56: $ca $99 $ab

	cp   d                                           ; $7b59: $ba
	sbc  c                                           ; $7b5a: $99
	halt                                             ; $7b5b: $76
	ld   [hl], a                                     ; $7b5c: $77
	halt                                             ; $7b5d: $76
	ld   h, l                                        ; $7b5e: $65
	ld   d, [hl]                                     ; $7b5f: $56
	ld   h, l                                        ; $7b60: $65
	ld   d, l                                        ; $7b61: $55
	ld   d, [hl]                                     ; $7b62: $56
	adc  c                                           ; $7b63: $89
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	sbc  c                                           ; $7b66: $99
	set  1, h                                        ; $7b67: $cb $cc
	res  5, d                                        ; $7b69: $cb $aa
	cp   d                                           ; $7b6b: $ba
	xor  d                                           ; $7b6c: $aa
	xor  d                                           ; $7b6d: $aa
	sbc  b                                           ; $7b6e: $98
	ld   [hl], l                                     ; $7b6f: $75
	ld   d, l                                        ; $7b70: $55
	ld   h, l                                        ; $7b71: $65
	ld   d, h                                        ; $7b72: $54
	ld   b, h                                        ; $7b73: $44
	ld   d, [hl]                                     ; $7b74: $56
	ld   h, [hl]                                     ; $7b75: $66
	ld   h, [hl]                                     ; $7b76: $66
	ld   [hl], a                                     ; $7b77: $77
	adc  c                                           ; $7b78: $89
	sbc  d                                           ; $7b79: $9a
	cp   h                                           ; $7b7a: $bc
	call $cbdc                                       ; $7b7b: $cd $dc $cb
	cp   e                                           ; $7b7e: $bb
	cp   e                                           ; $7b7f: $bb
	xor  c                                           ; $7b80: $a9
	sbc  b                                           ; $7b81: $98
	halt                                             ; $7b82: $76
	ld   h, l                                        ; $7b83: $65
	ld   d, l                                        ; $7b84: $55
	ld   b, h                                        ; $7b85: $44
	ld   b, h                                        ; $7b86: $44
	ld   b, l                                        ; $7b87: $45
	ld   d, [hl]                                     ; $7b88: $56
	ld   [hl], a                                     ; $7b89: $77
	ld   a, b                                        ; $7b8a: $78
	sbc  c                                           ; $7b8b: $99
	sbc  e                                           ; $7b8c: $9b
	cp   h                                           ; $7b8d: $bc
	cp   e                                           ; $7b8e: $bb
	cp   h                                           ; $7b8f: $bc
	cp   d                                           ; $7b90: $ba
	sbc  d                                           ; $7b91: $9a
	sbc  c                                           ; $7b92: $99
	sub  a                                           ; $7b93: $97
	halt                                             ; $7b94: $76
	ld   h, a                                        ; $7b95: $67
	ld   [hl], a                                     ; $7b96: $77
	ld   [hl], a                                     ; $7b97: $77
	ld   h, [hl]                                     ; $7b98: $66
	ld   h, [hl]                                     ; $7b99: $66
	ld   h, [hl]                                     ; $7b9a: $66
	ld   [hl], a                                     ; $7b9b: $77
	ld   [hl], a                                     ; $7b9c: $77
	ld   [hl], a                                     ; $7b9d: $77
	ld   [hl], a                                     ; $7b9e: $77
	ld   a, b                                        ; $7b9f: $78
	sbc  b                                           ; $7ba0: $98
	sbc  b                                           ; $7ba1: $98
	sbc  c                                           ; $7ba2: $99
	xor  c                                           ; $7ba3: $a9
	xor  d                                           ; $7ba4: $aa
	xor  d                                           ; $7ba5: $aa

Call_0f4_7ba6:
	sbc  c                                           ; $7ba6: $99
	xor  c                                           ; $7ba7: $a9
	adc  b                                           ; $7ba8: $88
	add  a                                           ; $7ba9: $87
	ld   [hl], a                                     ; $7baa: $77
	halt                                             ; $7bab: $76
	ld   h, [hl]                                     ; $7bac: $66
	ld   [hl], a                                     ; $7bad: $77
	ld   [hl], a                                     ; $7bae: $77
	ld   h, [hl]                                     ; $7baf: $66
	ld   h, [hl]                                     ; $7bb0: $66
	ld   [hl], a                                     ; $7bb1: $77
	adc  b                                           ; $7bb2: $88
	adc  c                                           ; $7bb3: $89
	sbc  c                                           ; $7bb4: $99
	sbc  c                                           ; $7bb5: $99
	adc  b                                           ; $7bb6: $88
	adc  c                                           ; $7bb7: $89
	sbc  c                                           ; $7bb8: $99
	sbc  c                                           ; $7bb9: $99
	sbc  b                                           ; $7bba: $98
	sbc  c                                           ; $7bbb: $99
	adc  c                                           ; $7bbc: $89
	add  a                                           ; $7bbd: $87
	ld   [hl], a                                     ; $7bbe: $77
	ld   a, b                                        ; $7bbf: $78
	adc  b                                           ; $7bc0: $88
	adc  b                                           ; $7bc1: $88
	adc  b                                           ; $7bc2: $88
	ld   [hl], a                                     ; $7bc3: $77
	ld   [hl], a                                     ; $7bc4: $77
	ld   [hl], a                                     ; $7bc5: $77
	ld   [hl], a                                     ; $7bc6: $77
	ld   [hl], a                                     ; $7bc7: $77
	adc  b                                           ; $7bc8: $88
	sbc  b                                           ; $7bc9: $98
	adc  c                                           ; $7bca: $89
	adc  b                                           ; $7bcb: $88
	adc  c                                           ; $7bcc: $89
	sbc  c                                           ; $7bcd: $99
	sbc  c                                           ; $7bce: $99
	sbc  b                                           ; $7bcf: $98
	adc  c                                           ; $7bd0: $89
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	adc  b                                           ; $7bd3: $88
	ld   [hl], a                                     ; $7bd4: $77
	ld   [hl], a                                     ; $7bd5: $77
	ld   a, b                                        ; $7bd6: $78
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	add  a                                           ; $7bda: $87
	ld   [hl], a                                     ; $7bdb: $77
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  c                                           ; $7bdf: $89
	sbc  c                                           ; $7be0: $99
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	ld   a, b                                        ; $7be3: $78
	adc  b                                           ; $7be4: $88
	sbc  c                                           ; $7be5: $99
	adc  b                                           ; $7be6: $88
	sbc  b                                           ; $7be7: $98
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	ld   [hl], a                                     ; $7bf0: $77
	ld   [hl], a                                     ; $7bf1: $77
	ld   a, b                                        ; $7bf2: $78
	adc  b                                           ; $7bf3: $88
	sbc  c                                           ; $7bf4: $99
	sbc  b                                           ; $7bf5: $98
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	adc  b                                           ; $7bf8: $88
	adc  c                                           ; $7bf9: $89
	adc  b                                           ; $7bfa: $88
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	adc  b                                           ; $7bfd: $88
	adc  b                                           ; $7bfe: $88
	adc  b                                           ; $7bff: $88
	adc  b                                           ; $7c00: $88
	adc  b                                           ; $7c01: $88
	adc  b                                           ; $7c02: $88
	adc  b                                           ; $7c03: $88
	adc  b                                           ; $7c04: $88
	adc  b                                           ; $7c05: $88
	adc  b                                           ; $7c06: $88
	adc  b                                           ; $7c07: $88
	adc  b                                           ; $7c08: $88
	adc  b                                           ; $7c09: $88
	adc  b                                           ; $7c0a: $88
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	adc  b                                           ; $7c10: $88
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	adc  b                                           ; $7c13: $88
	adc  b                                           ; $7c14: $88
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	adc  b                                           ; $7c19: $88
	adc  b                                           ; $7c1a: $88
	adc  b                                           ; $7c1b: $88
	adc  b                                           ; $7c1c: $88
	adc  b                                           ; $7c1d: $88
	adc  b                                           ; $7c1e: $88
	adc  b                                           ; $7c1f: $88
	adc  b                                           ; $7c20: $88
	adc  b                                           ; $7c21: $88
	adc  b                                           ; $7c22: $88
	adc  b                                           ; $7c23: $88
	adc  b                                           ; $7c24: $88
	adc  b                                           ; $7c25: $88
	adc  b                                           ; $7c26: $88
	adc  b                                           ; $7c27: $88
	adc  b                                           ; $7c28: $88
	adc  b                                           ; $7c29: $88
	adc  b                                           ; $7c2a: $88
	adc  b                                           ; $7c2b: $88
	adc  b                                           ; $7c2c: $88
	adc  b                                           ; $7c2d: $88
	adc  b                                           ; $7c2e: $88
	adc  b                                           ; $7c2f: $88
	adc  b                                           ; $7c30: $88
	adc  b                                           ; $7c31: $88
	adc  b                                           ; $7c32: $88
	adc  b                                           ; $7c33: $88
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	adc  b                                           ; $7c3d: $88
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	adc  b                                           ; $7c40: $88
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	adc  b                                           ; $7c49: $88
	adc  b                                           ; $7c4a: $88
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  b                                           ; $7c51: $88
	adc  b                                           ; $7c52: $88
	adc  b                                           ; $7c53: $88
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  b                                           ; $7c57: $88
	adc  b                                           ; $7c58: $88
	adc  b                                           ; $7c59: $88
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	adc  b                                           ; $7c61: $88
	adc  b                                           ; $7c62: $88
	adc  b                                           ; $7c63: $88
	adc  b                                           ; $7c64: $88
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	adc  b                                           ; $7c6a: $88
	adc  b                                           ; $7c6b: $88
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	adc  b                                           ; $7c70: $88
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	adc  b                                           ; $7c73: $88
	adc  b                                           ; $7c74: $88
	adc  b                                           ; $7c75: $88
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  b                                           ; $7c78: $88
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	adc  b                                           ; $7c80: $88
	adc  b                                           ; $7c81: $88
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  b                                           ; $7c85: $88
	adc  b                                           ; $7c86: $88
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
	adc  b                                           ; $7c8a: $88
	adc  b                                           ; $7c8b: $88
	adc  b                                           ; $7c8c: $88
	adc  b                                           ; $7c8d: $88
	adc  b                                           ; $7c8e: $88
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	adc  b                                           ; $7c91: $88
	adc  b                                           ; $7c92: $88
	adc  b                                           ; $7c93: $88
	adc  b                                           ; $7c94: $88
	adc  b                                           ; $7c95: $88
	adc  b                                           ; $7c96: $88
	adc  b                                           ; $7c97: $88
	adc  b                                           ; $7c98: $88
	adc  b                                           ; $7c99: $88
	adc  b                                           ; $7c9a: $88
	adc  b                                           ; $7c9b: $88
	adc  b                                           ; $7c9c: $88
	adc  b                                           ; $7c9d: $88
	adc  b                                           ; $7c9e: $88
	adc  b                                           ; $7c9f: $88
	adc  b                                           ; $7ca0: $88
	adc  b                                           ; $7ca1: $88
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	adc  b                                           ; $7ca5: $88
	adc  b                                           ; $7ca6: $88
	adc  b                                           ; $7ca7: $88
	adc  b                                           ; $7ca8: $88
	adc  b                                           ; $7ca9: $88
	adc  b                                           ; $7caa: $88
	adc  b                                           ; $7cab: $88
	adc  b                                           ; $7cac: $88
	adc  b                                           ; $7cad: $88
	adc  b                                           ; $7cae: $88
	adc  b                                           ; $7caf: $88
	adc  b                                           ; $7cb0: $88
	adc  b                                           ; $7cb1: $88
	adc  b                                           ; $7cb2: $88
	adc  b                                           ; $7cb3: $88
	adc  b                                           ; $7cb4: $88
	adc  b                                           ; $7cb5: $88
	adc  b                                           ; $7cb6: $88
	adc  b                                           ; $7cb7: $88
	adc  b                                           ; $7cb8: $88
	adc  b                                           ; $7cb9: $88
	adc  b                                           ; $7cba: $88
	adc  b                                           ; $7cbb: $88
	adc  b                                           ; $7cbc: $88
	adc  b                                           ; $7cbd: $88
	adc  b                                           ; $7cbe: $88
	adc  b                                           ; $7cbf: $88
	adc  b                                           ; $7cc0: $88
	add  a                                           ; $7cc1: $87
	sbc  c                                           ; $7cc2: $99
	add  a                                           ; $7cc3: $87
	ld   a, b                                        ; $7cc4: $78
	adc  b                                           ; $7cc5: $88
	adc  b                                           ; $7cc6: $88
	adc  b                                           ; $7cc7: $88
	add  a                                           ; $7cc8: $87
	ld   a, b                                        ; $7cc9: $78
	adc  b                                           ; $7cca: $88
	adc  b                                           ; $7ccb: $88
	adc  b                                           ; $7ccc: $88
	adc  b                                           ; $7ccd: $88
	adc  b                                           ; $7cce: $88
	adc  b                                           ; $7ccf: $88
	adc  b                                           ; $7cd0: $88
	adc  b                                           ; $7cd1: $88
	adc  b                                           ; $7cd2: $88
	sbc  b                                           ; $7cd3: $98
	adc  b                                           ; $7cd4: $88
	adc  b                                           ; $7cd5: $88
	adc  b                                           ; $7cd6: $88
	adc  b                                           ; $7cd7: $88
	adc  b                                           ; $7cd8: $88
	adc  b                                           ; $7cd9: $88
	adc  b                                           ; $7cda: $88
	adc  b                                           ; $7cdb: $88
	adc  c                                           ; $7cdc: $89
	xor  b                                           ; $7cdd: $a8
	ld   [hl], a                                     ; $7cde: $77
	adc  b                                           ; $7cdf: $88
	adc  b                                           ; $7ce0: $88
	adc  b                                           ; $7ce1: $88
	adc  b                                           ; $7ce2: $88
	ld   a, b                                        ; $7ce3: $78
	adc  b                                           ; $7ce4: $88
	adc  b                                           ; $7ce5: $88
	adc  b                                           ; $7ce6: $88
	adc  b                                           ; $7ce7: $88
	adc  c                                           ; $7ce8: $89
	adc  c                                           ; $7ce9: $89
	adc  b                                           ; $7cea: $88
	adc  b                                           ; $7ceb: $88
	adc  b                                           ; $7cec: $88
	ld   a, b                                        ; $7ced: $78
	adc  b                                           ; $7cee: $88
	adc  c                                           ; $7cef: $89
	adc  b                                           ; $7cf0: $88
	add  a                                           ; $7cf1: $87
	adc  b                                           ; $7cf2: $88
	adc  b                                           ; $7cf3: $88
	adc  b                                           ; $7cf4: $88
	adc  b                                           ; $7cf5: $88
	add  a                                           ; $7cf6: $87
	ld   a, b                                        ; $7cf7: $78
	adc  c                                           ; $7cf8: $89
	adc  b                                           ; $7cf9: $88
	adc  c                                           ; $7cfa: $89
	adc  b                                           ; $7cfb: $88
	adc  b                                           ; $7cfc: $88
	adc  b                                           ; $7cfd: $88
	adc  b                                           ; $7cfe: $88
	adc  b                                           ; $7cff: $88
	add  a                                           ; $7d00: $87
	adc  b                                           ; $7d01: $88
	adc  b                                           ; $7d02: $88
	adc  b                                           ; $7d03: $88
	adc  b                                           ; $7d04: $88
	adc  c                                           ; $7d05: $89
	adc  b                                           ; $7d06: $88
	adc  b                                           ; $7d07: $88
	adc  b                                           ; $7d08: $88
	sbc  c                                           ; $7d09: $99
	xor  c                                           ; $7d0a: $a9
	ld   [hl], a                                     ; $7d0b: $77
	sbc  b                                           ; $7d0c: $98
	adc  b                                           ; $7d0d: $88
	sub  a                                           ; $7d0e: $97
	ld   a, b                                        ; $7d0f: $78
	ld   a, b                                        ; $7d10: $78
	ld   a, b                                        ; $7d11: $78
	sbc  b                                           ; $7d12: $98
	add  a                                           ; $7d13: $87
	adc  b                                           ; $7d14: $88
	adc  c                                           ; $7d15: $89
	sbc  c                                           ; $7d16: $99
	add  a                                           ; $7d17: $87
	ld   [hl], a                                     ; $7d18: $77
	ld   a, h                                        ; $7d19: $7c
	or   a                                           ; $7d1a: $b7
	ld   h, a                                        ; $7d1b: $67
	adc  c                                           ; $7d1c: $89
	ld   [hl], a                                     ; $7d1d: $77
	adc  c                                           ; $7d1e: $89
	sbc  b                                           ; $7d1f: $98
	ld   [hl], a                                     ; $7d20: $77
	ld   [hl], a                                     ; $7d21: $77
	sbc  b                                           ; $7d22: $98
	sbc  b                                           ; $7d23: $98
	adc  c                                           ; $7d24: $89
	sbc  b                                           ; $7d25: $98
	adc  b                                           ; $7d26: $88
	adc  b                                           ; $7d27: $88
	adc  b                                           ; $7d28: $88
	sbc  b                                           ; $7d29: $98
	add  a                                           ; $7d2a: $87
	adc  b                                           ; $7d2b: $88
	adc  b                                           ; $7d2c: $88
	adc  b                                           ; $7d2d: $88
	adc  c                                           ; $7d2e: $89
	sbc  b                                           ; $7d2f: $98
	ld   a, b                                        ; $7d30: $78
	adc  b                                           ; $7d31: $88
	adc  b                                           ; $7d32: $88
	adc  b                                           ; $7d33: $88
	sbc  b                                           ; $7d34: $98
	sbc  b                                           ; $7d35: $98
	ld   a, b                                        ; $7d36: $78
	adc  c                                           ; $7d37: $89
	sbc  b                                           ; $7d38: $98
	adc  b                                           ; $7d39: $88
	adc  b                                           ; $7d3a: $88
	adc  c                                           ; $7d3b: $89
	adc  b                                           ; $7d3c: $88
	ld   a, b                                        ; $7d3d: $78
	sbc  b                                           ; $7d3e: $98
	ld   [hl], a                                     ; $7d3f: $77
	adc  b                                           ; $7d40: $88
	adc  b                                           ; $7d41: $88
	add  a                                           ; $7d42: $87
	adc  b                                           ; $7d43: $88
	ld   a, c                                        ; $7d44: $79
	sbc  b                                           ; $7d45: $98
	adc  b                                           ; $7d46: $88
	ld   a, b                                        ; $7d47: $78
	adc  b                                           ; $7d48: $88
	add  a                                           ; $7d49: $87
	adc  b                                           ; $7d4a: $88
	sbc  b                                           ; $7d4b: $98
	adc  b                                           ; $7d4c: $88
	ld   a, b                                        ; $7d4d: $78
	sbc  b                                           ; $7d4e: $98
	adc  b                                           ; $7d4f: $88
	adc  b                                           ; $7d50: $88
	sbc  b                                           ; $7d51: $98
	ld   a, b                                        ; $7d52: $78
	adc  c                                           ; $7d53: $89
	sub  a                                           ; $7d54: $97
	ld   a, b                                        ; $7d55: $78
	sbc  b                                           ; $7d56: $98
	sbc  b                                           ; $7d57: $98
	ld   a, b                                        ; $7d58: $78
	sbc  b                                           ; $7d59: $98
	adc  b                                           ; $7d5a: $88
	adc  b                                           ; $7d5b: $88
	ld   a, d                                        ; $7d5c: $7a
	adc  b                                           ; $7d5d: $88
	adc  b                                           ; $7d5e: $88
	adc  c                                           ; $7d5f: $89
	sub  a                                           ; $7d60: $97
	ld   a, b                                        ; $7d61: $78
	adc  b                                           ; $7d62: $88
	add  a                                           ; $7d63: $87
	ld   a, b                                        ; $7d64: $78
	ld   a, b                                        ; $7d65: $78
	add  a                                           ; $7d66: $87
	adc  c                                           ; $7d67: $89
	adc  c                                           ; $7d68: $89
	adc  c                                           ; $7d69: $89
	sub  a                                           ; $7d6a: $97
	adc  b                                           ; $7d6b: $88
	ld   l, b                                        ; $7d6c: $68
	add  [hl]                                        ; $7d6d: $86
	sbc  d                                           ; $7d6e: $9a
	xor  b                                           ; $7d6f: $a8
	ld   h, a                                        ; $7d70: $67
	adc  b                                           ; $7d71: $88
	add  a                                           ; $7d72: $87
	add  a                                           ; $7d73: $87
	adc  b                                           ; $7d74: $88
	ld   [hl], a                                     ; $7d75: $77
	ld   [hl], a                                     ; $7d76: $77
	adc  c                                           ; $7d77: $89
	sbc  b                                           ; $7d78: $98
	ld   a, b                                        ; $7d79: $78
	adc  b                                           ; $7d7a: $88
	sbc  b                                           ; $7d7b: $98
	adc  b                                           ; $7d7c: $88
	add  a                                           ; $7d7d: $87
	add  a                                           ; $7d7e: $87
	ld   a, b                                        ; $7d7f: $78
	ld   a, c                                        ; $7d80: $79
	sbc  b                                           ; $7d81: $98
	adc  b                                           ; $7d82: $88
	adc  b                                           ; $7d83: $88
	adc  b                                           ; $7d84: $88
	add  a                                           ; $7d85: $87
	ld   [hl], a                                     ; $7d86: $77
	adc  b                                           ; $7d87: $88
	adc  b                                           ; $7d88: $88
	ld   a, b                                        ; $7d89: $78
	ld   [hl], a                                     ; $7d8a: $77
	sub  a                                           ; $7d8b: $97
	adc  b                                           ; $7d8c: $88
	adc  c                                           ; $7d8d: $89
	sbc  b                                           ; $7d8e: $98
	add  a                                           ; $7d8f: $87
	ld   [hl], a                                     ; $7d90: $77
	adc  c                                           ; $7d91: $89
	adc  b                                           ; $7d92: $88
	sbc  b                                           ; $7d93: $98
	ld   a, b                                        ; $7d94: $78
	add  a                                           ; $7d95: $87
	adc  b                                           ; $7d96: $88
	sbc  b                                           ; $7d97: $98
	add  a                                           ; $7d98: $87
	ld   a, c                                        ; $7d99: $79
	adc  b                                           ; $7d9a: $88
	ld   [hl], a                                     ; $7d9b: $77
	adc  c                                           ; $7d9c: $89
	sbc  c                                           ; $7d9d: $99
	ld   [hl], a                                     ; $7d9e: $77
	adc  c                                           ; $7d9f: $89
	add  a                                           ; $7da0: $87
	add  a                                           ; $7da1: $87
	adc  b                                           ; $7da2: $88
	adc  b                                           ; $7da3: $88
	add  a                                           ; $7da4: $87
	add  a                                           ; $7da5: $87
	adc  c                                           ; $7da6: $89
	adc  b                                           ; $7da7: $88
	ld   a, b                                        ; $7da8: $78
	adc  b                                           ; $7da9: $88
	adc  b                                           ; $7daa: $88
	add  a                                           ; $7dab: $87
	ld   l, c                                        ; $7dac: $69
	xor  c                                           ; $7dad: $a9
	ld   [hl], a                                     ; $7dae: $77
	adc  b                                           ; $7daf: $88
	xor  b                                           ; $7db0: $a8
	ld   [hl], a                                     ; $7db1: $77
	ld   a, c                                        ; $7db2: $79
	adc  b                                           ; $7db3: $88
	adc  b                                           ; $7db4: $88
	ld   a, b                                        ; $7db5: $78
	sbc  c                                           ; $7db6: $99
	sub  a                                           ; $7db7: $97
	ld   a, b                                        ; $7db8: $78
	adc  b                                           ; $7db9: $88
	add  a                                           ; $7dba: $87
	ld   l, b                                        ; $7dbb: $68
	sbc  c                                           ; $7dbc: $99
	adc  c                                           ; $7dbd: $89
	ld   [hl], a                                     ; $7dbe: $77
	adc  b                                           ; $7dbf: $88
	ld   a, b                                        ; $7dc0: $78
	add  a                                           ; $7dc1: $87
	add  a                                           ; $7dc2: $87
	ld   [hl], a                                     ; $7dc3: $77
	ld   a, b                                        ; $7dc4: $78
	adc  b                                           ; $7dc5: $88
	halt                                             ; $7dc6: $76
	adc  d                                           ; $7dc7: $8a
	sbc  b                                           ; $7dc8: $98
	ld   a, b                                        ; $7dc9: $78
	ld   a, b                                        ; $7dca: $78
	adc  b                                           ; $7dcb: $88
	sub  a                                           ; $7dcc: $97
	adc  c                                           ; $7dcd: $89
	sub  a                                           ; $7dce: $97
	ld   a, b                                        ; $7dcf: $78
	adc  c                                           ; $7dd0: $89
	sub  a                                           ; $7dd1: $97
	ld   a, b                                        ; $7dd2: $78
	adc  b                                           ; $7dd3: $88
	add  a                                           ; $7dd4: $87
	ld   [hl], a                                     ; $7dd5: $77

Jump_0f4_7dd6:
	ld   a, b                                        ; $7dd6: $78
	sbc  b                                           ; $7dd7: $98
	add  a                                           ; $7dd8: $87
	ld   [hl], a                                     ; $7dd9: $77
	adc  b                                           ; $7dda: $88
	sbc  b                                           ; $7ddb: $98
	ld   [hl], a                                     ; $7ddc: $77
	ld   [hl], a                                     ; $7ddd: $77
	adc  b                                           ; $7dde: $88
	adc  b                                           ; $7ddf: $88
	adc  b                                           ; $7de0: $88
	adc  b                                           ; $7de1: $88
	adc  b                                           ; $7de2: $88
	adc  c                                           ; $7de3: $89
	sbc  b                                           ; $7de4: $98
	adc  c                                           ; $7de5: $89
	adc  b                                           ; $7de6: $88
	adc  b                                           ; $7de7: $88
	adc  b                                           ; $7de8: $88
	adc  b                                           ; $7de9: $88
	adc  b                                           ; $7dea: $88
	ld   a, b                                        ; $7deb: $78
	adc  b                                           ; $7dec: $88
	sbc  c                                           ; $7ded: $99
	adc  b                                           ; $7dee: $88
	adc  b                                           ; $7def: $88
	adc  c                                           ; $7df0: $89
	adc  c                                           ; $7df1: $89
	adc  b                                           ; $7df2: $88
	adc  c                                           ; $7df3: $89
	sbc  c                                           ; $7df4: $99
	adc  b                                           ; $7df5: $88
	adc  b                                           ; $7df6: $88
	adc  c                                           ; $7df7: $89
	sbc  c                                           ; $7df8: $99
	sbc  b                                           ; $7df9: $98
	adc  b                                           ; $7dfa: $88
	adc  c                                           ; $7dfb: $89
	sbc  c                                           ; $7dfc: $99
	sbc  b                                           ; $7dfd: $98
	adc  b                                           ; $7dfe: $88
	adc  b                                           ; $7dff: $88
	adc  c                                           ; $7e00: $89
	adc  b                                           ; $7e01: $88
	adc  b                                           ; $7e02: $88
	adc  b                                           ; $7e03: $88
	adc  b                                           ; $7e04: $88
	adc  b                                           ; $7e05: $88
	adc  b                                           ; $7e06: $88
	adc  b                                           ; $7e07: $88
	adc  b                                           ; $7e08: $88
	adc  b                                           ; $7e09: $88
	adc  b                                           ; $7e0a: $88
	adc  b                                           ; $7e0b: $88
	adc  b                                           ; $7e0c: $88
	adc  b                                           ; $7e0d: $88
	adc  b                                           ; $7e0e: $88
	adc  b                                           ; $7e0f: $88
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	adc  b                                           ; $7e12: $88
	adc  b                                           ; $7e13: $88
	adc  b                                           ; $7e14: $88
	adc  b                                           ; $7e15: $88
	adc  b                                           ; $7e16: $88
	adc  b                                           ; $7e17: $88
	adc  b                                           ; $7e18: $88
	adc  b                                           ; $7e19: $88
	adc  b                                           ; $7e1a: $88
	adc  b                                           ; $7e1b: $88
	adc  b                                           ; $7e1c: $88
	adc  b                                           ; $7e1d: $88
	adc  b                                           ; $7e1e: $88
	adc  b                                           ; $7e1f: $88
	adc  b                                           ; $7e20: $88
	adc  b                                           ; $7e21: $88
	adc  b                                           ; $7e22: $88
	adc  b                                           ; $7e23: $88
	adc  b                                           ; $7e24: $88
	adc  b                                           ; $7e25: $88
	adc  b                                           ; $7e26: $88
	adc  b                                           ; $7e27: $88
	adc  b                                           ; $7e28: $88
	adc  b                                           ; $7e29: $88
	adc  b                                           ; $7e2a: $88
	adc  b                                           ; $7e2b: $88
	adc  b                                           ; $7e2c: $88
	adc  b                                           ; $7e2d: $88
	adc  b                                           ; $7e2e: $88
	adc  b                                           ; $7e2f: $88
	adc  b                                           ; $7e30: $88
	adc  b                                           ; $7e31: $88
	adc  b                                           ; $7e32: $88
	adc  b                                           ; $7e33: $88
	adc  b                                           ; $7e34: $88
	adc  b                                           ; $7e35: $88
	adc  b                                           ; $7e36: $88
	adc  b                                           ; $7e37: $88
	adc  b                                           ; $7e38: $88
	adc  b                                           ; $7e39: $88
	adc  b                                           ; $7e3a: $88
	adc  b                                           ; $7e3b: $88
	adc  b                                           ; $7e3c: $88
	adc  b                                           ; $7e3d: $88
	adc  b                                           ; $7e3e: $88
	adc  b                                           ; $7e3f: $88
	adc  b                                           ; $7e40: $88
	adc  b                                           ; $7e41: $88
	adc  b                                           ; $7e42: $88
	adc  b                                           ; $7e43: $88
	adc  b                                           ; $7e44: $88
	adc  b                                           ; $7e45: $88
	adc  b                                           ; $7e46: $88
	adc  b                                           ; $7e47: $88
	adc  b                                           ; $7e48: $88
	adc  b                                           ; $7e49: $88
	adc  b                                           ; $7e4a: $88
	adc  b                                           ; $7e4b: $88
	adc  b                                           ; $7e4c: $88
	adc  b                                           ; $7e4d: $88
	adc  b                                           ; $7e4e: $88
	adc  b                                           ; $7e4f: $88
	adc  b                                           ; $7e50: $88
	adc  b                                           ; $7e51: $88
	adc  b                                           ; $7e52: $88
	adc  b                                           ; $7e53: $88
	adc  b                                           ; $7e54: $88
	adc  b                                           ; $7e55: $88
	adc  b                                           ; $7e56: $88
	adc  b                                           ; $7e57: $88
	adc  b                                           ; $7e58: $88
	adc  b                                           ; $7e59: $88
	adc  b                                           ; $7e5a: $88
	adc  b                                           ; $7e5b: $88
	adc  b                                           ; $7e5c: $88
	adc  b                                           ; $7e5d: $88
	adc  b                                           ; $7e5e: $88
	adc  b                                           ; $7e5f: $88
	adc  b                                           ; $7e60: $88
	adc  b                                           ; $7e61: $88
	adc  b                                           ; $7e62: $88
	adc  b                                           ; $7e63: $88
	adc  b                                           ; $7e64: $88
	adc  b                                           ; $7e65: $88
	adc  b                                           ; $7e66: $88
	adc  b                                           ; $7e67: $88
	adc  b                                           ; $7e68: $88
	adc  b                                           ; $7e69: $88
	adc  b                                           ; $7e6a: $88
	adc  b                                           ; $7e6b: $88
	adc  b                                           ; $7e6c: $88
	adc  b                                           ; $7e6d: $88
	adc  b                                           ; $7e6e: $88
	adc  b                                           ; $7e6f: $88
	adc  b                                           ; $7e70: $88
	adc  b                                           ; $7e71: $88
	adc  b                                           ; $7e72: $88
	adc  b                                           ; $7e73: $88
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	adc  b                                           ; $7e76: $88
	adc  b                                           ; $7e77: $88
	adc  b                                           ; $7e78: $88
	adc  b                                           ; $7e79: $88
	adc  b                                           ; $7e7a: $88
	adc  b                                           ; $7e7b: $88
	adc  b                                           ; $7e7c: $88
	adc  b                                           ; $7e7d: $88
	adc  b                                           ; $7e7e: $88
	adc  b                                           ; $7e7f: $88
	adc  b                                           ; $7e80: $88
	adc  b                                           ; $7e81: $88
	adc  b                                           ; $7e82: $88
	adc  b                                           ; $7e83: $88
	adc  b                                           ; $7e84: $88
	adc  b                                           ; $7e85: $88
	adc  b                                           ; $7e86: $88
	adc  b                                           ; $7e87: $88
	adc  b                                           ; $7e88: $88
	adc  b                                           ; $7e89: $88
	adc  b                                           ; $7e8a: $88
	adc  b                                           ; $7e8b: $88
	adc  b                                           ; $7e8c: $88
	adc  b                                           ; $7e8d: $88
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	adc  b                                           ; $7e90: $88
	adc  b                                           ; $7e91: $88
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  b                                           ; $7e94: $88
	adc  b                                           ; $7e95: $88
	adc  b                                           ; $7e96: $88
	adc  b                                           ; $7e97: $88
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	adc  b                                           ; $7e9a: $88
	adc  b                                           ; $7e9b: $88
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  b                                           ; $7ea2: $88
	adc  b                                           ; $7ea3: $88
	adc  b                                           ; $7ea4: $88
	adc  b                                           ; $7ea5: $88
	adc  b                                           ; $7ea6: $88
	adc  b                                           ; $7ea7: $88
	adc  b                                           ; $7ea8: $88
	adc  b                                           ; $7ea9: $88
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  b                                           ; $7ead: $88
	adc  b                                           ; $7eae: $88
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	adc  b                                           ; $7eb3: $88
	adc  b                                           ; $7eb4: $88
	adc  b                                           ; $7eb5: $88
	adc  b                                           ; $7eb6: $88
	adc  b                                           ; $7eb7: $88
	adc  b                                           ; $7eb8: $88
	adc  b                                           ; $7eb9: $88
	adc  b                                           ; $7eba: $88
	adc  b                                           ; $7ebb: $88
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	adc  b                                           ; $7ebe: $88
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	adc  b                                           ; $7ec4: $88
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	adc  b                                           ; $7eca: $88
	adc  b                                           ; $7ecb: $88
	adc  b                                           ; $7ecc: $88
	adc  b                                           ; $7ecd: $88
	adc  b                                           ; $7ece: $88
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	adc  b                                           ; $7ed1: $88
	adc  b                                           ; $7ed2: $88
	adc  b                                           ; $7ed3: $88
	adc  b                                           ; $7ed4: $88
	adc  b                                           ; $7ed5: $88
	adc  b                                           ; $7ed6: $88
	adc  b                                           ; $7ed7: $88
	adc  b                                           ; $7ed8: $88
	adc  b                                           ; $7ed9: $88
	adc  b                                           ; $7eda: $88
	adc  b                                           ; $7edb: $88
	adc  b                                           ; $7edc: $88
	adc  b                                           ; $7edd: $88
	adc  b                                           ; $7ede: $88
	adc  b                                           ; $7edf: $88
	adc  b                                           ; $7ee0: $88
	adc  b                                           ; $7ee1: $88
	adc  b                                           ; $7ee2: $88
	adc  b                                           ; $7ee3: $88
	adc  b                                           ; $7ee4: $88
	adc  b                                           ; $7ee5: $88
	adc  b                                           ; $7ee6: $88
	adc  b                                           ; $7ee7: $88
	adc  b                                           ; $7ee8: $88
	adc  b                                           ; $7ee9: $88
	adc  b                                           ; $7eea: $88
	adc  b                                           ; $7eeb: $88
	adc  b                                           ; $7eec: $88
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	adc  b                                           ; $7eef: $88
	adc  b                                           ; $7ef0: $88
	adc  b                                           ; $7ef1: $88
	adc  b                                           ; $7ef2: $88
	adc  b                                           ; $7ef3: $88
	adc  b                                           ; $7ef4: $88
	adc  b                                           ; $7ef5: $88
	adc  b                                           ; $7ef6: $88
	adc  b                                           ; $7ef7: $88
	adc  b                                           ; $7ef8: $88
	adc  b                                           ; $7ef9: $88
	adc  b                                           ; $7efa: $88
	adc  b                                           ; $7efb: $88
	adc  b                                           ; $7efc: $88
	adc  b                                           ; $7efd: $88
	adc  b                                           ; $7efe: $88
	adc  b                                           ; $7eff: $88
	adc  b                                           ; $7f00: $88
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	adc  b                                           ; $7f03: $88
	adc  b                                           ; $7f04: $88
	adc  b                                           ; $7f05: $88
	adc  b                                           ; $7f06: $88
	adc  b                                           ; $7f07: $88
	adc  b                                           ; $7f08: $88
	xor  l                                           ; $7f09: $ad
	and  a                                           ; $7f0a: $a7
	ld   h, a                                        ; $7f0b: $67
	sbc  b                                           ; $7f0c: $98
	ld   h, l                                        ; $7f0d: $65
	ld   a, c                                        ; $7f0e: $79
	sub  a                                           ; $7f0f: $97
	ld   l, b                                        ; $7f10: $68
	adc  b                                           ; $7f11: $88
	ld   a, b                                        ; $7f12: $78
	xor  d                                           ; $7f13: $aa
	xor  c                                           ; $7f14: $a9
	ld   h, [hl]                                     ; $7f15: $66
	sbc  d                                           ; $7f16: $9a
	add  l                                           ; $7f17: $85
	ld   a, d                                        ; $7f18: $7a
	sub  a                                           ; $7f19: $97
	ld   l, b                                        ; $7f1a: $68
	sbc  c                                           ; $7f1b: $99
	ld   [hl], a                                     ; $7f1c: $77
	sbc  e                                           ; $7f1d: $9b
	rst  ToBoot                                         ; $7f1e: $c7
	ld   c, b                                        ; $7f1f: $48
	db   $ec                                         ; $7f20: $ec
	ld   b, e                                        ; $7f21: $43
	sbc  l                                           ; $7f22: $9d
	sub  e                                           ; $7f23: $93
	ld   c, c                                        ; $7f24: $49
	or   a                                           ; $7f25: $b7
	ld   b, [hl]                                     ; $7f26: $46
	adc  d                                           ; $7f27: $8a
	ld   [hl], l                                     ; $7f28: $75
	ld   l, d                                        ; $7f29: $6a
	and  [hl]                                        ; $7f2a: $a6
	ld   l, b                                        ; $7f2b: $68
	sbc  b                                           ; $7f2c: $98
	ld   [hl], a                                     ; $7f2d: $77
	adc  c                                           ; $7f2e: $89
	and  a                                           ; $7f2f: $a7
	ld   d, l                                        ; $7f30: $55
	sbc  e                                           ; $7f31: $9b
	add  l                                           ; $7f32: $85
	ld   l, c                                        ; $7f33: $69
	sub  [hl]                                        ; $7f34: $96
	ld   d, [hl]                                     ; $7f35: $56
	ld   a, c                                        ; $7f36: $79
	adc  b                                           ; $7f37: $88
	ld   [hl], a                                     ; $7f38: $77
	adc  c                                           ; $7f39: $89
	adc  b                                           ; $7f3a: $88
	add  a                                           ; $7f3b: $87
	adc  b                                           ; $7f3c: $88
	add  a                                           ; $7f3d: $87
	adc  c                                           ; $7f3e: $89
	sub  a                                           ; $7f3f: $97
	ld   a, b                                        ; $7f40: $78
	add  a                                           ; $7f41: $87
	ld   a, b                                        ; $7f42: $78
	sbc  b                                           ; $7f43: $98
	ld   [hl], a                                     ; $7f44: $77
	adc  c                                           ; $7f45: $89
	ld   [hl], a                                     ; $7f46: $77
	ld   a, b                                        ; $7f47: $78
	sbc  b                                           ; $7f48: $98
	ld   a, b                                        ; $7f49: $78
	adc  b                                           ; $7f4a: $88
	adc  b                                           ; $7f4b: $88
	adc  b                                           ; $7f4c: $88
	adc  b                                           ; $7f4d: $88
	adc  b                                           ; $7f4e: $88
	adc  b                                           ; $7f4f: $88
	sbc  c                                           ; $7f50: $99
	sbc  c                                           ; $7f51: $99
	sbc  c                                           ; $7f52: $99
	adc  b                                           ; $7f53: $88
	ld   a, c                                        ; $7f54: $79
	add  a                                           ; $7f55: $87
	ld   h, a                                        ; $7f56: $67
	halt                                             ; $7f57: $76
	ld   h, a                                        ; $7f58: $67
	ld   [hl], a                                     ; $7f59: $77
	ld   [hl], a                                     ; $7f5a: $77
	adc  b                                           ; $7f5b: $88
	adc  c                                           ; $7f5c: $89
	sbc  d                                           ; $7f5d: $9a
	xor  d                                           ; $7f5e: $aa
	xor  d                                           ; $7f5f: $aa
	sbc  d                                           ; $7f60: $9a
	sbc  c                                           ; $7f61: $99
	sbc  b                                           ; $7f62: $98
	halt                                             ; $7f63: $76
	ld   d, h                                        ; $7f64: $54
	ld   b, e                                        ; $7f65: $43
	ld   [hl+], a                                    ; $7f66: $22
	inc  sp                                          ; $7f67: $33
	dec  [hl]                                        ; $7f68: $35
	ld   [hl], a                                     ; $7f69: $77
	sbc  h                                           ; $7f6a: $9c
	db   $dd                                         ; $7f6b: $dd
	rst  $28                                         ; $7f6c: $ef
	rst  $28                                         ; $7f6d: $ef
	xor  $cc                                         ; $7f6e: $ee $cc
	cp   d                                           ; $7f70: $ba
	add  a                                           ; $7f71: $87
	ld   d, e                                        ; $7f72: $53
	ld   de, $1111                                   ; $7f73: $11 $11 $11
	inc  d                                           ; $7f76: $14
	ld   h, a                                        ; $7f77: $67
	xor  h                                           ; $7f78: $ac
	rst  $28                                         ; $7f79: $ef
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	db   $fd                                         ; $7f7c: $fd
	db   $db                                         ; $7f7d: $db
	xor  b                                           ; $7f7e: $a8
	add  a                                           ; $7f7f: $87
	ld   h, [hl]                                     ; $7f80: $66
	halt                                             ; $7f81: $76
	ld   h, h                                        ; $7f82: $64
	ld   de, $2211                                   ; $7f83: $11 $11 $22
	dec  [hl]                                        ; $7f86: $35
	ld   a, e                                        ; $7f87: $7b
	call c, $ffdf                                    ; $7f88: $dc $df $ff
	rst  $38                                         ; $7f8b: $ff
	db   $dd                                         ; $7f8c: $dd
	ret  z                                           ; $7f8d: $c8

	adc  c                                           ; $7f8e: $89
	ld   h, [hl]                                     ; $7f8f: $66
	add  [hl]                                        ; $7f90: $86
	ld   d, [hl]                                     ; $7f91: $56
	ld   b, c                                        ; $7f92: $41
	ld   de, $1311                                   ; $7f93: $11 $11 $13
	ld   l, c                                        ; $7f96: $69
	sbc  $ff                                         ; $7f97: $de $ff
	rst  $38                                         ; $7f99: $ff
	rst  $38                                         ; $7f9a: $ff
	db   $fc                                         ; $7f9b: $fc
	cp   c                                           ; $7f9c: $b9
	ld   [hl], a                                     ; $7f9d: $77
	add  [hl]                                        ; $7f9e: $86
	ld   l, c                                        ; $7f9f: $69
	adc  b                                           ; $7fa0: $88
	add  l                                           ; $7fa1: $85
	ld   de, $1111                                   ; $7fa2: $11 $11 $11
	dec  h                                           ; $7fa5: $25
	adc  e                                           ; $7fa6: $8b
	rst  $38                                         ; $7fa7: $ff
	rst  $38                                         ; $7fa8: $ff
	rst  $38                                         ; $7fa9: $ff
	rst  $38                                         ; $7faa: $ff
	jp   z, Jump_0f4_6896                            ; $7fab: $ca $96 $68

	ld   h, a                                        ; $7fae: $67
	sbc  c                                           ; $7faf: $99
	sbc  e                                           ; $7fb0: $9b
	ld   [hl], h                                     ; $7fb1: $74
	ld   de, $1111                                   ; $7fb2: $11 $11 $11
	ld   h, a                                        ; $7fb5: $67
	xor  a                                           ; $7fb6: $af
	rst  $38                                         ; $7fb7: $ff
	rst  $38                                         ; $7fb8: $ff
	xor  $ea                                         ; $7fb9: $ee $ea
	add  a                                           ; $7fbb: $87
	ld   b, l                                        ; $7fbc: $45
	adc  b                                           ; $7fbd: $88
	adc  d                                           ; $7fbe: $8a
	cp   h                                           ; $7fbf: $bc
	db   $ec                                         ; $7fc0: $ec
	and  a                                           ; $7fc1: $a7
	ld   de, $1111                                   ; $7fc2: $11 $11 $11
	ld   l, b                                        ; $7fc5: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc6: $cf
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	db   $db                                         ; $7fc9: $db
	and  a                                           ; $7fca: $a7
	ld   [hl], l                                     ; $7fcb: $75
	inc  h                                           ; $7fcc: $24
	ld   a, c                                        ; $7fcd: $79
	cp   h                                           ; $7fce: $bc
	sbc  $fe                                         ; $7fcf: $de $fe
	jp   c, $1151                                    ; $7fd1: $da $51 $11

	ld   de, $ef18                                   ; $7fd4: $11 $18 $ef
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	ld   hl, sp+$63                                  ; $7fd9: $f8 $63
	inc  de                                          ; $7fdb: $13
	ld   b, c                                        ; $7fdc: $41
	ld   a, e                                        ; $7fdd: $7b
	rst  JumpTable                                         ; $7fde: $df
	rst  $38                                         ; $7fdf: $ff
	rst  $38                                         ; $7fe0: $ff
	call $11d6                                       ; $7fe1: $cd $d6 $11
	ld   de, $1f11                                   ; $7fe4: $11 $11 $1f
	rst  $38                                         ; $7fe7: $ff
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	and  c                                           ; $7fea: $a1
	ld   de, $8911                                   ; $7feb: $11 $11 $89
	rst  JumpTable                                         ; $7fee: $df
	rst  $38                                         ; $7fef: $ff
	rst  $38                                         ; $7ff0: $ff
	cp   l                                           ; $7ff1: $bd
	cp   c                                           ; $7ff2: $b9
	ret                                              ; $7ff3: $c9


	ld   de, $1111                                   ; $7ff4: $11 $11 $11
	rra                                              ; $7ff7: $1f
	rst  $38                                         ; $7ff8: $ff
	rst  $38                                         ; $7ff9: $ff
	db   $fd                                         ; $7ffa: $fd
	ld   [hl], c                                     ; $7ffb: $71
	ld   de, $af11                                   ; $7ffc: $11 $11 $af
	rst  $38                                         ; $7fff: $ff
