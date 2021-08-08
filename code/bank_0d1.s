; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d1", ROMX[$4000], BANK[$d1]

	ld   de, $ff1f                                   ; $4000: $11 $1f $ff
	rst  $38                                         ; $4003: $ff
	pop  hl                                          ; $4004: $e1
	ld   de, $ff1f                                   ; $4005: $11 $1f $ff
	pop  af                                          ; $4008: $f1
	ld   de, rAUD1LEN                                   ; $4009: $11 $11 $ff
	rst  $38                                         ; $400c: $ff
	ld   de, $7f11                                   ; $400d: $11 $11 $7f
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	ld   de, rAUD1LEN                                   ; $4012: $11 $11 $ff
	rst  $38                                         ; $4015: $ff
	ld   sp, $1111                                   ; $4016: $31 $11 $11
	rst  $38                                         ; $4019: $ff
	rst  $38                                         ; $401a: $ff
	ld   de, rAUD1LEN                                   ; $401b: $11 $11 $ff
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	ld   de, rAUD1LEN                                   ; $4020: $11 $11 $ff
	rst  $38                                         ; $4023: $ff
	ld   de, $1411                                   ; $4024: $11 $11 $14
	rst  $38                                         ; $4027: $ff
	rst  $38                                         ; $4028: $ff
	ld   de, rAUD1LEN                                   ; $4029: $11 $11 $ff
	rst  $38                                         ; $402c: $ff
	db   $fd                                         ; $402d: $fd
	ld   de, rAUD1LEN                                   ; $402e: $11 $11 $ff
	rst  $38                                         ; $4031: $ff
	ld   de, $1a11                                   ; $4032: $11 $11 $1a
	rst  $38                                         ; $4035: $ff
	rst  $38                                         ; $4036: $ff
	ld   de, rAUD1LEN                                   ; $4037: $11 $11 $ff
	rst  $38                                         ; $403a: $ff
	cp   $11                                         ; $403b: $fe $11
	ld   de, $ffff                                   ; $403d: $11 $ff $ff
	ld   de, $1611                                   ; $4040: $11 $11 $16
	rst  $38                                         ; $4043: $ff
	rst  $38                                         ; $4044: $ff
	ld   de, rAUD1LEN                                   ; $4045: $11 $11 $ff
	rst  $38                                         ; $4048: $ff
	rst  $38                                         ; $4049: $ff
	ld   de, rAUD1LEN                                   ; $404a: $11 $11 $ff
	rst  $38                                         ; $404d: $ff
	ld   de, $1111                                   ; $404e: $11 $11 $11
	rst  $38                                         ; $4051: $ff
	rst  $38                                         ; $4052: $ff
	ld   de, $cf11                                   ; $4053: $11 $11 $cf
	rst  $38                                         ; $4056: $ff
	rst  $38                                         ; $4057: $ff
	ld   b, c                                        ; $4058: $41
	ld   de, $ffff                                   ; $4059: $11 $ff $ff
	ld   d, c                                        ; $405c: $51
	ld   de, rAUD1LEN                                   ; $405d: $11 $11 $ff
	rst  $38                                         ; $4060: $ff
	ld   de, $4f11                                   ; $4061: $11 $11 $4f
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	pop  hl                                          ; $4066: $e1
	ld   de, $ff9f                                   ; $4067: $11 $9f $ff
	pop  af                                          ; $406a: $f1
	ld   de, rAUD1LEN                                   ; $406b: $11 $11 $ff
	rst  $38                                         ; $406e: $ff
	add  c                                           ; $406f: $81
	ld   de, $ff17                                   ; $4070: $11 $17 $ff
	rst  $38                                         ; $4073: $ff
	pop  af                                          ; $4074: $f1
	ld   de, $ff1f                                   ; $4075: $11 $1f $ff
	push af                                          ; $4078: $f5
	ld   de, $1f11                                   ; $4079: $11 $11 $1f
	rst  $38                                         ; $407c: $ff
	pop  af                                          ; $407d: $f1
	ld   de, rAUD1LEN                                   ; $407e: $11 $11 $ff
	rst  $38                                         ; $4081: $ff
	cp   $11                                         ; $4082: $fe $11
	add  hl, de                                      ; $4084: $19
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	ld   de, $1f11                                   ; $4087: $11 $11 $1f
	rst  $38                                         ; $408a: $ff
	push af                                          ; $408b: $f5
	ld   de, $4f11                                   ; $408c: $11 $11 $4f
	rst  $38                                         ; $408f: $ff
	rst  $38                                         ; $4090: $ff
	ld   b, c                                        ; $4091: $41
	ld   de, $ffef                                   ; $4092: $11 $ef $ff
	pop  bc                                          ; $4095: $c1
	ld   de, rAUD1LEN                                   ; $4096: $11 $11 $ff
	rst  $38                                         ; $4099: $ff
	ld   de, $1611                                   ; $409a: $11 $11 $16
	rst  $38                                         ; $409d: $ff
	rst  $38                                         ; $409e: $ff
	pop  af                                          ; $409f: $f1
	ld   de, $ff1e                                   ; $40a0: $11 $1e $ff
	push af                                          ; $40a3: $f5
	ld   de, $1f11                                   ; $40a4: $11 $11 $1f
	rst  $38                                         ; $40a7: $ff
	pop  af                                          ; $40a8: $f1
	ld   de, $9f11                                   ; $40a9: $11 $11 $9f
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	ld   de, rAUD1LEN                                   ; $40ae: $11 $11 $ff
	rst  $38                                         ; $40b1: $ff
	ld   de, $1f11                                   ; $40b2: $11 $11 $1f
	rst  $38                                         ; $40b5: $ff
	ld   sp, hl                                      ; $40b6: $f9
	ld   de, $1911                                   ; $40b7: $11 $11 $19
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	pop  af                                          ; $40bc: $f1
	ld   de, $ff1f                                   ; $40bd: $11 $1f $ff
	pop  af                                          ; $40c0: $f1
	ld   de, rAUD1LEN                                   ; $40c1: $11 $11 $ff
	rst  $38                                         ; $40c4: $ff
	ld   d, c                                        ; $40c5: $51
	ld   d, c                                        ; $40c6: $51
	ld   de, $ff6f                                   ; $40c7: $11 $6f $ff
	rst  $38                                         ; $40ca: $ff
	ld   hl, $df11                                   ; $40cb: $21 $11 $df
	rst  $38                                         ; $40ce: $ff
	ld   de, $1f11                                   ; $40cf: $11 $11 $1f
	rst  $38                                         ; $40d2: $ff
	db   $f4                                         ; $40d3: $f4
	ld   l, b                                        ; $40d4: $68
	ld   de, $ff15                                   ; $40d5: $11 $15 $ff
	rst  $38                                         ; $40d8: $ff
	ld   hl, sp+$11                                  ; $40d9: $f8 $11
	inc  e                                           ; $40db: $1c
	rst  $38                                         ; $40dc: $ff
	pop  af                                          ; $40dd: $f1
	ld   de, rAUD1LEN                                   ; $40de: $11 $11 $ff
	rst  $38                                         ; $40e1: $ff
	adc  e                                           ; $40e2: $8b
	pop  de                                          ; $40e3: $d1
	ld   de, $ff3e                                   ; $40e4: $11 $3e $ff
	rst  $38                                         ; $40e7: $ff
	pop  de                                          ; $40e8: $d1
	ld   de, $ff6f                                   ; $40e9: $11 $6f $ff
	ld   de, $1f11                                   ; $40ec: $11 $11 $1f
	rst  $38                                         ; $40ef: $ff
	rst  $30                                         ; $40f0: $f7
	cp   $11                                         ; $40f1: $fe $11
	ld   de, $ffef                                   ; $40f3: $11 $ef $ff
	rst  $38                                         ; $40f6: $ff
	ld   de, rAUD1HIGH                                   ; $40f7: $11 $14 $ff
	pop  hl                                          ; $40fa: $e1
	ld   de, rAUD1LEN                                   ; $40fb: $11 $11 $ff
	rst  $38                                         ; $40fe: $ff
	rst  JumpTable                                         ; $40ff: $df
	di                                               ; $4100: $f3
	ld   de, $ff19                                   ; $4101: $11 $19 $ff
	rst  $38                                         ; $4104: $ff
	db   $fc                                         ; $4105: $fc
	ld   de, $ff1e                                   ; $4106: $11 $1e $ff
	ld   de, $1d11                                   ; $4109: $11 $11 $1d
	rst  $38                                         ; $410c: $ff
	rst  $38                                         ; $410d: $ff
	rst  $38                                         ; $410e: $ff
	ld   h, c                                        ; $410f: $61
	ld   de, $ff5f                                   ; $4110: $11 $5f $ff
	rst  $38                                         ; $4113: $ff
	pop  af                                          ; $4114: $f1
	ld   de, $f19f                                   ; $4115: $11 $9f $f1
	ld   de, $1f11                                   ; $4118: $11 $11 $1f
	rst  $38                                         ; $411b: $ff
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	ld   de, $d911                                   ; $411e: $11 $11 $d9
	rst  $28                                         ; $4121: $ef
	rst  $38                                         ; $4122: $ff
	call nc, $df24                                   ; $4123: $d4 $24 $df
	ld   sp, $1111                                   ; $4126: $31 $11 $11
	rst  $38                                         ; $4129: $ff
	rst  $38                                         ; $412a: $ff
	rst  $28                                         ; $412b: $ef
	rst  $30                                         ; $412c: $f7
	ld   de, $7514                                   ; $412d: $11 $14 $75
	rst  $38                                         ; $4130: $ff
	rst  $38                                         ; $4131: $ff
	sub  a                                           ; $4132: $97
	ld   a, [hl-]                                    ; $4133: $3a
	ei                                               ; $4134: $fb
	ld   de, $1111                                   ; $4135: $11 $11 $11
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	rst  $30                                         ; $413b: $f7
	ld   de, $1515                                   ; $413c: $11 $15 $15
	cp   a                                           ; $413f: $bf
	rst  $38                                         ; $4140: $ff
	ld   sp, hl                                      ; $4141: $f9
	adc  a                                           ; $4142: $8f
	push af                                          ; $4143: $f5
	ld   de, $1211                                   ; $4144: $11 $11 $12
	rst  $38                                         ; $4147: $ff
	rst  $38                                         ; $4148: $ff
	rst  $38                                         ; $4149: $ff
	db   $fc                                         ; $414a: $fc
	ld   sp, $1642                                   ; $414b: $31 $42 $16
	ld   a, $fe                                      ; $414e: $3e $fe
	ld   a, [$c1cf]                                  ; $4150: $fa $cf $c1
	ld   de, $1811                                   ; $4153: $11 $11 $18
	cp   a                                           ; $4156: $bf
	xor  a                                           ; $4157: $af
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	adc  h                                           ; $415a: $8c
	or   c                                           ; $415b: $b1
	ld   [hl], d                                     ; $415c: $72
	ld   a, b                                        ; $415d: $78
	jr   c, jr_0d1_41d7                              ; $415e: $38 $77

	add  l                                           ; $4160: $85
	ld   de, $1411                                   ; $4161: $11 $11 $14
	add  hl, sp                                      ; $4164: $39
	jr   @+$01                                       ; $4165: $18 $ff

	rst  $38                                         ; $4167: $ff
	rst  $38                                         ; $4168: $ff
	ei                                               ; $4169: $fb
	res  3, [hl]                                     ; $416a: $cb $9e
	and  a                                           ; $416c: $a7
	ld   h, h                                        ; $416d: $64
	ld   hl, $1111                                   ; $416e: $21 $11 $11
	jr   z, jr_0d1_41cb                              ; $4171: $28 $58

	ld   h, l                                        ; $4173: $65
	rst  $28                                         ; $4174: $ef
	rst  $38                                         ; $4175: $ff
	rst  $38                                         ; $4176: $ff
	db   $fc                                         ; $4177: $fc
	cp   d                                           ; $4178: $ba
	sbc  e                                           ; $4179: $9b
	ret                                              ; $417a: $c9


	add  l                                           ; $417b: $85
	ld   b, e                                        ; $417c: $43
	ld   de, $8947                                   ; $417d: $11 $47 $89
	cp   d                                           ; $4180: $ba
	add  [hl]                                        ; $4181: $86
	ld   d, [hl]                                     ; $4182: $56
	adc  b                                           ; $4183: $88
	ld   [hl], h                                     ; $4184: $74
	ld   b, h                                        ; $4185: $44
	ld   d, [hl]                                     ; $4186: $56
	ld   d, a                                        ; $4187: $57
	adc  d                                           ; $4188: $8a
	cp   h                                           ; $4189: $bc
	call c, $abcb                                    ; $418a: $dc $cb $ab
	xor  d                                           ; $418d: $aa
	cp   h                                           ; $418e: $bc
	cp   d                                           ; $418f: $ba
	sbc  d                                           ; $4190: $9a
	cp   e                                           ; $4191: $bb
	cp   c                                           ; $4192: $b9
	ld   h, l                                        ; $4193: $65
	ld   [hl-], a                                    ; $4194: $32

Call_0d1_4195:
	ld   de, $2611                                   ; $4195: $11 $11 $26
	ld   a, b                                        ; $4198: $78
	adc  c                                           ; $4199: $89
	sbc  c                                           ; $419a: $99
	xor  e                                           ; $419b: $ab
	xor  e                                           ; $419c: $ab
	xor  d                                           ; $419d: $aa
	sbc  d                                           ; $419e: $9a
	xor  h                                           ; $419f: $ac
	rst  JumpTable                                         ; $41a0: $df
	xor  $cb                                         ; $41a1: $ee $cb
	sbc  b                                           ; $41a3: $98
	ld   d, h                                        ; $41a4: $54
	ld   b, h                                        ; $41a5: $44
	ld   d, l                                        ; $41a6: $55
	ld   d, h                                        ; $41a7: $54
	ld   b, h                                        ; $41a8: $44
	ld   d, l                                        ; $41a9: $55
	ld   h, [hl]                                     ; $41aa: $66
	ld   h, [hl]                                     ; $41ab: $66
	ld   h, l                                        ; $41ac: $65
	ld   d, [hl]                                     ; $41ad: $56
	adc  d                                           ; $41ae: $8a
	call $bbcc                                       ; $41af: $cd $cc $bb
	xor  c                                           ; $41b2: $a9
	sbc  b                                           ; $41b3: $98
	adc  d                                           ; $41b4: $8a
	xor  c                                           ; $41b5: $a9
	xor  c                                           ; $41b6: $a9
	xor  d                                           ; $41b7: $aa
	xor  c                                           ; $41b8: $a9
	add  a                                           ; $41b9: $87
	ld   d, h                                        ; $41ba: $54
	ld   [hl-], a                                    ; $41bb: $32
	inc  sp                                          ; $41bc: $33
	ld   b, [hl]                                     ; $41bd: $46
	adc  c                                           ; $41be: $89
	sbc  b                                           ; $41bf: $98
	sbc  c                                           ; $41c0: $99
	sub  a                                           ; $41c1: $97
	ld   [hl], a                                     ; $41c2: $77
	ld   a, b                                        ; $41c3: $78
	adc  c                                           ; $41c4: $89
	adc  d                                           ; $41c5: $8a
	cp   e                                           ; $41c6: $bb
	call z, $98b9                                    ; $41c7: $cc $b9 $98
	add  a                                           ; $41ca: $87

jr_0d1_41cb:
	ld   [hl], a                                     ; $41cb: $77
	sbc  b                                           ; $41cc: $98
	adc  b                                           ; $41cd: $88
	ld   a, b                                        ; $41ce: $78
	ld   [hl], a                                     ; $41cf: $77
	ld   d, h                                        ; $41d0: $54
	ld   d, l                                        ; $41d1: $55
	ld   d, l                                        ; $41d2: $55
	ld   d, l                                        ; $41d3: $55
	ld   h, a                                        ; $41d4: $67
	adc  c                                           ; $41d5: $89
	sbc  c                                           ; $41d6: $99

jr_0d1_41d7:
	sbc  c                                           ; $41d7: $99
	sbc  b                                           ; $41d8: $98
	adc  c                                           ; $41d9: $89
	sbc  d                                           ; $41da: $9a
	xor  d                                           ; $41db: $aa
	cp   d                                           ; $41dc: $ba
	xor  d                                           ; $41dd: $aa
	xor  c                                           ; $41de: $a9
	adc  b                                           ; $41df: $88
	adc  c                                           ; $41e0: $89
	halt                                             ; $41e1: $76
	ld   h, [hl]                                     ; $41e2: $66
	ld   h, [hl]                                     ; $41e3: $66
	ld   h, [hl]                                     ; $41e4: $66
	halt                                             ; $41e5: $76
	ld   h, [hl]                                     ; $41e6: $66
	ld   h, [hl]                                     ; $41e7: $66
	ld   h, a                                        ; $41e8: $67
	ld   a, c                                        ; $41e9: $79
	sbc  d                                           ; $41ea: $9a
	xor  d                                           ; $41eb: $aa
	xor  c                                           ; $41ec: $a9
	sbc  c                                           ; $41ed: $99
	adc  d                                           ; $41ee: $8a
	sbc  c                                           ; $41ef: $99
	adc  c                                           ; $41f0: $89
	sbc  c                                           ; $41f1: $99
	adc  b                                           ; $41f2: $88
	sbc  c                                           ; $41f3: $99
	sbc  b                                           ; $41f4: $98
	add  a                                           ; $41f5: $87
	ld   [hl], a                                     ; $41f6: $77
	ld   a, b                                        ; $41f7: $78
	adc  b                                           ; $41f8: $88
	adc  c                                           ; $41f9: $89
	add  a                                           ; $41fa: $87
	halt                                             ; $41fb: $76
	ld   h, [hl]                                     ; $41fc: $66
	ld   h, [hl]                                     ; $41fd: $66
	ld   [hl], a                                     ; $41fe: $77
	ld   [hl], a                                     ; $41ff: $77
	sbc  b                                           ; $4200: $98
	sbc  b                                           ; $4201: $98
	sbc  c                                           ; $4202: $99
	sbc  c                                           ; $4203: $99
	adc  b                                           ; $4204: $88
	adc  c                                           ; $4205: $89
	sbc  d                                           ; $4206: $9a
	sbc  c                                           ; $4207: $99
	xor  c                                           ; $4208: $a9
	sbc  b                                           ; $4209: $98
	ld   [hl], a                                     ; $420a: $77
	ld   h, [hl]                                     ; $420b: $66
	ld   h, [hl]                                     ; $420c: $66
	ld   [hl], a                                     ; $420d: $77
	ld   [hl], a                                     ; $420e: $77
	ld   [hl], a                                     ; $420f: $77
	ld   [hl], a                                     ; $4210: $77
	ld   a, b                                        ; $4211: $78
	ld   [hl], a                                     ; $4212: $77
	ld   [hl], a                                     ; $4213: $77
	ld   a, b                                        ; $4214: $78
	adc  c                                           ; $4215: $89
	xor  c                                           ; $4216: $a9
	xor  c                                           ; $4217: $a9
	sbc  c                                           ; $4218: $99
	sub  a                                           ; $4219: $97
	ld   [hl], a                                     ; $421a: $77
	adc  b                                           ; $421b: $88
	sbc  c                                           ; $421c: $99
	sbc  c                                           ; $421d: $99
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	add  a                                           ; $4221: $87
	halt                                             ; $4222: $76
	ld   [hl], a                                     ; $4223: $77
	ld   a, b                                        ; $4224: $78
	adc  c                                           ; $4225: $89
	adc  c                                           ; $4226: $89
	add  a                                           ; $4227: $87
	ld   [hl], a                                     ; $4228: $77
	ld   a, b                                        ; $4229: $78
	adc  c                                           ; $422a: $89
	sbc  b                                           ; $422b: $98
	sbc  b                                           ; $422c: $98
	adc  b                                           ; $422d: $88
	adc  c                                           ; $422e: $89
	sbc  c                                           ; $422f: $99
	sbc  b                                           ; $4230: $98
	ld   [hl], a                                     ; $4231: $77
	ld   a, b                                        ; $4232: $78
	adc  b                                           ; $4233: $88
	sbc  c                                           ; $4234: $99
	sbc  b                                           ; $4235: $98
	ld   [hl], a                                     ; $4236: $77
	ld   [hl], a                                     ; $4237: $77
	ld   [hl], a                                     ; $4238: $77
	ld   [hl], a                                     ; $4239: $77
	ld   [hl], a                                     ; $423a: $77
	adc  b                                           ; $423b: $88
	sbc  c                                           ; $423c: $99
	sbc  b                                           ; $423d: $98
	adc  c                                           ; $423e: $89
	add  a                                           ; $423f: $87
	ld   a, b                                        ; $4240: $78
	adc  b                                           ; $4241: $88
	adc  c                                           ; $4242: $89
	adc  b                                           ; $4243: $88
	sbc  b                                           ; $4244: $98
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	adc  b                                           ; $4247: $88
	adc  b                                           ; $4248: $88
	adc  b                                           ; $4249: $88
	adc  b                                           ; $424a: $88
	adc  b                                           ; $424b: $88
	sbc  b                                           ; $424c: $98
	adc  b                                           ; $424d: $88
	ld   a, b                                        ; $424e: $78
	adc  b                                           ; $424f: $88
	adc  b                                           ; $4250: $88
	adc  b                                           ; $4251: $88
	adc  b                                           ; $4252: $88
	adc  b                                           ; $4253: $88
	adc  b                                           ; $4254: $88
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	sbc  c                                           ; $4259: $99
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	adc  b                                           ; $425c: $88
	adc  b                                           ; $425d: $88
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	adc  b                                           ; $4260: $88
	adc  b                                           ; $4261: $88
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	adc  b                                           ; $4264: $88
	adc  b                                           ; $4265: $88
	adc  b                                           ; $4266: $88
	adc  b                                           ; $4267: $88
	adc  b                                           ; $4268: $88
	adc  b                                           ; $4269: $88
	adc  b                                           ; $426a: $88
	adc  b                                           ; $426b: $88
	adc  b                                           ; $426c: $88
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	adc  b                                           ; $4278: $88
	adc  b                                           ; $4279: $88
	adc  b                                           ; $427a: $88
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  b                                           ; $4293: $88
	adc  b                                           ; $4294: $88
	adc  b                                           ; $4295: $88

Call_0d1_4296:
	adc  b                                           ; $4296: $88
	adc  b                                           ; $4297: $88
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	adc  b                                           ; $429a: $88
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	adc  b                                           ; $429e: $88
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	adc  b                                           ; $42a4: $88
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	adc  b                                           ; $42a7: $88
	adc  b                                           ; $42a8: $88
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	adc  b                                           ; $42bc: $88
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	adc  b                                           ; $42bf: $88
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	adc  b                                           ; $42cb: $88
	adc  b                                           ; $42cc: $88
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	adc  b                                           ; $42d4: $88
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
	adc  b                                           ; $42da: $88
	adc  b                                           ; $42db: $88
	adc  b                                           ; $42dc: $88
	adc  b                                           ; $42dd: $88
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	adc  b                                           ; $42e0: $88
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
	adc  b                                           ; $42f6: $88
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  b                                           ; $42fc: $88
	adc  b                                           ; $42fd: $88
	adc  b                                           ; $42fe: $88
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	adc  b                                           ; $4307: $88
	adc  b                                           ; $4308: $88
	adc  b                                           ; $4309: $88
	adc  b                                           ; $430a: $88
	adc  b                                           ; $430b: $88
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	adc  b                                           ; $4313: $88
	adc  b                                           ; $4314: $88
	adc  b                                           ; $4315: $88
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  b                                           ; $431c: $88
	adc  b                                           ; $431d: $88
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	adc  b                                           ; $432c: $88
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	adc  b                                           ; $4332: $88
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	adc  b                                           ; $4335: $88
	adc  b                                           ; $4336: $88
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	adc  b                                           ; $433e: $88
	adc  b                                           ; $433f: $88
	adc  b                                           ; $4340: $88
	adc  b                                           ; $4341: $88
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	adc  b                                           ; $4347: $88
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
	adc  b                                           ; $434c: $88
	adc  b                                           ; $434d: $88
	adc  b                                           ; $434e: $88
	adc  b                                           ; $434f: $88
	adc  b                                           ; $4350: $88
	adc  b                                           ; $4351: $88
	adc  b                                           ; $4352: $88
	adc  b                                           ; $4353: $88
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	adc  b                                           ; $4356: $88
	adc  b                                           ; $4357: $88
	adc  b                                           ; $4358: $88
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	adc  b                                           ; $435b: $88
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	adc  b                                           ; $435e: $88
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	adc  b                                           ; $4361: $88
	adc  b                                           ; $4362: $88
	adc  b                                           ; $4363: $88
	adc  b                                           ; $4364: $88
	adc  b                                           ; $4365: $88
	adc  b                                           ; $4366: $88
	adc  b                                           ; $4367: $88
	adc  b                                           ; $4368: $88
	adc  b                                           ; $4369: $88
	adc  b                                           ; $436a: $88
	adc  b                                           ; $436b: $88
	adc  b                                           ; $436c: $88
	adc  b                                           ; $436d: $88
	adc  b                                           ; $436e: $88
	adc  b                                           ; $436f: $88
	adc  b                                           ; $4370: $88
	adc  b                                           ; $4371: $88
	adc  b                                           ; $4372: $88
	adc  b                                           ; $4373: $88

Jump_0d1_4374:
	adc  b                                           ; $4374: $88
	adc  b                                           ; $4375: $88
	adc  b                                           ; $4376: $88
	adc  b                                           ; $4377: $88
	adc  b                                           ; $4378: $88
	adc  b                                           ; $4379: $88
	adc  b                                           ; $437a: $88
	adc  b                                           ; $437b: $88
	adc  b                                           ; $437c: $88
	adc  b                                           ; $437d: $88
	adc  b                                           ; $437e: $88
	adc  b                                           ; $437f: $88
	adc  b                                           ; $4380: $88
	adc  b                                           ; $4381: $88
	adc  b                                           ; $4382: $88
	adc  b                                           ; $4383: $88
	adc  b                                           ; $4384: $88
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	adc  b                                           ; $438b: $88
	adc  b                                           ; $438c: $88
	adc  b                                           ; $438d: $88
	adc  b                                           ; $438e: $88
	adc  b                                           ; $438f: $88
	adc  b                                           ; $4390: $88
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  b                                           ; $4394: $88
	adc  b                                           ; $4395: $88
	adc  b                                           ; $4396: $88

Jump_0d1_4397:
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	adc  b                                           ; $439a: $88
	adc  b                                           ; $439b: $88
	adc  b                                           ; $439c: $88
	adc  b                                           ; $439d: $88
	adc  b                                           ; $439e: $88
	adc  b                                           ; $439f: $88
	adc  b                                           ; $43a0: $88
	adc  b                                           ; $43a1: $88
	adc  b                                           ; $43a2: $88
	adc  b                                           ; $43a3: $88
	adc  b                                           ; $43a4: $88
	adc  b                                           ; $43a5: $88
	adc  b                                           ; $43a6: $88
	adc  b                                           ; $43a7: $88
	adc  b                                           ; $43a8: $88
	adc  b                                           ; $43a9: $88
	adc  b                                           ; $43aa: $88
	adc  b                                           ; $43ab: $88
	adc  b                                           ; $43ac: $88
	adc  b                                           ; $43ad: $88
	adc  b                                           ; $43ae: $88
	adc  b                                           ; $43af: $88
	adc  b                                           ; $43b0: $88
	adc  b                                           ; $43b1: $88
	adc  b                                           ; $43b2: $88
	adc  b                                           ; $43b3: $88
	adc  b                                           ; $43b4: $88
	adc  b                                           ; $43b5: $88
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	adc  b                                           ; $43b9: $88
	adc  b                                           ; $43ba: $88
	adc  b                                           ; $43bb: $88
	adc  b                                           ; $43bc: $88
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	adc  b                                           ; $43bf: $88
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	adc  b                                           ; $43c2: $88
	adc  b                                           ; $43c3: $88
	adc  b                                           ; $43c4: $88
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	adc  b                                           ; $43c7: $88
	adc  b                                           ; $43c8: $88
	adc  b                                           ; $43c9: $88
	adc  b                                           ; $43ca: $88
	adc  b                                           ; $43cb: $88
	adc  b                                           ; $43cc: $88
	adc  b                                           ; $43cd: $88
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	adc  b                                           ; $43d0: $88
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  b                                           ; $43db: $88
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	adc  b                                           ; $43de: $88
	adc  b                                           ; $43df: $88
	adc  b                                           ; $43e0: $88
	adc  b                                           ; $43e1: $88
	adc  b                                           ; $43e2: $88
	adc  b                                           ; $43e3: $88
	adc  b                                           ; $43e4: $88
	adc  b                                           ; $43e5: $88
	adc  b                                           ; $43e6: $88
	adc  b                                           ; $43e7: $88
	adc  b                                           ; $43e8: $88
	adc  b                                           ; $43e9: $88
	adc  b                                           ; $43ea: $88
	adc  b                                           ; $43eb: $88
	adc  b                                           ; $43ec: $88
	adc  b                                           ; $43ed: $88
	adc  b                                           ; $43ee: $88
	adc  b                                           ; $43ef: $88
	adc  b                                           ; $43f0: $88
	adc  b                                           ; $43f1: $88
	adc  b                                           ; $43f2: $88
	adc  b                                           ; $43f3: $88
	adc  b                                           ; $43f4: $88
	adc  b                                           ; $43f5: $88
	adc  b                                           ; $43f6: $88
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  b                                           ; $43f9: $88
	adc  b                                           ; $43fa: $88
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	adc  b                                           ; $4401: $88
	adc  b                                           ; $4402: $88
	adc  b                                           ; $4403: $88
	adc  b                                           ; $4404: $88
	adc  b                                           ; $4405: $88
	adc  b                                           ; $4406: $88
	adc  b                                           ; $4407: $88
	adc  b                                           ; $4408: $88
	adc  b                                           ; $4409: $88
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	adc  b                                           ; $440c: $88
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	adc  b                                           ; $440f: $88
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	adc  b                                           ; $4412: $88
	adc  b                                           ; $4413: $88
	adc  b                                           ; $4414: $88
	adc  b                                           ; $4415: $88
	adc  b                                           ; $4416: $88
	adc  b                                           ; $4417: $88
	adc  b                                           ; $4418: $88
	adc  b                                           ; $4419: $88
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  b                                           ; $441c: $88
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	adc  b                                           ; $4421: $88
	adc  b                                           ; $4422: $88
	adc  b                                           ; $4423: $88
	adc  b                                           ; $4424: $88
	adc  b                                           ; $4425: $88
	adc  b                                           ; $4426: $88
	adc  b                                           ; $4427: $88
	adc  b                                           ; $4428: $88
	adc  b                                           ; $4429: $88
	sbc  b                                           ; $442a: $98
	ld   a, b                                        ; $442b: $78
	sbc  b                                           ; $442c: $98
	adc  b                                           ; $442d: $88
	ld   [hl], a                                     ; $442e: $77
	sbc  c                                           ; $442f: $99
	adc  d                                           ; $4430: $8a
	cp   b                                           ; $4431: $b8
	sbc  b                                           ; $4432: $98
	ld   l, b                                        ; $4433: $68
	xor  d                                           ; $4434: $aa
	adc  c                                           ; $4435: $89
	add  [hl]                                        ; $4436: $86
	adc  e                                           ; $4437: $8b
	add  a                                           ; $4438: $87
	ld   a, d                                        ; $4439: $7a
	sbc  b                                           ; $443a: $98
	ld   d, l                                        ; $443b: $55
	ld   [hl], a                                     ; $443c: $77
	ld   h, l                                        ; $443d: $65
	ld   h, l                                        ; $443e: $65
	ld   h, [hl]                                     ; $443f: $66
	ld   h, a                                        ; $4440: $67
	ld   a, b                                        ; $4441: $78
	adc  d                                           ; $4442: $8a
	xor  e                                           ; $4443: $ab
	cp   e                                           ; $4444: $bb
	xor  c                                           ; $4445: $a9
	sbc  c                                           ; $4446: $99
	ld   [hl], l                                     ; $4447: $75
	ld   b, h                                        ; $4448: $44
	ld   sp, $1211                                   ; $4449: $31 $11 $12
	ld   [hl+], a                                    ; $444c: $22
	ld   b, a                                        ; $444d: $47
	sbc  l                                           ; $444e: $9d
	jp   c, $bbcb                                    ; $444f: $da $cb $bb

	cp   e                                           ; $4452: $bb
	xor  d                                           ; $4453: $aa
	halt                                             ; $4454: $76
	ld   b, d                                        ; $4455: $42
	ld   de, $4713                                   ; $4456: $11 $13 $47
	sub  l                                           ; $4459: $95
	sbc  h                                           ; $445a: $9c
	rst  JumpTable                                         ; $445b: $df
	cp   $de                                         ; $445c: $fe $de
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $445e: $cf
	cp   c                                           ; $445f: $b9
	add  a                                           ; $4460: $87
	ld   [hl], a                                     ; $4461: $77
	ld   b, c                                        ; $4462: $41
	ld   de, $2611                                   ; $4463: $11 $11 $26
	cp   b                                           ; $4466: $b8
	sbc  l                                           ; $4467: $9d
	rst  $28                                         ; $4468: $ef
	rst  $38                                         ; $4469: $ff
	xor  $dd                                         ; $446a: $ee $dd
	ret  c                                           ; $446c: $d8

	cp   c                                           ; $446d: $b9
	xor  h                                           ; $446e: $ac
	and  h                                           ; $446f: $a4
	ld   de, $1511                                   ; $4470: $11 $11 $15
	ld   a, e                                        ; $4473: $7b
	ld   d, a                                        ; $4474: $57
	rst  $38                                         ; $4475: $ff
	rst  $38                                         ; $4476: $ff
	cp   $fe                                         ; $4477: $fe $fe
	rst  $38                                         ; $4479: $ff
	adc  d                                           ; $447a: $8a
	xor  e                                           ; $447b: $ab
	ret                                              ; $447c: $c9


	ld   de, $1211                                   ; $447d: $11 $11 $12
	adc  l                                           ; $4480: $8d
	sub  e                                           ; $4481: $93
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4486: $cf
	sub  [hl]                                        ; $4487: $96
	adc  c                                           ; $4488: $89
	rst  $28                                         ; $4489: $ef
	ld   [hl], c                                     ; $448a: $71
	ld   de, $6a11                                   ; $448b: $11 $11 $6a
	ldh  a, [c]                                      ; $448e: $f2
	ld   l, a                                        ; $448f: $6f
	rst  $38                                         ; $4490: $ff
	rst  $38                                         ; $4491: $ff
	rst  JumpTable                                         ; $4492: $df
	rst  $28                                         ; $4493: $ef
	push af                                          ; $4494: $f5
	xor  c                                           ; $4495: $a9
	rst  $38                                         ; $4496: $ff
	pop  af                                          ; $4497: $f1
	ld   de, $1711                                   ; $4498: $11 $11 $17
	db   $dd                                         ; $449b: $dd
	ld   e, $ff                                      ; $449c: $1e $ff
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	db   $fc                                         ; $44a0: $fc
	cp   $6b                                         ; $44a1: $fe $6b
	xor  a                                           ; $44a3: $af
	db   $fd                                         ; $44a4: $fd
	ld   de, $1411                                   ; $44a5: $11 $11 $14
	xor  a                                           ; $44a8: $af
	ld   h, c                                        ; $44a9: $61
	rst  $38                                         ; $44aa: $ff
	rst  $38                                         ; $44ab: $ff
	cp   $fd                                         ; $44ac: $fe $fd
	rst  $38                                         ; $44ae: $ff
	ld   l, d                                        ; $44af: $6a
	adc  l                                           ; $44b0: $8d
	rst  $38                                         ; $44b1: $ff
	ld   d, c                                        ; $44b2: $51
	ld   de, $8c11                                   ; $44b3: $11 $11 $8c
	pop  af                                          ; $44b6: $f1
	sbc  a                                           ; $44b7: $9f
	rst  $38                                         ; $44b8: $ff
	rst  $38                                         ; $44b9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ba: $cf
	xor  a                                           ; $44bb: $af
	di                                               ; $44bc: $f3
	or   a                                           ; $44bd: $b7
	rst  $38                                         ; $44be: $ff
	pop  af                                          ; $44bf: $f1
	ld   de, $2c11                                   ; $44c0: $11 $11 $2c
	ld   hl, sp+$1f                                  ; $44c3: $f8 $1f
	rst  $38                                         ; $44c5: $ff
	rst  $38                                         ; $44c6: $ff
	db   $ed                                         ; $44c7: $ed
	db   $ed                                         ; $44c8: $ed
	push af                                          ; $44c9: $f5
	adc  b                                           ; $44ca: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44cb: $cf
	or   $11                                         ; $44cc: $f6 $11
	ld   de, $ff1a                                   ; $44ce: $11 $1a $ff
	ld   a, [de]                                     ; $44d1: $1a
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	ld   sp, hl                                      ; $44d4: $f9
	ld   sp, hl                                      ; $44d5: $f9
	rst  $38                                         ; $44d6: $ff
	ld   a, [hl+]                                    ; $44d7: $2a
	ld   a, a                                        ; $44d8: $7f
	rst  $38                                         ; $44d9: $ff
	ld   de, $1711                                   ; $44da: $11 $11 $17
	rst  $38                                         ; $44dd: $ff
	ld   hl, $ffff                                   ; $44de: $21 $ff $ff
	ld   sp, hl                                      ; $44e1: $f9
	db   $db                                         ; $44e2: $db
	rst  $38                                         ; $44e3: $ff
	rla                                              ; $44e4: $17
	ld   l, a                                        ; $44e5: $6f
	rst  $38                                         ; $44e6: $ff
	ld   de, $1611                                   ; $44e7: $11 $11 $16
	rst  $28                                         ; $44ea: $ef
	sub  c                                           ; $44eb: $91
	rst  $38                                         ; $44ec: $ff
	rst  $38                                         ; $44ed: $ff
	ld   a, [$cfbe]                                  ; $44ee: $fa $be $cf
	ld   [hl], h                                     ; $44f1: $74
	sbc  e                                           ; $44f2: $9b
	rst  $38                                         ; $44f3: $ff
	ld   d, c                                        ; $44f4: $51
	ld   de, $df18                                   ; $44f5: $11 $18 $df
	or   c                                           ; $44f8: $b1
	cp   a                                           ; $44f9: $bf
	rst  $38                                         ; $44fa: $ff
	push af                                          ; $44fb: $f5
	adc  e                                           ; $44fc: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44fd: $cf
	or   d                                           ; $44fe: $b2
	adc  e                                           ; $44ff: $8b
	rst  $38                                         ; $4500: $ff
	sub  c                                           ; $4501: $91
	ld   de, $cf18                                   ; $4502: $11 $18 $cf
	pop  hl                                          ; $4505: $e1
	xor  a                                           ; $4506: $af
	rst  $38                                         ; $4507: $ff
	rst  $30                                         ; $4508: $f7
	ld   l, a                                        ; $4509: $6f
	sbc  a                                           ; $450a: $9f
	pop  hl                                          ; $450b: $e1
	xor  e                                           ; $450c: $ab
	rst  $38                                         ; $450d: $ff
	sub  c                                           ; $450e: $91
	ld   de, $df1b                                   ; $450f: $11 $1b $df
	pop  bc                                          ; $4512: $c1
	cp   a                                           ; $4513: $bf
	rst  $38                                         ; $4514: $ff
	ldh  a, [c]                                      ; $4515: $f2
	ld   a, a                                        ; $4516: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4517: $cf
	call nz, $ff9e                                   ; $4518: $c4 $9e $ff
	ld   b, c                                        ; $451b: $41
	ld   de, $cf1d                                   ; $451c: $11 $1d $cf
	ld   h, c                                        ; $451f: $61
	rst  $28                                         ; $4520: $ef
	rst  $38                                         ; $4521: $ff
	pop  af                                          ; $4522: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4523: $cf
	rst  $28                                         ; $4524: $ef
	halt                                             ; $4525: $76
	cp   a                                           ; $4526: $bf
	rst  $38                                         ; $4527: $ff
	ld   de, $1e11                                   ; $4528: $11 $11 $1e
	rst  $38                                         ; $452b: $ff
	inc  de                                          ; $452c: $13
	rst  $38                                         ; $452d: $ff
	rst  $38                                         ; $452e: $ff
	pop  af                                          ; $452f: $f1
	db   $fd                                         ; $4530: $fd
	rst  $38                                         ; $4531: $ff
	ld   c, b                                        ; $4532: $48
	rst  $28                                         ; $4533: $ef
	rst  $38                                         ; $4534: $ff
	ld   de, $7911                                   ; $4535: $11 $11 $79
	db   $fd                                         ; $4538: $fd
	inc  e                                           ; $4539: $1c
	rst  $38                                         ; $453a: $ff
	rst  $38                                         ; $453b: $ff
	add  [hl]                                        ; $453c: $86
	db   $fc                                         ; $453d: $fc
	ld   sp, hl                                      ; $453e: $f9
	ld   e, l                                        ; $453f: $5d
	rst  $38                                         ; $4540: $ff
	pop  af                                          ; $4541: $f1
	ld   de, $d711                                   ; $4542: $11 $11 $d7
	pop  af                                          ; $4545: $f1
	ld   e, a                                        ; $4546: $5f
	rst  $38                                         ; $4547: $ff
	rst  $38                                         ; $4548: $ff
	cpl                                              ; $4549: $2f
	rst  $38                                         ; $454a: $ff
	di                                               ; $454b: $f3
	cp   a                                           ; $454c: $bf
	cp   $91                                         ; $454d: $fe $91
	ld   de, $4f19                                   ; $454f: $11 $19 $4f
	add  c                                           ; $4552: $81
	rst  $38                                         ; $4553: $ff
	rst  $38                                         ; $4554: $ff
	rst  $30                                         ; $4555: $f7
	rst  $38                                         ; $4556: $ff
	cp   a                                           ; $4557: $bf
	add  hl, sp                                      ; $4558: $39
	rst  $38                                         ; $4559: $ff
	ld   sp, hl                                      ; $455a: $f9
	ld   de, $3411                                   ; $455b: $11 $11 $34
	adc  [hl]                                        ; $455e: $8e
	rra                                              ; $455f: $1f
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	ld   a, [$f5f8]                                  ; $4562: $fa $f8 $f5
	ld   a, [hl]                                     ; $4565: $7e
	rst  $38                                         ; $4566: $ff
	ld   h, c                                        ; $4567: $61
	ld   de, $6111                                   ; $4568: $11 $11 $61
	pop  af                                          ; $456b: $f1
	rst  $38                                         ; $456c: $ff
	rst  $38                                         ; $456d: $ff
	rst  $38                                         ; $456e: $ff
	ld   a, a                                        ; $456f: $7f
	sbc  a                                           ; $4570: $9f
	sub  h                                           ; $4571: $94
	rst  $38                                         ; $4572: $ff
	db   $f4                                         ; $4573: $f4
	ld   sp, $1a11                                   ; $4574: $31 $11 $1a
	rra                                              ; $4577: $1f
	ld   e, $ff                                      ; $4578: $1e $ff
	rst  $38                                         ; $457a: $ff
	rst  $30                                         ; $457b: $f7
	ei                                               ; $457c: $fb
	call $ff3f                                       ; $457d: $cd $3f $ff
	inc  de                                          ; $4580: $13
	ld   de, $a111                                   ; $4581: $11 $11 $a1
	pop  af                                          ; $4584: $f1
	rst  $28                                         ; $4585: $ef
	rst  $38                                         ; $4586: $ff
	rst  $38                                         ; $4587: $ff
	adc  a                                           ; $4588: $8f
	call $fff4                                       ; $4589: $cd $f4 $ff
	pop  af                                          ; $458c: $f1
	ld   de, $1711                                   ; $458d: $11 $11 $17
	rra                                              ; $4590: $1f
	rra                                              ; $4591: $1f
	rst  $38                                         ; $4592: $ff
	rst  $38                                         ; $4593: $ff
	ld   hl, sp-$07                                  ; $4594: $f8 $f9
	rst  $38                                         ; $4596: $ff
	ld   l, [hl]                                     ; $4597: $6e
	rst  $28                                         ; $4598: $ef
	ld   de, $1611                                   ; $4599: $11 $11 $16
	ld   de, $fff1                                   ; $459c: $11 $f1 $ff
	rst  $38                                         ; $459f: $ff
	rst  $38                                         ; $45a0: $ff
	xor  a                                           ; $45a1: $af
	ccf                                              ; $45a2: $3f
	ld   hl, sp-$51                                  ; $45a3: $f8 $af
	pop  bc                                          ; $45a5: $c1
	ld   de, $e111                                   ; $45a6: $11 $11 $e1
	ccf                                              ; $45a9: $3f
	rra                                              ; $45aa: $1f
	cp   $ff                                         ; $45ab: $fe $ff
	rst  $38                                         ; $45ad: $ff
	di                                               ; $45ae: $f3
	rst  $38                                         ; $45af: $ff
	add  l                                           ; $45b0: $85
	di                                               ; $45b1: $f3
	ld   de, $5811                                   ; $45b2: $11 $11 $58
	rra                                              ; $45b5: $1f
	adc  a                                           ; $45b6: $8f
	ld   a, [$f1cf]                                  ; $45b7: $fa $cf $f1
	db   $fd                                         ; $45ba: $fd
	rst  $38                                         ; $45bb: $ff
	ld   [hl], c                                     ; $45bc: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45bd: $cf
	ld   de, $1f11                                   ; $45be: $11 $11 $1f
	ld   de, $fff2                                   ; $45c1: $11 $f2 $ff
	ld   a, a                                        ; $45c4: $7f
	rst  $38                                         ; $45c5: $ff
	rra                                              ; $45c6: $1f
	xor  a                                           ; $45c7: $af
	ldh  a, [c]                                      ; $45c8: $f2
	cpl                                              ; $45c9: $2f
	sub  c                                           ; $45ca: $91
	ld   de, $1115                                   ; $45cb: $11 $15 $11
	rst  $38                                         ; $45ce: $ff
	ccf                                              ; $45cf: $3f
	sbc  a                                           ; $45d0: $9f
	rst  $38                                         ; $45d1: $ff
	rra                                              ; $45d2: $1f
	rst  $38                                         ; $45d3: $ff
	db   $f4                                         ; $45d4: $f4
	ld   e, a                                        ; $45d5: $5f
	pop  af                                          ; $45d6: $f1
	ld   de, $9111                                   ; $45d7: $11 $11 $91
	rra                                              ; $45da: $1f
	rra                                              ; $45db: $1f
	db   $fc                                         ; $45dc: $fc
	rst  $38                                         ; $45dd: $ff
	and  l                                           ; $45de: $a5
	db   $fc                                         ; $45df: $fc
	rst  $38                                         ; $45e0: $ff
	xor  b                                           ; $45e1: $a8
	pop  af                                          ; $45e2: $f1
	ld   de, $a111                                   ; $45e3: $11 $11 $a1
	rra                                              ; $45e6: $1f
	ld   [hl], c                                     ; $45e7: $71
	cp   $ef                                         ; $45e8: $fe $ef
	pop  af                                          ; $45ea: $f1
	rst  $38                                         ; $45eb: $ff
	rst  $38                                         ; $45ec: $ff
	ld   sp, hl                                      ; $45ed: $f9
	db   $fd                                         ; $45ee: $fd
	ld   de, $1111                                   ; $45ef: $11 $11 $11
	inc  e                                           ; $45f2: $1c
	pop  af                                          ; $45f3: $f1
	rst  $38                                         ; $45f4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f5: $cf
	pop  af                                          ; $45f6: $f1
	rst  $38                                         ; $45f7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f8: $cf
	cp   $df                                         ; $45f9: $fe $df
	ld   de, $1b11                                   ; $45fb: $11 $11 $1b
	ld   de, $cff1                                   ; $45fe: $11 $f1 $cf
	rst  $38                                         ; $4601: $ff
	rst  $30                                         ; $4602: $f7
	rst  $38                                         ; $4603: $ff
	rst  $38                                         ; $4604: $ff
	rst  $38                                         ; $4605: $ff
	ld   a, a                                        ; $4606: $7f
	ld   de, $1e11                                   ; $4607: $11 $11 $1e
	ld   de, $1ff1                                   ; $460a: $11 $f1 $1f
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	cpl                                              ; $460f: $2f
	rst  $38                                         ; $4610: $ff
	rst  $38                                         ; $4611: $ff
	adc  a                                           ; $4612: $8f
	ld   hl, $1b51                                   ; $4613: $21 $51 $1b
	ld   de, $1ff8                                   ; $4616: $11 $f8 $1f
	cp   $ff                                         ; $4619: $fe $ff
	rra                                              ; $461b: $1f
	db   $fc                                         ; $461c: $fc
	rst  $38                                         ; $461d: $ff
	rst  $28                                         ; $461e: $ef
	pop  af                                          ; $461f: $f1
	ld   b, c                                        ; $4620: $41
	inc  d                                           ; $4621: $14
	ld   de, $164f                                   ; $4622: $11 $4f $16
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	rra                                              ; $4627: $1f
	ld   sp, hl                                      ; $4628: $f9
	rst  $38                                         ; $4629: $ff
	ld   sp, hl                                      ; $462a: $f9
	pop  af                                          ; $462b: $f1
	ld   de, $c111                                   ; $462c: $11 $11 $c1
	rra                                              ; $462f: $1f
	ld   de, $efef                                   ; $4630: $11 $ef $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4633: $cf
	db   $fc                                         ; $4634: $fc
	rst  $38                                         ; $4635: $ff
	push af                                          ; $4636: $f5
	di                                               ; $4637: $f3
	ld   de, $c111                                   ; $4638: $11 $11 $c1
	rra                                              ; $463b: $1f
	ld   de, $8f8f                                   ; $463c: $11 $8f $8f
	ld   sp, hl                                      ; $463f: $f9
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	rst  $30                                         ; $4642: $f7
	rst  $38                                         ; $4643: $ff
	ld   d, $11                                      ; $4644: $16 $11
	ld   de, $d112                                   ; $4646: $11 $12 $d1
	rra                                              ; $4649: $1f
	xor  b                                           ; $464a: $a8
	ld   hl, sp-$01                                  ; $464b: $f8 $ff
	rst  $38                                         ; $464d: $ff
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	ld   de, $1621                                   ; $4650: $11 $21 $16
	ld   de, $1bf1                                   ; $4653: $11 $f1 $1b
	pop  bc                                          ; $4656: $c1
	rst  $38                                         ; $4657: $ff
	cp   a                                           ; $4658: $bf
	rst  $38                                         ; $4659: $ff
	rst  $38                                         ; $465a: $ff
	rst  $38                                         ; $465b: $ff
	pop  af                                          ; $465c: $f1
	pop  af                                          ; $465d: $f1
	ld   de, $1311                                   ; $465e: $11 $11 $13
	ld   de, $5fa2                                   ; $4661: $11 $a2 $5f
	sbc  a                                           ; $4664: $9f
	rst  $38                                         ; $4665: $ff
	rst  $38                                         ; $4666: $ff
	rst  $38                                         ; $4667: $ff
	pop  af                                          ; $4668: $f1
	halt                                             ; $4669: $76
	ld   de, $1a21                                   ; $466a: $11 $21 $1a
	ld   de, $1f19                                   ; $466d: $11 $19 $1f
	db   $fc                                         ; $4670: $fc
	rst  $38                                         ; $4671: $ff
	rst  $38                                         ; $4672: $ff
	rst  $38                                         ; $4673: $ff
	rst  $38                                         ; $4674: $ff
	rra                                              ; $4675: $1f
	ld   de, $1111                                   ; $4676: $11 $11 $11
	ld   d, c                                        ; $4679: $51
	inc  de                                          ; $467a: $13
	ld   b, c                                        ; $467b: $41
	rst  $38                                         ; $467c: $ff
	rst  $38                                         ; $467d: $ff
	rst  $38                                         ; $467e: $ff
	rst  $38                                         ; $467f: $ff
	rst  $38                                         ; $4680: $ff
	rst  ToBoot                                         ; $4681: $c7
	pop  hl                                          ; $4682: $e1
	ld   de, $1111                                   ; $4683: $11 $11 $11
	ld   de, $2f51                                   ; $4686: $11 $51 $2f
	xor  a                                           ; $4689: $af
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	rst  $38                                         ; $468c: $ff
	or   $f7                                         ; $468d: $f6 $f7
	ld   de, $1131                                   ; $468f: $11 $31 $11
	ld   de, $1a16                                   ; $4692: $11 $16 $1a
	db   $fd                                         ; $4695: $fd
	rst  $38                                         ; $4696: $ff
	rst  $38                                         ; $4697: $ff
	rst  $38                                         ; $4698: $ff
	rst  $38                                         ; $4699: $ff
	ld   a, a                                        ; $469a: $7f
	ld   hl, $1112                                   ; $469b: $21 $12 $11
	ld   de, $3111                                   ; $469e: $11 $11 $31
	rst  JumpTable                                         ; $46a1: $df
	rst  $38                                         ; $46a2: $ff
	rst  $38                                         ; $46a3: $ff
	rst  $38                                         ; $46a4: $ff
	rst  $38                                         ; $46a5: $ff
	ld   a, [$11f1]                                  ; $46a6: $fa $f1 $11
	ld   de, $1111                                   ; $46a9: $11 $11 $11
	ld   de, $ef1f                                   ; $46ac: $11 $1f $ef
	rst  $38                                         ; $46af: $ff
	rst  $38                                         ; $46b0: $ff
	rst  $38                                         ; $46b1: $ff
	cp   $ff                                         ; $46b2: $fe $ff
	ld   de, $1111                                   ; $46b4: $11 $11 $11
	ld   de, $1111                                   ; $46b7: $11 $11 $11
	db   $fd                                         ; $46ba: $fd
	rst  $38                                         ; $46bb: $ff
	rst  $38                                         ; $46bc: $ff
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	rst  JumpTable                                         ; $46bf: $df
	pop  bc                                          ; $46c0: $c1
	ld   [de], a                                     ; $46c1: $12
	ld   de, $1111                                   ; $46c2: $11 $11 $11
	ld   de, $ef1f                                   ; $46c5: $11 $1f $ef
	rst  $38                                         ; $46c8: $ff
	rst  $38                                         ; $46c9: $ff
	rst  $38                                         ; $46ca: $ff
	db   $fd                                         ; $46cb: $fd
	rst  $30                                         ; $46cc: $f7
	ld   de, $1121                                   ; $46cd: $11 $21 $11
	ld   de, $1311                                   ; $46d0: $11 $11 $13
	rst  $38                                         ; $46d3: $ff
	rst  $38                                         ; $46d4: $ff
	rst  $38                                         ; $46d5: $ff
	rst  $38                                         ; $46d6: $ff
	rst  $38                                         ; $46d7: $ff
	rst  $38                                         ; $46d8: $ff
	ld   sp, $1111                                   ; $46d9: $31 $11 $11
	ld   de, $1111                                   ; $46dc: $11 $11 $11
	adc  [hl]                                        ; $46df: $8e
	rst  $38                                         ; $46e0: $ff
	rst  $38                                         ; $46e1: $ff
	rst  $38                                         ; $46e2: $ff
	rst  $38                                         ; $46e3: $ff
	rst  $38                                         ; $46e4: $ff
	pop  af                                          ; $46e5: $f1
	ld   de, $1111                                   ; $46e6: $11 $11 $11
	ld   de, $1d11                                   ; $46e9: $11 $11 $1d
	rst  JumpTable                                         ; $46ec: $df
	rst  $38                                         ; $46ed: $ff
	rst  $38                                         ; $46ee: $ff
	rst  $38                                         ; $46ef: $ff
	rst  $38                                         ; $46f0: $ff
	rst  $38                                         ; $46f1: $ff
	ld   de, $1111                                   ; $46f2: $11 $11 $11
	ld   de, $1111                                   ; $46f5: $11 $11 $11
	db   $ec                                         ; $46f8: $ec
	rst  $38                                         ; $46f9: $ff
	rst  $38                                         ; $46fa: $ff
	rst  $38                                         ; $46fb: $ff
	rst  $38                                         ; $46fc: $ff
	rst  $38                                         ; $46fd: $ff
	ld   h, c                                        ; $46fe: $61
	ld   de, $1111                                   ; $46ff: $11 $11 $11
	ld   de, $8d11                                   ; $4702: $11 $11 $8d
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	rst  $38                                         ; $4707: $ff
	rst  $38                                         ; $4708: $ff
	rst  $38                                         ; $4709: $ff
	pop  af                                          ; $470a: $f1
	ld   de, $1111                                   ; $470b: $11 $11 $11
	ld   de, $1f11                                   ; $470e: $11 $11 $1f
	cp   a                                           ; $4711: $bf
	rst  $38                                         ; $4712: $ff
	rst  $38                                         ; $4713: $ff
	rst  $38                                         ; $4714: $ff
	cp   $f9                                         ; $4715: $fe $f9
	ld   de, $1111                                   ; $4717: $11 $11 $11
	ld   de, $1711                                   ; $471a: $11 $11 $17
	rst  $38                                         ; $471d: $ff
	rst  $38                                         ; $471e: $ff
	rst  $38                                         ; $471f: $ff
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4722: $cf
	ld   de, $1111                                   ; $4723: $11 $11 $11
	ld   de, $1111                                   ; $4726: $11 $11 $11
	db   $fc                                         ; $4729: $fc
	rst  $38                                         ; $472a: $ff
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	rst  $38                                         ; $472d: $ff
	xor  $61                                         ; $472e: $ee $61
	ld   de, $1111                                   ; $4730: $11 $11 $11
	ld   de, $df11                                   ; $4733: $11 $11 $df
	rst  $38                                         ; $4736: $ff
	rst  $38                                         ; $4737: $ff
	rst  $38                                         ; $4738: $ff
	rst  $38                                         ; $4739: $ff
	ei                                               ; $473a: $fb
	and  c                                           ; $473b: $a1
	ld   de, $1111                                   ; $473c: $11 $11 $11
	ld   de, $7f21                                   ; $473f: $11 $21 $7f
	rst  $38                                         ; $4742: $ff
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	ld   a, [$11a1]                                  ; $4746: $fa $a1 $11
	ld   de, $1111                                   ; $4749: $11 $11 $11
	ld   sp, $ff3f                                   ; $474c: $31 $3f $ff
	rst  $38                                         ; $474f: $ff
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	ld   a, [$1171]                                  ; $4752: $fa $71 $11
	ld   de, $1111                                   ; $4755: $11 $11 $11
	ld   sp, $ff3f                                   ; $4758: $31 $3f $ff
	rst  $38                                         ; $475b: $ff
	rst  $38                                         ; $475c: $ff
	rst  $38                                         ; $475d: $ff
	ei                                               ; $475e: $fb
	ld   b, c                                        ; $475f: $41
	ld   de, $1111                                   ; $4760: $11 $11 $11
	ld   de, $7f41                                   ; $4763: $11 $41 $7f
	rst  $38                                         ; $4766: $ff
	rst  $38                                         ; $4767: $ff
	rst  $38                                         ; $4768: $ff
	rst  $38                                         ; $4769: $ff
	ld   a, [$1111]                                  ; $476a: $fa $11 $11
	ld   de, $1111                                   ; $476d: $11 $11 $11
	ld   h, c                                        ; $4770: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4771: $cf
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	rst  $38                                         ; $4775: $ff
	or   $11                                         ; $4776: $f6 $11
	ld   de, $1111                                   ; $4778: $11 $11 $11
	ld   de, $ff53                                   ; $477b: $11 $53 $ff
	rst  $38                                         ; $477e: $ff
	rst  $38                                         ; $477f: $ff
	rst  $38                                         ; $4780: $ff
	rst  $38                                         ; $4781: $ff
	or   c                                           ; $4782: $b1
	ld   de, $1111                                   ; $4783: $11 $11 $11
	ld   de, $4d13                                   ; $4786: $11 $13 $4d
	rst  $38                                         ; $4789: $ff
	rst  $38                                         ; $478a: $ff
	rst  $38                                         ; $478b: $ff
	rst  $38                                         ; $478c: $ff
	rst  $38                                         ; $478d: $ff
	ld   de, $1111                                   ; $478e: $11 $11 $11
	ld   de, $1711                                   ; $4791: $11 $11 $17
	sbc  a                                           ; $4794: $9f
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	push af                                          ; $4799: $f5
	ld   de, $1111                                   ; $479a: $11 $11 $11
	ld   de, $8811                                   ; $479d: $11 $11 $88
	rst  $38                                         ; $47a0: $ff
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	ld   [hl], c                                     ; $47a5: $71
	ld   de, $1111                                   ; $47a6: $11 $11 $11
	ld   de, $9f17                                   ; $47a9: $11 $17 $9f
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	ld   hl, sp+$11                                  ; $47b0: $f8 $11
	ld   de, $1111                                   ; $47b2: $11 $11 $11
	ld   de, $ff9a                                   ; $47b5: $11 $9a $ff
	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	ld   d, c                                        ; $47bc: $51
	ld   de, $1111                                   ; $47bd: $11 $11 $11
	ld   de, $ff1b                                   ; $47c0: $11 $1b $ff
	rst  $38                                         ; $47c3: $ff
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	pop  af                                          ; $47c7: $f1
	ld   de, $1111                                   ; $47c8: $11 $11 $11
	ld   de, $df11                                   ; $47cb: $11 $11 $df
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	rst  $38                                         ; $47d2: $ff
	ld   de, $1111                                   ; $47d3: $11 $11 $11
	ld   de, $1d51                                   ; $47d6: $11 $51 $1d
	rst  $38                                         ; $47d9: $ff
	ld   e, a                                        ; $47da: $5f
	rst  $38                                         ; $47db: $ff
	rst  $38                                         ; $47dc: $ff
	rst  $38                                         ; $47dd: $ff
	pop  bc                                          ; $47de: $c1
	ld   de, $1181                                   ; $47df: $11 $81 $11
	ld   l, $14                                      ; $47e2: $2e $14
	rst  $38                                         ; $47e4: $ff
	ei                                               ; $47e5: $fb
	rst  $38                                         ; $47e6: $ff
	rst  $38                                         ; $47e7: $ff
	rst  JumpTable                                         ; $47e8: $df
	pop  af                                          ; $47e9: $f1
	ld   de, $1111                                   ; $47ea: $11 $11 $11
	rra                                              ; $47ed: $1f
	pop  hl                                          ; $47ee: $e1
	ld   e, a                                        ; $47ef: $5f
	ei                                               ; $47f0: $fb
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	rst  ToBoot                                         ; $47f3: $c7
	ld   a, [$1711]                                  ; $47f4: $fa $11 $17
	ld   de, $f915                                   ; $47f7: $11 $15 $f9
	ld   l, a                                        ; $47fa: $6f
	rst  $38                                         ; $47fb: $ff
	rst  $38                                         ; $47fc: $ff
	rst  $38                                         ; $47fd: $ff
	ld   hl, sp+$2b                                  ; $47fe: $f8 $2b
	ld   de, $1111                                   ; $4800: $11 $11 $11
	ld   de, $ecff                                   ; $4803: $11 $ff $ec
	rst  $38                                         ; $4806: $ff
	rst  $38                                         ; $4807: $ff
	rst  $38                                         ; $4808: $ff
	cp   $15                                         ; $4809: $fe $15
	ld   de, $1111                                   ; $480b: $11 $11 $11
	ld   hl, $fdff                                   ; $480e: $21 $ff $fd
	rst  $38                                         ; $4811: $ff
	rst  $38                                         ; $4812: $ff
	xor  a                                           ; $4813: $af
	rst  $38                                         ; $4814: $ff
	ld   de, $1111                                   ; $4815: $11 $11 $11
	ld   de, $ff61                                   ; $4818: $11 $61 $ff
	rst  $38                                         ; $481b: $ff
	rst  $38                                         ; $481c: $ff
	rst  $38                                         ; $481d: $ff
	ld   e, a                                        ; $481e: $5f
	cp   $21                                         ; $481f: $fe $21
	ld   de, $1111                                   ; $4821: $11 $11 $11
	sub  c                                           ; $4824: $91
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	rst  $38                                         ; $4827: $ff
	rst  $38                                         ; $4828: $ff
	ld   e, a                                        ; $4829: $5f
	db   $fd                                         ; $482a: $fd
	ld   sp, $1111                                   ; $482b: $31 $11 $11
	ld   de, $ff81                                   ; $482e: $11 $81 $ff
	rst  $38                                         ; $4831: $ff
	rst  $38                                         ; $4832: $ff
	rst  $38                                         ; $4833: $ff
	ld   c, a                                        ; $4834: $4f
	cp   $21                                         ; $4835: $fe $21
	ld   de, $1111                                   ; $4837: $11 $11 $11
	sub  e                                           ; $483a: $93
	rst  $38                                         ; $483b: $ff
	rst  $38                                         ; $483c: $ff
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	ld   c, a                                        ; $483f: $4f
	rst  $38                                         ; $4840: $ff
	ld   de, $1111                                   ; $4841: $11 $11 $11
	ld   de, $ff75                                   ; $4844: $11 $75 $ff
	rst  $38                                         ; $4847: $ff
	rst  $38                                         ; $4848: $ff
	rst  $38                                         ; $4849: $ff
	ld   l, a                                        ; $484a: $6f
	rst  $38                                         ; $484b: $ff
	ld   de, $1111                                   ; $484c: $11 $11 $11
	dec  d                                           ; $484f: $15
	ld   c, e                                        ; $4850: $4b
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	rst  $38                                         ; $4853: $ff
	ld   a, [$cfaf]                                  ; $4854: $fa $af $cf
	ld   de, $1111                                   ; $4857: $11 $11 $11
	dec  d                                           ; $485a: $15
	ccf                                              ; $485b: $3f
	rst  $38                                         ; $485c: $ff
	rst  $38                                         ; $485d: $ff
	rst  $38                                         ; $485e: $ff
	or   $ff                                         ; $485f: $f6 $ff
	rst  JumpTable                                         ; $4861: $df
	ld   de, $1111                                   ; $4862: $11 $11 $11
	add  hl, de                                      ; $4865: $19
	rra                                              ; $4866: $1f
	rst  $38                                         ; $4867: $ff
	rst  $38                                         ; $4868: $ff
	rst  $38                                         ; $4869: $ff
	pop  af                                          ; $486a: $f1
	rst  $38                                         ; $486b: $ff
	cp   $11                                         ; $486c: $fe $11
	ld   de, $1821                                   ; $486e: $11 $21 $18
	ccf                                              ; $4871: $3f
	rst  $38                                         ; $4872: $ff
	rst  JumpTable                                         ; $4873: $df
	rst  $38                                         ; $4874: $ff
	pop  af                                          ; $4875: $f1
	rst  $38                                         ; $4876: $ff
	or   $11                                         ; $4877: $f6 $11
	ld   de, $2651                                   ; $4879: $11 $51 $26
	ld   e, a                                        ; $487c: $5f
	rst  $38                                         ; $487d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $487e: $cf
	rst  $38                                         ; $487f: $ff
	or   $fd                                         ; $4880: $f6 $fd
	pop  af                                          ; $4882: $f1
	ld   de, $7211                                   ; $4883: $11 $11 $72
	sub  e                                           ; $4886: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4887: $cf
	rst  $38                                         ; $4888: $ff
	sbc  a                                           ; $4889: $9f
	rst  $38                                         ; $488a: $ff
	xor  a                                           ; $488b: $af
	db   $fc                                         ; $488c: $fc
	pop  af                                          ; $488d: $f1
	ld   de, $9411                                   ; $488e: $11 $11 $94
	and  c                                           ; $4891: $a1
	rst  $38                                         ; $4892: $ff
	rst  $38                                         ; $4893: $ff
	adc  a                                           ; $4894: $8f
	rst  $38                                         ; $4895: $ff
	sbc  a                                           ; $4896: $9f
	rst  $38                                         ; $4897: $ff
	pop  af                                          ; $4898: $f1
	ld   de, $9a12                                   ; $4899: $11 $12 $9a
	or   c                                           ; $489c: $b1
	rst  $38                                         ; $489d: $ff
	rst  $38                                         ; $489e: $ff
	sbc  c                                           ; $489f: $99
	rst  $38                                         ; $48a0: $ff
	cp   a                                           ; $48a1: $bf
	xor  a                                           ; $48a2: $af
	sub  c                                           ; $48a3: $91
	ld   de, $8e14                                   ; $48a4: $11 $14 $8e
	add  c                                           ; $48a7: $81
	rst  $38                                         ; $48a8: $ff
	rst  $38                                         ; $48a9: $ff
	or   [hl]                                        ; $48aa: $b6
	rst  $38                                         ; $48ab: $ff
	rst  $38                                         ; $48ac: $ff
	ld   a, a                                        ; $48ad: $7f
	ld   de, $1411                                   ; $48ae: $11 $11 $14
	cp   a                                           ; $48b1: $bf
	ld   b, a                                        ; $48b2: $47
	rst  $38                                         ; $48b3: $ff
	rst  $38                                         ; $48b4: $ff
	and  a                                           ; $48b5: $a7
	rst  $38                                         ; $48b6: $ff
	rst  $38                                         ; $48b7: $ff
	cp   a                                           ; $48b8: $bf
	ld   de, $1511                                   ; $48b9: $11 $11 $15
	rst  $38                                         ; $48bc: $ff
	cpl                                              ; $48bd: $2f
	rst  $38                                         ; $48be: $ff
	db   $fc                                         ; $48bf: $fc
	ld   l, h                                        ; $48c0: $6c
	rst  $38                                         ; $48c1: $ff
	cp   $f5                                         ; $48c2: $fe $f5
	ld   de, $1811                                   ; $48c4: $11 $11 $18
	cp   $3f                                         ; $48c7: $fe $3f
	rst  $38                                         ; $48c9: $ff
	ei                                               ; $48ca: $fb
	ld   e, [hl]                                     ; $48cb: $5e
	rst  $38                                         ; $48cc: $ff
	db   $fd                                         ; $48cd: $fd
	pop  af                                          ; $48ce: $f1
	ld   de, $1b11                                   ; $48cf: $11 $11 $1b
	ld   hl, sp-$51                                  ; $48d2: $f8 $af
	rst  $38                                         ; $48d4: $ff
	ld   sp, hl                                      ; $48d5: $f9
	ld   l, a                                        ; $48d6: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48d7: $cf
	rst  $38                                         ; $48d8: $ff
	or   c                                           ; $48d9: $b1
	ld   de, $3f11                                   ; $48da: $11 $11 $3f
	push af                                          ; $48dd: $f5
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	and  $ae                                         ; $48e0: $e6 $ae
	rst  $38                                         ; $48e2: $ff
	rst  $38                                         ; $48e3: $ff
	ld   de, $1111                                   ; $48e4: $11 $11 $11
	xor  a                                           ; $48e7: $af
	reti                                             ; $48e8: $d9


	rst  $38                                         ; $48e9: $ff
	rst  $38                                         ; $48ea: $ff
	and  l                                           ; $48eb: $a5
	call z, $feff                                    ; $48ec: $cc $ff $fe
	ld   de, $1111                                   ; $48ef: $11 $11 $11
	rst  $38                                         ; $48f2: $ff
	ld   a, a                                        ; $48f3: $7f
	rst  $38                                         ; $48f4: $ff
	rst  $38                                         ; $48f5: $ff
	ld   e, b                                        ; $48f6: $58
	cp   a                                           ; $48f7: $bf
	rst  $38                                         ; $48f8: $ff
	ldh  a, [c]                                      ; $48f9: $f2
	ld   de, $1711                                   ; $48fa: $11 $11 $17
	rst  $38                                         ; $48fd: $ff
	sbc  a                                           ; $48fe: $9f
	rst  $38                                         ; $48ff: $ff
	ld   a, [$af4b]                                  ; $4900: $fa $4b $af
	rst  $38                                         ; $4903: $ff
	pop  af                                          ; $4904: $f1
	ld   de, $1f11                                   ; $4905: $11 $11 $1f
	ld   sp, hl                                      ; $4908: $f9
	rst  $28                                         ; $4909: $ef
	rst  $38                                         ; $490a: $ff
	or   $5b                                         ; $490b: $f6 $5b
	rst  JumpTable                                         ; $490d: $df
	rst  $38                                         ; $490e: $ff
	ld   d, c                                        ; $490f: $51
	ld   de, $7f11                                   ; $4910: $11 $11 $7f
	ld   sp, hl                                      ; $4913: $f9
	rst  $38                                         ; $4914: $ff
	rst  $38                                         ; $4915: $ff
	or   e                                           ; $4916: $b3
	adc  b                                           ; $4917: $88
	rst  $38                                         ; $4918: $ff
	rst  $38                                         ; $4919: $ff
	ld   de, $1211                                   ; $491a: $11 $11 $12
	rst  $38                                         ; $491d: $ff
	sbc  a                                           ; $491e: $9f
	rst  $38                                         ; $491f: $ff
	rst  $38                                         ; $4920: $ff
	ld   h, h                                        ; $4921: $64
	adc  h                                           ; $4922: $8c
	rst  $38                                         ; $4923: $ff
	or   $11                                         ; $4924: $f6 $11
	ld   de, $ff28                                   ; $4926: $11 $28 $ff
	sbc  a                                           ; $4929: $9f
	rst  $38                                         ; $492a: $ff
	db   $fc                                         ; $492b: $fc
	ld   h, $7f                                      ; $492c: $26 $7f
	rst  $38                                         ; $492e: $ff
	pop  af                                          ; $492f: $f1
	ld   de, $4f11                                   ; $4930: $11 $11 $4f
	ld   a, [$ffdf]                                  ; $4933: $fa $df $ff
	push af                                          ; $4936: $f5
	dec  h                                           ; $4937: $25
	xor  a                                           ; $4938: $af
	rst  $38                                         ; $4939: $ff
	ld   h, c                                        ; $493a: $61
	ld   de, $cf13                                   ; $493b: $11 $13 $cf
	ld   hl, sp-$01                                  ; $493e: $f8 $ff
	rst  $38                                         ; $4940: $ff
	pop  bc                                          ; $4941: $c1
	ld   b, l                                        ; $4942: $45
	rst  $38                                         ; $4943: $ff
	rst  $38                                         ; $4944: $ff
	ld   de, $1711                                   ; $4945: $11 $11 $17
	rst  $38                                         ; $4948: $ff
	xor  l                                           ; $4949: $ad
	rst  $38                                         ; $494a: $ff
	rst  $38                                         ; $494b: $ff
	ld   d, c                                        ; $494c: $51
	inc  a                                           ; $494d: $3c
	rst  $38                                         ; $494e: $ff
	di                                               ; $494f: $f3
	ld   de, $5f11                                   ; $4950: $11 $11 $5f
	rst  $38                                         ; $4953: $ff
	sbc  a                                           ; $4954: $9f
	rst  $38                                         ; $4955: $ff
	ei                                               ; $4956: $fb
	ld   [bc], a                                     ; $4957: $02
	ld   c, a                                        ; $4958: $4f
	rst  $38                                         ; $4959: $ff
	pop  af                                          ; $495a: $f1
	ld   de, $cf11                                   ; $495b: $11 $11 $cf
	ld   sp, hl                                      ; $495e: $f9
	adc  $ff                                         ; $495f: $ce $ff
	db   $f4                                         ; $4961: $f4
	ld   de, $ffdf                                   ; $4962: $11 $df $ff
	ld   de, $1711                                   ; $4965: $11 $11 $17
	rst  $38                                         ; $4968: $ff
	ld   a, [$ffbe]                                  ; $4969: $fa $be $ff
	pop  de                                          ; $496c: $d1
	inc  b                                           ; $496d: $04
	rst  $38                                         ; $496e: $ff
	rst  $38                                         ; $496f: $ff
	ld   de, $3f11                                   ; $4970: $11 $11 $3f
	rst  $38                                         ; $4973: $ff
	sbc  c                                           ; $4974: $99
	xor  a                                           ; $4975: $af
	rst  $38                                         ; $4976: $ff
	ld   h, c                                        ; $4977: $61
	ld   e, $ff                                      ; $4978: $1e $ff
	pop  af                                          ; $497a: $f1
	ld   de, $bf11                                   ; $497b: $11 $11 $bf
	cp   $85                                         ; $497e: $fe $85
	cp   a                                           ; $4980: $bf
	rst  $38                                         ; $4981: $ff
	ld   hl, $ff2f                                   ; $4982: $21 $2f $ff
	pop  hl                                          ; $4985: $e1
	ld   de, rAUD1LOW                                   ; $4986: $11 $13 $ff
	ei                                               ; $4989: $fb
	ld   b, h                                        ; $498a: $44
	rst  $38                                         ; $498b: $ff
	ld   a, [$df21]                                  ; $498c: $fa $21 $df
	rst  $38                                         ; $498f: $ff
	ld   de, $1d11                                   ; $4990: $11 $11 $1d
	rst  $38                                         ; $4993: $ff
	ld   sp, hl                                      ; $4994: $f9
	dec  d                                           ; $4995: $15
	rst  $38                                         ; $4996: $ff
	ld   a, [$ff34]                                  ; $4997: $fa $34 $ff
	db   $fc                                         ; $499a: $fc
	ld   de, $1f11                                   ; $499b: $11 $11 $1f
	rst  $38                                         ; $499e: $ff
	push af                                          ; $499f: $f5
	ld   d, $ef                                      ; $49a0: $16 $ef
	db   $fc                                         ; $49a2: $fc
	ld   l, l                                        ; $49a3: $6d
	rst  $38                                         ; $49a4: $ff
	ldh  a, [c]                                      ; $49a5: $f2
	ld   de, $4f11                                   ; $49a6: $11 $11 $4f
	rst  $38                                         ; $49a9: $ff
	di                                               ; $49aa: $f3
	inc  de                                          ; $49ab: $13
	xor  [hl]                                        ; $49ac: $ae
	rst  $38                                         ; $49ad: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49ae: $cf
	rst  $38                                         ; $49af: $ff
	add  c                                           ; $49b0: $81
	ld   de, $af11                                   ; $49b1: $11 $11 $af
	rst  $38                                         ; $49b4: $ff
	pop  bc                                          ; $49b5: $c1
	ld   de, $ff7d                                   ; $49b6: $11 $7d $ff
	rst  $38                                         ; $49b9: $ff
	db   $db                                         ; $49ba: $db
	ld   h, c                                        ; $49bb: $61
	ld   de, rAUD1LEN                                   ; $49bc: $11 $11 $ff
	rst  $38                                         ; $49bf: $ff
	ld   h, c                                        ; $49c0: $61
	ld   de, $ff6e                                   ; $49c1: $11 $6e $ff
	cp   $ca                                         ; $49c4: $fe $ca
	ld   h, c                                        ; $49c6: $61
	ld   de, rAUD1HIGH                                   ; $49c7: $11 $14 $ff
	ei                                               ; $49ca: $fb
	ld   de, $7f11                                   ; $49cb: $11 $11 $7f
	rst  $38                                         ; $49ce: $ff
	db   $fc                                         ; $49cf: $fc
	cp   h                                           ; $49d0: $bc
	sub  d                                           ; $49d1: $92
	ld   de, $ff18                                   ; $49d2: $11 $18 $ff
	rst  $30                                         ; $49d5: $f7
	ld   de, $8f11                                   ; $49d6: $11 $11 $8f
	rst  $38                                         ; $49d9: $ff
	ei                                               ; $49da: $fb
	call c, $11a3                                    ; $49db: $dc $a3 $11
	dec  de                                          ; $49de: $1b
	rst  $38                                         ; $49df: $ff
	jp   $1111                                       ; $49e0: $c3 $11 $11


	xor  a                                           ; $49e3: $af
	rst  $38                                         ; $49e4: $ff
	db   $eb                                         ; $49e5: $eb
	db   $ec                                         ; $49e6: $ec
	and  h                                           ; $49e7: $a4
	ld   de, $ff2e                                   ; $49e8: $11 $2e $ff
	sub  c                                           ; $49eb: $91
	ld   de, $af11                                   ; $49ec: $11 $11 $af
	rst  $38                                         ; $49ef: $ff
	call c, $b5ee                                    ; $49f0: $dc $ee $b5
	ld   de, $ff4f                                   ; $49f3: $11 $4f $ff
	add  c                                           ; $49f6: $81
	ld   de, $bf12                                   ; $49f7: $11 $12 $bf
	rst  $38                                         ; $49fa: $ff
	call z, $d6fe                                    ; $49fb: $cc $fe $d6
	ld   de, $ff6f                                   ; $49fe: $11 $6f $ff
	ld   [hl], c                                     ; $4a01: $71
	ld   de, $af12                                   ; $4a02: $11 $12 $af
	cp   $cc                                         ; $4a05: $fe $cc
	xor  $d8                                         ; $4a07: $ee $d8
	ld   [hl+], a                                    ; $4a09: $22
	adc  a                                           ; $4a0a: $8f
	cp   $51                                         ; $4a0b: $fe $51
	ld   de, $ae12                                   ; $4a0d: $11 $12 $ae
	cp   $bd                                         ; $4a10: $fe $bd
	rst  $38                                         ; $4a12: $ff
	ld   sp, hl                                      ; $4a13: $f9
	inc  [hl]                                        ; $4a14: $34
	xor  a                                           ; $4a15: $af
	cp   $41                                         ; $4a16: $fe $41
	ld   de, $9e12                                   ; $4a18: $11 $12 $9e
	db   $dd                                         ; $4a1b: $dd
	call $fbff                                       ; $4a1c: $cd $ff $fb
	ld   d, [hl]                                     ; $4a1f: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a20: $cf
	db   $fc                                         ; $4a21: $fc
	ld   sp, $1211                                   ; $4a22: $31 $11 $12
	sbc  l                                           ; $4a25: $9d
	call z, $ffbd                                    ; $4a26: $cc $bd $ff
	ei                                               ; $4a29: $fb
	ld   d, a                                        ; $4a2a: $57
	rst  JumpTable                                         ; $4a2b: $df
	db   $fc                                         ; $4a2c: $fc
	ld   sp, $1111                                   ; $4a2d: $31 $11 $11
	adc  e                                           ; $4a30: $8b
	cp   e                                           ; $4a31: $bb
	adc  $ff                                         ; $4a32: $ce $ff
	db   $fc                                         ; $4a34: $fc
	ld   l, b                                        ; $4a35: $68
	rst  $28                                         ; $4a36: $ef
	db   $fc                                         ; $4a37: $fc
	ld   sp, $1111                                   ; $4a38: $31 $11 $11
	ld   a, d                                        ; $4a3b: $7a
	set  3, [hl]                                     ; $4a3c: $cb $de
	rst  $38                                         ; $4a3e: $ff
	db   $fc                                         ; $4a3f: $fc
	ld   a, b                                        ; $4a40: $78
	rst  JumpTable                                         ; $4a41: $df
	db   $fc                                         ; $4a42: $fc
	ld   sp, $1111                                   ; $4a43: $31 $11 $11
	ld   l, d                                        ; $4a46: $6a
	cp   e                                           ; $4a47: $bb
	call $fdff                                       ; $4a48: $cd $ff $fd
	ld   a, c                                        ; $4a4b: $79
	rst  $28                                         ; $4a4c: $ef
	ei                                               ; $4a4d: $fb
	ld   sp, $1111                                   ; $4a4e: $31 $11 $11
	ld   l, d                                        ; $4a51: $6a
	set  3, [hl]                                     ; $4a52: $cb $de
	rst  $38                                         ; $4a54: $ff
	db   $fd                                         ; $4a55: $fd
	ld   a, c                                        ; $4a56: $79
	rst  JumpTable                                         ; $4a57: $df
	db   $fc                                         ; $4a58: $fc
	ld   sp, $1111                                   ; $4a59: $31 $11 $11
	ld   l, c                                        ; $4a5c: $69
	set  1, [hl]                                     ; $4a5d: $cb $ce
	rst  $38                                         ; $4a5f: $ff
	db   $fd                                         ; $4a60: $fd
	ld   a, b                                        ; $4a61: $78
	rst  $28                                         ; $4a62: $ef
	db   $fc                                         ; $4a63: $fc
	ld   sp, $1111                                   ; $4a64: $31 $11 $11
	ld   l, d                                        ; $4a67: $6a
	cp   d                                           ; $4a68: $ba
	call $fcff                                       ; $4a69: $cd $ff $fc
	ld   a, b                                        ; $4a6c: $78
	rst  JumpTable                                         ; $4a6d: $df
	db   $fd                                         ; $4a6e: $fd
	ld   sp, $1111                                   ; $4a6f: $31 $11 $11
	ld   l, d                                        ; $4a72: $6a
	cp   e                                           ; $4a73: $bb
	db   $dd                                         ; $4a74: $dd
	rst  $38                                         ; $4a75: $ff
	db   $fc                                         ; $4a76: $fc
	ld   h, a                                        ; $4a77: $67
	rst  $28                                         ; $4a78: $ef
	db   $fc                                         ; $4a79: $fc
	ld   sp, $1111                                   ; $4a7a: $31 $11 $11
	ld   l, d                                        ; $4a7d: $6a
	set  3, [hl]                                     ; $4a7e: $cb $de
	rst  $38                                         ; $4a80: $ff
	ei                                               ; $4a81: $fb
	ld   d, a                                        ; $4a82: $57
	rst  $28                                         ; $4a83: $ef
	db   $fc                                         ; $4a84: $fc
	ld   sp, $1111                                   ; $4a85: $31 $11 $11
	ld   a, e                                        ; $4a88: $7b
	set  3, l                                        ; $4a89: $cb $dd
	rst  $38                                         ; $4a8b: $ff
	ld   a, [$ef57]                                  ; $4a8c: $fa $57 $ef
	db   $fd                                         ; $4a8f: $fd
	ld   sp, $1211                                   ; $4a90: $31 $11 $12
	ld   a, h                                        ; $4a93: $7c
	call c, $ffde                                    ; $4a94: $dc $de $ff
	ld   a, [$ef47]                                  ; $4a97: $fa $47 $ef
	ei                                               ; $4a9a: $fb
	ld   hl, $1311                                   ; $4a9b: $21 $11 $13
	sbc  l                                           ; $4a9e: $9d
	db   $ed                                         ; $4a9f: $ed
	xor  $ff                                         ; $4aa0: $ee $ff
	ret  c                                           ; $4aa2: $d8

	ld   h, $df                                      ; $4aa3: $26 $df
	ei                                               ; $4aa5: $fb
	ld   de, $1511                                   ; $4aa6: $11 $11 $15
	cp   a                                           ; $4aa9: $bf
	db   $fd                                         ; $4aaa: $fd
	db   $ed                                         ; $4aab: $ed
	rst  $38                                         ; $4aac: $ff
	push bc                                          ; $4aad: $c5
	dec  d                                           ; $4aae: $15
	rst  $28                                         ; $4aaf: $ef
	ld   a, [$1111]                                  ; $4ab0: $fa $11 $11
	rla                                              ; $4ab3: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ab4: $cf
	rst  $38                                         ; $4ab5: $ff
	db   $fd                                         ; $4ab6: $fd
	db   $ed                                         ; $4ab7: $ed
	and  d                                           ; $4ab8: $a2
	dec  d                                           ; $4ab9: $15
	rst  JumpTable                                         ; $4aba: $df
	ld   a, [$1111]                                  ; $4abb: $fa $11 $11
	ld   a, [de]                                     ; $4abe: $1a
	rst  $38                                         ; $4abf: $ff
	rst  $38                                         ; $4ac0: $ff
	db   $fc                                         ; $4ac1: $fc
	jp   z, $1151                                    ; $4ac2: $ca $51 $11

	xor  a                                           ; $4ac5: $af
	db   $fc                                         ; $4ac6: $fc
	ld   de, $5f11                                   ; $4ac7: $11 $11 $5f
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	db   $db                                         ; $4acc: $db
	ld   [hl], c                                     ; $4acd: $71
	ld   de, rAUD1LEN                                   ; $4ace: $11 $11 $ff
	rst  $38                                         ; $4ad1: $ff
	ld   sp, $cf11                                   ; $4ad2: $31 $11 $cf
	rst  $38                                         ; $4ad5: $ff
	rst  $38                                         ; $4ad6: $ff
	add  a                                           ; $4ad7: $87
	ld   de, $1c11                                   ; $4ad8: $11 $11 $1c
	rst  $38                                         ; $4adb: $ff
	rst  $38                                         ; $4adc: $ff
	ld   de, rAUD1HIGH                                   ; $4add: $11 $14 $ff
	rst  $38                                         ; $4ae0: $ff
	ei                                               ; $4ae1: $fb
	ld   b, c                                        ; $4ae2: $41
	ld   de, $6f11                                   ; $4ae3: $11 $11 $6f
	rst  $38                                         ; $4ae6: $ff
	db   $f4                                         ; $4ae7: $f4
	ld   de, $ff1e                                   ; $4ae8: $11 $1e $ff
	rst  $38                                         ; $4aeb: $ff
	db   $e3                                         ; $4aec: $e3
	ld   de, $1311                                   ; $4aed: $11 $11 $13
	rst  $38                                         ; $4af0: $ff
	rst  $38                                         ; $4af1: $ff
	ld   d, c                                        ; $4af2: $51
	ld   de, $ffcf                                   ; $4af3: $11 $cf $ff
	rst  $38                                         ; $4af6: $ff
	ld   de, $1111                                   ; $4af7: $11 $11 $11
	cpl                                              ; $4afa: $2f
	rst  $38                                         ; $4afb: $ff
	rst  $30                                         ; $4afc: $f7
	ld   de, $ff1a                                   ; $4afd: $11 $1a $ff
	rst  $38                                         ; $4b00: $ff
	pop  af                                          ; $4b01: $f1
	ld   de, $1211                                   ; $4b02: $11 $11 $12
	rst  $38                                         ; $4b05: $ff
	rst  $38                                         ; $4b06: $ff
	add  c                                           ; $4b07: $81
	ld   de, $ffaf                                   ; $4b08: $11 $af $ff
	cp   $11                                         ; $4b0b: $fe $11
	ld   de, $1f11                                   ; $4b0d: $11 $11 $1f
	rst  $38                                         ; $4b10: $ff
	di                                               ; $4b11: $f3
	ld   de, $ff1b                                   ; $4b12: $11 $1b $ff
	rst  $38                                         ; $4b15: $ff
	pop  de                                          ; $4b16: $d1
	ld   de, $1111                                   ; $4b17: $11 $11 $11
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	add  c                                           ; $4b1c: $81
	ld   de, $ff7f                                   ; $4b1d: $11 $7f $ff
	rst  $30                                         ; $4b20: $f7
	ld   de, $1111                                   ; $4b21: $11 $11 $11
	rra                                              ; $4b24: $1f
	rst  $38                                         ; $4b25: $ff
	ld   a, [$1711]                                  ; $4b26: $fa $11 $17
	rst  $38                                         ; $4b29: $ff
	rst  $38                                         ; $4b2a: $ff
	ld   b, c                                        ; $4b2b: $41
	ld   de, $1111                                   ; $4b2c: $11 $11 $11
	rst  $38                                         ; $4b2f: $ff
	rst  $38                                         ; $4b30: $ff
	pop  bc                                          ; $4b31: $c1
	ld   de, $ff7f                                   ; $4b32: $11 $7f $ff
	di                                               ; $4b35: $f3
	ld   de, $1111                                   ; $4b36: $11 $11 $11
	rra                                              ; $4b39: $1f
	rst  $38                                         ; $4b3a: $ff
	rst  $38                                         ; $4b3b: $ff
	ld   de, $ff15                                   ; $4b3c: $11 $15 $ff
	rst  $38                                         ; $4b3f: $ff
	ld   b, c                                        ; $4b40: $41
	ld   de, $1111                                   ; $4b41: $11 $11 $11
	rst  $38                                         ; $4b44: $ff
	rst  $38                                         ; $4b45: $ff
	pop  af                                          ; $4b46: $f1
	ld   de, $ff7f                                   ; $4b47: $11 $7f $ff
	rst  $30                                         ; $4b4a: $f7
	ld   de, $1111                                   ; $4b4b: $11 $11 $11
	jr   @+$01                                       ; $4b4e: $18 $ff

	rst  $38                                         ; $4b50: $ff
	ld   de, rAUD1LEN                                   ; $4b51: $11 $11 $ff
	rst  $38                                         ; $4b54: $ff
	add  c                                           ; $4b55: $81
	ld   de, $1111                                   ; $4b56: $11 $11 $11
	rra                                              ; $4b59: $1f
	rst  $38                                         ; $4b5a: $ff
	pop  af                                          ; $4b5b: $f1
	ld   de, $ff1f                                   ; $4b5c: $11 $1f $ff
	ei                                               ; $4b5f: $fb
	ld   de, $1111                                   ; $4b60: $11 $11 $11
	ld   de, $ffff                                   ; $4b63: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $4b66: $11 $11 $ff
	rst  $38                                         ; $4b69: $ff
	pop  hl                                          ; $4b6a: $e1
	ld   de, $1111                                   ; $4b6b: $11 $11 $11
	rra                                              ; $4b6e: $1f
	rst  $38                                         ; $4b6f: $ff
	pop  af                                          ; $4b70: $f1
	ld   de, $ff1f                                   ; $4b71: $11 $1f $ff
	rst  $38                                         ; $4b74: $ff
	ld   hl, $1111                                   ; $4b75: $21 $11 $11
	ld   de, $ffff                                   ; $4b78: $11 $ff $ff
	ld   b, c                                        ; $4b7b: $41
	ld   de, $ffef                                   ; $4b7c: $11 $ef $ff
	push af                                          ; $4b7f: $f5
	ld   de, $1111                                   ; $4b80: $11 $11 $11
	rra                                              ; $4b83: $1f
	rst  $38                                         ; $4b84: $ff
	db   $fd                                         ; $4b85: $fd
	ld   de, $ff19                                   ; $4b86: $11 $19 $ff
	rst  $38                                         ; $4b89: $ff
	sub  c                                           ; $4b8a: $91
	ld   de, $1111                                   ; $4b8b: $11 $11 $11
	sbc  a                                           ; $4b8e: $9f
	rst  $38                                         ; $4b8f: $ff
	pop  af                                          ; $4b90: $f1
	ld   de, $ff6f                                   ; $4b91: $11 $6f $ff
	ei                                               ; $4b94: $fb
	ld   de, $1111                                   ; $4b95: $11 $11 $11
	dec  d                                           ; $4b98: $15
	rst  $38                                         ; $4b99: $ff
	rst  $38                                         ; $4b9a: $ff
	ld   de, $ff17                                   ; $4b9b: $11 $17 $ff
	rst  $38                                         ; $4b9e: $ff
	pop  de                                          ; $4b9f: $d1
	ld   de, $1111                                   ; $4ba0: $11 $11 $11
	rra                                              ; $4ba3: $1f
	rst  $38                                         ; $4ba4: $ff
	pop  af                                          ; $4ba5: $f1
	ld   de, $ff6f                                   ; $4ba6: $11 $6f $ff
	rst  $38                                         ; $4ba9: $ff
	ld   de, $1111                                   ; $4baa: $11 $11 $11
	ld   de, $ffff                                   ; $4bad: $11 $ff $ff
	ld   de, $ff16                                   ; $4bb0: $11 $16 $ff
	rst  $38                                         ; $4bb3: $ff
	db   $f4                                         ; $4bb4: $f4
	ld   de, $1111                                   ; $4bb5: $11 $11 $11
	rra                                              ; $4bb8: $1f
	rst  $38                                         ; $4bb9: $ff
	db   $f4                                         ; $4bba: $f4
	ld   de, $ff16                                   ; $4bbb: $11 $16 $ff
	rst  $38                                         ; $4bbe: $ff
	ld   d, c                                        ; $4bbf: $51
	ld   de, $1111                                   ; $4bc0: $11 $11 $11
	rst  $38                                         ; $4bc3: $ff
	rst  $38                                         ; $4bc4: $ff
	ld   de, $cd14                                   ; $4bc5: $11 $14 $cd
	rst  $38                                         ; $4bc8: $ff
	ei                                               ; $4bc9: $fb
	ld   de, $1111                                   ; $4bca: $11 $11 $11
	rra                                              ; $4bcd: $1f
	rst  $38                                         ; $4bce: $ff
	ldh  a, [c]                                      ; $4bcf: $f2
	ld   de, $bf85                                   ; $4bd0: $11 $85 $bf
	rst  $38                                         ; $4bd3: $ff
	pop  bc                                          ; $4bd4: $c1
	ld   de, $1111                                   ; $4bd5: $11 $11 $11
	rst  $38                                         ; $4bd8: $ff
	rst  $38                                         ; $4bd9: $ff
	ld   h, c                                        ; $4bda: $61
	jr   jr_0d1_4c31                                 ; $4bdb: $18 $54

	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	ld   de, $1111                                   ; $4bdf: $11 $11 $11
	ld   e, $ff                                      ; $4be2: $1e $ff
	ld   hl, sp+$15                                  ; $4be4: $f8 $15
	and  c                                           ; $4be6: $a1
	dec  e                                           ; $4be7: $1d
	rst  $38                                         ; $4be8: $ff
	pop  af                                          ; $4be9: $f1
	ld   de, $1111                                   ; $4bea: $11 $11 $11
	cp   a                                           ; $4bed: $bf
	rst  $38                                         ; $4bee: $ff
	pop  bc                                          ; $4bef: $c1
	jp   z, $af11                                    ; $4bf0: $ca $11 $af

	rst  $38                                         ; $4bf3: $ff
	ld   de, $1111                                   ; $4bf4: $11 $11 $11
	dec  d                                           ; $4bf7: $15
	rst  $38                                         ; $4bf8: $ff
	db   $fc                                         ; $4bf9: $fc
	ld   a, a                                        ; $4bfa: $7f
	pop  de                                          ; $4bfb: $d1
	rla                                              ; $4bfc: $17
	rst  $38                                         ; $4bfd: $ff
	pop  af                                          ; $4bfe: $f1
	ld   de, $1111                                   ; $4bff: $11 $11 $11
	ld   l, a                                        ; $4c02: $6f
	rst  $38                                         ; $4c03: $ff
	rst  $38                                         ; $4c04: $ff
	cp   $11                                         ; $4c05: $fe $11
	ld   l, a                                        ; $4c07: $6f
	rst  $38                                         ; $4c08: $ff
	ld   de, $1171                                   ; $4c09: $11 $71 $11
	ld   de, $ffff                                   ; $4c0c: $11 $ff $ff
	rst  $38                                         ; $4c0f: $ff
	pop  af                                          ; $4c10: $f1
	inc  d                                           ; $4c11: $14
	rst  $38                                         ; $4c12: $ff
	pop  hl                                          ; $4c13: $e1
	adc  h                                           ; $4c14: $8c
	ld   de, $1f11                                   ; $4c15: $11 $11 $1f
	rst  $38                                         ; $4c18: $ff
	rst  $38                                         ; $4c19: $ff
	rst  $38                                         ; $4c1a: $ff
	ld   de, $fc2f                                   ; $4c1b: $11 $2f $fc
	ld   e, l                                        ; $4c1e: $5d
	pop  hl                                          ; $4c1f: $e1
	ld   de, rAUD1LEN                                   ; $4c20: $11 $11 $ff
	rst  $38                                         ; $4c23: $ff
	rst  $38                                         ; $4c24: $ff
	pop  af                                          ; $4c25: $f1
	inc  de                                          ; $4c26: $13
	rst  $38                                         ; $4c27: $ff
	ld   [hl], a                                     ; $4c28: $77
	rst  $38                                         ; $4c29: $ff
	ld   bc, $1f11                                   ; $4c2a: $01 $11 $1f
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	ld   d, c                                        ; $4c30: $51

jr_0d1_4c31:
	cpl                                              ; $4c31: $2f
	and  $7f                                         ; $4c32: $e6 $7f
	db   $f4                                         ; $4c34: $f4
	ld   de, $bf11                                   ; $4c35: $11 $11 $bf
	rst  $38                                         ; $4c38: $ff
	rst  $38                                         ; $4c39: $ff
	db   $fd                                         ; $4c3a: $fd
	inc  d                                           ; $4c3b: $14
	db   $db                                         ; $4c3c: $db
	inc  [hl]                                        ; $4c3d: $34
	rst  $38                                         ; $4c3e: $ff
	ld   h, c                                        ; $4c3f: $61
	ld   de, $ff16                                   ; $4c40: $11 $16 $ff
	rst  $38                                         ; $4c43: $ff
	rst  $38                                         ; $4c44: $ff
	push af                                          ; $4c45: $f5
	sbc  e                                           ; $4c46: $9b
	sub  d                                           ; $4c47: $92
	rra                                              ; $4c48: $1f
	ld   sp, hl                                      ; $4c49: $f9
	ld   de, $1f11                                   ; $4c4a: $11 $11 $1f
	rst  $38                                         ; $4c4d: $ff
	rst  $38                                         ; $4c4e: $ff
	rst  $38                                         ; $4c4f: $ff
	adc  h                                           ; $4c50: $8c
	ld   a, [$cf41]                                  ; $4c51: $fa $41 $cf
	sub  c                                           ; $4c54: $91
	ld   de, $ae11                                   ; $4c55: $11 $11 $ae
	rst  $38                                         ; $4c58: $ff
	rst  $38                                         ; $4c59: $ff
	rst  $38                                         ; $4c5a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c5b: $cf
	rst  $10                                         ; $4c5c: $d7
	ld   d, $fc                                      ; $4c5d: $16 $fc
	ld   sp, $1311                                   ; $4c5f: $31 $11 $13
	call z, $ffdf                                    ; $4c62: $cc $df $ff
	rst  $38                                         ; $4c65: $ff
	rst  JumpTable                                         ; $4c66: $df
	call nc, $ea2a                                   ; $4c67: $d4 $2a $ea
	ld   de, $1811                                   ; $4c6a: $11 $11 $18
	xor  c                                           ; $4c6d: $a9
	sbc  a                                           ; $4c6e: $9f
	rst  $38                                         ; $4c6f: $ff
	db   $fc                                         ; $4c70: $fc
	rst  $28                                         ; $4c71: $ef
	and  d                                           ; $4c72: $a2
	ld   c, h                                        ; $4c73: $4c
	ret  c                                           ; $4c74: $d8

	ld   de, $5811                                   ; $4c75: $11 $11 $58
	ld   [hl], a                                     ; $4c78: $77
	ld   a, c                                        ; $4c79: $79
	call z, Call_0d1_5775                            ; $4c7a: $cc $75 $57
	ld   h, h                                        ; $4c7d: $64
	ld   a, d                                        ; $4c7e: $7a
	db   $dd                                         ; $4c7f: $dd
	sbc  $dd                                         ; $4c80: $de $dd
	call z, $a8bb                                    ; $4c82: $cc $bb $a8
	ld   h, e                                        ; $4c85: $63
	ld   de, $1211                                   ; $4c86: $11 $11 $12
	ld   e, c                                        ; $4c89: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c8a: $cf
	rst  $38                                         ; $4c8b: $ff
	cp   $de                                         ; $4c8c: $fe $de
	xor  $c8                                         ; $4c8e: $ee $c8
	ld   h, h                                        ; $4c90: $64
	ld   de, $1111                                   ; $4c91: $11 $11 $11
	inc  d                                           ; $4c94: $14
	ld   a, d                                        ; $4c95: $7a
	cp   l                                           ; $4c96: $bd
	sbc  $ff                                         ; $4c97: $de $ff
	rst  $38                                         ; $4c99: $ff
	cp   $b9                                         ; $4c9a: $fe $b9
	ld   d, d                                        ; $4c9c: $52
	ld   de, $1111                                   ; $4c9d: $11 $11 $11
	dec  [hl]                                        ; $4ca0: $35
	ld   d, [hl]                                     ; $4ca1: $56
	adc  h                                           ; $4ca2: $8c
	rst  $28                                         ; $4ca3: $ef
	rst  $38                                         ; $4ca4: $ff
	xor  $eb                                         ; $4ca5: $ee $eb
	sub  a                                           ; $4ca7: $97
	ld   h, l                                        ; $4ca8: $65
	ld   b, d                                        ; $4ca9: $42
	ld   de, $1111                                   ; $4caa: $11 $11 $11
	ld   b, a                                        ; $4cad: $47
	xor  h                                           ; $4cae: $ac
	sbc  $ef                                         ; $4caf: $de $ef
	db   $dd                                         ; $4cb1: $dd
	call z, $97cb                                    ; $4cb2: $cc $cb $97
	ld   h, l                                        ; $4cb5: $65
	ld   hl, $1211                                   ; $4cb6: $21 $11 $12
	ld   b, [hl]                                     ; $4cb9: $46
	adc  d                                           ; $4cba: $8a
	set  1, h                                        ; $4cbb: $cb $cc
	call $caed                                       ; $4cbd: $cd $ed $ca
	sub  a                                           ; $4cc0: $97
	ld   b, d                                        ; $4cc1: $42
	ld   de, $2322                                   ; $4cc2: $11 $22 $23
	ld   d, a                                        ; $4cc5: $57
	adc  c                                           ; $4cc6: $89
	xor  h                                           ; $4cc7: $ac
	xor  $fe                                         ; $4cc8: $ee $fe
	xor  $ca                                         ; $4cca: $ee $ca
	ld   h, h                                        ; $4ccc: $64
	ld   d, l                                        ; $4ccd: $55
	ld   d, e                                        ; $4cce: $53
	ld   [hl+], a                                    ; $4ccf: $22
	inc  hl                                          ; $4cd0: $23
	inc  hl                                          ; $4cd1: $23
	ld   e, b                                        ; $4cd2: $58
	sbc  d                                           ; $4cd3: $9a
	cp   h                                           ; $4cd4: $bc
	xor  $ee                                         ; $4cd5: $ee $ee
	call c, $87ca                                    ; $4cd7: $dc $ca $87
	ld   h, l                                        ; $4cda: $65
	ld   sp, $2411                                   ; $4cdb: $31 $11 $24
	ld   d, [hl]                                     ; $4cde: $56
	adc  d                                           ; $4cdf: $8a
	xor  d                                           ; $4ce0: $aa
	xor  e                                           ; $4ce1: $ab
	db   $dd                                         ; $4ce2: $dd
	call z, $cabd                                    ; $4ce3: $cc $bd $ca
	ld   [hl], l                                     ; $4ce6: $75
	ld   b, h                                        ; $4ce7: $44
	ld   [hl-], a                                    ; $4ce8: $32
	inc  hl                                          ; $4ce9: $23
	ld   b, l                                        ; $4cea: $45
	ld   h, a                                        ; $4ceb: $67
	adc  d                                           ; $4cec: $8a
	cp   e                                           ; $4ced: $bb
	cp   e                                           ; $4cee: $bb
	cp   d                                           ; $4cef: $ba
	xor  e                                           ; $4cf0: $ab
	res  7, b                                        ; $4cf1: $cb $b8
	halt                                             ; $4cf3: $76
	ld   d, l                                        ; $4cf4: $55
	ld   b, h                                        ; $4cf5: $44
	ld   b, e                                        ; $4cf6: $43
	dec  [hl]                                        ; $4cf7: $35
	ld   a, b                                        ; $4cf8: $78
	sbc  d                                           ; $4cf9: $9a
	cp   e                                           ; $4cfa: $bb
	cp   d                                           ; $4cfb: $ba
	xor  e                                           ; $4cfc: $ab
	cp   e                                           ; $4cfd: $bb
	res  3, c                                        ; $4cfe: $cb $99
	halt                                             ; $4d00: $76
	ld   h, l                                        ; $4d01: $65
	ld   d, h                                        ; $4d02: $54
	ld   b, h                                        ; $4d03: $44
	ld   b, l                                        ; $4d04: $45
	ld   l, b                                        ; $4d05: $68
	sbc  c                                           ; $4d06: $99
	xor  e                                           ; $4d07: $ab
	call z, $bcbb                                    ; $4d08: $cc $bb $bc
	jp   z, $8799                                    ; $4d0b: $ca $99 $87

	ld   d, h                                        ; $4d0e: $54
	inc  [hl]                                        ; $4d0f: $34
	ld   b, h                                        ; $4d10: $44
	ld   b, l                                        ; $4d11: $45
	ld   [hl], a                                     ; $4d12: $77
	adc  b                                           ; $4d13: $88
	xor  e                                           ; $4d14: $ab
	call z, $dcdd                                    ; $4d15: $cc $dd $dc
	cp   d                                           ; $4d18: $ba
	sbc  c                                           ; $4d19: $99
	add  [hl]                                        ; $4d1a: $86
	ld   d, l                                        ; $4d1b: $55
	ld   b, e                                        ; $4d1c: $43
	inc  hl                                          ; $4d1d: $23
	ld   b, l                                        ; $4d1e: $45
	ld   h, a                                        ; $4d1f: $67
	ld   a, c                                        ; $4d20: $79
	xor  h                                           ; $4d21: $ac
	db   $ed                                         ; $4d22: $ed
	cp   h                                           ; $4d23: $bc
	call $badc                                       ; $4d24: $cd $dc $ba
	sub  [hl]                                        ; $4d27: $96
	ld   d, l                                        ; $4d28: $55
	ld   d, l                                        ; $4d29: $55
	ld   b, l                                        ; $4d2a: $45
	ld   e, d                                        ; $4d2b: $5a
	ret  z                                           ; $4d2c: $c8

	sbc  e                                           ; $4d2d: $9b
	adc  h                                           ; $4d2e: $8c
	sbc  $c9                                         ; $4d2f: $de $c9
	and  [hl]                                        ; $4d31: $a6
	ld   h, [hl]                                     ; $4d32: $66
	ld   h, d                                        ; $4d33: $62
	ld   hl, $4513                                   ; $4d34: $21 $13 $45
	sbc  d                                           ; $4d37: $9a
	cp   h                                           ; $4d38: $bc
	res  5, d                                        ; $4d39: $cb $aa
	xor  b                                           ; $4d3b: $a8
	ld   h, l                                        ; $4d3c: $65
	ld   d, h                                        ; $4d3d: $54
	ld   h, e                                        ; $4d3e: $63
	inc  d                                           ; $4d3f: $14
	ld   b, l                                        ; $4d40: $45
	ld   d, l                                        ; $4d41: $55
	sbc  h                                           ; $4d42: $9c
	sbc  $ff                                         ; $4d43: $de $ff
	ei                                               ; $4d45: $fb
	sbc  c                                           ; $4d46: $99
	ld   d, c                                        ; $4d47: $51
	ld   de, $1133                                   ; $4d48: $11 $33 $11
	rla                                              ; $4d4b: $17
	xor  b                                           ; $4d4c: $a8
	cp   a                                           ; $4d4d: $bf
	rst  $38                                         ; $4d4e: $ff
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	sub  $11                                         ; $4d51: $d6 $11
	ld   de, $1111                                   ; $4d53: $11 $11 $11
	inc  e                                           ; $4d56: $1c
	rst  $38                                         ; $4d57: $ff
	rst  $38                                         ; $4d58: $ff
	rst  $38                                         ; $4d59: $ff
	rst  $38                                         ; $4d5a: $ff
	rst  $38                                         ; $4d5b: $ff
	sub  d                                           ; $4d5c: $92
	ld   de, $1111                                   ; $4d5d: $11 $11 $11
	ld   de, $ffaf                                   ; $4d60: $11 $af $ff
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	rst  JumpTable                                         ; $4d65: $df
	db   $fc                                         ; $4d66: $fc
	ld   de, $1111                                   ; $4d67: $11 $11 $11
	ld   de, $ff19                                   ; $4d6a: $11 $19 $ff
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	ei                                               ; $4d6f: $fb
	ld   a, a                                        ; $4d70: $7f
	pop  af                                          ; $4d71: $f1
	ld   de, $1111                                   ; $4d72: $11 $11 $11
	add  hl, sp                                      ; $4d75: $39
	cp   a                                           ; $4d76: $bf
	rst  $38                                         ; $4d77: $ff
	rst  $38                                         ; $4d78: $ff
	rst  $38                                         ; $4d79: $ff
	pop  bc                                          ; $4d7a: $c1
	rst  $38                                         ; $4d7b: $ff
	ld   de, $1111                                   ; $4d7c: $11 $11 $11
	ld   d, $cf                                      ; $4d7f: $16 $cf
	rst  $38                                         ; $4d81: $ff
	rst  $38                                         ; $4d82: $ff
	rst  $38                                         ; $4d83: $ff
	ei                                               ; $4d84: $fb
	ld   a, [de]                                     ; $4d85: $1a
	pop  af                                          ; $4d86: $f1
	ld   de, $1111                                   ; $4d87: $11 $11 $11
	xor  $ef                                         ; $4d8a: $ee $ef
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	rst  $38                                         ; $4d8e: $ff
	ld   h, c                                        ; $4d8f: $61
	ld   a, a                                        ; $4d90: $7f
	ld   de, $1111                                   ; $4d91: $11 $11 $11
	ld   e, $ff                                      ; $4d94: $1e $ff
	rst  $38                                         ; $4d96: $ff
	rst  $38                                         ; $4d97: $ff
	rst  $38                                         ; $4d98: $ff
	push af                                          ; $4d99: $f5
	inc  d                                           ; $4d9a: $14
	pop  de                                          ; $4d9b: $d1
	ld   de, $1111                                   ; $4d9c: $11 $11 $11
	db   $ec                                         ; $4d9f: $ec
	rst  $38                                         ; $4da0: $ff
	rst  $38                                         ; $4da1: $ff
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	ld   de, $119a                                   ; $4da4: $11 $9a $11
	ld   de, $5f11                                   ; $4da7: $11 $11 $5f
	rst  JumpTable                                         ; $4daa: $df
	rst  $38                                         ; $4dab: $ff
	rst  $38                                         ; $4dac: $ff
	rst  $38                                         ; $4dad: $ff
	pop  af                                          ; $4dae: $f1
	dec  de                                          ; $4daf: $1b
	add  c                                           ; $4db0: $81
	ld   de, $1b11                                   ; $4db1: $11 $11 $1b
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	ei                                               ; $4db8: $fb
	ld   de, $11e4                                   ; $4db9: $11 $e4 $11
	ld   de, rAUD1LEN                                   ; $4dbc: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dbf: $cf
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	rst  $38                                         ; $4dc2: $ff
	ld   de, $114c                                   ; $4dc3: $11 $4c $11
	ld   de, $1f11                                   ; $4dc6: $11 $11 $1f
	rst  $38                                         ; $4dc9: $ff
	rst  $38                                         ; $4dca: $ff
	rst  $38                                         ; $4dcb: $ff
	rst  $38                                         ; $4dcc: $ff
	pop  af                                          ; $4dcd: $f1
	dec  d                                           ; $4dce: $15
	or   c                                           ; $4dcf: $b1
	ld   de, $1f11                                   ; $4dd0: $11 $11 $1f
	cp   $ff                                         ; $4dd3: $fe $ff
	rst  $38                                         ; $4dd5: $ff
	rst  $38                                         ; $4dd6: $ff
	db   $f4                                         ; $4dd7: $f4
	ld   de, $11a1                                   ; $4dd8: $11 $a1 $11
	ld   de, rAUD1LEN                                   ; $4ddb: $11 $11 $ff
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	ld   de, $1158                                   ; $4de2: $11 $58 $11
	ld   de, rAUD1LEN                                   ; $4de5: $11 $11 $ff
	rst  JumpTable                                         ; $4de8: $df
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	rst  $38                                         ; $4deb: $ff
	ld   de, $112c                                   ; $4dec: $11 $2c $11
	ld   de, $1f11                                   ; $4def: $11 $11 $1f
	cp   $ff                                         ; $4df2: $fe $ff
	rst  $38                                         ; $4df4: $ff
	rst  $38                                         ; $4df5: $ff
	pop  af                                          ; $4df6: $f1
	rla                                              ; $4df7: $17
	add  c                                           ; $4df8: $81
	ld   de, $1f11                                   ; $4df9: $11 $11 $1f
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	ldh  a, [c]                                      ; $4e00: $f2
	ld   de, $1161                                   ; $4e01: $11 $61 $11
	ld   de, rAUD1LOW                                   ; $4e04: $11 $13 $ff
	rst  $38                                         ; $4e07: $ff
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	ld   a, [$1111]                                  ; $4e0a: $fa $11 $11
	ld   de, $1111                                   ; $4e0d: $11 $11 $11
	rst  $38                                         ; $4e10: $ff
	rst  $38                                         ; $4e11: $ff
	rst  $38                                         ; $4e12: $ff
	rst  $38                                         ; $4e13: $ff
	rst  $38                                         ; $4e14: $ff
	ld   de, $1111                                   ; $4e15: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4e18: $11 $11 $ff
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	rst  $38                                         ; $4e1d: $ff
	rst  $38                                         ; $4e1e: $ff
	ld   de, $1111                                   ; $4e1f: $11 $11 $11
	ld   de, $dd11                                   ; $4e22: $11 $11 $dd
	rst  $38                                         ; $4e25: $ff
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	ei                                               ; $4e28: $fb
	ld   de, $1111                                   ; $4e29: $11 $11 $11
	ld   de, $fb11                                   ; $4e2c: $11 $11 $fb
	rst  $38                                         ; $4e2f: $ff
	rst  $38                                         ; $4e30: $ff
	rst  $38                                         ; $4e31: $ff
	db   $fd                                         ; $4e32: $fd
	ld   de, $1111                                   ; $4e33: $11 $11 $11
	ld   de, $a911                                   ; $4e36: $11 $11 $a9
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	ei                                               ; $4e3c: $fb
	ld   de, $1111                                   ; $4e3d: $11 $11 $11
	ld   de, wPlayerName+3                                   ; $4e40: $11 $11 $cb
	rst  $38                                         ; $4e43: $ff
	rst  $38                                         ; $4e44: $ff
	rst  $38                                         ; $4e45: $ff
	ld   a, [$1111]                                  ; $4e46: $fa $11 $11
	ld   de, $1111                                   ; $4e49: $11 $11 $11
	xor  d                                           ; $4e4c: $aa
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	or   $11                                         ; $4e50: $f6 $11
	ld   de, $1111                                   ; $4e52: $11 $11 $11
	ld   de, $ff9f                                   ; $4e55: $11 $9f $ff
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	db   $f4                                         ; $4e5a: $f4
	ld   de, $1111                                   ; $4e5b: $11 $11 $11
	ld   de, $af14                                   ; $4e5e: $11 $14 $af
	rst  $38                                         ; $4e61: $ff
	rst  $38                                         ; $4e62: $ff
	rst  $38                                         ; $4e63: $ff
	pop  af                                          ; $4e64: $f1
	ld   de, $1111                                   ; $4e65: $11 $11 $11
	ld   de, $bf1b                                   ; $4e68: $11 $1b $bf
	rst  $38                                         ; $4e6b: $ff
	rst  $38                                         ; $4e6c: $ff
	rst  $38                                         ; $4e6d: $ff
	ld   [hl], c                                     ; $4e6e: $71
	ld   de, $1111                                   ; $4e6f: $11 $11 $11
	ld   de, $ff2b                                   ; $4e72: $11 $2b $ff
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	ld   de, $1111                                   ; $4e78: $11 $11 $11
	ld   de, $6c11                                   ; $4e7b: $11 $11 $6c
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	or   $11                                         ; $4e81: $f6 $11
	ld   de, $1111                                   ; $4e83: $11 $11 $11
	inc  de                                          ; $4e86: $13
	rst  $38                                         ; $4e87: $ff
	rst  $38                                         ; $4e88: $ff
	rst  $38                                         ; $4e89: $ff
	rst  $38                                         ; $4e8a: $ff
	or   c                                           ; $4e8b: $b1
	ld   de, $1111                                   ; $4e8c: $11 $11 $11
	ld   de, $ff28                                   ; $4e8f: $11 $28 $ff
	rst  $38                                         ; $4e92: $ff
	rst  $38                                         ; $4e93: $ff
	db   $fc                                         ; $4e94: $fc
	ld   de, $1111                                   ; $4e95: $11 $11 $11
	ld   de, $6f11                                   ; $4e98: $11 $11 $6f
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	rst  $38                                         ; $4e9d: $ff
	sub  c                                           ; $4e9e: $91
	ld   de, $1111                                   ; $4e9f: $11 $11 $11
	ld   de, $ff18                                   ; $4ea2: $11 $18 $ff
	rst  $38                                         ; $4ea5: $ff
	rst  $38                                         ; $4ea6: $ff
	db   $fc                                         ; $4ea7: $fc
	ld   de, $1111                                   ; $4ea8: $11 $11 $11
	ld   de, $bf11                                   ; $4eab: $11 $11 $bf
	rst  $38                                         ; $4eae: $ff
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	ld   h, c                                        ; $4eb1: $61
	ld   de, $1111                                   ; $4eb2: $11 $11 $11
	ld   de, $ff1f                                   ; $4eb5: $11 $1f $ff
	rst  $38                                         ; $4eb8: $ff
	rst  $38                                         ; $4eb9: $ff
	di                                               ; $4eba: $f3
	ld   de, $1111                                   ; $4ebb: $11 $11 $11
	ld   de, $ff17                                   ; $4ebe: $11 $17 $ff
	rst  $38                                         ; $4ec1: $ff
	rst  $38                                         ; $4ec2: $ff
	db   $fd                                         ; $4ec3: $fd
	ld   de, $1111                                   ; $4ec4: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4ec7: $11 $11 $ff
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	ld   h, c                                        ; $4ecd: $61
	ld   de, $1111                                   ; $4ece: $11 $11 $11
	ld   de, $ff6f                                   ; $4ed1: $11 $6f $ff
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	pop  af                                          ; $4ed6: $f1
	ld   de, $1111                                   ; $4ed7: $11 $11 $11
	ld   de, $ff1f                                   ; $4eda: $11 $1f $ff
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	ld   sp, hl                                      ; $4edf: $f9
	ld   de, $1111                                   ; $4ee0: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4ee3: $11 $11 $ff
	rst  $38                                         ; $4ee6: $ff
	rst  $38                                         ; $4ee7: $ff
	rst  $38                                         ; $4ee8: $ff
	inc  de                                          ; $4ee9: $13
	ld   de, $1111                                   ; $4eea: $11 $11 $11
	ld   de, $ffef                                   ; $4eed: $11 $ef $ff
	rst  $38                                         ; $4ef0: $ff
	rst  $38                                         ; $4ef1: $ff
	add  c                                           ; $4ef2: $81
	ld   hl, $1111                                   ; $4ef3: $21 $11 $11
	ld   de, $ff2f                                   ; $4ef6: $11 $2f $ff
	rst  $38                                         ; $4ef9: $ff
	rst  $38                                         ; $4efa: $ff
	db   $f4                                         ; $4efb: $f4
	ld   sp, $1111                                   ; $4efc: $31 $11 $11
	ld   de, $ff16                                   ; $4eff: $11 $16 $ff
	rst  $38                                         ; $4f02: $ff
	rst  $38                                         ; $4f03: $ff
	ld   sp, hl                                      ; $4f04: $f9
	ld   d, $11                                      ; $4f05: $16 $11
	ld   de, $1111                                   ; $4f07: $11 $11 $11
	rst  $28                                         ; $4f0a: $ef
	rst  $38                                         ; $4f0b: $ff
	rst  $38                                         ; $4f0c: $ff
	rst  $38                                         ; $4f0d: $ff
	sbc  c                                           ; $4f0e: $99
	ld   de, $1111                                   ; $4f0f: $11 $11 $11
	ld   de, $ff2d                                   ; $4f12: $11 $2d $ff
	rst  $38                                         ; $4f15: $ff
	rst  $38                                         ; $4f16: $ff
	push af                                          ; $4f17: $f5
	inc  hl                                          ; $4f18: $23
	ld   de, $1111                                   ; $4f19: $11 $11 $11
	inc  d                                           ; $4f1c: $14
	rst  $28                                         ; $4f1d: $ef
	rst  $38                                         ; $4f1e: $ff
	rst  $38                                         ; $4f1f: $ff
	rst  $38                                         ; $4f20: $ff
	ld   d, l                                        ; $4f21: $55
	ld   b, c                                        ; $4f22: $41
	ld   de, $1111                                   ; $4f23: $11 $11 $11
	ld   l, h                                        ; $4f26: $6c
	rst  $38                                         ; $4f27: $ff
	rst  $38                                         ; $4f28: $ff
	rst  $38                                         ; $4f29: $ff
	di                                               ; $4f2a: $f3
	and  d                                           ; $4f2b: $a2
	ld   de, $1111                                   ; $4f2c: $11 $11 $11
	inc  de                                          ; $4f2f: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f30: $cf
	rst  $38                                         ; $4f31: $ff
	rst  $38                                         ; $4f32: $ff
	db   $fc                                         ; $4f33: $fc
	sbc  d                                           ; $4f34: $9a
	ld   b, c                                        ; $4f35: $41
	ld   de, $1111                                   ; $4f36: $11 $11 $11
	add  hl, hl                                      ; $4f39: $29
	rst  $38                                         ; $4f3a: $ff
	rst  $38                                         ; $4f3b: $ff
	rst  $38                                         ; $4f3c: $ff
	add  $b3                                         ; $4f3d: $c6 $b3
	ld   de, $1111                                   ; $4f3f: $11 $11 $11
	ld   de, $ffbf                                   ; $4f42: $11 $bf $ff
	rst  $38                                         ; $4f45: $ff
	rst  $38                                         ; $4f46: $ff
	ld   a, d                                        ; $4f47: $7a
	ld   b, c                                        ; $4f48: $41
	ld   de, $1111                                   ; $4f49: $11 $11 $11
	rla                                              ; $4f4c: $17
	rst  $38                                         ; $4f4d: $ff
	rst  $38                                         ; $4f4e: $ff
	rst  $38                                         ; $4f4f: $ff
	ld   sp, hl                                      ; $4f50: $f9
	and  a                                           ; $4f51: $a7
	ld   de, $1111                                   ; $4f52: $11 $11 $11
	ld   de, $ff4d                                   ; $4f55: $11 $4d $ff
	rst  $38                                         ; $4f58: $ff
	rst  $38                                         ; $4f59: $ff
	xor  b                                           ; $4f5a: $a8
	add  [hl]                                        ; $4f5b: $86
	ld   hl, $1111                                   ; $4f5c: $21 $11 $11
	ld   de, $ffae                                   ; $4f5f: $11 $ae $ff
	rst  $38                                         ; $4f62: $ff
	rst  $38                                         ; $4f63: $ff
	sbc  d                                           ; $4f64: $9a
	ld   [hl], e                                     ; $4f65: $73
	ld   de, $1111                                   ; $4f66: $11 $11 $11
	dec  d                                           ; $4f69: $15
	xor  a                                           ; $4f6a: $af
	rst  $38                                         ; $4f6b: $ff
	rst  $38                                         ; $4f6c: $ff
	db   $fc                                         ; $4f6d: $fc
	cp   c                                           ; $4f6e: $b9
	ld   h, c                                        ; $4f6f: $61
	ld   b, c                                        ; $4f70: $41
	ld   de, $1b11                                   ; $4f71: $11 $11 $1b
	cp   a                                           ; $4f74: $bf
	rst  $38                                         ; $4f75: $ff
	rst  $38                                         ; $4f76: $ff
	ld   sp, hl                                      ; $4f77: $f9
	sbc  c                                           ; $4f78: $99
	ld   h, e                                        ; $4f79: $63
	ld   d, c                                        ; $4f7a: $51
	ld   de, $4c11                                   ; $4f7b: $11 $11 $4c
	cp   a                                           ; $4f7e: $bf
	cp   $ff                                         ; $4f7f: $fe $ff
	cp   c                                           ; $4f81: $b9
	sub  a                                           ; $4f82: $97
	add  [hl]                                        ; $4f83: $86
	ld   b, e                                        ; $4f84: $43
	ld   de, $7a11                                   ; $4f85: $11 $11 $7a
	xor  a                                           ; $4f88: $af
	cp   $fb                                         ; $4f89: $fe $fb
	xor  h                                           ; $4f8b: $ac
	halt                                             ; $4f8c: $76
	add  a                                           ; $4f8d: $87
	ld   d, e                                        ; $4f8e: $53
	ld   [de], a                                     ; $4f8f: $12
	inc  d                                           ; $4f90: $14
	ld   d, a                                        ; $4f91: $57
	db   $ed                                         ; $4f92: $ed
	cp   [hl]                                        ; $4f93: $be
	db   $ec                                         ; $4f94: $ec
	cp   d                                           ; $4f95: $ba
	rst  $10                                         ; $4f96: $d7
	ld   c, c                                        ; $4f97: $49
	ld   h, l                                        ; $4f98: $65
	ld   [hl-], a                                    ; $4f99: $32
	ld   sp, $ab39                                   ; $4f9a: $31 $39 $ab
	db   $fd                                         ; $4f9d: $fd
	xor  l                                           ; $4f9e: $ad
	cp   h                                           ; $4f9f: $bc
	ld   a, d                                        ; $4fa0: $7a
	and  [hl]                                        ; $4fa1: $a6
	ld   h, l                                        ; $4fa2: $65
	ld   [hl], h                                     ; $4fa3: $74
	ld   [hl+], a                                    ; $4fa4: $22
	ld   h, [hl]                                     ; $4fa5: $66
	ld   c, h                                        ; $4fa6: $4c
	cp   l                                           ; $4fa7: $bd
	set  1, e                                        ; $4fa8: $cb $cb
	ld   a, c                                        ; $4faa: $79
	sub  h                                           ; $4fab: $94
	ld   [hl], a                                     ; $4fac: $77
	and  [hl]                                        ; $4fad: $a6
	ld   h, [hl]                                     ; $4fae: $66
	ld   h, [hl]                                     ; $4faf: $66
	ld   a, [hl-]                                    ; $4fb0: $3a
	ld   l, c                                        ; $4fb1: $69
	sbc  e                                           ; $4fb2: $9b
	xor  d                                           ; $4fb3: $aa
	rst  ToBoot                                         ; $4fb4: $c7
	and  [hl]                                        ; $4fb5: $a6
	add  l                                           ; $4fb6: $85
	ld   d, a                                        ; $4fb7: $57
	xor  b                                           ; $4fb8: $a8
	ld   a, d                                        ; $4fb9: $7a
	ld   h, l                                        ; $4fba: $65
	ld   a, d                                        ; $4fbb: $7a
	ld   e, c                                        ; $4fbc: $59
	ret  z                                           ; $4fbd: $c8

	xor  c                                           ; $4fbe: $a9
	sbc  c                                           ; $4fbf: $99
	ld   [hl], a                                     ; $4fc0: $77
	ld   h, a                                        ; $4fc1: $67
	ld   l, d                                        ; $4fc2: $6a
	ld   l, c                                        ; $4fc3: $69
	sub  [hl]                                        ; $4fc4: $96
	sub  a                                           ; $4fc5: $97
	xor  c                                           ; $4fc6: $a9
	add  [hl]                                        ; $4fc7: $86
	ld   [hl], a                                     ; $4fc8: $77
	ld   e, d                                        ; $4fc9: $5a
	and  a                                           ; $4fca: $a7
	ld   l, d                                        ; $4fcb: $6a
	ld   e, b                                        ; $4fcc: $58
	sub  a                                           ; $4fcd: $97
	cp   c                                           ; $4fce: $b9
	cp   d                                           ; $4fcf: $ba
	adc  e                                           ; $4fd0: $8b
	add  [hl]                                        ; $4fd1: $86
	ld   [hl], a                                     ; $4fd2: $77
	ld   h, [hl]                                     ; $4fd3: $66
	ld   d, a                                        ; $4fd4: $57
	halt                                             ; $4fd5: $76
	halt                                             ; $4fd6: $76
	ld   a, d                                        ; $4fd7: $7a
	cp   c                                           ; $4fd8: $b9
	xor  d                                           ; $4fd9: $aa
	xor  d                                           ; $4fda: $aa
	adc  b                                           ; $4fdb: $88
	and  [hl]                                        ; $4fdc: $a6
	ld   a, b                                        ; $4fdd: $78
	ld   b, [hl]                                     ; $4fde: $46
	ld   h, l                                        ; $4fdf: $65
	halt                                             ; $4fe0: $76
	adc  h                                           ; $4fe1: $8c
	adc  b                                           ; $4fe2: $88
	cp   d                                           ; $4fe3: $ba
	sub  l                                           ; $4fe4: $95
	cp   b                                           ; $4fe5: $b8
	adc  c                                           ; $4fe6: $89
	sbc  c                                           ; $4fe7: $99
	halt                                             ; $4fe8: $76
	ld   h, a                                        ; $4fe9: $67
	dec  sp                                          ; $4fea: $3b
	ld   [hl], a                                     ; $4feb: $77
	ld   a, d                                        ; $4fec: $7a
	and  [hl]                                        ; $4fed: $a6
	xor  c                                           ; $4fee: $a9
	and  l                                           ; $4fef: $a5
	ld   a, c                                        ; $4ff0: $79
	ld   l, c                                        ; $4ff1: $69
	add  [hl]                                        ; $4ff2: $86
	xor  b                                           ; $4ff3: $a8
	ld   h, [hl]                                     ; $4ff4: $66
	sbc  d                                           ; $4ff5: $9a
	ld   a, e                                        ; $4ff6: $7b
	sbc  d                                           ; $4ff7: $9a
	ld   l, c                                        ; $4ff8: $69
	sub  a                                           ; $4ff9: $97
	ld   h, l                                        ; $4ffa: $65
	halt                                             ; $4ffb: $76
	halt                                             ; $4ffc: $76
	rst  ToBoot                                         ; $4ffd: $c7
	ld   l, c                                        ; $4ffe: $69
	adc  d                                           ; $4fff: $8a
	ld   a, c                                        ; $5000: $79
	sbc  d                                           ; $5001: $9a
	halt                                             ; $5002: $76
	and  h                                           ; $5003: $a4
	sub  l                                           ; $5004: $95
	sbc  d                                           ; $5005: $9a
	ld   e, d                                        ; $5006: $5a
	adc  b                                           ; $5007: $88
	ld   l, e                                        ; $5008: $6b
	adc  c                                           ; $5009: $89
	sbc  c                                           ; $500a: $99
	add  [hl]                                        ; $500b: $86
	sub  [hl]                                        ; $500c: $96
	sub  [hl]                                        ; $500d: $96
	ld   h, a                                        ; $500e: $67
	add  [hl]                                        ; $500f: $86
	xor  b                                           ; $5010: $a8
	adc  e                                           ; $5011: $8b
	ld   a, h                                        ; $5012: $7c
	ld   l, b                                        ; $5013: $68
	and  a                                           ; $5014: $a7
	xor  b                                           ; $5015: $a8
	ld   e, c                                        ; $5016: $59
	ld   h, l                                        ; $5017: $65
	add  a                                           ; $5018: $87
	ld   a, d                                        ; $5019: $7a
	ld   d, a                                        ; $501a: $57
	call nc, $87b9                                   ; $501b: $d4 $b9 $87
	and  a                                           ; $501e: $a7
	ld   a, h                                        ; $501f: $7c
	dec  hl                                          ; $5020: $2b
	ld   c, e                                        ; $5021: $4b
	halt                                             ; $5022: $76
	and  a                                           ; $5023: $a7
	sub  e                                           ; $5024: $93
	add  $87                                         ; $5025: $c6 $87
	sbc  b                                           ; $5027: $98
	ld   a, b                                        ; $5028: $78
	ld   a, c                                        ; $5029: $79
	ld   c, d                                        ; $502a: $4a
	add  a                                           ; $502b: $87
	ld   a, d                                        ; $502c: $7a
	adc  b                                           ; $502d: $88
	adc  c                                           ; $502e: $89
	sub  a                                           ; $502f: $97
	or   a                                           ; $5030: $b7
	or   [hl]                                        ; $5031: $b6
	ld   e, c                                        ; $5032: $59
	ld   h, [hl]                                     ; $5033: $66
	adc  b                                           ; $5034: $88
	ld   h, l                                        ; $5035: $65
	sbc  c                                           ; $5036: $99
	ld   a, d                                        ; $5037: $7a
	adc  b                                           ; $5038: $88
	add  [hl]                                        ; $5039: $86
	sub  a                                           ; $503a: $97
	sbc  b                                           ; $503b: $98
	sbc  b                                           ; $503c: $98
	ld   l, d                                        ; $503d: $6a
	ld   l, b                                        ; $503e: $68
	ld   [hl], a                                     ; $503f: $77
	xor  c                                           ; $5040: $a9
	adc  e                                           ; $5041: $8b
	sub  l                                           ; $5042: $95
	and  l                                           ; $5043: $a5
	and  a                                           ; $5044: $a7
	ld   a, b                                        ; $5045: $78
	ld   a, b                                        ; $5046: $78
	ld   h, a                                        ; $5047: $67
	ld   a, c                                        ; $5048: $79
	ld   a, d                                        ; $5049: $7a
	ld   l, e                                        ; $504a: $6b
	add  l                                           ; $504b: $85
	sbc  b                                           ; $504c: $98
	rst  ToBoot                                         ; $504d: $c7
	sub  [hl]                                        ; $504e: $96
	sub  [hl]                                        ; $504f: $96
	ld   e, d                                        ; $5050: $5a
	ld   l, d                                        ; $5051: $6a
	ld   h, a                                        ; $5052: $67
	and  e                                           ; $5053: $a3
	sbc  b                                           ; $5054: $98
	sbc  c                                           ; $5055: $99
	sub  a                                           ; $5056: $97
	adc  d                                           ; $5057: $8a
	ld   e, d                                        ; $5058: $5a
	ld   l, c                                        ; $5059: $69
	ld   a, e                                        ; $505a: $7b
	ld   a, b                                        ; $505b: $78
	add  a                                           ; $505c: $87
	pop  de                                          ; $505d: $d1
	push hl                                          ; $505e: $e5
	sub  [hl]                                        ; $505f: $96
	sbc  b                                           ; $5060: $98
	ld   e, e                                        ; $5061: $5b
	ccf                                              ; $5062: $3f
	dec  de                                          ; $5063: $1b
	ld   e, e                                        ; $5064: $5b
	and  l                                           ; $5065: $a5
	call nc, $f4d1                                   ; $5066: $d4 $d1 $f4
	ld   a, d                                        ; $5069: $7a
	ld   e, h                                        ; $506a: $5c
	inc  l                                           ; $506b: $2c
	ld   c, h                                        ; $506c: $4c
	ld   c, b                                        ; $506d: $48
	and  l                                           ; $506e: $a5
	call nz, $89c6                                   ; $506f: $c4 $c6 $89
	sbc  c                                           ; $5072: $99
	ld   e, d                                        ; $5073: $5a
	ld   l, c                                        ; $5074: $69
	ld   [hl], a                                     ; $5075: $77
	adc  b                                           ; $5076: $88
	add  [hl]                                        ; $5077: $86
	and  [hl]                                        ; $5078: $a6
	sbc  c                                           ; $5079: $99
	ld   a, c                                        ; $507a: $79
	ld   a, c                                        ; $507b: $79
	ld   l, d                                        ; $507c: $6a
	ld   a, b                                        ; $507d: $78
	ld   [hl], a                                     ; $507e: $77
	sub  a                                           ; $507f: $97
	xor  b                                           ; $5080: $a8
	add  a                                           ; $5081: $87
	sbc  b                                           ; $5082: $98
	adc  b                                           ; $5083: $88
	adc  b                                           ; $5084: $88
	adc  b                                           ; $5085: $88
	or   [hl]                                        ; $5086: $b6
	ld   l, c                                        ; $5087: $69
	ld   l, c                                        ; $5088: $69
	ld   a, d                                        ; $5089: $7a
	ld   a, c                                        ; $508a: $79
	ld   [hl], a                                     ; $508b: $77
	and  a                                           ; $508c: $a7
	sub  [hl]                                        ; $508d: $96
	and  a                                           ; $508e: $a7
	add  [hl]                                        ; $508f: $86
	sbc  c                                           ; $5090: $99
	ld   l, d                                        ; $5091: $6a
	ld   e, d                                        ; $5092: $5a
	ld   a, b                                        ; $5093: $78
	sbc  b                                           ; $5094: $98
	sub  a                                           ; $5095: $97
	and  a                                           ; $5096: $a7
	and  a                                           ; $5097: $a7
	sbc  b                                           ; $5098: $98
	adc  b                                           ; $5099: $88
	ld   a, d                                        ; $509a: $7a
	ld   a, c                                        ; $509b: $79
	ld   a, b                                        ; $509c: $78
	adc  b                                           ; $509d: $88
	sub  a                                           ; $509e: $97
	sub  a                                           ; $509f: $97
	adc  b                                           ; $50a0: $88
	adc  c                                           ; $50a1: $89
	ld   a, b                                        ; $50a2: $78
	adc  b                                           ; $50a3: $88
	ld   a, b                                        ; $50a4: $78
	add  a                                           ; $50a5: $87
	sub  [hl]                                        ; $50a6: $96
	sbc  c                                           ; $50a7: $99
	sbc  b                                           ; $50a8: $98
	sbc  c                                           ; $50a9: $99
	adc  c                                           ; $50aa: $89
	ld   a, c                                        ; $50ab: $79
	ld   a, b                                        ; $50ac: $78
	ld   a, b                                        ; $50ad: $78
	sbc  b                                           ; $50ae: $98
	add  a                                           ; $50af: $87
	sub  a                                           ; $50b0: $97
	adc  b                                           ; $50b1: $88
	sbc  b                                           ; $50b2: $98
	sbc  b                                           ; $50b3: $98
	adc  b                                           ; $50b4: $88
	adc  c                                           ; $50b5: $89
	ld   a, c                                        ; $50b6: $79
	ld   a, b                                        ; $50b7: $78
	add  a                                           ; $50b8: $87
	add  a                                           ; $50b9: $87
	adc  b                                           ; $50ba: $88
	adc  b                                           ; $50bb: $88
	add  a                                           ; $50bc: $87
	adc  b                                           ; $50bd: $88
	adc  b                                           ; $50be: $88
	adc  b                                           ; $50bf: $88
	adc  b                                           ; $50c0: $88
	adc  c                                           ; $50c1: $89
	adc  b                                           ; $50c2: $88
	sbc  b                                           ; $50c3: $98
	adc  b                                           ; $50c4: $88
	adc  b                                           ; $50c5: $88
	adc  b                                           ; $50c6: $88
	adc  c                                           ; $50c7: $89
	ld   a, c                                        ; $50c8: $79
	add  a                                           ; $50c9: $87
	sbc  b                                           ; $50ca: $98
	adc  c                                           ; $50cb: $89
	ld   [hl], a                                     ; $50cc: $77
	add  a                                           ; $50cd: $87
	adc  b                                           ; $50ce: $88
	adc  b                                           ; $50cf: $88
	adc  c                                           ; $50d0: $89
	add  a                                           ; $50d1: $87
	adc  b                                           ; $50d2: $88
	adc  c                                           ; $50d3: $89
	adc  b                                           ; $50d4: $88
	ld   a, b                                        ; $50d5: $78
	adc  b                                           ; $50d6: $88
	add  a                                           ; $50d7: $87
	add  a                                           ; $50d8: $87
	adc  b                                           ; $50d9: $88
	add  a                                           ; $50da: $87
	adc  b                                           ; $50db: $88
	adc  c                                           ; $50dc: $89
	ld   a, b                                        ; $50dd: $78
	adc  b                                           ; $50de: $88
	adc  c                                           ; $50df: $89
	add  a                                           ; $50e0: $87
	adc  b                                           ; $50e1: $88
	adc  b                                           ; $50e2: $88
	adc  b                                           ; $50e3: $88
	adc  b                                           ; $50e4: $88
	adc  b                                           ; $50e5: $88
	adc  b                                           ; $50e6: $88
	sbc  b                                           ; $50e7: $98
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
	adc  c                                           ; $51a9: $89
	adc  b                                           ; $51aa: $88
	adc  b                                           ; $51ab: $88
	adc  b                                           ; $51ac: $88
	adc  b                                           ; $51ad: $88
	adc  b                                           ; $51ae: $88
	adc  b                                           ; $51af: $88
	adc  b                                           ; $51b0: $88
	adc  c                                           ; $51b1: $89
	adc  b                                           ; $51b2: $88
	sbc  b                                           ; $51b3: $98
	sbc  e                                           ; $51b4: $9b
	xor  b                                           ; $51b5: $a8
	cp   d                                           ; $51b6: $ba
	sbc  d                                           ; $51b7: $9a
	and  [hl]                                        ; $51b8: $a6
	srl  d                                           ; $51b9: $cb $3a
	call c, Call_0d1_7497                            ; $51bb: $dc $97 $74
	adc  c                                           ; $51be: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51bf: $cf
	and  e                                           ; $51c0: $a3
	dec  [hl]                                        ; $51c1: $35
	ld   h, h                                        ; $51c2: $64
	rst  $28                                         ; $51c3: $ef
	or   $67                                         ; $51c4: $f6 $67
	ld   b, d                                        ; $51c6: $42
	adc  e                                           ; $51c7: $8b
	db   $fd                                         ; $51c8: $fd
	ld   [hl], a                                     ; $51c9: $77
	ld   d, c                                        ; $51ca: $51
	ld   de, $4366                                   ; $51cb: $11 $66 $43
	ld   d, l                                        ; $51ce: $55
	inc  [hl]                                        ; $51cf: $34
	ld   d, l                                        ; $51d0: $55
	adc  b                                           ; $51d1: $88
	ld   b, [hl]                                     ; $51d2: $46
	ld   a, b                                        ; $51d3: $78
	ld   [hl], a                                     ; $51d4: $77
	sbc  b                                           ; $51d5: $98
	ld   b, h                                        ; $51d6: $44
	adc  c                                           ; $51d7: $89
	ld   h, h                                        ; $51d8: $64
	add  a                                           ; $51d9: $87
	inc  [hl]                                        ; $51da: $34
	ld   h, a                                        ; $51db: $67

Call_0d1_51dc:
	ld   b, e                                        ; $51dc: $43
	ld   [hl], a                                     ; $51dd: $77
	ld   b, l                                        ; $51de: $45
	ld   l, c                                        ; $51df: $69
	cp   b                                           ; $51e0: $b8
	adc  d                                           ; $51e1: $8a
	xor  $aa                                         ; $51e2: $ee $aa
	cp   b                                           ; $51e4: $b8
	ld   h, [hl]                                     ; $51e5: $66
	add  l                                           ; $51e6: $85
	inc  sp                                          ; $51e7: $33
	dec  [hl]                                        ; $51e8: $35
	ld   d, h                                        ; $51e9: $54
	inc  h                                           ; $51ea: $24
	ld   h, l                                        ; $51eb: $65
	inc  sp                                          ; $51ec: $33
	ld   a, c                                        ; $51ed: $79
	sbc  $ff                                         ; $51ee: $de $ff
	rst  $38                                         ; $51f0: $ff
	rst  $28                                         ; $51f1: $ef
	ei                                               ; $51f2: $fb
	ld   a, c                                        ; $51f3: $79
	ld   h, d                                        ; $51f4: $62
	ld   de, $1111                                   ; $51f5: $11 $11 $11
	inc  d                                           ; $51f8: $14
	ld   l, a                                        ; $51f9: $6f
	rst  $38                                         ; $51fa: $ff
	rst  $38                                         ; $51fb: $ff
	rst  $38                                         ; $51fc: $ff
	add  $6a                                         ; $51fd: $c6 $6a
	rst  $38                                         ; $51ff: $ff
	xor  $91                                         ; $5200: $ee $91
	ld   de, $1411                                   ; $5202: $11 $11 $14
	cp   a                                           ; $5205: $bf
	rst  $38                                         ; $5206: $ff
	rst  $38                                         ; $5207: $ff
	rst  $38                                         ; $5208: $ff
	and  [hl]                                        ; $5209: $a6
	ld   l, e                                        ; $520a: $6b
	rst  $38                                         ; $520b: $ff
	rst  $38                                         ; $520c: $ff
	or   e                                           ; $520d: $b3
	ld   de, $1111                                   ; $520e: $11 $11 $11
	ld   l, h                                        ; $5211: $6c
	rst  $38                                         ; $5212: $ff
	rst  $38                                         ; $5213: $ff
	rst  $38                                         ; $5214: $ff
	cp   b                                           ; $5215: $b8
	ld   b, [hl]                                     ; $5216: $46
	xor  a                                           ; $5217: $af
	rst  $38                                         ; $5218: $ff
	push af                                          ; $5219: $f5
	ld   de, $1111                                   ; $521a: $11 $11 $11
	rra                                              ; $521d: $1f
	rst  $28                                         ; $521e: $ef
	rst  $38                                         ; $521f: $ff
	rst  $38                                         ; $5220: $ff
	ei                                               ; $5221: $fb
	ld   hl, $ff7f                                   ; $5222: $21 $7f $ff
	ld   a, [$1111]                                  ; $5225: $fa $11 $11
	ld   de, $ff1f                                   ; $5228: $11 $1f $ff
	rst  $38                                         ; $522b: $ff
	rst  $38                                         ; $522c: $ff
	sub  [hl]                                        ; $522d: $96
	ld   d, e                                        ; $522e: $53
	ld   a, e                                        ; $522f: $7b
	rst  $38                                         ; $5230: $ff
	ld   sp, hl                                      ; $5231: $f9
	ld   de, $1111                                   ; $5232: $11 $11 $11
	dec  de                                          ; $5235: $1b
	rst  $28                                         ; $5236: $ef
	rst  $38                                         ; $5237: $ff
	rst  $38                                         ; $5238: $ff
	di                                               ; $5239: $f3
	ld   hl, $ff9e                                   ; $523a: $21 $9e $ff
	cp   $11                                         ; $523d: $fe $11
	ld   de, $1711                                   ; $523f: $11 $11 $17
	sbc  $ff                                         ; $5242: $de $ff
	rst  $38                                         ; $5244: $ff
	or   $21                                         ; $5245: $f6 $21
	ld   c, e                                        ; $5247: $4b
	rst  $38                                         ; $5248: $ff
	rst  $38                                         ; $5249: $ff
	ld   d, c                                        ; $524a: $51
	ld   de, $1111                                   ; $524b: $11 $11 $11
	ld   a, a                                        ; $524e: $7f
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	cp   $11                                         ; $5251: $fe $11
	inc  a                                           ; $5253: $3c
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	sub  c                                           ; $5256: $91
	ld   de, $1111                                   ; $5257: $11 $11 $11
	ld   a, [de]                                     ; $525a: $1a
	rst  JumpTable                                         ; $525b: $df
	rst  $38                                         ; $525c: $ff
	rst  $38                                         ; $525d: $ff
	and  e                                           ; $525e: $a3
	inc  hl                                          ; $525f: $23
	rst  $28                                         ; $5260: $ef
	rst  $38                                         ; $5261: $ff
	rst  $30                                         ; $5262: $f7
	ld   de, $1111                                   ; $5263: $11 $11 $11
	ld   de, $ffff                                   ; $5266: $11 $ff $ff
	rst  $38                                         ; $5269: $ff
	pop  af                                          ; $526a: $f1
	ld   b, l                                        ; $526b: $45
	ld   l, [hl]                                     ; $526c: $6e
	rst  $38                                         ; $526d: $ff
	db   $fd                                         ; $526e: $fd
	ld   hl, $1111                                   ; $526f: $21 $11 $11
	ld   de, $df1f                                   ; $5272: $11 $1f $df
	rst  $38                                         ; $5275: $ff
	rst  $38                                         ; $5276: $ff
	ld   d, l                                        ; $5277: $55
	ld   l, b                                        ; $5278: $68
	rst  JumpTable                                         ; $5279: $df
	rst  $38                                         ; $527a: $ff
	or   l                                           ; $527b: $b5
	ld   de, $1111                                   ; $527c: $11 $11 $11
	ld   de, $ffdf                                   ; $527f: $11 $df $ff
	rst  $38                                         ; $5282: $ff
	ld   a, [$6d46]                                  ; $5283: $fa $46 $6d
	rst  $38                                         ; $5286: $ff

Call_0d1_5287:
	db   $fc                                         ; $5287: $fc
	ld   d, c                                        ; $5288: $51
	ld   de, $1111                                   ; $5289: $11 $11 $11
	inc  d                                           ; $528c: $14
	db   $fc                                         ; $528d: $fc
	rst  $38                                         ; $528e: $ff
	rst  $38                                         ; $528f: $ff
	sub  $79                                         ; $5290: $d6 $79
	sbc  a                                           ; $5292: $9f
	rst  $38                                         ; $5293: $ff
	rst  $30                                         ; $5294: $f7
	ld   de, $1111                                   ; $5295: $11 $11 $11
	ld   de, $ff19                                   ; $5298: $11 $19 $ff
	rst  $38                                         ; $529b: $ff
	rst  $38                                         ; $529c: $ff
	sub  l                                           ; $529d: $95
	cp   a                                           ; $529e: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $529f: $cf
	rst  $38                                         ; $52a0: $ff
	jp   Jump_0d1_7213                               ; $52a1: $c3 $13 $72


	ld   de, $1811                                   ; $52a4: $11 $11 $18
	cp   $ff                                         ; $52a7: $fe $ff
	ei                                               ; $52a9: $fb
	ld   e, e                                        ; $52aa: $5b
	xor  l                                           ; $52ab: $ad
	rst  $38                                         ; $52ac: $ff
	rst  $38                                         ; $52ad: $ff
	sbc  b                                           ; $52ae: $98
	ld   b, d                                        ; $52af: $42
	inc  h                                           ; $52b0: $24
	ld   h, c                                        ; $52b1: $61
	ld   de, $e911                                   ; $52b2: $11 $11 $e9
	rst  $38                                         ; $52b5: $ff
	ld   a, [$ecaa]                                  ; $52b6: $fa $aa $ec
	adc  a                                           ; $52b9: $8f
	rst  $38                                         ; $52ba: $ff
	add  l                                           ; $52bb: $85
	add  l                                           ; $52bc: $85
	add  hl, sp                                      ; $52bd: $39
	ld   [hl], d                                     ; $52be: $72
	ld   de, $fc11                                   ; $52bf: $11 $11 $fc
	rst  JumpTable                                         ; $52c2: $df
	rst  $38                                         ; $52c3: $ff
	db   $ed                                         ; $52c4: $ed
	ld   a, e                                        ; $52c5: $7b
	xor  a                                           ; $52c6: $af
	rst  $38                                         ; $52c7: $ff
	db   $fc                                         ; $52c8: $fc
	ld   h, c                                        ; $52c9: $61
	ld   b, a                                        ; $52ca: $47
	or   h                                           ; $52cb: $b4
	ld   de, $1f11                                   ; $52cc: $11 $11 $1f
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	call c, $aafe                                    ; $52d1: $dc $fe $aa
	rst  $38                                         ; $52d4: $ff
	db   $fc                                         ; $52d5: $fc
	adc  b                                           ; $52d6: $88
	ld   h, e                                        ; $52d7: $63
	ld   b, a                                        ; $52d8: $47
	ld   d, c                                        ; $52d9: $51
	ld   de, $ba18                                   ; $52da: $11 $18 $ba
	rst  $38                                         ; $52dd: $ff
	push af                                          ; $52de: $f5
	rst  $38                                         ; $52df: $ff
	and  h                                           ; $52e0: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52e1: $cf
	rst  $38                                         ; $52e2: $ff
	cp   e                                           ; $52e3: $bb
	and  c                                           ; $52e4: $a1
	ld   a, [de]                                     ; $52e5: $1a
	sub  c                                           ; $52e6: $91
	ld   de, $5a11                                   ; $52e7: $11 $11 $5a
	cp   c                                           ; $52ea: $b9
	rst  $38                                         ; $52eb: $ff
	rst  $38                                         ; $52ec: $ff
	cp   d                                           ; $52ed: $ba
	cp   e                                           ; $52ee: $bb
	rst  $38                                         ; $52ef: $ff
	rst  $38                                         ; $52f0: $ff
	sub  e                                           ; $52f1: $93
	ld   d, a                                        ; $52f2: $57
	sbc  c                                           ; $52f3: $99
	ld   sp, $1211                                   ; $52f4: $31 $11 $12
	call $fc9f                                       ; $52f7: $cd $9f $fc
	rst  $38                                         ; $52fa: $ff
	jp   z, $ffdf                                    ; $52fb: $ca $df $ff

	ld   [$4b44], a                                  ; $52fe: $ea $44 $4b
	ld   sp, hl                                      ; $5301: $f9
	ld   de, $1711                                   ; $5302: $11 $11 $17
	db   $fc                                         ; $5305: $fc
	rst  $38                                         ; $5306: $ff
	ei                                               ; $5307: $fb
	rst  $38                                         ; $5308: $ff
	jp   c, $ffbf                                    ; $5309: $da $bf $ff

	ld   [$4c65], a                                  ; $530c: $ea $65 $4c
	push bc                                          ; $530f: $c5
	ld   de, $1e11                                   ; $5310: $11 $11 $1e
	call $edff                                       ; $5313: $cd $ff $ed
	rst  $38                                         ; $5316: $ff
	jp   c, $ffef                                    ; $5317: $da $ef $ff

	reti                                             ; $531a: $d9


	ld   h, l                                        ; $531b: $65
	adc  a                                           ; $531c: $8f
	di                                               ; $531d: $f3
	ld   de, $1c11                                   ; $531e: $11 $11 $1c
	cp   c                                           ; $5321: $b9
	cp   $fe                                         ; $5322: $fe $fe
	rst  $38                                         ; $5324: $ff
	jp   c, $ff8f                                    ; $5325: $da $8f $ff

	or   a                                           ; $5328: $b7
	ld   a, d                                        ; $5329: $7a
	xor  e                                           ; $532a: $ab
	and  l                                           ; $532b: $a5
	ld   de, $1e11                                   ; $532c: $11 $11 $1e
	reti                                             ; $532f: $d9


	cp   $ff                                         ; $5330: $fe $ff
	rst  $38                                         ; $5332: $ff
	sbc  c                                           ; $5333: $99
	adc  a                                           ; $5334: $8f
	rst  $38                                         ; $5335: $ff
	ld   sp, hl                                      ; $5336: $f9
	add  a                                           ; $5337: $87
	cp   h                                           ; $5338: $bc
	push de                                          ; $5339: $d5
	ld   de, $1611                                   ; $533a: $11 $11 $16
	ei                                               ; $533d: $fb
	cp   a                                           ; $533e: $bf
	rst  $38                                         ; $533f: $ff
	rst  $38                                         ; $5340: $ff
	ret  z                                           ; $5341: $c8

	ld   a, h                                        ; $5342: $7c
	rst  $38                                         ; $5343: $ff
	ld   a, [$abaa]                                  ; $5344: $fa $aa $ab
	db   $db                                         ; $5347: $db
	ld   sp, $1111                                   ; $5348: $31 $11 $11
	ld   c, c                                        ; $534b: $49
	cp   [hl]                                        ; $534c: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $534d: $cf
	rst  $38                                         ; $534e: $ff
	rst  $30                                         ; $534f: $f7
	cp   h                                           ; $5350: $bc
	rst  $38                                         ; $5351: $ff
	rst  $38                                         ; $5352: $ff
	ret  c                                           ; $5353: $d8

	sbc  e                                           ; $5354: $9b
	call $1183                                       ; $5355: $cd $83 $11
	ld   de, $a719                                   ; $5358: $11 $19 $a7
	cp   [hl]                                        ; $535b: $be
	rst  $38                                         ; $535c: $ff
	rst  $28                                         ; $535d: $ef
	cp   d                                           ; $535e: $ba
	xor  l                                           ; $535f: $ad
	rst  $38                                         ; $5360: $ff
	db   $db                                         ; $5361: $db
	sbc  e                                           ; $5362: $9b
	call $11f9                                       ; $5363: $cd $f9 $11
	ld   de, $4511                                   ; $5366: $11 $11 $45
	ld   a, c                                        ; $5369: $79
	rst  JumpTable                                         ; $536a: $df
	cp   a                                           ; $536b: $bf
	ei                                               ; $536c: $fb
	ret  z                                           ; $536d: $c8

	rst  $38                                         ; $536e: $ff
	rst  $38                                         ; $536f: $ff
	call z, $cedb                                    ; $5370: $cc $db $ce
	and  h                                           ; $5373: $a4
	ld   de, $1111                                   ; $5374: $11 $11 $11
	ld   d, [hl]                                     ; $5377: $56
	ld   a, h                                        ; $5378: $7c
	cp   $ff                                         ; $5379: $fe $ff
	db   $ec                                         ; $537b: $ec
	sbc  d                                           ; $537c: $9a
	rst  $38                                         ; $537d: $ff
	sbc  $de                                         ; $537e: $de $de
	call c, Call_0d1_51dc                            ; $5380: $dc $dc $51
	ld   de, $1111                                   ; $5383: $11 $11 $11
	ld   b, [hl]                                     ; $5386: $46
	xor  [hl]                                        ; $5387: $ae
	db   $fd                                         ; $5388: $fd
	rst  JumpTable                                         ; $5389: $df
	jp   z, $ff9a                                    ; $538a: $ca $9a $ff

	rst  JumpTable                                         ; $538d: $df
	xor  $dc                                         ; $538e: $ee $dc
	ret                                              ; $5390: $c9


	ld   d, c                                        ; $5391: $51
	ld   de, $1111                                   ; $5392: $11 $11 $11
	ld   b, l                                        ; $5395: $45
	ld   a, b                                        ; $5396: $78
	rst  $28                                         ; $5397: $ef
	rst  JumpTable                                         ; $5398: $df
	cp   $c9                                         ; $5399: $fe $c9
	sbc  $df                                         ; $539b: $de $df
	call $dbdc                                       ; $539d: $cd $dc $db
	ld   h, e                                        ; $53a0: $63
	ld   de, $1111                                   ; $53a1: $11 $11 $11
	ld   de, $af47                                   ; $53a4: $11 $47 $af
	db   $dd                                         ; $53a7: $dd
	db   $fc                                         ; $53a8: $fc
	xor  d                                           ; $53a9: $aa
	xor  a                                           ; $53aa: $af
	xor  $fd                                         ; $53ab: $ee $fd
	db   $ec                                         ; $53ad: $ec
	call Call_0d1_6397                               ; $53ae: $cd $97 $63
	ld   hl, $1111                                   ; $53b1: $21 $11 $11
	ld   [hl-], a                                    ; $53b4: $32
	ld   e, c                                        ; $53b5: $59
	cp   e                                           ; $53b6: $bb
	xor  h                                           ; $53b7: $ac
	jp   c, $bc9a                                    ; $53b8: $da $9a $bc

	call $dedd                                       ; $53bb: $cd $dd $de
	db   $ec                                         ; $53be: $ec
	cp   c                                           ; $53bf: $b9
	add  [hl]                                        ; $53c0: $86
	ld   b, d                                        ; $53c1: $42
	ld   de, $3313                                   ; $53c2: $11 $13 $33
	inc  [hl]                                        ; $53c5: $34
	ld   d, a                                        ; $53c6: $57
	ld   [hl], a                                     ; $53c7: $77
	xor  c                                           ; $53c8: $a9
	sbc  b                                           ; $53c9: $98
	xor  e                                           ; $53ca: $ab
	sbc  $ee                                         ; $53cb: $de $ee
	rst  $28                                         ; $53cd: $ef
	rst  $38                                         ; $53ce: $ff
	db   $ec                                         ; $53cf: $ec
	cp   c                                           ; $53d0: $b9
	add  [hl]                                        ; $53d1: $86
	ld   d, h                                        ; $53d2: $54
	ld   de, $1111                                   ; $53d3: $11 $11 $11
	ld   de, $4523                                   ; $53d6: $11 $23 $45
	ld   [hl], a                                     ; $53d9: $77
	sbc  e                                           ; $53da: $9b
	call $ffff                                       ; $53db: $cd $ff $ff
	rst  $38                                         ; $53de: $ff
	rst  $38                                         ; $53df: $ff
	db   $ec                                         ; $53e0: $ec
	xor  d                                           ; $53e1: $aa
	add  [hl]                                        ; $53e2: $86
	ld   b, d                                        ; $53e3: $42
	ld   de, $1111                                   ; $53e4: $11 $11 $11
	ld   de, $3412                                   ; $53e7: $11 $12 $34
	ld   a, b                                        ; $53ea: $78
	xor  e                                           ; $53eb: $ab
	adc  $ff                                         ; $53ec: $ce $ff
	rst  $38                                         ; $53ee: $ff
	rst  $38                                         ; $53ef: $ff
	rst  $38                                         ; $53f0: $ff
	db   $ec                                         ; $53f1: $ec
	cp   c                                           ; $53f2: $b9
	ld   [hl], l                                     ; $53f3: $75
	ld   b, d                                        ; $53f4: $42
	ld   de, $1111                                   ; $53f5: $11 $11 $11
	ld   de, $3411                                   ; $53f8: $11 $11 $34
	ld   d, a                                        ; $53fb: $57
	sbc  d                                           ; $53fc: $9a
	adc  $ff                                         ; $53fd: $ce $ff
	rst  $38                                         ; $53ff: $ff
	rst  $38                                         ; $5400: $ff
	rst  $38                                         ; $5401: $ff
	db   $fd                                         ; $5402: $fd
	ret                                              ; $5403: $c9


	add  a                                           ; $5404: $87
	ld   h, l                                        ; $5405: $65
	ld   [hl-], a                                    ; $5406: $32
	ld   bc, $1111                                   ; $5407: $01 $11 $11
	ld   de, $5713                                   ; $540a: $11 $13 $57
	sbc  d                                           ; $540d: $9a
	xor  h                                           ; $540e: $ac
	xor  $ff                                         ; $540f: $ee $ff
	rst  $38                                         ; $5411: $ff
	rst  $38                                         ; $5412: $ff
	rst  $38                                         ; $5413: $ff
	db   $ec                                         ; $5414: $ec
	ret                                              ; $5415: $c9


	sub  a                                           ; $5416: $97
	ld   d, e                                        ; $5417: $53
	ld   hl, $1111                                   ; $5418: $21 $11 $11
	ld   de, $3402                                   ; $541b: $11 $02 $34
	ld   d, a                                        ; $541e: $57
	sbc  c                                           ; $541f: $99
	cp   h                                           ; $5420: $bc
	xor  $ff                                         ; $5421: $ee $ff
	rst  $38                                         ; $5423: $ff
	rst  $38                                         ; $5424: $ff
	cp   $db                                         ; $5425: $fe $db
	xor  b                                           ; $5427: $a8
	halt                                             ; $5428: $76
	ld   b, e                                        ; $5429: $43
	ld   hl, $1111                                   ; $542a: $21 $11 $11
	ld   de, $3412                                   ; $542d: $11 $12 $34
	ld   d, a                                        ; $5430: $57
	xor  d                                           ; $5431: $aa
	adc  $ff                                         ; $5432: $ce $ff
	rst  $38                                         ; $5434: $ff
	rst  $38                                         ; $5435: $ff
	rst  $38                                         ; $5436: $ff
	db   $fd                                         ; $5437: $fd
	db   $db                                         ; $5438: $db
	sbc  b                                           ; $5439: $98
	ld   [hl], l                                     ; $543a: $75
	ld   b, d                                        ; $543b: $42
	ld   de, $1111                                   ; $543c: $11 $11 $11
	ld   de, $4513                                   ; $543f: $11 $13 $45
	ld   l, c                                        ; $5442: $69
	sbc  e                                           ; $5443: $9b
	cp   l                                           ; $5444: $bd
	rst  $28                                         ; $5445: $ef
	rst  $38                                         ; $5446: $ff
	rst  $38                                         ; $5447: $ff
	rst  $38                                         ; $5448: $ff
	db   $ed                                         ; $5449: $ed
	res  2, a                                        ; $544a: $cb $97
	ld   h, l                                        ; $544c: $65
	ld   b, d                                        ; $544d: $42
	ld   de, $1111                                   ; $544e: $11 $11 $11
	ld   de, $3412                                   ; $5451: $11 $12 $34
	ld   l, b                                        ; $5454: $68
	sbc  d                                           ; $5455: $9a
	adc  $ef                                         ; $5456: $ce $ef
	rst  $38                                         ; $5458: $ff
	rst  $38                                         ; $5459: $ff
	rst  $38                                         ; $545a: $ff
	db   $fd                                         ; $545b: $fd
	jp   c, Jump_0d1_7598                            ; $545c: $da $98 $75

	ld   b, d                                        ; $545f: $42
	ld   de, $1111                                   ; $5460: $11 $11 $11
	ld   de, $3412                                   ; $5463: $11 $12 $34
	ld   h, a                                        ; $5466: $67
	sbc  c                                           ; $5467: $99
	cp   l                                           ; $5468: $bd
	xor  $ef                                         ; $5469: $ee $ef
	rst  $38                                         ; $546b: $ff
	rst  $38                                         ; $546c: $ff
	rst  $38                                         ; $546d: $ff
	db   $ec                                         ; $546e: $ec
	xor  b                                           ; $546f: $a8
	halt                                             ; $5470: $76
	ld   d, e                                        ; $5471: $53
	ld   hl, $1111                                   ; $5472: $21 $11 $11
	ld   de, $3411                                   ; $5475: $11 $11 $34
	ld   d, a                                        ; $5478: $57
	sbc  d                                           ; $5479: $9a
	xor  h                                           ; $547a: $ac
	rst  JumpTable                                         ; $547b: $df
	rst  $38                                         ; $547c: $ff
	rst  $38                                         ; $547d: $ff
	rst  $38                                         ; $547e: $ff
	rst  $38                                         ; $547f: $ff
	call c, Call_0d1_77b8                            ; $5480: $dc $b8 $77
	ld   d, h                                        ; $5483: $54
	ld   [hl-], a                                    ; $5484: $32
	ld   de, $1111                                   ; $5485: $11 $11 $11
	ld   de, $4623                                   ; $5488: $11 $23 $46
	ld   a, b                                        ; $548b: $78
	xor  e                                           ; $548c: $ab
	sbc  $fe                                         ; $548d: $de $fe
	rst  $38                                         ; $548f: $ff
	rst  $38                                         ; $5490: $ff
	rst  $38                                         ; $5491: $ff
	xor  $b9                                         ; $5492: $ee $b9
	add  a                                           ; $5494: $87
	ld   h, h                                        ; $5495: $64
	inc  sp                                          ; $5496: $33
	ld   hl, $1111                                   ; $5497: $21 $11 $11
	ld   de, $4513                                   ; $549a: $11 $13 $45
	ld   l, b                                        ; $549d: $68
	sbc  d                                           ; $549e: $9a
	cp   h                                           ; $549f: $bc
	sbc  $ff                                         ; $54a0: $de $ff
	rst  $38                                         ; $54a2: $ff
	rst  $38                                         ; $54a3: $ff
	cp   $cc                                         ; $54a4: $fe $cc
	xor  c                                           ; $54a6: $a9
	ld   [hl], a                                     ; $54a7: $77
	ld   d, h                                        ; $54a8: $54
	ld   [hl-], a                                    ; $54a9: $32
	ld   de, $1111                                   ; $54aa: $11 $11 $11
	ld   [de], a                                     ; $54ad: $12
	inc  [hl]                                        ; $54ae: $34
	ld   d, [hl]                                     ; $54af: $56
	adc  c                                           ; $54b0: $89
	xor  e                                           ; $54b1: $ab
	adc  $ff                                         ; $54b2: $ce $ff
	rst  $38                                         ; $54b4: $ff
	rst  $38                                         ; $54b5: $ff
	rst  $38                                         ; $54b6: $ff
	db   $ec                                         ; $54b7: $ec
	cp   d                                           ; $54b8: $ba
	add  a                                           ; $54b9: $87
	ld   h, l                                        ; $54ba: $65
	ld   b, e                                        ; $54bb: $43
	ld   sp, $1111                                   ; $54bc: $31 $11 $11
	ld   de, $4523                                   ; $54bf: $11 $23 $45
	ld   l, c                                        ; $54c2: $69
	sbc  d                                           ; $54c3: $9a
	call $ffef                                       ; $54c4: $cd $ef $ff
	rst  $38                                         ; $54c7: $ff
	rst  $38                                         ; $54c8: $ff
	db   $ed                                         ; $54c9: $ed
	cp   d                                           ; $54ca: $ba
	xor  c                                           ; $54cb: $a9
	ld   [hl], l                                     ; $54cc: $75
	ld   sp, $1111                                   ; $54cd: $31 $11 $11
	ld   de, $3411                                   ; $54d0: $11 $11 $34
	ld   e, b                                        ; $54d3: $58
	sbc  e                                           ; $54d4: $9b
	xor  d                                           ; $54d5: $aa
	db   $dd                                         ; $54d6: $dd
	rst  $28                                         ; $54d7: $ef
	rst  $38                                         ; $54d8: $ff
	rst  $38                                         ; $54d9: $ff
	cp   $dc                                         ; $54da: $fe $dc
	xor  b                                           ; $54dc: $a8
	ld   [hl], l                                     ; $54dd: $75
	ld   d, l                                        ; $54de: $55
	ld   sp, $1111                                   ; $54df: $31 $11 $11
	ld   [de], a                                     ; $54e2: $12
	inc  hl                                          ; $54e3: $23
	ld   b, l                                        ; $54e4: $45
	ld   a, c                                        ; $54e5: $79
	call $debb                                       ; $54e6: $cd $bb $de
	rst  $38                                         ; $54e9: $ff
	rst  $38                                         ; $54ea: $ff
	cp   $ed                                         ; $54eb: $fe $ed
	res  0, a                                        ; $54ed: $cb $87
	ld   d, h                                        ; $54ef: $54
	ld   sp, $1111                                   ; $54f0: $31 $11 $11
	ld   de, $5512                                   ; $54f3: $11 $12 $55
	ld   a, b                                        ; $54f6: $78
	adc  $cc                                         ; $54f7: $ce $cc
	sbc  $ff                                         ; $54f9: $de $ff
	rst  $38                                         ; $54fb: $ff
	rst  $38                                         ; $54fc: $ff
	rst  $38                                         ; $54fd: $ff
	db   $eb                                         ; $54fe: $eb
	add  [hl]                                        ; $54ff: $86
	ld   d, e                                        ; $5500: $53
	ld   de, $1111                                   ; $5501: $11 $11 $11
	ld   de, $4623                                   ; $5504: $11 $23 $46
	xor  c                                           ; $5507: $a9
	xor  a                                           ; $5508: $af
	db   $fd                                         ; $5509: $fd
	cp   h                                           ; $550a: $bc
	rst  $38                                         ; $550b: $ff
	rst  $38                                         ; $550c: $ff
	rst  $38                                         ; $550d: $ff
	rst  $38                                         ; $550e: $ff
	db   $fd                                         ; $550f: $fd
	xor  b                                           ; $5510: $a8
	ld   d, d                                        ; $5511: $52
	ld   de, $1111                                   ; $5512: $11 $11 $11
	ld   de, $5711                                   ; $5515: $11 $11 $57
	xor  c                                           ; $5518: $a9
	cp   a                                           ; $5519: $bf
	ld   a, [$eeac]                                  ; $551a: $fa $ac $ee
	rst  $38                                         ; $551d: $ff
	rst  $38                                         ; $551e: $ff
	rst  $38                                         ; $551f: $ff
	db   $fd                                         ; $5520: $fd
	sub  a                                           ; $5521: $97
	ld   h, d                                        ; $5522: $62
	ld   de, $1111                                   ; $5523: $11 $11 $11
	ld   de, $7912                                   ; $5526: $11 $12 $79
	xor  d                                           ; $5529: $aa
	rst  $28                                         ; $552a: $ef
	jp   c, $dfbd                                    ; $552b: $da $bd $df

	rst  $38                                         ; $552e: $ff
	rst  $38                                         ; $552f: $ff
	rst  $38                                         ; $5530: $ff
	db   $fd                                         ; $5531: $fd
	sbc  b                                           ; $5532: $98
	ld   h, c                                        ; $5533: $61
	ld   de, $1111                                   ; $5534: $11 $11 $11
	ld   de, $9a12                                   ; $5537: $11 $12 $9a
	xor  e                                           ; $553a: $ab
	rst  JumpTable                                         ; $553b: $df
	jp   z, $efed                                    ; $553c: $ca $ed $ef

	rst  $38                                         ; $553f: $ff
	rst  $38                                         ; $5540: $ff
	rst  $38                                         ; $5541: $ff
	db   $eb                                         ; $5542: $eb
	ld   [hl], a                                     ; $5543: $77
	ld   hl, $1111                                   ; $5544: $21 $11 $11
	ld   de, $3811                                   ; $5547: $11 $11 $38
	adc  l                                           ; $554a: $8d
	xor  h                                           ; $554b: $ac
	ei                                               ; $554c: $fb
	cp   e                                           ; $554d: $bb
	cp   a                                           ; $554e: $bf
	rst  $38                                         ; $554f: $ff
	rst  $38                                         ; $5550: $ff
	rst  $38                                         ; $5551: $ff
	cp   $a9                                         ; $5552: $fe $a9
	ld   [hl], e                                     ; $5554: $73
	ld   de, $1111                                   ; $5555: $11 $11 $11
	ld   de, $6822                                   ; $5558: $11 $22 $68
	adc  $ce                                         ; $555b: $ce $ce
	db   $db                                         ; $555d: $db
	cp   e                                           ; $555e: $bb
	rst  $28                                         ; $555f: $ef
	rst  $38                                         ; $5560: $ff
	rst  $38                                         ; $5561: $ff
	rst  $38                                         ; $5562: $ff
	db   $ec                                         ; $5563: $ec
	sub  h                                           ; $5564: $94
	ld   de, $1111                                   ; $5565: $11 $11 $11
	ld   de, $3711                                   ; $5568: $11 $11 $37
	adc  l                                           ; $556b: $8d
	db   $ed                                         ; $556c: $ed
	db   $fc                                         ; $556d: $fc
	cp   d                                           ; $556e: $ba
	xor  l                                           ; $556f: $ad
	rst  $38                                         ; $5570: $ff
	rst  $38                                         ; $5571: $ff
	rst  $38                                         ; $5572: $ff
	call c, $52a8                                    ; $5573: $dc $a8 $52
	ld   de, $1111                                   ; $5576: $11 $11 $11
	ld   de, $9c12                                   ; $5579: $11 $12 $9c
	cp   l                                           ; $557c: $bd
	rst  $38                                         ; $557d: $ff
	cp   l                                           ; $557e: $bd
	cp   e                                           ; $557f: $bb
	rst  JumpTable                                         ; $5580: $df
	rst  $38                                         ; $5581: $ff
	rst  $38                                         ; $5582: $ff
	db   $fd                                         ; $5583: $fd
	xor  d                                           ; $5584: $aa
	ld   [hl], d                                     ; $5585: $72

Jump_0d1_5586:
	ld   [de], a                                     ; $5586: $12
	ld   de, $1111                                   ; $5587: $11 $11 $11
	ld   [hl], $48                                   ; $558a: $36 $48
	xor  $ee                                         ; $558c: $ee $ee
	rst  $38                                         ; $558e: $ff
	ld   a, b                                        ; $558f: $78
	rst  $38                                         ; $5590: $ff
	rst  $38                                         ; $5591: $ff
	rst  $38                                         ; $5592: $ff
	db   $ed                                         ; $5593: $ed
	jp   c, $1294                                    ; $5594: $da $94 $12

	ld   de, $1111                                   ; $5597: $11 $11 $11
	inc  h                                           ; $559a: $24
	add  hl, sp                                      ; $559b: $39
	xor  a                                           ; $559c: $af
	rst  $38                                         ; $559d: $ff
	cp   $aa                                         ; $559e: $fe $aa
	rst  $28                                         ; $55a0: $ef
	rst  $38                                         ; $55a1: $ff
	rst  $38                                         ; $55a2: $ff
	rst  $38                                         ; $55a3: $ff

Call_0d1_55a4:
	bit  4, c                                        ; $55a4: $cb $61
	ld   de, $1121                                   ; $55a6: $11 $21 $11
	ld   de, $a911                                   ; $55a9: $11 $11 $a9
	sbc  a                                           ; $55ac: $9f
	rst  $38                                         ; $55ad: $ff
	call $afcb                                       ; $55ae: $cd $cb $af
	rst  $38                                         ; $55b1: $ff
	rst  $38                                         ; $55b2: $ff
	cp   $9b                                         ; $55b3: $fe $9b
	sub  c                                           ; $55b5: $91
	ld   de, $1111                                   ; $55b6: $11 $11 $11
	ld   de, $9b13                                   ; $55b9: $11 $13 $9b
	rst  $28                                         ; $55bc: $ef
	rst  JumpTable                                         ; $55bd: $df
	db   $fc                                         ; $55be: $fc
	adc  h                                           ; $55bf: $8c
	rst  $38                                         ; $55c0: $ff
	rst  JumpTable                                         ; $55c1: $df
	rst  $38                                         ; $55c2: $ff
	call $32a7                                       ; $55c3: $cd $a7 $32
	ld   sp, $1111                                   ; $55c6: $31 $11 $11
	ld   [de], a                                     ; $55c9: $12
	ld   d, [hl]                                     ; $55ca: $56
	adc  [hl]                                        ; $55cb: $8e
	cp   $df                                         ; $55cc: $fe $df
	jp   hl                                          ; $55ce: $e9


	ld   a, a                                        ; $55cf: $7f
	cp   $ef                                         ; $55d0: $fe $ef
	db   $fc                                         ; $55d2: $fc
	cp   h                                           ; $55d3: $bc
	or   d                                           ; $55d4: $b2
	inc  de                                          ; $55d5: $13
	ld   de, $1111                                   ; $55d6: $11 $11 $11
	inc  de                                          ; $55d9: $13
	cp   l                                           ; $55da: $bd
	rst  $38                                         ; $55db: $ff
	rst  $28                                         ; $55dc: $ef
	ld   hl, sp-$33                                  ; $55dd: $f8 $cd
	rst  $28                                         ; $55df: $ef
	rst  $28                                         ; $55e0: $ef
	cp   $ba                                         ; $55e1: $fe $ba
	and  [hl]                                        ; $55e3: $a6
	inc  de                                          ; $55e4: $13
	ld   de, $1111                                   ; $55e5: $11 $11 $11
	ld   d, c                                        ; $55e8: $51
	ld   e, a                                        ; $55e9: $5f
	rst  $38                                         ; $55ea: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55eb: $cf
	rst  $30                                         ; $55ec: $f7
	sbc  a                                           ; $55ed: $9f
	db   $ed                                         ; $55ee: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55ef: $cf
	ld   sp, hl                                      ; $55f0: $f9
	sbc  d                                           ; $55f1: $9a
	sub  [hl]                                        ; $55f2: $96
	ld   [hl+], a                                    ; $55f3: $22
	ld   de, $1111                                   ; $55f4: $11 $11 $11
	inc  hl                                          ; $55f7: $23
	call $ffff                                       ; $55f8: $cd $ff $ff
	sub  $cf                                         ; $55fb: $d6 $cf
	rst  $38                                         ; $55fd: $ff
	rst  JumpTable                                         ; $55fe: $df
	and  $68                                         ; $55ff: $e6 $68
	ld   d, d                                        ; $5601: $52
	inc  de                                          ; $5602: $13
	ld   b, c                                        ; $5603: $41
	ld   de, $1d21                                   ; $5604: $11 $21 $1d
	rst  $38                                         ; $5607: $ff
	rst  $38                                         ; $5608: $ff
	ld   a, [$df9b]                                  ; $5609: $fa $9b $df
	cp   $fc                                         ; $560c: $fe $fc
	ld   h, [hl]                                     ; $560e: $66
	ld   [hl], $41                                   ; $560f: $36 $41
	ld   de, $1111                                   ; $5611: $11 $11 $11
	ld   [de], a                                     ; $5614: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5615: $cf
	rst  $38                                         ; $5616: $ff
	rst  $38                                         ; $5617: $ff
	add  [hl]                                        ; $5618: $86
	rst  $28                                         ; $5619: $ef
	rst  $38                                         ; $561a: $ff
	rst  $38                                         ; $561b: $ff
	sub  l                                           ; $561c: $95
	ld   d, e                                        ; $561d: $53
	ld   hl, $1111                                   ; $561e: $21 $11 $11
	ld   [de], a                                     ; $5621: $12
	dec  h                                           ; $5622: $25
	rst  $38                                         ; $5623: $ff
	rst  $38                                         ; $5624: $ff
	rst  $38                                         ; $5625: $ff
	cp   e                                           ; $5626: $bb
	rst  JumpTable                                         ; $5627: $df
	cp   $ff                                         ; $5628: $fe $ff
	add  h                                           ; $562a: $84
	ld   b, c                                        ; $562b: $41
	ld   de, $1124                                   ; $562c: $11 $24 $11
	ld   [de], a                                     ; $562f: $12
	ld   [de], a                                     ; $5630: $12
	rst  $38                                         ; $5631: $ff
	rst  $38                                         ; $5632: $ff
	rst  $38                                         ; $5633: $ff
	push bc                                          ; $5634: $c5
	db   $dd                                         ; $5635: $dd
	cp   $df                                         ; $5636: $fe $df
	and  c                                           ; $5638: $a1
	inc  sp                                          ; $5639: $33
	ld   de, $1111                                   ; $563a: $11 $11 $11
	ld   de, $ff1f                                   ; $563d: $11 $1f $ff
	rst  $38                                         ; $5640: $ff
	cp   $4c                                         ; $5641: $fe $4c
	ld   sp, hl                                      ; $5643: $f9
	rst  $28                                         ; $5644: $ef
	ld   [$1122], a                                  ; $5645: $ea $22 $11
	ld   de, $1111                                   ; $5648: $11 $11 $11
	ld   d, $af                                      ; $564b: $16 $af
	rst  $38                                         ; $564d: $ff
	rst  $28                                         ; $564e: $ef
	ld   sp, hl                                      ; $564f: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5650: $cf
	ld   a, [$b1df]                                  ; $5651: $fa $df $b1
	ld   hl, $1111                                   ; $5654: $21 $11 $11
	ld   de, $af11                                   ; $5657: $11 $11 $af
	rst  $38                                         ; $565a: $ff
	rst  $38                                         ; $565b: $ff
	db   $f4                                         ; $565c: $f4
	rst  JumpTable                                         ; $565d: $df
	or   a                                           ; $565e: $b7
	rst  $38                                         ; $565f: $ff
	call nz, $1121                                   ; $5660: $c4 $21 $11
	ld   b, c                                        ; $5663: $41
	ld   de, $4815                                   ; $5664: $11 $15 $48
	rst  $38                                         ; $5667: $ff
	xor  a                                           ; $5668: $af
	ei                                               ; $5669: $fb
	rst  $30                                         ; $566a: $f7
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	or   a                                           ; $566d: $b7
	ld   hl, $1111                                   ; $566e: $21 $11 $11
	ld   de, $3a11                                   ; $5671: $11 $11 $3a
	rst  $38                                         ; $5674: $ff
	db   $fc                                         ; $5675: $fc
	rst  JumpTable                                         ; $5676: $df
	add  l                                           ; $5677: $85
	ei                                               ; $5678: $fb
	rst  $38                                         ; $5679: $ff
	sbc  e                                           ; $567a: $9b
	ld   de, $1111                                   ; $567b: $11 $11 $11
	ld   de, $af32                                   ; $567e: $11 $32 $af
	rst  $38                                         ; $5681: $ff
	rst  JumpTable                                         ; $5682: $df
	rst  $20                                         ; $5683: $e7
	rst  JumpTable                                         ; $5684: $df
	cp   $fd                                         ; $5685: $fe $fd
	ld   h, c                                        ; $5687: $61
	ld   de, $1111                                   ; $5688: $11 $11 $11
	dec  d                                           ; $568b: $15
	jr   @+$01                                       ; $568c: $18 $ff

	rst  $38                                         ; $568e: $ff
	rst  $38                                         ; $568f: $ff
	adc  [hl]                                        ; $5690: $8e
	db   $fc                                         ; $5691: $fc
	rst  $38                                         ; $5692: $ff
	jp   z, $1111                                    ; $5693: $ca $11 $11

	ld   de, $1711                                   ; $5696: $11 $11 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5699: $cf
	rst  $38                                         ; $569a: $ff
	db   $fd                                         ; $569b: $fd
	ld   c, [hl]                                     ; $569c: $4e
	ld   a, [$fbff]                                  ; $569d: $fa $ff $fb
	ld   [de], a                                     ; $56a0: $12
	ld   de, $2111                                   ; $56a1: $11 $11 $21
	ld   e, $84                                      ; $56a4: $1e $84
	rst  $38                                         ; $56a6: $ff
	call z, $faff                                    ; $56a7: $cc $ff $fa
	rst  $38                                         ; $56aa: $ff
	db   $fd                                         ; $56ab: $fd
	ld   h, [hl]                                     ; $56ac: $66
	ld   de, $1111                                   ; $56ad: $11 $11 $11
	rla                                              ; $56b0: $17
	inc  e                                           ; $56b1: $1c
	rst  $38                                         ; $56b2: $ff
	cp   a                                           ; $56b3: $bf
	ei                                               ; $56b4: $fb
	inc  e                                           ; $56b5: $1c
	rst  $38                                         ; $56b6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56b7: $cf
	pop  de                                          ; $56b8: $d1
	ld   de, $1111                                   ; $56b9: $11 $11 $11
	ld   de, $ff8f                                   ; $56bc: $11 $8f $ff
	ld   a, [$fd97]                                  ; $56bf: $fa $97 $fd
	cp   a                                           ; $56c2: $bf
	ld   a, [$1177]                                  ; $56c3: $fa $77 $11
	dec  d                                           ; $56c6: $15
	ld   de, $971e                                   ; $56c7: $11 $1e $97
	rst  $38                                         ; $56ca: $ff
	db   $db                                         ; $56cb: $db
	db   $fc                                         ; $56cc: $fc
	ld   l, b                                        ; $56cd: $68
	db   $fc                                         ; $56ce: $fc
	rst  $38                                         ; $56cf: $ff
	halt                                             ; $56d0: $76
	ld   de, $1111                                   ; $56d1: $11 $11 $11
	ld   a, [de]                                     ; $56d4: $1a
	rst  $38                                         ; $56d5: $ff
	rst  $38                                         ; $56d6: $ff
	push af                                          ; $56d7: $f5
	ld   l, c                                        ; $56d8: $69
	rst  JumpTable                                         ; $56d9: $df
	rst  $38                                         ; $56da: $ff
	rst  $30                                         ; $56db: $f7
	ld   de, $1111                                   ; $56dc: $11 $11 $11
	ld   d, $2c                                      ; $56df: $16 $2c
	rst  $38                                         ; $56e1: $ff
	ld   sp, hl                                      ; $56e2: $f9
	cp   $29                                         ; $56e3: $fe $29
	db   $ed                                         ; $56e5: $ed
	xor  e                                           ; $56e6: $ab
	db   $f4                                         ; $56e7: $f4
	ld   de, $1111                                   ; $56e8: $11 $11 $11
	ld   b, c                                        ; $56eb: $41
	rst  $38                                         ; $56ec: $ff
	rst  $38                                         ; $56ed: $ff
	adc  a                                           ; $56ee: $8f
	pop  hl                                          ; $56ef: $e1
	sbc  a                                           ; $56f0: $9f
	cp   $cc                                         ; $56f1: $fe $cc
	ld   d, c                                        ; $56f3: $51
	ld   de, $1311                                   ; $56f4: $11 $11 $13
	ld   c, a                                        ; $56f7: $4f
	db   $fc                                         ; $56f8: $fc
	rst  $38                                         ; $56f9: $ff
	ld   c, a                                        ; $56fa: $4f
	ld   e, $c6                                      ; $56fb: $1e $c6
	ld   a, [$11b6]                                  ; $56fd: $fa $b6 $11
	ld   de, $4f11                                   ; $5700: $11 $11 $4f
	rst  $38                                         ; $5703: $ff
	rst  $38                                         ; $5704: $ff
	sub  [hl]                                        ; $5705: $96
	ld   a, h                                        ; $5706: $7c
	xor  a                                           ; $5707: $af
	rst  $38                                         ; $5708: $ff
	ld   hl, sp+$11                                  ; $5709: $f8 $11
	ld   de, $1411                                   ; $570b: $11 $11 $14
	rst  $38                                         ; $570e: $ff
	rst  $38                                         ; $570f: $ff
	pop  bc                                          ; $5710: $c1
	sbc  e                                           ; $5711: $9b
	ld   e, h                                        ; $5712: $5c
	rst  $28                                         ; $5713: $ef
	and  l                                           ; $5714: $a5
	sub  c                                           ; $5715: $91
	ld   de, $1411                                   ; $5716: $11 $11 $14
	rst  $38                                         ; $5719: $ff
	rst  $38                                         ; $571a: $ff
	ld   c, a                                        ; $571b: $4f
	add  c                                           ; $571c: $81
	adc  e                                           ; $571d: $8b
	ei                                               ; $571e: $fb
	db   $dd                                         ; $571f: $dd
	ld   [hl], c                                     ; $5720: $71
	ld   de, $1411                                   ; $5721: $11 $11 $14
	ld   a, a                                        ; $5724: $7f
	rst  $38                                         ; $5725: $ff
	call nc, $1cb1                                   ; $5726: $d4 $b1 $1c
	rst  JumpTable                                         ; $5729: $df
	ld   sp, hl                                      ; $572a: $f9
	or   d                                           ; $572b: $b2
	ld   de, $1111                                   ; $572c: $11 $11 $11
	rst  $38                                         ; $572f: $ff
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	ld   hl, $afd7                                   ; $5732: $21 $d7 $af
	rst  $38                                         ; $5735: $ff
	ld   de, $1141                                   ; $5736: $11 $41 $11
	ld   d, $ff                                      ; $5739: $16 $ff
	rst  $38                                         ; $573b: $ff

jr_0d1_573c:
	sub  c                                           ; $573c: $91
	ld   d, d                                        ; $573d: $52
	ld   d, a                                        ; $573e: $57
	rst  $38                                         ; $573f: $ff
	halt                                             ; $5740: $76
	ld   sp, $1141                                   ; $5741: $31 $41 $11
	ld   e, $ff                                      ; $5744: $1e $ff
	rst  $38                                         ; $5746: $ff
	sub  [hl]                                        ; $5747: $96
	ld   b, c                                        ; $5748: $41
	ld   a, [de]                                     ; $5749: $1a
	ei                                               ; $574a: $fb
	cp   d                                           ; $574b: $ba
	add  c                                           ; $574c: $81
	ld   de, $1f11                                   ; $574d: $11 $11 $1f
	rst  $38                                         ; $5750: $ff
	rst  $38                                         ; $5751: $ff
	pop  de                                          ; $5752: $d1
	ld   de, $df95                                   ; $5753: $11 $95 $df
	sub  c                                           ; $5756: $91
	ld   de, $1c11                                   ; $5757: $11 $11 $1c
	rra                                              ; $575a: $1f
	rst  $38                                         ; $575b: $ff
	ei                                               ; $575c: $fb
	ld   d, [hl]                                     ; $575d: $56
	ld   d, $ff                                      ; $575e: $16 $ff
	db   $f4                                         ; $5760: $f4
	ld   de, $1131                                   ; $5761: $11 $31 $11
	ld   [hl], c                                     ; $5764: $71
	rst  $38                                         ; $5765: $ff
	rst  $38                                         ; $5766: $ff
	pop  af                                          ; $5767: $f1
	ld   de, $1fab                                   ; $5768: $11 $ab $1f
	add  c                                           ; $576b: $81
	ld   de, $1761                                   ; $576c: $11 $61 $17
	rst  $38                                         ; $576f: $ff
	rst  $38                                         ; $5770: $ff
	or   $11                                         ; $5771: $f6 $11
	inc  d                                           ; $5773: $14
	ld   c, l                                        ; $5774: $4d

Call_0d1_5775:
	ld   hl, sp+$11                                  ; $5775: $f8 $11
	ld   h, e                                        ; $5777: $63
	ld   de, $ff5e                                   ; $5778: $11 $5e $ff
	rst  $38                                         ; $577b: $ff
	ld   [hl], c                                     ; $577c: $71
	rla                                              ; $577d: $17
	ld   [hl+], a                                    ; $577e: $22
	db   $fd                                         ; $577f: $fd
	ld   d, c                                        ; $5780: $51
	inc  de                                          ; $5781: $13
	ld   sp, rAUD1ENV                                   ; $5782: $31 $12 $ff
	rst  $38                                         ; $5785: $ff
	pop  af                                          ; $5786: $f1
	ld   b, c                                        ; $5787: $41
	and  c                                           ; $5788: $a1
	rra                                              ; $5789: $1f
	ld   [hl], c                                     ; $578a: $71
	ld   de, $1161                                   ; $578b: $11 $61 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $578e: $cf
	rst  $38                                         ; $578f: $ff
	rst  $38                                         ; $5790: $ff
	ld   b, c                                        ; $5791: $41
	inc  e                                           ; $5792: $1c
	ld   c, h                                        ; $5793: $4c
	ld   hl, sp+$21                                  ; $5794: $f8 $21
	inc  d                                           ; $5796: $14
	ld   de, $ff6d                                   ; $5797: $11 $6d $ff
	rst  $38                                         ; $579a: $ff
	push bc                                          ; $579b: $c5
	ld   de, $ed2c                                   ; $579c: $11 $2c $ed
	ld   sp, $1111                                   ; $579f: $31 $11 $11
	ld   e, b                                        ; $57a2: $58
	rst  $38                                         ; $57a3: $ff
	rst  $38                                         ; $57a4: $ff
	db   $fd                                         ; $57a5: $fd
	ld   de, $9d41                                   ; $57a6: $11 $41 $9d
	xor  c                                           ; $57a9: $a9
	ld   de, $1441                                   ; $57aa: $11 $41 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57ad: $cf
	rst  $38                                         ; $57ae: $ff
	cp   $11                                         ; $57af: $fe $11
	jr   jr_0d1_573c                                 ; $57b1: $18 $89

	ei                                               ; $57b3: $fb
	ld   de, $1191                                   ; $57b4: $11 $91 $11
	rst  $38                                         ; $57b7: $ff
	rst  $38                                         ; $57b8: $ff
	rst  $38                                         ; $57b9: $ff
	ld   [de], a                                     ; $57ba: $12
	inc  de                                          ; $57bb: $13
	ld   [hl], l                                     ; $57bc: $75
	ei                                               ; $57bd: $fb
	ld   de, $1111                                   ; $57be: $11 $11 $11
	sbc  a                                           ; $57c1: $9f
	rst  $38                                         ; $57c2: $ff
	rst  $38                                         ; $57c3: $ff
	pop  hl                                          ; $57c4: $e1
	inc  de                                          ; $57c5: $13
	inc  d                                           ; $57c6: $14
	db   $fc                                         ; $57c7: $fc
	add  c                                           ; $57c8: $81
	ld   de, $2b11                                   ; $57c9: $11 $11 $2b
	rst  $38                                         ; $57cc: $ff
	rst  $38                                         ; $57cd: $ff
	di                                               ; $57ce: $f3
	ld   de, $df15                                   ; $57cf: $11 $15 $df
	dec  d                                           ; $57d2: $15
	ld   hl, $3d11                                   ; $57d3: $21 $11 $3d
	rst  $28                                         ; $57d6: $ef
	rst  $38                                         ; $57d7: $ff
	jp   c, $1111                                    ; $57d8: $da $11 $11

	rst  $38                                         ; $57db: $ff
	ld   [hl-], a                                    ; $57dc: $32
	ld   hl, $1f11                                   ; $57dd: $21 $11 $1f
	rra                                              ; $57e0: $1f
	rst  $38                                         ; $57e1: $ff
	push af                                          ; $57e2: $f5
	ld   h, c                                        ; $57e3: $61
	ld   de, $d17d                                   ; $57e4: $11 $7d $d1
	ld   b, c                                        ; $57e7: $41
	ld   de, $ff1f                                   ; $57e8: $11 $1f $ff
	rst  $38                                         ; $57eb: $ff
	rst  $30                                         ; $57ec: $f7
	and  c                                           ; $57ed: $a1
	ld   de, $744f                                   ; $57ee: $11 $4f $74
	ld   sp, $1f11                                   ; $57f1: $31 $11 $1f
	sbc  $ff                                         ; $57f4: $de $ff
	cp   $63                                         ; $57f6: $fe $63
	ld   de, $f31f                                   ; $57f8: $11 $1f $f3
	ld   b, c                                        ; $57fb: $41
	ld   de, $f91c                                   ; $57fc: $11 $1c $f9
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	dec  a                                           ; $5801: $3d
	ld   de, $f81b                                   ; $5802: $11 $1b $f8
	rla                                              ; $5805: $17
	ld   de, wTitleScreenCounterBetweenBlinkAnimIdxes                                   ; $5806: $11 $16 $cc
	rst  $38                                         ; $5809: $ff
	rst  $38                                         ; $580a: $ff
	halt                                             ; $580b: $76
	ld   de, $ff17                                   ; $580c: $11 $17 $ff
	ld   de, $1111                                   ; $580f: $11 $11 $11
	rst  $38                                         ; $5812: $ff
	rst  $38                                         ; $5813: $ff
	rst  $38                                         ; $5814: $ff
	ld   [hl], a                                     ; $5815: $77
	ld   de, rAUD1HIGH                                   ; $5816: $11 $14 $ff
	ld   de, $1111                                   ; $5819: $11 $11 $11
	rst  $38                                         ; $581c: $ff
	rst  $38                                         ; $581d: $ff
	rst  $38                                         ; $581e: $ff
	ld   a, c                                        ; $581f: $79
	ld   de, rAUD1LEN                                   ; $5820: $11 $11 $ff
	ld   de, $1111                                   ; $5823: $11 $11 $11
	db   $fd                                         ; $5826: $fd
	rst  $38                                         ; $5827: $ff
	rst  $38                                         ; $5828: $ff
	ld   h, c                                        ; $5829: $61
	sub  c                                           ; $582a: $91
	ld   de, $11ff                                   ; $582b: $11 $ff $11
	ld   sp, $de11                                   ; $582e: $31 $11 $de
	rst  $38                                         ; $5831: $ff
	rst  $38                                         ; $5832: $ff
	ld   sp, hl                                      ; $5833: $f9
	add  c                                           ; $5834: $81
	ld   de, $41af                                   ; $5835: $11 $af $41
	ld   de, $6f11                                   ; $5838: $11 $11 $6f
	rst  $38                                         ; $583b: $ff
	rst  $38                                         ; $583c: $ff
	ldh  a, [c]                                      ; $583d: $f2
	sub  c                                           ; $583e: $91
	ld   de, $811f                                   ; $583f: $11 $1f $81
	ld   de, $3f11                                   ; $5842: $11 $11 $3f
	rst  $38                                         ; $5845: $ff
	rst  $38                                         ; $5846: $ff
	rst  $30                                         ; $5847: $f7
	ld   hl, $1f11                                   ; $5848: $21 $11 $1f
	pop  af                                          ; $584b: $f1
	ld   de, $1f11                                   ; $584c: $11 $11 $1f
	rst  $38                                         ; $584f: $ff
	rst  $38                                         ; $5850: $ff
	rst  $38                                         ; $5851: $ff
	ld   de, $3e11                                   ; $5852: $11 $11 $3e
	ldh  a, [c]                                      ; $5855: $f2
	ld   de, $1f11                                   ; $5856: $11 $11 $1f
	rst  $28                                         ; $5859: $ef
	rst  $38                                         ; $585a: $ff
	rst  $38                                         ; $585b: $ff
	ld   d, c                                        ; $585c: $51
	ld   de, $f718                                   ; $585d: $11 $18 $f7
	ld   de, $1c11                                   ; $5860: $11 $11 $1c
	rst  $28                                         ; $5863: $ef
	rst  $38                                         ; $5864: $ff
	rst  $38                                         ; $5865: $ff
	pop  de                                          ; $5866: $d1
	ld   de, rAUD1LEN                                   ; $5867: $11 $11 $ff
	ld   de, $1311                                   ; $586a: $11 $11 $13
	rst  $38                                         ; $586d: $ff
	rst  $38                                         ; $586e: $ff
	rst  $38                                         ; $586f: $ff
	or   $11                                         ; $5870: $f6 $11
	ld   hl, $d1bf                                   ; $5872: $21 $bf $d1
	ld   de, $fc11                                   ; $5875: $11 $11 $fc
	rst  $38                                         ; $5878: $ff
	rst  $38                                         ; $5879: $ff
	rst  $38                                         ; $587a: $ff
	ld   de, $1f62                                   ; $587b: $11 $62 $1f
	ld   sp, hl                                      ; $587e: $f9
	ld   de, $3f11                                   ; $587f: $11 $11 $3f
	rst  JumpTable                                         ; $5882: $df
	rst  $38                                         ; $5883: $ff
	rst  $38                                         ; $5884: $ff

Jump_0d1_5885:
	pop  af                                          ; $5885: $f1
	rla                                              ; $5886: $17
	inc  d                                           ; $5887: $14
	cp   $81                                         ; $5888: $fe $81
	ld   de, $ff17                                   ; $588a: $11 $17 $ff
	rst  $38                                         ; $588d: $ff
	rst  $38                                         ; $588e: $ff
	rst  $38                                         ; $588f: $ff
	ld   de, $9fb1                                   ; $5890: $11 $b1 $9f
	ei                                               ; $5893: $fb
	ld   de, $cd11                                   ; $5894: $11 $11 $cd
	rst  $38                                         ; $5897: $ff
	rst  $38                                         ; $5898: $ff
	db   $fd                                         ; $5899: $fd
	pop  af                                          ; $589a: $f1
	ld   a, [de]                                     ; $589b: $1a
	dec  hl                                          ; $589c: $2b
	db   $ed                                         ; $589d: $ed
	pop  bc                                          ; $589e: $c1
	ld   de, $df1d                                   ; $589f: $11 $1d $df
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	rst  JumpTable                                         ; $58a4: $df
	ld   de, $8fc6                                   ; $58a5: $11 $c6 $8f
	rst  $28                                         ; $58a8: $ef
	ld   de, $bf11                                   ; $58a9: $11 $11 $bf
	adc  a                                           ; $58ac: $8f
	rst  $38                                         ; $58ad: $ff
	db   $fd                                         ; $58ae: $fd
	cp   $12                                         ; $58af: $fe $12
	add  $da                                         ; $58b1: $c6 $da
	add  $11                                         ; $58b3: $c6 $11
	ld   de, $eff8                                   ; $58b5: $11 $f8 $ef
	db   $fc                                         ; $58b8: $fc
	db   $fd                                         ; $58b9: $fd
	pop  de                                          ; $58ba: $d1
	inc  e                                           ; $58bb: $1c
	sub  a                                           ; $58bc: $97
	ei                                               ; $58bd: $fb
	and  c                                           ; $58be: $a1
	ld   de, $f716                                   ; $58bf: $11 $16 $f7
	rst  $38                                         ; $58c2: $ff
	cp   $fb                                         ; $58c3: $fe $fb
	add  c                                           ; $58c5: $81
	ld   a, $ad                                      ; $58c6: $3e $ad
	ld   hl, sp+$61                                  ; $58c8: $f8 $61
	ld   de, $f61a                                   ; $58ca: $11 $1a $f6
	rst  $38                                         ; $58cd: $ff
	rst  JumpTable                                         ; $58ce: $df
	xor  d                                           ; $58cf: $aa
	pop  bc                                          ; $58d0: $c1
	ld   a, [hl]                                     ; $58d1: $7e
	xor  [hl]                                        ; $58d2: $ae
	cp   c                                           ; $58d3: $b9
	ld   h, c                                        ; $58d4: $61
	ld   de, $f618                                   ; $58d5: $11 $18 $f6
	rst  $38                                         ; $58d8: $ff
	db   $eb                                         ; $58d9: $eb
	sbc  d                                           ; $58da: $9a
	pop  hl                                          ; $58db: $e1
	ld   a, a                                        ; $58dc: $7f
	xor  d                                           ; $58dd: $aa
	call z, $1171                                    ; $58de: $cc $71 $11
	ld   de, $4fef                                   ; $58e1: $11 $ef $4f
	ld   sp, hl                                      ; $58e4: $f9
	or   e                                           ; $58e5: $b3
	sbc  $1e                                         ; $58e6: $de $1e
	ld   a, [$97f9]                                  ; $58e8: $fa $f9 $97
	ld   de, $4f11                                   ; $58eb: $11 $11 $4f
	xor  c                                           ; $58ee: $a9
	rst  $38                                         ; $58ef: $ff
	ld   l, c                                        ; $58f0: $69
	ld   l, a                                        ; $58f1: $6f
	ld   [hl], e                                     ; $58f2: $73
	cp   $cc                                         ; $58f3: $fe $cc
	sbc  e                                           ; $58f5: $9b
	ld   d, c                                        ; $58f6: $51
	ld   de, $fc12                                   ; $58f7: $11 $12 $fc
	xor  a                                           ; $58fa: $af
	jp   $c964                                       ; $58fb: $c3 $64 $c9


	ld   a, a                                        ; $58fe: $7f
	db   $fd                                         ; $58ff: $fd
	ret                                              ; $5900: $c9


	or   h                                           ; $5901: $b4
	ld   [de], a                                     ; $5902: $12
	ld   de, $f718                                   ; $5903: $11 $18 $f7
	sbc  a                                           ; $5906: $9f
	ld   b, e                                        ; $5907: $43
	ld   d, a                                        ; $5908: $57
	ld   a, [$cbff]                                  ; $5909: $fa $ff $cb
	sbc  d                                           ; $590c: $9a
	or   [hl]                                        ; $590d: $b6
	ld   h, a                                        ; $590e: $67
	inc  [hl]                                        ; $590f: $34
	ld   de, $5c46                                   ; $5910: $11 $46 $5c
	or   l                                           ; $5913: $b5
	add  $8e                                         ; $5914: $c6 $8e
	sbc  a                                           ; $5916: $9f
	jp   c, $7dc6                                    ; $5917: $da $c6 $7d

	sbc  e                                           ; $591a: $9b
	or   [hl]                                        ; $591b: $b6
	ld   [hl], d                                     ; $591c: $72
	ld   de, $8512                                   ; $591d: $11 $12 $85
	ei                                               ; $5920: $fb
	adc  h                                           ; $5921: $8c
	ld   l, d                                        ; $5922: $6a
	jp   z, $bbfc                                    ; $5923: $ca $fc $bb

	ld   h, e                                        ; $5926: $63
	ld   a, b                                        ; $5927: $78
	res  1, d                                        ; $5928: $cb $8a
	ld   d, d                                        ; $592a: $52
	ld   hl, $7814                                   ; $592b: $21 $14 $78
	rst  $28                                         ; $592e: $ef
	sbc  d                                           ; $592f: $9a
	adc  d                                           ; $5930: $8a
	and  [hl]                                        ; $5931: $a6
	call z, Call_0d1_5287                            ; $5932: $cc $87 $52
	ld   b, h                                        ; $5935: $44
	ld   a, e                                        ; $5936: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5937: $cf
	db   $fc                                         ; $5938: $fc
	and  [hl]                                        ; $5939: $a6
	ld   b, c                                        ; $593a: $41
	ld   de, $ab36                                   ; $593b: $11 $36 $ab
	cp   b                                           ; $593e: $b8
	sbc  a                                           ; $593f: $9f
	adc  b                                           ; $5940: $88
	jp   z, $abda                                    ; $5941: $ca $da $ab

	ld   h, e                                        ; $5944: $63
	ld   d, l                                        ; $5945: $55
	ld   d, l                                        ; $5946: $55
	ld   b, [hl]                                     ; $5947: $46
	sbc  h                                           ; $5948: $9c
	res  0, a                                        ; $5949: $cb $87
	ld   hl, $fb49                                   ; $594b: $21 $49 $fb
	sbc  l                                           ; $594e: $9d
	add  [hl]                                        ; $594f: $86
	ld   b, e                                        ; $5950: $43
	halt                                             ; $5951: $76
	ld   a, e                                        ; $5952: $7b
	call $86c9                                       ; $5953: $cd $c9 $86
	ld   b, l                                        ; $5956: $45
	ld   l, b                                        ; $5957: $68
	adc  c                                           ; $5958: $89
	cp   c                                           ; $5959: $b9
	sbc  c                                           ; $595a: $99
	adc  b                                           ; $595b: $88
	sbc  c                                           ; $595c: $99
	xor  d                                           ; $595d: $aa
	xor  e                                           ; $595e: $ab
	sbc  b                                           ; $595f: $98
	halt                                             ; $5960: $76
	ld   h, l                                        ; $5961: $65
	ld   h, a                                        ; $5962: $67
	ld   a, b                                        ; $5963: $78
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	ld   a, c                                        ; $5967: $79
	xor  c                                           ; $5968: $a9
	sbc  b                                           ; $5969: $98
	sbc  b                                           ; $596a: $98
	ld   h, a                                        ; $596b: $67
	ld   [hl], a                                     ; $596c: $77
	ld   a, b                                        ; $596d: $78
	sbc  c                                           ; $596e: $99
	sbc  c                                           ; $596f: $99
	sbc  b                                           ; $5970: $98
	ld   [hl], a                                     ; $5971: $77
	ld   a, b                                        ; $5972: $78
	adc  b                                           ; $5973: $88
	sbc  c                                           ; $5974: $99
	sbc  c                                           ; $5975: $99
	sbc  b                                           ; $5976: $98
	add  a                                           ; $5977: $87
	ld   a, b                                        ; $5978: $78
	adc  b                                           ; $5979: $88
	sbc  b                                           ; $597a: $98
	ld   [hl], a                                     ; $597b: $77
	ld   [hl], a                                     ; $597c: $77
	add  a                                           ; $597d: $87
	adc  b                                           ; $597e: $88
	sbc  b                                           ; $597f: $98
	adc  c                                           ; $5980: $89
	sub  a                                           ; $5981: $97
	adc  b                                           ; $5982: $88
	adc  c                                           ; $5983: $89
	adc  c                                           ; $5984: $89
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  c                                           ; $598d: $89
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	sbc  b                                           ; $5990: $98
	ld   [hl], a                                     ; $5991: $77
	ld   [hl], a                                     ; $5992: $77
	ld   a, b                                        ; $5993: $78
	adc  b                                           ; $5994: $88
	sbc  b                                           ; $5995: $98
	sbc  b                                           ; $5996: $98
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	adc  b                                           ; $599b: $88
	ld   a, b                                        ; $599c: $78
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	sbc  c                                           ; $599f: $99
	sbc  c                                           ; $59a0: $99
	add  a                                           ; $59a1: $87
	ld   [hl], a                                     ; $59a2: $77
	ld   [hl], a                                     ; $59a3: $77
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  c                                           ; $59a7: $89
	sbc  b                                           ; $59a8: $98
	adc  b                                           ; $59a9: $88
	adc  b                                           ; $59aa: $88
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	add  a                                           ; $59b2: $87
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  c                                           ; $59b5: $89
	sbc  c                                           ; $59b6: $99
	sbc  c                                           ; $59b7: $99
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	adc  b                                           ; $59ba: $88
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	adc  b                                           ; $59c2: $88
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	adc  b                                           ; $59d1: $88
	add  c                                           ; $59d2: $81
	ld   de, $1111                                   ; $59d3: $11 $11 $11
	ld   de, $1111                                   ; $59d6: $11 $11 $11
	ld   de, $1111                                   ; $59d9: $11 $11 $11
	ld   de, $1111                                   ; $59dc: $11 $11 $11
	ld   de, $1111                                   ; $59df: $11 $11 $11
	ld   de, $1111                                   ; $59e2: $11 $11 $11
	ld   de, $1111                                   ; $59e5: $11 $11 $11
	ld   de, $1111                                   ; $59e8: $11 $11 $11
	ld   de, $1111                                   ; $59eb: $11 $11 $11
	ld   de, $1111                                   ; $59ee: $11 $11 $11
	ld   de, $1111                                   ; $59f1: $11 $11 $11
	ld   de, $0011                                   ; $59f4: $11 $11 $00
	ld   c, b                                        ; $59f7: $48
	ld   de, $1111                                   ; $59f8: $11 $11 $11
	ld   de, $1111                                   ; $59fb: $11 $11 $11
	ld   de, $1111                                   ; $59fe: $11 $11 $11
	ld   de, $5413                                   ; $5a01: $11 $13 $54
	ld   d, h                                        ; $5a04: $54
	ld   d, h                                        ; $5a05: $54
	ld   b, c                                        ; $5a06: $41
	rra                                              ; $5a07: $1f
	rst  $38                                         ; $5a08: $ff
	pop  af                                          ; $5a09: $f1
	ld   de, $1811                                   ; $5a0a: $11 $11 $18
	ld   d, c                                        ; $5a0d: $51
	ld   de, $d11c                                   ; $5a0e: $11 $1c $d1
	db   $ec                                         ; $5a11: $ec
	pop  de                                          ; $5a12: $d1
	pop  af                                          ; $5a13: $f1
	ld   de, $1111                                   ; $5a14: $11 $11 $11
	ld   de, $1111                                   ; $5a17: $11 $11 $11
	ld   de, $1111                                   ; $5a1a: $11 $11 $11
	ld   de, $1111                                   ; $5a1d: $11 $11 $11
	ld   de, $5411                                   ; $5a20: $11 $11 $54
	ld   b, h                                        ; $5a23: $44
	ld   e, b                                        ; $5a24: $58
	ld   de, $5454                                   ; $5a25: $11 $54 $54
	ld   h, a                                        ; $5a28: $67
	ld   [hl], d                                     ; $5a29: $72
	ld   de, $1111                                   ; $5a2a: $11 $11 $11
	ld   de, $1112                                   ; $5a2d: $11 $12 $11
	ld   [de], a                                     ; $5a30: $12
	ld   de, $1111                                   ; $5a31: $11 $11 $11
	ld   h, [hl]                                     ; $5a34: $66
	halt                                             ; $5a35: $76
	jr   z, jr_0d1_5a49                              ; $5a36: $28 $11

	adc  b                                           ; $5a38: $88
	adc  b                                           ; $5a39: $88
	adc  b                                           ; $5a3a: $88
	adc  b                                           ; $5a3b: $88
	adc  b                                           ; $5a3c: $88
	adc  b                                           ; $5a3d: $88
	adc  b                                           ; $5a3e: $88
	adc  b                                           ; $5a3f: $88
	adc  b                                           ; $5a40: $88
	adc  b                                           ; $5a41: $88
	adc  b                                           ; $5a42: $88
	adc  b                                           ; $5a43: $88
	adc  b                                           ; $5a44: $88
	adc  b                                           ; $5a45: $88
	adc  b                                           ; $5a46: $88
	adc  b                                           ; $5a47: $88
	adc  b                                           ; $5a48: $88

jr_0d1_5a49:
	adc  b                                           ; $5a49: $88
	adc  b                                           ; $5a4a: $88
	adc  b                                           ; $5a4b: $88
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	adc  b                                           ; $5a50: $88
	adc  b                                           ; $5a51: $88
	adc  b                                           ; $5a52: $88
	adc  b                                           ; $5a53: $88
	adc  b                                           ; $5a54: $88
	adc  b                                           ; $5a55: $88
	ld   a, c                                        ; $5a56: $79
	adc  b                                           ; $5a57: $88
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	adc  b                                           ; $5a5a: $88
	adc  b                                           ; $5a5b: $88
	ld   a, c                                        ; $5a5c: $79
	adc  b                                           ; $5a5d: $88
	sub  a                                           ; $5a5e: $97
	adc  b                                           ; $5a5f: $88
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	ld   a, b                                        ; $5a62: $78
	add  a                                           ; $5a63: $87
	adc  b                                           ; $5a64: $88
	adc  b                                           ; $5a65: $88
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	sub  a                                           ; $5a68: $97
	adc  c                                           ; $5a69: $89
	ld   a, b                                        ; $5a6a: $78
	ld   a, c                                        ; $5a6b: $79
	ld   a, b                                        ; $5a6c: $78
	add  a                                           ; $5a6d: $87
	sub  a                                           ; $5a6e: $97
	adc  b                                           ; $5a6f: $88
	sub  a                                           ; $5a70: $97
	adc  b                                           ; $5a71: $88
	adc  b                                           ; $5a72: $88
	ld   a, b                                        ; $5a73: $78
	ld   a, c                                        ; $5a74: $79
	adc  b                                           ; $5a75: $88
	sub  a                                           ; $5a76: $97
	sub  a                                           ; $5a77: $97
	sbc  b                                           ; $5a78: $98
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	ld   a, b                                        ; $5a7b: $78
	ld   a, b                                        ; $5a7c: $78
	add  a                                           ; $5a7d: $87
	adc  b                                           ; $5a7e: $88
	sbc  b                                           ; $5a7f: $98
	adc  c                                           ; $5a80: $89
	ld   a, c                                        ; $5a81: $79
	adc  b                                           ; $5a82: $88
	adc  b                                           ; $5a83: $88
	adc  c                                           ; $5a84: $89
	adc  b                                           ; $5a85: $88
	sbc  b                                           ; $5a86: $98
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	sub  a                                           ; $5a89: $97
	sub  a                                           ; $5a8a: $97
	sub  a                                           ; $5a8b: $97
	adc  c                                           ; $5a8c: $89
	ld   l, c                                        ; $5a8d: $69
	ld   l, c                                        ; $5a8e: $69
	ld   a, c                                        ; $5a8f: $79
	add  a                                           ; $5a90: $87
	sub  a                                           ; $5a91: $97
	sub  a                                           ; $5a92: $97
	add  a                                           ; $5a93: $87
	sbc  b                                           ; $5a94: $98
	adc  b                                           ; $5a95: $88
	adc  b                                           ; $5a96: $88
	ld   a, c                                        ; $5a97: $79
	ld   a, d                                        ; $5a98: $7a
	ld   a, b                                        ; $5a99: $78
	sub  a                                           ; $5a9a: $97
	sub  a                                           ; $5a9b: $97
	sub  [hl]                                        ; $5a9c: $96
	sbc  b                                           ; $5a9d: $98
	ld   a, c                                        ; $5a9e: $79
	ld   a, c                                        ; $5a9f: $79
	ld   a, c                                        ; $5aa0: $79
	ld   a, c                                        ; $5aa1: $79
	add  a                                           ; $5aa2: $87
	and  [hl]                                        ; $5aa3: $a6
	sub  a                                           ; $5aa4: $97
	sub  a                                           ; $5aa5: $97
	adc  c                                           ; $5aa6: $89
	ld   a, b                                        ; $5aa7: $78
	ld   a, c                                        ; $5aa8: $79
	ld   a, c                                        ; $5aa9: $79
	adc  b                                           ; $5aaa: $88
	sub  a                                           ; $5aab: $97
	add  a                                           ; $5aac: $87
	add  a                                           ; $5aad: $87
	adc  c                                           ; $5aae: $89
	ld   a, c                                        ; $5aaf: $79
	ld   a, c                                        ; $5ab0: $79
	ld   a, c                                        ; $5ab1: $79
	sub  a                                           ; $5ab2: $97
	and  a                                           ; $5ab3: $a7
	sub  a                                           ; $5ab4: $97
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	ld   a, d                                        ; $5ab7: $7a
	ld   a, c                                        ; $5ab8: $79
	add  a                                           ; $5ab9: $87
	sub  a                                           ; $5aba: $97
	adc  b                                           ; $5abb: $88
	ld   a, c                                        ; $5abc: $79
	adc  b                                           ; $5abd: $88
	adc  b                                           ; $5abe: $88
	adc  b                                           ; $5abf: $88
	adc  b                                           ; $5ac0: $88
	sub  a                                           ; $5ac1: $97
	add  a                                           ; $5ac2: $87
	sub  a                                           ; $5ac3: $97
	adc  c                                           ; $5ac4: $89
	ld   a, c                                        ; $5ac5: $79
	ld   a, b                                        ; $5ac6: $78
	ld   a, c                                        ; $5ac7: $79
	ld   a, b                                        ; $5ac8: $78
	add  a                                           ; $5ac9: $87
	add  a                                           ; $5aca: $87
	sub  a                                           ; $5acb: $97
	adc  b                                           ; $5acc: $88
	adc  b                                           ; $5acd: $88
	ld   a, c                                        ; $5ace: $79
	ld   a, c                                        ; $5acf: $79
	add  a                                           ; $5ad0: $87
	sub  a                                           ; $5ad1: $97
	sub  a                                           ; $5ad2: $97
	sbc  b                                           ; $5ad3: $98
	ld   a, c                                        ; $5ad4: $79
	ld   l, c                                        ; $5ad5: $69
	ld   a, c                                        ; $5ad6: $79
	add  a                                           ; $5ad7: $87
	add  a                                           ; $5ad8: $87
	sub  a                                           ; $5ad9: $97
	adc  b                                           ; $5ada: $88
	ld   a, b                                        ; $5adb: $78
	adc  b                                           ; $5adc: $88
	adc  b                                           ; $5add: $88
	adc  b                                           ; $5ade: $88
	add  a                                           ; $5adf: $87
	sub  a                                           ; $5ae0: $97
	sbc  b                                           ; $5ae1: $98
	ld   a, c                                        ; $5ae2: $79
	ld   a, b                                        ; $5ae3: $78
	add  a                                           ; $5ae4: $87
	sub  a                                           ; $5ae5: $97
	ld   a, c                                        ; $5ae6: $79
	ld   a, b                                        ; $5ae7: $78
	add  a                                           ; $5ae8: $87
	add  a                                           ; $5ae9: $87
	sub  a                                           ; $5aea: $97
	sub  a                                           ; $5aeb: $97
	adc  b                                           ; $5aec: $88
	adc  b                                           ; $5aed: $88
	ld   a, b                                        ; $5aee: $78
	ld   a, b                                        ; $5aef: $78
	sub  a                                           ; $5af0: $97
	sub  a                                           ; $5af1: $97
	ld   a, c                                        ; $5af2: $79
	ld   l, d                                        ; $5af3: $6a
	add  a                                           ; $5af4: $87
	add  a                                           ; $5af5: $87
	sub  a                                           ; $5af6: $97
	sbc  b                                           ; $5af7: $98
	adc  b                                           ; $5af8: $88
	adc  b                                           ; $5af9: $88
	sub  a                                           ; $5afa: $97
	sbc  b                                           ; $5afb: $98
	ld   a, c                                        ; $5afc: $79
	adc  b                                           ; $5afd: $88
	adc  c                                           ; $5afe: $89
	ld   a, b                                        ; $5aff: $78
	ld   a, c                                        ; $5b00: $79
	add  a                                           ; $5b01: $87
	sub  [hl]                                        ; $5b02: $96
	sbc  b                                           ; $5b03: $98
	ld   a, c                                        ; $5b04: $79
	ld   a, c                                        ; $5b05: $79
	ld   a, b                                        ; $5b06: $78
	adc  b                                           ; $5b07: $88
	add  a                                           ; $5b08: $87
	sbc  b                                           ; $5b09: $98
	add  a                                           ; $5b0a: $87
	adc  b                                           ; $5b0b: $88
	sub  a                                           ; $5b0c: $97
	sbc  b                                           ; $5b0d: $98
	ld   a, c                                        ; $5b0e: $79
	ld   a, c                                        ; $5b0f: $79
	ld   a, c                                        ; $5b10: $79
	ld   a, c                                        ; $5b11: $79
	add  [hl]                                        ; $5b12: $86
	sub  [hl]                                        ; $5b13: $96
	sub  a                                           ; $5b14: $97
	adc  c                                           ; $5b15: $89
	ld   a, c                                        ; $5b16: $79
	ld   a, c                                        ; $5b17: $79
	ld   a, c                                        ; $5b18: $79
	ld   a, b                                        ; $5b19: $78
	ld   a, b                                        ; $5b1a: $78
	add  a                                           ; $5b1b: $87
	and  [hl]                                        ; $5b1c: $a6
	and  a                                           ; $5b1d: $a7
	sbc  b                                           ; $5b1e: $98
	adc  b                                           ; $5b1f: $88
	adc  b                                           ; $5b20: $88
	ld   l, c                                        ; $5b21: $69
	ld   l, b                                        ; $5b22: $68
	ld   a, c                                        ; $5b23: $79
	ld   [hl], a                                     ; $5b24: $77
	sub  a                                           ; $5b25: $97
	sub  [hl]                                        ; $5b26: $96
	and  [hl]                                        ; $5b27: $a6
	sbc  b                                           ; $5b28: $98
	ld   a, b                                        ; $5b29: $78
	ld   l, c                                        ; $5b2a: $69
	ld   l, d                                        ; $5b2b: $6a
	ld   l, b                                        ; $5b2c: $68
	add  a                                           ; $5b2d: $87
	and  [hl]                                        ; $5b2e: $a6
	and  [hl]                                        ; $5b2f: $a6
	sub  a                                           ; $5b30: $97
	ld   a, c                                        ; $5b31: $79
	ld   a, c                                        ; $5b32: $79
	ld   a, b                                        ; $5b33: $78
	sub  a                                           ; $5b34: $97
	adc  c                                           ; $5b35: $89
	ld   a, b                                        ; $5b36: $78
	ld   a, b                                        ; $5b37: $78
	ld   a, c                                        ; $5b38: $79
	sub  a                                           ; $5b39: $97
	adc  b                                           ; $5b3a: $88
	ld   a, b                                        ; $5b3b: $78
	add  a                                           ; $5b3c: $87
	sub  [hl]                                        ; $5b3d: $96
	and  [hl]                                        ; $5b3e: $a6
	sbc  b                                           ; $5b3f: $98
	ld   l, e                                        ; $5b40: $6b
	ld   l, c                                        ; $5b41: $69
	add  a                                           ; $5b42: $87
	sub  a                                           ; $5b43: $97
	sub  a                                           ; $5b44: $97
	sub  a                                           ; $5b45: $97
	adc  c                                           ; $5b46: $89
	ld   a, c                                        ; $5b47: $79
	ld   l, d                                        ; $5b48: $6a
	ld   a, b                                        ; $5b49: $78
	and  [hl]                                        ; $5b4a: $a6
	or   [hl]                                        ; $5b4b: $b6
	and  a                                           ; $5b4c: $a7
	ld   l, d                                        ; $5b4d: $6a
	ld   e, d                                        ; $5b4e: $5a
	ld   l, c                                        ; $5b4f: $69
	add  a                                           ; $5b50: $87
	sub  [hl]                                        ; $5b51: $96
	sub  a                                           ; $5b52: $97
	adc  c                                           ; $5b53: $89
	ld   a, c                                        ; $5b54: $79
	ld   a, c                                        ; $5b55: $79
	add  a                                           ; $5b56: $87
	sub  a                                           ; $5b57: $97
	sbc  b                                           ; $5b58: $98
	adc  b                                           ; $5b59: $88
	ld   a, b                                        ; $5b5a: $78
	add  a                                           ; $5b5b: $87
	sub  a                                           ; $5b5c: $97
	add  a                                           ; $5b5d: $87
	sbc  b                                           ; $5b5e: $98
	ld   a, c                                        ; $5b5f: $79
	ld   l, d                                        ; $5b60: $6a
	ld   l, c                                        ; $5b61: $69
	sub  a                                           ; $5b62: $97
	sub  a                                           ; $5b63: $97
	sub  [hl]                                        ; $5b64: $96
	or   l                                           ; $5b65: $b5
	and  a                                           ; $5b66: $a7
	sbc  b                                           ; $5b67: $98
	ld   a, d                                        ; $5b68: $7a
	ld   l, d                                        ; $5b69: $6a
	ld   e, d                                        ; $5b6a: $5a
	ld   l, c                                        ; $5b6b: $69
	sub  a                                           ; $5b6c: $97
	and  [hl]                                        ; $5b6d: $a6
	sub  a                                           ; $5b6e: $97
	sbc  c                                           ; $5b6f: $99
	ld   l, d                                        ; $5b70: $6a
	ld   a, b                                        ; $5b71: $78
	sub  a                                           ; $5b72: $97
	or   l                                           ; $5b73: $b5
	and  a                                           ; $5b74: $a7
	ld   a, c                                        ; $5b75: $79
	ld   a, d                                        ; $5b76: $7a
	ld   l, c                                        ; $5b77: $69
	ld   l, c                                        ; $5b78: $69
	adc  b                                           ; $5b79: $88
	adc  b                                           ; $5b7a: $88
	add  [hl]                                        ; $5b7b: $86
	call nz, Call_0d1_7bb7                           ; $5b7c: $c4 $b7 $7b
	dec  a                                           ; $5b7f: $3d
	dec  sp                                          ; $5b80: $3b
	add  l                                           ; $5b81: $85
	or   h                                           ; $5b82: $b4
	call nc, $9ac6                                   ; $5b83: $d4 $c6 $9a
	ld   c, l                                        ; $5b86: $4d
	dec  a                                           ; $5b87: $3d
	ld   c, e                                        ; $5b88: $4b
	ld   [hl], a                                     ; $5b89: $77
	sub  l                                           ; $5b8a: $95
	or   l                                           ; $5b8b: $b5
	or   h                                           ; $5b8c: $b4
	call nc, Call_0d1_7bb7                           ; $5b8d: $d4 $b7 $7b
	ld   c, l                                        ; $5b90: $4d
	dec  e                                           ; $5b91: $1d
	ld   c, d                                        ; $5b92: $4a
	add  l                                           ; $5b93: $85
	or   h                                           ; $5b94: $b4
	push bc                                          ; $5b95: $c5
	sub  a                                           ; $5b96: $97
	ld   a, c                                        ; $5b97: $79
	ld   l, c                                        ; $5b98: $69
	sub  [hl]                                        ; $5b99: $96
	and  l                                           ; $5b9a: $a5
	and  [hl]                                        ; $5b9b: $a6
	adc  c                                           ; $5b9c: $89
	ld   e, h                                        ; $5b9d: $5c
	dec  a                                           ; $5b9e: $3d
	dec  sp                                          ; $5b9f: $3b
	ld   e, c                                        ; $5ba0: $59
	and  h                                           ; $5ba1: $a4
	pop  de                                          ; $5ba2: $d1
	pop  af                                          ; $5ba3: $f1
	and  $7b                                         ; $5ba4: $e6 $7b
	cpl                                              ; $5ba6: $2f
	rra                                              ; $5ba7: $1f
	dec  sp                                          ; $5ba8: $3b
	halt                                             ; $5ba9: $76
	or   h                                           ; $5baa: $b4
	call nz, $96c6                                   ; $5bab: $c4 $c6 $96
	or   l                                           ; $5bae: $b5
	and  [hl]                                        ; $5baf: $a6
	sbc  c                                           ; $5bb0: $99
	ld   e, l                                        ; $5bb1: $5d
	cpl                                              ; $5bb2: $2f
	dec  e                                           ; $5bb3: $1d
	ld   l, b                                        ; $5bb4: $68
	and  h                                           ; $5bb5: $a4
	jp   nc, $a7d4                                   ; $5bb6: $d2 $d4 $a7

	sbc  b                                           ; $5bb9: $98
	ld   a, c                                        ; $5bba: $79
	ld   l, d                                        ; $5bbb: $6a
	ld   l, e                                        ; $5bbc: $6b
	ld   l, d                                        ; $5bbd: $6a
	ld   l, c                                        ; $5bbe: $69
	add  [hl]                                        ; $5bbf: $86
	sub  a                                           ; $5bc0: $97
	and  l                                           ; $5bc1: $a5
	or   l                                           ; $5bc2: $b5
	and  a                                           ; $5bc3: $a7
	ld   a, d                                        ; $5bc4: $7a
	ld   l, d                                        ; $5bc5: $6a
	ld   e, d                                        ; $5bc6: $5a
	ld   l, b                                        ; $5bc7: $68
	adc  c                                           ; $5bc8: $89
	adc  b                                           ; $5bc9: $88
	sub  l                                           ; $5bca: $95
	sub  [hl]                                        ; $5bcb: $96
	sub  a                                           ; $5bcc: $97
	adc  d                                           ; $5bcd: $8a
	ld   l, d                                        ; $5bce: $6a
	ld   l, b                                        ; $5bcf: $68
	ld   a, c                                        ; $5bd0: $79
	add  [hl]                                        ; $5bd1: $86
	and  h                                           ; $5bd2: $a4
	and  [hl]                                        ; $5bd3: $a6
	adc  c                                           ; $5bd4: $89
	ld   a, e                                        ; $5bd5: $7b
	ld   c, h                                        ; $5bd6: $4c
	ld   c, d                                        ; $5bd7: $4a
	ld   a, b                                        ; $5bd8: $78
	or   l                                           ; $5bd9: $b5
	or   l                                           ; $5bda: $b5
	and  a                                           ; $5bdb: $a7
	sbc  c                                           ; $5bdc: $99
	ld   a, b                                        ; $5bdd: $78
	adc  c                                           ; $5bde: $89
	ld   e, e                                        ; $5bdf: $5b
	ld   l, d                                        ; $5be0: $6a
	ld   l, c                                        ; $5be1: $69
	add  [hl]                                        ; $5be2: $86
	or   l                                           ; $5be3: $b5
	call nz, Call_0d1_6ba8                           ; $5be4: $c4 $a8 $6b
	ld   e, l                                        ; $5be7: $5d
	ld   a, [hl-]                                    ; $5be8: $3a
	add  l                                           ; $5be9: $85
	and  [hl]                                        ; $5bea: $a6
	and  l                                           ; $5beb: $a5
	sbc  c                                           ; $5bec: $99
	adc  c                                           ; $5bed: $89
	ld   a, c                                        ; $5bee: $79
	add  a                                           ; $5bef: $87
	adc  b                                           ; $5bf0: $88
	ld   a, c                                        ; $5bf1: $79
	ld   l, d                                        ; $5bf2: $6a
	ld   [hl], a                                     ; $5bf3: $77
	sub  a                                           ; $5bf4: $97
	or   l                                           ; $5bf5: $b5
	xor  b                                           ; $5bf6: $a8
	ld   a, d                                        ; $5bf7: $7a
	ld   l, d                                        ; $5bf8: $6a
	ld   l, b                                        ; $5bf9: $68
	sub  [hl]                                        ; $5bfa: $96
	or   [hl]                                        ; $5bfb: $b6
	adc  b                                           ; $5bfc: $88
	ld   l, d                                        ; $5bfd: $6a
	ld   e, d                                        ; $5bfe: $5a
	ld   [hl], a                                     ; $5bff: $77
	sub  a                                           ; $5c00: $97
	sub  a                                           ; $5c01: $97
	and  [hl]                                        ; $5c02: $a6
	and  a                                           ; $5c03: $a7
	adc  c                                           ; $5c04: $89
	adc  b                                           ; $5c05: $88
	adc  c                                           ; $5c06: $89
	ld   a, d                                        ; $5c07: $7a
	ld   l, c                                        ; $5c08: $69
	ld   e, e                                        ; $5c09: $5b
	ld   h, a                                        ; $5c0a: $67
	and  [hl]                                        ; $5c0b: $a6
	push bc                                          ; $5c0c: $c5
	or   [hl]                                        ; $5c0d: $b6
	and  [hl]                                        ; $5c0e: $a6
	ld   a, d                                        ; $5c0f: $7a
	ld   e, e                                        ; $5c10: $5b
	ld   e, e                                        ; $5c11: $5b
	ld   e, c                                        ; $5c12: $59
	sub  a                                           ; $5c13: $97
	and  a                                           ; $5c14: $a7
	and  a                                           ; $5c15: $a7
	add  a                                           ; $5c16: $87
	and  [hl]                                        ; $5c17: $a6
	and  a                                           ; $5c18: $a7
	add  a                                           ; $5c19: $87
	sbc  e                                           ; $5c1a: $9b
	dec  a                                           ; $5c1b: $3d
	ld   l, c                                        ; $5c1c: $69
	add  [hl]                                        ; $5c1d: $86
	sub  [hl]                                        ; $5c1e: $96
	push bc                                          ; $5c1f: $c5
	sbc  b                                           ; $5c20: $98
	ld   l, c                                        ; $5c21: $69
	ld   a, d                                        ; $5c22: $7a
	ld   a, b                                        ; $5c23: $78
	adc  b                                           ; $5c24: $88
	add  a                                           ; $5c25: $87
	xor  c                                           ; $5c26: $a9
	ld   a, c                                        ; $5c27: $79
	sub  a                                           ; $5c28: $97
	sbc  b                                           ; $5c29: $98
	ld   a, c                                        ; $5c2a: $79
	ld   a, c                                        ; $5c2b: $79
	ld   a, c                                        ; $5c2c: $79
	ld   [hl], a                                     ; $5c2d: $77
	add  [hl]                                        ; $5c2e: $86
	and  [hl]                                        ; $5c2f: $a6
	and  [hl]                                        ; $5c30: $a6
	xor  c                                           ; $5c31: $a9
	ld   a, e                                        ; $5c32: $7b
	ld   c, l                                        ; $5c33: $4d
	ld   e, d                                        ; $5c34: $5a
	add  [hl]                                        ; $5c35: $86
	or   l                                           ; $5c36: $b5
	and  l                                           ; $5c37: $a5
	sub  a                                           ; $5c38: $97
	sbc  c                                           ; $5c39: $99
	ld   l, c                                        ; $5c3a: $69
	ld   l, e                                        ; $5c3b: $6b
	ld   e, c                                        ; $5c3c: $59
	ld   [hl], a                                     ; $5c3d: $77
	and  l                                           ; $5c3e: $a5
	sub  $98                                         ; $5c3f: $d6 $98
	ld   a, d                                        ; $5c41: $7a
	ld   l, d                                        ; $5c42: $6a
	ld   e, e                                        ; $5c43: $5b
	ld   [hl], a                                     ; $5c44: $77
	and  a                                           ; $5c45: $a7
	ld   h, [hl]                                     ; $5c46: $66
	or   [hl]                                        ; $5c47: $b6
	add  a                                           ; $5c48: $87
	ld   a, c                                        ; $5c49: $79
	ld   a, b                                        ; $5c4a: $78
	adc  d                                           ; $5c4b: $8a
	ld   [hl], a                                     ; $5c4c: $77
	or   [hl]                                        ; $5c4d: $b6
	xor  b                                           ; $5c4e: $a8
	sbc  b                                           ; $5c4f: $98
	ld   l, e                                        ; $5c50: $6b
	ld   c, h                                        ; $5c51: $4c
	ld   a, c                                        ; $5c52: $79
	or   l                                           ; $5c53: $b5
	jp   $87c5                                       ; $5c54: $c3 $c5 $87


	ld   l, d                                        ; $5c57: $6a
	ld   c, e                                        ; $5c58: $4b
	ld   l, c                                        ; $5c59: $69
	halt                                             ; $5c5a: $76
	ld   d, l                                        ; $5c5b: $55
	and  l                                           ; $5c5c: $a5
	sub  [hl]                                        ; $5c5d: $96
	sub  a                                           ; $5c5e: $97
	ld   l, d                                        ; $5c5f: $6a
	ld   a, b                                        ; $5c60: $78
	and  a                                           ; $5c61: $a7
	xor  d                                           ; $5c62: $aa
	xor  e                                           ; $5c63: $ab
	ld   a, l                                        ; $5c64: $7d
	ld   a, c                                        ; $5c65: $79
	xor  b                                           ; $5c66: $a8
	or   [hl]                                        ; $5c67: $b6
	and  h                                           ; $5c68: $a4
	sub  [hl]                                        ; $5c69: $96
	add  hl, hl                                      ; $5c6a: $29
	dec  [hl]                                        ; $5c6b: $35
	ld   d, [hl]                                     ; $5c6c: $56
	ld   d, h                                        ; $5c6d: $54
	add  [hl]                                        ; $5c6e: $86
	ld   e, c                                        ; $5c6f: $59
	and  a                                           ; $5c70: $a7
	xor  h                                           ; $5c71: $ac
	xor  h                                           ; $5c72: $ac
	xor  [hl]                                        ; $5c73: $ae
	xor  [hl]                                        ; $5c74: $ae
	xor  e                                           ; $5c75: $ab
	rst  ToBoot                                         ; $5c76: $c7
	or   h                                           ; $5c77: $b4
	and  c                                           ; $5c78: $a1
	add  d                                           ; $5c79: $82
	ld   a, [hl-]                                    ; $5c7a: $3a
	inc  d                                           ; $5c7b: $14
	add  hl, de                                      ; $5c7c: $19
	ld   d, $76                                      ; $5c7d: $16 $76
	or   [hl]                                        ; $5c7f: $b6
	ld   hl, sp-$06                                  ; $5c80: $f8 $fa
	call $9fcd                                       ; $5c82: $cd $cd $9f
	xor  d                                           ; $5c85: $aa
	and  a                                           ; $5c86: $a7
	ld   h, e                                        ; $5c87: $63
	inc  hl                                          ; $5c88: $23
	ld   a, [hl+]                                    ; $5c89: $2a
	ld   de, $5271                                   ; $5c8a: $11 $71 $52
	sub  [hl]                                        ; $5c8d: $96
	adc  h                                           ; $5c8e: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c8f: $cf
	xor  a                                           ; $5c90: $af
	xor  $bb                                         ; $5c91: $ee $bb
	ld   a, [$96a7]                                  ; $5c93: $fa $a7 $96
	ld   hl, $5137                                   ; $5c96: $21 $37 $51
	ld   b, [hl]                                     ; $5c99: $46
	dec  d                                           ; $5c9a: $15
	ld   e, $3c                                      ; $5c9b: $1e $3c
	cp   a                                           ; $5c9d: $bf
	ld   a, [$f9fc]                                  ; $5c9e: $fa $fc $f9
	db   $dd                                         ; $5ca1: $dd
	xor  e                                           ; $5ca2: $ab
	ld   b, l                                        ; $5ca3: $45
	ld   de, $114c                                   ; $5ca4: $11 $4c $11
	ld   h, h                                        ; $5ca7: $64
	inc  de                                          ; $5ca8: $13
	ld   a, b                                        ; $5ca9: $78
	ld   a, h                                        ; $5caa: $7c
	rst  JumpTable                                         ; $5cab: $df
	cp   $ff                                         ; $5cac: $fe $ff
	reti                                             ; $5cae: $d9


	db   $eb                                         ; $5caf: $eb
	and  h                                           ; $5cb0: $a4
	ld   b, d                                        ; $5cb1: $42
	inc  de                                          ; $5cb2: $13
	pop  bc                                          ; $5cb3: $c1
	dec  e                                           ; $5cb4: $1d
	ld   de, $851d                                   ; $5cb5: $11 $1d $85
	ei                                               ; $5cb8: $fb
	rst  $38                                         ; $5cb9: $ff
	rst  $38                                         ; $5cba: $ff
	db   $fc                                         ; $5cbb: $fc
	cp   a                                           ; $5cbc: $bf
	adc  d                                           ; $5cbd: $8a
	inc  de                                          ; $5cbe: $13
	ld   de, $18f1                                   ; $5cbf: $11 $f1 $18
	ld   h, c                                        ; $5cc2: $61
	add  hl, hl                                      ; $5cc3: $29
	xor  b                                           ; $5cc4: $a8
	cp   $ff                                         ; $5cc5: $fe $ff
	cp   a                                           ; $5cc7: $bf
	db   $fd                                         ; $5cc8: $fd
	cp   l                                           ; $5cc9: $bd
	xor  b                                           ; $5cca: $a8
	ld   hl, $d115                                   ; $5ccb: $21 $15 $d1
	ld   e, $11                                      ; $5cce: $1e $11
	ld   l, $a8                                      ; $5cd0: $2e $a8
	rst  $38                                         ; $5cd2: $ff
	cp   $ff                                         ; $5cd3: $fe $ff
	jp   c, $36df                                    ; $5cd5: $da $df $36

	ld   de, $11bb                                   ; $5cd8: $11 $bb $11
	pop  af                                          ; $5cdb: $f1
	ld   [de], a                                     ; $5cdc: $12
	ld   hl, sp-$51                                  ; $5cdd: $f8 $af
	rst  $38                                         ; $5cdf: $ff
	sbc  a                                           ; $5ce0: $9f
	db   $fd                                         ; $5ce1: $fd
	ld   a, [hl]                                     ; $5ce2: $7e
	db   $e3                                         ; $5ce3: $e3
	ld   de, $111f                                   ; $5ce4: $11 $1f $11
	push af                                          ; $5ce7: $f5
	ld   de, $2faf                                   ; $5ce8: $11 $af $2f
	rst  $38                                         ; $5ceb: $ff
	db   $fc                                         ; $5cec: $fc
	rst  $38                                         ; $5ced: $ff
	adc  d                                           ; $5cee: $8a
	ldh  a, [c]                                      ; $5cef: $f2
	ld   de, $111f                                   ; $5cf0: $11 $1f $11
	call c, $ef11                                    ; $5cf3: $dc $11 $ef
	ld   a, [de]                                     ; $5cf6: $1a
	rst  $38                                         ; $5cf7: $ff
	ld   a, [$3bff]                                  ; $5cf8: $fa $ff $3b
	pop  af                                          ; $5cfb: $f1
	ld   de, $111f                                   ; $5cfc: $11 $1f $11
	pop  af                                          ; $5cff: $f1
	ld   de, $1fff                                   ; $5d00: $11 $ff $1f
	rst  $38                                         ; $5d03: $ff
	sbc  a                                           ; $5d04: $9f
	ld   a, [$d14c]                                  ; $5d05: $fa $4c $d1
	ld   de, $1ff1                                   ; $5d08: $11 $f1 $1f
	ld   b, c                                        ; $5d0b: $41
	rra                                              ; $5d0c: $1f
	di                                               ; $5d0d: $f3
	rst  $38                                         ; $5d0e: $ff
	cp   $ff                                         ; $5d0f: $fe $ff
	push bc                                          ; $5d11: $c5
	xor  d                                           ; $5d12: $aa
	ld   de, $111f                                   ; $5d13: $11 $1f $11
	di                                               ; $5d16: $f3
	inc  d                                           ; $5d17: $14
	rst  $38                                         ; $5d18: $ff
	ld   c, a                                        ; $5d19: $4f
	rst  $38                                         ; $5d1a: $ff
	rst  JumpTable                                         ; $5d1b: $df
	ld   a, [$8137]                                  ; $5d1c: $fa $37 $81
	rra                                              ; $5d1f: $1f
	pop  af                                          ; $5d20: $f1
	rra                                              ; $5d21: $1f
	ld   de, $8bbf                                   ; $5d22: $11 $bf $8b
	rst  $38                                         ; $5d25: $ff
	ld   a, [$33ff]                                  ; $5d26: $fa $ff $33
	add  c                                           ; $5d29: $81
	ld   de, $1ff1                                   ; $5d2a: $11 $f1 $1f
	ld   de, $f34f                                   ; $5d2d: $11 $4f $f3
	rst  $38                                         ; $5d30: $ff
	db   $fc                                         ; $5d31: $fc
	rst  $38                                         ; $5d32: $ff
	ld   d, [hl]                                     ; $5d33: $56
	inc  sp                                          ; $5d34: $33
	ld   de, $1ff1                                   ; $5d35: $11 $f1 $1f
	ld   de, $f13f                                   ; $5d38: $11 $3f $f1
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	ld   b, [hl]                                     ; $5d3e: $46
	ld   d, d                                        ; $5d3f: $52
	ld   de, $1ff1                                   ; $5d40: $11 $f1 $1f
	ld   de, $f13f                                   ; $5d43: $11 $3f $f1
	rst  $38                                         ; $5d46: $ff
	db   $fc                                         ; $5d47: $fc
	rst  $38                                         ; $5d48: $ff
	rlca                                             ; $5d49: $07
	ld   h, d                                        ; $5d4a: $62
	ld   de, $1ff1                                   ; $5d4b: $11 $f1 $1f
	ld   de, $f15f                                   ; $5d4e: $11 $5f $f1
	rst  $38                                         ; $5d51: $ff
	rst  $38                                         ; $5d52: $ff
	rst  $38                                         ; $5d53: $ff
	ld   a, [de]                                     ; $5d54: $1a
	ld   d, c                                        ; $5d55: $51
	rra                                              ; $5d56: $1f
	pop  af                                          ; $5d57: $f1
	rst  $38                                         ; $5d58: $ff
	ld   de, $46af                                   ; $5d59: $11 $af $46
	rst  $38                                         ; $5d5c: $ff
	rst  $28                                         ; $5d5d: $ef
	ei                                               ; $5d5e: $fb
	ld   a, [hl+]                                    ; $5d5f: $2a
	ld   hl, $111f                                   ; $5d60: $21 $1f $11
	pop  af                                          ; $5d63: $f1
	jr   @+$01                                       ; $5d64: $18 $ff

	rra                                              ; $5d66: $1f
	ei                                               ; $5d67: $fb
	rst  $38                                         ; $5d68: $ff
	ldh  a, [c]                                      ; $5d69: $f2
	halt                                             ; $5d6a: $76
	ld   de, $1ff8                                   ; $5d6b: $11 $f8 $1f
	or   c                                           ; $5d6e: $b1
	sbc  h                                           ; $5d6f: $9c
	pop  af                                          ; $5d70: $f1
	rst  $38                                         ; $5d71: $ff
	adc  $ff                                         ; $5d72: $ce $ff
	ld   c, b                                        ; $5d74: $48
	add  c                                           ; $5d75: $81
	dec  e                                           ; $5d76: $1d
	pop  af                                          ; $5d77: $f1
	sbc  a                                           ; $5d78: $9f
	dec  d                                           ; $5d79: $15
	rst  JumpTable                                         ; $5d7a: $df
	sub  e                                           ; $5d7b: $93
	rst  $38                                         ; $5d7c: $ff
	ld   l, a                                        ; $5d7d: $6f
	db   $f4                                         ; $5d7e: $f4
	adc  c                                           ; $5d7f: $89
	ld   de, $116f                                   ; $5d80: $11 $6f $11
	pop  af                                          ; $5d83: $f1
	rra                                              ; $5d84: $1f
	db   $fd                                         ; $5d85: $fd
	rra                                              ; $5d86: $1f
	pop  af                                          ; $5d87: $f1
	rst  $38                                         ; $5d88: $ff
	ld   b, [hl]                                     ; $5d89: $46
	pop  de                                          ; $5d8a: $d1
	ld   [de], a                                     ; $5d8b: $12
	pop  af                                          ; $5d8c: $f1
	rra                                              ; $5d8d: $1f
	ld   de, $e1ef                                   ; $5d8e: $11 $ef $e1
	rst  $38                                         ; $5d91: $ff
	rra                                              ; $5d92: $1f
	db   $f4                                         ; $5d93: $f4
	ld   c, h                                        ; $5d94: $4c
	ld   de, $114f                                   ; $5d95: $11 $4f $11
	pop  af                                          ; $5d98: $f1
	ccf                                              ; $5d99: $3f
	cp   $2f                                         ; $5d9a: $fe $2f
	di                                               ; $5d9c: $f3
	rst  $38                                         ; $5d9d: $ff
	jr   z, @-$5d                                    ; $5d9e: $28 $a1

	dec  e                                           ; $5da0: $1d
	pop  af                                          ; $5da1: $f1
	rst  $38                                         ; $5da2: $ff
	dec  e                                           ; $5da3: $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da4: $cf
	ld   l, c                                        ; $5da5: $69
	ei                                               ; $5da6: $fb
	adc  a                                           ; $5da7: $8f
	pop  af                                          ; $5da8: $f1
	sbc  d                                           ; $5da9: $9a
	ld   de, $1ff1                                   ; $5daa: $11 $f1 $1f
	ld   de, $f2fb                                   ; $5dad: $11 $fb $f2
	rst  $38                                         ; $5db0: $ff
	ld   e, a                                        ; $5db1: $5f
	db   $fc                                         ; $5db2: $fc
	dec  a                                           ; $5db3: $3d
	ld   de, $111f                                   ; $5db4: $11 $1f $11
	pop  af                                          ; $5db7: $f1
	rra                                              ; $5db8: $1f
	xor  $8f                                         ; $5db9: $ee $8f
	rst  $30                                         ; $5dbb: $f7
	rst  $38                                         ; $5dbc: $ff
	inc  l                                           ; $5dbd: $2c
	add  c                                           ; $5dbe: $81
	rra                                              ; $5dbf: $1f
	and  c                                           ; $5dc0: $a1
	ld   sp, hl                                      ; $5dc1: $f9
	rra                                              ; $5dc2: $1f
	rst  JumpTable                                         ; $5dc3: $df
	ld   c, a                                        ; $5dc4: $4f
	push af                                          ; $5dc5: $f5
	rst  $38                                         ; $5dc6: $ff
	db   $d3                                         ; $5dc7: $d3
	pop  af                                          ; $5dc8: $f1
	ld   de, $1ff1                                   ; $5dc9: $11 $f1 $1f
	ld   de, $adfb                                   ; $5dcc: $11 $fb $ad
	rst  $38                                         ; $5dcf: $ff
	sbc  a                                           ; $5dd0: $9f
	pop  af                                          ; $5dd1: $f1
	rst  $30                                         ; $5dd2: $f7
	ld   de, $1ff1                                   ; $5dd3: $11 $f1 $1f
	ld   de, $e7f9                                   ; $5dd6: $11 $f9 $e7
	rst  $38                                         ; $5dd9: $ff
	ld   c, a                                        ; $5dda: $4f
	pop  af                                          ; $5ddb: $f1
	sbc  $11                                         ; $5ddc: $de $11
	pop  af                                          ; $5dde: $f1
	rra                                              ; $5ddf: $1f
	ld   sp, $97fe                                   ; $5de0: $31 $fe $97
	rst  $38                                         ; $5de3: $ff
	ccf                                              ; $5de4: $3f
	push af                                          ; $5de5: $f5
	ld   l, a                                        ; $5de6: $6f
	ld   de, $1ff7                                   ; $5de7: $11 $f7 $1f
	pop  af                                          ; $5dea: $f1
	rst  $38                                         ; $5deb: $ff
	or   [hl]                                        ; $5dec: $b6
	rst  $38                                         ; $5ded: $ff
	cpl                                              ; $5dee: $2f
	ld   sp, hl                                      ; $5def: $f9
	ld   c, a                                        ; $5df0: $4f
	ld   de, $1ff5                                   ; $5df1: $11 $f5 $1f
	pop  hl                                          ; $5df4: $e1
	rst  $38                                         ; $5df5: $ff
	ld   a, b                                        ; $5df6: $78
	rst  $38                                         ; $5df7: $ff
	ld   c, a                                        ; $5df8: $4f
	ld   sp, hl                                      ; $5df9: $f9
	ld   l, a                                        ; $5dfa: $6f
	ld   de, $1ff1                                   ; $5dfb: $11 $f1 $1f
	add  c                                           ; $5dfe: $81
	rst  $38                                         ; $5dff: $ff
	ld   b, a                                        ; $5e00: $47
	rst  $38                                         ; $5e01: $ff
	ccf                                              ; $5e02: $3f
	push af                                          ; $5e03: $f5
	sbc  a                                           ; $5e04: $9f
	ld   de, $1ff1                                   ; $5e05: $11 $f1 $1f
	ld   de, $1bfd                                   ; $5e08: $11 $fd $1b
	db   $fd                                         ; $5e0b: $fd
	ld   a, a                                        ; $5e0c: $7f
	pop  af                                          ; $5e0d: $f1
	db   $fd                                         ; $5e0e: $fd
	ld   d, $f1                                      ; $5e0f: $16 $f1
	rra                                              ; $5e11: $1f
	ld   de, $3ff8                                   ; $5e12: $11 $f8 $3f
	di                                               ; $5e15: $f3
	rst  $38                                         ; $5e16: $ff
	push de                                          ; $5e17: $d5
	pop  af                                          ; $5e18: $f1
	rra                                              ; $5e19: $1f
	ld   de, $1ff2                                   ; $5e1a: $11 $f2 $1f
	ldh  a, [c]                                      ; $5e1d: $f2
	ld   a, a                                        ; $5e1e: $7f
	db   $f4                                         ; $5e1f: $f4
	rst  $38                                         ; $5e20: $ff
	ld   e, h                                        ; $5e21: $5c
	pop  af                                          ; $5e22: $f1
	rra                                              ; $5e23: $1f
	ld   de, $1ff1                                   ; $5e24: $11 $f1 $1f
	or   d                                           ; $5e27: $b2
	rst  $38                                         ; $5e28: $ff
	ld   e, h                                        ; $5e29: $5c
	rst  $38                                         ; $5e2a: $ff
	rra                                              ; $5e2b: $1f
	ld   de, $1ff1                                   ; $5e2c: $11 $f1 $1f
	ld   de, $9ff4                                   ; $5e2f: $11 $f4 $9f
	rst  $38                                         ; $5e32: $ff
	ld   l, a                                        ; $5e33: $6f
	pop  af                                          ; $5e34: $f1
	pop  af                                          ; $5e35: $f1
	rra                                              ; $5e36: $1f
	ld   de, $1ff1                                   ; $5e37: $11 $f1 $1f
	ret  z                                           ; $5e3a: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e3b: $cf
	and  $ff                                         ; $5e3c: $e6 $ff
	rra                                              ; $5e3e: $1f
	ld   hl, $1ff1                                   ; $5e3f: $21 $f1 $1f
	ld   de, $dff2                                   ; $5e42: $11 $f2 $df
	rst  $38                                         ; $5e45: $ff
	cp   a                                           ; $5e46: $bf
	pop  af                                          ; $5e47: $f1
	pop  bc                                          ; $5e48: $c1
	rra                                              ; $5e49: $1f
	ld   de, $9ff1                                   ; $5e4a: $11 $f1 $9f
	ld   c, h                                        ; $5e4d: $4c
	rst  $38                                         ; $5e4e: $ff
	ld   e, a                                        ; $5e4f: $5f
	db   $f4                                         ; $5e50: $f4
	ld   c, e                                        ; $5e51: $4b
	inc  e                                           ; $5e52: $1c
	ld   de, $1ff1                                   ; $5e53: $11 $f1 $1f
	dec  h                                           ; $5e56: $25
	rst  $38                                         ; $5e57: $ff
	ld   a, a                                        ; $5e58: $7f
	ld   a, [$116b]                                  ; $5e59: $fa $6b $11

jr_0d1_5e5c:
	pop  af                                          ; $5e5c: $f1
	sbc  a                                           ; $5e5d: $9f
	ld   e, $f1                                      ; $5e5e: $1e $f1
	rst  $38                                         ; $5e60: $ff
	jp   z, Jump_0d1_68ff                            ; $5e61: $ca $ff $68

	ld   b, c                                        ; $5e64: $41
	pop  af                                          ; $5e65: $f1
	rra                                              ; $5e66: $1f
	ld   de, $5ff1                                   ; $5e67: $11 $f1 $5f
	db   $f4                                         ; $5e6a: $f4

jr_0d1_5e6b:
	rst  $38                                         ; $5e6b: $ff
	ld   e, c                                        ; $5e6c: $59
	sub  c                                           ; $5e6d: $91
	or   l                                           ; $5e6e: $b5
	rra                                              ; $5e6f: $1f
	ld   b, c                                        ; $5e70: $41
	ei                                               ; $5e71: $fb
	cpl                                              ; $5e72: $2f
	or   $df                                         ; $5e73: $f6 $df
	xor  b                                           ; $5e75: $a8
	sub  e                                           ; $5e76: $93
	ld   l, l                                        ; $5e77: $6d
	jr   jr_0d1_5e6b                                 ; $5e78: $18 $f1

	xor  a                                           ; $5e7a: $af
	inc  e                                           ; $5e7b: $1c
	ld   sp, hl                                      ; $5e7c: $f9
	sbc  a                                           ; $5e7d: $9f
	cp   b                                           ; $5e7e: $b8
	and  [hl]                                        ; $5e7f: $a6
	ld   l, $11                                      ; $5e80: $2e $11
	pop  af                                          ; $5e82: $f1
	rra                                              ; $5e83: $1f
	ld   [hl], d                                     ; $5e84: $72
	cp   $4d                                         ; $5e85: $fe $4d
	or   $aa                                         ; $5e87: $f6 $aa
	jr   c, jr_0d1_5e5c                              ; $5e89: $38 $d1

	ld   a, a                                        ; $5e8b: $7f
	ld   d, $f1                                      ; $5e8c: $16 $f1
	sbc  a                                           ; $5e8e: $9f
	ld   [hl], a                                     ; $5e8f: $77
	ld   sp, hl                                      ; $5e90: $f9
	sbc  d                                           ; $5e91: $9a
	add  [hl]                                        ; $5e92: $86
	sub  $1f                                         ; $5e93: $d6 $1f
	ld   d, c                                        ; $5e95: $51
	jp   c, $f21c                                    ; $5e96: $da $1c $f2

	xor  a                                           ; $5e99: $af
	ld   l, c                                        ; $5e9a: $69

jr_0d1_5e9b:
	rst  $20                                         ; $5e9b: $e7
	ld   e, a                                        ; $5e9c: $5f
	ld   d, c                                        ; $5e9d: $51
	db   $f4                                         ; $5e9e: $f4
	dec  de                                          ; $5e9f: $1b
	and  c                                           ; $5ea0: $a1
	cp   a                                           ; $5ea1: $bf
	jr   z, jr_0d1_5e9b                              ; $5ea2: $28 $f7

	sbc  [hl]                                        ; $5ea4: $9e
	or   l                                           ; $5ea5: $b5
	ret  c                                           ; $5ea6: $d8

	dec  e                                           ; $5ea7: $1d
	ld   h, c                                        ; $5ea8: $61
	adc  b                                           ; $5ea9: $88
	ld   d, $e5                                      ; $5eaa: $16 $e5
	ld   l, a                                        ; $5eac: $6f
	sbc  d                                           ; $5ead: $9a
	ei                                               ; $5eae: $fb
	ld   l, l                                        ; $5eaf: $6d
	and  c                                           ; $5eb0: $a1
	ret                                              ; $5eb1: $c9


	inc  d                                           ; $5eb2: $14
	add  d                                           ; $5eb3: $82
	inc  a                                           ; $5eb4: $3c
	sub  l                                           ; $5eb5: $95
	db   $eb                                         ; $5eb6: $eb
	xor  [hl]                                        ; $5eb7: $ae
	reti                                             ; $5eb8: $d9


	xor  h                                           ; $5eb9: $ac
	ld   d, [hl]                                     ; $5eba: $56
	or   d                                           ; $5ebb: $b2
	ld   d, $51                                      ; $5ebc: $16 $51
	ld   l, e                                        ; $5ebe: $6b
	ld   a, d                                        ; $5ebf: $7a
	db   $ec                                         ; $5ec0: $ec
	cp   l                                           ; $5ec1: $bd
	rst  $20                                         ; $5ec2: $e7
	xor  d                                           ; $5ec3: $aa
	ld   c, b                                        ; $5ec4: $48
	ld   [hl], c                                     ; $5ec5: $71
	dec  h                                           ; $5ec6: $25
	ld   [hl+], a                                    ; $5ec7: $22
	adc  d                                           ; $5ec8: $8a
	sbc  h                                           ; $5ec9: $9c
	db   $db                                         ; $5eca: $db
	rst  JumpTable                                         ; $5ecb: $df
	cp   b                                           ; $5ecc: $b8
	and  a                                           ; $5ecd: $a7
	halt                                             ; $5ece: $76
	ld   [hl-], a                                    ; $5ecf: $32
	inc  hl                                          ; $5ed0: $23
	dec  [hl]                                        ; $5ed1: $35
	adc  d                                           ; $5ed2: $8a
	call z, $ddcc                                    ; $5ed3: $cc $cc $dd
	xor  d                                           ; $5ed6: $aa
	add  a                                           ; $5ed7: $87
	ld   [hl], h                                     ; $5ed8: $74
	ld   [hl+], a                                    ; $5ed9: $22
	ld   [hl+], a                                    ; $5eda: $22
	scf                                              ; $5edb: $37
	adc  h                                           ; $5edc: $8c
	call $eddd                                       ; $5edd: $cd $dd $ed
	xor  b                                           ; $5ee0: $a8
	add  [hl]                                        ; $5ee1: $86
	ld   d, h                                        ; $5ee2: $54
	ld   hl, $5623                                   ; $5ee3: $21 $23 $56
	xor  l                                           ; $5ee6: $ad
	call $ebdd                                       ; $5ee7: $cd $dd $eb
	sbc  c                                           ; $5eea: $99
	halt                                             ; $5eeb: $76
	ld   d, h                                        ; $5eec: $54
	ld   de, $5723                                   ; $5eed: $11 $23 $57
	call $edcd                                       ; $5ef0: $cd $cd $ed
	jp   c, Jump_0d1_6598                            ; $5ef3: $da $98 $65

	ld   d, e                                        ; $5ef6: $53
	ld   [de], a                                     ; $5ef7: $12
	inc  h                                           ; $5ef8: $24
	ld   l, c                                        ; $5ef9: $69
	call $cded                                       ; $5efa: $cd $ed $cd
	reti                                             ; $5efd: $d9


	sub  a                                           ; $5efe: $97
	ld   h, [hl]                                     ; $5eff: $66
	ld   b, e                                        ; $5f00: $43
	ld   [de], a                                     ; $5f01: $12
	inc  h                                           ; $5f02: $24
	ld   a, c                                        ; $5f03: $79
	sbc  $de                                         ; $5f04: $de $de
	db   $ed                                         ; $5f06: $ed
	reti                                             ; $5f07: $d9


	ld   [hl], a                                     ; $5f08: $77
	ld   h, l                                        ; $5f09: $65
	ld   b, d                                        ; $5f0a: $42
	ld   [de], a                                     ; $5f0b: $12
	dec  [hl]                                        ; $5f0c: $35
	ld   a, h                                        ; $5f0d: $7c
	db   $dd                                         ; $5f0e: $dd
	db   $ed                                         ; $5f0f: $ed
	sbc  $b8                                         ; $5f10: $de $b8
	halt                                             ; $5f12: $76
	ld   h, h                                        ; $5f13: $64
	ld   b, d                                        ; $5f14: $42
	inc  de                                          ; $5f15: $13
	dec  [hl]                                        ; $5f16: $35
	adc  e                                           ; $5f17: $8b
	sbc  $de                                         ; $5f18: $de $de
	db   $ed                                         ; $5f1a: $ed
	cp   b                                           ; $5f1b: $b8
	halt                                             ; $5f1c: $76
	ld   d, h                                        ; $5f1d: $54
	ld   sp, $4613                                   ; $5f1e: $31 $13 $46
	sbc  l                                           ; $5f21: $9d
	xor  $ed                                         ; $5f22: $ee $ed
	db   $ec                                         ; $5f24: $ec
	and  a                                           ; $5f25: $a7
	ld   h, l                                        ; $5f26: $65
	ld   d, h                                        ; $5f27: $54
	ld   hl, $5613                                   ; $5f28: $21 $13 $56
	cp   l                                           ; $5f2b: $bd
	xor  $ed                                         ; $5f2c: $ee $ed
	db   $ec                                         ; $5f2e: $ec
	sub  a                                           ; $5f2f: $97
	ld   h, l                                        ; $5f30: $65
	ld   d, h                                        ; $5f31: $54
	ld   de, $5723                                   ; $5f32: $11 $23 $57
	cp   [hl]                                        ; $5f35: $be
	rst  $38                                         ; $5f36: $ff
	db   $ed                                         ; $5f37: $ed
	jp   c, Jump_0d1_5586                            ; $5f38: $da $86 $55

	ld   b, e                                        ; $5f3b: $43
	ld   hl, $6924                                   ; $5f3c: $21 $24 $69
	adc  $ef                                         ; $5f3f: $ce $ef
	xor  $ca                                         ; $5f41: $ee $ca
	ld   [hl], l                                     ; $5f43: $75
	ld   d, l                                        ; $5f44: $55
	inc  sp                                          ; $5f45: $33
	ld   de, $6a34                                   ; $5f46: $11 $34 $6a
	sbc  $fe                                         ; $5f49: $de $fe
	db   $ed                                         ; $5f4b: $ed
	jp   c, $4465                                    ; $5f4c: $da $65 $44

	inc  sp                                          ; $5f4f: $33
	ld   de, $6a35                                   ; $5f50: $11 $35 $6a
	rst  $28                                         ; $5f53: $ef
	rst  $38                                         ; $5f54: $ff
	db   $dd                                         ; $5f55: $dd
	ret                                              ; $5f56: $c9


	ld   h, h                                        ; $5f57: $64
	ld   b, h                                        ; $5f58: $44
	ld   b, e                                        ; $5f59: $43
	ld   [de], a                                     ; $5f5a: $12
	dec  [hl]                                        ; $5f5b: $35
	ld   a, e                                        ; $5f5c: $7b
	rst  JumpTable                                         ; $5f5d: $df
	cp   $ee                                         ; $5f5e: $fe $ee
	ret                                              ; $5f60: $c9


	ld   h, h                                        ; $5f61: $64
	ld   b, h                                        ; $5f62: $44
	inc  sp                                          ; $5f63: $33
	ld   [hl+], a                                    ; $5f64: $22
	dec  [hl]                                        ; $5f65: $35
	ld   a, e                                        ; $5f66: $7b
	rst  JumpTable                                         ; $5f67: $df
	cp   $ed                                         ; $5f68: $fe $ed
	ret  z                                           ; $5f6a: $c8

	ld   h, h                                        ; $5f6b: $64
	inc  sp                                          ; $5f6c: $33
	ld   b, d                                        ; $5f6d: $42
	ld   [hl+], a                                    ; $5f6e: $22
	ld   b, l                                        ; $5f6f: $45
	ld   a, e                                        ; $5f70: $7b
	rst  $28                                         ; $5f71: $ef
	cp   $ed                                         ; $5f72: $fe $ed
	cp   b                                           ; $5f74: $b8
	ld   h, h                                        ; $5f75: $64
	ld   b, h                                        ; $5f76: $44
	inc  sp                                          ; $5f77: $33
	ld   [hl+], a                                    ; $5f78: $22
	ld   b, l                                        ; $5f79: $45
	ld   a, e                                        ; $5f7a: $7b
	rst  $28                                         ; $5f7b: $ef
	cp   $ee                                         ; $5f7c: $fe $ee
	ret  z                                           ; $5f7e: $c8

	ld   h, e                                        ; $5f7f: $63
	inc  sp                                          ; $5f80: $33
	inc  sp                                          ; $5f81: $33
	ld   [hl+], a                                    ; $5f82: $22
	dec  [hl]                                        ; $5f83: $35
	ld   a, d                                        ; $5f84: $7a
	rst  JumpTable                                         ; $5f85: $df
	cp   $ed                                         ; $5f86: $fe $ed
	reti                                             ; $5f88: $d9


	ld   h, e                                        ; $5f89: $63
	inc  sp                                          ; $5f8a: $33
	inc  sp                                          ; $5f8b: $33
	ld   [hl+], a                                    ; $5f8c: $22
	dec  [hl]                                        ; $5f8d: $35
	ld   l, c                                        ; $5f8e: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f8f: $cf
	cp   $de                                         ; $5f90: $fe $de
	jp   c, $3374                                    ; $5f92: $da $74 $33

	inc  sp                                          ; $5f95: $33
	ld   [hl+], a                                    ; $5f96: $22
	inc  [hl]                                        ; $5f97: $34
	ld   l, c                                        ; $5f98: $69
	cp   [hl]                                        ; $5f99: $be
	rst  $38                                         ; $5f9a: $ff
	xor  $db                                         ; $5f9b: $ee $db
	add  h                                           ; $5f9d: $84
	inc  sp                                          ; $5f9e: $33
	inc  sp                                          ; $5f9f: $33
	ld   [hl+], a                                    ; $5fa0: $22
	inc  [hl]                                        ; $5fa1: $34
	ld   d, a                                        ; $5fa2: $57
	cp   l                                           ; $5fa3: $bd
	rst  $38                                         ; $5fa4: $ff
	xor  $fc                                         ; $5fa5: $ee $fc
	and  [hl]                                        ; $5fa7: $a6
	inc  sp                                          ; $5fa8: $33
	inc  sp                                          ; $5fa9: $33
	ld   [hl-], a                                    ; $5faa: $32
	inc  hl                                          ; $5fab: $23
	ld   b, [hl]                                     ; $5fac: $46
	adc  h                                           ; $5fad: $8c
	rst  $28                                         ; $5fae: $ef
	xor  $fe                                         ; $5faf: $ee $fe
	cp   b                                           ; $5fb1: $b8
	ld   b, e                                        ; $5fb2: $43
	inc  sp                                          ; $5fb3: $33
	inc  sp                                          ; $5fb4: $33
	inc  hl                                          ; $5fb5: $23
	ld   b, l                                        ; $5fb6: $45
	ld   a, d                                        ; $5fb7: $7a
	sbc  $ff                                         ; $5fb8: $de $ff
	rst  $28                                         ; $5fba: $ef
	reti                                             ; $5fbb: $d9


	ld   h, e                                        ; $5fbc: $63
	inc  sp                                          ; $5fbd: $33
	inc  sp                                          ; $5fbe: $33
	ld   [hl+], a                                    ; $5fbf: $22
	inc  [hl]                                        ; $5fc0: $34
	ld   e, b                                        ; $5fc1: $58
	cp   l                                           ; $5fc2: $bd
	cp   $ef                                         ; $5fc3: $fe $ef
	db   $ec                                         ; $5fc5: $ec
	sub  l                                           ; $5fc6: $95
	inc  sp                                          ; $5fc7: $33
	inc  sp                                          ; $5fc8: $33
	inc  sp                                          ; $5fc9: $33
	inc  hl                                          ; $5fca: $23
	ld   b, [hl]                                     ; $5fcb: $46
	sbc  h                                           ; $5fcc: $9c
	rst  $28                                         ; $5fcd: $ef
	xor  $fe                                         ; $5fce: $ee $fe
	ret  z                                           ; $5fd0: $c8

	ld   b, e                                        ; $5fd1: $43
	inc  sp                                          ; $5fd2: $33
	inc  sp                                          ; $5fd3: $33
	ld   [hl-], a                                    ; $5fd4: $32
	inc  [hl]                                        ; $5fd5: $34
	ld   l, c                                        ; $5fd6: $69
	adc  $ff                                         ; $5fd7: $ce $ff
	rst  $28                                         ; $5fd9: $ef
	db   $eb                                         ; $5fda: $eb
	add  h                                           ; $5fdb: $84
	inc  sp                                          ; $5fdc: $33
	inc  sp                                          ; $5fdd: $33
	ld   [hl-], a                                    ; $5fde: $32
	inc  hl                                          ; $5fdf: $23
	ld   b, [hl]                                     ; $5fe0: $46
	sbc  h                                           ; $5fe1: $9c
	rst  $28                                         ; $5fe2: $ef
	cp   $fe                                         ; $5fe3: $fe $fe
	ret  z                                           ; $5fe5: $c8

	ld   d, e                                        ; $5fe6: $53
	inc  sp                                          ; $5fe7: $33
	inc  sp                                          ; $5fe8: $33
	ld   [hl+], a                                    ; $5fe9: $22
	inc  [hl]                                        ; $5fea: $34
	ld   l, b                                        ; $5feb: $68
	adc  $ee                                         ; $5fec: $ce $ee
	rst  $38                                         ; $5fee: $ff
	db   $fc                                         ; $5fef: $fc
	sub  l                                           ; $5ff0: $95
	inc  sp                                          ; $5ff1: $33
	inc  sp                                          ; $5ff2: $33
	ld   [hl-], a                                    ; $5ff3: $32
	inc  hl                                          ; $5ff4: $23
	dec  [hl]                                        ; $5ff5: $35
	adc  e                                           ; $5ff6: $8b
	rst  $28                                         ; $5ff7: $ef
	xor  $ff                                         ; $5ff8: $ee $ff
	jp   c, $3364                                    ; $5ffa: $da $64 $33

	inc  sp                                          ; $5ffd: $33
	ld   [hl+], a                                    ; $5ffe: $22
	inc  hl                                          ; $5fff: $23
	ld   d, a                                        ; $6000: $57
	xor  h                                           ; $6001: $ac
	xor  $ff                                         ; $6002: $ee $ff
	rst  $38                                         ; $6004: $ff
	or   a                                           ; $6005: $b7
	ld   b, e                                        ; $6006: $43
	inc  sp                                          ; $6007: $33
	ld   [hl-], a                                    ; $6008: $32
	ld   [de], a                                     ; $6009: $12
	inc  hl                                          ; $600a: $23
	ld   l, b                                        ; $600b: $68
	adc  $ff                                         ; $600c: $ce $ff
	rst  $38                                         ; $600e: $ff
	db   $fd                                         ; $600f: $fd
	and  [hl]                                        ; $6010: $a6
	ld   b, e                                        ; $6011: $43
	inc  sp                                          ; $6012: $33
	ld   [hl-], a                                    ; $6013: $32
	ld   [de], a                                     ; $6014: $12
	inc  h                                           ; $6015: $24
	ld   a, d                                        ; $6016: $7a
	sbc  $ff                                         ; $6017: $de $ff
	rst  $38                                         ; $6019: $ff
	db   $eb                                         ; $601a: $eb
	add  l                                           ; $601b: $85
	inc  sp                                          ; $601c: $33
	inc  sp                                          ; $601d: $33
	ld   hl, $3512                                   ; $601e: $21 $12 $35
	adc  e                                           ; $6021: $8b
	sbc  $ff                                         ; $6022: $de $ff
	rst  $38                                         ; $6024: $ff
	jp   c, Jump_0d1_4374                            ; $6025: $da $74 $43

	ld   [hl+], a                                    ; $6028: $22
	ld   hl, $3612                                   ; $6029: $21 $12 $36
	adc  e                                           ; $602c: $8b
	rst  JumpTable                                         ; $602d: $df
	rst  $38                                         ; $602e: $ff
	rst  $38                                         ; $602f: $ff
	db   $eb                                         ; $6030: $eb
	ld   h, h                                        ; $6031: $64
	inc  sp                                          ; $6032: $33
	ld   [hl+], a                                    ; $6033: $22
	ld   de, $4612                                   ; $6034: $11 $12 $46
	sbc  e                                           ; $6037: $9b
	rst  $28                                         ; $6038: $ef
	rst  $38                                         ; $6039: $ff
	rst  $38                                         ; $603a: $ff
	ld   [$3364], a                                  ; $603b: $ea $64 $33
	ld   [hl+], a                                    ; $603e: $22
	ld   de, $3612                                   ; $603f: $11 $12 $36
	sbc  h                                           ; $6042: $9c
	rst  $28                                         ; $6043: $ef
	rst  $38                                         ; $6044: $ff
	rst  $38                                         ; $6045: $ff
	ld   [$3364], a                                  ; $6046: $ea $64 $33
	ld   [hl+], a                                    ; $6049: $22
	ld   de, $3511                                   ; $604a: $11 $11 $35
	sbc  e                                           ; $604d: $9b
	rst  JumpTable                                         ; $604e: $df
	rst  $38                                         ; $604f: $ff
	rst  $38                                         ; $6050: $ff
	ld   [$4364], a                                  ; $6051: $ea $64 $43
	ld   [hl-], a                                    ; $6054: $32
	ld   de, $3511                                   ; $6055: $11 $11 $35
	adc  e                                           ; $6058: $8b
	rst  JumpTable                                         ; $6059: $df
	rst  $38                                         ; $605a: $ff
	rst  $38                                         ; $605b: $ff
	db   $ec                                         ; $605c: $ec
	add  l                                           ; $605d: $85
	ld   b, h                                        ; $605e: $44
	ld   [hl-], a                                    ; $605f: $32
	ld   de, $2411                                   ; $6060: $11 $11 $24
	ld   l, c                                        ; $6063: $69
	adc  $ff                                         ; $6064: $ce $ff
	rst  $38                                         ; $6066: $ff
	db   $fc                                         ; $6067: $fc
	and  [hl]                                        ; $6068: $a6
	ld   d, h                                        ; $6069: $54
	ld   [hl-], a                                    ; $606a: $32
	ld   de, $1211                                   ; $606b: $11 $11 $12
	ld   e, b                                        ; $606e: $58
	cp   l                                           ; $606f: $bd
	rst  $38                                         ; $6070: $ff
	rst  $38                                         ; $6071: $ff
	cp   $c8                                         ; $6072: $fe $c8
	ld   h, h                                        ; $6074: $64
	ld   b, e                                        ; $6075: $43
	ld   hl, $1111                                   ; $6076: $21 $11 $11
	ld   [hl], $9c                                   ; $6079: $36 $9c
	rst  $38                                         ; $607b: $ff
	rst  $38                                         ; $607c: $ff
	rst  $38                                         ; $607d: $ff
	ld   [$4475], a                                  ; $607e: $ea $75 $44
	ld   hl, $1111                                   ; $6081: $21 $11 $11
	inc  de                                          ; $6084: $13
	ld   a, c                                        ; $6085: $79
	rst  JumpTable                                         ; $6086: $df
	rst  $38                                         ; $6087: $ff
	rst  $38                                         ; $6088: $ff
	db   $fd                                         ; $6089: $fd
	and  a                                           ; $608a: $a7
	ld   h, l                                        ; $608b: $65
	ld   sp, $1111                                   ; $608c: $31 $11 $11
	ld   de, $ae47                                   ; $608f: $11 $47 $ae
	rst  $38                                         ; $6092: $ff
	rst  $38                                         ; $6093: $ff
	rst  $38                                         ; $6094: $ff
	db   $db                                         ; $6095: $db
	add  [hl]                                        ; $6096: $86
	ld   d, e                                        ; $6097: $53
	ld   de, $1111                                   ; $6098: $11 $11 $11
	inc  de                                          ; $609b: $13
	ld   l, c                                        ; $609c: $69
	rst  JumpTable                                         ; $609d: $df
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	cp   $b8                                         ; $60a0: $fe $b8
	ld   h, l                                        ; $60a2: $65
	ld   sp, $1111                                   ; $60a3: $31 $11 $11
	ld   de, $9d25                                   ; $60a6: $11 $25 $9d
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	db   $ed                                         ; $60ac: $ed
	and  a                                           ; $60ad: $a7
	ld   h, h                                        ; $60ae: $64
	ld   hl, $1111                                   ; $60af: $21 $11 $11
	ld   de, $bf47                                   ; $60b2: $11 $47 $bf
	rst  $38                                         ; $60b5: $ff
	rst  $38                                         ; $60b6: $ff
	rst  $38                                         ; $60b7: $ff
	db   $db                                         ; $60b8: $db
	sub  a                                           ; $60b9: $97
	ld   d, e                                        ; $60ba: $53
	ld   de, $1111                                   ; $60bb: $11 $11 $11
	ld   [de], a                                     ; $60be: $12
	ld   e, c                                        ; $60bf: $59
	rst  JumpTable                                         ; $60c0: $df
	rst  $38                                         ; $60c1: $ff
	rst  $38                                         ; $60c2: $ff
	rst  $38                                         ; $60c3: $ff
	db   $db                                         ; $60c4: $db
	sub  a                                           ; $60c5: $97
	ld   d, d                                        ; $60c6: $52
	ld   de, $1111                                   ; $60c7: $11 $11 $11
	ld   [de], a                                     ; $60ca: $12
	ld   e, c                                        ; $60cb: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60cc: $cf
	rst  $38                                         ; $60cd: $ff
	rst  $38                                         ; $60ce: $ff
	rst  $38                                         ; $60cf: $ff
	db   $eb                                         ; $60d0: $eb
	sub  a                                           ; $60d1: $97
	ld   d, d                                        ; $60d2: $52
	ld   de, $1111                                   ; $60d3: $11 $11 $11
	ld   [de], a                                     ; $60d6: $12
	ld   e, c                                        ; $60d7: $59
	rst  JumpTable                                         ; $60d8: $df
	rst  $38                                         ; $60d9: $ff
	rst  $38                                         ; $60da: $ff
	rst  $38                                         ; $60db: $ff
	db   $fc                                         ; $60dc: $fc
	cp   b                                           ; $60dd: $b8
	ld   d, e                                        ; $60de: $53
	ld   de, $1111                                   ; $60df: $11 $11 $11
	ld   de, $af37                                   ; $60e2: $11 $37 $af
	rst  $38                                         ; $60e5: $ff
	rst  $38                                         ; $60e6: $ff
	rst  $38                                         ; $60e7: $ff
	cp   $c9                                         ; $60e8: $fe $c9
	ld   [hl], l                                     ; $60ea: $75
	ld   hl, $1111                                   ; $60eb: $21 $11 $11
	ld   de, $8b24                                   ; $60ee: $11 $24 $8b
	rst  $38                                         ; $60f1: $ff
	rst  $38                                         ; $60f2: $ff
	rst  $38                                         ; $60f3: $ff
	cp   $ec                                         ; $60f4: $fe $ec
	sub  [hl]                                        ; $60f6: $96
	ld   d, d                                        ; $60f7: $52
	ld   de, $1111                                   ; $60f8: $11 $11 $11
	ld   [de], a                                     ; $60fb: $12
	ld   c, b                                        ; $60fc: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60fd: $cf
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	rst  $38                                         ; $6100: $ff
	xor  $b9                                         ; $6101: $ee $b9
	halt                                             ; $6103: $76
	ld   b, c                                        ; $6104: $41
	ld   de, $1111                                   ; $6105: $11 $11 $11
	inc  d                                           ; $6108: $14
	ld   l, d                                        ; $6109: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $610a: $cf
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	cp   $ed                                         ; $610d: $fe $ed
	cp   d                                           ; $610f: $ba
	add  [hl]                                        ; $6110: $86
	ld   [hl-], a                                    ; $6111: $32
	ld   de, $1111                                   ; $6112: $11 $11 $11
	inc  h                                           ; $6115: $24
	ld   l, c                                        ; $6116: $69
	rst  JumpTable                                         ; $6117: $df
	rst  $38                                         ; $6118: $ff
	rst  $38                                         ; $6119: $ff
	xor  $dd                                         ; $611a: $ee $dd
	cp   d                                           ; $611c: $ba
	add  [hl]                                        ; $611d: $86
	ld   b, d                                        ; $611e: $42
	ld   de, $1111                                   ; $611f: $11 $11 $11
	inc  hl                                          ; $6122: $23
	ld   l, b                                        ; $6123: $68
	cp   a                                           ; $6124: $bf
	rst  $38                                         ; $6125: $ff
	cp   $ee                                         ; $6126: $fe $ee
	xor  $db                                         ; $6128: $ee $db
	xor  b                                           ; $612a: $a8
	ld   d, e                                        ; $612b: $53
	ld   hl, $1111                                   ; $612c: $21 $11 $11
	ld   [de], a                                     ; $612f: $12
	ld   b, [hl]                                     ; $6130: $46
	xor  h                                           ; $6131: $ac
	rst  $38                                         ; $6132: $ff
	rst  $38                                         ; $6133: $ff
	rst  $38                                         ; $6134: $ff
	db   $ed                                         ; $6135: $ed
	call c, $85ba                                    ; $6136: $dc $ba $85
	ld   b, e                                        ; $6139: $43
	ld   de, $1111                                   ; $613a: $11 $11 $11
	inc  h                                           ; $613d: $24
	ld   l, c                                        ; $613e: $69
	call $efef                                       ; $613f: $cd $ef $ef
	xor  $ed                                         ; $6142: $ee $ed
	call c, Call_0d1_64b9                            ; $6144: $dc $b9 $64
	ld   [hl-], a                                    ; $6147: $32
	ld   bc, $1211                                   ; $6148: $01 $11 $12
	ld   [hl], $9a                                   ; $614b: $36 $9a
	db   $dd                                         ; $614d: $dd
	rst  $38                                         ; $614e: $ff
	db   $ed                                         ; $614f: $ed
	db   $ed                                         ; $6150: $ed
	db   $ed                                         ; $6151: $ed
	db   $ec                                         ; $6152: $ec
	and  a                                           ; $6153: $a7
	ld   d, h                                        ; $6154: $54
	ld   [hl-], a                                    ; $6155: $32
	ld   de, $1211                                   ; $6156: $11 $11 $12
	ld   b, [hl]                                     ; $6159: $46
	adc  e                                           ; $615a: $8b
	call $ddde                                       ; $615b: $cd $de $dd
	call c, $dbde                                    ; $615e: $dc $de $db
	xor  b                                           ; $6161: $a8
	ld   h, l                                        ; $6162: $65
	ld   b, e                                        ; $6163: $43
	ld   hl, $1211                                   ; $6164: $21 $11 $12
	ld   b, [hl]                                     ; $6167: $46
	ld   a, c                                        ; $6168: $79
	xor  h                                           ; $6169: $ac
	db   $dd                                         ; $616a: $dd
	db   $dd                                         ; $616b: $dd
	db   $dd                                         ; $616c: $dd
	call z, $b9dc                                    ; $616d: $cc $dc $b9
	halt                                             ; $6170: $76
	ld   d, h                                        ; $6171: $54
	ld   b, e                                        ; $6172: $43
	ld   [hl-], a                                    ; $6173: $32
	ld   [de], a                                     ; $6174: $12
	dec  [hl]                                        ; $6175: $35
	ld   h, a                                        ; $6176: $67
	adc  c                                           ; $6177: $89
	cp   h                                           ; $6178: $bc
	call z, $cccc                                    ; $6179: $cc $cc $cc
	call $a8cb                                       ; $617c: $cd $cb $a8
	ld   [hl], a                                     ; $617f: $77
	ld   h, [hl]                                     ; $6180: $66
	ld   d, h                                        ; $6181: $54
	ld   [hl-], a                                    ; $6182: $32
	inc  hl                                          ; $6183: $23
	dec  [hl]                                        ; $6184: $35
	ld   h, a                                        ; $6185: $67
	adc  b                                           ; $6186: $88
	sbc  d                                           ; $6187: $9a
	xor  d                                           ; $6188: $aa
	xor  d                                           ; $6189: $aa
	cp   h                                           ; $618a: $bc
	call z, $aacc                                    ; $618b: $cc $cc $aa
	adc  b                                           ; $618e: $88
	halt                                             ; $618f: $76
	ld   d, h                                        ; $6190: $54
	ld   [hl-], a                                    ; $6191: $32
	ld   [hl+], a                                    ; $6192: $22
	inc  [hl]                                        ; $6193: $34
	ld   d, [hl]                                     ; $6194: $56
	ld   a, b                                        ; $6195: $78
	adc  d                                           ; $6196: $8a
	xor  e                                           ; $6197: $ab
	xor  e                                           ; $6198: $ab
	cp   h                                           ; $6199: $bc
	call $bacb                                       ; $619a: $cd $cb $ba
	sbc  c                                           ; $619d: $99
	sub  a                                           ; $619e: $97
	ld   h, h                                        ; $619f: $64
	ld   [hl-], a                                    ; $61a0: $32
	ld   [hl+], a                                    ; $61a1: $22
	inc  [hl]                                        ; $61a2: $34
	ld   b, l                                        ; $61a3: $45
	ld   h, a                                        ; $61a4: $67
	adc  b                                           ; $61a5: $88
	xor  e                                           ; $61a6: $ab
	xor  d                                           ; $61a7: $aa
	cp   h                                           ; $61a8: $bc
	cp   h                                           ; $61a9: $bc
	call z, Call_0d1_76ec                            ; $61aa: $cc $ec $76
	sbc  e                                           ; $61ad: $9b
	sub  l                                           ; $61ae: $95
	ld   [hl+], a                                    ; $61af: $22
	inc  sp                                          ; $61b0: $33
	ld   b, h                                        ; $61b1: $44
	ld   b, l                                        ; $61b2: $45
	ld   h, [hl]                                     ; $61b3: $66
	ld   l, b                                        ; $61b4: $68
	xor  d                                           ; $61b5: $aa
	xor  c                                           ; $61b6: $a9
	xor  l                                           ; $61b7: $ad
	db   $ec                                         ; $61b8: $ec
	xor  d                                           ; $61b9: $aa
	cp   h                                           ; $61ba: $bc
	sbc  c                                           ; $61bb: $99
	adc  c                                           ; $61bc: $89
	add  [hl]                                        ; $61bd: $86
	ld   h, l                                        ; $61be: $65
	ld   d, h                                        ; $61bf: $54
	inc  [hl]                                        ; $61c0: $34
	ld   d, l                                        ; $61c1: $55
	ld   d, [hl]                                     ; $61c2: $56
	ld   a, c                                        ; $61c3: $79
	adc  c                                           ; $61c4: $89
	sbc  h                                           ; $61c5: $9c
	res  3, d                                        ; $61c6: $cb $9a
	cp   h                                           ; $61c8: $bc
	xor  c                                           ; $61c9: $a9
	xor  d                                           ; $61ca: $aa
	sbc  b                                           ; $61cb: $98
	halt                                             ; $61cc: $76
	ld   h, a                                        ; $61cd: $67
	ld   [hl], l                                     ; $61ce: $75
	ld   b, e                                        ; $61cf: $43
	ld   b, h                                        ; $61d0: $44
	ld   d, l                                        ; $61d1: $55
	ld   h, a                                        ; $61d2: $67
	adc  b                                           ; $61d3: $88
	sbc  c                                           ; $61d4: $99
	cp   l                                           ; $61d5: $bd
	db   $ec                                         ; $61d6: $ec
	xor  c                                           ; $61d7: $a9
	cp   d                                           ; $61d8: $ba
	xor  e                                           ; $61d9: $ab
	xor  d                                           ; $61da: $aa
	ld   h, h                                        ; $61db: $64
	ld   d, a                                        ; $61dc: $57
	ld   [hl], l                                     ; $61dd: $75
	inc  sp                                          ; $61de: $33
	ld   d, l                                        ; $61df: $55
	ld   b, h                                        ; $61e0: $44
	ld   h, a                                        ; $61e1: $67
	add  a                                           ; $61e2: $87
	adc  e                                           ; $61e3: $8b
	call c, $bbbb                                    ; $61e4: $dc $bb $bb
	cp   d                                           ; $61e7: $ba
	xor  c                                           ; $61e8: $a9
	xor  c                                           ; $61e9: $a9
	halt                                             ; $61ea: $76
	ld   h, [hl]                                     ; $61eb: $66
	ld   d, l                                        ; $61ec: $55
	ld   b, h                                        ; $61ed: $44
	ld   b, h                                        ; $61ee: $44
	inc  [hl]                                        ; $61ef: $34
	ld   d, [hl]                                     ; $61f0: $56
	adc  b                                           ; $61f1: $88
	sbc  e                                           ; $61f2: $9b
	db   $dd                                         ; $61f3: $dd
	res  7, e                                        ; $61f4: $cb $bb
	cp   d                                           ; $61f6: $ba
	xor  d                                           ; $61f7: $aa
	sbc  b                                           ; $61f8: $98
	halt                                             ; $61f9: $76
	ld   h, l                                        ; $61fa: $65
	ld   d, l                                        ; $61fb: $55
	inc  sp                                          ; $61fc: $33
	inc  [hl]                                        ; $61fd: $34
	ld   b, h                                        ; $61fe: $44
	ld   b, [hl]                                     ; $61ff: $46
	sbc  d                                           ; $6200: $9a
	xor  h                                           ; $6201: $ac
	xor  $ec                                         ; $6202: $ee $ec
	call z, $99bb                                    ; $6204: $cc $bb $99
	add  a                                           ; $6207: $87
	ld   d, h                                        ; $6208: $54
	ld   b, h                                        ; $6209: $44
	ld   b, h                                        ; $620a: $44
	inc  hl                                          ; $620b: $23
	inc  [hl]                                        ; $620c: $34
	ld   d, l                                        ; $620d: $55
	ld   d, a                                        ; $620e: $57
	xor  e                                           ; $620f: $ab
	sbc  $ff                                         ; $6210: $de $ff
	db   $ed                                         ; $6212: $ed
	res  7, e                                        ; $6213: $cb $bb
	adc  b                                           ; $6215: $88
	ld   [hl], h                                     ; $6216: $74
	inc  sp                                          ; $6217: $33
	ld   [hl-], a                                    ; $6218: $32
	ld   hl, $3423                                   ; $6219: $21 $23 $34
	ld   h, [hl]                                     ; $621c: $66
	adc  d                                           ; $621d: $8a
	cp   a                                           ; $621e: $bf
	rst  $38                                         ; $621f: $ff
	rst  $38                                         ; $6220: $ff
	db   $dd                                         ; $6221: $dd
	xor  d                                           ; $6222: $aa
	xor  c                                           ; $6223: $a9
	add  [hl]                                        ; $6224: $86
	ld   [hl+], a                                    ; $6225: $22
	ld   sp, $1111                                   ; $6226: $31 $11 $11
	ld   [hl-], a                                    ; $6229: $32
	ld   b, l                                        ; $622a: $45
	ld   a, e                                        ; $622b: $7b
	cp   l                                           ; $622c: $bd
	rst  $38                                         ; $622d: $ff
	rst  $38                                         ; $622e: $ff
	rst  $38                                         ; $622f: $ff
	db   $ec                                         ; $6230: $ec
	xor  c                                           ; $6231: $a9
	ld   h, l                                        ; $6232: $65
	ld   hl, $1111                                   ; $6233: $21 $11 $11
	ld   de, $4613                                   ; $6236: $11 $13 $46
	adc  d                                           ; $6239: $8a
	rst  JumpTable                                         ; $623a: $df
	rst  $38                                         ; $623b: $ff
	rst  $38                                         ; $623c: $ff
	rst  $38                                         ; $623d: $ff
	db   $ec                                         ; $623e: $ec
	xor  d                                           ; $623f: $aa
	ld   [hl], e                                     ; $6240: $73
	ld   hl, $1111                                   ; $6241: $21 $11 $11
	ld   de, $3612                                   ; $6244: $11 $12 $36
	sbc  d                                           ; $6247: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6248: $cf
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	rst  $38                                         ; $624b: $ff
	cp   $b8                                         ; $624c: $fe $b8
	ld   h, e                                        ; $624e: $63
	ld   de, $1111                                   ; $624f: $11 $11 $11
	ld   de, $3512                                   ; $6252: $11 $12 $35
	sbc  d                                           ; $6255: $9a
	rst  JumpTable                                         ; $6256: $df
	rst  $38                                         ; $6257: $ff
	rst  $38                                         ; $6258: $ff
	rst  $38                                         ; $6259: $ff
	db   $fd                                         ; $625a: $fd
	xor  b                                           ; $625b: $a8
	add  e                                           ; $625c: $83
	ld   de, $1111                                   ; $625d: $11 $11 $11
	ld   de, $4612                                   ; $6260: $11 $12 $46
	sbc  h                                           ; $6263: $9c
	rst  $28                                         ; $6264: $ef
	rst  $38                                         ; $6265: $ff
	rst  $38                                         ; $6266: $ff
	rst  $38                                         ; $6267: $ff
	rst  $38                                         ; $6268: $ff
	and  a                                           ; $6269: $a7
	ld   h, d                                        ; $626a: $62
	ld   de, $1111                                   ; $626b: $11 $11 $11
	ld   de, $4712                                   ; $626e: $11 $12 $47
	cp   [hl]                                        ; $6271: $be
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	rst  $38                                         ; $6274: $ff
	rst  $38                                         ; $6275: $ff
	rst  $38                                         ; $6276: $ff
	or   [hl]                                        ; $6277: $b6
	ld   d, c                                        ; $6278: $51
	ld   de, $1111                                   ; $6279: $11 $11 $11
	ld   de, $5812                                   ; $627c: $11 $12 $58
	rst  JumpTable                                         ; $627f: $df
	rst  $38                                         ; $6280: $ff
	rst  $38                                         ; $6281: $ff
	rst  $38                                         ; $6282: $ff
	rst  $38                                         ; $6283: $ff
	cp   $a6                                         ; $6284: $fe $a6
	ld   b, c                                        ; $6286: $41
	ld   de, $1111                                   ; $6287: $11 $11 $11
	ld   de, $6913                                   ; $628a: $11 $13 $69
	rst  $28                                         ; $628d: $ef
	rst  $38                                         ; $628e: $ff
	rst  $38                                         ; $628f: $ff
	rst  $38                                         ; $6290: $ff
	rst  $38                                         ; $6291: $ff
	rst  $38                                         ; $6292: $ff
	or   l                                           ; $6293: $b5
	ld   hl, $1111                                   ; $6294: $21 $11 $11
	ld   de, $1311                                   ; $6297: $11 $11 $13
	ld   a, d                                        ; $629a: $7a
	rst  $38                                         ; $629b: $ff
	rst  $38                                         ; $629c: $ff
	rst  $38                                         ; $629d: $ff
	rst  $38                                         ; $629e: $ff
	rst  $38                                         ; $629f: $ff
	rst  $38                                         ; $62a0: $ff
	sub  h                                           ; $62a1: $94
	ld   hl, $1111                                   ; $62a2: $21 $11 $11
	ld   de, $1511                                   ; $62a5: $11 $11 $15
	adc  h                                           ; $62a8: $8c
	rst  $38                                         ; $62a9: $ff
	rst  $38                                         ; $62aa: $ff
	rst  $38                                         ; $62ab: $ff
	rst  $38                                         ; $62ac: $ff
	rst  $38                                         ; $62ad: $ff
	db   $fd                                         ; $62ae: $fd
	sub  h                                           ; $62af: $94
	ld   hl, $1111                                   ; $62b0: $21 $11 $11
	ld   de, $1611                                   ; $62b3: $11 $11 $16
	sbc  h                                           ; $62b6: $9c
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff
	rst  $38                                         ; $62b9: $ff
	rst  $38                                         ; $62ba: $ff
	rst  $38                                         ; $62bb: $ff
	db   $fd                                         ; $62bc: $fd
	add  e                                           ; $62bd: $83
	ld   sp, $1111                                   ; $62be: $31 $11 $11
	ld   de, $1711                                   ; $62c1: $11 $11 $17
	xor  h                                           ; $62c4: $ac
	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	rst  $38                                         ; $62c7: $ff
	rst  $38                                         ; $62c8: $ff
	rst  $38                                         ; $62c9: $ff
	cp   $94                                         ; $62ca: $fe $94
	ld   hl, $1111                                   ; $62cc: $21 $11 $11
	ld   de, $1811                                   ; $62cf: $11 $11 $18
	xor  h                                           ; $62d2: $ac
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	rst  $38                                         ; $62d5: $ff
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	xor  $84                                         ; $62d8: $ee $84
	ld   hl, $1111                                   ; $62da: $21 $11 $11
	ld   de, $1811                                   ; $62dd: $11 $11 $18
	xor  [hl]                                        ; $62e0: $ae
	rst  $38                                         ; $62e1: $ff
	rst  $38                                         ; $62e2: $ff
	rst  $38                                         ; $62e3: $ff
	rst  $38                                         ; $62e4: $ff
	rst  $38                                         ; $62e5: $ff
	db   $fd                                         ; $62e6: $fd
	add  e                                           ; $62e7: $83
	ld   hl, $1111                                   ; $62e8: $21 $11 $11
	ld   de, $1811                                   ; $62eb: $11 $11 $18
	cp   [hl]                                        ; $62ee: $be
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	rst  $38                                         ; $62f1: $ff
	rst  $38                                         ; $62f2: $ff
	rst  $38                                         ; $62f3: $ff
	db   $ed                                         ; $62f4: $ed
	add  h                                           ; $62f5: $84
	ld   hl, $1111                                   ; $62f6: $21 $11 $11
	ld   de, $1811                                   ; $62f9: $11 $11 $18
	cp   [hl]                                        ; $62fc: $be
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	xor  $a4                                         ; $6302: $ee $a4
	ld   hl, $1111                                   ; $6304: $21 $11 $11
	ld   de, $1612                                   ; $6307: $11 $12 $16
	xor  h                                           ; $630a: $ac
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	rst  $38                                         ; $630f: $ff
	db   $fd                                         ; $6310: $fd
	and  l                                           ; $6311: $a5
	ld   sp, $1111                                   ; $6312: $31 $11 $11
	ld   de, $1411                                   ; $6315: $11 $11 $14
	cp   h                                           ; $6318: $bc
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	rst  $38                                         ; $631c: $ff
	rst  $38                                         ; $631d: $ff
	db   $fd                                         ; $631e: $fd
	or   [hl]                                        ; $631f: $b6
	ld   b, c                                        ; $6320: $41
	ld   de, $1111                                   ; $6321: $11 $11 $11
	ld   [de], a                                     ; $6324: $12
	ld   de, $ffbb                                   ; $6325: $11 $bb $ff
	rst  $38                                         ; $6328: $ff
	rst  $38                                         ; $6329: $ff
	rst  $38                                         ; $632a: $ff
	rst  $38                                         ; $632b: $ff
	cp   $c7                                         ; $632c: $fe $c7
	ld   b, e                                        ; $632e: $43
	ld   de, $1111                                   ; $632f: $11 $11 $11
	ld   de, $9a21                                   ; $6332: $11 $21 $9a
	rst  JumpTable                                         ; $6335: $df
	rst  $38                                         ; $6336: $ff
	rst  $38                                         ; $6337: $ff
	rst  $38                                         ; $6338: $ff
	rst  $38                                         ; $6339: $ff
	cp   $da                                         ; $633a: $fe $da
	ld   d, h                                        ; $633c: $54
	ld   de, $1111                                   ; $633d: $11 $11 $11
	ld   de, $3c31                                   ; $6340: $11 $31 $3c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6343: $cf
	rst  $38                                         ; $6344: $ff
	rst  $38                                         ; $6345: $ff
	rst  $38                                         ; $6346: $ff
	rst  $38                                         ; $6347: $ff
	rst  $38                                         ; $6348: $ff
	db   $ec                                         ; $6349: $ec
	ld   [hl], h                                     ; $634a: $74
	ld   hl, $1111                                   ; $634b: $21 $11 $11
	ld   de, $1813                                   ; $634e: $11 $13 $18
	cp   l                                           ; $6351: $bd
	rst  $38                                         ; $6352: $ff
	rst  $38                                         ; $6353: $ff
	rst  $38                                         ; $6354: $ff
	rst  $38                                         ; $6355: $ff
	rst  $38                                         ; $6356: $ff
	xor  $a5                                         ; $6357: $ee $a5
	ld   b, c                                        ; $6359: $41
	ld   de, $1111                                   ; $635a: $11 $11 $11
	ld   de, $bc11                                   ; $635d: $11 $11 $bc
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	cp   $d8                                         ; $6365: $fe $d8
	ld   b, h                                        ; $6367: $44
	ld   de, $1111                                   ; $6368: $11 $11 $11
	ld   de, $1b21                                   ; $636b: $11 $21 $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636e: $cf
	rst  $38                                         ; $636f: $ff
	rst  $38                                         ; $6370: $ff
	rst  $38                                         ; $6371: $ff
	rst  $38                                         ; $6372: $ff
	rst  $38                                         ; $6373: $ff
	call c, Call_0d1_4195                            ; $6374: $dc $95 $41
	ld   de, $1111                                   ; $6377: $11 $11 $11
	ld   [de], a                                     ; $637a: $12
	ld   hl, $ffad                                   ; $637b: $21 $ad $ff
	rst  $38                                         ; $637e: $ff
	rst  $38                                         ; $637f: $ff
	rst  $38                                         ; $6380: $ff
	rst  $38                                         ; $6381: $ff
	cp   $ca                                         ; $6382: $fe $ca
	ld   d, h                                        ; $6384: $54
	ld   de, $1111                                   ; $6385: $11 $11 $11
	ld   de, $1813                                   ; $6388: $11 $13 $18
	sbc  $ff                                         ; $638b: $de $ff
	rst  $38                                         ; $638d: $ff
	rst  $38                                         ; $638e: $ff
	rst  $38                                         ; $638f: $ff
	rst  $38                                         ; $6390: $ff
	db   $ec                                         ; $6391: $ec
	sub  [hl]                                        ; $6392: $96
	ld   d, d                                        ; $6393: $52
	ld   de, $1111                                   ; $6394: $11 $11 $11

Call_0d1_6397:
	ld   de, $5c32                                   ; $6397: $11 $32 $5c
	rst  JumpTable                                         ; $639a: $df
	rst  $38                                         ; $639b: $ff
	rst  $38                                         ; $639c: $ff
	rst  $38                                         ; $639d: $ff
	rst  $38                                         ; $639e: $ff
	rst  $38                                         ; $639f: $ff
	db   $db                                         ; $63a0: $db
	add  l                                           ; $63a1: $85
	ld   b, c                                        ; $63a2: $41
	ld   de, $1111                                   ; $63a3: $11 $11 $11
	ld   de, $8e42                                   ; $63a6: $11 $42 $8e
	rst  JumpTable                                         ; $63a9: $df
	rst  $38                                         ; $63aa: $ff
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	cp   $b9                                         ; $63ae: $fe $b9
	ld   h, l                                        ; $63b0: $65
	ld   sp, $1111                                   ; $63b1: $31 $11 $11
	ld   de, $5211                                   ; $63b4: $11 $11 $52
	sbc  l                                           ; $63b7: $9d
	rst  $38                                         ; $63b8: $ff
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	rst  $38                                         ; $63bb: $ff
	rst  $38                                         ; $63bc: $ff
	db   $fd                                         ; $63bd: $fd
	xor  c                                           ; $63be: $a9
	ld   h, l                                        ; $63bf: $65
	ld   b, c                                        ; $63c0: $41
	ld   de, $1111                                   ; $63c1: $11 $11 $11
	ld   de, $7d63                                   ; $63c4: $11 $63 $7d
	rst  $28                                         ; $63c7: $ef
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	rst  $38                                         ; $63cb: $ff
	db   $fd                                         ; $63cc: $fd
	cp   c                                           ; $63cd: $b9
	ld   [hl], l                                     ; $63ce: $75
	ld   d, c                                        ; $63cf: $51
	ld   de, $1111                                   ; $63d0: $11 $11 $11
	ld   de, $4c45                                   ; $63d3: $11 $45 $4c
	rst  JumpTable                                         ; $63d6: $df
	rst  $38                                         ; $63d7: $ff
	rst  $38                                         ; $63d8: $ff
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	cp   $c9                                         ; $63db: $fe $c9
	sub  l                                           ; $63dd: $95
	ld   h, e                                        ; $63de: $63
	ld   de, $1111                                   ; $63df: $11 $11 $11
	ld   [de], a                                     ; $63e2: $12
	rla                                              ; $63e3: $17
	ld   h, $ee                                      ; $63e4: $26 $ee
	rst  $38                                         ; $63e6: $ff
	rst  $38                                         ; $63e7: $ff
	rst  $38                                         ; $63e8: $ff
	rst  $38                                         ; $63e9: $ff
	rst  $38                                         ; $63ea: $ff
	jp   hl                                          ; $63eb: $e9


	xor  c                                           ; $63ec: $a9
	ld   d, a                                        ; $63ed: $57
	ld   de, $1111                                   ; $63ee: $11 $11 $11
	ld   de, $7221                                   ; $63f1: $11 $21 $72
	ld   l, l                                        ; $63f4: $6d
	db   $ed                                         ; $63f5: $ed
	rst  $38                                         ; $63f6: $ff
	rst  $38                                         ; $63f7: $ff
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	cp   $9b                                         ; $63fa: $fe $9b
	sub  [hl]                                        ; $63fc: $96
	add  d                                           ; $63fd: $82
	ld   de, $1111                                   ; $63fe: $11 $11 $11
	inc  d                                           ; $6401: $14
	inc  d                                           ; $6402: $14
	inc  sp                                          ; $6403: $33
	call $ffbf                                       ; $6404: $cd $bf $ff
	rst  $38                                         ; $6407: $ff
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	ld   a, [$79ac]                                  ; $640a: $fa $ac $79
	ld   b, c                                        ; $640d: $41
	ld   hl, $1111                                   ; $640e: $21 $11 $11
	ld   sp, $1715                                   ; $6411: $31 $15 $17
	db   $eb                                         ; $6414: $eb
	cp   a                                           ; $6415: $bf
	rst  $38                                         ; $6416: $ff
	cp   $ff                                         ; $6417: $fe $ff
	rst  $38                                         ; $6419: $ff
	reti                                             ; $641a: $d9


	jp   c, $2267                                    ; $641b: $da $67 $22

	ld   sp, $1111                                   ; $641e: $31 $11 $11
	ld   d, c                                        ; $6421: $51
	dec  d                                           ; $6422: $15
	add  hl, de                                      ; $6423: $19
	rst  $20                                         ; $6424: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6425: $cf
	rst  $38                                         ; $6426: $ff
	cp   $ff                                         ; $6427: $fe $ff
	rst  $38                                         ; $6429: $ff
	db   $db                                         ; $642a: $db
	ld   sp, hl                                      ; $642b: $f9
	ld   l, b                                        ; $642c: $68
	inc  hl                                          ; $642d: $23
	ld   sp, $1111                                   ; $642e: $31 $11 $11
	ld   de, $1614                                   ; $6431: $11 $14 $16
	ret  c                                           ; $6434: $d8

	cp   a                                           ; $6435: $bf
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	rst  $38                                         ; $6439: $ff
	db   $db                                         ; $643a: $db
	db   $eb                                         ; $643b: $eb
	ld   e, c                                        ; $643c: $59
	ld   b, e                                        ; $643d: $43
	ld   sp, $1111                                   ; $643e: $31 $11 $11
	ld   [de], a                                     ; $6441: $12
	ld   de, $c932                                   ; $6442: $11 $32 $c9
	adc  a                                           ; $6445: $8f
	rst  $38                                         ; $6446: $ff
	rst  $38                                         ; $6447: $ff
	rst  $38                                         ; $6448: $ff
	rst  $38                                         ; $6449: $ff
	cp   $ed                                         ; $644a: $fe $ed
	ld   a, b                                        ; $644c: $78
	add  e                                           ; $644d: $83
	ld   b, c                                        ; $644e: $41
	ld   de, $1111                                   ; $644f: $11 $11 $11
	ld   sp, $6c13                                   ; $6452: $31 $13 $6c
	ld   a, c                                        ; $6455: $79
	rst  $38                                         ; $6456: $ff
	rst  $38                                         ; $6457: $ff
	rst  $38                                         ; $6458: $ff
	rst  $38                                         ; $6459: $ff
	rst  $38                                         ; $645a: $ff
	db   $fd                                         ; $645b: $fd
	rst  ToBoot                                         ; $645c: $c7
	sub  a                                           ; $645d: $97
	ld   hl, $1111                                   ; $645e: $21 $11 $11
	ld   de, $1213                                   ; $6461: $11 $13 $12
	ld   b, a                                        ; $6464: $47
	or   [hl]                                        ; $6465: $b6
	xor  a                                           ; $6466: $af
	cp   $ff                                         ; $6467: $fe $ff
	rst  $38                                         ; $6469: $ff
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	cp   h                                           ; $646c: $bc
	adc  d                                           ; $646d: $8a
	ld   h, c                                        ; $646e: $61
	inc  hl                                          ; $646f: $23
	ld   de, $1111                                   ; $6470: $11 $11 $11
	ld   b, c                                        ; $6473: $41
	ld   d, $5a                                      ; $6474: $16 $5a
	ld   a, b                                        ; $6476: $78
	rst  $28                                         ; $6477: $ef
	rst  $28                                         ; $6478: $ef
	rst  $38                                         ; $6479: $ff
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	ei                                               ; $647c: $fb
	db   $db                                         ; $647d: $db
	sbc  b                                           ; $647e: $98
	inc  hl                                          ; $647f: $23
	ld   b, c                                        ; $6480: $41
	ld   de, $1111                                   ; $6481: $11 $11 $11
	ld   b, c                                        ; $6484: $41
	dec  h                                           ; $6485: $25
	ld   a, b                                        ; $6486: $78
	ld   l, c                                        ; $6487: $69
	rst  $38                                         ; $6488: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6489: $cf
	rst  $38                                         ; $648a: $ff
	rst  $38                                         ; $648b: $ff
	rst  $38                                         ; $648c: $ff
	db   $fd                                         ; $648d: $fd
	jp   c, $2495                                    ; $648e: $da $95 $24

	ld   hl, $1111                                   ; $6491: $21 $11 $11
	ld   [de], a                                     ; $6494: $12
	ld   b, c                                        ; $6495: $41
	ld   [hl], $67                                   ; $6496: $36 $67
	ld   e, c                                        ; $6498: $59
	cp   $bf                                         ; $6499: $fe $bf
	rst  $38                                         ; $649b: $ff
	rst  $38                                         ; $649c: $ff
	rst  $38                                         ; $649d: $ff
	db   $dd                                         ; $649e: $dd
	ld   [$35a4], a                                  ; $649f: $ea $a4 $35
	ld   hl, $1121                                   ; $64a2: $21 $21 $11
	ld   de, $1771                                   ; $64a5: $11 $71 $17
	ld   b, [hl]                                     ; $64a8: $46
	ld   [hl], $ed                                   ; $64a9: $36 $ed
	adc  a                                           ; $64ab: $8f
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	xor  $fb                                         ; $64af: $ee $fb
	and  [hl]                                        ; $64b1: $a6
	ld   b, a                                        ; $64b2: $47
	ld   sp, $1143                                   ; $64b3: $31 $43 $11
	ld   de, $1443                                   ; $64b6: $11 $43 $14

Call_0d1_64b9:
	ld   b, e                                        ; $64b9: $43
	ld   b, c                                        ; $64ba: $41
	ld   a, d                                        ; $64bb: $7a
	adc  b                                           ; $64bc: $88
	rst  $38                                         ; $64bd: $ff
	rst  $38                                         ; $64be: $ff
	rst  $38                                         ; $64bf: $ff
	cp   $ff                                         ; $64c0: $fe $ff
	db   $db                                         ; $64c2: $db
	ld   [hl], a                                     ; $64c3: $77
	add  l                                           ; $64c4: $85
	ld   h, l                                        ; $64c5: $65
	ld   d, l                                        ; $64c6: $55
	ld   b, d                                        ; $64c7: $42
	ld   hl, $1575                                   ; $64c8: $21 $75 $15
	inc  [hl]                                        ; $64cb: $34
	ld   hl, $4546                                   ; $64cc: $21 $46 $45
	sbc  c                                           ; $64cf: $99
	call z, $fecf                                    ; $64d0: $cc $cf $fe
	rst  $28                                         ; $64d3: $ef
	db   $ec                                         ; $64d4: $ec
	sbc  c                                           ; $64d5: $99
	cp   c                                           ; $64d6: $b9
	xor  d                                           ; $64d7: $aa
	xor  c                                           ; $64d8: $a9
	sub  a                                           ; $64d9: $97
	ld   [hl], a                                     ; $64da: $77
	ld   h, [hl]                                     ; $64db: $66
	add  l                                           ; $64dc: $85
	ld   b, h                                        ; $64dd: $44
	inc  hl                                          ; $64de: $23
	ld   de, $2422                                   ; $64df: $11 $22 $24
	ld   b, l                                        ; $64e2: $45
	adc  b                                           ; $64e3: $88
	sbc  e                                           ; $64e4: $9b
	cp   h                                           ; $64e5: $bc
	set  1, e                                        ; $64e6: $cb $cb
	xor  e                                           ; $64e8: $ab
	cp   e                                           ; $64e9: $bb
	call c, $ccdc                                    ; $64ea: $dc $dc $cc
	cp   e                                           ; $64ed: $bb
	xor  c                                           ; $64ee: $a9
	adc  b                                           ; $64ef: $88
	halt                                             ; $64f0: $76
	ld   b, h                                        ; $64f1: $44
	inc  sp                                          ; $64f2: $33
	ld   hl, $2222                                   ; $64f3: $21 $22 $22
	inc  [hl]                                        ; $64f6: $34
	ld   d, l                                        ; $64f7: $55
	ld   l, b                                        ; $64f8: $68
	sbc  c                                           ; $64f9: $99
	xor  c                                           ; $64fa: $a9
	xor  d                                           ; $64fb: $aa
	sbc  e                                           ; $64fc: $9b
	xor  d                                           ; $64fd: $aa
	cp   h                                           ; $64fe: $bc
	db   $dd                                         ; $64ff: $dd
	sbc  $ed                                         ; $6500: $de $ed
	db   $ec                                         ; $6502: $ec
	cp   e                                           ; $6503: $bb
	xor  b                                           ; $6504: $a8
	add  a                                           ; $6505: $87
	ld   h, l                                        ; $6506: $65
	ld   b, e                                        ; $6507: $43
	ld   [hl+], a                                    ; $6508: $22
	ld   [de], a                                     ; $6509: $12
	ld   [hl+], a                                    ; $650a: $22
	ld   [hl+], a                                    ; $650b: $22
	inc  [hl]                                        ; $650c: $34
	ld   b, l                                        ; $650d: $45
	ld   h, a                                        ; $650e: $67
	adc  b                                           ; $650f: $88
	adc  d                                           ; $6510: $8a
	xor  d                                           ; $6511: $aa
	xor  e                                           ; $6512: $ab
	set  1, l                                        ; $6513: $cb $cd
	db   $dd                                         ; $6515: $dd
	sbc  $ee                                         ; $6516: $de $ee
	db   $dd                                         ; $6518: $dd
	res  5, c                                        ; $6519: $cb $a9
	add  a                                           ; $651b: $87
	ld   h, l                                        ; $651c: $65
	ld   b, e                                        ; $651d: $43
	ld   [hl-], a                                    ; $651e: $32
	ld   hl, $2322                                   ; $651f: $21 $22 $23
	inc  [hl]                                        ; $6522: $34
	ld   d, l                                        ; $6523: $55
	ld   h, a                                        ; $6524: $67
	adc  c                                           ; $6525: $89
	sbc  d                                           ; $6526: $9a
	xor  d                                           ; $6527: $aa
	xor  d                                           ; $6528: $aa
	cp   e                                           ; $6529: $bb
	cp   e                                           ; $652a: $bb
	set  1, h                                        ; $652b: $cb $cc
	call z, $bccc                                    ; $652d: $cc $cc $bc
	cp   d                                           ; $6530: $ba
	sbc  c                                           ; $6531: $99
	add  a                                           ; $6532: $87
	ld   h, [hl]                                     ; $6533: $66
	ld   d, h                                        ; $6534: $54
	inc  sp                                          ; $6535: $33
	ld   [hl+], a                                    ; $6536: $22
	ld   [hl+], a                                    ; $6537: $22
	inc  sp                                          ; $6538: $33
	ld   b, h                                        ; $6539: $44
	ld   d, [hl]                                     ; $653a: $56
	ld   [hl], a                                     ; $653b: $77
	adc  b                                           ; $653c: $88
	sbc  d                                           ; $653d: $9a
	sbc  d                                           ; $653e: $9a
	xor  d                                           ; $653f: $aa
	cp   d                                           ; $6540: $ba
	cp   e                                           ; $6541: $bb
	cp   e                                           ; $6542: $bb
	cp   e                                           ; $6543: $bb
	cp   e                                           ; $6544: $bb
	cp   e                                           ; $6545: $bb
	xor  d                                           ; $6546: $aa
	cp   d                                           ; $6547: $ba
	sbc  c                                           ; $6548: $99
	sbc  b                                           ; $6549: $98
	ld   [hl], a                                     ; $654a: $77
	ld   h, l                                        ; $654b: $65
	ld   d, l                                        ; $654c: $55
	ld   b, h                                        ; $654d: $44
	ld   b, h                                        ; $654e: $44
	ld   b, h                                        ; $654f: $44
	ld   b, l                                        ; $6550: $45
	ld   d, [hl]                                     ; $6551: $56
	ld   [hl], a                                     ; $6552: $77
	ld   a, b                                        ; $6553: $78
	sbc  b                                           ; $6554: $98
	sbc  c                                           ; $6555: $99
	sbc  c                                           ; $6556: $99
	sbc  c                                           ; $6557: $99
	sbc  c                                           ; $6558: $99
	sbc  d                                           ; $6559: $9a
	xor  d                                           ; $655a: $aa
	xor  d                                           ; $655b: $aa
	xor  e                                           ; $655c: $ab
	cp   e                                           ; $655d: $bb
	xor  d                                           ; $655e: $aa
	xor  e                                           ; $655f: $ab
	cp   d                                           ; $6560: $ba
	sbc  d                                           ; $6561: $9a
	adc  b                                           ; $6562: $88
	add  a                                           ; $6563: $87
	ld   h, [hl]                                     ; $6564: $66
	ld   d, l                                        ; $6565: $55
	ld   b, h                                        ; $6566: $44
	ld   b, h                                        ; $6567: $44
	ld   b, h                                        ; $6568: $44
	ld   d, l                                        ; $6569: $55
	ld   h, [hl]                                     ; $656a: $66
	ld   h, a                                        ; $656b: $67
	ld   a, b                                        ; $656c: $78
	adc  c                                           ; $656d: $89
	sbc  b                                           ; $656e: $98
	adc  c                                           ; $656f: $89
	sbc  c                                           ; $6570: $99
	xor  c                                           ; $6571: $a9
	xor  d                                           ; $6572: $aa
	xor  e                                           ; $6573: $ab
	cp   e                                           ; $6574: $bb
	xor  d                                           ; $6575: $aa
	xor  d                                           ; $6576: $aa
	cp   e                                           ; $6577: $bb
	cp   d                                           ; $6578: $ba
	sbc  d                                           ; $6579: $9a
	sbc  b                                           ; $657a: $98
	add  a                                           ; $657b: $87
	halt                                             ; $657c: $76
	ld   h, [hl]                                     ; $657d: $66
	ld   d, l                                        ; $657e: $55
	ld   b, h                                        ; $657f: $44
	ld   b, h                                        ; $6580: $44
	ld   b, l                                        ; $6581: $45
	ld   d, [hl]                                     ; $6582: $56
	ld   h, a                                        ; $6583: $67
	ld   a, b                                        ; $6584: $78
	adc  b                                           ; $6585: $88
	sbc  b                                           ; $6586: $98
	adc  b                                           ; $6587: $88
	adc  c                                           ; $6588: $89
	sbc  c                                           ; $6589: $99
	xor  d                                           ; $658a: $aa
	sbc  d                                           ; $658b: $9a
	xor  d                                           ; $658c: $aa
	cp   e                                           ; $658d: $bb
	xor  d                                           ; $658e: $aa
	cp   d                                           ; $658f: $ba
	xor  e                                           ; $6590: $ab
	cp   d                                           ; $6591: $ba
	xor  c                                           ; $6592: $a9
	sbc  b                                           ; $6593: $98
	add  a                                           ; $6594: $87
	ld   [hl], a                                     ; $6595: $77
	ld   h, l                                        ; $6596: $65
	ld   d, l                                        ; $6597: $55

Jump_0d1_6598:
	ld   b, h                                        ; $6598: $44
	ld   b, h                                        ; $6599: $44
	ld   b, l                                        ; $659a: $45
	ld   d, [hl]                                     ; $659b: $56
	ld   h, [hl]                                     ; $659c: $66
	ld   [hl], a                                     ; $659d: $77
	adc  c                                           ; $659e: $89
	sbc  b                                           ; $659f: $98
	sbc  c                                           ; $65a0: $99
	xor  c                                           ; $65a1: $a9
	sbc  c                                           ; $65a2: $99
	sbc  d                                           ; $65a3: $9a
	xor  d                                           ; $65a4: $aa
	cp   d                                           ; $65a5: $ba
	xor  d                                           ; $65a6: $aa
	cp   e                                           ; $65a7: $bb
	xor  e                                           ; $65a8: $ab
	cp   e                                           ; $65a9: $bb
	xor  d                                           ; $65aa: $aa
	xor  c                                           ; $65ab: $a9
	add  a                                           ; $65ac: $87
	ld   [hl], a                                     ; $65ad: $77
	ld   h, [hl]                                     ; $65ae: $66
	ld   d, l                                        ; $65af: $55
	ld   d, h                                        ; $65b0: $54
	ld   b, h                                        ; $65b1: $44
	ld   b, h                                        ; $65b2: $44
	ld   d, l                                        ; $65b3: $55
	ld   h, [hl]                                     ; $65b4: $66
	ld   h, a                                        ; $65b5: $67
	adc  b                                           ; $65b6: $88
	sbc  b                                           ; $65b7: $98
	sbc  d                                           ; $65b8: $9a
	xor  c                                           ; $65b9: $a9
	sbc  c                                           ; $65ba: $99
	xor  d                                           ; $65bb: $aa
	cp   e                                           ; $65bc: $bb
	xor  d                                           ; $65bd: $aa
	cp   e                                           ; $65be: $bb
	cp   e                                           ; $65bf: $bb
	cp   d                                           ; $65c0: $ba
	cp   d                                           ; $65c1: $ba
	xor  c                                           ; $65c2: $a9
	sbc  b                                           ; $65c3: $98
	sub  a                                           ; $65c4: $97
	halt                                             ; $65c5: $76
	ld   h, [hl]                                     ; $65c6: $66
	ld   d, l                                        ; $65c7: $55
	ld   d, h                                        ; $65c8: $54
	ld   b, h                                        ; $65c9: $44
	ld   b, h                                        ; $65ca: $44
	ld   b, l                                        ; $65cb: $45
	ld   d, [hl]                                     ; $65cc: $56
	ld   h, a                                        ; $65cd: $67
	adc  c                                           ; $65ce: $89
	sbc  c                                           ; $65cf: $99
	xor  c                                           ; $65d0: $a9
	xor  d                                           ; $65d1: $aa
	xor  d                                           ; $65d2: $aa
	xor  d                                           ; $65d3: $aa
	cp   d                                           ; $65d4: $ba
	xor  d                                           ; $65d5: $aa
	xor  d                                           ; $65d6: $aa
	cp   d                                           ; $65d7: $ba
	cp   d                                           ; $65d8: $ba
	cp   e                                           ; $65d9: $bb
	sbc  c                                           ; $65da: $99
	adc  c                                           ; $65db: $89
	add  a                                           ; $65dc: $87
	ld   h, [hl]                                     ; $65dd: $66
	ld   [hl], l                                     ; $65de: $75
	ld   b, l                                        ; $65df: $45
	ld   d, e                                        ; $65e0: $53
	inc  [hl]                                        ; $65e1: $34
	ld   b, h                                        ; $65e2: $44
	ld   b, l                                        ; $65e3: $45
	ld   h, [hl]                                     ; $65e4: $66
	ld   l, b                                        ; $65e5: $68
	adc  b                                           ; $65e6: $88
	sbc  c                                           ; $65e7: $99
	sbc  d                                           ; $65e8: $9a
	xor  d                                           ; $65e9: $aa
	xor  d                                           ; $65ea: $aa
	cp   e                                           ; $65eb: $bb
	cp   e                                           ; $65ec: $bb
	xor  e                                           ; $65ed: $ab
	xor  e                                           ; $65ee: $ab
	res  5, e                                        ; $65ef: $cb $ab
	cp   c                                           ; $65f1: $b9
	sbc  b                                           ; $65f2: $98
	sub  a                                           ; $65f3: $97
	ld   h, [hl]                                     ; $65f4: $66
	ld   [hl], l                                     ; $65f5: $75
	dec  [hl]                                        ; $65f6: $35
	ld   b, e                                        ; $65f7: $43
	inc  sp                                          ; $65f8: $33
	ld   b, e                                        ; $65f9: $43
	ld   b, l                                        ; $65fa: $45
	ld   h, [hl]                                     ; $65fb: $66
	ld   l, b                                        ; $65fc: $68
	sbc  c                                           ; $65fd: $99
	sbc  e                                           ; $65fe: $9b
	xor  d                                           ; $65ff: $aa
	cp   d                                           ; $6600: $ba
	xor  d                                           ; $6601: $aa
	cp   d                                           ; $6602: $ba
	cp   d                                           ; $6603: $ba
	xor  h                                           ; $6604: $ac
	cp   d                                           ; $6605: $ba
	cp   e                                           ; $6606: $bb
	jp   z, $88aa                                    ; $6607: $ca $aa $88

	halt                                             ; $660a: $76
	ld   d, [hl]                                     ; $660b: $56
	ld   d, e                                        ; $660c: $53
	ld   d, h                                        ; $660d: $54
	ld   [hl+], a                                    ; $660e: $22
	inc  sp                                          ; $660f: $33
	inc  [hl]                                        ; $6610: $34
	ld   b, [hl]                                     ; $6611: $46
	ld   h, [hl]                                     ; $6612: $66
	sbc  c                                           ; $6613: $99
	adc  c                                           ; $6614: $89
	xor  d                                           ; $6615: $aa
	xor  d                                           ; $6616: $aa
	cp   h                                           ; $6617: $bc
	cp   d                                           ; $6618: $ba
	cp   e                                           ; $6619: $bb
	xor  e                                           ; $661a: $ab
	call z, $bbbc                                    ; $661b: $cc $bc $bb
	cp   c                                           ; $661e: $b9
	sbc  b                                           ; $661f: $98
	halt                                             ; $6620: $76
	ld   d, a                                        ; $6621: $57
	ld   d, d                                        ; $6622: $52
	ld   d, e                                        ; $6623: $53
	ld   [hl+], a                                    ; $6624: $22
	inc  sp                                          ; $6625: $33
	inc  h                                           ; $6626: $24
	ld   b, [hl]                                     ; $6627: $46
	ld   h, [hl]                                     ; $6628: $66
	sbc  c                                           ; $6629: $99
	adc  d                                           ; $662a: $8a
	cp   d                                           ; $662b: $ba
	cp   e                                           ; $662c: $bb
	cp   h                                           ; $662d: $bc
	xor  d                                           ; $662e: $aa
	call z, $ca9b                                    ; $662f: $cc $9b $ca
	cp   e                                           ; $6632: $bb
	cp   e                                           ; $6633: $bb
	sbc  b                                           ; $6634: $98
	sub  a                                           ; $6635: $97
	ld   d, l                                        ; $6636: $55
	halt                                             ; $6637: $76
	dec  d                                           ; $6638: $15
	ld   d, c                                        ; $6639: $51
	inc  de                                          ; $663a: $13
	ld   b, c                                        ; $663b: $41
	ld   b, h                                        ; $663c: $44
	ld   h, a                                        ; $663d: $67
	ld   e, c                                        ; $663e: $59
	cp   b                                           ; $663f: $b8
	xor  l                                           ; $6640: $ad
	cp   e                                           ; $6641: $bb
	cp   h                                           ; $6642: $bc
	cp   e                                           ; $6643: $bb
	cp   h                                           ; $6644: $bc
	jp   z, $babc                                    ; $6645: $ca $bc $ba

	cp   e                                           ; $6648: $bb
	xor  d                                           ; $6649: $aa
	sbc  b                                           ; $664a: $98
	ld   h, l                                        ; $664b: $65
	ld   e, b                                        ; $664c: $58
	ld   hl, $1272                                   ; $664d: $21 $72 $12
	ld   b, d                                        ; $6650: $42
	dec  h                                           ; $6651: $25
	ld   b, a                                        ; $6652: $47
	ld   l, b                                        ; $6653: $68
	cp   c                                           ; $6654: $b9
	sbc  h                                           ; $6655: $9c
	db   $db                                         ; $6656: $db
	db   $dd                                         ; $6657: $dd
	set  1, e                                        ; $6658: $cb $cb
	cp   e                                           ; $665a: $bb
	cp   h                                           ; $665b: $bc
	xor  d                                           ; $665c: $aa
	cp   d                                           ; $665d: $ba
	cp   d                                           ; $665e: $ba
	add  a                                           ; $665f: $87
	ld   h, h                                        ; $6660: $64
	jr   c, jr_0d1_66a4                              ; $6661: $38 $41

	ld   [hl], e                                     ; $6663: $73
	ld   de, $2533                                   ; $6664: $11 $33 $25
	jr   c, jr_0d1_66cf                              ; $6667: $38 $66

	cp   e                                           ; $6669: $bb
	xor  e                                           ; $666a: $ab
	db   $fc                                         ; $666b: $fc
	call $cbdc                                       ; $666c: $cd $dc $cb
	cp   e                                           ; $666f: $bb
	xor  e                                           ; $6670: $ab
	cp   e                                           ; $6671: $bb
	cp   e                                           ; $6672: $bb
	xor  b                                           ; $6673: $a8
	add  a                                           ; $6674: $87
	ld   d, h                                        ; $6675: $54
	scf                                              ; $6676: $37
	ld   sp, $1162                                   ; $6677: $31 $62 $11
	ld   [hl-], a                                    ; $667a: $32
	ld   d, $47                                      ; $667b: $16 $47
	ld   a, c                                        ; $667d: $79
	cp   e                                           ; $667e: $bb
	cp   h                                           ; $667f: $bc
	ei                                               ; $6680: $fb
	sbc  $dc                                         ; $6681: $de $dc
	db   $db                                         ; $6683: $db
	cp   e                                           ; $6684: $bb
	xor  h                                           ; $6685: $ac
	cp   c                                           ; $6686: $b9
	xor  e                                           ; $6687: $ab
	sbc  b                                           ; $6688: $98
	add  [hl]                                        ; $6689: $86
	ld   d, e                                        ; $668a: $53
	add  hl, sp                                      ; $668b: $39
	ld   de, $1171                                   ; $668c: $11 $71 $11
	ld   b, c                                        ; $668f: $41
	dec  h                                           ; $6690: $25
	ld   e, b                                        ; $6691: $58
	ld   l, c                                        ; $6692: $69
	call c, $eb9d                                    ; $6693: $dc $9d $eb
	sbc  $dc                                         ; $6696: $de $dc
	cp   e                                           ; $6698: $bb
	jp   c, $baac                                    ; $6699: $da $ac $ba

	xor  d                                           ; $669c: $aa
	sbc  c                                           ; $669d: $99
	ld   [hl], a                                     ; $669e: $77
	ld   d, d                                        ; $669f: $52
	ld   c, c                                        ; $66a0: $49
	ld   de, $1271                                   ; $66a1: $11 $71 $12

jr_0d1_66a4:
	ld   b, c                                        ; $66a4: $41
	dec  h                                           ; $66a5: $25
	ld   e, b                                        ; $66a6: $58
	ld   l, d                                        ; $66a7: $6a
	call c, $ecaf                                    ; $66a8: $dc $af $ec
	sbc  $dc                                         ; $66ab: $de $dc
	call z, $bcd9                                    ; $66ad: $cc $d9 $bc
	xor  d                                           ; $66b0: $aa
	xor  d                                           ; $66b1: $aa
	adc  c                                           ; $66b2: $89
	halt                                             ; $66b3: $76
	ld   b, d                                        ; $66b4: $42
	ld   e, b                                        ; $66b5: $58
	ld   [de], a                                     ; $66b6: $12
	ld   [hl], c                                     ; $66b7: $71
	ld   [de], a                                     ; $66b8: $12
	ld   b, c                                        ; $66b9: $41
	dec  [hl]                                        ; $66ba: $35
	ld   a, b                                        ; $66bb: $78
	ld   a, e                                        ; $66bc: $7b
	db   $db                                         ; $66bd: $db
	xor  a                                           ; $66be: $af
	db   $ec                                         ; $66bf: $ec
	xor  $ec                                         ; $66c0: $ee $ec
	cp   h                                           ; $66c2: $bc
	cp   c                                           ; $66c3: $b9
	call z, $baa9                                    ; $66c4: $cc $a9 $ba
	sbc  b                                           ; $66c7: $98
	halt                                             ; $66c8: $76
	ld   [hl-], a                                    ; $66c9: $32
	ld   d, a                                        ; $66ca: $57
	ld   de, $1271                                   ; $66cb: $11 $71 $12
	ld   b, c                                        ; $66ce: $41

jr_0d1_66cf:
	dec  h                                           ; $66cf: $25
	ld   a, b                                        ; $66d0: $78
	ld   a, e                                        ; $66d1: $7b
	db   $ec                                         ; $66d2: $ec
	cp   a                                           ; $66d3: $bf
	db   $ec                                         ; $66d4: $ec
	sbc  $eb                                         ; $66d5: $de $eb
	cp   h                                           ; $66d7: $bc
	ret                                              ; $66d8: $c9


	cp   h                                           ; $66d9: $bc
	xor  d                                           ; $66da: $aa
	xor  e                                           ; $66db: $ab
	sbc  b                                           ; $66dc: $98
	halt                                             ; $66dd: $76
	ld   d, d                                        ; $66de: $52
	jr   c, jr_0d1_66e2                              ; $66df: $38 $01

	ld   h, c                                        ; $66e1: $61

jr_0d1_66e2:
	ld   de, $2542                                   ; $66e2: $11 $42 $25
	ld   e, c                                        ; $66e5: $59
	ld   a, b                                        ; $66e6: $78
	call $fcbd                                       ; $66e7: $cd $bd $fc
	db   $dd                                         ; $66ea: $dd
	db   $dd                                         ; $66eb: $dd
	cp   e                                           ; $66ec: $bb
	jp   c, $baab                                    ; $66ed: $da $ab $ba

	xor  c                                           ; $66f0: $a9
	sbc  c                                           ; $66f1: $99
	halt                                             ; $66f2: $76
	ld   h, h                                        ; $66f3: $64
	inc  h                                           ; $66f4: $24
	ld   [hl], c                                     ; $66f5: $71
	ld   d, $11                                      ; $66f6: $16 $11
	inc  h                                           ; $66f8: $24
	inc  sp                                          ; $66f9: $33
	ld   d, a                                        ; $66fa: $57
	sub  a                                           ; $66fb: $97
	sbc  l                                           ; $66fc: $9d
	cp   e                                           ; $66fd: $bb
	rst  $28                                         ; $66fe: $ef
	call c, $cbdd                                    ; $66ff: $dc $dd $cb
	cp   e                                           ; $6702: $bb
	xor  e                                           ; $6703: $ab
	cp   e                                           ; $6704: $bb
	xor  d                                           ; $6705: $aa
	sbc  c                                           ; $6706: $99
	sub  a                                           ; $6707: $97
	halt                                             ; $6708: $76
	ld   b, h                                        ; $6709: $44
	dec  [hl]                                        ; $670a: $35
	ld   b, c                                        ; $670b: $41
	ld   b, h                                        ; $670c: $44
	ld   de, $3433                                   ; $670d: $11 $33 $34
	ld   h, a                                        ; $6710: $67
	adc  b                                           ; $6711: $88
	cp   h                                           ; $6712: $bc
	cp   h                                           ; $6713: $bc
	db   $ed                                         ; $6714: $ed
	call c, $cbdc                                    ; $6715: $dc $dc $cb
	jp   z, $b9ab                                    ; $6718: $ca $ab $b9

	sbc  e                                           ; $671b: $9b
	sbc  c                                           ; $671c: $99
	adc  c                                           ; $671d: $89
	ld   [hl], l                                     ; $671e: $75
	ld   d, l                                        ; $671f: $55
	inc  sp                                          ; $6720: $33
	ld   h, d                                        ; $6721: $62
	dec  d                                           ; $6722: $15
	ld   [hl+], a                                    ; $6723: $22
	inc  [hl]                                        ; $6724: $34
	ld   b, l                                        ; $6725: $45
	ld   d, [hl]                                     ; $6726: $56
	xor  b                                           ; $6727: $a8
	sbc  h                                           ; $6728: $9c
	set  1, l                                        ; $6729: $cb $cd
	call c, $cacb                                    ; $672b: $dc $cb $ca
	cp   e                                           ; $672e: $bb
	cp   d                                           ; $672f: $ba
	cp   d                                           ; $6730: $ba
	sbc  d                                           ; $6731: $9a
	sbc  e                                           ; $6732: $9b
	add  a                                           ; $6733: $87
	ld   [hl], a                                     ; $6734: $77
	ld   h, l                                        ; $6735: $65
	ld   h, l                                        ; $6736: $65
	ld   b, h                                        ; $6737: $44
	ld   d, d                                        ; $6738: $52
	inc  [hl]                                        ; $6739: $34
	inc  sp                                          ; $673a: $33
	inc  [hl]                                        ; $673b: $34
	ld   b, l                                        ; $673c: $45
	ld   h, a                                        ; $673d: $67
	xor  c                                           ; $673e: $a9
	sbc  e                                           ; $673f: $9b
	cp   e                                           ; $6740: $bb
	cp   l                                           ; $6741: $bd
	res  7, e                                        ; $6742: $cb $bb
	cp   d                                           ; $6744: $ba
	xor  d                                           ; $6745: $aa
	sbc  d                                           ; $6746: $9a
	sbc  c                                           ; $6747: $99
	xor  c                                           ; $6748: $a9
	sbc  c                                           ; $6749: $99
	sbc  c                                           ; $674a: $99
	add  a                                           ; $674b: $87
	ld   [hl], a                                     ; $674c: $77
	halt                                             ; $674d: $76
	ld   d, h                                        ; $674e: $54
	ld   d, l                                        ; $674f: $55
	ld   b, h                                        ; $6750: $44
	ld   b, h                                        ; $6751: $44
	inc  [hl]                                        ; $6752: $34
	ld   d, l                                        ; $6753: $55
	ld   h, [hl]                                     ; $6754: $66
	ld   a, b                                        ; $6755: $78
	sbc  c                                           ; $6756: $99
	xor  e                                           ; $6757: $ab
	xor  d                                           ; $6758: $aa
	cp   e                                           ; $6759: $bb
	cp   e                                           ; $675a: $bb
	xor  e                                           ; $675b: $ab
	xor  d                                           ; $675c: $aa
	sbc  c                                           ; $675d: $99
	sbc  d                                           ; $675e: $9a
	xor  c                                           ; $675f: $a9
	sbc  b                                           ; $6760: $98
	xor  c                                           ; $6761: $a9
	sbc  c                                           ; $6762: $99
	adc  b                                           ; $6763: $88
	ld   [hl], a                                     ; $6764: $77
	ld   [hl], a                                     ; $6765: $77
	ld   h, [hl]                                     ; $6766: $66
	ld   h, l                                        ; $6767: $65
	ld   d, [hl]                                     ; $6768: $56
	ld   d, [hl]                                     ; $6769: $56
	ld   d, l                                        ; $676a: $55
	ld   d, l                                        ; $676b: $55
	ld   d, [hl]                                     ; $676c: $56
	ld   h, [hl]                                     ; $676d: $66
	ld   a, b                                        ; $676e: $78
	adc  b                                           ; $676f: $88
	sbc  d                                           ; $6770: $9a
	sbc  c                                           ; $6771: $99
	xor  d                                           ; $6772: $aa
	xor  c                                           ; $6773: $a9
	sbc  c                                           ; $6774: $99
	sbc  c                                           ; $6775: $99
	xor  d                                           ; $6776: $aa
	xor  c                                           ; $6777: $a9
	sbc  c                                           ; $6778: $99
	sbc  c                                           ; $6779: $99
	adc  d                                           ; $677a: $8a
	sbc  b                                           ; $677b: $98
	sbc  b                                           ; $677c: $98
	sbc  b                                           ; $677d: $98
	adc  b                                           ; $677e: $88
	ld   [hl], a                                     ; $677f: $77
	ld   h, a                                        ; $6780: $67
	ld   h, [hl]                                     ; $6781: $66
	ld   h, [hl]                                     ; $6782: $66
	ld   h, l                                        ; $6783: $65
	ld   h, l                                        ; $6784: $65
	ld   h, [hl]                                     ; $6785: $66
	ld   h, [hl]                                     ; $6786: $66
	ld   h, a                                        ; $6787: $67
	ld   [hl], a                                     ; $6788: $77
	ld   [hl], a                                     ; $6789: $77
	adc  c                                           ; $678a: $89
	adc  b                                           ; $678b: $88
	sbc  c                                           ; $678c: $99
	xor  d                                           ; $678d: $aa
	xor  d                                           ; $678e: $aa
	xor  c                                           ; $678f: $a9
	sbc  d                                           ; $6790: $9a
	sbc  c                                           ; $6791: $99
	sbc  c                                           ; $6792: $99
	xor  c                                           ; $6793: $a9
	xor  b                                           ; $6794: $a8
	sbc  b                                           ; $6795: $98
	adc  b                                           ; $6796: $88
	adc  b                                           ; $6797: $88
	add  a                                           ; $6798: $87
	ld   [hl], a                                     ; $6799: $77
	ld   [hl], a                                     ; $679a: $77
	ld   [hl], a                                     ; $679b: $77
	ld   [hl], a                                     ; $679c: $77
	ld   [hl], a                                     ; $679d: $77
	halt                                             ; $679e: $76
	halt                                             ; $679f: $76
	ld   h, [hl]                                     ; $67a0: $66
	ld   h, a                                        ; $67a1: $67
	halt                                             ; $67a2: $76
	ld   a, b                                        ; $67a3: $78
	ld   [hl], a                                     ; $67a4: $77
	adc  c                                           ; $67a5: $89
	sbc  b                                           ; $67a6: $98
	sbc  c                                           ; $67a7: $99
	xor  c                                           ; $67a8: $a9
	sbc  d                                           ; $67a9: $9a
	sbc  c                                           ; $67aa: $99
	sbc  c                                           ; $67ab: $99
	sbc  b                                           ; $67ac: $98
	sbc  c                                           ; $67ad: $99
	adc  c                                           ; $67ae: $89
	sbc  b                                           ; $67af: $98
	adc  b                                           ; $67b0: $88
	adc  b                                           ; $67b1: $88
	ld   [hl], a                                     ; $67b2: $77
	ld   [hl], a                                     ; $67b3: $77
	ld   [hl], a                                     ; $67b4: $77
	ld   [hl], a                                     ; $67b5: $77
	adc  b                                           ; $67b6: $88
	ld   a, b                                        ; $67b7: $78
	add  a                                           ; $67b8: $87
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	adc  b                                           ; $67bb: $88
	adc  b                                           ; $67bc: $88
	adc  b                                           ; $67bd: $88
	adc  c                                           ; $67be: $89
	adc  b                                           ; $67bf: $88
	adc  c                                           ; $67c0: $89
	adc  b                                           ; $67c1: $88
	sbc  c                                           ; $67c2: $99
	adc  c                                           ; $67c3: $89
	adc  c                                           ; $67c4: $89
	sbc  b                                           ; $67c5: $98
	adc  b                                           ; $67c6: $88
	adc  b                                           ; $67c7: $88
	ld   a, b                                        ; $67c8: $78
	adc  b                                           ; $67c9: $88
	ld   a, b                                        ; $67ca: $78
	add  a                                           ; $67cb: $87
	adc  b                                           ; $67cc: $88
	ld   a, b                                        ; $67cd: $78
	ld   a, b                                        ; $67ce: $78
	adc  b                                           ; $67cf: $88
	adc  b                                           ; $67d0: $88
	adc  b                                           ; $67d1: $88
	adc  b                                           ; $67d2: $88
	adc  b                                           ; $67d3: $88
	adc  b                                           ; $67d4: $88
	sbc  b                                           ; $67d5: $98
	sbc  b                                           ; $67d6: $98
	adc  c                                           ; $67d7: $89
	adc  b                                           ; $67d8: $88
	adc  b                                           ; $67d9: $88
	adc  b                                           ; $67da: $88
	adc  b                                           ; $67db: $88
	adc  b                                           ; $67dc: $88
	adc  b                                           ; $67dd: $88
	adc  b                                           ; $67de: $88
	adc  b                                           ; $67df: $88
	adc  b                                           ; $67e0: $88
	adc  b                                           ; $67e1: $88
	adc  b                                           ; $67e2: $88
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	adc  b                                           ; $67e8: $88
	adc  b                                           ; $67e9: $88
	adc  b                                           ; $67ea: $88
	adc  b                                           ; $67eb: $88
	adc  b                                           ; $67ec: $88
	adc  b                                           ; $67ed: $88
	adc  b                                           ; $67ee: $88
	adc  b                                           ; $67ef: $88
	adc  b                                           ; $67f0: $88
	adc  b                                           ; $67f1: $88
	adc  b                                           ; $67f2: $88
	adc  b                                           ; $67f3: $88
	adc  b                                           ; $67f4: $88
	adc  b                                           ; $67f5: $88
	adc  b                                           ; $67f6: $88
	adc  b                                           ; $67f7: $88
	adc  b                                           ; $67f8: $88
	adc  b                                           ; $67f9: $88
	adc  b                                           ; $67fa: $88
	adc  b                                           ; $67fb: $88
	adc  b                                           ; $67fc: $88
	adc  b                                           ; $67fd: $88
	adc  b                                           ; $67fe: $88
	adc  b                                           ; $67ff: $88
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	adc  b                                           ; $6802: $88
	adc  b                                           ; $6803: $88
	adc  b                                           ; $6804: $88
	adc  b                                           ; $6805: $88
	adc  b                                           ; $6806: $88
	adc  b                                           ; $6807: $88
	adc  b                                           ; $6808: $88
	adc  b                                           ; $6809: $88
	adc  b                                           ; $680a: $88
	adc  b                                           ; $680b: $88
	adc  b                                           ; $680c: $88
	adc  b                                           ; $680d: $88
	adc  b                                           ; $680e: $88
	adc  b                                           ; $680f: $88
	adc  b                                           ; $6810: $88
	adc  b                                           ; $6811: $88
	adc  b                                           ; $6812: $88
	adc  b                                           ; $6813: $88
	adc  b                                           ; $6814: $88
	adc  b                                           ; $6815: $88
	adc  b                                           ; $6816: $88
	adc  b                                           ; $6817: $88
	adc  b                                           ; $6818: $88
	adc  b                                           ; $6819: $88
	adc  b                                           ; $681a: $88
	adc  b                                           ; $681b: $88
	adc  b                                           ; $681c: $88
	adc  b                                           ; $681d: $88
	adc  b                                           ; $681e: $88
	adc  b                                           ; $681f: $88
	adc  b                                           ; $6820: $88
	adc  b                                           ; $6821: $88
	adc  b                                           ; $6822: $88
	adc  b                                           ; $6823: $88
	adc  b                                           ; $6824: $88
	adc  b                                           ; $6825: $88
	adc  b                                           ; $6826: $88
	adc  b                                           ; $6827: $88
	adc  b                                           ; $6828: $88
	adc  b                                           ; $6829: $88
	adc  b                                           ; $682a: $88
	adc  b                                           ; $682b: $88
	adc  b                                           ; $682c: $88
	adc  b                                           ; $682d: $88
	adc  b                                           ; $682e: $88
	adc  b                                           ; $682f: $88
	adc  b                                           ; $6830: $88
	adc  b                                           ; $6831: $88
	adc  b                                           ; $6832: $88
	adc  b                                           ; $6833: $88
	adc  b                                           ; $6834: $88
	adc  b                                           ; $6835: $88
	adc  b                                           ; $6836: $88
	adc  b                                           ; $6837: $88
	adc  b                                           ; $6838: $88
	adc  b                                           ; $6839: $88
	adc  b                                           ; $683a: $88
	adc  b                                           ; $683b: $88
	adc  b                                           ; $683c: $88
	adc  b                                           ; $683d: $88
	adc  b                                           ; $683e: $88
	adc  b                                           ; $683f: $88
	adc  b                                           ; $6840: $88
	adc  b                                           ; $6841: $88
	adc  b                                           ; $6842: $88
	adc  b                                           ; $6843: $88
	adc  b                                           ; $6844: $88
	adc  b                                           ; $6845: $88
	adc  b                                           ; $6846: $88
	adc  b                                           ; $6847: $88
	adc  b                                           ; $6848: $88
	adc  b                                           ; $6849: $88
	adc  b                                           ; $684a: $88
	adc  b                                           ; $684b: $88
	adc  b                                           ; $684c: $88
	adc  b                                           ; $684d: $88
	adc  b                                           ; $684e: $88
	adc  b                                           ; $684f: $88
	adc  b                                           ; $6850: $88
	adc  b                                           ; $6851: $88
	adc  b                                           ; $6852: $88
	adc  b                                           ; $6853: $88
	adc  b                                           ; $6854: $88
	adc  b                                           ; $6855: $88
	adc  b                                           ; $6856: $88
	adc  b                                           ; $6857: $88
	adc  b                                           ; $6858: $88
	adc  b                                           ; $6859: $88
	adc  b                                           ; $685a: $88
	adc  b                                           ; $685b: $88
	adc  b                                           ; $685c: $88
	adc  b                                           ; $685d: $88
	adc  b                                           ; $685e: $88
	adc  b                                           ; $685f: $88
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
	adc  c                                           ; $686c: $89
	adc  b                                           ; $686d: $88
	sbc  b                                           ; $686e: $98
	adc  b                                           ; $686f: $88
	adc  c                                           ; $6870: $89
	sbc  b                                           ; $6871: $98
	adc  b                                           ; $6872: $88
	adc  c                                           ; $6873: $89
	sbc  c                                           ; $6874: $99
	add  a                                           ; $6875: $87
	adc  b                                           ; $6876: $88
	sbc  b                                           ; $6877: $98
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	adc  c                                           ; $687b: $89
	sbc  b                                           ; $687c: $98
	adc  b                                           ; $687d: $88
	add  a                                           ; $687e: $87
	sbc  c                                           ; $687f: $99
	adc  b                                           ; $6880: $88
	ld   a, b                                        ; $6881: $78
	adc  b                                           ; $6882: $88
	sbc  b                                           ; $6883: $98
	adc  b                                           ; $6884: $88
	adc  c                                           ; $6885: $89
	adc  b                                           ; $6886: $88
	sbc  b                                           ; $6887: $98
	adc  b                                           ; $6888: $88
	adc  b                                           ; $6889: $88
	ld   a, b                                        ; $688a: $78
	adc  b                                           ; $688b: $88
	sbc  c                                           ; $688c: $99
	adc  b                                           ; $688d: $88
	adc  b                                           ; $688e: $88
	adc  b                                           ; $688f: $88
	sbc  b                                           ; $6890: $98
	adc  b                                           ; $6891: $88
	adc  b                                           ; $6892: $88
	add  a                                           ; $6893: $87
	sbc  b                                           ; $6894: $98
	adc  c                                           ; $6895: $89
	adc  b                                           ; $6896: $88
	adc  b                                           ; $6897: $88
	adc  b                                           ; $6898: $88
	adc  b                                           ; $6899: $88
	sbc  b                                           ; $689a: $98
	ld   a, c                                        ; $689b: $79
	sbc  b                                           ; $689c: $98
	adc  b                                           ; $689d: $88
	sub  a                                           ; $689e: $97
	adc  c                                           ; $689f: $89
	adc  b                                           ; $68a0: $88
	adc  b                                           ; $68a1: $88
	adc  b                                           ; $68a2: $88
	adc  b                                           ; $68a3: $88
	sub  [hl]                                        ; $68a4: $96
	adc  d                                           ; $68a5: $8a
	ld   [hl], a                                     ; $68a6: $77
	adc  c                                           ; $68a7: $89
	ld   a, b                                        ; $68a8: $78
	adc  b                                           ; $68a9: $88
	ld   a, b                                        ; $68aa: $78
	adc  b                                           ; $68ab: $88
	sbc  b                                           ; $68ac: $98
	ld   [hl], a                                     ; $68ad: $77
	sbc  c                                           ; $68ae: $99
	adc  b                                           ; $68af: $88
	sub  a                                           ; $68b0: $97
	ld   [hl], a                                     ; $68b1: $77
	adc  b                                           ; $68b2: $88
	adc  b                                           ; $68b3: $88
	sbc  b                                           ; $68b4: $98
	adc  b                                           ; $68b5: $88
	adc  c                                           ; $68b6: $89
	ld   a, c                                        ; $68b7: $79
	sbc  b                                           ; $68b8: $98
	add  l                                           ; $68b9: $85
	ld   a, c                                        ; $68ba: $79
	sbc  b                                           ; $68bb: $98
	ld   a, b                                        ; $68bc: $78
	halt                                             ; $68bd: $76
	ld   a, b                                        ; $68be: $78
	sbc  c                                           ; $68bf: $99
	ld   [hl], a                                     ; $68c0: $77
	ld   a, b                                        ; $68c1: $78
	adc  b                                           ; $68c2: $88
	add  a                                           ; $68c3: $87
	adc  b                                           ; $68c4: $88
	xor  c                                           ; $68c5: $a9
	sbc  c                                           ; $68c6: $99
	sub  l                                           ; $68c7: $95
	ld   a, b                                        ; $68c8: $78
	adc  c                                           ; $68c9: $89
	adc  b                                           ; $68ca: $88
	ld   a, b                                        ; $68cb: $78
	add  a                                           ; $68cc: $87
	adc  c                                           ; $68cd: $89
	add  a                                           ; $68ce: $87
	sub  a                                           ; $68cf: $97
	adc  c                                           ; $68d0: $89
	ld   a, c                                        ; $68d1: $79
	ld   a, b                                        ; $68d2: $78
	ld   a, b                                        ; $68d3: $78
	sub  [hl]                                        ; $68d4: $96
	add  a                                           ; $68d5: $87
	add  a                                           ; $68d6: $87
	adc  c                                           ; $68d7: $89
	ld   a, b                                        ; $68d8: $78
	ld   a, c                                        ; $68d9: $79
	adc  b                                           ; $68da: $88
	adc  c                                           ; $68db: $89
	sbc  b                                           ; $68dc: $98
	ld   a, b                                        ; $68dd: $78
	sbc  b                                           ; $68de: $98
	adc  b                                           ; $68df: $88
	sbc  b                                           ; $68e0: $98
	ld   [hl], a                                     ; $68e1: $77
	adc  c                                           ; $68e2: $89
	sub  [hl]                                        ; $68e3: $96
	ld   a, d                                        ; $68e4: $7a
	adc  b                                           ; $68e5: $88
	adc  c                                           ; $68e6: $89
	sbc  c                                           ; $68e7: $99
	add  a                                           ; $68e8: $87
	adc  b                                           ; $68e9: $88
	add  a                                           ; $68ea: $87
	ld   a, b                                        ; $68eb: $78
	adc  b                                           ; $68ec: $88
	add  a                                           ; $68ed: $87
	ld   a, b                                        ; $68ee: $78
	add  a                                           ; $68ef: $87
	ld   [hl], a                                     ; $68f0: $77
	ld   a, b                                        ; $68f1: $78
	halt                                             ; $68f2: $76
	ld   [hl], a                                     ; $68f3: $77
	ld   [hl], a                                     ; $68f4: $77
	ld   [hl], a                                     ; $68f5: $77
	ld   [hl], a                                     ; $68f6: $77
	halt                                             ; $68f7: $76
	adc  b                                           ; $68f8: $88
	sbc  d                                           ; $68f9: $9a
	xor  h                                           ; $68fa: $ac
	cp   h                                           ; $68fb: $bc
	xor  e                                           ; $68fc: $ab
	res  5, c                                        ; $68fd: $cb $a9

Jump_0d1_68ff:
	add  a                                           ; $68ff: $87
	ld   h, l                                        ; $6900: $65
	ld   d, h                                        ; $6901: $54
	ld   hl, $1111                                   ; $6902: $21 $11 $11
	dec  d                                           ; $6905: $15
	adc  c                                           ; $6906: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6907: $cf
	rst  $38                                         ; $6908: $ff
	rst  $38                                         ; $6909: $ff
	rst  $38                                         ; $690a: $ff
	call z, $dbcd                                    ; $690b: $cc $cd $db
	xor  d                                           ; $690e: $aa
	sub  a                                           ; $690f: $97
	ld   d, e                                        ; $6910: $53
	ld   de, $1111                                   ; $6911: $11 $11 $11
	rra                                              ; $6914: $1f
	cp   $ff                                         ; $6915: $fe $ff
	rst  $38                                         ; $6917: $ff
	sub  $ad                                         ; $6918: $d6 $ad
	ld   b, c                                        ; $691a: $41
	ld   l, l                                        ; $691b: $6d
	db   $fd                                         ; $691c: $fd
	cp   [hl]                                        ; $691d: $be
	rst  $38                                         ; $691e: $ff
	add  h                                           ; $691f: $84
	ld   b, l                                        ; $6920: $45
	ld   hl, $1111                                   ; $6921: $21 $11 $11
	rra                                              ; $6924: $1f
	ld   a, [$ffef]                                  ; $6925: $fa $ef $ff
	ld   de, $115f                                   ; $6928: $11 $5f $11
	ld   c, a                                        ; $692b: $4f
	rst  $38                                         ; $692c: $ff
	ld   a, h                                        ; $692d: $7c
	rst  $38                                         ; $692e: $ff
	ld   h, c                                        ; $692f: $61
	ld   c, b                                        ; $6930: $48
	ld   hl, $1111                                   ; $6931: $21 $11 $11
	rst  $38                                         ; $6934: $ff
	rra                                              ; $6935: $1f
	rst  $38                                         ; $6936: $ff
	ld   de, $e11b                                   ; $6937: $11 $1b $e1
	rra                                              ; $693a: $1f
	rst  $38                                         ; $693b: $ff
	sub  $cf                                         ; $693c: $d6 $cf
	or   c                                           ; $693e: $b1
	ld   c, [hl]                                     ; $693f: $4e
	pop  bc                                          ; $6940: $c1
	ld   de, $6f11                                   ; $6941: $11 $11 $6f
	pop  af                                          ; $6944: $f1
	rst  $28                                         ; $6945: $ef
	pop  af                                          ; $6946: $f1
	ld   de, $11bc                                   ; $6947: $11 $bc $11
	rst  $38                                         ; $694a: $ff
	di                                               ; $694b: $f3
	ld   a, [de]                                     ; $694c: $1a
	db   $fd                                         ; $694d: $fd
	ld   e, c                                        ; $694e: $59
	rst  $30                                         ; $694f: $f7
	ld   de, $1f11                                   ; $6950: $11 $11 $1f
	pop  af                                          ; $6953: $f1
	ld   l, a                                        ; $6954: $6f
	pop  af                                          ; $6955: $f1
	ld   de, $32af                                   ; $6956: $11 $af $32
	rst  $38                                         ; $6959: $ff
	pop  af                                          ; $695a: $f1
	add  hl, de                                      ; $695b: $19
	rst  $38                                         ; $695c: $ff
	cp   e                                           ; $695d: $bb
	or   $11                                         ; $695e: $f6 $11
	ld   de, $f21f                                   ; $6960: $11 $1f $f2
	rra                                              ; $6963: $1f
	pop  af                                          ; $6964: $f1
	ld   de, $a29f                                   ; $6965: $11 $9f $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6968: $cf
	pop  af                                          ; $6969: $f1
	rla                                              ; $696a: $17
	rst  $38                                         ; $696b: $ff
	db   $eb                                         ; $696c: $eb
	push hl                                          ; $696d: $e5
	ld   de, rAUD1LEN                                   ; $696e: $11 $11 $ff
	pop  af                                          ; $6971: $f1
	rst  $38                                         ; $6972: $ff
	ld   d, c                                        ; $6973: $51
	ld   d, $ff                                      ; $6974: $16 $ff
	ld   d, l                                        ; $6976: $55
	rst  $38                                         ; $6977: $ff
	ld   hl, $ff1f                                   ; $6978: $21 $1f $ff
	cp   e                                           ; $697b: $bb
	or   c                                           ; $697c: $b1
	ld   de, $f11f                                   ; $697d: $11 $1f $f1
	rra                                              ; $6980: $1f
	pop  af                                          ; $6981: $f1
	ld   [de], a                                     ; $6982: $12
	ld   a, a                                        ; $6983: $7f
	di                                               ; $6984: $f3
	xor  a                                           ; $6985: $af
	pop  af                                          ; $6986: $f1
	ld   de, $f7ef                                   ; $6987: $11 $ef $f7
	add  l                                           ; $698a: $85
	ld   de, $fb1f                                   ; $698b: $11 $1f $fb
	rra                                              ; $698e: $1f
	ldh  a, [c]                                      ; $698f: $f2
	ld   de, $f32f                                   ; $6990: $11 $2f $f3
	ld   e, a                                        ; $6993: $5f
	pop  af                                          ; $6994: $f1
	ld   de, $f7af                                   ; $6995: $11 $af $f7
	ld   b, d                                        ; $6998: $42
	ld   de, $f11f                                   ; $6999: $11 $1f $f1
	ccf                                              ; $699c: $3f
	pop  af                                          ; $699d: $f1
	inc  d                                           ; $699e: $14
	ld   e, a                                        ; $699f: $5f
	pop  af                                          ; $69a0: $f1
	rst  $28                                         ; $69a1: $ef
	pop  hl                                          ; $69a2: $e1
	ld   de, $f2df                                   ; $69a3: $11 $df $f2
	ld   sp, rAUD1LEN                                   ; $69a6: $31 $11 $ff
	dec  d                                           ; $69a9: $15
	rst  $38                                         ; $69aa: $ff
	ld   de, $ff65                                   ; $69ab: $11 $65 $ff
	ld   e, $fa                                      ; $69ae: $1e $fa
	ld   de, $ff1b                                   ; $69b0: $11 $1b $ff
	ld   de, $1f11                                   ; $69b3: $11 $11 $1f
	pop  af                                          ; $69b6: $f1
	rst  $38                                         ; $69b7: $ff
	ld   d, c                                        ; $69b8: $51
	ld   de, $81ef                                   ; $69b9: $11 $ef $81
	rst  $38                                         ; $69bc: $ff
	ld   bc, rAUD1LEN                                   ; $69bd: $01 $11 $ff
	ld   d, c                                        ; $69c0: $51
	ld   de, $f11f                                   ; $69c1: $11 $1f $f1
	rra                                              ; $69c4: $1f
	pop  af                                          ; $69c5: $f1
	dec  d                                           ; $69c6: $15
	rra                                              ; $69c7: $1f
	pop  af                                          ; $69c8: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c9: $cf
	pop  af                                          ; $69ca: $f1
	ld   de, $b18f                                   ; $69cb: $11 $8f $b1
	ld   de, $f71f                                   ; $69ce: $11 $1f $f7
	rra                                              ; $69d1: $1f
	pop  af                                          ; $69d2: $f1
	inc  d                                           ; $69d3: $14
	rra                                              ; $69d4: $1f
	pop  af                                          ; $69d5: $f1
	ld   a, a                                        ; $69d6: $7f
	pop  af                                          ; $69d7: $f1
	ld   de, $b15f                                   ; $69d8: $11 $5f $b1
	ld   de, $f11f                                   ; $69db: $11 $1f $f1
	rra                                              ; $69de: $1f
	pop  af                                          ; $69df: $f1
	ld   de, $f11f                                   ; $69e0: $11 $1f $f1
	xor  a                                           ; $69e3: $af
	pop  af                                          ; $69e4: $f1
	ld   de, $714f                                   ; $69e5: $11 $4f $71
	ld   hl, $f11f                                   ; $69e8: $21 $1f $f1
	adc  a                                           ; $69eb: $8f
	pop  af                                          ; $69ec: $f1
	ld   de, $a13f                                   ; $69ed: $11 $3f $a1
	rst  $38                                         ; $69f0: $ff
	db   $f4                                         ; $69f1: $f4
	ld   de, $11bf                                   ; $69f2: $11 $bf $11
	ld   de, $f11f                                   ; $69f5: $11 $1f $f1
	rst  $38                                         ; $69f8: $ff
	ld   sp, rAUD1LEN                                   ; $69f9: $31 $11 $ff
	inc  de                                          ; $69fc: $13
	rst  $38                                         ; $69fd: $ff
	pop  de                                          ; $69fe: $d1
	ld   de, $11d3                                   ; $69ff: $11 $d3 $11
	ld   de, $1fff                                   ; $6a02: $11 $ff $1f
	db   $fd                                         ; $6a05: $fd
	ld   de, $f11f                                   ; $6a06: $11 $1f $f1
	ld   e, a                                        ; $6a09: $5f
	rst  $38                                         ; $6a0a: $ff
	ld   d, c                                        ; $6a0b: $51
	ld   d, $31                                      ; $6a0c: $16 $31
	ld   de, $05ff                                   ; $6a0e: $11 $ff $05
	rst  $38                                         ; $6a11: $ff
	or   h                                           ; $6a12: $b4
	ld   de, $5bfa                                   ; $6a13: $11 $fa $5b
	rst  $38                                         ; $6a16: $ff
	ldh  [c], a                                      ; $6a17: $e2
	ld   de, $1111                                   ; $6a18: $11 $11 $11
	ld   c, a                                        ; $6a1b: $4f
	or   d                                           ; $6a1c: $b2
	rst  $38                                         ; $6a1d: $ff
	ei                                               ; $6a1e: $fb
	ld   sp, $8ada                                   ; $6a1f: $31 $da $8a
	rst  $38                                         ; $6a22: $ff
	or   $11                                         ; $6a23: $f6 $11
	ld   de, $1f11                                   ; $6a25: $11 $11 $1f
	rst  $10                                         ; $6a28: $d7
	rst  JumpTable                                         ; $6a29: $df
	rst  $38                                         ; $6a2a: $ff
	or   l                                           ; $6a2b: $b5
	xor  b                                           ; $6a2c: $a8
	sbc  d                                           ; $6a2d: $9a
	xor  a                                           ; $6a2e: $af
	db   $fd                                         ; $6a2f: $fd
	ld   h, c                                        ; $6a30: $61
	ld   de, $1f11                                   ; $6a31: $11 $11 $1f
	and  [hl]                                        ; $6a34: $a6
	call $b8ff                                       ; $6a35: $cd $ff $b8
	ei                                               ; $6a38: $fb
	ld   a, d                                        ; $6a39: $7a
	cp   a                                           ; $6a3a: $bf
	jp   hl                                          ; $6a3b: $e9


	ld   [hl], l                                     ; $6a3c: $75
	ld   de, $1b11                                   ; $6a3d: $11 $11 $1b
	jp   $de7c                                       ; $6a40: $c3 $7c $de


	ld   a, [$abff]                                  ; $6a43: $fa $ff $ab
	adc  h                                           ; $6a46: $8c
	ld   a, [$5365]                                  ; $6a47: $fa $65 $53
	ld   de, $e415                                   ; $6a4a: $11 $15 $e4
	ld   e, d                                        ; $6a4d: $5a
	cp   h                                           ; $6a4e: $bc
	set  3, a                                        ; $6a4f: $cb $df
	call c, $f8ac                                    ; $6a51: $dc $ac $f8
	sub  a                                           ; $6a54: $97
	inc  [hl]                                        ; $6a55: $34
	ld   hl, $aa11                                   ; $6a56: $21 $11 $aa
	ld   h, $89                                      ; $6a59: $26 $89
	xor  b                                           ; $6a5b: $a8
	sbc  a                                           ; $6a5c: $9f
	xor  $da                                         ; $6a5d: $ee $da
	db   $eb                                         ; $6a5f: $eb
	ld   a, b                                        ; $6a60: $78
	ld   h, l                                        ; $6a61: $65
	ld   h, h                                        ; $6a62: $64
	inc  hl                                          ; $6a63: $23
	dec  a                                           ; $6a64: $3d
	or   d                                           ; $6a65: $b2
	ld   e, b                                        ; $6a66: $58
	ld   l, c                                        ; $6a67: $69
	ld   h, l                                        ; $6a68: $65
	xor  e                                           ; $6a69: $ab
	cp   e                                           ; $6a6a: $bb
	cp   h                                           ; $6a6b: $bc
	ret  c                                           ; $6a6c: $d8

	sbc  d                                           ; $6a6d: $9a
	ld   [hl], a                                     ; $6a6e: $77
	adc  d                                           ; $6a6f: $8a
	sbc  b                                           ; $6a70: $98
	ld   h, a                                        ; $6a71: $67
	adc  d                                           ; $6a72: $8a
	ld   h, e                                        ; $6a73: $63
	ld   h, a                                        ; $6a74: $67
	ld   d, h                                        ; $6a75: $54
	ld   d, l                                        ; $6a76: $55
	sbc  e                                           ; $6a77: $9b
	add  a                                           ; $6a78: $87
	xor  e                                           ; $6a79: $ab
	sbc  d                                           ; $6a7a: $9a
	sbc  b                                           ; $6a7b: $98
	sbc  h                                           ; $6a7c: $9c
	ei                                               ; $6a7d: $fb
	ld   b, a                                        ; $6a7e: $47
	db   $dd                                         ; $6a7f: $dd
	ld   d, d                                        ; $6a80: $52
	ld   a, d                                        ; $6a81: $7a
	ld   h, d                                        ; $6a82: $62
	ld   [hl], $87                                   ; $6a83: $36 $87
	ld   b, [hl]                                     ; $6a85: $46
	adc  c                                           ; $6a86: $89
	halt                                             ; $6a87: $76
	sbc  l                                           ; $6a88: $9d
	cp   c                                           ; $6a89: $b9
	xor  e                                           ; $6a8a: $ab
	cp   h                                           ; $6a8b: $bc
	sbc  c                                           ; $6a8c: $99
	xor  d                                           ; $6a8d: $aa
	ld   [hl], l                                     ; $6a8e: $75
	ld   l, b                                        ; $6a8f: $68
	ld   [hl], l                                     ; $6a90: $75
	ld   d, [hl]                                     ; $6a91: $56
	ld   h, [hl]                                     ; $6a92: $66
	ld   h, [hl]                                     ; $6a93: $66
	ld   h, a                                        ; $6a94: $67
	adc  c                                           ; $6a95: $89
	sbc  c                                           ; $6a96: $99
	sbc  d                                           ; $6a97: $9a
	xor  d                                           ; $6a98: $aa
	sbc  d                                           ; $6a99: $9a
	sbc  c                                           ; $6a9a: $99
	sbc  b                                           ; $6a9b: $98
	adc  b                                           ; $6a9c: $88
	sbc  c                                           ; $6a9d: $99
	ld   [hl], a                                     ; $6a9e: $77
	ld   [hl], a                                     ; $6a9f: $77
	add  [hl]                                        ; $6aa0: $86
	ld   h, a                                        ; $6aa1: $67
	add  a                                           ; $6aa2: $87
	add  a                                           ; $6aa3: $87
	ld   [hl], a                                     ; $6aa4: $77
	adc  b                                           ; $6aa5: $88
	ld   a, b                                        ; $6aa6: $78
	adc  c                                           ; $6aa7: $89
	sbc  c                                           ; $6aa8: $99
	adc  b                                           ; $6aa9: $88
	xor  c                                           ; $6aaa: $a9
	adc  c                                           ; $6aab: $89
	sbc  b                                           ; $6aac: $98
	adc  b                                           ; $6aad: $88
	ld   a, b                                        ; $6aae: $78
	adc  b                                           ; $6aaf: $88
	add  a                                           ; $6ab0: $87
	ld   h, a                                        ; $6ab1: $67
	ld   [hl], a                                     ; $6ab2: $77
	ld   h, a                                        ; $6ab3: $67
	ld   a, b                                        ; $6ab4: $78
	add  a                                           ; $6ab5: $87
	ld   a, c                                        ; $6ab6: $79
	sbc  b                                           ; $6ab7: $98
	adc  b                                           ; $6ab8: $88
	sbc  c                                           ; $6ab9: $99
	sbc  c                                           ; $6aba: $99
	adc  c                                           ; $6abb: $89
	xor  b                                           ; $6abc: $a8
	adc  b                                           ; $6abd: $88
	ld   [hl], a                                     ; $6abe: $77
	ld   [hl], a                                     ; $6abf: $77
	ld   [hl], a                                     ; $6ac0: $77
	ld   [hl], a                                     ; $6ac1: $77
	ld   [hl], a                                     ; $6ac2: $77
	ld   [hl], a                                     ; $6ac3: $77
	add  a                                           ; $6ac4: $87
	ld   a, b                                        ; $6ac5: $78
	adc  b                                           ; $6ac6: $88
	sbc  c                                           ; $6ac7: $99
	sbc  c                                           ; $6ac8: $99
	adc  c                                           ; $6ac9: $89
	sbc  b                                           ; $6aca: $98
	ld   a, b                                        ; $6acb: $78
	adc  b                                           ; $6acc: $88
	adc  b                                           ; $6acd: $88
	adc  b                                           ; $6ace: $88
	adc  b                                           ; $6acf: $88
	add  a                                           ; $6ad0: $87
	adc  b                                           ; $6ad1: $88
	ld   a, b                                        ; $6ad2: $78
	sbc  b                                           ; $6ad3: $98
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	add  a                                           ; $6ad7: $87
	ld   a, b                                        ; $6ad8: $78
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	sbc  b                                           ; $6ade: $98
	adc  c                                           ; $6adf: $89
	sbc  b                                           ; $6ae0: $98
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	adc  b                                           ; $6ae3: $88
	ld   a, b                                        ; $6ae4: $78
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  c                                           ; $6aec: $89
	adc  b                                           ; $6aed: $88
	adc  c                                           ; $6aee: $89
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	ld   a, b                                        ; $6af2: $78
	sbc  b                                           ; $6af3: $98
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	adc  b                                           ; $6afe: $88
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	adc  b                                           ; $6b03: $88
	adc  b                                           ; $6b04: $88
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	adc  b                                           ; $6b07: $88
	adc  b                                           ; $6b08: $88
	adc  b                                           ; $6b09: $88
	adc  b                                           ; $6b0a: $88
	sbc  b                                           ; $6b0b: $98
	adc  b                                           ; $6b0c: $88
	adc  b                                           ; $6b0d: $88
	adc  b                                           ; $6b0e: $88
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	adc  b                                           ; $6b11: $88
	adc  b                                           ; $6b12: $88
	adc  b                                           ; $6b13: $88
	adc  b                                           ; $6b14: $88
	adc  b                                           ; $6b15: $88
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	adc  b                                           ; $6b1a: $88
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	adc  b                                           ; $6b25: $88
	adc  b                                           ; $6b26: $88
	adc  b                                           ; $6b27: $88
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	adc  b                                           ; $6b2b: $88
	adc  b                                           ; $6b2c: $88
	adc  b                                           ; $6b2d: $88
	adc  b                                           ; $6b2e: $88
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
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
	adc  b                                           ; $6b4a: $88
	adc  b                                           ; $6b4b: $88
	adc  b                                           ; $6b4c: $88
	adc  b                                           ; $6b4d: $88
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	adc  b                                           ; $6b56: $88
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	adc  b                                           ; $6b5f: $88
	adc  b                                           ; $6b60: $88
	adc  b                                           ; $6b61: $88
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	adc  b                                           ; $6b66: $88
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	adc  b                                           ; $6b6b: $88
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
	adc  b                                           ; $6b7d: $88
	adc  b                                           ; $6b7e: $88
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
	adc  b                                           ; $6b89: $88
	adc  b                                           ; $6b8a: $88
	adc  b                                           ; $6b8b: $88
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	adc  b                                           ; $6b92: $88
	adc  b                                           ; $6b93: $88
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
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
	adc  b                                           ; $6ba7: $88

Call_0d1_6ba8:
	adc  b                                           ; $6ba8: $88
	adc  b                                           ; $6ba9: $88
	adc  b                                           ; $6baa: $88
	adc  b                                           ; $6bab: $88
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
	adc  b                                           ; $6bc4: $88
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
	adc  c                                           ; $6bd5: $89
	sbc  b                                           ; $6bd6: $98
	ld   [hl], a                                     ; $6bd7: $77
	adc  c                                           ; $6bd8: $89
	sbc  b                                           ; $6bd9: $98
	add  a                                           ; $6bda: $87
	ld   a, b                                        ; $6bdb: $78
	sbc  c                                           ; $6bdc: $99
	sub  a                                           ; $6bdd: $97
	ld   [hl], a                                     ; $6bde: $77
	sbc  b                                           ; $6bdf: $98
	adc  b                                           ; $6be0: $88
	ld   [hl], a                                     ; $6be1: $77
	adc  b                                           ; $6be2: $88
	adc  b                                           ; $6be3: $88
	sbc  c                                           ; $6be4: $99
	sbc  b                                           ; $6be5: $98
	add  a                                           ; $6be6: $87
	ld   a, b                                        ; $6be7: $78
	sbc  b                                           ; $6be8: $98
	adc  b                                           ; $6be9: $88
	ld   [hl], a                                     ; $6bea: $77
	adc  b                                           ; $6beb: $88
	add  a                                           ; $6bec: $87
	ld   a, b                                        ; $6bed: $78
	sbc  b                                           ; $6bee: $98
	adc  b                                           ; $6bef: $88
	sbc  c                                           ; $6bf0: $99
	add  a                                           ; $6bf1: $87
	ld   [hl], a                                     ; $6bf2: $77
	adc  b                                           ; $6bf3: $88
	adc  c                                           ; $6bf4: $89
	ld   [hl], a                                     ; $6bf5: $77
	ld   a, b                                        ; $6bf6: $78
	sbc  c                                           ; $6bf7: $99
	add  a                                           ; $6bf8: $87
	ld   a, b                                        ; $6bf9: $78
	adc  c                                           ; $6bfa: $89
	adc  b                                           ; $6bfb: $88
	ld   a, b                                        ; $6bfc: $78
	adc  b                                           ; $6bfd: $88
	add  a                                           ; $6bfe: $87
	ld   [hl], a                                     ; $6bff: $77
	sbc  d                                           ; $6c00: $9a
	add  a                                           ; $6c01: $87
	ld   h, a                                        ; $6c02: $67
	sbc  d                                           ; $6c03: $9a
	cp   d                                           ; $6c04: $ba
	ld   d, h                                        ; $6c05: $54
	ld   l, c                                        ; $6c06: $69
	xor  d                                           ; $6c07: $aa
	halt                                             ; $6c08: $76
	ld   h, a                                        ; $6c09: $67
	sbc  b                                           ; $6c0a: $98
	sbc  b                                           ; $6c0b: $98
	sbc  c                                           ; $6c0c: $99
	xor  c                                           ; $6c0d: $a9
	ld   [hl], l                                     ; $6c0e: $75
	ld   d, [hl]                                     ; $6c0f: $56
	sbc  e                                           ; $6c10: $9b
	cp   c                                           ; $6c11: $b9
	ld   d, e                                        ; $6c12: $53
	ld   e, c                                        ; $6c13: $59
	res  3, c                                        ; $6c14: $cb $99
	add  a                                           ; $6c16: $87
	ld   h, a                                        ; $6c17: $67
	sbc  c                                           ; $6c18: $99
	add  a                                           ; $6c19: $87
	ld   a, b                                        ; $6c1a: $78
	add  a                                           ; $6c1b: $87
	halt                                             ; $6c1c: $76
	ld   [hl], a                                     ; $6c1d: $77
	adc  b                                           ; $6c1e: $88
	adc  b                                           ; $6c1f: $88
	adc  b                                           ; $6c20: $88
	sbc  d                                           ; $6c21: $9a
	jp   z, Jump_0d1_5885                            ; $6c22: $ca $85 $58

	adc  c                                           ; $6c25: $89
	halt                                             ; $6c26: $76
	ld   [hl], a                                     ; $6c27: $77
	ld   [hl], a                                     ; $6c28: $77
	ld   h, a                                        ; $6c29: $67
	sbc  d                                           ; $6c2a: $9a
	sbc  b                                           ; $6c2b: $98
	adc  b                                           ; $6c2c: $88
	adc  b                                           ; $6c2d: $88
	add  a                                           ; $6c2e: $87
	adc  b                                           ; $6c2f: $88
	add  a                                           ; $6c30: $87
	ld   a, b                                        ; $6c31: $78
	adc  c                                           ; $6c32: $89
	adc  b                                           ; $6c33: $88
	adc  b                                           ; $6c34: $88
	adc  c                                           ; $6c35: $89
	sub  a                                           ; $6c36: $97
	ld   a, c                                        ; $6c37: $79
	sbc  c                                           ; $6c38: $99
	ld   [hl], a                                     ; $6c39: $77
	adc  d                                           ; $6c3a: $8a
	sub  a                                           ; $6c3b: $97
	ld   [hl], a                                     ; $6c3c: $77
	adc  b                                           ; $6c3d: $88
	add  a                                           ; $6c3e: $87
	adc  c                                           ; $6c3f: $89
	sbc  c                                           ; $6c40: $99
	ld   [hl], a                                     ; $6c41: $77
	adc  c                                           ; $6c42: $89
	sub  a                                           ; $6c43: $97
	adc  c                                           ; $6c44: $89
	adc  c                                           ; $6c45: $89
	ld   a, b                                        ; $6c46: $78
	sub  a                                           ; $6c47: $97
	ld   a, b                                        ; $6c48: $78
	xor  b                                           ; $6c49: $a8
	halt                                             ; $6c4a: $76
	ld   a, c                                        ; $6c4b: $79
	add  a                                           ; $6c4c: $87
	ld   h, a                                        ; $6c4d: $67
	add  a                                           ; $6c4e: $87
	ld   a, b                                        ; $6c4f: $78
	sbc  b                                           ; $6c50: $98
	sbc  b                                           ; $6c51: $98
	xor  d                                           ; $6c52: $aa
	xor  c                                           ; $6c53: $a9
	sbc  d                                           ; $6c54: $9a
	sbc  c                                           ; $6c55: $99
	sbc  d                                           ; $6c56: $9a
	add  a                                           ; $6c57: $87
	ld   h, [hl]                                     ; $6c58: $66
	ld   h, [hl]                                     ; $6c59: $66
	ld   b, e                                        ; $6c5a: $43
	inc  [hl]                                        ; $6c5b: $34
	ld   b, h                                        ; $6c5c: $44
	ld   b, [hl]                                     ; $6c5d: $46
	sbc  e                                           ; $6c5e: $9b
	cp   h                                           ; $6c5f: $bc
	rst  $28                                         ; $6c60: $ef
	cp   $de                                         ; $6c61: $fe $de
	db   $eb                                         ; $6c63: $eb
	xor  c                                           ; $6c64: $a9
	ld   [hl], l                                     ; $6c65: $75
	ld   sp, $1111                                   ; $6c66: $31 $11 $11
	ld   [de], a                                     ; $6c69: $12
	ld   b, [hl]                                     ; $6c6a: $46
	xor  [hl]                                        ; $6c6b: $ae
	rst  $38                                         ; $6c6c: $ff
	rst  $38                                         ; $6c6d: $ff
	rst  $38                                         ; $6c6e: $ff
	rst  $38                                         ; $6c6f: $ff
	rst  $38                                         ; $6c70: $ff
	reti                                             ; $6c71: $d9


	ld   h, h                                        ; $6c72: $64
	ld   de, $1111                                   ; $6c73: $11 $11 $11
	ld   de, $af46                                   ; $6c76: $11 $46 $af
	rst  $38                                         ; $6c79: $ff
	rst  $38                                         ; $6c7a: $ff
	rst  $38                                         ; $6c7b: $ff
	rst  $38                                         ; $6c7c: $ff
	cp   $d9                                         ; $6c7d: $fe $d9
	ld   [hl], h                                     ; $6c7f: $74
	ld   hl, $1111                                   ; $6c80: $21 $11 $11
	ld   de, $7924                                   ; $6c83: $11 $24 $79
	rst  JumpTable                                         ; $6c86: $df
	rst  $38                                         ; $6c87: $ff
	rst  $38                                         ; $6c88: $ff
	rst  $38                                         ; $6c89: $ff
	rst  $38                                         ; $6c8a: $ff
	db   $fc                                         ; $6c8b: $fc
	and  [hl]                                        ; $6c8c: $a6
	ld   b, d                                        ; $6c8d: $42
	ld   de, $1111                                   ; $6c8e: $11 $11 $11
	ld   [de], a                                     ; $6c91: $12
	ld   b, a                                        ; $6c92: $47
	cp   [hl]                                        ; $6c93: $be
	rst  $38                                         ; $6c94: $ff
	rst  $38                                         ; $6c95: $ff
	rst  $38                                         ; $6c96: $ff
	db   $ed                                         ; $6c97: $ed
	rst  $38                                         ; $6c98: $ff
	jp   c, $1152                                    ; $6c99: $da $52 $11

	ld   de, $1111                                   ; $6c9c: $11 $11 $11
	ld   b, l                                        ; $6c9f: $45
	sbc  h                                           ; $6ca0: $9c
	rst  $38                                         ; $6ca1: $ff
	rst  $38                                         ; $6ca2: $ff
	rst  $38                                         ; $6ca3: $ff
	db   $ed                                         ; $6ca4: $ed
	sbc  $ec                                         ; $6ca5: $de $ec
	add  h                                           ; $6ca7: $84
	ld   hl, $1111                                   ; $6ca8: $21 $11 $11
	ld   de, $6a25                                   ; $6cab: $11 $25 $6a
	rst  JumpTable                                         ; $6cae: $df
	rst  $38                                         ; $6caf: $ff
	rst  $38                                         ; $6cb0: $ff
	db   $ed                                         ; $6cb1: $ed
	sbc  $fe                                         ; $6cb2: $de $fe
	or   a                                           ; $6cb4: $b7
	ld   sp, $1111                                   ; $6cb5: $31 $11 $11
	ld   de, $6814                                   ; $6cb8: $11 $14 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cbb: $cf
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	db   $fd                                         ; $6cbe: $fd
	call z, $daee                                    ; $6cbf: $cc $ee $da
	ld   b, c                                        ; $6cc2: $41
	ld   de, $1111                                   ; $6cc3: $11 $11 $11
	ld   [de], a                                     ; $6cc6: $12
	ld   d, a                                        ; $6cc7: $57
	cp   [hl]                                        ; $6cc8: $be
	rst  $38                                         ; $6cc9: $ff
	rst  $38                                         ; $6cca: $ff
	rst  $38                                         ; $6ccb: $ff
	call c, $ebde                                    ; $6ccc: $dc $de $eb
	ld   h, d                                        ; $6ccf: $62
	ld   de, $1111                                   ; $6cd0: $11 $11 $11
	ld   de, $9d47                                   ; $6cd3: $11 $47 $9d
	rst  $38                                         ; $6cd6: $ff
	rst  $38                                         ; $6cd7: $ff
	cp   $cc                                         ; $6cd8: $fe $cc
	db   $dd                                         ; $6cda: $dd
	db   $ed                                         ; $6cdb: $ed
	sub  h                                           ; $6cdc: $94
	ld   de, $1111                                   ; $6cdd: $11 $11 $11
	ld   de, $7c26                                   ; $6ce0: $11 $26 $7c
	rst  $28                                         ; $6ce3: $ef
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	call c, $edbd                                    ; $6ce6: $dc $bd $ed
	and  [hl]                                        ; $6ce9: $a6
	ld   hl, $1111                                   ; $6cea: $21 $11 $11
	ld   de, $7815                                   ; $6ced: $11 $15 $78
	rst  JumpTable                                         ; $6cf0: $df
	rst  $38                                         ; $6cf1: $ff
	rst  $38                                         ; $6cf2: $ff
	db   $ec                                         ; $6cf3: $ec
	call z, $d9de                                    ; $6cf4: $cc $de $d9
	ld   b, c                                        ; $6cf7: $41
	ld   de, $1111                                   ; $6cf8: $11 $11 $11
	ld   [de], a                                     ; $6cfb: $12
	ld   [hl], a                                     ; $6cfc: $77
	sbc  l                                           ; $6cfd: $9d
	rst  $38                                         ; $6cfe: $ff
	rst  $38                                         ; $6cff: $ff
	cp   $cc                                         ; $6d00: $fe $cc
	call Call_0d1_74da                               ; $6d02: $cd $da $74
	ld   de, $1111                                   ; $6d05: $11 $11 $11
	ld   de, $7915                                   ; $6d08: $11 $15 $79
	adc  $ff                                         ; $6d0b: $ce $ff
	rst  $38                                         ; $6d0d: $ff
	db   $eb                                         ; $6d0e: $eb
	cp   h                                           ; $6d0f: $bc
	db   $db                                         ; $6d10: $db
	cp   b                                           ; $6d11: $b8
	ld   d, h                                        ; $6d12: $54
	ld   de, $3424                                   ; $6d13: $11 $24 $34
	ld   b, d                                        ; $6d16: $42
	ld   c, b                                        ; $6d17: $48
	add  a                                           ; $6d18: $87
	sbc  d                                           ; $6d19: $9a
	xor  h                                           ; $6d1a: $ac
	ret                                              ; $6d1b: $c9


	xor  e                                           ; $6d1c: $ab
	sbc  b                                           ; $6d1d: $98
	xor  e                                           ; $6d1e: $ab
	sbc  c                                           ; $6d1f: $99
	add  a                                           ; $6d20: $87
	ld   a, b                                        ; $6d21: $78
	sbc  d                                           ; $6d22: $9a
	xor  d                                           ; $6d23: $aa
	sbc  b                                           ; $6d24: $98
	adc  c                                           ; $6d25: $89
	add  a                                           ; $6d26: $87
	ld   a, b                                        ; $6d27: $78
	ld   [hl], a                                     ; $6d28: $77
	halt                                             ; $6d29: $76
	ld   h, a                                        ; $6d2a: $67
	ld   h, [hl]                                     ; $6d2b: $66
	ld   [hl], a                                     ; $6d2c: $77
	adc  c                                           ; $6d2d: $89
	adc  c                                           ; $6d2e: $89
	sbc  c                                           ; $6d2f: $99
	xor  d                                           ; $6d30: $aa
	cp   e                                           ; $6d31: $bb
	cp   d                                           ; $6d32: $ba
	xor  e                                           ; $6d33: $ab
	xor  d                                           ; $6d34: $aa
	cp   b                                           ; $6d35: $b8
	ld   a, c                                        ; $6d36: $79
	halt                                             ; $6d37: $76
	ld   h, h                                        ; $6d38: $64
	inc  [hl]                                        ; $6d39: $34
	ld   b, l                                        ; $6d3a: $45
	ld   d, h                                        ; $6d3b: $54
	ld   d, a                                        ; $6d3c: $57
	adc  c                                           ; $6d3d: $89
	sbc  c                                           ; $6d3e: $99
	xor  e                                           ; $6d3f: $ab
	xor  e                                           ; $6d40: $ab
	call z, $bbcc                                    ; $6d41: $cc $cc $bb
	xor  c                                           ; $6d44: $a9
	adc  b                                           ; $6d45: $88
	halt                                             ; $6d46: $76
	ld   h, l                                        ; $6d47: $65
	ld   [hl+], a                                    ; $6d48: $22
	ld   hl, $5613                                   ; $6d49: $21 $13 $56
	ld   h, [hl]                                     ; $6d4c: $66
	ld   a, e                                        ; $6d4d: $7b
	call $edcd                                       ; $6d4e: $cd $cd $ed
	db   $dd                                         ; $6d51: $dd
	cp   e                                           ; $6d52: $bb
	cp   d                                           ; $6d53: $ba
	sbc  c                                           ; $6d54: $99
	halt                                             ; $6d55: $76
	ld   h, l                                        ; $6d56: $65
	ld   d, l                                        ; $6d57: $55
	ld   b, e                                        ; $6d58: $43
	ld   de, $5611                                   ; $6d59: $11 $11 $56
	ld   a, b                                        ; $6d5c: $78
	cp   a                                           ; $6d5d: $bf
	cp   $dd                                         ; $6d5e: $fe $dd
	call z, $bba9                                    ; $6d60: $cc $a9 $bb
	cp   e                                           ; $6d63: $bb
	sub  a                                           ; $6d64: $97
	ld   a, b                                        ; $6d65: $78
	halt                                             ; $6d66: $76
	ld   d, [hl]                                     ; $6d67: $56
	ld   d, d                                        ; $6d68: $52
	ld   de, $6711                                   ; $6d69: $11 $11 $67
	adc  d                                           ; $6d6c: $8a
	cp   a                                           ; $6d6d: $bf
	cp   $cc                                         ; $6d6e: $fe $cc
	res  3, c                                        ; $6d70: $cb $99
	res  7, d                                        ; $6d72: $cb $ba
	adc  b                                           ; $6d74: $88
	adc  b                                           ; $6d75: $88
	ld   [hl], a                                     ; $6d76: $77
	ld   h, [hl]                                     ; $6d77: $66
	ld   d, c                                        ; $6d78: $51
	ld   de, $6811                                   ; $6d79: $11 $11 $68
	adc  e                                           ; $6d7c: $8b
	rst  $38                                         ; $6d7d: $ff
	rst  $38                                         ; $6d7e: $ff
	call c, $9ab9                                    ; $6d7f: $dc $b9 $9a
	cp   h                                           ; $6d82: $bc
	xor  d                                           ; $6d83: $aa
	sbc  c                                           ; $6d84: $99
	sbc  c                                           ; $6d85: $99
	add  a                                           ; $6d86: $87
	ld   [hl], l                                     ; $6d87: $75
	ld   hl, $1111                                   ; $6d88: $21 $11 $11
	sbc  d                                           ; $6d8b: $9a
	xor  [hl]                                        ; $6d8c: $ae
	rst  $38                                         ; $6d8d: $ff
	db   $fd                                         ; $6d8e: $fd
	call $9ba9                                       ; $6d8f: $cd $a9 $9b
	db   $db                                         ; $6d92: $db
	xor  c                                           ; $6d93: $a9
	adc  b                                           ; $6d94: $88
	sbc  b                                           ; $6d95: $98
	ld   [hl], a                                     ; $6d96: $77
	ld   h, e                                        ; $6d97: $63
	ld   de, $1611                                   ; $6d98: $11 $11 $16
	xor  d                                           ; $6d9b: $aa
	rst  JumpTable                                         ; $6d9c: $df
	rst  $38                                         ; $6d9d: $ff
	db   $fd                                         ; $6d9e: $fd
	db   $db                                         ; $6d9f: $db
	sbc  b                                           ; $6da0: $98
	cp   h                                           ; $6da1: $bc
	cp   c                                           ; $6da2: $b9
	sbc  c                                           ; $6da3: $99
	adc  c                                           ; $6da4: $89
	xor  c                                           ; $6da5: $a9
	add  a                                           ; $6da6: $87
	ld   d, c                                        ; $6da7: $51
	ld   de, $1b11                                   ; $6da8: $11 $11 $1b
	call z, $ffff                                    ; $6dab: $cc $ff $ff
	db   $ec                                         ; $6dae: $ec
	ret  z                                           ; $6daf: $c8

	ld   l, b                                        ; $6db0: $68
	cp   h                                           ; $6db1: $bc
	or   a                                           ; $6db2: $b7
	ld   a, b                                        ; $6db3: $78
	adc  c                                           ; $6db4: $89
	xor  c                                           ; $6db5: $a9
	and  a                                           ; $6db6: $a7
	ld   hl, $1111                                   ; $6db7: $21 $11 $11
	sbc  [hl]                                        ; $6dba: $9e
	rst  JumpTable                                         ; $6dbb: $df
	rst  $38                                         ; $6dbc: $ff
	db   $fd                                         ; $6dbd: $fd
	cp   h                                           ; $6dbe: $bc
	add  [hl]                                        ; $6dbf: $86
	ld   a, d                                        ; $6dc0: $7a
	res  0, a                                        ; $6dc1: $cb $87
	adc  b                                           ; $6dc3: $88
	sbc  d                                           ; $6dc4: $9a
	cp   d                                           ; $6dc5: $ba
	add  e                                           ; $6dc6: $83
	ld   de, $1611                                   ; $6dc7: $11 $11 $16
	cp   $ff                                         ; $6dca: $fe $ff
	rst  $38                                         ; $6dcc: $ff
	jp   c, Jump_0d1_77b9                            ; $6dcd: $da $b9 $77

	xor  l                                           ; $6dd0: $ad
	rst  ToBoot                                         ; $6dd1: $c7
	ld   d, a                                        ; $6dd2: $57
	sbc  d                                           ; $6dd3: $9a
	cp   h                                           ; $6dd4: $bc
	ret                                              ; $6dd5: $c9


	ld   d, c                                        ; $6dd6: $51
	ld   de, $2f11                                   ; $6dd7: $11 $11 $2f
	rst  $38                                         ; $6dda: $ff
	rst  $38                                         ; $6ddb: $ff
	db   $fd                                         ; $6ddc: $fd
	sbc  e                                           ; $6ddd: $9b
	cp   c                                           ; $6dde: $b9
	adc  b                                           ; $6ddf: $88
	call Call_0d1_7896                               ; $6de0: $cd $96 $78
	xor  e                                           ; $6de3: $ab
	call c, $11b6                                    ; $6de4: $dc $b6 $11
	ld   de, $df11                                   ; $6de7: $11 $11 $df
	rst  $38                                         ; $6dea: $ff
	cp   $c9                                         ; $6deb: $fe $c9
	adc  e                                           ; $6ded: $8b
	sbc  c                                           ; $6dee: $99
	xor  h                                           ; $6def: $ac
	jp   c, $9977                                    ; $6df0: $da $77 $99

	cp   l                                           ; $6df3: $bd
	db   $ec                                         ; $6df4: $ec
	add  c                                           ; $6df5: $81
	ld   de, $1611                                   ; $6df6: $11 $11 $16
	rst  $38                                         ; $6df9: $ff
	rst  $38                                         ; $6dfa: $ff
	cp   $97                                         ; $6dfb: $fe $97
	xor  e                                           ; $6dfd: $ab
	sbc  c                                           ; $6dfe: $99
	xor  [hl]                                        ; $6dff: $ae
	rst  $10                                         ; $6e00: $d7
	ld   d, [hl]                                     ; $6e01: $56
	xor  [hl]                                        ; $6e02: $ae
	cp   $eb                                         ; $6e03: $fe $eb
	ld   d, c                                        ; $6e05: $51
	ld   de, $1811                                   ; $6e06: $11 $11 $18
	rst  $38                                         ; $6e09: $ff
	db   $fd                                         ; $6e0a: $fd
	jp   z, $cf66                                    ; $6e0b: $ca $66 $cf

	reti                                             ; $6e0e: $d9


	sbc  h                                           ; $6e0f: $9c
	or   a                                           ; $6e10: $b7
	ld   a, e                                        ; $6e11: $7b
	rst  $28                                         ; $6e12: $ef
	db   $fd                                         ; $6e13: $fd
	rst  ToBoot                                         ; $6e14: $c7
	ld   hl, $1111                                   ; $6e15: $21 $11 $11
	ld   [de], a                                     ; $6e18: $12
	rst  $38                                         ; $6e19: $ff
	db   $eb                                         ; $6e1a: $eb
	xor  h                                           ; $6e1b: $ac
	add  l                                           ; $6e1c: $85
	sbc  a                                           ; $6e1d: $9f
	rst  $10                                         ; $6e1e: $d7
	ld   l, e                                        ; $6e1f: $6b
	reti                                             ; $6e20: $d9


	adc  h                                           ; $6e21: $8c
	rst  $38                                         ; $6e22: $ff
	db   $fd                                         ; $6e23: $fd
	jp   z, $1131                                    ; $6e24: $ca $31 $11

	ld   de, $7f11                                   ; $6e27: $11 $11 $7f
	rst  $38                                         ; $6e2a: $ff
	reti                                             ; $6e2b: $d9


	add  [hl]                                        ; $6e2c: $86
	ld   e, d                                        ; $6e2d: $5a
	db   $db                                         ; $6e2e: $db
	ld   a, c                                        ; $6e2f: $79
	cp   h                                           ; $6e30: $bc
	cp   e                                           ; $6e31: $bb
	sbc  $ff                                         ; $6e32: $de $ff
	bit  6, d                                        ; $6e34: $cb $72
	ld   de, $1111                                   ; $6e36: $11 $11 $11
	ld   d, $ff                                      ; $6e39: $16 $ff
	db   $fc                                         ; $6e3b: $fc
	xor  d                                           ; $6e3c: $aa
	inc  sp                                          ; $6e3d: $33
	adc  a                                           ; $6e3e: $8f
	rst  $20                                         ; $6e3f: $e7
	sbc  h                                           ; $6e40: $9c
	db   $ec                                         ; $6e41: $ec
	xor  h                                           ; $6e42: $ac
	rst  $38                                         ; $6e43: $ff
	db   $eb                                         ; $6e44: $eb
	or   a                                           ; $6e45: $b7
	ld   sp, $1111                                   ; $6e46: $31 $11 $11
	ld   de, $fd1f                                   ; $6e49: $11 $1f $fd
	sbc  c                                           ; $6e4c: $99
	and  l                                           ; $6e4d: $a5
	ld   b, l                                        ; $6e4e: $45
	cp   a                                           ; $6e4f: $bf
	xor  c                                           ; $6e50: $a9
	cp   [hl]                                        ; $6e51: $be
	jp   c, $ffae                                    ; $6e52: $da $ae $ff

	jp   z, $3197                                    ; $6e55: $ca $97 $31

	ld   bc, $1111                                   ; $6e58: $01 $11 $11
	ld   e, a                                        ; $6e5b: $5f
	db   $fd                                         ; $6e5c: $fd
	ret                                              ; $6e5d: $c9


	ld   [hl], d                                     ; $6e5e: $72
	ld   d, a                                        ; $6e5f: $57
	rst  $38                                         ; $6e60: $ff
	xor  e                                           ; $6e61: $ab
	cp   l                                           ; $6e62: $bd
	xor  d                                           ; $6e63: $aa
	xor  a                                           ; $6e64: $af
	cp   $ea                                         ; $6e65: $fe $ea
	and  [hl]                                        ; $6e67: $a6
	ld   sp, $1112                                   ; $6e68: $31 $12 $11
	ld   de, $fa1f                                   ; $6e6b: $11 $1f $fa
	xor  c                                           ; $6e6e: $a9
	add  e                                           ; $6e6f: $83
	ld   b, a                                        ; $6e70: $47
	rst  $38                                         ; $6e71: $ff
	cp   b                                           ; $6e72: $b8
	adc  d                                           ; $6e73: $8a
	xor  d                                           ; $6e74: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e75: $cf
	cp   $ba                                         ; $6e76: $fe $ba
	cp   b                                           ; $6e78: $b8
	ld   b, d                                        ; $6e79: $42
	inc  hl                                          ; $6e7a: $23
	ld   de, $1711                                   ; $6e7b: $11 $11 $17
	cp   $ca                                         ; $6e7e: $fe $ca
	add  [hl]                                        ; $6e80: $86
	ld   b, l                                        ; $6e81: $45
	xor  a                                           ; $6e82: $af
	ld   [$bb7a], a                                  ; $6e83: $ea $7a $bb
	xor  l                                           ; $6e86: $ad
	rst  $38                                         ; $6e87: $ff
	db   $eb                                         ; $6e88: $eb
	cp   c                                           ; $6e89: $b9
	ld   [hl], h                                     ; $6e8a: $74
	inc  sp                                          ; $6e8b: $33
	ld   de, $1111                                   ; $6e8c: $11 $11 $11
	rst  $38                                         ; $6e8f: $ff
	ei                                               ; $6e90: $fb
	add  [hl]                                        ; $6e91: $86
	ld   b, e                                        ; $6e92: $43
	ld   a, [hl]                                     ; $6e93: $7e
	cp   $97                                         ; $6e94: $fe $97
	xor  d                                           ; $6e96: $aa
	cp   e                                           ; $6e97: $bb
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	cp   c                                           ; $6e9a: $b9
	ld   [hl], l                                     ; $6e9b: $75
	ld   [hl-], a                                    ; $6e9c: $32
	ld   b, d                                        ; $6e9d: $42
	ld   de, $1f11                                   ; $6e9e: $11 $11 $1f
	cp   $98                                         ; $6ea1: $fe $98
	ld   d, h                                        ; $6ea3: $54
	jr   c, @-$20                                    ; $6ea4: $38 $de

	ret  c                                           ; $6ea6: $d8

	xor  h                                           ; $6ea7: $ac
	jp   z, $ffaf                                    ; $6ea8: $ca $af $ff

	call c, Call_0d1_4296                            ; $6eab: $dc $96 $42
	inc  [hl]                                        ; $6eae: $34
	ld   hl, $1111                                   ; $6eaf: $21 $11 $11
	rst  $28                                         ; $6eb2: $ef
	ld   [$5567], a                                  ; $6eb3: $ea $67 $55
	ld   a, e                                        ; $6eb6: $7b
	db   $ed                                         ; $6eb7: $ed
	xor  c                                           ; $6eb8: $a9
	db   $db                                         ; $6eb9: $db
	xor  e                                           ; $6eba: $ab
	rst  JumpTable                                         ; $6ebb: $df
	rst  $38                                         ; $6ebc: $ff
	cp   b                                           ; $6ebd: $b8
	ld   h, l                                        ; $6ebe: $65
	ld   b, h                                        ; $6ebf: $44
	ld   d, e                                        ; $6ec0: $53
	ld   de, $1811                                   ; $6ec1: $11 $11 $18
	rst  $38                                         ; $6ec4: $ff
	or   [hl]                                        ; $6ec5: $b6
	add  [hl]                                        ; $6ec6: $86
	ld   b, l                                        ; $6ec7: $45
	sbc  a                                           ; $6ec8: $9f
	db   $fc                                         ; $6ec9: $fc
	sbc  h                                           ; $6eca: $9c
	jp   c, $ffab                                    ; $6ecb: $da $ab $ff

	db   $fd                                         ; $6ece: $fd
	sbc  c                                           ; $6ecf: $99
	ld   h, l                                        ; $6ed0: $65
	inc  [hl]                                        ; $6ed1: $34
	ld   b, d                                        ; $6ed2: $42
	ld   de, $1f11                                   ; $6ed3: $11 $11 $1f
	cp   $85                                         ; $6ed6: $fe $85
	and  l                                           ; $6ed8: $a5
	ld   d, [hl]                                     ; $6ed9: $56
	cp   a                                           ; $6eda: $bf
	ld   [$b9ae], a                                  ; $6edb: $ea $ae $b9
	sbc  [hl]                                        ; $6ede: $9e
	rst  $38                                         ; $6edf: $ff
	ld   a, [$5496]                                  ; $6ee0: $fa $96 $54
	ld   b, h                                        ; $6ee3: $44
	ld   sp, $1111                                   ; $6ee4: $31 $11 $11
	adc  a                                           ; $6ee7: $8f
	ld   a, [$846a]                                  ; $6ee8: $fa $6a $84
	add  hl, sp                                      ; $6eeb: $39
	db   $ed                                         ; $6eec: $ed
	ret                                              ; $6eed: $c9


	db   $dd                                         ; $6eee: $dd
	xor  b                                           ; $6eef: $a8
	cp   a                                           ; $6ef0: $bf
	rst  $38                                         ; $6ef1: $ff
	db   $db                                         ; $6ef2: $db
	add  [hl]                                        ; $6ef3: $86
	ld   b, h                                        ; $6ef4: $44
	ld   d, h                                        ; $6ef5: $54
	ld   hl, $1111                                   ; $6ef6: $21 $11 $11
	cp   a                                           ; $6ef9: $bf
	ld   a, [$547a]                                  ; $6efa: $fa $7a $54
	ld   e, c                                        ; $6efd: $59
	call c, $dddc                                    ; $6efe: $dc $dc $dd
	xor  c                                           ; $6f01: $a9
	cp   a                                           ; $6f02: $bf
	rst  $38                                         ; $6f03: $ff
	ld   [$5576], a                                  ; $6f04: $ea $76 $55
	ld   d, h                                        ; $6f07: $54
	ld   hl, $1111                                   ; $6f08: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f0b: $cf
	add  sp, $7a                                     ; $6f0c: $e8 $7a
	ld   [hl], l                                     ; $6f0e: $75
	ld   c, b                                        ; $6f0f: $48
	call c, $edbc                                    ; $6f10: $dc $bc $ed
	xor  c                                           ; $6f13: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f14: $cf
	rst  $38                                         ; $6f15: $ff
	ld   [$6597], a                                  ; $6f16: $ea $97 $65
	ld   d, h                                        ; $6f19: $54
	ld   hl, $1111                                   ; $6f1a: $21 $11 $11
	ld   a, a                                        ; $6f1d: $7f
	db   $eb                                         ; $6f1e: $eb
	ld   a, c                                        ; $6f1f: $79
	sub  [hl]                                        ; $6f20: $96
	ld   d, a                                        ; $6f21: $57
	xor  e                                           ; $6f22: $ab
	cp   l                                           ; $6f23: $bd
	xor  $cb                                         ; $6f24: $ee $cb
	cp   a                                           ; $6f26: $bf
	rst  $38                                         ; $6f27: $ff
	db   $fc                                         ; $6f28: $fc
	sbc  b                                           ; $6f29: $98
	ld   h, [hl]                                     ; $6f2a: $66
	ld   b, h                                        ; $6f2b: $44
	ld   hl, $1111                                   ; $6f2c: $21 $11 $11
	ld   c, h                                        ; $6f2f: $4c
	cp   d                                           ; $6f30: $ba
	ld   a, d                                        ; $6f31: $7a
	xor  b                                           ; $6f32: $a8
	ld   h, [hl]                                     ; $6f33: $66
	sbc  e                                           ; $6f34: $9b
	xor  h                                           ; $6f35: $ac
	xor  $ec                                         ; $6f36: $ee $ec
	cp   l                                           ; $6f38: $bd
	rst  $38                                         ; $6f39: $ff
	db   $fd                                         ; $6f3a: $fd
	cp   c                                           ; $6f3b: $b9
	add  a                                           ; $6f3c: $87
	ld   d, h                                        ; $6f3d: $54
	ld   sp, $1111                                   ; $6f3e: $31 $11 $11
	rla                                              ; $6f41: $17
	xor  e                                           ; $6f42: $ab
	add  a                                           ; $6f43: $87
	res  2, [hl]                                     ; $6f44: $cb $96
	ld   a, d                                        ; $6f46: $7a
	set  1, l                                        ; $6f47: $cb $cd
	db   $ed                                         ; $6f49: $ed
	cp   l                                           ; $6f4a: $bd
	rst  $38                                         ; $6f4b: $ff
	db   $fd                                         ; $6f4c: $fd
	jp   z, Jump_0d1_7599                            ; $6f4d: $ca $99 $75

	ld   [hl-], a                                    ; $6f50: $32
	ld   de, $1111                                   ; $6f51: $11 $11 $11
	ld   a, b                                        ; $6f54: $78
	sub  a                                           ; $6f55: $97
	adc  h                                           ; $6f56: $8c
	cp   c                                           ; $6f57: $b9
	adc  c                                           ; $6f58: $89
	cp   d                                           ; $6f59: $ba
	xor  e                                           ; $6f5a: $ab
	sbc  $dc                                         ; $6f5b: $de $dc
	rst  JumpTable                                         ; $6f5d: $df
	cp   $da                                         ; $6f5e: $fe $da
	xor  d                                           ; $6f60: $aa
	sub  a                                           ; $6f61: $97
	ld   d, h                                        ; $6f62: $54
	ld   [hl-], a                                    ; $6f63: $32
	ld   de, $1511                                   ; $6f64: $11 $11 $15
	halt                                             ; $6f67: $76
	ld   d, [hl]                                     ; $6f68: $56
	sbc  d                                           ; $6f69: $9a
	sbc  b                                           ; $6f6a: $98
	adc  d                                           ; $6f6b: $8a
	xor  d                                           ; $6f6c: $aa
	xor  h                                           ; $6f6d: $ac
	call $ddcc                                       ; $6f6e: $cd $cc $dd
	res  5, e                                        ; $6f71: $cb $ab
	xor  d                                           ; $6f73: $aa
	sbc  c                                           ; $6f74: $99
	add  a                                           ; $6f75: $87
	halt                                             ; $6f76: $76
	ld   h, [hl]                                     ; $6f77: $66
	ld   d, e                                        ; $6f78: $53
	inc  sp                                          ; $6f79: $33
	ld   [hl-], a                                    ; $6f7a: $32
	ld   de, $3423                                   ; $6f7b: $11 $23 $34
	ld   b, l                                        ; $6f7e: $45
	ld   a, c                                        ; $6f7f: $79
	sbc  e                                           ; $6f80: $9b
	db   $dd                                         ; $6f81: $dd
	rst  $38                                         ; $6f82: $ff
	rst  $38                                         ; $6f83: $ff
	rst  $38                                         ; $6f84: $ff
	xor  $cc                                         ; $6f85: $ee $cc
	res  5, c                                        ; $6f87: $cb $a9
	sbc  b                                           ; $6f89: $98
	ld   [hl], l                                     ; $6f8a: $75
	ld   b, d                                        ; $6f8b: $42
	ld   de, $1111                                   ; $6f8c: $11 $11 $11
	ld   de, $3422                                   ; $6f8f: $11 $22 $34
	ld   l, c                                        ; $6f92: $69
	xor  e                                           ; $6f93: $ab
	cp   [hl]                                        ; $6f94: $be
	rst  $38                                         ; $6f95: $ff
	rst  $38                                         ; $6f96: $ff
	rst  $38                                         ; $6f97: $ff
	cp   $dd                                         ; $6f98: $fe $dd
	call c, $99ba                                    ; $6f9a: $dc $ba $99
	add  a                                           ; $6f9d: $87
	ld   d, h                                        ; $6f9e: $54
	ld   hl, $1111                                   ; $6f9f: $21 $11 $11
	ld   de, $2312                                   ; $6fa2: $11 $12 $23
	ld   b, [hl]                                     ; $6fa5: $46
	ld   a, c                                        ; $6fa6: $79
	xor  h                                           ; $6fa7: $ac
	sbc  $ef                                         ; $6fa8: $de $ef
	rst  $38                                         ; $6faa: $ff
	rst  $38                                         ; $6fab: $ff
	cp   $dc                                         ; $6fac: $fe $dc
	res  5, d                                        ; $6fae: $cb $aa
	xor  c                                           ; $6fb0: $a9
	halt                                             ; $6fb1: $76
	ld   d, e                                        ; $6fb2: $53
	ld   hl, $1111                                   ; $6fb3: $21 $11 $11
	ld   de, $2312                                   ; $6fb6: $11 $12 $23
	ld   b, [hl]                                     ; $6fb9: $46
	adc  c                                           ; $6fba: $89
	xor  l                                           ; $6fbb: $ad
	rst  $28                                         ; $6fbc: $ef
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	rst  $38                                         ; $6fbf: $ff
	cp   $dc                                         ; $6fc0: $fe $dc
	res  5, c                                        ; $6fc2: $cb $a9
	sbc  b                                           ; $6fc4: $98
	ld   h, l                                        ; $6fc5: $65
	ld   [hl-], a                                    ; $6fc6: $32
	ld   de, $1111                                   ; $6fc7: $11 $11 $11
	ld   de, $2411                                   ; $6fca: $11 $11 $24
	ld   h, a                                        ; $6fcd: $67
	sbc  d                                           ; $6fce: $9a
	call $ffef                                       ; $6fcf: $cd $ef $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	db   $ed                                         ; $6fd4: $ed
	call c, $aacb                                    ; $6fd5: $dc $cb $aa
	sub  a                                           ; $6fd8: $97
	ld   d, h                                        ; $6fd9: $54
	ld   hl, $1111                                   ; $6fda: $21 $11 $11
	ld   de, $1211                                   ; $6fdd: $11 $11 $12
	dec  [hl]                                        ; $6fe0: $35
	ld   a, c                                        ; $6fe1: $79
	sbc  e                                           ; $6fe2: $9b
	xor  $ff                                         ; $6fe3: $ee $ff
	rst  $38                                         ; $6fe5: $ff
	rst  $38                                         ; $6fe6: $ff
	cp   $ed                                         ; $6fe7: $fe $ed
	db   $dd                                         ; $6fe9: $dd
	res  3, c                                        ; $6fea: $cb $99
	halt                                             ; $6fec: $76
	ld   b, d                                        ; $6fed: $42
	ld   de, $1111                                   ; $6fee: $11 $11 $11
	ld   de, $2301                                   ; $6ff1: $11 $01 $23
	ld   d, a                                        ; $6ff4: $57
	sbc  c                                           ; $6ff5: $99
	adc  $ff                                         ; $6ff6: $ce $ff
	rst  $38                                         ; $6ff8: $ff
	rst  $38                                         ; $6ff9: $ff
	rst  $38                                         ; $6ffa: $ff
	xor  $dd                                         ; $6ffb: $ee $dd
	call c, $87b9                                    ; $6ffd: $dc $b9 $87
	ld   d, e                                        ; $7000: $53
	ld   de, $1111                                   ; $7001: $11 $11 $11
	ld   de, $1211                                   ; $7004: $11 $11 $12
	ld   b, [hl]                                     ; $7007: $46
	adc  c                                           ; $7008: $89
	xor  h                                           ; $7009: $ac
	rst  $28                                         ; $700a: $ef
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	rst  $38                                         ; $700d: $ff
	rst  $38                                         ; $700e: $ff
	xor  $dc                                         ; $700f: $ee $dc
	cp   d                                           ; $7011: $ba
	xor  c                                           ; $7012: $a9
	ld   [hl], l                                     ; $7013: $75
	ld   sp, $1101                                   ; $7014: $31 $01 $11
	ld   de, $1111                                   ; $7017: $11 $11 $11
	inc  h                                           ; $701a: $24
	ld   a, c                                        ; $701b: $79
	xor  d                                           ; $701c: $aa
	rst  JumpTable                                         ; $701d: $df
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	rst  $38                                         ; $7021: $ff
	xor  $dc                                         ; $7022: $ee $dc
	jp   z, Jump_0d1_7698                            ; $7024: $ca $98 $76

	ld   b, d                                        ; $7027: $42
	ld   bc, $1111                                   ; $7028: $01 $11 $11
	ld   de, $2311                                   ; $702b: $11 $11 $23
	ld   l, b                                        ; $702e: $68
	xor  e                                           ; $702f: $ab
	cp   [hl]                                        ; $7030: $be
	rst  $38                                         ; $7031: $ff
	rst  $38                                         ; $7032: $ff
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	xor  $dd                                         ; $7035: $ee $dd
	db   $db                                         ; $7037: $db
	sbc  b                                           ; $7038: $98
	halt                                             ; $7039: $76
	ld   b, d                                        ; $703a: $42
	ld   de, $1111                                   ; $703b: $11 $11 $11
	ld   de, $2301                                   ; $703e: $11 $01 $23
	ld   e, b                                        ; $7041: $58
	sbc  d                                           ; $7042: $9a
	cp   [hl]                                        ; $7043: $be
	rst  $28                                         ; $7044: $ef
	rst  $38                                         ; $7045: $ff
	rst  $38                                         ; $7046: $ff
	rst  $38                                         ; $7047: $ff
	db   $fd                                         ; $7048: $fd
	call c, $a9cb                                    ; $7049: $dc $cb $a9
	halt                                             ; $704c: $76
	ld   b, d                                        ; $704d: $42
	ld   de, $1111                                   ; $704e: $11 $11 $11
	ld   de, $2311                                   ; $7051: $11 $11 $23
	ld   e, b                                        ; $7054: $58
	sbc  d                                           ; $7055: $9a
	adc  $ef                                         ; $7056: $ce $ef
	rst  $38                                         ; $7058: $ff
	rst  $38                                         ; $7059: $ff
	rst  $38                                         ; $705a: $ff
	cp   $dd                                         ; $705b: $fe $dd
	call z, Call_0d1_76a8                            ; $705d: $cc $a8 $76
	ld   b, d                                        ; $7060: $42
	ld   de, $1111                                   ; $7061: $11 $11 $11
	ld   de, $2411                                   ; $7064: $11 $11 $24
	ld   l, c                                        ; $7067: $69
	sbc  e                                           ; $7068: $9b
	sbc  $ff                                         ; $7069: $de $ff
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	db   $ed                                         ; $706e: $ed
	call z, $99bb                                    ; $706f: $cc $bb $99
	ld   [hl], l                                     ; $7072: $75
	ld   sp, $1111                                   ; $7073: $31 $11 $11
	ld   de, $1111                                   ; $7076: $11 $11 $11
	inc  h                                           ; $7079: $24
	ld   l, c                                        ; $707a: $69
	xor  l                                           ; $707b: $ad
	rst  $28                                         ; $707c: $ef
	rst  $38                                         ; $707d: $ff
	rst  $38                                         ; $707e: $ff
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	db   $eb                                         ; $7081: $eb
	cp   d                                           ; $7082: $ba
	xor  c                                           ; $7083: $a9
	ld   d, d                                        ; $7084: $52
	ld   de, $3311                                   ; $7085: $11 $11 $33
	ld   b, c                                        ; $7088: $41
	ld   d, $ad                                      ; $7089: $16 $ad
	ret  z                                           ; $708b: $c8

	sbc  h                                           ; $708c: $9c
	sbc  $c8                                         ; $708d: $de $c8
	call z, $eeff                                    ; $708f: $cc $ff $ee
	db   $fd                                         ; $7092: $fd
	ret                                              ; $7093: $c9


	ld   a, d                                        ; $7094: $7a
	xor  c                                           ; $7095: $a9
	ld   h, c                                        ; $7096: $61
	ld   de, $1a11                                   ; $7097: $11 $11 $1a
	adc  a                                           ; $709a: $8f
	ld   h, [hl]                                     ; $709b: $66
	cp   $fc                                         ; $709c: $fe $fc
	ld   h, a                                        ; $709e: $67
	xor  c                                           ; $709f: $a9
	ret  z                                           ; $70a0: $c8

	ld   a, l                                        ; $70a1: $7d
	rst  JumpTable                                         ; $70a2: $df
	rst  $38                                         ; $70a3: $ff
	rst  $38                                         ; $70a4: $ff
	jp   z, $8667                                    ; $70a5: $ca $67 $86

	ld   b, c                                        ; $70a8: $41
	ld   de, $af11                                   ; $70a9: $11 $11 $af
	rst  $38                                         ; $70ac: $ff
	ld   c, a                                        ; $70ad: $4f
	rst  $38                                         ; $70ae: $ff
	db   $f4                                         ; $70af: $f4
	ld   d, $89                                      ; $70b0: $16 $89
	add  $df                                         ; $70b2: $c6 $df
	rst  $38                                         ; $70b4: $ff
	rst  $38                                         ; $70b5: $ff
	db   $fc                                         ; $70b6: $fc
	add  a                                           ; $70b7: $87
	add  hl, sp                                      ; $70b8: $39
	ld   h, c                                        ; $70b9: $61
	ld   de, $1811                                   ; $70ba: $11 $11 $18
	rst  $38                                         ; $70bd: $ff
	push af                                          ; $70be: $f5
	cp   a                                           ; $70bf: $bf
	cp   a                                           ; $70c0: $bf
	ld   b, c                                        ; $70c1: $41
	ld   d, $7f                                      ; $70c2: $16 $7f
	cp   l                                           ; $70c4: $bd
	db   $fd                                         ; $70c5: $fd
	rst  $38                                         ; $70c6: $ff
	rst  $38                                         ; $70c7: $ff
	rst  ToBoot                                         ; $70c8: $c7
	and  [hl]                                        ; $70c9: $a6
	ld   [hl], h                                     ; $70ca: $74
	ld   de, $1111                                   ; $70cb: $11 $11 $11
	adc  a                                           ; $70ce: $8f
	rst  $38                                         ; $70cf: $ff
	ld   e, c                                        ; $70d0: $59
	ret  c                                           ; $70d1: $d8

	di                                               ; $70d2: $f3
	ld   de, $ff38                                   ; $70d3: $11 $38 $ff
	adc  $cf                                         ; $70d6: $ce $cf
	rst  $38                                         ; $70d8: $ff
	jp   hl                                          ; $70d9: $e9


	ld   a, h                                        ; $70da: $7c
	sbc  b                                           ; $70db: $98
	ld   hl, $1111                                   ; $70dc: $21 $11 $11
	add  hl, de                                      ; $70df: $19
	rst  $38                                         ; $70e0: $ff
	push af                                          ; $70e1: $f5
	ld   c, d                                        ; $70e2: $4a
	ld   e, a                                        ; $70e3: $5f
	ld   b, c                                        ; $70e4: $41
	ld   de, $fdaf                                   ; $70e5: $11 $af $fd
	ret  z                                           ; $70e8: $c8

	rst  $38                                         ; $70e9: $ff
	cp   $77                                         ; $70ea: $fe $77
	res  2, e                                        ; $70ec: $cb $93
	ld   de, $1111                                   ; $70ee: $11 $11 $11
	ld   a, a                                        ; $70f1: $7f
	rst  $38                                         ; $70f2: $ff
	sub  h                                           ; $70f3: $94
	ld   d, c                                        ; $70f4: $51
	push af                                          ; $70f5: $f5
	ld   de, $ff17                                   ; $70f6: $11 $17 $ff
	db   $fd                                         ; $70f9: $fd
	ld   e, a                                        ; $70fa: $5f
	rst  $38                                         ; $70fb: $ff
	ld   hl, sp+$7a                                  ; $70fc: $f8 $7a
	jp   z, $1161                                    ; $70fe: $ca $61 $11

	ld   de, $ff1a                                   ; $7101: $11 $1a $ff
	ld   a, [$1f41]                                  ; $7104: $fa $41 $1f
	ld   d, c                                        ; $7107: $51
	ld   de, $ff6f                                   ; $7108: $11 $6f $ff
	db   $e4                                         ; $710b: $e4
	rst  $38                                         ; $710c: $ff
	rst  $38                                         ; $710d: $ff
	and  a                                           ; $710e: $a7
	sbc  e                                           ; $710f: $9b
	ret                                              ; $7110: $c9


	ld   de, $1111                                   ; $7111: $11 $11 $11
	rst  JumpTable                                         ; $7114: $df
	rst  $38                                         ; $7115: $ff
	or   h                                           ; $7116: $b4
	ld   de, $31c3                                   ; $7117: $11 $c3 $31
	dec  d                                           ; $711a: $15
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	dec  a                                           ; $711d: $3d
	rst  $38                                         ; $711e: $ff
	db   $fc                                         ; $711f: $fc
	add  [hl]                                        ; $7120: $86
	sbc  h                                           ; $7121: $9c
	and  c                                           ; $7122: $a1
	ld   de, $1c11                                   ; $7123: $11 $11 $1c
	rst  $38                                         ; $7126: $ff
	cp   $41                                         ; $7127: $fe $41
	ld   a, [de]                                     ; $7129: $1a
	ld   [hl], $31                                   ; $712a: $36 $31
	ld   a, $ff                                      ; $712c: $3e $ff
	di                                               ; $712e: $f3
	adc  d                                           ; $712f: $8a
	rst  $38                                         ; $7130: $ff
	cp   $76                                         ; $7131: $fe $76
	sbc  e                                           ; $7133: $9b
	ld   b, c                                        ; $7134: $41
	ld   de, $1f11                                   ; $7135: $11 $11 $1f
	rst  $38                                         ; $7138: $ff
	pop  af                                          ; $7139: $f1
	ld   h, c                                        ; $713a: $61
	rla                                              ; $713b: $17
	ld   c, d                                        ; $713c: $4a
	ld   de, $ff7f                                   ; $713d: $11 $7f $ff
	add  d                                           ; $7140: $82
	ld   h, a                                        ; $7141: $67
	rst  $38                                         ; $7142: $ff
	db   $fd                                         ; $7143: $fd
	ld   h, a                                        ; $7144: $67
	cp   b                                           ; $7145: $b8
	ld   b, c                                        ; $7146: $41
	ld   de, $bf11                                   ; $7147: $11 $11 $bf
	rst  $38                                         ; $714a: $ff
	di                                               ; $714b: $f3
	ld   de, $9b44                                   ; $714c: $11 $44 $9b
	ld   de, $ff5f                                   ; $714f: $11 $5f $ff
	add  c                                           ; $7152: $81
	rla                                              ; $7153: $17
	rst  $38                                         ; $7154: $ff
	db   $fd                                         ; $7155: $fd
	ld   b, [hl]                                     ; $7156: $46
	sbc  e                                           ; $7157: $9b
	sub  c                                           ; $7158: $91
	ld   de, $af11                                   ; $7159: $11 $11 $af
	rst  $38                                         ; $715c: $ff
	ldh  a, [c]                                      ; $715d: $f2
	ld   hl, $7f53                                   ; $715e: $21 $53 $7f
	inc  de                                          ; $7161: $13
	ld   c, a                                        ; $7162: $4f
	rst  $38                                         ; $7163: $ff
	or   c                                           ; $7164: $b1
	ld   de, $ffff                                   ; $7165: $11 $ff $ff
	add  e                                           ; $7168: $83
	add  hl, sp                                      ; $7169: $39
	sub  [hl]                                        ; $716a: $96
	ld   de, $1f11                                   ; $716b: $11 $11 $1f
	rst  $38                                         ; $716e: $ff
	pop  af                                          ; $716f: $f1
	add  c                                           ; $7170: $81
	rra                                              ; $7171: $1f
	rra                                              ; $7172: $1f
	pop  hl                                          ; $7173: $e1
	scf                                              ; $7174: $37
	rst  $38                                         ; $7175: $ff
	db   $f4                                         ; $7176: $f4
	ld   hl, $ff1f                                   ; $7177: $21 $1f $ff
	di                                               ; $717a: $f3
	ld   a, d                                        ; $717b: $7a
	cp   a                                           ; $717c: $bf
	add  c                                           ; $717d: $81
	ld   de, $1f11                                   ; $717e: $11 $11 $1f
	rst  $38                                         ; $7181: $ff
	or   $a1                                         ; $7182: $f6 $a1
	ld   de, $cb2f                                   ; $7184: $11 $2f $cb
	ld   a, d                                        ; $7187: $7a
	rst  JumpTable                                         ; $7188: $df
	push af                                          ; $7189: $f5
	ld   hl, $ff1b                                   ; $718a: $21 $1b $ff
	ei                                               ; $718d: $fb
	ld   d, d                                        ; $718e: $52
	sbc  h                                           ; $718f: $9c
	and  l                                           ; $7190: $a5
	ld   de, $1711                                   ; $7191: $11 $11 $17
	cp   a                                           ; $7194: $bf
	rst  $38                                         ; $7195: $ff
	pop  hl                                          ; $7196: $e1
	ld   de, $ff1a                                   ; $7197: $11 $1a $ff
	or   a                                           ; $719a: $b7
	ld   c, c                                        ; $719b: $49
	call c, $16b5                                    ; $719c: $dc $b5 $16
	sbc  a                                           ; $719f: $9f
	cp   $a3                                         ; $71a0: $fe $a3
	inc  de                                          ; $71a2: $13
	ld   l, e                                        ; $71a3: $6b
	add  sp, $51                                     ; $71a4: $e8 $51
	ld   de, $ffbf                                   ; $71a6: $11 $bf $ff
	or   d                                           ; $71a9: $b2
	ld   de, $fd2c                                   ; $71aa: $11 $2c $fd
	ld   [hl], d                                     ; $71ad: $72
	jr   @+$01                                       ; $71ae: $18 $ff

	ld   sp, hl                                      ; $71b0: $f9
	inc  de                                          ; $71b1: $13
	add  hl, hl                                      ; $71b2: $29
	ei                                               ; $71b3: $fb
	push de                                          ; $71b4: $d5
	ld   d, $4a                                      ; $71b5: $16 $4a
	jp   z, Jump_0d1_4397                            ; $71b7: $ca $97 $43

	inc  de                                          ; $71ba: $13
	xor  e                                           ; $71bb: $ab
	db   $fc                                         ; $71bc: $fc
	ld   h, e                                        ; $71bd: $63
	inc  de                                          ; $71be: $13
	sbc  [hl]                                        ; $71bf: $9e
	ei                                               ; $71c0: $fb
	ld   h, e                                        ; $71c1: $63
	ld   [hl], $cc                                   ; $71c2: $36 $cc
	bit  2, [hl]                                     ; $71c4: $cb $56
	ld   d, a                                        ; $71c6: $57
	cp   b                                           ; $71c7: $b8
	xor  b                                           ; $71c8: $a8
	ld   l, b                                        ; $71c9: $68
	ld   a, c                                        ; $71ca: $79
	sbc  b                                           ; $71cb: $98
	ld   h, [hl]                                     ; $71cc: $66
	ld   e, b                                        ; $71cd: $58
	cp   e                                           ; $71ce: $bb
	or   [hl]                                        ; $71cf: $b6
	ld   d, [hl]                                     ; $71d0: $56
	ld   a, h                                        ; $71d1: $7c
	call c, $1292                                    ; $71d2: $dc $92 $12
	add  hl, sp                                      ; $71d5: $39
	adc  e                                           ; $71d6: $8b
	or   a                                           ; $71d7: $b7
	xor  b                                           ; $71d8: $a8
	adc  c                                           ; $71d9: $89
	ld   d, a                                        ; $71da: $57
	ld   h, [hl]                                     ; $71db: $66
	xor  c                                           ; $71dc: $a9
	call $96cb                                       ; $71dd: $cd $cb $96
	ld   d, e                                        ; $71e0: $53
	ld   e, b                                        ; $71e1: $58
	xor  h                                           ; $71e2: $ac
	cp   c                                           ; $71e3: $b9
	ld   [hl], h                                     ; $71e4: $74
	ld   [hl], $7a                                   ; $71e5: $36 $7a
	xor  c                                           ; $71e7: $a9
	halt                                             ; $71e8: $76
	adc  c                                           ; $71e9: $89
	sbc  b                                           ; $71ea: $98
	ld   b, d                                        ; $71eb: $42
	dec  [hl]                                        ; $71ec: $35
	xor  l                                           ; $71ed: $ad
	sbc  $97                                         ; $71ee: $de $97
	ld   h, h                                        ; $71f0: $64
	add  a                                           ; $71f1: $87
	adc  c                                           ; $71f2: $89
	ld   a, b                                        ; $71f3: $78
	ld   a, b                                        ; $71f4: $78
	xor  d                                           ; $71f5: $aa
	xor  c                                           ; $71f6: $a9
	ld   [hl], a                                     ; $71f7: $77
	halt                                             ; $71f8: $76
	ld   [hl], a                                     ; $71f9: $77
	ld   a, b                                        ; $71fa: $78
	adc  c                                           ; $71fb: $89
	sbc  b                                           ; $71fc: $98
	sbc  b                                           ; $71fd: $98
	halt                                             ; $71fe: $76
	ld   d, [hl]                                     ; $71ff: $56
	ld   [hl], a                                     ; $7200: $77
	sub  a                                           ; $7201: $97
	ld   h, a                                        ; $7202: $67
	adc  d                                           ; $7203: $8a
	res  5, b                                        ; $7204: $cb $a8
	ld   d, l                                        ; $7206: $55
	ld   [hl], a                                     ; $7207: $77
	cp   d                                           ; $7208: $ba
	xor  d                                           ; $7209: $aa
	halt                                             ; $720a: $76
	ld   h, a                                        ; $720b: $67
	sbc  e                                           ; $720c: $9b
	sbc  c                                           ; $720d: $99
	ld   h, l                                        ; $720e: $65
	ld   a, c                                        ; $720f: $79
	xor  e                                           ; $7210: $ab
	sub  [hl]                                        ; $7211: $96
	ld   b, d                                        ; $7212: $42

Jump_0d1_7213:
	ld   b, a                                        ; $7213: $47
	xor  [hl]                                        ; $7214: $ae
	call c, Call_0d1_55a4                            ; $7215: $dc $a4 $55
	ld   l, e                                        ; $7218: $6b
	sbc  e                                           ; $7219: $9b
	add  l                                           ; $721a: $85
	halt                                             ; $721b: $76
	adc  e                                           ; $721c: $8b
	sbc  d                                           ; $721d: $9a
	add  [hl]                                        ; $721e: $86
	ld   h, [hl]                                     ; $721f: $66
	ld   a, d                                        ; $7220: $7a
	cp   e                                           ; $7221: $bb
	sub  a                                           ; $7222: $97
	ld   h, [hl]                                     ; $7223: $66
	ld   l, b                                        ; $7224: $68
	sbc  c                                           ; $7225: $99
	xor  b                                           ; $7226: $a8
	ld   [hl], a                                     ; $7227: $77
	ld   a, b                                        ; $7228: $78
	adc  c                                           ; $7229: $89
	sbc  b                                           ; $722a: $98
	halt                                             ; $722b: $76
	ld   a, b                                        ; $722c: $78
	sbc  e                                           ; $722d: $9b
	cp   d                                           ; $722e: $ba
	halt                                             ; $722f: $76
	ld   h, [hl]                                     ; $7230: $66
	ld   a, b                                        ; $7231: $78
	adc  c                                           ; $7232: $89
	adc  b                                           ; $7233: $88
	add  a                                           ; $7234: $87
	sbc  b                                           ; $7235: $98
	adc  c                                           ; $7236: $89
	ld   [hl], a                                     ; $7237: $77
	ld   [hl], a                                     ; $7238: $77
	adc  b                                           ; $7239: $88
	adc  c                                           ; $723a: $89
	adc  b                                           ; $723b: $88
	ld   a, b                                        ; $723c: $78
	sbc  b                                           ; $723d: $98
	sbc  d                                           ; $723e: $9a
	xor  c                                           ; $723f: $a9
	halt                                             ; $7240: $76
	ld   h, [hl]                                     ; $7241: $66
	ld   a, c                                        ; $7242: $79
	adc  c                                           ; $7243: $89
	sbc  b                                           ; $7244: $98
	add  a                                           ; $7245: $87
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	ld   a, c                                        ; $7248: $79
	sbc  b                                           ; $7249: $98
	sbc  b                                           ; $724a: $98
	adc  c                                           ; $724b: $89
	ld   a, c                                        ; $724c: $79
	adc  b                                           ; $724d: $88
	sub  a                                           ; $724e: $97
	adc  c                                           ; $724f: $89
	ld   a, c                                        ; $7250: $79
	adc  c                                           ; $7251: $89
	add  a                                           ; $7252: $87
	add  a                                           ; $7253: $87
	adc  c                                           ; $7254: $89
	adc  c                                           ; $7255: $89
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  c                                           ; $7258: $89
	sbc  c                                           ; $7259: $99
	sbc  b                                           ; $725a: $98
	adc  b                                           ; $725b: $88
	adc  c                                           ; $725c: $89
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	sbc  c                                           ; $725f: $99
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	sbc  b                                           ; $7263: $98
	adc  c                                           ; $7264: $89
	adc  b                                           ; $7265: $88
	adc  c                                           ; $7266: $89
	sbc  c                                           ; $7267: $99
	adc  b                                           ; $7268: $88
	ld   [hl], a                                     ; $7269: $77
	adc  b                                           ; $726a: $88
	sbc  c                                           ; $726b: $99
	sbc  c                                           ; $726c: $99
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	sbc  b                                           ; $726f: $98
	sbc  c                                           ; $7270: $99
	adc  c                                           ; $7271: $89
	ld   a, b                                        ; $7272: $78
	add  a                                           ; $7273: $87
	sbc  b                                           ; $7274: $98
	sbc  b                                           ; $7275: $98
	ld   a, b                                        ; $7276: $78
	ld   [hl], a                                     ; $7277: $77
	adc  b                                           ; $7278: $88
	adc  c                                           ; $7279: $89
	ld   a, c                                        ; $727a: $79
	ld   a, b                                        ; $727b: $78
	add  a                                           ; $727c: $87
	sbc  b                                           ; $727d: $98
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	sbc  c                                           ; $7281: $99
	adc  b                                           ; $7282: $88
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  c                                           ; $7286: $89
	sbc  b                                           ; $7287: $98
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
	adc  b                                           ; $7334: $88
	adc  b                                           ; $7335: $88
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	adc  b                                           ; $7339: $88
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	adc  b                                           ; $733e: $88
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	adc  b                                           ; $7342: $88
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	adc  b                                           ; $7347: $88
	adc  b                                           ; $7348: $88
	adc  b                                           ; $7349: $88
	adc  b                                           ; $734a: $88
	adc  b                                           ; $734b: $88
	adc  b                                           ; $734c: $88
	adc  b                                           ; $734d: $88
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  b                                           ; $7354: $88
	adc  b                                           ; $7355: $88
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	adc  b                                           ; $735e: $88
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	adc  b                                           ; $7363: $88
	adc  b                                           ; $7364: $88
	adc  b                                           ; $7365: $88
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
	adc  b                                           ; $736a: $88
	adc  b                                           ; $736b: $88
	adc  b                                           ; $736c: $88
	adc  b                                           ; $736d: $88
	adc  b                                           ; $736e: $88
	adc  b                                           ; $736f: $88
	adc  b                                           ; $7370: $88
	adc  b                                           ; $7371: $88
	adc  b                                           ; $7372: $88
	adc  b                                           ; $7373: $88
	adc  b                                           ; $7374: $88
	adc  b                                           ; $7375: $88
	adc  b                                           ; $7376: $88
	adc  b                                           ; $7377: $88
	adc  b                                           ; $7378: $88
	adc  b                                           ; $7379: $88
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	adc  b                                           ; $737c: $88
	adc  b                                           ; $737d: $88
	adc  b                                           ; $737e: $88
	adc  b                                           ; $737f: $88
	adc  b                                           ; $7380: $88
	adc  b                                           ; $7381: $88
	adc  b                                           ; $7382: $88
	adc  b                                           ; $7383: $88
	adc  b                                           ; $7384: $88
	adc  b                                           ; $7385: $88
	adc  b                                           ; $7386: $88
	adc  b                                           ; $7387: $88
	adc  b                                           ; $7388: $88
	adc  b                                           ; $7389: $88
	adc  b                                           ; $738a: $88
	adc  b                                           ; $738b: $88
	adc  b                                           ; $738c: $88
	adc  b                                           ; $738d: $88
	adc  b                                           ; $738e: $88
	adc  b                                           ; $738f: $88
	adc  b                                           ; $7390: $88
	adc  b                                           ; $7391: $88
	adc  b                                           ; $7392: $88
	adc  b                                           ; $7393: $88
	adc  b                                           ; $7394: $88
	adc  b                                           ; $7395: $88
	adc  b                                           ; $7396: $88
	adc  b                                           ; $7397: $88
	adc  b                                           ; $7398: $88
	adc  b                                           ; $7399: $88
	adc  b                                           ; $739a: $88
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	adc  b                                           ; $739f: $88
	adc  b                                           ; $73a0: $88
	adc  b                                           ; $73a1: $88
	adc  b                                           ; $73a2: $88
	adc  b                                           ; $73a3: $88
	adc  b                                           ; $73a4: $88
	adc  b                                           ; $73a5: $88
	adc  b                                           ; $73a6: $88
	adc  b                                           ; $73a7: $88
	adc  b                                           ; $73a8: $88
	adc  b                                           ; $73a9: $88
	adc  b                                           ; $73aa: $88
	adc  b                                           ; $73ab: $88
	adc  b                                           ; $73ac: $88
	adc  b                                           ; $73ad: $88
	adc  b                                           ; $73ae: $88
	adc  b                                           ; $73af: $88
	adc  b                                           ; $73b0: $88
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	adc  b                                           ; $73b3: $88
	adc  b                                           ; $73b4: $88
	adc  b                                           ; $73b5: $88
	adc  b                                           ; $73b6: $88
	adc  b                                           ; $73b7: $88
	adc  b                                           ; $73b8: $88
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	adc  b                                           ; $73bb: $88
	adc  b                                           ; $73bc: $88
	adc  b                                           ; $73bd: $88
	adc  b                                           ; $73be: $88
	adc  b                                           ; $73bf: $88
	adc  b                                           ; $73c0: $88
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  b                                           ; $73c3: $88
	adc  b                                           ; $73c4: $88
	adc  b                                           ; $73c5: $88
	adc  b                                           ; $73c6: $88
	adc  b                                           ; $73c7: $88
	adc  b                                           ; $73c8: $88
	adc  b                                           ; $73c9: $88
	adc  b                                           ; $73ca: $88
	adc  b                                           ; $73cb: $88
	adc  b                                           ; $73cc: $88
	adc  b                                           ; $73cd: $88
	adc  b                                           ; $73ce: $88
	adc  b                                           ; $73cf: $88
	adc  b                                           ; $73d0: $88
	adc  b                                           ; $73d1: $88
	adc  b                                           ; $73d2: $88
	adc  b                                           ; $73d3: $88
	adc  b                                           ; $73d4: $88
	adc  b                                           ; $73d5: $88
	adc  b                                           ; $73d6: $88
	adc  b                                           ; $73d7: $88
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	adc  b                                           ; $73dc: $88
	adc  b                                           ; $73dd: $88
	adc  b                                           ; $73de: $88
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  b                                           ; $73e4: $88
	adc  b                                           ; $73e5: $88
	adc  b                                           ; $73e6: $88
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	adc  b                                           ; $73e9: $88
	adc  b                                           ; $73ea: $88
	adc  b                                           ; $73eb: $88
	adc  b                                           ; $73ec: $88
	adc  b                                           ; $73ed: $88
	adc  b                                           ; $73ee: $88
	adc  b                                           ; $73ef: $88
	adc  b                                           ; $73f0: $88
	adc  b                                           ; $73f1: $88
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	adc  b                                           ; $73f4: $88
	adc  b                                           ; $73f5: $88
	adc  b                                           ; $73f6: $88
	adc  b                                           ; $73f7: $88
	adc  b                                           ; $73f8: $88
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	adc  b                                           ; $73fe: $88
	adc  b                                           ; $73ff: $88
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  b                                           ; $7405: $88
	adc  b                                           ; $7406: $88
	adc  b                                           ; $7407: $88
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	adc  b                                           ; $740b: $88
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	adc  b                                           ; $740f: $88
	adc  b                                           ; $7410: $88
	adc  b                                           ; $7411: $88
	adc  b                                           ; $7412: $88
	adc  b                                           ; $7413: $88
	adc  b                                           ; $7414: $88
	adc  b                                           ; $7415: $88
	adc  b                                           ; $7416: $88
	adc  b                                           ; $7417: $88
	adc  b                                           ; $7418: $88
	adc  b                                           ; $7419: $88
	adc  b                                           ; $741a: $88
	adc  b                                           ; $741b: $88
	adc  b                                           ; $741c: $88
	adc  b                                           ; $741d: $88
	adc  b                                           ; $741e: $88
	adc  b                                           ; $741f: $88
	adc  b                                           ; $7420: $88
	adc  b                                           ; $7421: $88
	adc  b                                           ; $7422: $88
	adc  b                                           ; $7423: $88
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	adc  b                                           ; $7428: $88
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	adc  b                                           ; $742e: $88
	adc  b                                           ; $742f: $88
	adc  b                                           ; $7430: $88
	adc  b                                           ; $7431: $88
	adc  b                                           ; $7432: $88
	adc  b                                           ; $7433: $88
	adc  b                                           ; $7434: $88
	adc  b                                           ; $7435: $88
	adc  b                                           ; $7436: $88
	adc  b                                           ; $7437: $88
	adc  b                                           ; $7438: $88
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  b                                           ; $743b: $88
	adc  b                                           ; $743c: $88
	adc  b                                           ; $743d: $88
	adc  b                                           ; $743e: $88
	adc  b                                           ; $743f: $88
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	adc  b                                           ; $7444: $88
	adc  b                                           ; $7445: $88
	adc  b                                           ; $7446: $88
	adc  b                                           ; $7447: $88
	adc  b                                           ; $7448: $88
	adc  b                                           ; $7449: $88
	adc  b                                           ; $744a: $88
	adc  b                                           ; $744b: $88
	adc  b                                           ; $744c: $88
	adc  b                                           ; $744d: $88
	adc  b                                           ; $744e: $88
	adc  b                                           ; $744f: $88
	adc  b                                           ; $7450: $88
	adc  b                                           ; $7451: $88
	adc  b                                           ; $7452: $88
	adc  b                                           ; $7453: $88
	adc  b                                           ; $7454: $88
	adc  b                                           ; $7455: $88
	adc  b                                           ; $7456: $88
	adc  b                                           ; $7457: $88
	adc  b                                           ; $7458: $88
	adc  b                                           ; $7459: $88
	adc  b                                           ; $745a: $88
	adc  b                                           ; $745b: $88
	adc  b                                           ; $745c: $88
	adc  b                                           ; $745d: $88
	adc  b                                           ; $745e: $88
	adc  b                                           ; $745f: $88
	adc  b                                           ; $7460: $88
	adc  b                                           ; $7461: $88
	adc  b                                           ; $7462: $88
	adc  b                                           ; $7463: $88
	adc  b                                           ; $7464: $88
	adc  b                                           ; $7465: $88
	adc  b                                           ; $7466: $88
	adc  b                                           ; $7467: $88
	adc  b                                           ; $7468: $88
	adc  b                                           ; $7469: $88
	adc  b                                           ; $746a: $88
	adc  b                                           ; $746b: $88
	adc  b                                           ; $746c: $88
	adc  b                                           ; $746d: $88
	adc  b                                           ; $746e: $88
	adc  b                                           ; $746f: $88
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

Call_0d1_7497:
	adc  b                                           ; $7497: $88
	adc  b                                           ; $7498: $88
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

Call_0d1_74da:
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
	adc  b                                           ; $7519: $88
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  b                                           ; $7529: $88
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	adc  b                                           ; $753a: $88
	adc  b                                           ; $753b: $88
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  b                                           ; $753f: $88
	adc  b                                           ; $7540: $88
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	adc  b                                           ; $755c: $88
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	adc  b                                           ; $7561: $88
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	adc  b                                           ; $7564: $88
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	adc  b                                           ; $7567: $88
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  b                                           ; $756a: $88
	adc  b                                           ; $756b: $88
	adc  b                                           ; $756c: $88
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	adc  b                                           ; $756f: $88
	adc  b                                           ; $7570: $88
	adc  b                                           ; $7571: $88
	adc  b                                           ; $7572: $88
	adc  b                                           ; $7573: $88
	adc  b                                           ; $7574: $88
	adc  b                                           ; $7575: $88
	adc  b                                           ; $7576: $88
	adc  b                                           ; $7577: $88
	adc  b                                           ; $7578: $88
	adc  b                                           ; $7579: $88
	adc  b                                           ; $757a: $88
	adc  b                                           ; $757b: $88
	adc  b                                           ; $757c: $88
	adc  b                                           ; $757d: $88
	adc  b                                           ; $757e: $88
	adc  b                                           ; $757f: $88
	adc  b                                           ; $7580: $88
	adc  b                                           ; $7581: $88
	adc  b                                           ; $7582: $88
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	adc  b                                           ; $7585: $88
	adc  b                                           ; $7586: $88
	adc  b                                           ; $7587: $88
	adc  b                                           ; $7588: $88
	adc  b                                           ; $7589: $88
	adc  b                                           ; $758a: $88
	adc  b                                           ; $758b: $88
	adc  b                                           ; $758c: $88
	adc  b                                           ; $758d: $88
	adc  b                                           ; $758e: $88
	adc  b                                           ; $758f: $88
	adc  b                                           ; $7590: $88
	adc  b                                           ; $7591: $88
	adc  b                                           ; $7592: $88
	adc  b                                           ; $7593: $88
	adc  b                                           ; $7594: $88
	adc  b                                           ; $7595: $88
	adc  b                                           ; $7596: $88
	adc  b                                           ; $7597: $88

Jump_0d1_7598:
	adc  b                                           ; $7598: $88

Jump_0d1_7599:
	adc  b                                           ; $7599: $88
	adc  b                                           ; $759a: $88
	adc  b                                           ; $759b: $88
	adc  b                                           ; $759c: $88
	adc  b                                           ; $759d: $88
	adc  b                                           ; $759e: $88
	adc  b                                           ; $759f: $88
	adc  b                                           ; $75a0: $88
	adc  b                                           ; $75a1: $88
	adc  b                                           ; $75a2: $88
	adc  b                                           ; $75a3: $88
	adc  b                                           ; $75a4: $88
	adc  b                                           ; $75a5: $88
	adc  b                                           ; $75a6: $88
	adc  b                                           ; $75a7: $88
	adc  b                                           ; $75a8: $88
	adc  b                                           ; $75a9: $88
	adc  b                                           ; $75aa: $88
	adc  b                                           ; $75ab: $88
	adc  b                                           ; $75ac: $88
	adc  b                                           ; $75ad: $88
	adc  b                                           ; $75ae: $88
	adc  b                                           ; $75af: $88
	adc  b                                           ; $75b0: $88
	adc  b                                           ; $75b1: $88
	adc  b                                           ; $75b2: $88
	adc  b                                           ; $75b3: $88
	adc  b                                           ; $75b4: $88
	adc  b                                           ; $75b5: $88
	adc  b                                           ; $75b6: $88
	adc  b                                           ; $75b7: $88
	adc  b                                           ; $75b8: $88
	adc  b                                           ; $75b9: $88
	adc  b                                           ; $75ba: $88
	adc  b                                           ; $75bb: $88
	adc  b                                           ; $75bc: $88
	adc  b                                           ; $75bd: $88
	adc  b                                           ; $75be: $88
	adc  b                                           ; $75bf: $88
	adc  b                                           ; $75c0: $88
	adc  b                                           ; $75c1: $88
	adc  b                                           ; $75c2: $88
	adc  b                                           ; $75c3: $88
	adc  b                                           ; $75c4: $88
	adc  b                                           ; $75c5: $88
	adc  b                                           ; $75c6: $88
	adc  b                                           ; $75c7: $88
	adc  b                                           ; $75c8: $88
	adc  b                                           ; $75c9: $88
	adc  b                                           ; $75ca: $88
	adc  b                                           ; $75cb: $88
	adc  b                                           ; $75cc: $88
	adc  b                                           ; $75cd: $88
	adc  b                                           ; $75ce: $88
	adc  b                                           ; $75cf: $88
	adc  b                                           ; $75d0: $88
	adc  b                                           ; $75d1: $88
	adc  b                                           ; $75d2: $88
	adc  b                                           ; $75d3: $88
	adc  b                                           ; $75d4: $88
	adc  b                                           ; $75d5: $88
	adc  b                                           ; $75d6: $88
	adc  b                                           ; $75d7: $88
	adc  b                                           ; $75d8: $88
	adc  b                                           ; $75d9: $88
	adc  b                                           ; $75da: $88
	adc  b                                           ; $75db: $88
	adc  b                                           ; $75dc: $88
	adc  b                                           ; $75dd: $88
	adc  b                                           ; $75de: $88
	adc  b                                           ; $75df: $88
	adc  b                                           ; $75e0: $88
	adc  b                                           ; $75e1: $88
	adc  b                                           ; $75e2: $88
	adc  b                                           ; $75e3: $88
	adc  b                                           ; $75e4: $88
	adc  b                                           ; $75e5: $88
	adc  b                                           ; $75e6: $88
	adc  b                                           ; $75e7: $88
	adc  b                                           ; $75e8: $88
	adc  b                                           ; $75e9: $88
	adc  b                                           ; $75ea: $88
	adc  b                                           ; $75eb: $88
	adc  b                                           ; $75ec: $88
	adc  b                                           ; $75ed: $88
	adc  b                                           ; $75ee: $88
	adc  b                                           ; $75ef: $88
	adc  b                                           ; $75f0: $88
	adc  b                                           ; $75f1: $88
	adc  b                                           ; $75f2: $88
	adc  b                                           ; $75f3: $88
	adc  b                                           ; $75f4: $88
	adc  b                                           ; $75f5: $88
	adc  b                                           ; $75f6: $88
	adc  b                                           ; $75f7: $88
	adc  b                                           ; $75f8: $88
	adc  b                                           ; $75f9: $88
	adc  b                                           ; $75fa: $88
	adc  b                                           ; $75fb: $88
	adc  b                                           ; $75fc: $88
	adc  b                                           ; $75fd: $88
	adc  b                                           ; $75fe: $88
	adc  b                                           ; $75ff: $88
	adc  b                                           ; $7600: $88
	adc  b                                           ; $7601: $88
	adc  b                                           ; $7602: $88
	adc  b                                           ; $7603: $88
	adc  b                                           ; $7604: $88
	adc  b                                           ; $7605: $88
	adc  b                                           ; $7606: $88
	adc  b                                           ; $7607: $88
	adc  b                                           ; $7608: $88
	adc  b                                           ; $7609: $88
	adc  b                                           ; $760a: $88
	adc  b                                           ; $760b: $88
	adc  b                                           ; $760c: $88
	adc  b                                           ; $760d: $88
	adc  b                                           ; $760e: $88
	adc  b                                           ; $760f: $88
	adc  b                                           ; $7610: $88
	adc  b                                           ; $7611: $88
	adc  b                                           ; $7612: $88
	adc  b                                           ; $7613: $88
	adc  b                                           ; $7614: $88
	adc  b                                           ; $7615: $88
	adc  b                                           ; $7616: $88
	adc  b                                           ; $7617: $88
	adc  b                                           ; $7618: $88
	adc  b                                           ; $7619: $88
	adc  b                                           ; $761a: $88
	adc  b                                           ; $761b: $88
	adc  b                                           ; $761c: $88
	adc  b                                           ; $761d: $88
	adc  b                                           ; $761e: $88
	adc  b                                           ; $761f: $88
	adc  b                                           ; $7620: $88
	adc  b                                           ; $7621: $88
	adc  b                                           ; $7622: $88
	adc  b                                           ; $7623: $88
	adc  b                                           ; $7624: $88
	adc  b                                           ; $7625: $88
	adc  b                                           ; $7626: $88
	adc  b                                           ; $7627: $88
	adc  b                                           ; $7628: $88
	adc  b                                           ; $7629: $88
	adc  b                                           ; $762a: $88
	adc  b                                           ; $762b: $88
	adc  b                                           ; $762c: $88
	adc  b                                           ; $762d: $88
	adc  b                                           ; $762e: $88
	adc  b                                           ; $762f: $88
	adc  b                                           ; $7630: $88
	adc  b                                           ; $7631: $88
	adc  b                                           ; $7632: $88
	adc  b                                           ; $7633: $88
	adc  b                                           ; $7634: $88
	adc  b                                           ; $7635: $88
	adc  b                                           ; $7636: $88
	adc  b                                           ; $7637: $88
	adc  b                                           ; $7638: $88
	adc  b                                           ; $7639: $88
	adc  b                                           ; $763a: $88
	adc  b                                           ; $763b: $88
	adc  b                                           ; $763c: $88
	adc  b                                           ; $763d: $88
	adc  b                                           ; $763e: $88
	adc  b                                           ; $763f: $88
	adc  b                                           ; $7640: $88
	adc  b                                           ; $7641: $88
	adc  b                                           ; $7642: $88
	adc  b                                           ; $7643: $88
	adc  b                                           ; $7644: $88
	adc  b                                           ; $7645: $88
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	adc  b                                           ; $7648: $88
	adc  b                                           ; $7649: $88
	adc  b                                           ; $764a: $88
	adc  b                                           ; $764b: $88
	adc  b                                           ; $764c: $88
	adc  b                                           ; $764d: $88
	adc  b                                           ; $764e: $88
	adc  b                                           ; $764f: $88
	adc  b                                           ; $7650: $88
	adc  b                                           ; $7651: $88
	adc  b                                           ; $7652: $88
	adc  b                                           ; $7653: $88
	adc  b                                           ; $7654: $88
	adc  b                                           ; $7655: $88
	adc  b                                           ; $7656: $88
	adc  b                                           ; $7657: $88
	adc  b                                           ; $7658: $88
	adc  b                                           ; $7659: $88
	adc  b                                           ; $765a: $88
	adc  b                                           ; $765b: $88
	adc  b                                           ; $765c: $88
	adc  b                                           ; $765d: $88
	adc  b                                           ; $765e: $88
	adc  b                                           ; $765f: $88
	adc  b                                           ; $7660: $88
	adc  b                                           ; $7661: $88
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	adc  b                                           ; $7665: $88
	adc  b                                           ; $7666: $88
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	adc  b                                           ; $766d: $88
	adc  b                                           ; $766e: $88
	adc  b                                           ; $766f: $88
	adc  b                                           ; $7670: $88
	adc  b                                           ; $7671: $88
	adc  b                                           ; $7672: $88
	adc  b                                           ; $7673: $88
	adc  b                                           ; $7674: $88
	adc  b                                           ; $7675: $88
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	adc  b                                           ; $7678: $88
	adc  b                                           ; $7679: $88
	adc  b                                           ; $767a: $88
	adc  b                                           ; $767b: $88
	adc  b                                           ; $767c: $88
	adc  b                                           ; $767d: $88
	adc  b                                           ; $767e: $88
	adc  b                                           ; $767f: $88
	adc  b                                           ; $7680: $88
	adc  b                                           ; $7681: $88
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	adc  b                                           ; $7685: $88
	adc  b                                           ; $7686: $88
	adc  b                                           ; $7687: $88
	adc  b                                           ; $7688: $88
	adc  b                                           ; $7689: $88
	adc  b                                           ; $768a: $88
	adc  b                                           ; $768b: $88
	adc  b                                           ; $768c: $88
	adc  b                                           ; $768d: $88
	adc  b                                           ; $768e: $88
	adc  b                                           ; $768f: $88
	adc  b                                           ; $7690: $88
	adc  b                                           ; $7691: $88
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	adc  b                                           ; $7694: $88
	adc  b                                           ; $7695: $88
	adc  b                                           ; $7696: $88
	adc  b                                           ; $7697: $88

Jump_0d1_7698:
	adc  b                                           ; $7698: $88
	adc  b                                           ; $7699: $88
	adc  b                                           ; $769a: $88
	adc  b                                           ; $769b: $88
	adc  b                                           ; $769c: $88
	adc  b                                           ; $769d: $88
	adc  b                                           ; $769e: $88
	adc  b                                           ; $769f: $88
	adc  b                                           ; $76a0: $88
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	adc  b                                           ; $76a7: $88

Call_0d1_76a8:
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  b                                           ; $76ac: $88
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88
	adc  b                                           ; $76b8: $88
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88
	adc  b                                           ; $76c8: $88
	adc  b                                           ; $76c9: $88
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  b                                           ; $76d8: $88
	adc  b                                           ; $76d9: $88
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	adc  b                                           ; $76dd: $88
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  b                                           ; $76eb: $88

Call_0d1_76ec:
	adc  b                                           ; $76ec: $88
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	adc  b                                           ; $76f5: $88
	adc  b                                           ; $76f6: $88
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
	adc  b                                           ; $76f9: $88
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  b                                           ; $76ff: $88
	adc  b                                           ; $7700: $88
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	adc  b                                           ; $770a: $88
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	adc  b                                           ; $770f: $88
	adc  b                                           ; $7710: $88
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	adc  b                                           ; $7714: $88
	adc  b                                           ; $7715: $88
	adc  b                                           ; $7716: $88
	adc  b                                           ; $7717: $88
	adc  b                                           ; $7718: $88
	adc  b                                           ; $7719: $88
	adc  b                                           ; $771a: $88
	adc  b                                           ; $771b: $88
	adc  b                                           ; $771c: $88
	adc  b                                           ; $771d: $88
	adc  b                                           ; $771e: $88
	adc  b                                           ; $771f: $88
	adc  b                                           ; $7720: $88
	adc  b                                           ; $7721: $88
	adc  b                                           ; $7722: $88
	adc  b                                           ; $7723: $88
	adc  b                                           ; $7724: $88
	adc  b                                           ; $7725: $88
	adc  b                                           ; $7726: $88
	adc  b                                           ; $7727: $88
	adc  b                                           ; $7728: $88
	adc  b                                           ; $7729: $88
	adc  b                                           ; $772a: $88
	adc  b                                           ; $772b: $88
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	adc  b                                           ; $772e: $88
	adc  b                                           ; $772f: $88
	adc  b                                           ; $7730: $88
	adc  b                                           ; $7731: $88
	adc  b                                           ; $7732: $88
	adc  b                                           ; $7733: $88
	adc  b                                           ; $7734: $88
	adc  b                                           ; $7735: $88
	adc  b                                           ; $7736: $88
	adc  b                                           ; $7737: $88
	adc  b                                           ; $7738: $88
	adc  b                                           ; $7739: $88
	adc  b                                           ; $773a: $88
	adc  b                                           ; $773b: $88
	adc  b                                           ; $773c: $88
	adc  b                                           ; $773d: $88
	adc  b                                           ; $773e: $88
	adc  b                                           ; $773f: $88
	adc  b                                           ; $7740: $88
	adc  b                                           ; $7741: $88
	adc  b                                           ; $7742: $88
	adc  b                                           ; $7743: $88
	adc  b                                           ; $7744: $88
	adc  b                                           ; $7745: $88
	adc  b                                           ; $7746: $88
	adc  b                                           ; $7747: $88
	adc  b                                           ; $7748: $88
	adc  b                                           ; $7749: $88
	adc  b                                           ; $774a: $88
	adc  b                                           ; $774b: $88
	adc  b                                           ; $774c: $88
	adc  b                                           ; $774d: $88
	adc  b                                           ; $774e: $88
	adc  b                                           ; $774f: $88
	adc  b                                           ; $7750: $88
	adc  b                                           ; $7751: $88
	adc  b                                           ; $7752: $88
	adc  b                                           ; $7753: $88
	adc  b                                           ; $7754: $88
	adc  b                                           ; $7755: $88
	adc  b                                           ; $7756: $88
	adc  b                                           ; $7757: $88
	adc  b                                           ; $7758: $88
	adc  b                                           ; $7759: $88
	adc  b                                           ; $775a: $88
	adc  b                                           ; $775b: $88
	adc  b                                           ; $775c: $88
	adc  b                                           ; $775d: $88
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	adc  b                                           ; $7760: $88
	adc  b                                           ; $7761: $88
	adc  b                                           ; $7762: $88
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	adc  b                                           ; $7765: $88
	adc  b                                           ; $7766: $88
	adc  b                                           ; $7767: $88
	adc  b                                           ; $7768: $88
	adc  b                                           ; $7769: $88
	adc  b                                           ; $776a: $88
	adc  b                                           ; $776b: $88
	adc  b                                           ; $776c: $88
	adc  b                                           ; $776d: $88
	adc  b                                           ; $776e: $88
	adc  b                                           ; $776f: $88
	adc  b                                           ; $7770: $88
	adc  b                                           ; $7771: $88
	adc  b                                           ; $7772: $88
	adc  b                                           ; $7773: $88
	adc  b                                           ; $7774: $88
	adc  b                                           ; $7775: $88
	adc  b                                           ; $7776: $88
	adc  b                                           ; $7777: $88
	adc  b                                           ; $7778: $88
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  b                                           ; $777c: $88
	adc  b                                           ; $777d: $88
	adc  b                                           ; $777e: $88
	adc  b                                           ; $777f: $88
	adc  b                                           ; $7780: $88
	adc  b                                           ; $7781: $88
	adc  b                                           ; $7782: $88
	adc  b                                           ; $7783: $88
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	adc  b                                           ; $7786: $88
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
	adc  b                                           ; $77a8: $88
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

Call_0d1_77b8:
	adc  b                                           ; $77b8: $88

Jump_0d1_77b9:
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

Call_0d1_7896:
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
	adc  b                                           ; $79e6: $88
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	adc  b                                           ; $79e9: $88
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  b                                           ; $79ee: $88
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	adc  b                                           ; $79f1: $88
	adc  b                                           ; $79f2: $88
	adc  b                                           ; $79f3: $88
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	adc  b                                           ; $79fd: $88
	adc  b                                           ; $79fe: $88
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	adc  b                                           ; $7a02: $88
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
	adc  b                                           ; $7a09: $88
	adc  b                                           ; $7a0a: $88
	adc  b                                           ; $7a0b: $88
	adc  b                                           ; $7a0c: $88
	adc  b                                           ; $7a0d: $88
	adc  b                                           ; $7a0e: $88
	adc  b                                           ; $7a0f: $88
	adc  b                                           ; $7a10: $88
	adc  b                                           ; $7a11: $88
	adc  b                                           ; $7a12: $88
	adc  b                                           ; $7a13: $88
	adc  b                                           ; $7a14: $88
	adc  b                                           ; $7a15: $88
	adc  b                                           ; $7a16: $88
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	adc  b                                           ; $7a1a: $88
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	adc  b                                           ; $7a54: $88
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	adc  b                                           ; $7a59: $88
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	adc  b                                           ; $7a64: $88
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	adc  b                                           ; $7a69: $88
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  b                                           ; $7a7d: $88
	adc  b                                           ; $7a7e: $88
	adc  b                                           ; $7a7f: $88
	adc  b                                           ; $7a80: $88
	adc  b                                           ; $7a81: $88
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  b                                           ; $7a85: $88
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  b                                           ; $7a89: $88
	adc  b                                           ; $7a8a: $88
	adc  b                                           ; $7a8b: $88
	adc  b                                           ; $7a8c: $88
	adc  b                                           ; $7a8d: $88
	adc  b                                           ; $7a8e: $88
	adc  b                                           ; $7a8f: $88
	adc  b                                           ; $7a90: $88
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	adc  b                                           ; $7a99: $88
	adc  b                                           ; $7a9a: $88
	adc  b                                           ; $7a9b: $88
	adc  b                                           ; $7a9c: $88
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	adc  b                                           ; $7aa0: $88
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  b                                           ; $7abc: $88
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	adc  b                                           ; $7abf: $88
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
	adc  b                                           ; $7ac3: $88
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  b                                           ; $7ae2: $88
	adc  b                                           ; $7ae3: $88
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	adc  b                                           ; $7af3: $88
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  b                                           ; $7af7: $88
	adc  b                                           ; $7af8: $88
	adc  b                                           ; $7af9: $88
	adc  b                                           ; $7afa: $88
	adc  b                                           ; $7afb: $88
	adc  b                                           ; $7afc: $88
	adc  b                                           ; $7afd: $88
	adc  b                                           ; $7afe: $88
	adc  b                                           ; $7aff: $88
	adc  b                                           ; $7b00: $88
	adc  b                                           ; $7b01: $88
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	adc  b                                           ; $7b06: $88
	adc  b                                           ; $7b07: $88
	adc  b                                           ; $7b08: $88
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  b                                           ; $7b0e: $88
	adc  b                                           ; $7b0f: $88
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	adc  b                                           ; $7b12: $88
	adc  b                                           ; $7b13: $88
	adc  b                                           ; $7b14: $88
	adc  b                                           ; $7b15: $88
	adc  b                                           ; $7b16: $88
	adc  b                                           ; $7b17: $88
	adc  b                                           ; $7b18: $88
	adc  b                                           ; $7b19: $88
	adc  b                                           ; $7b1a: $88
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	adc  b                                           ; $7b1e: $88
	adc  b                                           ; $7b1f: $88
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
	adc  b                                           ; $7b22: $88
	adc  b                                           ; $7b23: $88
	adc  b                                           ; $7b24: $88
	adc  b                                           ; $7b25: $88
	adc  b                                           ; $7b26: $88
	adc  b                                           ; $7b27: $88
	adc  b                                           ; $7b28: $88
	adc  b                                           ; $7b29: $88
	adc  b                                           ; $7b2a: $88
	adc  b                                           ; $7b2b: $88
	adc  b                                           ; $7b2c: $88
	adc  b                                           ; $7b2d: $88
	adc  b                                           ; $7b2e: $88
	adc  b                                           ; $7b2f: $88
	adc  b                                           ; $7b30: $88
	adc  b                                           ; $7b31: $88
	adc  b                                           ; $7b32: $88
	adc  b                                           ; $7b33: $88
	adc  b                                           ; $7b34: $88
	adc  b                                           ; $7b35: $88
	adc  b                                           ; $7b36: $88
	adc  b                                           ; $7b37: $88
	adc  b                                           ; $7b38: $88
	adc  b                                           ; $7b39: $88
	adc  b                                           ; $7b3a: $88
	adc  b                                           ; $7b3b: $88
	adc  b                                           ; $7b3c: $88
	adc  b                                           ; $7b3d: $88
	adc  b                                           ; $7b3e: $88
	adc  b                                           ; $7b3f: $88
	adc  b                                           ; $7b40: $88
	adc  b                                           ; $7b41: $88
	adc  b                                           ; $7b42: $88
	adc  b                                           ; $7b43: $88
	adc  b                                           ; $7b44: $88
	adc  b                                           ; $7b45: $88
	adc  b                                           ; $7b46: $88
	adc  b                                           ; $7b47: $88
	adc  b                                           ; $7b48: $88
	adc  b                                           ; $7b49: $88
	adc  b                                           ; $7b4a: $88
	adc  b                                           ; $7b4b: $88
	adc  b                                           ; $7b4c: $88
	adc  b                                           ; $7b4d: $88
	adc  b                                           ; $7b4e: $88
	adc  b                                           ; $7b4f: $88
	adc  b                                           ; $7b50: $88
	adc  b                                           ; $7b51: $88
	adc  b                                           ; $7b52: $88
	adc  b                                           ; $7b53: $88
	adc  b                                           ; $7b54: $88
	adc  b                                           ; $7b55: $88
	adc  b                                           ; $7b56: $88
	adc  b                                           ; $7b57: $88
	adc  b                                           ; $7b58: $88
	adc  b                                           ; $7b59: $88
	adc  b                                           ; $7b5a: $88
	adc  b                                           ; $7b5b: $88
	adc  b                                           ; $7b5c: $88
	adc  b                                           ; $7b5d: $88
	adc  b                                           ; $7b5e: $88
	adc  b                                           ; $7b5f: $88
	adc  b                                           ; $7b60: $88
	adc  b                                           ; $7b61: $88
	adc  b                                           ; $7b62: $88
	adc  b                                           ; $7b63: $88
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	adc  b                                           ; $7b66: $88
	adc  b                                           ; $7b67: $88
	adc  b                                           ; $7b68: $88
	adc  b                                           ; $7b69: $88
	adc  b                                           ; $7b6a: $88
	adc  b                                           ; $7b6b: $88
	adc  b                                           ; $7b6c: $88
	adc  b                                           ; $7b6d: $88
	adc  b                                           ; $7b6e: $88
	adc  b                                           ; $7b6f: $88
	adc  b                                           ; $7b70: $88
	adc  b                                           ; $7b71: $88
	adc  b                                           ; $7b72: $88
	adc  b                                           ; $7b73: $88
	adc  b                                           ; $7b74: $88
	adc  b                                           ; $7b75: $88
	adc  b                                           ; $7b76: $88
	adc  b                                           ; $7b77: $88
	adc  b                                           ; $7b78: $88
	adc  b                                           ; $7b79: $88
	adc  b                                           ; $7b7a: $88
	adc  b                                           ; $7b7b: $88
	adc  b                                           ; $7b7c: $88
	adc  b                                           ; $7b7d: $88
	adc  b                                           ; $7b7e: $88
	adc  b                                           ; $7b7f: $88
	adc  b                                           ; $7b80: $88
	adc  b                                           ; $7b81: $88
	adc  b                                           ; $7b82: $88
	adc  b                                           ; $7b83: $88
	adc  b                                           ; $7b84: $88
	adc  b                                           ; $7b85: $88
	adc  b                                           ; $7b86: $88
	adc  b                                           ; $7b87: $88
	adc  b                                           ; $7b88: $88
	adc  b                                           ; $7b89: $88
	adc  b                                           ; $7b8a: $88
	adc  b                                           ; $7b8b: $88
	adc  b                                           ; $7b8c: $88
	adc  b                                           ; $7b8d: $88
	adc  b                                           ; $7b8e: $88
	adc  b                                           ; $7b8f: $88
	adc  b                                           ; $7b90: $88
	adc  b                                           ; $7b91: $88
	adc  b                                           ; $7b92: $88
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	adc  b                                           ; $7b95: $88
	adc  b                                           ; $7b96: $88
	adc  b                                           ; $7b97: $88
	adc  b                                           ; $7b98: $88
	adc  b                                           ; $7b99: $88
	adc  b                                           ; $7b9a: $88
	adc  b                                           ; $7b9b: $88
	adc  b                                           ; $7b9c: $88
	adc  b                                           ; $7b9d: $88
	adc  b                                           ; $7b9e: $88
	adc  b                                           ; $7b9f: $88
	adc  b                                           ; $7ba0: $88
	adc  b                                           ; $7ba1: $88
	adc  b                                           ; $7ba2: $88
	adc  b                                           ; $7ba3: $88
	adc  b                                           ; $7ba4: $88
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	adc  b                                           ; $7ba7: $88
	adc  b                                           ; $7ba8: $88
	adc  b                                           ; $7ba9: $88
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	adc  b                                           ; $7bad: $88
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	adc  b                                           ; $7bb0: $88
	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	adc  b                                           ; $7bb5: $88
	adc  b                                           ; $7bb6: $88

Call_0d1_7bb7:
	adc  b                                           ; $7bb7: $88
	adc  b                                           ; $7bb8: $88
	adc  b                                           ; $7bb9: $88
	adc  b                                           ; $7bba: $88
	adc  b                                           ; $7bbb: $88
	adc  b                                           ; $7bbc: $88
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	adc  b                                           ; $7bbf: $88
	adc  b                                           ; $7bc0: $88
	adc  b                                           ; $7bc1: $88
	adc  b                                           ; $7bc2: $88
	adc  b                                           ; $7bc3: $88
	adc  b                                           ; $7bc4: $88
	adc  b                                           ; $7bc5: $88
	adc  b                                           ; $7bc6: $88
	adc  b                                           ; $7bc7: $88
	adc  b                                           ; $7bc8: $88
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	adc  b                                           ; $7bcd: $88
	adc  b                                           ; $7bce: $88
	adc  b                                           ; $7bcf: $88
	adc  b                                           ; $7bd0: $88
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	adc  b                                           ; $7bd3: $88
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	adc  b                                           ; $7bdb: $88
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  b                                           ; $7bdf: $88
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	adc  b                                           ; $7be3: $88
	adc  b                                           ; $7be4: $88
	adc  b                                           ; $7be5: $88
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	sbc  c                                           ; $7bed: $99
	sbc  c                                           ; $7bee: $99
	sbc  b                                           ; $7bef: $98
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  c                                           ; $7bf4: $89
	sbc  c                                           ; $7bf5: $99
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	add  a                                           ; $7bf8: $87
	ld   [hl], a                                     ; $7bf9: $77
	ld   [hl], a                                     ; $7bfa: $77
	ld   [hl], a                                     ; $7bfb: $77
	ld   h, [hl]                                     ; $7bfc: $66
	ld   h, [hl]                                     ; $7bfd: $66
	ld   h, [hl]                                     ; $7bfe: $66
	ld   h, [hl]                                     ; $7bff: $66
	ld   h, a                                        ; $7c00: $67
	ld   [hl], a                                     ; $7c01: $77
	adc  b                                           ; $7c02: $88
	adc  c                                           ; $7c03: $89
	adc  c                                           ; $7c04: $89
	xor  c                                           ; $7c05: $a9
	xor  d                                           ; $7c06: $aa
	xor  d                                           ; $7c07: $aa
	xor  d                                           ; $7c08: $aa
	xor  d                                           ; $7c09: $aa
	xor  d                                           ; $7c0a: $aa
	xor  c                                           ; $7c0b: $a9
	sbc  d                                           ; $7c0c: $9a
	xor  c                                           ; $7c0d: $a9
	sbc  b                                           ; $7c0e: $98
	sbc  b                                           ; $7c0f: $98
	adc  b                                           ; $7c10: $88
	ld   [hl], a                                     ; $7c11: $77
	ld   [hl], a                                     ; $7c12: $77
	ld   h, [hl]                                     ; $7c13: $66
	ld   h, [hl]                                     ; $7c14: $66
	ld   d, l                                        ; $7c15: $55
	ld   d, l                                        ; $7c16: $55
	ld   d, l                                        ; $7c17: $55
	ld   b, l                                        ; $7c18: $45
	ld   d, [hl]                                     ; $7c19: $56
	ld   h, a                                        ; $7c1a: $67
	ld   [hl], a                                     ; $7c1b: $77
	ld   a, b                                        ; $7c1c: $78
	adc  d                                           ; $7c1d: $8a
	xor  d                                           ; $7c1e: $aa
	xor  d                                           ; $7c1f: $aa
	xor  d                                           ; $7c20: $aa
	xor  e                                           ; $7c21: $ab
	cp   e                                           ; $7c22: $bb
	cp   d                                           ; $7c23: $ba
	xor  d                                           ; $7c24: $aa
	xor  e                                           ; $7c25: $ab
	cp   d                                           ; $7c26: $ba
	xor  c                                           ; $7c27: $a9
	xor  c                                           ; $7c28: $a9
	sbc  b                                           ; $7c29: $98
	adc  b                                           ; $7c2a: $88
	ld   [hl], a                                     ; $7c2b: $77
	ld   h, [hl]                                     ; $7c2c: $66
	ld   d, l                                        ; $7c2d: $55
	ld   d, h                                        ; $7c2e: $54
	ld   b, h                                        ; $7c2f: $44
	ld   b, e                                        ; $7c30: $43
	inc  sp                                          ; $7c31: $33
	inc  sp                                          ; $7c32: $33
	ld   b, l                                        ; $7c33: $45
	ld   h, [hl]                                     ; $7c34: $66
	ld   [hl], a                                     ; $7c35: $77
	adc  c                                           ; $7c36: $89
	xor  d                                           ; $7c37: $aa
	cp   e                                           ; $7c38: $bb
	cp   e                                           ; $7c39: $bb
	cp   h                                           ; $7c3a: $bc
	call $cbdc                                       ; $7c3b: $cd $dc $cb
	cp   h                                           ; $7c3e: $bc
	call z, $a9bb                                    ; $7c3f: $cc $bb $a9
	xor  c                                           ; $7c42: $a9
	adc  b                                           ; $7c43: $88
	halt                                             ; $7c44: $76
	ld   h, l                                        ; $7c45: $65
	ld   b, h                                        ; $7c46: $44
	inc  sp                                          ; $7c47: $33
	inc  sp                                          ; $7c48: $33
	ld   hl, $1111                                   ; $7c49: $21 $11 $11
	inc  hl                                          ; $7c4c: $23
	ld   b, l                                        ; $7c4d: $45
	ld   h, [hl]                                     ; $7c4e: $66
	ld   a, c                                        ; $7c4f: $79
	cp   h                                           ; $7c50: $bc
	call z, $cdcc                                    ; $7c51: $cc $cc $cd
	sbc  $ed                                         ; $7c54: $de $ed
	db   $dd                                         ; $7c56: $dd
	sbc  $ed                                         ; $7c57: $de $ed
	call z, $a9aa                                    ; $7c59: $cc $aa $a9
	sub  a                                           ; $7c5c: $97
	ld   h, l                                        ; $7c5d: $65

jr_0d1_7c5e:
	ld   b, e                                        ; $7c5e: $43
	ld   [hl-], a                                    ; $7c5f: $32
	ld   [hl+], a                                    ; $7c60: $22
	ld   hl, $1111                                   ; $7c61: $21 $11 $11
	ld   [de], a                                     ; $7c64: $12
	inc  [hl]                                        ; $7c65: $34
	ld   d, l                                        ; $7c66: $55
	ld   h, a                                        ; $7c67: $67
	sbc  e                                           ; $7c68: $9b

jr_0d1_7c69:
	call z, $cdcc                                    ; $7c69: $cc $cc $cd
	rst  JumpTable                                         ; $7c6c: $df
	cp   $ee                                         ; $7c6d: $fe $ee
	db   $dd                                         ; $7c6f: $dd
	xor  $ed                                         ; $7c70: $ee $ed
	db   $dd                                         ; $7c72: $dd
	cp   c                                           ; $7c73: $b9
	ld   [hl], a                                     ; $7c74: $77
	ld   h, l                                        ; $7c75: $65
	ld   sp, $1111                                   ; $7c76: $31 $11 $11
	ld   de, $1111                                   ; $7c79: $11 $11 $11
	ld   d, $ce                                      ; $7c7c: $16 $ce
	db   $fd                                         ; $7c7e: $fd
	call z, $ffcf                                    ; $7c7f: $cc $cf $ff
	jp   hl                                          ; $7c82: $e9


	ld   [hl], h                                     ; $7c83: $74
	ld   a, e                                        ; $7c84: $7b
	rst  JumpTable                                         ; $7c85: $df
	jp   c, $ffcc                                    ; $7c86: $da $cc $ff

	db   $ec                                         ; $7c89: $ec
	halt                                             ; $7c8a: $76
	ld   sp, $1111                                   ; $7c8b: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $7c8e: $11 $11 $ff
	rst  $38                                         ; $7c91: $ff
	call nz, $dd79                                   ; $7c92: $c4 $79 $dd
	sub  c                                           ; $7c95: $91
	ld   de, $ff2f                                   ; $7c96: $11 $2f $ff
	db   $fd                                         ; $7c99: $fd
	call c, $c7ff                                    ; $7c9a: $dc $ff $c7
	inc  sp                                          ; $7c9d: $33
	ld   a, a                                        ; $7c9e: $7f
	db   $fd                                         ; $7c9f: $fd
	or   h                                           ; $7ca0: $b4
	inc  hl                                          ; $7ca1: $23
	ld   b, c                                        ; $7ca2: $41
	ld   de, $1111                                   ; $7ca3: $11 $11 $11
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	pop  af                                          ; $7ca8: $f1
	ld   de, $da3c                                   ; $7ca9: $11 $3c $da
	ld   [de], a                                     ; $7cac: $12
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	pop  hl                                          ; $7caf: $e1
	rla                                              ; $7cb0: $17
	xor  a                                           ; $7cb1: $af
	ld   sp, hl                                      ; $7cb2: $f9
	ld   [hl], a                                     ; $7cb3: $77
	xor  e                                           ; $7cb4: $ab
	rst  $20                                         ; $7cb5: $e7
	inc  de                                          ; $7cb6: $13
	jr   c, jr_0d1_7c5e                              ; $7cb7: $38 $a5

	ld   de, $1e11                                   ; $7cb9: $11 $11 $1e
	rst  $38                                         ; $7cbc: $ff
	rst  $38                                         ; $7cbd: $ff
	ld   de, $ff15                                   ; $7cbe: $11 $15 $ff
	pop  af                                          ; $7cc1: $f1
	rra                                              ; $7cc2: $1f
	rst  $38                                         ; $7cc3: $ff
	db   $f4                                         ; $7cc4: $f4
	ld   de, $ffef                                   ; $7cc5: $11 $ef $ff
	ld   d, d                                        ; $7cc8: $52
	add  hl, sp                                      ; $7cc9: $39
	cp   e                                           ; $7cca: $bb
	sub  c                                           ; $7ccb: $91
	jr   c, jr_0d1_7c69                              ; $7ccc: $38 $9b

	ld   sp, $1111                                   ; $7cce: $31 $11 $11
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	pop  hl                                          ; $7cd3: $e1
	ld   de, $ffef                                   ; $7cd4: $11 $ef $ff
	dec  d                                           ; $7cd7: $15
	rst  $38                                         ; $7cd8: $ff
	ld   a, [$4f11]                                  ; $7cd9: $fa $11 $4f
	rst  $38                                         ; $7cdc: $ff
	pop  af                                          ; $7cdd: $f1
	ld   de, $a878                                   ; $7cde: $11 $78 $a8
	ld   a, [de]                                     ; $7ce1: $1a
	sub  $11                                         ; $7ce2: $d6 $11
	ld   de, rAUD1LEN                                   ; $7ce4: $11 $11 $ff
	rst  $38                                         ; $7ce7: $ff
	or   c                                           ; $7ce8: $b1
	ld   de, $ffff                                   ; $7ce9: $11 $ff $ff
	ld   [de], a                                     ; $7cec: $12
	db   $fd                                         ; $7ced: $fd
	sub  c                                           ; $7cee: $91
	ld   de, $ffaf                                   ; $7cef: $11 $af $ff
	pop  af                                          ; $7cf2: $f1
	ld   de, $cf69                                   ; $7cf3: $11 $69 $cf
	cp   d                                           ; $7cf6: $ba
	sub  d                                           ; $7cf7: $92
	ld   de, $1111                                   ; $7cf8: $11 $11 $11
	rst  JumpTable                                         ; $7cfb: $df
	rst  $38                                         ; $7cfc: $ff
	pop  af                                          ; $7cfd: $f1
	ld   de, $ffef                                   ; $7cfe: $11 $ef $ff
	and  c                                           ; $7d01: $a1
	cp   l                                           ; $7d02: $bd
	ld   [hl], d                                     ; $7d03: $72
	ld   de, $ff8f                                   ; $7d04: $11 $8f $ff
	or   c                                           ; $7d07: $b1
	ld   de, $ff8f                                   ; $7d08: $11 $8f $ff
	reti                                             ; $7d0b: $d9


	ld   h, c                                        ; $7d0c: $61
	ld   de, $1111                                   ; $7d0d: $11 $11 $11
	rra                                              ; $7d10: $1f
	rst  $38                                         ; $7d11: $ff
	pop  af                                          ; $7d12: $f1
	ld   de, $ff1f                                   ; $7d13: $11 $1f $ff
	pop  af                                          ; $7d16: $f1
	inc  de                                          ; $7d17: $13
	ld   [hl-], a                                    ; $7d18: $32
	add  hl, hl                                      ; $7d19: $29
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	ld   h, c                                        ; $7d1c: $61
	ld   de, $ff2f                                   ; $7d1d: $11 $2f $ff
	or   $11                                         ; $7d20: $f6 $11
	ld   de, $1111                                   ; $7d22: $11 $11 $11
	rra                                              ; $7d25: $1f
	rst  $38                                         ; $7d26: $ff
	pop  af                                          ; $7d27: $f1
	ld   de, $ff1f                                   ; $7d28: $11 $1f $ff
	pop  af                                          ; $7d2b: $f1
	ld   de, $47bb                                   ; $7d2c: $11 $bb $47
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	ld   d, c                                        ; $7d31: $51
	ld   de, $ffaf                                   ; $7d32: $11 $af $ff
	pop  bc                                          ; $7d35: $c1
	ld   de, $3611                                   ; $7d36: $11 $11 $36
	ld   sp, $ff1b                                   ; $7d39: $31 $1b $ff
	pop  af                                          ; $7d3c: $f1
	ld   de, $ff1f                                   ; $7d3d: $11 $1f $ff
	pop  af                                          ; $7d40: $f1
	ld   de, $db8f                                   ; $7d41: $11 $8f $db
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	ld   hl, rAUD1LEN                                   ; $7d46: $21 $11 $ff
	rst  $38                                         ; $7d49: $ff
	ld   d, c                                        ; $7d4a: $51
	ld   de, $8413                                   ; $7d4b: $11 $13 $84
	ld   de, $ff1f                                   ; $7d4e: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $7d51: $11 $11 $ff
	rst  $38                                         ; $7d54: $ff
	ld   de, $df11                                   ; $7d55: $11 $11 $df
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	jp   nc, $1e11                                   ; $7d5a: $d2 $11 $1e

	rst  $38                                         ; $7d5d: $ff
	ld   sp, hl                                      ; $7d5e: $f9
	ld   de, $1111                                   ; $7d5f: $11 $11 $11
	ld   sp, rAUD1LEN                                   ; $7d62: $31 $11 $ff
	pop  af                                          ; $7d65: $f1
	ld   de, $ff1f                                   ; $7d66: $11 $1f $ff
	pop  af                                          ; $7d69: $f1
	ld   de, $ff1e                                   ; $7d6a: $11 $1e $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	ld   de, $bf11                                   ; $7d6f: $11 $11 $bf
	rst  $38                                         ; $7d72: $ff
	and  c                                           ; $7d73: $a1
	ld   de, $1211                                   ; $7d74: $11 $11 $12
	ld   de, $f5ff                                   ; $7d77: $11 $ff $f5
	ld   de, rAUD1LEN                                   ; $7d7a: $11 $11 $ff
	di                                               ; $7d7d: $f3
	ld   de, $ff18                                   ; $7d7e: $11 $18 $ff
	rst  JumpTable                                         ; $7d81: $df
	rst  $38                                         ; $7d82: $ff
	sub  c                                           ; $7d83: $91
	ld   de, $ff3f                                   ; $7d84: $11 $3f $ff
	or   $11                                         ; $7d87: $f6 $11
	ld   de, $1111                                   ; $7d89: $11 $11 $11
	rst  $38                                         ; $7d8c: $ff
	pop  af                                          ; $7d8d: $f1
	ld   de, $ff19                                   ; $7d8e: $11 $19 $ff
	pop  af                                          ; $7d91: $f1
	ld   de, $a717                                   ; $7d92: $11 $17 $a7
	rst  $38                                         ; $7d95: $ff
	rst  $38                                         ; $7d96: $ff
	ld   d, c                                        ; $7d97: $51
	ld   de, $ffaf                                   ; $7d98: $11 $af $ff
	ldh  a, [c]                                      ; $7d9b: $f2
	ld   de, $1111                                   ; $7d9c: $11 $11 $11
	ld   de, $f1ff                                   ; $7d9f: $11 $ff $f1
	ld   de, $ff1f                                   ; $7da2: $11 $1f $ff
	and  c                                           ; $7da5: $a1
	ld   de, $1179                                   ; $7da6: $11 $79 $11
	rst  $38                                         ; $7da9: $ff
	rst  $38                                         ; $7daa: $ff
	ld   de, rAUD1LOW                                   ; $7dab: $11 $13 $ff
	rst  $38                                         ; $7dae: $ff
	add  c                                           ; $7daf: $81
	ld   de, $b514                                   ; $7db0: $11 $14 $b5
	ld   de, $f1ff                                   ; $7db3: $11 $ff $f1
	ld   de, $ff1f                                   ; $7db6: $11 $1f $ff
	add  c                                           ; $7db9: $81
	inc  d                                           ; $7dba: $14
	xor  d                                           ; $7dbb: $aa
	ld   e, $ff                                      ; $7dbc: $1e $ff
	ei                                               ; $7dbe: $fb
	ld   de, $df19                                   ; $7dbf: $11 $19 $df
	rst  $38                                         ; $7dc2: $ff
	ld   h, c                                        ; $7dc3: $61
	ld   de, $3113                                   ; $7dc4: $11 $13 $31
	inc  de                                          ; $7dc7: $13
	rst  $38                                         ; $7dc8: $ff
	pop  af                                          ; $7dc9: $f1
	ld   de, $ff1f                                   ; $7dca: $11 $1f $ff
	pop  de                                          ; $7dcd: $d1
	ld   [de], a                                     ; $7dce: $12
	ld   sp, $ff1f                                   ; $7dcf: $31 $1f $ff
	ld   a, [$1111]                                  ; $7dd2: $fa $11 $11
	ld   e, a                                        ; $7dd5: $5f
	rst  $38                                         ; $7dd6: $ff
	add  c                                           ; $7dd7: $81
	ld   de, $931a                                   ; $7dd8: $11 $1a $93
	ld   de, $f4ff                                   ; $7ddb: $11 $ff $f4
	ld   de, $ff1f                                   ; $7dde: $11 $1f $ff
	xor  b                                           ; $7de1: $a8
	ld   [hl], $86                                   ; $7de2: $36 $86
	daa                                              ; $7de4: $27
	rst  $38                                         ; $7de5: $ff
	db   $fd                                         ; $7de6: $fd
	ld   b, d                                        ; $7de7: $42
	ld   de, $ff17                                   ; $7de8: $11 $17 $ff
	db   $f4                                         ; $7deb: $f4
	ld   de, $4112                                   ; $7dec: $11 $12 $41
	ld   de, $f1ff                                   ; $7def: $11 $ff $f1
	ld   de, $ff1f                                   ; $7df2: $11 $1f $ff
	db   $fc                                         ; $7df5: $fc
	ld   h, a                                        ; $7df6: $67
	ld   de, $ff1f                                   ; $7df7: $11 $1f $ff
	ei                                               ; $7dfa: $fb
	ld   hl, $3f11                                   ; $7dfb: $21 $11 $3f
	rst  $38                                         ; $7dfe: $ff
	add  c                                           ; $7dff: $81
	ld   de, $1111                                   ; $7e00: $11 $11 $11
	rra                                              ; $7e03: $1f
	rst  $38                                         ; $7e04: $ff
	pop  bc                                          ; $7e05: $c1
	ld   de, $ffbf                                   ; $7e06: $11 $bf $ff
	db   $eb                                         ; $7e09: $eb
	ld   h, d                                        ; $7e0a: $62
	ld   de, $ffdf                                   ; $7e0b: $11 $df $ff
	ld   sp, hl                                      ; $7e0e: $f9
	ld   de, $af11                                   ; $7e0f: $11 $11 $af
	cp   $11                                         ; $7e12: $fe $11
	ld   de, $1111                                   ; $7e14: $11 $11 $11
	rra                                              ; $7e17: $1f
	rst  $38                                         ; $7e18: $ff
	sub  c                                           ; $7e19: $91
	ld   de, $ffff                                   ; $7e1a: $11 $ff $ff
	rst  $30                                         ; $7e1d: $f7
	ld   b, [hl]                                     ; $7e1e: $46
	dec  [hl]                                        ; $7e1f: $35
	rst  $38                                         ; $7e20: $ff
	rst  $38                                         ; $7e21: $ff
	ret  c                                           ; $7e22: $d8

	ld   b, c                                        ; $7e23: $41
	ld   de, $e6af                                   ; $7e24: $11 $af $e6
	ld   [hl-], a                                    ; $7e27: $32
	ld   de, $1111                                   ; $7e28: $11 $11 $11
	ld   de, $ffff                                   ; $7e2b: $11 $ff $ff
	ld   hl, $ef2a                                   ; $7e2e: $21 $2a $ef
	set  1, h                                        ; $7e31: $cb $cc
	or   a                                           ; $7e33: $b7
	ld   a, c                                        ; $7e34: $79
	rst  $38                                         ; $7e35: $ff
	rst  $38                                         ; $7e36: $ff
	cp   b                                           ; $7e37: $b8
	ld   sp, $ac19                                   ; $7e38: $31 $19 $ac
	or   d                                           ; $7e3b: $b2
	ld   de, $1111                                   ; $7e3c: $11 $11 $11
	dec  a                                           ; $7e3f: $3d
	rst  $38                                         ; $7e40: $ff
	ei                                               ; $7e41: $fb
	inc  hl                                          ; $7e42: $23
	adc  c                                           ; $7e43: $89
	sbc  h                                           ; $7e44: $9c
	rst  $38                                         ; $7e45: $ff
	jp   z, $bc56                                    ; $7e46: $ca $56 $bc

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e49: $cf
	db   $fd                                         ; $7e4a: $fd
	and  a                                           ; $7e4b: $a7
	ld   hl, $6937                                   ; $7e4c: $21 $37 $69
	ld   a, d                                        ; $7e4f: $7a
	ld   [hl], e                                     ; $7e50: $73
	ld   sp, $8444                                   ; $7e51: $31 $44 $84
	ld   b, h                                        ; $7e54: $44
	inc  b                                           ; $7e55: $04
	ld   c, b                                        ; $7e56: $48
	ld   a, c                                        ; $7e57: $79
	jp   c, $dba8                                    ; $7e58: $da $a8 $db

	add  a                                           ; $7e5b: $87
	ld   a, l                                        ; $7e5c: $7d
	rst  $38                                         ; $7e5d: $ff
	ld   [hl], a                                     ; $7e5e: $77
	db   $ec                                         ; $7e5f: $ec
	cp   e                                           ; $7e60: $bb
	db   $ec                                         ; $7e61: $ec
	xor  d                                           ; $7e62: $aa
	sbc  b                                           ; $7e63: $98
	ld   d, e                                        ; $7e64: $53
	inc  sp                                          ; $7e65: $33
	ld   b, c                                        ; $7e66: $41
	ld   de, $1133                                   ; $7e67: $11 $33 $11
	add  hl, de                                      ; $7e6a: $19
	xor  h                                           ; $7e6b: $ac
	sbc  $fd                                         ; $7e6c: $de $fd
	ld   l, d                                        ; $7e6e: $6a
	set  3, a                                        ; $7e6f: $cb $df
	xor  [hl]                                        ; $7e71: $ae
	ei                                               ; $7e72: $fb
	cp   c                                           ; $7e73: $b9
	cp   c                                           ; $7e74: $b9
	call c, $8687                                    ; $7e75: $dc $87 $86
	ld   de, $6513                                   ; $7e78: $11 $13 $65
	inc  d                                           ; $7e7b: $14
	ret  z                                           ; $7e7c: $c8

	ld   [hl], $d7                                   ; $7e7d: $36 $d7
	ld   l, c                                        ; $7e7f: $69
	add  l                                           ; $7e80: $85
	ld   a, l                                        ; $7e81: $7d
	ld   d, [hl]                                     ; $7e82: $56
	xor  h                                           ; $7e83: $ac
	cp   e                                           ; $7e84: $bb
	jp   hl                                          ; $7e85: $e9


	db   $eb                                         ; $7e86: $eb
	ld   a, b                                        ; $7e87: $78
	cp   c                                           ; $7e88: $b9
	ld   h, $ab                                      ; $7e89: $26 $ab
	ld   b, h                                        ; $7e8b: $44
	ld   h, [hl]                                     ; $7e8c: $66
	or   [hl]                                        ; $7e8d: $b6
	ld   b, l                                        ; $7e8e: $45
	ld   [hl], h                                     ; $7e8f: $74
	dec  h                                           ; $7e90: $25
	ld   e, c                                        ; $7e91: $59
	inc  h                                           ; $7e92: $24
	sbc  c                                           ; $7e93: $99
	ld   sp, hl                                      ; $7e94: $f9
	adc  d                                           ; $7e95: $8a
	jp   hl                                          ; $7e96: $e9


	ld   a, h                                        ; $7e97: $7c
	xor  a                                           ; $7e98: $af
	and  [hl]                                        ; $7e99: $a6
	adc  e                                           ; $7e9a: $8b
	and  e                                           ; $7e9b: $a3
	ld   h, a                                        ; $7e9c: $67
	or   a                                           ; $7e9d: $b7
	ld   d, h                                        ; $7e9e: $54
	ld   [hl], $31                                   ; $7e9f: $36 $31
	inc  de                                          ; $7ea1: $13
	add  a                                           ; $7ea2: $87
	rla                                              ; $7ea3: $17
	cp   h                                           ; $7ea4: $bc
	ld   e, e                                        ; $7ea5: $5b
	ld   sp, hl                                      ; $7ea6: $f9
	and  l                                           ; $7ea7: $a5
	res  5, h                                        ; $7ea8: $cb $ac
	adc  [hl]                                        ; $7eaa: $8e
	sbc  d                                           ; $7eab: $9a
	ld   a, l                                        ; $7eac: $7d
	ld   sp, hl                                      ; $7ead: $f9
	and  a                                           ; $7eae: $a7
	xor  b                                           ; $7eaf: $a8
	add  [hl]                                        ; $7eb0: $86
	ld   a, b                                        ; $7eb1: $78
	dec  [hl]                                        ; $7eb2: $35
	ld   d, a                                        ; $7eb3: $57
	ld   b, c                                        ; $7eb4: $41
	ld   b, c                                        ; $7eb5: $41
	ld   [de], a                                     ; $7eb6: $12
	and  h                                           ; $7eb7: $a4
	ld   l, a                                        ; $7eb8: $6f
	sub  [hl]                                        ; $7eb9: $96
	xor  a                                           ; $7eba: $af
	ld   l, b                                        ; $7ebb: $68
	ld   hl, sp-$34                                  ; $7ebc: $f8 $cc
	rst  $10                                         ; $7ebe: $d7
	sbc  d                                           ; $7ebf: $9a
	adc  l                                           ; $7ec0: $8d
	xor  e                                           ; $7ec1: $ab
	cp   h                                           ; $7ec2: $bc
	sbc  c                                           ; $7ec3: $99
	or   l                                           ; $7ec4: $b5
	ld   l, b                                        ; $7ec5: $68
	ld   [hl], l                                     ; $7ec6: $75
	ld   [hl], a                                     ; $7ec7: $77
	ld   d, [hl]                                     ; $7ec8: $56
	ld   h, e                                        ; $7ec9: $63
	ld   bc, $2478                                   ; $7eca: $01 $78 $24
	cp   c                                           ; $7ecd: $b9
	ld   l, b                                        ; $7ece: $68
	add  a                                           ; $7ecf: $87
	cp   b                                           ; $7ed0: $b8
	adc  e                                           ; $7ed1: $8b
	call c, $cc58                                    ; $7ed2: $dc $58 $cc
	ld   a, c                                        ; $7ed5: $79
	add  sp, -$76                                    ; $7ed6: $e8 $8a
	and  a                                           ; $7ed8: $a7
	adc  e                                           ; $7ed9: $8b
	ld   [hl], a                                     ; $7eda: $77
	sbc  c                                           ; $7edb: $99
	ld   h, l                                        ; $7edc: $65
	ld   h, [hl]                                     ; $7edd: $66
	ld   h, e                                        ; $7ede: $63
	ld   e, b                                        ; $7edf: $58
	ld   [hl], e                                     ; $7ee0: $73
	ld   c, c                                        ; $7ee1: $49
	ld   d, h                                        ; $7ee2: $54
	ld   h, a                                        ; $7ee3: $67
	add  [hl]                                        ; $7ee4: $86
	sub  a                                           ; $7ee5: $97
	adc  c                                           ; $7ee6: $89
	ld   [hl], a                                     ; $7ee7: $77
	sbc  e                                           ; $7ee8: $9b
	sbc  e                                           ; $7ee9: $9b
	ret  c                                           ; $7eea: $d8

	sbc  e                                           ; $7eeb: $9b
	xor  c                                           ; $7eec: $a9
	xor  d                                           ; $7eed: $aa
	sbc  d                                           ; $7eee: $9a
	sub  a                                           ; $7eef: $97
	sbc  d                                           ; $7ef0: $9a
	add  [hl]                                        ; $7ef1: $86
	adc  e                                           ; $7ef2: $8b
	ld   [hl], l                                     ; $7ef3: $75
	adc  c                                           ; $7ef4: $89
	ld   l, c                                        ; $7ef5: $69
	sub  l                                           ; $7ef6: $95
	ld   a, d                                        ; $7ef7: $7a
	ld   h, a                                        ; $7ef8: $67
	add  [hl]                                        ; $7ef9: $86
	ld   [hl], a                                     ; $7efa: $77
	ld   d, a                                        ; $7efb: $57
	sub  [hl]                                        ; $7efc: $96
	ld   e, e                                        ; $7efd: $5b
	and  [hl]                                        ; $7efe: $a6
	cp   e                                           ; $7eff: $bb
	adc  b                                           ; $7f00: $88
	sbc  b                                           ; $7f01: $98
	sbc  d                                           ; $7f02: $9a
	sub  a                                           ; $7f03: $97
	sbc  d                                           ; $7f04: $9a
	ld   h, [hl]                                     ; $7f05: $66
	xor  c                                           ; $7f06: $a9
	adc  e                                           ; $7f07: $8b
	ld   [hl], a                                     ; $7f08: $77
	xor  d                                           ; $7f09: $aa
	adc  d                                           ; $7f0a: $8a
	sub  [hl]                                        ; $7f0b: $96
	sub  a                                           ; $7f0c: $97
	xor  d                                           ; $7f0d: $aa
	add  [hl]                                        ; $7f0e: $86
	ld   l, c                                        ; $7f0f: $69
	ld   l, d                                        ; $7f10: $6a
	sbc  c                                           ; $7f11: $99
	and  a                                           ; $7f12: $a7
	sub  a                                           ; $7f13: $97
	ld   l, c                                        ; $7f14: $69
	ld   a, b                                        ; $7f15: $78
	xor  b                                           ; $7f16: $a8
	ld   a, c                                        ; $7f17: $79
	sub  a                                           ; $7f18: $97
	ld   e, c                                        ; $7f19: $59
	halt                                             ; $7f1a: $76
	xor  b                                           ; $7f1b: $a8
	add  a                                           ; $7f1c: $87
	sbc  c                                           ; $7f1d: $99
	ld   e, b                                        ; $7f1e: $58
	sub  [hl]                                        ; $7f1f: $96
	sbc  b                                           ; $7f20: $98
	ld   a, b                                        ; $7f21: $78
	sbc  c                                           ; $7f22: $99
	ld   l, c                                        ; $7f23: $69
	sub  l                                           ; $7f24: $95
	cp   c                                           ; $7f25: $b9
	ld   a, c                                        ; $7f26: $79
	sbc  c                                           ; $7f27: $99
	ld   [hl], a                                     ; $7f28: $77
	adc  b                                           ; $7f29: $88
	ld   a, c                                        ; $7f2a: $79
	sub  a                                           ; $7f2b: $97
	sub  a                                           ; $7f2c: $97
	ld   a, c                                        ; $7f2d: $79
	add  a                                           ; $7f2e: $87
	ld   a, c                                        ; $7f2f: $79
	ld   [hl], a                                     ; $7f30: $77
	adc  b                                           ; $7f31: $88
	halt                                             ; $7f32: $76
	add  [hl]                                        ; $7f33: $86
	ld   a, e                                        ; $7f34: $7b
	adc  b                                           ; $7f35: $88
	adc  b                                           ; $7f36: $88
	adc  b                                           ; $7f37: $88
	adc  b                                           ; $7f38: $88
	xor  b                                           ; $7f39: $a8
	adc  c                                           ; $7f3a: $89
	ld   [hl], a                                     ; $7f3b: $77
	sub  a                                           ; $7f3c: $97
	ld   a, c                                        ; $7f3d: $79
	adc  c                                           ; $7f3e: $89
	add  a                                           ; $7f3f: $87
	adc  d                                           ; $7f40: $8a
	ld   [hl], a                                     ; $7f41: $77
	sub  a                                           ; $7f42: $97
	ld   a, b                                        ; $7f43: $78
	ld   [hl], a                                     ; $7f44: $77
	sub  a                                           ; $7f45: $97
	ld   l, c                                        ; $7f46: $69
	ld   l, b                                        ; $7f47: $68
	sub  [hl]                                        ; $7f48: $96
	sbc  c                                           ; $7f49: $99
	ld   l, b                                        ; $7f4a: $68
	ld   a, b                                        ; $7f4b: $78
	ld   a, b                                        ; $7f4c: $78
	sub  [hl]                                        ; $7f4d: $96
	sbc  c                                           ; $7f4e: $99
	ld   [hl], a                                     ; $7f4f: $77
	and  a                                           ; $7f50: $a7
	adc  d                                           ; $7f51: $8a
	ld   [hl], a                                     ; $7f52: $77
	adc  b                                           ; $7f53: $88
	sbc  c                                           ; $7f54: $99
	add  a                                           ; $7f55: $87
	sbc  b                                           ; $7f56: $98
	ld   a, e                                        ; $7f57: $7b
	halt                                             ; $7f58: $76
	add  a                                           ; $7f59: $87
	ld   a, c                                        ; $7f5a: $79
	add  [hl]                                        ; $7f5b: $86
	add  a                                           ; $7f5c: $87
	ld   a, b                                        ; $7f5d: $78
	add  [hl]                                        ; $7f5e: $86
	ld   a, b                                        ; $7f5f: $78
	ld   a, c                                        ; $7f60: $79
	sbc  b                                           ; $7f61: $98
	sub  a                                           ; $7f62: $97
	add  a                                           ; $7f63: $87
	sub  a                                           ; $7f64: $97
	ld   a, d                                        ; $7f65: $7a
	ld   e, c                                        ; $7f66: $59
	sub  a                                           ; $7f67: $97
	sub  [hl]                                        ; $7f68: $96
	adc  b                                           ; $7f69: $88
	adc  c                                           ; $7f6a: $89
	add  a                                           ; $7f6b: $87
	sub  a                                           ; $7f6c: $97
	ld   a, b                                        ; $7f6d: $78
	adc  b                                           ; $7f6e: $88
	ld   a, b                                        ; $7f6f: $78
	ld   [hl], a                                     ; $7f70: $77
	ld   [hl], a                                     ; $7f71: $77
	ld   [hl], a                                     ; $7f72: $77
	ld   a, b                                        ; $7f73: $78
	ld   l, c                                        ; $7f74: $69
	sub  a                                           ; $7f75: $97
	adc  b                                           ; $7f76: $88
	adc  c                                           ; $7f77: $89
	ld   [hl], a                                     ; $7f78: $77
	add  a                                           ; $7f79: $87
	adc  c                                           ; $7f7a: $89
	ld   a, b                                        ; $7f7b: $78
	ld   a, b                                        ; $7f7c: $78
	adc  b                                           ; $7f7d: $88
	add  a                                           ; $7f7e: $87
	adc  b                                           ; $7f7f: $88
	sbc  b                                           ; $7f80: $98
	adc  c                                           ; $7f81: $89
	ld   a, b                                        ; $7f82: $78
	ld   a, b                                        ; $7f83: $78
	sbc  c                                           ; $7f84: $99
	add  a                                           ; $7f85: $87
	sub  [hl]                                        ; $7f86: $96
	add  a                                           ; $7f87: $87
	ld   a, c                                        ; $7f88: $79
	ld   l, b                                        ; $7f89: $68
	adc  b                                           ; $7f8a: $88
	ld   a, b                                        ; $7f8b: $78
	ld   h, a                                        ; $7f8c: $67
	add  [hl]                                        ; $7f8d: $86
	or   a                                           ; $7f8e: $b7
	sbc  c                                           ; $7f8f: $99
	ld   h, a                                        ; $7f90: $67
	adc  c                                           ; $7f91: $89
	adc  c                                           ; $7f92: $89
	ld   a, b                                        ; $7f93: $78
	ld   [hl], a                                     ; $7f94: $77
	sbc  c                                           ; $7f95: $99
	ld   a, b                                        ; $7f96: $78
	ld   [hl], a                                     ; $7f97: $77
	adc  b                                           ; $7f98: $88
	adc  b                                           ; $7f99: $88
	add  [hl]                                        ; $7f9a: $86
	sbc  b                                           ; $7f9b: $98
	ld   a, d                                        ; $7f9c: $7a
	ld   a, b                                        ; $7f9d: $78
	sub  a                                           ; $7f9e: $97
	adc  b                                           ; $7f9f: $88
	add  a                                           ; $7fa0: $87
	sbc  b                                           ; $7fa1: $98
	ld   a, b                                        ; $7fa2: $78
	ld   a, b                                        ; $7fa3: $78
	add  a                                           ; $7fa4: $87
	add  [hl]                                        ; $7fa5: $86
	adc  b                                           ; $7fa6: $88
	ld   a, c                                        ; $7fa7: $79
	adc  c                                           ; $7fa8: $89
	adc  b                                           ; $7fa9: $88
	and  a                                           ; $7faa: $a7
	adc  b                                           ; $7fab: $88
	ld   a, c                                        ; $7fac: $79
	ld   [hl], a                                     ; $7fad: $77
	ld   [hl], a                                     ; $7fae: $77
	halt                                             ; $7faf: $76
	sub  a                                           ; $7fb0: $97
	adc  b                                           ; $7fb1: $88
	adc  c                                           ; $7fb2: $89
	ld   a, c                                        ; $7fb3: $79
	adc  c                                           ; $7fb4: $89
	adc  c                                           ; $7fb5: $89
	add  a                                           ; $7fb6: $87
	add  [hl]                                        ; $7fb7: $86
	ld   [hl], a                                     ; $7fb8: $77
	xor  c                                           ; $7fb9: $a9
	ld   a, e                                        ; $7fba: $7b
	ld   e, c                                        ; $7fbb: $59
	adc  b                                           ; $7fbc: $88
	sbc  b                                           ; $7fbd: $98
	and  [hl]                                        ; $7fbe: $a6
	sbc  c                                           ; $7fbf: $99
	ld   [hl], a                                     ; $7fc0: $77
	halt                                             ; $7fc1: $76
	adc  b                                           ; $7fc2: $88
	ld   l, c                                        ; $7fc3: $69
	ld   [hl], a                                     ; $7fc4: $77
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	adc  c                                           ; $7fc7: $89
	adc  c                                           ; $7fc8: $89
	adc  b                                           ; $7fc9: $88
	and  a                                           ; $7fca: $a7
	adc  c                                           ; $7fcb: $89
	ld   [hl], a                                     ; $7fcc: $77
	ld   [hl], a                                     ; $7fcd: $77
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	ld   a, c                                        ; $7fd0: $79
	ld   [hl], a                                     ; $7fd1: $77
	sbc  b                                           ; $7fd2: $98
	sbc  b                                           ; $7fd3: $98
	sbc  b                                           ; $7fd4: $98
	add  a                                           ; $7fd5: $87
	ld   [hl], a                                     ; $7fd6: $77
	ld   a, c                                        ; $7fd7: $79
	adc  b                                           ; $7fd8: $88
	add  [hl]                                        ; $7fd9: $86
	add  a                                           ; $7fda: $87
	adc  d                                           ; $7fdb: $8a
	ld   a, c                                        ; $7fdc: $79
	ld   a, b                                        ; $7fdd: $78
	sub  a                                           ; $7fde: $97
	sub  a                                           ; $7fdf: $97
	adc  b                                           ; $7fe0: $88
	ld   a, c                                        ; $7fe1: $79
	adc  c                                           ; $7fe2: $89
	adc  c                                           ; $7fe3: $89
	ld   [hl], a                                     ; $7fe4: $77
	add  a                                           ; $7fe5: $87
	sbc  b                                           ; $7fe6: $98
	sbc  b                                           ; $7fe7: $98
	sbc  c                                           ; $7fe8: $99
	adc  b                                           ; $7fe9: $88
	add  a                                           ; $7fea: $87
	sub  a                                           ; $7feb: $97
	ld   a, c                                        ; $7fec: $79
	ld   a, b                                        ; $7fed: $78
	adc  b                                           ; $7fee: $88
	add  a                                           ; $7fef: $87
	adc  b                                           ; $7ff0: $88
	sbc  b                                           ; $7ff1: $98
	add  a                                           ; $7ff2: $87
	sbc  b                                           ; $7ff3: $98
	adc  b                                           ; $7ff4: $88
	adc  c                                           ; $7ff5: $89
	ld   a, b                                        ; $7ff6: $78
	add  a                                           ; $7ff7: $87
	adc  c                                           ; $7ff8: $89
	ld   a, c                                        ; $7ff9: $79
	ld   a, b                                        ; $7ffa: $78
	sbc  b                                           ; $7ffb: $98
	sbc  b                                           ; $7ffc: $98
	sbc  b                                           ; $7ffd: $98
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
