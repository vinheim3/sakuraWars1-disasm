; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a5", ROMX[$4000], BANK[$a5]

	ld   de, $1111                                   ; $4000: $11 $11 $11
	ld   de, $1111                                   ; $4003: $11 $11 $11
	ld   de, $1111                                   ; $4006: $11 $11 $11
	ld   de, $5413                                   ; $4009: $11 $13 $54
	ld   d, h                                        ; $400c: $54
	ld   d, h                                        ; $400d: $54
	ld   b, c                                        ; $400e: $41
	rra                                              ; $400f: $1f
	rst  $38                                         ; $4010: $ff
	pop  af                                          ; $4011: $f1
	ld   de, $1e11                                   ; $4012: $11 $11 $1e
	ld   [hl], c                                     ; $4015: $71
	ld   de, $d11c                                   ; $4016: $11 $1c $d1
	call c, $e1d1                                    ; $4019: $dc $d1 $e1
	ld   de, $1111                                   ; $401c: $11 $11 $11
	ld   de, $1111                                   ; $401f: $11 $11 $11
	ld   de, $1111                                   ; $4022: $11 $11 $11
	ld   de, $1111                                   ; $4025: $11 $11 $11
	ld   de, $5411                                   ; $4028: $11 $11 $54
	ld   b, h                                        ; $402b: $44
	ld   a, [hl]                                     ; $402c: $7e
	ld   de, $5454                                   ; $402d: $11 $54 $54
	ld   h, a                                        ; $4030: $67
	ld   [hl], d                                     ; $4031: $72
	ld   de, $1111                                   ; $4032: $11 $11 $11
	ld   de, $1112                                   ; $4035: $11 $12 $11
	ld   [de], a                                     ; $4038: $12
	ld   de, $1111                                   ; $4039: $11 $11 $11
	ld   h, [hl]                                     ; $403c: $66
	halt                                             ; $403d: $76
	ld   c, [hl]                                     ; $403e: $4e
	ld   de, $8788                                   ; $403f: $11 $88 $87
	ld   [hl], a                                     ; $4042: $77
	ld   [hl], a                                     ; $4043: $77
	ld   h, [hl]                                     ; $4044: $66
	ld   h, [hl]                                     ; $4045: $66
	ld   h, [hl]                                     ; $4046: $66
	ld   h, [hl]                                     ; $4047: $66
	ld   h, a                                        ; $4048: $67
	ld   [hl], a                                     ; $4049: $77
	ld   [hl], a                                     ; $404a: $77
	adc  c                                           ; $404b: $89
	sbc  c                                           ; $404c: $99
	xor  d                                           ; $404d: $aa
	sbc  c                                           ; $404e: $99
	xor  d                                           ; $404f: $aa
	sbc  d                                           ; $4050: $9a
	sbc  c                                           ; $4051: $99
	xor  c                                           ; $4052: $a9
	sbc  c                                           ; $4053: $99
	adc  c                                           ; $4054: $89
	sbc  b                                           ; $4055: $98
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	ld   [hl], a                                     ; $4058: $77
	ld   [hl], a                                     ; $4059: $77
	ld   [hl], a                                     ; $405a: $77
	ld   [hl], a                                     ; $405b: $77
	ld   [hl], a                                     ; $405c: $77
	ld   h, [hl]                                     ; $405d: $66
	ld   h, [hl]                                     ; $405e: $66
	ld   h, [hl]                                     ; $405f: $66
	ld   h, [hl]                                     ; $4060: $66
	ld   h, a                                        ; $4061: $67
	ld   [hl], a                                     ; $4062: $77
	adc  c                                           ; $4063: $89
	adc  c                                           ; $4064: $89
	xor  c                                           ; $4065: $a9
	xor  d                                           ; $4066: $aa
	xor  c                                           ; $4067: $a9
	xor  d                                           ; $4068: $aa
	sbc  c                                           ; $4069: $99
	sbc  c                                           ; $406a: $99
	xor  d                                           ; $406b: $aa
	xor  c                                           ; $406c: $a9
	sbc  c                                           ; $406d: $99
	sbc  b                                           ; $406e: $98
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	ld   [hl], a                                     ; $4071: $77
	halt                                             ; $4072: $76
	ld   h, [hl]                                     ; $4073: $66
	ld   h, h                                        ; $4074: $64
	ld   d, h                                        ; $4075: $54
	ld   b, h                                        ; $4076: $44
	ld   b, l                                        ; $4077: $45
	ld   b, [hl]                                     ; $4078: $46
	ld   h, [hl]                                     ; $4079: $66
	adc  b                                           ; $407a: $88
	sbc  c                                           ; $407b: $99
	cp   d                                           ; $407c: $ba
	cp   d                                           ; $407d: $ba
	cp   e                                           ; $407e: $bb
	xor  e                                           ; $407f: $ab
	xor  d                                           ; $4080: $aa
	xor  d                                           ; $4081: $aa
	xor  c                                           ; $4082: $a9
	xor  d                                           ; $4083: $aa
	sbc  d                                           ; $4084: $9a
	xor  d                                           ; $4085: $aa
	xor  c                                           ; $4086: $a9
	adc  b                                           ; $4087: $88
	add  a                                           ; $4088: $87
	ld   h, [hl]                                     ; $4089: $66
	ld   d, [hl]                                     ; $408a: $56
	ld   h, e                                        ; $408b: $63
	ld   d, h                                        ; $408c: $54
	inc  h                                           ; $408d: $24
	dec  [hl]                                        ; $408e: $35
	dec  [hl]                                        ; $408f: $35
	ld   h, [hl]                                     ; $4090: $66
	ld   a, b                                        ; $4091: $78
	xor  b                                           ; $4092: $a8
	cp   d                                           ; $4093: $ba
	cp   e                                           ; $4094: $bb
	cp   e                                           ; $4095: $bb
	xor  h                                           ; $4096: $ac
	xor  e                                           ; $4097: $ab
	cp   d                                           ; $4098: $ba
	xor  c                                           ; $4099: $a9
	xor  d                                           ; $409a: $aa
	xor  e                                           ; $409b: $ab
	cp   d                                           ; $409c: $ba
	xor  d                                           ; $409d: $aa
	sbc  c                                           ; $409e: $99
	add  a                                           ; $409f: $87
	ld   h, l                                        ; $40a0: $65
	ld   d, [hl]                                     ; $40a1: $56
	inc  sp                                          ; $40a2: $33
	ld   d, c                                        ; $40a3: $51

jr_0a5_40a4:
	ld   [hl-], a                                    ; $40a4: $32
	inc  [hl]                                        ; $40a5: $34
	daa                                              ; $40a6: $27
	ld   d, a                                        ; $40a7: $57
	sbc  e                                           ; $40a8: $9b
	adc  e                                           ; $40a9: $8b
	set  3, d                                        ; $40aa: $cb $da
	jp   c, $aaad                                    ; $40ac: $da $ad $aa

	cp   e                                           ; $40af: $bb
	xor  d                                           ; $40b0: $aa
	cp   e                                           ; $40b1: $bb
	cp   d                                           ; $40b2: $ba
	cp   c                                           ; $40b3: $b9
	xor  c                                           ; $40b4: $a9
	add  a                                           ; $40b5: $87
	ld   d, l                                        ; $40b6: $55
	dec  [hl]                                        ; $40b7: $35
	ld   sp, $1251                                   ; $40b8: $31 $51 $12
	dec  d                                           ; $40bb: $15
	rla                                              ; $40bc: $17
	ld   [hl], a                                     ; $40bd: $77
	adc  h                                           ; $40be: $8c
	cp   d                                           ; $40bf: $ba
	db   $eb                                         ; $40c0: $eb
	ei                                               ; $40c1: $fb
	cp   $ae                                         ; $40c2: $fe $ae
	cp   h                                           ; $40c4: $bc
	cp   e                                           ; $40c5: $bb
	xor  d                                           ; $40c6: $aa
	cp   e                                           ; $40c7: $bb
	xor  c                                           ; $40c8: $a9
	or   a                                           ; $40c9: $b7
	sub  a                                           ; $40ca: $97
	dec  [hl]                                        ; $40cb: $35
	inc  de                                          ; $40cc: $13
	ld   d, c                                        ; $40cd: $51
	inc  sp                                          ; $40ce: $33
	inc  de                                          ; $40cf: $13
	inc  de                                          ; $40d0: $13
	ld   [hl-], a                                    ; $40d1: $32
	cp   b                                           ; $40d2: $b8
	ld   a, [hl]                                     ; $40d3: $7e
	ld   a, [$ffff]                                  ; $40d4: $fa $ff $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40d7: $cf
	call $a9db                                       ; $40d8: $cd $db $a9
	ret  z                                           ; $40db: $c8

	xor  b                                           ; $40dc: $a8
	and  a                                           ; $40dd: $a7
	ld   a, b                                        ; $40de: $78
	ld   b, h                                        ; $40df: $44
	ld   de, $1323                                   ; $40e0: $11 $23 $13
	ld   de, $5441                                   ; $40e3: $11 $41 $54
	ld   c, a                                        ; $40e6: $4f
	cp   e                                           ; $40e7: $bb
	rst  $38                                         ; $40e8: $ff
	rst  JumpTable                                         ; $40e9: $df
	rst  $38                                         ; $40ea: $ff
	db   $fc                                         ; $40eb: $fc
	ei                                               ; $40ec: $fb
	sbc  d                                           ; $40ed: $9a
	and  l                                           ; $40ee: $a5
	adc  c                                           ; $40ef: $89
	ld   e, b                                        ; $40f0: $58
	ld   a, d                                        ; $40f1: $7a
	ld   h, [hl]                                     ; $40f2: $66
	ld   [hl], d                                     ; $40f3: $72
	ld   de, $1124                                   ; $40f4: $11 $24 $11
	ld   [hl], c                                     ; $40f7: $71
	inc  sp                                          ; $40f8: $33
	ld   b, [hl]                                     ; $40f9: $46
	ld   e, a                                        ; $40fa: $5f
	ei                                               ; $40fb: $fb
	rst  $38                                         ; $40fc: $ff
	rst  JumpTable                                         ; $40fd: $df
	rst  $38                                         ; $40fe: $ff
	db   $ec                                         ; $40ff: $ec
	ei                                               ; $4100: $fb
	jr   c, jr_0a5_40a4                              ; $4101: $38 $a1

	ld   l, d                                        ; $4103: $6a
	ld   h, a                                        ; $4104: $67
	sbc  e                                           ; $4105: $9b
	add  [hl]                                        ; $4106: $86
	sub  e                                           ; $4107: $93
	ld   de, $1114                                   ; $4108: $11 $14 $11
	sub  c                                           ; $410b: $91
	ld   d, $67                                      ; $410c: $16 $67
	ld   l, a                                        ; $410e: $6f
	rst  $38                                         ; $410f: $ff
	rst  $38                                         ; $4110: $ff
	db   $fd                                         ; $4111: $fd
	rst  $38                                         ; $4112: $ff
	xor  d                                           ; $4113: $aa
	rst  $20                                         ; $4114: $e7
	ld   h, $74                                      ; $4115: $26 $74
	dec  sp                                          ; $4117: $3b
	or   [hl]                                        ; $4118: $b6
	cp   l                                           ; $4119: $bd
	sbc  c                                           ; $411a: $99
	ld   d, d                                        ; $411b: $52
	ld   de, $1113                                   ; $411c: $11 $13 $11
	add  c                                           ; $411f: $81
	rla                                              ; $4120: $17
	cp   [hl]                                        ; $4121: $be
	cp   a                                           ; $4122: $bf
	rst  $38                                         ; $4123: $ff
	rst  $38                                         ; $4124: $ff
	ei                                               ; $4125: $fb
	ld   a, [$2684]                                  ; $4126: $fa $84 $26
	ld   sp, $5e8a                                   ; $4129: $31 $8a $5e
	rst  $28                                         ; $412c: $ef
	cp   $f9                                         ; $412d: $fe $f9
	ld   de, $1111                                   ; $412f: $11 $11 $11
	ld   de, $9b41                                   ; $4132: $11 $41 $9b
	rst  $38                                         ; $4135: $ff
	rst  $38                                         ; $4136: $ff
	rst  $38                                         ; $4137: $ff
	rst  $38                                         ; $4138: $ff
	call nc, Call_0a5_4161                           ; $4139: $d4 $61 $41
	rla                                              ; $413c: $17
	ld   sp, $ffff                                   ; $413d: $31 $ff $ff
	rst  $38                                         ; $4140: $ff
	cp   $f7                                         ; $4141: $fe $f7
	ld   de, $1111                                   ; $4143: $11 $11 $11
	ld   de, $fff1                                   ; $4146: $11 $f1 $ff
	rst  $38                                         ; $4149: $ff
	rst  $38                                         ; $414a: $ff
	rst  $38                                         ; $414b: $ff
	rra                                              ; $414c: $1f
	ld   b, c                                        ; $414d: $41
	ld   de, $1f11                                   ; $414e: $11 $11 $1f
	db   $fd                                         ; $4151: $fd
	rst  $38                                         ; $4152: $ff
	rst  $38                                         ; $4153: $ff
	rst  $38                                         ; $4154: $ff
	db   $f4                                         ; $4155: $f4
	ld   hl, $1111                                   ; $4156: $21 $11 $11
	ld   a, [de]                                     ; $4159: $1a
	ld   de, $ffff                                   ; $415a: $11 $ff $ff
	rst  $38                                         ; $415d: $ff
	ld   a, [$11ff]                                  ; $415e: $fa $ff $11

Call_0a5_4161:
	ld   de, $ec11                                   ; $4161: $11 $11 $ec
	rst  $38                                         ; $4164: $ff
	rst  $38                                         ; $4165: $ff
	rst  $38                                         ; $4166: $ff
	cp   $77                                         ; $4167: $fe $77
	ld   de, $1111                                   ; $4169: $11 $11 $11
	ld   de, $611f                                   ; $416c: $11 $1f $61
	rst  $38                                         ; $416f: $ff
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	ld   de, $1118                                   ; $4172: $11 $18 $11
	or   c                                           ; $4175: $b1
	ld   c, l                                        ; $4176: $4d
	rst  $38                                         ; $4177: $ff
	rst  $38                                         ; $4178: $ff
	rst  $38                                         ; $4179: $ff
	ld   l, a                                        ; $417a: $6f
	ld   d, c                                        ; $417b: $51
	ld   de, $1111                                   ; $417c: $11 $11 $11
	ld   de, $1f11                                   ; $417f: $11 $11 $1f
	pop  af                                          ; $4182: $f1
	rst  $38                                         ; $4183: $ff
	ld   e, a                                        ; $4184: $5f
	cp   a                                           ; $4185: $bf

Jump_0a5_4186:
	ld   sp, $111f                                   ; $4186: $31 $1f $11
	push af                                          ; $4189: $f5
	adc  h                                           ; $418a: $8c
	rst  $38                                         ; $418b: $ff
	rst  $38                                         ; $418c: $ff
	rst  $38                                         ; $418d: $ff
	ld   [hl], $94                                   ; $418e: $36 $94
	inc  d                                           ; $4190: $14
	sbc  b                                           ; $4191: $98
	ld   [de], a                                     ; $4192: $12
	ld   d, c                                        ; $4193: $51
	ld   de, rAUD1LEN                                   ; $4194: $11 $11 $ff
	rra                                              ; $4197: $1f
	ld   hl, sp-$0a                                  ; $4198: $f8 $f6
	pop  af                                          ; $419a: $f1
	ld   de, $1fa1                                   ; $419b: $11 $a1 $1f
	rst  $38                                         ; $419e: $ff
	rst  $38                                         ; $419f: $ff
	rst  $38                                         ; $41a0: $ff
	res  4, c                                        ; $41a1: $cb $a1
	add  [hl]                                        ; $41a3: $86
	ld   a, [hl]                                     ; $41a4: $7e
	cp   c                                           ; $41a5: $b9
	add  c                                           ; $41a6: $81
	ld   de, $1111                                   ; $41a7: $11 $11 $11
	rst  $38                                         ; $41aa: $ff
	rra                                              ; $41ab: $1f
	ldh  a, [c]                                      ; $41ac: $f2
	ld   h, c                                        ; $41ad: $61
	ld   d, c                                        ; $41ae: $51
	ld   de, $1fdf                                   ; $41af: $11 $df $1f
	rst  $38                                         ; $41b2: $ff
	rst  $38                                         ; $41b3: $ff
	rst  $30                                         ; $41b4: $f7
	ld   d, c                                        ; $41b5: $51
	sub  h                                           ; $41b6: $94
	xor  [hl]                                        ; $41b7: $ae

Call_0a5_41b8:
	rst  $38                                         ; $41b8: $ff

Call_0a5_41b9:
	and  l                                           ; $41b9: $a5
	ld   de, $1111                                   ; $41ba: $11 $11 $11
	ld   de, $1fff                                   ; $41bd: $11 $ff $1f
	pop  af                                          ; $41c0: $f1
	ld   de, $1111                                   ; $41c1: $11 $11 $11
	rst  $38                                         ; $41c4: $ff
	ld   e, a                                        ; $41c5: $5f
	rst  $38                                         ; $41c6: $ff
	ld   a, e                                        ; $41c7: $7b
	ld   b, c                                        ; $41c8: $41
	add  l                                           ; $41c9: $85
	rst  $38                                         ; $41ca: $ff
	rst  $38                                         ; $41cb: $ff
	ret  z                                           ; $41cc: $c8

	ld   sp, $1112                                   ; $41cd: $31 $12 $11
	ld   de, $ff1d                                   ; $41d0: $11 $1d $ff
	rra                                              ; $41d3: $1f
	pop  af                                          ; $41d4: $f1
	ld   de, $1651                                   ; $41d5: $11 $51 $16
	rst  $38                                         ; $41d8: $ff
	ccf                                              ; $41d9: $3f
	pop  af                                          ; $41da: $f1
	jr   jr_0a5_41fb                                 ; $41db: $18 $1e

	cp   $ff                                         ; $41dd: $fe $ff
	or   $33                                         ; $41df: $f6 $33
	ld   de, $2158                                   ; $41e1: $11 $58 $21
	ld   de, $f11f                                   ; $41e4: $11 $1f $f1
	rst  $38                                         ; $41e7: $ff
	ld   de, $1117                                   ; $41e8: $11 $17 $11
	ld   l, a                                        ; $41eb: $6f
	push af                                          ; $41ec: $f5
	rst  $38                                         ; $41ed: $ff
	ld   [de], a                                     ; $41ee: $12
	sub  d                                           ; $41ef: $92
	cp   a                                           ; $41f0: $bf
	rst  $38                                         ; $41f1: $ff
	rst  $38                                         ; $41f2: $ff
	ld   h, c                                        ; $41f3: $61
	ld   b, h                                        ; $41f4: $44
	inc  de                                          ; $41f5: $13
	sub  e                                           ; $41f6: $93
	ld   de, rAUD1LEN                                   ; $41f7: $11 $11 $ff
	inc  e                                           ; $41fa: $1c

jr_0a5_41fb:
	pop  af                                          ; $41fb: $f1
	ld   de, $2a51                                   ; $41fc: $11 $51 $2a
	rst  $38                                         ; $41ff: $ff
	cp   a                                           ; $4200: $bf
	pop  de                                          ; $4201: $d1
	ld   e, e                                        ; $4202: $5b
	dec  de                                          ; $4203: $1b
	rst  $38                                         ; $4204: $ff
	xor  $c5                                         ; $4205: $ee $c5
	ld   [de], a                                     ; $4207: $12
	inc  h                                           ; $4208: $24
	ld   l, c                                        ; $4209: $69
	ld   de, $1f11                                   ; $420a: $11 $11 $1f
	pop  af                                          ; $420d: $f1
	rst  $38                                         ; $420e: $ff
	ld   de, $1a15                                   ; $420f: $11 $15 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4212: $cf
	db   $fc                                         ; $4213: $fc
	pop  af                                          ; $4214: $f1
	dec  de                                          ; $4215: $1b
	and  c                                           ; $4216: $a1
	rst  $38                                         ; $4217: $ff
	rst  $38                                         ; $4218: $ff
	push hl                                          ; $4219: $e5
	ld   [hl+], a                                    ; $421a: $22
	ld   [de], a                                     ; $421b: $12
	adc  b                                           ; $421c: $88
	ld   h, c                                        ; $421d: $61
	ld   de, $ff1f                                   ; $421e: $11 $1f $ff
	rra                                              ; $4221: $1f
	pop  af                                          ; $4222: $f1
	ld   de, $fb11                                   ; $4223: $11 $11 $fb
	rst  $38                                         ; $4226: $ff
	db   $fc                                         ; $4227: $fc
	ld   d, $b3                                      ; $4228: $16 $b3
	sbc  a                                           ; $422a: $9f
	rst  $38                                         ; $422b: $ff
	push af                                          ; $422c: $f5
	ld   d, d                                        ; $422d: $52
	ld   de, $7579                                   ; $422e: $11 $79 $75
	ld   de, rAUD1LEN                                   ; $4231: $11 $11 $ff
	rra                                              ; $4234: $1f
	ldh  a, [c]                                      ; $4235: $f2
	ld   de, rAUD1LEN                                   ; $4236: $11 $11 $ff
	rst  $28                                         ; $4239: $ef
	rst  $38                                         ; $423a: $ff
	ld   de, $5fb5                                   ; $423b: $11 $b5 $5f
	rst  $38                                         ; $423e: $ff
	ld   hl, sp+$58                                  ; $423f: $f8 $58
	ld   de, $4937                                   ; $4241: $11 $37 $49
	ld   de, $1f11                                   ; $4244: $11 $11 $1f
	pop  af                                          ; $4247: $f1
	rst  $38                                         ; $4248: $ff
	ld   de, $1f11                                   ; $4249: $11 $11 $1f
	adc  a                                           ; $424c: $8f
	rst  $38                                         ; $424d: $ff
	pop  af                                          ; $424e: $f1
	ld   [hl], h                                     ; $424f: $74
	ld   e, b                                        ; $4250: $58
	rst  $38                                         ; $4251: $ff
	rst  $38                                         ; $4252: $ff
	ld   e, e                                        ; $4253: $5b
	ld   d, d                                        ; $4254: $52
	inc  de                                          ; $4255: $13
	jr   z, jr_0a5_42c9                              ; $4256: $28 $71

	ld   de, $f61f                                   ; $4258: $11 $1f $f6
	cpl                                              ; $425b: $2f
	or   c                                           ; $425c: $b1
	ld   de, $f51b                                   ; $425d: $11 $1b $f5
	rst  $38                                         ; $4260: $ff
	ld   hl, sp+$56                                  ; $4261: $f8 $56
	add  hl, sp                                      ; $4263: $39
	sbc  a                                           ; $4264: $9f
	rst  $28                                         ; $4265: $ef
	call z, Call_0a5_63a3                            ; $4266: $cc $a3 $63
	ld   [de], a                                     ; $4269: $12
	sub  e                                           ; $426a: $93
	ld   de, rAUD1LEN                                   ; $426b: $11 $11 $ff
	inc  e                                           ; $426e: $1c
	ld   hl, sp+$11                                  ; $426f: $f8 $11
	ld   de, $5ff5                                   ; $4271: $11 $f5 $5f
	rst  $38                                         ; $4274: $ff

Jump_0a5_4275:
	call c, $7679                                    ; $4275: $dc $79 $76
	call z, $f9fb                                    ; $4278: $cc $fb $f9
	sbc  c                                           ; $427b: $99
	ld   hl, $2117                                   ; $427c: $21 $17 $21
	ld   de, $f61f                                   ; $427f: $11 $1f $f6
	xor  a                                           ; $4282: $af
	sub  d                                           ; $4283: $92
	ld   sp, $111b                                   ; $4284: $31 $1b $11
	db   $fc                                         ; $4287: $fc
	rst  $38                                         ; $4288: $ff
	db   $fd                                         ; $4289: $fd
	ret  c                                           ; $428a: $d8

	ld   l, b                                        ; $428b: $68
	adc  a                                           ; $428c: $8f
	sbc  a                                           ; $428d: $9f
	cp   l                                           ; $428e: $bd
	and  [hl]                                        ; $428f: $a6
	ld   de, $2141                                   ; $4290: $11 $41 $21
	ld   de, $f11f                                   ; $4293: $11 $1f $f1
	rst  $38                                         ; $4296: $ff
	ld   a, a                                        ; $4297: $7f
	ld   de, $1f43                                   ; $4298: $11 $43 $1f
	cpl                                              ; $429b: $2f
	rst  $38                                         ; $429c: $ff
	rst  $38                                         ; $429d: $ff
	ld   a, [$f8d4]                                  ; $429e: $fa $d4 $f8
	cp   e                                           ; $42a1: $bb
	db   $db                                         ; $42a2: $db
	sbc  c                                           ; $42a3: $99
	ld   [de], a                                     ; $42a4: $12
	ld   de, $1131                                   ; $42a5: $11 $31 $11
	xor  a                                           ; $42a8: $af
	inc  e                                           ; $42a9: $1c
	db   $fc                                         ; $42aa: $fc
	rst  $38                                         ; $42ab: $ff
	ld   de, $52c1                                   ; $42ac: $11 $c1 $52
	rra                                              ; $42af: $1f
	xor  a                                           ; $42b0: $af
	rst  $38                                         ; $42b1: $ff
	rst  $38                                         ; $42b2: $ff
	db   $eb                                         ; $42b3: $eb
	and  $9b                                         ; $42b4: $e6 $9b
	and  a                                           ; $42b6: $a7
	db   $e4                                         ; $42b7: $e4
	ld   b, e                                        ; $42b8: $43
	inc  d                                           ; $42b9: $14
	ld   de, $1f11                                   ; $42ba: $11 $11 $1f
	ld   d, c                                        ; $42bd: $51
	db   $fc                                         ; $42be: $fc
	rst  $38                                         ; $42bf: $ff
	inc  de                                          ; $42c0: $13
	pop  af                                          ; $42c1: $f1
	ld   [hl], h                                     ; $42c2: $74
	inc  e                                           ; $42c3: $1c
	inc  de                                          ; $42c4: $13
	rst  $38                                         ; $42c5: $ff
	rst  $38                                         ; $42c6: $ff
	rst  $38                                         ; $42c7: $ff
	ei                                               ; $42c8: $fb

jr_0a5_42c9:
	cp   e                                           ; $42c9: $bb
	ld   l, c                                        ; $42ca: $69
	jp   nz, $1498                                   ; $42cb: $c2 $98 $14

	ld   de, $1111                                   ; $42ce: $11 $11 $11
	db   $fc                                         ; $42d1: $fc
	rra                                              ; $42d2: $1f
	xor  a                                           ; $42d3: $af
	di                                               ; $42d4: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42d5: $cf
	ld   e, $51                                      ; $42d6: $1e $51
	pop  de                                          ; $42d8: $d1
	scf                                              ; $42d9: $37
	dec  a                                           ; $42da: $3d
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	jp   hl                                          ; $42de: $e9


	cp   d                                           ; $42df: $ba
	sbc  d                                           ; $42e0: $9a
	ld   b, h                                        ; $42e1: $44
	ld   sp, $1111                                   ; $42e2: $31 $11 $11
	ld   de, $1ff3                                   ; $42e5: $11 $f3 $1f
	ld   c, a                                        ; $42e8: $4f
	push af                                          ; $42e9: $f5
	rst  $38                                         ; $42ea: $ff
	ld   a, a                                        ; $42eb: $7f
	ld   b, a                                        ; $42ec: $47
	pop  af                                          ; $42ed: $f1
	or   h                                           ; $42ee: $b4
	ld   l, $7a                                      ; $42ef: $2e $7a
	ei                                               ; $42f1: $fb
	rst  $38                                         ; $42f2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42f3: $cf
	db   $dd                                         ; $42f4: $dd
	ret                                              ; $42f5: $c9


	ld   [hl], e                                     ; $42f6: $73
	ld   de, $1111                                   ; $42f7: $11 $11 $11
	ld   de, $194a                                   ; $42fa: $11 $4a $19
	ld   [hl], e                                     ; $42fd: $73
	ld   hl, sp-$41                                  ; $42fe: $f8 $bf
	sbc  a                                           ; $4300: $9f
	ei                                               ; $4301: $fb
	ld   a, [$4ade]                                  ; $4302: $fa $de $4a
	ld   [hl], h                                     ; $4305: $74
	and  [hl]                                        ; $4306: $a6
	xor  h                                           ; $4307: $ac
	sbc  h                                           ; $4308: $9c
	cp   d                                           ; $4309: $ba
	and  a                                           ; $430a: $a7
	sub  a                                           ; $430b: $97
	ld   d, [hl]                                     ; $430c: $56
	ld   b, l                                        ; $430d: $45
	ld   d, d                                        ; $430e: $52
	ld   sp, $1465                                   ; $430f: $31 $65 $14
	ld   [hl+], a                                    ; $4312: $22
	ld   h, d                                        ; $4313: $62
	ld   a, d                                        ; $4314: $7a
	adc  l                                           ; $4315: $8d
	call $dcfd                                       ; $4316: $cd $fd $dc
	cp   e                                           ; $4319: $bb
	cp   e                                           ; $431a: $bb
	cp   d                                           ; $431b: $ba
	xor  e                                           ; $431c: $ab
	sbc  c                                           ; $431d: $99
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	sub  a                                           ; $4320: $97
	adc  b                                           ; $4321: $88
	ld   a, b                                        ; $4322: $78
	add  a                                           ; $4323: $87
	halt                                             ; $4324: $76
	ld   d, l                                        ; $4325: $55
	ld   b, e                                        ; $4326: $43
	inc  sp                                          ; $4327: $33
	dec  [hl]                                        ; $4328: $35
	ld   b, l                                        ; $4329: $45
	ld   h, l                                        ; $432a: $65
	ld   l, b                                        ; $432b: $68
	ld   a, b                                        ; $432c: $78
	sbc  e                                           ; $432d: $9b
	call z, $dbbd                                    ; $432e: $cc $bd $db
	cp   e                                           ; $4331: $bb
	cp   e                                           ; $4332: $bb
	xor  b                                           ; $4333: $a8
	sbc  b                                           ; $4334: $98
	sbc  b                                           ; $4335: $98
	sbc  c                                           ; $4336: $99
	sbc  b                                           ; $4337: $98
	sbc  b                                           ; $4338: $98
	add  a                                           ; $4339: $87
	ld   h, a                                        ; $433a: $67
	ld   h, [hl]                                     ; $433b: $66
	ld   h, [hl]                                     ; $433c: $66
	ld   [hl], a                                     ; $433d: $77
	ld   h, l                                        ; $433e: $65
	ld   d, l                                        ; $433f: $55
	ld   b, h                                        ; $4340: $44
	ld   d, l                                        ; $4341: $55
	ld   d, [hl]                                     ; $4342: $56
	ld   a, c                                        ; $4343: $79
	adc  b                                           ; $4344: $88
	cp   e                                           ; $4345: $bb
	cp   e                                           ; $4346: $bb
	xor  e                                           ; $4347: $ab
	cp   d                                           ; $4348: $ba
	sbc  c                                           ; $4349: $99
	sbc  d                                           ; $434a: $9a
	xor  c                                           ; $434b: $a9
	sbc  b                                           ; $434c: $98
	sbc  c                                           ; $434d: $99
	adc  b                                           ; $434e: $88
	adc  b                                           ; $434f: $88
	adc  b                                           ; $4350: $88
	adc  c                                           ; $4351: $89
	sbc  c                                           ; $4352: $99
	adc  b                                           ; $4353: $88
	ld   [hl], a                                     ; $4354: $77
	halt                                             ; $4355: $76
	ld   h, [hl]                                     ; $4356: $66
	ld   d, l                                        ; $4357: $55
	ld   d, [hl]                                     ; $4358: $56
	ld   h, [hl]                                     ; $4359: $66
	ld   h, a                                        ; $435a: $67
	ld   h, a                                        ; $435b: $67
	ld   [hl], a                                     ; $435c: $77
	adc  b                                           ; $435d: $88
	sbc  d                                           ; $435e: $9a
	xor  d                                           ; $435f: $aa
	sbc  d                                           ; $4360: $9a
	xor  c                                           ; $4361: $a9
	adc  b                                           ; $4362: $88
	sbc  b                                           ; $4363: $98
	adc  b                                           ; $4364: $88
	sbc  c                                           ; $4365: $99
	sbc  b                                           ; $4366: $98
	adc  c                                           ; $4367: $89
	sbc  d                                           ; $4368: $9a
	adc  b                                           ; $4369: $88
	sbc  b                                           ; $436a: $98
	adc  b                                           ; $436b: $88
	adc  b                                           ; $436c: $88
	add  a                                           ; $436d: $87
	adc  b                                           ; $436e: $88
	ld   [hl], a                                     ; $436f: $77
	halt                                             ; $4370: $76
	ld   h, [hl]                                     ; $4371: $66
	ld   h, [hl]                                     ; $4372: $66
	ld   h, [hl]                                     ; $4373: $66
	ld   [hl], a                                     ; $4374: $77
	ld   [hl], a                                     ; $4375: $77
	ld   a, b                                        ; $4376: $78
	adc  b                                           ; $4377: $88
	adc  c                                           ; $4378: $89
	adc  c                                           ; $4379: $89
	sbc  b                                           ; $437a: $98
	sbc  c                                           ; $437b: $99
	xor  c                                           ; $437c: $a9
	sbc  c                                           ; $437d: $99
	adc  c                                           ; $437e: $89
	adc  b                                           ; $437f: $88
	sbc  c                                           ; $4380: $99
	sbc  b                                           ; $4381: $98
	sbc  c                                           ; $4382: $99
	sbc  c                                           ; $4383: $99
	sub  a                                           ; $4384: $97
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	ld   [hl], a                                     ; $4388: $77
	ld   [hl], a                                     ; $4389: $77
	ld   [hl], a                                     ; $438a: $77
	ld   h, a                                        ; $438b: $67
	halt                                             ; $438c: $76
	ld   [hl], a                                     ; $438d: $77
	ld   [hl], a                                     ; $438e: $77
	ld   [hl], a                                     ; $438f: $77
	adc  b                                           ; $4390: $88
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  c                                           ; $4394: $89
	adc  c                                           ; $4395: $89
	sbc  c                                           ; $4396: $99

Jump_0a5_4397:
	adc  c                                           ; $4397: $89
	adc  b                                           ; $4398: $88
	sbc  b                                           ; $4399: $98
	sbc  c                                           ; $439a: $99
	adc  b                                           ; $439b: $88
	adc  b                                           ; $439c: $88
	sbc  b                                           ; $439d: $98
	adc  b                                           ; $439e: $88
	ld   [hl], a                                     ; $439f: $77
	ld   [hl], a                                     ; $43a0: $77
	ld   [hl], a                                     ; $43a1: $77
	ld   a, b                                        ; $43a2: $78
	ld   a, b                                        ; $43a3: $78
	sub  a                                           ; $43a4: $97
	ld   a, b                                        ; $43a5: $78
	ld   a, b                                        ; $43a6: $78
	ld   [hl], a                                     ; $43a7: $77
	adc  b                                           ; $43a8: $88
	adc  b                                           ; $43a9: $88
	sbc  b                                           ; $43aa: $98
	adc  c                                           ; $43ab: $89
	adc  c                                           ; $43ac: $89
	sbc  b                                           ; $43ad: $98
	sbc  c                                           ; $43ae: $99
	sbc  b                                           ; $43af: $98
	sbc  b                                           ; $43b0: $98
	sbc  c                                           ; $43b1: $99
	adc  b                                           ; $43b2: $88
	adc  b                                           ; $43b3: $88
	adc  b                                           ; $43b4: $88
	ld   a, b                                        ; $43b5: $78
	adc  b                                           ; $43b6: $88
	add  a                                           ; $43b7: $87
	add  a                                           ; $43b8: $87
	ld   [hl], a                                     ; $43b9: $77
	ld   [hl], a                                     ; $43ba: $77
	ld   a, b                                        ; $43bb: $78
	add  a                                           ; $43bc: $87
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	adc  b                                           ; $43bf: $88
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	sbc  c                                           ; $43c2: $99
	sbc  c                                           ; $43c3: $99
	sbc  b                                           ; $43c4: $98
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	adc  b                                           ; $43c7: $88
	adc  b                                           ; $43c8: $88
	adc  c                                           ; $43c9: $89
	adc  b                                           ; $43ca: $88
	adc  b                                           ; $43cb: $88
	add  a                                           ; $43cc: $87
	adc  b                                           ; $43cd: $88
	ld   a, b                                        ; $43ce: $78
	ld   [hl], a                                     ; $43cf: $77
	adc  b                                           ; $43d0: $88
	adc  b                                           ; $43d1: $88
	ld   a, b                                        ; $43d2: $78
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  c                                           ; $43d7: $89
	sbc  b                                           ; $43d8: $98
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  b                                           ; $43db: $88
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	adc  c                                           ; $43de: $89
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
	add  a                                           ; $4403: $87
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
	ld   a, b                                        ; $441e: $78
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
	adc  b                                           ; $442a: $88
	adc  b                                           ; $442b: $88
	adc  b                                           ; $442c: $88
	adc  b                                           ; $442d: $88
	adc  b                                           ; $442e: $88
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	adc  b                                           ; $4432: $88
	adc  b                                           ; $4433: $88
	adc  b                                           ; $4434: $88
	adc  b                                           ; $4435: $88
	adc  b                                           ; $4436: $88
	adc  b                                           ; $4437: $88
	adc  b                                           ; $4438: $88
	adc  b                                           ; $4439: $88
	adc  b                                           ; $443a: $88
	adc  b                                           ; $443b: $88
	adc  b                                           ; $443c: $88
	adc  b                                           ; $443d: $88
	adc  b                                           ; $443e: $88
	adc  b                                           ; $443f: $88
	adc  b                                           ; $4440: $88
	adc  b                                           ; $4441: $88
	adc  b                                           ; $4442: $88
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
	adc  b                                           ; $4446: $88
	adc  b                                           ; $4447: $88
	adc  b                                           ; $4448: $88
	adc  b                                           ; $4449: $88
	adc  b                                           ; $444a: $88
	adc  b                                           ; $444b: $88
	adc  b                                           ; $444c: $88
	adc  b                                           ; $444d: $88
	adc  b                                           ; $444e: $88
	adc  b                                           ; $444f: $88
	adc  b                                           ; $4450: $88
	adc  b                                           ; $4451: $88
	adc  b                                           ; $4452: $88
	adc  b                                           ; $4453: $88
	adc  b                                           ; $4454: $88
	adc  b                                           ; $4455: $88
	adc  b                                           ; $4456: $88
	adc  b                                           ; $4457: $88
	adc  b                                           ; $4458: $88
	adc  b                                           ; $4459: $88
	adc  b                                           ; $445a: $88
	adc  b                                           ; $445b: $88
	adc  b                                           ; $445c: $88
	adc  b                                           ; $445d: $88
	adc  b                                           ; $445e: $88
	adc  b                                           ; $445f: $88
	adc  b                                           ; $4460: $88
	adc  b                                           ; $4461: $88
	adc  b                                           ; $4462: $88
	adc  b                                           ; $4463: $88
	adc  b                                           ; $4464: $88
	adc  b                                           ; $4465: $88
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	adc  b                                           ; $4468: $88
	adc  b                                           ; $4469: $88
	adc  b                                           ; $446a: $88
	adc  b                                           ; $446b: $88
	adc  b                                           ; $446c: $88
	adc  b                                           ; $446d: $88
	adc  b                                           ; $446e: $88
	adc  b                                           ; $446f: $88
	adc  b                                           ; $4470: $88
	adc  b                                           ; $4471: $88
	adc  b                                           ; $4472: $88
	adc  b                                           ; $4473: $88
	adc  b                                           ; $4474: $88
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	adc  b                                           ; $4477: $88
	adc  b                                           ; $4478: $88
	adc  b                                           ; $4479: $88
	adc  b                                           ; $447a: $88
	adc  b                                           ; $447b: $88
	adc  b                                           ; $447c: $88
	adc  b                                           ; $447d: $88
	adc  b                                           ; $447e: $88
	adc  b                                           ; $447f: $88
	adc  b                                           ; $4480: $88
	adc  b                                           ; $4481: $88
	adc  b                                           ; $4482: $88
	adc  b                                           ; $4483: $88
	adc  b                                           ; $4484: $88
	adc  b                                           ; $4485: $88
	adc  b                                           ; $4486: $88
	adc  b                                           ; $4487: $88
	adc  b                                           ; $4488: $88
	adc  b                                           ; $4489: $88
	adc  b                                           ; $448a: $88
	adc  b                                           ; $448b: $88
	adc  b                                           ; $448c: $88
	adc  b                                           ; $448d: $88
	adc  b                                           ; $448e: $88
	adc  b                                           ; $448f: $88
	adc  b                                           ; $4490: $88
	adc  b                                           ; $4491: $88
	adc  b                                           ; $4492: $88
	adc  b                                           ; $4493: $88
	adc  b                                           ; $4494: $88
	adc  b                                           ; $4495: $88
	adc  b                                           ; $4496: $88
	adc  b                                           ; $4497: $88
	adc  b                                           ; $4498: $88
	adc  b                                           ; $4499: $88
	adc  b                                           ; $449a: $88
	adc  b                                           ; $449b: $88
	adc  b                                           ; $449c: $88
	adc  b                                           ; $449d: $88
	adc  b                                           ; $449e: $88
	adc  b                                           ; $449f: $88
	adc  b                                           ; $44a0: $88
	adc  b                                           ; $44a1: $88
	adc  b                                           ; $44a2: $88
	adc  b                                           ; $44a3: $88
	adc  b                                           ; $44a4: $88
	adc  b                                           ; $44a5: $88
	adc  b                                           ; $44a6: $88
	adc  b                                           ; $44a7: $88
	adc  b                                           ; $44a8: $88
	adc  b                                           ; $44a9: $88
	adc  b                                           ; $44aa: $88
	adc  b                                           ; $44ab: $88
	adc  b                                           ; $44ac: $88
	adc  b                                           ; $44ad: $88
	adc  b                                           ; $44ae: $88
	adc  b                                           ; $44af: $88
	adc  b                                           ; $44b0: $88
	adc  b                                           ; $44b1: $88
	adc  b                                           ; $44b2: $88
	adc  c                                           ; $44b3: $89
	adc  b                                           ; $44b4: $88
	adc  b                                           ; $44b5: $88
	adc  c                                           ; $44b6: $89
	adc  b                                           ; $44b7: $88
	adc  b                                           ; $44b8: $88
	adc  b                                           ; $44b9: $88
	adc  b                                           ; $44ba: $88
	adc  b                                           ; $44bb: $88
	adc  b                                           ; $44bc: $88
	adc  b                                           ; $44bd: $88
	adc  b                                           ; $44be: $88
	adc  b                                           ; $44bf: $88
	adc  b                                           ; $44c0: $88
	adc  b                                           ; $44c1: $88
	sbc  b                                           ; $44c2: $98
	adc  c                                           ; $44c3: $89
	xor  c                                           ; $44c4: $a9
	sub  a                                           ; $44c5: $97
	ld   [hl], a                                     ; $44c6: $77
	sbc  c                                           ; $44c7: $99
	add  a                                           ; $44c8: $87
	ld   [hl], a                                     ; $44c9: $77
	sbc  b                                           ; $44ca: $98
	ld   [hl], a                                     ; $44cb: $77
	ld   a, c                                        ; $44cc: $79
	xor  c                                           ; $44cd: $a9
	sbc  b                                           ; $44ce: $98
	ld   a, b                                        ; $44cf: $78
	xor  d                                           ; $44d0: $aa
	sub  a                                           ; $44d1: $97
	ld   h, [hl]                                     ; $44d2: $66
	adc  c                                           ; $44d3: $89
	adc  b                                           ; $44d4: $88
	ld   [hl], a                                     ; $44d5: $77
	adc  b                                           ; $44d6: $88
	adc  b                                           ; $44d7: $88
	adc  b                                           ; $44d8: $88
	sbc  b                                           ; $44d9: $98
	adc  b                                           ; $44da: $88
	adc  b                                           ; $44db: $88
	adc  b                                           ; $44dc: $88
	ld   [hl], a                                     ; $44dd: $77
	adc  b                                           ; $44de: $88
	adc  b                                           ; $44df: $88
	adc  b                                           ; $44e0: $88
	adc  b                                           ; $44e1: $88
	add  a                                           ; $44e2: $87
	ld   a, b                                        ; $44e3: $78
	sbc  c                                           ; $44e4: $99
	add  a                                           ; $44e5: $87
	ld   a, b                                        ; $44e6: $78
	adc  c                                           ; $44e7: $89
	add  a                                           ; $44e8: $87
	ld   a, b                                        ; $44e9: $78
	adc  c                                           ; $44ea: $89
	add  a                                           ; $44eb: $87
	ld   h, [hl]                                     ; $44ec: $66
	ld   a, d                                        ; $44ed: $7a
	cp   c                                           ; $44ee: $b9
	ld   h, l                                        ; $44ef: $65
	ld   l, b                                        ; $44f0: $68
	sbc  d                                           ; $44f1: $9a
	sbc  b                                           ; $44f2: $98
	ld   [hl], a                                     ; $44f3: $77
	ld   [hl], a                                     ; $44f4: $77
	ld   a, b                                        ; $44f5: $78
	sbc  b                                           ; $44f6: $98
	ld   [hl], a                                     ; $44f7: $77
	ld   [hl], a                                     ; $44f8: $77
	adc  b                                           ; $44f9: $88
	ld   a, b                                        ; $44fa: $78
	ld   [hl], a                                     ; $44fb: $77
	ld   a, c                                        ; $44fc: $79
	adc  b                                           ; $44fd: $88
	sub  a                                           ; $44fe: $97
	sbc  c                                           ; $44ff: $99
	halt                                             ; $4500: $76
	ld   a, c                                        ; $4501: $79
	add  a                                           ; $4502: $87
	ld   a, c                                        ; $4503: $79
	add  a                                           ; $4504: $87
	ld   a, b                                        ; $4505: $78
	adc  b                                           ; $4506: $88
	ld   a, c                                        ; $4507: $79
	and  a                                           ; $4508: $a7
	ld   h, a                                        ; $4509: $67
	xor  c                                           ; $450a: $a9
	ld   h, l                                        ; $450b: $65
	ld   a, c                                        ; $450c: $79
	add  a                                           ; $450d: $87
	ld   h, a                                        ; $450e: $67
	xor  d                                           ; $450f: $aa
	add  [hl]                                        ; $4510: $86
	ld   l, c                                        ; $4511: $69
	sub  a                                           ; $4512: $97
	add  a                                           ; $4513: $87
	ld   a, b                                        ; $4514: $78
	adc  c                                           ; $4515: $89
	add  a                                           ; $4516: $87
	ld   h, a                                        ; $4517: $67
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	ld   a, b                                        ; $451a: $78
	adc  d                                           ; $451b: $8a
	add  [hl]                                        ; $451c: $86
	ld   l, b                                        ; $451d: $68
	sbc  c                                           ; $451e: $99
	ld   [hl], l                                     ; $451f: $75
	sbc  d                                           ; $4520: $9a
	ld   a, b                                        ; $4521: $78
	ld   [hl], a                                     ; $4522: $77
	ld   a, c                                        ; $4523: $79
	adc  b                                           ; $4524: $88
	sub  a                                           ; $4525: $97
	adc  b                                           ; $4526: $88
	sbc  b                                           ; $4527: $98
	ld   a, c                                        ; $4528: $79
	ld   a, b                                        ; $4529: $78
	sub  a                                           ; $452a: $97
	adc  b                                           ; $452b: $88
	ld   a, b                                        ; $452c: $78
	and  a                                           ; $452d: $a7
	ld   a, b                                        ; $452e: $78
	adc  c                                           ; $452f: $89
	add  a                                           ; $4530: $87
	adc  b                                           ; $4531: $88
	adc  c                                           ; $4532: $89
	ld   [hl], a                                     ; $4533: $77
	and  a                                           ; $4534: $a7
	sbc  c                                           ; $4535: $99
	ld   a, c                                        ; $4536: $79
	sbc  b                                           ; $4537: $98
	adc  b                                           ; $4538: $88
	ld   l, c                                        ; $4539: $69
	adc  c                                           ; $453a: $89
	and  [hl]                                        ; $453b: $a6
	ld   a, c                                        ; $453c: $79
	sbc  b                                           ; $453d: $98
	add  a                                           ; $453e: $87
	sbc  d                                           ; $453f: $9a
	ld   a, c                                        ; $4540: $79
	adc  c                                           ; $4541: $89
	halt                                             ; $4542: $76
	sbc  c                                           ; $4543: $99
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	sbc  c                                           ; $4546: $99
	add  a                                           ; $4547: $87
	sbc  c                                           ; $4548: $99
	ld   a, c                                        ; $4549: $79
	ld   a, c                                        ; $454a: $79
	add  a                                           ; $454b: $87
	adc  c                                           ; $454c: $89
	sbc  b                                           ; $454d: $98
	adc  b                                           ; $454e: $88
	adc  b                                           ; $454f: $88
	ld   a, b                                        ; $4550: $78
	sbc  c                                           ; $4551: $99
	adc  c                                           ; $4552: $89
	ld   a, b                                        ; $4553: $78
	sbc  b                                           ; $4554: $98
	ld   a, b                                        ; $4555: $78
	adc  b                                           ; $4556: $88
	sbc  b                                           ; $4557: $98
	add  a                                           ; $4558: $87
	ld   a, c                                        ; $4559: $79
	add  a                                           ; $455a: $87
	ld   a, c                                        ; $455b: $79
	sbc  c                                           ; $455c: $99
	adc  b                                           ; $455d: $88
	xor  b                                           ; $455e: $a8
	ld   a, b                                        ; $455f: $78
	adc  c                                           ; $4560: $89
	sub  a                                           ; $4561: $97
	adc  c                                           ; $4562: $89
	ld   [hl], a                                     ; $4563: $77
	adc  b                                           ; $4564: $88
	adc  b                                           ; $4565: $88
	ld   a, b                                        ; $4566: $78
	adc  c                                           ; $4567: $89
	adc  c                                           ; $4568: $89
	adc  b                                           ; $4569: $88
	sbc  b                                           ; $456a: $98
	adc  b                                           ; $456b: $88
	sbc  b                                           ; $456c: $98
	sbc  b                                           ; $456d: $98
	adc  c                                           ; $456e: $89
	ld   a, b                                        ; $456f: $78
	sbc  c                                           ; $4570: $99
	ld   a, c                                        ; $4571: $79
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88
	sbc  b                                           ; $4574: $98
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	adc  c                                           ; $4577: $89
	add  a                                           ; $4578: $87
	sbc  c                                           ; $4579: $99
	sbc  b                                           ; $457a: $98
	adc  b                                           ; $457b: $88
	ld   a, b                                        ; $457c: $78
	add  a                                           ; $457d: $87
	sbc  b                                           ; $457e: $98
	adc  b                                           ; $457f: $88
	adc  b                                           ; $4580: $88
	ld   a, b                                        ; $4581: $78
	adc  b                                           ; $4582: $88
	sub  a                                           ; $4583: $97
	adc  b                                           ; $4584: $88
	adc  b                                           ; $4585: $88
	adc  c                                           ; $4586: $89
	adc  b                                           ; $4587: $88
	sbc  c                                           ; $4588: $99
	adc  b                                           ; $4589: $88
	adc  c                                           ; $458a: $89
	adc  b                                           ; $458b: $88
	sub  a                                           ; $458c: $97
	adc  b                                           ; $458d: $88
	adc  b                                           ; $458e: $88
	sbc  c                                           ; $458f: $99
	ld   a, b                                        ; $4590: $78
	adc  b                                           ; $4591: $88
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	sub  a                                           ; $4594: $97
	adc  b                                           ; $4595: $88
	ld   a, c                                        ; $4596: $79
	add  a                                           ; $4597: $87
	adc  b                                           ; $4598: $88
	adc  b                                           ; $4599: $88
	adc  c                                           ; $459a: $89
	adc  b                                           ; $459b: $88
	sbc  b                                           ; $459c: $98
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	adc  c                                           ; $45a1: $89
	add  a                                           ; $45a2: $87
	adc  b                                           ; $45a3: $88
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	sbc  b                                           ; $45a9: $98
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	sbc  b                                           ; $45ae: $98
	adc  c                                           ; $45af: $89
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	adc  b                                           ; $45b6: $88
	sbc  b                                           ; $45b7: $98
	adc  b                                           ; $45b8: $88
	ld   a, b                                        ; $45b9: $78
	adc  b                                           ; $45ba: $88
	adc  b                                           ; $45bb: $88
	add  a                                           ; $45bc: $87
	add  a                                           ; $45bd: $87
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	adc  b                                           ; $45c0: $88
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	adc  b                                           ; $45c3: $88
	adc  b                                           ; $45c4: $88
	adc  b                                           ; $45c5: $88
	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	adc  b                                           ; $45c8: $88
	adc  b                                           ; $45c9: $88
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	adc  b                                           ; $45d0: $88
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  b                                           ; $45d5: $88
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  b                                           ; $45dd: $88
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	adc  b                                           ; $45e3: $88
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  b                                           ; $45ed: $88
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
	adc  b                                           ; $45f1: $88
	adc  b                                           ; $45f2: $88
	adc  b                                           ; $45f3: $88
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88
	adc  b                                           ; $45f9: $88
	adc  b                                           ; $45fa: $88
	adc  b                                           ; $45fb: $88
	adc  b                                           ; $45fc: $88
	adc  b                                           ; $45fd: $88
	adc  b                                           ; $45fe: $88
	adc  b                                           ; $45ff: $88
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	adc  b                                           ; $4602: $88
	adc  b                                           ; $4603: $88
	adc  b                                           ; $4604: $88
	adc  b                                           ; $4605: $88
	adc  b                                           ; $4606: $88
	adc  b                                           ; $4607: $88
	adc  b                                           ; $4608: $88
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	adc  b                                           ; $460f: $88
	sbc  b                                           ; $4610: $98
	adc  b                                           ; $4611: $88
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	adc  b                                           ; $4614: $88
	adc  b                                           ; $4615: $88
	adc  b                                           ; $4616: $88
	adc  b                                           ; $4617: $88
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	ld   a, b                                        ; $461b: $78
	adc  b                                           ; $461c: $88
	adc  b                                           ; $461d: $88
	adc  b                                           ; $461e: $88
	adc  b                                           ; $461f: $88
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	adc  c                                           ; $4628: $89
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	ld   a, c                                        ; $4630: $79
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  b                                           ; $4636: $88
	adc  b                                           ; $4637: $88
	sbc  b                                           ; $4638: $98
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  b                                           ; $463b: $88
	adc  c                                           ; $463c: $89
	add  a                                           ; $463d: $87
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	adc  c                                           ; $4640: $89
	sbc  b                                           ; $4641: $98
	adc  c                                           ; $4642: $89
	ld   a, b                                        ; $4643: $78
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	adc  b                                           ; $4647: $88
	sub  a                                           ; $4648: $97
	adc  b                                           ; $4649: $88
	add  a                                           ; $464a: $87
	adc  c                                           ; $464b: $89
	adc  c                                           ; $464c: $89
	ld   a, b                                        ; $464d: $78
	sbc  b                                           ; $464e: $98
	sub  a                                           ; $464f: $97
	adc  b                                           ; $4650: $88
	ld   a, b                                        ; $4651: $78
	adc  b                                           ; $4652: $88
	sbc  b                                           ; $4653: $98
	adc  b                                           ; $4654: $88
	adc  c                                           ; $4655: $89
	adc  b                                           ; $4656: $88
	add  a                                           ; $4657: $87
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	sbc  b                                           ; $465a: $98
	adc  b                                           ; $465b: $88
	adc  b                                           ; $465c: $88
	adc  b                                           ; $465d: $88
	sbc  b                                           ; $465e: $98
	ld   a, c                                        ; $465f: $79
	sub  a                                           ; $4660: $97
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88
	ld   a, b                                        ; $4664: $78
	sub  a                                           ; $4665: $97
	adc  b                                           ; $4666: $88
	add  a                                           ; $4667: $87
	adc  c                                           ; $4668: $89
	ld   a, b                                        ; $4669: $78
	add  a                                           ; $466a: $87
	adc  c                                           ; $466b: $89
	adc  b                                           ; $466c: $88
	adc  c                                           ; $466d: $89
	add  a                                           ; $466e: $87
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  c                                           ; $4673: $89
	adc  b                                           ; $4674: $88

Jump_0a5_4675:
	adc  b                                           ; $4675: $88
	sbc  b                                           ; $4676: $98
	adc  b                                           ; $4677: $88
	adc  b                                           ; $4678: $88
	ld   a, b                                        ; $4679: $78
	sbc  b                                           ; $467a: $98
	adc  c                                           ; $467b: $89
	adc  b                                           ; $467c: $88
	ld   a, c                                        ; $467d: $79
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	sub  a                                           ; $4680: $97
	ld   a, c                                        ; $4681: $79
	sub  a                                           ; $4682: $97
	sbc  c                                           ; $4683: $99

Jump_0a5_4684:
	adc  c                                           ; $4684: $89
	ld   a, b                                        ; $4685: $78
	add  a                                           ; $4686: $87
	ld   a, c                                        ; $4687: $79
	adc  b                                           ; $4688: $88
	sbc  b                                           ; $4689: $98
	adc  b                                           ; $468a: $88
	adc  c                                           ; $468b: $89
	sbc  b                                           ; $468c: $98
	adc  b                                           ; $468d: $88
	ld   [hl], a                                     ; $468e: $77
	sbc  b                                           ; $468f: $98
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88
	ld   a, b                                        ; $4694: $78
	adc  b                                           ; $4695: $88
	ld   [hl], a                                     ; $4696: $77
	adc  b                                           ; $4697: $88
	ld   a, b                                        ; $4698: $78
	sbc  c                                           ; $4699: $99
	ld   [hl], a                                     ; $469a: $77
	ld   a, b                                        ; $469b: $78
	sbc  c                                           ; $469c: $99
	ld   a, c                                        ; $469d: $79
	add  a                                           ; $469e: $87
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	ld   [hl], a                                     ; $46a1: $77
	adc  b                                           ; $46a2: $88
	sbc  b                                           ; $46a3: $98
	adc  b                                           ; $46a4: $88
	sbc  b                                           ; $46a5: $98
	ld   a, b                                        ; $46a6: $78
	adc  b                                           ; $46a7: $88
	add  a                                           ; $46a8: $87
	sbc  b                                           ; $46a9: $98
	sbc  c                                           ; $46aa: $99
	ld   a, b                                        ; $46ab: $78
	adc  c                                           ; $46ac: $89
	adc  c                                           ; $46ad: $89
	sub  a                                           ; $46ae: $97
	adc  c                                           ; $46af: $89
	cp   d                                           ; $46b0: $ba
	sbc  d                                           ; $46b1: $9a
	sbc  c                                           ; $46b2: $99
	ld   h, l                                        ; $46b3: $65
	ld   h, [hl]                                     ; $46b4: $66
	halt                                             ; $46b5: $76
	ld   d, [hl]                                     ; $46b6: $56
	halt                                             ; $46b7: $76
	ld   h, [hl]                                     ; $46b8: $66
	ld   a, b                                        ; $46b9: $78
	adc  c                                           ; $46ba: $89
	sbc  c                                           ; $46bb: $99
	sbc  c                                           ; $46bc: $99
	xor  d                                           ; $46bd: $aa
	cp   e                                           ; $46be: $bb
	cp   e                                           ; $46bf: $bb
	cp   d                                           ; $46c0: $ba
	xor  b                                           ; $46c1: $a8
	ld   [hl], a                                     ; $46c2: $77
	ld   h, l                                        ; $46c3: $65
	ld   b, c                                        ; $46c4: $41
	ld   de, $3213                                   ; $46c5: $11 $13 $32
	inc  h                                           ; $46c8: $24
	sbc  e                                           ; $46c9: $9b
	xor  h                                           ; $46ca: $ac
	rst  $28                                         ; $46cb: $ef
	rst  $38                                         ; $46cc: $ff
	rst  $38                                         ; $46cd: $ff
	rst  $38                                         ; $46ce: $ff
	db   $fc                                         ; $46cf: $fc
	sbc  b                                           ; $46d0: $98
	adc  b                                           ; $46d1: $88
	ld   d, c                                        ; $46d2: $51
	ld   de, $1111                                   ; $46d3: $11 $11 $11
	ld   b, h                                        ; $46d6: $44
	or   e                                           ; $46d7: $b3
	adc  a                                           ; $46d8: $8f
	rst  $38                                         ; $46d9: $ff
	rst  $38                                         ; $46da: $ff
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	ret                                              ; $46dd: $c9


	cp   l                                           ; $46de: $bd
	xor  b                                           ; $46df: $a8
	cp   d                                           ; $46e0: $ba
	add  sp, $11                                     ; $46e1: $e8 $11
	ld   de, $1611                                   ; $46e3: $11 $11 $16
	ld   a, [hl+]                                    ; $46e6: $2a
	jp   $ffff                                       ; $46e7: $c3 $ff $ff


	db   $fd                                         ; $46ea: $fd
	rst  $38                                         ; $46eb: $ff
	cp   d                                           ; $46ec: $ba
	ld   [hl+], a                                    ; $46ed: $22
	xor  e                                           ; $46ee: $ab
	ld   a, h                                        ; $46ef: $7c
	cp   [hl]                                        ; $46f0: $be
	pop  af                                          ; $46f1: $f1
	ld   de, $1111                                   ; $46f2: $11 $11 $11
	ld   sp, $bfdb                                   ; $46f5: $31 $db $bf
	rst  $38                                         ; $46f8: $ff
	rst  $38                                         ; $46f9: $ff
	rst  JumpTable                                         ; $46fa: $df
	rst  $10                                         ; $46fb: $d7
	ld   h, c                                        ; $46fc: $61
	rla                                              ; $46fd: $17
	xor  h                                           ; $46fe: $ac
	cp   $fa                                         ; $46ff: $fe $fa
	ld   de, $1111                                   ; $4701: $11 $11 $11
	inc  d                                           ; $4704: $14
	ld   c, a                                        ; $4705: $4f
	ld   a, a                                        ; $4706: $7f
	rst  $38                                         ; $4707: $ff
	rst  $38                                         ; $4708: $ff
	db   $fc                                         ; $4709: $fc
	push af                                          ; $470a: $f5
	ld   sp, $ce13                                   ; $470b: $31 $13 $ce
	rst  $38                                         ; $470e: $ff
	rst  $38                                         ; $470f: $ff
	ld   h, c                                        ; $4710: $61
	ld   de, $1111                                   ; $4711: $11 $11 $11
	ld   a, e                                        ; $4714: $7b
	db   $fc                                         ; $4715: $fc
	rst  $38                                         ; $4716: $ff
	rst  $38                                         ; $4717: $ff
	rst  $30                                         ; $4718: $f7
	ld   e, a                                        ; $4719: $5f
	ld   de, $5f11                                   ; $471a: $11 $11 $5f
	rst  $38                                         ; $471d: $ff
	rst  $38                                         ; $471e: $ff
	rst  $30                                         ; $471f: $f7
	ld   de, $1111                                   ; $4720: $11 $11 $11
	dec  de                                          ; $4723: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4724: $cf
	rst  $28                                         ; $4725: $ef
	rst  $38                                         ; $4726: $ff
	cp   $11                                         ; $4727: $fe $11
	pop  de                                          ; $4729: $d1
	ld   de, $ff1b                                   ; $472a: $11 $1b $ff
	rst  $38                                         ; $472d: $ff
	rst  $28                                         ; $472e: $ef
	ld   sp, $1111                                   ; $472f: $31 $11 $11
	dec  d                                           ; $4732: $15
	rst  $38                                         ; $4733: $ff
	rst  $38                                         ; $4734: $ff
	rst  $38                                         ; $4735: $ff
	rst  $38                                         ; $4736: $ff
	sub  c                                           ; $4737: $91
	ld   a, [de]                                     ; $4738: $1a
	inc  de                                          ; $4739: $13
	ld   de, $ffff                                   ; $473a: $11 $ff $ff
	db   $db                                         ; $473d: $db
	di                                               ; $473e: $f3
	ld   hl, $1111                                   ; $473f: $21 $11 $11
	db   $fc                                         ; $4742: $fc
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	pop  hl                                          ; $4746: $e1
	ld   a, [de]                                     ; $4747: $1a
	ld   sp, $9f31                                   ; $4748: $31 $31 $9f
	rst  $38                                         ; $474b: $ff
	ld   hl, sp-$02                                  ; $474c: $f8 $fe
	inc  sp                                          ; $474e: $33
	ld   de, $1f11                                   ; $474f: $11 $11 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4752: $cf
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	ld   hl, sp+$11                                  ; $4755: $f8 $11
	pop  bc                                          ; $4757: $c1
	ld   b, c                                        ; $4758: $41
	rra                                              ; $4759: $1f
	rst  $38                                         ; $475a: $ff
	rst  $38                                         ; $475b: $ff
	ld   l, a                                        ; $475c: $6f
	sbc  c                                           ; $475d: $99
	ld   de, $1e11                                   ; $475e: $11 $11 $1e
	rst  $38                                         ; $4761: $ff
	db   $fc                                         ; $4762: $fc
	rst  $38                                         ; $4763: $ff
	rst  $38                                         ; $4764: $ff
	ld   de, $1a38                                   ; $4765: $11 $38 $1a
	ld   de, $ffff                                   ; $4768: $11 $ff $ff
	sbc  b                                           ; $476b: $98
	reti                                             ; $476c: $d9


	pop  de                                          ; $476d: $d1
	ld   de, $fd11                                   ; $476e: $11 $11 $fd
	rst  $38                                         ; $4771: $ff
	rst  JumpTable                                         ; $4772: $df
	rst  $38                                         ; $4773: $ff
	pop  af                                          ; $4774: $f1
	add  hl, de                                      ; $4775: $19
	rla                                              ; $4776: $17
	ld   b, c                                        ; $4777: $41
	adc  [hl]                                        ; $4778: $8e
	rst  $38                                         ; $4779: $ff
	ld   hl, sp-$67                                  ; $477a: $f8 $99
	ret                                              ; $477c: $c9


	ld   de, $7f11                                   ; $477d: $11 $11 $7f
	rst  $38                                         ; $4780: $ff
	adc  a                                           ; $4781: $8f
	rst  $38                                         ; $4782: $ff
	db   $f4                                         ; $4783: $f4
	ld   de, $f174                                   ; $4784: $11 $74 $f1
	dec  d                                           ; $4787: $15
	rst  $38                                         ; $4788: $ff
	rst  $38                                         ; $4789: $ff
	ld   [hl], $8f                                   ; $478a: $36 $8f
	ld   de, $1f11                                   ; $478c: $11 $11 $1f
	rst  $38                                         ; $478f: $ff
	set  7, a                                        ; $4790: $cb $ff
	rst  $38                                         ; $4792: $ff
	ld   de, $f256                                   ; $4793: $11 $56 $f2
	ld   de, $ff1f                                   ; $4796: $11 $1f $ff
	ld   [hl], c                                     ; $4799: $71
	dec  de                                          ; $479a: $1b
	pop  bc                                          ; $479b: $c1
	ld   de, $ef14                                   ; $479c: $11 $14 $ef
	sub  $ff                                         ; $479f: $d6 $ff
	rst  $38                                         ; $47a1: $ff
	add  c                                           ; $47a2: $81
	inc  d                                           ; $47a3: $14
	ld   a, [$1f11]                                  ; $47a4: $fa $11 $1f
	rst  $38                                         ; $47a7: $ff
	pop  bc                                          ; $47a8: $c1
	inc  de                                          ; $47a9: $13
	add  l                                           ; $47aa: $85
	ld   de, rAUD1LEN                                   ; $47ab: $11 $11 $ff
	call z, $ffef                                    ; $47ae: $cc $ef $ff
	ld   sp, hl                                      ; $47b1: $f9
	dec  d                                           ; $47b2: $15
	ld   a, [$16b1]                                  ; $47b3: $fa $b1 $16
	rst  $38                                         ; $47b6: $ff
	db   $e4                                         ; $47b7: $e4
	ld   de, $1127                                   ; $47b8: $11 $27 $11
	ld   de, $ef9f                                   ; $47bb: $11 $9f $ef
	db   $ec                                         ; $47be: $ec
	rst  $38                                         ; $47bf: $ff
	rst  $38                                         ; $47c0: $ff
	ld   d, h                                        ; $47c1: $54
	db   $eb                                         ; $47c2: $eb
	db   $e4                                         ; $47c3: $e4
	inc  d                                           ; $47c4: $14
	ld   a, a                                        ; $47c5: $7f
	ret  c                                           ; $47c6: $d8

	ld   de, $1111                                   ; $47c7: $11 $11 $11
	ld   de, $afaf                                   ; $47ca: $11 $af $af
	xor  $ff                                         ; $47cd: $ee $ff
	rst  $38                                         ; $47cf: $ff
	adc  e                                           ; $47d0: $8b
	jp   z, Jump_0a5_63f4                            ; $47d1: $ca $f4 $63

	ld   l, h                                        ; $47d4: $6c
	cp   b                                           ; $47d5: $b8
	ld   de, $1111                                   ; $47d6: $11 $11 $11
	ld   de, $9fab                                   ; $47d9: $11 $ab $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47dc: $cf
	rst  $38                                         ; $47dd: $ff
	rst  $38                                         ; $47de: $ff
	adc  $db                                         ; $47df: $ce $db
	or   $84                                         ; $47e1: $f6 $84
	ld   a, c                                        ; $47e3: $79
	add  [hl]                                        ; $47e4: $86
	ld   de, $1111                                   ; $47e5: $11 $11 $11
	ld   hl, $7ea7                                   ; $47e8: $21 $a7 $7e
	xor  a                                           ; $47eb: $af
	rst  $38                                         ; $47ec: $ff
	rst  $38                                         ; $47ed: $ff
	rst  $28                                         ; $47ee: $ef
	call c, $95e7                                    ; $47ef: $dc $e7 $95
	add  a                                           ; $47f2: $87
	add  l                                           ; $47f3: $85
	ld   de, $1111                                   ; $47f4: $11 $11 $11
	ld   [hl-], a                                    ; $47f7: $32
	ld   [hl], a                                     ; $47f8: $77
	ld   a, [hl-]                                    ; $47f9: $3a
	adc  l                                           ; $47fa: $8d
	rst  $38                                         ; $47fb: $ff
	rst  $38                                         ; $47fc: $ff
	rst  $38                                         ; $47fd: $ff
	db   $fc                                         ; $47fe: $fc
	ld   sp, hl                                      ; $47ff: $f9
	or   [hl]                                        ; $4800: $b6
	add  a                                           ; $4801: $87
	halt                                             ; $4802: $76
	ld   [de], a                                     ; $4803: $12
	ld   de, $2611                                   ; $4804: $11 $11 $26
	jr   c, jr_0a5_484d                              ; $4807: $38 $44

	halt                                             ; $4809: $76
	xor  h                                           ; $480a: $ac
	db   $dd                                         ; $480b: $dd
	db   $fd                                         ; $480c: $fd
	cp   $ed                                         ; $480d: $fe $ed
	xor  e                                           ; $480f: $ab
	ld   a, c                                        ; $4810: $79
	ld   a, c                                        ; $4811: $79
	ld   h, l                                        ; $4812: $65
	ld   b, h                                        ; $4813: $44
	ld   d, a                                        ; $4814: $57
	add  l                                           ; $4815: $85
	ld   h, h                                        ; $4816: $64
	ld   b, l                                        ; $4817: $45
	ld   b, h                                        ; $4818: $44
	ld   d, e                                        ; $4819: $53
	ld   b, a                                        ; $481a: $47
	sbc  d                                           ; $481b: $9a
	cp   d                                           ; $481c: $ba
	cp   e                                           ; $481d: $bb
	cp   l                                           ; $481e: $bd
	cp   d                                           ; $481f: $ba
	sbc  e                                           ; $4820: $9b
	cp   e                                           ; $4821: $bb
	sbc  c                                           ; $4822: $99
	ld   a, c                                        ; $4823: $79
	cp   h                                           ; $4824: $bc
	jp   z, Jump_0a5_4675                            ; $4825: $ca $75 $46

	ld   h, l                                        ; $4828: $65
	ld   b, d                                        ; $4829: $42
	inc  hl                                          ; $482a: $23
	ld   b, l                                        ; $482b: $45
	ld   d, l                                        ; $482c: $55
	ld   d, a                                        ; $482d: $57
	adc  c                                           ; $482e: $89
	xor  d                                           ; $482f: $aa
	xor  d                                           ; $4830: $aa
	cp   l                                           ; $4831: $bd
	db   $ec                                         ; $4832: $ec
	jp   z, $babb                                    ; $4833: $ca $bb $ba

	xor  c                                           ; $4836: $a9
	add  a                                           ; $4837: $87
	ld   h, [hl]                                     ; $4838: $66
	halt                                             ; $4839: $76
	ld   h, l                                        ; $483a: $65
	ld   b, h                                        ; $483b: $44
	ld   b, h                                        ; $483c: $44
	ld   d, h                                        ; $483d: $54
	ld   b, h                                        ; $483e: $44
	ld   d, a                                        ; $483f: $57
	adc  b                                           ; $4840: $88
	sbc  d                                           ; $4841: $9a
	xor  h                                           ; $4842: $ac
	call z, $aacb                                    ; $4843: $cc $cb $aa
	xor  d                                           ; $4846: $aa
	xor  b                                           ; $4847: $a8
	adc  b                                           ; $4848: $88
	sbc  b                                           ; $4849: $98
	sub  a                                           ; $484a: $97
	halt                                             ; $484b: $76
	ld   h, [hl]                                     ; $484c: $66

jr_0a5_484d:
	ld   h, [hl]                                     ; $484d: $66
	ld   d, [hl]                                     ; $484e: $56
	ld   d, l                                        ; $484f: $55
	ld   h, [hl]                                     ; $4850: $66
	ld   h, [hl]                                     ; $4851: $66
	ld   [hl], a                                     ; $4852: $77
	adc  c                                           ; $4853: $89
	sbc  c                                           ; $4854: $99
	sbc  d                                           ; $4855: $9a
	sbc  c                                           ; $4856: $99
	xor  d                                           ; $4857: $aa
	xor  d                                           ; $4858: $aa
	sbc  d                                           ; $4859: $9a
	adc  b                                           ; $485a: $88
	adc  b                                           ; $485b: $88
	adc  b                                           ; $485c: $88
	ld   a, b                                        ; $485d: $78
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	ld   [hl], a                                     ; $4861: $77
	halt                                             ; $4862: $76
	ld   h, [hl]                                     ; $4863: $66
	ld   d, [hl]                                     ; $4864: $56
	ld   h, [hl]                                     ; $4865: $66
	ld   [hl], a                                     ; $4866: $77
	adc  c                                           ; $4867: $89
	sbc  c                                           ; $4868: $99
	sbc  b                                           ; $4869: $98
	adc  b                                           ; $486a: $88
	sbc  c                                           ; $486b: $99
	sbc  c                                           ; $486c: $99
	sbc  c                                           ; $486d: $99
	sbc  c                                           ; $486e: $99
	xor  c                                           ; $486f: $a9
	adc  c                                           ; $4870: $89
	sbc  c                                           ; $4871: $99
	sbc  b                                           ; $4872: $98
	ld   [hl], a                                     ; $4873: $77
	ld   [hl], a                                     ; $4874: $77
	ld   [hl], a                                     ; $4875: $77
	ld   [hl], a                                     ; $4876: $77
	ld   [hl], a                                     ; $4877: $77
	halt                                             ; $4878: $76
	ld   h, [hl]                                     ; $4879: $66
	ld   h, a                                        ; $487a: $67
	ld   a, b                                        ; $487b: $78
	adc  b                                           ; $487c: $88
	sbc  c                                           ; $487d: $99
	sbc  c                                           ; $487e: $99
	xor  c                                           ; $487f: $a9
	sbc  c                                           ; $4880: $99
	sbc  b                                           ; $4881: $98
	sbc  b                                           ; $4882: $98
	adc  c                                           ; $4883: $89
	sbc  b                                           ; $4884: $98
	adc  b                                           ; $4885: $88
	sbc  c                                           ; $4886: $99
	adc  b                                           ; $4887: $88
	ld   [hl], a                                     ; $4888: $77
	ld   [hl], a                                     ; $4889: $77
	ld   [hl], a                                     ; $488a: $77
	ld   [hl], a                                     ; $488b: $77
	ld   a, b                                        ; $488c: $78
	adc  b                                           ; $488d: $88
	add  a                                           ; $488e: $87
	ld   [hl], a                                     ; $488f: $77
	ld   [hl], a                                     ; $4890: $77
	ld   [hl], a                                     ; $4891: $77
	ld   a, b                                        ; $4892: $78
	adc  b                                           ; $4893: $88
	adc  c                                           ; $4894: $89
	sbc  c                                           ; $4895: $99
	sbc  b                                           ; $4896: $98
	sbc  b                                           ; $4897: $98
	adc  b                                           ; $4898: $88
	adc  c                                           ; $4899: $89
	adc  c                                           ; $489a: $89
	sbc  c                                           ; $489b: $99
	adc  b                                           ; $489c: $88
	adc  b                                           ; $489d: $88
	adc  b                                           ; $489e: $88
	ld   [hl], a                                     ; $489f: $77
	ld   [hl], a                                     ; $48a0: $77
	ld   [hl], a                                     ; $48a1: $77
	ld   a, b                                        ; $48a2: $78
	adc  b                                           ; $48a3: $88
	adc  b                                           ; $48a4: $88
	adc  b                                           ; $48a5: $88
	add  a                                           ; $48a6: $87
	ld   [hl], a                                     ; $48a7: $77
	ld   a, b                                        ; $48a8: $78
	adc  b                                           ; $48a9: $88
	adc  c                                           ; $48aa: $89
	adc  c                                           ; $48ab: $89
	sbc  b                                           ; $48ac: $98
	adc  c                                           ; $48ad: $89
	adc  b                                           ; $48ae: $88
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  c                                           ; $48b2: $89
	sbc  b                                           ; $48b3: $98
	adc  b                                           ; $48b4: $88
	add  a                                           ; $48b5: $87
	ld   [hl], a                                     ; $48b6: $77
	ld   [hl], a                                     ; $48b7: $77
	ld   [hl], a                                     ; $48b8: $77
	ld   a, b                                        ; $48b9: $78
	adc  b                                           ; $48ba: $88
	adc  b                                           ; $48bb: $88
	sbc  b                                           ; $48bc: $98
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	sbc  c                                           ; $48c0: $99
	sbc  b                                           ; $48c1: $98
	adc  c                                           ; $48c2: $89
	sbc  b                                           ; $48c3: $98
	adc  b                                           ; $48c4: $88
	add  a                                           ; $48c5: $87
	ld   [hl], a                                     ; $48c6: $77
	ld   [hl], a                                     ; $48c7: $77
	ld   a, b                                        ; $48c8: $78
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	ld   a, b                                        ; $48cd: $78
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	sbc  c                                           ; $48d0: $99
	sbc  c                                           ; $48d1: $99
	sbc  b                                           ; $48d2: $98
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
	sbc  c                                           ; $48e9: $99
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
	ld   [hl], a                                     ; $48f4: $77
	adc  b                                           ; $48f5: $88
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	sbc  c                                           ; $48f8: $99
	sbc  b                                           ; $48f9: $98
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	ld   [hl], a                                     ; $4903: $77
	ld   [hl], a                                     ; $4904: $77
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
	add  a                                           ; $4912: $87
	ld   [hl], a                                     ; $4913: $77
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	sbc  b                                           ; $4918: $98
	adc  b                                           ; $4919: $88
	adc  b                                           ; $491a: $88
	adc  b                                           ; $491b: $88
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	ld   [hl], a                                     ; $4922: $77
	adc  b                                           ; $4923: $88
	adc  b                                           ; $4924: $88
	adc  b                                           ; $4925: $88
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	adc  b                                           ; $492c: $88
	adc  b                                           ; $492d: $88
	adc  b                                           ; $492e: $88
	adc  b                                           ; $492f: $88
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	adc  b                                           ; $4937: $88
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
	adc  b                                           ; $4946: $88
	adc  b                                           ; $4947: $88
	adc  b                                           ; $4948: $88
	adc  b                                           ; $4949: $88
	adc  b                                           ; $494a: $88
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	adc  b                                           ; $494e: $88
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	adc  b                                           ; $4951: $88
	adc  b                                           ; $4952: $88
	adc  b                                           ; $4953: $88
	adc  b                                           ; $4954: $88
	adc  b                                           ; $4955: $88
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  b                                           ; $495e: $88
	adc  b                                           ; $495f: $88
	adc  b                                           ; $4960: $88
	adc  b                                           ; $4961: $88
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	adc  b                                           ; $4964: $88
	adc  b                                           ; $4965: $88
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	adc  b                                           ; $4979: $88
	adc  b                                           ; $497a: $88
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
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	adc  b                                           ; $499f: $88
	sbc  e                                           ; $49a0: $9b
	cp   c                                           ; $49a1: $b9
	ld   [hl], l                                     ; $49a2: $75
	ld   a, d                                        ; $49a3: $7a
	cp   b                                           ; $49a4: $b8
	ld   h, [hl]                                     ; $49a5: $66
	adc  c                                           ; $49a6: $89
	add  a                                           ; $49a7: $87
	ld   h, a                                        ; $49a8: $67
	adc  c                                           ; $49a9: $89
	sbc  b                                           ; $49aa: $98
	sbc  d                                           ; $49ab: $9a
	xor  b                                           ; $49ac: $a8
	ld   d, l                                        ; $49ad: $55
	ld   a, e                                        ; $49ae: $7b
	ret                                              ; $49af: $c9


	ld   d, e                                        ; $49b0: $53
	ld   e, b                                        ; $49b1: $58
	xor  c                                           ; $49b2: $a9
	halt                                             ; $49b3: $76
	ld   l, c                                        ; $49b4: $69
	xor  d                                           ; $49b5: $aa
	halt                                             ; $49b6: $76
	ld   a, b                                        ; $49b7: $78
	xor  d                                           ; $49b8: $aa
	add  [hl]                                        ; $49b9: $86
	ld   a, b                                        ; $49ba: $78
	adc  c                                           ; $49bb: $89
	ld   [hl], a                                     ; $49bc: $77
	ld   a, b                                        ; $49bd: $78
	adc  b                                           ; $49be: $88
	ld   [hl], a                                     ; $49bf: $77
	ld   a, b                                        ; $49c0: $78
	adc  b                                           ; $49c1: $88
	add  a                                           ; $49c2: $87
	ld   a, b                                        ; $49c3: $78
	adc  b                                           ; $49c4: $88
	ld   [hl], a                                     ; $49c5: $77
	adc  c                                           ; $49c6: $89
	adc  c                                           ; $49c7: $89
	ld   a, b                                        ; $49c8: $78
	sbc  c                                           ; $49c9: $99
	xor  b                                           ; $49ca: $a8
	ld   h, [hl]                                     ; $49cb: $66
	ld   a, c                                        ; $49cc: $79
	sbc  b                                           ; $49cd: $98
	halt                                             ; $49ce: $76
	adc  c                                           ; $49cf: $89
	add  a                                           ; $49d0: $87
	ld   [hl], a                                     ; $49d1: $77
	sbc  d                                           ; $49d2: $9a
	sbc  b                                           ; $49d3: $98
	ld   [hl], a                                     ; $49d4: $77
	adc  c                                           ; $49d5: $89
	sub  a                                           ; $49d6: $97
	ld   a, b                                        ; $49d7: $78
	adc  b                                           ; $49d8: $88
	add  a                                           ; $49d9: $87
	ld   a, c                                        ; $49da: $79
	sbc  c                                           ; $49db: $99
	sbc  b                                           ; $49dc: $98
	ld   a, b                                        ; $49dd: $78
	adc  b                                           ; $49de: $88
	sbc  c                                           ; $49df: $99
	add  a                                           ; $49e0: $87
	ld   a, b                                        ; $49e1: $78
	sbc  b                                           ; $49e2: $98
	ld   [hl], a                                     ; $49e3: $77
	adc  c                                           ; $49e4: $89
	adc  b                                           ; $49e5: $88
	ld   [hl], a                                     ; $49e6: $77
	ld   a, c                                        ; $49e7: $79
	sbc  c                                           ; $49e8: $99
	add  a                                           ; $49e9: $87
	ld   a, b                                        ; $49ea: $78
	sbc  c                                           ; $49eb: $99
	adc  c                                           ; $49ec: $89
	sbc  c                                           ; $49ed: $99
	sbc  b                                           ; $49ee: $98
	sbc  b                                           ; $49ef: $98
	sbc  c                                           ; $49f0: $99
	sub  a                                           ; $49f1: $97
	ld   h, [hl]                                     ; $49f2: $66
	ld   [hl], a                                     ; $49f3: $77
	ld   h, [hl]                                     ; $49f4: $66
	ld   d, l                                        ; $49f5: $55
	ld   h, [hl]                                     ; $49f6: $66
	ld   h, [hl]                                     ; $49f7: $66
	ld   h, a                                        ; $49f8: $67
	sbc  d                                           ; $49f9: $9a
	cp   e                                           ; $49fa: $bb
	call z, $bbdd                                    ; $49fb: $cc $dd $bb
	cp   h                                           ; $49fe: $bc
	cp   e                                           ; $49ff: $bb
	add  [hl]                                        ; $4a00: $86
	ld   d, l                                        ; $4a01: $55
	ld   b, d                                        ; $4a02: $42
	ld   de, $3211                                   ; $4a03: $11 $11 $32
	inc  h                                           ; $4a06: $24
	ld   l, b                                        ; $4a07: $68
	xor  e                                           ; $4a08: $ab
	adc  $ff                                         ; $4a09: $ce $ff
	rst  $38                                         ; $4a0b: $ff
	rst  $38                                         ; $4a0c: $ff
	cp   $b9                                         ; $4a0d: $fe $b9
	ld   [hl], l                                     ; $4a0f: $75
	ld   d, e                                        ; $4a10: $53
	ld   de, $1111                                   ; $4a11: $11 $11 $11
	ld   [hl+], a                                    ; $4a14: $22
	ld   h, $9a                                      ; $4a15: $26 $9a
	adc  $ef                                         ; $4a17: $ce $ef
	rst  $38                                         ; $4a19: $ff
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	cp   $c9                                         ; $4a1c: $fe $c9
	add  l                                           ; $4a1e: $85
	ld   sp, $1111                                   ; $4a1f: $31 $11 $11
	ld   de, $2514                                   ; $4a22: $11 $14 $25
	sbc  e                                           ; $4a25: $9b
	rst  JumpTable                                         ; $4a26: $df
	rst  $38                                         ; $4a27: $ff
	rst  $38                                         ; $4a28: $ff
	rst  $38                                         ; $4a29: $ff
	rst  $38                                         ; $4a2a: $ff
	cp   $d9                                         ; $4a2b: $fe $d9
	halt                                             ; $4a2d: $76
	ld   hl, $1111                                   ; $4a2e: $21 $11 $11
	ld   de, $0603                                   ; $4a31: $11 $03 $06
	xor  l                                           ; $4a34: $ad
	rst  $28                                         ; $4a35: $ef
	rst  $38                                         ; $4a36: $ff
	rst  $38                                         ; $4a37: $ff
	rst  $38                                         ; $4a38: $ff
	rst  $38                                         ; $4a39: $ff
	db   $ed                                         ; $4a3a: $ed
	ret  z                                           ; $4a3b: $c8

	halt                                             ; $4a3c: $76
	ld   de, $1111                                   ; $4a3d: $11 $11 $11
	ld   de, $1a23                                   ; $4a40: $11 $23 $1a
	cp   l                                           ; $4a43: $bd
	rst  $38                                         ; $4a44: $ff
	rst  $38                                         ; $4a45: $ff
	rst  $38                                         ; $4a46: $ff
	rst  $38                                         ; $4a47: $ff
	rst  $38                                         ; $4a48: $ff
	call c, $75a8                                    ; $4a49: $dc $a8 $75
	ld   de, $1111                                   ; $4a4c: $11 $11 $11
	ld   de, $2a34                                   ; $4a4f: $11 $34 $2a
	cp   l                                           ; $4a52: $bd
	rst  $38                                         ; $4a53: $ff
	rst  $38                                         ; $4a54: $ff
	rst  $38                                         ; $4a55: $ff
	cp   $fe                                         ; $4a56: $fe $fe
	cp   e                                           ; $4a58: $bb
	sbc  b                                           ; $4a59: $98
	add  [hl]                                        ; $4a5a: $86
	ld   de, $1111                                   ; $4a5b: $11 $11 $11
	ld   de, $1c35                                   ; $4a5e: $11 $35 $1c
	db   $dd                                         ; $4a61: $dd
	rst  $38                                         ; $4a62: $ff
	rst  $38                                         ; $4a63: $ff
	rst  $38                                         ; $4a64: $ff
	db   $fd                                         ; $4a65: $fd
	cp   $9a                                         ; $4a66: $fe $9a
	sbc  b                                           ; $4a68: $98
	add  [hl]                                        ; $4a69: $86
	ld   de, $1111                                   ; $4a6a: $11 $11 $11
	ld   de, $1917                                   ; $4a6d: $11 $17 $19
	db   $ec                                         ; $4a70: $ec
	rst  $28                                         ; $4a71: $ef
	rst  $38                                         ; $4a72: $ff
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	rst  $28                                         ; $4a75: $ef
	xor  c                                           ; $4a76: $a9
	sbc  c                                           ; $4a77: $99
	adc  b                                           ; $4a78: $88
	ld   de, $1111                                   ; $4a79: $11 $11 $11
	inc  d                                           ; $4a7c: $14
	ld   d, $24                                      ; $4a7d: $16 $24
	db   $fd                                         ; $4a7f: $fd
	rst  JumpTable                                         ; $4a80: $df
	rst  $38                                         ; $4a81: $ff
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a84: $cf
	xor  b                                           ; $4a85: $a8
	sbc  e                                           ; $4a86: $9b
	adc  c                                           ; $4a87: $89
	ld   sp, $1121                                   ; $4a88: $31 $21 $11
	dec  d                                           ; $4a8b: $15
	ld   de, $df61                                   ; $4a8c: $11 $61 $df
	xor  h                                           ; $4a8f: $ac
	rst  $38                                         ; $4a90: $ff
	rst  $38                                         ; $4a91: $ff
	cp   a                                           ; $4a92: $bf
	rst  $38                                         ; $4a93: $ff
	rst  ToBoot                                         ; $4a94: $c7
	adc  e                                           ; $4a95: $8b
	sub  a                                           ; $4a96: $97
	ld   [hl], c                                     ; $4a97: $71
	ld   b, c                                        ; $4a98: $41
	ld   de, $7111                                   ; $4a99: $11 $11 $71
	ld   d, e                                        ; $4a9c: $53
	ld   l, a                                        ; $4a9d: $6f
	xor  c                                           ; $4a9e: $a9
	rst  $38                                         ; $4a9f: $ff
	rst  $38                                         ; $4aa0: $ff
	rst  JumpTable                                         ; $4aa1: $df
	db   $fc                                         ; $4aa2: $fc
	rst  $20                                         ; $4aa3: $e7
	adc  h                                           ; $4aa4: $8c
	and  l                                           ; $4aa5: $a5
	sub  l                                           ; $4aa6: $95
	inc  sp                                          ; $4aa7: $33
	ld   de, $5211                                   ; $4aa8: $11 $11 $52
	rla                                              ; $4aab: $17
	ld   a, [hl+]                                    ; $4aac: $2a
	push af                                          ; $4aad: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aae: $cf
	rst  $38                                         ; $4aaf: $ff
	ei                                               ; $4ab0: $fb
	rst  $38                                         ; $4ab1: $ff
	cp   l                                           ; $4ab2: $bd
	ld   a, h                                        ; $4ab3: $7c
	or   a                                           ; $4ab4: $b7
	ld   l, d                                        ; $4ab5: $6a
	ld   b, l                                        ; $4ab6: $45
	ld   de, $1611                                   ; $4ab7: $11 $11 $16
	ld   de, $cb71                                   ; $4aba: $11 $71 $cb
	ld   c, h                                        ; $4abd: $4c
	rst  $38                                         ; $4abe: $ff
	rst  $38                                         ; $4abf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ac0: $cf
	db   $fd                                         ; $4ac1: $fd
	reti                                             ; $4ac2: $d9


	call c, $8478                                    ; $4ac3: $dc $78 $84
	ld   h, c                                        ; $4ac6: $61
	ld   de, $7111                                   ; $4ac7: $11 $11 $71
	ld   d, $1c                                      ; $4aca: $16 $1c
	and  h                                           ; $4acc: $a4
	cp   [hl]                                        ; $4acd: $be
	rst  JumpTable                                         ; $4ace: $df
	db   $fd                                         ; $4acf: $fd
	cp   $fe                                         ; $4ad0: $fe $fe
	xor  [hl]                                        ; $4ad2: $ae
	ret  z                                           ; $4ad3: $c8

	sbc  b                                           ; $4ad4: $98
	ld   d, a                                        ; $4ad5: $57
	ld   de, $1531                                   ; $4ad6: $11 $31 $15
	ld   d, d                                        ; $4ad9: $52
	ld   h, c                                        ; $4ada: $61
	ld   l, c                                        ; $4adb: $69
	ld   [hl], $78                                   ; $4adc: $36 $78
	call z, $dcae                                    ; $4ade: $cc $ae $dc
	ld   [$a9bb], a                                  ; $4ae1: $ea $bb $a9
	sbc  b                                           ; $4ae4: $98
	xor  c                                           ; $4ae5: $a9
	sbc  c                                           ; $4ae6: $99
	xor  d                                           ; $4ae7: $aa
	xor  d                                           ; $4ae8: $aa
	xor  d                                           ; $4ae9: $aa
	add  a                                           ; $4aea: $87
	ld   d, h                                        ; $4aeb: $54
	inc  sp                                          ; $4aec: $33
	ld   [hl+], a                                    ; $4aed: $22
	ld   [hl+], a                                    ; $4aee: $22
	inc  [hl]                                        ; $4aef: $34
	ld   d, [hl]                                     ; $4af0: $56
	ld   a, c                                        ; $4af1: $79
	sbc  d                                           ; $4af2: $9a
	cp   e                                           ; $4af3: $bb
	set  1, h                                        ; $4af4: $cb $cc
	call z, $bccc                                    ; $4af6: $cc $cc $bc
	cp   d                                           ; $4af9: $ba
	xor  c                                           ; $4afa: $a9
	adc  b                                           ; $4afb: $88
	halt                                             ; $4afc: $76
	ld   d, h                                        ; $4afd: $54
	ld   b, e                                        ; $4afe: $43
	ld   [hl+], a                                    ; $4aff: $22
	inc  hl                                          ; $4b00: $23
	inc  [hl]                                        ; $4b01: $34
	ld   d, [hl]                                     ; $4b02: $56
	ld   a, b                                        ; $4b03: $78
	adc  d                                           ; $4b04: $8a
	xor  d                                           ; $4b05: $aa
	cp   e                                           ; $4b06: $bb
	xor  e                                           ; $4b07: $ab
	xor  d                                           ; $4b08: $aa
	cp   d                                           ; $4b09: $ba
	xor  e                                           ; $4b0a: $ab
	cp   d                                           ; $4b0b: $ba
	cp   e                                           ; $4b0c: $bb
	cp   e                                           ; $4b0d: $bb
	sbc  c                                           ; $4b0e: $99
	sub  a                                           ; $4b0f: $97
	ld   h, l                                        ; $4b10: $65
	ld   b, h                                        ; $4b11: $44
	inc  sp                                          ; $4b12: $33
	inc  [hl]                                        ; $4b13: $34
	ld   b, l                                        ; $4b14: $45
	ld   d, [hl]                                     ; $4b15: $56
	ld   [hl], a                                     ; $4b16: $77
	adc  b                                           ; $4b17: $88
	adc  c                                           ; $4b18: $89
	sbc  b                                           ; $4b19: $98
	adc  c                                           ; $4b1a: $89
	sbc  d                                           ; $4b1b: $9a
	xor  d                                           ; $4b1c: $aa
	xor  e                                           ; $4b1d: $ab
	set  1, h                                        ; $4b1e: $cb $cc
	cp   e                                           ; $4b20: $bb
	cp   d                                           ; $4b21: $ba
	sbc  b                                           ; $4b22: $98
	halt                                             ; $4b23: $76
	ld   h, l                                        ; $4b24: $65
	ld   b, h                                        ; $4b25: $44
	inc  sp                                          ; $4b26: $33
	ld   b, h                                        ; $4b27: $44
	ld   b, l                                        ; $4b28: $45
	ld   d, [hl]                                     ; $4b29: $56
	ld   h, a                                        ; $4b2a: $67
	ld   [hl], a                                     ; $4b2b: $77
	adc  c                                           ; $4b2c: $89
	adc  c                                           ; $4b2d: $89
	xor  d                                           ; $4b2e: $aa
	xor  d                                           ; $4b2f: $aa
	cp   d                                           ; $4b30: $ba
	cp   e                                           ; $4b31: $bb
	cp   h                                           ; $4b32: $bc
	cp   e                                           ; $4b33: $bb
	cp   e                                           ; $4b34: $bb
	xor  d                                           ; $4b35: $aa
	adc  b                                           ; $4b36: $88
	halt                                             ; $4b37: $76
	ld   d, h                                        ; $4b38: $54
	ld   b, e                                        ; $4b39: $43
	inc  sp                                          ; $4b3a: $33
	ld   b, h                                        ; $4b3b: $44
	ld   d, l                                        ; $4b3c: $55
	ld   h, a                                        ; $4b3d: $67
	ld   [hl], a                                     ; $4b3e: $77
	adc  c                                           ; $4b3f: $89
	adc  c                                           ; $4b40: $89
	sbc  c                                           ; $4b41: $99
	xor  d                                           ; $4b42: $aa
	sbc  d                                           ; $4b43: $9a
	cp   e                                           ; $4b44: $bb
	xor  e                                           ; $4b45: $ab
	cp   e                                           ; $4b46: $bb
	cp   e                                           ; $4b47: $bb
	xor  d                                           ; $4b48: $aa
	xor  c                                           ; $4b49: $a9
	add  a                                           ; $4b4a: $87
	ld   h, [hl]                                     ; $4b4b: $66
	ld   d, l                                        ; $4b4c: $55
	ld   b, h                                        ; $4b4d: $44
	ld   b, h                                        ; $4b4e: $44
	ld   b, l                                        ; $4b4f: $45
	ld   d, [hl]                                     ; $4b50: $56
	ld   h, a                                        ; $4b51: $67
	ld   [hl], a                                     ; $4b52: $77
	adc  b                                           ; $4b53: $88
	adc  c                                           ; $4b54: $89
	adc  c                                           ; $4b55: $89
	sbc  d                                           ; $4b56: $9a
	sbc  d                                           ; $4b57: $9a
	xor  d                                           ; $4b58: $aa
	cp   e                                           ; $4b59: $bb
	xor  d                                           ; $4b5a: $aa
	xor  e                                           ; $4b5b: $ab
	xor  d                                           ; $4b5c: $aa
	xor  d                                           ; $4b5d: $aa
	sbc  b                                           ; $4b5e: $98
	ld   [hl], a                                     ; $4b5f: $77
	ld   h, l                                        ; $4b60: $65
	ld   d, h                                        ; $4b61: $54
	ld   b, h                                        ; $4b62: $44
	ld   b, h                                        ; $4b63: $44
	ld   d, l                                        ; $4b64: $55
	ld   h, [hl]                                     ; $4b65: $66
	ld   [hl], a                                     ; $4b66: $77
	ld   a, b                                        ; $4b67: $78
	adc  b                                           ; $4b68: $88
	sbc  b                                           ; $4b69: $98
	sbc  c                                           ; $4b6a: $99
	xor  c                                           ; $4b6b: $a9
	xor  e                                           ; $4b6c: $ab
	cp   d                                           ; $4b6d: $ba
	cp   e                                           ; $4b6e: $bb
	cp   d                                           ; $4b6f: $ba
	cp   d                                           ; $4b70: $ba
	xor  d                                           ; $4b71: $aa
	sbc  b                                           ; $4b72: $98
	ld   [hl], a                                     ; $4b73: $77
	ld   h, [hl]                                     ; $4b74: $66
	ld   d, l                                        ; $4b75: $55
	ld   b, h                                        ; $4b76: $44
	ld   b, h                                        ; $4b77: $44
	ld   d, l                                        ; $4b78: $55
	ld   h, [hl]                                     ; $4b79: $66
	ld   h, a                                        ; $4b7a: $67
	ld   a, b                                        ; $4b7b: $78
	adc  c                                           ; $4b7c: $89
	adc  c                                           ; $4b7d: $89
	sbc  d                                           ; $4b7e: $9a
	xor  c                                           ; $4b7f: $a9
	xor  d                                           ; $4b80: $aa
	xor  e                                           ; $4b81: $ab
	cp   d                                           ; $4b82: $ba
	xor  e                                           ; $4b83: $ab
	cp   d                                           ; $4b84: $ba
	xor  c                                           ; $4b85: $a9
	sbc  b                                           ; $4b86: $98
	add  a                                           ; $4b87: $87
	halt                                             ; $4b88: $76
	ld   d, l                                        ; $4b89: $55
	ld   d, h                                        ; $4b8a: $54
	ld   b, h                                        ; $4b8b: $44
	ld   d, l                                        ; $4b8c: $55
	ld   d, [hl]                                     ; $4b8d: $56
	ld   h, a                                        ; $4b8e: $67
	ld   [hl], a                                     ; $4b8f: $77
	adc  c                                           ; $4b90: $89
	sbc  c                                           ; $4b91: $99
	xor  d                                           ; $4b92: $aa
	sbc  c                                           ; $4b93: $99
	xor  d                                           ; $4b94: $aa
	xor  d                                           ; $4b95: $aa
	xor  d                                           ; $4b96: $aa
	xor  d                                           ; $4b97: $aa
	xor  c                                           ; $4b98: $a9
	sbc  d                                           ; $4b99: $9a
	sbc  c                                           ; $4b9a: $99
	adc  b                                           ; $4b9b: $88
	add  a                                           ; $4b9c: $87
	ld   h, [hl]                                     ; $4b9d: $66
	ld   d, l                                        ; $4b9e: $55
	ld   d, l                                        ; $4b9f: $55
	ld   d, l                                        ; $4ba0: $55
	ld   d, [hl]                                     ; $4ba1: $56
	ld   h, [hl]                                     ; $4ba2: $66
	ld   [hl], a                                     ; $4ba3: $77
	adc  c                                           ; $4ba4: $89
	adc  c                                           ; $4ba5: $89
	sbc  c                                           ; $4ba6: $99
	xor  d                                           ; $4ba7: $aa
	sbc  c                                           ; $4ba8: $99
	sbc  d                                           ; $4ba9: $9a
	sbc  c                                           ; $4baa: $99
	xor  c                                           ; $4bab: $a9
	sbc  c                                           ; $4bac: $99
	xor  d                                           ; $4bad: $aa
	sbc  c                                           ; $4bae: $99
	sbc  b                                           ; $4baf: $98
	adc  b                                           ; $4bb0: $88
	ld   [hl], a                                     ; $4bb1: $77
	ld   h, [hl]                                     ; $4bb2: $66
	ld   d, l                                        ; $4bb3: $55
	ld   d, l                                        ; $4bb4: $55
	ld   d, l                                        ; $4bb5: $55
	ld   d, [hl]                                     ; $4bb6: $56
	ld   h, a                                        ; $4bb7: $67
	ld   a, b                                        ; $4bb8: $78
	sbc  b                                           ; $4bb9: $98
	sbc  c                                           ; $4bba: $99
	xor  h                                           ; $4bbb: $ac
	jp   z, $cbbc                                    ; $4bbc: $ca $bc $cb

	sbc  d                                           ; $4bbf: $9a
	cp   e                                           ; $4bc0: $bb
	xor  d                                           ; $4bc1: $aa
	cp   b                                           ; $4bc2: $b8
	halt                                             ; $4bc3: $76
	halt                                             ; $4bc4: $76
	ld   d, h                                        ; $4bc5: $54
	ld   b, [hl]                                     ; $4bc6: $46
	ld   b, e                                        ; $4bc7: $43
	dec  [hl]                                        ; $4bc8: $35
	ld   h, [hl]                                     ; $4bc9: $66
	ld   d, a                                        ; $4bca: $57
	xor  d                                           ; $4bcb: $aa
	cp   e                                           ; $4bcc: $bb
	call $bccb                                       ; $4bcd: $cd $cb $bc
	res  5, e                                        ; $4bd0: $cb $ab
	xor  b                                           ; $4bd2: $a8
	ld   d, h                                        ; $4bd3: $54
	ld   hl, $2112                                   ; $4bd4: $21 $12 $21
	ld   [de], a                                     ; $4bd7: $12
	ld   d, l                                        ; $4bd8: $55
	scf                                              ; $4bd9: $37
	call z, $ffdf                                    ; $4bda: $cc $df $ff
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	db   $ec                                         ; $4bdf: $ec
	xor  e                                           ; $4be0: $ab
	and  l                                           ; $4be1: $a5
	ld   b, h                                        ; $4be2: $44
	ld   de, $1611                                   ; $4be3: $11 $11 $16
	ld   de, $da89                                   ; $4be6: $11 $89 $da
	ld   l, a                                        ; $4be9: $6f
	db   $fd                                         ; $4bea: $fd
	rst  $38                                         ; $4beb: $ff
	rst  $38                                         ; $4bec: $ff
	sbc  d                                           ; $4bed: $9a
	ld   hl, sp+$16                                  ; $4bee: $f8 $16
	adc  b                                           ; $4bf0: $88
	ld   d, c                                        ; $4bf1: $51
	sub  a                                           ; $4bf2: $97
	ld   de, $8111                                   ; $4bf3: $11 $11 $81
	dec  e                                           ; $4bf6: $1d
	xor  b                                           ; $4bf7: $a8
	rst  $10                                         ; $4bf8: $d7
	rst  $38                                         ; $4bf9: $ff
	sbc  [hl]                                        ; $4bfa: $9e
	rst  $38                                         ; $4bfb: $ff
	ei                                               ; $4bfc: $fb
	adc  a                                           ; $4bfd: $8f
	ld   d, c                                        ; $4bfe: $51
	xor  c                                           ; $4bff: $a9
	ld   a, c                                        ; $4c00: $79
	ld   c, h                                        ; $4c01: $4c
	ld   [hl], c                                     ; $4c02: $71
	ld   de, $3115                                   ; $4c03: $11 $15 $31
	sbc  c                                           ; $4c06: $99
	ld   a, a                                        ; $4c07: $7f
	ld   l, a                                        ; $4c08: $6f
	db   $fc                                         ; $4c09: $fc
	rst  $28                                         ; $4c0a: $ef
	rst  $38                                         ; $4c0b: $ff
	push bc                                          ; $4c0c: $c5
	db   $f4                                         ; $4c0d: $f4
	add  hl, de                                      ; $4c0e: $19
	halt                                             ; $4c0f: $76
	and  l                                           ; $4c10: $a5
	cp   d                                           ; $4c11: $ba
	ld   [de], a                                     ; $4c12: $12
	ld   de, $1966                                   ; $4c13: $11 $66 $19
	and  [hl]                                        ; $4c16: $a6
	and  $ff                                         ; $4c17: $e6 $ff
	call $fcff                                       ; $4c19: $cd $ff $fc
	ld   e, a                                        ; $4c1c: $5f
	ld   b, c                                        ; $4c1d: $41
	xor  b                                           ; $4c1e: $a8
	ld   e, h                                        ; $4c1f: $5c
	ld   l, h                                        ; $4c20: $6c
	and  c                                           ; $4c21: $a1
	ld   hl, $7115                                   ; $4c22: $21 $15 $71
	adc  e                                           ; $4c25: $8b
	ld   l, [hl]                                     ; $4c26: $6e
	ld   l, a                                        ; $4c27: $6f
	db   $fd                                         ; $4c28: $fd
	rst  $28                                         ; $4c29: $ef
	rst  $38                                         ; $4c2a: $ff
	push bc                                          ; $4c2b: $c5
	pop  af                                          ; $4c2c: $f1
	ld   a, [de]                                     ; $4c2d: $1a
	add  [hl]                                        ; $4c2e: $86
	or   a                                           ; $4c2f: $b7
	ret  z                                           ; $4c30: $c8

	ld   [de], a                                     ; $4c31: $12
	ld   de, $1ca3                                   ; $4c32: $11 $a3 $1c
	sub  a                                           ; $4c35: $97
	rst  $10                                         ; $4c36: $d7
	rst  $38                                         ; $4c37: $ff
	xor  a                                           ; $4c38: $af
	db   $fd                                         ; $4c39: $fd
	ld   sp, hl                                      ; $4c3a: $f9
	ld   a, a                                        ; $4c3b: $7f
	ld   de, $7cb6                                   ; $4c3c: $11 $b6 $7c
	ld   l, h                                        ; $4c3f: $6c
	ld   b, c                                        ; $4c40: $41
	ld   hl, $111d                                   ; $4c41: $21 $1d $11
	rst  $30                                         ; $4c44: $f7
	xor  e                                           ; $4c45: $ab
	xor  a                                           ; $4c46: $af
	ld   sp, hl                                      ; $4c47: $f9
	rst  $38                                         ; $4c48: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c49: $cf
	ld   e, e                                        ; $4c4a: $5b
	add  c                                           ; $4c4b: $81
	ld   e, d                                        ; $4c4c: $5a
	ld   e, d                                        ; $4c4d: $5a
	xor  b                                           ; $4c4e: $a8
	or   c                                           ; $4c4f: $b1
	ld   de, $8116                                   ; $4c50: $11 $16 $81
	ld   a, a                                        ; $4c53: $7f
	ld   a, h                                        ; $4c54: $7c
	xor  a                                           ; $4c55: $af
	rst  $38                                         ; $4c56: $ff
	rst  $28                                         ; $4c57: $ef
	db   $fd                                         ; $4c58: $fd
	sub  a                                           ; $4c59: $97
	pop  bc                                          ; $4c5a: $c1
	add  hl, de                                      ; $4c5b: $19
	ld   [hl], a                                     ; $4c5c: $77
	rst  ToBoot                                         ; $4c5d: $c7
	sub  h                                           ; $4c5e: $94
	ld   de, $d111                                   ; $4c5f: $11 $11 $d1
	cpl                                              ; $4c62: $2f
	sbc  d                                           ; $4c63: $9a
	cp   a                                           ; $4c64: $bf
	rst  $38                                         ; $4c65: $ff
	xor  a                                           ; $4c66: $af
	ei                                               ; $4c67: $fb
	or   a                                           ; $4c68: $b7
	jp   nz, $a718                                   ; $4c69: $c2 $18 $a7

	cp   b                                           ; $4c6c: $b8
	ld   h, h                                        ; $4c6d: $64
	ld   de, $b112                                   ; $4c6e: $11 $12 $b1
	cpl                                              ; $4c71: $2f
	xor  c                                           ; $4c72: $a9
	cp   a                                           ; $4c73: $bf
	rst  $38                                         ; $4c74: $ff
	cp   a                                           ; $4c75: $bf
	ld   a, [$b288]                                  ; $4c76: $fa $88 $b2
	jr   z, @-$56                                    ; $4c79: $28 $a8

	cp   c                                           ; $4c7b: $b9
	ld   b, e                                        ; $4c7c: $43
	ld   de, $b115                                   ; $4c7d: $11 $15 $b1
	ld   a, a                                        ; $4c80: $7f
	xor  e                                           ; $4c81: $ab
	cp   a                                           ; $4c82: $bf
	rst  $38                                         ; $4c83: $ff
	xor  a                                           ; $4c84: $af
	ld   hl, sp+$78                                  ; $4c85: $f8 $78
	and  c                                           ; $4c87: $a1
	ld   a, [hl-]                                    ; $4c88: $3a
	rst  ToBoot                                         ; $4c89: $c7
	add  $21                                         ; $4c8a: $c6 $21
	ld   de, $111b                                   ; $4c8c: $11 $1b $11
	rst  $28                                         ; $4c8f: $ef
	cp   e                                           ; $4c90: $bb
	rst  $38                                         ; $4c91: $ff
	ei                                               ; $4c92: $fb
	rst  $38                                         ; $4c93: $ff
	or   [hl]                                        ; $4c94: $b6
	ld   a, c                                        ; $4c95: $79
	add  d                                           ; $4c96: $82
	ld   e, l                                        ; $4c97: $5d
	xor  b                                           ; $4c98: $a8
	sub  c                                           ; $4c99: $91
	ld   de, $8911                                   ; $4c9a: $11 $11 $89
	ld   a, [de]                                     ; $4c9d: $1a

jr_0a5_4c9e:
	db   $fd                                         ; $4c9e: $fd
	call $caff                                       ; $4c9f: $cd $ff $ca
	cp   $66                                         ; $4ca2: $fe $66
	adc  h                                           ; $4ca4: $8c
	inc  [hl]                                        ; $4ca5: $34
	call c, $1167                                    ; $4ca6: $dc $67 $11
	ld   de, $6119                                   ; $4ca9: $11 $19 $61
	rst  JumpTable                                         ; $4cac: $df
	cp   $ff                                         ; $4cad: $fe $ff
	ei                                               ; $4caf: $fb
	cp   a                                           ; $4cb0: $bf
	add  $58                                         ; $4cb1: $c6 $58
	or   e                                           ; $4cb3: $b3
	ld   l, [hl]                                     ; $4cb4: $6e
	rst  ToBoot                                         ; $4cb5: $c7
	ld   b, c                                        ; $4cb6: $41
	ld   de, $b311                                   ; $4cb7: $11 $11 $b3
	rra                                              ; $4cba: $1f
	cp   $ff                                         ; $4cbb: $fe $ff
	rst  $38                                         ; $4cbd: $ff
	sbc  [hl]                                        ; $4cbe: $9e
	ld   sp, hl                                      ; $4cbf: $f9
	ld   h, h                                        ; $4cc0: $64
	cp   e                                           ; $4cc1: $bb
	jr   jr_0a5_4c9e                                 ; $4cc2: $18 $da

	ld   b, c                                        ; $4cc4: $41
	ld   de, $3e11                                   ; $4cc5: $11 $11 $3e
	inc  de                                          ; $4cc8: $13
	rst  $38                                         ; $4cc9: $ff
	cp   $ff                                         ; $4cca: $fe $ff
	or   $ff                                         ; $4ccc: $f6 $ff
	ld   d, l                                        ; $4cce: $55
	ld   e, a                                        ; $4ccf: $5f
	ld   d, e                                        ; $4cd0: $53
	call c, $1161                                    ; $4cd1: $dc $61 $11
	ld   de, $111f                                   ; $4cd4: $11 $1f $11
	rst  $38                                         ; $4cd7: $ff
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	or   $ff                                         ; $4cda: $f6 $ff
	ld   [hl], a                                     ; $4cdc: $77
	ccf                                              ; $4cdd: $3f
	and  d                                           ; $4cde: $a2
	bit  4, c                                        ; $4cdf: $cb $61
	ld   de, $1e11                                   ; $4ce1: $11 $11 $1e
	ld   de, $ffff                                   ; $4ce4: $11 $ff $ff
	rst  $38                                         ; $4ce7: $ff
	ld   sp, hl                                      ; $4ce8: $f9
	rst  $38                                         ; $4ce9: $ff
	sbc  b                                           ; $4cea: $98
	ld   e, a                                        ; $4ceb: $5f
	or   h                                           ; $4cec: $b4
	ret                                              ; $4ced: $c9


	ld   d, c                                        ; $4cee: $51
	ld   de, $1e11                                   ; $4cef: $11 $11 $1e
	ld   de, $ffff                                   ; $4cf2: $11 $ff $ff
	rst  $38                                         ; $4cf5: $ff
	ld   a, [$88ff]                                  ; $4cf6: $fa $ff $88
	ld   a, a                                        ; $4cf9: $7f
	and  [hl]                                        ; $4cfa: $a6
	ret  z                                           ; $4cfb: $c8

	ld   de, $1111                                   ; $4cfc: $11 $11 $11
	dec  de                                          ; $4cff: $1b
	rla                                              ; $4d00: $17
	rst  $38                                         ; $4d01: $ff
	rst  $38                                         ; $4d02: $ff
	rst  $38                                         ; $4d03: $ff
	ei                                               ; $4d04: $fb
	db   $fd                                         ; $4d05: $fd
	and  a                                           ; $4d06: $a7
	xor  a                                           ; $4d07: $af
	adc  c                                           ; $4d08: $89
	sub  h                                           ; $4d09: $94
	ld   de, $1111                                   ; $4d0a: $11 $11 $11
	add  e                                           ; $4d0d: $83
	rra                                              ; $4d0e: $1f
	rst  $38                                         ; $4d0f: $ff
	rst  $38                                         ; $4d10: $ff

Jump_0a5_4d11:
	rst  $38                                         ; $4d11: $ff
	rst  JumpTable                                         ; $4d12: $df
	ld   sp, hl                                      ; $4d13: $f9
	xor  d                                           ; $4d14: $aa
	cp   $7a                                         ; $4d15: $fe $7a
	ld   h, c                                        ; $4d17: $61

jr_0a5_4d18:
	ld   de, $1111                                   ; $4d18: $11 $11 $11
	sub  c                                           ; $4d1b: $91
	ld   e, [hl]                                     ; $4d1c: $5e
	rst  $38                                         ; $4d1d: $ff
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	cp   a                                           ; $4d20: $bf
	jp   c, $fcab                                    ; $4d21: $da $ab $fc

	add  [hl]                                        ; $4d24: $86
	ld   b, c                                        ; $4d25: $41
	ld   de, $1211                                   ; $4d26: $11 $11 $12
	ld   sp, $ffbf                                   ; $4d29: $31 $bf $ff
	rst  $38                                         ; $4d2c: $ff
	rst  $38                                         ; $4d2d: $ff
	db   $fd                                         ; $4d2e: $fd
	cp   e                                           ; $4d2f: $bb
	sbc  l                                           ; $4d30: $9d
	reti                                             ; $4d31: $d9


	ld   [hl], e                                     ; $4d32: $73
	ld   de, $1111                                   ; $4d33: $11 $11 $11
	inc  de                                          ; $4d36: $13
	jr   z, jr_0a5_4d18                              ; $4d37: $28 $df

	rst  $38                                         ; $4d39: $ff
	rst  $38                                         ; $4d3a: $ff
	rst  $38                                         ; $4d3b: $ff
	set  1, d                                        ; $4d3c: $cb $ca
	call c, Call_0a5_41b9                            ; $4d3e: $dc $b9 $41
	ld   de, $1111                                   ; $4d41: $11 $11 $11
	inc  sp                                          ; $4d44: $33
	add  hl, sp                                      ; $4d45: $39
	rst  $38                                         ; $4d46: $ff
	rst  $38                                         ; $4d47: $ff
	rst  $38                                         ; $4d48: $ff
	db   $fc                                         ; $4d49: $fc
	sbc  $bb                                         ; $4d4a: $de $bb
	call $2194                                       ; $4d4c: $cd $94 $21
	ld   de, $1111                                   ; $4d4f: $11 $11 $11
	ld   d, e                                        ; $4d52: $53
	ld   a, h                                        ; $4d53: $7c
	rst  $38                                         ; $4d54: $ff
	rst  $38                                         ; $4d55: $ff
	rst  $38                                         ; $4d56: $ff
	call c, $badd                                    ; $4d57: $dc $dd $ba
	db   $db                                         ; $4d5a: $db
	ld   [hl], d                                     ; $4d5b: $72
	ld   de, $1111                                   ; $4d5c: $11 $11 $11
	inc  d                                           ; $4d5f: $14
	dec  [hl]                                        ; $4d60: $35
	xor  a                                           ; $4d61: $af
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	cp   $ce                                         ; $4d64: $fe $ce
	call z, $c8ab                                    ; $4d66: $cc $ab $c8
	ld   b, d                                        ; $4d69: $42
	ld   de, $1111                                   ; $4d6a: $11 $11 $11
	inc  h                                           ; $4d6d: $24
	ld   [hl], $af                                   ; $4d6e: $36 $af
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	db   $fc                                         ; $4d72: $fc
	call c, $accb                                    ; $4d73: $dc $cb $ac
	cp   b                                           ; $4d76: $b8
	ld   b, c                                        ; $4d77: $41
	ld   de, $1111                                   ; $4d78: $11 $11 $11
	inc  sp                                          ; $4d7b: $33
	ld   b, a                                        ; $4d7c: $47
	cp   h                                           ; $4d7d: $bc
	rst  $28                                         ; $4d7e: $ef
	rst  $38                                         ; $4d7f: $ff
	db   $fc                                         ; $4d80: $fc
	db   $dd                                         ; $4d81: $dd
	xor  d                                           ; $4d82: $aa
	cp   e                                           ; $4d83: $bb
	sub  [hl]                                        ; $4d84: $96
	ld   b, d                                        ; $4d85: $42
	ld   de, $0111                                   ; $4d86: $11 $11 $01
	inc  [hl]                                        ; $4d89: $34
	ld   d, a                                        ; $4d8a: $57
	xor  h                                           ; $4d8b: $ac
	rst  $28                                         ; $4d8c: $ef
	rst  $38                                         ; $4d8d: $ff
	db   $ed                                         ; $4d8e: $ed
	call c, $aab9                                    ; $4d8f: $dc $b9 $aa
	add  [hl]                                        ; $4d92: $86
	ld   d, c                                        ; $4d93: $51
	ld   de, $2411                                   ; $4d94: $11 $11 $24
	ld   b, h                                        ; $4d97: $44
	ld   l, c                                        ; $4d98: $69
	sbc  d                                           ; $4d99: $9a
	adc  $fd                                         ; $4d9a: $ce $fd
	call z, $aaca                                    ; $4d9c: $cc $ca $aa
	cp   d                                           ; $4d9f: $ba
	sbc  b                                           ; $4da0: $98
	ld   d, l                                        ; $4da1: $55
	ld   [hl-], a                                    ; $4da2: $32
	inc  sp                                          ; $4da3: $33
	ld   b, h                                        ; $4da4: $44
	ld   d, l                                        ; $4da5: $55
	ld   h, a                                        ; $4da6: $67
	ld   a, c                                        ; $4da7: $79
	xor  h                                           ; $4da8: $ac
	db   $dd                                         ; $4da9: $dd
	call z, $99a9                                    ; $4daa: $cc $a9 $99
	xor  e                                           ; $4dad: $ab
	sbc  d                                           ; $4dae: $9a
	sub  [hl]                                        ; $4daf: $96
	ld   b, h                                        ; $4db0: $44
	ld   b, h                                        ; $4db1: $44
	ld   d, [hl]                                     ; $4db2: $56
	ld   h, a                                        ; $4db3: $67
	ld   h, [hl]                                     ; $4db4: $66
	ld   h, [hl]                                     ; $4db5: $66
	ld   a, c                                        ; $4db6: $79
	cp   h                                           ; $4db7: $bc
	res  5, d                                        ; $4db8: $cb $aa
	adc  b                                           ; $4dba: $88
	adc  h                                           ; $4dbb: $8c
	cp   d                                           ; $4dbc: $ba
	or   a                                           ; $4dbd: $b7
	ld   h, a                                        ; $4dbe: $67
	ld   h, [hl]                                     ; $4dbf: $66
	ld   h, a                                        ; $4dc0: $67
	ld   d, [hl]                                     ; $4dc1: $56
	ld   h, l                                        ; $4dc2: $65
	ld   h, a                                        ; $4dc3: $67
	add  a                                           ; $4dc4: $87
	ld   a, d                                        ; $4dc5: $7a
	sbc  b                                           ; $4dc6: $98
	sbc  d                                           ; $4dc7: $9a
	xor  c                                           ; $4dc8: $a9
	add  a                                           ; $4dc9: $87
	cp   e                                           ; $4dca: $bb
	sbc  b                                           ; $4dcb: $98
	cp   d                                           ; $4dcc: $ba
	add  [hl]                                        ; $4dcd: $86
	ld   a, b                                        ; $4dce: $78
	halt                                             ; $4dcf: $76
	ld   h, a                                        ; $4dd0: $67
	halt                                             ; $4dd1: $76
	halt                                             ; $4dd2: $76
	ld   l, c                                        ; $4dd3: $69
	halt                                             ; $4dd4: $76
	ld   a, e                                        ; $4dd5: $7b
	and  a                                           ; $4dd6: $a7
	adc  d                                           ; $4dd7: $8a
	sbc  b                                           ; $4dd8: $98
	adc  d                                           ; $4dd9: $8a
	cp   c                                           ; $4dda: $b9
	adc  c                                           ; $4ddb: $89
	xor  c                                           ; $4ddc: $a9
	ld   e, c                                        ; $4ddd: $59
	add  a                                           ; $4dde: $87
	add  [hl]                                        ; $4ddf: $86
	add  a                                           ; $4de0: $87
	ld   [hl], a                                     ; $4de1: $77
	ld   [hl], a                                     ; $4de2: $77
	add  a                                           ; $4de3: $87
	ld   a, b                                        ; $4de4: $78
	ld   a, c                                        ; $4de5: $79
	adc  c                                           ; $4de6: $89
	xor  d                                           ; $4de7: $aa
	adc  c                                           ; $4de8: $89
	sbc  c                                           ; $4de9: $99
	xor  c                                           ; $4dea: $a9
	adc  b                                           ; $4deb: $88
	sbc  b                                           ; $4dec: $98
	ld   h, a                                        ; $4ded: $67
	sub  a                                           ; $4dee: $97
	ld   [hl], a                                     ; $4def: $77
	adc  d                                           ; $4df0: $8a
	ld   h, a                                        ; $4df1: $67
	adc  c                                           ; $4df2: $89
	ld   a, b                                        ; $4df3: $78
	and  a                                           ; $4df4: $a7
	adc  c                                           ; $4df5: $89
	sbc  c                                           ; $4df6: $99
	adc  c                                           ; $4df7: $89
	sbc  b                                           ; $4df8: $98
	adc  b                                           ; $4df9: $88
	ld   a, b                                        ; $4dfa: $78
	adc  c                                           ; $4dfb: $89
	ld   a, b                                        ; $4dfc: $78
	add  a                                           ; $4dfd: $87
	adc  b                                           ; $4dfe: $88
	sub  a                                           ; $4dff: $97
	adc  b                                           ; $4e00: $88
	adc  c                                           ; $4e01: $89
	ld   a, b                                        ; $4e02: $78
	and  a                                           ; $4e03: $a7
	sbc  c                                           ; $4e04: $99
	ld   a, c                                        ; $4e05: $79
	sub  a                                           ; $4e06: $97
	adc  b                                           ; $4e07: $88
	ld   [hl], a                                     ; $4e08: $77
	ld   a, c                                        ; $4e09: $79
	sbc  b                                           ; $4e0a: $98
	ld   l, c                                        ; $4e0b: $69
	add  a                                           ; $4e0c: $87
	ld   [hl], a                                     ; $4e0d: $77
	xor  b                                           ; $4e0e: $a8
	ld   l, b                                        ; $4e0f: $68
	sbc  d                                           ; $4e10: $9a
	sub  a                                           ; $4e11: $97
	xor  c                                           ; $4e12: $a9
	ld   [hl], a                                     ; $4e13: $77
	adc  d                                           ; $4e14: $8a
	and  a                                           ; $4e15: $a7
	halt                                             ; $4e16: $76
	ld   a, c                                        ; $4e17: $79
	ld   h, a                                        ; $4e18: $67
	sbc  c                                           ; $4e19: $99
	add  [hl]                                        ; $4e1a: $86
	ld   a, c                                        ; $4e1b: $79
	sub  a                                           ; $4e1c: $97
	ld   a, d                                        ; $4e1d: $7a
	xor  b                                           ; $4e1e: $a8
	ld   a, d                                        ; $4e1f: $7a
	ld   [hl], a                                     ; $4e20: $77
	xor  b                                           ; $4e21: $a8
	adc  b                                           ; $4e22: $88
	sub  [hl]                                        ; $4e23: $96
	ld   a, b                                        ; $4e24: $78
	sbc  b                                           ; $4e25: $98
	ld   [hl], a                                     ; $4e26: $77
	ld   a, c                                        ; $4e27: $79
	add  a                                           ; $4e28: $87
	ld   a, b                                        ; $4e29: $78
	add  a                                           ; $4e2a: $87
	adc  b                                           ; $4e2b: $88
	sbc  b                                           ; $4e2c: $98
	ld   a, b                                        ; $4e2d: $78
	sbc  c                                           ; $4e2e: $99
	sbc  b                                           ; $4e2f: $98
	ld   [hl], a                                     ; $4e30: $77
	adc  b                                           ; $4e31: $88
	ld   [hl], a                                     ; $4e32: $77
	sub  a                                           ; $4e33: $97
	ld   [hl], a                                     ; $4e34: $77
	ld   [hl], a                                     ; $4e35: $77
	ld   [hl], a                                     ; $4e36: $77
	ld   a, c                                        ; $4e37: $79
	adc  c                                           ; $4e38: $89
	adc  b                                           ; $4e39: $88
	sbc  b                                           ; $4e3a: $98
	adc  c                                           ; $4e3b: $89
	sbc  c                                           ; $4e3c: $99
	add  a                                           ; $4e3d: $87
	sub  a                                           ; $4e3e: $97
	adc  c                                           ; $4e3f: $89
	ld   [hl], a                                     ; $4e40: $77
	ld   a, b                                        ; $4e41: $78
	add  a                                           ; $4e42: $87
	ld   a, b                                        ; $4e43: $78
	add  a                                           ; $4e44: $87
	adc  b                                           ; $4e45: $88
	sbc  b                                           ; $4e46: $98
	adc  b                                           ; $4e47: $88
	sbc  c                                           ; $4e48: $99
	adc  b                                           ; $4e49: $88
	sbc  b                                           ; $4e4a: $98
	ld   [hl], a                                     ; $4e4b: $77
	ld   a, b                                        ; $4e4c: $78
	adc  b                                           ; $4e4d: $88
	ld   [hl], a                                     ; $4e4e: $77
	adc  b                                           ; $4e4f: $88
	ld   [hl], a                                     ; $4e50: $77
	adc  b                                           ; $4e51: $88
	ld   a, b                                        ; $4e52: $78
	adc  b                                           ; $4e53: $88
	ld   a, b                                        ; $4e54: $78
	adc  b                                           ; $4e55: $88
	adc  b                                           ; $4e56: $88
	sbc  b                                           ; $4e57: $98
	adc  c                                           ; $4e58: $89
	adc  b                                           ; $4e59: $88
	ld   a, b                                        ; $4e5a: $78
	add  a                                           ; $4e5b: $87
	adc  b                                           ; $4e5c: $88
	ld   a, b                                        ; $4e5d: $78
	sub  a                                           ; $4e5e: $97
	ld   a, c                                        ; $4e5f: $79
	sbc  b                                           ; $4e60: $98
	ld   a, b                                        ; $4e61: $78
	adc  b                                           ; $4e62: $88
	adc  c                                           ; $4e63: $89
	adc  b                                           ; $4e64: $88
	adc  b                                           ; $4e65: $88
	sbc  b                                           ; $4e66: $98
	sbc  b                                           ; $4e67: $98
	ld   a, b                                        ; $4e68: $78
	adc  b                                           ; $4e69: $88
	ld   a, b                                        ; $4e6a: $78
	sbc  b                                           ; $4e6b: $98
	ld   [hl], a                                     ; $4e6c: $77
	adc  b                                           ; $4e6d: $88
	adc  b                                           ; $4e6e: $88
	ld   a, b                                        ; $4e6f: $78
	add  a                                           ; $4e70: $87
	adc  c                                           ; $4e71: $89
	sbc  c                                           ; $4e72: $99
	adc  c                                           ; $4e73: $89
	adc  b                                           ; $4e74: $88
	adc  b                                           ; $4e75: $88
	ld   a, b                                        ; $4e76: $78
	ld   a, b                                        ; $4e77: $78
	adc  b                                           ; $4e78: $88
	adc  b                                           ; $4e79: $88
	adc  b                                           ; $4e7a: $88
	add  a                                           ; $4e7b: $87
	ld   a, b                                        ; $4e7c: $78
	adc  b                                           ; $4e7d: $88
	adc  c                                           ; $4e7e: $89
	adc  b                                           ; $4e7f: $88
	ld   a, b                                        ; $4e80: $78
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	add  a                                           ; $4e83: $87
	adc  b                                           ; $4e84: $88
	ld   a, b                                        ; $4e85: $78
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	sbc  b                                           ; $4e8a: $98
	ld   [hl], a                                     ; $4e8b: $77
	sbc  b                                           ; $4e8c: $98
	adc  c                                           ; $4e8d: $89
	sbc  b                                           ; $4e8e: $98
	ld   a, b                                        ; $4e8f: $78
	sbc  b                                           ; $4e90: $98
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	ld   [hl], a                                     ; $4e93: $77
	sbc  b                                           ; $4e94: $98
	ld   [hl], a                                     ; $4e95: $77
	adc  b                                           ; $4e96: $88
	ld   a, b                                        ; $4e97: $78
	sbc  c                                           ; $4e98: $99
	sbc  b                                           ; $4e99: $98
	ld   a, b                                        ; $4e9a: $78
	adc  b                                           ; $4e9b: $88
	adc  c                                           ; $4e9c: $89
	adc  b                                           ; $4e9d: $88
	add  a                                           ; $4e9e: $87
	adc  b                                           ; $4e9f: $88
	ld   [hl], a                                     ; $4ea0: $77
	sbc  b                                           ; $4ea1: $98
	adc  c                                           ; $4ea2: $89
	sbc  b                                           ; $4ea3: $98
	adc  b                                           ; $4ea4: $88
	adc  b                                           ; $4ea5: $88
	adc  b                                           ; $4ea6: $88
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  b                                           ; $4ea9: $88
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  c                                           ; $4eac: $89
	adc  b                                           ; $4ead: $88
	ld   [hl], a                                     ; $4eae: $77
	adc  c                                           ; $4eaf: $89
	add  a                                           ; $4eb0: $87
	adc  c                                           ; $4eb1: $89
	add  a                                           ; $4eb2: $87
	adc  c                                           ; $4eb3: $89
	sbc  b                                           ; $4eb4: $98
	ld   a, b                                        ; $4eb5: $78
	sbc  b                                           ; $4eb6: $98
	adc  b                                           ; $4eb7: $88
	adc  b                                           ; $4eb8: $88
	sbc  b                                           ; $4eb9: $98
	ld   a, b                                        ; $4eba: $78
	adc  b                                           ; $4ebb: $88
	adc  b                                           ; $4ebc: $88
	adc  b                                           ; $4ebd: $88
	ld   a, b                                        ; $4ebe: $78
	sbc  c                                           ; $4ebf: $99
	add  a                                           ; $4ec0: $87
	adc  c                                           ; $4ec1: $89
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	sbc  b                                           ; $4ec4: $98
	ld   a, b                                        ; $4ec5: $78
	adc  b                                           ; $4ec6: $88
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	ld   a, b                                        ; $4eca: $78
	sbc  b                                           ; $4ecb: $98
	ld   a, c                                        ; $4ecc: $79
	sbc  b                                           ; $4ecd: $98
	adc  b                                           ; $4ece: $88
	adc  c                                           ; $4ecf: $89
	adc  c                                           ; $4ed0: $89
	sbc  b                                           ; $4ed1: $98
	sbc  b                                           ; $4ed2: $98
	add  a                                           ; $4ed3: $87
	adc  b                                           ; $4ed4: $88
	add  a                                           ; $4ed5: $87
	adc  c                                           ; $4ed6: $89
	add  a                                           ; $4ed7: $87
	ld   a, c                                        ; $4ed8: $79
	sub  a                                           ; $4ed9: $97
	adc  c                                           ; $4eda: $89
	adc  c                                           ; $4edb: $89
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	ld   a, b                                        ; $4edf: $78
	adc  c                                           ; $4ee0: $89
	add  a                                           ; $4ee1: $87
	sbc  b                                           ; $4ee2: $98
	ld   [hl], a                                     ; $4ee3: $77
	adc  b                                           ; $4ee4: $88
	ld   a, b                                        ; $4ee5: $78
	adc  b                                           ; $4ee6: $88
	sbc  c                                           ; $4ee7: $99
	add  a                                           ; $4ee8: $87
	adc  c                                           ; $4ee9: $89
	adc  b                                           ; $4eea: $88
	adc  b                                           ; $4eeb: $88
	ld   a, c                                        ; $4eec: $79
	ld   [hl], a                                     ; $4eed: $77
	adc  b                                           ; $4eee: $88
	ld   [hl], a                                     ; $4eef: $77
	ld   a, b                                        ; $4ef0: $78
	add  a                                           ; $4ef1: $87
	adc  b                                           ; $4ef2: $88
	adc  c                                           ; $4ef3: $89
	ld   a, b                                        ; $4ef4: $78
	sbc  c                                           ; $4ef5: $99
	adc  c                                           ; $4ef6: $89
	adc  b                                           ; $4ef7: $88
	adc  b                                           ; $4ef8: $88
	adc  b                                           ; $4ef9: $88
	sbc  b                                           ; $4efa: $98
	adc  c                                           ; $4efb: $89
	ld   [hl], a                                     ; $4efc: $77
	ld   a, b                                        ; $4efd: $78
	add  a                                           ; $4efe: $87
	sbc  c                                           ; $4eff: $99
	adc  b                                           ; $4f00: $88
	adc  c                                           ; $4f01: $89
	adc  b                                           ; $4f02: $88
	adc  b                                           ; $4f03: $88
	adc  c                                           ; $4f04: $89
	adc  c                                           ; $4f05: $89
	adc  b                                           ; $4f06: $88
	adc  b                                           ; $4f07: $88
	ld   [hl], a                                     ; $4f08: $77
	adc  b                                           ; $4f09: $88
	sbc  c                                           ; $4f0a: $99
	adc  c                                           ; $4f0b: $89
	adc  b                                           ; $4f0c: $88
	add  a                                           ; $4f0d: $87
	add  a                                           ; $4f0e: $87
	adc  b                                           ; $4f0f: $88
	adc  b                                           ; $4f10: $88
	adc  b                                           ; $4f11: $88
	ld   a, b                                        ; $4f12: $78
	sub  a                                           ; $4f13: $97
	adc  b                                           ; $4f14: $88
	sbc  b                                           ; $4f15: $98
	adc  b                                           ; $4f16: $88
	sub  a                                           ; $4f17: $97
	adc  c                                           ; $4f18: $89
	adc  b                                           ; $4f19: $88
	ld   a, c                                        ; $4f1a: $79
	add  a                                           ; $4f1b: $87
	adc  b                                           ; $4f1c: $88
	ld   a, b                                        ; $4f1d: $78
	adc  b                                           ; $4f1e: $88
	adc  b                                           ; $4f1f: $88
	adc  b                                           ; $4f20: $88
	add  a                                           ; $4f21: $87
	ld   a, c                                        ; $4f22: $79
	sbc  c                                           ; $4f23: $99
	ld   a, b                                        ; $4f24: $78
	sbc  b                                           ; $4f25: $98
	ld   a, b                                        ; $4f26: $78
	sbc  b                                           ; $4f27: $98
	ld   a, c                                        ; $4f28: $79
	adc  b                                           ; $4f29: $88
	add  a                                           ; $4f2a: $87
	adc  b                                           ; $4f2b: $88
	add  a                                           ; $4f2c: $87
	sbc  b                                           ; $4f2d: $98
	add  a                                           ; $4f2e: $87
	ld   a, b                                        ; $4f2f: $78
	adc  b                                           ; $4f30: $88
	sbc  c                                           ; $4f31: $99
	ld   a, c                                        ; $4f32: $79
	sub  a                                           ; $4f33: $97
	ld   [hl], a                                     ; $4f34: $77
	sbc  b                                           ; $4f35: $98
	ld   a, c                                        ; $4f36: $79
	sbc  c                                           ; $4f37: $99
	ld   [hl], a                                     ; $4f38: $77
	sbc  b                                           ; $4f39: $98
	adc  c                                           ; $4f3a: $89
	adc  b                                           ; $4f3b: $88
	add  a                                           ; $4f3c: $87
	adc  b                                           ; $4f3d: $88
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	adc  b                                           ; $4f40: $88
	add  a                                           ; $4f41: $87
	adc  b                                           ; $4f42: $88
	adc  b                                           ; $4f43: $88
	adc  b                                           ; $4f44: $88
	adc  b                                           ; $4f45: $88
	ld   a, b                                        ; $4f46: $78
	sbc  c                                           ; $4f47: $99
	adc  c                                           ; $4f48: $89
	sbc  b                                           ; $4f49: $98
	ld   a, b                                        ; $4f4a: $78
	adc  b                                           ; $4f4b: $88
	adc  b                                           ; $4f4c: $88
	sbc  b                                           ; $4f4d: $98
	ld   [hl], a                                     ; $4f4e: $77
	adc  c                                           ; $4f4f: $89
	ld   [hl], a                                     ; $4f50: $77
	adc  b                                           ; $4f51: $88
	ld   a, c                                        ; $4f52: $79
	adc  c                                           ; $4f53: $89
	add  a                                           ; $4f54: $87
	adc  b                                           ; $4f55: $88
	adc  b                                           ; $4f56: $88
	adc  c                                           ; $4f57: $89
	adc  c                                           ; $4f58: $89
	add  a                                           ; $4f59: $87
	adc  b                                           ; $4f5a: $88
	add  a                                           ; $4f5b: $87
	ld   a, b                                        ; $4f5c: $78
	sbc  c                                           ; $4f5d: $99
	ld   [hl], a                                     ; $4f5e: $77
	sbc  b                                           ; $4f5f: $98
	ld   h, a                                        ; $4f60: $67
	adc  d                                           ; $4f61: $8a
	adc  b                                           ; $4f62: $88
	adc  b                                           ; $4f63: $88
	sub  a                                           ; $4f64: $97
	adc  b                                           ; $4f65: $88
	adc  c                                           ; $4f66: $89
	sub  a                                           ; $4f67: $97
	adc  b                                           ; $4f68: $88
	ld   [hl], a                                     ; $4f69: $77
	ld   a, b                                        ; $4f6a: $78
	adc  c                                           ; $4f6b: $89
	ld   a, b                                        ; $4f6c: $78
	sbc  c                                           ; $4f6d: $99
	halt                                             ; $4f6e: $76
	xor  b                                           ; $4f6f: $a8
	ld   a, b                                        ; $4f70: $78
	adc  b                                           ; $4f71: $88
	add  a                                           ; $4f72: $87
	ld   a, c                                        ; $4f73: $79
	adc  b                                           ; $4f74: $88
	ld   a, c                                        ; $4f75: $79
	sbc  b                                           ; $4f76: $98
	adc  b                                           ; $4f77: $88
	sbc  c                                           ; $4f78: $99
	ld   [hl], a                                     ; $4f79: $77
	sbc  b                                           ; $4f7a: $98
	ld   [hl], a                                     ; $4f7b: $77
	adc  b                                           ; $4f7c: $88
	ld   a, b                                        ; $4f7d: $78
	adc  c                                           ; $4f7e: $89
	add  a                                           ; $4f7f: $87
	adc  c                                           ; $4f80: $89
	adc  b                                           ; $4f81: $88
	ld   a, b                                        ; $4f82: $78
	add  a                                           ; $4f83: $87
	adc  b                                           ; $4f84: $88
	adc  b                                           ; $4f85: $88
	adc  c                                           ; $4f86: $89
	add  a                                           ; $4f87: $87
	sbc  c                                           ; $4f88: $99
	adc  b                                           ; $4f89: $88
	adc  b                                           ; $4f8a: $88
	adc  b                                           ; $4f8b: $88
	adc  b                                           ; $4f8c: $88
	adc  c                                           ; $4f8d: $89
	adc  b                                           ; $4f8e: $88
	adc  b                                           ; $4f8f: $88
	sbc  b                                           ; $4f90: $98
	adc  b                                           ; $4f91: $88
	sub  a                                           ; $4f92: $97
	adc  b                                           ; $4f93: $88
	adc  c                                           ; $4f94: $89
	add  a                                           ; $4f95: $87
	adc  c                                           ; $4f96: $89
	adc  b                                           ; $4f97: $88
	ld   a, b                                        ; $4f98: $78
	sbc  b                                           ; $4f99: $98
	ld   a, b                                        ; $4f9a: $78
	sbc  b                                           ; $4f9b: $98
	ld   [hl], a                                     ; $4f9c: $77
	sbc  c                                           ; $4f9d: $99
	ld   [hl], a                                     ; $4f9e: $77
	adc  c                                           ; $4f9f: $89
	add  a                                           ; $4fa0: $87
	adc  c                                           ; $4fa1: $89
	add  a                                           ; $4fa2: $87
	ld   a, c                                        ; $4fa3: $79
	add  a                                           ; $4fa4: $87
	adc  b                                           ; $4fa5: $88
	ld   [hl], a                                     ; $4fa6: $77
	sbc  c                                           ; $4fa7: $99
	ld   a, b                                        ; $4fa8: $78
	adc  b                                           ; $4fa9: $88
	ld   l, b                                        ; $4faa: $68
	xor  c                                           ; $4fab: $a9
	ld   a, b                                        ; $4fac: $78
	sbc  b                                           ; $4fad: $98
	ld   [hl], a                                     ; $4fae: $77
	sbc  c                                           ; $4faf: $99
	ld   [hl], a                                     ; $4fb0: $77
	sbc  d                                           ; $4fb1: $9a
	ld   [hl], a                                     ; $4fb2: $77
	sbc  c                                           ; $4fb3: $99
	add  [hl]                                        ; $4fb4: $86
	adc  b                                           ; $4fb5: $88
	add  a                                           ; $4fb6: $87
	ld   a, c                                        ; $4fb7: $79
	add  a                                           ; $4fb8: $87
	ld   a, b                                        ; $4fb9: $78
	sbc  b                                           ; $4fba: $98
	ld   a, b                                        ; $4fbb: $78
	adc  b                                           ; $4fbc: $88
	ld   a, b                                        ; $4fbd: $78
	adc  c                                           ; $4fbe: $89
	add  a                                           ; $4fbf: $87
	ld   a, c                                        ; $4fc0: $79
	sub  a                                           ; $4fc1: $97
	ld   a, b                                        ; $4fc2: $78
	sub  a                                           ; $4fc3: $97
	ld   a, b                                        ; $4fc4: $78
	sbc  b                                           ; $4fc5: $98
	ld   a, b                                        ; $4fc6: $78
	sbc  b                                           ; $4fc7: $98
	ld   a, c                                        ; $4fc8: $79
	sbc  b                                           ; $4fc9: $98
	ld   a, b                                        ; $4fca: $78
	adc  c                                           ; $4fcb: $89
	ld   [hl], a                                     ; $4fcc: $77
	adc  b                                           ; $4fcd: $88
	add  a                                           ; $4fce: $87
	ld   a, c                                        ; $4fcf: $79
	add  a                                           ; $4fd0: $87
	ld   a, c                                        ; $4fd1: $79
	sbc  b                                           ; $4fd2: $98
	adc  b                                           ; $4fd3: $88
	sbc  b                                           ; $4fd4: $98
	add  a                                           ; $4fd5: $87
	adc  c                                           ; $4fd6: $89
	sbc  b                                           ; $4fd7: $98
	sbc  b                                           ; $4fd8: $98
	add  a                                           ; $4fd9: $87
	adc  b                                           ; $4fda: $88
	add  a                                           ; $4fdb: $87
	ld   a, b                                        ; $4fdc: $78
	ld   [hl], a                                     ; $4fdd: $77
	ld   a, b                                        ; $4fde: $78
	ld   [hl], a                                     ; $4fdf: $77
	adc  b                                           ; $4fe0: $88
	ld   a, b                                        ; $4fe1: $78
	sbc  b                                           ; $4fe2: $98
	adc  b                                           ; $4fe3: $88
	adc  c                                           ; $4fe4: $89
	sbc  c                                           ; $4fe5: $99
	sbc  b                                           ; $4fe6: $98
	sbc  c                                           ; $4fe7: $99
	sbc  c                                           ; $4fe8: $99
	xor  c                                           ; $4fe9: $a9
	sub  a                                           ; $4fea: $97
	adc  c                                           ; $4feb: $89
	halt                                             ; $4fec: $76
	ld   [hl], a                                     ; $4fed: $77
	ld   h, l                                        ; $4fee: $65
	ld   h, a                                        ; $4fef: $67
	ld   d, h                                        ; $4ff0: $54
	ld   h, a                                        ; $4ff1: $67
	ld   [hl], a                                     ; $4ff2: $77
	ld   a, d                                        ; $4ff3: $7a
	sbc  b                                           ; $4ff4: $98
	xor  h                                           ; $4ff5: $ac
	cp   d                                           ; $4ff6: $ba
	cp   e                                           ; $4ff7: $bb
	cp   d                                           ; $4ff8: $ba
	cp   e                                           ; $4ff9: $bb
	sbc  c                                           ; $4ffa: $99
	sbc  b                                           ; $4ffb: $98
	ld   [hl], l                                     ; $4ffc: $75
	ld   d, l                                        ; $4ffd: $55
	inc  sp                                          ; $4ffe: $33
	ld   b, e                                        ; $4fff: $43
	inc  sp                                          ; $5000: $33
	ld   b, l                                        ; $5001: $45
	ld   b, [hl]                                     ; $5002: $46
	adc  c                                           ; $5003: $89
	sbc  d                                           ; $5004: $9a
	call $efee                                       ; $5005: $cd $ee $ef
	db   $dd                                         ; $5008: $dd
	res  5, c                                        ; $5009: $cb $a9
	sub  a                                           ; $500b: $97
	ld   h, [hl]                                     ; $500c: $66
	ld   d, e                                        ; $500d: $53
	ld   [hl+], a                                    ; $500e: $22
	ld   [hl-], a                                    ; $500f: $32
	inc  hl                                          ; $5010: $23
	ld   b, h                                        ; $5011: $44
	ld   b, l                                        ; $5012: $45
	ld   [hl], a                                     ; $5013: $77
	adc  d                                           ; $5014: $8a
	cp   h                                           ; $5015: $bc
	call $eeef                                       ; $5016: $cd $ef $ee
	db   $ec                                         ; $5019: $ec
	jp   z, Jump_0a5_77a8                            ; $501a: $ca $a8 $77

	ld   h, l                                        ; $501d: $65
	ld   b, h                                        ; $501e: $44
	ld   sp, $3214                                   ; $501f: $31 $14 $32
	ld   b, l                                        ; $5022: $45
	ld   d, h                                        ; $5023: $54
	ld   l, c                                        ; $5024: $69
	sbc  b                                           ; $5025: $98
	cp   l                                           ; $5026: $bd
	call z, $fdef                                    ; $5027: $cc $ef $fd
	db   $ed                                         ; $502a: $ed
	jp   z, $76a9                                    ; $502b: $ca $a9 $76

	ld   h, l                                        ; $502e: $65
	ld   b, e                                        ; $502f: $43
	ld   b, d                                        ; $5030: $42
	inc  d                                           ; $5031: $14
	ld   b, d                                        ; $5032: $42
	ld   b, l                                        ; $5033: $45
	ld   b, h                                        ; $5034: $44
	ld   d, a                                        ; $5035: $57
	add  a                                           ; $5036: $87
	xor  h                                           ; $5037: $ac
	cp   l                                           ; $5038: $bd
	cp   $ff                                         ; $5039: $fe $ff
	xor  $cc                                         ; $503b: $ee $cc
	cp   b                                           ; $503d: $b8
	add  a                                           ; $503e: $87
	ld   h, l                                        ; $503f: $65
	ld   b, h                                        ; $5040: $44
	ld   b, d                                        ; $5041: $42
	inc  de                                          ; $5042: $13
	ld   b, d                                        ; $5043: $42
	inc  [hl]                                        ; $5044: $34
	ld   b, h                                        ; $5045: $44
	ld   d, [hl]                                     ; $5046: $56
	ld   [hl], a                                     ; $5047: $77
	adc  e                                           ; $5048: $8b
	call z, $efef                                    ; $5049: $cc $ef $ef
	rst  $38                                         ; $504c: $ff
	db   $dd                                         ; $504d: $dd
	jp   c, Jump_0a5_7599                            ; $504e: $da $99 $75

	ld   d, h                                        ; $5051: $54
	inc  sp                                          ; $5052: $33
	ld   hl, $2323                                   ; $5053: $21 $23 $23
	ld   b, h                                        ; $5056: $44
	ld   b, [hl]                                     ; $5057: $46
	ld   l, b                                        ; $5058: $68
	adc  b                                           ; $5059: $88
	cp   h                                           ; $505a: $bc
	sbc  $ef                                         ; $505b: $de $ef
	rst  $38                                         ; $505d: $ff
	cp   $cc                                         ; $505e: $fe $cc
	cp   b                                           ; $5060: $b8
	add  [hl]                                        ; $5061: $86
	ld   h, l                                        ; $5062: $65
	ld   b, h                                        ; $5063: $44
	ld   [hl-], a                                    ; $5064: $32
	inc  de                                          ; $5065: $13
	ld   sp, $4434                                   ; $5066: $31 $34 $44
	ld   d, a                                        ; $5069: $57
	ld   [hl], a                                     ; $506a: $77
	sbc  h                                           ; $506b: $9c
	call z, $efff                                    ; $506c: $cc $ff $ef
	cp   $ee                                         ; $506f: $fe $ee
	jp   z, Jump_0a5_7599                            ; $5071: $ca $99 $75

	ld   d, h                                        ; $5074: $54
	inc  sp                                          ; $5075: $33
	ld   sp, $1224                                   ; $5076: $31 $24 $12
	ld   d, e                                        ; $5079: $53
	dec  [hl]                                        ; $507a: $35
	ld   h, [hl]                                     ; $507b: $66
	ld   a, b                                        ; $507c: $78
	cp   e                                           ; $507d: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $507e: $cf
	rst  $38                                         ; $507f: $ff
	rst  $38                                         ; $5080: $ff
	xor  $ed                                         ; $5081: $ee $ed
	cp   d                                           ; $5083: $ba
	sub  a                                           ; $5084: $97
	ld   h, [hl]                                     ; $5085: $66
	ld   d, e                                        ; $5086: $53
	inc  sp                                          ; $5087: $33
	ld   de, $1432                                   ; $5088: $11 $32 $14
	ld   b, e                                        ; $508b: $43
	ld   b, l                                        ; $508c: $45
	ld   a, b                                        ; $508d: $78
	ld   a, d                                        ; $508e: $7a
	set  5, a                                        ; $508f: $cb $ef
	rst  $28                                         ; $5091: $ef
	rst  $38                                         ; $5092: $ff
	db   $fd                                         ; $5093: $fd
	db   $ed                                         ; $5094: $ed
	sbc  d                                           ; $5095: $9a
	sub  [hl]                                        ; $5096: $96
	ld   h, l                                        ; $5097: $65
	inc  sp                                          ; $5098: $33
	ld   [hl+], a                                    ; $5099: $22
	ld   de, $1431                                   ; $509a: $11 $31 $14
	inc  sp                                          ; $509d: $33
	ld   d, [hl]                                     ; $509e: $56
	ld   l, b                                        ; $509f: $68
	sbc  e                                           ; $50a0: $9b
	call $effe                                       ; $50a1: $cd $fe $ef
	rst  $38                                         ; $50a4: $ff
	db   $fd                                         ; $50a5: $fd
	res  5, c                                        ; $50a6: $cb $a9
	halt                                             ; $50a8: $76
	ld   h, h                                        ; $50a9: $64
	ld   b, e                                        ; $50aa: $43
	ld   hl, $2112                                   ; $50ab: $21 $12 $21
	dec  [hl]                                        ; $50ae: $35
	inc  d                                           ; $50af: $14
	ld   h, l                                        ; $50b0: $65
	ld   a, c                                        ; $50b1: $79
	xor  h                                           ; $50b2: $ac
	adc  $fe                                         ; $50b3: $ce $fe
	rst  $38                                         ; $50b5: $ff
	rst  $28                                         ; $50b6: $ef
	cp   $cb                                         ; $50b7: $fe $cb
	sbc  c                                           ; $50b9: $99
	ld   h, [hl]                                     ; $50ba: $66
	ld   h, h                                        ; $50bb: $64
	inc  sp                                          ; $50bc: $33
	ld   hl, $1112                                   ; $50bd: $21 $12 $11
	inc  [hl]                                        ; $50c0: $34
	inc  [hl]                                        ; $50c1: $34
	ld   h, [hl]                                     ; $50c2: $66
	ld   a, c                                        ; $50c3: $79
	cp   l                                           ; $50c4: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c5: $cf
	rst  $38                                         ; $50c6: $ff
	rst  $38                                         ; $50c7: $ff
	rst  $38                                         ; $50c8: $ff
	db   $fd                                         ; $50c9: $fd
	jp   c, Jump_0a5_66a8                            ; $50ca: $da $a8 $66

	ld   d, h                                        ; $50cd: $54
	ld   [hl-], a                                    ; $50ce: $32
	ld   hl, $1112                                   ; $50cf: $21 $12 $11
	ld   b, h                                        ; $50d2: $44
	inc  h                                           ; $50d3: $24
	ld   h, a                                        ; $50d4: $67
	ld   a, c                                        ; $50d5: $79
	call z, $fecf                                    ; $50d6: $cc $cf $fe
	rst  $38                                         ; $50d9: $ff
	cp   $ed                                         ; $50da: $fe $ed
	jp   z, Jump_0a5_66a7                            ; $50dc: $ca $a7 $66

	ld   d, h                                        ; $50df: $54
	ld   b, d                                        ; $50e0: $42
	ld   hl, $1112                                   ; $50e1: $21 $12 $11
	ld   b, e                                        ; $50e4: $43
	dec  h                                           ; $50e5: $25
	ld   h, a                                        ; $50e6: $67
	adc  c                                           ; $50e7: $89
	cp   h                                           ; $50e8: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50e9: $cf
	cp   $ff                                         ; $50ea: $fe $ff
	rst  $38                                         ; $50ec: $ff
	db   $fd                                         ; $50ed: $fd
	jp   z, Jump_0a5_6697                            ; $50ee: $ca $97 $66

	ld   d, h                                        ; $50f1: $54
	inc  sp                                          ; $50f2: $33
	ld   de, $2111                                   ; $50f3: $11 $11 $21
	inc  h                                           ; $50f6: $24
	inc  [hl]                                        ; $50f7: $34
	ld   l, b                                        ; $50f8: $68
	adc  c                                           ; $50f9: $89
	cp   h                                           ; $50fa: $bc
	sbc  $ff                                         ; $50fb: $de $ff
	rst  $38                                         ; $50fd: $ff
	cp   $ee                                         ; $50fe: $fe $ee
	res  3, b                                        ; $5100: $cb $98
	ld   h, [hl]                                     ; $5102: $66
	ld   d, l                                        ; $5103: $55
	inc  sp                                          ; $5104: $33
	ld   sp, $2111                                   ; $5105: $31 $11 $21
	inc  d                                           ; $5108: $14
	ld   b, e                                        ; $5109: $43
	ld   e, b                                        ; $510a: $58
	ld   a, b                                        ; $510b: $78
	call $ffce                                       ; $510c: $cd $ce $ff
	rst  $38                                         ; $510f: $ff
	rst  $38                                         ; $5110: $ff
	sbc  $bb                                         ; $5111: $de $bb
	xor  b                                           ; $5113: $a8
	halt                                             ; $5114: $76
	ld   d, l                                        ; $5115: $55
	ld   b, e                                        ; $5116: $43
	ld   sp, $1211                                   ; $5117: $31 $11 $12
	ld   de, $4743                                   ; $511a: $11 $43 $47
	adc  c                                           ; $511d: $89
	xor  e                                           ; $511e: $ab
	sbc  $ef                                         ; $511f: $de $ef
	rst  $38                                         ; $5121: $ff
	rst  $38                                         ; $5122: $ff
	db   $ed                                         ; $5123: $ed
	res  2, a                                        ; $5124: $cb $97
	halt                                             ; $5126: $76
	ld   d, l                                        ; $5127: $55
	ld   d, e                                        ; $5128: $53
	ld   [hl-], a                                    ; $5129: $32
	ld   de, $1112                                   ; $512a: $11 $12 $11
	inc  [hl]                                        ; $512d: $34
	ld   [hl], $79                                   ; $512e: $36 $79
	xor  h                                           ; $5130: $ac
	adc  $ef                                         ; $5131: $ce $ef
	rst  $38                                         ; $5133: $ff
	rst  $38                                         ; $5134: $ff
	db   $ed                                         ; $5135: $ed
	db   $db                                         ; $5136: $db
	xor  c                                           ; $5137: $a9
	ld   [hl], a                                     ; $5138: $77
	ld   d, l                                        ; $5139: $55
	ld   h, h                                        ; $513a: $64
	inc  [hl]                                        ; $513b: $34
	ld   hl, $2111                                   ; $513c: $21 $11 $21
	inc  d                                           ; $513f: $14
	ld   b, e                                        ; $5140: $43
	ld   a, c                                        ; $5141: $79
	sbc  h                                           ; $5142: $9c
	cp   [hl]                                        ; $5143: $be
	rst  $28                                         ; $5144: $ef
	rst  $38                                         ; $5145: $ff
	rst  $38                                         ; $5146: $ff
	db   $fc                                         ; $5147: $fc
	call c, Call_0a5_77ba                            ; $5148: $dc $ba $77
	ld   h, l                                        ; $514b: $65
	ld   h, l                                        ; $514c: $65
	inc  [hl]                                        ; $514d: $34
	ld   [hl-], a                                    ; $514e: $32
	ld   de, $1111                                   ; $514f: $11 $11 $11
	ld   d, e                                        ; $5152: $53
	ld   e, b                                        ; $5153: $58
	adc  h                                           ; $5154: $8c
	cp   l                                           ; $5155: $bd
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	rst  $38                                         ; $5158: $ff
	cp   $cc                                         ; $5159: $fe $cc
	cp   c                                           ; $515b: $b9
	add  a                                           ; $515c: $87
	halt                                             ; $515d: $76
	ld   h, [hl]                                     ; $515e: $66
	ld   d, h                                        ; $515f: $54
	ld   b, e                                        ; $5160: $43
	ld   de, $1111                                   ; $5161: $11 $11 $11
	dec  d                                           ; $5164: $15
	ld   d, a                                        ; $5165: $57
	adc  h                                           ; $5166: $8c
	call c, $ffff                                    ; $5167: $dc $ff $ff
	rst  $38                                         ; $516a: $ff
	cp   $dd                                         ; $516b: $fe $dd
	xor  c                                           ; $516d: $a9
	sub  a                                           ; $516e: $97
	ld   h, a                                        ; $516f: $67
	ld   h, [hl]                                     ; $5170: $66
	ld   h, l                                        ; $5171: $65
	ld   d, h                                        ; $5172: $54
	ld   de, $1111                                   ; $5173: $11 $11 $11
	inc  de                                          ; $5176: $13
	ld   d, a                                        ; $5177: $57
	adc  d                                           ; $5178: $8a
	rst  $28                                         ; $5179: $ef
	rst  $28                                         ; $517a: $ef
	rst  $38                                         ; $517b: $ff
	cp   $ee                                         ; $517c: $fe $ee
	cp   e                                           ; $517e: $bb
	cp   d                                           ; $517f: $ba
	sbc  b                                           ; $5180: $98
	ld   h, a                                        ; $5181: $67
	ld   [hl], a                                     ; $5182: $77
	halt                                             ; $5183: $76
	ld   h, h                                        ; $5184: $64
	ld   sp, $1111                                   ; $5185: $31 $11 $11

Jump_0a5_5188:
	ld   de, $8b57                                   ; $5188: $11 $57 $8b
	rst  $28                                         ; $518b: $ef
	rst  $38                                         ; $518c: $ff
	rst  $38                                         ; $518d: $ff
	rst  $28                                         ; $518e: $ef
	sbc  $ca                                         ; $518f: $de $ca
	cp   d                                           ; $5191: $ba
	sbc  b                                           ; $5192: $98
	ld   [hl], a                                     ; $5193: $77
	add  a                                           ; $5194: $87
	sbc  b                                           ; $5195: $98
	ld   [hl], l                                     ; $5196: $75
	ld   sp, $1111                                   ; $5197: $31 $11 $11
	ld   de, $ab28                                   ; $519a: $11 $28 $ab
	rst  JumpTable                                         ; $519d: $df
	cp   $ff                                         ; $519e: $fe $ff
	cp   $cc                                         ; $51a0: $fe $cc
	ret                                              ; $51a2: $c9


	sbc  d                                           ; $51a3: $9a
	sbc  c                                           ; $51a4: $99
	adc  b                                           ; $51a5: $88
	sbc  c                                           ; $51a6: $99
	sbc  d                                           ; $51a7: $9a
	add  [hl]                                        ; $51a8: $86
	ld   sp, $1111                                   ; $51a9: $31 $11 $11
	ld   de, $bd17                                   ; $51ac: $11 $17 $bd
	rst  JumpTable                                         ; $51af: $df
	rst  $38                                         ; $51b0: $ff
	rst  $28                                         ; $51b1: $ef
	cp   $aa                                         ; $51b2: $fe $aa
	jp   z, $a988                                    ; $51b4: $ca $88 $a9

	sbc  c                                           ; $51b7: $99
	xor  d                                           ; $51b8: $aa
	cp   d                                           ; $51b9: $ba
	sub  a                                           ; $51ba: $97
	ld   sp, $1111                                   ; $51bb: $31 $11 $11
	ld   de, $df16                                   ; $51be: $11 $16 $df
	rst  $38                                         ; $51c1: $ff
	rst  $38                                         ; $51c2: $ff
	call c, $98dc                                    ; $51c3: $dc $dc $98
	xor  d                                           ; $51c6: $aa
	sbc  c                                           ; $51c7: $99
	xor  e                                           ; $51c8: $ab
	xor  d                                           ; $51c9: $aa
	cp   e                                           ; $51ca: $bb
	res  2, [hl]                                     ; $51cb: $cb $96
	ld   hl, $1111                                   ; $51cd: $21 $11 $11
	ld   de, $ef38                                   ; $51d0: $11 $38 $ef
	rst  $38                                         ; $51d3: $ff
	rst  $38                                         ; $51d4: $ff
	db   $db                                         ; $51d5: $db
	xor  e                                           ; $51d6: $ab
	sbc  b                                           ; $51d7: $98
	sbc  d                                           ; $51d8: $9a
	xor  c                                           ; $51d9: $a9
	sbc  h                                           ; $51da: $9c
	call z, $dbcc                                    ; $51db: $cc $cc $db
	add  h                                           ; $51de: $84
	ld   de, $1111                                   ; $51df: $11 $11 $11
	inc  d                                           ; $51e2: $14
	ld   l, h                                        ; $51e3: $6c
	rst  $38                                         ; $51e4: $ff
	rst  $38                                         ; $51e5: $ff
	rst  $38                                         ; $51e6: $ff
	xor  b                                           ; $51e7: $a8
	sbc  d                                           ; $51e8: $9a
	and  a                                           ; $51e9: $a7
	sbc  e                                           ; $51ea: $9b
	cp   e                                           ; $51eb: $bb
	cp   h                                           ; $51ec: $bc
	db   $ed                                         ; $51ed: $ed
	call z, Call_0a5_62cb                            ; $51ee: $cc $cb $62
	ld   de, $1111                                   ; $51f1: $11 $11 $11
	ld   [hl], $af                                   ; $51f4: $36 $af
	rst  $38                                         ; $51f6: $ff
	rst  $38                                         ; $51f7: $ff
	db   $eb                                         ; $51f8: $eb
	sub  a                                           ; $51f9: $97
	adc  d                                           ; $51fa: $8a
	xor  c                                           ; $51fb: $a9
	set  3, h                                        ; $51fc: $cb $dc
	call $dbed                                       ; $51fe: $cd $ed $db
	and  a                                           ; $5201: $a7
	ld   hl, $1111                                   ; $5202: $21 $11 $11
	ld   de, $ff8c                                   ; $5205: $11 $8c $ff
	rst  $38                                         ; $5208: $ff
	ei                                               ; $5209: $fb
	sbc  c                                           ; $520a: $99
	ld   [hl], a                                     ; $520b: $77
	sbc  d                                           ; $520c: $9a
	cp   h                                           ; $520d: $bc
	cp   l                                           ; $520e: $bd
	call z, $fdee                                    ; $520f: $cc $ee $fd
	cp   d                                           ; $5212: $ba
	ld   h, c                                        ; $5213: $61
	ld   de, $1111                                   ; $5214: $11 $11 $11
	dec  sp                                          ; $5217: $3b
	rst  $28                                         ; $5218: $ef
	rst  $38                                         ; $5219: $ff
	db   $fc                                         ; $521a: $fc
	and  a                                           ; $521b: $a7
	ld   a, b                                        ; $521c: $78
	adc  d                                           ; $521d: $8a
	set  1, e                                        ; $521e: $cb $cb
	call $ffdf                                       ; $5220: $cd $df $ff
	db   $db                                         ; $5223: $db
	add  h                                           ; $5224: $84
	ld   de, $1111                                   ; $5225: $11 $11 $11
	add  hl, de                                      ; $5228: $19
	rst  JumpTable                                         ; $5229: $df
	rst  $38                                         ; $522a: $ff
	cp   $a8                                         ; $522b: $fe $a8
	ld   h, a                                        ; $522d: $67
	sbc  d                                           ; $522e: $9a
	cp   h                                           ; $522f: $bc
	call z, $eecc                                    ; $5230: $cc $cc $ee
	rst  $38                                         ; $5233: $ff
	db   $ec                                         ; $5234: $ec
	add  l                                           ; $5235: $85
	ld   de, $1111                                   ; $5236: $11 $11 $11
	inc  d                                           ; $5239: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $523a: $cf
	rst  $38                                         ; $523b: $ff
	db   $fd                                         ; $523c: $fd
	ret                                              ; $523d: $c9


	ld   b, l                                        ; $523e: $45
	adc  h                                           ; $523f: $8c
	call c, $debd                                    ; $5240: $dc $bd $de
	call $fcff                                       ; $5243: $cd $ff $fc
	add  h                                           ; $5246: $84
	ld   de, $1111                                   ; $5247: $11 $11 $11
	rla                                              ; $524a: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $524b: $cf
	rst  $38                                         ; $524c: $ff
	ld   a, [$579a]                                  ; $524d: $fa $9a $57
	adc  d                                           ; $5250: $8a
	db   $fd                                         ; $5251: $fd
	res  3, l                                        ; $5252: $cb $9d
	rst  $28                                         ; $5254: $ef
	rst  $38                                         ; $5255: $ff
	db   $fc                                         ; $5256: $fc
	ld   [hl], e                                     ; $5257: $73
	ld   de, $1111                                   ; $5258: $11 $11 $11
	ld   a, [de]                                     ; $525b: $1a
	rst  $38                                         ; $525c: $ff
	rst  $38                                         ; $525d: $ff
	ld   [$57a6], a                                  ; $525e: $ea $a6 $57
	xor  l                                           ; $5261: $ad
	call c, $bcca                                    ; $5262: $dc $ca $bc
	rst  $28                                         ; $5265: $ef
	rst  $38                                         ; $5266: $ff
	ld   [$1151], a                                  ; $5267: $ea $51 $11
	ld   de, $8f11                                   ; $526a: $11 $11 $8f
	rst  $38                                         ; $526d: $ff
	cp   $88                                         ; $526e: $fe $88
	ld   d, h                                        ; $5270: $54
	ld   e, d                                        ; $5271: $5a
	rst  $38                                         ; $5272: $ff
	db   $ec                                         ; $5273: $ec
	xor  d                                           ; $5274: $aa
	call $ffff                                       ; $5275: $cd $ff $ff
	push bc                                          ; $5278: $c5
	ld   de, $1111                                   ; $5279: $11 $11 $11
	ld   e, $ff                                      ; $527c: $1e $ff
	cp   $a8                                         ; $527e: $fe $a8
	and  [hl]                                        ; $5280: $a6
	ld   e, c                                        ; $5281: $59
	cp   a                                           ; $5282: $bf
	jp   c, $ae77                                    ; $5283: $da $77 $ae

	rst  $38                                         ; $5286: $ff
	rst  $38                                         ; $5287: $ff
	rst  $20                                         ; $5288: $e7
	ld   de, $1111                                   ; $5289: $11 $11 $11
	rla                                              ; $528c: $17
	rst  $38                                         ; $528d: $ff
	rst  $38                                         ; $528e: $ff
	cp   b                                           ; $528f: $b8
	xor  b                                           ; $5290: $a8
	sbc  c                                           ; $5291: $99
	xor  l                                           ; $5292: $ad
	db   $db                                         ; $5293: $db
	add  [hl]                                        ; $5294: $86
	sbc  l                                           ; $5295: $9d
	rst  $38                                         ; $5296: $ff
	rst  $38                                         ; $5297: $ff

Jump_0a5_5298:
	jp   hl                                          ; $5298: $e9


	ld   de, $1111                                   ; $5299: $11 $11 $11
	inc  e                                           ; $529c: $1c
	rst  $38                                         ; $529d: $ff
	rst  $38                                         ; $529e: $ff
	and  [hl]                                        ; $529f: $a6
	ld   h, [hl]                                     ; $52a0: $66
	xor  h                                           ; $52a1: $ac
	rst  $38                                         ; $52a2: $ff
	ld   a, [$5a64]                                  ; $52a3: $fa $64 $5a
	rst  $38                                         ; $52a6: $ff
	rst  $38                                         ; $52a7: $ff
	call nc, $1111                                   ; $52a8: $d4 $11 $11
	ld   de, $ffff                                   ; $52ab: $11 $ff $ff
	push hl                                          ; $52ae: $e5
	ld   [hl], $9d                                   ; $52af: $36 $9d
	rst  $38                                         ; $52b1: $ff
	rst  $38                                         ; $52b2: $ff
	sub  h                                           ; $52b3: $94
	inc  de                                          ; $52b4: $13
	xor  a                                           ; $52b5: $af
	rst  $38                                         ; $52b6: $ff
	ld   a, [$1111]                                  ; $52b7: $fa $11 $11
	ld   de, $ffdf                                   ; $52ba: $11 $df $ff
	ld   a, [$5925]                                  ; $52bd: $fa $25 $59
	rst  $28                                         ; $52c0: $ef
	rst  $38                                         ; $52c1: $ff
	jp   Jump_0a5_6d11                               ; $52c2: $c3 $11 $6d


	rst  $38                                         ; $52c5: $ff
	rst  $38                                         ; $52c6: $ff
	ld   hl, $1111                                   ; $52c7: $21 $11 $11
	cp   a                                           ; $52ca: $bf
	rst  $38                                         ; $52cb: $ff
	or   $12                                         ; $52cc: $f6 $12
	ld   e, e                                        ; $52ce: $5b
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	db   $d3                                         ; $52d1: $d3
	ld   de, $ff1a                                   ; $52d2: $11 $1a $ff
	rst  $38                                         ; $52d5: $ff
	ld   de, $1211                                   ; $52d6: $11 $11 $12
	rst  $38                                         ; $52d9: $ff
	rst  $38                                         ; $52da: $ff
	jp   Jump_0a5_4d11                               ; $52db: $c3 $11 $4d


	rst  $38                                         ; $52de: $ff
	rst  $38                                         ; $52df: $ff
	ld   h, c                                        ; $52e0: $61
	ld   de, $ff5f                                   ; $52e1: $11 $5f $ff
	or   $11                                         ; $52e4: $f6 $11
	ld   de, $ff2f                                   ; $52e6: $11 $2f $ff
	rst  $30                                         ; $52e9: $f7
	ld   de, $ef14                                   ; $52ea: $11 $14 $ef
	rst  $38                                         ; $52ed: $ff
	ld   hl, sp+$11                                  ; $52ee: $f8 $11
	ld   [de], a                                     ; $52f0: $12
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	ld   de, $1f11                                   ; $52f3: $11 $11 $1f
	rst  $38                                         ; $52f6: $ff
	db   $fc                                         ; $52f7: $fc
	ld   hl, $5f11                                   ; $52f8: $21 $11 $5f
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	ld   b, c                                        ; $52fd: $41
	ld   de, $ff9f                                   ; $52fe: $11 $9f $ff
	ld   b, c                                        ; $5301: $41
	ld   de, $ff1f                                   ; $5302: $11 $1f $ff
	rst  $38                                         ; $5305: $ff
	ld   b, c                                        ; $5306: $41
	ld   de, $ff6d                                   ; $5307: $11 $6d $ff
	rst  $38                                         ; $530a: $ff
	ld   b, c                                        ; $530b: $41
	ld   de, $ff9f                                   ; $530c: $11 $9f $ff
	ld   de, $1f11                                   ; $530f: $11 $11 $1f
	rst  $38                                         ; $5312: $ff
	ei                                               ; $5313: $fb
	ld   de, $cf16                                   ; $5314: $11 $16 $cf
	rst  $38                                         ; $5317: $ff
	rst  $38                                         ; $5318: $ff
	ld   de, rAUD1LEN                                   ; $5319: $11 $11 $ff
	push af                                          ; $531c: $f5
	ld   de, rAUD1LEN                                   ; $531d: $11 $11 $ff
	rst  $38                                         ; $5320: $ff
	add  c                                           ; $5321: $81
	ld   de, $ffaf                                   ; $5322: $11 $af $ff
	rst  $38                                         ; $5325: $ff
	pop  bc                                          ; $5326: $c1
	ld   de, $ff1f                                   ; $5327: $11 $1f $ff
	ld   de, $1f11                                   ; $532a: $11 $11 $1f
	rst  $38                                         ; $532d: $ff
	ldh  a, [c]                                      ; $532e: $f2
	ld   de, $ff0c                                   ; $532f: $11 $0c $ff
	rst  $38                                         ; $5332: $ff
	ld   a, [$1511]                                  ; $5333: $fa $11 $15
	rst  $38                                         ; $5336: $ff
	sub  c                                           ; $5337: $91
	ld   de, $ff1f                                   ; $5338: $11 $1f $ff
	ld   sp, hl                                      ; $533b: $f9
	ld   de, $ff19                                   ; $533c: $11 $19 $ff
	rst  $38                                         ; $533f: $ff
	db   $fd                                         ; $5340: $fd
	ld   de, rAUD1ENV                                   ; $5341: $11 $12 $ff
	or   c                                           ; $5344: $b1
	ld   de, $ff1f                                   ; $5345: $11 $1f $ff
	or   $11                                         ; $5348: $f6 $11
	ld   a, [de]                                     ; $534a: $1a
	rst  $38                                         ; $534b: $ff
	rst  $38                                         ; $534c: $ff
	ld   sp, hl                                      ; $534d: $f9
	ld   de, rAUD1LOW                                   ; $534e: $11 $13 $ff
	ld   h, c                                        ; $5351: $61
	ld   de, $ff5f                                   ; $5352: $11 $5f $ff
	pop  af                                          ; $5355: $f1
	ld   de, $ff6c                                   ; $5356: $11 $6c $ff
	rst  $38                                         ; $5359: $ff
	db   $f4                                         ; $535a: $f4
	ld   de, $d817                                   ; $535b: $11 $17 $d8
	ld   de, rAUD1LOW                                   ; $535e: $11 $13 $ff
	rst  $38                                         ; $5361: $ff
	ld   hl, $ae14                                   ; $5362: $21 $14 $ae
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	ld   hl, $7b11                                   ; $5367: $21 $11 $7b
	ld   b, c                                        ; $536a: $41
	ld   de, $ffaf                                   ; $536b: $11 $af $ff
	pop  hl                                          ; $536e: $e1
	inc  hl                                          ; $536f: $23
	xor  d                                           ; $5370: $aa
	rst  $28                                         ; $5371: $ef
	rst  $38                                         ; $5372: $ff
	ldh  [c], a                                      ; $5373: $e2
	ld   de, $4115                                   ; $5374: $11 $15 $41
	ld   de, $ff7f                                   ; $5377: $11 $7f $ff
	db   $f4                                         ; $537a: $f4
	ld   de, $ff9a                                   ; $537b: $11 $9a $ff
	rst  $38                                         ; $537e: $ff
	or   h                                           ; $537f: $b4
	ld   de, $5113                                   ; $5380: $11 $13 $51
	ld   de, $ff7f                                   ; $5383: $11 $7f $ff
	di                                               ; $5386: $f3
	ld   de, $ff7d                                   ; $5387: $11 $7d $ff
	rst  $38                                         ; $538a: $ff
	or   a                                           ; $538b: $b7
	ld   de, $1111                                   ; $538c: $11 $11 $11
	inc  de                                          ; $538f: $13
	rst  $28                                         ; $5390: $ef
	rst  $38                                         ; $5391: $ff
	db   $d3                                         ; $5392: $d3
	ld   de, $ff5c                                   ; $5393: $11 $5c $ff
	rst  $38                                         ; $5396: $ff
	ld   [hl], c                                     ; $5397: $71
	ld   de, $1111                                   ; $5398: $11 $11 $11
	ld   c, h                                        ; $539b: $4c
	rst  $38                                         ; $539c: $ff
	rst  $38                                         ; $539d: $ff
	ld   h, c                                        ; $539e: $61
	ld   [de], a                                     ; $539f: $12
	adc  a                                           ; $53a0: $8f
	rst  $38                                         ; $53a1: $ff
	db   $fc                                         ; $53a2: $fc
	ld   sp, $1111                                   ; $53a3: $31 $11 $11
	rla                                              ; $53a6: $17
	rst  $38                                         ; $53a7: $ff
	rst  $38                                         ; $53a8: $ff
	or   $21                                         ; $53a9: $f6 $21
	ld   [hl], $bf                                   ; $53ab: $36 $bf
	rst  $38                                         ; $53ad: $ff
	db   $e3                                         ; $53ae: $e3
	ld   de, $1111                                   ; $53af: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53b2: $cf
	rst  $38                                         ; $53b3: $ff
	rst  $38                                         ; $53b4: $ff
	ld   [hl], c                                     ; $53b5: $71
	ld   de, $ff5f                                   ; $53b6: $11 $5f $ff
	ld   hl, sp+$11                                  ; $53b9: $f8 $11
	ld   de, $af11                                   ; $53bb: $11 $11 $af
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	and  d                                           ; $53c0: $a2
	ld   de, $ff7f                                   ; $53c1: $11 $7f $ff
	ld   hl, sp+$11                                  ; $53c4: $f8 $11
	ld   de, $9f11                                   ; $53c6: $11 $11 $9f
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	or   h                                           ; $53cb: $b4
	ld   b, c                                        ; $53cc: $41
	jr   c, @+$01                                    ; $53cd: $38 $ff

	rst  $38                                         ; $53cf: $ff
	ld   b, c                                        ; $53d0: $41
	ld   de, $af11                                   ; $53d1: $11 $11 $af
	rst  $38                                         ; $53d4: $ff
	rst  $38                                         ; $53d5: $ff
	sub  c                                           ; $53d6: $91
	ld   de, $ff2e                                   ; $53d7: $11 $2e $ff
	ld   sp, hl                                      ; $53da: $f9
	ld   de, $1911                                   ; $53db: $11 $11 $19
	rst  $38                                         ; $53de: $ff
	rst  $38                                         ; $53df: $ff
	rst  $38                                         ; $53e0: $ff
	db   $e3                                         ; $53e1: $e3
	ld   de, $ff1d                                   ; $53e2: $11 $1d $ff
	push af                                          ; $53e5: $f5
	ld   de, $3f11                                   ; $53e6: $11 $11 $3f
	rst  $38                                         ; $53e9: $ff
	rst  $38                                         ; $53ea: $ff
	ld   sp, hl                                      ; $53eb: $f9
	ld   b, c                                        ; $53ec: $41
	ld   de, $ff7f                                   ; $53ed: $11 $7f $ff
	ld   h, c                                        ; $53f0: $61
	ld   de, $ff1b                                   ; $53f1: $11 $1b $ff
	rst  $38                                         ; $53f4: $ff
	rst  $38                                         ; $53f5: $ff
	or   l                                           ; $53f6: $b5
	ld   de, $ff1c                                   ; $53f7: $11 $1c $ff
	pop  af                                          ; $53fa: $f1
	ld   de, rAUD1ENV                                   ; $53fb: $11 $12 $ff
	rst  $38                                         ; $53fe: $ff
	rst  $38                                         ; $53ff: $ff
	db   $fd                                         ; $5400: $fd
	ld   de, rAUD1LEN                                   ; $5401: $11 $11 $ff
	ei                                               ; $5404: $fb
	ld   de, $df11                                   ; $5405: $11 $11 $df
	rst  $38                                         ; $5408: $ff
	rst  $38                                         ; $5409: $ff
	rst  $38                                         ; $540a: $ff
	ld   b, c                                        ; $540b: $41
	ld   de, $ffcf                                   ; $540c: $11 $cf $ff
	ld   de, $9f11                                   ; $540f: $11 $11 $9f
	rst  $38                                         ; $5412: $ff
	rst  $38                                         ; $5413: $ff
	rst  $38                                         ; $5414: $ff
	ld   sp, $9f11                                   ; $5415: $31 $11 $9f
	rst  $38                                         ; $5418: $ff
	ld   de, $5f11                                   ; $5419: $11 $11 $5f
	rst  $38                                         ; $541c: $ff
	rst  $38                                         ; $541d: $ff
	db   $fc                                         ; $541e: $fc
	ld   de, $bf11                                   ; $541f: $11 $11 $bf
	db   $fc                                         ; $5422: $fc
	ld   de, $bf11                                   ; $5423: $11 $11 $bf
	rst  $38                                         ; $5426: $ff
	rst  $38                                         ; $5427: $ff
	push af                                          ; $5428: $f5
	ld   de, rAUD1HIGH                                   ; $5429: $11 $14 $ff
	di                                               ; $542c: $f3
	ld   de, rAUD1ENV                                   ; $542d: $11 $12 $ff
	rst  $38                                         ; $5430: $ff
	rst  $38                                         ; $5431: $ff
	pop  de                                          ; $5432: $d1
	ld   de, $ff1a                                   ; $5433: $11 $1a $ff
	or   c                                           ; $5436: $b1
	ld   de, $ff1a                                   ; $5437: $11 $1a $ff
	rst  $38                                         ; $543a: $ff
	rst  $38                                         ; $543b: $ff
	ld   de, $6f11                                   ; $543c: $11 $11 $6f
	rst  $38                                         ; $543f: $ff
	ld   de, $9f11                                   ; $5440: $11 $11 $9f
	rst  $38                                         ; $5443: $ff
	rst  $38                                         ; $5444: $ff
	pop  de                                          ; $5445: $d1
	ld   de, $ff15                                   ; $5446: $11 $15 $ff
	pop  af                                          ; $5449: $f1
	ld   de, $ff17                                   ; $544a: $11 $17 $ff
	rst  $38                                         ; $544d: $ff
	rst  $30                                         ; $544e: $f7
	ld   de, $cf11                                   ; $544f: $11 $11 $cf
	ld   sp, hl                                      ; $5452: $f9
	ld   de, rAUD1LEN                                   ; $5453: $11 $11 $ff
	rst  $38                                         ; $5456: $ff
	cp   $11                                         ; $5457: $fe $11
	ld   de, $fe5f                                   ; $5459: $11 $5f $fe
	ld   hl, $8f11                                   ; $545c: $21 $11 $8f
	rst  $38                                         ; $545f: $ff
	rst  $38                                         ; $5460: $ff
	ld   de, $5f11                                   ; $5461: $11 $11 $5f
	ei                                               ; $5464: $fb
	ld   de, $bf11                                   ; $5465: $11 $11 $bf
	rst  $38                                         ; $5468: $ff
	db   $fd                                         ; $5469: $fd
	ld   b, c                                        ; $546a: $41
	ld   de, $d84a                                   ; $546b: $11 $4a $d8
	ld   de, $cf14                                   ; $546e: $11 $14 $cf
	rst  $38                                         ; $5471: $ff
	db   $fd                                         ; $5472: $fd
	ld   h, c                                        ; $5473: $61
	ld   de, $c939                                   ; $5474: $11 $39 $c9
	ld   sp, $9f13                                   ; $5477: $31 $13 $9f
	rst  $38                                         ; $547a: $ff
	cp   $61                                         ; $547b: $fe $61
	ld   de, $ba48                                   ; $547d: $11 $48 $ba
	ld   [hl], h                                     ; $5480: $74
	ld   [hl+], a                                    ; $5481: $22
	ld   e, e                                        ; $5482: $5b
	rst  $38                                         ; $5483: $ff
	rst  $38                                         ; $5484: $ff
	and  h                                           ; $5485: $a4
	ld   hl, $6a12                                   ; $5486: $21 $12 $6a
	cp   c                                           ; $5489: $b9
	ld   h, h                                        ; $548a: $64
	ld   e, d                                        ; $548b: $5a
	rst  JumpTable                                         ; $548c: $df
	rst  $38                                         ; $548d: $ff
	or   [hl]                                        ; $548e: $b6
	ld   b, d                                        ; $548f: $42
	ld   [hl+], a                                    ; $5490: $22
	inc  h                                           ; $5491: $24
	ld   l, d                                        ; $5492: $6a
	xor  d                                           ; $5493: $aa
	halt                                             ; $5494: $76
	ld   a, c                                        ; $5495: $79
	rst  $28                                         ; $5496: $ef

Jump_0a5_5497:
	db   $fd                                         ; $5497: $fd
	add  e                                           ; $5498: $83
	ld   de, $ae15                                   ; $5499: $11 $15 $ae
	db   $db                                         ; $549c: $db
	ld   d, e                                        ; $549d: $53
	ld   c, b                                        ; $549e: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $549f: $cf
	rst  $38                                         ; $54a0: $ff
	or   [hl]                                        ; $54a1: $b6
	ld   hl, $6813                                   ; $54a2: $21 $13 $68
	cp   e                                           ; $54a5: $bb
	or   a                                           ; $54a6: $b7

Call_0a5_54a7:
	ld   h, [hl]                                     ; $54a7: $66
	ld   a, d                                        ; $54a8: $7a
	sbc  $ea                                         ; $54a9: $de $ea
	ld   d, d                                        ; $54ab: $52
	ld   de, $ba59                                   ; $54ac: $11 $59 $ba
	sub  a                                           ; $54af: $97
	ld   h, [hl]                                     ; $54b0: $66
	ld   l, b                                        ; $54b1: $68
	call $b6fd                                       ; $54b2: $cd $fd $b6
	ld   de, $9b04                                   ; $54b5: $11 $04 $9b
	db   $ec                                         ; $54b8: $ec
	sub  l                                           ; $54b9: $95
	inc  [hl]                                        ; $54ba: $34
	adc  l                                           ; $54bb: $8d
	rst  $38                                         ; $54bc: $ff
	ret  c                                           ; $54bd: $d8

	ld   sp, $6913                                   ; $54be: $31 $13 $69
	res  7, c                                        ; $54c1: $cb $b9
	ld   h, l                                        ; $54c3: $65
	ld   e, c                                        ; $54c4: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c5: $cf
	ei                                               ; $54c6: $fb
	ld   [hl], e                                     ; $54c7: $73
	ld   de, $ac37                                   ; $54c8: $11 $37 $ac
	ret                                              ; $54cb: $c9


	ld   [hl], h                                     ; $54cc: $74
	ld   b, [hl]                                     ; $54cd: $46
	sbc  [hl]                                        ; $54ce: $9e
	rst  $38                                         ; $54cf: $ff
	or   l                                           ; $54d0: $b5
	ld   de, $ab36                                   ; $54d1: $11 $36 $ab
	xor  d                                           ; $54d4: $aa
	sub  [hl]                                        ; $54d5: $96
	ld   d, l                                        ; $54d6: $55
	ld   a, d                                        ; $54d7: $7a
	sbc  $c8                                         ; $54d8: $de $c8
	ld   d, h                                        ; $54da: $54
	inc  [hl]                                        ; $54db: $34
	ld   l, b                                        ; $54dc: $68
	xor  d                                           ; $54dd: $aa
	add  a                                           ; $54de: $87
	halt                                             ; $54df: $76
	ld   a, c                                        ; $54e0: $79
	cp   h                                           ; $54e1: $bc
	cp   d                                           ; $54e2: $ba
	add  [hl]                                        ; $54e3: $86
	ld   b, h                                        ; $54e4: $44
	ld   b, a                                        ; $54e5: $47
	xor  h                                           ; $54e6: $ac
	cp   c                                           ; $54e7: $b9
	ld   h, l                                        ; $54e8: $65
	ld   d, a                                        ; $54e9: $57
	sbc  e                                           ; $54ea: $9b
	call z, Call_0a5_64b9                            ; $54eb: $cc $b9 $64
	ld   b, [hl]                                     ; $54ee: $46
	adc  c                                           ; $54ef: $89
	xor  d                                           ; $54f0: $aa
	sbc  b                                           ; $54f1: $98
	halt                                             ; $54f2: $76
	ld   h, a                                        ; $54f3: $67
	sbc  e                                           ; $54f4: $9b
	res  2, l                                        ; $54f5: $cb $95
	ld   b, h                                        ; $54f7: $44
	ld   l, b                                        ; $54f8: $68
	xor  h                                           ; $54f9: $ac
	cp   c                                           ; $54fa: $b9
	halt                                             ; $54fb: $76
	ld   d, [hl]                                     ; $54fc: $56
	ld   a, c                                        ; $54fd: $79
	cp   e                                           ; $54fe: $bb
	xor  b                                           ; $54ff: $a8
	ld   h, l                                        ; $5500: $65
	ld   d, [hl]                                     ; $5501: $56
	adc  d                                           ; $5502: $8a
	res  4, a                                        ; $5503: $cb $a7
	ld   h, [hl]                                     ; $5505: $66
	ld   l, b                                        ; $5506: $68
	xor  d                                           ; $5507: $aa
	sbc  b                                           ; $5508: $98
	adc  c                                           ; $5509: $89
	sbc  b                                           ; $550a: $98
	halt                                             ; $550b: $76
	ld   a, c                                        ; $550c: $79
	sbc  c                                           ; $550d: $99
	add  a                                           ; $550e: $87
	ld   h, a                                        ; $550f: $67
	sbc  d                                           ; $5510: $9a
	xor  c                                           ; $5511: $a9
	ld   [hl], a                                     ; $5512: $77
	adc  c                                           ; $5513: $89
	xor  c                                           ; $5514: $a9
	add  a                                           ; $5515: $87
	ld   a, b                                        ; $5516: $78
	adc  b                                           ; $5517: $88
	ld   [hl], a                                     ; $5518: $77
	sbc  c                                           ; $5519: $99
	sbc  c                                           ; $551a: $99
	add  a                                           ; $551b: $87
	ld   a, b                                        ; $551c: $78
	adc  c                                           ; $551d: $89
	sbc  c                                           ; $551e: $99
	add  a                                           ; $551f: $87
	ld   h, [hl]                                     ; $5520: $66
	ld   a, b                                        ; $5521: $78
	xor  d                                           ; $5522: $aa
	sub  a                                           ; $5523: $97
	ld   h, [hl]                                     ; $5524: $66
	ld   a, c                                        ; $5525: $79
	xor  d                                           ; $5526: $aa
	sub  a                                           ; $5527: $97
	halt                                             ; $5528: $76
	ld   a, b                                        ; $5529: $78
	adc  c                                           ; $552a: $89
	xor  d                                           ; $552b: $aa
	sbc  c                                           ; $552c: $99
	ld   a, b                                        ; $552d: $78
	ld   a, b                                        ; $552e: $78
	sbc  b                                           ; $552f: $98
	adc  b                                           ; $5530: $88
	ld   [hl], a                                     ; $5531: $77
	ld   [hl], a                                     ; $5532: $77
	adc  c                                           ; $5533: $89
	sbc  c                                           ; $5534: $99
	add  a                                           ; $5535: $87
	adc  c                                           ; $5536: $89
	adc  b                                           ; $5537: $88
	ld   [hl], a                                     ; $5538: $77
	ld   a, b                                        ; $5539: $78
	sbc  c                                           ; $553a: $99
	adc  b                                           ; $553b: $88
	adc  c                                           ; $553c: $89
	adc  c                                           ; $553d: $89
	adc  b                                           ; $553e: $88
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	sbc  c                                           ; $5541: $99
	adc  b                                           ; $5542: $88
	adc  b                                           ; $5543: $88
	ld   [hl], a                                     ; $5544: $77
	ld   a, b                                        ; $5545: $78
	sbc  c                                           ; $5546: $99
	sbc  b                                           ; $5547: $98
	ld   [hl], a                                     ; $5548: $77
	ld   a, c                                        ; $5549: $79
	adc  c                                           ; $554a: $89
	add  a                                           ; $554b: $87
	ld   a, b                                        ; $554c: $78
	adc  b                                           ; $554d: $88
	ld   [hl], a                                     ; $554e: $77
	ld   a, b                                        ; $554f: $78
	adc  c                                           ; $5550: $89
	add  a                                           ; $5551: $87
	ld   [hl], a                                     ; $5552: $77
	adc  c                                           ; $5553: $89
	sbc  b                                           ; $5554: $98
	add  a                                           ; $5555: $87
	ld   a, b                                        ; $5556: $78
	adc  c                                           ; $5557: $89
	sbc  b                                           ; $5558: $98
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	sbc  c                                           ; $555b: $99
	adc  b                                           ; $555c: $88
	adc  b                                           ; $555d: $88
	add  a                                           ; $555e: $87
	ld   [hl], a                                     ; $555f: $77
	ld   a, b                                        ; $5560: $78
	sbc  c                                           ; $5561: $99
	add  a                                           ; $5562: $87
	ld   [hl], a                                     ; $5563: $77
	adc  c                                           ; $5564: $89
	sbc  b                                           ; $5565: $98
	adc  b                                           ; $5566: $88
	ld   a, b                                        ; $5567: $78
	adc  b                                           ; $5568: $88
	adc  c                                           ; $5569: $89
	sbc  b                                           ; $556a: $98
	adc  b                                           ; $556b: $88
	adc  b                                           ; $556c: $88
	sbc  c                                           ; $556d: $99
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	ld   a, b                                        ; $5570: $78
	sbc  c                                           ; $5571: $99
	add  a                                           ; $5572: $87
	ld   a, b                                        ; $5573: $78
	sbc  c                                           ; $5574: $99
	adc  b                                           ; $5575: $88
	add  a                                           ; $5576: $87
	ld   [hl], a                                     ; $5577: $77
	adc  b                                           ; $5578: $88
	adc  c                                           ; $5579: $89
	add  a                                           ; $557a: $87
	ld   [hl], a                                     ; $557b: $77
	adc  b                                           ; $557c: $88
	sbc  b                                           ; $557d: $98
	adc  b                                           ; $557e: $88
	adc  b                                           ; $557f: $88
	sbc  c                                           ; $5580: $99
	adc  b                                           ; $5581: $88
	adc  b                                           ; $5582: $88
	adc  b                                           ; $5583: $88
	sbc  c                                           ; $5584: $99
	sbc  b                                           ; $5585: $98
	ld   [hl], a                                     ; $5586: $77
	ld   a, b                                        ; $5587: $78
	sbc  c                                           ; $5588: $99
	sbc  c                                           ; $5589: $99
	adc  b                                           ; $558a: $88
	add  a                                           ; $558b: $87
	adc  b                                           ; $558c: $88
	sbc  b                                           ; $558d: $98
	adc  b                                           ; $558e: $88
	ld   [hl], a                                     ; $558f: $77
	ld   [hl], a                                     ; $5590: $77
	adc  b                                           ; $5591: $88
	adc  c                                           ; $5592: $89
	add  a                                           ; $5593: $87
	ld   [hl], a                                     ; $5594: $77
	adc  c                                           ; $5595: $89
	sbc  b                                           ; $5596: $98
	adc  b                                           ; $5597: $88
	ld   [hl], a                                     ; $5598: $77
	adc  b                                           ; $5599: $88
	sbc  c                                           ; $559a: $99
	adc  b                                           ; $559b: $88
	ld   a, b                                        ; $559c: $78
	sbc  c                                           ; $559d: $99
	sbc  b                                           ; $559e: $98
	ld   [hl], a                                     ; $559f: $77
	adc  b                                           ; $55a0: $88
	sbc  b                                           ; $55a1: $98
	adc  b                                           ; $55a2: $88
	adc  b                                           ; $55a3: $88
	adc  b                                           ; $55a4: $88
	adc  b                                           ; $55a5: $88
	sbc  c                                           ; $55a6: $99
	add  a                                           ; $55a7: $87
	ld   a, b                                        ; $55a8: $78
	sbc  b                                           ; $55a9: $98
	sub  a                                           ; $55aa: $97
	ld   [hl], a                                     ; $55ab: $77
	adc  c                                           ; $55ac: $89
	adc  c                                           ; $55ad: $89
	adc  b                                           ; $55ae: $88
	adc  b                                           ; $55af: $88
	adc  b                                           ; $55b0: $88
	adc  b                                           ; $55b1: $88
	adc  b                                           ; $55b2: $88
	adc  b                                           ; $55b3: $88
	adc  b                                           ; $55b4: $88
	adc  b                                           ; $55b5: $88
	adc  b                                           ; $55b6: $88
	adc  b                                           ; $55b7: $88
	adc  b                                           ; $55b8: $88
	adc  b                                           ; $55b9: $88
	adc  b                                           ; $55ba: $88
	adc  b                                           ; $55bb: $88
	sbc  b                                           ; $55bc: $98
	adc  b                                           ; $55bd: $88
	ld   a, b                                        ; $55be: $78
	adc  b                                           ; $55bf: $88
	adc  b                                           ; $55c0: $88
	adc  b                                           ; $55c1: $88
	adc  b                                           ; $55c2: $88
	adc  b                                           ; $55c3: $88
	adc  b                                           ; $55c4: $88
	sbc  b                                           ; $55c5: $98
	adc  b                                           ; $55c6: $88
	ld   a, b                                        ; $55c7: $78
	adc  c                                           ; $55c8: $89
	sbc  b                                           ; $55c9: $98
	add  a                                           ; $55ca: $87
	adc  b                                           ; $55cb: $88
	adc  c                                           ; $55cc: $89
	adc  b                                           ; $55cd: $88
	adc  b                                           ; $55ce: $88
	adc  b                                           ; $55cf: $88
	adc  b                                           ; $55d0: $88
	adc  b                                           ; $55d1: $88
	adc  b                                           ; $55d2: $88
	adc  b                                           ; $55d3: $88
	adc  b                                           ; $55d4: $88
	adc  b                                           ; $55d5: $88
	adc  b                                           ; $55d6: $88
	adc  b                                           ; $55d7: $88
	adc  b                                           ; $55d8: $88
	adc  b                                           ; $55d9: $88
	adc  b                                           ; $55da: $88
	adc  b                                           ; $55db: $88
	adc  b                                           ; $55dc: $88
	adc  c                                           ; $55dd: $89
	sbc  b                                           ; $55de: $98
	adc  b                                           ; $55df: $88
	adc  b                                           ; $55e0: $88
	adc  b                                           ; $55e1: $88
	adc  b                                           ; $55e2: $88
	adc  b                                           ; $55e3: $88
	adc  b                                           ; $55e4: $88
	adc  b                                           ; $55e5: $88
	adc  b                                           ; $55e6: $88
	adc  b                                           ; $55e7: $88
	adc  b                                           ; $55e8: $88
	adc  b                                           ; $55e9: $88
	adc  b                                           ; $55ea: $88
	adc  b                                           ; $55eb: $88
	adc  b                                           ; $55ec: $88
	adc  b                                           ; $55ed: $88
	adc  b                                           ; $55ee: $88
	adc  b                                           ; $55ef: $88
	adc  b                                           ; $55f0: $88
	adc  b                                           ; $55f1: $88
	adc  b                                           ; $55f2: $88
	adc  b                                           ; $55f3: $88
	adc  b                                           ; $55f4: $88
	adc  b                                           ; $55f5: $88
	adc  b                                           ; $55f6: $88
	adc  b                                           ; $55f7: $88
	adc  b                                           ; $55f8: $88
	adc  b                                           ; $55f9: $88
	adc  b                                           ; $55fa: $88
	adc  b                                           ; $55fb: $88
	adc  b                                           ; $55fc: $88
	adc  b                                           ; $55fd: $88
	adc  b                                           ; $55fe: $88
	adc  b                                           ; $55ff: $88
	adc  b                                           ; $5600: $88
	adc  b                                           ; $5601: $88
	adc  b                                           ; $5602: $88
	adc  b                                           ; $5603: $88
	adc  b                                           ; $5604: $88
	adc  b                                           ; $5605: $88
	adc  b                                           ; $5606: $88
	adc  b                                           ; $5607: $88
	adc  b                                           ; $5608: $88
	adc  b                                           ; $5609: $88
	adc  b                                           ; $560a: $88
	adc  b                                           ; $560b: $88
	adc  b                                           ; $560c: $88
	adc  b                                           ; $560d: $88
	adc  b                                           ; $560e: $88
	adc  b                                           ; $560f: $88
	adc  b                                           ; $5610: $88
	adc  b                                           ; $5611: $88
	adc  b                                           ; $5612: $88
	adc  b                                           ; $5613: $88
	adc  b                                           ; $5614: $88
	adc  b                                           ; $5615: $88
	adc  b                                           ; $5616: $88
	adc  b                                           ; $5617: $88
	adc  b                                           ; $5618: $88
	adc  b                                           ; $5619: $88
	adc  b                                           ; $561a: $88
	adc  b                                           ; $561b: $88
	adc  b                                           ; $561c: $88
	adc  b                                           ; $561d: $88
	adc  b                                           ; $561e: $88
	adc  b                                           ; $561f: $88
	adc  b                                           ; $5620: $88
	adc  b                                           ; $5621: $88
	adc  b                                           ; $5622: $88
	adc  b                                           ; $5623: $88
	adc  b                                           ; $5624: $88
	adc  b                                           ; $5625: $88
	adc  b                                           ; $5626: $88
	adc  b                                           ; $5627: $88
	adc  b                                           ; $5628: $88
	adc  b                                           ; $5629: $88
	adc  b                                           ; $562a: $88
	adc  b                                           ; $562b: $88
	adc  b                                           ; $562c: $88
	adc  b                                           ; $562d: $88
	adc  b                                           ; $562e: $88
	adc  b                                           ; $562f: $88
	adc  b                                           ; $5630: $88
	adc  b                                           ; $5631: $88
	adc  b                                           ; $5632: $88
	adc  b                                           ; $5633: $88
	adc  b                                           ; $5634: $88
	adc  b                                           ; $5635: $88
	adc  b                                           ; $5636: $88
	adc  b                                           ; $5637: $88
	adc  b                                           ; $5638: $88
	adc  b                                           ; $5639: $88
	adc  b                                           ; $563a: $88
	adc  b                                           ; $563b: $88
	adc  b                                           ; $563c: $88
	adc  b                                           ; $563d: $88
	adc  b                                           ; $563e: $88
	adc  b                                           ; $563f: $88
	adc  b                                           ; $5640: $88
	adc  b                                           ; $5641: $88
	adc  b                                           ; $5642: $88
	adc  b                                           ; $5643: $88
	adc  b                                           ; $5644: $88
	adc  b                                           ; $5645: $88
	adc  b                                           ; $5646: $88
	adc  b                                           ; $5647: $88
	adc  b                                           ; $5648: $88
	adc  b                                           ; $5649: $88
	adc  b                                           ; $564a: $88
	adc  b                                           ; $564b: $88
	adc  b                                           ; $564c: $88
	adc  b                                           ; $564d: $88
	adc  b                                           ; $564e: $88
	adc  b                                           ; $564f: $88
	adc  b                                           ; $5650: $88
	adc  b                                           ; $5651: $88
	adc  b                                           ; $5652: $88
	adc  b                                           ; $5653: $88
	adc  b                                           ; $5654: $88
	adc  b                                           ; $5655: $88
	adc  b                                           ; $5656: $88
	adc  b                                           ; $5657: $88
	adc  b                                           ; $5658: $88
	adc  b                                           ; $5659: $88
	adc  b                                           ; $565a: $88
	adc  b                                           ; $565b: $88
	adc  b                                           ; $565c: $88
	adc  b                                           ; $565d: $88
	adc  b                                           ; $565e: $88
	adc  b                                           ; $565f: $88
	adc  b                                           ; $5660: $88
	adc  b                                           ; $5661: $88
	adc  b                                           ; $5662: $88
	adc  b                                           ; $5663: $88
	adc  b                                           ; $5664: $88
	adc  b                                           ; $5665: $88
	adc  b                                           ; $5666: $88
	adc  b                                           ; $5667: $88
	adc  b                                           ; $5668: $88
	adc  b                                           ; $5669: $88
	adc  b                                           ; $566a: $88
	adc  b                                           ; $566b: $88
	adc  b                                           ; $566c: $88
	adc  b                                           ; $566d: $88
	adc  b                                           ; $566e: $88
	adc  b                                           ; $566f: $88
	adc  b                                           ; $5670: $88
	adc  b                                           ; $5671: $88
	adc  b                                           ; $5672: $88
	adc  b                                           ; $5673: $88
	adc  b                                           ; $5674: $88
	adc  b                                           ; $5675: $88
	adc  b                                           ; $5676: $88
	adc  b                                           ; $5677: $88
	adc  b                                           ; $5678: $88
	adc  b                                           ; $5679: $88
	adc  b                                           ; $567a: $88
	adc  b                                           ; $567b: $88
	adc  b                                           ; $567c: $88
	adc  b                                           ; $567d: $88
	adc  b                                           ; $567e: $88
	adc  b                                           ; $567f: $88
	adc  b                                           ; $5680: $88
	adc  b                                           ; $5681: $88
	adc  b                                           ; $5682: $88
	adc  b                                           ; $5683: $88
	adc  b                                           ; $5684: $88

Jump_0a5_5685:
	adc  b                                           ; $5685: $88
	adc  b                                           ; $5686: $88
	adc  b                                           ; $5687: $88
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  b                                           ; $568b: $88
	adc  b                                           ; $568c: $88
	adc  b                                           ; $568d: $88
	adc  b                                           ; $568e: $88
	adc  b                                           ; $568f: $88
	adc  b                                           ; $5690: $88
	adc  b                                           ; $5691: $88
	adc  b                                           ; $5692: $88
	adc  b                                           ; $5693: $88
	adc  b                                           ; $5694: $88
	adc  b                                           ; $5695: $88
	adc  b                                           ; $5696: $88
	adc  b                                           ; $5697: $88
	adc  b                                           ; $5698: $88
	adc  b                                           ; $5699: $88
	adc  b                                           ; $569a: $88
	adc  b                                           ; $569b: $88
	adc  b                                           ; $569c: $88
	adc  b                                           ; $569d: $88
	adc  b                                           ; $569e: $88
	adc  b                                           ; $569f: $88
	adc  b                                           ; $56a0: $88
	adc  b                                           ; $56a1: $88
	adc  b                                           ; $56a2: $88
	adc  b                                           ; $56a3: $88
	adc  b                                           ; $56a4: $88
	adc  b                                           ; $56a5: $88

Call_0a5_56a6:
	adc  b                                           ; $56a6: $88
	adc  b                                           ; $56a7: $88
	adc  b                                           ; $56a8: $88
	adc  b                                           ; $56a9: $88
	adc  b                                           ; $56aa: $88
	adc  b                                           ; $56ab: $88
	adc  b                                           ; $56ac: $88
	adc  b                                           ; $56ad: $88
	adc  b                                           ; $56ae: $88
	adc  b                                           ; $56af: $88
	adc  b                                           ; $56b0: $88
	adc  b                                           ; $56b1: $88
	adc  b                                           ; $56b2: $88
	adc  b                                           ; $56b3: $88
	adc  b                                           ; $56b4: $88
	adc  b                                           ; $56b5: $88
	adc  b                                           ; $56b6: $88
	adc  b                                           ; $56b7: $88
	adc  b                                           ; $56b8: $88
	adc  b                                           ; $56b9: $88
	adc  b                                           ; $56ba: $88
	adc  b                                           ; $56bb: $88
	adc  b                                           ; $56bc: $88
	adc  b                                           ; $56bd: $88
	adc  b                                           ; $56be: $88
	adc  b                                           ; $56bf: $88
	adc  b                                           ; $56c0: $88
	adc  b                                           ; $56c1: $88
	adc  b                                           ; $56c2: $88
	adc  b                                           ; $56c3: $88
	adc  b                                           ; $56c4: $88
	adc  b                                           ; $56c5: $88
	adc  b                                           ; $56c6: $88
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	adc  b                                           ; $56c9: $88
	adc  b                                           ; $56ca: $88
	adc  b                                           ; $56cb: $88
	adc  b                                           ; $56cc: $88
	adc  b                                           ; $56cd: $88
	adc  b                                           ; $56ce: $88
	adc  b                                           ; $56cf: $88
	adc  b                                           ; $56d0: $88
	adc  b                                           ; $56d1: $88
	adc  b                                           ; $56d2: $88
	adc  b                                           ; $56d3: $88
	adc  b                                           ; $56d4: $88
	adc  b                                           ; $56d5: $88
	adc  b                                           ; $56d6: $88
	adc  b                                           ; $56d7: $88
	adc  b                                           ; $56d8: $88
	adc  b                                           ; $56d9: $88
	adc  b                                           ; $56da: $88
	adc  b                                           ; $56db: $88
	adc  b                                           ; $56dc: $88
	adc  b                                           ; $56dd: $88
	adc  b                                           ; $56de: $88
	adc  b                                           ; $56df: $88
	adc  b                                           ; $56e0: $88
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	adc  b                                           ; $56e3: $88
	adc  b                                           ; $56e4: $88
	adc  b                                           ; $56e5: $88
	adc  b                                           ; $56e6: $88
	adc  b                                           ; $56e7: $88
	adc  b                                           ; $56e8: $88
	adc  b                                           ; $56e9: $88
	adc  b                                           ; $56ea: $88
	adc  b                                           ; $56eb: $88
	adc  b                                           ; $56ec: $88
	adc  b                                           ; $56ed: $88
	adc  b                                           ; $56ee: $88
	adc  b                                           ; $56ef: $88
	adc  b                                           ; $56f0: $88
	adc  b                                           ; $56f1: $88
	adc  b                                           ; $56f2: $88
	adc  b                                           ; $56f3: $88
	adc  b                                           ; $56f4: $88
	adc  b                                           ; $56f5: $88
	adc  b                                           ; $56f6: $88
	adc  b                                           ; $56f7: $88
	adc  b                                           ; $56f8: $88
	adc  b                                           ; $56f9: $88
	adc  b                                           ; $56fa: $88
	adc  b                                           ; $56fb: $88
	adc  b                                           ; $56fc: $88
	adc  b                                           ; $56fd: $88
	adc  b                                           ; $56fe: $88
	adc  b                                           ; $56ff: $88
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	adc  b                                           ; $5702: $88
	adc  b                                           ; $5703: $88
	adc  b                                           ; $5704: $88
	adc  b                                           ; $5705: $88
	adc  b                                           ; $5706: $88
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	adc  b                                           ; $570c: $88
	adc  b                                           ; $570d: $88
	adc  b                                           ; $570e: $88
	adc  b                                           ; $570f: $88
	adc  b                                           ; $5710: $88
	adc  b                                           ; $5711: $88
	adc  b                                           ; $5712: $88
	adc  b                                           ; $5713: $88
	adc  b                                           ; $5714: $88
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
	adc  b                                           ; $574c: $88
	adc  b                                           ; $574d: $88
	adc  b                                           ; $574e: $88
	adc  b                                           ; $574f: $88
	adc  b                                           ; $5750: $88
	adc  b                                           ; $5751: $88
	adc  b                                           ; $5752: $88
	adc  b                                           ; $5753: $88
	adc  b                                           ; $5754: $88
	adc  b                                           ; $5755: $88
	adc  b                                           ; $5756: $88
	adc  b                                           ; $5757: $88
	adc  b                                           ; $5758: $88
	adc  b                                           ; $5759: $88
	adc  b                                           ; $575a: $88
	adc  b                                           ; $575b: $88
	adc  b                                           ; $575c: $88
	adc  b                                           ; $575d: $88
	adc  b                                           ; $575e: $88
	adc  b                                           ; $575f: $88
	adc  b                                           ; $5760: $88
	adc  b                                           ; $5761: $88
	adc  b                                           ; $5762: $88
	adc  b                                           ; $5763: $88
	adc  b                                           ; $5764: $88
	adc  b                                           ; $5765: $88
	adc  b                                           ; $5766: $88
	adc  b                                           ; $5767: $88
	adc  b                                           ; $5768: $88
	adc  b                                           ; $5769: $88
	adc  b                                           ; $576a: $88
	adc  b                                           ; $576b: $88
	adc  b                                           ; $576c: $88
	adc  b                                           ; $576d: $88
	adc  b                                           ; $576e: $88
	adc  b                                           ; $576f: $88
	adc  b                                           ; $5770: $88
	adc  b                                           ; $5771: $88
	adc  b                                           ; $5772: $88
	adc  b                                           ; $5773: $88
	adc  b                                           ; $5774: $88
	adc  b                                           ; $5775: $88
	adc  b                                           ; $5776: $88
	adc  b                                           ; $5777: $88
	adc  b                                           ; $5778: $88
	adc  b                                           ; $5779: $88
	adc  b                                           ; $577a: $88
	adc  b                                           ; $577b: $88
	adc  b                                           ; $577c: $88
	adc  b                                           ; $577d: $88
	adc  b                                           ; $577e: $88
	adc  b                                           ; $577f: $88
	adc  b                                           ; $5780: $88
	adc  b                                           ; $5781: $88
	adc  b                                           ; $5782: $88
	adc  b                                           ; $5783: $88
	adc  b                                           ; $5784: $88
	adc  b                                           ; $5785: $88
	adc  b                                           ; $5786: $88
	adc  b                                           ; $5787: $88
	adc  b                                           ; $5788: $88
	adc  b                                           ; $5789: $88
	adc  b                                           ; $578a: $88
	adc  b                                           ; $578b: $88
	adc  b                                           ; $578c: $88
	adc  b                                           ; $578d: $88
	adc  b                                           ; $578e: $88
	adc  b                                           ; $578f: $88
	adc  b                                           ; $5790: $88
	adc  b                                           ; $5791: $88
	adc  b                                           ; $5792: $88
	adc  b                                           ; $5793: $88
	adc  b                                           ; $5794: $88
	adc  b                                           ; $5795: $88
	adc  b                                           ; $5796: $88
	adc  b                                           ; $5797: $88
	adc  b                                           ; $5798: $88
	adc  b                                           ; $5799: $88
	adc  b                                           ; $579a: $88
	adc  b                                           ; $579b: $88
	adc  b                                           ; $579c: $88
	adc  b                                           ; $579d: $88
	adc  b                                           ; $579e: $88
	adc  b                                           ; $579f: $88
	adc  b                                           ; $57a0: $88
	adc  b                                           ; $57a1: $88
	adc  b                                           ; $57a2: $88
	adc  b                                           ; $57a3: $88
	adc  b                                           ; $57a4: $88
	adc  b                                           ; $57a5: $88
	adc  b                                           ; $57a6: $88
	adc  b                                           ; $57a7: $88
	adc  b                                           ; $57a8: $88
	adc  b                                           ; $57a9: $88
	adc  b                                           ; $57aa: $88
	adc  b                                           ; $57ab: $88
	adc  b                                           ; $57ac: $88
	adc  b                                           ; $57ad: $88
	adc  b                                           ; $57ae: $88
	adc  b                                           ; $57af: $88
	adc  b                                           ; $57b0: $88
	adc  b                                           ; $57b1: $88
	adc  b                                           ; $57b2: $88
	adc  b                                           ; $57b3: $88
	adc  b                                           ; $57b4: $88
	adc  b                                           ; $57b5: $88
	adc  b                                           ; $57b6: $88
	adc  b                                           ; $57b7: $88
	adc  b                                           ; $57b8: $88
	adc  b                                           ; $57b9: $88
	adc  b                                           ; $57ba: $88
	adc  b                                           ; $57bb: $88
	adc  b                                           ; $57bc: $88
	adc  b                                           ; $57bd: $88
	adc  b                                           ; $57be: $88
	adc  b                                           ; $57bf: $88
	adc  b                                           ; $57c0: $88
	adc  b                                           ; $57c1: $88
	adc  b                                           ; $57c2: $88
	adc  b                                           ; $57c3: $88
	adc  b                                           ; $57c4: $88
	adc  b                                           ; $57c5: $88
	adc  b                                           ; $57c6: $88
	adc  b                                           ; $57c7: $88
	adc  b                                           ; $57c8: $88
	adc  b                                           ; $57c9: $88
	adc  b                                           ; $57ca: $88
	adc  b                                           ; $57cb: $88
	adc  b                                           ; $57cc: $88
	adc  b                                           ; $57cd: $88
	adc  b                                           ; $57ce: $88
	adc  b                                           ; $57cf: $88
	adc  b                                           ; $57d0: $88
	adc  b                                           ; $57d1: $88
	adc  b                                           ; $57d2: $88
	adc  b                                           ; $57d3: $88
	adc  b                                           ; $57d4: $88
	adc  b                                           ; $57d5: $88
	adc  b                                           ; $57d6: $88
	adc  b                                           ; $57d7: $88
	adc  b                                           ; $57d8: $88
	adc  b                                           ; $57d9: $88
	adc  b                                           ; $57da: $88
	adc  b                                           ; $57db: $88
	adc  b                                           ; $57dc: $88
	adc  b                                           ; $57dd: $88
	adc  b                                           ; $57de: $88
	adc  b                                           ; $57df: $88
	adc  b                                           ; $57e0: $88
	adc  b                                           ; $57e1: $88
	adc  b                                           ; $57e2: $88
	adc  b                                           ; $57e3: $88
	adc  b                                           ; $57e4: $88
	adc  b                                           ; $57e5: $88
	adc  b                                           ; $57e6: $88
	adc  b                                           ; $57e7: $88
	adc  b                                           ; $57e8: $88
	adc  b                                           ; $57e9: $88
	adc  b                                           ; $57ea: $88
	adc  b                                           ; $57eb: $88
	adc  b                                           ; $57ec: $88
	adc  b                                           ; $57ed: $88
	adc  b                                           ; $57ee: $88
	adc  b                                           ; $57ef: $88
	adc  b                                           ; $57f0: $88
	adc  b                                           ; $57f1: $88
	adc  b                                           ; $57f2: $88
	adc  b                                           ; $57f3: $88
	adc  b                                           ; $57f4: $88
	adc  b                                           ; $57f5: $88
	adc  b                                           ; $57f6: $88
	adc  b                                           ; $57f7: $88
	adc  b                                           ; $57f8: $88
	adc  b                                           ; $57f9: $88
	adc  b                                           ; $57fa: $88
	adc  b                                           ; $57fb: $88
	adc  b                                           ; $57fc: $88
	adc  b                                           ; $57fd: $88
	adc  b                                           ; $57fe: $88
	adc  b                                           ; $57ff: $88
	adc  b                                           ; $5800: $88
	adc  b                                           ; $5801: $88
	adc  b                                           ; $5802: $88
	adc  b                                           ; $5803: $88
	adc  b                                           ; $5804: $88
	adc  b                                           ; $5805: $88
	adc  b                                           ; $5806: $88
	adc  b                                           ; $5807: $88
	adc  b                                           ; $5808: $88
	adc  b                                           ; $5809: $88
	adc  b                                           ; $580a: $88
	adc  b                                           ; $580b: $88
	adc  b                                           ; $580c: $88
	adc  b                                           ; $580d: $88
	adc  b                                           ; $580e: $88
	adc  b                                           ; $580f: $88
	adc  b                                           ; $5810: $88
	adc  b                                           ; $5811: $88
	adc  b                                           ; $5812: $88
	adc  b                                           ; $5813: $88
	adc  b                                           ; $5814: $88
	adc  b                                           ; $5815: $88
	adc  b                                           ; $5816: $88
	adc  b                                           ; $5817: $88
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	adc  b                                           ; $581a: $88
	adc  b                                           ; $581b: $88
	adc  b                                           ; $581c: $88
	adc  b                                           ; $581d: $88
	adc  b                                           ; $581e: $88
	adc  b                                           ; $581f: $88
	adc  b                                           ; $5820: $88
	adc  b                                           ; $5821: $88
	adc  b                                           ; $5822: $88
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	adc  b                                           ; $582a: $88
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	adc  b                                           ; $582d: $88
	adc  b                                           ; $582e: $88
	adc  b                                           ; $582f: $88
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	adc  b                                           ; $5834: $88
	adc  b                                           ; $5835: $88
	adc  b                                           ; $5836: $88
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  b                                           ; $583b: $88
	adc  b                                           ; $583c: $88
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	adc  b                                           ; $5849: $88
	adc  b                                           ; $584a: $88
	adc  b                                           ; $584b: $88
	adc  b                                           ; $584c: $88
	adc  b                                           ; $584d: $88
	adc  b                                           ; $584e: $88
	adc  b                                           ; $584f: $88
	adc  b                                           ; $5850: $88
	adc  b                                           ; $5851: $88
	adc  b                                           ; $5852: $88
	adc  b                                           ; $5853: $88
	adc  b                                           ; $5854: $88
	adc  b                                           ; $5855: $88
	adc  b                                           ; $5856: $88
	adc  b                                           ; $5857: $88
	adc  b                                           ; $5858: $88
	adc  b                                           ; $5859: $88
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	adc  b                                           ; $585c: $88
	adc  b                                           ; $585d: $88
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	adc  b                                           ; $5860: $88
	adc  b                                           ; $5861: $88
	adc  b                                           ; $5862: $88
	adc  b                                           ; $5863: $88
	adc  b                                           ; $5864: $88
	adc  b                                           ; $5865: $88
	adc  b                                           ; $5866: $88
	adc  b                                           ; $5867: $88
	adc  b                                           ; $5868: $88
	adc  b                                           ; $5869: $88
	adc  b                                           ; $586a: $88
	adc  b                                           ; $586b: $88
	adc  b                                           ; $586c: $88
	adc  b                                           ; $586d: $88
	adc  b                                           ; $586e: $88
	adc  b                                           ; $586f: $88
	adc  b                                           ; $5870: $88
	adc  b                                           ; $5871: $88
	adc  b                                           ; $5872: $88
	adc  b                                           ; $5873: $88
	adc  b                                           ; $5874: $88
	adc  b                                           ; $5875: $88
	adc  b                                           ; $5876: $88
	adc  b                                           ; $5877: $88
	adc  b                                           ; $5878: $88
	adc  b                                           ; $5879: $88
	adc  b                                           ; $587a: $88
	adc  b                                           ; $587b: $88
	adc  b                                           ; $587c: $88
	adc  b                                           ; $587d: $88
	adc  b                                           ; $587e: $88
	adc  b                                           ; $587f: $88
	adc  b                                           ; $5880: $88
	adc  b                                           ; $5881: $88
	adc  b                                           ; $5882: $88
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  b                                           ; $5885: $88
	adc  b                                           ; $5886: $88
	adc  b                                           ; $5887: $88
	adc  b                                           ; $5888: $88
	adc  b                                           ; $5889: $88
	adc  b                                           ; $588a: $88
	adc  b                                           ; $588b: $88
	adc  b                                           ; $588c: $88
	adc  b                                           ; $588d: $88
	adc  b                                           ; $588e: $88
	adc  b                                           ; $588f: $88
	adc  b                                           ; $5890: $88
	adc  b                                           ; $5891: $88
	adc  b                                           ; $5892: $88
	adc  b                                           ; $5893: $88
	adc  b                                           ; $5894: $88
	adc  b                                           ; $5895: $88
	adc  b                                           ; $5896: $88
	adc  b                                           ; $5897: $88
	adc  b                                           ; $5898: $88
	adc  b                                           ; $5899: $88
	adc  b                                           ; $589a: $88
	adc  b                                           ; $589b: $88
	adc  b                                           ; $589c: $88
	adc  b                                           ; $589d: $88
	adc  b                                           ; $589e: $88
	adc  b                                           ; $589f: $88
	adc  b                                           ; $58a0: $88
	adc  b                                           ; $58a1: $88
	adc  b                                           ; $58a2: $88
	adc  b                                           ; $58a3: $88
	adc  b                                           ; $58a4: $88
	adc  b                                           ; $58a5: $88
	adc  b                                           ; $58a6: $88
	adc  b                                           ; $58a7: $88
	adc  b                                           ; $58a8: $88
	adc  b                                           ; $58a9: $88
	adc  b                                           ; $58aa: $88
	adc  b                                           ; $58ab: $88
	adc  b                                           ; $58ac: $88
	adc  b                                           ; $58ad: $88
	adc  b                                           ; $58ae: $88
	adc  b                                           ; $58af: $88
	adc  b                                           ; $58b0: $88
	adc  b                                           ; $58b1: $88
	adc  b                                           ; $58b2: $88
	adc  b                                           ; $58b3: $88
	adc  b                                           ; $58b4: $88
	adc  b                                           ; $58b5: $88
	adc  b                                           ; $58b6: $88
	adc  b                                           ; $58b7: $88
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	adc  b                                           ; $58bb: $88
	adc  b                                           ; $58bc: $88
	adc  b                                           ; $58bd: $88
	adc  b                                           ; $58be: $88
	adc  b                                           ; $58bf: $88
	adc  b                                           ; $58c0: $88
	adc  b                                           ; $58c1: $88
	adc  b                                           ; $58c2: $88
	adc  b                                           ; $58c3: $88
	adc  b                                           ; $58c4: $88
	adc  b                                           ; $58c5: $88
	adc  b                                           ; $58c6: $88
	adc  b                                           ; $58c7: $88
	adc  b                                           ; $58c8: $88
	adc  b                                           ; $58c9: $88
	adc  b                                           ; $58ca: $88
	adc  b                                           ; $58cb: $88
	adc  b                                           ; $58cc: $88
	adc  b                                           ; $58cd: $88
	adc  b                                           ; $58ce: $88
	adc  b                                           ; $58cf: $88
	adc  b                                           ; $58d0: $88
	adc  b                                           ; $58d1: $88
	adc  b                                           ; $58d2: $88
	adc  b                                           ; $58d3: $88
	adc  b                                           ; $58d4: $88
	adc  b                                           ; $58d5: $88
	adc  b                                           ; $58d6: $88
	adc  b                                           ; $58d7: $88
	adc  b                                           ; $58d8: $88
	adc  b                                           ; $58d9: $88
	adc  b                                           ; $58da: $88
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	adc  b                                           ; $58df: $88
	adc  b                                           ; $58e0: $88
	adc  b                                           ; $58e1: $88
	adc  b                                           ; $58e2: $88
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	adc  b                                           ; $58e7: $88
	adc  b                                           ; $58e8: $88
	adc  b                                           ; $58e9: $88
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	adc  b                                           ; $58ec: $88
	adc  b                                           ; $58ed: $88
	adc  b                                           ; $58ee: $88
	adc  b                                           ; $58ef: $88
	adc  b                                           ; $58f0: $88
	adc  b                                           ; $58f1: $88
	adc  b                                           ; $58f2: $88
	adc  b                                           ; $58f3: $88
	adc  b                                           ; $58f4: $88
	adc  b                                           ; $58f5: $88
	adc  b                                           ; $58f6: $88
	adc  b                                           ; $58f7: $88
	adc  b                                           ; $58f8: $88
	adc  b                                           ; $58f9: $88
	adc  b                                           ; $58fa: $88
	adc  b                                           ; $58fb: $88
	adc  b                                           ; $58fc: $88
	adc  b                                           ; $58fd: $88
	adc  b                                           ; $58fe: $88
	adc  b                                           ; $58ff: $88
	adc  b                                           ; $5900: $88
	adc  b                                           ; $5901: $88
	adc  b                                           ; $5902: $88
	adc  b                                           ; $5903: $88
	adc  b                                           ; $5904: $88
	adc  b                                           ; $5905: $88
	adc  b                                           ; $5906: $88
	adc  b                                           ; $5907: $88
	adc  b                                           ; $5908: $88
	adc  b                                           ; $5909: $88
	adc  b                                           ; $590a: $88
	adc  b                                           ; $590b: $88
	adc  b                                           ; $590c: $88
	adc  b                                           ; $590d: $88
	adc  b                                           ; $590e: $88
	adc  b                                           ; $590f: $88
	adc  b                                           ; $5910: $88
	adc  b                                           ; $5911: $88
	adc  b                                           ; $5912: $88
	adc  b                                           ; $5913: $88
	adc  b                                           ; $5914: $88
	adc  b                                           ; $5915: $88
	adc  b                                           ; $5916: $88
	adc  b                                           ; $5917: $88
	adc  b                                           ; $5918: $88
	adc  b                                           ; $5919: $88
	adc  b                                           ; $591a: $88
	adc  b                                           ; $591b: $88
	adc  b                                           ; $591c: $88
	adc  b                                           ; $591d: $88
	adc  b                                           ; $591e: $88
	adc  b                                           ; $591f: $88
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	adc  b                                           ; $5924: $88
	adc  b                                           ; $5925: $88
	adc  b                                           ; $5926: $88
	adc  b                                           ; $5927: $88
	adc  b                                           ; $5928: $88
	adc  b                                           ; $5929: $88
	adc  b                                           ; $592a: $88
	adc  b                                           ; $592b: $88
	adc  b                                           ; $592c: $88
	adc  b                                           ; $592d: $88
	adc  b                                           ; $592e: $88
	adc  b                                           ; $592f: $88
	adc  b                                           ; $5930: $88
	adc  b                                           ; $5931: $88
	adc  b                                           ; $5932: $88
	adc  b                                           ; $5933: $88
	adc  b                                           ; $5934: $88
	adc  b                                           ; $5935: $88
	adc  b                                           ; $5936: $88
	adc  b                                           ; $5937: $88
	adc  b                                           ; $5938: $88
	adc  b                                           ; $5939: $88
	adc  b                                           ; $593a: $88
	adc  b                                           ; $593b: $88
	adc  b                                           ; $593c: $88
	adc  b                                           ; $593d: $88
	adc  b                                           ; $593e: $88
	adc  b                                           ; $593f: $88
	adc  b                                           ; $5940: $88
	adc  b                                           ; $5941: $88
	adc  b                                           ; $5942: $88
	adc  b                                           ; $5943: $88
	adc  b                                           ; $5944: $88
	adc  b                                           ; $5945: $88
	adc  b                                           ; $5946: $88
	adc  b                                           ; $5947: $88
	adc  b                                           ; $5948: $88
	adc  b                                           ; $5949: $88
	adc  b                                           ; $594a: $88
	adc  b                                           ; $594b: $88
	adc  b                                           ; $594c: $88
	adc  b                                           ; $594d: $88
	adc  b                                           ; $594e: $88
	adc  b                                           ; $594f: $88
	adc  b                                           ; $5950: $88
	adc  b                                           ; $5951: $88
	adc  b                                           ; $5952: $88
	adc  b                                           ; $5953: $88
	adc  b                                           ; $5954: $88
	adc  b                                           ; $5955: $88
	adc  b                                           ; $5956: $88
	adc  b                                           ; $5957: $88
	adc  b                                           ; $5958: $88
	adc  b                                           ; $5959: $88
	adc  b                                           ; $595a: $88
	adc  b                                           ; $595b: $88
	adc  b                                           ; $595c: $88
	adc  b                                           ; $595d: $88
	adc  b                                           ; $595e: $88
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	adc  b                                           ; $5961: $88
	adc  b                                           ; $5962: $88
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  b                                           ; $596c: $88
	adc  b                                           ; $596d: $88
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	adc  b                                           ; $5970: $88
	adc  b                                           ; $5971: $88
	adc  b                                           ; $5972: $88
	adc  b                                           ; $5973: $88
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	adc  b                                           ; $5976: $88
	adc  b                                           ; $5977: $88
	adc  b                                           ; $5978: $88
	adc  b                                           ; $5979: $88
	adc  b                                           ; $597a: $88
	adc  b                                           ; $597b: $88
	adc  b                                           ; $597c: $88
	adc  b                                           ; $597d: $88
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	adc  b                                           ; $5980: $88
	adc  b                                           ; $5981: $88
	adc  b                                           ; $5982: $88
	adc  b                                           ; $5983: $88
	adc  b                                           ; $5984: $88
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  b                                           ; $598d: $88
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	adc  b                                           ; $5993: $88
	adc  b                                           ; $5994: $88
	adc  b                                           ; $5995: $88
	adc  b                                           ; $5996: $88
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	adc  b                                           ; $599b: $88
	adc  b                                           ; $599c: $88
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	adc  b                                           ; $599f: $88
	adc  b                                           ; $59a0: $88
	adc  b                                           ; $59a1: $88
	adc  b                                           ; $59a2: $88
	adc  b                                           ; $59a3: $88
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  b                                           ; $59a7: $88
	adc  b                                           ; $59a8: $88
	adc  b                                           ; $59a9: $88
	adc  b                                           ; $59aa: $88
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	adc  b                                           ; $59b2: $88
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88
	adc  b                                           ; $59b7: $88
	adc  b                                           ; $59b8: $88

Jump_0a5_59b9:
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
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	adc  b                                           ; $59d4: $88
	adc  b                                           ; $59d5: $88
	adc  b                                           ; $59d6: $88
	adc  b                                           ; $59d7: $88
	adc  b                                           ; $59d8: $88
	adc  b                                           ; $59d9: $88
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	adc  b                                           ; $59dd: $88
	adc  b                                           ; $59de: $88
	adc  b                                           ; $59df: $88
	adc  b                                           ; $59e0: $88
	adc  b                                           ; $59e1: $88
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	adc  b                                           ; $59e6: $88
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  b                                           ; $59ea: $88
	adc  b                                           ; $59eb: $88
	adc  b                                           ; $59ec: $88
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	adc  b                                           ; $59ef: $88
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	adc  b                                           ; $59f9: $88
	adc  b                                           ; $59fa: $88
	adc  b                                           ; $59fb: $88
	adc  b                                           ; $59fc: $88
	adc  b                                           ; $59fd: $88
	adc  b                                           ; $59fe: $88
	adc  b                                           ; $59ff: $88
	adc  b                                           ; $5a00: $88
	adc  b                                           ; $5a01: $88
	adc  b                                           ; $5a02: $88
	adc  b                                           ; $5a03: $88
	adc  b                                           ; $5a04: $88
	adc  b                                           ; $5a05: $88
	adc  b                                           ; $5a06: $88
	adc  b                                           ; $5a07: $88
	adc  b                                           ; $5a08: $88
	adc  b                                           ; $5a09: $88
	adc  b                                           ; $5a0a: $88
	adc  b                                           ; $5a0b: $88
	adc  b                                           ; $5a0c: $88
	adc  b                                           ; $5a0d: $88
	adc  b                                           ; $5a0e: $88
	adc  b                                           ; $5a0f: $88
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  b                                           ; $5a12: $88
	adc  b                                           ; $5a13: $88
	adc  b                                           ; $5a14: $88
	adc  b                                           ; $5a15: $88
	adc  b                                           ; $5a16: $88
	adc  b                                           ; $5a17: $88
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	adc  b                                           ; $5a1a: $88
	adc  b                                           ; $5a1b: $88
	adc  b                                           ; $5a1c: $88
	adc  b                                           ; $5a1d: $88
	adc  b                                           ; $5a1e: $88
	adc  b                                           ; $5a1f: $88
	adc  b                                           ; $5a20: $88
	adc  b                                           ; $5a21: $88
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	adc  b                                           ; $5a25: $88
	adc  b                                           ; $5a26: $88
	adc  b                                           ; $5a27: $88
	adc  b                                           ; $5a28: $88
	adc  b                                           ; $5a29: $88
	adc  b                                           ; $5a2a: $88
	adc  b                                           ; $5a2b: $88
	adc  b                                           ; $5a2c: $88
	adc  b                                           ; $5a2d: $88
	adc  b                                           ; $5a2e: $88
	adc  b                                           ; $5a2f: $88
	adc  b                                           ; $5a30: $88
	adc  b                                           ; $5a31: $88
	adc  b                                           ; $5a32: $88
	adc  b                                           ; $5a33: $88
	adc  b                                           ; $5a34: $88
	adc  b                                           ; $5a35: $88
	adc  b                                           ; $5a36: $88
	adc  b                                           ; $5a37: $88
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
	adc  b                                           ; $5a56: $88
	adc  b                                           ; $5a57: $88
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	adc  b                                           ; $5a5a: $88
	adc  b                                           ; $5a5b: $88
	adc  b                                           ; $5a5c: $88
	adc  b                                           ; $5a5d: $88
	adc  b                                           ; $5a5e: $88
	adc  b                                           ; $5a5f: $88
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88
	adc  b                                           ; $5a64: $88
	adc  b                                           ; $5a65: $88
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	adc  b                                           ; $5a68: $88
	adc  b                                           ; $5a69: $88
	adc  b                                           ; $5a6a: $88
	adc  b                                           ; $5a6b: $88
	adc  b                                           ; $5a6c: $88
	adc  b                                           ; $5a6d: $88
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	adc  b                                           ; $5a70: $88
	adc  b                                           ; $5a71: $88
	adc  b                                           ; $5a72: $88
	adc  b                                           ; $5a73: $88
	adc  b                                           ; $5a74: $88
	adc  b                                           ; $5a75: $88
	adc  b                                           ; $5a76: $88
	adc  b                                           ; $5a77: $88
	adc  b                                           ; $5a78: $88
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	adc  b                                           ; $5a7b: $88
	adc  b                                           ; $5a7c: $88
	adc  b                                           ; $5a7d: $88
	adc  b                                           ; $5a7e: $88
	adc  b                                           ; $5a7f: $88
	adc  b                                           ; $5a80: $88
	adc  b                                           ; $5a81: $88
	adc  b                                           ; $5a82: $88
	adc  b                                           ; $5a83: $88
	adc  b                                           ; $5a84: $88
	adc  b                                           ; $5a85: $88
	adc  b                                           ; $5a86: $88
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	adc  b                                           ; $5a8f: $88
	adc  b                                           ; $5a90: $88
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
	adc  b                                           ; $5aa2: $88
	adc  b                                           ; $5aa3: $88
	adc  b                                           ; $5aa4: $88
	adc  b                                           ; $5aa5: $88
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	adc  b                                           ; $5aa9: $88
	adc  b                                           ; $5aaa: $88
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
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	adc  b                                           ; $5ac7: $88
	adc  b                                           ; $5ac8: $88
	adc  b                                           ; $5ac9: $88
	adc  b                                           ; $5aca: $88
	adc  b                                           ; $5acb: $88
	adc  b                                           ; $5acc: $88
	adc  b                                           ; $5acd: $88
	adc  b                                           ; $5ace: $88
	adc  b                                           ; $5acf: $88
	adc  b                                           ; $5ad0: $88
	adc  b                                           ; $5ad1: $88
	adc  b                                           ; $5ad2: $88
	adc  b                                           ; $5ad3: $88
	adc  b                                           ; $5ad4: $88
	adc  b                                           ; $5ad5: $88
	adc  b                                           ; $5ad6: $88
	adc  b                                           ; $5ad7: $88
	adc  b                                           ; $5ad8: $88
	adc  b                                           ; $5ad9: $88
	adc  b                                           ; $5ada: $88
	adc  b                                           ; $5adb: $88
	adc  b                                           ; $5adc: $88
	adc  b                                           ; $5add: $88
	adc  b                                           ; $5ade: $88
	adc  b                                           ; $5adf: $88
	adc  b                                           ; $5ae0: $88
	adc  b                                           ; $5ae1: $88
	adc  b                                           ; $5ae2: $88
	adc  b                                           ; $5ae3: $88
	adc  b                                           ; $5ae4: $88
	adc  b                                           ; $5ae5: $88
	adc  b                                           ; $5ae6: $88
	adc  b                                           ; $5ae7: $88
	adc  b                                           ; $5ae8: $88
	adc  b                                           ; $5ae9: $88
	adc  b                                           ; $5aea: $88
	adc  b                                           ; $5aeb: $88
	adc  b                                           ; $5aec: $88
	adc  b                                           ; $5aed: $88
	adc  b                                           ; $5aee: $88
	adc  b                                           ; $5aef: $88
	adc  b                                           ; $5af0: $88
	adc  b                                           ; $5af1: $88
	adc  b                                           ; $5af2: $88
	adc  b                                           ; $5af3: $88
	adc  b                                           ; $5af4: $88
	adc  b                                           ; $5af5: $88
	adc  b                                           ; $5af6: $88
	adc  b                                           ; $5af7: $88
	adc  b                                           ; $5af8: $88
	adc  b                                           ; $5af9: $88
	adc  b                                           ; $5afa: $88
	adc  b                                           ; $5afb: $88
	adc  b                                           ; $5afc: $88
	adc  b                                           ; $5afd: $88
	adc  b                                           ; $5afe: $88
	adc  b                                           ; $5aff: $88
	adc  b                                           ; $5b00: $88
	adc  b                                           ; $5b01: $88
	adc  b                                           ; $5b02: $88
	adc  b                                           ; $5b03: $88
	adc  b                                           ; $5b04: $88
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  b                                           ; $5b07: $88
	adc  b                                           ; $5b08: $88
	adc  b                                           ; $5b09: $88
	adc  b                                           ; $5b0a: $88
	adc  b                                           ; $5b0b: $88
	adc  b                                           ; $5b0c: $88
	adc  b                                           ; $5b0d: $88
	adc  b                                           ; $5b0e: $88
	adc  b                                           ; $5b0f: $88
	adc  b                                           ; $5b10: $88
	adc  b                                           ; $5b11: $88
	adc  b                                           ; $5b12: $88
	adc  b                                           ; $5b13: $88
	adc  b                                           ; $5b14: $88
	adc  b                                           ; $5b15: $88
	adc  b                                           ; $5b16: $88
	adc  b                                           ; $5b17: $88
	adc  b                                           ; $5b18: $88
	adc  b                                           ; $5b19: $88
	adc  b                                           ; $5b1a: $88
	adc  b                                           ; $5b1b: $88
	adc  b                                           ; $5b1c: $88
	adc  b                                           ; $5b1d: $88
	adc  b                                           ; $5b1e: $88
	adc  b                                           ; $5b1f: $88
	adc  b                                           ; $5b20: $88
	adc  b                                           ; $5b21: $88
	adc  b                                           ; $5b22: $88
	adc  b                                           ; $5b23: $88
	adc  b                                           ; $5b24: $88
	adc  b                                           ; $5b25: $88
	adc  b                                           ; $5b26: $88
	adc  b                                           ; $5b27: $88
	adc  b                                           ; $5b28: $88
	adc  b                                           ; $5b29: $88
	adc  b                                           ; $5b2a: $88
	adc  b                                           ; $5b2b: $88
	adc  b                                           ; $5b2c: $88
	adc  b                                           ; $5b2d: $88
	adc  b                                           ; $5b2e: $88
	adc  b                                           ; $5b2f: $88
	adc  b                                           ; $5b30: $88

Jump_0a5_5b31:
	adc  b                                           ; $5b31: $88
	adc  b                                           ; $5b32: $88
	adc  b                                           ; $5b33: $88
	adc  b                                           ; $5b34: $88
	adc  b                                           ; $5b35: $88
	adc  b                                           ; $5b36: $88
	adc  b                                           ; $5b37: $88
	adc  b                                           ; $5b38: $88
	adc  b                                           ; $5b39: $88
	adc  b                                           ; $5b3a: $88
	adc  b                                           ; $5b3b: $88
	adc  b                                           ; $5b3c: $88
	adc  b                                           ; $5b3d: $88
	adc  b                                           ; $5b3e: $88
	adc  b                                           ; $5b3f: $88
	adc  b                                           ; $5b40: $88
	adc  b                                           ; $5b41: $88
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
	adc  b                                           ; $5b68: $88
	adc  b                                           ; $5b69: $88
	adc  b                                           ; $5b6a: $88
	adc  b                                           ; $5b6b: $88
	adc  b                                           ; $5b6c: $88
	adc  b                                           ; $5b6d: $88
	adc  b                                           ; $5b6e: $88
	adc  b                                           ; $5b6f: $88
	adc  b                                           ; $5b70: $88
	adc  b                                           ; $5b71: $88
	adc  b                                           ; $5b72: $88
	adc  b                                           ; $5b73: $88
	adc  b                                           ; $5b74: $88
	adc  b                                           ; $5b75: $88
	adc  b                                           ; $5b76: $88
	adc  b                                           ; $5b77: $88
	adc  b                                           ; $5b78: $88
	adc  b                                           ; $5b79: $88
	adc  b                                           ; $5b7a: $88
	adc  b                                           ; $5b7b: $88
	adc  b                                           ; $5b7c: $88
	adc  b                                           ; $5b7d: $88
	adc  b                                           ; $5b7e: $88
	adc  b                                           ; $5b7f: $88
	adc  b                                           ; $5b80: $88
	adc  b                                           ; $5b81: $88
	adc  b                                           ; $5b82: $88
	adc  b                                           ; $5b83: $88
	adc  b                                           ; $5b84: $88
	adc  b                                           ; $5b85: $88
	adc  b                                           ; $5b86: $88
	adc  b                                           ; $5b87: $88
	adc  b                                           ; $5b88: $88
	adc  b                                           ; $5b89: $88
	adc  b                                           ; $5b8a: $88
	adc  b                                           ; $5b8b: $88
	adc  b                                           ; $5b8c: $88
	adc  b                                           ; $5b8d: $88
	adc  b                                           ; $5b8e: $88
	adc  b                                           ; $5b8f: $88
	adc  b                                           ; $5b90: $88
	adc  b                                           ; $5b91: $88
	adc  b                                           ; $5b92: $88
	adc  b                                           ; $5b93: $88
	adc  b                                           ; $5b94: $88
	adc  b                                           ; $5b95: $88
	adc  b                                           ; $5b96: $88
	adc  b                                           ; $5b97: $88
	adc  b                                           ; $5b98: $88
	adc  b                                           ; $5b99: $88
	adc  b                                           ; $5b9a: $88
	adc  b                                           ; $5b9b: $88
	adc  b                                           ; $5b9c: $88
	adc  b                                           ; $5b9d: $88
	adc  b                                           ; $5b9e: $88
	adc  b                                           ; $5b9f: $88
	adc  b                                           ; $5ba0: $88
	adc  b                                           ; $5ba1: $88
	adc  b                                           ; $5ba2: $88
	adc  b                                           ; $5ba3: $88
	adc  b                                           ; $5ba4: $88
	adc  b                                           ; $5ba5: $88
	adc  b                                           ; $5ba6: $88
	adc  b                                           ; $5ba7: $88
	adc  b                                           ; $5ba8: $88
	adc  b                                           ; $5ba9: $88
	adc  b                                           ; $5baa: $88
	adc  b                                           ; $5bab: $88
	adc  b                                           ; $5bac: $88
	adc  b                                           ; $5bad: $88
	adc  b                                           ; $5bae: $88
	adc  b                                           ; $5baf: $88
	adc  b                                           ; $5bb0: $88
	adc  b                                           ; $5bb1: $88
	adc  b                                           ; $5bb2: $88
	adc  b                                           ; $5bb3: $88
	adc  b                                           ; $5bb4: $88
	adc  b                                           ; $5bb5: $88
	adc  b                                           ; $5bb6: $88
	adc  b                                           ; $5bb7: $88
	adc  b                                           ; $5bb8: $88
	adc  b                                           ; $5bb9: $88
	adc  b                                           ; $5bba: $88
	adc  b                                           ; $5bbb: $88
	adc  b                                           ; $5bbc: $88
	adc  b                                           ; $5bbd: $88
	adc  b                                           ; $5bbe: $88
	adc  b                                           ; $5bbf: $88
	adc  b                                           ; $5bc0: $88
	adc  b                                           ; $5bc1: $88
	adc  b                                           ; $5bc2: $88
	adc  b                                           ; $5bc3: $88
	adc  b                                           ; $5bc4: $88
	adc  b                                           ; $5bc5: $88
	adc  b                                           ; $5bc6: $88
	adc  b                                           ; $5bc7: $88
	adc  b                                           ; $5bc8: $88
	adc  b                                           ; $5bc9: $88
	adc  b                                           ; $5bca: $88
	adc  b                                           ; $5bcb: $88
	adc  b                                           ; $5bcc: $88
	adc  b                                           ; $5bcd: $88
	adc  b                                           ; $5bce: $88
	adc  b                                           ; $5bcf: $88
	adc  b                                           ; $5bd0: $88
	adc  b                                           ; $5bd1: $88
	adc  b                                           ; $5bd2: $88
	adc  b                                           ; $5bd3: $88
	adc  b                                           ; $5bd4: $88
	adc  b                                           ; $5bd5: $88
	adc  b                                           ; $5bd6: $88
	adc  b                                           ; $5bd7: $88
	adc  b                                           ; $5bd8: $88
	adc  b                                           ; $5bd9: $88
	adc  b                                           ; $5bda: $88
	adc  b                                           ; $5bdb: $88
	adc  b                                           ; $5bdc: $88
	adc  b                                           ; $5bdd: $88
	adc  b                                           ; $5bde: $88
	adc  b                                           ; $5bdf: $88
	adc  b                                           ; $5be0: $88
	adc  b                                           ; $5be1: $88
	adc  b                                           ; $5be2: $88
	adc  b                                           ; $5be3: $88
	adc  b                                           ; $5be4: $88
	adc  b                                           ; $5be5: $88
	adc  b                                           ; $5be6: $88
	adc  b                                           ; $5be7: $88
	adc  b                                           ; $5be8: $88
	adc  b                                           ; $5be9: $88
	adc  b                                           ; $5bea: $88
	adc  b                                           ; $5beb: $88
	adc  b                                           ; $5bec: $88
	adc  b                                           ; $5bed: $88
	adc  b                                           ; $5bee: $88
	adc  b                                           ; $5bef: $88
	adc  b                                           ; $5bf0: $88
	adc  b                                           ; $5bf1: $88
	adc  b                                           ; $5bf2: $88
	adc  b                                           ; $5bf3: $88
	adc  b                                           ; $5bf4: $88
	adc  b                                           ; $5bf5: $88
	adc  b                                           ; $5bf6: $88
	adc  b                                           ; $5bf7: $88
	adc  b                                           ; $5bf8: $88
	adc  b                                           ; $5bf9: $88
	adc  b                                           ; $5bfa: $88
	adc  b                                           ; $5bfb: $88
	adc  b                                           ; $5bfc: $88
	adc  b                                           ; $5bfd: $88
	adc  b                                           ; $5bfe: $88
	adc  b                                           ; $5bff: $88
	adc  b                                           ; $5c00: $88
	adc  b                                           ; $5c01: $88
	adc  b                                           ; $5c02: $88
	adc  b                                           ; $5c03: $88
	adc  b                                           ; $5c04: $88
	adc  b                                           ; $5c05: $88
	adc  b                                           ; $5c06: $88
	adc  b                                           ; $5c07: $88
	adc  b                                           ; $5c08: $88
	adc  b                                           ; $5c09: $88
	adc  b                                           ; $5c0a: $88
	adc  b                                           ; $5c0b: $88
	adc  b                                           ; $5c0c: $88
	adc  b                                           ; $5c0d: $88
	adc  b                                           ; $5c0e: $88
	adc  b                                           ; $5c0f: $88
	adc  b                                           ; $5c10: $88
	adc  b                                           ; $5c11: $88
	adc  b                                           ; $5c12: $88
	adc  b                                           ; $5c13: $88
	adc  b                                           ; $5c14: $88
	adc  b                                           ; $5c15: $88
	adc  b                                           ; $5c16: $88
	adc  b                                           ; $5c17: $88
	adc  b                                           ; $5c18: $88
	adc  b                                           ; $5c19: $88
	adc  b                                           ; $5c1a: $88
	adc  b                                           ; $5c1b: $88
	adc  b                                           ; $5c1c: $88
	adc  b                                           ; $5c1d: $88
	adc  b                                           ; $5c1e: $88
	adc  b                                           ; $5c1f: $88
	adc  b                                           ; $5c20: $88
	adc  b                                           ; $5c21: $88
	adc  b                                           ; $5c22: $88
	adc  b                                           ; $5c23: $88
	adc  b                                           ; $5c24: $88
	adc  b                                           ; $5c25: $88
	adc  b                                           ; $5c26: $88
	adc  b                                           ; $5c27: $88
	adc  b                                           ; $5c28: $88
	adc  b                                           ; $5c29: $88
	adc  b                                           ; $5c2a: $88
	adc  b                                           ; $5c2b: $88
	adc  b                                           ; $5c2c: $88
	adc  b                                           ; $5c2d: $88
	adc  b                                           ; $5c2e: $88
	adc  b                                           ; $5c2f: $88
	adc  b                                           ; $5c30: $88
	adc  b                                           ; $5c31: $88
	adc  b                                           ; $5c32: $88
	adc  b                                           ; $5c33: $88
	adc  b                                           ; $5c34: $88
	adc  b                                           ; $5c35: $88
	adc  b                                           ; $5c36: $88
	adc  b                                           ; $5c37: $88
	adc  b                                           ; $5c38: $88
	adc  b                                           ; $5c39: $88
	adc  b                                           ; $5c3a: $88
	adc  b                                           ; $5c3b: $88
	adc  b                                           ; $5c3c: $88
	adc  b                                           ; $5c3d: $88
	adc  b                                           ; $5c3e: $88
	adc  b                                           ; $5c3f: $88
	adc  b                                           ; $5c40: $88
	adc  b                                           ; $5c41: $88
	adc  b                                           ; $5c42: $88
	adc  b                                           ; $5c43: $88
	adc  b                                           ; $5c44: $88
	adc  b                                           ; $5c45: $88
	adc  b                                           ; $5c46: $88
	adc  b                                           ; $5c47: $88
	adc  b                                           ; $5c48: $88
	adc  b                                           ; $5c49: $88
	adc  b                                           ; $5c4a: $88
	adc  b                                           ; $5c4b: $88
	adc  b                                           ; $5c4c: $88
	adc  b                                           ; $5c4d: $88
	adc  b                                           ; $5c4e: $88
	adc  b                                           ; $5c4f: $88
	adc  b                                           ; $5c50: $88
	adc  b                                           ; $5c51: $88
	adc  b                                           ; $5c52: $88
	adc  b                                           ; $5c53: $88
	adc  b                                           ; $5c54: $88
	adc  b                                           ; $5c55: $88
	adc  b                                           ; $5c56: $88
	adc  b                                           ; $5c57: $88
	adc  b                                           ; $5c58: $88
	adc  b                                           ; $5c59: $88
	adc  b                                           ; $5c5a: $88
	adc  b                                           ; $5c5b: $88
	adc  b                                           ; $5c5c: $88
	adc  b                                           ; $5c5d: $88
	adc  b                                           ; $5c5e: $88
	adc  b                                           ; $5c5f: $88
	adc  b                                           ; $5c60: $88
	adc  b                                           ; $5c61: $88
	adc  b                                           ; $5c62: $88
	adc  b                                           ; $5c63: $88
	adc  b                                           ; $5c64: $88
	adc  b                                           ; $5c65: $88
	adc  b                                           ; $5c66: $88
	adc  b                                           ; $5c67: $88
	adc  b                                           ; $5c68: $88
	adc  b                                           ; $5c69: $88
	adc  b                                           ; $5c6a: $88
	adc  b                                           ; $5c6b: $88
	adc  b                                           ; $5c6c: $88
	adc  b                                           ; $5c6d: $88
	adc  b                                           ; $5c6e: $88
	adc  b                                           ; $5c6f: $88
	adc  b                                           ; $5c70: $88
	adc  b                                           ; $5c71: $88
	adc  b                                           ; $5c72: $88
	adc  b                                           ; $5c73: $88
	adc  b                                           ; $5c74: $88
	adc  b                                           ; $5c75: $88
	adc  b                                           ; $5c76: $88
	adc  b                                           ; $5c77: $88
	adc  b                                           ; $5c78: $88
	adc  b                                           ; $5c79: $88
	adc  b                                           ; $5c7a: $88
	adc  b                                           ; $5c7b: $88
	adc  b                                           ; $5c7c: $88
	adc  b                                           ; $5c7d: $88
	adc  b                                           ; $5c7e: $88
	adc  b                                           ; $5c7f: $88
	adc  b                                           ; $5c80: $88
	adc  b                                           ; $5c81: $88
	adc  b                                           ; $5c82: $88
	adc  b                                           ; $5c83: $88
	adc  b                                           ; $5c84: $88
	adc  b                                           ; $5c85: $88
	adc  b                                           ; $5c86: $88
	adc  b                                           ; $5c87: $88
	adc  b                                           ; $5c88: $88
	adc  b                                           ; $5c89: $88
	adc  b                                           ; $5c8a: $88
	adc  b                                           ; $5c8b: $88
	adc  b                                           ; $5c8c: $88
	adc  b                                           ; $5c8d: $88
	adc  b                                           ; $5c8e: $88
	adc  b                                           ; $5c8f: $88
	adc  b                                           ; $5c90: $88
	adc  b                                           ; $5c91: $88
	adc  b                                           ; $5c92: $88
	adc  b                                           ; $5c93: $88
	adc  b                                           ; $5c94: $88
	adc  b                                           ; $5c95: $88
	adc  b                                           ; $5c96: $88
	adc  b                                           ; $5c97: $88
	adc  b                                           ; $5c98: $88
	adc  b                                           ; $5c99: $88
	adc  b                                           ; $5c9a: $88
	adc  b                                           ; $5c9b: $88
	adc  b                                           ; $5c9c: $88
	adc  b                                           ; $5c9d: $88
	adc  b                                           ; $5c9e: $88
	adc  b                                           ; $5c9f: $88
	adc  b                                           ; $5ca0: $88
	adc  b                                           ; $5ca1: $88
	adc  b                                           ; $5ca2: $88
	adc  b                                           ; $5ca3: $88
	adc  b                                           ; $5ca4: $88
	adc  b                                           ; $5ca5: $88
	adc  b                                           ; $5ca6: $88
	adc  b                                           ; $5ca7: $88
	adc  b                                           ; $5ca8: $88
	adc  b                                           ; $5ca9: $88
	adc  b                                           ; $5caa: $88
	adc  b                                           ; $5cab: $88
	adc  b                                           ; $5cac: $88
	adc  b                                           ; $5cad: $88
	adc  b                                           ; $5cae: $88
	adc  b                                           ; $5caf: $88
	adc  b                                           ; $5cb0: $88
	adc  b                                           ; $5cb1: $88
	adc  b                                           ; $5cb2: $88
	adc  b                                           ; $5cb3: $88
	adc  b                                           ; $5cb4: $88
	adc  b                                           ; $5cb5: $88
	adc  b                                           ; $5cb6: $88
	adc  b                                           ; $5cb7: $88
	adc  b                                           ; $5cb8: $88
	adc  b                                           ; $5cb9: $88
	adc  b                                           ; $5cba: $88
	adc  b                                           ; $5cbb: $88
	adc  b                                           ; $5cbc: $88
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	adc  b                                           ; $5cbf: $88
	adc  b                                           ; $5cc0: $88
	adc  b                                           ; $5cc1: $88
	adc  b                                           ; $5cc2: $88
	adc  b                                           ; $5cc3: $88
	adc  b                                           ; $5cc4: $88
	adc  b                                           ; $5cc5: $88
	adc  b                                           ; $5cc6: $88
	adc  b                                           ; $5cc7: $88
	adc  b                                           ; $5cc8: $88
	adc  b                                           ; $5cc9: $88
	adc  b                                           ; $5cca: $88
	adc  b                                           ; $5ccb: $88
	adc  b                                           ; $5ccc: $88
	adc  b                                           ; $5ccd: $88
	adc  b                                           ; $5cce: $88
	adc  b                                           ; $5ccf: $88
	adc  b                                           ; $5cd0: $88
	adc  b                                           ; $5cd1: $88
	adc  b                                           ; $5cd2: $88
	adc  b                                           ; $5cd3: $88
	adc  b                                           ; $5cd4: $88
	adc  b                                           ; $5cd5: $88
	adc  b                                           ; $5cd6: $88
	adc  b                                           ; $5cd7: $88
	adc  b                                           ; $5cd8: $88
	adc  b                                           ; $5cd9: $88
	adc  b                                           ; $5cda: $88
	adc  b                                           ; $5cdb: $88
	adc  b                                           ; $5cdc: $88
	adc  b                                           ; $5cdd: $88
	adc  b                                           ; $5cde: $88
	adc  b                                           ; $5cdf: $88
	adc  b                                           ; $5ce0: $88
	adc  b                                           ; $5ce1: $88
	adc  b                                           ; $5ce2: $88
	adc  b                                           ; $5ce3: $88
	adc  b                                           ; $5ce4: $88
	adc  b                                           ; $5ce5: $88
	adc  b                                           ; $5ce6: $88
	adc  b                                           ; $5ce7: $88
	adc  b                                           ; $5ce8: $88
	adc  b                                           ; $5ce9: $88
	adc  b                                           ; $5cea: $88
	adc  b                                           ; $5ceb: $88
	adc  b                                           ; $5cec: $88
	adc  b                                           ; $5ced: $88
	adc  b                                           ; $5cee: $88
	adc  b                                           ; $5cef: $88
	adc  b                                           ; $5cf0: $88
	adc  b                                           ; $5cf1: $88
	adc  b                                           ; $5cf2: $88
	adc  b                                           ; $5cf3: $88
	adc  b                                           ; $5cf4: $88
	adc  b                                           ; $5cf5: $88
	adc  b                                           ; $5cf6: $88
	adc  b                                           ; $5cf7: $88
	adc  b                                           ; $5cf8: $88
	adc  b                                           ; $5cf9: $88
	adc  b                                           ; $5cfa: $88
	adc  b                                           ; $5cfb: $88
	adc  b                                           ; $5cfc: $88
	adc  b                                           ; $5cfd: $88
	adc  b                                           ; $5cfe: $88
	adc  b                                           ; $5cff: $88
	adc  b                                           ; $5d00: $88
	adc  b                                           ; $5d01: $88
	adc  b                                           ; $5d02: $88
	adc  b                                           ; $5d03: $88
	adc  b                                           ; $5d04: $88
	adc  b                                           ; $5d05: $88
	adc  b                                           ; $5d06: $88
	adc  b                                           ; $5d07: $88
	adc  b                                           ; $5d08: $88
	adc  b                                           ; $5d09: $88
	adc  b                                           ; $5d0a: $88
	adc  b                                           ; $5d0b: $88
	adc  b                                           ; $5d0c: $88
	adc  b                                           ; $5d0d: $88
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	adc  b                                           ; $5d10: $88
	adc  b                                           ; $5d11: $88
	adc  b                                           ; $5d12: $88
	adc  b                                           ; $5d13: $88
	adc  b                                           ; $5d14: $88
	adc  b                                           ; $5d15: $88
	adc  b                                           ; $5d16: $88
	adc  b                                           ; $5d17: $88
	adc  b                                           ; $5d18: $88
	adc  b                                           ; $5d19: $88
	adc  b                                           ; $5d1a: $88
	adc  b                                           ; $5d1b: $88
	adc  b                                           ; $5d1c: $88
	adc  b                                           ; $5d1d: $88
	adc  b                                           ; $5d1e: $88
	adc  b                                           ; $5d1f: $88
	adc  b                                           ; $5d20: $88
	adc  b                                           ; $5d21: $88
	adc  b                                           ; $5d22: $88
	adc  b                                           ; $5d23: $88
	adc  b                                           ; $5d24: $88
	adc  b                                           ; $5d25: $88
	adc  b                                           ; $5d26: $88
	adc  b                                           ; $5d27: $88
	adc  b                                           ; $5d28: $88
	adc  b                                           ; $5d29: $88
	adc  b                                           ; $5d2a: $88
	adc  b                                           ; $5d2b: $88
	adc  b                                           ; $5d2c: $88
	adc  b                                           ; $5d2d: $88
	adc  b                                           ; $5d2e: $88
	adc  b                                           ; $5d2f: $88
	adc  b                                           ; $5d30: $88
	adc  b                                           ; $5d31: $88
	adc  b                                           ; $5d32: $88
	adc  b                                           ; $5d33: $88
	adc  b                                           ; $5d34: $88
	adc  b                                           ; $5d35: $88
	adc  b                                           ; $5d36: $88
	adc  b                                           ; $5d37: $88
	adc  b                                           ; $5d38: $88
	adc  b                                           ; $5d39: $88
	adc  b                                           ; $5d3a: $88
	adc  b                                           ; $5d3b: $88
	adc  b                                           ; $5d3c: $88
	adc  b                                           ; $5d3d: $88
	adc  b                                           ; $5d3e: $88
	adc  b                                           ; $5d3f: $88
	adc  b                                           ; $5d40: $88
	adc  b                                           ; $5d41: $88
	adc  b                                           ; $5d42: $88
	adc  b                                           ; $5d43: $88
	adc  b                                           ; $5d44: $88
	adc  b                                           ; $5d45: $88
	adc  b                                           ; $5d46: $88
	adc  b                                           ; $5d47: $88
	adc  b                                           ; $5d48: $88
	adc  b                                           ; $5d49: $88
	adc  b                                           ; $5d4a: $88
	adc  b                                           ; $5d4b: $88
	adc  b                                           ; $5d4c: $88
	adc  b                                           ; $5d4d: $88
	adc  b                                           ; $5d4e: $88
	adc  b                                           ; $5d4f: $88
	adc  b                                           ; $5d50: $88
	adc  b                                           ; $5d51: $88
	adc  b                                           ; $5d52: $88
	adc  b                                           ; $5d53: $88
	adc  b                                           ; $5d54: $88
	adc  b                                           ; $5d55: $88
	adc  b                                           ; $5d56: $88
	adc  b                                           ; $5d57: $88
	adc  b                                           ; $5d58: $88
	adc  b                                           ; $5d59: $88
	adc  b                                           ; $5d5a: $88
	adc  b                                           ; $5d5b: $88
	adc  b                                           ; $5d5c: $88
	adc  b                                           ; $5d5d: $88
	adc  b                                           ; $5d5e: $88
	adc  b                                           ; $5d5f: $88
	adc  b                                           ; $5d60: $88
	adc  b                                           ; $5d61: $88
	adc  b                                           ; $5d62: $88
	adc  b                                           ; $5d63: $88
	adc  b                                           ; $5d64: $88
	adc  b                                           ; $5d65: $88
	adc  b                                           ; $5d66: $88
	adc  b                                           ; $5d67: $88
	adc  b                                           ; $5d68: $88
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  b                                           ; $5d6b: $88
	adc  b                                           ; $5d6c: $88
	adc  b                                           ; $5d6d: $88
	adc  b                                           ; $5d6e: $88
	adc  b                                           ; $5d6f: $88
	adc  b                                           ; $5d70: $88
	adc  b                                           ; $5d71: $88
	adc  b                                           ; $5d72: $88
	adc  b                                           ; $5d73: $88
	adc  b                                           ; $5d74: $88
	adc  b                                           ; $5d75: $88
	adc  b                                           ; $5d76: $88
	adc  b                                           ; $5d77: $88
	adc  b                                           ; $5d78: $88
	adc  b                                           ; $5d79: $88
	adc  b                                           ; $5d7a: $88
	adc  b                                           ; $5d7b: $88
	adc  b                                           ; $5d7c: $88
	adc  b                                           ; $5d7d: $88
	adc  b                                           ; $5d7e: $88
	adc  b                                           ; $5d7f: $88
	adc  b                                           ; $5d80: $88
	adc  b                                           ; $5d81: $88
	adc  b                                           ; $5d82: $88
	adc  b                                           ; $5d83: $88
	adc  b                                           ; $5d84: $88
	adc  b                                           ; $5d85: $88
	adc  b                                           ; $5d86: $88
	adc  b                                           ; $5d87: $88
	adc  b                                           ; $5d88: $88
	adc  b                                           ; $5d89: $88
	adc  b                                           ; $5d8a: $88
	adc  b                                           ; $5d8b: $88
	adc  b                                           ; $5d8c: $88
	adc  b                                           ; $5d8d: $88
	adc  b                                           ; $5d8e: $88
	adc  b                                           ; $5d8f: $88
	adc  b                                           ; $5d90: $88
	adc  b                                           ; $5d91: $88
	adc  b                                           ; $5d92: $88
	adc  b                                           ; $5d93: $88
	adc  b                                           ; $5d94: $88
	adc  b                                           ; $5d95: $88
	adc  b                                           ; $5d96: $88
	adc  b                                           ; $5d97: $88
	adc  b                                           ; $5d98: $88
	adc  b                                           ; $5d99: $88
	adc  b                                           ; $5d9a: $88
	adc  b                                           ; $5d9b: $88
	adc  b                                           ; $5d9c: $88
	adc  b                                           ; $5d9d: $88
	adc  b                                           ; $5d9e: $88
	adc  b                                           ; $5d9f: $88
	adc  b                                           ; $5da0: $88
	adc  b                                           ; $5da1: $88
	adc  b                                           ; $5da2: $88
	adc  b                                           ; $5da3: $88
	adc  b                                           ; $5da4: $88
	adc  b                                           ; $5da5: $88
	adc  b                                           ; $5da6: $88
	adc  b                                           ; $5da7: $88
	adc  b                                           ; $5da8: $88
	adc  b                                           ; $5da9: $88
	adc  b                                           ; $5daa: $88
	adc  b                                           ; $5dab: $88
	adc  b                                           ; $5dac: $88
	adc  b                                           ; $5dad: $88
	adc  b                                           ; $5dae: $88
	adc  b                                           ; $5daf: $88
	adc  b                                           ; $5db0: $88
	adc  b                                           ; $5db1: $88
	adc  b                                           ; $5db2: $88
	adc  b                                           ; $5db3: $88
	adc  b                                           ; $5db4: $88
	adc  b                                           ; $5db5: $88
	adc  b                                           ; $5db6: $88
	adc  b                                           ; $5db7: $88
	adc  b                                           ; $5db8: $88
	adc  b                                           ; $5db9: $88
	adc  b                                           ; $5dba: $88
	adc  b                                           ; $5dbb: $88
	adc  b                                           ; $5dbc: $88
	adc  b                                           ; $5dbd: $88
	adc  b                                           ; $5dbe: $88
	adc  b                                           ; $5dbf: $88
	adc  b                                           ; $5dc0: $88
	adc  b                                           ; $5dc1: $88
	adc  b                                           ; $5dc2: $88
	adc  b                                           ; $5dc3: $88
	adc  b                                           ; $5dc4: $88
	adc  b                                           ; $5dc5: $88
	adc  b                                           ; $5dc6: $88
	adc  b                                           ; $5dc7: $88
	adc  b                                           ; $5dc8: $88
	adc  b                                           ; $5dc9: $88
	adc  b                                           ; $5dca: $88
	adc  b                                           ; $5dcb: $88
	adc  b                                           ; $5dcc: $88
	adc  b                                           ; $5dcd: $88
	adc  b                                           ; $5dce: $88
	adc  b                                           ; $5dcf: $88
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	adc  b                                           ; $5dd2: $88
	adc  b                                           ; $5dd3: $88
	adc  b                                           ; $5dd4: $88
	adc  b                                           ; $5dd5: $88
	adc  b                                           ; $5dd6: $88
	adc  b                                           ; $5dd7: $88
	adc  b                                           ; $5dd8: $88
	adc  b                                           ; $5dd9: $88
	adc  b                                           ; $5dda: $88
	adc  b                                           ; $5ddb: $88
	adc  b                                           ; $5ddc: $88
	adc  b                                           ; $5ddd: $88
	adc  b                                           ; $5dde: $88
	adc  b                                           ; $5ddf: $88
	adc  b                                           ; $5de0: $88
	adc  b                                           ; $5de1: $88
	adc  b                                           ; $5de2: $88
	adc  b                                           ; $5de3: $88
	adc  b                                           ; $5de4: $88
	adc  b                                           ; $5de5: $88
	adc  b                                           ; $5de6: $88
	adc  b                                           ; $5de7: $88
	adc  b                                           ; $5de8: $88
	adc  b                                           ; $5de9: $88
	adc  b                                           ; $5dea: $88
	adc  b                                           ; $5deb: $88
	adc  b                                           ; $5dec: $88
	adc  b                                           ; $5ded: $88
	adc  b                                           ; $5dee: $88
	adc  b                                           ; $5def: $88
	adc  b                                           ; $5df0: $88
	adc  b                                           ; $5df1: $88
	adc  b                                           ; $5df2: $88
	adc  b                                           ; $5df3: $88
	adc  b                                           ; $5df4: $88
	adc  b                                           ; $5df5: $88
	adc  b                                           ; $5df6: $88
	adc  b                                           ; $5df7: $88
	adc  b                                           ; $5df8: $88
	adc  b                                           ; $5df9: $88
	adc  b                                           ; $5dfa: $88
	adc  b                                           ; $5dfb: $88
	adc  b                                           ; $5dfc: $88
	adc  b                                           ; $5dfd: $88
	adc  b                                           ; $5dfe: $88
	adc  b                                           ; $5dff: $88
	adc  b                                           ; $5e00: $88
	adc  b                                           ; $5e01: $88
	adc  b                                           ; $5e02: $88
	adc  b                                           ; $5e03: $88
	adc  b                                           ; $5e04: $88
	adc  b                                           ; $5e05: $88
	adc  b                                           ; $5e06: $88
	adc  b                                           ; $5e07: $88
	adc  b                                           ; $5e08: $88
	adc  b                                           ; $5e09: $88
	adc  b                                           ; $5e0a: $88
	adc  b                                           ; $5e0b: $88
	adc  b                                           ; $5e0c: $88
	adc  b                                           ; $5e0d: $88
	adc  b                                           ; $5e0e: $88
	adc  b                                           ; $5e0f: $88
	adc  b                                           ; $5e10: $88
	adc  b                                           ; $5e11: $88
	adc  b                                           ; $5e12: $88
	adc  b                                           ; $5e13: $88
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	adc  b                                           ; $5e16: $88
	adc  b                                           ; $5e17: $88
	adc  b                                           ; $5e18: $88
	adc  b                                           ; $5e19: $88
	adc  b                                           ; $5e1a: $88
	adc  b                                           ; $5e1b: $88
	adc  b                                           ; $5e1c: $88
	adc  b                                           ; $5e1d: $88
	adc  b                                           ; $5e1e: $88
	adc  b                                           ; $5e1f: $88
	adc  b                                           ; $5e20: $88
	adc  b                                           ; $5e21: $88
	adc  b                                           ; $5e22: $88
	adc  b                                           ; $5e23: $88
	adc  b                                           ; $5e24: $88
	adc  b                                           ; $5e25: $88
	adc  b                                           ; $5e26: $88
	adc  b                                           ; $5e27: $88
	adc  b                                           ; $5e28: $88
	adc  b                                           ; $5e29: $88
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	adc  b                                           ; $5e2c: $88
	adc  b                                           ; $5e2d: $88
	adc  b                                           ; $5e2e: $88
	adc  b                                           ; $5e2f: $88
	adc  b                                           ; $5e30: $88
	adc  b                                           ; $5e31: $88
	adc  b                                           ; $5e32: $88
	adc  b                                           ; $5e33: $88
	adc  b                                           ; $5e34: $88
	adc  b                                           ; $5e35: $88
	adc  b                                           ; $5e36: $88
	adc  b                                           ; $5e37: $88
	adc  b                                           ; $5e38: $88
	adc  b                                           ; $5e39: $88
	adc  b                                           ; $5e3a: $88
	adc  b                                           ; $5e3b: $88
	adc  b                                           ; $5e3c: $88
	adc  b                                           ; $5e3d: $88
	adc  b                                           ; $5e3e: $88
	adc  b                                           ; $5e3f: $88
	adc  b                                           ; $5e40: $88
	adc  b                                           ; $5e41: $88
	adc  b                                           ; $5e42: $88
	adc  b                                           ; $5e43: $88
	adc  b                                           ; $5e44: $88
	adc  b                                           ; $5e45: $88
	adc  b                                           ; $5e46: $88
	adc  b                                           ; $5e47: $88
	adc  b                                           ; $5e48: $88
	adc  b                                           ; $5e49: $88
	adc  b                                           ; $5e4a: $88
	adc  b                                           ; $5e4b: $88
	adc  b                                           ; $5e4c: $88
	adc  b                                           ; $5e4d: $88
	adc  b                                           ; $5e4e: $88
	adc  b                                           ; $5e4f: $88
	adc  b                                           ; $5e50: $88
	adc  b                                           ; $5e51: $88
	adc  b                                           ; $5e52: $88
	adc  b                                           ; $5e53: $88
	adc  b                                           ; $5e54: $88
	adc  b                                           ; $5e55: $88
	adc  b                                           ; $5e56: $88
	adc  b                                           ; $5e57: $88
	adc  b                                           ; $5e58: $88
	adc  b                                           ; $5e59: $88
	adc  b                                           ; $5e5a: $88
	adc  b                                           ; $5e5b: $88
	adc  b                                           ; $5e5c: $88
	adc  b                                           ; $5e5d: $88
	adc  b                                           ; $5e5e: $88
	adc  b                                           ; $5e5f: $88
	adc  b                                           ; $5e60: $88
	adc  b                                           ; $5e61: $88
	adc  b                                           ; $5e62: $88
	adc  b                                           ; $5e63: $88
	adc  b                                           ; $5e64: $88
	adc  b                                           ; $5e65: $88
	adc  b                                           ; $5e66: $88
	adc  b                                           ; $5e67: $88
	adc  b                                           ; $5e68: $88
	adc  b                                           ; $5e69: $88
	adc  b                                           ; $5e6a: $88
	adc  b                                           ; $5e6b: $88
	adc  b                                           ; $5e6c: $88
	adc  b                                           ; $5e6d: $88
	adc  b                                           ; $5e6e: $88
	adc  b                                           ; $5e6f: $88
	adc  b                                           ; $5e70: $88
	adc  b                                           ; $5e71: $88
	adc  b                                           ; $5e72: $88
	adc  b                                           ; $5e73: $88
	adc  b                                           ; $5e74: $88
	adc  b                                           ; $5e75: $88
	adc  b                                           ; $5e76: $88
	adc  b                                           ; $5e77: $88
	adc  b                                           ; $5e78: $88
	adc  b                                           ; $5e79: $88
	adc  b                                           ; $5e7a: $88
	adc  b                                           ; $5e7b: $88
	adc  b                                           ; $5e7c: $88
	adc  b                                           ; $5e7d: $88
	adc  b                                           ; $5e7e: $88
	adc  b                                           ; $5e7f: $88
	adc  b                                           ; $5e80: $88
	adc  b                                           ; $5e81: $88
	adc  b                                           ; $5e82: $88
	adc  b                                           ; $5e83: $88
	adc  b                                           ; $5e84: $88
	adc  b                                           ; $5e85: $88
	adc  b                                           ; $5e86: $88
	adc  b                                           ; $5e87: $88
	adc  b                                           ; $5e88: $88
	adc  b                                           ; $5e89: $88
	adc  b                                           ; $5e8a: $88
	adc  b                                           ; $5e8b: $88
	adc  b                                           ; $5e8c: $88
	adc  b                                           ; $5e8d: $88
	adc  b                                           ; $5e8e: $88
	adc  b                                           ; $5e8f: $88
	adc  b                                           ; $5e90: $88
	adc  b                                           ; $5e91: $88
	adc  b                                           ; $5e92: $88
	adc  b                                           ; $5e93: $88
	adc  b                                           ; $5e94: $88
	adc  b                                           ; $5e95: $88
	adc  b                                           ; $5e96: $88
	adc  b                                           ; $5e97: $88
	adc  b                                           ; $5e98: $88
	adc  b                                           ; $5e99: $88
	adc  b                                           ; $5e9a: $88
	adc  b                                           ; $5e9b: $88
	adc  b                                           ; $5e9c: $88
	adc  b                                           ; $5e9d: $88
	adc  b                                           ; $5e9e: $88
	adc  b                                           ; $5e9f: $88
	adc  b                                           ; $5ea0: $88
	adc  b                                           ; $5ea1: $88
	adc  b                                           ; $5ea2: $88
	adc  b                                           ; $5ea3: $88
	adc  b                                           ; $5ea4: $88
	adc  b                                           ; $5ea5: $88
	adc  b                                           ; $5ea6: $88
	adc  b                                           ; $5ea7: $88
	adc  b                                           ; $5ea8: $88
	adc  b                                           ; $5ea9: $88
	adc  b                                           ; $5eaa: $88
	adc  b                                           ; $5eab: $88
	adc  b                                           ; $5eac: $88
	adc  b                                           ; $5ead: $88
	adc  b                                           ; $5eae: $88
	adc  b                                           ; $5eaf: $88
	adc  b                                           ; $5eb0: $88
	adc  b                                           ; $5eb1: $88
	adc  b                                           ; $5eb2: $88
	adc  b                                           ; $5eb3: $88
	adc  b                                           ; $5eb4: $88
	adc  b                                           ; $5eb5: $88
	adc  b                                           ; $5eb6: $88
	adc  b                                           ; $5eb7: $88
	adc  b                                           ; $5eb8: $88
	adc  b                                           ; $5eb9: $88
	adc  b                                           ; $5eba: $88
	adc  b                                           ; $5ebb: $88
	adc  b                                           ; $5ebc: $88
	adc  b                                           ; $5ebd: $88
	adc  b                                           ; $5ebe: $88
	adc  b                                           ; $5ebf: $88
	adc  b                                           ; $5ec0: $88
	adc  b                                           ; $5ec1: $88
	adc  b                                           ; $5ec2: $88
	adc  b                                           ; $5ec3: $88
	adc  b                                           ; $5ec4: $88
	adc  b                                           ; $5ec5: $88
	adc  b                                           ; $5ec6: $88
	adc  b                                           ; $5ec7: $88
	adc  b                                           ; $5ec8: $88
	adc  b                                           ; $5ec9: $88
	adc  b                                           ; $5eca: $88
	adc  b                                           ; $5ecb: $88
	adc  b                                           ; $5ecc: $88
	adc  b                                           ; $5ecd: $88
	adc  b                                           ; $5ece: $88
	adc  b                                           ; $5ecf: $88
	adc  b                                           ; $5ed0: $88
	adc  b                                           ; $5ed1: $88
	adc  b                                           ; $5ed2: $88
	adc  b                                           ; $5ed3: $88
	adc  b                                           ; $5ed4: $88
	adc  b                                           ; $5ed5: $88
	adc  b                                           ; $5ed6: $88
	adc  b                                           ; $5ed7: $88
	adc  b                                           ; $5ed8: $88
	adc  b                                           ; $5ed9: $88
	adc  b                                           ; $5eda: $88
	adc  b                                           ; $5edb: $88
	adc  b                                           ; $5edc: $88
	adc  b                                           ; $5edd: $88
	adc  b                                           ; $5ede: $88
	adc  b                                           ; $5edf: $88
	adc  b                                           ; $5ee0: $88
	adc  b                                           ; $5ee1: $88
	adc  b                                           ; $5ee2: $88
	adc  b                                           ; $5ee3: $88
	adc  b                                           ; $5ee4: $88
	adc  b                                           ; $5ee5: $88
	adc  b                                           ; $5ee6: $88
	adc  b                                           ; $5ee7: $88
	adc  b                                           ; $5ee8: $88
	adc  b                                           ; $5ee9: $88
	adc  b                                           ; $5eea: $88
	adc  b                                           ; $5eeb: $88
	adc  b                                           ; $5eec: $88
	adc  b                                           ; $5eed: $88
	adc  b                                           ; $5eee: $88
	adc  b                                           ; $5eef: $88
	adc  b                                           ; $5ef0: $88
	adc  b                                           ; $5ef1: $88
	adc  b                                           ; $5ef2: $88
	adc  b                                           ; $5ef3: $88
	adc  b                                           ; $5ef4: $88
	adc  b                                           ; $5ef5: $88
	adc  b                                           ; $5ef6: $88
	adc  b                                           ; $5ef7: $88
	adc  b                                           ; $5ef8: $88
	adc  b                                           ; $5ef9: $88
	adc  b                                           ; $5efa: $88
	adc  b                                           ; $5efb: $88
	adc  b                                           ; $5efc: $88
	adc  b                                           ; $5efd: $88
	adc  b                                           ; $5efe: $88
	adc  b                                           ; $5eff: $88
	adc  b                                           ; $5f00: $88
	adc  b                                           ; $5f01: $88
	adc  b                                           ; $5f02: $88
	adc  b                                           ; $5f03: $88
	adc  b                                           ; $5f04: $88
	adc  b                                           ; $5f05: $88
	adc  b                                           ; $5f06: $88
	adc  b                                           ; $5f07: $88
	adc  b                                           ; $5f08: $88
	adc  b                                           ; $5f09: $88
	adc  b                                           ; $5f0a: $88
	adc  b                                           ; $5f0b: $88
	adc  b                                           ; $5f0c: $88
	adc  b                                           ; $5f0d: $88
	adc  b                                           ; $5f0e: $88
	adc  b                                           ; $5f0f: $88
	adc  b                                           ; $5f10: $88
	adc  b                                           ; $5f11: $88
	adc  b                                           ; $5f12: $88
	adc  b                                           ; $5f13: $88
	adc  b                                           ; $5f14: $88
	adc  b                                           ; $5f15: $88
	adc  b                                           ; $5f16: $88
	adc  b                                           ; $5f17: $88
	adc  b                                           ; $5f18: $88
	adc  b                                           ; $5f19: $88
	adc  b                                           ; $5f1a: $88
	adc  b                                           ; $5f1b: $88
	adc  b                                           ; $5f1c: $88
	adc  b                                           ; $5f1d: $88
	adc  b                                           ; $5f1e: $88
	adc  b                                           ; $5f1f: $88
	adc  b                                           ; $5f20: $88
	adc  b                                           ; $5f21: $88
	adc  b                                           ; $5f22: $88
	adc  b                                           ; $5f23: $88
	adc  b                                           ; $5f24: $88
	adc  b                                           ; $5f25: $88
	adc  b                                           ; $5f26: $88
	adc  b                                           ; $5f27: $88
	adc  b                                           ; $5f28: $88
	adc  b                                           ; $5f29: $88
	adc  b                                           ; $5f2a: $88
	adc  b                                           ; $5f2b: $88
	adc  b                                           ; $5f2c: $88
	adc  b                                           ; $5f2d: $88
	adc  b                                           ; $5f2e: $88
	adc  b                                           ; $5f2f: $88
	adc  b                                           ; $5f30: $88
	adc  b                                           ; $5f31: $88
	adc  b                                           ; $5f32: $88
	adc  b                                           ; $5f33: $88
	adc  b                                           ; $5f34: $88
	adc  b                                           ; $5f35: $88
	adc  b                                           ; $5f36: $88
	adc  b                                           ; $5f37: $88
	adc  b                                           ; $5f38: $88
	adc  b                                           ; $5f39: $88
	adc  b                                           ; $5f3a: $88
	adc  b                                           ; $5f3b: $88
	adc  b                                           ; $5f3c: $88
	adc  b                                           ; $5f3d: $88
	adc  b                                           ; $5f3e: $88
	adc  b                                           ; $5f3f: $88
	adc  b                                           ; $5f40: $88
	adc  b                                           ; $5f41: $88
	adc  b                                           ; $5f42: $88
	adc  b                                           ; $5f43: $88
	adc  b                                           ; $5f44: $88
	adc  b                                           ; $5f45: $88
	adc  b                                           ; $5f46: $88
	adc  b                                           ; $5f47: $88
	adc  b                                           ; $5f48: $88
	adc  b                                           ; $5f49: $88
	adc  b                                           ; $5f4a: $88
	adc  b                                           ; $5f4b: $88
	adc  b                                           ; $5f4c: $88
	adc  b                                           ; $5f4d: $88
	adc  b                                           ; $5f4e: $88
	adc  b                                           ; $5f4f: $88
	adc  b                                           ; $5f50: $88
	adc  b                                           ; $5f51: $88
	adc  b                                           ; $5f52: $88
	adc  b                                           ; $5f53: $88
	adc  b                                           ; $5f54: $88
	adc  b                                           ; $5f55: $88
	adc  b                                           ; $5f56: $88
	adc  b                                           ; $5f57: $88
	adc  b                                           ; $5f58: $88
	adc  b                                           ; $5f59: $88
	adc  b                                           ; $5f5a: $88
	adc  b                                           ; $5f5b: $88
	adc  b                                           ; $5f5c: $88
	adc  b                                           ; $5f5d: $88
	adc  b                                           ; $5f5e: $88
	adc  b                                           ; $5f5f: $88
	adc  b                                           ; $5f60: $88
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
	adc  b                                           ; $5f88: $88
	adc  b                                           ; $5f89: $88
	adc  b                                           ; $5f8a: $88
	adc  b                                           ; $5f8b: $88
	adc  b                                           ; $5f8c: $88
	adc  b                                           ; $5f8d: $88
	adc  b                                           ; $5f8e: $88
	adc  b                                           ; $5f8f: $88
	adc  b                                           ; $5f90: $88
	adc  b                                           ; $5f91: $88
	adc  b                                           ; $5f92: $88
	adc  b                                           ; $5f93: $88
	adc  b                                           ; $5f94: $88
	adc  b                                           ; $5f95: $88
	adc  b                                           ; $5f96: $88
	adc  b                                           ; $5f97: $88
	adc  b                                           ; $5f98: $88
	adc  b                                           ; $5f99: $88
	adc  b                                           ; $5f9a: $88
	adc  b                                           ; $5f9b: $88
	adc  b                                           ; $5f9c: $88
	adc  b                                           ; $5f9d: $88
	adc  b                                           ; $5f9e: $88
	adc  b                                           ; $5f9f: $88
	adc  b                                           ; $5fa0: $88
	adc  b                                           ; $5fa1: $88
	adc  b                                           ; $5fa2: $88
	adc  b                                           ; $5fa3: $88
	adc  b                                           ; $5fa4: $88
	adc  b                                           ; $5fa5: $88
	adc  b                                           ; $5fa6: $88
	adc  b                                           ; $5fa7: $88
	adc  b                                           ; $5fa8: $88
	adc  b                                           ; $5fa9: $88
	adc  b                                           ; $5faa: $88
	adc  b                                           ; $5fab: $88
	adc  b                                           ; $5fac: $88
	adc  b                                           ; $5fad: $88
	adc  b                                           ; $5fae: $88
	adc  b                                           ; $5faf: $88
	adc  b                                           ; $5fb0: $88
	adc  b                                           ; $5fb1: $88
	adc  b                                           ; $5fb2: $88
	adc  b                                           ; $5fb3: $88
	adc  b                                           ; $5fb4: $88
	adc  b                                           ; $5fb5: $88
	adc  b                                           ; $5fb6: $88
	adc  b                                           ; $5fb7: $88
	adc  b                                           ; $5fb8: $88
	adc  b                                           ; $5fb9: $88
	adc  b                                           ; $5fba: $88
	adc  b                                           ; $5fbb: $88
	adc  b                                           ; $5fbc: $88
	adc  b                                           ; $5fbd: $88
	adc  b                                           ; $5fbe: $88
	adc  b                                           ; $5fbf: $88
	adc  b                                           ; $5fc0: $88
	adc  b                                           ; $5fc1: $88
	adc  b                                           ; $5fc2: $88
	adc  b                                           ; $5fc3: $88
	adc  b                                           ; $5fc4: $88
	adc  b                                           ; $5fc5: $88
	adc  b                                           ; $5fc6: $88
	adc  b                                           ; $5fc7: $88
	adc  b                                           ; $5fc8: $88
	adc  b                                           ; $5fc9: $88
	adc  b                                           ; $5fca: $88
	adc  b                                           ; $5fcb: $88
	adc  b                                           ; $5fcc: $88
	adc  b                                           ; $5fcd: $88
	adc  b                                           ; $5fce: $88
	adc  b                                           ; $5fcf: $88
	adc  b                                           ; $5fd0: $88
	adc  b                                           ; $5fd1: $88
	adc  b                                           ; $5fd2: $88
	adc  b                                           ; $5fd3: $88
	adc  b                                           ; $5fd4: $88
	adc  b                                           ; $5fd5: $88
	adc  b                                           ; $5fd6: $88
	adc  b                                           ; $5fd7: $88
	adc  b                                           ; $5fd8: $88
	adc  b                                           ; $5fd9: $88
	adc  b                                           ; $5fda: $88
	adc  b                                           ; $5fdb: $88
	adc  b                                           ; $5fdc: $88
	adc  b                                           ; $5fdd: $88
	adc  b                                           ; $5fde: $88
	adc  b                                           ; $5fdf: $88
	adc  b                                           ; $5fe0: $88
	adc  b                                           ; $5fe1: $88
	adc  b                                           ; $5fe2: $88
	adc  b                                           ; $5fe3: $88
	adc  b                                           ; $5fe4: $88
	adc  b                                           ; $5fe5: $88
	adc  b                                           ; $5fe6: $88
	adc  b                                           ; $5fe7: $88
	adc  b                                           ; $5fe8: $88
	adc  b                                           ; $5fe9: $88
	adc  b                                           ; $5fea: $88
	adc  b                                           ; $5feb: $88
	adc  b                                           ; $5fec: $88
	adc  b                                           ; $5fed: $88
	adc  b                                           ; $5fee: $88
	adc  b                                           ; $5fef: $88
	adc  b                                           ; $5ff0: $88
	adc  b                                           ; $5ff1: $88
	adc  b                                           ; $5ff2: $88
	adc  b                                           ; $5ff3: $88
	adc  b                                           ; $5ff4: $88
	adc  b                                           ; $5ff5: $88
	adc  b                                           ; $5ff6: $88
	adc  b                                           ; $5ff7: $88
	adc  b                                           ; $5ff8: $88
	adc  b                                           ; $5ff9: $88
	adc  b                                           ; $5ffa: $88
	adc  b                                           ; $5ffb: $88
	adc  b                                           ; $5ffc: $88
	adc  b                                           ; $5ffd: $88
	adc  b                                           ; $5ffe: $88
	adc  b                                           ; $5fff: $88
	adc  b                                           ; $6000: $88
	adc  b                                           ; $6001: $88
	adc  b                                           ; $6002: $88
	adc  b                                           ; $6003: $88
	adc  b                                           ; $6004: $88
	adc  b                                           ; $6005: $88
	adc  b                                           ; $6006: $88
	adc  b                                           ; $6007: $88
	adc  b                                           ; $6008: $88
	adc  b                                           ; $6009: $88
	adc  b                                           ; $600a: $88
	adc  b                                           ; $600b: $88
	adc  b                                           ; $600c: $88
	adc  b                                           ; $600d: $88
	adc  b                                           ; $600e: $88
	adc  b                                           ; $600f: $88
	adc  b                                           ; $6010: $88
	adc  b                                           ; $6011: $88
	adc  b                                           ; $6012: $88
	adc  b                                           ; $6013: $88
	adc  b                                           ; $6014: $88
	adc  b                                           ; $6015: $88
	adc  b                                           ; $6016: $88
	adc  b                                           ; $6017: $88
	adc  b                                           ; $6018: $88
	adc  b                                           ; $6019: $88
	adc  b                                           ; $601a: $88
	adc  b                                           ; $601b: $88
	adc  b                                           ; $601c: $88
	adc  b                                           ; $601d: $88
	adc  b                                           ; $601e: $88
	adc  b                                           ; $601f: $88
	adc  b                                           ; $6020: $88
	adc  b                                           ; $6021: $88
	adc  b                                           ; $6022: $88
	adc  b                                           ; $6023: $88
	adc  b                                           ; $6024: $88
	adc  b                                           ; $6025: $88
	adc  b                                           ; $6026: $88
	adc  b                                           ; $6027: $88
	adc  b                                           ; $6028: $88
	adc  b                                           ; $6029: $88
	adc  b                                           ; $602a: $88
	adc  b                                           ; $602b: $88
	adc  b                                           ; $602c: $88
	adc  b                                           ; $602d: $88
	adc  b                                           ; $602e: $88
	adc  b                                           ; $602f: $88
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	adc  b                                           ; $6032: $88
	adc  b                                           ; $6033: $88
	adc  b                                           ; $6034: $88
	adc  b                                           ; $6035: $88
	adc  b                                           ; $6036: $88
	adc  b                                           ; $6037: $88
	adc  b                                           ; $6038: $88
	adc  b                                           ; $6039: $88
	adc  b                                           ; $603a: $88
	adc  b                                           ; $603b: $88
	adc  b                                           ; $603c: $88
	adc  b                                           ; $603d: $88
	adc  b                                           ; $603e: $88
	adc  b                                           ; $603f: $88
	adc  b                                           ; $6040: $88
	adc  b                                           ; $6041: $88
	adc  b                                           ; $6042: $88
	adc  b                                           ; $6043: $88
	adc  b                                           ; $6044: $88
	adc  b                                           ; $6045: $88
	adc  b                                           ; $6046: $88
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	adc  b                                           ; $6049: $88
	adc  b                                           ; $604a: $88
	adc  b                                           ; $604b: $88
	adc  b                                           ; $604c: $88
	adc  b                                           ; $604d: $88
	adc  b                                           ; $604e: $88
	adc  b                                           ; $604f: $88
	adc  b                                           ; $6050: $88
	adc  b                                           ; $6051: $88
	adc  b                                           ; $6052: $88
	adc  b                                           ; $6053: $88
	adc  b                                           ; $6054: $88
	adc  b                                           ; $6055: $88
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	adc  b                                           ; $6058: $88
	adc  b                                           ; $6059: $88
	adc  b                                           ; $605a: $88
	adc  b                                           ; $605b: $88
	adc  b                                           ; $605c: $88
	adc  b                                           ; $605d: $88
	adc  b                                           ; $605e: $88
	adc  b                                           ; $605f: $88
	adc  b                                           ; $6060: $88
	adc  b                                           ; $6061: $88
	adc  b                                           ; $6062: $88
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	adc  b                                           ; $6067: $88
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	adc  b                                           ; $606a: $88
	adc  b                                           ; $606b: $88
	adc  b                                           ; $606c: $88
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	adc  b                                           ; $6072: $88
	adc  b                                           ; $6073: $88
	adc  b                                           ; $6074: $88
	adc  b                                           ; $6075: $88
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	adc  b                                           ; $6078: $88
	adc  b                                           ; $6079: $88
	adc  b                                           ; $607a: $88
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  b                                           ; $607f: $88
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	adc  b                                           ; $6087: $88
	adc  b                                           ; $6088: $88
	adc  b                                           ; $6089: $88
	adc  b                                           ; $608a: $88
	adc  b                                           ; $608b: $88
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  b                                           ; $60b8: $88
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  b                                           ; $60e0: $88
	adc  b                                           ; $60e1: $88
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	adc  b                                           ; $60e9: $88
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	adc  b                                           ; $6100: $88
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	adc  b                                           ; $6103: $88
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	adc  b                                           ; $6108: $88
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
	adc  b                                           ; $6110: $88
	adc  b                                           ; $6111: $88
	adc  b                                           ; $6112: $88
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	adc  b                                           ; $6117: $88
	adc  b                                           ; $6118: $88
	adc  b                                           ; $6119: $88
	adc  b                                           ; $611a: $88
	adc  b                                           ; $611b: $88
	adc  b                                           ; $611c: $88
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	adc  b                                           ; $611f: $88
	adc  b                                           ; $6120: $88
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	adc  b                                           ; $6123: $88
	adc  b                                           ; $6124: $88
	adc  b                                           ; $6125: $88
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	adc  b                                           ; $612c: $88
	adc  b                                           ; $612d: $88
	adc  b                                           ; $612e: $88
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	adc  b                                           ; $6131: $88
	adc  b                                           ; $6132: $88
	adc  b                                           ; $6133: $88
	adc  b                                           ; $6134: $88
	adc  b                                           ; $6135: $88
	adc  b                                           ; $6136: $88
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  b                                           ; $6139: $88
	adc  b                                           ; $613a: $88
	adc  b                                           ; $613b: $88
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  b                                           ; $613f: $88
	adc  b                                           ; $6140: $88
	adc  b                                           ; $6141: $88
	adc  b                                           ; $6142: $88
	adc  b                                           ; $6143: $88
	adc  b                                           ; $6144: $88
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	adc  b                                           ; $6148: $88
	adc  b                                           ; $6149: $88
	adc  b                                           ; $614a: $88
	adc  b                                           ; $614b: $88
	adc  b                                           ; $614c: $88
	adc  b                                           ; $614d: $88
	adc  b                                           ; $614e: $88
	adc  b                                           ; $614f: $88
	adc  b                                           ; $6150: $88
	adc  b                                           ; $6151: $88
	adc  b                                           ; $6152: $88
	adc  b                                           ; $6153: $88
	adc  b                                           ; $6154: $88
	adc  b                                           ; $6155: $88
	adc  b                                           ; $6156: $88
	adc  b                                           ; $6157: $88
	adc  b                                           ; $6158: $88
	adc  b                                           ; $6159: $88
	adc  b                                           ; $615a: $88
	adc  b                                           ; $615b: $88
	adc  b                                           ; $615c: $88
	adc  b                                           ; $615d: $88
	adc  b                                           ; $615e: $88
	adc  b                                           ; $615f: $88
	adc  b                                           ; $6160: $88
	adc  b                                           ; $6161: $88
	adc  b                                           ; $6162: $88
	adc  b                                           ; $6163: $88
	adc  b                                           ; $6164: $88
	adc  b                                           ; $6165: $88
	adc  b                                           ; $6166: $88
	adc  b                                           ; $6167: $88
	adc  b                                           ; $6168: $88
	adc  b                                           ; $6169: $88
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	adc  b                                           ; $616c: $88
	adc  b                                           ; $616d: $88
	adc  b                                           ; $616e: $88
	adc  b                                           ; $616f: $88
	adc  b                                           ; $6170: $88
	adc  b                                           ; $6171: $88
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	adc  b                                           ; $6174: $88
	adc  b                                           ; $6175: $88
	adc  b                                           ; $6176: $88
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	adc  b                                           ; $6179: $88
	adc  b                                           ; $617a: $88
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	adc  b                                           ; $617e: $88
	adc  b                                           ; $617f: $88
	adc  b                                           ; $6180: $88
	adc  b                                           ; $6181: $88
	adc  b                                           ; $6182: $88
	adc  b                                           ; $6183: $88
	adc  b                                           ; $6184: $88
	adc  b                                           ; $6185: $88
	adc  b                                           ; $6186: $88
	adc  b                                           ; $6187: $88
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	adc  b                                           ; $618a: $88
	adc  b                                           ; $618b: $88
	adc  b                                           ; $618c: $88
	adc  b                                           ; $618d: $88
	adc  b                                           ; $618e: $88
	adc  b                                           ; $618f: $88
	adc  b                                           ; $6190: $88
	adc  b                                           ; $6191: $88
	adc  b                                           ; $6192: $88
	adc  b                                           ; $6193: $88
	adc  b                                           ; $6194: $88
	adc  b                                           ; $6195: $88
	adc  b                                           ; $6196: $88
	adc  b                                           ; $6197: $88
	adc  b                                           ; $6198: $88
	adc  b                                           ; $6199: $88
	adc  b                                           ; $619a: $88
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  b                                           ; $619d: $88
	adc  b                                           ; $619e: $88
	adc  b                                           ; $619f: $88
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	adc  b                                           ; $61a4: $88
	adc  b                                           ; $61a5: $88
	adc  b                                           ; $61a6: $88
	adc  b                                           ; $61a7: $88
	adc  b                                           ; $61a8: $88
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	adc  b                                           ; $61af: $88
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  b                                           ; $61b4: $88
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	adc  b                                           ; $61b7: $88
	adc  b                                           ; $61b8: $88
	adc  b                                           ; $61b9: $88
	adc  b                                           ; $61ba: $88
	adc  b                                           ; $61bb: $88
	adc  b                                           ; $61bc: $88
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	adc  b                                           ; $61c5: $88
	adc  b                                           ; $61c6: $88
	adc  b                                           ; $61c7: $88
	adc  b                                           ; $61c8: $88
	adc  b                                           ; $61c9: $88
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	adc  b                                           ; $61cc: $88
	adc  b                                           ; $61cd: $88
	adc  b                                           ; $61ce: $88
	adc  b                                           ; $61cf: $88
	adc  b                                           ; $61d0: $88
	adc  b                                           ; $61d1: $88
	adc  b                                           ; $61d2: $88
	adc  b                                           ; $61d3: $88
	adc  b                                           ; $61d4: $88
	adc  b                                           ; $61d5: $88
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	adc  b                                           ; $61da: $88
	adc  b                                           ; $61db: $88
	adc  b                                           ; $61dc: $88
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
	adc  b                                           ; $61e3: $88
	adc  b                                           ; $61e4: $88
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	adc  b                                           ; $61e8: $88
	adc  b                                           ; $61e9: $88
	adc  b                                           ; $61ea: $88
	adc  b                                           ; $61eb: $88
	adc  b                                           ; $61ec: $88
	adc  b                                           ; $61ed: $88
	adc  b                                           ; $61ee: $88
	adc  b                                           ; $61ef: $88
	adc  b                                           ; $61f0: $88
	adc  b                                           ; $61f1: $88
	adc  b                                           ; $61f2: $88
	adc  b                                           ; $61f3: $88
	adc  b                                           ; $61f4: $88
	adc  b                                           ; $61f5: $88
	adc  b                                           ; $61f6: $88
	adc  b                                           ; $61f7: $88
	adc  b                                           ; $61f8: $88
	adc  b                                           ; $61f9: $88
	adc  b                                           ; $61fa: $88
	adc  b                                           ; $61fb: $88
	adc  b                                           ; $61fc: $88
	adc  b                                           ; $61fd: $88
	adc  b                                           ; $61fe: $88
	adc  b                                           ; $61ff: $88
	adc  b                                           ; $6200: $88
	adc  b                                           ; $6201: $88
	adc  b                                           ; $6202: $88
	adc  b                                           ; $6203: $88
	adc  b                                           ; $6204: $88
	adc  b                                           ; $6205: $88
	adc  b                                           ; $6206: $88
	adc  b                                           ; $6207: $88
	adc  b                                           ; $6208: $88
	adc  b                                           ; $6209: $88
	adc  b                                           ; $620a: $88
	adc  b                                           ; $620b: $88
	adc  b                                           ; $620c: $88
	adc  b                                           ; $620d: $88
	adc  b                                           ; $620e: $88
	adc  b                                           ; $620f: $88
	adc  b                                           ; $6210: $88
	adc  b                                           ; $6211: $88
	adc  b                                           ; $6212: $88
	adc  b                                           ; $6213: $88
	adc  b                                           ; $6214: $88
	adc  b                                           ; $6215: $88
	adc  b                                           ; $6216: $88
	adc  b                                           ; $6217: $88
	adc  b                                           ; $6218: $88
	adc  b                                           ; $6219: $88
	adc  b                                           ; $621a: $88
	adc  b                                           ; $621b: $88
	adc  b                                           ; $621c: $88
	adc  b                                           ; $621d: $88
	adc  b                                           ; $621e: $88
	adc  b                                           ; $621f: $88
	adc  b                                           ; $6220: $88
	adc  b                                           ; $6221: $88
	adc  b                                           ; $6222: $88
	adc  b                                           ; $6223: $88
	adc  b                                           ; $6224: $88
	adc  b                                           ; $6225: $88
	adc  b                                           ; $6226: $88
	adc  b                                           ; $6227: $88
	adc  b                                           ; $6228: $88
	adc  b                                           ; $6229: $88
	adc  b                                           ; $622a: $88
	adc  b                                           ; $622b: $88
	adc  b                                           ; $622c: $88
	adc  b                                           ; $622d: $88
	adc  b                                           ; $622e: $88
	adc  b                                           ; $622f: $88
	adc  b                                           ; $6230: $88
	adc  b                                           ; $6231: $88
	adc  b                                           ; $6232: $88
	adc  b                                           ; $6233: $88
	adc  b                                           ; $6234: $88
	adc  b                                           ; $6235: $88
	adc  b                                           ; $6236: $88
	adc  b                                           ; $6237: $88
	adc  b                                           ; $6238: $88
	adc  b                                           ; $6239: $88
	adc  b                                           ; $623a: $88
	adc  b                                           ; $623b: $88
	adc  b                                           ; $623c: $88
	adc  b                                           ; $623d: $88
	adc  b                                           ; $623e: $88
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	adc  b                                           ; $6241: $88
	adc  b                                           ; $6242: $88
	adc  b                                           ; $6243: $88
	adc  b                                           ; $6244: $88
	adc  b                                           ; $6245: $88
	adc  b                                           ; $6246: $88
	adc  b                                           ; $6247: $88
	adc  b                                           ; $6248: $88
	adc  b                                           ; $6249: $88
	adc  b                                           ; $624a: $88
	adc  b                                           ; $624b: $88
	adc  b                                           ; $624c: $88
	adc  b                                           ; $624d: $88
	adc  b                                           ; $624e: $88
	adc  b                                           ; $624f: $88
	adc  b                                           ; $6250: $88
	adc  b                                           ; $6251: $88
	adc  b                                           ; $6252: $88
	adc  b                                           ; $6253: $88
	adc  b                                           ; $6254: $88
	adc  b                                           ; $6255: $88
	adc  b                                           ; $6256: $88
	adc  b                                           ; $6257: $88
	adc  b                                           ; $6258: $88
	adc  b                                           ; $6259: $88
	adc  b                                           ; $625a: $88
	adc  b                                           ; $625b: $88
	adc  b                                           ; $625c: $88
	adc  b                                           ; $625d: $88
	adc  b                                           ; $625e: $88
	adc  b                                           ; $625f: $88
	adc  b                                           ; $6260: $88
	adc  b                                           ; $6261: $88
	adc  b                                           ; $6262: $88
	adc  b                                           ; $6263: $88
	adc  b                                           ; $6264: $88
	adc  b                                           ; $6265: $88
	adc  b                                           ; $6266: $88
	adc  b                                           ; $6267: $88
	adc  b                                           ; $6268: $88
	adc  b                                           ; $6269: $88
	adc  b                                           ; $626a: $88
	adc  b                                           ; $626b: $88
	adc  b                                           ; $626c: $88
	adc  b                                           ; $626d: $88
	adc  b                                           ; $626e: $88
	adc  b                                           ; $626f: $88
	adc  b                                           ; $6270: $88
	adc  b                                           ; $6271: $88
	adc  b                                           ; $6272: $88
	adc  b                                           ; $6273: $88
	adc  b                                           ; $6274: $88
	adc  b                                           ; $6275: $88
	adc  b                                           ; $6276: $88
	adc  b                                           ; $6277: $88
	adc  b                                           ; $6278: $88
	adc  b                                           ; $6279: $88
	adc  b                                           ; $627a: $88
	adc  b                                           ; $627b: $88
	adc  b                                           ; $627c: $88
	adc  b                                           ; $627d: $88
	adc  b                                           ; $627e: $88
	adc  b                                           ; $627f: $88
	adc  b                                           ; $6280: $88
	adc  b                                           ; $6281: $88
	adc  b                                           ; $6282: $88
	adc  b                                           ; $6283: $88
	adc  b                                           ; $6284: $88
	adc  b                                           ; $6285: $88
	adc  b                                           ; $6286: $88
	adc  b                                           ; $6287: $88
	adc  b                                           ; $6288: $88
	adc  b                                           ; $6289: $88
	adc  b                                           ; $628a: $88
	adc  b                                           ; $628b: $88
	adc  b                                           ; $628c: $88
	adc  b                                           ; $628d: $88
	adc  b                                           ; $628e: $88
	adc  b                                           ; $628f: $88
	adc  b                                           ; $6290: $88
	adc  b                                           ; $6291: $88
	adc  b                                           ; $6292: $88
	adc  b                                           ; $6293: $88
	adc  b                                           ; $6294: $88
	adc  b                                           ; $6295: $88
	adc  b                                           ; $6296: $88
	adc  b                                           ; $6297: $88
	adc  b                                           ; $6298: $88
	adc  b                                           ; $6299: $88
	adc  b                                           ; $629a: $88
	adc  b                                           ; $629b: $88
	adc  b                                           ; $629c: $88
	adc  b                                           ; $629d: $88
	adc  b                                           ; $629e: $88
	adc  b                                           ; $629f: $88
	adc  b                                           ; $62a0: $88
	adc  b                                           ; $62a1: $88
	adc  b                                           ; $62a2: $88
	adc  b                                           ; $62a3: $88
	adc  b                                           ; $62a4: $88
	adc  b                                           ; $62a5: $88
	adc  b                                           ; $62a6: $88
	adc  b                                           ; $62a7: $88
	adc  b                                           ; $62a8: $88
	adc  b                                           ; $62a9: $88
	adc  b                                           ; $62aa: $88
	adc  b                                           ; $62ab: $88
	adc  b                                           ; $62ac: $88
	adc  b                                           ; $62ad: $88
	adc  b                                           ; $62ae: $88
	adc  b                                           ; $62af: $88
	adc  b                                           ; $62b0: $88
	adc  b                                           ; $62b1: $88
	adc  b                                           ; $62b2: $88
	adc  b                                           ; $62b3: $88
	adc  b                                           ; $62b4: $88
	adc  b                                           ; $62b5: $88
	adc  b                                           ; $62b6: $88
	adc  b                                           ; $62b7: $88
	adc  b                                           ; $62b8: $88
	adc  b                                           ; $62b9: $88
	adc  b                                           ; $62ba: $88
	adc  b                                           ; $62bb: $88
	adc  b                                           ; $62bc: $88
	adc  b                                           ; $62bd: $88
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

Call_0a5_62cb:
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
	adc  b                                           ; $62da: $88
	adc  b                                           ; $62db: $88
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
	adc  b                                           ; $6323: $88
	adc  b                                           ; $6324: $88
	adc  b                                           ; $6325: $88
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
	adc  b                                           ; $636d: $88
	adc  b                                           ; $636e: $88
	adc  b                                           ; $636f: $88
	adc  b                                           ; $6370: $88
	adc  b                                           ; $6371: $88
	adc  b                                           ; $6372: $88
	adc  b                                           ; $6373: $88
	adc  b                                           ; $6374: $88
	adc  b                                           ; $6375: $88
	adc  b                                           ; $6376: $88
	adc  b                                           ; $6377: $88
	adc  b                                           ; $6378: $88
	adc  b                                           ; $6379: $88
	adc  b                                           ; $637a: $88
	adc  b                                           ; $637b: $88
	adc  b                                           ; $637c: $88
	adc  b                                           ; $637d: $88
	adc  b                                           ; $637e: $88
	adc  b                                           ; $637f: $88
	adc  b                                           ; $6380: $88
	adc  b                                           ; $6381: $88
	adc  b                                           ; $6382: $88
	adc  b                                           ; $6383: $88
	adc  b                                           ; $6384: $88
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	adc  b                                           ; $6387: $88
	adc  b                                           ; $6388: $88
	adc  b                                           ; $6389: $88
	adc  b                                           ; $638a: $88
	adc  b                                           ; $638b: $88
	adc  b                                           ; $638c: $88
	adc  b                                           ; $638d: $88
	adc  b                                           ; $638e: $88
	adc  b                                           ; $638f: $88
	adc  b                                           ; $6390: $88
	adc  b                                           ; $6391: $88
	adc  b                                           ; $6392: $88
	adc  b                                           ; $6393: $88
	adc  b                                           ; $6394: $88
	adc  b                                           ; $6395: $88
	adc  b                                           ; $6396: $88
	adc  b                                           ; $6397: $88
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	adc  b                                           ; $639a: $88
	adc  b                                           ; $639b: $88
	adc  b                                           ; $639c: $88
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	adc  b                                           ; $639f: $88
	adc  b                                           ; $63a0: $88
	adc  b                                           ; $63a1: $88
	adc  b                                           ; $63a2: $88

Call_0a5_63a3:
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	adc  b                                           ; $63a6: $88
	adc  b                                           ; $63a7: $88
	adc  b                                           ; $63a8: $88
	adc  b                                           ; $63a9: $88
	adc  b                                           ; $63aa: $88
	adc  b                                           ; $63ab: $88
	adc  b                                           ; $63ac: $88
	adc  b                                           ; $63ad: $88
	adc  b                                           ; $63ae: $88
	adc  b                                           ; $63af: $88
	adc  b                                           ; $63b0: $88
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	adc  b                                           ; $63b3: $88
	adc  b                                           ; $63b4: $88
	adc  b                                           ; $63b5: $88
	adc  b                                           ; $63b6: $88
	adc  b                                           ; $63b7: $88
	adc  b                                           ; $63b8: $88
	adc  b                                           ; $63b9: $88
	adc  b                                           ; $63ba: $88
	adc  b                                           ; $63bb: $88
	adc  b                                           ; $63bc: $88
	adc  b                                           ; $63bd: $88
	adc  b                                           ; $63be: $88
	adc  b                                           ; $63bf: $88
	adc  b                                           ; $63c0: $88
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  b                                           ; $63ca: $88
	adc  b                                           ; $63cb: $88
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	adc  b                                           ; $63cf: $88
	adc  b                                           ; $63d0: $88
	adc  b                                           ; $63d1: $88
	adc  b                                           ; $63d2: $88
	adc  b                                           ; $63d3: $88
	adc  b                                           ; $63d4: $88
	adc  b                                           ; $63d5: $88
	adc  b                                           ; $63d6: $88
	adc  b                                           ; $63d7: $88
	adc  b                                           ; $63d8: $88
	adc  b                                           ; $63d9: $88
	adc  b                                           ; $63da: $88
	adc  b                                           ; $63db: $88
	adc  b                                           ; $63dc: $88
	adc  b                                           ; $63dd: $88
	adc  b                                           ; $63de: $88
	adc  b                                           ; $63df: $88
	adc  b                                           ; $63e0: $88
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	adc  b                                           ; $63ea: $88
	adc  b                                           ; $63eb: $88
	adc  b                                           ; $63ec: $88
	adc  b                                           ; $63ed: $88
	adc  b                                           ; $63ee: $88
	adc  b                                           ; $63ef: $88
	adc  b                                           ; $63f0: $88
	adc  b                                           ; $63f1: $88
	adc  b                                           ; $63f2: $88
	adc  b                                           ; $63f3: $88

Jump_0a5_63f4:
	adc  b                                           ; $63f4: $88
	adc  b                                           ; $63f5: $88
	adc  b                                           ; $63f6: $88
	adc  b                                           ; $63f7: $88
	adc  b                                           ; $63f8: $88
	adc  b                                           ; $63f9: $88
	adc  b                                           ; $63fa: $88
	adc  b                                           ; $63fb: $88
	adc  b                                           ; $63fc: $88
	adc  b                                           ; $63fd: $88
	adc  b                                           ; $63fe: $88
	adc  b                                           ; $63ff: $88
	adc  b                                           ; $6400: $88
	adc  b                                           ; $6401: $88
	adc  b                                           ; $6402: $88
	adc  b                                           ; $6403: $88
	adc  b                                           ; $6404: $88
	adc  b                                           ; $6405: $88
	adc  b                                           ; $6406: $88
	adc  b                                           ; $6407: $88
	adc  b                                           ; $6408: $88
	adc  b                                           ; $6409: $88
	adc  b                                           ; $640a: $88
	adc  b                                           ; $640b: $88
	adc  b                                           ; $640c: $88
	adc  b                                           ; $640d: $88
	adc  b                                           ; $640e: $88
	adc  b                                           ; $640f: $88
	adc  b                                           ; $6410: $88
	adc  b                                           ; $6411: $88
	adc  b                                           ; $6412: $88
	adc  b                                           ; $6413: $88
	adc  b                                           ; $6414: $88
	adc  b                                           ; $6415: $88
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	adc  b                                           ; $6418: $88
	adc  b                                           ; $6419: $88
	adc  b                                           ; $641a: $88
	adc  b                                           ; $641b: $88
	adc  b                                           ; $641c: $88
	adc  b                                           ; $641d: $88
	adc  b                                           ; $641e: $88
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	adc  b                                           ; $6421: $88
	adc  b                                           ; $6422: $88
	adc  b                                           ; $6423: $88
	adc  b                                           ; $6424: $88
	adc  b                                           ; $6425: $88
	adc  b                                           ; $6426: $88
	adc  b                                           ; $6427: $88
	adc  b                                           ; $6428: $88
	adc  b                                           ; $6429: $88
	adc  b                                           ; $642a: $88
	adc  b                                           ; $642b: $88
	adc  b                                           ; $642c: $88
	adc  b                                           ; $642d: $88
	adc  b                                           ; $642e: $88
	adc  b                                           ; $642f: $88
	adc  b                                           ; $6430: $88
	adc  b                                           ; $6431: $88
	adc  b                                           ; $6432: $88
	adc  b                                           ; $6433: $88
	adc  b                                           ; $6434: $88
	adc  b                                           ; $6435: $88
	adc  b                                           ; $6436: $88
	adc  b                                           ; $6437: $88
	adc  b                                           ; $6438: $88
	adc  b                                           ; $6439: $88
	adc  b                                           ; $643a: $88
	adc  b                                           ; $643b: $88
	adc  b                                           ; $643c: $88
	adc  b                                           ; $643d: $88
	adc  b                                           ; $643e: $88
	adc  b                                           ; $643f: $88
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  b                                           ; $6442: $88
	adc  b                                           ; $6443: $88
	adc  b                                           ; $6444: $88
	adc  b                                           ; $6445: $88
	adc  b                                           ; $6446: $88
	adc  b                                           ; $6447: $88
	adc  b                                           ; $6448: $88
	adc  b                                           ; $6449: $88
	adc  b                                           ; $644a: $88
	adc  b                                           ; $644b: $88
	adc  b                                           ; $644c: $88
	adc  b                                           ; $644d: $88
	adc  b                                           ; $644e: $88
	adc  b                                           ; $644f: $88
	adc  b                                           ; $6450: $88
	adc  b                                           ; $6451: $88
	adc  b                                           ; $6452: $88
	adc  b                                           ; $6453: $88
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	adc  b                                           ; $6457: $88
	adc  b                                           ; $6458: $88
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	adc  b                                           ; $645b: $88
	adc  b                                           ; $645c: $88
	adc  b                                           ; $645d: $88
	adc  b                                           ; $645e: $88
	adc  b                                           ; $645f: $88
	adc  b                                           ; $6460: $88
	adc  b                                           ; $6461: $88
	adc  b                                           ; $6462: $88
	adc  b                                           ; $6463: $88
	adc  b                                           ; $6464: $88
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	adc  b                                           ; $6467: $88
	adc  b                                           ; $6468: $88
	adc  b                                           ; $6469: $88
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	adc  b                                           ; $646c: $88
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  b                                           ; $6471: $88
	adc  b                                           ; $6472: $88
	adc  b                                           ; $6473: $88
	adc  b                                           ; $6474: $88
	adc  b                                           ; $6475: $88
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88
	adc  b                                           ; $6478: $88
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	adc  b                                           ; $647c: $88
	adc  b                                           ; $647d: $88
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	adc  b                                           ; $6480: $88
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	adc  b                                           ; $6488: $88
	adc  b                                           ; $6489: $88
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	adc  b                                           ; $6492: $88
	adc  b                                           ; $6493: $88
	adc  b                                           ; $6494: $88
	adc  b                                           ; $6495: $88
	adc  b                                           ; $6496: $88
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	adc  b                                           ; $649b: $88
	adc  b                                           ; $649c: $88
	adc  b                                           ; $649d: $88
	adc  b                                           ; $649e: $88
	adc  b                                           ; $649f: $88
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	adc  b                                           ; $64a7: $88
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  b                                           ; $64af: $88
	adc  b                                           ; $64b0: $88
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88

Call_0a5_64b9:
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	adc  b                                           ; $64bd: $88
	adc  b                                           ; $64be: $88
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  b                                           ; $64c2: $88
	adc  b                                           ; $64c3: $88
	adc  b                                           ; $64c4: $88
	adc  b                                           ; $64c5: $88
	adc  b                                           ; $64c6: $88
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	adc  b                                           ; $64c9: $88
	adc  b                                           ; $64ca: $88
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	adc  b                                           ; $64ce: $88
	adc  b                                           ; $64cf: $88
	adc  b                                           ; $64d0: $88
	adc  b                                           ; $64d1: $88
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	adc  b                                           ; $64d8: $88
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
	adc  b                                           ; $64dc: $88
	adc  b                                           ; $64dd: $88
	adc  b                                           ; $64de: $88
	adc  b                                           ; $64df: $88
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  b                                           ; $64ec: $88
	adc  b                                           ; $64ed: $88
	adc  b                                           ; $64ee: $88
	adc  b                                           ; $64ef: $88
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  b                                           ; $64f3: $88
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	adc  b                                           ; $6500: $88
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	adc  b                                           ; $6503: $88
	adc  b                                           ; $6504: $88
	adc  b                                           ; $6505: $88
	adc  b                                           ; $6506: $88
	adc  b                                           ; $6507: $88
	adc  b                                           ; $6508: $88
	adc  b                                           ; $6509: $88
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	adc  b                                           ; $650e: $88
	adc  b                                           ; $650f: $88
	adc  b                                           ; $6510: $88
	adc  b                                           ; $6511: $88
	adc  b                                           ; $6512: $88
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	adc  b                                           ; $6517: $88
	adc  b                                           ; $6518: $88
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	adc  b                                           ; $651e: $88
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	adc  b                                           ; $6521: $88
	adc  b                                           ; $6522: $88
	adc  b                                           ; $6523: $88
	adc  b                                           ; $6524: $88
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	adc  b                                           ; $652a: $88
	adc  b                                           ; $652b: $88
	adc  b                                           ; $652c: $88
	adc  b                                           ; $652d: $88
	adc  b                                           ; $652e: $88
	adc  b                                           ; $652f: $88
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	adc  b                                           ; $6537: $88
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	adc  b                                           ; $6543: $88
	adc  b                                           ; $6544: $88
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	adc  b                                           ; $6549: $88
	adc  b                                           ; $654a: $88
	adc  b                                           ; $654b: $88
	adc  b                                           ; $654c: $88
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	adc  b                                           ; $6559: $88
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  b                                           ; $6569: $88
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88

Jump_0a5_6577:
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	adc  b                                           ; $6579: $88
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  b                                           ; $657c: $88
	adc  b                                           ; $657d: $88
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88

Jump_0a5_6586:
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	adc  b                                           ; $658a: $88
	adc  b                                           ; $658b: $88
	adc  b                                           ; $658c: $88
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  b                                           ; $658f: $88
	adc  b                                           ; $6590: $88
	adc  b                                           ; $6591: $88
	adc  b                                           ; $6592: $88
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  b                                           ; $659b: $88
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  b                                           ; $65a6: $88
	adc  b                                           ; $65a7: $88
	adc  b                                           ; $65a8: $88
	adc  b                                           ; $65a9: $88
	adc  b                                           ; $65aa: $88
	adc  b                                           ; $65ab: $88
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	adc  b                                           ; $65b6: $88
	adc  b                                           ; $65b7: $88
	adc  b                                           ; $65b8: $88
	adc  b                                           ; $65b9: $88
	adc  b                                           ; $65ba: $88
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	adc  b                                           ; $65be: $88
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	adc  b                                           ; $65c1: $88
	adc  b                                           ; $65c2: $88
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  b                                           ; $65c8: $88
	adc  b                                           ; $65c9: $88
	adc  b                                           ; $65ca: $88
	adc  b                                           ; $65cb: $88
	adc  b                                           ; $65cc: $88
	adc  b                                           ; $65cd: $88
	adc  b                                           ; $65ce: $88
	adc  b                                           ; $65cf: $88
	adc  b                                           ; $65d0: $88
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
	ld   [hl], a                                     ; $6622: $77
	ld   a, b                                        ; $6623: $78
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  c                                           ; $6629: $89
	sbc  c                                           ; $662a: $99
	sbc  c                                           ; $662b: $99
	adc  b                                           ; $662c: $88
	adc  b                                           ; $662d: $88
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  b                                           ; $6630: $88
	adc  b                                           ; $6631: $88
	sbc  c                                           ; $6632: $99
	sbc  c                                           ; $6633: $99
	adc  b                                           ; $6634: $88
	adc  b                                           ; $6635: $88
	add  a                                           ; $6636: $87
	ld   [hl], a                                     ; $6637: $77
	ld   [hl], a                                     ; $6638: $77
	ld   [hl], a                                     ; $6639: $77
	halt                                             ; $663a: $76
	ld   h, [hl]                                     ; $663b: $66
	ld   h, [hl]                                     ; $663c: $66
	ld   h, [hl]                                     ; $663d: $66
	ld   h, [hl]                                     ; $663e: $66
	ld   h, a                                        ; $663f: $67
	ld   [hl], a                                     ; $6640: $77
	ld   a, b                                        ; $6641: $78
	adc  c                                           ; $6642: $89
	adc  c                                           ; $6643: $89
	xor  c                                           ; $6644: $a9
	sbc  d                                           ; $6645: $9a
	xor  d                                           ; $6646: $aa
	xor  d                                           ; $6647: $aa
	xor  d                                           ; $6648: $aa
	xor  d                                           ; $6649: $aa
	sbc  c                                           ; $664a: $99
	sbc  d                                           ; $664b: $9a
	xor  c                                           ; $664c: $a9
	sbc  c                                           ; $664d: $99
	sbc  b                                           ; $664e: $98
	sbc  c                                           ; $664f: $99
	adc  b                                           ; $6650: $88
	add  a                                           ; $6651: $87
	ld   [hl], a                                     ; $6652: $77
	halt                                             ; $6653: $76
	ld   h, [hl]                                     ; $6654: $66
	ld   h, l                                        ; $6655: $65
	ld   d, l                                        ; $6656: $55
	ld   d, l                                        ; $6657: $55
	ld   d, l                                        ; $6658: $55
	ld   b, h                                        ; $6659: $44
	ld   d, l                                        ; $665a: $55
	ld   d, [hl]                                     ; $665b: $56
	ld   [hl], a                                     ; $665c: $77
	ld   a, b                                        ; $665d: $78
	adc  c                                           ; $665e: $89
	sbc  d                                           ; $665f: $9a
	xor  d                                           ; $6660: $aa
	xor  d                                           ; $6661: $aa
	xor  d                                           ; $6662: $aa
	xor  d                                           ; $6663: $aa
	xor  d                                           ; $6664: $aa
	sbc  c                                           ; $6665: $99
	sbc  d                                           ; $6666: $9a
	xor  c                                           ; $6667: $a9
	sbc  d                                           ; $6668: $9a
	xor  d                                           ; $6669: $aa
	xor  c                                           ; $666a: $a9
	sbc  b                                           ; $666b: $98
	adc  b                                           ; $666c: $88
	sbc  c                                           ; $666d: $99
	adc  b                                           ; $666e: $88
	adc  b                                           ; $666f: $88
	ld   [hl], a                                     ; $6670: $77
	ld   [hl], a                                     ; $6671: $77
	halt                                             ; $6672: $76
	ld   h, [hl]                                     ; $6673: $66
	ld   h, [hl]                                     ; $6674: $66
	ld   d, l                                        ; $6675: $55
	ld   d, l                                        ; $6676: $55
	ld   d, l                                        ; $6677: $55
	ld   d, l                                        ; $6678: $55
	ld   d, l                                        ; $6679: $55
	ld   h, [hl]                                     ; $667a: $66
	ld   [hl], a                                     ; $667b: $77
	ld   a, b                                        ; $667c: $78
	adc  d                                           ; $667d: $8a
	xor  d                                           ; $667e: $aa
	cp   d                                           ; $667f: $ba
	xor  d                                           ; $6680: $aa
	cp   e                                           ; $6681: $bb
	cp   e                                           ; $6682: $bb
	xor  d                                           ; $6683: $aa
	xor  d                                           ; $6684: $aa
	sbc  d                                           ; $6685: $9a
	sbc  c                                           ; $6686: $99
	xor  d                                           ; $6687: $aa
	sbc  c                                           ; $6688: $99
	sbc  c                                           ; $6689: $99
	adc  b                                           ; $668a: $88
	sbc  c                                           ; $668b: $99
	adc  b                                           ; $668c: $88
	add  a                                           ; $668d: $87
	ld   [hl], a                                     ; $668e: $77
	ld   [hl], a                                     ; $668f: $77
	ld   h, [hl]                                     ; $6690: $66
	ld   h, l                                        ; $6691: $65
	ld   d, l                                        ; $6692: $55
	ld   d, l                                        ; $6693: $55
	ld   d, h                                        ; $6694: $54
	ld   b, h                                        ; $6695: $44
	ld   b, h                                        ; $6696: $44

Jump_0a5_6697:
	ld   d, [hl]                                     ; $6697: $56
	ld   h, a                                        ; $6698: $67
	ld   a, b                                        ; $6699: $78
	adc  d                                           ; $669a: $8a
	xor  d                                           ; $669b: $aa
	cp   d                                           ; $669c: $ba
	xor  e                                           ; $669d: $ab
	cp   d                                           ; $669e: $ba
	xor  e                                           ; $669f: $ab
	xor  e                                           ; $66a0: $ab
	xor  d                                           ; $66a1: $aa
	xor  d                                           ; $66a2: $aa
	xor  d                                           ; $66a3: $aa
	xor  c                                           ; $66a4: $a9
	sbc  d                                           ; $66a5: $9a
	xor  c                                           ; $66a6: $a9

Call_0a5_66a7:
Jump_0a5_66a7:
	sbc  c                                           ; $66a7: $99

Jump_0a5_66a8:
	adc  c                                           ; $66a8: $89

Jump_0a5_66a9:
	sbc  b                                           ; $66a9: $98
	add  a                                           ; $66aa: $87
	ld   [hl], a                                     ; $66ab: $77
	halt                                             ; $66ac: $76
	ld   h, l                                        ; $66ad: $65
	ld   d, h                                        ; $66ae: $54
	ld   b, h                                        ; $66af: $44
	ld   b, h                                        ; $66b0: $44
	ld   b, e                                        ; $66b1: $43
	inc  sp                                          ; $66b2: $33
	ld   b, l                                        ; $66b3: $45
	ld   h, [hl]                                     ; $66b4: $66
	ld   [hl], a                                     ; $66b5: $77
	adc  b                                           ; $66b6: $88
	xor  d                                           ; $66b7: $aa

Jump_0a5_66b8:
	cp   h                                           ; $66b8: $bc
	cp   d                                           ; $66b9: $ba
	cp   e                                           ; $66ba: $bb
	xor  d                                           ; $66bb: $aa
	cp   e                                           ; $66bc: $bb
	cp   d                                           ; $66bd: $ba
	xor  d                                           ; $66be: $aa
	cp   e                                           ; $66bf: $bb
	cp   e                                           ; $66c0: $bb
	xor  d                                           ; $66c1: $aa
	xor  d                                           ; $66c2: $aa
	xor  d                                           ; $66c3: $aa
	sbc  d                                           ; $66c4: $9a
	sbc  c                                           ; $66c5: $99
	sbc  b                                           ; $66c6: $98
	sbc  b                                           ; $66c7: $98
	ld   [hl], a                                     ; $66c8: $77
	halt                                             ; $66c9: $76
	ld   h, l                                        ; $66ca: $65
	ld   d, h                                        ; $66cb: $54
	ld   b, e                                        ; $66cc: $43
	ld   b, h                                        ; $66cd: $44
	inc  sp                                          ; $66ce: $33
	ld   [hl+], a                                    ; $66cf: $22
	inc  [hl]                                        ; $66d0: $34
	ld   d, [hl]                                     ; $66d1: $56
	ld   [hl], a                                     ; $66d2: $77
	ld   a, c                                        ; $66d3: $79
	sbc  e                                           ; $66d4: $9b
	call z, $abcb                                    ; $66d5: $cc $cb $ab
	cp   e                                           ; $66d8: $bb
	res  5, d                                        ; $66d9: $cb $aa
	xor  e                                           ; $66db: $ab
	xor  e                                           ; $66dc: $ab
	xor  d                                           ; $66dd: $aa
	cp   d                                           ; $66de: $ba
	cp   d                                           ; $66df: $ba
	cp   d                                           ; $66e0: $ba
	xor  c                                           ; $66e1: $a9
	xor  d                                           ; $66e2: $aa
	sbc  c                                           ; $66e3: $99
	adc  b                                           ; $66e4: $88
	add  a                                           ; $66e5: $87
	ld   [hl], a                                     ; $66e6: $77
	ld   h, l                                        ; $66e7: $65
	ld   d, h                                        ; $66e8: $54
	inc  sp                                          ; $66e9: $33
	inc  [hl]                                        ; $66ea: $34
	inc  sp                                          ; $66eb: $33
	ld   hl, $5623                                   ; $66ec: $21 $23 $56
	ld   [hl], a                                     ; $66ef: $77
	ld   a, c                                        ; $66f0: $79
	sbc  d                                           ; $66f1: $9a
	cp   l                                           ; $66f2: $bd
	call z, $ccbb                                    ; $66f3: $cc $bb $cc
	cp   h                                           ; $66f6: $bc
	xor  d                                           ; $66f7: $aa
	xor  e                                           ; $66f8: $ab
	xor  d                                           ; $66f9: $aa
	xor  e                                           ; $66fa: $ab
	cp   d                                           ; $66fb: $ba
	xor  d                                           ; $66fc: $aa
	xor  d                                           ; $66fd: $aa
	sbc  c                                           ; $66fe: $99
	xor  d                                           ; $66ff: $aa
	sbc  c                                           ; $6700: $99
	sbc  b                                           ; $6701: $98
	add  a                                           ; $6702: $87
	halt                                             ; $6703: $76
	ld   h, l                                        ; $6704: $65
	ld   b, e                                        ; $6705: $43
	inc  sp                                          ; $6706: $33
	inc  sp                                          ; $6707: $33
	ld   [hl-], a                                    ; $6708: $32
	ld   de, $5624                                   ; $6709: $11 $24 $56
	halt                                             ; $670c: $76
	ld   a, b                                        ; $670d: $78
	sbc  e                                           ; $670e: $9b
	db   $dd                                         ; $670f: $dd
	call z, $cbbb                                    ; $6710: $cc $bb $cb
	res  7, e                                        ; $6713: $cb $bb
	xor  e                                           ; $6715: $ab
	cp   e                                           ; $6716: $bb
	cp   e                                           ; $6717: $bb
	xor  d                                           ; $6718: $aa
	xor  d                                           ; $6719: $aa
	xor  c                                           ; $671a: $a9
	sbc  c                                           ; $671b: $99
	sbc  c                                           ; $671c: $99
	adc  c                                           ; $671d: $89
	adc  b                                           ; $671e: $88
	ld   [hl], a                                     ; $671f: $77
	ld   h, [hl]                                     ; $6720: $66
	ld   d, h                                        ; $6721: $54
	ld   [hl-], a                                    ; $6722: $32
	inc  hl                                          ; $6723: $23
	ld   [hl-], a                                    ; $6724: $32
	ld   de, $3511                                   ; $6725: $11 $11 $35
	ld   h, a                                        ; $6728: $67
	ld   l, b                                        ; $6729: $68
	adc  e                                           ; $672a: $8b
	call $cbdc                                       ; $672b: $cd $dc $cb
	call $cbcd                                       ; $672e: $cd $cd $cb
	cp   e                                           ; $6731: $bb
	cp   d                                           ; $6732: $ba
	cp   e                                           ; $6733: $bb
	cp   d                                           ; $6734: $ba
	xor  d                                           ; $6735: $aa
	xor  c                                           ; $6736: $a9
	xor  d                                           ; $6737: $aa
	sbc  c                                           ; $6738: $99
	adc  b                                           ; $6739: $88
	add  a                                           ; $673a: $87
	ld   [hl], a                                     ; $673b: $77
	ld   h, l                                        ; $673c: $65
	ld   b, h                                        ; $673d: $44
	ld   [hl+], a                                    ; $673e: $22
	inc  hl                                          ; $673f: $23
	ld   hl, $1111                                   ; $6740: $21 $11 $11
	inc  [hl]                                        ; $6743: $34
	ld   h, [hl]                                     ; $6744: $66
	ld   l, b                                        ; $6745: $68
	adc  e                                           ; $6746: $8b
	call $cbdc                                       ; $6747: $cd $dc $cb
	call z, $bbcd                                    ; $674a: $cc $cd $bb
	xor  e                                           ; $674d: $ab
	xor  e                                           ; $674e: $ab
	cp   e                                           ; $674f: $bb
	xor  d                                           ; $6750: $aa
	xor  d                                           ; $6751: $aa
	sbc  c                                           ; $6752: $99
	sbc  c                                           ; $6753: $99
	sbc  b                                           ; $6754: $98
	sbc  b                                           ; $6755: $98
	add  a                                           ; $6756: $87
	halt                                             ; $6757: $76
	ld   d, l                                        ; $6758: $55
	ld   b, e                                        ; $6759: $43
	ld   de, $1122                                   ; $675a: $11 $22 $11
	ld   de, $4512                                   ; $675d: $11 $12 $45
	ld   h, [hl]                                     ; $6760: $66
	ld   a, c                                        ; $6761: $79
	xor  h                                           ; $6762: $ac
	rst  JumpTable                                         ; $6763: $df
	sbc  $dc                                         ; $6764: $de $dc
	db   $ed                                         ; $6766: $ed
	db   $ed                                         ; $6767: $ed
	res  7, e                                        ; $6768: $cb $bb
	cp   h                                           ; $676a: $bc
	xor  e                                           ; $676b: $ab
	xor  d                                           ; $676c: $aa
	xor  c                                           ; $676d: $a9
	sbc  c                                           ; $676e: $99
	sbc  c                                           ; $676f: $99
	adc  b                                           ; $6770: $88
	add  a                                           ; $6771: $87
	halt                                             ; $6772: $76
	ld   h, l                                        ; $6773: $65
	ld   b, e                                        ; $6774: $43
	ld   hl, $1111                                   ; $6775: $21 $11 $11
	ld   de, $4711                                   ; $6778: $11 $11 $47
	xor  d                                           ; $677b: $aa
	cp   h                                           ; $677c: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $677d: $cf
	rst  $38                                         ; $677e: $ff
	db   $fd                                         ; $677f: $fd
	cp   c                                           ; $6780: $b9
	sbc  c                                           ; $6781: $99
	xor  c                                           ; $6782: $a9
	adc  c                                           ; $6783: $89
	ld   a, d                                        ; $6784: $7a
	call $dced                                       ; $6785: $cd $ed $dc
	db   $dd                                         ; $6788: $dd
	jp   z, Jump_0a5_6577                            ; $6789: $ca $77 $65

	ld   d, h                                        ; $678c: $54
	ld   hl, $1111                                   ; $678d: $21 $11 $11
	ld   de, $ff19                                   ; $6790: $11 $19 $ff
	cp   $42                                         ; $6793: $fe $42
	dec  d                                           ; $6795: $15
	adc  c                                           ; $6796: $89
	ld   l, b                                        ; $6797: $68
	xor  h                                           ; $6798: $ac
	rst  $38                                         ; $6799: $ff
	add  sp, $34                                     ; $679a: $e8 $34
	ld   a, e                                        ; $679c: $7b
	cp   e                                           ; $679d: $bb
	ld   a, b                                        ; $679e: $78
	xor  e                                           ; $679f: $ab
	db   $db                                         ; $67a0: $db
	xor  b                                           ; $67a1: $a8
	xor  e                                           ; $67a2: $ab
	rst  $28                                         ; $67a3: $ef
	call c, $98a9                                    ; $67a4: $dc $a9 $98
	ld   h, h                                        ; $67a7: $64
	inc  sp                                          ; $67a8: $33
	ld   d, h                                        ; $67a9: $54
	ld   sp, $1111                                   ; $67aa: $31 $11 $11
	ld   [de], a                                     ; $67ad: $12
	rst  $38                                         ; $67ae: $ff
	rst  $38                                         ; $67af: $ff
	ld   sp, $6a11                                   ; $67b0: $31 $11 $6a
	cp   e                                           ; $67b3: $bb
	cp   $ff                                         ; $67b4: $fe $ff
	ld   h, h                                        ; $67b6: $64
	ld   de, $ef7e                                   ; $67b7: $11 $7e $ef
	or   a                                           ; $67ba: $b7
	xor  d                                           ; $67bb: $aa
	xor  c                                           ; $67bc: $a9
	sbc  b                                           ; $67bd: $98
	adc  $ff                                         ; $67be: $ce $ff
	cp   d                                           ; $67c0: $ba
	xor  c                                           ; $67c1: $a9
	adc  b                                           ; $67c2: $88
	ld   h, l                                        ; $67c3: $65
	ld   h, l                                        ; $67c4: $65
	ld   h, h                                        ; $67c5: $64
	ld   de, $1111                                   ; $67c6: $11 $11 $11
	inc  d                                           ; $67c9: $14
	rst  $38                                         ; $67ca: $ff
	rst  $38                                         ; $67cb: $ff
	ld   de, $cf11                                   ; $67cc: $11 $11 $cf
	rst  $38                                         ; $67cf: $ff
	rst  $38                                         ; $67d0: $ff
	ei                                               ; $67d1: $fb
	ld   de, $ef15                                   ; $67d2: $11 $15 $ef
	cp   $84                                         ; $67d5: $fe $84
	add  [hl]                                        ; $67d7: $86
	ld   a, b                                        ; $67d8: $78
	xor  h                                           ; $67d9: $ac
	rst  $38                                         ; $67da: $ff
	db   $fd                                         ; $67db: $fd
	add  a                                           ; $67dc: $87
	sub  a                                           ; $67dd: $97
	ld   [hl], a                                     ; $67de: $77
	ld   h, a                                        ; $67df: $67
	add  [hl]                                        ; $67e0: $86
	ld   b, c                                        ; $67e1: $41
	ld   de, $1111                                   ; $67e2: $11 $11 $11
	rra                                              ; $67e5: $1f
	rst  $38                                         ; $67e6: $ff
	db   $f4                                         ; $67e7: $f4
	ld   de, $ff18                                   ; $67e8: $11 $18 $ff
	rst  $38                                         ; $67eb: $ff
	cp   $a1                                         ; $67ec: $fe $a1
	ld   de, $ff6f                                   ; $67ee: $11 $6f $ff
	ret  z                                           ; $67f1: $c8

	dec  [hl]                                        ; $67f2: $35
	halt                                             ; $67f3: $76
	adc  l                                           ; $67f4: $8d
	rst  $38                                         ; $67f5: $ff
	db   $fc                                         ; $67f6: $fc
	xor  b                                           ; $67f7: $a8
	ld   a, d                                        ; $67f8: $7a
	sbc  b                                           ; $67f9: $98
	add  a                                           ; $67fa: $87
	ld   [hl], a                                     ; $67fb: $77
	ld   d, c                                        ; $67fc: $51
	ld   de, $1111                                   ; $67fd: $11 $11 $11
	rla                                              ; $6800: $17
	rst  $38                                         ; $6801: $ff
	rst  $38                                         ; $6802: $ff
	ld   de, rAUD1LEN                                   ; $6803: $11 $11 $ff
	rst  $38                                         ; $6806: $ff
	db   $fd                                         ; $6807: $fd
	ld   [hl], c                                     ; $6808: $71
	ld   de, $ff9f                                   ; $6809: $11 $9f $ff
	add  $22                                         ; $680c: $c6 $22
	ld   d, a                                        ; $680e: $57
	adc  a                                           ; $680f: $8f
	rst  $38                                         ; $6810: $ff
	ei                                               ; $6811: $fb
	ld   [hl], a                                     ; $6812: $77
	ld   a, e                                        ; $6813: $7b
	jp   z, Jump_0a5_7598                            ; $6814: $ca $98 $75

	ld   sp, $1111                                   ; $6817: $31 $11 $11
	ld   de, $ff1f                                   ; $681a: $11 $1f $ff
	pop  af                                          ; $681d: $f1
	ld   de, $ff1e                                   ; $681e: $11 $1e $ff
	rst  $38                                         ; $6821: $ff
	or   $31                                         ; $6822: $f6 $31
	rla                                              ; $6824: $17
	rst  $38                                         ; $6825: $ff
	cp   $61                                         ; $6826: $fe $61
	ld   [de], a                                     ; $6828: $12
	ld   h, a                                        ; $6829: $67
	rst  $28                                         ; $682a: $ef
	rst  $38                                         ; $682b: $ff
	or   h                                           ; $682c: $b4
	ld   b, [hl]                                     ; $682d: $46
	xor  [hl]                                        ; $682e: $ae
	jp   c, Jump_0a5_4186                            ; $682f: $da $86 $41

	ld   de, $1111                                   ; $6832: $11 $11 $11
	ld   de, $ffff                                   ; $6835: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6838: $11 $11 $ff
	rst  $38                                         ; $683b: $ff
	rst  $38                                         ; $683c: $ff
	ld   hl, $cf11                                   ; $683d: $21 $11 $cf
	rst  $38                                         ; $6840: $ff
	jp   $2711                                       ; $6841: $c3 $11 $27


	xor  a                                           ; $6844: $af
	rst  $38                                         ; $6845: $ff
	push hl                                          ; $6846: $e5
	inc  de                                          ; $6847: $13
	sbc  l                                           ; $6848: $9d
	cp   $a8                                         ; $6849: $fe $a8
	ld   b, c                                        ; $684b: $41
	ld   de, $1111                                   ; $684c: $11 $11 $11
	ld   de, $ff5f                                   ; $684f: $11 $5f $ff
	sub  c                                           ; $6852: $91
	ld   de, $ffbf                                   ; $6853: $11 $bf $ff
	rst  JumpTable                                         ; $6856: $df
	ld   [hl], c                                     ; $6857: $71
	ld   de, $ff6f                                   ; $6858: $11 $6f $ff
	di                                               ; $685b: $f3
	ld   de, $bf16                                   ; $685c: $11 $16 $bf
	rst  $38                                         ; $685f: $ff
	push de                                          ; $6860: $d5
	inc  de                                          ; $6861: $13
	xor  [hl]                                        ; $6862: $ae
	cp   $a6                                         ; $6863: $fe $a6
	ld   b, c                                        ; $6865: $41
	ld   de, $1111                                   ; $6866: $11 $11 $11
	ld   de, $ffdf                                   ; $6869: $11 $df $ff
	ld   de, rAUD1ENV                                   ; $686c: $11 $12 $ff
	rst  $38                                         ; $686f: $ff
	rst  $28                                         ; $6870: $ef
	ld   hl, $df11                                   ; $6871: $21 $11 $df
	rst  $38                                         ; $6874: $ff
	or   d                                           ; $6875: $b2
	ld   de, $df17                                   ; $6876: $11 $17 $df
	rst  $38                                         ; $6879: $ff
	sub  d                                           ; $687a: $92
	dec  d                                           ; $687b: $15
	rst  JumpTable                                         ; $687c: $df
	db   $fc                                         ; $687d: $fc
	add  h                                           ; $687e: $84
	ld   de, $1111                                   ; $687f: $11 $11 $11
	ld   de, $ff1f                                   ; $6882: $11 $1f $ff
	pop  af                                          ; $6885: $f1
	ld   de, $ff4f                                   ; $6886: $11 $4f $ff
	rst  $28                                         ; $6889: $ef
	pop  hl                                          ; $688a: $e1
	ld   de, $ff1f                                   ; $688b: $11 $1f $ff
	ld   a, [$1111]                                  ; $688e: $fa $11 $11
	sbc  a                                           ; $6891: $9f
	rst  $38                                         ; $6892: $ff
	rst  $30                                         ; $6893: $f7
	ld   [hl-], a                                    ; $6894: $32
	ld   l, l                                        ; $6895: $6d
	sbc  $d9                                         ; $6896: $de $d9
	ld   b, c                                        ; $6898: $41
	ld   de, $1111                                   ; $6899: $11 $11 $11
	inc  d                                           ; $689c: $14
	rst  $38                                         ; $689d: $ff
	rst  $30                                         ; $689e: $f7
	ld   de, $ff1a                                   ; $689f: $11 $1a $ff
	rst  $38                                         ; $68a2: $ff
	ld   hl, sp+$11                                  ; $68a3: $f8 $11
	rla                                              ; $68a5: $17
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	ld   h, e                                        ; $68a8: $63
	ld   de, $ff3a                                   ; $68a9: $11 $3a $ff
	ld   a, [$5b43]                                  ; $68ac: $fa $43 $5b
	db   $db                                         ; $68af: $db
	cp   d                                           ; $68b0: $ba
	ld   h, h                                        ; $68b1: $64
	ld   de, $1111                                   ; $68b2: $11 $11 $11
	inc  de                                          ; $68b5: $13
	rst  $38                                         ; $68b6: $ff
	ld   sp, hl                                      ; $68b7: $f9
	ld   de, $ff19                                   ; $68b8: $11 $19 $ff
	rst  $38                                         ; $68bb: $ff
	rst  $30                                         ; $68bc: $f7
	ld   de, $ff19                                   ; $68bd: $11 $19 $ff
	rst  $38                                         ; $68c0: $ff
	ld   [hl], h                                     ; $68c1: $74
	ld   de, $ff29                                   ; $68c2: $11 $29 $ff
	ld   a, [$5b43]                                  ; $68c5: $fa $43 $5b
	cp   e                                           ; $68c8: $bb
	cp   c                                           ; $68c9: $b9
	ld   h, e                                        ; $68ca: $63
	ld   de, $1111                                   ; $68cb: $11 $11 $11
	jr   @+$01                                       ; $68ce: $18 $ff

	di                                               ; $68d0: $f3
	ld   de, $ff1b                                   ; $68d1: $11 $1b $ff
	rst  $38                                         ; $68d4: $ff
	push af                                          ; $68d5: $f5
	ld   de, $ff1c                                   ; $68d6: $11 $1c $ff
	rst  $38                                         ; $68d9: $ff
	sub  a                                           ; $68da: $97
	ld   de, $ff18                                   ; $68db: $11 $18 $ff
	ld   sp, hl                                      ; $68de: $f9
	ld   [hl], h                                     ; $68df: $74
	ld   e, c                                        ; $68e0: $59
	adc  c                                           ; $68e1: $89
	jp   z, $1173                                    ; $68e2: $ca $73 $11

	ld   de, $1a11                                   ; $68e5: $11 $11 $1a
	rst  $38                                         ; $68e8: $ff
	ldh  a, [c]                                      ; $68e9: $f2
	ld   de, $ff29                                   ; $68ea: $11 $29 $ff
	rst  $38                                         ; $68ed: $ff
	db   $f4                                         ; $68ee: $f4
	ld   de, $ff1d                                   ; $68ef: $11 $1d $ff
	rst  $38                                         ; $68f2: $ff
	jp   z, $0911                                    ; $68f3: $ca $11 $09

	rst  $38                                         ; $68f6: $ff
	ei                                               ; $68f7: $fb
	and  a                                           ; $68f8: $a7
	ld   h, a                                        ; $68f9: $67
	ld   l, b                                        ; $68fa: $68
	xor  e                                           ; $68fb: $ab
	ld   [hl], e                                     ; $68fc: $73
	ld   de, $1111                                   ; $68fd: $11 $11 $11
	ld   e, $ff                                      ; $6900: $1e $ff
	pop  af                                          ; $6902: $f1
	ld   de, $ff17                                   ; $6903: $11 $17 $ff
	rst  $38                                         ; $6906: $ff
	di                                               ; $6907: $f3
	ld   de, $ff1d                                   ; $6908: $11 $1d $ff
	rst  $38                                         ; $690b: $ff
	ei                                               ; $690c: $fb
	ld   de, $ff19                                   ; $690d: $11 $19 $ff
	db   $fc                                         ; $6910: $fc
	ret                                              ; $6911: $c9


	ld   h, h                                        ; $6912: $64

jr_0a5_6913:
	ld   c, c                                        ; $6913: $49
	cp   h                                           ; $6914: $bc
	ld   [hl], d                                     ; $6915: $72
	ld   de, $1111                                   ; $6916: $11 $11 $11
	add  hl, de                                      ; $6919: $19
	rst  $38                                         ; $691a: $ff
	push af                                          ; $691b: $f5
	ld   de, $bf14                                   ; $691c: $11 $14 $bf
	rst  $38                                         ; $691f: $ff
	ld   hl, sp+$11                                  ; $6920: $f8 $11
	jr   jr_0a5_6913                                 ; $6922: $18 $ef

	rst  $38                                         ; $6924: $ff
	cp   $21                                         ; $6925: $fe $21
	dec  d                                           ; $6927: $15
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	ei                                               ; $692a: $fb
	add  h                                           ; $692b: $84
	daa                                              ; $692c: $27
	sbc  d                                           ; $692d: $9a
	add  h                                           ; $692e: $84
	ld   de, $1111                                   ; $692f: $11 $11 $11
	ld   de, $fdff                                   ; $6932: $11 $ff $fd
	ld   de, $3c11                                   ; $6935: $11 $11 $3c
	rst  $38                                         ; $6938: $ff
	rst  $38                                         ; $6939: $ff
	ld   hl, $9a11                                   ; $693a: $21 $11 $9a
	rst  $38                                         ; $693d: $ff
	rst  $38                                         ; $693e: $ff
	add  c                                           ; $693f: $81
	inc  d                                           ; $6940: $14
	adc  l                                           ; $6941: $8d
	rst  JumpTable                                         ; $6942: $df
	rst  $38                                         ; $6943: $ff
	and  a                                           ; $6944: $a7
	ld   b, l                                        ; $6945: $45
	halt                                             ; $6946: $76
	ld   h, l                                        ; $6947: $65
	ld   b, e                                        ; $6948: $43
	ld   de, $1111                                   ; $6949: $11 $11 $11
	rst  $28                                         ; $694c: $ef
	rst  $38                                         ; $694d: $ff
	sub  c                                           ; $694e: $91
	ld   de, $cf15                                   ; $694f: $11 $15 $cf
	rst  $38                                         ; $6952: $ff
	or   h                                           ; $6953: $b4
	ld   de, $9f45                                   ; $6954: $11 $45 $9f
	rst  $38                                         ; $6957: $ff
	push af                                          ; $6958: $f5
	ld   d, [hl]                                     ; $6959: $56
	ld   h, a                                        ; $695a: $67
	sbc  e                                           ; $695b: $9b
	rst  $38                                         ; $695c: $ff
	db   $eb                                         ; $695d: $eb
	add  a                                           ; $695e: $87
	ld   d, h                                        ; $695f: $54
	inc  hl                                          ; $6960: $23
	ld   d, l                                        ; $6961: $55
	ld   sp, $1111                                   ; $6962: $31 $11 $11
	rra                                              ; $6965: $1f
	rst  $38                                         ; $6966: $ff
	ld   hl, sp+$12                                  ; $6967: $f8 $12
	ld   de, $ff09                                   ; $6969: $11 $09 $ff
	db   $fd                                         ; $696c: $fd
	sub  h                                           ; $696d: $94
	ld   [hl-], a                                    ; $696e: $32
	dec  d                                           ; $696f: $15
	rst  $28                                         ; $6970: $ef
	cp   $cc                                         ; $6971: $fe $cc
	sub  l                                           ; $6973: $95
	ld   b, h                                        ; $6974: $44
	sbc  a                                           ; $6975: $9f
	rst  $38                                         ; $6976: $ff
	db   $ec                                         ; $6977: $ec
	and  h                                           ; $6978: $a4
	ld   de, $2102                                   ; $6979: $11 $02 $21
	ld   de, $1611                                   ; $697c: $11 $11 $16
	rst  $38                                         ; $697f: $ff
	db   $fd                                         ; $6980: $fd
	ld   [hl], l                                     ; $6981: $75
	ld   sp, $cf13                                   ; $6982: $31 $13 $cf
	rst  $38                                         ; $6985: $ff
	db   $db                                         ; $6986: $db
	ld   [hl], h                                     ; $6987: $74
	ld   [de], a                                     ; $6988: $12
	xor  [hl]                                        ; $6989: $ae
	rst  $38                                         ; $698a: $ff
	rst  $28                                         ; $698b: $ef
	cp   b                                           ; $698c: $b8
	ld   b, h                                        ; $698d: $44
	ld   a, d                                        ; $698e: $7a
	call $d7ff                                       ; $698f: $cd $ff $d7
	ld   sp, $1111                                   ; $6992: $31 $11 $11
	ld   de, $1411                                   ; $6995: $11 $11 $14
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	cp   d                                           ; $699a: $ba
	ld   [hl], c                                     ; $699b: $71
	ld   de, $fe9f                                   ; $699c: $11 $9f $fe
	rst  $38                                         ; $699f: $ff
	ret  c                                           ; $69a0: $d8

	ld   b, h                                        ; $69a1: $44
	sbc  e                                           ; $69a2: $9b
	call $dbbd                                       ; $69a3: $cd $bd $db
	add  a                                           ; $69a6: $87
	adc  c                                           ; $69a7: $89
	xor  d                                           ; $69a8: $aa
	cp   [hl]                                        ; $69a9: $be
	ret                                              ; $69aa: $c9


	ld   d, d                                        ; $69ab: $52
	ld   de, $1111                                   ; $69ac: $11 $11 $11
	ld   de, $ff16                                   ; $69af: $11 $16 $ff
	rst  $38                                         ; $69b2: $ff
	rst  $28                                         ; $69b3: $ef
	and  c                                           ; $69b4: $a1
	ld   de, $aa6b                                   ; $69b5: $11 $6b $aa
	adc  $db                                         ; $69b8: $ce $db
	adc  c                                           ; $69ba: $89
	call $aaca                                       ; $69bb: $cd $ca $aa
	cp   d                                           ; $69be: $ba
	ld   a, b                                        ; $69bf: $78
	sbc  d                                           ; $69c0: $9a
	xor  c                                           ; $69c1: $a9
	xor  e                                           ; $69c2: $ab
	cp   b                                           ; $69c3: $b8
	ld   h, h                                        ; $69c4: $64
	ld   sp, $1111                                   ; $69c5: $31 $11 $11
	ld   de, $ff1a                                   ; $69c8: $11 $1a $ff
	rst  $38                                         ; $69cb: $ff
	rst  $38                                         ; $69cc: $ff
	ret  c                                           ; $69cd: $d8

	ld   [hl], a                                     ; $69ce: $77
	adc  b                                           ; $69cf: $88
	ld   h, [hl]                                     ; $69d0: $66
	ld   l, b                                        ; $69d1: $68
	adc  b                                           ; $69d2: $88
	adc  d                                           ; $69d3: $8a
	rst  JumpTable                                         ; $69d4: $df
	db   $ed                                         ; $69d5: $ed
	jp   z, Jump_0a5_66b8                            ; $69d6: $ca $b8 $66

	ld   h, a                                        ; $69d9: $67
	halt                                             ; $69da: $76
	ld   h, [hl]                                     ; $69db: $66
	ld   h, l                                        ; $69dc: $65
	ld   b, h                                        ; $69dd: $44
	ld   d, [hl]                                     ; $69de: $56
	ld   h, l                                        ; $69df: $65
	ld   d, l                                        ; $69e0: $55
	ld   d, l                                        ; $69e1: $55
	ld   h, a                                        ; $69e2: $67
	ld   [hl], a                                     ; $69e3: $77
	ld   [hl], a                                     ; $69e4: $77
	ld   [hl], a                                     ; $69e5: $77
	adc  c                                           ; $69e6: $89
	sbc  c                                           ; $69e7: $99
	sbc  d                                           ; $69e8: $9a
	sbc  c                                           ; $69e9: $99
	sbc  b                                           ; $69ea: $98
	sbc  c                                           ; $69eb: $99
	xor  d                                           ; $69ec: $aa
	xor  d                                           ; $69ed: $aa
	sbc  c                                           ; $69ee: $99
	sbc  b                                           ; $69ef: $98
	adc  b                                           ; $69f0: $88
	adc  b                                           ; $69f1: $88
	sbc  c                                           ; $69f2: $99
	sbc  d                                           ; $69f3: $9a
	sbc  b                                           ; $69f4: $98
	adc  b                                           ; $69f5: $88
	add  a                                           ; $69f6: $87
	adc  c                                           ; $69f7: $89
	sbc  c                                           ; $69f8: $99
	sbc  c                                           ; $69f9: $99
	adc  b                                           ; $69fa: $88
	adc  c                                           ; $69fb: $89
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	ld   [hl], a                                     ; $69fe: $77
	ld   [hl], a                                     ; $69ff: $77
	ld   [hl], a                                     ; $6a00: $77
	ld   [hl], a                                     ; $6a01: $77
	ld   [hl], a                                     ; $6a02: $77
	halt                                             ; $6a03: $76
	ld   [hl], a                                     ; $6a04: $77
	adc  c                                           ; $6a05: $89
	adc  c                                           ; $6a06: $89
	sbc  c                                           ; $6a07: $99
	adc  b                                           ; $6a08: $88
	adc  b                                           ; $6a09: $88
	adc  b                                           ; $6a0a: $88
	adc  b                                           ; $6a0b: $88
	sbc  b                                           ; $6a0c: $98
	sbc  b                                           ; $6a0d: $98
	adc  b                                           ; $6a0e: $88
	adc  b                                           ; $6a0f: $88
	adc  c                                           ; $6a10: $89
	adc  c                                           ; $6a11: $89
	adc  b                                           ; $6a12: $88
	sbc  c                                           ; $6a13: $99
	adc  b                                           ; $6a14: $88
	adc  b                                           ; $6a15: $88
	ld   [hl], a                                     ; $6a16: $77
	ld   [hl], a                                     ; $6a17: $77
	ld   a, b                                        ; $6a18: $78
	adc  b                                           ; $6a19: $88
	adc  b                                           ; $6a1a: $88
	sbc  b                                           ; $6a1b: $98
	add  a                                           ; $6a1c: $87
	adc  b                                           ; $6a1d: $88
	adc  c                                           ; $6a1e: $89
	adc  b                                           ; $6a1f: $88
	adc  c                                           ; $6a20: $89
	adc  b                                           ; $6a21: $88
	ld   [hl], a                                     ; $6a22: $77
	ld   a, b                                        ; $6a23: $78
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	add  a                                           ; $6a28: $87
	adc  b                                           ; $6a29: $88
	sbc  c                                           ; $6a2a: $99
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	adc  b                                           ; $6a2f: $88
	add  a                                           ; $6a30: $87
	ld   a, b                                        ; $6a31: $78
	adc  b                                           ; $6a32: $88
	adc  c                                           ; $6a33: $89
	sbc  c                                           ; $6a34: $99
	adc  b                                           ; $6a35: $88
	adc  b                                           ; $6a36: $88
	adc  c                                           ; $6a37: $89
	adc  b                                           ; $6a38: $88
	adc  c                                           ; $6a39: $89
	adc  b                                           ; $6a3a: $88
	ld   [hl], a                                     ; $6a3b: $77
	ld   [hl], a                                     ; $6a3c: $77
	ld   [hl], a                                     ; $6a3d: $77
	adc  b                                           ; $6a3e: $88
	adc  b                                           ; $6a3f: $88
	adc  b                                           ; $6a40: $88
	adc  b                                           ; $6a41: $88
	ld   a, b                                        ; $6a42: $78
	adc  c                                           ; $6a43: $89
	adc  b                                           ; $6a44: $88
	adc  b                                           ; $6a45: $88
	adc  b                                           ; $6a46: $88
	adc  b                                           ; $6a47: $88
	adc  b                                           ; $6a48: $88
	adc  b                                           ; $6a49: $88
	adc  b                                           ; $6a4a: $88
	adc  b                                           ; $6a4b: $88
	sbc  c                                           ; $6a4c: $99
	sbc  c                                           ; $6a4d: $99
	sbc  b                                           ; $6a4e: $98
	adc  b                                           ; $6a4f: $88
	adc  b                                           ; $6a50: $88
	adc  b                                           ; $6a51: $88
	adc  b                                           ; $6a52: $88
	adc  b                                           ; $6a53: $88
	ld   [hl], a                                     ; $6a54: $77
	ld   [hl], a                                     ; $6a55: $77
	ld   [hl], a                                     ; $6a56: $77
	adc  b                                           ; $6a57: $88
	adc  b                                           ; $6a58: $88
	add  a                                           ; $6a59: $87
	ld   [hl], a                                     ; $6a5a: $77
	ld   [hl], a                                     ; $6a5b: $77
	adc  b                                           ; $6a5c: $88
	adc  b                                           ; $6a5d: $88
	adc  b                                           ; $6a5e: $88
	adc  b                                           ; $6a5f: $88
	adc  b                                           ; $6a60: $88
	adc  b                                           ; $6a61: $88
	sbc  c                                           ; $6a62: $99
	sbc  c                                           ; $6a63: $99
	adc  b                                           ; $6a64: $88
	adc  b                                           ; $6a65: $88
	adc  b                                           ; $6a66: $88
	adc  b                                           ; $6a67: $88
	adc  b                                           ; $6a68: $88
	adc  b                                           ; $6a69: $88
	adc  b                                           ; $6a6a: $88
	adc  b                                           ; $6a6b: $88
	adc  b                                           ; $6a6c: $88
	adc  b                                           ; $6a6d: $88
	add  a                                           ; $6a6e: $87
	ld   a, b                                        ; $6a6f: $78
	adc  b                                           ; $6a70: $88
	adc  b                                           ; $6a71: $88
	adc  b                                           ; $6a72: $88
	ld   [hl], a                                     ; $6a73: $77
	ld   [hl], a                                     ; $6a74: $77
	adc  b                                           ; $6a75: $88
	adc  b                                           ; $6a76: $88
	adc  b                                           ; $6a77: $88
	adc  b                                           ; $6a78: $88
	adc  b                                           ; $6a79: $88
	adc  b                                           ; $6a7a: $88
	adc  c                                           ; $6a7b: $89
	sbc  b                                           ; $6a7c: $98
	adc  b                                           ; $6a7d: $88
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	adc  b                                           ; $6a81: $88
	adc  b                                           ; $6a82: $88
	adc  b                                           ; $6a83: $88
	adc  b                                           ; $6a84: $88
	adc  b                                           ; $6a85: $88
	adc  b                                           ; $6a86: $88
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	adc  b                                           ; $6a89: $88
	adc  b                                           ; $6a8a: $88
	adc  b                                           ; $6a8b: $88
	adc  b                                           ; $6a8c: $88
	ld   [hl], a                                     ; $6a8d: $77
	ld   a, b                                        ; $6a8e: $78
	adc  b                                           ; $6a8f: $88
	adc  b                                           ; $6a90: $88
	adc  b                                           ; $6a91: $88
	adc  b                                           ; $6a92: $88
	adc  b                                           ; $6a93: $88
	adc  b                                           ; $6a94: $88
	adc  b                                           ; $6a95: $88
	adc  b                                           ; $6a96: $88
	adc  b                                           ; $6a97: $88
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	adc  b                                           ; $6a9a: $88
	adc  b                                           ; $6a9b: $88
	adc  b                                           ; $6a9c: $88
	adc  b                                           ; $6a9d: $88
	adc  b                                           ; $6a9e: $88
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	adc  b                                           ; $6aa1: $88
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	adc  b                                           ; $6aa4: $88
	adc  b                                           ; $6aa5: $88
	adc  b                                           ; $6aa6: $88
	ld   a, b                                        ; $6aa7: $78
	adc  b                                           ; $6aa8: $88
	adc  b                                           ; $6aa9: $88
	adc  b                                           ; $6aaa: $88
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	adc  b                                           ; $6aad: $88
	adc  b                                           ; $6aae: $88
	adc  b                                           ; $6aaf: $88
	adc  b                                           ; $6ab0: $88
	adc  b                                           ; $6ab1: $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
	adc  b                                           ; $6ab8: $88
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	adc  b                                           ; $6abc: $88
	adc  b                                           ; $6abd: $88
	adc  b                                           ; $6abe: $88
	adc  b                                           ; $6abf: $88
	adc  b                                           ; $6ac0: $88
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  b                                           ; $6ac3: $88
	adc  b                                           ; $6ac4: $88
	adc  b                                           ; $6ac5: $88
	adc  b                                           ; $6ac6: $88
	adc  b                                           ; $6ac7: $88
	adc  b                                           ; $6ac8: $88
	adc  b                                           ; $6ac9: $88

Call_0a5_6aca:
	adc  b                                           ; $6aca: $88
	adc  b                                           ; $6acb: $88
	adc  b                                           ; $6acc: $88
	adc  b                                           ; $6acd: $88
	adc  b                                           ; $6ace: $88
	adc  b                                           ; $6acf: $88
	adc  b                                           ; $6ad0: $88
	adc  b                                           ; $6ad1: $88
	adc  b                                           ; $6ad2: $88
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	adc  b                                           ; $6ae3: $88
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	adc  b                                           ; $6aee: $88
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	adc  b                                           ; $6af3: $88
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
	adc  b                                           ; $6b0b: $88
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
	adc  c                                           ; $6be7: $89
	sbc  c                                           ; $6be8: $99
	sbc  c                                           ; $6be9: $99
	sub  a                                           ; $6bea: $97
	ld   a, b                                        ; $6beb: $78
	adc  c                                           ; $6bec: $89
	adc  b                                           ; $6bed: $88
	adc  b                                           ; $6bee: $88
	adc  b                                           ; $6bef: $88
	adc  c                                           ; $6bf0: $89
	xor  c                                           ; $6bf1: $a9
	ld   [hl], a                                     ; $6bf2: $77
	sbc  e                                           ; $6bf3: $9b
	sbc  c                                           ; $6bf4: $99
	sbc  b                                           ; $6bf5: $98
	xor  h                                           ; $6bf6: $ac
	xor  e                                           ; $6bf7: $ab
	call z, Call_0a5_56a6                            ; $6bf8: $cc $a6 $56
	ld   d, h                                        ; $6bfb: $54
	inc  [hl]                                        ; $6bfc: $34
	ld   h, a                                        ; $6bfd: $67
	ld   [hl], a                                     ; $6bfe: $77
	adc  d                                           ; $6bff: $8a
	res  7, e                                        ; $6c00: $cb $bb
	call c, Call_0a5_54a7                            ; $6c02: $dc $a7 $54
	ld   hl, $1111                                   ; $6c05: $21 $11 $11
	ld   de, $cf13                                   ; $6c08: $11 $13 $cf
	rst  $38                                         ; $6c0b: $ff
	rst  $38                                         ; $6c0c: $ff
	rst  $38                                         ; $6c0d: $ff
	and  [hl]                                        ; $6c0e: $a6
	ld   d, h                                        ; $6c0f: $54
	ld   e, d                                        ; $6c10: $5a
	rst  JumpTable                                         ; $6c11: $df
	db   $fc                                         ; $6c12: $fc
	ld   [hl], c                                     ; $6c13: $71
	ld   de, $1111                                   ; $6c14: $11 $11 $11
	rra                                              ; $6c17: $1f
	rst  $38                                         ; $6c18: $ff
	rst  $38                                         ; $6c19: $ff
	rst  $38                                         ; $6c1a: $ff
	and  c                                           ; $6c1b: $a1
	rla                                              ; $6c1c: $17
	ld   de, $ffae                                   ; $6c1d: $11 $ae $ff
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	or   c                                           ; $6c22: $b1
	ld   de, $1111                                   ; $6c23: $11 $11 $11
	ld   de, $ff1f                                   ; $6c26: $11 $1f $ff
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	ld   de, $9111                                   ; $6c2b: $11 $11 $91
	ccf                                              ; $6c2e: $3f
	rst  $38                                         ; $6c2f: $ff
	rst  $38                                         ; $6c30: $ff
	ei                                               ; $6c31: $fb
	add  [hl]                                        ; $6c32: $86
	dec  d                                           ; $6c33: $15
	ld   sp, $1111                                   ; $6c34: $31 $11 $11
	rra                                              ; $6c37: $1f
	rst  $38                                         ; $6c38: $ff
	rst  $38                                         ; $6c39: $ff
	rst  $38                                         ; $6c3a: $ff
	ld   de, $c314                                   ; $6c3b: $11 $14 $c3
	rst  $38                                         ; $6c3e: $ff
	rst  $38                                         ; $6c3f: $ff
	and  [hl]                                        ; $6c40: $a6
	and  $8e                                         ; $6c41: $e6 $8e
	sbc  $41                                         ; $6c43: $de $41
	ld   de, $1f11                                   ; $6c45: $11 $11 $1f
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	ld   sp, hl                                      ; $6c4a: $f9
	ld   de, $fc18                                   ; $6c4b: $11 $18 $fc
	rst  $38                                         ; $6c4e: $ff
	rst  $38                                         ; $6c4f: $ff
	ld   de, $dfa8                                   ; $6c50: $11 $a8 $df
	rst  $38                                         ; $6c53: $ff
	ld   d, c                                        ; $6c54: $51
	ld   de, $1f11                                   ; $6c55: $11 $11 $1f
	rst  $38                                         ; $6c58: $ff
	rst  $38                                         ; $6c59: $ff
	pop  af                                          ; $6c5a: $f1
	ld   de, $ff1f                                   ; $6c5b: $11 $1f $ff
	rst  $38                                         ; $6c5e: $ff
	push af                                          ; $6c5f: $f5
	ld   de, $ff6b                                   ; $6c60: $11 $6b $ff
	rst  $38                                         ; $6c63: $ff
	ld   de, $1111                                   ; $6c64: $11 $11 $11
	rra                                              ; $6c67: $1f
	rst  $38                                         ; $6c68: $ff
	rst  $30                                         ; $6c69: $f7
	and  c                                           ; $6c6a: $a1
	ld   de, $ff1f                                   ; $6c6b: $11 $1f $ff
	rst  $38                                         ; $6c6e: $ff
	ld   d, c                                        ; $6c6f: $51
	ld   de, $ff8f                                   ; $6c70: $11 $8f $ff
	db   $fd                                         ; $6c73: $fd
	ld   de, $1111                                   ; $6c74: $11 $11 $11
	ld   c, a                                        ; $6c77: $4f
	rst  $38                                         ; $6c78: $ff
	pop  af                                          ; $6c79: $f1
	ld   de, $bf11                                   ; $6c7a: $11 $11 $bf
	rst  $38                                         ; $6c7d: $ff
	rst  $38                                         ; $6c7e: $ff
	ld   de, rAUD1LEN                                   ; $6c7f: $11 $11 $ff
	rst  $38                                         ; $6c82: $ff
	pop  af                                          ; $6c83: $f1
	ld   de, $1111                                   ; $6c84: $11 $11 $11
	rst  $38                                         ; $6c87: $ff
	rst  $38                                         ; $6c88: $ff
	ld   de, $1211                                   ; $6c89: $11 $11 $12
	rst  $38                                         ; $6c8c: $ff
	rst  $38                                         ; $6c8d: $ff
	pop  af                                          ; $6c8e: $f1
	ld   de, $ff1f                                   ; $6c8f: $11 $1f $ff
	rst  $38                                         ; $6c92: $ff
	ld   de, $1111                                   ; $6c93: $11 $11 $11
	ld   de, $f1ff                                   ; $6c96: $11 $ff $f1
	ld   de, $1f11                                   ; $6c99: $11 $11 $1f
	rst  $38                                         ; $6c9c: $ff
	ldh  a, [c]                                      ; $6c9d: $f2
	ld   de, $df11                                   ; $6c9e: $11 $11 $df
	rst  $38                                         ; $6ca1: $ff
	pop  af                                          ; $6ca2: $f1
	ld   de, $5111                                   ; $6ca3: $11 $11 $51
	rra                                              ; $6ca6: $1f
	rst  $38                                         ; $6ca7: $ff
	ld   de, $1112                                   ; $6ca8: $11 $12 $11
	rst  $38                                         ; $6cab: $ff
	rst  $38                                         ; $6cac: $ff
	ld   de, $2b11                                   ; $6cad: $11 $11 $2b
	rst  $38                                         ; $6cb0: $ff
	cp   $11                                         ; $6cb1: $fe $11
	ld   de, $1119                                   ; $6cb3: $11 $19 $11
	rst  $38                                         ; $6cb6: $ff
	pop  af                                          ; $6cb7: $f1
	ld   de, $1f71                                   ; $6cb8: $11 $71 $1f
	rst  $38                                         ; $6cbb: $ff
	pop  af                                          ; $6cbc: $f1
	ld   de, $ff15                                   ; $6cbd: $11 $15 $ff
	rst  $38                                         ; $6cc0: $ff
	ld   [hl], c                                     ; $6cc1: $71
	ld   de, $7114                                   ; $6cc2: $11 $14 $71
	ccf                                              ; $6cc5: $3f
	pop  af                                          ; $6cc6: $f1
	ld   de, $1b16                                   ; $6cc7: $11 $16 $1b
	rst  $38                                         ; $6cca: $ff
	di                                               ; $6ccb: $f3
	ld   de, $9f15                                   ; $6ccc: $11 $15 $9f
	rst  $38                                         ; $6ccf: $ff
	pop  hl                                          ; $6cd0: $e1
	ld   de, $b111                                   ; $6cd1: $11 $11 $b1
	rra                                              ; $6cd4: $1f
	db   $fd                                         ; $6cd5: $fd
	ld   de, $191c                                   ; $6cd6: $11 $1c $19
	rst  $38                                         ; $6cd9: $ff
	rst  $38                                         ; $6cda: $ff
	ld   de, $9f11                                   ; $6cdb: $11 $11 $9f
	rst  $38                                         ; $6cde: $ff
	pop  hl                                          ; $6cdf: $e1
	ld   de, $2111                                   ; $6ce0: $11 $11 $21
	rra                                              ; $6ce3: $1f
	ld   a, [$1d11]                                  ; $6ce4: $fa $11 $1d
	add  hl, de                                      ; $6ce7: $19
	rst  $38                                         ; $6ce8: $ff
	rst  $38                                         ; $6ce9: $ff
	ld   de, rAUD1LEN                                   ; $6cea: $11 $11 $ff
	rst  $38                                         ; $6ced: $ff
	add  c                                           ; $6cee: $81
	ld   de, $1111                                   ; $6cef: $11 $11 $11
	rra                                              ; $6cf2: $1f
	ldh  a, [c]                                      ; $6cf3: $f2
	ld   de, $1f1c                                   ; $6cf4: $11 $1c $1f
	rst  $38                                         ; $6cf7: $ff
	or   $11                                         ; $6cf8: $f6 $11
	jr   @+$01                                       ; $6cfa: $18 $ff

	rst  $38                                         ; $6cfc: $ff
	ld   de, $2111                                   ; $6cfd: $11 $11 $21
	ld   de, $f1ff                                   ; $6d00: $11 $ff $f1
	ld   de, $2fb1                                   ; $6d03: $11 $b1 $2f
	rst  $38                                         ; $6d06: $ff
	pop  af                                          ; $6d07: $f1
	ld   de, $ff3f                                   ; $6d08: $11 $3f $ff
	ld   sp, hl                                      ; $6d0b: $f9
	ld   de, $2111                                   ; $6d0c: $11 $11 $21
	ld   a, [de]                                     ; $6d0f: $1a
	rst  $38                                         ; $6d10: $ff

Jump_0a5_6d11:
	ld   de, $9112                                   ; $6d11: $11 $12 $91
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	ld   de, rAUD1ENV                                   ; $6d16: $11 $12 $ff
	rst  $38                                         ; $6d19: $ff
	pop  hl                                          ; $6d1a: $e1
	ld   de, $1111                                   ; $6d1b: $11 $11 $11
	rst  JumpTable                                         ; $6d1e: $df
	ldh  a, [c]                                      ; $6d1f: $f2
	ld   de, $2f26                                   ; $6d20: $11 $26 $2f
	rst  $38                                         ; $6d23: $ff
	pop  af                                          ; $6d24: $f1
	ld   de, $ff1f                                   ; $6d25: $11 $1f $ff
	db   $fd                                         ; $6d28: $fd
	ld   de, $3111                                   ; $6d29: $11 $11 $31
	rra                                              ; $6d2c: $1f
	rst  $38                                         ; $6d2d: $ff
	ld   hl, $8515                                   ; $6d2e: $21 $15 $85
	rst  $38                                         ; $6d31: $ff
	rst  $38                                         ; $6d32: $ff
	ld   de, rAUD1HIGH                                   ; $6d33: $11 $14 $ff
	rst  $38                                         ; $6d36: $ff
	and  c                                           ; $6d37: $a1
	ld   de, $1111                                   ; $6d38: $11 $11 $11
	rst  $38                                         ; $6d3b: $ff
	pop  af                                          ; $6d3c: $f1
	ld   de, $efc3                                   ; $6d3d: $11 $c3 $ef
	rst  $38                                         ; $6d40: $ff
	pop  af                                          ; $6d41: $f1
	ld   de, $ffaf                                   ; $6d42: $11 $af $ff
	db   $f4                                         ; $6d45: $f4
	ld   de, $1111                                   ; $6d46: $11 $11 $11
	rra                                              ; $6d49: $1f
	ld   a, [$1c11]                                  ; $6d4a: $fa $11 $1c
	ld   e, a                                        ; $6d4d: $5f
	rst  $38                                         ; $6d4e: $ff
	ldh  a, [c]                                      ; $6d4f: $f2
	ld   de, $ff1f                                   ; $6d50: $11 $1f $ff
	ld   a, [$1111]                                  ; $6d53: $fa $11 $11
	ld   de, $ff1f                                   ; $6d56: $11 $1f $ff
	ld   de, $5f16                                   ; $6d59: $11 $16 $5f
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	ld   de, $ff1a                                   ; $6d5e: $11 $1a $ff
	rst  $38                                         ; $6d61: $ff
	ld   de, $1111                                   ; $6d62: $11 $11 $11
	ld   de, $c1ff                                   ; $6d65: $11 $ff $c1
	ld   de, $ff96                                   ; $6d68: $11 $96 $ff
	rst  $38                                         ; $6d6b: $ff
	ld   de, rAUD1ENV                                   ; $6d6c: $11 $12 $ff
	rst  $38                                         ; $6d6f: $ff
	and  c                                           ; $6d70: $a1
	ld   de, $1111                                   ; $6d71: $11 $11 $11
	rst  $38                                         ; $6d74: $ff
	pop  af                                          ; $6d75: $f1
	ld   de, $ff62                                   ; $6d76: $11 $62 $ff
	rst  $38                                         ; $6d79: $ff
	pop  af                                          ; $6d7a: $f1
	ld   de, $ffcf                                   ; $6d7b: $11 $cf $ff
	ldh  [c], a                                      ; $6d7e: $e2
	ld   de, $1111                                   ; $6d7f: $11 $11 $11
	ld   l, a                                        ; $6d82: $6f
	ld   a, [$1611]                                  ; $6d83: $fa $11 $16
	sbc  a                                           ; $6d86: $9f
	rst  $38                                         ; $6d87: $ff
	pop  af                                          ; $6d88: $f1
	ld   de, $ff5f                                   ; $6d89: $11 $5f $ff
	rst  $30                                         ; $6d8c: $f7
	ld   de, $1111                                   ; $6d8d: $11 $11 $11
	rra                                              ; $6d90: $1f
	rst  $38                                         ; $6d91: $ff
	ld   de, $4f17                                   ; $6d92: $11 $17 $4f
	rst  $38                                         ; $6d95: $ff
	cp   $11                                         ; $6d96: $fe $11
	rra                                              ; $6d98: $1f
	rst  $38                                         ; $6d99: $ff
	ei                                               ; $6d9a: $fb
	ld   de, $1111                                   ; $6d9b: $11 $11 $11
	rla                                              ; $6d9e: $17
	rst  $38                                         ; $6d9f: $ff
	or   c                                           ; $6da0: $b1
	ld   de, $ff6d                                   ; $6da1: $11 $6d $ff
	rst  $38                                         ; $6da4: $ff
	ld   de, $ff15                                   ; $6da5: $11 $15 $ff
	rst  $38                                         ; $6da8: $ff
	ld   sp, $1111                                   ; $6da9: $31 $11 $11
	ld   de, $f6ff                                   ; $6dac: $11 $ff $f6
	ld   de, $ff15                                   ; $6daf: $11 $15 $ff
	rst  $38                                         ; $6db2: $ff
	pop  af                                          ; $6db3: $f1
	ld   de, $ffaf                                   ; $6db4: $11 $af $ff
	jp   nc, $1211                                   ; $6db7: $d2 $11 $12

	ld   hl, $ff1b                                   ; $6dba: $21 $1b $ff
	pop  bc                                          ; $6dbd: $c1
	ld   de, $ff6f                                   ; $6dbe: $11 $6f $ff
	rst  $38                                         ; $6dc1: $ff
	ld   de, $ff15                                   ; $6dc2: $11 $15 $ff
	rst  $38                                         ; $6dc5: $ff
	ld   h, c                                        ; $6dc6: $61
	ld   de, $313a                                   ; $6dc7: $11 $3a $31
	rra                                              ; $6dca: $1f
	rst  $38                                         ; $6dcb: $ff
	ld   h, c                                        ; $6dcc: $61
	ld   d, $9f                                      ; $6dcd: $16 $9f
	rst  $38                                         ; $6dcf: $ff
	rst  $38                                         ; $6dd0: $ff
	ld   de, $ff16                                   ; $6dd1: $11 $16 $ff
	rst  $38                                         ; $6dd4: $ff
	add  e                                           ; $6dd5: $83
	ld   de, $c16d                                   ; $6dd6: $11 $6d $c1
	ld   de, $f9ff                                   ; $6dd9: $11 $ff $f9
	ld   de, $bf41                                   ; $6ddc: $11 $41 $bf
	rst  $38                                         ; $6ddf: $ff
	pop  af                                          ; $6de0: $f1
	ld   de, $ff2f                                   ; $6de1: $11 $2f $ff
	ld   sp, hl                                      ; $6de4: $f9
	ld   hl, $ff15                                   ; $6de5: $21 $15 $ff
	pop  af                                          ; $6de8: $f1
	ld   de, $ff1f                                   ; $6de9: $11 $1f $ff
	ld   hl, $1f11                                   ; $6dec: $21 $11 $1f
	rst  $38                                         ; $6def: $ff
	ldh  a, [c]                                      ; $6df0: $f2
	ld   de, $ff1c                                   ; $6df1: $11 $1c $ff
	db   $fc                                         ; $6df4: $fc
	ld   sp, rAUD1ENV                                   ; $6df5: $31 $12 $ff
	push af                                          ; $6df8: $f5
	ld   de, rAUD1LEN                                   ; $6df9: $11 $11 $ff
	db   $f4                                         ; $6dfc: $f4
	ld   de, rAUD1ENV                                   ; $6dfd: $11 $12 $ff
	rst  $38                                         ; $6e00: $ff
	ld   de, $df11                                   ; $6e01: $11 $11 $df
	rst  $38                                         ; $6e04: $ff
	jp   nz, $2f11                                   ; $6e05: $c2 $11 $2f

	rst  $38                                         ; $6e08: $ff
	add  c                                           ; $6e09: $81
	ld   de, $ff1f                                   ; $6e0a: $11 $1f $ff
	pop  de                                          ; $6e0d: $d1
	ld   de, $ff1f                                   ; $6e0e: $11 $1f $ff
	db   $fd                                         ; $6e11: $fd
	ld   de, rAUD1LOW                                   ; $6e12: $11 $13 $ff
	rst  $38                                         ; $6e15: $ff
	ld   b, c                                        ; $6e16: $41
	ld   de, $ff9f                                   ; $6e17: $11 $9f $ff
	ld   h, c                                        ; $6e1a: $61
	ld   de, rAUD1LEN                                   ; $6e1b: $11 $11 $ff
	rst  $38                                         ; $6e1e: $ff
	ld   de, $ff15                                   ; $6e1f: $11 $15 $ff
	rst  $38                                         ; $6e22: $ff
	pop  bc                                          ; $6e23: $c1
	ld   de, $ff3f                                   ; $6e24: $11 $3f $ff
	di                                               ; $6e27: $f3
	ld   de, rAUD1HIGH                                   ; $6e28: $11 $14 $ff
	rst  $38                                         ; $6e2b: $ff
	ld   de, $cf12                                   ; $6e2c: $11 $12 $cf
	db   $f4                                         ; $6e2f: $f4
	add  hl, sp                                      ; $6e30: $39
	ld   h, d                                        ; $6e31: $62
	rla                                              ; $6e32: $17
	rst  $38                                         ; $6e33: $ff
	or   l                                           ; $6e34: $b5
	scf                                              ; $6e35: $37
	add  a                                           ; $6e36: $87
	adc  d                                           ; $6e37: $8a
	cp   h                                           ; $6e38: $bc
	halt                                             ; $6e39: $76
	ld   h, a                                        ; $6e3a: $67
	cp   h                                           ; $6e3b: $bc
	cp   c                                           ; $6e3c: $b9
	xor  d                                           ; $6e3d: $aa
	add  l                                           ; $6e3e: $85
	ld   de, rAUD1LEN                                   ; $6e3f: $11 $11 $ff
	ld   a, [$1611]                                  ; $6e42: $fa $11 $16
	rst  $38                                         ; $6e45: $ff
	rst  $38                                         ; $6e46: $ff
	add  c                                           ; $6e47: $81
	ld   de, $ff8f                                   ; $6e48: $11 $8f $ff
	and  d                                           ; $6e4b: $a2
	ld   de, $ff2c                                   ; $6e4c: $11 $2c $ff
	rst  $30                                         ; $6e4f: $f7
	ld   de, $ef17                                   ; $6e50: $11 $17 $ef
	cp   b                                           ; $6e53: $b8
	cp   e                                           ; $6e54: $bb
	ld   [hl], e                                     ; $6e55: $73
	rla                                              ; $6e56: $17
	xor  h                                           ; $6e57: $ac
	sub  h                                           ; $6e58: $94
	ld   b, l                                        ; $6e59: $45
	ld   d, l                                        ; $6e5a: $55
	ld   b, [hl]                                     ; $6e5b: $46
	rst  $28                                         ; $6e5c: $ef
	call nz, $8a12                                   ; $6e5d: $c4 $12 $8a
	call c, $73bc                                    ; $6e60: $dc $bc $73
	dec  h                                           ; $6e63: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e64: $cf

jr_0a5_6e65:
	reti                                             ; $6e65: $d9


	ld   h, [hl]                                     ; $6e66: $66
	ld   h, [hl]                                     ; $6e67: $66
	sbc  b                                           ; $6e68: $98
	call Call_0a5_41b8                               ; $6e69: $cd $b8 $41
	ld   de, $fdbf                                   ; $6e6c: $11 $bf $fd
	ld   de, $fb28                                   ; $6e6f: $11 $28 $fb
	res  6, h                                        ; $6e72: $cb $b4
	ld   de, $ec6d                                   ; $6e74: $11 $6d $ec
	halt                                             ; $6e77: $76
	ld   h, a                                        ; $6e78: $67
	ld   l, c                                        ; $6e79: $69
	xor  h                                           ; $6e7a: $ac
	ret  c                                           ; $6e7b: $d8

	ld   d, h                                        ; $6e7c: $54
	ld   l, b                                        ; $6e7d: $68
	xor  c                                           ; $6e7e: $a9
	xor  b                                           ; $6e7f: $a8
	ld   [hl], a                                     ; $6e80: $77
	ld   e, c                                        ; $6e81: $59
	xor  e                                           ; $6e82: $ab
	and  a                                           ; $6e83: $a7
	ld   [hl], a                                     ; $6e84: $77
	ld   a, b                                        ; $6e85: $78
	sbc  d                                           ; $6e86: $9a
	xor  d                                           ; $6e87: $aa
	ld   [hl], h                                     ; $6e88: $74
	inc  [hl]                                        ; $6e89: $34
	ld   d, [hl]                                     ; $6e8a: $56
	sbc  a                                           ; $6e8b: $9f
	db   $fc                                         ; $6e8c: $fc
	ld   sp, $cf26                                   ; $6e8d: $31 $26 $cf
	call c, $1183                                    ; $6e90: $dc $83 $11
	ld   l, e                                        ; $6e93: $6b
	xor  $b8                                         ; $6e94: $ee $b8
	sub  a                                           ; $6e96: $97
	ld   b, h                                        ; $6e97: $44
	ld   a, d                                        ; $6e98: $7a
	db   $ec                                         ; $6e99: $ec
	add  h                                           ; $6e9a: $84
	ld   b, [hl]                                     ; $6e9b: $46
	ld   b, c                                        ; $6e9c: $41
	ld   c, [hl]                                     ; $6e9d: $4e
	rst  $38                                         ; $6e9e: $ff
	and  c                                           ; $6e9f: $a1
	ld   hl, $df9b                                   ; $6ea0: $21 $9b $df
	ret                                              ; $6ea3: $c9


	ld   b, c                                        ; $6ea4: $41
	jr   z, jr_0a5_6e65                              ; $6ea5: $28 $be

	reti                                             ; $6ea7: $d9


	add  l                                           ; $6ea8: $85
	ld   b, [hl]                                     ; $6ea9: $46
	adc  d                                           ; $6eaa: $8a
	jp   c, Jump_0a5_4684                            ; $6eab: $da $84 $46

	sbc  e                                           ; $6eae: $9b
	xor  c                                           ; $6eaf: $a9
	add  a                                           ; $6eb0: $87
	ld   h, [hl]                                     ; $6eb1: $66
	ld   a, d                                        ; $6eb2: $7a
	cp   e                                           ; $6eb3: $bb
	sub  [hl]                                        ; $6eb4: $96
	ld   d, l                                        ; $6eb5: $55
	ld   l, c                                        ; $6eb6: $69
	xor  e                                           ; $6eb7: $ab
	xor  b                                           ; $6eb8: $a8
	ld   h, [hl]                                     ; $6eb9: $66
	ld   h, a                                        ; $6eba: $67
	sbc  d                                           ; $6ebb: $9a
	xor  e                                           ; $6ebc: $ab
	sub  [hl]                                        ; $6ebd: $96
	ld   d, l                                        ; $6ebe: $55
	ld   a, c                                        ; $6ebf: $79
	sbc  c                                           ; $6ec0: $99
	add  a                                           ; $6ec1: $87
	halt                                             ; $6ec2: $76
	ld   h, a                                        ; $6ec3: $67
	sbc  d                                           ; $6ec4: $9a
	xor  b                                           ; $6ec5: $a8
	ld   [hl], a                                     ; $6ec6: $77
	ld   a, b                                        ; $6ec7: $78
	adc  b                                           ; $6ec8: $88
	xor  b                                           ; $6ec9: $a8
	halt                                             ; $6eca: $76
	ld   h, a                                        ; $6ecb: $67
	adc  b                                           ; $6ecc: $88
	add  a                                           ; $6ecd: $87
	ld   a, c                                        ; $6ece: $79
	xor  c                                           ; $6ecf: $a9
	halt                                             ; $6ed0: $76
	ld   a, b                                        ; $6ed1: $78
	sbc  c                                           ; $6ed2: $99
	sbc  c                                           ; $6ed3: $99
	add  a                                           ; $6ed4: $87
	halt                                             ; $6ed5: $76
	ld   a, c                                        ; $6ed6: $79
	xor  b                                           ; $6ed7: $a8
	adc  d                                           ; $6ed8: $8a
	ld   a, b                                        ; $6ed9: $78
	ld   h, l                                        ; $6eda: $65
	cp   b                                           ; $6edb: $b8
	xor  c                                           ; $6edc: $a9
	ld   a, b                                        ; $6edd: $78
	ld   a, b                                        ; $6ede: $78
	ld   [hl], a                                     ; $6edf: $77
	sbc  d                                           ; $6ee0: $9a
	sbc  b                                           ; $6ee1: $98
	halt                                             ; $6ee2: $76
	ld   [hl], a                                     ; $6ee3: $77
	ld   a, d                                        ; $6ee4: $7a
	cp   b                                           ; $6ee5: $b8
	sub  h                                           ; $6ee6: $94
	ld   e, b                                        ; $6ee7: $58
	ld   a, d                                        ; $6ee8: $7a
	adc  c                                           ; $6ee9: $89
	sub  a                                           ; $6eea: $97
	halt                                             ; $6eeb: $76
	adc  c                                           ; $6eec: $89
	sbc  b                                           ; $6eed: $98
	adc  b                                           ; $6eee: $88
	adc  b                                           ; $6eef: $88
	ld   [hl], a                                     ; $6ef0: $77
	add  a                                           ; $6ef1: $87
	adc  e                                           ; $6ef2: $8b
	ld   a, c                                        ; $6ef3: $79
	ld   [hl], l                                     ; $6ef4: $75
	sub  a                                           ; $6ef5: $97
	adc  d                                           ; $6ef6: $8a
	ld   a, d                                        ; $6ef7: $7a
	ld   [hl], a                                     ; $6ef8: $77
	ld   [hl], a                                     ; $6ef9: $77
	sbc  c                                           ; $6efa: $99
	sbc  c                                           ; $6efb: $99
	ld   [hl], a                                     ; $6efc: $77
	ld   [hl], a                                     ; $6efd: $77
	sbc  b                                           ; $6efe: $98
	sbc  b                                           ; $6eff: $98
	sbc  b                                           ; $6f00: $98
	halt                                             ; $6f01: $76
	ld   a, b                                        ; $6f02: $78
	sbc  d                                           ; $6f03: $9a
	adc  b                                           ; $6f04: $88
	ld   [hl], a                                     ; $6f05: $77
	ld   h, a                                        ; $6f06: $67
	sbc  d                                           ; $6f07: $9a
	sbc  c                                           ; $6f08: $99
	ld   h, a                                        ; $6f09: $67
	add  [hl]                                        ; $6f0a: $86
	sbc  c                                           ; $6f0b: $99
	sbc  c                                           ; $6f0c: $99
	ld   [hl], a                                     ; $6f0d: $77
	ld   h, a                                        ; $6f0e: $67
	adc  c                                           ; $6f0f: $89
	xor  c                                           ; $6f10: $a9
	add  a                                           ; $6f11: $87
	ld   [hl], a                                     ; $6f12: $77
	ld   a, b                                        ; $6f13: $78
	adc  c                                           ; $6f14: $89
	sub  a                                           ; $6f15: $97
	ld   [hl], a                                     ; $6f16: $77
	ld   a, b                                        ; $6f17: $78
	adc  b                                           ; $6f18: $88
	sbc  b                                           ; $6f19: $98
	add  a                                           ; $6f1a: $87
	ld   [hl], a                                     ; $6f1b: $77
	adc  b                                           ; $6f1c: $88
	adc  c                                           ; $6f1d: $89
	add  a                                           ; $6f1e: $87
	add  a                                           ; $6f1f: $87
	adc  b                                           ; $6f20: $88
	adc  c                                           ; $6f21: $89
	sbc  b                                           ; $6f22: $98
	ld   [hl], a                                     ; $6f23: $77
	adc  c                                           ; $6f24: $89
	adc  b                                           ; $6f25: $88
	adc  b                                           ; $6f26: $88
	adc  b                                           ; $6f27: $88
	ld   a, b                                        ; $6f28: $78
	adc  c                                           ; $6f29: $89
	sbc  b                                           ; $6f2a: $98
	adc  b                                           ; $6f2b: $88
	adc  b                                           ; $6f2c: $88
	sbc  b                                           ; $6f2d: $98
	adc  b                                           ; $6f2e: $88
	adc  b                                           ; $6f2f: $88
	adc  b                                           ; $6f30: $88
	adc  c                                           ; $6f31: $89
	adc  b                                           ; $6f32: $88
	ld   [hl], a                                     ; $6f33: $77
	adc  c                                           ; $6f34: $89
	sbc  b                                           ; $6f35: $98
	adc  b                                           ; $6f36: $88
	adc  b                                           ; $6f37: $88
	adc  b                                           ; $6f38: $88
	adc  b                                           ; $6f39: $88
	adc  b                                           ; $6f3a: $88
	adc  b                                           ; $6f3b: $88
	adc  b                                           ; $6f3c: $88
	adc  b                                           ; $6f3d: $88
	adc  b                                           ; $6f3e: $88
	adc  b                                           ; $6f3f: $88
	adc  b                                           ; $6f40: $88
	adc  b                                           ; $6f41: $88
	adc  b                                           ; $6f42: $88
	adc  b                                           ; $6f43: $88
	adc  b                                           ; $6f44: $88
	adc  b                                           ; $6f45: $88
	adc  b                                           ; $6f46: $88
	adc  b                                           ; $6f47: $88
	adc  b                                           ; $6f48: $88
	adc  b                                           ; $6f49: $88
	adc  c                                           ; $6f4a: $89
	add  a                                           ; $6f4b: $87
	add  a                                           ; $6f4c: $87
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	ld   a, b                                        ; $6f4f: $78
	adc  b                                           ; $6f50: $88
	adc  b                                           ; $6f51: $88
	sbc  c                                           ; $6f52: $99
	add  a                                           ; $6f53: $87
	ld   a, b                                        ; $6f54: $78
	sbc  c                                           ; $6f55: $99
	sbc  b                                           ; $6f56: $98
	adc  b                                           ; $6f57: $88
	adc  b                                           ; $6f58: $88
	ld   a, b                                        ; $6f59: $78
	sbc  c                                           ; $6f5a: $99
	adc  b                                           ; $6f5b: $88
	adc  b                                           ; $6f5c: $88
	adc  b                                           ; $6f5d: $88
	adc  b                                           ; $6f5e: $88
	sbc  b                                           ; $6f5f: $98
	adc  b                                           ; $6f60: $88
	adc  b                                           ; $6f61: $88
	adc  b                                           ; $6f62: $88
	adc  b                                           ; $6f63: $88
	adc  b                                           ; $6f64: $88
	adc  b                                           ; $6f65: $88
	adc  b                                           ; $6f66: $88
	adc  b                                           ; $6f67: $88
	adc  b                                           ; $6f68: $88
	adc  b                                           ; $6f69: $88
	adc  b                                           ; $6f6a: $88
	adc  b                                           ; $6f6b: $88
	adc  b                                           ; $6f6c: $88
	adc  b                                           ; $6f6d: $88
	adc  b                                           ; $6f6e: $88
	adc  b                                           ; $6f6f: $88
	adc  b                                           ; $6f70: $88
	adc  b                                           ; $6f71: $88
	sbc  b                                           ; $6f72: $98
	adc  b                                           ; $6f73: $88
	adc  b                                           ; $6f74: $88
	adc  b                                           ; $6f75: $88
	adc  b                                           ; $6f76: $88
	sbc  b                                           ; $6f77: $98
	adc  b                                           ; $6f78: $88
	adc  b                                           ; $6f79: $88
	adc  b                                           ; $6f7a: $88
	adc  b                                           ; $6f7b: $88
	adc  b                                           ; $6f7c: $88
	adc  b                                           ; $6f7d: $88
	adc  b                                           ; $6f7e: $88
	adc  b                                           ; $6f7f: $88
	adc  b                                           ; $6f80: $88
	adc  b                                           ; $6f81: $88
	adc  b                                           ; $6f82: $88
	adc  b                                           ; $6f83: $88
	adc  b                                           ; $6f84: $88
	adc  b                                           ; $6f85: $88
	adc  b                                           ; $6f86: $88
	adc  b                                           ; $6f87: $88
	adc  b                                           ; $6f88: $88
	adc  b                                           ; $6f89: $88
	adc  b                                           ; $6f8a: $88
	adc  b                                           ; $6f8b: $88
	adc  b                                           ; $6f8c: $88
	adc  b                                           ; $6f8d: $88
	adc  b                                           ; $6f8e: $88
	adc  b                                           ; $6f8f: $88
	adc  b                                           ; $6f90: $88
	adc  b                                           ; $6f91: $88
	adc  b                                           ; $6f92: $88
	adc  b                                           ; $6f93: $88
	adc  b                                           ; $6f94: $88
	adc  b                                           ; $6f95: $88
	adc  b                                           ; $6f96: $88
	adc  b                                           ; $6f97: $88
	adc  b                                           ; $6f98: $88
	adc  b                                           ; $6f99: $88
	adc  b                                           ; $6f9a: $88
	adc  b                                           ; $6f9b: $88
	adc  b                                           ; $6f9c: $88
	adc  c                                           ; $6f9d: $89
	sbc  b                                           ; $6f9e: $98
	adc  b                                           ; $6f9f: $88
	adc  b                                           ; $6fa0: $88
	adc  b                                           ; $6fa1: $88
	adc  b                                           ; $6fa2: $88
	adc  b                                           ; $6fa3: $88
	adc  b                                           ; $6fa4: $88
	adc  b                                           ; $6fa5: $88
	adc  b                                           ; $6fa6: $88
	adc  b                                           ; $6fa7: $88
	adc  b                                           ; $6fa8: $88
	adc  b                                           ; $6fa9: $88
	adc  b                                           ; $6faa: $88
	adc  b                                           ; $6fab: $88
	adc  b                                           ; $6fac: $88
	adc  b                                           ; $6fad: $88
	adc  b                                           ; $6fae: $88
	adc  b                                           ; $6faf: $88
	adc  b                                           ; $6fb0: $88
	adc  b                                           ; $6fb1: $88
	adc  b                                           ; $6fb2: $88
	adc  b                                           ; $6fb3: $88
	adc  b                                           ; $6fb4: $88
	adc  b                                           ; $6fb5: $88
	adc  b                                           ; $6fb6: $88
	adc  b                                           ; $6fb7: $88
	adc  b                                           ; $6fb8: $88
	adc  b                                           ; $6fb9: $88
	adc  b                                           ; $6fba: $88
	adc  b                                           ; $6fbb: $88
	adc  b                                           ; $6fbc: $88
	adc  b                                           ; $6fbd: $88
	adc  b                                           ; $6fbe: $88
	adc  b                                           ; $6fbf: $88
	adc  b                                           ; $6fc0: $88
	adc  b                                           ; $6fc1: $88
	adc  b                                           ; $6fc2: $88
	adc  b                                           ; $6fc3: $88
	adc  b                                           ; $6fc4: $88
	adc  b                                           ; $6fc5: $88
	adc  b                                           ; $6fc6: $88
	adc  b                                           ; $6fc7: $88
	adc  b                                           ; $6fc8: $88
	adc  b                                           ; $6fc9: $88
	adc  b                                           ; $6fca: $88
	adc  b                                           ; $6fcb: $88
	adc  b                                           ; $6fcc: $88
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	adc  b                                           ; $6fcf: $88
	adc  b                                           ; $6fd0: $88
	adc  b                                           ; $6fd1: $88
	adc  b                                           ; $6fd2: $88
	adc  b                                           ; $6fd3: $88
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	adc  b                                           ; $6fd6: $88
	adc  b                                           ; $6fd7: $88
	adc  b                                           ; $6fd8: $88
	adc  b                                           ; $6fd9: $88
	adc  b                                           ; $6fda: $88
	adc  b                                           ; $6fdb: $88
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	adc  b                                           ; $6fde: $88
	adc  b                                           ; $6fdf: $88
	adc  b                                           ; $6fe0: $88
	adc  b                                           ; $6fe1: $88
	adc  b                                           ; $6fe2: $88
	adc  b                                           ; $6fe3: $88
	adc  b                                           ; $6fe4: $88
	adc  b                                           ; $6fe5: $88
	adc  b                                           ; $6fe6: $88
	adc  b                                           ; $6fe7: $88
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	adc  b                                           ; $6fec: $88
	adc  b                                           ; $6fed: $88
	adc  b                                           ; $6fee: $88
	adc  b                                           ; $6fef: $88
	adc  b                                           ; $6ff0: $88
	adc  b                                           ; $6ff1: $88
	adc  b                                           ; $6ff2: $88
	adc  b                                           ; $6ff3: $88
	adc  b                                           ; $6ff4: $88
	adc  b                                           ; $6ff5: $88
	adc  b                                           ; $6ff6: $88
	adc  b                                           ; $6ff7: $88
	adc  b                                           ; $6ff8: $88
	adc  b                                           ; $6ff9: $88
	adc  b                                           ; $6ffa: $88
	adc  b                                           ; $6ffb: $88
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	adc  b                                           ; $7000: $88
	adc  b                                           ; $7001: $88
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	adc  b                                           ; $7004: $88
	adc  b                                           ; $7005: $88
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	adc  b                                           ; $7008: $88
	adc  b                                           ; $7009: $88
	adc  b                                           ; $700a: $88
	adc  b                                           ; $700b: $88
	adc  b                                           ; $700c: $88
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	adc  b                                           ; $7010: $88
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	adc  b                                           ; $7015: $88
	adc  b                                           ; $7016: $88
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	adc  b                                           ; $7028: $88
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	adc  b                                           ; $702b: $88
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	adc  b                                           ; $702e: $88
	adc  b                                           ; $702f: $88
	adc  b                                           ; $7030: $88
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  b                                           ; $7033: $88
	adc  b                                           ; $7034: $88
	adc  b                                           ; $7035: $88
	adc  b                                           ; $7036: $88
	adc  b                                           ; $7037: $88
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	adc  b                                           ; $703b: $88
	adc  b                                           ; $703c: $88
	adc  b                                           ; $703d: $88
	adc  b                                           ; $703e: $88
	adc  b                                           ; $703f: $88
	adc  b                                           ; $7040: $88
	adc  b                                           ; $7041: $88
	adc  b                                           ; $7042: $88
	adc  b                                           ; $7043: $88
	adc  b                                           ; $7044: $88
	adc  b                                           ; $7045: $88
	adc  b                                           ; $7046: $88
	adc  b                                           ; $7047: $88
	adc  b                                           ; $7048: $88
	adc  b                                           ; $7049: $88
	adc  b                                           ; $704a: $88
	adc  b                                           ; $704b: $88
	adc  b                                           ; $704c: $88
	adc  b                                           ; $704d: $88
	adc  b                                           ; $704e: $88
	adc  b                                           ; $704f: $88
	adc  b                                           ; $7050: $88
	adc  b                                           ; $7051: $88
	adc  b                                           ; $7052: $88
	adc  b                                           ; $7053: $88
	adc  b                                           ; $7054: $88
	adc  b                                           ; $7055: $88
	adc  b                                           ; $7056: $88
	adc  b                                           ; $7057: $88
	adc  b                                           ; $7058: $88
	adc  b                                           ; $7059: $88
	adc  b                                           ; $705a: $88
	adc  b                                           ; $705b: $88
	adc  b                                           ; $705c: $88
	adc  b                                           ; $705d: $88
	adc  b                                           ; $705e: $88
	adc  b                                           ; $705f: $88
	adc  b                                           ; $7060: $88
	adc  b                                           ; $7061: $88
	adc  b                                           ; $7062: $88
	adc  b                                           ; $7063: $88
	adc  b                                           ; $7064: $88
	adc  b                                           ; $7065: $88
	adc  b                                           ; $7066: $88
	adc  b                                           ; $7067: $88
	adc  b                                           ; $7068: $88
	adc  b                                           ; $7069: $88
	adc  b                                           ; $706a: $88
	adc  b                                           ; $706b: $88
	adc  b                                           ; $706c: $88
	adc  b                                           ; $706d: $88
	adc  b                                           ; $706e: $88
	adc  b                                           ; $706f: $88
	adc  b                                           ; $7070: $88
	adc  b                                           ; $7071: $88
	adc  b                                           ; $7072: $88
	adc  b                                           ; $7073: $88
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	adc  b                                           ; $7076: $88
	adc  b                                           ; $7077: $88
	adc  b                                           ; $7078: $88
	adc  b                                           ; $7079: $88
	adc  b                                           ; $707a: $88
	adc  b                                           ; $707b: $88
	adc  b                                           ; $707c: $88
	adc  b                                           ; $707d: $88
	adc  b                                           ; $707e: $88
	adc  b                                           ; $707f: $88
	adc  b                                           ; $7080: $88
	adc  b                                           ; $7081: $88
	adc  b                                           ; $7082: $88
	adc  c                                           ; $7083: $89
	and  a                                           ; $7084: $a7
	halt                                             ; $7085: $76
	adc  b                                           ; $7086: $88
	adc  d                                           ; $7087: $8a
	adc  b                                           ; $7088: $88
	ld   [hl], a                                     ; $7089: $77
	ld   a, b                                        ; $708a: $78
	adc  c                                           ; $708b: $89
	sbc  c                                           ; $708c: $99
	add  a                                           ; $708d: $87
	ld   a, b                                        ; $708e: $78
	sbc  b                                           ; $708f: $98
	sbc  b                                           ; $7090: $98
	ld   [hl], a                                     ; $7091: $77
	ld   a, b                                        ; $7092: $78
	adc  b                                           ; $7093: $88
	adc  c                                           ; $7094: $89
	adc  b                                           ; $7095: $88
	add  a                                           ; $7096: $87
	ld   a, b                                        ; $7097: $78
	adc  b                                           ; $7098: $88
	ld   [hl], a                                     ; $7099: $77
	ld   l, b                                        ; $709a: $68
	jp   c, $3977                                    ; $709b: $da $77 $39

	xor  d                                           ; $709e: $aa
	rst  ToBoot                                         ; $709f: $c7
	sub  a                                           ; $70a0: $97
	ld   d, [hl]                                     ; $70a1: $56
	ld   a, c                                        ; $70a2: $79
	cp   c                                           ; $70a3: $b9
	halt                                             ; $70a4: $76
	ld   l, c                                        ; $70a5: $69
	sbc  c                                           ; $70a6: $99
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	ld   [hl], a                                     ; $70a9: $77
	ld   a, b                                        ; $70aa: $78
	sbc  b                                           ; $70ab: $98
	adc  b                                           ; $70ac: $88
	adc  c                                           ; $70ad: $89
	add  a                                           ; $70ae: $87
	ld   a, b                                        ; $70af: $78
	adc  b                                           ; $70b0: $88
	adc  b                                           ; $70b1: $88
	ld   a, b                                        ; $70b2: $78
	sbc  c                                           ; $70b3: $99
	sbc  b                                           ; $70b4: $98
	sbc  c                                           ; $70b5: $99
	xor  c                                           ; $70b6: $a9
	ld   [hl], l                                     ; $70b7: $75
	ld   e, c                                        ; $70b8: $59
	xor  d                                           ; $70b9: $aa
	sub  [hl]                                        ; $70ba: $96
	ld   d, h                                        ; $70bb: $54
	ld   d, a                                        ; $70bc: $57
	ld   [hl], l                                     ; $70bd: $75
	ld   b, h                                        ; $70be: $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70bf: $cf
	rst  $20                                         ; $70c0: $e7
	ld   de, $fe5b                                   ; $70c1: $11 $5b $fe
	xor  b                                           ; $70c4: $a8
	ld   b, c                                        ; $70c5: $41
	ld   [hl], $cf                                   ; $70c6: $36 $cf
	reti                                             ; $70c8: $d9


	inc  sp                                          ; $70c9: $33
	ld   a, c                                        ; $70ca: $79
	cp   d                                           ; $70cb: $ba
	xor  c                                           ; $70cc: $a9
	ld   h, l                                        ; $70cd: $65
	ld   a, d                                        ; $70ce: $7a
	cp   e                                           ; $70cf: $bb
	sbc  c                                           ; $70d0: $99
	add  a                                           ; $70d1: $87
	adc  c                                           ; $70d2: $89
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	ld   [hl], a                                     ; $70d5: $77
	ld   h, [hl]                                     ; $70d6: $66
	ld   h, a                                        ; $70d7: $67
	ld   [hl], a                                     ; $70d8: $77
	ld   h, l                                        ; $70d9: $65
	ld   [de], a                                     ; $70da: $12
	adc  a                                           ; $70db: $8f
	db   $fd                                         ; $70dc: $fd
	ld   b, c                                        ; $70dd: $41
	dec  d                                           ; $70de: $15
	cp   [hl]                                        ; $70df: $be
	db   $fc                                         ; $70e0: $fc
	ld   [hl], e                                     ; $70e1: $73
	ld   [de], a                                     ; $70e2: $12
	ld   a, l                                        ; $70e3: $7d
	db   $fd                                         ; $70e4: $fd
	add  l                                           ; $70e5: $85
	dec  [hl]                                        ; $70e6: $35
	adc  d                                           ; $70e7: $8a
	call z, Call_0a5_66a7                            ; $70e8: $cc $a7 $66
	adc  d                                           ; $70eb: $8a
	res  0, a                                        ; $70ec: $cb $87
	ld   [hl], a                                     ; $70ee: $77
	adc  d                                           ; $70ef: $8a
	xor  c                                           ; $70f0: $a9
	ld   h, l                                        ; $70f1: $65
	ld   b, l                                        ; $70f2: $45
	ld   h, a                                        ; $70f3: $67
	add  [hl]                                        ; $70f4: $86
	ld   de, $ff1f                                   ; $70f5: $11 $1f $ff
	ld   de, $ff18                                   ; $70f8: $11 $18 $ff
	db   $fc                                         ; $70fb: $fc
	and  c                                           ; $70fc: $a1
	ld   de, $ff5f                                   ; $70fd: $11 $5f $ff
	add  c                                           ; $7100: $81
	inc  d                                           ; $7101: $14
	adc  e                                           ; $7102: $8b
	rst  $28                                         ; $7103: $ef
	ret  c                                           ; $7104: $d8

	ld   [de], a                                     ; $7105: $12
	ld   l, a                                        ; $7106: $6f
	db   $fd                                         ; $7107: $fd
	add  l                                           ; $7108: $85
	ld   d, a                                        ; $7109: $57
	adc  c                                           ; $710a: $89
	xor  e                                           ; $710b: $ab
	add  h                                           ; $710c: $84
	inc  hl                                          ; $710d: $23
	ld   l, c                                        ; $710e: $69
	sub  l                                           ; $710f: $95
	ld   de, $ff17                                   ; $7110: $11 $17 $ff
	or   c                                           ; $7113: $b1
	ld   de, $ffbf                                   ; $7114: $11 $bf $ff
	and  $11                                         ; $7117: $e6 $11
	add  hl, de                                      ; $7119: $19
	rst  $38                                         ; $711a: $ff
	pop  af                                          ; $711b: $f1
	ld   de, $ff8e                                   ; $711c: $11 $8e $ff
	jp   z, Jump_0a5_5b31                            ; $711f: $ca $31 $5b

	rst  $38                                         ; $7122: $ff
	or   a                                           ; $7123: $b7
	ld   d, l                                        ; $7124: $55
	adc  c                                           ; $7125: $89
	cp   d                                           ; $7126: $ba
	ld   [hl], l                                     ; $7127: $75
	ld   [hl+], a                                    ; $7128: $22
	ld   b, a                                        ; $7129: $47
	halt                                             ; $712a: $76
	ld   hl, $ff1f                                   ; $712b: $21 $1f $ff
	sub  c                                           ; $712e: $91
	ld   d, $bf                                      ; $712f: $16 $bf
	db   $fd                                         ; $7131: $fd
	jp   nc, $1f11                                   ; $7132: $d2 $11 $1f

	rst  $38                                         ; $7135: $ff
	ldh  [c], a                                      ; $7136: $e2
	ld   [de], a                                     ; $7137: $12
	ld   l, b                                        ; $7138: $68
	rst  $38                                         ; $7139: $ff
	db   $ec                                         ; $713a: $ec
	ld   b, d                                        ; $713b: $42
	add  hl, sp                                      ; $713c: $39
	rst  $38                                         ; $713d: $ff
	jp   c, Jump_0a5_5685                            ; $713e: $da $85 $56

	adc  c                                           ; $7141: $89
	sub  [hl]                                        ; $7142: $96
	ld   [hl-], a                                    ; $7143: $32
	ld   [hl+], a                                    ; $7144: $22
	ld   [hl-], a                                    ; $7145: $32
	ld   de, $c1ff                                   ; $7146: $11 $ff $c1
	ld   de, $ffef                                   ; $7149: $11 $ef $ff
	cp   b                                           ; $714c: $b8
	ld   de, $ff17                                   ; $714d: $11 $17 $ff
	ld   sp, hl                                      ; $7150: $f9
	ld   de, $bf57                                   ; $7151: $11 $57 $bf
	cp   $92                                         ; $7154: $fe $92
	inc  d                                           ; $7156: $14
	cp   a                                           ; $7157: $bf
	db   $fc                                         ; $7158: $fc
	or   [hl]                                        ; $7159: $b6
	ld   d, [hl]                                     ; $715a: $56
	ld   a, c                                        ; $715b: $79
	sub  [hl]                                        ; $715c: $96
	ld   b, e                                        ; $715d: $43
	ld   [de], a                                     ; $715e: $12
	ld   de, rAUD1LEN                                   ; $715f: $11 $11 $ff
	or   c                                           ; $7162: $b1
	ld   de, $ffff                                   ; $7163: $11 $ff $ff
	jp   hl                                          ; $7166: $e9


	ld   de, $ff19                                   ; $7167: $11 $19 $ff
	ld   a, [$5711]                                  ; $716a: $fa $11 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $716d: $cf
	rst  $38                                         ; $716e: $ff
	or   c                                           ; $716f: $b1
	inc  de                                          ; $7170: $13
	rst  $28                                         ; $7171: $ef
	db   $fc                                         ; $7172: $fc
	and  [hl]                                        ; $7173: $a6
	ld   b, h                                        ; $7174: $44
	ld   e, c                                        ; $7175: $59
	sub  a                                           ; $7176: $97
	ld   hl, $4112                                   ; $7177: $21 $12 $41
	ld   [de], a                                     ; $717a: $12
	rst  $38                                         ; $717b: $ff
	ld   [hl], c                                     ; $717c: $71
	inc  de                                          ; $717d: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $717e: $cf
	ei                                               ; $717f: $fb
	and  $11                                         ; $7180: $e6 $11
	inc  e                                           ; $7182: $1c
	rst  $38                                         ; $7183: $ff
	rst  $20                                         ; $7184: $e7
	inc  d                                           ; $7185: $14
	halt                                             ; $7186: $76
	cp   a                                           ; $7187: $bf
	rst  $38                                         ; $7188: $ff
	ld   h, c                                        ; $7189: $61
	ld   [hl], $fe                                   ; $718a: $36 $fe
	db   $eb                                         ; $718c: $eb
	and  a                                           ; $718d: $a7
	ld   d, e                                        ; $718e: $53
	ld   e, c                                        ; $718f: $59
	ld   [hl], l                                     ; $7190: $75
	ld   de, $1134                                   ; $7191: $11 $34 $11
	dec  e                                           ; $7194: $1d
	rst  $38                                         ; $7195: $ff
	ld   d, c                                        ; $7196: $51
	dec  d                                           ; $7197: $15
	rst  JumpTable                                         ; $7198: $df
	cp   $f2                                         ; $7199: $fe $f2
	ld   de, $ff1f                                   ; $719b: $11 $1f $ff
	or   d                                           ; $719e: $b2
	dec  d                                           ; $719f: $15
	adc  b                                           ; $71a0: $88
	rst  $28                                         ; $71a1: $ef
	ei                                               ; $71a2: $fb
	ld   de, $fe6e                                   ; $71a3: $11 $6e $fe
	sbc  b                                           ; $71a6: $98
	add  [hl]                                        ; $71a7: $86
	ld   d, h                                        ; $71a8: $54
	ld   h, a                                        ; $71a9: $67
	ld   b, c                                        ; $71aa: $41
	ld   de, $1142                                   ; $71ab: $11 $42 $11
	rst  $38                                         ; $71ae: $ff
	di                                               ; $71af: $f3
	ld   de, $ff7f                                   ; $71b0: $11 $7f $ff
	db   $fc                                         ; $71b3: $fc
	ld   de, $ff17                                   ; $71b4: $11 $17 $ff
	db   $fc                                         ; $71b7: $fc
	ld   [de], a                                     ; $71b8: $12
	ld   [hl], a                                     ; $71b9: $77
	adc  [hl]                                        ; $71ba: $8e
	db   $fd                                         ; $71bb: $fd
	and  d                                           ; $71bc: $a2
	scf                                              ; $71bd: $37
	rst  JumpTable                                         ; $71be: $df
	cp   c                                           ; $71bf: $b9
	sub  [hl]                                        ; $71c0: $96
	ld   h, h                                        ; $71c1: $64
	ld   d, [hl]                                     ; $71c2: $56
	ld   h, [hl]                                     ; $71c3: $66
	ld   sp, $1111                                   ; $71c4: $31 $11 $11
	rra                                              ; $71c7: $1f
	rst  $38                                         ; $71c8: $ff
	ld   b, c                                        ; $71c9: $41
	inc  de                                          ; $71ca: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71cb: $cf
	rst  $38                                         ; $71cc: $ff
	pop  af                                          ; $71cd: $f1
	ld   de, $ff3f                                   ; $71ce: $11 $3f $ff
	push hl                                          ; $71d1: $e5
	ld   [hl], $56                                   ; $71d2: $36 $56
	sbc  $fc                                         ; $71d4: $de $fc
	inc  sp                                          ; $71d6: $33
	ld   e, e                                        ; $71d7: $5b
	db   $fd                                         ; $71d8: $fd
	jp   z, $3365                                    ; $71d9: $ca $65 $33

	ld   d, l                                        ; $71dc: $55
	ld   h, h                                        ; $71dd: $64
	ld   hl, $1f11                                   ; $71de: $21 $11 $1f
	rst  $38                                         ; $71e1: $ff
	add  c                                           ; $71e2: $81
	ld   de, $ff6f                                   ; $71e3: $11 $6f $ff
	ldh  a, [c]                                      ; $71e6: $f2
	ld   de, $ff1f                                   ; $71e7: $11 $1f $ff
	ld   sp, hl                                      ; $71ea: $f9
	ld   b, h                                        ; $71eb: $44
	ld   [hl], $dd                                   ; $71ec: $36 $dd
	db   $ed                                         ; $71ee: $ed
	sub  l                                           ; $71ef: $95
	ld   c, b                                        ; $71f0: $48
	call $74bc                                       ; $71f1: $cd $bc $74
	ld   [hl-], a                                    ; $71f4: $32
	inc  [hl]                                        ; $71f5: $34
	ld   d, h                                        ; $71f6: $54
	ld   d, c                                        ; $71f7: $51
	ld   de, $ff1f                                   ; $71f8: $11 $1f $ff
	ld   de, $af11                                   ; $71fb: $11 $11 $af
	rst  $38                                         ; $71fe: $ff
	pop  af                                          ; $71ff: $f1
	ld   de, $ff4f                                   ; $7200: $11 $4f $ff
	ld   sp, hl                                      ; $7203: $f9
	ld   b, l                                        ; $7204: $45
	ld   b, [hl]                                     ; $7205: $46
	cp   [hl]                                        ; $7206: $be
	db   $fd                                         ; $7207: $fd
	add  l                                           ; $7208: $85
	ld   l, c                                        ; $7209: $69
	cp   e                                           ; $720a: $bb
	cp   d                                           ; $720b: $ba
	ld   [hl], e                                     ; $720c: $73
	ld   [de], a                                     ; $720d: $12
	ld   b, [hl]                                     ; $720e: $46
	ld   d, c                                        ; $720f: $51
	ld   de, rAUD1LEN                                   ; $7210: $11 $11 $ff
	rst  $30                                         ; $7213: $f7
	ld   de, rAUD1LEN                                   ; $7214: $11 $11 $ff
	rst  $38                                         ; $7217: $ff
	ld   sp, $df11                                   ; $7218: $31 $11 $df
	rst  $38                                         ; $721b: $ff
	rst  $20                                         ; $721c: $e7
	ld   d, d                                        ; $721d: $52
	ld   a, [de]                                     ; $721e: $1a
	rst  $28                                         ; $721f: $ef
	ld   a, [$6a74]                                  ; $7220: $fa $74 $6a
	cp   e                                           ; $7223: $bb
	ret  z                                           ; $7224: $c8

	ld   b, c                                        ; $7225: $41
	ld   [de], a                                     ; $7226: $12
	ld   de, $1112                                   ; $7227: $11 $12 $11
	rra                                              ; $722a: $1f
	rst  $38                                         ; $722b: $ff
	ld   de, $5f11                                   ; $722c: $11 $11 $5f
	rst  $38                                         ; $722f: $ff
	pop  af                                          ; $7230: $f1
	ld   de, $ff2e                                   ; $7231: $11 $2e $ff
	cp   $86                                         ; $7234: $fe $86
	ld   [hl+], a                                    ; $7236: $22
	sbc  l                                           ; $7237: $9d
	rst  $38                                         ; $7238: $ff
	and  a                                           ; $7239: $a7
	ld   d, [hl]                                     ; $723a: $56
	xor  e                                           ; $723b: $ab
	jp   z, $1173                                    ; $723c: $ca $73 $11

	ld   de, $1112                                   ; $723f: $11 $12 $11
	ld   de, $c1ff                                   ; $7242: $11 $ff $c1
	ld   de, rAUD1HIGH                                   ; $7245: $11 $14 $ff
	rst  $38                                         ; $7248: $ff
	ld   de, $cf12                                   ; $7249: $11 $12 $cf
	rst  $38                                         ; $724c: $ff
	ei                                               ; $724d: $fb
	ld   [hl], c                                     ; $724e: $71
	rla                                              ; $724f: $17
	xor  a                                           ; $7250: $af
	cp   $c5                                         ; $7251: $fe $c5
	ld   b, h                                        ; $7253: $44
	ld   a, l                                        ; $7254: $7d
	ret                                              ; $7255: $c9


	ld   d, c                                        ; $7256: $51
	ld   de, $5111                                   ; $7257: $11 $11 $51
	ld   de, $f1ff                                   ; $725a: $11 $ff $f1
	ld   de, $ff41                                   ; $725d: $11 $41 $ff
	rst  $38                                         ; $7260: $ff
	ld   [hl], c                                     ; $7261: $71
	ld   de, $ff6c                                   ; $7262: $11 $6c $ff
	rst  $38                                         ; $7265: $ff
	or   l                                           ; $7266: $b5
	ld   [de], a                                     ; $7267: $12
	ld   a, h                                        ; $7268: $7c
	rst  $38                                         ; $7269: $ff
	db   $db                                         ; $726a: $db
	halt                                             ; $726b: $76
	ld   d, a                                        ; $726c: $57
	cp   e                                           ; $726d: $bb
	add  h                                           ; $726e: $84
	ld   de, $1111                                   ; $726f: $11 $11 $11
	ld   de, $f5ff                                   ; $7272: $11 $ff $f5
	ld   de, $6f11                                   ; $7275: $11 $11 $6f
	rst  $38                                         ; $7278: $ff
	pop  hl                                          ; $7279: $e1
	ld   de, $df16                                   ; $727a: $11 $16 $df
	rst  $38                                         ; $727d: $ff
	ei                                               ; $727e: $fb
	ld   de, $ff28                                   ; $727f: $11 $28 $ff
	rst  $38                                         ; $7282: $ff
	and  l                                           ; $7283: $a5
	inc  sp                                          ; $7284: $33
	sbc  c                                           ; $7285: $99
	and  a                                           ; $7286: $a7
	ld   sp, $1111                                   ; $7287: $31 $11 $11
	ld   de, $f5ff                                   ; $728a: $11 $ff $f5
	ld   de, $1f11                                   ; $728d: $11 $11 $1f
	rst  $38                                         ; $7290: $ff
	db   $f4                                         ; $7291: $f4
	ld   hl, $bf11                                   ; $7292: $21 $11 $bf
	rst  $38                                         ; $7295: $ff
	db   $fd                                         ; $7296: $fd
	ld   sp, $df15                                   ; $7297: $31 $15 $df
	rst  $38                                         ; $729a: $ff
	rst  $20                                         ; $729b: $e7
	ld   b, c                                        ; $729c: $41
	ld   e, b                                        ; $729d: $58
	sbc  b                                           ; $729e: $98
	ld   sp, $1111                                   ; $729f: $31 $11 $11
	ld   de, $fbff                                   ; $72a2: $11 $ff $fb
	ld   d, c                                        ; $72a5: $51
	ld   de, $ff1f                                   ; $72a6: $11 $1f $ff
	db   $fc                                         ; $72a9: $fc
	sub  c                                           ; $72aa: $91
	ld   de, $ff9f                                   ; $72ab: $11 $9f $ff
	rst  $38                                         ; $72ae: $ff
	ld   [hl], c                                     ; $72af: $71
	ld   de, $ff7e                                   ; $72b0: $11 $7e $ff
	ei                                               ; $72b3: $fb
	ld   [hl], d                                     ; $72b4: $72
	ld   [hl+], a                                    ; $72b5: $22
	inc  [hl]                                        ; $72b6: $34
	ld   sp, $1111                                   ; $72b7: $31 $11 $11
	rra                                              ; $72ba: $1f
	rst  $38                                         ; $72bb: $ff
	adc  $71                                         ; $72bc: $ce $71
	ld   de, $ff9f                                   ; $72be: $11 $9f $ff
	rst  $38                                         ; $72c1: $ff
	sub  c                                           ; $72c2: $91
	inc  de                                          ; $72c3: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72c4: $cf
	rst  $38                                         ; $72c5: $ff
	db   $fd                                         ; $72c6: $fd
	ld   d, d                                        ; $72c7: $52
	ld   [de], a                                     ; $72c8: $12
	ld   l, d                                        ; $72c9: $6a
	rst  $38                                         ; $72ca: $ff
	ei                                               ; $72cb: $fb
	ld   [hl], e                                     ; $72cc: $73
	ld   de, $1111                                   ; $72cd: $11 $11 $11
	ld   de, $ff1f                                   ; $72d0: $11 $1f $ff
	adc  a                                           ; $72d3: $8f
	pop  bc                                          ; $72d4: $c1
	ld   de, $dfcc                                   ; $72d5: $11 $cc $df
	rst  $38                                         ; $72d8: $ff
	add  c                                           ; $72d9: $81
	ld   d, $ab                                      ; $72da: $16 $ab
	rst  $38                                         ; $72dc: $ff
	db   $fc                                         ; $72dd: $fc
	ld   d, [hl]                                     ; $72de: $56
	ld   b, d                                        ; $72df: $42
	scf                                              ; $72e0: $37
	rst  JumpTable                                         ; $72e1: $df
	cp   $a7                                         ; $72e2: $fe $a7
	ld   sp, $1111                                   ; $72e4: $31 $11 $11
	ld   de, $fcff                                   ; $72e7: $11 $ff $fc
	cp   $11                                         ; $72ea: $fe $11
	dec  de                                          ; $72ec: $1b
	ld   l, c                                        ; $72ed: $69
	rst  $38                                         ; $72ee: $ff
	ld   sp, hl                                      ; $72ef: $f9
	ld   d, $55                                      ; $72f0: $16 $55
	ld   a, a                                        ; $72f2: $7f
	rst  $38                                         ; $72f3: $ff
	jp   c, $1196                                    ; $72f4: $da $96 $11

	ld   e, c                                        ; $72f7: $59
	cp   e                                           ; $72f8: $bb
	db   $ed                                         ; $72f9: $ed
	add  c                                           ; $72fa: $81
	ld   de, $1111                                   ; $72fb: $11 $11 $11
	rst  $38                                         ; $72fe: $ff
	ld   l, a                                        ; $72ff: $6f
	ei                                               ; $7300: $fb
	ld   de, $1e85                                   ; $7301: $11 $85 $1e
	rst  $38                                         ; $7304: $ff
	rst  $30                                         ; $7305: $f7
	cp   c                                           ; $7306: $b9
	ld   d, [hl]                                     ; $7307: $56
	sbc  a                                           ; $7308: $9f
	db   $fd                                         ; $7309: $fd
	adc  $b7                                         ; $730a: $ce $b7
	ld   b, h                                        ; $730c: $44
	inc  [hl]                                        ; $730d: $34
	ld   l, b                                        ; $730e: $68
	xor  b                                           ; $730f: $a8
	ld   b, c                                        ; $7310: $41
	ld   de, rAUD1LEN                                   ; $7311: $11 $11 $ff
	ld   c, a                                        ; $7314: $4f
	rst  $38                                         ; $7315: $ff
	ld   d, c                                        ; $7316: $51
	ld   l, c                                        ; $7317: $69
	ld   de, $fbfe                                   ; $7318: $11 $fe $fb
	rst  $28                                         ; $731b: $ef
	sbc  b                                           ; $731c: $98
	xor  h                                           ; $731d: $ac
	db   $db                                         ; $731e: $db
	sbc  l                                           ; $731f: $9d
	jp   z, Jump_0a5_5188                            ; $7320: $ca $88 $51

	inc  sp                                          ; $7323: $33
	inc  sp                                          ; $7324: $33
	ld   [hl-], a                                    ; $7325: $32
	ld   de, $f811                                   ; $7326: $11 $11 $f8
	cpl                                              ; $7329: $2f
	ei                                               ; $732a: $fb
	rla                                              ; $732b: $17
	pop  af                                          ; $732c: $f1
	inc  e                                           ; $732d: $1c
	rst  ToBoot                                         ; $732e: $c7
	xor  d                                           ; $732f: $aa
	cp   $9f                                         ; $7330: $fe $9f
	cp   $e9                                         ; $7332: $fe $e9
	cp   e                                           ; $7334: $bb
	ld   l, b                                        ; $7335: $68
	ld   a, b                                        ; $7336: $78
	inc  sp                                          ; $7337: $33
	ld   hl, $1111                                   ; $7338: $21 $11 $11
	ld   de, $1ffc                                   ; $733b: $11 $fc $1f
	cp   $29                                         ; $733e: $fe $29
	pop  af                                          ; $7340: $f1
	inc  e                                           ; $7341: $1c
	jp   nz, $fc79                                   ; $7342: $c2 $79 $fc

	adc  a                                           ; $7345: $8f
	rst  $38                                         ; $7346: $ff
	cp   $bb                                         ; $7347: $fe $bb
	ld   a, d                                        ; $7349: $7a
	ld   d, h                                        ; $734a: $54
	ld   b, e                                        ; $734b: $43
	ld   de, $1111                                   ; $734c: $11 $11 $11
	ld   e, $f1                                      ; $734f: $1e $f1
	rst  $38                                         ; $7351: $ff
	ld   hl, sp-$61                                  ; $7352: $f8 $9f
	pop  de                                          ; $7354: $d1
	ccf                                              ; $7355: $3f
	ld   de, $a7aa                                   ; $7356: $11 $aa $a7
	rst  $38                                         ; $7359: $ff
	xor  $fe                                         ; $735a: $ee $fe
	jp   z, $24a9                                    ; $735c: $ca $a9 $24

	ld   sp, $1111                                   ; $735f: $31 $11 $11
	ld   de, $1fff                                   ; $7362: $11 $ff $1f
	db   $fc                                         ; $7365: $fc
	sbc  a                                           ; $7366: $9f
	db   $f4                                         ; $7367: $f4
	dec  e                                           ; $7368: $1d
	pop  hl                                          ; $7369: $e1
	ld   e, h                                        ; $736a: $5c
	ld   [hl], h                                     ; $736b: $74
	sbc  a                                           ; $736c: $9f
	db   $fd                                         ; $736d: $fd
	rst  $38                                         ; $736e: $ff
	adc  $ed                                         ; $736f: $ce $ed
	add  h                                           ; $7371: $84
	ld   h, c                                        ; $7372: $61
	ld   de, $1111                                   ; $7373: $11 $11 $11
	cp   $1f                                         ; $7376: $fe $1f
	ei                                               ; $7378: $fb
	rst  JumpTable                                         ; $7379: $df
	rst  $30                                         ; $737a: $f7
	ld   e, $c1                                      ; $737b: $1e $c1
	ld   e, d                                        ; $737d: $5a
	ld   [hl+], a                                    ; $737e: $22
	adc  a                                           ; $737f: $8f
	cp   e                                           ; $7380: $bb
	rst  $38                                         ; $7381: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7382: $cf
	db   $fd                                         ; $7383: $fd
	xor  b                                           ; $7384: $a8
	add  c                                           ; $7385: $81
	ld   de, $1111                                   ; $7386: $11 $11 $11
	pop  af                                          ; $7389: $f1
	rra                                              ; $738a: $1f
	cp   e                                           ; $738b: $bb
	rst  $38                                         ; $738c: $ff
	db   $f4                                         ; $738d: $f4
	rst  JumpTable                                         ; $738e: $df
	ld   de, $12d1                                   ; $738f: $11 $d1 $12
	sub  [hl]                                        ; $7392: $96
	ld   c, a                                        ; $7393: $4f
	db   $fd                                         ; $7394: $fd
	rst  $38                                         ; $7395: $ff
	db   $ec                                         ; $7396: $ec
	cp   e                                           ; $7397: $bb
	ld   h, c                                        ; $7398: $61
	ld   de, $1b11                                   ; $7399: $11 $11 $1b
	ld   de, $6ff9                                   ; $739c: $11 $f9 $6f
	rst  $38                                         ; $739f: $ff
	xor  a                                           ; $73a0: $af
	db   $f4                                         ; $73a1: $f4
	ccf                                              ; $73a2: $3f
	ld   de, $1135                                   ; $73a3: $11 $35 $11
	rst  JumpTable                                         ; $73a6: $df
	ld   a, l                                        ; $73a7: $7d
	db   $fc                                         ; $73a8: $fc
	rst  $28                                         ; $73a9: $ef
	ret                                              ; $73aa: $c9


	ld   b, e                                        ; $73ab: $43
	ld   de, $1115                                   ; $73ac: $11 $15 $11
	ld   hl, sp+$1f                                  ; $73af: $f8 $1f
	rst  $38                                         ; $73b1: $ff
	rst  $28                                         ; $73b2: $ef
	db   $fd                                         ; $73b3: $fd
	xor  a                                           ; $73b4: $af
	and  e                                           ; $73b5: $a3
	and  h                                           ; $73b6: $a4
	ld   de, $4748                                   ; $73b7: $11 $48 $47
	ld   a, [$a89f]                                  ; $73ba: $fa $9f $a8
	ld   h, h                                        ; $73bd: $64
	ld   de, $1b71                                   ; $73be: $11 $71 $1b
	ld   b, c                                        ; $73c1: $41
	sbc  e                                           ; $73c2: $9b
	jp   z, $efff                                    ; $73c3: $ca $ff $ef

	db   $fd                                         ; $73c6: $fd
	sbc  a                                           ; $73c7: $9f
	sub  l                                           ; $73c8: $95
	ld   b, [hl]                                     ; $73c9: $46
	ld   h, e                                        ; $73ca: $63
	ld   l, e                                        ; $73cb: $6b
	ld   [hl], a                                     ; $73cc: $77
	rst  ToBoot                                         ; $73cd: $c7
	ld   h, [hl]                                     ; $73ce: $66
	ld   sp, $2119                                   ; $73cf: $31 $19 $21
	push bc                                          ; $73d2: $c5
	ld   a, [de]                                     ; $73d3: $1a
	xor  d                                           ; $73d4: $aa
	xor  a                                           ; $73d5: $af
	db   $fd                                         ; $73d6: $fd
	rst  JumpTable                                         ; $73d7: $df
	cp   h                                           ; $73d8: $bc
	ld   a, [$998a]                                  ; $73d9: $fa $8a $99
	ld   h, [hl]                                     ; $73dc: $66
	and  [hl]                                        ; $73dd: $a6
	ld   h, a                                        ; $73de: $67
	ld   d, [hl]                                     ; $73df: $56
	ld   sp, $7111                                   ; $73e0: $31 $11 $71
	ld   e, $13                                      ; $73e3: $1e $13
	ret  c                                           ; $73e5: $d8

	xor  h                                           ; $73e6: $ac
	rst  $38                                         ; $73e7: $ff
	cp   a                                           ; $73e8: $bf
	ld   sp, hl                                      ; $73e9: $f9
	rst  $38                                         ; $73ea: $ff
	adc  e                                           ; $73eb: $8b
	xor  c                                           ; $73ec: $a9
	sbc  b                                           ; $73ed: $98
	ld   a, c                                        ; $73ee: $79
	ld   h, a                                        ; $73ef: $67
	ld   d, h                                        ; $73f0: $54
	ld   d, c                                        ; $73f1: $51
	ld   de, $1b61                                   ; $73f2: $11 $61 $1b
	ld   de, $9bb7                                   ; $73f5: $11 $b7 $9b
	cp   $df                                         ; $73f8: $fe $df
	db   $fc                                         ; $73fa: $fc
	rst  $38                                         ; $73fb: $ff
	xor  h                                           ; $73fc: $ac
	or   a                                           ; $73fd: $b7
	sbc  b                                           ; $73fe: $98
	ld   h, a                                        ; $73ff: $67
	ld   [hl], a                                     ; $7400: $77
	ld   d, h                                        ; $7401: $54
	ld   d, c                                        ; $7402: $51
	ld   [de], a                                     ; $7403: $12
	ld   d, c                                        ; $7404: $51
	ld   a, [bc]                                     ; $7405: $0a
	inc  de                                          ; $7406: $13
	or   [hl]                                        ; $7407: $b6
	ld   a, e                                        ; $7408: $7b
	db   $ed                                         ; $7409: $ed
	rst  JumpTable                                         ; $740a: $df
	ei                                               ; $740b: $fb
	rst  $38                                         ; $740c: $ff
	xor  l                                           ; $740d: $ad
	ret                                              ; $740e: $c9


	xor  d                                           ; $740f: $aa
	ld   [hl], a                                     ; $7410: $77
	ld   h, [hl]                                     ; $7411: $66
	ld   b, e                                        ; $7412: $43
	ld   sp, $4114                                   ; $7413: $31 $14 $41
	ld   a, b                                        ; $7416: $78
	jr   @+$78                                       ; $7417: $18 $76

	adc  d                                           ; $7419: $8a
	db   $ec                                         ; $741a: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $741b: $cf
	db   $ed                                         ; $741c: $ed
	cp   $dd                                         ; $741d: $fe $dd
	cp   e                                           ; $741f: $bb
	cp   c                                           ; $7420: $b9
	adc  b                                           ; $7421: $88
	ld   d, l                                        ; $7422: $55
	ld   b, e                                        ; $7423: $43
	ld   de, $1215                                   ; $7424: $11 $15 $12
	sub  c                                           ; $7427: $91
	ld   l, c                                        ; $7428: $69
	ld   e, c                                        ; $7429: $59
	sbc  [hl]                                        ; $742a: $9e
	cp   h                                           ; $742b: $bc
	cp   $ef                                         ; $742c: $fe $ef
	db   $dd                                         ; $742e: $dd
	db   $eb                                         ; $742f: $eb
	call c, $86a8                                    ; $7430: $dc $a8 $86
	ld   d, l                                        ; $7433: $55
	ld   hl, $5111                                   ; $7434: $21 $11 $51
	add  hl, hl                                      ; $7437: $29
	ld   d, $74                                      ; $7438: $16 $74
	add  a                                           ; $743a: $87
	jp   c, $dfcf                                    ; $743b: $da $cf $df

	cp   $ef                                         ; $743e: $fe $ef
	cp   h                                           ; $7440: $bc
	reti                                             ; $7441: $d9


	adc  c                                           ; $7442: $89
	ld   h, l                                        ; $7443: $65
	ld   d, e                                        ; $7444: $53
	ld   de, SetKanjiTextBoxDimensions                                   ; $7445: $11 $24 $14
	ld   [hl], c                                     ; $7448: $71
	add  l                                           ; $7449: $85
	ld   c, c                                        ; $744a: $49
	ld   a, l                                        ; $744b: $7d
	adc  l                                           ; $744c: $8d
	db   $fc                                         ; $744d: $fc
	rst  $38                                         ; $744e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $744f: $cf
	db   $fc                                         ; $7450: $fc
	db   $ed                                         ; $7451: $ed
	xor  b                                           ; $7452: $a8
	sub  [hl]                                        ; $7453: $96
	ld   d, l                                        ; $7454: $55
	ld   hl, $2113                                   ; $7455: $21 $13 $21
	ld   [hl], d                                     ; $7458: $72
	ld   a, [de]                                     ; $7459: $1a
	ld   h, $78                                      ; $745a: $26 $78
	cp   b                                           ; $745c: $b8
	xor  $cf                                         ; $745d: $ee $cf
	db   $fd                                         ; $745f: $fd
	cp   $ce                                         ; $7460: $fe $ce
	reti                                             ; $7462: $d9


	xor  c                                           ; $7463: $a9
	ld   d, [hl]                                     ; $7464: $56
	ld   d, c                                        ; $7465: $51
	ld   de, $1a41                                   ; $7466: $11 $41 $1a
	inc  de                                          ; $7469: $13
	add  c                                           ; $746a: $81
	sub  l                                           ; $746b: $95
	xor  b                                           ; $746c: $a8
	sbc  a                                           ; $746d: $9f
	cp   l                                           ; $746e: $bd
	db   $fd                                         ; $746f: $fd
	rst  $38                                         ; $7470: $ff
	sbc  $dc                                         ; $7471: $de $dc
	sbc  e                                           ; $7473: $9b
	add  l                                           ; $7474: $85
	ld   [hl], e                                     ; $7475: $73
	ld   hl, SetKanjiTextBoxDimensions                                   ; $7476: $21 $24 $14
	ld   d, c                                        ; $7479: $51
	sub  d                                           ; $747a: $92
	scf                                              ; $747b: $37
	ld   e, e                                        ; $747c: $5b
	ld   l, [hl]                                     ; $747d: $6e
	db   $db                                         ; $747e: $db
	rst  $38                                         ; $747f: $ff
	rst  JumpTable                                         ; $7480: $df
	db   $fd                                         ; $7481: $fd
	db   $fd                                         ; $7482: $fd
	cp   d                                           ; $7483: $ba
	or   l                                           ; $7484: $b5
	halt                                             ; $7485: $76
	ld   [hl+], a                                    ; $7486: $22
	inc  d                                           ; $7487: $14
	ld   de, $1991                                   ; $7488: $11 $91 $19
	rla                                              ; $748b: $17
	ld   c, c                                        ; $748c: $49
	add  a                                           ; $748d: $87
	ld   a, [$ffdf]                                  ; $748e: $fa $df $ff
	rst  $38                                         ; $7491: $ff
	rst  $28                                         ; $7492: $ef
	jp   c, Jump_0a5_59b9                            ; $7493: $da $b9 $59

	ld   [hl-], a                                    ; $7496: $32
	ld   bc, $4541                                   ; $7497: $01 $41 $45
	jr   jr_0a5_74bf                                 ; $749a: $18 $23

	ld   h, l                                        ; $749c: $65
	or   l                                           ; $749d: $b5
	call z, $febf                                    ; $749e: $cc $bf $fe
	rst  $38                                         ; $74a1: $ff
	rst  $28                                         ; $74a2: $ef
	db   $fc                                         ; $74a3: $fc
	cp   h                                           ; $74a4: $bc
	ld   h, a                                        ; $74a5: $67
	ld   [hl], d                                     ; $74a6: $72
	ld   sp, $1841                                   ; $74a7: $31 $41 $18
	ld   de, $7361                                   ; $74aa: $11 $61 $73
	sub  a                                           ; $74ad: $97
	sbc  [hl]                                        ; $74ae: $9e
	xor  a                                           ; $74af: $af
	rst  $28                                         ; $74b0: $ef
	rst  $28                                         ; $74b1: $ef
	rst  $28                                         ; $74b2: $ef
	db   $fc                                         ; $74b3: $fc
	call z, $9496                                    ; $74b4: $cc $96 $94
	ld   sp, $1524                                   ; $74b7: $31 $24 $15
	ld   hl, $4471                                   ; $74ba: $21 $71 $44
	ld   e, d                                        ; $74bd: $5a
	ld   e, [hl]                                     ; $74be: $5e

jr_0a5_74bf:
	cp   h                                           ; $74bf: $bc
	rst  $38                                         ; $74c0: $ff
	rst  $28                                         ; $74c1: $ef
	cp   $fe                                         ; $74c2: $fe $fe
	call c, $86b7                                    ; $74c4: $dc $b7 $86
	inc  sp                                          ; $74c7: $33
	dec  d                                           ; $74c8: $15
	ld   de, $5261                                   ; $74c9: $11 $61 $52
	ld   d, $39                                      ; $74cc: $16 $39
	ld   e, e                                        ; $74ce: $5b
	cp   d                                           ; $74cf: $ba
	xor  $ff                                         ; $74d0: $ee $ff
	cp   $ff                                         ; $74d2: $fe $ff
	call z, $89d9                                    ; $74d4: $cc $d9 $89
	inc  [hl]                                        ; $74d7: $34
	inc  d                                           ; $74d8: $14
	ld   de, $2481                                   ; $74d9: $11 $81 $24
	ld   d, $29                                      ; $74dc: $16 $29
	ld   e, b                                        ; $74de: $58
	jp   c, $eeed                                    ; $74df: $da $ed $ee

	rst  $38                                         ; $74e2: $ff
	rst  $38                                         ; $74e3: $ff
	call c, $8ada                                    ; $74e4: $dc $da $8a
	ld   b, e                                        ; $74e7: $43
	ld   [de], a                                     ; $74e8: $12
	ld   de, $1661                                   ; $74e9: $11 $61 $16
	rla                                              ; $74ec: $17
	ld   a, [hl-]                                    ; $74ed: $3a
	ld   a, c                                        ; $74ee: $79
	ld   [$edee], a                                  ; $74ef: $ea $ee $ed
	cp   $df                                         ; $74f2: $fe $df
	call c, Call_0a5_6aca                            ; $74f4: $dc $ca $6a
	ld   d, h                                        ; $74f7: $54
	dec  [hl]                                        ; $74f8: $35
	ld   hl, $2581                                   ; $74f9: $21 $81 $25
	dec  d                                           ; $74fc: $15
	jr   z, jr_0a5_7537                              ; $74fd: $28 $38

	cp   b                                           ; $74ff: $b8
	db   $dd                                         ; $7500: $dd
	db   $dd                                         ; $7501: $dd
	db   $fd                                         ; $7502: $fd
	rst  $38                                         ; $7503: $ff
	db   $ec                                         ; $7504: $ec
	ld   [$4389], a                                  ; $7505: $ea $89 $43
	ld   b, l                                        ; $7508: $45
	dec  d                                           ; $7509: $15
	ld   hl, $4361                                   ; $750a: $21 $61 $43
	ld   h, a                                        ; $750d: $67
	ld   e, e                                        ; $750e: $5b
	sbc  d                                           ; $750f: $9a
	sbc  $cf                                         ; $7510: $de $cf
	db   $fd                                         ; $7512: $fd
	cp   $cd                                         ; $7513: $fe $cd
	rst  $10                                         ; $7515: $d7
	sub  l                                           ; $7516: $95
	inc  h                                           ; $7517: $24
	ld   b, c                                        ; $7518: $41
	ld   d, d                                        ; $7519: $52
	ld   d, $16                                      ; $751a: $16 $16
	ld   h, $85                                      ; $751c: $26 $85
	jp   z, $fcbd                                    ; $751e: $ca $bd $fc

	rst  $38                                         ; $7521: $ff
	rst  JumpTable                                         ; $7522: $df
	db   $ed                                         ; $7523: $ed
	cp   h                                           ; $7524: $bc
	ld   [hl], a                                     ; $7525: $77
	inc  sp                                          ; $7526: $33
	ld   h, c                                        ; $7527: $61
	ld   h, $15                                      ; $7528: $26 $15
	ld   hl, $8562                                   ; $752a: $21 $62 $85
	sbc  e                                           ; $752d: $9b
	cp   l                                           ; $752e: $bd
	db   $dd                                         ; $752f: $dd
	rst  $28                                         ; $7530: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7531: $cf
	cp   $cc                                         ; $7532: $fe $cc
	add  a                                           ; $7534: $87
	ld   d, c                                        ; $7535: $51
	ld   [hl], c                                     ; $7536: $71

jr_0a5_7537:
	jr   jr_0a5_754c                                 ; $7537: $18 $13

	ld   b, c                                        ; $7539: $41
	ld   h, d                                        ; $753a: $62
	halt                                             ; $753b: $76
	adc  e                                           ; $753c: $8b
	xor  h                                           ; $753d: $ac
	db   $ed                                         ; $753e: $ed
	rst  $28                                         ; $753f: $ef
	rst  JumpTable                                         ; $7540: $df
	db   $fd                                         ; $7541: $fd
	res  0, l                                        ; $7542: $cb $85
	ld   d, c                                        ; $7544: $51
	ld   h, c                                        ; $7545: $61
	jr   jr_0a5_755d                                 ; $7546: $18 $15

	ld   b, c                                        ; $7548: $41
	ld   h, e                                        ; $7549: $63
	halt                                             ; $754a: $76
	sbc  e                                           ; $754b: $9b

jr_0a5_754c:
	cp   h                                           ; $754c: $bc
	db   $ed                                         ; $754d: $ed
	rst  $28                                         ; $754e: $ef
	cp   a                                           ; $754f: $bf
	db   $fd                                         ; $7550: $fd
	bit  6, l                                        ; $7551: $cb $75
	ld   b, d                                        ; $7553: $42
	ld   d, c                                        ; $7554: $51
	ld   d, l                                        ; $7555: $55
	jr   jr_0a5_7569                                 ; $7556: $18 $11

	ld   [hl], h                                     ; $7558: $74
	add  a                                           ; $7559: $87
	cp   d                                           ; $755a: $ba
	cp   l                                           ; $755b: $bd
	ei                                               ; $755c: $fb

jr_0a5_755d:
	rst  $38                                         ; $755d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $755e: $cf
	db   $ec                                         ; $755f: $ec
	jp   z, $2554                                    ; $7560: $ca $54 $25

	ld   de, $08a1                                   ; $7563: $11 $a1 $08
	dec  d                                           ; $7566: $15
	ld   h, [hl]                                     ; $7567: $66
	ld   a, d                                        ; $7568: $7a

jr_0a5_7569:
	cp   d                                           ; $7569: $ba
	cp   [hl]                                        ; $756a: $be
	call c, $effd                                    ; $756b: $dc $fd $ef
	set  0, [hl]                                     ; $756e: $cb $c6
	inc  sp                                          ; $7570: $33
	inc  sp                                          ; $7571: $33
	jr   jr_0a5_7595                                 ; $7572: $18 $21

	and  c                                           ; $7574: $a1
	jr   jr_0a5_75ec                                 ; $7575: $18 $75

	xor  e                                           ; $7577: $ab
	cp   e                                           ; $7578: $bb
	rst  $28                                         ; $7579: $ef
	cp   a                                           ; $757a: $bf
	db   $fc                                         ; $757b: $fc
	rst  $38                                         ; $757c: $ff
	sbc  e                                           ; $757d: $9b
	and  c                                           ; $757e: $a1
	inc  hl                                          ; $757f: $23
	ld   sp, $1757                                   ; $7580: $31 $57 $17
	ld   d, c                                        ; $7583: $51
	ld   l, c                                        ; $7584: $69
	ld   e, b                                        ; $7585: $58
	ld   [$fcbd], a                                  ; $7586: $ea $bd $fc
	rst  $38                                         ; $7589: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $758a: $cf
	ei                                               ; $758b: $fb
	adc  h                                           ; $758c: $8c
	ld   hl, $1344                                   ; $758d: $21 $44 $13
	and  c                                           ; $7590: $a1
	ld   h, a                                        ; $7591: $67
	dec  d                                           ; $7592: $15
	or   a                                           ; $7593: $b7
	ld   a, [hl]                                     ; $7594: $7e

jr_0a5_7595:
	cp   l                                           ; $7595: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7596: $cf
	db   $dd                                         ; $7597: $dd

Jump_0a5_7598:
	db   $fd                                         ; $7598: $fd

Jump_0a5_7599:
	rst  JumpTable                                         ; $7599: $df
	and  $a4                                         ; $759a: $e6 $a4
	inc  de                                          ; $759c: $13
	ld   h, c                                        ; $759d: $61
	inc  a                                           ; $759e: $3c
	ld   d, $91                                      ; $759f: $16 $91
	ld   c, l                                        ; $75a1: $4d
	ld   l, b                                        ; $75a2: $68
	ld   a, [$feeb]                                  ; $75a3: $fa $eb $fe
	rst  JumpTable                                         ; $75a6: $df
	cp   $ce                                         ; $75a7: $fe $ce
	ld   [hl], a                                     ; $75a9: $77
	ld   b, c                                        ; $75aa: $41
	dec  h                                           ; $75ab: $25
	dec  d                                           ; $75ac: $15
	and  c                                           ; $75ad: $a1
	ld   a, d                                        ; $75ae: $7a
	inc  de                                          ; $75af: $13
	or   $8f                                         ; $75b0: $f6 $8f
	cp   [hl]                                        ; $75b2: $be
	adc  $ef                                         ; $75b3: $ce $ef
	rst  JumpTable                                         ; $75b5: $df
	ld   a, [$41d8]                                  ; $75b6: $fa $d8 $41
	inc  d                                           ; $75b9: $14
	ld   de, $17a4                                   ; $75ba: $11 $a4 $17
	and  d                                           ; $75bd: $a2
	ld   c, a                                        ; $75be: $4f
	ld   a, d                                        ; $75bf: $7a
	db   $dd                                         ; $75c0: $dd
	call c, $faff                                    ; $75c1: $dc $ff $fa
	rst  $38                                         ; $75c4: $ff
	sbc  c                                           ; $75c5: $99
	sub  e                                           ; $75c6: $93
	ld   de, $1b61                                   ; $75c7: $11 $61 $1b
	ld   sp, $7748                                   ; $75ca: $31 $48 $77
	cp   d                                           ; $75cd: $ba
	ei                                               ; $75ce: $fb
	cp   a                                           ; $75cf: $bf
	db   $fc                                         ; $75d0: $fc
	rst  $28                                         ; $75d1: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d2: $cf
	jp   c, $1186                                    ; $75d3: $da $86 $11

	inc  [hl]                                        ; $75d6: $34
	ld   de, $5473                                   ; $75d7: $11 $73 $54
	ld   l, b                                        ; $75da: $68
	ret  c                                           ; $75db: $d8

	sbc  a                                           ; $75dc: $9f
	call z, $efcd                                    ; $75dd: $cc $cd $ef
	call c, $87ed                                    ; $75e0: $dc $ed $87
	ld   b, c                                        ; $75e3: $41
	inc  d                                           ; $75e4: $14
	ld   hl, $4663                                   ; $75e5: $21 $63 $46
	ld   h, l                                        ; $75e8: $65
	ld   a, e                                        ; $75e9: $7b
	adc  d                                           ; $75ea: $8a
	cp   d                                           ; $75eb: $ba

jr_0a5_75ec:
	cp   l                                           ; $75ec: $bd
	call z, $edec                                    ; $75ed: $cc $ec $ed
	xor  b                                           ; $75f0: $a8
	add  h                                           ; $75f1: $84
	ld   de, $4643                                   ; $75f2: $11 $43 $46
	inc  sp                                          ; $75f5: $33
	ld   d, [hl]                                     ; $75f6: $56
	ld   h, a                                        ; $75f7: $67
	adc  b                                           ; $75f8: $88
	sbc  e                                           ; $75f9: $9b
	xor  e                                           ; $75fa: $ab
	call z, $cdde                                    ; $75fb: $cc $de $cd
	jp   c, Jump_0a5_5298                            ; $75fe: $da $98 $52

	inc  h                                           ; $7601: $24
	ld   b, l                                        ; $7602: $45
	ld   h, h                                        ; $7603: $64
	inc  [hl]                                        ; $7604: $34
	ld   b, l                                        ; $7605: $45
	ld   h, a                                        ; $7606: $67
	ld   a, b                                        ; $7607: $78
	sbc  d                                           ; $7608: $9a
	cp   e                                           ; $7609: $bb
	db   $dd                                         ; $760a: $dd
	db   $dd                                         ; $760b: $dd
	db   $ed                                         ; $760c: $ed
	jp   z, Jump_0a5_5497                            ; $760d: $ca $97 $54

	ld   d, l                                        ; $7610: $55
	ld   h, l                                        ; $7611: $65
	inc  sp                                          ; $7612: $33
	ld   [hl+], a                                    ; $7613: $22
	ld   b, h                                        ; $7614: $44
	ld   d, [hl]                                     ; $7615: $56
	ld   a, b                                        ; $7616: $78
	sbc  d                                           ; $7617: $9a
	cp   l                                           ; $7618: $bd
	db   $ed                                         ; $7619: $ed
	db   $ed                                         ; $761a: $ed
	db   $dd                                         ; $761b: $dd
	cp   d                                           ; $761c: $ba
	add  [hl]                                        ; $761d: $86
	ld   d, l                                        ; $761e: $55
	ld   d, l                                        ; $761f: $55
	ld   d, h                                        ; $7620: $54
	ld   [hl+], a                                    ; $7621: $22
	inc  hl                                          ; $7622: $23
	ld   b, h                                        ; $7623: $44
	ld   d, [hl]                                     ; $7624: $56
	ld   a, c                                        ; $7625: $79
	cp   h                                           ; $7626: $bc
	db   $dd                                         ; $7627: $dd
	rst  $28                                         ; $7628: $ef
	xor  $dc                                         ; $7629: $ee $dc
	cp   c                                           ; $762b: $b9
	ld   [hl], l                                     ; $762c: $75
	ld   d, l                                        ; $762d: $55
	ld   d, l                                        ; $762e: $55
	ld   [hl-], a                                    ; $762f: $32
	ld   [hl+], a                                    ; $7630: $22
	inc  sp                                          ; $7631: $33
	ld   b, l                                        ; $7632: $45
	ld   h, a                                        ; $7633: $67
	adc  d                                           ; $7634: $8a
	cp   l                                           ; $7635: $bd
	rst  $28                                         ; $7636: $ef
	xor  $ee                                         ; $7637: $ee $ee
	res  4, a                                        ; $7639: $cb $a7
	ld   d, l                                        ; $763b: $55
	ld   d, l                                        ; $763c: $55
	ld   d, e                                        ; $763d: $53
	ld   [hl+], a                                    ; $763e: $22
	ld   [hl+], a                                    ; $763f: $22
	inc  [hl]                                        ; $7640: $34
	ld   d, [hl]                                     ; $7641: $56
	ld   a, b                                        ; $7642: $78
	xor  e                                           ; $7643: $ab
	adc  $fe                                         ; $7644: $ce $fe
	rst  $38                                         ; $7646: $ff
	call c, $76ba                                    ; $7647: $dc $ba $76
	ld   d, l                                        ; $764a: $55
	ld   d, l                                        ; $764b: $55
	ld   [hl-], a                                    ; $764c: $32
	ld   [hl+], a                                    ; $764d: $22
	inc  hl                                          ; $764e: $23
	ld   b, l                                        ; $764f: $45
	ld   h, a                                        ; $7650: $67
	adc  d                                           ; $7651: $8a
	cp   l                                           ; $7652: $bd
	rst  $28                                         ; $7653: $ef
	rst  $38                                         ; $7654: $ff
	db   $ed                                         ; $7655: $ed
	res  4, a                                        ; $7656: $cb $a7
	ld   h, l                                        ; $7658: $65
	ld   d, l                                        ; $7659: $55
	ld   d, e                                        ; $765a: $53
	ld   [hl+], a                                    ; $765b: $22
	ld   [hl+], a                                    ; $765c: $22
	inc  [hl]                                        ; $765d: $34
	ld   d, [hl]                                     ; $765e: $56
	ld   a, c                                        ; $765f: $79
	xor  h                                           ; $7660: $ac
	sbc  $ef                                         ; $7661: $de $ef
	xor  $dc                                         ; $7663: $ee $dc
	xor  c                                           ; $7665: $a9
	ld   [hl], l                                     ; $7666: $75
	ld   d, l                                        ; $7667: $55
	ld   d, h                                        ; $7668: $54
	ld   [hl-], a                                    ; $7669: $32
	ld   [hl+], a                                    ; $766a: $22
	inc  sp                                          ; $766b: $33
	ld   b, l                                        ; $766c: $45
	ld   a, b                                        ; $766d: $78
	sbc  e                                           ; $766e: $9b
	db   $dd                                         ; $766f: $dd
	rst  $38                                         ; $7670: $ff
	cp   $ed                                         ; $7671: $fe $ed
	cp   d                                           ; $7673: $ba
	sub  [hl]                                        ; $7674: $96
	ld   d, l                                        ; $7675: $55
	ld   b, h                                        ; $7676: $44
	ld   b, d                                        ; $7677: $42
	ld   de, $4523                                   ; $7678: $11 $23 $45
	ld   h, a                                        ; $767b: $67
	sbc  c                                           ; $767c: $99
	cp   l                                           ; $767d: $bd
	rst  $28                                         ; $767e: $ef
	rst  $38                                         ; $767f: $ff
	db   $fd                                         ; $7680: $fd
	res  4, a                                        ; $7681: $cb $a7
	ld   h, l                                        ; $7683: $65
	ld   d, h                                        ; $7684: $54
	ld   b, e                                        ; $7685: $43
	ld   hl, $3412                                   ; $7686: $21 $12 $34
	ld   d, [hl]                                     ; $7689: $56
	adc  c                                           ; $768a: $89
	cp   l                                           ; $768b: $bd
	xor  $ff                                         ; $768c: $ee $ff
	xor  $ec                                         ; $768e: $ee $ec
	cp   c                                           ; $7690: $b9
	ld   h, l                                        ; $7691: $65
	ld   d, l                                        ; $7692: $55
	ld   b, e                                        ; $7693: $43
	ld   hl, $3311                                   ; $7694: $21 $11 $33
	ld   d, [hl]                                     ; $7697: $56
	ld   a, b                                        ; $7698: $78
	sbc  h                                           ; $7699: $9c
	rst  $28                                         ; $769a: $ef
	rst  $38                                         ; $769b: $ff
	cp   $ed                                         ; $769c: $fe $ed
	ret                                              ; $769e: $c9


	ld   [hl], l                                     ; $769f: $75
	ld   d, l                                        ; $76a0: $55
	ld   b, h                                        ; $76a1: $44
	ld   hl, $2301                                   ; $76a2: $21 $01 $23
	ld   b, l                                        ; $76a5: $45
	ld   h, a                                        ; $76a6: $67
	sbc  e                                           ; $76a7: $9b
	sbc  $ff                                         ; $76a8: $de $ff
	rst  $38                                         ; $76aa: $ff
	cp   $ca                                         ; $76ab: $fe $ca
	add  [hl]                                        ; $76ad: $86
	ld   d, l                                        ; $76ae: $55
	ld   d, h                                        ; $76af: $54
	ld   hl, $2311                                   ; $76b0: $21 $11 $23
	ld   b, l                                        ; $76b3: $45
	ld   h, a                                        ; $76b4: $67
	adc  e                                           ; $76b5: $8b
	sbc  $ff                                         ; $76b6: $de $ff
	rst  $38                                         ; $76b8: $ff
	xor  $db                                         ; $76b9: $ee $db
	sub  a                                           ; $76bb: $97
	ld   d, l                                        ; $76bc: $55
	ld   d, h                                        ; $76bd: $54
	ld   sp, $1211                                   ; $76be: $31 $11 $12
	inc  [hl]                                        ; $76c1: $34
	ld   d, [hl]                                     ; $76c2: $56
	ld   a, c                                        ; $76c3: $79
	adc  $ff                                         ; $76c4: $ce $ff
	rst  $38                                         ; $76c6: $ff
	cp   $db                                         ; $76c7: $fe $db
	sub  a                                           ; $76c9: $97
	ld   h, l                                        ; $76ca: $65
	ld   d, h                                        ; $76cb: $54
	ld   sp, $1211                                   ; $76cc: $31 $11 $12
	inc  [hl]                                        ; $76cf: $34
	ld   d, [hl]                                     ; $76d0: $56
	ld   a, c                                        ; $76d1: $79
	cp   [hl]                                        ; $76d2: $be
	rst  $38                                         ; $76d3: $ff
	rst  $38                                         ; $76d4: $ff
	cp   $ed                                         ; $76d5: $fe $ed
	cp   b                                           ; $76d7: $b8
	ld   h, l                                        ; $76d8: $65
	ld   d, h                                        ; $76d9: $54
	ld   [hl-], a                                    ; $76da: $32
	ld   de, $2411                                   ; $76db: $11 $11 $24
	ld   d, l                                        ; $76de: $55
	ld   a, c                                        ; $76df: $79
	cp   l                                           ; $76e0: $bd
	rst  $38                                         ; $76e1: $ff
	rst  $38                                         ; $76e2: $ff
	rst  $38                                         ; $76e3: $ff
	db   $ed                                         ; $76e4: $ed
	xor  c                                           ; $76e5: $a9
	ld   h, l                                        ; $76e6: $65
	ld   d, h                                        ; $76e7: $54
	ld   [hl-], a                                    ; $76e8: $32
	ld   de, $2411                                   ; $76e9: $11 $11 $24
	ld   d, l                                        ; $76ec: $55
	ld   l, b                                        ; $76ed: $68
	cp   l                                           ; $76ee: $bd
	rst  $38                                         ; $76ef: $ff
	rst  $38                                         ; $76f0: $ff
	rst  $38                                         ; $76f1: $ff
	db   $fd                                         ; $76f2: $fd
	cp   b                                           ; $76f3: $b8
	ld   h, l                                        ; $76f4: $65
	ld   d, l                                        ; $76f5: $55
	ld   b, d                                        ; $76f6: $42
	ld   de, $2311                                   ; $76f7: $11 $11 $23
	ld   b, l                                        ; $76fa: $45
	ld   l, b                                        ; $76fb: $68
	xor  [hl]                                        ; $76fc: $ae
	rst  $38                                         ; $76fd: $ff
	rst  $38                                         ; $76fe: $ff
	rst  $38                                         ; $76ff: $ff
	db   $ed                                         ; $7700: $ed
	ret                                              ; $7701: $c9


	halt                                             ; $7702: $76
	ld   h, l                                        ; $7703: $65
	ld   b, d                                        ; $7704: $42
	ld   de, $2311                                   ; $7705: $11 $11 $23
	ld   b, h                                        ; $7708: $44
	ld   d, a                                        ; $7709: $57
	cp   l                                           ; $770a: $bd
	rst  $38                                         ; $770b: $ff
	rst  $38                                         ; $770c: $ff
	rst  $38                                         ; $770d: $ff
	cp   $ca                                         ; $770e: $fe $ca
	halt                                             ; $7710: $76
	ld   h, l                                        ; $7711: $65
	ld   b, d                                        ; $7712: $42
	ld   de, $1211                                   ; $7713: $11 $11 $12
	inc  [hl]                                        ; $7716: $34
	ld   d, a                                        ; $7717: $57
	sbc  h                                           ; $7718: $9c
	rst  $38                                         ; $7719: $ff
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	rst  $38                                         ; $771c: $ff
	jp   z, Jump_0a5_6586                            ; $771d: $ca $86 $65

	ld   d, e                                        ; $7720: $53
	ld   de, $1211                                   ; $7721: $11 $11 $12
	inc  [hl]                                        ; $7724: $34
	ld   d, [hl]                                     ; $7725: $56
	xor  l                                           ; $7726: $ad
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	rst  $38                                         ; $7729: $ff
	rst  $38                                         ; $772a: $ff
	or   [hl]                                        ; $772b: $b6
	ld   sp, $4512                                   ; $772c: $31 $12 $45
	ld   hl, $6a13                                   ; $772f: $21 $13 $6a
	xor  c                                           ; $7732: $a9
	adc  b                                           ; $7733: $88
	rst  $28                                         ; $7734: $ef
	rst  $38                                         ; $7735: $ff
	db   $fd                                         ; $7736: $fd
	call z, $1194                                    ; $7737: $cc $94 $11
	ld   de, $ff19                                   ; $773a: $11 $19 $ff
	cp   d                                           ; $773d: $ba
	xor  l                                           ; $773e: $ad
	db   $fc                                         ; $773f: $fc
	ld   h, l                                        ; $7740: $65
	ld   l, h                                        ; $7741: $6c
	rst  $38                                         ; $7742: $ff
	cp   $bb                                         ; $7743: $fe $bb
	and  l                                           ; $7745: $a5
	ld   de, $1111                                   ; $7746: $11 $11 $11
	rst  $38                                         ; $7749: $ff
	rst  $38                                         ; $774a: $ff
	sub  [hl]                                        ; $774b: $96
	ld   l, d                                        ; $774c: $6a
	add  h                                           ; $774d: $84
	ld   a, d                                        ; $774e: $7a
	rst  $38                                         ; $774f: $ff
	rst  $38                                         ; $7750: $ff
	add  h                                           ; $7751: $84
	ld   h, h                                        ; $7752: $64
	ld   hl, $1111                                   ; $7753: $21 $11 $11
	rst  $28                                         ; $7756: $ef
	rst  $38                                         ; $7757: $ff
	sub  l                                           ; $7758: $95
	ld   d, $63                                      ; $7759: $16 $63
	ld   a, [hl]                                     ; $775b: $7e
	rst  $38                                         ; $775c: $ff
	db   $fc                                         ; $775d: $fc
	ld   h, c                                        ; $775e: $61
	ld   h, l                                        ; $775f: $65
	ld   b, h                                        ; $7760: $44
	ld   de, $1f11                                   ; $7761: $11 $11 $1f
	rst  $38                                         ; $7764: $ff
	push af                                          ; $7765: $f5
	ld   [bc], a                                     ; $7766: $02
	sub  l                                           ; $7767: $95
	ld   e, l                                        ; $7768: $5d
	rst  $38                                         ; $7769: $ff
	db   $fc                                         ; $776a: $fc
	ld   [hl], d                                     ; $776b: $72
	ld   b, a                                        ; $776c: $47
	ld   d, a                                        ; $776d: $57
	ld   h, d                                        ; $776e: $62
	ld   de, $ff15                                   ; $776f: $11 $15 $ff
	ld   sp, hl                                      ; $7772: $f9
	ld   hl, $3877                                   ; $7773: $21 $77 $38
	rst  $38                                         ; $7776: $ff
	rst  $38                                         ; $7777: $ff
	ld   h, h                                        ; $7778: $64
	jr   c, jr_0a5_77e2                              ; $7779: $38 $67

	sbc  c                                           ; $777b: $99
	ld   sp, $9f11                                   ; $777c: $31 $11 $9f
	rst  $38                                         ; $777f: $ff
	ld   h, c                                        ; $7780: $61
	ld   d, $52                                      ; $7781: $16 $52
	cp   a                                           ; $7783: $bf
	rst  $38                                         ; $7784: $ff
	or   h                                           ; $7785: $b4
	ld   b, l                                        ; $7786: $45
	sub  [hl]                                        ; $7787: $96
	adc  e                                           ; $7788: $8b
	or   c                                           ; $7789: $b1
	ld   de, $ff1d                                   ; $778a: $11 $1d $ff
	push af                                          ; $778d: $f5
	ld   [hl+], a                                    ; $778e: $22
	ld   d, d                                        ; $778f: $52
	ld   l, $ff                                      ; $7790: $2e $ff
	ld   hl, sp+$45                                  ; $7792: $f8 $45
	ld   h, a                                        ; $7794: $67
	ld   e, e                                        ; $7795: $5b
	db   $db                                         ; $7796: $db
	ld   de, $ef11                                   ; $7797: $11 $11 $ef
	rst  $38                                         ; $779a: $ff
	ld   d, e                                        ; $779b: $53
	inc  d                                           ; $779c: $14
	inc  h                                           ; $779d: $24
	rst  $38                                         ; $779e: $ff
	rst  $38                                         ; $779f: $ff
	ld   [hl], l                                     ; $77a0: $75
	ld   h, [hl]                                     ; $77a1: $66
	ld   h, l                                        ; $77a2: $65
	cp   a                                           ; $77a3: $bf
	pop  bc                                          ; $77a4: $c1
	ld   de, $ff1b                                   ; $77a5: $11 $1b $ff

Jump_0a5_77a8:
	or   $52                                         ; $77a8: $f6 $52
	ld   sp, $ff5f                                   ; $77aa: $31 $5f $ff
	rst  $20                                         ; $77ad: $e7
	ld   h, a                                        ; $77ae: $67
	ld   h, l                                        ; $77af: $65
	ld   l, h                                        ; $77b0: $6c
	ei                                               ; $77b1: $fb
	ld   de, $9f11                                   ; $77b2: $11 $11 $9f
	rst  $38                                         ; $77b5: $ff
	sub  [hl]                                        ; $77b6: $96
	ld   hl, $ff16                                   ; $77b7: $21 $16 $ff

Call_0a5_77ba:
	cp   $76                                         ; $77ba: $fe $76
	ld   h, l                                        ; $77bc: $65
	ld   l, b                                        ; $77bd: $68
	rst  JumpTable                                         ; $77be: $df
	and  c                                           ; $77bf: $a1
	ld   de, $ff18                                   ; $77c0: $11 $18 $ff
	ld   a, [$1172]                                  ; $77c3: $fa $72 $11
	ld   a, a                                        ; $77c6: $7f
	rst  $38                                         ; $77c7: $ff
	rst  ToBoot                                         ; $77c8: $c7
	ld   h, [hl]                                     ; $77c9: $66
	ld   d, [hl]                                     ; $77ca: $56
	xor  a                                           ; $77cb: $af
	rst  $20                                         ; $77cc: $e7
	ld   de, $5f11                                   ; $77cd: $11 $11 $5f
	rst  $38                                         ; $77d0: $ff
	rst  $10                                         ; $77d1: $d7
	ld   sp, $ff19                                   ; $77d2: $31 $19 $ff
	db   $fc                                         ; $77d5: $fc
	add  [hl]                                        ; $77d6: $86
	ld   [hl], h                                     ; $77d7: $74
	ld   l, d                                        ; $77d8: $6a
	db   $fd                                         ; $77d9: $fd
	ld   h, c                                        ; $77da: $61
	ld   de, $ff17                                   ; $77db: $11 $17 $ff
	ei                                               ; $77de: $fb
	sub  e                                           ; $77df: $93
	ld   [hl-], a                                    ; $77e0: $32
	cp   a                                           ; $77e1: $bf

jr_0a5_77e2:
	rst  $38                                         ; $77e2: $ff
	res  0, a                                        ; $77e3: $cb $87
	ld   b, [hl]                                     ; $77e5: $46
	xor  [hl]                                        ; $77e6: $ae
	or   [hl]                                        ; $77e7: $b6
	ld   de, $6f11                                   ; $77e8: $11 $11 $6f
	rst  $38                                         ; $77eb: $ff
	and  a                                           ; $77ec: $a7
	ld   d, h                                        ; $77ed: $54
	ld   a, [hl-]                                    ; $77ee: $3a
	rst  $38                                         ; $77ef: $ff
	ei                                               ; $77f0: $fb
	sbc  b                                           ; $77f1: $98
	add  l                                           ; $77f2: $85
	ld   a, d                                        ; $77f3: $7a
	db   $db                                         ; $77f4: $db
	ld   d, c                                        ; $77f5: $51
	ld   de, $ff19                                   ; $77f6: $11 $19 $ff
	ei                                               ; $77f9: $fb
	and  l                                           ; $77fa: $a5
	ld   b, l                                        ; $77fb: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77fc: $cf
	db   $fd                                         ; $77fd: $fd
	call c, $4797                                    ; $77fe: $dc $97 $47
	sbc  h                                           ; $7801: $9c
	add  e                                           ; $7802: $83
	ld   de, $df11                                   ; $7803: $11 $11 $df
	rst  $38                                         ; $7806: $ff
	ret                                              ; $7807: $c9


	ld   b, l                                        ; $7808: $45
	sbc  l                                           ; $7809: $9d
	db   $fd                                         ; $780a: $fd
	db   $dd                                         ; $780b: $dd
	xor  c                                           ; $780c: $a9
	ld   d, [hl]                                     ; $780d: $56
	sbc  c                                           ; $780e: $99
	sub  l                                           ; $780f: $95
	ld   hl, $2f11                                   ; $7810: $21 $11 $2f
	rst  $38                                         ; $7813: $ff
	bit  7, b                                        ; $7814: $cb $78
	ld   a, e                                        ; $7816: $7b
	call $faed                                       ; $7817: $cd $ed $fa
	ld   [hl], l                                     ; $781a: $75
	ld   l, b                                        ; $781b: $68
	ld   [hl], a                                     ; $781c: $77
	ld   d, e                                        ; $781d: $53
	ld   de, $ff17                                   ; $781e: $11 $17 $ff
	db   $fd                                         ; $7821: $fd
	rst  ToBoot                                         ; $7822: $c7
	adc  e                                           ; $7823: $8b
	xor  e                                           ; $7824: $ab
	cp   l                                           ; $7825: $bd
	db   $fc                                         ; $7826: $fc
	and  [hl]                                        ; $7827: $a6
	ld   [hl], a                                     ; $7828: $77
	ld   h, [hl]                                     ; $7829: $66
	ld   d, l                                        ; $782a: $55
	ld   de, $df12                                   ; $782b: $11 $12 $df
	sbc  $db                                         ; $782e: $de $db
	sub  a                                           ; $7830: $97
	sbc  d                                           ; $7831: $9a
	call $c7ff                                       ; $7832: $cd $ff $c7
	ld   b, h                                        ; $7835: $44
	ld   h, [hl]                                     ; $7836: $66
	ld   h, l                                        ; $7837: $65
	ld   sp, $ac11                                   ; $7838: $31 $11 $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $783b: $cf
	ld   a, [$8989]                                  ; $783c: $fa $89 $89
	adc  e                                           ; $783f: $8b
	rst  $38                                         ; $7840: $ff
	rst  $20                                         ; $7841: $e7
	ld   h, [hl]                                     ; $7842: $66
	ld   b, h                                        ; $7843: $44
	ld   d, l                                        ; $7844: $55
	ld   d, c                                        ; $7845: $51
	ld   de, $cd6a                                   ; $7846: $11 $6a $cd
	cp   $aa                                         ; $7849: $fe $aa
	ld   d, a                                        ; $784b: $57
	cp   e                                           ; $784c: $bb
	cp   $d8                                         ; $784d: $fe $d8
	ld   h, l                                        ; $784f: $65
	ld   b, h                                        ; $7850: $44
	ld   h, [hl]                                     ; $7851: $66
	ld   d, c                                        ; $7852: $51
	ld   de, $9e8a                                   ; $7853: $11 $8a $9e
	rst  $38                                         ; $7856: $ff
	ret  z                                           ; $7857: $c8

	ld   d, a                                        ; $7858: $57
	xor  h                                           ; $7859: $ac
	rst  $38                                         ; $785a: $ff
	reti                                             ; $785b: $d9


	ld   [hl], l                                     ; $785c: $75
	ld   b, e                                        ; $785d: $43
	scf                                              ; $785e: $37
	ld   [hl], c                                     ; $785f: $71
	ld   de, $ac78                                   ; $7860: $11 $78 $ac
	rst  JumpTable                                         ; $7863: $df
	ld   a, [$9b56]                                  ; $7864: $fa $56 $9b
	rst  JumpTable                                         ; $7867: $df
	jp   c, Jump_0a5_4275                            ; $7868: $da $75 $42

	inc  [hl]                                        ; $786b: $34
	ld   b, c                                        ; $786c: $41
	inc  d                                           ; $786d: $14
	ld   [hl], a                                     ; $786e: $77
	cp   a                                           ; $786f: $bf
	db   $ed                                         ; $7870: $ed
	xor  c                                           ; $7871: $a9
	ld   d, l                                        ; $7872: $55
	sbc  l                                           ; $7873: $9d
	rst  $38                                         ; $7874: $ff
	cp   c                                           ; $7875: $b9
	ld   [hl], e                                     ; $7876: $73
	inc  de                                          ; $7877: $13
	ld   d, [hl]                                     ; $7878: $56
	ld   sp, $7a15                                   ; $7879: $31 $15 $7a
	cp   [hl]                                        ; $787c: $be
	rst  $38                                         ; $787d: $ff
	and  l                                           ; $787e: $a5
	ld   b, [hl]                                     ; $787f: $46
	xor  h                                           ; $7880: $ac
	rst  $38                                         ; $7881: $ff
	jp   hl                                          ; $7882: $e9


	ld   sp, $6403                                   ; $7883: $31 $03 $64
	ld   [hl+], a                                    ; $7886: $22
	ld   h, a                                        ; $7887: $67
	ld   l, d                                        ; $7888: $6a
	adc  $fb                                         ; $7889: $ce $fb
	add  [hl]                                        ; $788b: $86
	ld   a, e                                        ; $788c: $7b
	cp   l                                           ; $788d: $bd
	db   $dd                                         ; $788e: $dd
	rst  ToBoot                                         ; $788f: $c7
	ld   b, c                                        ; $7890: $41
	inc  de                                          ; $7891: $13
	ld   d, e                                        ; $7892: $53
	inc  d                                           ; $7893: $14
	ld   h, a                                        ; $7894: $67
	sbc  l                                           ; $7895: $9d
	cp   $c7                                         ; $7896: $fe $c7
	ld   l, c                                        ; $7898: $69
	ld   a, c                                        ; $7899: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $789a: $cf
	db   $ec                                         ; $789b: $ec
	and  [hl]                                        ; $789c: $a6
	ld   hl, $5324                                   ; $789d: $21 $24 $53
	ld   b, a                                        ; $78a0: $47
	ld   h, [hl]                                     ; $78a1: $66
	sbc  l                                           ; $78a2: $9d
	cp   $88                                         ; $78a3: $fe $88
	ld   [hl], a                                     ; $78a5: $77
	ld   l, c                                        ; $78a6: $69
	cp   $da                                         ; $78a7: $fe $da
	ld   h, h                                        ; $78a9: $64
	ld   de, $3334                                   ; $78aa: $11 $34 $33
	ld   e, b                                        ; $78ad: $58
	sbc  d                                           ; $78ae: $9a
	xor  a                                           ; $78af: $af
	rst  $30                                         ; $78b0: $f7
	ld   a, d                                        ; $78b1: $7a
	or   [hl]                                        ; $78b2: $b6
	ld   l, l                                        ; $78b3: $6d
	ld   [$7298], a                                  ; $78b4: $ea $98 $72
	inc  d                                           ; $78b7: $14
	ld   d, h                                        ; $78b8: $54
	inc  sp                                          ; $78b9: $33
	add  a                                           ; $78ba: $87
	xor  l                                           ; $78bb: $ad
	rst  $38                                         ; $78bc: $ff
	xor  c                                           ; $78bd: $a9
	ld   [hl], a                                     ; $78be: $77
	ld   e, c                                        ; $78bf: $59
	call c, $84cb                                    ; $78c0: $dc $cb $84
	ld   [hl-], a                                    ; $78c3: $32
	inc  [hl]                                        ; $78c4: $34
	ld   b, h                                        ; $78c5: $44
	ld   [hl], $8a                                   ; $78c6: $36 $8a
	cp   a                                           ; $78c8: $bf
	ld   a, [$8867]                                  ; $78c9: $fa $67 $88
	sbc  e                                           ; $78cc: $9b
	db   $fd                                         ; $78cd: $fd
	and  a                                           ; $78ce: $a7
	ld   b, e                                        ; $78cf: $43
	inc  hl                                          ; $78d0: $23
	ld   b, e                                        ; $78d1: $43
	ld   b, [hl]                                     ; $78d2: $46
	ld   h, a                                        ; $78d3: $67
	adc  h                                           ; $78d4: $8c
	cp   $ba                                         ; $78d5: $fe $ba
	add  a                                           ; $78d7: $87
	ld   a, c                                        ; $78d8: $79
	cp   e                                           ; $78d9: $bb
	cp   e                                           ; $78da: $bb
	add  h                                           ; $78db: $84
	inc  hl                                          ; $78dc: $23
	ld   b, e                                        ; $78dd: $43
	ld   b, l                                        ; $78de: $45
	ld   d, [hl]                                     ; $78df: $56
	adc  c                                           ; $78e0: $89
	cp   [hl]                                        ; $78e1: $be
	jp   c, $9799                                    ; $78e2: $da $99 $97

	adc  h                                           ; $78e5: $8c
	res  5, c                                        ; $78e6: $cb $a9
	ld   d, e                                        ; $78e8: $53
	inc  sp                                          ; $78e9: $33
	ld   b, l                                        ; $78ea: $45
	ld   d, l                                        ; $78eb: $55
	ld   [hl], a                                     ; $78ec: $77
	sbc  e                                           ; $78ed: $9b
	adc  $a9                                         ; $78ee: $ce $a9
	xor  b                                           ; $78f0: $a8
	xor  d                                           ; $78f1: $aa
	sbc  h                                           ; $78f2: $9c
	cp   e                                           ; $78f3: $bb
	ld   [hl], l                                     ; $78f4: $75
	ld   [hl-], a                                    ; $78f5: $32
	inc  h                                           ; $78f6: $24
	ld   b, l                                        ; $78f7: $45
	ld   d, [hl]                                     ; $78f8: $56
	sbc  d                                           ; $78f9: $9a
	cp   h                                           ; $78fa: $bc
	call z, $999a                                    ; $78fb: $cc $9a $99
	xor  d                                           ; $78fe: $aa
	jp   z, Jump_0a5_66a9                            ; $78ff: $ca $a9 $66

	inc  sp                                          ; $7902: $33
	ld   b, e                                        ; $7903: $43
	inc  [hl]                                        ; $7904: $34
	ld   h, a                                        ; $7905: $67
	sbc  h                                           ; $7906: $9c
	call c, $98ba                                    ; $7907: $dc $ba $98
	ld   a, d                                        ; $790a: $7a
	cp   d                                           ; $790b: $ba
	res  2, [hl]                                     ; $790c: $cb $96
	inc  [hl]                                        ; $790e: $34
	ld   [hl-], a                                    ; $790f: $32
	ld   b, h                                        ; $7910: $44
	ld   d, [hl]                                     ; $7911: $56
	ld   a, d                                        ; $7912: $7a
	cp   c                                           ; $7913: $b9
	cp   h                                           ; $7914: $bc
	xor  d                                           ; $7915: $aa
	sbc  e                                           ; $7916: $9b
	cp   b                                           ; $7917: $b8
	xor  e                                           ; $7918: $ab
	xor  d                                           ; $7919: $aa
	ld   d, a                                        ; $791a: $57
	ld   d, d                                        ; $791b: $52
	inc  [hl]                                        ; $791c: $34
	ld   d, h                                        ; $791d: $54
	ld   b, l                                        ; $791e: $45
	adc  c                                           ; $791f: $89
	xor  e                                           ; $7920: $ab
	jp   z, $aaa9                                    ; $7921: $ca $a9 $aa

	sbc  e                                           ; $7924: $9b
	cp   c                                           ; $7925: $b9
	xor  b                                           ; $7926: $a8
	ld   [hl], l                                     ; $7927: $75
	ld   b, l                                        ; $7928: $45
	ld   b, l                                        ; $7929: $45
	ld   d, l                                        ; $792a: $55
	ld   h, l                                        ; $792b: $65
	adc  b                                           ; $792c: $88
	sbc  e                                           ; $792d: $9b
	res  5, e                                        ; $792e: $cb $ab
	cp   c                                           ; $7930: $b9
	adc  d                                           ; $7931: $8a
	xor  c                                           ; $7932: $a9
	sbc  b                                           ; $7933: $98
	ld   [hl], l                                     ; $7934: $75
	ld   b, h                                        ; $7935: $44
	ld   b, h                                        ; $7936: $44
	ld   b, l                                        ; $7937: $45
	ld   d, l                                        ; $7938: $55
	ld   a, c                                        ; $7939: $79
	xor  h                                           ; $793a: $ac
	cp   h                                           ; $793b: $bc
	cp   d                                           ; $793c: $ba
	xor  c                                           ; $793d: $a9
	sbc  d                                           ; $793e: $9a
	xor  c                                           ; $793f: $a9
	xor  d                                           ; $7940: $aa
	halt                                             ; $7941: $76
	ld   d, h                                        ; $7942: $54
	ld   b, h                                        ; $7943: $44
	ld   d, [hl]                                     ; $7944: $56
	ld   d, [hl]                                     ; $7945: $56
	ld   a, b                                        ; $7946: $78
	adc  d                                           ; $7947: $8a
	xor  d                                           ; $7948: $aa
	cp   c                                           ; $7949: $b9
	cp   d                                           ; $794a: $ba
	adc  c                                           ; $794b: $89
	xor  d                                           ; $794c: $aa
	sbc  c                                           ; $794d: $99
	and  a                                           ; $794e: $a7
	ld   d, [hl]                                     ; $794f: $56
	ld   d, [hl]                                     ; $7950: $56
	ld   d, l                                        ; $7951: $55
	ld   h, l                                        ; $7952: $65
	ld   h, a                                        ; $7953: $67
	adc  b                                           ; $7954: $88
	xor  d                                           ; $7955: $aa
	sbc  d                                           ; $7956: $9a
	sbc  e                                           ; $7957: $9b
	xor  d                                           ; $7958: $aa
	xor  d                                           ; $7959: $aa
	xor  d                                           ; $795a: $aa
	sbc  b                                           ; $795b: $98
	add  [hl]                                        ; $795c: $86
	ld   h, [hl]                                     ; $795d: $66
	ld   h, [hl]                                     ; $795e: $66
	ld   d, [hl]                                     ; $795f: $56
	ld   h, [hl]                                     ; $7960: $66
	ld   h, [hl]                                     ; $7961: $66
	adc  c                                           ; $7962: $89
	adc  c                                           ; $7963: $89
	xor  d                                           ; $7964: $aa
	sbc  d                                           ; $7965: $9a
	sbc  d                                           ; $7966: $9a
	sbc  d                                           ; $7967: $9a
	xor  e                                           ; $7968: $ab
	xor  b                                           ; $7969: $a8
	adc  b                                           ; $796a: $88
	ld   [hl], l                                     ; $796b: $75
	ld   h, a                                        ; $796c: $67
	ld   h, [hl]                                     ; $796d: $66
	ld   [hl], a                                     ; $796e: $77
	halt                                             ; $796f: $76
	ld   a, b                                        ; $7970: $78
	ld   h, a                                        ; $7971: $67
	adc  d                                           ; $7972: $8a
	sbc  d                                           ; $7973: $9a

Jump_0a5_7974:
	xor  d                                           ; $7974: $aa
	sbc  c                                           ; $7975: $99
	sbc  c                                           ; $7976: $99
	sbc  c                                           ; $7977: $99
	sbc  c                                           ; $7978: $99
	ld   [hl], a                                     ; $7979: $77
	ld   [hl], a                                     ; $797a: $77
	ld   h, [hl]                                     ; $797b: $66
	ld   [hl], a                                     ; $797c: $77
	ld   h, a                                        ; $797d: $67
	ld   [hl], a                                     ; $797e: $77
	add  [hl]                                        ; $797f: $86
	ld   a, d                                        ; $7980: $7a
	adc  b                                           ; $7981: $88
	sbc  d                                           ; $7982: $9a
	and  a                                           ; $7983: $a7
	adc  d                                           ; $7984: $8a
	ld   a, b                                        ; $7985: $78
	adc  b                                           ; $7986: $88
	sbc  c                                           ; $7987: $99
	sbc  b                                           ; $7988: $98
	halt                                             ; $7989: $76
	ld   [hl], a                                     ; $798a: $77
	ld   [hl], a                                     ; $798b: $77
	adc  d                                           ; $798c: $8a
	ld   l, b                                        ; $798d: $68
	sub  [hl]                                        ; $798e: $96
	ld   a, b                                        ; $798f: $78
	add  a                                           ; $7990: $87
	sbc  b                                           ; $7991: $98
	sub  a                                           ; $7992: $97
	ld   a, c                                        ; $7993: $79
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	ld   a, c                                        ; $7996: $79
	sbc  c                                           ; $7997: $99
	sbc  b                                           ; $7998: $98
	sbc  b                                           ; $7999: $98
	adc  b                                           ; $799a: $88
	add  a                                           ; $799b: $87
	ld   a, b                                        ; $799c: $78
	ld   a, b                                        ; $799d: $78
	ld   a, b                                        ; $799e: $78
	add  a                                           ; $799f: $87
	ld   h, a                                        ; $79a0: $67
	sub  [hl]                                        ; $79a1: $96
	sbc  c                                           ; $79a2: $99
	sbc  c                                           ; $79a3: $99
	ld   l, c                                        ; $79a4: $69
	add  a                                           ; $79a5: $87
	sbc  c                                           ; $79a6: $99
	sbc  c                                           ; $79a7: $99
	ld   a, c                                        ; $79a8: $79
	sub  a                                           ; $79a9: $97
	add  [hl]                                        ; $79aa: $86
	sbc  c                                           ; $79ab: $99
	ld   l, b                                        ; $79ac: $68
	add  a                                           ; $79ad: $87
	add  a                                           ; $79ae: $87
	ld   [hl], a                                     ; $79af: $77
	ld   l, c                                        ; $79b0: $69
	add  a                                           ; $79b1: $87
	add  a                                           ; $79b2: $87
	add  a                                           ; $79b3: $87
	sbc  c                                           ; $79b4: $99
	ld   a, b                                        ; $79b5: $78
	adc  b                                           ; $79b6: $88
	adc  c                                           ; $79b7: $89
	ld   [hl], a                                     ; $79b8: $77
	adc  c                                           ; $79b9: $89
	adc  b                                           ; $79ba: $88
	adc  c                                           ; $79bb: $89
	halt                                             ; $79bc: $76
	sub  a                                           ; $79bd: $97
	adc  b                                           ; $79be: $88
	sbc  c                                           ; $79bf: $99
	ld   [hl], a                                     ; $79c0: $77
	add  a                                           ; $79c1: $87
	ld   a, b                                        ; $79c2: $78
	adc  b                                           ; $79c3: $88
	adc  c                                           ; $79c4: $89
	sbc  c                                           ; $79c5: $99
	sub  a                                           ; $79c6: $97
	adc  b                                           ; $79c7: $88
	ld   a, b                                        ; $79c8: $78
	adc  b                                           ; $79c9: $88
	ld   [hl], a                                     ; $79ca: $77
	sbc  c                                           ; $79cb: $99
	ld   a, b                                        ; $79cc: $78
	ld   [hl], a                                     ; $79cd: $77
	add  a                                           ; $79ce: $87
	sbc  b                                           ; $79cf: $98
	ld   a, c                                        ; $79d0: $79
	add  a                                           ; $79d1: $87
	ld   a, b                                        ; $79d2: $78
	sub  a                                           ; $79d3: $97
	ld   a, b                                        ; $79d4: $78
	ld   [hl], a                                     ; $79d5: $77
	ld   a, b                                        ; $79d6: $78
	add  a                                           ; $79d7: $87
	adc  b                                           ; $79d8: $88
	ld   a, b                                        ; $79d9: $78
	sbc  b                                           ; $79da: $98
	add  a                                           ; $79db: $87
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	ld   a, b                                        ; $79de: $78
	adc  b                                           ; $79df: $88
	add  a                                           ; $79e0: $87
	ld   a, c                                        ; $79e1: $79
	ld   a, b                                        ; $79e2: $78
	adc  b                                           ; $79e3: $88
	add  a                                           ; $79e4: $87
	adc  b                                           ; $79e5: $88
	ld   a, c                                        ; $79e6: $79
	add  a                                           ; $79e7: $87
	ld   a, b                                        ; $79e8: $78
	sub  a                                           ; $79e9: $97
	adc  c                                           ; $79ea: $89
	adc  b                                           ; $79eb: $88
	ld   a, b                                        ; $79ec: $78
	sub  a                                           ; $79ed: $97
	adc  c                                           ; $79ee: $89
	ld   [hl], a                                     ; $79ef: $77
	ld   [hl], a                                     ; $79f0: $77
	ld   a, b                                        ; $79f1: $78
	adc  b                                           ; $79f2: $88
	sbc  b                                           ; $79f3: $98
	add  a                                           ; $79f4: $87
	ld   a, b                                        ; $79f5: $78
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	sbc  b                                           ; $79f8: $98
	sub  a                                           ; $79f9: $97
	ld   a, b                                        ; $79fa: $78
	ld   a, c                                        ; $79fb: $79
	adc  b                                           ; $79fc: $88
	ld   a, b                                        ; $79fd: $78
	add  a                                           ; $79fe: $87
	adc  c                                           ; $79ff: $89
	add  a                                           ; $7a00: $87
	sbc  b                                           ; $7a01: $98
	adc  b                                           ; $7a02: $88
	ld   a, b                                        ; $7a03: $78
	sbc  b                                           ; $7a04: $98
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	ld   a, b                                        ; $7a07: $78
	adc  b                                           ; $7a08: $88
	add  a                                           ; $7a09: $87
	adc  b                                           ; $7a0a: $88
	ld   a, c                                        ; $7a0b: $79
	add  a                                           ; $7a0c: $87
	adc  b                                           ; $7a0d: $88
	add  a                                           ; $7a0e: $87
	adc  c                                           ; $7a0f: $89
	adc  b                                           ; $7a10: $88
	sbc  b                                           ; $7a11: $98
	adc  c                                           ; $7a12: $89
	adc  b                                           ; $7a13: $88
	ld   [hl], a                                     ; $7a14: $77
	sub  a                                           ; $7a15: $97
	adc  b                                           ; $7a16: $88
	add  a                                           ; $7a17: $87
	ld   a, c                                        ; $7a18: $79
	sbc  b                                           ; $7a19: $98
	add  a                                           ; $7a1a: $87
	ld   a, b                                        ; $7a1b: $78
	adc  b                                           ; $7a1c: $88
	add  a                                           ; $7a1d: $87
	adc  b                                           ; $7a1e: $88
	sbc  b                                           ; $7a1f: $98
	adc  b                                           ; $7a20: $88
	ld   a, b                                        ; $7a21: $78
	add  a                                           ; $7a22: $87
	adc  b                                           ; $7a23: $88
	adc  c                                           ; $7a24: $89
	adc  c                                           ; $7a25: $89
	sub  a                                           ; $7a26: $97
	adc  b                                           ; $7a27: $88
	ld   [hl], a                                     ; $7a28: $77
	sbc  b                                           ; $7a29: $98
	adc  b                                           ; $7a2a: $88
	sub  a                                           ; $7a2b: $97
	ld   a, c                                        ; $7a2c: $79
	add  a                                           ; $7a2d: $87
	adc  b                                           ; $7a2e: $88
	add  a                                           ; $7a2f: $87
	sbc  c                                           ; $7a30: $99
	ld   a, b                                        ; $7a31: $78
	add  a                                           ; $7a32: $87
	sbc  b                                           ; $7a33: $98
	sbc  b                                           ; $7a34: $98
	ld   a, b                                        ; $7a35: $78
	adc  b                                           ; $7a36: $88
	add  a                                           ; $7a37: $87
	adc  b                                           ; $7a38: $88
	ld   a, b                                        ; $7a39: $78
	ld   a, c                                        ; $7a3a: $79
	sub  a                                           ; $7a3b: $97
	adc  c                                           ; $7a3c: $89
	ld   a, b                                        ; $7a3d: $78
	sub  a                                           ; $7a3e: $97
	adc  b                                           ; $7a3f: $88
	ld   a, b                                        ; $7a40: $78
	ld   a, b                                        ; $7a41: $78
	add  a                                           ; $7a42: $87
	adc  b                                           ; $7a43: $88
	ld   a, c                                        ; $7a44: $79
	adc  b                                           ; $7a45: $88
	sbc  b                                           ; $7a46: $98
	ld   a, b                                        ; $7a47: $78
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	sbc  b                                           ; $7a4a: $98
	adc  c                                           ; $7a4b: $89
	adc  b                                           ; $7a4c: $88
	sbc  b                                           ; $7a4d: $98
	adc  b                                           ; $7a4e: $88
	add  a                                           ; $7a4f: $87
	adc  c                                           ; $7a50: $89
	ld   a, c                                        ; $7a51: $79
	ld   a, b                                        ; $7a52: $78
	sub  a                                           ; $7a53: $97
	sub  a                                           ; $7a54: $97
	ld   a, c                                        ; $7a55: $79
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	add  a                                           ; $7a58: $87
	adc  c                                           ; $7a59: $89
	adc  c                                           ; $7a5a: $89
	adc  c                                           ; $7a5b: $89
	add  a                                           ; $7a5c: $87
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	add  a                                           ; $7a60: $87
	sbc  c                                           ; $7a61: $99
	adc  b                                           ; $7a62: $88
	sub  a                                           ; $7a63: $97
	adc  b                                           ; $7a64: $88
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	sub  a                                           ; $7a68: $97
	adc  c                                           ; $7a69: $89
	adc  b                                           ; $7a6a: $88
	sbc  b                                           ; $7a6b: $98
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	sbc  b                                           ; $7a70: $98
	adc  c                                           ; $7a71: $89
	add  a                                           ; $7a72: $87
	sub  a                                           ; $7a73: $97
	adc  b                                           ; $7a74: $88
	ld   a, c                                        ; $7a75: $79
	adc  b                                           ; $7a76: $88
	sub  a                                           ; $7a77: $97
	adc  c                                           ; $7a78: $89
	ld   a, c                                        ; $7a79: $79
	adc  c                                           ; $7a7a: $89
	adc  b                                           ; $7a7b: $88
	sbc  b                                           ; $7a7c: $98
	adc  b                                           ; $7a7d: $88
	sub  a                                           ; $7a7e: $97
	sbc  c                                           ; $7a7f: $99
	ld   a, c                                        ; $7a80: $79
	adc  c                                           ; $7a81: $89
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	ld   a, b                                        ; $7a84: $78
	adc  b                                           ; $7a85: $88
	sub  a                                           ; $7a86: $97
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  c                                           ; $7a89: $89
	adc  b                                           ; $7a8a: $88
	sbc  b                                           ; $7a8b: $98
	sbc  b                                           ; $7a8c: $98
	adc  c                                           ; $7a8d: $89
	ld   a, b                                        ; $7a8e: $78
	adc  b                                           ; $7a8f: $88
	sbc  b                                           ; $7a90: $98
	adc  b                                           ; $7a91: $88
	ld   a, c                                        ; $7a92: $79
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	add  a                                           ; $7a96: $87
	adc  b                                           ; $7a97: $88
	sub  a                                           ; $7a98: $97
	adc  b                                           ; $7a99: $88
	ld   a, b                                        ; $7a9a: $78
	adc  b                                           ; $7a9b: $88
	adc  b                                           ; $7a9c: $88
	sbc  b                                           ; $7a9d: $98
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	adc  c                                           ; $7aa0: $89
	add  a                                           ; $7aa1: $87
	adc  c                                           ; $7aa2: $89
	adc  c                                           ; $7aa3: $89
	adc  c                                           ; $7aa4: $89
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  c                                           ; $7aa7: $89
	adc  b                                           ; $7aa8: $88
	sub  a                                           ; $7aa9: $97
	sub  a                                           ; $7aaa: $97
	sbc  b                                           ; $7aab: $98
	adc  c                                           ; $7aac: $89
	ld   a, b                                        ; $7aad: $78
	ld   a, c                                        ; $7aae: $79
	adc  b                                           ; $7aaf: $88
	sbc  b                                           ; $7ab0: $98
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	sbc  b                                           ; $7ab3: $98
	sbc  b                                           ; $7ab4: $98
	adc  b                                           ; $7ab5: $88
	sbc  b                                           ; $7ab6: $98
	adc  b                                           ; $7ab7: $88
	ld   a, b                                        ; $7ab8: $78
	adc  b                                           ; $7ab9: $88
	add  a                                           ; $7aba: $87
	sbc  c                                           ; $7abb: $99
	adc  b                                           ; $7abc: $88
	adc  c                                           ; $7abd: $89
	adc  b                                           ; $7abe: $88
	add  a                                           ; $7abf: $87
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	sbc  b                                           ; $7ac2: $98
	adc  c                                           ; $7ac3: $89
	adc  b                                           ; $7ac4: $88
	ld   a, c                                        ; $7ac5: $79
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	add  a                                           ; $7ac8: $87
	sbc  c                                           ; $7ac9: $99
	adc  b                                           ; $7aca: $88
	sub  a                                           ; $7acb: $97
	sub  a                                           ; $7acc: $97
	adc  b                                           ; $7acd: $88
	adc  c                                           ; $7ace: $89
	ld   a, b                                        ; $7acf: $78
	adc  c                                           ; $7ad0: $89
	adc  b                                           ; $7ad1: $88
	sbc  b                                           ; $7ad2: $98
	sbc  b                                           ; $7ad3: $98
	adc  b                                           ; $7ad4: $88
	adc  c                                           ; $7ad5: $89
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	sbc  b                                           ; $7ada: $98
	adc  b                                           ; $7adb: $88
	add  a                                           ; $7adc: $87
	adc  c                                           ; $7add: $89
	adc  c                                           ; $7ade: $89
	ld   a, b                                        ; $7adf: $78
	add  a                                           ; $7ae0: $87
	adc  c                                           ; $7ae1: $89
	sub  a                                           ; $7ae2: $97
	sbc  b                                           ; $7ae3: $98
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	ld   a, d                                        ; $7ae8: $7a
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	sub  a                                           ; $7aeb: $97
	sbc  b                                           ; $7aec: $98
	adc  c                                           ; $7aed: $89
	sbc  b                                           ; $7aee: $98
	ld   a, b                                        ; $7aef: $78
	add  a                                           ; $7af0: $87
	adc  b                                           ; $7af1: $88
	adc  c                                           ; $7af2: $89
	adc  b                                           ; $7af3: $88
	sub  a                                           ; $7af4: $97
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  c                                           ; $7af7: $89
	adc  b                                           ; $7af8: $88
	add  a                                           ; $7af9: $87
	adc  b                                           ; $7afa: $88
	sbc  b                                           ; $7afb: $98
	sbc  b                                           ; $7afc: $98
	ld   a, b                                        ; $7afd: $78
	adc  c                                           ; $7afe: $89
	ld   a, b                                        ; $7aff: $78
	sub  a                                           ; $7b00: $97
	adc  b                                           ; $7b01: $88
	ld   a, b                                        ; $7b02: $78
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  c                                           ; $7b05: $89
	sub  a                                           ; $7b06: $97
	and  a                                           ; $7b07: $a7
	sbc  b                                           ; $7b08: $98
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  c                                           ; $7b0b: $89
	ld   l, b                                        ; $7b0c: $68
	adc  d                                           ; $7b0d: $8a
	adc  b                                           ; $7b0e: $88
	sub  a                                           ; $7b0f: $97
	adc  b                                           ; $7b10: $88
	add  a                                           ; $7b11: $87
	sbc  b                                           ; $7b12: $98
	ld   a, b                                        ; $7b13: $78
	adc  b                                           ; $7b14: $88
	sub  a                                           ; $7b15: $97
	adc  b                                           ; $7b16: $88
	adc  c                                           ; $7b17: $89
	ld   a, c                                        ; $7b18: $79
	ld   a, c                                        ; $7b19: $79
	sbc  b                                           ; $7b1a: $98
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	ld   a, b                                        ; $7b1e: $78
	add  a                                           ; $7b1f: $87
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
	sub  a                                           ; $7b22: $97
	sbc  b                                           ; $7b23: $98
	ld   a, d                                        ; $7b24: $7a
	add  a                                           ; $7b25: $87
	sbc  b                                           ; $7b26: $98
	add  a                                           ; $7b27: $87
	sbc  b                                           ; $7b28: $98
	adc  c                                           ; $7b29: $89
	ld   l, d                                        ; $7b2a: $6a
	ld   a, c                                        ; $7b2b: $79
	ld   a, c                                        ; $7b2c: $79
	ld   a, b                                        ; $7b2d: $78
	add  a                                           ; $7b2e: $87
	add  a                                           ; $7b2f: $87
	and  [hl]                                        ; $7b30: $a6
	and  a                                           ; $7b31: $a7
	ld   a, b                                        ; $7b32: $78
	ld   a, b                                        ; $7b33: $78
	sbc  c                                           ; $7b34: $99
	ld   a, d                                        ; $7b35: $7a
	ld   l, c                                        ; $7b36: $69
	ld   [hl], a                                     ; $7b37: $77
	and  [hl]                                        ; $7b38: $a6
	sbc  c                                           ; $7b39: $99
	ld   a, c                                        ; $7b3a: $79
	ld   l, b                                        ; $7b3b: $68
	add  a                                           ; $7b3c: $87
	sub  a                                           ; $7b3d: $97
	adc  c                                           ; $7b3e: $89
	adc  b                                           ; $7b3f: $88
	ld   a, c                                        ; $7b40: $79
	add  [hl]                                        ; $7b41: $86
	or   a                                           ; $7b42: $b7
	ld   a, b                                        ; $7b43: $78
	adc  c                                           ; $7b44: $89
	ld   e, d                                        ; $7b45: $5a
	adc  c                                           ; $7b46: $89
	ld   h, a                                        ; $7b47: $67
	or   [hl]                                        ; $7b48: $b6
	add  a                                           ; $7b49: $87
	jp   z, $943b                                    ; $7b4a: $ca $3b $94

	adc  d                                           ; $7b4d: $8a
	sub  l                                           ; $7b4e: $95
	adc  d                                           ; $7b4f: $8a
	ld   h, a                                        ; $7b50: $67
	ld   a, d                                        ; $7b51: $7a
	ld   a, b                                        ; $7b52: $78
	or   a                                           ; $7b53: $b7
	sbc  b                                           ; $7b54: $98
	ld   a, c                                        ; $7b55: $79
	and  l                                           ; $7b56: $a5
	xor  b                                           ; $7b57: $a8
	ld   a, b                                        ; $7b58: $78
	ld   a, d                                        ; $7b59: $7a
	ld   [hl], a                                     ; $7b5a: $77
	ld   l, d                                        ; $7b5b: $6a
	add  [hl]                                        ; $7b5c: $86
	and  a                                           ; $7b5d: $a7
	add  [hl]                                        ; $7b5e: $86
	sbc  c                                           ; $7b5f: $99
	adc  c                                           ; $7b60: $89
	ld   a, c                                        ; $7b61: $79
	ld   l, c                                        ; $7b62: $69
	ld   a, b                                        ; $7b63: $78
	adc  c                                           ; $7b64: $89
	adc  c                                           ; $7b65: $89
	and  a                                           ; $7b66: $a7
	add  a                                           ; $7b67: $87
	sub  a                                           ; $7b68: $97
	sbc  b                                           ; $7b69: $98
	ld   a, b                                        ; $7b6a: $78
	adc  b                                           ; $7b6b: $88
	ld   l, c                                        ; $7b6c: $69
	adc  c                                           ; $7b6d: $89
	ld   l, c                                        ; $7b6e: $69
	and  a                                           ; $7b6f: $a7
	adc  c                                           ; $7b70: $89
	ld   [hl], a                                     ; $7b71: $77
	sub  a                                           ; $7b72: $97
	sub  a                                           ; $7b73: $97
	sub  a                                           ; $7b74: $97
	ld   a, c                                        ; $7b75: $79
	ld   l, c                                        ; $7b76: $69
	ld   l, d                                        ; $7b77: $6a
	and  a                                           ; $7b78: $a7
	ld   a, b                                        ; $7b79: $78
	add  [hl]                                        ; $7b7a: $86
	ld   a, c                                        ; $7b7b: $79
	sub  [hl]                                        ; $7b7c: $96
	and  a                                           ; $7b7d: $a7
	sub  a                                           ; $7b7e: $97
	ld   a, d                                        ; $7b7f: $7a
	ld   l, c                                        ; $7b80: $69
	ld   a, b                                        ; $7b81: $78
	halt                                             ; $7b82: $76
	adc  d                                           ; $7b83: $8a
	add  a                                           ; $7b84: $87
	add  a                                           ; $7b85: $87
	add  a                                           ; $7b86: $87
	ld   a, d                                        ; $7b87: $7a
	add  a                                           ; $7b88: $87
	adc  b                                           ; $7b89: $88
	adc  c                                           ; $7b8a: $89
	ld   a, c                                        ; $7b8b: $79
	adc  b                                           ; $7b8c: $88
	xor  d                                           ; $7b8d: $aa
	ld   e, c                                        ; $7b8e: $59
	halt                                             ; $7b8f: $76
	halt                                             ; $7b90: $76
	add  [hl]                                        ; $7b91: $86
	ld   a, d                                        ; $7b92: $7a
	sub  [hl]                                        ; $7b93: $96
	xor  b                                           ; $7b94: $a8
	add  a                                           ; $7b95: $87
	ld   e, d                                        ; $7b96: $5a
	halt                                             ; $7b97: $76
	adc  c                                           ; $7b98: $89
	adc  b                                           ; $7b99: $88
	adc  c                                           ; $7b9a: $89
	ld   [hl], a                                     ; $7b9b: $77
	and  a                                           ; $7b9c: $a7
	ld   a, c                                        ; $7b9d: $79
	sbc  c                                           ; $7b9e: $99
	sub  a                                           ; $7b9f: $97
	sbc  b                                           ; $7ba0: $98
	ld   a, b                                        ; $7ba1: $78
	ld   [hl], a                                     ; $7ba2: $77
	ld   a, c                                        ; $7ba3: $79
	sub  [hl]                                        ; $7ba4: $96
	ld   a, c                                        ; $7ba5: $79
	halt                                             ; $7ba6: $76
	ld   a, b                                        ; $7ba7: $78
	sub  a                                           ; $7ba8: $97
	sbc  c                                           ; $7ba9: $99
	halt                                             ; $7baa: $76
	adc  d                                           ; $7bab: $8a
	adc  b                                           ; $7bac: $88
	ld   a, c                                        ; $7bad: $79
	sub  [hl]                                        ; $7bae: $96
	sbc  b                                           ; $7baf: $98
	adc  c                                           ; $7bb0: $89
	ld   a, b                                        ; $7bb1: $78
	ld   [hl], a                                     ; $7bb2: $77
	sub  a                                           ; $7bb3: $97
	ld   a, c                                        ; $7bb4: $79
	add  a                                           ; $7bb5: $87
	ld   [hl], a                                     ; $7bb6: $77
	ld   h, [hl]                                     ; $7bb7: $66
	ld   [hl], a                                     ; $7bb8: $77
	sub  [hl]                                        ; $7bb9: $96
	adc  c                                           ; $7bba: $89
	ld   a, b                                        ; $7bbb: $78
	ld   a, b                                        ; $7bbc: $78
	sbc  c                                           ; $7bbd: $99
	sbc  e                                           ; $7bbe: $9b
	xor  d                                           ; $7bbf: $aa
	sbc  b                                           ; $7bc0: $98
	cp   b                                           ; $7bc1: $b8
	ld   a, b                                        ; $7bc2: $78
	sub  a                                           ; $7bc3: $97
	ld   h, [hl]                                     ; $7bc4: $66
	ld   d, l                                        ; $7bc5: $55
	inc  [hl]                                        ; $7bc6: $34
	inc  sp                                          ; $7bc7: $33
	inc  [hl]                                        ; $7bc8: $34
	ld   d, l                                        ; $7bc9: $55
	adc  e                                           ; $7bca: $8b
	call $eeef                                       ; $7bcb: $cd $ef $ee
	xor  $bc                                         ; $7bce: $ee $bc
	jp   z, Jump_0a5_4397                            ; $7bd0: $ca $97 $43

	ld   de, $1111                                   ; $7bd3: $11 $11 $11
	inc  d                                           ; $7bd6: $14
	halt                                             ; $7bd7: $76
	xor  e                                           ; $7bd8: $ab
	rst  $38                                         ; $7bd9: $ff
	rst  $38                                         ; $7bda: $ff
	rst  $38                                         ; $7bdb: $ff
	rst  $38                                         ; $7bdc: $ff
	rst  $38                                         ; $7bdd: $ff
	db   $db                                         ; $7bde: $db
	sub  [hl]                                        ; $7bdf: $96
	ld   hl, $1111                                   ; $7be0: $21 $11 $11
	ld   de, $9b16                                   ; $7be3: $11 $16 $9b
	rst  JumpTable                                         ; $7be6: $df
	rst  $38                                         ; $7be7: $ff
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	db   $ec                                         ; $7bea: $ec
	cp   $a9                                         ; $7beb: $fe $a9
	ld   [hl], l                                     ; $7bed: $75
	ld   de, $1111                                   ; $7bee: $11 $11 $11
	ld   de, $be45                                   ; $7bf1: $11 $45 $be
	rst  $28                                         ; $7bf4: $ef
	rst  $38                                         ; $7bf5: $ff
	rst  $38                                         ; $7bf6: $ff
	rst  $38                                         ; $7bf7: $ff
	xor  $fc                                         ; $7bf8: $ee $fc
	or   a                                           ; $7bfa: $b7
	ld   d, d                                        ; $7bfb: $52
	ld   de, $1111                                   ; $7bfc: $11 $11 $11
	ld   de, $df59                                   ; $7bff: $11 $59 $df
	rst  $38                                         ; $7c02: $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	rst  $28                                         ; $7c05: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c06: $cf
	ei                                               ; $7c07: $fb
	sub  l                                           ; $7c08: $95
	ld   sp, $1111                                   ; $7c09: $31 $11 $11
	ld   de, $8d14                                   ; $7c0c: $11 $14 $8d
	rst  $38                                         ; $7c0f: $ff
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	db   $fd                                         ; $7c12: $fd
	db   $ec                                         ; $7c13: $ec
	cp   a                                           ; $7c14: $bf
	ld   sp, hl                                      ; $7c15: $f9
	ld   h, l                                        ; $7c16: $65
	ld   hl, $1111                                   ; $7c17: $21 $11 $11
	ld   de, $bf19                                   ; $7c1a: $11 $19 $bf
	rst  $38                                         ; $7c1d: $ff
	rst  $38                                         ; $7c1e: $ff
	db   $fd                                         ; $7c1f: $fd
	call z, $fffd                                    ; $7c20: $cc $fd $ff
	rst  $20                                         ; $7c23: $e7
	ld   sp, $1111                                   ; $7c24: $31 $11 $11
	ld   de, $8c21                                   ; $7c27: $11 $21 $8c
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $38                                         ; $7c2c: $ff
	ret                                              ; $7c2d: $c9


	cp   [hl]                                        ; $7c2e: $be
	sbc  $ff                                         ; $7c2f: $de $ff
	add  c                                           ; $7c31: $81
	ld   de, $1111                                   ; $7c32: $11 $11 $11
	dec  d                                           ; $7c35: $15
	dec  d                                           ; $7c36: $15
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	rst  $38                                         ; $7c39: $ff
	ld   hl, sp-$76                                  ; $7c3a: $f8 $8a
	rst  $38                                         ; $7c3c: $ff
	rst  JumpTable                                         ; $7c3d: $df
	ld   hl, sp+$11                                  ; $7c3e: $f8 $11
	ld   de, $1111                                   ; $7c40: $11 $11 $11
	inc  d                                           ; $7c43: $14
	ld   e, a                                        ; $7c44: $5f
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	rst  $38                                         ; $7c47: $ff
	sub  [hl]                                        ; $7c48: $96
	ld   a, l                                        ; $7c49: $7d
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	sub  c                                           ; $7c4c: $91
	ld   de, $1111                                   ; $7c4d: $11 $11 $11
	ld   de, $ff95                                   ; $7c50: $11 $95 $ff
	rst  $38                                         ; $7c53: $ff
	rst  JumpTable                                         ; $7c54: $df
	rst  $30                                         ; $7c55: $f7
	ld   b, [hl]                                     ; $7c56: $46
	rst  $38                                         ; $7c57: $ff
	rst  $38                                         ; $7c58: $ff
	ld   hl, sp+$11                                  ; $7c59: $f8 $11
	ld   de, $1111                                   ; $7c5b: $11 $11 $11
	ld   c, e                                        ; $7c5e: $4b
	adc  a                                           ; $7c5f: $8f
	rst  $38                                         ; $7c60: $ff
	ld   a, [$56cc]                                  ; $7c61: $fa $cc $56
	ld   e, a                                        ; $7c64: $5f
	rst  $38                                         ; $7c65: $ff
	cp   $51                                         ; $7c66: $fe $51
	ld   de, $1131                                   ; $7c68: $11 $31 $11
	add  hl, de                                      ; $7c6b: $19
	sbc  $ff                                         ; $7c6c: $de $ff
	rst  $38                                         ; $7c6e: $ff
	ld   e, c                                        ; $7c6f: $59
	ld   h, l                                        ; $7c70: $65
	ld   e, b                                        ; $7c71: $58
	rst  $38                                         ; $7c72: $ff
	rst  $38                                         ; $7c73: $ff
	and  d                                           ; $7c74: $a2
	ld   de, $1117                                   ; $7c75: $11 $17 $11
	ld   de, $ffef                                   ; $7c78: $11 $ef $ff
	rst  $38                                         ; $7c7b: $ff
	jp   nz, Jump_0a5_7974                           ; $7c7c: $c2 $74 $79

	rst  $28                                         ; $7c7f: $ef
	rst  $38                                         ; $7c80: $ff
	db   $e4                                         ; $7c81: $e4
	ld   de, $b116                                   ; $7c82: $11 $16 $b1
	ld   de, $ff1f                                   ; $7c85: $11 $1f $ff
	rst  $38                                         ; $7c88: $ff
	rst  $30                                         ; $7c89: $f7
	ld   de, $cf4a                                   ; $7c8a: $11 $4a $cf
	rst  $38                                         ; $7c8d: $ff
	ld   a, [$1111]                                  ; $7c8e: $fa $11 $11
	call $1111                                       ; $7c91: $cd $11 $11
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	ld   sp, $ef15                                   ; $7c97: $31 $15 $ef
	rst  $38                                         ; $7c9a: $ff
	rst  $38                                         ; $7c9b: $ff
	ld   b, c                                        ; $7c9c: $41
	ld   de, $619f                                   ; $7c9d: $11 $9f $61
	ld   de, $ffdf                                   ; $7ca0: $11 $df $ff
	rst  $38                                         ; $7ca3: $ff
	ld   h, c                                        ; $7ca4: $61
	ld   de, $ffdf                                   ; $7ca5: $11 $df $ff
	rst  $38                                         ; $7ca8: $ff
	sub  c                                           ; $7ca9: $91
	ld   de, $f17f                                   ; $7caa: $11 $7f $f1
	ld   de, $ff1f                                   ; $7cad: $11 $1f $ff
	rst  $38                                         ; $7cb0: $ff
	push af                                          ; $7cb1: $f5
	ld   de, $ff3f                                   ; $7cb2: $11 $3f $ff
	rst  $38                                         ; $7cb5: $ff
	pop  af                                          ; $7cb6: $f1
	ld   de, $fe1c                                   ; $7cb7: $11 $1c $fe
	ld   de, rAUD1ENV                                   ; $7cba: $11 $12 $ff
	rst  $38                                         ; $7cbd: $ff
	rst  $30                                         ; $7cbe: $f7
	ld   de, $ff1d                                   ; $7cbf: $11 $1d $ff
	rst  $38                                         ; $7cc2: $ff
	and  $11                                         ; $7cc3: $e6 $11
	ld   d, $ff                                      ; $7cc5: $16 $ff
	ld   d, c                                        ; $7cc7: $51
	ld   de, $ffff                                   ; $7cc8: $11 $ff $ff
	rst  $30                                         ; $7ccb: $f7
	ld   de, $ff17                                   ; $7ccc: $11 $17 $ff
	rst  $38                                         ; $7ccf: $ff
	rst  $20                                         ; $7cd0: $e7
	ld   de, rAUD1LEN                                   ; $7cd1: $11 $11 $ff
	pop  af                                          ; $7cd4: $f1
	ld   de, $ff5f                                   ; $7cd5: $11 $5f $ff
	db   $fc                                         ; $7cd8: $fc
	ld   d, c                                        ; $7cd9: $51
	ld   de, $ffff                                   ; $7cda: $11 $ff $ff
	ld   sp, hl                                      ; $7cdd: $f9
	ld   de, $cf11                                   ; $7cde: $11 $11 $cf
	pop  af                                          ; $7ce1: $f1
	ld   de, $ff1f                                   ; $7ce2: $11 $1f $ff
	ld   a, [$1121]                                  ; $7ce5: $fa $21 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ce8: $cf
	rst  $38                                         ; $7ce9: $ff
	ld   sp, hl                                      ; $7cea: $f9
	ld   de, $af11                                   ; $7ceb: $11 $11 $af
	ld   hl, sp+$11                                  ; $7cee: $f8 $11
	rra                                              ; $7cf0: $1f
	rst  $38                                         ; $7cf1: $ff
	ld   a, [$1121]                                  ; $7cf2: $fa $21 $11
	sbc  a                                           ; $7cf5: $9f
	rst  $38                                         ; $7cf6: $ff
	ld   a, [$1111]                                  ; $7cf7: $fa $11 $11
	adc  a                                           ; $7cfa: $8f
	ei                                               ; $7cfb: $fb
	ld   de, $ff1f                                   ; $7cfc: $11 $1f $ff
	ld   hl, sp+$11                                  ; $7cff: $f8 $11
	ld   de, $ffaf                                   ; $7d01: $11 $af $ff
	ld   sp, hl                                      ; $7d04: $f9
	ld   de, $af11                                   ; $7d05: $11 $11 $af
	ld   hl, sp+$11                                  ; $7d08: $f8 $11
	rra                                              ; $7d0a: $1f
	rst  $38                                         ; $7d0b: $ff
	ld   a, [$1111]                                  ; $7d0c: $fa $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d0f: $cf
	rst  $38                                         ; $7d10: $ff
	ld   hl, sp+$11                                  ; $7d11: $f8 $11
	ld   de, $f4ef                                   ; $7d13: $11 $ef $f4
	ld   de, $ff1f                                   ; $7d16: $11 $1f $ff
	or   $11                                         ; $7d19: $f6 $11
	inc  d                                           ; $7d1b: $14
	rst  $38                                         ; $7d1c: $ff
	rst  $38                                         ; $7d1d: $ff
	db   $f4                                         ; $7d1e: $f4
	ld   de, $ff15                                   ; $7d1f: $11 $15 $ff
	pop  af                                          ; $7d22: $f1
	ld   de, $ff1f                                   ; $7d23: $11 $1f $ff
	pop  af                                          ; $7d26: $f1
	ld   de, $ff19                                   ; $7d27: $11 $19 $ff
	rst  $38                                         ; $7d2a: $ff
	pop  af                                          ; $7d2b: $f1
	ld   de, $ff17                                   ; $7d2c: $11 $17 $ff
	sub  c                                           ; $7d2f: $91
	ld   de, $ffff                                   ; $7d30: $11 $ff $ff
	ld   [hl], c                                     ; $7d33: $71
	ld   de, $ff2f                                   ; $7d34: $11 $2f $ff
	rst  $38                                         ; $7d37: $ff
	ld   [hl], c                                     ; $7d38: $71
	ld   de, $fd5f                                   ; $7d39: $11 $5f $fd
	ld   de, rAUD1LEN                                   ; $7d3c: $11 $11 $ff
	rst  $38                                         ; $7d3f: $ff
	ld   de, $8f11                                   ; $7d40: $11 $11 $8f
	rst  $38                                         ; $7d43: $ff
	db   $fd                                         ; $7d44: $fd
	ld   de, $bf11                                   ; $7d45: $11 $11 $bf
	db   $f4                                         ; $7d48: $f4
	ld   de, $ff1f                                   ; $7d49: $11 $1f $ff
	db   $f4                                         ; $7d4c: $f4
	ld   de, $ff16                                   ; $7d4d: $11 $16 $ff
	rst  $38                                         ; $7d50: $ff
	push af                                          ; $7d51: $f5
	ld   de, $ff1a                                   ; $7d52: $11 $1a $ff
	add  c                                           ; $7d55: $81
	ld   de, $ffaf                                   ; $7d56: $11 $af $ff
	pop  bc                                          ; $7d59: $c1
	ld   de, $ff3f                                   ; $7d5a: $11 $3f $ff
	rst  $38                                         ; $7d5d: $ff
	add  c                                           ; $7d5e: $81
	ld   de, $fd5f                                   ; $7d5f: $11 $5f $fd
	ld   de, rAUD1ENV                                   ; $7d62: $11 $12 $ff
	rst  $38                                         ; $7d65: $ff
	ld   de, rAUD1LOW                                   ; $7d66: $11 $13 $ff
	rst  $38                                         ; $7d69: $ff
	ld   hl, sp+$11                                  ; $7d6a: $f8 $11
	inc  de                                          ; $7d6c: $13
	rst  $38                                         ; $7d6d: $ff
	pop  af                                          ; $7d6e: $f1
	ld   de, $ff1f                                   ; $7d6f: $11 $1f $ff
	pop  af                                          ; $7d72: $f1
	ld   de, $ff3f                                   ; $7d73: $11 $3f $ff
	rst  $38                                         ; $7d76: $ff
	and  c                                           ; $7d77: $a1
	ld   de, $ff2f                                   ; $7d78: $11 $2f $ff
	ld   de, rAUD1LEN                                   ; $7d7b: $11 $11 $ff
	rst  $38                                         ; $7d7e: $ff
	ld   de, rAUD1LOW                                   ; $7d7f: $11 $13 $ff
	rst  $38                                         ; $7d82: $ff
	ei                                               ; $7d83: $fb
	ld   hl, $bf11                                   ; $7d84: $21 $11 $bf
	pop  af                                          ; $7d87: $f1
	ld   de, $ff1f                                   ; $7d88: $11 $1f $ff
	pop  af                                          ; $7d8b: $f1
	ld   de, $ff3f                                   ; $7d8c: $11 $3f $ff
	rst  $38                                         ; $7d8f: $ff
	add  c                                           ; $7d90: $81
	ld   de, $ff1c                                   ; $7d91: $11 $1c $ff
	ld   hl, rAUD1LEN                                   ; $7d94: $21 $11 $ff
	rst  $38                                         ; $7d97: $ff
	ld   de, $ff15                                   ; $7d98: $11 $15 $ff
	rst  $38                                         ; $7d9b: $ff
	ld   sp, hl                                      ; $7d9c: $f9
	ld   de, $df11                                   ; $7d9d: $11 $11 $df
	pop  af                                          ; $7da0: $f1
	ld   de, $ff1f                                   ; $7da1: $11 $1f $ff
	pop  af                                          ; $7da4: $f1
	ld   de, $ff7f                                   ; $7da5: $11 $7f $ff
	rst  $38                                         ; $7da8: $ff
	ld   h, c                                        ; $7da9: $61
	ld   de, $ff2f                                   ; $7daa: $11 $2f $ff
	ld   de, rAUD1HIGH                                   ; $7dad: $11 $14 $ff
	ei                                               ; $7db0: $fb
	ld   de, $ff1a                                   ; $7db1: $11 $1a $ff
	rst  $38                                         ; $7db4: $ff
	push hl                                          ; $7db5: $e5
	ld   de, rAUD1ENV                                   ; $7db6: $11 $12 $ff
	pop  de                                          ; $7db9: $d1
	ld   de, $ff8f                                   ; $7dba: $11 $8f $ff
	ld   h, c                                        ; $7dbd: $61
	ld   de, $ffef                                   ; $7dbe: $11 $ef $ff
	ld   sp, hl                                      ; $7dc1: $f9
	ld   sp, $4f11                                   ; $7dc2: $31 $11 $4f
	ld   a, [$1d11]                                  ; $7dc5: $fa $11 $1d
	rst  $38                                         ; $7dc8: $ff
	pop  af                                          ; $7dc9: $f1
	ld   de, $ff1f                                   ; $7dca: $11 $1f $ff
	rst  $38                                         ; $7dcd: $ff
	ld   d, c                                        ; $7dce: $51
	ld   de, $ff18                                   ; $7dcf: $11 $18 $ff
	ld   d, c                                        ; $7dd2: $51
	ld   de, $ffff                                   ; $7dd3: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7dd6: $11 $11 $ff
	rst  $38                                         ; $7dd9: $ff
	or   c                                           ; $7dda: $b1
	ld   de, $df11                                   ; $7ddb: $11 $11 $df
	pop  af                                          ; $7dde: $f1
	ld   de, $ff1f                                   ; $7ddf: $11 $1f $ff
	pop  af                                          ; $7de2: $f1
	ld   de, $ff9f                                   ; $7de3: $11 $9f $ff
	push af                                          ; $7de6: $f5
	ld   de, $1f11                                   ; $7de7: $11 $11 $1f
	rst  $38                                         ; $7dea: $ff
	ld   de, $ff18                                   ; $7deb: $11 $18 $ff
	di                                               ; $7dee: $f3
	ld   de, $ff1f                                   ; $7def: $11 $1f $ff
	ei                                               ; $7df2: $fb
	ld   de, $1611                                   ; $7df3: $11 $11 $16
	rst  $38                                         ; $7df6: $ff
	ld   [hl], c                                     ; $7df7: $71
	ld   de, $ffff                                   ; $7df8: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7dfb: $11 $11 $ff
	rst  $38                                         ; $7dfe: $ff
	ld   [hl], c                                     ; $7dff: $71
	ld   de, $df11                                   ; $7e00: $11 $11 $df
	pop  hl                                          ; $7e03: $e1
	ld   de, $ff7f                                   ; $7e04: $11 $7f $ff
	add  c                                           ; $7e07: $81
	ld   de, $ffef                                   ; $7e08: $11 $ef $ff
	pop  de                                          ; $7e0b: $d1
	ld   de, $5f11                                   ; $7e0c: $11 $11 $5f
	di                                               ; $7e0f: $f3
	ld   de, $ff1f                                   ; $7e10: $11 $1f $ff
	pop  af                                          ; $7e13: $f1
	ld   de, $ff1f                                   ; $7e14: $11 $1f $ff
	db   $f4                                         ; $7e17: $f4
	ld   de, $3e11                                   ; $7e18: $11 $11 $3e
	ld   a, [$1c11]                                  ; $7e1b: $fa $11 $1c
	rst  $38                                         ; $7e1e: $ff
	di                                               ; $7e1f: $f3
	ld   de, $ff1f                                   ; $7e20: $11 $1f $ff
	ld   sp, hl                                      ; $7e23: $f9
	ld   de, $2811                                   ; $7e24: $11 $11 $28
	db   $fc                                         ; $7e27: $fc
	ld   de, $ff16                                   ; $7e28: $11 $16 $ff
	cp   $11                                         ; $7e2b: $fe $11
	add  hl, de                                      ; $7e2d: $19
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	ld   de, $3611                                   ; $7e30: $11 $11 $36
	cp   $11                                         ; $7e33: $fe $11
	inc  d                                           ; $7e35: $14
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	ld   de, rAUD1LOW                                   ; $7e38: $11 $13 $ff
	rst  $38                                         ; $7e3b: $ff
	ld   de, $1711                                   ; $7e3c: $11 $11 $17
	rst  $38                                         ; $7e3f: $ff
	ld   d, c                                        ; $7e40: $51
	ld   de, $ffff                                   ; $7e41: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7e44: $11 $11 $ff
	rst  $38                                         ; $7e47: $ff
	ld   b, c                                        ; $7e48: $41
	ld   de, $cf16                                   ; $7e49: $11 $16 $cf
	add  c                                           ; $7e4c: $81
	ld   de, $ffef                                   ; $7e4d: $11 $ef $ff
	ld   d, c                                        ; $7e50: $51
	ld   de, $ffff                                   ; $7e51: $11 $ff $ff
	add  c                                           ; $7e54: $81
	ld   de, $ef17                                   ; $7e55: $11 $17 $ef
	pop  bc                                          ; $7e58: $c1
	ld   de, $ff9f                                   ; $7e59: $11 $9f $ff
	pop  hl                                          ; $7e5c: $e1
	ld   de, $ff9f                                   ; $7e5d: $11 $9f $ff
	pop  af                                          ; $7e60: $f1
	ld   de, $af14                                   ; $7e61: $11 $14 $af
	pop  af                                          ; $7e64: $f1
	ld   de, $ff4f                                   ; $7e65: $11 $4f $ff
	pop  af                                          ; $7e68: $f1
	ld   de, $ff3f                                   ; $7e69: $11 $3f $ff
	pop  af                                          ; $7e6c: $f1
	ld   de, $af13                                   ; $7e6d: $11 $13 $af
	push af                                          ; $7e70: $f5
	ld   de, $ff1f                                   ; $7e71: $11 $1f $ff
	pop  af                                          ; $7e74: $f1
	ld   de, $ff1f                                   ; $7e75: $11 $1f $ff
	di                                               ; $7e78: $f3
	ld   de, $9f11                                   ; $7e79: $11 $11 $9f
	ld   sp, hl                                      ; $7e7c: $f9
	ld   de, $ff1c                                   ; $7e7d: $11 $1c $ff
	rst  $30                                         ; $7e80: $f7
	ld   de, $ff1f                                   ; $7e81: $11 $1f $ff
	ei                                               ; $7e84: $fb
	ld   de, $9f11                                   ; $7e85: $11 $11 $9f
	cp   $11                                         ; $7e88: $fe $11
	ld   d, $ff                                      ; $7e8a: $16 $ff
	rst  $38                                         ; $7e8c: $ff
	ld   de, rAUD1LOW                                   ; $7e8d: $11 $13 $ff
	rst  $38                                         ; $7e90: $ff
	ld   de, $5d11                                   ; $7e91: $11 $11 $5d
	rst  $38                                         ; $7e94: $ff
	ld   d, c                                        ; $7e95: $51
	ld   de, $ffff                                   ; $7e96: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7e99: $11 $11 $ff
	rst  $38                                         ; $7e9c: $ff
	ld   b, c                                        ; $7e9d: $41
	ld   de, $ff1b                                   ; $7e9e: $11 $1b $ff
	or   c                                           ; $7ea1: $b1
	ld   de, $ff9f                                   ; $7ea2: $11 $9f $ff
	or   c                                           ; $7ea5: $b1
	ld   de, $ff9f                                   ; $7ea6: $11 $9f $ff
	pop  af                                          ; $7ea9: $f1
	ld   de, $ff16                                   ; $7eaa: $11 $16 $ff
	or   $11                                         ; $7ead: $f6 $11
	dec  e                                           ; $7eaf: $1d
	rst  $38                                         ; $7eb0: $ff
	pop  af                                          ; $7eb1: $f1
	ld   de, $ff1f                                   ; $7eb2: $11 $1f $ff
	ld   sp, hl                                      ; $7eb5: $f9
	ld   de, $bf11                                   ; $7eb6: $11 $11 $bf
	cp   $11                                         ; $7eb9: $fe $11
	ld   de, $ffff                                   ; $7ebb: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7ebe: $11 $11 $ff
	rst  $38                                         ; $7ec1: $ff
	add  c                                           ; $7ec2: $81
	ld   de, $ff3b                                   ; $7ec3: $11 $3b $ff
	pop  bc                                          ; $7ec6: $c1
	ld   de, $ff1f                                   ; $7ec7: $11 $1f $ff
	pop  af                                          ; $7eca: $f1
	ld   de, $ff1f                                   ; $7ecb: $11 $1f $ff
	db   $fc                                         ; $7ece: $fc
	ld   de, $8f12                                   ; $7ecf: $11 $12 $8f
	rst  $38                                         ; $7ed2: $ff
	add  c                                           ; $7ed3: $81
	ld   de, $ff6f                                   ; $7ed4: $11 $6f $ff
	pop  af                                          ; $7ed7: $f1
	ld   de, $ff1f                                   ; $7ed8: $11 $1f $ff
	ldh  a, [c]                                      ; $7edb: $f2
	ld   de, $df13                                   ; $7edc: $11 $13 $df
	rst  $38                                         ; $7edf: $ff
	ld   [hl], c                                     ; $7ee0: $71
	ld   de, $ff2f                                   ; $7ee1: $11 $2f $ff
	pop  af                                          ; $7ee4: $f1
	ld   de, $ff3d                                   ; $7ee5: $11 $3d $ff
	ld   a, [$3374]                                  ; $7ee8: $fa $74 $33
	ld   e, d                                        ; $7eeb: $5a
	rst  $38                                         ; $7eec: $ff
	ld   hl, sp+$11                                  ; $7eed: $f8 $11
	ld   de, $ffff                                   ; $7eef: $11 $ff $ff
	ld   de, $7f11                                   ; $7ef2: $11 $11 $7f
	rst  $38                                         ; $7ef5: $ff
	pop  af                                          ; $7ef6: $f1
	ld   de, $ef16                                   ; $7ef7: $11 $16 $ef
	rst  $38                                         ; $7efa: $ff
	pop  af                                          ; $7efb: $f1
	ld   de, $ff17                                   ; $7efc: $11 $17 $ff
	rst  $38                                         ; $7eff: $ff
	ld   de, rAUD1LEN                                   ; $7f00: $11 $11 $ff
	rst  $38                                         ; $7f03: $ff
	ld   de, $ce13                                   ; $7f04: $11 $13 $ce
	cp   d                                           ; $7f07: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f08: $cf
	ld   hl, sp+$11                                  ; $7f09: $f8 $11
	ld   de, $ffff                                   ; $7f0b: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7f0e: $11 $11 $ff
	rst  $38                                         ; $7f11: $ff
	ld   de, $ef13                                   ; $7f12: $11 $13 $ef
	or   h                                           ; $7f15: $b4
	ld   c, h                                        ; $7f16: $4c
	rst  $38                                         ; $7f17: $ff
	pop  bc                                          ; $7f18: $c1
	ld   de, $ff1f                                   ; $7f19: $11 $1f $ff
	pop  af                                          ; $7f1c: $f1
	ld   de, $ff1f                                   ; $7f1d: $11 $1f $ff
	di                                               ; $7f20: $f3
	ld   de, $fc5f                                   ; $7f21: $11 $5f $fc
	ld   b, c                                        ; $7f24: $41
	ld   e, l                                        ; $7f25: $5d
	rst  $38                                         ; $7f26: $ff
	and  c                                           ; $7f27: $a1
	ld   de, $ff1d                                   ; $7f28: $11 $1d $ff
	ld   a, [$1311]                                  ; $7f2b: $fa $11 $13
	rst  $38                                         ; $7f2e: $ff
	db   $fd                                         ; $7f2f: $fd
	ld   h, d                                        ; $7f30: $62
	ld   c, c                                        ; $7f31: $49
	cp   e                                           ; $7f32: $bb
	ld   [hl], e                                     ; $7f33: $73
	ld   b, a                                        ; $7f34: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f35: $cf
	db   $fc                                         ; $7f36: $fc
	ld   h, e                                        ; $7f37: $63
	ld   de, $bd26                                   ; $7f38: $11 $26 $bd
	res  5, c                                        ; $7f3b: $cb $a9
	sub  [hl]                                        ; $7f3d: $96
	ld   d, h                                        ; $7f3e: $54
	dec  h                                           ; $7f3f: $25
	adc  e                                           ; $7f40: $8b
	xor  $eb                                         ; $7f41: $ee $eb
	ld   [hl], l                                     ; $7f43: $75
	inc  [hl]                                        ; $7f44: $34
	ld   l, c                                        ; $7f45: $69
	call $11c4                                       ; $7f46: $cd $c4 $11
	dec  e                                           ; $7f49: $1d
	rst  $38                                         ; $7f4a: $ff
	ldh  a, [c]                                      ; $7f4b: $f2
	ld   de, $ff1c                                   ; $7f4c: $11 $1c $ff
	ld   a, [$1311]                                  ; $7f4f: $fa $11 $13
	rst  $38                                         ; $7f52: $ff
	cp   $51                                         ; $7f53: $fe $51
	ld   de, $ed8d                                   ; $7f55: $11 $8d $ed
	add  [hl]                                        ; $7f58: $86
	ld   b, [hl]                                     ; $7f59: $46
	adc  e                                           ; $7f5a: $8b
	bit  6, c                                        ; $7f5b: $cb $71
	inc  d                                           ; $7f5d: $14
	xor  a                                           ; $7f5e: $af
	cp   $41                                         ; $7f5f: $fe $41
	ld   de, $ff6f                                   ; $7f61: $11 $6f $ff
	db   $f4                                         ; $7f64: $f4
	ld   hl, $9d29                                   ; $7f65: $21 $29 $9d
	ld   [hl], a                                     ; $7f68: $77
	ld   d, [hl]                                     ; $7f69: $56
	cp   h                                           ; $7f6a: $bc
	db   $eb                                         ; $7f6b: $eb
	add  d                                           ; $7f6c: $82
	ld   b, h                                        ; $7f6d: $44
	cp   [hl]                                        ; $7f6e: $be
	db   $fc                                         ; $7f6f: $fc
	ld   de, rAUD1LEN                                   ; $7f70: $11 $11 $ff
	rst  $38                                         ; $7f73: $ff
	ld   de, rAUD1LEN                                   ; $7f74: $11 $11 $ff
	rst  $38                                         ; $7f77: $ff
	ld   d, c                                        ; $7f78: $51
	ld   de, $ff5f                                   ; $7f79: $11 $5f $ff
	push de                                          ; $7f7c: $d5
	dec  [hl]                                        ; $7f7d: $35
	ld   e, l                                        ; $7f7e: $5d
	sbc  b                                           ; $7f7f: $98
	ld   h, e                                        ; $7f80: $63
	ld   a, d                                        ; $7f81: $7a
	rst  $38                                         ; $7f82: $ff
	or   [hl]                                        ; $7f83: $b6
	ld   de, $fd5a                                   ; $7f84: $11 $5a $fd
	add  $35                                         ; $7f87: $c6 $35
	ld   e, e                                        ; $7f89: $5b
	xor  c                                           ; $7f8a: $a9
	ld   [hl], e                                     ; $7f8b: $73
	ld   d, [hl]                                     ; $7f8c: $56
	cp   l                                           ; $7f8d: $bd
	jp   c, $2552                                    ; $7f8e: $da $52 $25

	cp   l                                           ; $7f91: $bd
	db   $eb                                         ; $7f92: $eb
	ld   hl, rAUD1LOW                                   ; $7f93: $21 $13 $ff
	rst  $38                                         ; $7f96: $ff
	ld   de, $bf12                                   ; $7f97: $11 $12 $bf
	db   $fc                                         ; $7f9a: $fc
	ld   [hl], c                                     ; $7f9b: $71
	inc  de                                          ; $7f9c: $13
	xor  a                                           ; $7f9d: $af
	db   $ec                                         ; $7f9e: $ec
	ld   sp, $ff36                                   ; $7f9f: $31 $36 $ff
	ld   [$2631], a                                  ; $7fa2: $ea $31 $26
	adc  $eb                                         ; $7fa5: $ce $eb
	ld   d, l                                        ; $7fa7: $55
	scf                                              ; $7fa8: $37
	xor  d                                           ; $7fa9: $aa
	and  [hl]                                        ; $7faa: $a6
	ld   h, l                                        ; $7fab: $65
	ld   a, d                                        ; $7fac: $7a
	xor  d                                           ; $7fad: $aa
	sub  [hl]                                        ; $7fae: $96
	ld   h, a                                        ; $7faf: $67
	sbc  d                                           ; $7fb0: $9a
	xor  d                                           ; $7fb1: $aa
	ld   h, [hl]                                     ; $7fb2: $66
	ld   h, a                                        ; $7fb3: $67
	xor  b                                           ; $7fb4: $a8
	sub  [hl]                                        ; $7fb5: $96
	ld   [hl], l                                     ; $7fb6: $75
	ld   a, d                                        ; $7fb7: $7a
	sbc  e                                           ; $7fb8: $9b
	ld   a, b                                        ; $7fb9: $78
	ld   h, l                                        ; $7fba: $65
	add  a                                           ; $7fbb: $87
	cp   d                                           ; $7fbc: $ba
	sbc  c                                           ; $7fbd: $99
	ld   [hl], a                                     ; $7fbe: $77
	ld   a, b                                        ; $7fbf: $78
	adc  c                                           ; $7fc0: $89
	adc  b                                           ; $7fc1: $88
	adc  b                                           ; $7fc2: $88
	sbc  b                                           ; $7fc3: $98
	adc  b                                           ; $7fc4: $88
	ld   [hl], a                                     ; $7fc5: $77
	ld   a, b                                        ; $7fc6: $78
	adc  d                                           ; $7fc7: $8a
	sbc  c                                           ; $7fc8: $99
	add  [hl]                                        ; $7fc9: $86
	ld   h, [hl]                                     ; $7fca: $66
	adc  c                                           ; $7fcb: $89
	xor  d                                           ; $7fcc: $aa
	add  a                                           ; $7fcd: $87
	ld   h, a                                        ; $7fce: $67
	adc  b                                           ; $7fcf: $88
	xor  c                                           ; $7fd0: $a9
	sub  a                                           ; $7fd1: $97
	ld   h, a                                        ; $7fd2: $67
	ld   l, b                                        ; $7fd3: $68
	adc  c                                           ; $7fd4: $89
	sbc  b                                           ; $7fd5: $98
	add  a                                           ; $7fd6: $87
	adc  c                                           ; $7fd7: $89
	adc  b                                           ; $7fd8: $88
	ld   [hl], a                                     ; $7fd9: $77
	ld   a, b                                        ; $7fda: $78
	sbc  d                                           ; $7fdb: $9a
	xor  b                                           ; $7fdc: $a8
	halt                                             ; $7fdd: $76
	ld   a, b                                        ; $7fde: $78
	sbc  c                                           ; $7fdf: $99
	adc  b                                           ; $7fe0: $88
	ld   [hl], a                                     ; $7fe1: $77
	ld   a, b                                        ; $7fe2: $78
	xor  c                                           ; $7fe3: $a9
	sub  a                                           ; $7fe4: $97
	ld   [hl], a                                     ; $7fe5: $77
	ld   a, c                                        ; $7fe6: $79
	sbc  c                                           ; $7fe7: $99
	sbc  c                                           ; $7fe8: $99
	add  a                                           ; $7fe9: $87
	add  a                                           ; $7fea: $87
	adc  c                                           ; $7feb: $89
	adc  b                                           ; $7fec: $88
	sbc  b                                           ; $7fed: $98
	ld   [hl], a                                     ; $7fee: $77
	ld   [hl], a                                     ; $7fef: $77
	adc  b                                           ; $7ff0: $88
	ld   a, b                                        ; $7ff1: $78
	adc  c                                           ; $7ff2: $89
	sbc  c                                           ; $7ff3: $99
	sub  a                                           ; $7ff4: $97
	halt                                             ; $7ff5: $76
	ld   a, b                                        ; $7ff6: $78
	sbc  d                                           ; $7ff7: $9a
	sbc  b                                           ; $7ff8: $98
	ld   [hl], a                                     ; $7ff9: $77
	ld   [hl], a                                     ; $7ffa: $77
	sbc  b                                           ; $7ffb: $98
	adc  b                                           ; $7ffc: $88
	ld   [hl], a                                     ; $7ffd: $77
	ld   a, b                                        ; $7ffe: $78
	sbc  c                                           ; $7fff: $99
