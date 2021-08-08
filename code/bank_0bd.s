; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0bd", ROMX[$4000], BANK[$bd]

	ld   de, $aeff                                   ; $4000: $11 $ff $ae
	rst  $38                                         ; $4003: $ff
	rst  $38                                         ; $4004: $ff
	cp   a                                           ; $4005: $bf
	pop  af                                          ; $4006: $f1
	ld   de, $111d                                   ; $4007: $11 $1d $11
	ld   a, h                                        ; $400a: $7c
	add  hl, de                                      ; $400b: $19
	ld   a, [de]                                     ; $400c: $1a
	rst  $38                                         ; $400d: $ff
	ld   a, a                                        ; $400e: $7f
	rst  $38                                         ; $400f: $ff
	cp   $ff                                         ; $4010: $fe $ff
	ld   de, $1d11                                   ; $4012: $11 $11 $1d
	ld   de, $87f3                                   ; $4015: $11 $f3 $87
	ld   l, a                                        ; $4018: $6f
	rst  $30                                         ; $4019: $f7
	rst  $38                                         ; $401a: $ff
	rst  $38                                         ; $401b: $ff
	ld   sp, hl                                      ; $401c: $f9
	db   $f4                                         ; $401d: $f4
	ld   de, $f111                                   ; $401e: $11 $11 $f1
	rra                                              ; $4021: $1f
	ld   [hl], a                                     ; $4022: $77
	ld   [$6fff], a                                  ; $4023: $ea $ff $6f
	cp   $ff                                         ; $4026: $fe $ff
	sbc  a                                           ; $4028: $9f
	ld   hl, $1f11                                   ; $4029: $21 $11 $1f
	ld   de, $9ff8                                   ; $402c: $11 $f8 $9f
	rst  $28                                         ; $402f: $ef
	di                                               ; $4030: $f3
	rst  $38                                         ; $4031: $ff
	sbc  a                                           ; $4032: $9f
	ld   hl, sp-$0f                                  ; $4033: $f8 $f1
	ld   de, $b111                                   ; $4035: $11 $11 $b1
	ld   e, a                                        ; $4038: $5f
	ld   a, h                                        ; $4039: $7c
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	cpl                                              ; $403c: $2f
	rst  $30                                         ; $403d: $f7
	db   $fc                                         ; $403e: $fc
	cp   a                                           ; $403f: $bf
	ld   de, $f111                                   ; $4040: $11 $11 $f1
	rra                                              ; $4043: $1f
	push af                                          ; $4044: $f5
	rst  $38                                         ; $4045: $ff
	rst  $38                                         ; $4046: $ff
	xor  d                                           ; $4047: $aa
	ei                                               ; $4048: $fb
	cp   a                                           ; $4049: $bf
	sbc  [hl]                                        ; $404a: $9e
	and  c                                           ; $404b: $a1
	ld   de, $111f                                   ; $404c: $11 $1f $11
	rst  $38                                         ; $404f: $ff
	sbc  a                                           ; $4050: $9f
	rst  $38                                         ; $4051: $ff
	pop  af                                          ; $4052: $f1
	rst  $38                                         ; $4053: $ff
	ccf                                              ; $4054: $3f
	ld   [$11f1], a                                  ; $4055: $ea $f1 $11
	ld   e, $91                                      ; $4058: $1e $91
	rst  $38                                         ; $405a: $ff
	ld   a, a                                        ; $405b: $7f
	rst  $38                                         ; $405c: $ff
	ei                                               ; $405d: $fb
	ccf                                              ; $405e: $3f
	adc  c                                           ; $405f: $89
	ld   a, [$11fd]                                  ; $4060: $fa $fd $11
	ld   de, $1ff1                                   ; $4063: $11 $f1 $1f
	ld   sp, hl                                      ; $4066: $f9
	rst  $38                                         ; $4067: $ff
	rst  $38                                         ; $4068: $ff
	rra                                              ; $4069: $1f
	pop  af                                          ; $406a: $f1
	cp   $bf                                         ; $406b: $fe $bf
	ld   de, $f911                                   ; $406d: $11 $11 $f9
	rra                                              ; $4070: $1f
	ld   a, [$ffff]                                  ; $4071: $fa $ff $ff
	ld   [hl], h                                     ; $4074: $74
	ldh  a, [c]                                      ; $4075: $f2
	cp   a                                           ; $4076: $bf
	xor  a                                           ; $4077: $af
	or   c                                           ; $4078: $b1
	ld   de, $111f                                   ; $4079: $11 $1f $11
	rst  $38                                         ; $407c: $ff
	rst  $28                                         ; $407d: $ef
	rst  $38                                         ; $407e: $ff
	pop  af                                          ; $407f: $f1
	rst  $38                                         ; $4080: $ff
	rra                                              ; $4081: $1f
	call $11f1                                       ; $4082: $cd $f1 $11
	rra                                              ; $4085: $1f
	ld   de, $dfff                                   ; $4086: $11 $ff $df
	rst  $38                                         ; $4089: $ff
	di                                               ; $408a: $f3
	ld   a, a                                        ; $408b: $7f
	dec  e                                           ; $408c: $1d
	ei                                               ; $408d: $fb
	push af                                          ; $408e: $f5
	ld   de, $f111                                   ; $408f: $11 $11 $f1
	cp   a                                           ; $4092: $bf
	rst  $28                                         ; $4093: $ef
	rst  $38                                         ; $4094: $ff
	rst  $38                                         ; $4095: $ff
	rra                                              ; $4096: $1f
	add  d                                           ; $4097: $82
	ld   sp, hl                                      ; $4098: $f9
	ld   a, [$1111]                                  ; $4099: $fa $11 $11
	pop  af                                          ; $409c: $f1
	rra                                              ; $409d: $1f
	rst  $38                                         ; $409e: $ff
	rst  $28                                         ; $409f: $ef
	rst  $38                                         ; $40a0: $ff
	rra                                              ; $40a1: $1f
	pop  af                                          ; $40a2: $f1
	ld   sp, hl                                      ; $40a3: $f9
	rst  $38                                         ; $40a4: $ff
	ld   de, $fd11                                   ; $40a5: $11 $11 $fd
	rra                                              ; $40a8: $1f
	rst  $38                                         ; $40a9: $ff
	rst  $38                                         ; $40aa: $ff
	rst  $38                                         ; $40ab: $ff
	ld   [hl], c                                     ; $40ac: $71
	pop  af                                          ; $40ad: $f1
	rst  $38                                         ; $40ae: $ff
	cp   a                                           ; $40af: $bf
	ld   de, $1f11                                   ; $40b0: $11 $11 $1f
	dec  e                                           ; $40b3: $1d
	ei                                               ; $40b4: $fb
	db   $fd                                         ; $40b5: $fd
	rst  $38                                         ; $40b6: $ff
	pop  af                                          ; $40b7: $f1
	db   $f4                                         ; $40b8: $f4
	ld   c, a                                        ; $40b9: $4f
	ld   l, a                                        ; $40ba: $6f
	ld   d, c                                        ; $40bb: $51
	ld   de, $111f                                   ; $40bc: $11 $1f $11
	db   $fc                                         ; $40bf: $fc
	db   $fd                                         ; $40c0: $fd
	rst  $38                                         ; $40c1: $ff
	pop  af                                          ; $40c2: $f1
	rst  $38                                         ; $40c3: $ff
	rra                                              ; $40c4: $1f
	ld   c, a                                        ; $40c5: $4f
	pop  bc                                          ; $40c6: $c1
	ld   de, $111f                                   ; $40c7: $11 $1f $11
	rst  $38                                         ; $40ca: $ff
	rst  $38                                         ; $40cb: $ff
	rst  $38                                         ; $40cc: $ff
	pop  af                                          ; $40cd: $f1
	rst  $28                                         ; $40ce: $ef
	rra                                              ; $40cf: $1f
	adc  a                                           ; $40d0: $8f
	pop  af                                          ; $40d1: $f1
	ld   de, $f11b                                   ; $40d2: $11 $1b $f1
	rst  $38                                         ; $40d5: $ff
	rst  $38                                         ; $40d6: $ff
	xor  a                                           ; $40d7: $af
	ld   sp, hl                                      ; $40d8: $f9
	ld   c, a                                        ; $40d9: $4f
	rra                                              ; $40da: $1f
	cp   h                                           ; $40db: $bc
	pop  af                                          ; $40dc: $f1
	ld   de, $f111                                   ; $40dd: $11 $11 $f1
	adc  a                                           ; $40e0: $8f
	xor  a                                           ; $40e1: $af
	cp   a                                           ; $40e2: $bf
	rst  $38                                         ; $40e3: $ff
	rra                                              ; $40e4: $1f
	ld   l, b                                        ; $40e5: $68
	rst  $30                                         ; $40e6: $f7
	pop  af                                          ; $40e7: $f1
	ld   de, $f111                                   ; $40e8: $11 $11 $f1
	rra                                              ; $40eb: $1f
	sbc  a                                           ; $40ec: $9f
	cp   a                                           ; $40ed: $bf
	rst  $38                                         ; $40ee: $ff
	rra                                              ; $40ef: $1f
	push af                                          ; $40f0: $f5
	push af                                          ; $40f1: $f5
	pop  af                                          ; $40f2: $f1
	ld   de, $f111                                   ; $40f3: $11 $11 $f1
	rra                                              ; $40f6: $1f
	cp   a                                           ; $40f7: $bf
	db   $fc                                         ; $40f8: $fc
	rst  $38                                         ; $40f9: $ff
	ccf                                              ; $40fa: $3f
	di                                               ; $40fb: $f3
	push af                                          ; $40fc: $f5
	ld   hl, sp+$11                                  ; $40fd: $f8 $11
	ld   de, $1f59                                   ; $40ff: $11 $59 $1f
	rst  $38                                         ; $4102: $ff
	push af                                          ; $4103: $f5
	rst  $38                                         ; $4104: $ff
	cp   [hl]                                        ; $4105: $be
	ld   sp, hl                                      ; $4106: $f9
	ld   a, [$12ff]                                  ; $4107: $fa $ff $12
	ld   de, $111f                                   ; $410a: $11 $1f $11
	ei                                               ; $410d: $fb
	push af                                          ; $410e: $f5
	rst  $38                                         ; $410f: $ff
	ld   a, [$ffff]                                  ; $4110: $fa $ff $ff
	rst  $38                                         ; $4113: $ff
	ld   [de], a                                     ; $4114: $12
	ld   de, $111d                                   ; $4115: $11 $1d $11
	or   $f7                                         ; $4118: $f6 $f7
	rst  $38                                         ; $411a: $ff
	ei                                               ; $411b: $fb
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	rst  JumpTable                                         ; $411e: $df
	ld   hl, $1111                                   ; $411f: $21 $11 $11
	ld   de, $ff45                                   ; $4122: $11 $45 $ff
	ccf                                              ; $4125: $3f
	rst  $38                                         ; $4126: $ff
	rst  $38                                         ; $4127: $ff
	rst  $38                                         ; $4128: $ff
	rst  $38                                         ; $4129: $ff
	pop  af                                          ; $412a: $f1
	ld   b, c                                        ; $412b: $41
	ld   de, $1221                                   ; $412c: $11 $21 $12
	rra                                              ; $412f: $1f
	ld   c, d                                        ; $4130: $4a
	rst  $38                                         ; $4131: $ff
	rst  $38                                         ; $4132: $ff
	rst  $38                                         ; $4133: $ff
	rst  $38                                         ; $4134: $ff
	ei                                               ; $4135: $fb
	ld   h, d                                        ; $4136: $62
	ld   de, $1111                                   ; $4137: $11 $11 $11
	ld   [de], a                                     ; $413a: $12
	pop  bc                                          ; $413b: $c1
	xor  a                                           ; $413c: $af
	rst  $38                                         ; $413d: $ff
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	rst  $38                                         ; $4140: $ff
	jp   z, $1151                                    ; $4141: $ca $51 $11

	ld   de, $1511                                   ; $4144: $11 $11 $15
	dec  d                                           ; $4147: $15
	rst  $38                                         ; $4148: $ff
	rst  $38                                         ; $4149: $ff
	rst  $38                                         ; $414a: $ff
	rst  $38                                         ; $414b: $ff
	rst  $38                                         ; $414c: $ff
	ld   hl, sp+$11                                  ; $414d: $f8 $11
	ld   de, $1111                                   ; $414f: $11 $11 $11
	ld   de, $ee14                                   ; $4152: $11 $14 $ee
	rst  $38                                         ; $4155: $ff
	rst  $38                                         ; $4156: $ff
	rst  $38                                         ; $4157: $ff
	rst  $38                                         ; $4158: $ff
	or   a                                           ; $4159: $b7
	ld   d, c                                        ; $415a: $51
	ld   de, $1111                                   ; $415b: $11 $11 $11
	ld   de, $6a13                                   ; $415e: $11 $13 $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4161: $cf
	rst  $38                                         ; $4162: $ff
	rst  $38                                         ; $4163: $ff
	rst  $38                                         ; $4164: $ff
	db   $fc                                         ; $4165: $fc
	or   a                                           ; $4166: $b7
	ld   [hl], $61                                   ; $4167: $36 $61
	ld   de, $1111                                   ; $4169: $11 $11 $11
	dec  [hl]                                        ; $416c: $35
	ld   l, c                                        ; $416d: $69
	xor  h                                           ; $416e: $ac
	rst  $38                                         ; $416f: $ff
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	set  0, a                                        ; $4172: $cb $c7
	ld   a, b                                        ; $4174: $78
	ld   d, l                                        ; $4175: $55
	inc  sp                                          ; $4176: $33
	ld   [hl-], a                                    ; $4177: $32
	inc  de                                          ; $4178: $13
	inc  [hl]                                        ; $4179: $34
	ld   h, [hl]                                     ; $417a: $66
	adc  d                                           ; $417b: $8a
	xor  h                                           ; $417c: $ac
	set  3, e                                        ; $417d: $cb $db
	xor  e                                           ; $417f: $ab
	xor  c                                           ; $4180: $a9
	xor  c                                           ; $4181: $a9
	xor  e                                           ; $4182: $ab
	ld   a, b                                        ; $4183: $78
	ld   h, [hl]                                     ; $4184: $66
	ld   h, l                                        ; $4185: $65
	ld   d, l                                        ; $4186: $55
	ld   d, l                                        ; $4187: $55
	ld   b, h                                        ; $4188: $44
	ld   h, a                                        ; $4189: $67
	ld   a, b                                        ; $418a: $78
	sbc  b                                           ; $418b: $98
	xor  e                                           ; $418c: $ab
	xor  e                                           ; $418d: $ab
	cp   h                                           ; $418e: $bc
	cp   e                                           ; $418f: $bb
	cp   e                                           ; $4190: $bb
	xor  d                                           ; $4191: $aa
	sub  a                                           ; $4192: $97
	ld   [hl], l                                     ; $4193: $75
	ld   d, h                                        ; $4194: $54
	inc  sp                                          ; $4195: $33
	ld   b, e                                        ; $4196: $43
	ld   b, [hl]                                     ; $4197: $46
	ld   l, b                                        ; $4198: $68
	sbc  c                                           ; $4199: $99
	xor  e                                           ; $419a: $ab
	cp   l                                           ; $419b: $bd
	call z, $badb                                    ; $419c: $cc $db $ba
	sbc  c                                           ; $419f: $99
	halt                                             ; $41a0: $76
	ld   h, l                                        ; $41a1: $65
	ld   b, l                                        ; $41a2: $45
	ld   b, l                                        ; $41a3: $45
	ld   d, l                                        ; $41a4: $55
	ld   h, [hl]                                     ; $41a5: $66
	ld   a, b                                        ; $41a6: $78
	sbc  c                                           ; $41a7: $99
	cp   e                                           ; $41a8: $bb
	cp   e                                           ; $41a9: $bb
	xor  d                                           ; $41aa: $aa
	sbc  c                                           ; $41ab: $99
	adc  b                                           ; $41ac: $88
	ld   [hl], a                                     ; $41ad: $77
	ld   h, [hl]                                     ; $41ae: $66
	ld   h, [hl]                                     ; $41af: $66
	ld   h, [hl]                                     ; $41b0: $66
	ld   h, a                                        ; $41b1: $67
	ld   [hl], a                                     ; $41b2: $77
	sbc  b                                           ; $41b3: $98
	xor  d                                           ; $41b4: $aa
	sbc  c                                           ; $41b5: $99
	xor  c                                           ; $41b6: $a9
	adc  b                                           ; $41b7: $88
	ld   a, c                                        ; $41b8: $79
	add  a                                           ; $41b9: $87
	ld   [hl], a                                     ; $41ba: $77
	halt                                             ; $41bb: $76
	ld   h, a                                        ; $41bc: $67
	add  a                                           ; $41bd: $87
	sbc  b                                           ; $41be: $98
	sbc  c                                           ; $41bf: $99
	adc  b                                           ; $41c0: $88
	xor  b                                           ; $41c1: $a8
	sbc  c                                           ; $41c2: $99
	ld   a, b                                        ; $41c3: $78
	sub  a                                           ; $41c4: $97
	add  a                                           ; $41c5: $87
	ld   [hl], a                                     ; $41c6: $77
	ld   [hl], a                                     ; $41c7: $77
	ld   [hl], a                                     ; $41c8: $77
	ld   a, b                                        ; $41c9: $78
	adc  d                                           ; $41ca: $8a
	sbc  b                                           ; $41cb: $98
	sbc  c                                           ; $41cc: $99
	adc  c                                           ; $41cd: $89
	adc  b                                           ; $41ce: $88
	sbc  b                                           ; $41cf: $98
	sbc  b                                           ; $41d0: $98
	ld   a, b                                        ; $41d1: $78
	ld   [hl], a                                     ; $41d2: $77
	ld   [hl], a                                     ; $41d3: $77
	ld   a, b                                        ; $41d4: $78
	ld   a, c                                        ; $41d5: $79
	sub  a                                           ; $41d6: $97
	sbc  c                                           ; $41d7: $99
	adc  b                                           ; $41d8: $88
	sbc  b                                           ; $41d9: $98
	sbc  b                                           ; $41da: $98
	adc  c                                           ; $41db: $89
	adc  b                                           ; $41dc: $88
	add  a                                           ; $41dd: $87
	adc  b                                           ; $41de: $88
	ld   a, b                                        ; $41df: $78
	ld   a, b                                        ; $41e0: $78
	sub  a                                           ; $41e1: $97
	adc  b                                           ; $41e2: $88
	adc  b                                           ; $41e3: $88
	add  a                                           ; $41e4: $87
	sbc  c                                           ; $41e5: $99
	adc  b                                           ; $41e6: $88
	adc  c                                           ; $41e7: $89
	sbc  b                                           ; $41e8: $98
	adc  b                                           ; $41e9: $88
	adc  b                                           ; $41ea: $88
	add  a                                           ; $41eb: $87
	add  a                                           ; $41ec: $87
	ld   a, b                                        ; $41ed: $78
	ld   a, b                                        ; $41ee: $78
	add  a                                           ; $41ef: $87
	adc  b                                           ; $41f0: $88
	ld   a, c                                        ; $41f1: $79
	adc  b                                           ; $41f2: $88
	sbc  b                                           ; $41f3: $98
	adc  c                                           ; $41f4: $89
	adc  c                                           ; $41f5: $89
	sbc  b                                           ; $41f6: $98
	adc  c                                           ; $41f7: $89
	ld   a, b                                        ; $41f8: $78
	adc  b                                           ; $41f9: $88
	add  a                                           ; $41fa: $87
	ld   a, b                                        ; $41fb: $78
	ld   [hl], a                                     ; $41fc: $77
	adc  b                                           ; $41fd: $88
	adc  b                                           ; $41fe: $88
	adc  c                                           ; $41ff: $89
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	adc  b                                           ; $4206: $88
	ld   [hl], a                                     ; $4207: $77
	add  a                                           ; $4208: $87
	adc  b                                           ; $4209: $88
	ld   a, b                                        ; $420a: $78
	adc  b                                           ; $420b: $88
	adc  b                                           ; $420c: $88
	adc  b                                           ; $420d: $88
	adc  b                                           ; $420e: $88
	sbc  c                                           ; $420f: $99
	sbc  b                                           ; $4210: $98
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	adc  b                                           ; $4213: $88
	adc  b                                           ; $4214: $88
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	adc  b                                           ; $4217: $88
	ld   a, b                                        ; $4218: $78
	adc  b                                           ; $4219: $88
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  b                                           ; $421c: $88
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	sbc  b                                           ; $421f: $98
	sbc  c                                           ; $4220: $99
	adc  c                                           ; $4221: $89
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	adc  b                                           ; $4224: $88
	ld   a, b                                        ; $4225: $78
	add  a                                           ; $4226: $87
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	sbc  c                                           ; $422c: $99
	sbc  c                                           ; $422d: $99
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	add  a                                           ; $4233: $87
	add  a                                           ; $4234: $87
	adc  b                                           ; $4235: $88
	adc  b                                           ; $4236: $88
	adc  c                                           ; $4237: $89
	adc  b                                           ; $4238: $88
	sbc  c                                           ; $4239: $99
	sbc  b                                           ; $423a: $98
	sbc  b                                           ; $423b: $98
	sbc  b                                           ; $423c: $98
	adc  b                                           ; $423d: $88
	adc  b                                           ; $423e: $88
	adc  b                                           ; $423f: $88
	ld   a, b                                        ; $4240: $78
	adc  b                                           ; $4241: $88
	adc  b                                           ; $4242: $88
	adc  b                                           ; $4243: $88
	adc  b                                           ; $4244: $88
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	adc  c                                           ; $4247: $89
	adc  b                                           ; $4248: $88
	adc  b                                           ; $4249: $88
	adc  b                                           ; $424a: $88
	adc  b                                           ; $424b: $88
	adc  b                                           ; $424c: $88
	adc  b                                           ; $424d: $88
	adc  b                                           ; $424e: $88
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
	adc  b                                           ; $4259: $88
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
	add  a                                           ; $426b: $87
	adc  b                                           ; $426c: $88
	adc  c                                           ; $426d: $89
	add  a                                           ; $426e: $87
	adc  b                                           ; $426f: $88
	adc  c                                           ; $4270: $89
	ld   a, b                                        ; $4271: $78
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
	ld   a, c                                        ; $4285: $79
	ld   a, b                                        ; $4286: $78
	ld   a, b                                        ; $4287: $78
	adc  b                                           ; $4288: $88
	add  a                                           ; $4289: $87
	sbc  b                                           ; $428a: $98
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	sbc  b                                           ; $428d: $98
	adc  c                                           ; $428e: $89
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  b                                           ; $4293: $88
	add  a                                           ; $4294: $87
	ld   l, d                                        ; $4295: $6a

Jump_0bd_4296:
	ld   a, b                                        ; $4296: $78
	sub  $78                                         ; $4297: $d6 $78
	cp   d                                           ; $4299: $ba
	ld   l, d                                        ; $429a: $6a
	ld   l, d                                        ; $429b: $6a
	add  a                                           ; $429c: $87
	add  a                                           ; $429d: $87
	sub  a                                           ; $429e: $97
	ld   h, a                                        ; $429f: $67
	adc  b                                           ; $42a0: $88
	sub  a                                           ; $42a1: $97
	adc  b                                           ; $42a2: $88
	ld   a, b                                        ; $42a3: $78
	adc  c                                           ; $42a4: $89
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88

Call_0bd_42a7:
	adc  c                                           ; $42a7: $89
	sbc  b                                           ; $42a8: $98
	ld   a, b                                        ; $42a9: $78
	sub  a                                           ; $42aa: $97
	ld   a, b                                        ; $42ab: $78
	sub  a                                           ; $42ac: $97
	add  a                                           ; $42ad: $87
	ld   a, b                                        ; $42ae: $78
	ld   a, b                                        ; $42af: $78
	ld   a, b                                        ; $42b0: $78
	ld   a, d                                        ; $42b1: $7a
	sub  a                                           ; $42b2: $97
	adc  b                                           ; $42b3: $88
	sub  a                                           ; $42b4: $97
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	ld   a, b                                        ; $42b8: $78
	ld   a, b                                        ; $42b9: $78
	ld   [hl], a                                     ; $42ba: $77
	adc  b                                           ; $42bb: $88
	adc  c                                           ; $42bc: $89
	adc  b                                           ; $42bd: $88
	adc  c                                           ; $42be: $89
	adc  b                                           ; $42bf: $88
	sbc  b                                           ; $42c0: $98
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	ld   a, b                                        ; $42c3: $78
	adc  b                                           ; $42c4: $88
	ld   a, b                                        ; $42c5: $78
	sub  a                                           ; $42c6: $97
	sbc  b                                           ; $42c7: $98
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	ld   a, b                                        ; $42cb: $78
	adc  c                                           ; $42cc: $89
	ld   a, c                                        ; $42cd: $79
	sbc  b                                           ; $42ce: $98
	sbc  b                                           ; $42cf: $98
	ld   [hl], a                                     ; $42d0: $77
	ld   [hl], a                                     ; $42d1: $77
	jp   z, $9668                                    ; $42d2: $ca $68 $96

	adc  b                                           ; $42d5: $88
	sub  a                                           ; $42d6: $97
	adc  c                                           ; $42d7: $89
	adc  d                                           ; $42d8: $8a
	ld   a, b                                        ; $42d9: $78
	add  a                                           ; $42da: $87
	adc  b                                           ; $42db: $88
	sbc  b                                           ; $42dc: $98
	adc  c                                           ; $42dd: $89
	ld   [hl], a                                     ; $42de: $77
	and  a                                           ; $42df: $a7
	add  [hl]                                        ; $42e0: $86
	add  a                                           ; $42e1: $87
	ld   h, a                                        ; $42e2: $67
	ld   l, b                                        ; $42e3: $68
	adc  d                                           ; $42e4: $8a
	adc  d                                           ; $42e5: $8a
	halt                                             ; $42e6: $76
	sub  a                                           ; $42e7: $97
	sbc  d                                           ; $42e8: $9a
	sub  [hl]                                        ; $42e9: $96
	sbc  b                                           ; $42ea: $98
	halt                                             ; $42eb: $76
	adc  d                                           ; $42ec: $8a
	ld   l, d                                        ; $42ed: $6a
	add  a                                           ; $42ee: $87
	halt                                             ; $42ef: $76
	ld   a, c                                        ; $42f0: $79
	ret  z                                           ; $42f1: $c8

	sub  a                                           ; $42f2: $97
	ld   e, c                                        ; $42f3: $59
	ld   a, b                                        ; $42f4: $78
	ld   a, d                                        ; $42f5: $7a
	and  l                                           ; $42f6: $a5
	ld   a, b                                        ; $42f7: $78
	add  [hl]                                        ; $42f8: $86
	adc  b                                           ; $42f9: $88
	sub  [hl]                                        ; $42fa: $96
	adc  d                                           ; $42fb: $8a
	ld   h, a                                        ; $42fc: $67
	sub  a                                           ; $42fd: $97
	ld   [hl], a                                     ; $42fe: $77
	sbc  e                                           ; $42ff: $9b
	ld   l, d                                        ; $4300: $6a
	xor  c                                           ; $4301: $a9
	sbc  e                                           ; $4302: $9b
	cp   b                                           ; $4303: $b8
	ld   [hl], a                                     ; $4304: $77
	ld   a, b                                        ; $4305: $78
	ld   a, b                                        ; $4306: $78
	sbc  b                                           ; $4307: $98
	ld   b, l                                        ; $4308: $45
	ld   b, l                                        ; $4309: $45
	sbc  b                                           ; $430a: $98
	sbc  c                                           ; $430b: $99
	add  a                                           ; $430c: $87
	add  [hl]                                        ; $430d: $86
	sub  l                                           ; $430e: $95
	adc  d                                           ; $430f: $8a
	dec  sp                                          ; $4310: $3b
	halt                                             ; $4311: $76
	ld   [hl], l                                     ; $4312: $75
	sbc  c                                           ; $4313: $99
	adc  b                                           ; $4314: $88
	sbc  c                                           ; $4315: $99
	and  h                                           ; $4316: $a4
	sub  a                                           ; $4317: $97
	add  [hl]                                        ; $4318: $86
	ld   c, e                                        ; $4319: $4b
	ld   c, b                                        ; $431a: $48
	halt                                             ; $431b: $76
	sub  [hl]                                        ; $431c: $96
	adc  c                                           ; $431d: $89
	adc  b                                           ; $431e: $88
	sub  [hl]                                        ; $431f: $96
	and  [hl]                                        ; $4320: $a6
	xor  d                                           ; $4321: $aa
	ld   l, h                                        ; $4322: $6c
	ld   a, c                                        ; $4323: $79
	sbc  b                                           ; $4324: $98
	ld   l, b                                        ; $4325: $68
	ld   [hl], a                                     ; $4326: $77
	ld   b, [hl]                                     ; $4327: $46
	or   a                                           ; $4328: $b7
	adc  b                                           ; $4329: $88
	ld   a, b                                        ; $432a: $78
	halt                                             ; $432b: $76
	sbc  b                                           ; $432c: $98
	xor  c                                           ; $432d: $a9
	ld   a, h                                        ; $432e: $7c
	add  [hl]                                        ; $432f: $86
	xor  d                                           ; $4330: $aa
	sub  a                                           ; $4331: $97
	ld   a, d                                        ; $4332: $7a
	sub  h                                           ; $4333: $94
	ld   [hl], a                                     ; $4334: $77
	ld   d, h                                        ; $4335: $54
	daa                                              ; $4336: $27
	ld   h, [hl]                                     ; $4337: $66
	ld   a, c                                        ; $4338: $79
	sbc  b                                           ; $4339: $98
	sbc  c                                           ; $433a: $99
	call z, $ddcc                                    ; $433b: $cc $cc $dd
	cp   e                                           ; $433e: $bb
	cp   h                                           ; $433f: $bc
	adc  c                                           ; $4340: $89
	ld   [hl], c                                     ; $4341: $71
	ld   de, $1111                                   ; $4342: $11 $11 $11
	ld   d, c                                        ; $4345: $51
	dec  sp                                          ; $4346: $3b
	rst  $28                                         ; $4347: $ef
	rst  $38                                         ; $4348: $ff
	rst  $38                                         ; $4349: $ff
	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	xor  $d4                                         ; $434c: $ee $d4
	ld   de, $1111                                   ; $434e: $11 $11 $11
	ld   de, $ff3f                                   ; $4351: $11 $3f $ff
	rst  $38                                         ; $4354: $ff
	rst  $38                                         ; $4355: $ff
	rst  $38                                         ; $4356: $ff
	rst  $38                                         ; $4357: $ff
	rst  $38                                         ; $4358: $ff
	jp   hl                                          ; $4359: $e9


	ld   de, $1111                                   ; $435a: $11 $11 $11
	ld   de, $ffaf                                   ; $435d: $11 $af $ff
	rst  $38                                         ; $4360: $ff
	rst  $38                                         ; $4361: $ff
	jp   c, $fffa                                    ; $4362: $da $fa $ff

	db   $fd                                         ; $4365: $fd
	ld   sp, $1111                                   ; $4366: $31 $11 $11
	ld   de, $ff2a                                   ; $4369: $11 $2a $ff
	rst  $38                                         ; $436c: $ff
	rst  $38                                         ; $436d: $ff
	ld   sp, hl                                      ; $436e: $f9
	adc  $ff                                         ; $436f: $ce $ff
	rst  $38                                         ; $4371: $ff
	or   c                                           ; $4372: $b1
	ld   de, $1111                                   ; $4373: $11 $11 $11
	inc  de                                          ; $4376: $13
	rst  $38                                         ; $4377: $ff
	rst  $38                                         ; $4378: $ff
	rst  $38                                         ; $4379: $ff
	ld   sp, hl                                      ; $437a: $f9
	ld   c, l                                        ; $437b: $4d
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	and  $11                                         ; $437e: $e6 $11
	ld   de, $1411                                   ; $4380: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4383: $cf
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff

Jump_0bd_4386:
	rst  $38                                         ; $4386: $ff
	rla                                              ; $4387: $17
	xor  l                                           ; $4388: $ad
	rst  $38                                         ; $4389: $ff
	db   $fd                                         ; $438a: $fd
	ld   de, $1111                                   ; $438b: $11 $11 $11
	ld   [de], a                                     ; $438e: $12
	xor  a                                           ; $438f: $af
	rst  $38                                         ; $4390: $ff
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	ld   b, c                                        ; $4393: $41
	xor  [hl]                                        ; $4394: $ae
	rst  $38                                         ; $4395: $ff
	rst  $38                                         ; $4396: $ff
	ld   b, c                                        ; $4397: $41
	ld   de, $1811                                   ; $4398: $11 $11 $18
	ld   l, a                                        ; $439b: $6f
	rst  $38                                         ; $439c: $ff
	rst  $38                                         ; $439d: $ff
	rst  $38                                         ; $439e: $ff
	ld   h, c                                        ; $439f: $61
	ld   a, d                                        ; $43a0: $7a
	rst  $38                                         ; $43a1: $ff
	rst  $38                                         ; $43a2: $ff
	ld   [hl], c                                     ; $43a3: $71
	ld   de, $1411                                   ; $43a4: $11 $11 $14
	ld   a, a                                        ; $43a7: $7f
	rst  $38                                         ; $43a8: $ff
	rst  $38                                         ; $43a9: $ff
	db   $fd                                         ; $43aa: $fd
	sub  c                                           ; $43ab: $91
	ld   d, $ff                                      ; $43ac: $16 $ff
	rst  $38                                         ; $43ae: $ff
	db   $d3                                         ; $43af: $d3
	ld   de, $1111                                   ; $43b0: $11 $11 $11
	sbc  [hl]                                        ; $43b3: $9e
	rst  $38                                         ; $43b4: $ff
	rst  $38                                         ; $43b5: $ff
	db   $fd                                         ; $43b6: $fd
	ld   [hl], c                                     ; $43b7: $71
	inc  d                                           ; $43b8: $14
	rst  $28                                         ; $43b9: $ef
	rst  $38                                         ; $43ba: $ff
	db   $f4                                         ; $43bb: $f4
	ld   de, $1111                                   ; $43bc: $11 $11 $11
	call z, $ffff                                    ; $43bf: $cc $ff $ff
	ei                                               ; $43c2: $fb
	ld   [hl], e                                     ; $43c3: $73
	inc  de                                          ; $43c4: $13
	ld   a, a                                        ; $43c5: $7f
	rst  $38                                         ; $43c6: $ff
	rst  $30                                         ; $43c7: $f7
	ld   de, $1111                                   ; $43c8: $11 $11 $11
	ld   l, [hl]                                     ; $43cb: $6e
	rst  $38                                         ; $43cc: $ff
	rst  $38                                         ; $43cd: $ff
	rst  $38                                         ; $43ce: $ff
	ld   b, l                                        ; $43cf: $45
	ld   de, $ff6f                                   ; $43d0: $11 $6f $ff
	ld   a, [$1111]                                  ; $43d3: $fa $11 $11
	ld   de, $ff1a                                   ; $43d6: $11 $1a $ff
	rst  $38                                         ; $43d9: $ff
	rst  $38                                         ; $43da: $ff
	and  c                                           ; $43db: $a1
	ld   de, $ff5b                                   ; $43dc: $11 $5b $ff
	cp   $21                                         ; $43df: $fe $21
	ld   de, $1411                                   ; $43e1: $11 $11 $14
	rst  $38                                         ; $43e4: $ff
	rst  $38                                         ; $43e5: $ff
	rst  $38                                         ; $43e6: $ff
	sub  d                                           ; $43e7: $92
	ld   sp, $ff4a                                   ; $43e8: $31 $4a $ff
	rst  $38                                         ; $43eb: $ff
	and  c                                           ; $43ec: $a1
	ld   de, $1111                                   ; $43ed: $11 $11 $11
	rst  $28                                         ; $43f0: $ef
	rst  $38                                         ; $43f1: $ff
	rst  $38                                         ; $43f2: $ff
	db   $f4                                         ; $43f3: $f4
	ld   de, $cf19                                   ; $43f4: $11 $19 $cf
	rst  $38                                         ; $43f7: $ff
	and  c                                           ; $43f8: $a1
	ld   de, $1111                                   ; $43f9: $11 $11 $11
	ld   c, l                                        ; $43fc: $4d
	rst  $38                                         ; $43fd: $ff
	rst  $38                                         ; $43fe: $ff
	cp   $01                                         ; $43ff: $fe $01
	rla                                              ; $4401: $17
	xor  a                                           ; $4402: $af
	rst  $38                                         ; $4403: $ff
	push af                                          ; $4404: $f5
	ld   de, $1111                                   ; $4405: $11 $11 $11
	rra                                              ; $4408: $1f
	rst  $38                                         ; $4409: $ff
	rst  $38                                         ; $440a: $ff
	rst  $38                                         ; $440b: $ff
	ld   [hl-], a                                    ; $440c: $32
	ld   [de], a                                     ; $440d: $12
	ld   l, a                                        ; $440e: $6f
	rst  $38                                         ; $440f: $ff
	db   $fd                                         ; $4410: $fd
	ld   de, $1111                                   ; $4411: $11 $11 $11
	rla                                              ; $4414: $17
	rst  $38                                         ; $4415: $ff
	rst  $38                                         ; $4416: $ff
	rst  $38                                         ; $4417: $ff
	sub  a                                           ; $4418: $97
	ld   sp, $ff2e                                   ; $4419: $31 $2e $ff
	rst  $38                                         ; $441c: $ff
	or   c                                           ; $441d: $b1
	ld   de, $1111                                   ; $441e: $11 $11 $11
	sbc  a                                           ; $4421: $9f
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	rst  $30                                         ; $4424: $f7
	ld   hl, $ef17                                   ; $4425: $21 $17 $ef
	rst  $38                                         ; $4428: $ff
	push af                                          ; $4429: $f5
	ld   de, $1111                                   ; $442a: $11 $11 $11
	rra                                              ; $442d: $1f
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	rst  $38                                         ; $4430: $ff
	ld   b, c                                        ; $4431: $41
	inc  de                                          ; $4432: $13
	ld   c, a                                        ; $4433: $4f
	rst  $38                                         ; $4434: $ff
	ld   hl, sp+$21                                  ; $4435: $f8 $21
	ld   de, $1211                                   ; $4437: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $443a: $cf
	rst  $38                                         ; $443b: $ff
	rst  $38                                         ; $443c: $ff
	di                                               ; $443d: $f3
	ld   de, $ff5e                                   ; $443e: $11 $5e $ff
	rst  $38                                         ; $4441: $ff
	and  c                                           ; $4442: $a1
	ld   de, $1111                                   ; $4443: $11 $11 $11
	sbc  l                                           ; $4446: $9d
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	cp   $41                                         ; $4449: $fe $41
	inc  hl                                          ; $444b: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $444c: $cf
	rst  $38                                         ; $444d: $ff
	di                                               ; $444e: $f3
	ld   de, $1111                                   ; $444f: $11 $11 $11
	ld   d, $cf                                      ; $4452: $16 $cf
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	call nc, Call_0bd_4b21                           ; $4456: $d4 $21 $4b
	rst  $38                                         ; $4459: $ff
	rst  $38                                         ; $445a: $ff
	ld   [hl], c                                     ; $445b: $71
	ld   de, $1111                                   ; $445c: $11 $11 $11
	inc  e                                           ; $445f: $1c
	rst  $38                                         ; $4460: $ff
	rst  $38                                         ; $4461: $ff
	rst  $38                                         ; $4462: $ff
	ld   b, c                                        ; $4463: $41
	ld   a, [de]                                     ; $4464: $1a
	xor  a                                           ; $4465: $af
	rst  $38                                         ; $4466: $ff
	ld   sp, hl                                      ; $4467: $f9
	ld   de, $1111                                   ; $4468: $11 $11 $11
	ld   [de], a                                     ; $446b: $12
	sbc  a                                           ; $446c: $9f
	rst  $38                                         ; $446d: $ff
	rst  $38                                         ; $446e: $ff
	ld   a, [$7923]                                  ; $446f: $fa $23 $79
	rst  $28                                         ; $4472: $ef
	rst  $38                                         ; $4473: $ff
	jp   $1111                                       ; $4474: $c3 $11 $11


	ld   de, $ff16                                   ; $4477: $11 $16 $ff
	rst  $38                                         ; $447a: $ff
	rst  $38                                         ; $447b: $ff
	sub  [hl]                                        ; $447c: $96
	ld   [hl], h                                     ; $447d: $74
	ld   a, b                                        ; $447e: $78
	rst  $38                                         ; $447f: $ff
	db   $fd                                         ; $4480: $fd
	ld   h, c                                        ; $4481: $61
	ld   de, $1111                                   ; $4482: $11 $11 $11
	jr   @+$01                                       ; $4485: $18 $ff

	rst  $38                                         ; $4487: $ff
	rst  $38                                         ; $4488: $ff
	and  d                                           ; $4489: $a2
	ld   b, l                                        ; $448a: $45
	xor  h                                           ; $448b: $ac
	rst  $38                                         ; $448c: $ff
	cp   $41                                         ; $448d: $fe $41
	ld   de, $1111                                   ; $448f: $11 $11 $11
	jr   z, @+$01                                    ; $4492: $28 $ff

	rst  $38                                         ; $4494: $ff
	rst  $38                                         ; $4495: $ff
	add  [hl]                                        ; $4496: $86
	ld   d, a                                        ; $4497: $57
	sbc  a                                           ; $4498: $9f
	rst  $38                                         ; $4499: $ff
	ld   a, [$1151]                                  ; $449a: $fa $51 $11
	ld   de, $4b11                                   ; $449d: $11 $11 $4b
	db   $ed                                         ; $44a0: $ed
	rst  $38                                         ; $44a1: $ff
	rst  $38                                         ; $44a2: $ff
	sbc  e                                           ; $44a3: $9b
	add  a                                           ; $44a4: $87
	xor  a                                           ; $44a5: $af
	rst  $38                                         ; $44a6: $ff
	ld   [$1141], a                                  ; $44a7: $ea $41 $11
	ld   de, $2611                                   ; $44aa: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ad: $cf
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	call c, $ad79                                    ; $44b0: $dc $79 $ad
	rst  $38                                         ; $44b3: $ff
	ei                                               ; $44b4: $fb
	ld   h, c                                        ; $44b5: $61
	ld   de, $1111                                   ; $44b6: $11 $11 $11
	inc  d                                           ; $44b9: $14
	ld   a, e                                        ; $44ba: $7b
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	cp   $97                                         ; $44bd: $fe $97
	xor  h                                           ; $44bf: $ac
	rst  $38                                         ; $44c0: $ff
	db   $fd                                         ; $44c1: $fd
	sub  [hl]                                        ; $44c2: $96
	ld   de, $1111                                   ; $44c3: $11 $11 $11
	inc  de                                          ; $44c6: $13
	ld   d, [hl]                                     ; $44c7: $56
	ld   l, c                                        ; $44c8: $69
	rst  $38                                         ; $44c9: $ff
	db   $fd                                         ; $44ca: $fd
	xor  c                                           ; $44cb: $a9
	ld   [hl], a                                     ; $44cc: $77
	xor  h                                           ; $44cd: $ac
	rst  $38                                         ; $44ce: $ff
	jp   c, $3155                                    ; $44cf: $da $55 $31

	inc  h                                           ; $44d2: $24
	ld   d, l                                        ; $44d3: $55
	ld   h, a                                        ; $44d4: $67
	sub  a                                           ; $44d5: $97
	ld   h, l                                        ; $44d6: $65
	ld   l, b                                        ; $44d7: $68
	ld   d, l                                        ; $44d8: $55
	ld   a, b                                        ; $44d9: $78
	add  a                                           ; $44da: $87
	sbc  d                                           ; $44db: $9a
	sbc  e                                           ; $44dc: $9b
	xor  d                                           ; $44dd: $aa
	xor  h                                           ; $44de: $ac
	db   $db                                         ; $44df: $db
	set  1, e                                        ; $44e0: $cb $cb
	cp   d                                           ; $44e2: $ba
	cp   c                                           ; $44e3: $b9
	add  a                                           ; $44e4: $87
	ld   a, b                                        ; $44e5: $78
	adc  b                                           ; $44e6: $88
	sbc  b                                           ; $44e7: $98
	sbc  c                                           ; $44e8: $99
	sbc  c                                           ; $44e9: $99
	sbc  c                                           ; $44ea: $99
	adc  b                                           ; $44eb: $88
	adc  b                                           ; $44ec: $88
	sbc  d                                           ; $44ed: $9a
	sbc  c                                           ; $44ee: $99
	sbc  c                                           ; $44ef: $99
	sbc  c                                           ; $44f0: $99
	adc  b                                           ; $44f1: $88
	adc  b                                           ; $44f2: $88
	sbc  b                                           ; $44f3: $98
	sbc  b                                           ; $44f4: $98
	sbc  c                                           ; $44f5: $99
	sbc  b                                           ; $44f6: $98
	adc  b                                           ; $44f7: $88
	add  a                                           ; $44f8: $87
	ld   [hl], a                                     ; $44f9: $77
	ld   a, b                                        ; $44fa: $78
	adc  c                                           ; $44fb: $89
	sbc  b                                           ; $44fc: $98
	adc  b                                           ; $44fd: $88
	ld   [hl], a                                     ; $44fe: $77
	ld   a, b                                        ; $44ff: $78
	sbc  c                                           ; $4500: $99
	adc  b                                           ; $4501: $88
	sbc  c                                           ; $4502: $99
	sbc  c                                           ; $4503: $99
	adc  b                                           ; $4504: $88
	ld   [hl], a                                     ; $4505: $77
	ld   [hl], a                                     ; $4506: $77
	ld   [hl], a                                     ; $4507: $77
	adc  b                                           ; $4508: $88
	adc  b                                           ; $4509: $88
	adc  b                                           ; $450a: $88
	ld   [hl], a                                     ; $450b: $77
	adc  b                                           ; $450c: $88
	sbc  c                                           ; $450d: $99
	adc  c                                           ; $450e: $89
	sbc  c                                           ; $450f: $99
	adc  b                                           ; $4510: $88
	adc  b                                           ; $4511: $88
	ld   [hl], a                                     ; $4512: $77
	ld   [hl], a                                     ; $4513: $77
	ld   [hl], a                                     ; $4514: $77
	ld   [hl], a                                     ; $4515: $77
	ld   [hl], a                                     ; $4516: $77
	ld   [hl], a                                     ; $4517: $77
	ld   [hl], a                                     ; $4518: $77
	ld   a, b                                        ; $4519: $78
	adc  b                                           ; $451a: $88
	sbc  b                                           ; $451b: $98
	sbc  c                                           ; $451c: $99
	sbc  b                                           ; $451d: $98
	add  a                                           ; $451e: $87
	ld   [hl], a                                     ; $451f: $77
	ld   [hl], a                                     ; $4520: $77
	ld   [hl], a                                     ; $4521: $77
	ld   [hl], a                                     ; $4522: $77
	ld   [hl], a                                     ; $4523: $77
	ld   [hl], a                                     ; $4524: $77
	ld   [hl], a                                     ; $4525: $77
	ld   a, b                                        ; $4526: $78
	adc  c                                           ; $4527: $89
	sbc  b                                           ; $4528: $98
	adc  b                                           ; $4529: $88
	add  a                                           ; $452a: $87
	ld   [hl], a                                     ; $452b: $77
	ld   [hl], a                                     ; $452c: $77
	ld   [hl], a                                     ; $452d: $77
	ld   [hl], a                                     ; $452e: $77
	ld   [hl], a                                     ; $452f: $77
	ld   [hl], a                                     ; $4530: $77
	ld   [hl], a                                     ; $4531: $77
	ld   a, b                                        ; $4532: $78
	adc  b                                           ; $4533: $88
	sbc  b                                           ; $4534: $98
	adc  c                                           ; $4535: $89
	sbc  b                                           ; $4536: $98
	adc  b                                           ; $4537: $88
	adc  b                                           ; $4538: $88
	ld   [hl], a                                     ; $4539: $77
	ld   [hl], a                                     ; $453a: $77
	ld   [hl], a                                     ; $453b: $77
	ld   [hl], a                                     ; $453c: $77
	ld   [hl], a                                     ; $453d: $77
	ld   [hl], a                                     ; $453e: $77
	ld   a, b                                        ; $453f: $78
	adc  b                                           ; $4540: $88
	sbc  c                                           ; $4541: $99
	sbc  b                                           ; $4542: $98
	adc  b                                           ; $4543: $88
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	add  a                                           ; $4546: $87
	ld   [hl], a                                     ; $4547: $77
	ld   [hl], a                                     ; $4548: $77
	ld   [hl], a                                     ; $4549: $77
	ld   [hl], a                                     ; $454a: $77
	ld   [hl], a                                     ; $454b: $77
	adc  b                                           ; $454c: $88
	adc  b                                           ; $454d: $88
	adc  b                                           ; $454e: $88
	adc  b                                           ; $454f: $88
	adc  b                                           ; $4550: $88
	sbc  b                                           ; $4551: $98
	sbc  c                                           ; $4552: $99
	adc  b                                           ; $4553: $88
	add  a                                           ; $4554: $87
	ld   [hl], a                                     ; $4555: $77
	ld   [hl], a                                     ; $4556: $77
	ld   [hl], a                                     ; $4557: $77
	adc  b                                           ; $4558: $88
	adc  b                                           ; $4559: $88
	adc  b                                           ; $455a: $88
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	sbc  b                                           ; $455e: $98
	adc  b                                           ; $455f: $88
	sbc  c                                           ; $4560: $99
	adc  b                                           ; $4561: $88
	ld   [hl], a                                     ; $4562: $77
	ld   [hl], a                                     ; $4563: $77
	ld   [hl], a                                     ; $4564: $77
	adc  b                                           ; $4565: $88
	adc  b                                           ; $4566: $88
	add  a                                           ; $4567: $87
	ld   [hl], a                                     ; $4568: $77
	ld   [hl], a                                     ; $4569: $77
	adc  b                                           ; $456a: $88
	sbc  c                                           ; $456b: $99
	adc  c                                           ; $456c: $89
	sbc  c                                           ; $456d: $99
	adc  b                                           ; $456e: $88
	ld   [hl], a                                     ; $456f: $77
	ld   [hl], a                                     ; $4570: $77
	adc  b                                           ; $4571: $88
	adc  c                                           ; $4572: $89
	adc  b                                           ; $4573: $88
	add  a                                           ; $4574: $87
	ld   [hl], a                                     ; $4575: $77
	ld   [hl], a                                     ; $4576: $77
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	sbc  c                                           ; $4579: $99
	adc  b                                           ; $457a: $88
	adc  b                                           ; $457b: $88
	ld   [hl], a                                     ; $457c: $77
	adc  b                                           ; $457d: $88
	adc  b                                           ; $457e: $88
	sbc  c                                           ; $457f: $99
	adc  b                                           ; $4580: $88
	add  a                                           ; $4581: $87
	ld   [hl], a                                     ; $4582: $77
	ld   a, b                                        ; $4583: $78
	adc  b                                           ; $4584: $88
	adc  b                                           ; $4585: $88
	adc  b                                           ; $4586: $88
	adc  b                                           ; $4587: $88
	adc  b                                           ; $4588: $88
	adc  b                                           ; $4589: $88
	adc  b                                           ; $458a: $88
	sbc  c                                           ; $458b: $99
	sbc  c                                           ; $458c: $99
	adc  b                                           ; $458d: $88
	adc  b                                           ; $458e: $88
	adc  b                                           ; $458f: $88
	adc  b                                           ; $4590: $88
	adc  b                                           ; $4591: $88
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	adc  b                                           ; $4595: $88

Jump_0bd_4596:
	adc  b                                           ; $4596: $88
	adc  b                                           ; $4597: $88
	sbc  c                                           ; $4598: $99
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	adc  c                                           ; $45a4: $89
	sbc  c                                           ; $45a5: $99
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  c                                           ; $45b0: $89
	sbc  c                                           ; $45b1: $99
	sbc  b                                           ; $45b2: $98
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	adc  b                                           ; $45b6: $88
	adc  b                                           ; $45b7: $88
	adc  b                                           ; $45b8: $88
	adc  b                                           ; $45b9: $88
	adc  b                                           ; $45ba: $88
	adc  b                                           ; $45bb: $88
	adc  b                                           ; $45bc: $88
	sbc  c                                           ; $45bd: $99
	sbc  c                                           ; $45be: $99
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
	adc  c                                           ; $45ca: $89
	sbc  b                                           ; $45cb: $98
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
	adc  b                                           ; $4610: $88
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
	adc  b                                           ; $461b: $88
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
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  b                                           ; $4636: $88
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  b                                           ; $463b: $88
	adc  b                                           ; $463c: $88
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	adc  b                                           ; $4640: $88
	adc  b                                           ; $4641: $88
	adc  b                                           ; $4642: $88
	adc  b                                           ; $4643: $88
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	adc  b                                           ; $4647: $88
	adc  b                                           ; $4648: $88
	adc  b                                           ; $4649: $88
	adc  b                                           ; $464a: $88
	adc  b                                           ; $464b: $88
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	adc  b                                           ; $464e: $88
	adc  b                                           ; $464f: $88
	adc  b                                           ; $4650: $88
	adc  b                                           ; $4651: $88
	adc  b                                           ; $4652: $88
	adc  b                                           ; $4653: $88
	adc  b                                           ; $4654: $88
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	adc  b                                           ; $465a: $88
	adc  b                                           ; $465b: $88
	adc  b                                           ; $465c: $88
	adc  b                                           ; $465d: $88
	adc  b                                           ; $465e: $88
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	adc  b                                           ; $4666: $88
	adc  b                                           ; $4667: $88
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	adc  b                                           ; $466c: $88
	adc  b                                           ; $466d: $88
	adc  b                                           ; $466e: $88
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  b                                           ; $4673: $88
	adc  b                                           ; $4674: $88
	adc  b                                           ; $4675: $88
	adc  b                                           ; $4676: $88
	adc  b                                           ; $4677: $88
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  b                                           ; $467a: $88
	adc  b                                           ; $467b: $88
	adc  b                                           ; $467c: $88
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	adc  b                                           ; $4684: $88
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	adc  b                                           ; $4687: $88
	adc  b                                           ; $4688: $88
	adc  b                                           ; $4689: $88
	adc  b                                           ; $468a: $88
	adc  b                                           ; $468b: $88
	adc  b                                           ; $468c: $88
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	adc  b                                           ; $468f: $88
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88
	adc  b                                           ; $4694: $88
	adc  b                                           ; $4695: $88
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	adc  b                                           ; $469b: $88
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	adc  b                                           ; $46a5: $88
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  c                                           ; $46ab: $89
	adc  b                                           ; $46ac: $88
	adc  b                                           ; $46ad: $88
	adc  b                                           ; $46ae: $88
	sbc  b                                           ; $46af: $98
	adc  b                                           ; $46b0: $88
	ld   [hl], a                                     ; $46b1: $77
	ld   [hl], a                                     ; $46b2: $77
	ld   [hl], a                                     ; $46b3: $77
	ld   a, b                                        ; $46b4: $78
	add  a                                           ; $46b5: $87
	ld   [hl], a                                     ; $46b6: $77
	adc  b                                           ; $46b7: $88
	ld   [hl], a                                     ; $46b8: $77
	adc  b                                           ; $46b9: $88
	ld   [hl], a                                     ; $46ba: $77
	adc  b                                           ; $46bb: $88
	adc  b                                           ; $46bc: $88
	adc  c                                           ; $46bd: $89
	xor  e                                           ; $46be: $ab
	xor  e                                           ; $46bf: $ab
	ld   a, d                                        ; $46c0: $7a
	cp   e                                           ; $46c1: $bb
	jp   z, Jump_0bd_7899                            ; $46c2: $ca $99 $78

	xor  h                                           ; $46c5: $ac
	and  [hl]                                        ; $46c6: $a6
	ld   d, l                                        ; $46c7: $55
	ld   e, c                                        ; $46c8: $59
	cp   e                                           ; $46c9: $bb
	add  a                                           ; $46ca: $87
	ld   h, [hl]                                     ; $46cb: $66
	ld   h, [hl]                                     ; $46cc: $66
	adc  b                                           ; $46cd: $88
	add  [hl]                                        ; $46ce: $86
	ld   d, [hl]                                     ; $46cf: $56
	halt                                             ; $46d0: $76
	halt                                             ; $46d1: $76
	ld   a, c                                        ; $46d2: $79
	sbc  e                                           ; $46d3: $9b
	xor  e                                           ; $46d4: $ab
	res  3, b                                        ; $46d5: $cb $98
	sbc  c                                           ; $46d7: $99
	add  [hl]                                        ; $46d8: $86
	xor  e                                           ; $46d9: $ab
	sub  l                                           ; $46da: $95
	inc  sp                                          ; $46db: $33
	ld   b, l                                        ; $46dc: $45
	ld   d, [hl]                                     ; $46dd: $56
	ld   h, a                                        ; $46de: $67
	ld   h, [hl]                                     ; $46df: $66
	ld   h, [hl]                                     ; $46e0: $66
	ld   h, a                                        ; $46e1: $67
	ld   [hl], a                                     ; $46e2: $77
	adc  b                                           ; $46e3: $88
	adc  c                                           ; $46e4: $89
	sbc  c                                           ; $46e5: $99
	ld   [hl], a                                     ; $46e6: $77
	sbc  c                                           ; $46e7: $99
	adc  c                                           ; $46e8: $89
	adc  c                                           ; $46e9: $89
	ld   [hl], h                                     ; $46ea: $74
	ld   hl, $1111                                   ; $46eb: $21 $11 $11
	ld   de, $1811                                   ; $46ee: $11 $11 $18
	rst  $38                                         ; $46f1: $ff
	rst  $38                                         ; $46f2: $ff
	rst  $38                                         ; $46f3: $ff
	reti                                             ; $46f4: $d9


	ld   d, [hl]                                     ; $46f5: $56
	rst  $28                                         ; $46f6: $ef
	rst  $38                                         ; $46f7: $ff
	db   $fd                                         ; $46f8: $fd
	ld   d, c                                        ; $46f9: $51
	ld   de, $1111                                   ; $46fa: $11 $11 $11
	jr   @+$01                                       ; $46fd: $18 $ff

	rst  $38                                         ; $46ff: $ff
	rst  $38                                         ; $4700: $ff
	rst  $20                                         ; $4701: $e7
	ld   b, l                                        ; $4702: $45
	sbc  e                                           ; $4703: $9b
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	ld   hl, sp+$41                                  ; $4706: $f8 $41
	ld   de, $1111                                   ; $4708: $11 $11 $11
	ld   de, $ffff                                   ; $470b: $11 $ff $ff
	rst  $38                                         ; $470e: $ff
	db   $f4                                         ; $470f: $f4
	dec  d                                           ; $4710: $15
	sbc  c                                           ; $4711: $99
	rst  $28                                         ; $4712: $ef
	rst  $38                                         ; $4713: $ff
	di                                               ; $4714: $f3
	inc  de                                          ; $4715: $13
	ld   b, [hl]                                     ; $4716: $46
	sub  c                                           ; $4717: $91
	ld   de, $1e11                                   ; $4718: $11 $11 $1e
	rst  $38                                         ; $471b: $ff
	rst  $38                                         ; $471c: $ff
	rst  $38                                         ; $471d: $ff
	ld   sp, $9d32                                   ; $471e: $31 $32 $9d
	rst  $38                                         ; $4721: $ff
	rst  $38                                         ; $4722: $ff
	ld   de, $5c16                                   ; $4723: $11 $16 $5c
	ld   [hl], c                                     ; $4726: $71
	ld   de, $3f11                                   ; $4727: $11 $11 $3f
	rst  $38                                         ; $472a: $ff
	rst  $38                                         ; $472b: $ff
	ld   a, [$1a11]                                  ; $472c: $fa $11 $1a
	rst  $38                                         ; $472f: $ff
	rst  $38                                         ; $4730: $ff
	db   $f4                                         ; $4731: $f4
	ld   de, $fc7a                                   ; $4732: $11 $7a $fc
	ld   de, $1111                                   ; $4735: $11 $11 $11
	rst  $38                                         ; $4738: $ff
	rst  $38                                         ; $4739: $ff
	rst  $38                                         ; $473a: $ff
	pop  de                                          ; $473b: $d1
	ld   de, $ff8f                                   ; $473c: $11 $8f $ff
	rst  $38                                         ; $473f: $ff
	add  c                                           ; $4740: $81
	ld   [de], a                                     ; $4741: $12
	cp   a                                           ; $4742: $bf
	pop  af                                          ; $4743: $f1

Call_0bd_4744:
	ld   de, $1f11                                   ; $4744: $11 $11 $1f
	rst  $38                                         ; $4747: $ff
	rst  $38                                         ; $4748: $ff
	rst  $38                                         ; $4749: $ff
	ld   de, rAUD1HIGH                                   ; $474a: $11 $14 $ff
	rst  $38                                         ; $474d: $ff
	ld   a, [$1d11]                                  ; $474e: $fa $11 $1d
	rst  $38                                         ; $4751: $ff
	ld   d, c                                        ; $4752: $51
	ld   de, $cf11                                   ; $4753: $11 $11 $cf
	rst  $38                                         ; $4756: $ff
	rst  $38                                         ; $4757: $ff
	pop  af                                          ; $4758: $f1
	ld   de, $ff1f                                   ; $4759: $11 $1f $ff
	rst  $38                                         ; $475c: $ff
	pop  de                                          ; $475d: $d1
	ld   de, $fa9f                                   ; $475e: $11 $9f $fa
	ld   de, $1511                                   ; $4761: $11 $11 $15
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	ld   de, rAUD1ENV                                   ; $4767: $11 $12 $ff
	rst  $38                                         ; $476a: $ff
	rst  $38                                         ; $476b: $ff
	ld   de, $ff1b                                   ; $476c: $11 $1b $ff
	pop  de                                          ; $476f: $d1
	ld   de, $1f11                                   ; $4770: $11 $11 $1f
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	ld   hl, sp+$11                                  ; $4775: $f8 $11
	rra                                              ; $4777: $1f
	rst  $38                                         ; $4778: $ff
	rst  $38                                         ; $4779: $ff
	di                                               ; $477a: $f3
	ld   de, $ff8f                                   ; $477b: $11 $8f $ff
	ld   de, $1111                                   ; $477e: $11 $11 $11
	rst  $38                                         ; $4781: $ff
	rst  $38                                         ; $4782: $ff
	rst  $38                                         ; $4783: $ff
	or   c                                           ; $4784: $b1
	ld   de, $ffaf                                   ; $4785: $11 $af $ff
	rst  $38                                         ; $4788: $ff
	ld   [hl], c                                     ; $4789: $71
	dec  d                                           ; $478a: $15
	rst  $38                                         ; $478b: $ff
	di                                               ; $478c: $f3
	ld   de, $1e11                                   ; $478d: $11 $11 $1e
	rst  $38                                         ; $4790: $ff
	rst  $38                                         ; $4791: $ff
	ei                                               ; $4792: $fb
	ld   de, $ff19                                   ; $4793: $11 $19 $ff
	rst  $38                                         ; $4796: $ff
	ei                                               ; $4797: $fb
	ld   de, $ff4e                                   ; $4798: $11 $4e $ff
	pop  de                                          ; $479b: $d1
	ld   de, $1f11                                   ; $479c: $11 $11 $1f
	rst  $38                                         ; $479f: $ff
	rst  $38                                         ; $47a0: $ff
	or   $11                                         ; $47a1: $f6 $11
	ld   c, e                                        ; $47a3: $4b
	rst  $38                                         ; $47a4: $ff
	rst  $38                                         ; $47a5: $ff
	rst  ToBoot                                         ; $47a6: $c7
	ld   de, $ffaf                                   ; $47a7: $11 $af $ff
	ld   de, $1111                                   ; $47aa: $11 $11 $11
	cp   a                                           ; $47ad: $bf
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	and  l                                           ; $47b0: $a5
	ld   de, $ff5f                                   ; $47b1: $11 $5f $ff
	rst  $38                                         ; $47b4: $ff
	and  d                                           ; $47b5: $a2
	add  hl, hl                                      ; $47b6: $29
	rst  $38                                         ; $47b7: $ff
	rst  $38                                         ; $47b8: $ff
	ld   de, $1111                                   ; $47b9: $11 $11 $11
	sbc  a                                           ; $47bc: $9f
	rst  $38                                         ; $47bd: $ff
	rst  $38                                         ; $47be: $ff
	pop  bc                                          ; $47bf: $c1
	ld   de, $ff5f                                   ; $47c0: $11 $5f $ff
	rst  $38                                         ; $47c3: $ff
	sub  h                                           ; $47c4: $94
	dec  sp                                          ; $47c5: $3b
	rst  $28                                         ; $47c6: $ef
	rst  $38                                         ; $47c7: $ff
	ld   de, $1111                                   ; $47c8: $11 $11 $11
	rst  JumpTable                                         ; $47cb: $df
	rst  $38                                         ; $47cc: $ff
	db   $fd                                         ; $47cd: $fd
	ld   [hl], h                                     ; $47ce: $74
	ld   sp, $ff7f                                   ; $47cf: $31 $7f $ff
	rst  $38                                         ; $47d2: $ff
	sub  e                                           ; $47d3: $93
	ld   e, a                                        ; $47d4: $5f
	rst  $38                                         ; $47d5: $ff
	cp   $11                                         ; $47d6: $fe $11
	ld   de, $6f11                                   ; $47d8: $11 $11 $6f
	rst  $38                                         ; $47db: $ff
	db   $fd                                         ; $47dc: $fd
	ld   [hl], l                                     ; $47dd: $75
	ld   [hl], h                                     ; $47de: $74
	ld   c, c                                        ; $47df: $49
	rst  $38                                         ; $47e0: $ff
	rst  $38                                         ; $47e1: $ff
	or   $3b                                         ; $47e2: $f6 $3b
	rst  $38                                         ; $47e4: $ff
	rst  $38                                         ; $47e5: $ff
	ld   de, $1111                                   ; $47e6: $11 $11 $11
	rra                                              ; $47e9: $1f
	rst  $38                                         ; $47ea: $ff
	cp   $a2                                         ; $47eb: $fe $a2
	ld   h, h                                        ; $47ed: $64
	scf                                              ; $47ee: $37
	rst  $28                                         ; $47ef: $ef
	rst  $38                                         ; $47f0: $ff
	ei                                               ; $47f1: $fb
	ld   e, c                                        ; $47f2: $59
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	add  c                                           ; $47f5: $81
	ld   de, $1911                                   ; $47f6: $11 $11 $19
	rst  $38                                         ; $47f9: $ff
	rst  $38                                         ; $47fa: $ff
	rst  $20                                         ; $47fb: $e7
	ld   b, e                                        ; $47fc: $43
	ld   d, [hl]                                     ; $47fd: $56
	sbc  a                                           ; $47fe: $9f
	rst  $38                                         ; $47ff: $ff
	rst  $38                                         ; $4800: $ff
	ret                                              ; $4801: $c9


	xor  [hl]                                        ; $4802: $ae
	rst  $38                                         ; $4803: $ff
	push af                                          ; $4804: $f5
	ld   de, $1111                                   ; $4805: $11 $11 $11
	sbc  a                                           ; $4808: $9f
	rst  $38                                         ; $4809: $ff
	rst  $38                                         ; $480a: $ff
	ld   d, h                                        ; $480b: $54
	inc  [hl]                                        ; $480c: $34
	adc  c                                           ; $480d: $89
	rst  $38                                         ; $480e: $ff
	rst  $38                                         ; $480f: $ff
	rst  $38                                         ; $4810: $ff
	cp   d                                           ; $4811: $ba
	cp   [hl]                                        ; $4812: $be
	cp   $61                                         ; $4813: $fe $61
	ld   de, $1311                                   ; $4815: $11 $11 $13
	rst  $28                                         ; $4818: $ef
	rst  $38                                         ; $4819: $ff
	ld   a, [$6767]                                  ; $481a: $fa $67 $67
	ld   a, e                                        ; $481d: $7b
	rst  $38                                         ; $481e: $ff
	rst  $38                                         ; $481f: $ff
	db   $fd                                         ; $4820: $fd
	cp   l                                           ; $4821: $bd
	rst  JumpTable                                         ; $4822: $df
	ret                                              ; $4823: $c9


	ld   sp, $1111                                   ; $4824: $31 $11 $11
	ld   [de], a                                     ; $4827: $12
	cp   a                                           ; $4828: $bf
	rst  $38                                         ; $4829: $ff
	db   $db                                         ; $482a: $db
	sub  a                                           ; $482b: $97
	ld   h, a                                        ; $482c: $67
	adc  e                                           ; $482d: $8b
	rst  $38                                         ; $482e: $ff
	rst  $38                                         ; $482f: $ff
	db   $fd                                         ; $4830: $fd
	call $ecef                                       ; $4831: $cd $ef $ec
	add  h                                           ; $4834: $84
	ld   de, $1111                                   ; $4835: $11 $11 $11
	dec  d                                           ; $4838: $15
	ld   d, a                                        ; $4839: $57
	ld   [hl], a                                     ; $483a: $77
	sub  a                                           ; $483b: $97
	xor  b                                           ; $483c: $a8
	sbc  c                                           ; $483d: $99
	cp   [hl]                                        ; $483e: $be
	rst  $38                                         ; $483f: $ff
	rst  $38                                         ; $4840: $ff
	rst  $38                                         ; $4841: $ff
	rst  $38                                         ; $4842: $ff
	rst  $38                                         ; $4843: $ff
	reti                                             ; $4844: $d9


	ld   [hl], h                                     ; $4845: $74
	ld   de, $1111                                   ; $4846: $11 $11 $11
	ld   de, $1211                                   ; $4849: $11 $11 $12
	inc  [hl]                                        ; $484c: $34
	ld   d, [hl]                                     ; $484d: $56
	adc  d                                           ; $484e: $8a
	rst  $38                                         ; $484f: $ff
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	rst  $38                                         ; $4853: $ff
	cp   $b9                                         ; $4854: $fe $b9
	ld   [hl], h                                     ; $4856: $74
	ld   de, $1111                                   ; $4857: $11 $11 $11
	ld   de, $1111                                   ; $485a: $11 $11 $11
	ld   de, $be58                                   ; $485d: $11 $58 $be
	rst  $38                                         ; $4860: $ff
	rst  $38                                         ; $4861: $ff
	rst  $38                                         ; $4862: $ff
	rst  $38                                         ; $4863: $ff
	rst  $38                                         ; $4864: $ff
	cp   $b8                                         ; $4865: $fe $b8
	ld   h, h                                        ; $4867: $64
	ld   hl, $1111                                   ; $4868: $21 $11 $11
	ld   de, $1111                                   ; $486b: $11 $11 $11
	ld   [de], a                                     ; $486e: $12
	ld   l, c                                        ; $486f: $69
	cp   [hl]                                        ; $4870: $be
	rst  $38                                         ; $4871: $ff
	rst  $38                                         ; $4872: $ff
	rst  $38                                         ; $4873: $ff
	rst  $38                                         ; $4874: $ff
	rst  $38                                         ; $4875: $ff
	rst  $38                                         ; $4876: $ff
	db   $eb                                         ; $4877: $eb
	sub  h                                           ; $4878: $94
	ld   de, $1111                                   ; $4879: $11 $11 $11
	ld   de, $1111                                   ; $487c: $11 $11 $11
	ld   de, $ad47                                   ; $487f: $11 $47 $ad
	rst  $38                                         ; $4882: $ff
	rst  $38                                         ; $4883: $ff
	rst  $38                                         ; $4884: $ff
	rst  $38                                         ; $4885: $ff
	rst  $38                                         ; $4886: $ff
	rst  $38                                         ; $4887: $ff
	ld   [$3175], a                                  ; $4888: $ea $75 $31
	ld   de, $1111                                   ; $488b: $11 $11 $11
	ld   de, $1111                                   ; $488e: $11 $11 $11
	dec  h                                           ; $4891: $25
	adc  d                                           ; $4892: $8a
	rst  JumpTable                                         ; $4893: $df
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	rst  $38                                         ; $4896: $ff
	rst  $38                                         ; $4897: $ff
	rst  $38                                         ; $4898: $ff
	cp   $b9                                         ; $4899: $fe $b9
	ld   h, d                                        ; $489b: $62
	ld   de, $1111                                   ; $489c: $11 $11 $11
	ld   de, $1111                                   ; $489f: $11 $11 $11
	inc  de                                          ; $48a2: $13
	ld   l, d                                        ; $48a3: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a4: $cf
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	rst  $38                                         ; $48a7: $ff
	rst  $38                                         ; $48a8: $ff
	rst  $38                                         ; $48a9: $ff
	rst  $38                                         ; $48aa: $ff
	jp   z, $1174                                    ; $48ab: $ca $74 $11

	ld   de, $1111                                   ; $48ae: $11 $11 $11
	ld   de, $1111                                   ; $48b1: $11 $11 $11
	ld   b, a                                        ; $48b4: $47
	xor  l                                           ; $48b5: $ad
	rst  $38                                         ; $48b6: $ff
	rst  $38                                         ; $48b7: $ff
	rst  $38                                         ; $48b8: $ff
	rst  $38                                         ; $48b9: $ff
	rst  $38                                         ; $48ba: $ff
	rst  $38                                         ; $48bb: $ff
	db   $eb                                         ; $48bc: $eb
	add  [hl]                                        ; $48bd: $86
	ld   b, c                                        ; $48be: $41
	ld   de, $1111                                   ; $48bf: $11 $11 $11
	ld   de, $1111                                   ; $48c2: $11 $11 $11
	inc  de                                          ; $48c5: $13
	ld   a, e                                        ; $48c6: $7b
	rst  $28                                         ; $48c7: $ef
	rst  $38                                         ; $48c8: $ff
	rst  $38                                         ; $48c9: $ff
	rst  $38                                         ; $48ca: $ff
	rst  $38                                         ; $48cb: $ff
	rst  $38                                         ; $48cc: $ff
	cp   $b8                                         ; $48cd: $fe $b8
	ld   d, e                                        ; $48cf: $53
	ld   de, $1111                                   ; $48d0: $11 $11 $11
	ld   de, $1111                                   ; $48d3: $11 $11 $11
	ld   de, $be58                                   ; $48d6: $11 $58 $be
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	rst  $38                                         ; $48dd: $ff
	rst  $38                                         ; $48de: $ff
	db   $eb                                         ; $48df: $eb
	sub  a                                           ; $48e0: $97
	ld   b, c                                        ; $48e1: $41
	ld   de, $1111                                   ; $48e2: $11 $11 $11
	ld   de, $1111                                   ; $48e5: $11 $11 $11
	inc  b                                           ; $48e8: $04
	ld   a, e                                        ; $48e9: $7b
	rst  JumpTable                                         ; $48ea: $df
	rst  $38                                         ; $48eb: $ff
	rst  $38                                         ; $48ec: $ff
	rst  $38                                         ; $48ed: $ff
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	cp   $b8                                         ; $48f0: $fe $b8
	ld   h, e                                        ; $48f2: $63
	ld   de, $1111                                   ; $48f3: $11 $11 $11
	ld   de, $1111                                   ; $48f6: $11 $11 $11
	ld   de, $be47                                   ; $48f9: $11 $47 $be
	rst  $38                                         ; $48fc: $ff
	rst  $38                                         ; $48fd: $ff
	rst  $38                                         ; $48fe: $ff
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	rst  $38                                         ; $4901: $ff
	db   $ec                                         ; $4902: $ec
	sub  [hl]                                        ; $4903: $96
	ld   b, c                                        ; $4904: $41
	ld   de, $1111                                   ; $4905: $11 $11 $11
	ld   de, $1111                                   ; $4908: $11 $11 $11
	inc  de                                          ; $490b: $13
	ld   a, d                                        ; $490c: $7a
	rst  $28                                         ; $490d: $ef
	rst  $38                                         ; $490e: $ff
	rst  $38                                         ; $490f: $ff
	rst  $38                                         ; $4910: $ff
	rst  $38                                         ; $4911: $ff
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	jp   z, $1175                                    ; $4914: $ca $75 $11

	ld   de, $1111                                   ; $4917: $11 $11 $11
	ld   de, $1111                                   ; $491a: $11 $11 $11
	ld   [hl], $ad                                   ; $491d: $36 $ad
	rst  $38                                         ; $491f: $ff
	rst  $38                                         ; $4920: $ff
	rst  $38                                         ; $4921: $ff
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	db   $fd                                         ; $4925: $fd
	xor  b                                           ; $4926: $a8
	ld   h, e                                        ; $4927: $63
	ld   de, $1111                                   ; $4928: $11 $11 $11
	ld   de, $1111                                   ; $492b: $11 $11 $11
	ld   de, $be48                                   ; $492e: $11 $48 $be
	rst  $38                                         ; $4931: $ff
	rst  $38                                         ; $4932: $ff
	rst  $38                                         ; $4933: $ff
	rst  $38                                         ; $4934: $ff
	rst  $38                                         ; $4935: $ff
	rst  $38                                         ; $4936: $ff
	db   $db                                         ; $4937: $db
	sub  a                                           ; $4938: $97
	ld   b, c                                        ; $4939: $41
	ld   de, $1111                                   ; $493a: $11 $11 $11
	ld   de, $1111                                   ; $493d: $11 $11 $11
	inc  de                                          ; $4940: $13
	ld   l, c                                        ; $4941: $69
	rst  JumpTable                                         ; $4942: $df
	rst  $38                                         ; $4943: $ff
	rst  $38                                         ; $4944: $ff
	rst  $38                                         ; $4945: $ff
	rst  $38                                         ; $4946: $ff
	rst  $38                                         ; $4947: $ff
	cp   $c9                                         ; $4948: $fe $c9
	ld   h, h                                        ; $494a: $64
	ld   de, $1111                                   ; $494b: $11 $11 $11
	ld   de, $1111                                   ; $494e: $11 $11 $11
	dec  h                                           ; $4951: $25
	ld   a, d                                        ; $4952: $7a
	adc  $ff                                         ; $4953: $ce $ff
	rst  $38                                         ; $4955: $ff
	rst  $38                                         ; $4956: $ff
	rst  $38                                         ; $4957: $ff
	rst  $38                                         ; $4958: $ff
	cp   $cb                                         ; $4959: $fe $cb
	add  a                                           ; $495b: $87
	ld   d, d                                        ; $495c: $52
	ld   de, $1111                                   ; $495d: $11 $11 $11
	ld   de, $5624                                   ; $4960: $11 $24 $56
	ld   a, c                                        ; $4963: $79
	cp   l                                           ; $4964: $bd
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	rst  $38                                         ; $4968: $ff
	rst  $38                                         ; $4969: $ff
	db   $ec                                         ; $496a: $ec
	sub  a                                           ; $496b: $97
	ld   b, d                                        ; $496c: $42
	ld   de, $1111                                   ; $496d: $11 $11 $11
	ld   de, $ab59                                   ; $4970: $11 $59 $ab
	sub  a                                           ; $4973: $97
	ld   h, a                                        ; $4974: $67
	sbc  h                                           ; $4975: $9c
	rst  $38                                         ; $4976: $ff
	rst  $38                                         ; $4977: $ff
	rst  $38                                         ; $4978: $ff
	rst  $38                                         ; $4979: $ff
	cp   $cb                                         ; $497a: $fe $cb
	sub  [hl]                                        ; $497c: $96
	ld   sp, $1111                                   ; $497d: $31 $11 $11
	ld   de, $ac15                                   ; $4980: $11 $15 $ac
	db   $ed                                         ; $4983: $ed
	add  a                                           ; $4984: $87
	ld   h, [hl]                                     ; $4985: $66
	xor  h                                           ; $4986: $ac
	rst  $28                                         ; $4987: $ef
	rst  $38                                         ; $4988: $ff
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	cp   $b9                                         ; $498b: $fe $b9
	ld   [hl], l                                     ; $498d: $75
	ld   hl, $1111                                   ; $498e: $21 $11 $11
	ld   de, $ff1a                                   ; $4991: $11 $1a $ff
	ld   a, [$6876]                                  ; $4994: $fa $76 $68
	xor  [hl]                                        ; $4997: $ae
	rst  $38                                         ; $4998: $ff
	rst  $38                                         ; $4999: $ff
	rst  $38                                         ; $499a: $ff
	rst  $38                                         ; $499b: $ff
	db   $db                                         ; $499c: $db
	and  a                                           ; $499d: $a7
	ld   d, d                                        ; $499e: $52
	ld   de, $1111                                   ; $499f: $11 $11 $11
	ld   de, $ffaf                                   ; $49a2: $11 $af $ff
	ret  c                                           ; $49a5: $d8

	ld   d, h                                        ; $49a6: $54
	ld   e, c                                        ; $49a7: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49a8: $cf
	rst  $38                                         ; $49a9: $ff
	rst  $38                                         ; $49aa: $ff
	rst  $38                                         ; $49ab: $ff
	rst  $38                                         ; $49ac: $ff
	call c, $3196                                    ; $49ad: $dc $96 $31
	ld   de, $1111                                   ; $49b0: $11 $11 $11
	ld   d, $ff                                      ; $49b3: $16 $ff
	rst  $38                                         ; $49b5: $ff
	sub  l                                           ; $49b6: $95
	ld   d, l                                        ; $49b7: $55
	sbc  h                                           ; $49b8: $9c
	rst  $38                                         ; $49b9: $ff
	rst  $38                                         ; $49ba: $ff
	rst  $38                                         ; $49bb: $ff
	rst  $38                                         ; $49bc: $ff
	rst  $38                                         ; $49bd: $ff
	jp   c, $1173                                    ; $49be: $da $73 $11

	ld   de, $1111                                   ; $49c1: $11 $11 $11
	ccf                                              ; $49c4: $3f
	rst  $38                                         ; $49c5: $ff
	db   $fc                                         ; $49c6: $fc
	ld   h, l                                        ; $49c7: $65
	ld   l, b                                        ; $49c8: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49c9: $cf
	rst  $38                                         ; $49ca: $ff
	rst  $38                                         ; $49cb: $ff
	rst  $38                                         ; $49cc: $ff
	rst  $38                                         ; $49cd: $ff
	db   $fd                                         ; $49ce: $fd
	cp   c                                           ; $49cf: $b9
	ld   d, c                                        ; $49d0: $51
	ld   de, $1111                                   ; $49d1: $11 $11 $11
	ld   [de], a                                     ; $49d4: $12
	rst  $38                                         ; $49d5: $ff
	rst  $38                                         ; $49d6: $ff
	and  a                                           ; $49d7: $a7
	ld   e, b                                        ; $49d8: $58
	xor  h                                           ; $49d9: $ac
	rst  $28                                         ; $49da: $ef
	rst  $38                                         ; $49db: $ff
	rst  $38                                         ; $49dc: $ff
	rst  $38                                         ; $49dd: $ff
	rst  $38                                         ; $49de: $ff
	db   $ec                                         ; $49df: $ec
	sub  [hl]                                        ; $49e0: $96
	ld   de, $1111                                   ; $49e1: $11 $11 $11
	ld   de, $ff1b                                   ; $49e4: $11 $1b $ff
	ei                                               ; $49e7: $fb
	halt                                             ; $49e8: $76
	ld   l, d                                        ; $49e9: $6a
	call $ffef                                       ; $49ea: $cd $ef $ff
	rst  $38                                         ; $49ed: $ff
	rst  $38                                         ; $49ee: $ff
	cp   $cb                                         ; $49ef: $fe $cb
	sub  l                                           ; $49f1: $95
	ld   de, $1111                                   ; $49f2: $11 $11 $11
	ld   de, $ff7f                                   ; $49f5: $11 $7f $ff
	rst  $10                                         ; $49f8: $d7
	sbc  c                                           ; $49f9: $99
	sbc  h                                           ; $49fa: $9c
	call z, $ffff                                    ; $49fb: $cc $ff $ff
	rst  $38                                         ; $49fe: $ff
	rst  $38                                         ; $49ff: $ff
	cp   $d9                                         ; $4a00: $fe $d9
	ld   d, c                                        ; $4a02: $51
	ld   de, $1111                                   ; $4a03: $11 $11 $11
	ld   [de], a                                     ; $4a06: $12
	rst  $38                                         ; $4a07: $ff
	rst  $38                                         ; $4a08: $ff
	sbc  b                                           ; $4a09: $98
	sbc  d                                           ; $4a0a: $9a
	cp   d                                           ; $4a0b: $ba
	cp   l                                           ; $4a0c: $bd
	rst  $38                                         ; $4a0d: $ff
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	cp   $c7                                         ; $4a11: $fe $c7
	ld   de, $1111                                   ; $4a13: $11 $11 $11
	ld   de, $ff1a                                   ; $4a16: $11 $1a $ff
	cp   $6a                                         ; $4a19: $fe $6a
	cp   c                                           ; $4a1b: $b9
	cp   b                                           ; $4a1c: $b8
	xor  a                                           ; $4a1d: $af
	rst  $38                                         ; $4a1e: $ff
	rst  $38                                         ; $4a1f: $ff
	rst  $38                                         ; $4a20: $ff
	rst  $38                                         ; $4a21: $ff
	db   $db                                         ; $4a22: $db
	sub  e                                           ; $4a23: $93
	ld   de, $1111                                   ; $4a24: $11 $11 $11
	ld   de, $ff3f                                   ; $4a27: $11 $3f $ff
	ld   a, [$a9ac]                                  ; $4a2a: $fa $ac $a9
	adc  b                                           ; $4a2d: $88
	rst  JumpTable                                         ; $4a2e: $df
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	rst  $38                                         ; $4a31: $ff
	rst  $38                                         ; $4a32: $ff
	db   $db                                         ; $4a33: $db
	ld   [hl], d                                     ; $4a34: $72
	ld   de, $1111                                   ; $4a35: $11 $11 $11
	ld   de, $ff8f                                   ; $4a38: $11 $8f $ff
	ld   [$89ab], a                                  ; $4a3b: $ea $ab $89
	sbc  e                                           ; $4a3e: $9b
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	rst  $38                                         ; $4a42: $ff
	rst  $38                                         ; $4a43: $ff
	cp   c                                           ; $4a44: $b9
	ld   d, c                                        ; $4a45: $51
	ld   de, $1111                                   ; $4a46: $11 $11 $11
	inc  de                                          ; $4a49: $13
	rst  $38                                         ; $4a4a: $ff
	rst  $38                                         ; $4a4b: $ff
	call $97ca                                       ; $4a4c: $cd $ca $97
	sbc  [hl]                                        ; $4a4f: $9e
	rst  $38                                         ; $4a50: $ff
	rst  $38                                         ; $4a51: $ff
	rst  $38                                         ; $4a52: $ff
	rst  $38                                         ; $4a53: $ff
	db   $fd                                         ; $4a54: $fd
	and  a                                           ; $4a55: $a7
	ld   sp, $1111                                   ; $4a56: $31 $11 $11
	ld   de, $ff1a                                   ; $4a59: $11 $1a $ff
	call c, $b9ee                                    ; $4a5c: $dc $ee $b9
	ld   [hl], a                                     ; $4a5f: $77
	sbc  a                                           ; $4a60: $9f
	rst  $38                                         ; $4a61: $ff
	rst  $38                                         ; $4a62: $ff
	rst  $38                                         ; $4a63: $ff
	rst  $38                                         ; $4a64: $ff
	db   $fc                                         ; $4a65: $fc
	sub  l                                           ; $4a66: $95
	ld   de, $1111                                   ; $4a67: $11 $11 $11
	ld   de, $fd1f                                   ; $4a6a: $11 $1f $fd
	db   $fd                                         ; $4a6d: $fd
	db   $fd                                         ; $4a6e: $fd
	xor  c                                           ; $4a6f: $a9
	sbc  b                                           ; $4a70: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a71: $cf
	rst  $38                                         ; $4a72: $ff
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	rst  $38                                         ; $4a75: $ff
	db   $fc                                         ; $4a76: $fc
	sub  d                                           ; $4a77: $92
	ld   de, $1111                                   ; $4a78: $11 $11 $11
	ld   de, $cb5e                                   ; $4a7b: $11 $5e $cb
	rst  $28                                         ; $4a7e: $ef
	db   $fc                                         ; $4a7f: $fc
	xor  d                                           ; $4a80: $aa
	cp   d                                           ; $4a81: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a82: $cf
	rst  $38                                         ; $4a83: $ff
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	cp   $ca                                         ; $4a86: $fe $ca
	ld   h, c                                        ; $4a88: $61
	ld   de, $1111                                   ; $4a89: $11 $11 $11
	ld   de, $7659                                   ; $4a8c: $11 $59 $76
	xor  l                                           ; $4a8f: $ad
	jp   c, $bc79                                    ; $4a90: $da $79 $bc

	adc  $ff                                         ; $4a93: $ce $ff
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	db   $fc                                         ; $4a99: $fc
	xor  c                                           ; $4a9a: $a9
	ld   h, e                                        ; $4a9b: $63
	ld   de, $1111                                   ; $4a9c: $11 $11 $11
	ld   de, $1211                                   ; $4a9f: $11 $11 $12
	inc  h                                           ; $4aa2: $24
	ld   a, d                                        ; $4aa3: $7a
	sbc  $ff                                         ; $4aa4: $de $ff
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	rst  $38                                         ; $4aa8: $ff
	rst  $38                                         ; $4aa9: $ff
	rst  $38                                         ; $4aaa: $ff
	res  3, b                                        ; $4aab: $cb $98
	ld   d, e                                        ; $4aad: $53
	ld   de, $1111                                   ; $4aae: $11 $11 $11
	ld   de, $1111                                   ; $4ab1: $11 $11 $11
	inc  b                                           ; $4ab4: $04
	sbc  e                                           ; $4ab5: $9b
	xor  $ff                                         ; $4ab6: $ee $ff
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	rst  $38                                         ; $4aba: $ff
	rst  $38                                         ; $4abb: $ff
	cp   $ba                                         ; $4abc: $fe $ba
	sub  [hl]                                        ; $4abe: $96
	ld   sp, $1111                                   ; $4abf: $31 $11 $11
	ld   de, $1111                                   ; $4ac2: $11 $11 $11
	ld   de, $ac26                                   ; $4ac5: $11 $26 $ac
	sbc  $ff                                         ; $4ac8: $de $ff
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	rst  $38                                         ; $4acc: $ff
	rst  $38                                         ; $4acd: $ff
	db   $ed                                         ; $4ace: $ed
	cp   d                                           ; $4acf: $ba
	ld   [hl], h                                     ; $4ad0: $74
	ld   de, $1111                                   ; $4ad1: $11 $11 $11
	ld   de, $1111                                   ; $4ad4: $11 $11 $11
	ld   de, $cc48                                   ; $4ad7: $11 $48 $cc
	rst  JumpTable                                         ; $4ada: $df
	rst  $38                                         ; $4adb: $ff
	rst  $38                                         ; $4adc: $ff
	rst  $38                                         ; $4add: $ff
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	db   $ed                                         ; $4ae0: $ed
	jp   z, $1173                                    ; $4ae1: $ca $73 $11

	ld   de, $1111                                   ; $4ae4: $11 $11 $11
	ld   de, $1211                                   ; $4ae7: $11 $11 $12
	ld   l, c                                        ; $4aea: $69
	call $ffff                                       ; $4aeb: $cd $ff $ff
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	rst  $38                                         ; $4af0: $ff
	rst  $38                                         ; $4af1: $ff
	db   $ed                                         ; $4af2: $ed
	xor  b                                           ; $4af3: $a8
	ld   d, e                                        ; $4af4: $53
	ld   de, $1111                                   ; $4af5: $11 $11 $11
	ld   de, $1111                                   ; $4af8: $11 $11 $11
	inc  de                                          ; $4afb: $13
	ld   a, e                                        ; $4afc: $7b
	adc  $ff                                         ; $4afd: $ce $ff
	rst  $38                                         ; $4aff: $ff
	rst  $38                                         ; $4b00: $ff
	rst  $38                                         ; $4b01: $ff
	rst  $38                                         ; $4b02: $ff
	rst  $38                                         ; $4b03: $ff
	db   $db                                         ; $4b04: $db
	sub  a                                           ; $4b05: $97
	ld   b, d                                        ; $4b06: $42
	ld   de, $1111                                   ; $4b07: $11 $11 $11
	ld   de, $1111                                   ; $4b0a: $11 $11 $11
	inc  d                                           ; $4b0d: $14
	ld   a, d                                        ; $4b0e: $7a
	adc  $ff                                         ; $4b0f: $ce $ff
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff
	call c, $31a6                                    ; $4b16: $dc $a6 $31
	ld   de, $1111                                   ; $4b19: $11 $11 $11
	ld   de, $1111                                   ; $4b1c: $11 $11 $11
	inc  h                                           ; $4b1f: $24
	adc  d                                           ; $4b20: $8a

Call_0bd_4b21:
	sbc  $ff                                         ; $4b21: $de $ff
	rst  $38                                         ; $4b23: $ff
	rst  $38                                         ; $4b24: $ff
	rst  $38                                         ; $4b25: $ff
	rst  $38                                         ; $4b26: $ff
	cp   $da                                         ; $4b27: $fe $da
	sub  l                                           ; $4b29: $95
	ld   sp, $1111                                   ; $4b2a: $31 $11 $11
	ld   de, $1111                                   ; $4b2d: $11 $11 $11
	ld   de, $9b25                                   ; $4b30: $11 $25 $9b
	rst  JumpTable                                         ; $4b33: $df
	rst  $38                                         ; $4b34: $ff
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	rst  $38                                         ; $4b37: $ff
	rst  $38                                         ; $4b38: $ff
	db   $fd                                         ; $4b39: $fd
	jp   z, $2175                                    ; $4b3a: $ca $75 $21

	ld   de, $1111                                   ; $4b3d: $11 $11 $11
	ld   de, $1111                                   ; $4b40: $11 $11 $11
	scf                                              ; $4b43: $37
	cp   l                                           ; $4b44: $bd
	rst  $28                                         ; $4b45: $ef
	rst  $38                                         ; $4b46: $ff
	rst  $38                                         ; $4b47: $ff
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	cp   $c9                                         ; $4b4b: $fe $c9
	ld   [hl], h                                     ; $4b4d: $74
	ld   de, $1111                                   ; $4b4e: $11 $11 $11
	ld   de, $1111                                   ; $4b51: $11 $11 $11
	ld   [de], a                                     ; $4b54: $12
	ld   e, c                                        ; $4b55: $59
	sbc  $ff                                         ; $4b56: $de $ff
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	rst  $38                                         ; $4b5a: $ff
	rst  $38                                         ; $4b5b: $ff
	rst  $38                                         ; $4b5c: $ff
	db   $ec                                         ; $4b5d: $ec
	ret                                              ; $4b5e: $c9


	ld   d, d                                        ; $4b5f: $52
	ld   de, $1111                                   ; $4b60: $11 $11 $11
	ld   de, $1111                                   ; $4b63: $11 $11 $11
	inc  d                                           ; $4b66: $14
	adc  h                                           ; $4b67: $8c
	rst  $38                                         ; $4b68: $ff
	rst  $38                                         ; $4b69: $ff
	rst  $38                                         ; $4b6a: $ff
	rst  $38                                         ; $4b6b: $ff
	rst  $38                                         ; $4b6c: $ff
	rst  $38                                         ; $4b6d: $ff
	db   $fd                                         ; $4b6e: $fd
	res  4, [hl]                                     ; $4b6f: $cb $a6
	ld   hl, $1111                                   ; $4b71: $21 $11 $11
	ld   de, $1111                                   ; $4b74: $11 $11 $11
	ld   [de], a                                     ; $4b77: $12
	ld   e, c                                        ; $4b78: $59
	rst  $28                                         ; $4b79: $ef
	rst  $38                                         ; $4b7a: $ff
	rst  $38                                         ; $4b7b: $ff
	rst  $38                                         ; $4b7c: $ff
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	ld   h, c                                        ; $4b80: $61
	inc  de                                          ; $4b81: $13
	ld   de, $1111                                   ; $4b82: $11 $11 $11
	ld   de, $8d12                                   ; $4b85: $11 $12 $8d
	db   $fd                                         ; $4b88: $fd
	cp   l                                           ; $4b89: $bd
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	rst  $38                                         ; $4b8e: $ff
	rst  $38                                         ; $4b8f: $ff
	ret  c                                           ; $4b90: $d8

	ld   de, $1111                                   ; $4b91: $11 $11 $11
	ld   de, $9b11                                   ; $4b94: $11 $11 $9b
	ld   a, h                                        ; $4b97: $7c
	rst  $38                                         ; $4b98: $ff
	ld   a, [$ef6b]                                  ; $4b99: $fa $6b $ef
	rst  $38                                         ; $4b9c: $ff
	rst  $38                                         ; $4b9d: $ff
	rst  $38                                         ; $4b9e: $ff
	cp   $dd                                         ; $4b9f: $fe $dd
	push bc                                          ; $4ba1: $c5
	ld   de, $1111                                   ; $4ba2: $11 $11 $11
	ld   de, $fb7f                                   ; $4ba5: $11 $7f $fb
	rst  $38                                         ; $4ba8: $ff
	cp   $63                                         ; $4ba9: $fe $63
	adc  h                                           ; $4bab: $8c
	rst  $38                                         ; $4bac: $ff
	rst  $38                                         ; $4bad: $ff
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	xor  $eb                                         ; $4bb0: $ee $eb
	ld   sp, $1111                                   ; $4bb2: $31 $11 $11
	ld   de, $ff1f                                   ; $4bb5: $11 $1f $ff
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	and  l                                           ; $4bba: $a5
	ld   e, c                                        ; $4bbb: $59
	rst  JumpTable                                         ; $4bbc: $df
	rst  $38                                         ; $4bbd: $ff
	rst  $38                                         ; $4bbe: $ff
	rst  $38                                         ; $4bbf: $ff
	cp   $dd                                         ; $4bc0: $fe $dd
	add  c                                           ; $4bc2: $81
	ld   de, $1111                                   ; $4bc3: $11 $11 $11
	ld   a, [de]                                     ; $4bc6: $1a
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	rst  $38                                         ; $4bc9: $ff
	push de                                          ; $4bca: $d5
	ld   b, l                                        ; $4bcb: $45
	cp   a                                           ; $4bcc: $bf
	rst  $38                                         ; $4bcd: $ff
	rst  $38                                         ; $4bce: $ff
	rst  $38                                         ; $4bcf: $ff
	rst  $38                                         ; $4bd0: $ff
	db   $dd                                         ; $4bd1: $dd
	or   l                                           ; $4bd2: $b5
	ld   de, $1111                                   ; $4bd3: $11 $11 $11
	ld   de, $ffff                                   ; $4bd6: $11 $ff $ff
	rst  $38                                         ; $4bd9: $ff
	ld   a, [$8d55]                                  ; $4bda: $fa $55 $8d
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	db   $fd                                         ; $4be1: $fd
	ret  z                                           ; $4be2: $c8

	ld   de, $1111                                   ; $4be3: $11 $11 $11
	ld   de, $ff8f                                   ; $4be6: $11 $8f $ff
	rst  $38                                         ; $4be9: $ff
	cp   $95                                         ; $4bea: $fe $95
	ld   c, d                                        ; $4bec: $4a
	rst  $28                                         ; $4bed: $ef
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	cp   $e9                                         ; $4bf1: $fe $e9
	ld   d, c                                        ; $4bf3: $51
	ld   de, $1111                                   ; $4bf4: $11 $11 $11
	ld   e, $ff                                      ; $4bf7: $1e $ff
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	rst  ToBoot                                         ; $4bfb: $c7
	ld   h, l                                        ; $4bfc: $65
	xor  a                                           ; $4bfd: $af
	rst  $38                                         ; $4bfe: $ff
	rst  $38                                         ; $4bff: $ff
	rst  $38                                         ; $4c00: $ff
	rst  $38                                         ; $4c01: $ff
	db   $dd                                         ; $4c02: $dd
	and  l                                           ; $4c03: $a5
	ld   de, $1111                                   ; $4c04: $11 $11 $11
	ld   de, $ffef                                   ; $4c07: $11 $ef $ff
	rst  $38                                         ; $4c0a: $ff
	ld   [$6c56], a                                  ; $4c0b: $ea $56 $6c
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	rst  $38                                         ; $4c12: $ff
	reti                                             ; $4c13: $d9


	ld   sp, $1111                                   ; $4c14: $31 $11 $11
	ld   de, $ff1f                                   ; $4c17: $11 $1f $ff
	rst  $38                                         ; $4c1a: $ff
	call c, Call_0bd_7887                            ; $4c1b: $dc $87 $78
	rst  JumpTable                                         ; $4c1e: $df
	rst  $38                                         ; $4c1f: $ff
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	rst  $38                                         ; $4c22: $ff
	db   $fd                                         ; $4c23: $fd
	add  c                                           ; $4c24: $81
	ld   de, $1111                                   ; $4c25: $11 $11 $11
	ld   de, $ffff                                   ; $4c28: $11 $ff $ff
	db   $fd                                         ; $4c2b: $fd
	cp   b                                           ; $4c2c: $b8
	add  a                                           ; $4c2d: $87
	adc  l                                           ; $4c2e: $8d
	rst  $38                                         ; $4c2f: $ff
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	rst  $38                                         ; $4c32: $ff
	rst  $38                                         ; $4c33: $ff
	add  sp, $21                                     ; $4c34: $e8 $21
	ld   de, $1111                                   ; $4c36: $11 $11 $11
	inc  e                                           ; $4c39: $1c
	rst  $38                                         ; $4c3a: $ff
	rst  $38                                         ; $4c3b: $ff
	xor  d                                           ; $4c3c: $aa
	ld   l, b                                        ; $4c3d: $68
	sbc  c                                           ; $4c3e: $99
	rst  JumpTable                                         ; $4c3f: $df
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	rst  $38                                         ; $4c42: $ff
	rst  $38                                         ; $4c43: $ff
	db   $fd                                         ; $4c44: $fd
	add  c                                           ; $4c45: $81
	ld   de, $1111                                   ; $4c46: $11 $11 $11
	ld   de, $ffbf                                   ; $4c49: $11 $bf $ff
	ld   a, [$aa87]                                  ; $4c4c: $fa $87 $aa
	sbc  l                                           ; $4c4f: $9d
	rst  $28                                         ; $4c50: $ef
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	rst  $38                                         ; $4c53: $ff
	rst  $38                                         ; $4c54: $ff
	ld   sp, hl                                      ; $4c55: $f9
	ld   b, c                                        ; $4c56: $41
	ld   de, $1111                                   ; $4c57: $11 $11 $11
	add  hl, de                                      ; $4c5a: $19
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	and  [hl]                                        ; $4c5d: $a6
	ld   a, b                                        ; $4c5e: $78
	cp   d                                           ; $4c5f: $ba
	adc  $ff                                         ; $4c60: $ce $ff
	rst  $38                                         ; $4c62: $ff
	rst  $38                                         ; $4c63: $ff
	rst  $38                                         ; $4c64: $ff
	cp   $a4                                         ; $4c65: $fe $a4
	ld   de, $1111                                   ; $4c67: $11 $11 $11
	ld   de, $ff6f                                   ; $4c6a: $11 $6f $ff
	ei                                               ; $4c6d: $fb
	ld   h, a                                        ; $4c6e: $67
	sbc  d                                           ; $4c6f: $9a
	xor  l                                           ; $4c70: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c71: $cf
	rst  $38                                         ; $4c72: $ff
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	rst  $38                                         ; $4c75: $ff
	ei                                               ; $4c76: $fb
	ld   d, c                                        ; $4c77: $51
	ld   de, $1111                                   ; $4c78: $11 $11 $11
	inc  de                                          ; $4c7b: $13
	rst  $38                                         ; $4c7c: $ff
	rst  $38                                         ; $4c7d: $ff
	or   l                                           ; $4c7e: $b5
	ld   a, b                                        ; $4c7f: $78
	cp   e                                           ; $4c80: $bb
	call c, $ffff                                    ; $4c81: $dc $ff $ff
	rst  $38                                         ; $4c84: $ff
	rst  $38                                         ; $4c85: $ff
	xor  $b6                                         ; $4c86: $ee $b6
	ld   de, $1111                                   ; $4c88: $11 $11 $11
	ld   de, $ff1e                                   ; $4c8b: $11 $1e $ff
	db   $fd                                         ; $4c8e: $fd
	ld   b, [hl]                                     ; $4c8f: $46
	adc  h                                           ; $4c90: $8c
	call $ffcf                                       ; $4c91: $cd $cf $ff
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	db   $ed                                         ; $4c97: $ed
	sub  d                                           ; $4c98: $92
	ld   de, $1111                                   ; $4c99: $11 $11 $11
	ld   de, $ff7f                                   ; $4c9c: $11 $7f $ff
	ld   hl, sp+$57                                  ; $4c9f: $f8 $57
	xor  h                                           ; $4ca1: $ac
	call $ffdf                                       ; $4ca2: $cd $df $ff
	rst  $38                                         ; $4ca5: $ff
	rst  $38                                         ; $4ca6: $ff
	db   $ed                                         ; $4ca7: $ed
	db   $ec                                         ; $4ca8: $ec
	ld   h, c                                        ; $4ca9: $61
	ld   de, $1111                                   ; $4caa: $11 $11 $11
	ld   de, $ffdf                                   ; $4cad: $11 $df $ff
	sub  $49                                         ; $4cb0: $d6 $49
	call $fffe                                       ; $4cb2: $cd $fe $ff
	rst  $38                                         ; $4cb5: $ff
	rst  $38                                         ; $4cb6: $ff
	rst  $38                                         ; $4cb7: $ff
	sbc  $c9                                         ; $4cb8: $de $c9
	ld   sp, $1111                                   ; $4cba: $31 $11 $11
	ld   de, $ff15                                   ; $4cbd: $11 $15 $ff
	rst  $38                                         ; $4cc0: $ff
	and  h                                           ; $4cc1: $a4
	ld   l, e                                        ; $4cc2: $6b
	rst  JumpTable                                         ; $4cc3: $df
	db   $fd                                         ; $4cc4: $fd
	rst  $38                                         ; $4cc5: $ff
	rst  $38                                         ; $4cc6: $ff
	rst  $38                                         ; $4cc7: $ff
	cp   $ee                                         ; $4cc8: $fe $ee
	ret                                              ; $4cca: $c9


	ld   de, $1111                                   ; $4ccb: $11 $11 $11
	ld   de, $ff16                                   ; $4cce: $11 $16 $ff
	rst  $38                                         ; $4cd1: $ff
	add  [hl]                                        ; $4cd2: $86
	adc  d                                           ; $4cd3: $8a
	rst  $28                                         ; $4cd4: $ef
	rst  $28                                         ; $4cd5: $ef
	rst  $38                                         ; $4cd6: $ff
	rst  $38                                         ; $4cd7: $ff
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	add  sp, $11                                     ; $4cdb: $e8 $11
	ld   de, $1111                                   ; $4cdd: $11 $11 $11
	dec  d                                           ; $4ce0: $15
	rst  $38                                         ; $4ce1: $ff
	rst  $38                                         ; $4ce2: $ff
	sub  a                                           ; $4ce3: $97
	ld   a, e                                        ; $4ce4: $7b
	rst  $28                                         ; $4ce5: $ef
	rst  $38                                         ; $4ce6: $ff
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	rst  $38                                         ; $4ceb: $ff
	ret  c                                           ; $4cec: $d8

	ld   de, $1111                                   ; $4ced: $11 $11 $11
	ld   de, $ef13                                   ; $4cf0: $11 $13 $ef
	rst  $38                                         ; $4cf3: $ff
	adc  b                                           ; $4cf4: $88
	ld   a, e                                        ; $4cf5: $7b
	cp   $ff                                         ; $4cf6: $fe $ff
	rst  $38                                         ; $4cf8: $ff
	rst  $38                                         ; $4cf9: $ff
	rst  $38                                         ; $4cfa: $ff
	rst  $38                                         ; $4cfb: $ff
	rst  $28                                         ; $4cfc: $ef
	reti                                             ; $4cfd: $d9


	ld   hl, $1111                                   ; $4cfe: $21 $11 $11
	ld   de, $9e11                                   ; $4d01: $11 $11 $9e
	rst  $28                                         ; $4d04: $ef
	xor  c                                           ; $4d05: $a9
	sbc  c                                           ; $4d06: $99
	db   $ed                                         ; $4d07: $ed
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	rst  $38                                         ; $4d0a: $ff
	rst  $38                                         ; $4d0b: $ff
	rst  $38                                         ; $4d0c: $ff
	cp   $db                                         ; $4d0d: $fe $db
	ld   h, c                                        ; $4d0f: $61
	ld   de, $1111                                   ; $4d10: $11 $11 $11
	ld   de, $aa18                                   ; $4d13: $11 $18 $aa
	and  a                                           ; $4d16: $a7
	ld   a, b                                        ; $4d17: $78
	cp   [hl]                                        ; $4d18: $be
	rst  JumpTable                                         ; $4d19: $df
	rst  $28                                         ; $4d1a: $ef
	rst  $38                                         ; $4d1b: $ff
	rst  $38                                         ; $4d1c: $ff
	rst  $38                                         ; $4d1d: $ff
	cp   $dc                                         ; $4d1e: $fe $dc
	or   [hl]                                        ; $4d20: $b6
	ld   hl, $1111                                   ; $4d21: $21 $11 $11
	ld   de, $4611                                   ; $4d24: $11 $11 $46
	adc  b                                           ; $4d27: $88
	ld   a, c                                        ; $4d28: $79
	ld   a, c                                        ; $4d29: $79
	call c, $ffde                                    ; $4d2a: $dc $de $ff
	rst  $38                                         ; $4d2d: $ff
	rst  $38                                         ; $4d2e: $ff
	rst  $38                                         ; $4d2f: $ff
	db   $ec                                         ; $4d30: $ec
	cp   e                                           ; $4d31: $bb
	add  l                                           ; $4d32: $85
	ld   hl, $1111                                   ; $4d33: $21 $11 $11
	ld   de, $3411                                   ; $4d36: $11 $11 $34
	ld   d, h                                        ; $4d39: $54
	ld   d, a                                        ; $4d3a: $57
	sbc  e                                           ; $4d3b: $9b
	call $ffde                                       ; $4d3c: $cd $de $ff
	rst  $38                                         ; $4d3f: $ff
	rst  $38                                         ; $4d40: $ff
	cp   $dd                                         ; $4d41: $fe $dd
	res  0, [hl]                                     ; $4d43: $cb $86
	ld   b, e                                        ; $4d45: $43
	ld   de, $1111                                   ; $4d46: $11 $11 $11
	ld   de, $1111                                   ; $4d49: $11 $11 $11
	dec  [hl]                                        ; $4d4c: $35
	ld   a, d                                        ; $4d4d: $7a
	call z, $ffdf                                    ; $4d4e: $cc $df $ff
	rst  $38                                         ; $4d51: $ff
	rst  $38                                         ; $4d52: $ff
	rst  $38                                         ; $4d53: $ff
	rst  $38                                         ; $4d54: $ff
	db   $ed                                         ; $4d55: $ed
	xor  c                                           ; $4d56: $a9
	ld   h, l                                        ; $4d57: $65
	ld   sp, $1111                                   ; $4d58: $31 $11 $11
	ld   de, $1111                                   ; $4d5b: $11 $11 $11
	inc  d                                           ; $4d5e: $14
	ld   l, c                                        ; $4d5f: $69
	xor  h                                           ; $4d60: $ac
	call $ffff                                       ; $4d61: $cd $ff $ff
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	rst  $38                                         ; $4d66: $ff
	rst  $38                                         ; $4d67: $ff
	jp   c, Jump_0bd_4386                            ; $4d68: $da $86 $43

	ld   hl, $1111                                   ; $4d6b: $21 $11 $11
	ld   de, $0211                                   ; $4d6e: $11 $11 $02
	ld   b, [hl]                                     ; $4d71: $46
	adc  c                                           ; $4d72: $89
	cp   h                                           ; $4d73: $bc
	rst  JumpTable                                         ; $4d74: $df
	rst  $38                                         ; $4d75: $ff
	rst  $38                                         ; $4d76: $ff
	rst  $38                                         ; $4d77: $ff
	rst  $38                                         ; $4d78: $ff
	rst  $38                                         ; $4d79: $ff
	db   $fc                                         ; $4d7a: $fc
	xor  c                                           ; $4d7b: $a9
	ld   [hl], l                                     ; $4d7c: $75
	ld   sp, $1111                                   ; $4d7d: $31 $11 $11
	ld   de, $1111                                   ; $4d80: $11 $11 $11
	inc  d                                           ; $4d83: $14
	ld   d, a                                        ; $4d84: $57
	sbc  d                                           ; $4d85: $9a
	sbc  $ff                                         ; $4d86: $de $ff
	rst  $38                                         ; $4d88: $ff
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	rst  $38                                         ; $4d8b: $ff
	rst  $38                                         ; $4d8c: $ff
	db   $db                                         ; $4d8d: $db
	add  a                                           ; $4d8e: $87
	ld   d, e                                        ; $4d8f: $53
	ld   hl, $1111                                   ; $4d90: $21 $11 $11
	ld   de, $1111                                   ; $4d93: $11 $11 $11
	dec  [hl]                                        ; $4d96: $35
	ld   a, c                                        ; $4d97: $79
	xor  h                                           ; $4d98: $ac
	rst  $28                                         ; $4d99: $ef
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	rst  $38                                         ; $4d9e: $ff
	db   $fd                                         ; $4d9f: $fd
	xor  b                                           ; $4da0: $a8
	ld   [hl], a                                     ; $4da1: $77
	ld   d, e                                        ; $4da2: $53
	ld   de, $1111                                   ; $4da3: $11 $11 $11
	ld   de, $1311                                   ; $4da6: $11 $11 $13
	ld   b, l                                        ; $4da9: $45
	ld   a, c                                        ; $4daa: $79
	cp   l                                           ; $4dab: $bd
	rst  $28                                         ; $4dac: $ef
	rst  $38                                         ; $4dad: $ff
	rst  $38                                         ; $4dae: $ff
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	db   $ec                                         ; $4db2: $ec
	xor  c                                           ; $4db3: $a9
	add  [hl]                                        ; $4db4: $86
	ld   b, d                                        ; $4db5: $42
	ld   de, $1111                                   ; $4db6: $11 $11 $11
	ld   de, $1311                                   ; $4db9: $11 $11 $13
	ld   d, [hl]                                     ; $4dbc: $56
	adc  c                                           ; $4dbd: $89
	cp   l                                           ; $4dbe: $bd
	rst  $28                                         ; $4dbf: $ef
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	rst  $38                                         ; $4dc4: $ff
	call c, $86aa                                    ; $4dc5: $dc $aa $86
	ld   b, e                                        ; $4dc8: $43
	ld   de, $1111                                   ; $4dc9: $11 $11 $11
	ld   de, $1311                                   ; $4dcc: $11 $11 $13
	ld   b, [hl]                                     ; $4dcf: $46
	adc  c                                           ; $4dd0: $89
	cp   l                                           ; $4dd1: $bd
	rst  $28                                         ; $4dd2: $ef
	rst  $38                                         ; $4dd3: $ff
	rst  $38                                         ; $4dd4: $ff
	rst  $38                                         ; $4dd5: $ff
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	db   $ec                                         ; $4dd8: $ec
	xor  c                                           ; $4dd9: $a9
	add  a                                           ; $4dda: $87
	ld   d, h                                        ; $4ddb: $54
	ld   de, $1111                                   ; $4ddc: $11 $11 $11
	ld   de, $1311                                   ; $4ddf: $11 $11 $13
	ld   d, [hl]                                     ; $4de2: $56
	ld   a, d                                        ; $4de3: $7a
	cp   h                                           ; $4de4: $bc
	rst  JumpTable                                         ; $4de5: $df
	rst  $38                                         ; $4de6: $ff
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	rst  $38                                         ; $4de9: $ff
	cp   $ec                                         ; $4dea: $fe $ec
	jp   z, Jump_0bd_6498                            ; $4dec: $ca $98 $64

	ld   sp, $1111                                   ; $4def: $31 $11 $11
	ld   de, $1311                                   ; $4df2: $11 $11 $13
	ld   b, [hl]                                     ; $4df5: $46
	ld   a, c                                        ; $4df6: $79
	xor  e                                           ; $4df7: $ab
	db   $dd                                         ; $4df8: $dd
	rst  $38                                         ; $4df9: $ff
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	db   $ed                                         ; $4dfe: $ed
	call z, Call_0bd_75b9                            ; $4dff: $cc $b9 $75
	ld   b, d                                        ; $4e02: $42
	ld   de, $1111                                   ; $4e03: $11 $11 $11
	ld   de, $3512                                   ; $4e06: $11 $12 $35
	ld   h, a                                        ; $4e09: $67
	adc  c                                           ; $4e0a: $89
	cp   l                                           ; $4e0b: $bd
	rst  $28                                         ; $4e0c: $ef
	rst  $38                                         ; $4e0d: $ff
	rst  $38                                         ; $4e0e: $ff
	rst  $38                                         ; $4e0f: $ff
	rst  $38                                         ; $4e10: $ff
	xor  $db                                         ; $4e11: $ee $db
	cp   c                                           ; $4e13: $b9
	sub  a                                           ; $4e14: $97
	ld   d, h                                        ; $4e15: $54
	ld   hl, $1111                                   ; $4e16: $21 $11 $11
	ld   de, $2411                                   ; $4e19: $11 $11 $24
	ld   h, a                                        ; $4e1c: $67
	adc  c                                           ; $4e1d: $89
	cp   l                                           ; $4e1e: $bd
	sbc  $ff                                         ; $4e1f: $de $ff
	rst  $38                                         ; $4e21: $ff
	rst  $38                                         ; $4e22: $ff
	rst  $38                                         ; $4e23: $ff
	db   $fd                                         ; $4e24: $fd
	db   $dd                                         ; $4e25: $dd
	cp   e                                           ; $4e26: $bb
	xor  b                                           ; $4e27: $a8
	ld   h, h                                        ; $4e28: $64
	ld   sp, $1111                                   ; $4e29: $31 $11 $11
	ld   de, $2411                                   ; $4e2c: $11 $11 $24
	ld   d, a                                        ; $4e2f: $57
	sbc  c                                           ; $4e30: $99
	cp   e                                           ; $4e31: $bb
	db   $dd                                         ; $4e32: $dd
	rst  $38                                         ; $4e33: $ff
	rst  $38                                         ; $4e34: $ff
	rst  $38                                         ; $4e35: $ff
	rst  $38                                         ; $4e36: $ff
	cp   $ec                                         ; $4e37: $fe $ec
	jp   z, $64a8                                    ; $4e39: $ca $a8 $64

	ld   sp, $1111                                   ; $4e3c: $31 $11 $11
	ld   de, $1511                                   ; $4e3f: $11 $11 $15
	ld   l, b                                        ; $4e42: $68
	sbc  c                                           ; $4e43: $99
	xor  d                                           ; $4e44: $aa
	call $ffef                                       ; $4e45: $cd $ef $ff
	rst  $38                                         ; $4e48: $ff
	rst  $38                                         ; $4e49: $ff
	cp   $dc                                         ; $4e4a: $fe $dc
	xor  c                                           ; $4e4c: $a9
	add  [hl]                                        ; $4e4d: $86
	ld   b, d                                        ; $4e4e: $42
	ld   de, $1111                                   ; $4e4f: $11 $11 $11
	ld   de, $4643                                   ; $4e52: $11 $43 $46
	ld   l, b                                        ; $4e55: $68
	sbc  b                                           ; $4e56: $98
	sbc  d                                           ; $4e57: $9a
	cp   l                                           ; $4e58: $bd
	rst  $28                                         ; $4e59: $ef
	rst  $38                                         ; $4e5a: $ff
	rst  $38                                         ; $4e5b: $ff
	rst  $38                                         ; $4e5c: $ff
	rst  $38                                         ; $4e5d: $ff
	db   $db                                         ; $4e5e: $db
	xor  b                                           ; $4e5f: $a8
	ld   [hl], l                                     ; $4e60: $75
	ld   hl, $1111                                   ; $4e61: $21 $11 $11
	ld   de, $5512                                   ; $4e64: $11 $12 $55
	ld   a, c                                        ; $4e67: $79
	adc  c                                           ; $4e68: $89
	adc  b                                           ; $4e69: $88
	xor  d                                           ; $4e6a: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e6b: $cf
	rst  $38                                         ; $4e6c: $ff
	rst  $38                                         ; $4e6d: $ff
	rst  $38                                         ; $4e6e: $ff
	rst  $38                                         ; $4e6f: $ff
	rst  $38                                         ; $4e70: $ff
	jp   c, Jump_0bd_6297                            ; $4e71: $da $97 $62

	ld   de, $1111                                   ; $4e74: $11 $11 $11
	ld   de, $9818                                   ; $4e77: $11 $18 $98
	ret                                              ; $4e7a: $c9


	xor  b                                           ; $4e7b: $a8
	ld   l, c                                        ; $4e7c: $69
	xor  h                                           ; $4e7d: $ac
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	rst  $38                                         ; $4e82: $ff
	db   $fd                                         ; $4e83: $fd
	sbc  b                                           ; $4e84: $98
	ld   d, h                                        ; $4e85: $54
	ld   de, $1111                                   ; $4e86: $11 $11 $11
	ld   de, $ca15                                   ; $4e89: $11 $15 $ca
	adc  h                                           ; $4e8c: $8c
	xor  d                                           ; $4e8d: $aa
	add  a                                           ; $4e8e: $87
	sbc  e                                           ; $4e8f: $9b
	rst  JumpTable                                         ; $4e90: $df
	rst  $38                                         ; $4e91: $ff
	rst  $38                                         ; $4e92: $ff
	rst  $38                                         ; $4e93: $ff
	rst  $38                                         ; $4e94: $ff
	rst  $38                                         ; $4e95: $ff
	ret  z                                           ; $4e96: $c8

	ld   [hl], h                                     ; $4e97: $74
	ld   b, c                                        ; $4e98: $41
	ld   de, $1111                                   ; $4e99: $11 $11 $11
	ld   de, $c97e                                   ; $4e9c: $11 $7e $c9
	cp   b                                           ; $4e9f: $b8
	and  [hl]                                        ; $4ea0: $a6
	ld   e, d                                        ; $4ea1: $5a
	xor  a                                           ; $4ea2: $af
	rst  $38                                         ; $4ea3: $ff
	rst  $38                                         ; $4ea4: $ff
	rst  $38                                         ; $4ea5: $ff
	rst  $38                                         ; $4ea6: $ff
	rst  $38                                         ; $4ea7: $ff
	ei                                               ; $4ea8: $fb
	halt                                             ; $4ea9: $76
	inc  sp                                          ; $4eaa: $33
	ld   de, $1111                                   ; $4eab: $11 $11 $11
	ld   de, $fd3a                                   ; $4eae: $11 $3a $fd
	xor  e                                           ; $4eb1: $ab
	ld   l, b                                        ; $4eb2: $68
	ld   b, a                                        ; $4eb3: $47
	xor  d                                           ; $4eb4: $aa
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	rst  $38                                         ; $4eb8: $ff
	rst  $38                                         ; $4eb9: $ff
	rst  $38                                         ; $4eba: $ff
	and  [hl]                                        ; $4ebb: $a6
	ld   b, e                                        ; $4ebc: $43
	ld   hl, $1111                                   ; $4ebd: $21 $11 $11
	ld   de, $df16                                   ; $4ec0: $11 $16 $df
	jp   c, Jump_0bd_6796                            ; $4ec3: $da $96 $67

	sbc  d                                           ; $4ec6: $9a
	cp   l                                           ; $4ec7: $bd
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	jp   hl                                          ; $4ecd: $e9


	ld   b, e                                        ; $4ece: $43
	ld   b, h                                        ; $4ecf: $44
	ld   de, $1111                                   ; $4ed0: $11 $11 $11
	ld   de, $faaf                                   ; $4ed3: $11 $af $fa
	ld   [hl], a                                     ; $4ed6: $77
	ld   l, c                                        ; $4ed7: $69
	ld   l, c                                        ; $4ed8: $69
	sbc  e                                           ; $4ed9: $9b
	rst  $38                                         ; $4eda: $ff
	rst  $38                                         ; $4edb: $ff
	rst  $38                                         ; $4edc: $ff
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	ei                                               ; $4edf: $fb
	ld   h, e                                        ; $4ee0: $63
	inc  h                                           ; $4ee1: $24
	ld   hl, $1111                                   ; $4ee2: $21 $11 $11
	ld   de, $fe2c                                   ; $4ee5: $11 $2c $fe
	xor  c                                           ; $4ee8: $a9
	ld   h, a                                        ; $4ee9: $67
	ld   b, [hl]                                     ; $4eea: $46
	xor  d                                           ; $4eeb: $aa
	rst  $38                                         ; $4eec: $ff
	rst  $38                                         ; $4eed: $ff
	rst  $38                                         ; $4eee: $ff
	rst  $38                                         ; $4eef: $ff
	rst  $38                                         ; $4ef0: $ff
	rst  $38                                         ; $4ef1: $ff
	sub  l                                           ; $4ef2: $95
	ld   [hl-], a                                    ; $4ef3: $32
	ld   b, c                                        ; $4ef4: $41
	ld   de, $1111                                   ; $4ef5: $11 $11 $11
	ld   d, $df                                      ; $4ef8: $16 $df
	rst  $30                                         ; $4efa: $f7
	sub  [hl]                                        ; $4efb: $96
	ld   h, [hl]                                     ; $4efc: $66
	adc  e                                           ; $4efd: $8b
	xor  [hl]                                        ; $4efe: $ae
	rst  $38                                         ; $4eff: $ff
	rst  $38                                         ; $4f00: $ff
	rst  $38                                         ; $4f01: $ff
	rst  $38                                         ; $4f02: $ff
	rst  $38                                         ; $4f03: $ff
	jp   hl                                          ; $4f04: $e9


	ld   b, d                                        ; $4f05: $42
	ld   b, e                                        ; $4f06: $43
	ld   de, $1111                                   ; $4f07: $11 $11 $11
	ld   de, $fcef                                   ; $4f0a: $11 $ef $fc
	dec  [hl]                                        ; $4f0d: $35
	ld   h, a                                        ; $4f0e: $67
	ld   a, h                                        ; $4f0f: $7c
	cp   h                                           ; $4f10: $bc
	sbc  $ff                                         ; $4f11: $de $ff
	rst  $38                                         ; $4f13: $ff
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	db   $fc                                         ; $4f16: $fc
	ld   d, d                                        ; $4f17: $52
	inc  d                                           ; $4f18: $14
	ld   d, c                                        ; $4f19: $51
	ld   de, $1111                                   ; $4f1a: $11 $11 $11
	ld   e, $ff                                      ; $4f1d: $1e $ff
	sub  [hl]                                        ; $4f1f: $96
	ld   d, l                                        ; $4f20: $55
	ld   h, [hl]                                     ; $4f21: $66
	call $efdf                                       ; $4f22: $cd $df $ef
	rst  $38                                         ; $4f25: $ff
	rst  $38                                         ; $4f26: $ff
	rst  $38                                         ; $4f27: $ff
	rst  $38                                         ; $4f28: $ff
	sub  h                                           ; $4f29: $94
	ld   [hl+], a                                    ; $4f2a: $22
	ld   d, e                                        ; $4f2b: $53
	ld   de, $1111                                   ; $4f2c: $11 $11 $11
	ld   [de], a                                     ; $4f2f: $12
	rst  $38                                         ; $4f30: $ff
	or   $55                                         ; $4f31: $f6 $55
	add  l                                           ; $4f33: $85
	ld   l, h                                        ; $4f34: $6c
	adc  $ff                                         ; $4f35: $ce $ff
	rst  $38                                         ; $4f37: $ff
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	rst  $38                                         ; $4f3a: $ff
	ld   sp, hl                                      ; $4f3b: $f9
	ld   hl, $1103                                   ; $4f3c: $21 $03 $11
	ld   de, $1111                                   ; $4f3f: $11 $11 $11
	cp   a                                           ; $4f42: $bf
	db   $fd                                         ; $4f43: $fd
	ld   h, [hl]                                     ; $4f44: $66
	daa                                              ; $4f45: $27
	ld   e, e                                        ; $4f46: $5b
	db   $dd                                         ; $4f47: $dd
	cp   $ff                                         ; $4f48: $fe $ff
	rst  $38                                         ; $4f4a: $ff
	rst  $38                                         ; $4f4b: $ff
	rst  $38                                         ; $4f4c: $ff
	db   $fc                                         ; $4f4d: $fc
	ld   h, c                                        ; $4f4e: $61
	inc  de                                          ; $4f4f: $13
	ld   sp, $1111                                   ; $4f50: $31 $11 $11
	ld   de, $ff1f                                   ; $4f53: $11 $1f $ff
	ld   [hl], d                                     ; $4f56: $72
	ld   [hl], h                                     ; $4f57: $74
	ld   d, a                                        ; $4f58: $57
	xor  $dd                                         ; $4f59: $ee $dd
	rst  $28                                         ; $4f5b: $ef
	rst  $38                                         ; $4f5c: $ff
	rst  $38                                         ; $4f5d: $ff
	rst  $38                                         ; $4f5e: $ff
	rst  $38                                         ; $4f5f: $ff
	ld   [hl], d                                     ; $4f60: $72
	ld   de, $1153                                   ; $4f61: $11 $53 $11
	ld   de, $1b11                                   ; $4f64: $11 $11 $1b
	rst  $38                                         ; $4f67: $ff
	pop  hl                                          ; $4f68: $e1
	ld   b, h                                        ; $4f69: $44
	ld   h, a                                        ; $4f6a: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f6b: $cf
	sbc  $df                                         ; $4f6c: $de $df
	rst  $38                                         ; $4f6e: $ff
	rst  $38                                         ; $4f6f: $ff
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	push bc                                          ; $4f72: $c5
	ld   de, $1144                                   ; $4f73: $11 $44 $11
	ld   de, $1411                                   ; $4f76: $11 $11 $14
	rst  $38                                         ; $4f79: $ff
	or   $55                                         ; $4f7a: $f6 $55
	ld   [hl], $9f                                   ; $4f7c: $36 $9f
	call c, $ffcd                                    ; $4f7e: $dc $cd $ff
	rst  $38                                         ; $4f81: $ff
	rst  $38                                         ; $4f82: $ff
	rst  $38                                         ; $4f83: $ff
	jp   hl                                          ; $4f84: $e9


	ld   de, $1113                                   ; $4f85: $11 $13 $11
	ld   de, $1111                                   ; $4f88: $11 $11 $11
	rst  $38                                         ; $4f8b: $ff
	ei                                               ; $4f8c: $fb
	ld   b, d                                        ; $4f8d: $42
	ld   b, a                                        ; $4f8e: $47
	adc  [hl]                                        ; $4f8f: $8e
	db   $ec                                         ; $4f90: $ec
	xor  $ff                                         ; $4f91: $ee $ff
	rst  $38                                         ; $4f93: $ff
	rst  $38                                         ; $4f94: $ff
	rst  $38                                         ; $4f95: $ff
	db   $fc                                         ; $4f96: $fc
	ld   b, c                                        ; $4f97: $41
	inc  de                                          ; $4f98: $13
	ld   sp, $1111                                   ; $4f99: $31 $11 $11
	ld   de, $fbef                                   ; $4f9c: $11 $ef $fb
	ld   b, h                                        ; $4f9f: $44
	ld   h, $5e                                      ; $4fa0: $26 $5e
	cp   $ea                                         ; $4fa2: $fe $ea
	rst  JumpTable                                         ; $4fa4: $df
	rst  $38                                         ; $4fa5: $ff
	rst  $38                                         ; $4fa6: $ff
	rst  $38                                         ; $4fa7: $ff
	ei                                               ; $4fa8: $fb
	ld   b, c                                        ; $4fa9: $41
	ld   [de], a                                     ; $4faa: $12
	ld   sp, $1111                                   ; $4fab: $31 $11 $11
	ld   de, $ffbf                                   ; $4fae: $11 $bf $ff
	ld   e, b                                        ; $4fb1: $58
	inc  hl                                          ; $4fb2: $23
	ld   c, d                                        ; $4fb3: $4a
	cp   $fc                                         ; $4fb4: $fe $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fb6: $cf
	rst  $38                                         ; $4fb7: $ff
	rst  $38                                         ; $4fb8: $ff
	rst  $38                                         ; $4fb9: $ff
	db   $fd                                         ; $4fba: $fd
	ld   h, c                                        ; $4fbb: $61
	ld   de, $1121                                   ; $4fbc: $11 $21 $11
	ld   de, $1f11                                   ; $4fbf: $11 $11 $1f
	rst  $38                                         ; $4fc2: $ff
	ld   h, h                                        ; $4fc3: $64
	ld   [hl], h                                     ; $4fc4: $74
	ld   h, l                                        ; $4fc5: $65
	rst  $38                                         ; $4fc6: $ff
	db   $ec                                         ; $4fc7: $ec
	cp   a                                           ; $4fc8: $bf
	rst  $38                                         ; $4fc9: $ff
	rst  $38                                         ; $4fca: $ff
	rst  $38                                         ; $4fcb: $ff
	db   $fd                                         ; $4fcc: $fd
	add  d                                           ; $4fcd: $82
	ld   [bc], a                                     ; $4fce: $02
	ld   hl, $1111                                   ; $4fcf: $21 $11 $11
	ld   de, $ff1f                                   ; $4fd2: $11 $1f $ff
	and  l                                           ; $4fd5: $a5
	and  c                                           ; $4fd6: $a1
	dec  [hl]                                        ; $4fd7: $35
	rst  $38                                         ; $4fd8: $ff
	call c, $ff9e                                    ; $4fd9: $dc $9e $ff
	rst  $38                                         ; $4fdc: $ff
	rst  $38                                         ; $4fdd: $ff
	rst  $38                                         ; $4fde: $ff
	and  h                                           ; $4fdf: $a4
	ld   de, $1111                                   ; $4fe0: $11 $11 $11
	ld   de, $1e11                                   ; $4fe3: $11 $11 $1e
	rst  $38                                         ; $4fe6: $ff
	pop  hl                                          ; $4fe7: $e1
	ld   d, c                                        ; $4fe8: $51
	dec  h                                           ; $4fe9: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fea: $cf
	ld   a, [$ff9a]                                  ; $4feb: $fa $9a $ff
	rst  $38                                         ; $4fee: $ff
	rst  $38                                         ; $4fef: $ff
	rst  $38                                         ; $4ff0: $ff
	push de                                          ; $4ff1: $d5
	ld   de, $1124                                   ; $4ff2: $11 $24 $11
	ld   de, $1211                                   ; $4ff5: $11 $11 $12
	rst  $38                                         ; $4ff8: $ff
	di                                               ; $4ff9: $f3
	ld   [hl-], a                                    ; $4ffa: $32
	ld   b, [hl]                                     ; $4ffb: $46
	sbc  a                                           ; $4ffc: $9f
	db   $fd                                         ; $4ffd: $fd
	sbc  d                                           ; $4ffe: $9a
	rst  $38                                         ; $4fff: $ff
	rst  $38                                         ; $5000: $ff
	rst  $38                                         ; $5001: $ff
	rst  $38                                         ; $5002: $ff
	ld   hl, sp+$21                                  ; $5003: $f8 $21
	inc  de                                          ; $5005: $13
	ld   d, c                                        ; $5006: $51
	ld   de, $1111                                   ; $5007: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $500a: $cf
	rst  $38                                         ; $500b: $ff
	ld   hl, $9d15                                   ; $500c: $21 $15 $9d
	rst  $38                                         ; $500f: $ff
	cp   b                                           ; $5010: $b8
	adc  a                                           ; $5011: $8f
	rst  $38                                         ; $5012: $ff
	rst  $38                                         ; $5013: $ff
	rst  $38                                         ; $5014: $ff
	db   $fc                                         ; $5015: $fc
	ld   b, c                                        ; $5016: $41
	inc  d                                           ; $5017: $14
	ld   d, e                                        ; $5018: $53
	ld   de, $1111                                   ; $5019: $11 $11 $11
	ld   e, a                                        ; $501c: $5f
	cp   $14                                         ; $501d: $fe $14
	sub  $32                                         ; $501f: $d6 $32
	rst  $38                                         ; $5021: $ff
	ld   sp, hl                                      ; $5022: $f9
	sbc  a                                           ; $5023: $9f
	rst  $38                                         ; $5024: $ff
	rst  $38                                         ; $5025: $ff
	rst  $38                                         ; $5026: $ff
	db   $fc                                         ; $5027: $fc
	ld   [hl], d                                     ; $5028: $72
	dec  h                                           ; $5029: $25
	ld   b, e                                        ; $502a: $43
	ld   de, $1111                                   ; $502b: $11 $11 $11
	rra                                              ; $502e: $1f
	rst  $38                                         ; $502f: $ff
	pop  de                                          ; $5030: $d1
	ld   h, h                                        ; $5031: $64
	dec  [hl]                                        ; $5032: $35
	cp   a                                           ; $5033: $bf
	db   $fc                                         ; $5034: $fc
	adc  d                                           ; $5035: $8a
	rst  $38                                         ; $5036: $ff
	rst  $38                                         ; $5037: $ff
	rst  $38                                         ; $5038: $ff
	rst  $38                                         ; $5039: $ff
	push bc                                          ; $503a: $c5
	ld   [de], a                                     ; $503b: $12
	dec  [hl]                                        ; $503c: $35
	ld   de, $1111                                   ; $503d: $11 $11 $11
	inc  d                                           ; $5040: $14
	rst  $38                                         ; $5041: $ff
	db   $f4                                         ; $5042: $f4
	ld   h, l                                        ; $5043: $65
	ld   d, $5f                                      ; $5044: $16 $5f
	rst  $38                                         ; $5046: $ff
	sbc  b                                           ; $5047: $98
	rst  $28                                         ; $5048: $ef
	rst  $38                                         ; $5049: $ff
	rst  $38                                         ; $504a: $ff
	rst  $38                                         ; $504b: $ff
	rst  $20                                         ; $504c: $e7
	ld   [hl+], a                                    ; $504d: $22
	ld   b, e                                        ; $504e: $43
	ld   de, $1111                                   ; $504f: $11 $11 $11
	ld   de, $fcff                                   ; $5052: $11 $ff $fc
	inc  de                                          ; $5055: $13
	dec  [hl]                                        ; $5056: $35
	ld   l, [hl]                                     ; $5057: $6e
	rst  $38                                         ; $5058: $ff
	xor  c                                           ; $5059: $a9
	rst  JumpTable                                         ; $505a: $df
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
	rst  $38                                         ; $505d: $ff
	ld   hl, sp+$21                                  ; $505e: $f8 $21
	inc  h                                           ; $5060: $24
	ld   b, c                                        ; $5061: $41
	ld   de, $1111                                   ; $5062: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5065: $cf
	rst  $38                                         ; $5066: $ff
	ld   [hl+], a                                    ; $5067: $22
	inc  de                                          ; $5068: $13
	ld   e, l                                        ; $5069: $5d
	rst  $38                                         ; $506a: $ff
	or   a                                           ; $506b: $b7
	adc  [hl]                                        ; $506c: $8e
	rst  $38                                         ; $506d: $ff
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	ld   sp, hl                                      ; $5070: $f9
	ld   hl, $4212                                   ; $5071: $21 $12 $42
	ld   de, $1111                                   ; $5074: $11 $11 $11
	rst  JumpTable                                         ; $5077: $df
	rst  $38                                         ; $5078: $ff
	inc  de                                          ; $5079: $13
	add  l                                           ; $507a: $85
	ld   l, c                                        ; $507b: $69
	rst  $38                                         ; $507c: $ff
	rst  ToBoot                                         ; $507d: $c7
	sbc  a                                           ; $507e: $9f
	rst  $38                                         ; $507f: $ff
	rst  $38                                         ; $5080: $ff
	rst  $38                                         ; $5081: $ff
	ld   a, [$1421]                                  ; $5082: $fa $21 $14
	ld   sp, $1111                                   ; $5085: $31 $11 $11
	ld   de, $ffaf                                   ; $5088: $11 $af $ff
	inc  sp                                          ; $508b: $33
	ld   hl, $ff4c                                   ; $508c: $21 $4c $ff
	rst  ToBoot                                         ; $508f: $c7
	sbc  a                                           ; $5090: $9f
	rst  $38                                         ; $5091: $ff
	rst  $38                                         ; $5092: $ff
	rst  $38                                         ; $5093: $ff
	ld   a, [$1151]                                  ; $5094: $fa $51 $11
	ld   de, $1111                                   ; $5097: $11 $11 $11
	ld   de, $fbff                                   ; $509a: $11 $ff $fb
	rla                                              ; $509d: $17
	ld   d, c                                        ; $509e: $51
	ccf                                              ; $509f: $3f
	rst  $38                                         ; $50a0: $ff
	ld   [hl], l                                     ; $50a1: $75
	cp   a                                           ; $50a2: $bf
	rst  $38                                         ; $50a3: $ff
	rst  $38                                         ; $50a4: $ff
	rst  $38                                         ; $50a5: $ff
	or   $01                                         ; $50a6: $f6 $01
	ld   de, $1111                                   ; $50a8: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $50ab: $11 $14 $ff
	cp   $71                                         ; $50ae: $fe $71
	ld   [de], a                                     ; $50b0: $12
	ld   a, a                                        ; $50b1: $7f
	db   $fd                                         ; $50b2: $fd
	call z, $ffff                                    ; $50b3: $cc $ff $ff
	rst  $38                                         ; $50b6: $ff
	rst  $38                                         ; $50b7: $ff
	db   $e4                                         ; $50b8: $e4
	ld   de, $1111                                   ; $50b9: $11 $11 $11
	ld   de, $1f11                                   ; $50bc: $11 $11 $1f
	rst  $38                                         ; $50bf: $ff
	cp   b                                           ; $50c0: $b8
	ld   h, c                                        ; $50c1: $61
	ld   [hl-], a                                    ; $50c2: $32
	rst  $38                                         ; $50c3: $ff
	db   $eb                                         ; $50c4: $eb
	xor  a                                           ; $50c5: $af
	rst  $38                                         ; $50c6: $ff
	rst  $38                                         ; $50c7: $ff
	rst  $38                                         ; $50c8: $ff
	db   $fd                                         ; $50c9: $fd
	ld   h, c                                        ; $50ca: $61
	ld   de, $1111                                   ; $50cb: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $50ce: $11 $11 $ff
	ld   sp, hl                                      ; $50d1: $f9
	ld   [hl], h                                     ; $50d2: $74
	ld   de, $fd6f                                   ; $50d3: $11 $6f $fd
	ld   l, b                                        ; $50d6: $68
	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	rst  $38                                         ; $50d9: $ff
	rst  $38                                         ; $50da: $ff
	rst  $20                                         ; $50db: $e7
	ld   de, $1111                                   ; $50dc: $11 $11 $11
	ld   de, $2f11                                   ; $50df: $11 $11 $2f
	rst  $38                                         ; $50e2: $ff
	ld   h, l                                        ; $50e3: $65
	ld   d, c                                        ; $50e4: $51
	inc  a                                           ; $50e5: $3c
	rst  $38                                         ; $50e6: $ff
	ld   a, b                                        ; $50e7: $78
	rst  JumpTable                                         ; $50e8: $df
	rst  $38                                         ; $50e9: $ff
	rst  $38                                         ; $50ea: $ff
	rst  $38                                         ; $50eb: $ff
	ei                                               ; $50ec: $fb
	ld   d, c                                        ; $50ed: $51
	ld   de, $1111                                   ; $50ee: $11 $11 $11
	ld   de, $ff1f                                   ; $50f1: $11 $1f $ff
	ei                                               ; $50f4: $fb
	ld   [hl], c                                     ; $50f5: $71
	rla                                              ; $50f6: $17
	rst  $38                                         ; $50f7: $ff
	sbc  e                                           ; $50f8: $9b
	cp   a                                           ; $50f9: $bf
	rst  $38                                         ; $50fa: $ff
	rst  $38                                         ; $50fb: $ff
	rst  $38                                         ; $50fc: $ff
	cp   $b3                                         ; $50fd: $fe $b3
	ld   de, $1111                                   ; $50ff: $11 $11 $11
	ld   de, $ff1f                                   ; $5102: $11 $1f $ff
	db   $f4                                         ; $5105: $f4
	or   a                                           ; $5106: $b7
	ld   de, $d9df                                   ; $5107: $11 $df $d9
	ld   a, a                                        ; $510a: $7f
	rst  $38                                         ; $510b: $ff
	rst  $38                                         ; $510c: $ff
	rst  $38                                         ; $510d: $ff
	db   $fc                                         ; $510e: $fc
	sub  d                                           ; $510f: $92
	ld   de, $1111                                   ; $5110: $11 $11 $11
	ld   de, $ff1f                                   ; $5113: $11 $1f $ff
	ld   sp, hl                                      ; $5116: $f9
	and  d                                           ; $5117: $a2
	ld   d, $ff                                      ; $5118: $16 $ff
	xor  c                                           ; $511a: $a9
	rst  JumpTable                                         ; $511b: $df
	rst  $38                                         ; $511c: $ff
	rst  $38                                         ; $511d: $ff
	rst  $38                                         ; $511e: $ff
	db   $fd                                         ; $511f: $fd
	sub  c                                           ; $5120: $91
	ld   de, $1111                                   ; $5121: $11 $11 $11
	ld   de, $ff5f                                   ; $5124: $11 $5f $ff
	rst  $38                                         ; $5127: $ff
	sub  c                                           ; $5128: $91
	dec  de                                          ; $5129: $1b
	db   $fc                                         ; $512a: $fc
	ld   [hl], a                                     ; $512b: $77
	rst  $38                                         ; $512c: $ff
	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	rst  $38                                         ; $512f: $ff
	jp   c, $1141                                    ; $5130: $da $41 $11

	ld   de, $1111                                   ; $5133: $11 $11 $11
	rst  $38                                         ; $5136: $ff
	rst  $38                                         ; $5137: $ff
	cp   $41                                         ; $5138: $fe $41
	ld   l, [hl]                                     ; $513a: $6e
	xor  c                                           ; $513b: $a9
	adc  [hl]                                        ; $513c: $8e
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	rst  $38                                         ; $513f: $ff
	db   $fd                                         ; $5140: $fd
	sub  d                                           ; $5141: $92
	ld   de, $1111                                   ; $5142: $11 $11 $11
	ld   de, $ff9f                                   ; $5145: $11 $9f $ff
	rst  JumpTable                                         ; $5148: $df
	ldh  a, [c]                                      ; $5149: $f2
	daa                                              ; $514a: $27
	sub  $5a                                         ; $514b: $d6 $5a
	rst  $38                                         ; $514d: $ff
	rst  $38                                         ; $514e: $ff
	rst  $38                                         ; $514f: $ff
	cp   $ba                                         ; $5150: $fe $ba
	ld   sp, $1111                                   ; $5152: $31 $11 $11
	ld   de, $ff18                                   ; $5155: $11 $18 $ff
	rst  $38                                         ; $5158: $ff
	rst  $10                                         ; $5159: $d7
	dec  [hl]                                        ; $515a: $35
	cp   a                                           ; $515b: $bf
	halt                                             ; $515c: $76
	sbc  a                                           ; $515d: $9f
	rst  $38                                         ; $515e: $ff
	rst  $38                                         ; $515f: $ff
	rst  $38                                         ; $5160: $ff
	db   $fd                                         ; $5161: $fd
	sub  c                                           ; $5162: $91
	ld   de, $1111                                   ; $5163: $11 $11 $11
	ld   de, $ff7f                                   ; $5166: $11 $7f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5169: $cf
	or   $49                                         ; $516a: $f6 $49
	cp   d                                           ; $516c: $ba
	add  a                                           ; $516d: $87
	rst  $38                                         ; $516e: $ff
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	cp   d                                           ; $5172: $ba
	ld   de, $1111                                   ; $5173: $11 $11 $11
	ld   de, $ff1e                                   ; $5176: $11 $1e $ff
	cp   $d7                                         ; $5179: $fe $d7
	ld   l, d                                        ; $517b: $6a
	jp   z, $cf4a                                    ; $517c: $ca $4a $cf

	rst  $38                                         ; $517f: $ff
	rst  $38                                         ; $5180: $ff
	rst  $38                                         ; $5181: $ff
	db   $fc                                         ; $5182: $fc
	add  c                                           ; $5183: $81
	ld   de, $1111                                   ; $5184: $11 $11 $11
	ld   de, $feff                                   ; $5187: $11 $ff $fe
	rst  $38                                         ; $518a: $ff
	ld   d, c                                        ; $518b: $51
	cp   a                                           ; $518c: $bf
	and  a                                           ; $518d: $a7
	ld   e, [hl]                                     ; $518e: $5e
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	ei                                               ; $5192: $fb
	and  e                                           ; $5193: $a3
	ld   de, $1111                                   ; $5194: $11 $11 $11
	ld   de, $ffdf                                   ; $5197: $11 $df $ff
	rst  $28                                         ; $519a: $ef
	pop  af                                          ; $519b: $f1
	ld   l, h                                        ; $519c: $6c
	or   a                                           ; $519d: $b7
	ld   a, d                                        ; $519e: $7a
	rst  $38                                         ; $519f: $ff
	rst  $38                                         ; $51a0: $ff
	rst  $38                                         ; $51a1: $ff
	rst  $38                                         ; $51a2: $ff
	jp   hl                                          ; $51a3: $e9


	ld   de, $1111                                   ; $51a4: $11 $11 $11
	ld   de, $ff1f                                   ; $51a7: $11 $1f $ff
	rst  $38                                         ; $51aa: $ff
	push af                                          ; $51ab: $f5
	ld   c, d                                        ; $51ac: $4a
	add  $9a                                         ; $51ad: $c6 $9a
	rst  $38                                         ; $51af: $ff
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	rst  $38                                         ; $51b2: $ff
	db   $eb                                         ; $51b3: $eb
	ld   sp, $1111                                   ; $51b4: $31 $11 $11
	ld   de, $ff1f                                   ; $51b7: $11 $1f $ff
	rst  $38                                         ; $51ba: $ff
	cp   $48                                         ; $51bb: $fe $48
	cp   b                                           ; $51bd: $b8
	ld   d, a                                        ; $51be: $57
	rst  $28                                         ; $51bf: $ef
	rst  $38                                         ; $51c0: $ff
	rst  $38                                         ; $51c1: $ff
	rst  $38                                         ; $51c2: $ff
	call c, $1171                                    ; $51c3: $dc $71 $11
	ld   de, $1a11                                   ; $51c6: $11 $11 $1a

Call_0bd_51c9:
	rst  $38                                         ; $51c9: $ff

Jump_0bd_51ca:
	rst  $38                                         ; $51ca: $ff
	rst  $38                                         ; $51cb: $ff
	ld   b, [hl]                                     ; $51cc: $46
	xor  c                                           ; $51cd: $a9
	ld   l, c                                        ; $51ce: $69
	adc  a                                           ; $51cf: $8f
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	rst  $38                                         ; $51d2: $ff
	db   $fd                                         ; $51d3: $fd
	and  d                                           ; $51d4: $a2
	ld   de, $1111                                   ; $51d5: $11 $11 $11
	ld   de, $ffff                                   ; $51d8: $11 $ff $ff
	rst  $38                                         ; $51db: $ff
	rst  $10                                         ; $51dc: $d7
	cp   c                                           ; $51dd: $b9
	ld   d, l                                        ; $51de: $55
	ld   a, a                                        ; $51df: $7f
	rst  $38                                         ; $51e0: $ff
	rst  $38                                         ; $51e1: $ff
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	or   h                                           ; $51e4: $b4
	ld   de, $1111                                   ; $51e5: $11 $11 $11
	ld   de, $ffaf                                   ; $51e8: $11 $af $ff
	rst  $38                                         ; $51eb: $ff
	db   $eb                                         ; $51ec: $eb
	adc  d                                           ; $51ed: $8a
	ld   h, h                                        ; $51ee: $64
	ld   a, [hl]                                     ; $51ef: $7e
	rst  $38                                         ; $51f0: $ff
	rst  $38                                         ; $51f1: $ff
	rst  $38                                         ; $51f2: $ff
	rst  $38                                         ; $51f3: $ff
	rst  $10                                         ; $51f4: $d7
	ld   hl, $1111                                   ; $51f5: $21 $11 $11
	ld   de, $ff1e                                   ; $51f8: $11 $1e $ff
	rst  $38                                         ; $51fb: $ff
	db   $fc                                         ; $51fc: $fc
	jp   z, Jump_0bd_6b76                            ; $51fd: $ca $76 $6b

	rst  $38                                         ; $5200: $ff
	rst  $38                                         ; $5201: $ff
	rst  $38                                         ; $5202: $ff
	rst  $38                                         ; $5203: $ff
	jp   hl                                          ; $5204: $e9


	ld   hl, $1111                                   ; $5205: $21 $11 $11
	ld   de, $ee19                                   ; $5208: $11 $19 $ee
	rst  $38                                         ; $520b: $ff
	rst  $38                                         ; $520c: $ff
	cp   e                                           ; $520d: $bb
	cp   c                                           ; $520e: $b9
	ld   e, b                                        ; $520f: $58
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	rst  $38                                         ; $5212: $ff
	rst  $38                                         ; $5213: $ff
	ret                                              ; $5214: $c9


	ld   b, c                                        ; $5215: $41
	ld   de, $1111                                   ; $5216: $11 $11 $11
	dec  d                                           ; $5219: $15
	xor  l                                           ; $521a: $ad
	rst  $38                                         ; $521b: $ff
	rst  $38                                         ; $521c: $ff
	jp   hl                                          ; $521d: $e9


	xor  c                                           ; $521e: $a9
	adc  c                                           ; $521f: $89
	rst  $28                                         ; $5220: $ef
	rst  $38                                         ; $5221: $ff
	rst  $38                                         ; $5222: $ff
	cp   $b9                                         ; $5223: $fe $b9
	ld   d, e                                        ; $5225: $53
	ld   de, $1111                                   ; $5226: $11 $11 $11
	ld   de, $bc58                                   ; $5229: $11 $58 $bc
	rst  $28                                         ; $522c: $ef
	set  1, b                                        ; $522d: $cb $c8
	sbc  d                                           ; $522f: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5230: $cf
	rst  $38                                         ; $5231: $ff
	rst  $38                                         ; $5232: $ff
	db   $db                                         ; $5233: $db
	cp   d                                           ; $5234: $ba
	xor  e                                           ; $5235: $ab
	sub  a                                           ; $5236: $97
	ld   h, e                                        ; $5237: $63
	ld   de, $1311                                   ; $5238: $11 $11 $13
	ld   hl, $4523                                   ; $523b: $21 $23 $45
	ld   b, [hl]                                     ; $523e: $46
	sbc  c                                           ; $523f: $99
	sbc  h                                           ; $5240: $9c
	rst  $28                                         ; $5241: $ef
	rst  $38                                         ; $5242: $ff
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	rst  $38                                         ; $5245: $ff
	xor  $cb                                         ; $5246: $ee $cb
	sub  a                                           ; $5248: $97
	ld   h, h                                        ; $5249: $64
	ld   de, $1111                                   ; $524a: $11 $11 $11
	ld   de, $2411                                   ; $524d: $11 $11 $24
	ld   a, d                                        ; $5250: $7a
	cp   h                                           ; $5251: $bc
	rst  $28                                         ; $5252: $ef
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	rst  $38                                         ; $5256: $ff
	cp   $fd                                         ; $5257: $fe $fd
	cp   d                                           ; $5259: $ba
	ld   h, l                                        ; $525a: $65
	ld   sp, $1111                                   ; $525b: $31 $11 $11
	ld   de, $1511                                   ; $525e: $11 $11 $15
	ld   h, a                                        ; $5261: $67
	cp   h                                           ; $5262: $bc
	cp   h                                           ; $5263: $bc
	rst  JumpTable                                         ; $5264: $df
	rst  $38                                         ; $5265: $ff
	rst  $38                                         ; $5266: $ff
	rst  $38                                         ; $5267: $ff
	rst  $38                                         ; $5268: $ff
	rst  $28                                         ; $5269: $ef
	call c, Call_0bd_42a7                            ; $526a: $dc $a7 $42
	ld   de, $1111                                   ; $526d: $11 $11 $11
	ld   de, $5912                                   ; $5270: $11 $12 $59
	xor  d                                           ; $5273: $aa
	cp   l                                           ; $5274: $bd
	call $ffef                                       ; $5275: $cd $ef $ff
	rst  $38                                         ; $5278: $ff
	rst  $38                                         ; $5279: $ff
	db   $fc                                         ; $527a: $fc
	xor  b                                           ; $527b: $a8
	ld   [hl], a                                     ; $527c: $77
	ld   b, c                                        ; $527d: $41
	ld   de, $1111                                   ; $527e: $11 $11 $11
	inc  sp                                          ; $5281: $33
	inc  de                                          ; $5282: $13
	ld   a, e                                        ; $5283: $7b
	jp   z, $ccad                                    ; $5284: $ca $ad $cc

	rst  JumpTable                                         ; $5287: $df
	rst  $38                                         ; $5288: $ff
	rst  $38                                         ; $5289: $ff
	rst  $38                                         ; $528a: $ff
	cp   $96                                         ; $528b: $fe $96
	ld   h, l                                        ; $528d: $65
	ld   hl, $1111                                   ; $528e: $21 $11 $11
	ld   de, $3756                                   ; $5291: $11 $56 $37
	cp   a                                           ; $5294: $bf
	ei                                               ; $5295: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5296: $cf
	cp   h                                           ; $5297: $bc
	xor  $ff                                         ; $5298: $ee $ff
	rst  $38                                         ; $529a: $ff
	rst  $38                                         ; $529b: $ff
	db   $fc                                         ; $529c: $fc
	add  l                                           ; $529d: $85
	ld   hl, $1111                                   ; $529e: $21 $11 $11
	ld   de, $3711                                   ; $52a1: $11 $11 $37
	adc  $ff                                         ; $52a4: $ce $ff
	rst  $38                                         ; $52a6: $ff
	db   $eb                                         ; $52a7: $eb
	cp   h                                           ; $52a8: $bc
	rst  $38                                         ; $52a9: $ff
	rst  $38                                         ; $52aa: $ff
	rst  $38                                         ; $52ab: $ff
	rst  $38                                         ; $52ac: $ff
	cp   c                                           ; $52ad: $b9
	ld   b, d                                        ; $52ae: $42
	ld   de, $1111                                   ; $52af: $11 $11 $11
	ld   de, $ce24                                   ; $52b2: $11 $24 $ce
	rst  $38                                         ; $52b5: $ff
	rst  $38                                         ; $52b6: $ff
	ei                                               ; $52b7: $fb
	call $ffdf                                       ; $52b8: $cd $df $ff
	rst  $38                                         ; $52bb: $ff
	rst  $38                                         ; $52bc: $ff
	ret                                              ; $52bd: $c9


	ld   b, c                                        ; $52be: $41
	ld   de, $1111                                   ; $52bf: $11 $11 $11
	ld   de, $ce15                                   ; $52c2: $11 $15 $ce
	rst  $38                                         ; $52c5: $ff
	rst  $38                                         ; $52c6: $ff
	db   $fd                                         ; $52c7: $fd
	set  7, a                                        ; $52c8: $cb $ff
	rst  $38                                         ; $52ca: $ff
	rst  $38                                         ; $52cb: $ff
	cp   $a7                                         ; $52cc: $fe $a7
	ld   hl, $1111                                   ; $52ce: $21 $11 $11
	ld   de, $1811                                   ; $52d1: $11 $11 $18
	rst  JumpTable                                         ; $52d4: $df
	rst  $38                                         ; $52d5: $ff
	rst  $38                                         ; $52d6: $ff
	db   $fd                                         ; $52d7: $fd
	cp   [hl]                                        ; $52d8: $be
	rst  $38                                         ; $52d9: $ff
	rst  $38                                         ; $52da: $ff
	rst  $38                                         ; $52db: $ff
	db   $ec                                         ; $52dc: $ec
	add  h                                           ; $52dd: $84
	ld   de, $1111                                   ; $52de: $11 $11 $11
	ld   de, $6e11                                   ; $52e1: $11 $11 $6e
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	rst  $38                                         ; $52e6: $ff
	adc  $ff                                         ; $52e7: $ce $ff
	rst  $38                                         ; $52e9: $ff
	rst  $38                                         ; $52ea: $ff
	db   $fd                                         ; $52eb: $fd
	jp   z, $1161                                    ; $52ec: $ca $61 $11

	ld   de, $1111                                   ; $52ef: $11 $11 $11
	dec  d                                           ; $52f2: $15
	adc  $ff                                         ; $52f3: $ce $ff
	rst  $38                                         ; $52f5: $ff
	db   $fd                                         ; $52f6: $fd
	call $ffff                                       ; $52f7: $cd $ff $ff
	rst  $38                                         ; $52fa: $ff
	db   $ec                                         ; $52fb: $ec
	sub  a                                           ; $52fc: $97
	ld   de, $1111                                   ; $52fd: $11 $11 $11
	ld   de, $1c11                                   ; $5300: $11 $11 $1c
	rst  $38                                         ; $5303: $ff
	rst  $38                                         ; $5304: $ff
	rst  $38                                         ; $5305: $ff
	call c, $ffef                                    ; $5306: $dc $ef $ff
	rst  $38                                         ; $5309: $ff
	rst  $38                                         ; $530a: $ff
	db   $db                                         ; $530b: $db
	ld   [hl], e                                     ; $530c: $73
	ld   de, $1111                                   ; $530d: $11 $11 $11
	ld   de, $9b12                                   ; $5310: $11 $12 $9b
	rst  $38                                         ; $5313: $ff
	rst  $38                                         ; $5314: $ff
	db   $fd                                         ; $5315: $fd
	call c, $ffff                                    ; $5316: $dc $ff $ff
	rst  $38                                         ; $5319: $ff
	cp   $ca                                         ; $531a: $fe $ca
	ld   h, c                                        ; $531c: $61
	ld   de, $1111                                   ; $531d: $11 $11 $11
	ld   de, $9e17                                   ; $5320: $11 $17 $9e
	rst  $38                                         ; $5323: $ff
	rst  $38                                         ; $5324: $ff
	db   $ed                                         ; $5325: $ed
	db   $dd                                         ; $5326: $dd
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	db   $fd                                         ; $532a: $fd
	jp   z, $1141                                    ; $532b: $ca $41 $11

	ld   de, $1111                                   ; $532e: $11 $11 $11
	add  hl, hl                                      ; $5331: $29
	rst  JumpTable                                         ; $5332: $df
	cp   $ff                                         ; $5333: $fe $ff
	cp   h                                           ; $5335: $bc
	cp   a                                           ; $5336: $bf
	rst  $38                                         ; $5337: $ff
	rst  $38                                         ; $5338: $ff
	rst  $38                                         ; $5339: $ff
	db   $eb                                         ; $533a: $eb
	cp   b                                           ; $533b: $b8
	ld   hl, $1111                                   ; $533c: $21 $11 $11
	ld   de, $5911                                   ; $533f: $11 $11 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5342: $cf
	rst  $38                                         ; $5343: $ff
	db   $fd                                         ; $5344: $fd
	call z, $ffcf                                    ; $5345: $cc $cf $ff
	rst  $38                                         ; $5348: $ff
	rst  $38                                         ; $5349: $ff
	db   $ed                                         ; $534a: $ed
	and  [hl]                                        ; $534b: $a6
	ld   hl, $1111                                   ; $534c: $21 $11 $11
	ld   de, $6911                                   ; $534f: $11 $11 $69
	rst  $28                                         ; $5352: $ef
	rst  $38                                         ; $5353: $ff
	db   $fd                                         ; $5354: $fd
	cp   h                                           ; $5355: $bc
	rst  JumpTable                                         ; $5356: $df
	rst  $38                                         ; $5357: $ff
	rst  $38                                         ; $5358: $ff
	rst  $38                                         ; $5359: $ff
	db   $ec                                         ; $535a: $ec
	and  h                                           ; $535b: $a4
	ld   de, $1111                                   ; $535c: $11 $11 $11
	ld   de, $5811                                   ; $535f: $11 $11 $58
	rst  $38                                         ; $5362: $ff
	db   $fd                                         ; $5363: $fd
	xor  $dc                                         ; $5364: $ee $dc
	cp   a                                           ; $5366: $bf
	rst  $38                                         ; $5367: $ff
	rst  $38                                         ; $5368: $ff
	rst  $38                                         ; $5369: $ff
	ei                                               ; $536a: $fb
	or   l                                           ; $536b: $b5
	ld   hl, $1111                                   ; $536c: $21 $11 $11
	ld   de, $3911                                   ; $536f: $11 $11 $39
	sbc  a                                           ; $5372: $9f
	db   $fc                                         ; $5373: $fc
	rst  $38                                         ; $5374: $ff
	cp   h                                           ; $5375: $bc
	adc  $ff                                         ; $5376: $ce $ff
	rst  $38                                         ; $5378: $ff
	rst  $38                                         ; $5379: $ff
	db   $fd                                         ; $537a: $fd
	rst  ToBoot                                         ; $537b: $c7
	ld   hl, $1111                                   ; $537c: $21 $11 $11
	ld   de, $1511                                   ; $537f: $11 $11 $15
	ld   a, l                                        ; $5382: $7d
	db   $ed                                         ; $5383: $ed
	db   $dd                                         ; $5384: $dd
	db   $eb                                         ; $5385: $eb
	call c, $ffff                                    ; $5386: $dc $ff $ff
	rst  $38                                         ; $5389: $ff
	rst  $38                                         ; $538a: $ff
	ret                                              ; $538b: $c9


	ld   d, e                                        ; $538c: $53
	ld   de, $1111                                   ; $538d: $11 $11 $11
	ld   de, $5812                                   ; $5390: $11 $12 $58
	rst  JumpTable                                         ; $5393: $df
	call c, $ccdb                                    ; $5394: $dc $db $cc
	rst  JumpTable                                         ; $5397: $df
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	jp   c, $3194                                    ; $539b: $da $94 $31

	ld   de, $1111                                   ; $539e: $11 $11 $11
	ld   de, $9d25                                   ; $53a1: $11 $25 $9d
	call c, $bccd                                    ; $53a4: $dc $cd $bc
	adc  $ff                                         ; $53a7: $ce $ff
	rst  $38                                         ; $53a9: $ff
	rst  $38                                         ; $53aa: $ff
	db   $fd                                         ; $53ab: $fd
	and  a                                           ; $53ac: $a7
	ld   b, e                                        ; $53ad: $43
	ld   hl, $1111                                   ; $53ae: $21 $11 $11
	ld   de, $4811                                   ; $53b1: $11 $11 $48
	call z, $ebcb                                    ; $53b4: $cc $cb $eb
	call $ffef                                       ; $53b7: $cd $ef $ff
	rst  $38                                         ; $53ba: $ff
	rst  $38                                         ; $53bb: $ff
	ld   [$4286], a                                  ; $53bc: $ea $86 $42
	ld   de, $1111                                   ; $53bf: $11 $11 $11
	ld   de, $6913                                   ; $53c2: $11 $13 $69
	cp   h                                           ; $53c5: $bc
	sbc  [hl]                                        ; $53c6: $9e
	call z, $ffed                                    ; $53c7: $cc $ed $ff
	rst  $38                                         ; $53ca: $ff
	rst  $38                                         ; $53cb: $ff
	cp   $b9                                         ; $53cc: $fe $b9
	ld   [hl], l                                     ; $53ce: $75
	ld   b, d                                        ; $53cf: $42
	ld   de, $1111                                   ; $53d0: $11 $11 $11
	ld   de, $9b32                                   ; $53d3: $11 $32 $9b
	xor  e                                           ; $53d6: $ab
	cp   l                                           ; $53d7: $bd
	call $ffcf                                       ; $53d8: $cd $cf $ff
	rst  $38                                         ; $53db: $ff
	rst  $38                                         ; $53dc: $ff
	db   $fc                                         ; $53dd: $fc
	cp   c                                           ; $53de: $b9
	ld   h, [hl]                                     ; $53df: $66
	ld   b, c                                        ; $53e0: $41
	ld   de, $1111                                   ; $53e1: $11 $11 $11
	ld   de, $ab53                                   ; $53e4: $11 $53 $ab
	xor  d                                           ; $53e7: $aa
	call z, $dfbf                                    ; $53e8: $cc $bf $df
	rst  $38                                         ; $53eb: $ff
	rst  $38                                         ; $53ec: $ff
	rst  $38                                         ; $53ed: $ff
	db   $fc                                         ; $53ee: $fc
	ret                                              ; $53ef: $c9


	halt                                             ; $53f0: $76
	ld   sp, $1111                                   ; $53f1: $31 $11 $11
	ld   de, $3611                                   ; $53f4: $11 $11 $36
	xor  e                                           ; $53f7: $ab
	cp   c                                           ; $53f8: $b9
	db   $eb                                         ; $53f9: $eb
	call $ffcf                                       ; $53fa: $cd $cf $ff
	rst  $38                                         ; $53fd: $ff
	rst  $38                                         ; $53fe: $ff
	db   $eb                                         ; $53ff: $eb
	cp   b                                           ; $5400: $b8
	ld   d, h                                        ; $5401: $54
	ld   de, $1111                                   ; $5402: $11 $11 $11
	ld   de, $3811                                   ; $5405: $11 $11 $38
	xor  e                                           ; $5408: $ab
	adc  e                                           ; $5409: $8b
	db   $eb                                         ; $540a: $eb
	db   $eb                                         ; $540b: $eb
	rst  $28                                         ; $540c: $ef
	rst  $38                                         ; $540d: $ff
	rst  $38                                         ; $540e: $ff
	rst  $38                                         ; $540f: $ff
	call c, Call_0bd_74a7                            ; $5410: $dc $a7 $74
	ld   de, $1111                                   ; $5413: $11 $11 $11
	ld   de, $2912                                   ; $5416: $11 $12 $29
	xor  b                                           ; $5419: $a8
	xor  l                                           ; $541a: $ad
	db   $db                                         ; $541b: $db
	call c, $ffff                                    ; $541c: $dc $ff $ff
	rst  $38                                         ; $541f: $ff
	rst  $38                                         ; $5420: $ff
	call c, Call_0bd_63a8                            ; $5421: $dc $a8 $63
	ld   de, $1111                                   ; $5424: $11 $11 $11
	ld   de, $3711                                   ; $5427: $11 $11 $37
	xor  b                                           ; $542a: $a8
	ld   a, h                                        ; $542b: $7c
	call c, $ffcb                                    ; $542c: $dc $cb $ff
	rst  $38                                         ; $542f: $ff
	rst  $38                                         ; $5430: $ff
	rst  $38                                         ; $5431: $ff
	db   $ec                                         ; $5432: $ec
	xor  c                                           ; $5433: $a9
	ld   [hl], h                                     ; $5434: $74
	ld   hl, $1111                                   ; $5435: $21 $11 $11
	ld   de, $1411                                   ; $5438: $11 $11 $14
	sbc  c                                           ; $543b: $99
	adc  d                                           ; $543c: $8a
	db   $db                                         ; $543d: $db
	call z, $ffef                                    ; $543e: $cc $ef $ff
	rst  $38                                         ; $5441: $ff
	rst  $38                                         ; $5442: $ff
	db   $fd                                         ; $5443: $fd
	ret                                              ; $5444: $c9


	add  l                                           ; $5445: $85
	ld   [hl-], a                                    ; $5446: $32
	ld   de, $1111                                   ; $5447: $11 $11 $11
	ld   de, $6813                                   ; $544a: $11 $13 $68
	ld   a, d                                        ; $544d: $7a
	call z, $dfcc                                    ; $544e: $cc $cc $df
	rst  $38                                         ; $5451: $ff
	rst  $38                                         ; $5452: $ff
	rst  $38                                         ; $5453: $ff
	cp   $db                                         ; $5454: $fe $db
	and  a                                           ; $5456: $a7
	ld   d, e                                        ; $5457: $53
	ld   de, $1111                                   ; $5458: $11 $11 $11
	ld   de, $4711                                   ; $545b: $11 $11 $47
	ld   h, [hl]                                     ; $545e: $66
	sbc  h                                           ; $545f: $9c
	res  7, a                                        ; $5460: $cb $bf
	rst  $38                                         ; $5462: $ff
	rst  $38                                         ; $5463: $ff
	rst  $38                                         ; $5464: $ff
	rst  $38                                         ; $5465: $ff
	db   $dd                                         ; $5466: $dd
	ret  z                                           ; $5467: $c8

	ld   h, l                                        ; $5468: $65
	ld   [hl-], a                                    ; $5469: $32
	ld   de, $1111                                   ; $546a: $11 $11 $11
	ld   de, $5513                                   ; $546d: $11 $13 $55
	ld   l, c                                        ; $5470: $69
	cp   h                                           ; $5471: $bc
	cp   h                                           ; $5472: $bc
	rst  JumpTable                                         ; $5473: $df
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	rst  $38                                         ; $5476: $ff
	cp   $dc                                         ; $5477: $fe $dc
	xor  b                                           ; $5479: $a8
	halt                                             ; $547a: $76
	ld   d, e                                        ; $547b: $53
	ld   bc, $1111                                   ; $547c: $01 $11 $11
	ld   de, $2311                                   ; $547f: $11 $11 $23
	ld   b, [hl]                                     ; $5482: $46
	adc  d                                           ; $5483: $8a
	xor  d                                           ; $5484: $aa
	adc  $ff                                         ; $5485: $ce $ff
	rst  $38                                         ; $5487: $ff
	rst  $38                                         ; $5488: $ff
	rst  $38                                         ; $5489: $ff
	rst  $38                                         ; $548a: $ff
	db   $ed                                         ; $548b: $ed
	xor  d                                           ; $548c: $aa
	sub  a                                           ; $548d: $97
	ld   d, d                                        ; $548e: $52
	ld   de, $1111                                   ; $548f: $11 $11 $11
	ld   de, $1211                                   ; $5492: $11 $11 $12
	ld   b, [hl]                                     ; $5495: $46
	sbc  d                                           ; $5496: $9a
	adc  $ff                                         ; $5497: $ce $ff
	rst  $38                                         ; $5499: $ff
	rst  $38                                         ; $549a: $ff
	rst  $38                                         ; $549b: $ff
	rst  $38                                         ; $549c: $ff
	cp   $ca                                         ; $549d: $fe $ca
	sbc  b                                           ; $549f: $98
	ld   h, h                                        ; $54a0: $64
	ld   hl, $1111                                   ; $54a1: $21 $11 $11
	ld   de, $1111                                   ; $54a4: $11 $11 $11
	inc  de                                          ; $54a7: $13
	ld   e, b                                        ; $54a8: $58
	xor  e                                           ; $54a9: $ab
	adc  $ff                                         ; $54aa: $ce $ff
	rst  $38                                         ; $54ac: $ff
	rst  $38                                         ; $54ad: $ff
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	cp   $b9                                         ; $54b0: $fe $b9
	sbc  b                                           ; $54b2: $98
	ld   h, e                                        ; $54b3: $63
	ld   de, $1111                                   ; $54b4: $11 $11 $11
	ld   de, $1111                                   ; $54b7: $11 $11 $11
	inc  de                                          ; $54ba: $13
	ld   d, [hl]                                     ; $54bb: $56
	sbc  d                                           ; $54bc: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54bd: $cf
	rst  $38                                         ; $54be: $ff
	rst  $38                                         ; $54bf: $ff
	rst  $38                                         ; $54c0: $ff
	rst  $38                                         ; $54c1: $ff
	rst  $38                                         ; $54c2: $ff
	cp   $ba                                         ; $54c3: $fe $ba
	add  a                                           ; $54c5: $87
	ld   d, e                                        ; $54c6: $53
	ld   de, $1111                                   ; $54c7: $11 $11 $11
	ld   de, $1111                                   ; $54ca: $11 $11 $11
	ld   [de], a                                     ; $54cd: $12
	ld   b, a                                        ; $54ce: $47
	sbc  d                                           ; $54cf: $9a
	adc  $ff                                         ; $54d0: $ce $ff
	rst  $38                                         ; $54d2: $ff
	rst  $38                                         ; $54d3: $ff
	rst  $38                                         ; $54d4: $ff
	rst  $38                                         ; $54d5: $ff
	rst  $38                                         ; $54d6: $ff
	jp   c, Jump_0bd_74a9                            ; $54d7: $da $a9 $74

	ld   hl, $1111                                   ; $54da: $21 $11 $11
	ld   de, $1111                                   ; $54dd: $11 $11 $11
	ld   de, $7835                                   ; $54e0: $11 $35 $78
	cp   l                                           ; $54e3: $bd
	rst  $28                                         ; $54e4: $ef
	rst  $38                                         ; $54e5: $ff
	rst  $38                                         ; $54e6: $ff
	rst  $38                                         ; $54e7: $ff
	rst  $38                                         ; $54e8: $ff
	rst  $38                                         ; $54e9: $ff
	db   $ec                                         ; $54ea: $ec
	cp   c                                           ; $54eb: $b9
	sub  [hl]                                        ; $54ec: $96
	ld   b, d                                        ; $54ed: $42
	ld   de, $1111                                   ; $54ee: $11 $11 $11
	ld   de, $1111                                   ; $54f1: $11 $11 $11
	inc  de                                          ; $54f4: $13
	ld   d, a                                        ; $54f5: $57
	xor  e                                           ; $54f6: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54f7: $cf
	rst  $38                                         ; $54f8: $ff
	rst  $38                                         ; $54f9: $ff
	rst  $38                                         ; $54fa: $ff
	rst  $38                                         ; $54fb: $ff
	rst  $38                                         ; $54fc: $ff
	db   $fd                                         ; $54fd: $fd
	jp   z, Jump_0bd_6499                            ; $54fe: $ca $99 $64

	ld   sp, $1111                                   ; $5501: $31 $11 $11
	ld   de, $1111                                   ; $5504: $11 $11 $11
	ld   de, $7935                                   ; $5507: $11 $35 $79
	xor  h                                           ; $550a: $ac
	rst  $38                                         ; $550b: $ff
	rst  $38                                         ; $550c: $ff
	rst  $38                                         ; $550d: $ff
	rst  $38                                         ; $550e: $ff
	rst  $38                                         ; $550f: $ff
	rst  $38                                         ; $5510: $ff
	db   $dd                                         ; $5511: $dd
	res  2, a                                        ; $5512: $cb $97
	ld   d, e                                        ; $5514: $53
	ld   hl, $1111                                   ; $5515: $21 $11 $11
	ld   de, $1111                                   ; $5518: $11 $11 $11
	inc  de                                          ; $551b: $13
	ld   d, a                                        ; $551c: $57
	sbc  d                                           ; $551d: $9a
	sbc  $ff                                         ; $551e: $de $ff
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	rst  $38                                         ; $5522: $ff
	rst  $38                                         ; $5523: $ff
	cp   $dc                                         ; $5524: $fe $dc
	cp   c                                           ; $5526: $b9
	add  [hl]                                        ; $5527: $86
	ld   b, d                                        ; $5528: $42
	ld   de, $1111                                   ; $5529: $11 $11 $11
	ld   de, $1111                                   ; $552c: $11 $11 $11
	inc  de                                          ; $552f: $13
	ld   d, a                                        ; $5530: $57
	adc  d                                           ; $5531: $8a
	adc  $ff                                         ; $5532: $ce $ff
	rst  $38                                         ; $5534: $ff
	rst  $38                                         ; $5535: $ff
	rst  $38                                         ; $5536: $ff
	rst  $38                                         ; $5537: $ff
	rst  $38                                         ; $5538: $ff
	call c, $86b9                                    ; $5539: $dc $b9 $86
	ld   b, d                                        ; $553c: $42
	ld   de, $1111                                   ; $553d: $11 $11 $11
	ld   de, $1111                                   ; $5540: $11 $11 $11
	inc  d                                           ; $5543: $14
	ld   d, a                                        ; $5544: $57
	sbc  h                                           ; $5545: $9c
	rst  JumpTable                                         ; $5546: $df
	rst  $38                                         ; $5547: $ff
	rst  $38                                         ; $5548: $ff
	rst  $38                                         ; $5549: $ff
	rst  $38                                         ; $554a: $ff
	rst  $38                                         ; $554b: $ff
	cp   $dc                                         ; $554c: $fe $dc
	cp   c                                           ; $554e: $b9
	add  [hl]                                        ; $554f: $86
	ld   b, d                                        ; $5550: $42
	ld   de, $1111                                   ; $5551: $11 $11 $11
	ld   de, $1111                                   ; $5554: $11 $11 $11
	ld   [de], a                                     ; $5557: $12
	ld   b, [hl]                                     ; $5558: $46
	sbc  d                                           ; $5559: $9a
	rst  JumpTable                                         ; $555a: $df
	rst  $38                                         ; $555b: $ff
	rst  $38                                         ; $555c: $ff
	rst  $38                                         ; $555d: $ff
	rst  $38                                         ; $555e: $ff
	rst  $38                                         ; $555f: $ff
	rst  $38                                         ; $5560: $ff
	db   $ec                                         ; $5561: $ec
	jp   z, Jump_0bd_4296                            ; $5562: $ca $96 $42

	ld   de, $1111                                   ; $5565: $11 $11 $11
	ld   de, $1111                                   ; $5568: $11 $11 $11
	ld   de, $7a35                                   ; $556b: $11 $35 $7a
	adc  $ff                                         ; $556e: $ce $ff
	rst  $38                                         ; $5570: $ff
	rst  $38                                         ; $5571: $ff
	rst  $38                                         ; $5572: $ff
	rst  $38                                         ; $5573: $ff
	rst  $38                                         ; $5574: $ff
	db   $fd                                         ; $5575: $fd
	db   $db                                         ; $5576: $db
	sbc  b                                           ; $5577: $98
	ld   h, h                                        ; $5578: $64
	ld   hl, $1111                                   ; $5579: $21 $11 $11
	ld   de, $1111                                   ; $557c: $11 $11 $11
	ld   de, $5713                                   ; $557f: $11 $13 $57
	xor  h                                           ; $5582: $ac
	rst  $28                                         ; $5583: $ef
	rst  $38                                         ; $5584: $ff
	rst  $38                                         ; $5585: $ff
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	rst  $38                                         ; $5588: $ff
	rst  $38                                         ; $5589: $ff
	db   $ec                                         ; $558a: $ec
	xor  d                                           ; $558b: $aa
	add  [hl]                                        ; $558c: $86
	ld   b, e                                        ; $558d: $43
	ld   de, $1111                                   ; $558e: $11 $11 $11
	ld   de, $1111                                   ; $5591: $11 $11 $11
	ld   de, $6824                                   ; $5594: $11 $24 $68
	cp   l                                           ; $5597: $bd
	rst  $38                                         ; $5598: $ff
	rst  $38                                         ; $5599: $ff
	rst  $38                                         ; $559a: $ff
	rst  $38                                         ; $559b: $ff
	rst  $38                                         ; $559c: $ff
	rst  $38                                         ; $559d: $ff
	rst  $38                                         ; $559e: $ff
	db   $ec                                         ; $559f: $ec
	cp   c                                           ; $55a0: $b9
	add  [hl]                                        ; $55a1: $86
	ld   b, d                                        ; $55a2: $42
	ld   de, $1111                                   ; $55a3: $11 $11 $11
	ld   de, $1111                                   ; $55a6: $11 $11 $11
	ld   de, $6814                                   ; $55a9: $11 $14 $68
	sbc  h                                           ; $55ac: $9c
	rst  $28                                         ; $55ad: $ef
	rst  $38                                         ; $55ae: $ff
	rst  $38                                         ; $55af: $ff
	rst  $38                                         ; $55b0: $ff
	rst  $38                                         ; $55b1: $ff
	rst  $38                                         ; $55b2: $ff
	rst  $38                                         ; $55b3: $ff
	db   $ed                                         ; $55b4: $ed
	cp   c                                           ; $55b5: $b9
	sub  a                                           ; $55b6: $97
	ld   d, e                                        ; $55b7: $53
	ld   hl, $1111                                   ; $55b8: $21 $11 $11
	ld   de, $1111                                   ; $55bb: $11 $11 $11
	ld   de, $4512                                   ; $55be: $11 $12 $45
	ld   a, c                                        ; $55c1: $79
	cp   [hl]                                        ; $55c2: $be
	rst  $38                                         ; $55c3: $ff
	rst  $38                                         ; $55c4: $ff
	rst  $38                                         ; $55c5: $ff
	rst  $38                                         ; $55c6: $ff
	rst  $38                                         ; $55c7: $ff
	rst  $38                                         ; $55c8: $ff
	cp   $dc                                         ; $55c9: $fe $dc
	xor  b                                           ; $55cb: $a8
	halt                                             ; $55cc: $76
	ld   d, e                                        ; $55cd: $53
	ld   de, $1111                                   ; $55ce: $11 $11 $11
	ld   de, $1111                                   ; $55d1: $11 $11 $11
	ld   de, $4512                                   ; $55d4: $11 $12 $45
	ld   a, c                                        ; $55d7: $79
	cp   h                                           ; $55d8: $bc
	rst  $28                                         ; $55d9: $ef
	rst  $38                                         ; $55da: $ff
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	rst  $38                                         ; $55dd: $ff
	rst  $38                                         ; $55de: $ff
	rst  $38                                         ; $55df: $ff
	db   $eb                                         ; $55e0: $eb
	xor  b                                           ; $55e1: $a8
	halt                                             ; $55e2: $76
	ld   d, h                                        ; $55e3: $54
	ld   [hl-], a                                    ; $55e4: $32
	ld   hl, $1111                                   ; $55e5: $21 $11 $11
	ld   de, $1111                                   ; $55e8: $11 $11 $11
	ld   [hl+], a                                    ; $55eb: $22
	ld   b, l                                        ; $55ec: $45
	ld   h, [hl]                                     ; $55ed: $66
	adc  d                                           ; $55ee: $8a
	cp   l                                           ; $55ef: $bd
	sbc  $ff                                         ; $55f0: $de $ff
	rst  $38                                         ; $55f2: $ff
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	cp   $ed                                         ; $55f5: $fe $ed
	res  3, c                                        ; $55f7: $cb $99
	halt                                             ; $55f9: $76
	ld   d, l                                        ; $55fa: $55
	ld   b, h                                        ; $55fb: $44
	ld   [hl-], a                                    ; $55fc: $32
	ld   [hl+], a                                    ; $55fd: $22
	inc  hl                                          ; $55fe: $23
	inc  sp                                          ; $55ff: $33
	ld   [hl-], a                                    ; $5600: $32
	inc  sp                                          ; $5601: $33
	ld   b, l                                        ; $5602: $45
	ld   d, l                                        ; $5603: $55
	ld   h, [hl]                                     ; $5604: $66
	ld   a, c                                        ; $5605: $79
	sbc  d                                           ; $5606: $9a
	cp   h                                           ; $5607: $bc
	xor  $de                                         ; $5608: $ee $de
	cp   $de                                         ; $560a: $fe $de
	cp   $fe                                         ; $560c: $fe $fe
	db   $db                                         ; $560e: $db
	and  a                                           ; $560f: $a7
	ld   h, [hl]                                     ; $5610: $66
	ld   [hl], a                                     ; $5611: $77
	ld   d, h                                        ; $5612: $54
	ld   b, e                                        ; $5613: $43
	ld   hl, $3323                                   ; $5614: $21 $23 $33
	inc  sp                                          ; $5617: $33
	inc  sp                                          ; $5618: $33
	inc  sp                                          ; $5619: $33
	ld   b, l                                        ; $561a: $45
	ld   d, [hl]                                     ; $561b: $56
	ld   h, a                                        ; $561c: $67
	sbc  c                                           ; $561d: $99
	xor  e                                           ; $561e: $ab
	call $ffef                                       ; $561f: $cd $ef $ff
	rst  $38                                         ; $5622: $ff
	xor  $dc                                         ; $5623: $ee $dc
	jp   z, $88ba                                    ; $5625: $ca $ba $88

	ld   [hl], a                                     ; $5628: $77
	ld   h, l                                        ; $5629: $65
	ld   d, l                                        ; $562a: $55
	ld   b, d                                        ; $562b: $42
	ld   de, $1111                                   ; $562c: $11 $11 $11
	ld   de, $2611                                   ; $562f: $11 $11 $26
	halt                                             ; $5632: $76
	sbc  l                                           ; $5633: $9d
	db   $ed                                         ; $5634: $ed
	rst  $28                                         ; $5635: $ef
	rst  $38                                         ; $5636: $ff
	rst  $38                                         ; $5637: $ff
	rst  $38                                         ; $5638: $ff
	db   $ec                                         ; $5639: $ec
	sbc  $cb                                         ; $563a: $de $cb
	res  5, c                                        ; $563c: $cb $a9
	ld   [hl], a                                     ; $563e: $77
	ld   d, h                                        ; $563f: $54
	ld   sp, $1111                                   ; $5640: $31 $11 $11
	ld   de, $1111                                   ; $5643: $11 $11 $11
	ld   b, a                                        ; $5646: $47
	adc  d                                           ; $5647: $8a
	rst  $38                                         ; $5648: $ff
	rst  $38                                         ; $5649: $ff
	rst  $38                                         ; $564a: $ff
	rst  $38                                         ; $564b: $ff
	rst  $38                                         ; $564c: $ff
	cp   $ff                                         ; $564d: $fe $ff
	db   $fd                                         ; $564f: $fd
	call $98c9                                       ; $5650: $cd $c9 $98
	ld   [hl], l                                     ; $5653: $75
	ld   de, $1111                                   ; $5654: $11 $11 $11
	ld   de, $1311                                   ; $5657: $11 $11 $13
	ld   l, l                                        ; $565a: $6d
	sbc  $ff                                         ; $565b: $de $ff
	rst  $38                                         ; $565d: $ff
	rst  $38                                         ; $565e: $ff
	rst  $38                                         ; $565f: $ff
	rst  $38                                         ; $5660: $ff
	rst  $28                                         ; $5661: $ef
	rst  $38                                         ; $5662: $ff
	db   $fd                                         ; $5663: $fd
	sbc  $cb                                         ; $5664: $de $cb
	cp   c                                           ; $5666: $b9
	ld   h, c                                        ; $5667: $61
	ld   de, $1111                                   ; $5668: $11 $11 $11
	ld   de, $5b11                                   ; $566b: $11 $11 $5b
	db   $fd                                         ; $566e: $fd
	rst  $38                                         ; $566f: $ff
	rst  $38                                         ; $5670: $ff
	rst  $38                                         ; $5671: $ff
	rst  $38                                         ; $5672: $ff
	rst  $28                                         ; $5673: $ef

Jump_0bd_5674:
	db   $ed                                         ; $5674: $ed
	rst  $38                                         ; $5675: $ff
	rst  $38                                         ; $5676: $ff
	rst  $38                                         ; $5677: $ff
	db   $fd                                         ; $5678: $fd
	db   $db                                         ; $5679: $db
	add  h                                           ; $567a: $84
	ld   de, $1111                                   ; $567b: $11 $11 $11
	ld   de, $5911                                   ; $567e: $11 $11 $59
	rst  $28                                         ; $5681: $ef
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	rst  $38                                         ; $5684: $ff
	rst  $38                                         ; $5685: $ff
	db   $dd                                         ; $5686: $dd
	db   $eb                                         ; $5687: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5688: $cf
	rst  $38                                         ; $5689: $ff
	rst  $38                                         ; $568a: $ff
	rst  $38                                         ; $568b: $ff
	db   $ed                                         ; $568c: $ed
	or   [hl]                                        ; $568d: $b6
	ld   de, $1111                                   ; $568e: $11 $11 $11
	ld   de, $2911                                   ; $5691: $11 $11 $29
	rst  $38                                         ; $5694: $ff
	rst  $28                                         ; $5695: $ef
	rst  $38                                         ; $5696: $ff
	rst  $38                                         ; $5697: $ff
	rst  $38                                         ; $5698: $ff
	cp   e                                           ; $5699: $bb
	db   $eb                                         ; $569a: $eb
	xor  h                                           ; $569b: $ac
	db   $dd                                         ; $569c: $dd
	db   $dd                                         ; $569d: $dd
	rst  $38                                         ; $569e: $ff
	xor  $c7                                         ; $569f: $ee $c7
	ld   de, $1111                                   ; $56a1: $11 $11 $11
	ld   de, $3911                                   ; $56a4: $11 $11 $39
	rst  JumpTable                                         ; $56a7: $df
	rst  $38                                         ; $56a8: $ff
	rst  $38                                         ; $56a9: $ff
	rst  $38                                         ; $56aa: $ff
	rst  $38                                         ; $56ab: $ff
	cp   d                                           ; $56ac: $ba
	ret                                              ; $56ad: $c9


	sbc  h                                           ; $56ae: $9c
	cp   e                                           ; $56af: $bb
	call z, $effe                                    ; $56b0: $cc $fe $ef
	reti                                             ; $56b3: $d9


	ld   sp, $1111                                   ; $56b4: $31 $11 $11
	ld   de, $4a11                                   ; $56b7: $11 $11 $4a
	rst  $38                                         ; $56ba: $ff
	rst  $38                                         ; $56bb: $ff
	rst  $38                                         ; $56bc: $ff
	rst  $38                                         ; $56bd: $ff
	cp   $9a                                         ; $56be: $fe $9a
	xor  b                                           ; $56c0: $a8
	sbc  e                                           ; $56c1: $9b
	xor  e                                           ; $56c2: $ab
	cp   l                                           ; $56c3: $bd
	db   $fd                                         ; $56c4: $fd
	xor  $b7                                         ; $56c5: $ee $b7
	ld   hl, $1111                                   ; $56c7: $21 $11 $11
	ld   de, $5b11                                   ; $56ca: $11 $11 $5b
	rst  $38                                         ; $56cd: $ff
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	rst  $38                                         ; $56d0: $ff
	db   $fd                                         ; $56d1: $fd
	sbc  e                                           ; $56d2: $9b
	sbc  c                                           ; $56d3: $99
	sbc  c                                           ; $56d4: $99
	xor  h                                           ; $56d5: $ac
	cp   h                                           ; $56d6: $bc
	db   $dd                                         ; $56d7: $dd
	call c, $1194                                    ; $56d8: $dc $94 $11
	ld   de, $1111                                   ; $56db: $11 $11 $11
	ld   [de], a                                     ; $56de: $12
	sbc  [hl]                                        ; $56df: $9e
	rst  $28                                         ; $56e0: $ef
	rst  $38                                         ; $56e1: $ff
	rst  $38                                         ; $56e2: $ff
	rst  $38                                         ; $56e3: $ff
	ld   a, [$98ac]                                  ; $56e4: $fa $ac $98
	xor  d                                           ; $56e7: $aa
	cp   e                                           ; $56e8: $bb
	call $ebcd                                       ; $56e9: $cd $cd $eb
	ld   h, d                                        ; $56ec: $62
	ld   de, $1111                                   ; $56ed: $11 $11 $11
	ld   de, $ad14                                   ; $56f0: $11 $14 $ad
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	rst  $38                                         ; $56f5: $ff
	cp   $eb                                         ; $56f6: $fe $eb
	sbc  d                                           ; $56f8: $9a
	sbc  d                                           ; $56f9: $9a
	xor  c                                           ; $56fa: $a9
	cp   e                                           ; $56fb: $bb
	cp   l                                           ; $56fc: $bd
	db   $dd                                         ; $56fd: $dd
	jp   c, $1162                                    ; $56fe: $da $62 $11

	ld   de, $1111                                   ; $5701: $11 $11 $11
	ld   d, $9f                                      ; $5704: $16 $9f
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	rst  $38                                         ; $5708: $ff
	db   $fd                                         ; $5709: $fd
	ld   a, [$9bac]                                  ; $570a: $fa $ac $9b
	xor  e                                           ; $570d: $ab
	set  1, l                                        ; $570e: $cb $cd
	call Call_0bd_51c9                               ; $5710: $cd $c9 $51
	ld   de, $1111                                   ; $5713: $11 $11 $11
	ld   de, $ce17                                   ; $5716: $11 $17 $ce
	rst  JumpTable                                         ; $5719: $df
	rst  $38                                         ; $571a: $ff
	rst  $38                                         ; $571b: $ff
	rst  $38                                         ; $571c: $ff
	sbc  d                                           ; $571d: $9a
	res  3, c                                        ; $571e: $cb $99
	cp   e                                           ; $5720: $bb
	cp   d                                           ; $5721: $ba
	db   $dd                                         ; $5722: $dd
	db   $dd                                         ; $5723: $dd
	xor  b                                           ; $5724: $a8
	ld   sp, $1111                                   ; $5725: $31 $11 $11
	ld   de, $5911                                   ; $5728: $11 $11 $59
	cp   e                                           ; $572b: $bb
	rst  $28                                         ; $572c: $ef
	rst  $38                                         ; $572d: $ff
	rst  $38                                         ; $572e: $ff
	db   $fd                                         ; $572f: $fd
	sbc  h                                           ; $5730: $9c
	jp   z, $bc99                                    ; $5731: $ca $99 $bc

	xor  e                                           ; $5734: $ab
	db   $db                                         ; $5735: $db
	jp   z, $3286                                    ; $5736: $ca $86 $32

	ld   de, $1111                                   ; $5739: $11 $11 $11
	ld   de, $cc69                                   ; $573c: $11 $69 $cc
	rst  $38                                         ; $573f: $ff
	rst  $38                                         ; $5740: $ff
	cp   $fc                                         ; $5741: $fe $fc
	xor  l                                           ; $5743: $ad
	cp   d                                           ; $5744: $ba
	xor  c                                           ; $5745: $a9
	cp   e                                           ; $5746: $bb
	xor  e                                           ; $5747: $ab
	xor  e                                           ; $5748: $ab
	jp   z, $2295                                    ; $5749: $ca $95 $22

	ld   de, $1111                                   ; $574c: $11 $11 $11
	dec  d                                           ; $574f: $15
	ld   e, d                                        ; $5750: $5a
	cp   [hl]                                        ; $5751: $be
	rst  $38                                         ; $5752: $ff
	rst  $38                                         ; $5753: $ff
	cp   $ea                                         ; $5754: $fe $ea
	db   $db                                         ; $5756: $db
	cp   h                                           ; $5757: $bc
	xor  d                                           ; $5758: $aa
	cp   c                                           ; $5759: $b9
	cp   d                                           ; $575a: $ba
	xor  h                                           ; $575b: $ac
	xor  d                                           ; $575c: $aa
	ld   [hl], h                                     ; $575d: $74
	ld   b, c                                        ; $575e: $41
	ld   de, $1111                                   ; $575f: $11 $11 $11
	ld   d, $59                                      ; $5762: $16 $59
	adc  $ff                                         ; $5764: $ce $ff
	rst  $38                                         ; $5766: $ff
	rst  $28                                         ; $5767: $ef
	db   $db                                         ; $5768: $db
	db   $eb                                         ; $5769: $eb
	cp   h                                           ; $576a: $bc
	cp   h                                           ; $576b: $bc
	xor  d                                           ; $576c: $aa
	cp   d                                           ; $576d: $ba
	adc  d                                           ; $576e: $8a
	sbc  b                                           ; $576f: $98
	ld   h, l                                        ; $5770: $65
	ld   b, c                                        ; $5771: $41
	ld   de, $1111                                   ; $5772: $11 $11 $11
	dec  [hl]                                        ; $5775: $35
	ld   l, e                                        ; $5776: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5777: $cf
	rst  $38                                         ; $5778: $ff
	rst  $38                                         ; $5779: $ff
	sbc  $cd                                         ; $577a: $de $cd
	jp   c, $bbcd                                    ; $577c: $da $cd $bb

	xor  e                                           ; $577f: $ab
	cp   c                                           ; $5780: $b9
	sbc  d                                           ; $5781: $9a
	and  a                                           ; $5782: $a7
	ld   h, l                                        ; $5783: $65
	ld   sp, $1111                                   ; $5784: $31 $11 $11
	ld   de, $6754                                   ; $5787: $11 $54 $67
	cp   [hl]                                        ; $578a: $be
	xor  $ff                                         ; $578b: $ee $ff
	xor  $dd                                         ; $578d: $ee $dd
	set  3, h                                        ; $578f: $cb $dc
	call z, $9a9a                                    ; $5791: $cc $9a $9a
	cp   d                                           ; $5794: $ba
	sbc  c                                           ; $5795: $99
	ld   h, l                                        ; $5796: $65
	ld   hl, $1111                                   ; $5797: $21 $11 $11
	ld   hl, $8913                                   ; $579a: $21 $13 $89
	ld   a, e                                        ; $579d: $7b
	rst  $28                                         ; $579e: $ef
	db   $dd                                         ; $579f: $dd
	rst  $28                                         ; $57a0: $ef
	jp   c, $dbcc                                    ; $57a1: $da $cc $db

	cp   l                                           ; $57a4: $bd
	cp   d                                           ; $57a5: $ba
	xor  d                                           ; $57a6: $aa
	cp   c                                           ; $57a7: $b9
	adc  c                                           ; $57a8: $89
	add  a                                           ; $57a9: $87
	ld   d, h                                        ; $57aa: $54
	ld   sp, $2111                                   ; $57ab: $31 $11 $21
	ld   [de], a                                     ; $57ae: $12
	ld   b, [hl]                                     ; $57af: $46
	ld   d, a                                        ; $57b0: $57
	cp   [hl]                                        ; $57b1: $be
	call z, $dbff                                    ; $57b2: $cc $ff $db
	call z, $ddbb                                    ; $57b5: $cc $bb $dd
	call c, $99a9                                    ; $57b8: $dc $a9 $99
	adc  c                                           ; $57bb: $89
	xor  c                                           ; $57bc: $a9
	ld   h, [hl]                                     ; $57bd: $66
	ld   [hl], l                                     ; $57be: $75
	ld   sp, $2113                                   ; $57bf: $31 $13 $21
	inc  h                                           ; $57c2: $24
	ld   b, h                                        ; $57c3: $44
	scf                                              ; $57c4: $37
	xor  c                                           ; $57c5: $a9
	xor  d                                           ; $57c6: $aa
	call z, $ceba                                    ; $57c7: $cc $ba $ce
	db   $db                                         ; $57ca: $db
	adc  $ca                                         ; $57cb: $ce $ca
	cp   e                                           ; $57cd: $bb
	cp   c                                           ; $57ce: $b9
	sbc  c                                           ; $57cf: $99
	jp   z, $9768                                    ; $57d0: $ca $68 $97

	ld   [hl-], a                                    ; $57d3: $32
	ld   b, e                                        ; $57d4: $43
	ld   de, $4125                                   ; $57d5: $11 $25 $41
	dec  [hl]                                        ; $57d8: $35
	ld   d, h                                        ; $57d9: $54
	ld   l, d                                        ; $57da: $6a
	jp   c, $de9b                                    ; $57db: $da $9b $de

	cp   h                                           ; $57de: $bc
	db   $dd                                         ; $57df: $dd
	ret                                              ; $57e0: $c9


	adc  $ba                                         ; $57e1: $ce $ba
	cp   h                                           ; $57e3: $bc
	or   a                                           ; $57e4: $b7
	xor  c                                           ; $57e5: $a9
	ld   h, l                                        ; $57e6: $65
	sbc  b                                           ; $57e7: $98
	ld   d, l                                        ; $57e8: $55
	ld   b, d                                        ; $57e9: $42
	inc  sp                                          ; $57ea: $33
	inc  h                                           ; $57eb: $24
	dec  [hl]                                        ; $57ec: $35
	inc  hl                                          ; $57ed: $23
	ld   d, l                                        ; $57ee: $55
	adc  c                                           ; $57ef: $89
	xor  c                                           ; $57f0: $a9
	adc  c                                           ; $57f1: $89
	xor  h                                           ; $57f2: $ac
	cp   l                                           ; $57f3: $bd
	db   $db                                         ; $57f4: $db
	cp   d                                           ; $57f5: $ba
	call $dcbc                                       ; $57f6: $cd $bc $dc
	sbc  c                                           ; $57f9: $99
	sbc  c                                           ; $57fa: $99
	ld   a, c                                        ; $57fb: $79
	ld   d, l                                        ; $57fc: $55
	add  [hl]                                        ; $57fd: $86
	ld   h, a                                        ; $57fe: $67
	halt                                             ; $57ff: $76
	inc  h                                           ; $5800: $24
	ld   h, h                                        ; $5801: $64
	ld   b, e                                        ; $5802: $43
	ld   h, l                                        ; $5803: $65
	ld   b, [hl]                                     ; $5804: $46
	ld   [hl], a                                     ; $5805: $77
	ld   a, c                                        ; $5806: $79
	adc  b                                           ; $5807: $88
	ret                                              ; $5808: $c9


	xor  e                                           ; $5809: $ab
	call z, $cbba                                    ; $580a: $cc $ba $cb
	xor  e                                           ; $580d: $ab
	xor  e                                           ; $580e: $ab
	xor  d                                           ; $580f: $aa
	ld   a, d                                        ; $5810: $7a
	sub  a                                           ; $5811: $97
	ld   [hl], a                                     ; $5812: $77
	add  a                                           ; $5813: $87
	halt                                             ; $5814: $76
	halt                                             ; $5815: $76
	add  [hl]                                        ; $5816: $86
	ld   d, a                                        ; $5817: $57
	ld   d, a                                        ; $5818: $57
	ld   d, h                                        ; $5819: $54
	sub  a                                           ; $581a: $97
	ld   a, c                                        ; $581b: $79
	halt                                             ; $581c: $76
	adc  d                                           ; $581d: $8a
	sub  [hl]                                        ; $581e: $96
	xor  e                                           ; $581f: $ab
	add  a                                           ; $5820: $87
	sbc  h                                           ; $5821: $9c
	or   l                                           ; $5822: $b5
	adc  h                                           ; $5823: $8c
	add  a                                           ; $5824: $87
	adc  h                                           ; $5825: $8c
	and  [hl]                                        ; $5826: $a6
	ld   a, c                                        ; $5827: $79
	sub  a                                           ; $5828: $97
	adc  b                                           ; $5829: $88
	add  [hl]                                        ; $582a: $86
	ld   a, b                                        ; $582b: $78
	add  a                                           ; $582c: $87
	ld   l, c                                        ; $582d: $69
	halt                                             ; $582e: $76
	adc  c                                           ; $582f: $89
	sub  a                                           ; $5830: $97
	sbc  b                                           ; $5831: $98
	add  a                                           ; $5832: $87
	ld   l, c                                        ; $5833: $69
	sub  a                                           ; $5834: $97
	ld   a, b                                        ; $5835: $78
	adc  b                                           ; $5836: $88
	ld   l, c                                        ; $5837: $69
	sbc  c                                           ; $5838: $99
	halt                                             ; $5839: $76
	xor  e                                           ; $583a: $ab
	halt                                             ; $583b: $76
	xor  e                                           ; $583c: $ab
	ld   h, l                                        ; $583d: $65
	xor  c                                           ; $583e: $a9
	sub  l                                           ; $583f: $95
	ld   a, d                                        ; $5840: $7a
	add  a                                           ; $5841: $87
	adc  e                                           ; $5842: $8b
	adc  b                                           ; $5843: $88
	and  a                                           ; $5844: $a7
	adc  d                                           ; $5845: $8a
	ld   [hl], a                                     ; $5846: $77
	adc  c                                           ; $5847: $89
	and  [hl]                                        ; $5848: $a6
	ld   e, d                                        ; $5849: $5a
	add  a                                           ; $584a: $87
	ld   l, b                                        ; $584b: $68
	and  a                                           ; $584c: $a7
	add  a                                           ; $584d: $87
	sbc  b                                           ; $584e: $98
	ld   a, c                                        ; $584f: $79
	sbc  b                                           ; $5850: $98
	ld   a, c                                        ; $5851: $79
	ld   [hl], a                                     ; $5852: $77
	ld   a, c                                        ; $5853: $79
	sub  [hl]                                        ; $5854: $96
	sbc  b                                           ; $5855: $98
	ld   a, b                                        ; $5856: $78
	ld   a, b                                        ; $5857: $78
	xor  c                                           ; $5858: $a9
	add  a                                           ; $5859: $87
	adc  d                                           ; $585a: $8a
	add  a                                           ; $585b: $87
	adc  b                                           ; $585c: $88
	sub  a                                           ; $585d: $97
	ld   a, c                                        ; $585e: $79
	sbc  d                                           ; $585f: $9a
	halt                                             ; $5860: $76
	xor  d                                           ; $5861: $aa
	ld   h, a                                        ; $5862: $67
	adc  b                                           ; $5863: $88
	add  a                                           ; $5864: $87
	ld   l, b                                        ; $5865: $68
	sub  a                                           ; $5866: $97
	ld   l, b                                        ; $5867: $68
	sbc  c                                           ; $5868: $99
	add  a                                           ; $5869: $87
	adc  b                                           ; $586a: $88
	ld   a, b                                        ; $586b: $78
	sbc  b                                           ; $586c: $98
	ld   a, b                                        ; $586d: $78
	add  a                                           ; $586e: $87
	adc  c                                           ; $586f: $89
	add  a                                           ; $5870: $87
	adc  d                                           ; $5871: $8a
	xor  c                                           ; $5872: $a9
	adc  c                                           ; $5873: $89
	sub  a                                           ; $5874: $97
	adc  c                                           ; $5875: $89
	sbc  c                                           ; $5876: $99
	sub  a                                           ; $5877: $97
	adc  d                                           ; $5878: $8a
	ld   h, [hl]                                     ; $5879: $66
	ld   [hl], a                                     ; $587a: $77
	add  a                                           ; $587b: $87
	xor  c                                           ; $587c: $a9
	ld   [hl], a                                     ; $587d: $77
	ld   [hl], a                                     ; $587e: $77
	ld   a, c                                        ; $587f: $79
	sbc  b                                           ; $5880: $98
	ld   a, b                                        ; $5881: $78
	add  a                                           ; $5882: $87
	ld   l, c                                        ; $5883: $69
	cp   b                                           ; $5884: $b8
	ld   a, c                                        ; $5885: $79
	sbc  b                                           ; $5886: $98
	ld   a, b                                        ; $5887: $78
	sbc  d                                           ; $5888: $9a
	adc  b                                           ; $5889: $88
	sbc  b                                           ; $588a: $98
	adc  d                                           ; $588b: $8a
	ld   a, b                                        ; $588c: $78
	add  a                                           ; $588d: $87
	sbc  c                                           ; $588e: $99
	adc  c                                           ; $588f: $89
	ld   [hl], a                                     ; $5890: $77
	ld   [hl], a                                     ; $5891: $77
	adc  b                                           ; $5892: $88
	adc  b                                           ; $5893: $88
	sbc  c                                           ; $5894: $99
	ld   [hl], a                                     ; $5895: $77
	add  a                                           ; $5896: $87
	ld   a, b                                        ; $5897: $78
	sbc  b                                           ; $5898: $98
	ld   [hl], a                                     ; $5899: $77
	sbc  b                                           ; $589a: $98
	ld   l, b                                        ; $589b: $68
	xor  c                                           ; $589c: $a9
	sbc  b                                           ; $589d: $98
	ld   h, a                                        ; $589e: $67
	sub  [hl]                                        ; $589f: $96
	adc  e                                           ; $58a0: $8b
	sbc  c                                           ; $58a1: $99
	halt                                             ; $58a2: $76
	adc  c                                           ; $58a3: $89
	sub  a                                           ; $58a4: $97
	adc  b                                           ; $58a5: $88
	sub  a                                           ; $58a6: $97
	ld   l, c                                        ; $58a7: $69
	sbc  b                                           ; $58a8: $98
	ld   [hl], a                                     ; $58a9: $77
	adc  c                                           ; $58aa: $89
	sub  a                                           ; $58ab: $97
	sbc  b                                           ; $58ac: $98
	ld   l, b                                        ; $58ad: $68
	adc  c                                           ; $58ae: $89
	adc  b                                           ; $58af: $88
	ld   a, b                                        ; $58b0: $78
	sbc  b                                           ; $58b1: $98
	sbc  b                                           ; $58b2: $98
	adc  b                                           ; $58b3: $88
	adc  b                                           ; $58b4: $88
	ld   a, b                                        ; $58b5: $78
	sbc  b                                           ; $58b6: $98
	and  a                                           ; $58b7: $a7
	ld   a, b                                        ; $58b8: $78
	sbc  b                                           ; $58b9: $98
	ld   [hl], a                                     ; $58ba: $77
	adc  c                                           ; $58bb: $89
	ld   [hl], a                                     ; $58bc: $77
	adc  c                                           ; $58bd: $89
	add  [hl]                                        ; $58be: $86
	adc  c                                           ; $58bf: $89
	adc  b                                           ; $58c0: $88
	ld   a, c                                        ; $58c1: $79
	add  a                                           ; $58c2: $87
	add  a                                           ; $58c3: $87
	sbc  b                                           ; $58c4: $98
	ld   a, d                                        ; $58c5: $7a
	adc  c                                           ; $58c6: $89
	add  a                                           ; $58c7: $87
	add  a                                           ; $58c8: $87
	ld   a, b                                        ; $58c9: $78
	sbc  d                                           ; $58ca: $9a
	ld   [hl], a                                     ; $58cb: $77
	ld   a, b                                        ; $58cc: $78
	add  a                                           ; $58cd: $87
	sbc  c                                           ; $58ce: $99
	sub  a                                           ; $58cf: $97
	ld   a, b                                        ; $58d0: $78
	adc  b                                           ; $58d1: $88
	ld   a, c                                        ; $58d2: $79
	xor  c                                           ; $58d3: $a9
	ld   l, b                                        ; $58d4: $68
	add  a                                           ; $58d5: $87
	add  a                                           ; $58d6: $87
	adc  b                                           ; $58d7: $88
	add  [hl]                                        ; $58d8: $86
	adc  d                                           ; $58d9: $8a
	ld   [hl], a                                     ; $58da: $77
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	ld   a, b                                        ; $58df: $78
	sbc  b                                           ; $58e0: $98
	ld   a, b                                        ; $58e1: $78
	sub  a                                           ; $58e2: $97
	ld   a, b                                        ; $58e3: $78
	xor  c                                           ; $58e4: $a9
	ld   a, b                                        ; $58e5: $78
	ld   a, b                                        ; $58e6: $78
	sbc  b                                           ; $58e7: $98
	xor  b                                           ; $58e8: $a8
	ld   a, c                                        ; $58e9: $79
	add  [hl]                                        ; $58ea: $86
	sbc  c                                           ; $58eb: $99
	adc  b                                           ; $58ec: $88
	ld   a, c                                        ; $58ed: $79
	add  a                                           ; $58ee: $87
	adc  b                                           ; $58ef: $88
	sbc  b                                           ; $58f0: $98
	ld   a, c                                        ; $58f1: $79
	ld   a, b                                        ; $58f2: $78
	sub  a                                           ; $58f3: $97
	adc  c                                           ; $58f4: $89
	add  a                                           ; $58f5: $87
	ld   [hl], a                                     ; $58f6: $77
	adc  c                                           ; $58f7: $89
	ld   [hl], a                                     ; $58f8: $77
	adc  c                                           ; $58f9: $89
	halt                                             ; $58fa: $76
	sbc  b                                           ; $58fb: $98
	ld   [hl], a                                     ; $58fc: $77
	adc  d                                           ; $58fd: $8a
	adc  b                                           ; $58fe: $88
	adc  b                                           ; $58ff: $88
	sub  a                                           ; $5900: $97
	adc  d                                           ; $5901: $8a
	add  a                                           ; $5902: $87
	ld   a, c                                        ; $5903: $79
	add  a                                           ; $5904: $87
	sbc  c                                           ; $5905: $99
	add  [hl]                                        ; $5906: $86
	adc  c                                           ; $5907: $89
	ld   a, c                                        ; $5908: $79
	sbc  b                                           ; $5909: $98
	ld   h, a                                        ; $590a: $67
	adc  b                                           ; $590b: $88
	sub  a                                           ; $590c: $97
	sbc  b                                           ; $590d: $98
	ld   a, d                                        ; $590e: $7a
	ld   [hl], a                                     ; $590f: $77
	add  a                                           ; $5910: $87
	adc  b                                           ; $5911: $88
	sbc  b                                           ; $5912: $98
	ld   [hl], a                                     ; $5913: $77
	adc  b                                           ; $5914: $88
	adc  b                                           ; $5915: $88
	adc  b                                           ; $5916: $88
	ld   [hl], a                                     ; $5917: $77
	sbc  c                                           ; $5918: $99
	adc  c                                           ; $5919: $89
	add  a                                           ; $591a: $87
	ld   a, b                                        ; $591b: $78
	adc  b                                           ; $591c: $88
	adc  c                                           ; $591d: $89
	add  [hl]                                        ; $591e: $86
	ld   a, c                                        ; $591f: $79
	and  [hl]                                        ; $5920: $a6
	ld   a, c                                        ; $5921: $79
	ld   a, b                                        ; $5922: $78
	add  [hl]                                        ; $5923: $86
	adc  b                                           ; $5924: $88
	xor  b                                           ; $5925: $a8
	ld   [hl], a                                     ; $5926: $77
	adc  b                                           ; $5927: $88
	adc  b                                           ; $5928: $88
	adc  c                                           ; $5929: $89
	ld   a, b                                        ; $592a: $78
	sub  a                                           ; $592b: $97
	sub  [hl]                                        ; $592c: $96
	ld   a, b                                        ; $592d: $78
	adc  d                                           ; $592e: $8a
	ld   a, b                                        ; $592f: $78
	add  a                                           ; $5930: $87
	sbc  c                                           ; $5931: $99
	ld   h, a                                        ; $5932: $67
	sub  a                                           ; $5933: $97
	adc  b                                           ; $5934: $88
	sbc  b                                           ; $5935: $98
	ld   [hl], a                                     ; $5936: $77
	ld   l, c                                        ; $5937: $69
	sbc  b                                           ; $5938: $98
	ld   [hl], a                                     ; $5939: $77
	ld   [hl], a                                     ; $593a: $77
	ld   a, c                                        ; $593b: $79
	xor  b                                           ; $593c: $a8
	ld   a, b                                        ; $593d: $78
	ld   h, a                                        ; $593e: $67
	adc  c                                           ; $593f: $89
	sub  a                                           ; $5940: $97
	ld   a, b                                        ; $5941: $78
	halt                                             ; $5942: $76
	ld   a, c                                        ; $5943: $79
	sbc  b                                           ; $5944: $98
	ld   a, c                                        ; $5945: $79
	sub  [hl]                                        ; $5946: $96
	ld   l, b                                        ; $5947: $68
	sbc  b                                           ; $5948: $98
	adc  c                                           ; $5949: $89
	ld   h, a                                        ; $594a: $67
	add  a                                           ; $594b: $87
	adc  c                                           ; $594c: $89
	add  [hl]                                        ; $594d: $86
	ld   a, c                                        ; $594e: $79
	ld   [hl], a                                     ; $594f: $77
	sub  a                                           ; $5950: $97
	add  a                                           ; $5951: $87
	ld   a, d                                        ; $5952: $7a
	sub  a                                           ; $5953: $97
	ld   [hl], a                                     ; $5954: $77
	ld   [hl], a                                     ; $5955: $77
	sbc  b                                           ; $5956: $98
	ld   a, b                                        ; $5957: $78
	sub  a                                           ; $5958: $97
	ld   l, c                                        ; $5959: $69
	add  l                                           ; $595a: $85
	adc  d                                           ; $595b: $8a
	sub  [hl]                                        ; $595c: $96
	adc  b                                           ; $595d: $88
	add  a                                           ; $595e: $87
	ld   a, e                                        ; $595f: $7b
	add  [hl]                                        ; $5960: $86
	ld   [hl], a                                     ; $5961: $77
	ld   a, c                                        ; $5962: $79
	adc  b                                           ; $5963: $88
	add  a                                           ; $5964: $87
	halt                                             ; $5965: $76
	ld   a, d                                        ; $5966: $7a
	and  a                                           ; $5967: $a7
	ld   h, a                                        ; $5968: $67
	sub  [hl]                                        ; $5969: $96
	sbc  d                                           ; $596a: $9a
	ld   l, b                                        ; $596b: $68
	ld   l, b                                        ; $596c: $68
	add  a                                           ; $596d: $87
	xor  b                                           ; $596e: $a8
	ld   [hl], l                                     ; $596f: $75
	adc  c                                           ; $5970: $89
	add  [hl]                                        ; $5971: $86
	adc  d                                           ; $5972: $8a
	sub  [hl]                                        ; $5973: $96
	ld   l, b                                        ; $5974: $68
	xor  c                                           ; $5975: $a9
	ld   h, [hl]                                     ; $5976: $66
	sub  a                                           ; $5977: $97
	ld   h, a                                        ; $5978: $67
	sbc  d                                           ; $5979: $9a
	adc  b                                           ; $597a: $88
	ld   [hl], a                                     ; $597b: $77
	sbc  b                                           ; $597c: $98
	ld   [hl], a                                     ; $597d: $77
	adc  e                                           ; $597e: $8b
	add  l                                           ; $597f: $85
	ld   l, d                                        ; $5980: $6a
	sub  [hl]                                        ; $5981: $96
	ld   a, d                                        ; $5982: $7a
	and  a                                           ; $5983: $a7
	ld   a, c                                        ; $5984: $79
	and  a                                           ; $5985: $a7
	ld   h, a                                        ; $5986: $67
	ld   [hl], a                                     ; $5987: $77
	adc  c                                           ; $5988: $89
	ld   [hl], a                                     ; $5989: $77
	ld   l, d                                        ; $598a: $6a
	and  l                                           ; $598b: $a5
	xor  d                                           ; $598c: $aa
	add  a                                           ; $598d: $87
	ld   a, b                                        ; $598e: $78
	ld   [hl], a                                     ; $598f: $77
	adc  b                                           ; $5990: $88
	add  [hl]                                        ; $5991: $86
	add  a                                           ; $5992: $87
	ld   h, a                                        ; $5993: $67
	adc  d                                           ; $5994: $8a
	adc  b                                           ; $5995: $88
	sbc  d                                           ; $5996: $9a
	sub  a                                           ; $5997: $97
	ld   a, d                                        ; $5998: $7a
	sub  a                                           ; $5999: $97
	ld   a, b                                        ; $599a: $78
	add  a                                           ; $599b: $87
	ld   [hl], a                                     ; $599c: $77
	adc  c                                           ; $599d: $89
	halt                                             ; $599e: $76
	add  a                                           ; $599f: $87
	sub  a                                           ; $59a0: $97
	adc  c                                           ; $59a1: $89
	add  a                                           ; $59a2: $87
	ld   l, c                                        ; $59a3: $69
	or   a                                           ; $59a4: $b7
	ld   l, b                                        ; $59a5: $68
	sub  a                                           ; $59a6: $97
	ld   l, d                                        ; $59a7: $6a
	sub  a                                           ; $59a8: $97
	ld   [hl], a                                     ; $59a9: $77
	sub  a                                           ; $59aa: $97
	adc  d                                           ; $59ab: $8a
	ld   l, c                                        ; $59ac: $69
	sub  a                                           ; $59ad: $97
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	ld   a, c                                        ; $59b0: $79
	sub  [hl]                                        ; $59b1: $96
	ld   a, e                                        ; $59b2: $7b
	ld   [hl], l                                     ; $59b3: $75
	xor  c                                           ; $59b4: $a9
	ld   [hl], a                                     ; $59b5: $77
	add  a                                           ; $59b6: $87
	ld   a, c                                        ; $59b7: $79
	add  a                                           ; $59b8: $87
	sbc  d                                           ; $59b9: $9a
	add  a                                           ; $59ba: $87
	sbc  d                                           ; $59bb: $9a
	add  [hl]                                        ; $59bc: $86
	adc  b                                           ; $59bd: $88
	ld   a, c                                        ; $59be: $79
	ld   a, c                                        ; $59bf: $79
	ld   [hl], a                                     ; $59c0: $77
	adc  b                                           ; $59c1: $88
	sub  a                                           ; $59c2: $97
	adc  d                                           ; $59c3: $8a
	add  [hl]                                        ; $59c4: $86
	xor  c                                           ; $59c5: $a9
	adc  b                                           ; $59c6: $88
	adc  c                                           ; $59c7: $89
	adc  c                                           ; $59c8: $89
	sbc  c                                           ; $59c9: $99
	ld   [hl], a                                     ; $59ca: $77
	adc  c                                           ; $59cb: $89
	ld   l, b                                        ; $59cc: $68
	sub  [hl]                                        ; $59cd: $96
	ld   a, b                                        ; $59ce: $78
	adc  d                                           ; $59cf: $8a
	ld   [hl], a                                     ; $59d0: $77
	xor  b                                           ; $59d1: $a8
	adc  b                                           ; $59d2: $88
	sbc  b                                           ; $59d3: $98
	add  a                                           ; $59d4: $87
	ld   a, c                                        ; $59d5: $79
	ld   a, b                                        ; $59d6: $78
	adc  c                                           ; $59d7: $89
	halt                                             ; $59d8: $76
	adc  c                                           ; $59d9: $89
	ld   a, d                                        ; $59da: $7a
	sub  a                                           ; $59db: $97
	ld   l, b                                        ; $59dc: $68
	xor  c                                           ; $59dd: $a9
	ld   a, b                                        ; $59de: $78
	xor  c                                           ; $59df: $a9
	halt                                             ; $59e0: $76
	ld   a, d                                        ; $59e1: $7a
	and  l                                           ; $59e2: $a5
	ld   e, d                                        ; $59e3: $5a
	sub  a                                           ; $59e4: $97
	ld   h, a                                        ; $59e5: $67
	sbc  d                                           ; $59e6: $9a
	ld   h, l                                        ; $59e7: $65
	adc  c                                           ; $59e8: $89
	xor  b                                           ; $59e9: $a8
	ld   [hl], a                                     ; $59ea: $77
	xor  c                                           ; $59eb: $a9
	ld   e, d                                        ; $59ec: $5a
	sbc  c                                           ; $59ed: $99
	sub  h                                           ; $59ee: $94
	ld   a, h                                        ; $59ef: $7c
	and  a                                           ; $59f0: $a7
	adc  c                                           ; $59f1: $89
	sub  [hl]                                        ; $59f2: $96
	sbc  b                                           ; $59f3: $98
	ld   a, e                                        ; $59f4: $7b
	adc  b                                           ; $59f5: $88
	ld   a, b                                        ; $59f6: $78
	sub  a                                           ; $59f7: $97
	ld   l, b                                        ; $59f8: $68
	adc  b                                           ; $59f9: $88
	halt                                             ; $59fa: $76
	sub  [hl]                                        ; $59fb: $96
	ld   l, b                                        ; $59fc: $68
	adc  b                                           ; $59fd: $88
	ld   a, c                                        ; $59fe: $79
	sub  a                                           ; $59ff: $97
	ld   [hl], a                                     ; $5a00: $77
	sbc  d                                           ; $5a01: $9a
	ld   a, b                                        ; $5a02: $78
	adc  b                                           ; $5a03: $88
	sbc  b                                           ; $5a04: $98
	ld   a, b                                        ; $5a05: $78
	cp   c                                           ; $5a06: $b9
	add  a                                           ; $5a07: $87
	adc  l                                           ; $5a08: $8d
	add  [hl]                                        ; $5a09: $86
	sbc  d                                           ; $5a0a: $9a
	or   a                                           ; $5a0b: $b7
	ld   a, d                                        ; $5a0c: $7a
	sub  [hl]                                        ; $5a0d: $96
	ld   l, b                                        ; $5a0e: $68
	ld   [hl], l                                     ; $5a0f: $75
	add  [hl]                                        ; $5a10: $86
	dec  [hl]                                        ; $5a11: $35
	ld   h, [hl]                                     ; $5a12: $66
	ld   d, h                                        ; $5a13: $54
	add  a                                           ; $5a14: $87
	ld   d, l                                        ; $5a15: $55
	xor  e                                           ; $5a16: $ab
	adc  d                                           ; $5a17: $8a
	cp   e                                           ; $5a18: $bb
	cp   d                                           ; $5a19: $ba
	res  7, h                                        ; $5a1a: $cb $bc
	cp   e                                           ; $5a1c: $bb
	sbc  e                                           ; $5a1d: $9b
	jp   z, $9887                                    ; $5a1e: $ca $87 $98

	ld   h, [hl]                                     ; $5a21: $66
	halt                                             ; $5a22: $76
	ld   d, e                                        ; $5a23: $53
	inc  h                                           ; $5a24: $24
	ld   d, h                                        ; $5a25: $54
	inc  hl                                          ; $5a26: $23
	ld   d, l                                        ; $5a27: $55
	ld   d, [hl]                                     ; $5a28: $56
	ld   l, c                                        ; $5a29: $69
	adc  b                                           ; $5a2a: $88
	sbc  e                                           ; $5a2b: $9b
	db   $dd                                         ; $5a2c: $dd
	db   $db                                         ; $5a2d: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a2e: $cf
	ld   [$daad], a                                  ; $5a2f: $ea $ad $da
	sbc  d                                           ; $5a32: $9a
	jp   c, $a869                                    ; $5a33: $da $69 $a8

	ld   d, l                                        ; $5a36: $55
	ld   b, e                                        ; $5a37: $43
	ld   [hl+], a                                    ; $5a38: $22
	inc  sp                                          ; $5a39: $33
	inc  h                                           ; $5a3a: $24
	inc  sp                                          ; $5a3b: $33
	ld   d, [hl]                                     ; $5a3c: $56
	ld   h, a                                        ; $5a3d: $67
	ld   l, b                                        ; $5a3e: $68
	xor  d                                           ; $5a3f: $aa
	cp   e                                           ; $5a40: $bb
	sbc  $ed                                         ; $5a41: $de $ed
	call $9ceb                                       ; $5a43: $cd $eb $9c
	db   $db                                         ; $5a46: $db
	adc  c                                           ; $5a47: $89
	cp   d                                           ; $5a48: $ba
	add  a                                           ; $5a49: $87
	ld   [hl], a                                     ; $5a4a: $77
	add  l                                           ; $5a4b: $85
	inc  de                                          ; $5a4c: $13
	ld   sp, $3511                                   ; $5a4d: $31 $11 $35
	ld   [hl+], a                                    ; $5a50: $22
	ld   b, h                                        ; $5a51: $44
	ld   h, [hl]                                     ; $5a52: $66
	ld   a, e                                        ; $5a53: $7b
	cp   e                                           ; $5a54: $bb
	call z, $dedd                                    ; $5a55: $cc $dd $de
	db   $fd                                         ; $5a58: $fd
	sbc  $ca                                         ; $5a59: $de $ca
	sbc  e                                           ; $5a5b: $9b
	cp   d                                           ; $5a5c: $ba
	adc  c                                           ; $5a5d: $89
	cp   d                                           ; $5a5e: $ba
	ld   d, l                                        ; $5a5f: $55
	ld   h, [hl]                                     ; $5a60: $66
	ld   [hl-], a                                    ; $5a61: $32
	ld   de, $1132                                   ; $5a62: $11 $32 $11
	dec  h                                           ; $5a65: $25
	ld   b, d                                        ; $5a66: $42
	ld   c, b                                        ; $5a67: $48
	cp   d                                           ; $5a68: $ba
	adc  h                                           ; $5a69: $8c
	rst  $38                                         ; $5a6a: $ff
	db   $ed                                         ; $5a6b: $ed
	rst  $38                                         ; $5a6c: $ff
	db   $ed                                         ; $5a6d: $ed
	call $99da                                       ; $5a6e: $cd $da $99
	cp   d                                           ; $5a71: $ba
	sub  a                                           ; $5a72: $97
	adc  c                                           ; $5a73: $89
	ld   h, l                                        ; $5a74: $65
	ld   b, e                                        ; $5a75: $43
	ld   de, $2111                                   ; $5a76: $11 $11 $21
	ld   hl, $4534                                   ; $5a79: $21 $34 $45
	ld   a, e                                        ; $5a7c: $7b
	cp   h                                           ; $5a7d: $bc
	cp   l                                           ; $5a7e: $bd
	rst  $38                                         ; $5a7f: $ff
	rst  $28                                         ; $5a80: $ef
	rst  $38                                         ; $5a81: $ff
	db   $fd                                         ; $5a82: $fd
	db   $dd                                         ; $5a83: $dd
	ret                                              ; $5a84: $c9


	sbc  d                                           ; $5a85: $9a
	sbc  b                                           ; $5a86: $98
	add  a                                           ; $5a87: $87
	ld   h, [hl]                                     ; $5a88: $66
	ld   d, h                                        ; $5a89: $54
	ld   [hl-], a                                    ; $5a8a: $32
	ld   de, $1211                                   ; $5a8b: $11 $11 $12
	ld   [hl+], a                                    ; $5a8e: $22
	inc  [hl]                                        ; $5a8f: $34
	ld   l, b                                        ; $5a90: $68
	sbc  d                                           ; $5a91: $9a
	adc  $ef                                         ; $5a92: $ce $ef
	rst  $38                                         ; $5a94: $ff
	cp   $ef                                         ; $5a95: $fe $ef
	db   $fd                                         ; $5a97: $fd
	cp   l                                           ; $5a98: $bd
	cp   d                                           ; $5a99: $ba
	xor  b                                           ; $5a9a: $a8
	sbc  c                                           ; $5a9b: $99
	halt                                             ; $5a9c: $76
	ld   d, h                                        ; $5a9d: $54
	ld   b, d                                        ; $5a9e: $42
	ld   de, $1111                                   ; $5a9f: $11 $11 $11
	ld   [de], a                                     ; $5aa2: $12
	ld   [hl+], a                                    ; $5aa3: $22
	ld   b, [hl]                                     ; $5aa4: $46
	sbc  d                                           ; $5aa5: $9a
	xor  l                                           ; $5aa6: $ad
	rst  $38                                         ; $5aa7: $ff
	rst  $38                                         ; $5aa8: $ff
	rst  $38                                         ; $5aa9: $ff
	rst  $38                                         ; $5aaa: $ff
	rst  $38                                         ; $5aab: $ff
	db   $ec                                         ; $5aac: $ec
	cp   e                                           ; $5aad: $bb
	xor  d                                           ; $5aae: $aa
	and  a                                           ; $5aaf: $a7
	adc  d                                           ; $5ab0: $8a
	ld   h, l                                        ; $5ab1: $65
	ld   d, e                                        ; $5ab2: $53
	ld   hl, $1111                                   ; $5ab3: $21 $11 $11
	ld   de, $4512                                   ; $5ab6: $11 $12 $45
	ld   l, b                                        ; $5ab9: $68
	call z, $ffce                                    ; $5aba: $cc $ce $ff
	rst  $38                                         ; $5abd: $ff
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	db   $dd                                         ; $5ac0: $dd
	call $9aca                                       ; $5ac1: $cd $ca $9a
	xor  b                                           ; $5ac4: $a8
	ld   h, [hl]                                     ; $5ac5: $66
	ld   [hl], l                                     ; $5ac6: $75
	ld   sp, $1111                                   ; $5ac7: $31 $11 $11
	ld   de, $1311                                   ; $5aca: $11 $11 $13
	ld   h, [hl]                                     ; $5acd: $66
	ld   a, d                                        ; $5ace: $7a
	rst  JumpTable                                         ; $5acf: $df
	xor  $ff                                         ; $5ad0: $ee $ff
	rst  $38                                         ; $5ad2: $ff
	rst  $38                                         ; $5ad3: $ff
	rst  $38                                         ; $5ad4: $ff
	call c, $aadc                                    ; $5ad5: $dc $dc $aa
	sbc  c                                           ; $5ad8: $99
	add  a                                           ; $5ad9: $87
	halt                                             ; $5ada: $76
	ld   b, d                                        ; $5adb: $42
	ld   [hl+], a                                    ; $5adc: $22
	ld   de, $1111                                   ; $5add: $11 $11 $11
	ld   de, $6735                                   ; $5ae0: $11 $35 $67
	xor  [hl]                                        ; $5ae3: $ae
	rst  $28                                         ; $5ae4: $ef
	rst  $38                                         ; $5ae5: $ff
	rst  $38                                         ; $5ae6: $ff
	rst  $38                                         ; $5ae7: $ff
	rst  $38                                         ; $5ae8: $ff
	db   $fd                                         ; $5ae9: $fd
	call $9adb                                       ; $5aea: $cd $db $9a
	cp   c                                           ; $5aed: $b9
	add  a                                           ; $5aee: $87
	halt                                             ; $5aef: $76
	ld   sp, $1111                                   ; $5af0: $31 $11 $11
	ld   de, $1111                                   ; $5af3: $11 $11 $11
	ld   d, a                                        ; $5af6: $57

jr_0bd_5af7:
	adc  e                                           ; $5af7: $8b
	rst  $28                                         ; $5af8: $ef
	rst  $38                                         ; $5af9: $ff
	rst  $38                                         ; $5afa: $ff
	rst  $38                                         ; $5afb: $ff
	cp   $ee                                         ; $5afc: $fe $ee
	sbc  $cc                                         ; $5afe: $de $cc
	cp   e                                           ; $5b00: $bb
	cp   c                                           ; $5b01: $b9
	sbc  d                                           ; $5b02: $9a
	sub  a                                           ; $5b03: $97
	ld   d, e                                        ; $5b04: $53
	ld   hl, $1111                                   ; $5b05: $21 $11 $11
	ld   de, $1411                                   ; $5b08: $11 $11 $14
	adc  b                                           ; $5b0b: $88
	xor  [hl]                                        ; $5b0c: $ae
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	rst  $38                                         ; $5b0f: $ff
	rst  $38                                         ; $5b10: $ff
	rst  $28                                         ; $5b11: $ef
	cp   $cd                                         ; $5b12: $fe $cd
	call $a9aa                                       ; $5b14: $cd $aa $a9
	xor  b                                           ; $5b17: $a8
	ld   h, [hl]                                     ; $5b18: $66
	ld   d, c                                        ; $5b19: $51
	ld   de, $1111                                   ; $5b1a: $11 $11 $11
	ld   de, $1611                                   ; $5b1d: $11 $11 $16
	sbc  b                                           ; $5b20: $98
	cp   a                                           ; $5b21: $bf
	rst  $38                                         ; $5b22: $ff
	rst  $38                                         ; $5b23: $ff
	rst  $38                                         ; $5b24: $ff
	rst  $38                                         ; $5b25: $ff
	rst  $38                                         ; $5b26: $ff
	db   $ec                                         ; $5b27: $ec
	call z, $9acb                                    ; $5b28: $cc $cb $9a
	sbc  d                                           ; $5b2b: $9a
	sub  a                                           ; $5b2c: $97
	ld   [hl], l                                     ; $5b2d: $75
	ld   hl, $1111                                   ; $5b2e: $21 $11 $11
	ld   de, $1111                                   ; $5b31: $11 $11 $11
	ld   b, a                                        ; $5b34: $47
	adc  e                                           ; $5b35: $8b
	rst  JumpTable                                         ; $5b36: $df
	rst  $38                                         ; $5b37: $ff
	rst  $38                                         ; $5b38: $ff
	rst  $38                                         ; $5b39: $ff
	rst  $38                                         ; $5b3a: $ff
	cp   $dd                                         ; $5b3b: $fe $dd
	call z, $a9da                                    ; $5b3d: $cc $da $a9
	sbc  c                                           ; $5b40: $99
	add  a                                           ; $5b41: $87
	ld   h, h                                        ; $5b42: $64
	ld   de, $1111                                   ; $5b43: $11 $11 $11
	ld   de, $1111                                   ; $5b46: $11 $11 $11
	jr   z, jr_0bd_5af7                              ; $5b49: $28 $ac

	sbc  $ff                                         ; $5b4b: $de $ff
	rst  $38                                         ; $5b4d: $ff
	rst  $38                                         ; $5b4e: $ff
	rst  $38                                         ; $5b4f: $ff
	sbc  $ef                                         ; $5b50: $de $ef
	jp   z, $b9cc                                    ; $5b52: $ca $cc $b9

	sbc  d                                           ; $5b55: $9a
	and  a                                           ; $5b56: $a7
	ld   d, e                                        ; $5b57: $53
	ld   de, $1111                                   ; $5b58: $11 $11 $11
	ld   de, $1211                                   ; $5b5b: $11 $11 $12
	ld   c, b                                        ; $5b5e: $48
	xor  d                                           ; $5b5f: $aa
	rst  $28                                         ; $5b60: $ef
	rst  $38                                         ; $5b61: $ff
	rst  $38                                         ; $5b62: $ff
	rst  $38                                         ; $5b63: $ff
	cp   $ed                                         ; $5b64: $fe $ed
	call c, $dcdd                                    ; $5b66: $dc $dd $dc
	cp   e                                           ; $5b69: $bb
	xor  c                                           ; $5b6a: $a9
	sub  a                                           ; $5b6b: $97
	ld   h, h                                        ; $5b6c: $64
	ld   hl, $1111                                   ; $5b6d: $21 $11 $11
	ld   de, $1111                                   ; $5b70: $11 $11 $11
	ld   [hl], $78                                   ; $5b73: $36 $78
	cp   h                                           ; $5b75: $bc
	rst  $38                                         ; $5b76: $ff
	rst  $38                                         ; $5b77: $ff
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	xor  $de                                         ; $5b7a: $ee $de
	db   $ed                                         ; $5b7c: $ed
	call z, $99ba                                    ; $5b7d: $cc $ba $99
	xor  c                                           ; $5b80: $a9
	ld   [hl], l                                     ; $5b81: $75
	ld   d, d                                        ; $5b82: $52
	ld   de, $1111                                   ; $5b83: $11 $11 $11
	ld   de, $1211                                   ; $5b86: $11 $11 $12
	ld   l, d                                        ; $5b89: $6a
	sbc  c                                           ; $5b8a: $99
	rst  JumpTable                                         ; $5b8b: $df
	cp   $df                                         ; $5b8c: $fe $df
	rst  $38                                         ; $5b8e: $ff
	db   $ed                                         ; $5b8f: $ed
	rst  $38                                         ; $5b90: $ff
	db   $ec                                         ; $5b91: $ec
	db   $dd                                         ; $5b92: $dd
	db   $db                                         ; $5b93: $db
	sbc  d                                           ; $5b94: $9a
	cp   c                                           ; $5b95: $b9
	ld   [hl], a                                     ; $5b96: $77
	ld   h, l                                        ; $5b97: $65
	ld   sp, $1111                                   ; $5b98: $31 $11 $11
	ld   de, $1111                                   ; $5b9b: $11 $11 $11
	inc  h                                           ; $5b9e: $24
	ld   l, b                                        ; $5b9f: $68
	sbc  e                                           ; $5ba0: $9b
	sbc  $ff                                         ; $5ba1: $de $ff
	rst  $38                                         ; $5ba3: $ff
	rst  $38                                         ; $5ba4: $ff
	rst  $38                                         ; $5ba5: $ff
	xor  $dd                                         ; $5ba6: $ee $dd
	call c, $b9ca                                    ; $5ba8: $dc $ca $b9
	sbc  c                                           ; $5bab: $99
	sbc  b                                           ; $5bac: $98
	ld   d, h                                        ; $5bad: $54
	ld   sp, $1311                                   ; $5bae: $31 $11 $13
	ld   hl, $1111                                   ; $5bb1: $21 $11 $11
	inc  d                                           ; $5bb4: $14
	ld   l, c                                        ; $5bb5: $69
	adc  c                                           ; $5bb6: $89
	sbc  $ec                                         ; $5bb7: $de $ec
	rst  JumpTable                                         ; $5bb9: $df
	rst  $38                                         ; $5bba: $ff
	xor  $fd                                         ; $5bbb: $ee $fd
	call z, $cacd                                    ; $5bbd: $cc $cd $ca
	xor  c                                           ; $5bc0: $a9
	xor  d                                           ; $5bc1: $aa
	sbc  b                                           ; $5bc2: $98
	ld   h, l                                        ; $5bc3: $65
	ld   b, e                                        ; $5bc4: $43
	ld   hl, $4223                                   ; $5bc5: $21 $23 $42
	ld   de, $1212                                   ; $5bc8: $11 $12 $12
	ld   b, l                                        ; $5bcb: $45
	ld   [hl], a                                     ; $5bcc: $77
	sbc  e                                           ; $5bcd: $9b
	call $efcd                                       ; $5bce: $cd $cd $ef
	sbc  $dd                                         ; $5bd1: $de $dd
	call c, $cbbb                                    ; $5bd3: $dc $bb $cb
	xor  d                                           ; $5bd6: $aa
	sbc  d                                           ; $5bd7: $9a
	sbc  c                                           ; $5bd8: $99
	add  a                                           ; $5bd9: $87
	halt                                             ; $5bda: $76
	ld   b, e                                        ; $5bdb: $43
	inc  sp                                          ; $5bdc: $33
	inc  sp                                          ; $5bdd: $33
	inc  [hl]                                        ; $5bde: $34
	ld   [hl-], a                                    ; $5bdf: $32
	ld   hl, $4633                                   ; $5be0: $21 $33 $46
	ld   a, b                                        ; $5be3: $78
	adc  e                                           ; $5be4: $8b
	call z, $debc                                    ; $5be5: $cc $bc $de
	call c, $bbdc                                    ; $5be8: $dc $dc $bb
	cp   d                                           ; $5beb: $ba
	xor  d                                           ; $5bec: $aa
	xor  d                                           ; $5bed: $aa
	cp   d                                           ; $5bee: $ba
	sbc  c                                           ; $5bef: $99
	sbc  c                                           ; $5bf0: $99
	halt                                             ; $5bf1: $76
	ld   h, [hl]                                     ; $5bf2: $66
	ld   d, l                                        ; $5bf3: $55
	ld   d, l                                        ; $5bf4: $55
	ld   d, l                                        ; $5bf5: $55
	ld   d, h                                        ; $5bf6: $54
	inc  sp                                          ; $5bf7: $33
	inc  [hl]                                        ; $5bf8: $34
	ld   b, h                                        ; $5bf9: $44
	ld   d, l                                        ; $5bfa: $55
	ld   [hl], a                                     ; $5bfb: $77
	adc  b                                           ; $5bfc: $88
	xor  e                                           ; $5bfd: $ab
	cp   e                                           ; $5bfe: $bb
	call z, $aabb                                    ; $5bff: $cc $bb $aa
	cp   d                                           ; $5c02: $ba
	cp   c                                           ; $5c03: $b9
	xor  d                                           ; $5c04: $aa
	sbc  c                                           ; $5c05: $99
	sbc  d                                           ; $5c06: $9a
	xor  c                                           ; $5c07: $a9
	sbc  c                                           ; $5c08: $99
	sbc  b                                           ; $5c09: $98
	halt                                             ; $5c0a: $76
	ld   h, [hl]                                     ; $5c0b: $66
	ld   h, [hl]                                     ; $5c0c: $66
	ld   d, [hl]                                     ; $5c0d: $56
	ld   h, l                                        ; $5c0e: $65
	ld   b, h                                        ; $5c0f: $44
	ld   b, h                                        ; $5c10: $44
	ld   b, h                                        ; $5c11: $44
	ld   d, [hl]                                     ; $5c12: $56
	halt                                             ; $5c13: $76
	ld   h, a                                        ; $5c14: $67
	sbc  c                                           ; $5c15: $99
	adc  c                                           ; $5c16: $89
	xor  e                                           ; $5c17: $ab
	xor  d                                           ; $5c18: $aa
	sbc  d                                           ; $5c19: $9a
	xor  c                                           ; $5c1a: $a9
	xor  d                                           ; $5c1b: $aa
	cp   e                                           ; $5c1c: $bb
	cp   d                                           ; $5c1d: $ba
	xor  e                                           ; $5c1e: $ab
	sbc  c                                           ; $5c1f: $99
	sbc  c                                           ; $5c20: $99
	sbc  b                                           ; $5c21: $98
	add  a                                           ; $5c22: $87
	ld   [hl], a                                     ; $5c23: $77
	ld   [hl], a                                     ; $5c24: $77
	halt                                             ; $5c25: $76
	ld   [hl], a                                     ; $5c26: $77
	halt                                             ; $5c27: $76
	ld   d, l                                        ; $5c28: $55
	ld   b, h                                        ; $5c29: $44
	ld   b, l                                        ; $5c2a: $45
	ld   h, [hl]                                     ; $5c2b: $66
	ld   h, [hl]                                     ; $5c2c: $66
	ld   [hl], a                                     ; $5c2d: $77
	ld   [hl], a                                     ; $5c2e: $77
	adc  c                                           ; $5c2f: $89
	xor  d                                           ; $5c30: $aa
	sbc  d                                           ; $5c31: $9a
	xor  c                                           ; $5c32: $a9
	adc  b                                           ; $5c33: $88
	sbc  d                                           ; $5c34: $9a
	sbc  d                                           ; $5c35: $9a
	cp   d                                           ; $5c36: $ba
	xor  c                                           ; $5c37: $a9
	sbc  c                                           ; $5c38: $99
	sbc  c                                           ; $5c39: $99
	sbc  c                                           ; $5c3a: $99
	adc  b                                           ; $5c3b: $88
	ld   [hl], a                                     ; $5c3c: $77
	halt                                             ; $5c3d: $76
	ld   h, [hl]                                     ; $5c3e: $66
	ld   h, [hl]                                     ; $5c3f: $66
	ld   h, [hl]                                     ; $5c40: $66
	ld   h, [hl]                                     ; $5c41: $66
	ld   h, [hl]                                     ; $5c42: $66
	ld   h, [hl]                                     ; $5c43: $66
	ld   h, [hl]                                     ; $5c44: $66
	ld   [hl], a                                     ; $5c45: $77
	ld   [hl], a                                     ; $5c46: $77
	ld   [hl], a                                     ; $5c47: $77
	ld   a, b                                        ; $5c48: $78
	adc  b                                           ; $5c49: $88
	adc  b                                           ; $5c4a: $88
	sbc  c                                           ; $5c4b: $99
	sbc  c                                           ; $5c4c: $99
	sbc  c                                           ; $5c4d: $99
	xor  c                                           ; $5c4e: $a9
	sbc  c                                           ; $5c4f: $99
	adc  c                                           ; $5c50: $89
	sbc  b                                           ; $5c51: $98
	sbc  c                                           ; $5c52: $99
	sbc  b                                           ; $5c53: $98
	sbc  c                                           ; $5c54: $99
	add  a                                           ; $5c55: $87
	ld   [hl], a                                     ; $5c56: $77
	ld   [hl], a                                     ; $5c57: $77
	ld   [hl], a                                     ; $5c58: $77
	ld   [hl], a                                     ; $5c59: $77
	ld   [hl], a                                     ; $5c5a: $77
	ld   h, a                                        ; $5c5b: $67
	ld   [hl], a                                     ; $5c5c: $77
	ld   [hl], a                                     ; $5c5d: $77
	adc  b                                           ; $5c5e: $88
	adc  b                                           ; $5c5f: $88
	ld   [hl], a                                     ; $5c60: $77
	adc  b                                           ; $5c61: $88
	adc  b                                           ; $5c62: $88
	adc  c                                           ; $5c63: $89
	sbc  c                                           ; $5c64: $99
	sbc  c                                           ; $5c65: $99
	sbc  b                                           ; $5c66: $98
	sbc  c                                           ; $5c67: $99
	sbc  c                                           ; $5c68: $99
	adc  c                                           ; $5c69: $89
	adc  b                                           ; $5c6a: $88
	adc  b                                           ; $5c6b: $88
	adc  b                                           ; $5c6c: $88
	adc  b                                           ; $5c6d: $88
	adc  b                                           ; $5c6e: $88
	adc  b                                           ; $5c6f: $88
	adc  b                                           ; $5c70: $88
	ld   a, b                                        ; $5c71: $78
	add  a                                           ; $5c72: $87
	ld   [hl], a                                     ; $5c73: $77
	adc  b                                           ; $5c74: $88
	adc  b                                           ; $5c75: $88
	adc  b                                           ; $5c76: $88
	adc  b                                           ; $5c77: $88
	adc  b                                           ; $5c78: $88
	adc  b                                           ; $5c79: $88
	adc  b                                           ; $5c7a: $88
	adc  b                                           ; $5c7b: $88
	adc  c                                           ; $5c7c: $89
	adc  b                                           ; $5c7d: $88
	adc  b                                           ; $5c7e: $88
	adc  b                                           ; $5c7f: $88
	adc  b                                           ; $5c80: $88
	sbc  b                                           ; $5c81: $98
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
	ld   de, $1111                                   ; $5ca8: $11 $11 $11
	ld   de, $1111                                   ; $5cab: $11 $11 $11
	nop                                              ; $5cae: $00
	ld   c, b                                        ; $5caf: $48
	ld   de, $1111                                   ; $5cb0: $11 $11 $11
	ld   de, $1111                                   ; $5cb3: $11 $11 $11
	ld   de, $1111                                   ; $5cb6: $11 $11 $11
	ld   de, $5413                                   ; $5cb9: $11 $13 $54
	ld   d, h                                        ; $5cbc: $54
	ld   d, h                                        ; $5cbd: $54
	ld   b, c                                        ; $5cbe: $41
	rra                                              ; $5cbf: $1f
	rst  $38                                         ; $5cc0: $ff
	pop  af                                          ; $5cc1: $f1
	ld   de, $1a11                                   ; $5cc2: $11 $11 $1a
	and  c                                           ; $5cc5: $a1
	ld   de, $df1c                                   ; $5cc6: $11 $1c $df
	adc  h                                           ; $5cc9: $8c
	rst  JumpTable                                         ; $5cca: $df
	add  c                                           ; $5ccb: $81
	ld   de, $1111                                   ; $5ccc: $11 $11 $11
	ld   de, $1111                                   ; $5ccf: $11 $11 $11
	ld   de, $1111                                   ; $5cd2: $11 $11 $11
	ld   de, $1111                                   ; $5cd5: $11 $11 $11
	ld   de, $5411                                   ; $5cd8: $11 $11 $54
	ld   b, h                                        ; $5cdb: $44
	xor  d                                           ; $5cdc: $aa
	ld   de, $5454                                   ; $5cdd: $11 $54 $54
	ld   h, a                                        ; $5ce0: $67
	ld   [hl], d                                     ; $5ce1: $72
	ld   de, $1111                                   ; $5ce2: $11 $11 $11
	ld   de, $1112                                   ; $5ce5: $11 $12 $11
	ld   [de], a                                     ; $5ce8: $12
	ld   de, $1111                                   ; $5ce9: $11 $11 $11
	ld   h, [hl]                                     ; $5cec: $66
	halt                                             ; $5ced: $76
	ld   a, d                                        ; $5cee: $7a
	ld   de, $8888                                   ; $5cef: $11 $88 $88
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
	sbc  c                                           ; $5cfd: $99
	sbc  b                                           ; $5cfe: $98
	adc  c                                           ; $5cff: $89
	sbc  c                                           ; $5d00: $99
	sbc  c                                           ; $5d01: $99
	sbc  b                                           ; $5d02: $98
	adc  b                                           ; $5d03: $88
	sbc  b                                           ; $5d04: $98
	adc  b                                           ; $5d05: $88
	add  a                                           ; $5d06: $87
	ld   [hl], a                                     ; $5d07: $77
	ld   [hl], a                                     ; $5d08: $77
	ld   h, [hl]                                     ; $5d09: $66
	ld   h, [hl]                                     ; $5d0a: $66
	ld   h, [hl]                                     ; $5d0b: $66
	ld   [hl], a                                     ; $5d0c: $77
	ld   [hl], a                                     ; $5d0d: $77
	ld   a, b                                        ; $5d0e: $78
	adc  b                                           ; $5d0f: $88
	adc  b                                           ; $5d10: $88
	sbc  c                                           ; $5d11: $99
	sbc  c                                           ; $5d12: $99
	sbc  b                                           ; $5d13: $98
	adc  c                                           ; $5d14: $89
	sbc  d                                           ; $5d15: $9a
	xor  c                                           ; $5d16: $a9
	xor  d                                           ; $5d17: $aa
	xor  d                                           ; $5d18: $aa
	xor  c                                           ; $5d19: $a9
	xor  c                                           ; $5d1a: $a9
	sbc  b                                           ; $5d1b: $98
	sbc  b                                           ; $5d1c: $98
	ld   [hl], a                                     ; $5d1d: $77
	ld   [hl], a                                     ; $5d1e: $77
	ld   h, [hl]                                     ; $5d1f: $66
	ld   h, [hl]                                     ; $5d20: $66
	ld   d, l                                        ; $5d21: $55
	ld   d, l                                        ; $5d22: $55
	ld   h, [hl]                                     ; $5d23: $66
	ld   h, [hl]                                     ; $5d24: $66
	ld   [hl], a                                     ; $5d25: $77
	ld   a, b                                        ; $5d26: $78
	adc  b                                           ; $5d27: $88
	sbc  c                                           ; $5d28: $99
	adc  b                                           ; $5d29: $88
	sbc  c                                           ; $5d2a: $99
	sbc  d                                           ; $5d2b: $9a
	sbc  d                                           ; $5d2c: $9a
	xor  e                                           ; $5d2d: $ab
	xor  e                                           ; $5d2e: $ab
	cp   e                                           ; $5d2f: $bb
	cp   d                                           ; $5d30: $ba
	cp   d                                           ; $5d31: $ba
	sbc  c                                           ; $5d32: $99
	adc  b                                           ; $5d33: $88
	ld   [hl], a                                     ; $5d34: $77
	halt                                             ; $5d35: $76
	ld   h, l                                        ; $5d36: $65
	ld   d, l                                        ; $5d37: $55
	ld   d, h                                        ; $5d38: $54
	ld   b, h                                        ; $5d39: $44
	ld   b, l                                        ; $5d3a: $45
	ld   d, [hl]                                     ; $5d3b: $56
	ld   h, a                                        ; $5d3c: $67
	ld   [hl], a                                     ; $5d3d: $77
	adc  c                                           ; $5d3e: $89
	sbc  b                                           ; $5d3f: $98
	sbc  c                                           ; $5d40: $99
	sbc  d                                           ; $5d41: $9a
	sbc  d                                           ; $5d42: $9a
	xor  d                                           ; $5d43: $aa
	cp   h                                           ; $5d44: $bc
	cp   h                                           ; $5d45: $bc
	call z, $babc                                    ; $5d46: $cc $bc $ba
	xor  c                                           ; $5d49: $a9
	sbc  c                                           ; $5d4a: $99
	add  a                                           ; $5d4b: $87
	ld   h, [hl]                                     ; $5d4c: $66
	ld   d, l                                        ; $5d4d: $55
	ld   b, h                                        ; $5d4e: $44
	inc  sp                                          ; $5d4f: $33
	inc  sp                                          ; $5d50: $33
	inc  sp                                          ; $5d51: $33
	ld   b, h                                        ; $5d52: $44
	ld   d, [hl]                                     ; $5d53: $56
	ld   h, a                                        ; $5d54: $67
	adc  c                                           ; $5d55: $89
	adc  c                                           ; $5d56: $89
	xor  c                                           ; $5d57: $a9
	xor  d                                           ; $5d58: $aa
	cp   d                                           ; $5d59: $ba
	cp   h                                           ; $5d5a: $bc
	call z, $ddcd                                    ; $5d5b: $cc $cd $dd
	db   $dd                                         ; $5d5e: $dd
	res  7, d                                        ; $5d5f: $cb $ba
	xor  b                                           ; $5d61: $a8
	add  a                                           ; $5d62: $87
	ld   h, l                                        ; $5d63: $65
	ld   d, h                                        ; $5d64: $54
	ld   b, e                                        ; $5d65: $43
	ld   [hl+], a                                    ; $5d66: $22
	ld   hl, $2312                                   ; $5d67: $21 $12 $23
	ld   b, h                                        ; $5d6a: $44
	ld   d, [hl]                                     ; $5d6b: $56
	ld   a, b                                        ; $5d6c: $78
	sbc  c                                           ; $5d6d: $99
	sbc  d                                           ; $5d6e: $9a
	cp   d                                           ; $5d6f: $ba
	cp   h                                           ; $5d70: $bc
	cp   h                                           ; $5d71: $bc
	db   $dd                                         ; $5d72: $dd
	db   $ed                                         ; $5d73: $ed
	xor  $ed                                         ; $5d74: $ee $ed
	call c, $a9cb                                    ; $5d76: $dc $cb $a9
	add  a                                           ; $5d79: $87
	ld   h, l                                        ; $5d7a: $65
	ld   d, h                                        ; $5d7b: $54
	inc  sp                                          ; $5d7c: $33
	ld   hl, $1111                                   ; $5d7d: $21 $11 $11
	ld   de, $3512                                   ; $5d80: $11 $12 $35
	ld   h, a                                        ; $5d83: $67
	adc  c                                           ; $5d84: $89
	sbc  d                                           ; $5d85: $9a
	xor  e                                           ; $5d86: $ab
	set  1, l                                        ; $5d87: $cb $cd
	call $ffde                                       ; $5d89: $cd $de $ff
	rst  $28                                         ; $5d8c: $ef
	db   $ed                                         ; $5d8d: $ed
	call c, $98ba                                    ; $5d8e: $dc $ba $98
	halt                                             ; $5d91: $76
	ld   d, h                                        ; $5d92: $54
	ld   b, e                                        ; $5d93: $43
	ld   [hl+], a                                    ; $5d94: $22
	ld   de, $1111                                   ; $5d95: $11 $11 $11
	ld   de, $4523                                   ; $5d98: $11 $23 $45
	ld   [hl], a                                     ; $5d9b: $77
	adc  c                                           ; $5d9c: $89
	xor  d                                           ; $5d9d: $aa
	cp   e                                           ; $5d9e: $bb
	call z, $dddd                                    ; $5d9f: $cc $dd $dd
	rst  $28                                         ; $5da2: $ef
	xor  $ef                                         ; $5da3: $ee $ef
	xor  $cb                                         ; $5da5: $ee $cb
	xor  c                                           ; $5da7: $a9
	adc  b                                           ; $5da8: $88
	halt                                             ; $5da9: $76
	ld   d, h                                        ; $5daa: $54
	inc  sp                                          ; $5dab: $33
	ld   [hl+], a                                    ; $5dac: $22
	ld   de, $1111                                   ; $5dad: $11 $11 $11
	ld   bc, $4523                                   ; $5db0: $01 $23 $45
	ld   a, b                                        ; $5db3: $78
	adc  c                                           ; $5db4: $89
	cp   e                                           ; $5db5: $bb
	call z, $ddcd                                    ; $5db6: $cc $cd $dd
	xor  $ef                                         ; $5db9: $ee $ef
	xor  $ef                                         ; $5dbb: $ee $ef
	xor  $cb                                         ; $5dbd: $ee $cb
	xor  c                                           ; $5dbf: $a9
	sbc  b                                           ; $5dc0: $98
	halt                                             ; $5dc1: $76
	ld   d, h                                        ; $5dc2: $54
	ld   b, e                                        ; $5dc3: $43
	ld   [hl-], a                                    ; $5dc4: $32
	ld   hl, $1111                                   ; $5dc5: $21 $11 $11
	ld   de, $4523                                   ; $5dc8: $11 $23 $45
	ld   h, a                                        ; $5dcb: $67
	adc  d                                           ; $5dcc: $8a
	cp   e                                           ; $5dcd: $bb
	call z, $dddc                                    ; $5dce: $cc $dc $dd
	db   $ed                                         ; $5dd1: $ed
	rst  $28                                         ; $5dd2: $ef
	rst  $28                                         ; $5dd3: $ef
	xor  $fd                                         ; $5dd4: $ee $fd
	call c, $99bb                                    ; $5dd6: $dc $bb $99
	halt                                             ; $5dd9: $76
	ld   h, l                                        ; $5dda: $65
	ld   b, h                                        ; $5ddb: $44
	inc  sp                                          ; $5ddc: $33
	ld   [hl+], a                                    ; $5ddd: $22
	ld   hl, $1111                                   ; $5dde: $21 $11 $11
	ld   [de], a                                     ; $5de1: $12
	inc  [hl]                                        ; $5de2: $34
	ld   d, [hl]                                     ; $5de3: $56
	ld   a, b                                        ; $5de4: $78
	sbc  d                                           ; $5de5: $9a
	cp   h                                           ; $5de6: $bc
	call z, $dedd                                    ; $5de7: $cc $dd $de
	sbc  $ef                                         ; $5dea: $de $ef
	xor  $fe                                         ; $5dec: $ee $fe
	db   $dd                                         ; $5dee: $dd
	res  7, d                                        ; $5def: $cb $ba
	add  a                                           ; $5df1: $87
	halt                                             ; $5df2: $76
	ld   d, h                                        ; $5df3: $54
	ld   b, e                                        ; $5df4: $43
	inc  sp                                          ; $5df5: $33
	ld   [hl-], a                                    ; $5df6: $32
	ld   [hl+], a                                    ; $5df7: $22
	ld   hl, $2211                                   ; $5df8: $21 $11 $22
	inc  [hl]                                        ; $5dfb: $34
	ld   d, [hl]                                     ; $5dfc: $56
	ld   a, b                                        ; $5dfd: $78
	sbc  d                                           ; $5dfe: $9a
	cp   h                                           ; $5dff: $bc
	call z, $dedd                                    ; $5e00: $cc $dd $de
	db   $dd                                         ; $5e03: $dd
	xor  $ef                                         ; $5e04: $ee $ef
	rst  $38                                         ; $5e06: $ff
	call c, $aacc                                    ; $5e07: $dc $cc $aa
	add  a                                           ; $5e0a: $87
	ld   [hl], l                                     ; $5e0b: $75
	ld   d, l                                        ; $5e0c: $55
	ld   b, h                                        ; $5e0d: $44
	ld   b, e                                        ; $5e0e: $43
	inc  hl                                          ; $5e0f: $23
	ld   [hl-], a                                    ; $5e10: $32
	ld   [hl+], a                                    ; $5e11: $22
	ld   [hl+], a                                    ; $5e12: $22
	ld   [hl+], a                                    ; $5e13: $22
	inc  hl                                          ; $5e14: $23
	ld   b, l                                        ; $5e15: $45
	ld   h, a                                        ; $5e16: $67
	adc  d                                           ; $5e17: $8a
	cp   e                                           ; $5e18: $bb
	cp   h                                           ; $5e19: $bc
	call $dddd                                       ; $5e1a: $cd $dd $dd
	db   $ed                                         ; $5e1d: $ed
	db   $ed                                         ; $5e1e: $ed
	db   $dd                                         ; $5e1f: $dd
	sbc  $cb                                         ; $5e20: $de $cb
	cp   e                                           ; $5e22: $bb
	sbc  b                                           ; $5e23: $98
	sub  [hl]                                        ; $5e24: $96
	ld   h, [hl]                                     ; $5e25: $66
	ld   d, h                                        ; $5e26: $54
	ld   b, e                                        ; $5e27: $43
	inc  h                                           ; $5e28: $24
	ld   [hl-], a                                    ; $5e29: $32
	inc  [hl]                                        ; $5e2a: $34
	ld   [hl+], a                                    ; $5e2b: $22
	ld   [hl-], a                                    ; $5e2c: $32
	inc  hl                                          ; $5e2d: $23
	inc  sp                                          ; $5e2e: $33
	ld   d, l                                        ; $5e2f: $55
	ld   l, b                                        ; $5e30: $68
	adc  d                                           ; $5e31: $8a
	xor  e                                           ; $5e32: $ab
	cp   h                                           ; $5e33: $bc
	db   $dd                                         ; $5e34: $dd
	db   $ed                                         ; $5e35: $ed
	db   $dd                                         ; $5e36: $dd
	call $dcdc                                       ; $5e37: $cd $dc $dc
	call $a9cb                                       ; $5e3a: $cd $cb $a9
	sub  a                                           ; $5e3d: $97
	ld   [hl], a                                     ; $5e3e: $77
	ld   h, l                                        ; $5e3f: $65
	ld   d, h                                        ; $5e40: $54
	inc  [hl]                                        ; $5e41: $34
	ld   b, e                                        ; $5e42: $43
	inc  sp                                          ; $5e43: $33
	inc  [hl]                                        ; $5e44: $34
	inc  sp                                          ; $5e45: $33
	inc  sp                                          ; $5e46: $33
	inc  hl                                          ; $5e47: $23
	ld   b, h                                        ; $5e48: $44
	ld   b, l                                        ; $5e49: $45
	ld   h, a                                        ; $5e4a: $67
	adc  d                                           ; $5e4b: $8a
	xor  e                                           ; $5e4c: $ab
	call z, $ecdd                                    ; $5e4d: $cc $dd $ec
	call $dccc                                       ; $5e50: $cd $cc $dc
	call $cacc                                       ; $5e53: $cd $cc $ca
	xor  d                                           ; $5e56: $aa
	sbc  b                                           ; $5e57: $98
	ld   [hl], a                                     ; $5e58: $77
	ld   h, l                                        ; $5e59: $65
	ld   h, h                                        ; $5e5a: $64
	ld   d, h                                        ; $5e5b: $54
	inc  [hl]                                        ; $5e5c: $34
	inc  [hl]                                        ; $5e5d: $34
	inc  sp                                          ; $5e5e: $33
	ld   d, d                                        ; $5e5f: $52
	dec  [hl]                                        ; $5e60: $35
	inc  sp                                          ; $5e61: $33
	inc  [hl]                                        ; $5e62: $34
	dec  [hl]                                        ; $5e63: $35
	halt                                             ; $5e64: $76
	sbc  d                                           ; $5e65: $9a
	xor  e                                           ; $5e66: $ab
	db   $ed                                         ; $5e67: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e68: $cf
	db   $eb                                         ; $5e69: $eb
	db   $ec                                         ; $5e6a: $ec
	set  1, e                                        ; $5e6b: $cb $cb
	cp   h                                           ; $5e6d: $bc
	xor  e                                           ; $5e6e: $ab
	cp   c                                           ; $5e6f: $b9
	ret  z                                           ; $5e70: $c8

	sbc  d                                           ; $5e71: $9a
	ld   e, c                                        ; $5e72: $59
	ld   d, a                                        ; $5e73: $57
	ld   d, h                                        ; $5e74: $54
	ld   [hl], c                                     ; $5e75: $71
	ld   d, h                                        ; $5e76: $54
	inc  h                                           ; $5e77: $24
	inc  d                                           ; $5e78: $14
	inc  hl                                          ; $5e79: $23
	ld   sp, $2451                                   ; $5e7a: $31 $51 $24
	ld   b, [hl]                                     ; $5e7d: $46
	ld   e, c                                        ; $5e7e: $59
	adc  d                                           ; $5e7f: $8a
	jp   z, $edee                                    ; $5e80: $ca $ee $ed

	rst  $28                                         ; $5e83: $ef
	db   $ed                                         ; $5e84: $ed
	cp   $dd                                         ; $5e85: $fe $dd
	db   $ec                                         ; $5e87: $ec
	res  5, h                                        ; $5e88: $cb $ac
	adc  b                                           ; $5e8a: $88
	add  [hl]                                        ; $5e8b: $86
	ld   [hl], l                                     ; $5e8c: $75
	ld   b, e                                        ; $5e8d: $43
	ld   [hl], c                                     ; $5e8e: $71
	ld   d, $11                                      ; $5e8f: $16 $11
	inc  de                                          ; $5e91: $13
	ld   hl, $3221                                   ; $5e92: $21 $21 $32
	inc  d                                           ; $5e95: $14
	ld   d, [hl]                                     ; $5e96: $56
	ld   e, b                                        ; $5e97: $58
	call z, $ffdd                                    ; $5e98: $cc $dd $ff
	rst  $38                                         ; $5e9b: $ff
	rst  $38                                         ; $5e9c: $ff
	rst  $28                                         ; $5e9d: $ef
	xor  $ec                                         ; $5e9e: $ee $ec
	db   $db                                         ; $5ea0: $db
	res  1, d                                        ; $5ea1: $cb $8a
	add  [hl]                                        ; $5ea3: $86
	ld   h, [hl]                                     ; $5ea4: $66
	ld   b, h                                        ; $5ea5: $44
	ld   sp, $1112                                   ; $5ea6: $31 $12 $11
	ld   de, $1111                                   ; $5ea9: $11 $11 $11
	ld   de, $7513                                   ; $5eac: $11 $13 $75
	ld   a, d                                        ; $5eaf: $7a
	rst  $28                                         ; $5eb0: $ef
	rst  $38                                         ; $5eb1: $ff
	rst  $38                                         ; $5eb2: $ff
	rst  $38                                         ; $5eb3: $ff
	rst  $38                                         ; $5eb4: $ff
	rst  $38                                         ; $5eb5: $ff
	cp   $de                                         ; $5eb6: $fe $de
	xor  d                                           ; $5eb8: $aa
	rst  ToBoot                                         ; $5eb9: $c7
	ld   l, b                                        ; $5eba: $68
	sub  e                                           ; $5ebb: $93
	jr   z, jr_0bd_5ecf                              ; $5ebc: $28 $11

	ld   sp, $1111                                   ; $5ebe: $31 $11 $11
	ld   de, $1111                                   ; $5ec1: $11 $11 $11
	ld   [de], a                                     ; $5ec4: $12
	ld   h, a                                        ; $5ec5: $67
	ld   a, l                                        ; $5ec6: $7d
	rst  $38                                         ; $5ec7: $ff
	rst  $38                                         ; $5ec8: $ff
	rst  $38                                         ; $5ec9: $ff
	rst  $38                                         ; $5eca: $ff
	rst  $38                                         ; $5ecb: $ff
	rst  $38                                         ; $5ecc: $ff
	rst  $38                                         ; $5ecd: $ff
	db   $db                                         ; $5ece: $db

jr_0bd_5ecf:
	xor  e                                           ; $5ecf: $ab
	add  l                                           ; $5ed0: $85
	add  h                                           ; $5ed1: $84
	ld   b, e                                        ; $5ed2: $43
	ld   de, $1111                                   ; $5ed3: $11 $11 $11
	ld   de, $1111                                   ; $5ed6: $11 $11 $11
	ld   de, $6611                                   ; $5ed9: $11 $11 $66
	xor  e                                           ; $5edc: $ab
	rst  $38                                         ; $5edd: $ff
	rst  $38                                         ; $5ede: $ff
	rst  $38                                         ; $5edf: $ff
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	rst  $38                                         ; $5ee3: $ff
	db   $fd                                         ; $5ee4: $fd
	ld   e, l                                        ; $5ee5: $5d
	add  c                                           ; $5ee6: $81
	ld   b, e                                        ; $5ee7: $43
	ld   sp, $1111                                   ; $5ee8: $31 $11 $11
	ld   de, $1111                                   ; $5eeb: $11 $11 $11
	ld   de, $1911                                   ; $5eee: $11 $11 $19
	ld   d, a                                        ; $5ef1: $57
	rst  $38                                         ; $5ef2: $ff
	rst  $38                                         ; $5ef3: $ff
	rst  $38                                         ; $5ef4: $ff
	rst  $38                                         ; $5ef5: $ff
	rst  $38                                         ; $5ef6: $ff
	rst  $38                                         ; $5ef7: $ff
	rst  $38                                         ; $5ef8: $ff
	ld   a, [$9799]                                  ; $5ef9: $fa $99 $97
	inc  d                                           ; $5efc: $14
	ld   de, $1111                                   ; $5efd: $11 $11 $11
	ld   de, $1112                                   ; $5f00: $11 $12 $11
	inc  d                                           ; $5f03: $14
	ld   de, $5b35                                   ; $5f04: $11 $35 $5b
	cp   a                                           ; $5f07: $bf
	rst  $38                                         ; $5f08: $ff
	rst  $38                                         ; $5f09: $ff
	rst  $38                                         ; $5f0a: $ff
	rst  $38                                         ; $5f0b: $ff
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	db   $eb                                         ; $5f0e: $eb
	and  d                                           ; $5f0f: $a2
	add  a                                           ; $5f10: $87
	inc  de                                          ; $5f11: $13
	ld   hl, $1111                                   ; $5f12: $21 $11 $11
	ld   de, $1111                                   ; $5f15: $11 $11 $11
	inc  d                                           ; $5f18: $14
	ld   de, $3a5a                                   ; $5f19: $11 $5a $3a
	rst  $38                                         ; $5f1c: $ff
	rst  $38                                         ; $5f1d: $ff
	rst  $38                                         ; $5f1e: $ff
	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	rst  $38                                         ; $5f22: $ff
	add  $a3                                         ; $5f23: $c6 $a3
	ld   b, c                                        ; $5f25: $41
	ld   de, $1111                                   ; $5f26: $11 $11 $11
	ld   de, $1111                                   ; $5f29: $11 $11 $11
	ld   de, $1141                                   ; $5f2c: $11 $41 $11
	sub  a                                           ; $5f2f: $97
	ld   e, l                                        ; $5f30: $5d
	rst  $38                                         ; $5f31: $ff
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	rst  $38                                         ; $5f35: $ff
	rst  $38                                         ; $5f36: $ff
	rst  $38                                         ; $5f37: $ff
	ld   h, a                                        ; $5f38: $67
	ld   h, d                                        ; $5f39: $62
	ld   de, $1111                                   ; $5f3a: $11 $11 $11
	ld   de, $1111                                   ; $5f3d: $11 $11 $11
	ld   de, $3111                                   ; $5f40: $11 $11 $31
	dec  d                                           ; $5f43: $15
	and  [hl]                                        ; $5f44: $a6
	cp   a                                           ; $5f45: $bf
	rst  $38                                         ; $5f46: $ff
	rst  $38                                         ; $5f47: $ff
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	rst  $38                                         ; $5f4a: $ff
	rst  $38                                         ; $5f4b: $ff
	ei                                               ; $5f4c: $fb
	add  e                                           ; $5f4d: $83
	ld   b, h                                        ; $5f4e: $44
	ld   de, $1121                                   ; $5f4f: $11 $21 $11
	ld   de, $1111                                   ; $5f52: $11 $11 $11
	ld   de, $1118                                   ; $5f55: $11 $18 $11
	ld   [hl], a                                     ; $5f58: $77
	dec  sp                                          ; $5f59: $3b
	rst  $38                                         ; $5f5a: $ff
	rst  $38                                         ; $5f5b: $ff
	rst  $38                                         ; $5f5c: $ff
	rst  $38                                         ; $5f5d: $ff
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	sbc  c                                           ; $5f61: $99
	ld   h, c                                        ; $5f62: $61
	ld   hl, $1111                                   ; $5f63: $21 $11 $11
	ld   de, $1111                                   ; $5f66: $11 $11 $11
	ld   de, $5111                                   ; $5f69: $11 $11 $51
	ld   de, $5f66                                   ; $5f6c: $11 $66 $5f
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	db   $fd                                         ; $5f75: $fd
	adc  c                                           ; $5f76: $89
	ld   b, c                                        ; $5f77: $41
	ld   de, $1111                                   ; $5f78: $11 $11 $11
	ld   de, $1111                                   ; $5f7b: $11 $11 $11
	ld   de, $6111                                   ; $5f7e: $11 $11 $61
	ld   d, $62                                      ; $5f81: $16 $62
	cp   a                                           ; $5f83: $bf
	rst  $38                                         ; $5f84: $ff
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	ld   sp, hl                                      ; $5f8a: $f9
	add  $11                                         ; $5f8b: $c6 $11
	ld   de, $1111                                   ; $5f8d: $11 $11 $11
	ld   de, $1111                                   ; $5f90: $11 $11 $11
	ld   hl, $1116                                   ; $5f93: $21 $16 $11
	ld   d, $55                                      ; $5f96: $16 $55
	rst  $38                                         ; $5f98: $ff
	rst  $38                                         ; $5f99: $ff
	rst  $38                                         ; $5f9a: $ff
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	rst  $38                                         ; $5f9d: $ff
	rst  $38                                         ; $5f9e: $ff
	jp   z, $21b1                                    ; $5f9f: $ca $b1 $21

	ld   de, $1111                                   ; $5fa2: $11 $11 $11
	ld   de, $1111                                   ; $5fa5: $11 $11 $11
	ld   de, $1119                                   ; $5fa8: $11 $19 $11
	ld   d, l                                        ; $5fab: $55
	ld   e, b                                        ; $5fac: $58
	rst  $38                                         ; $5fad: $ff
	rst  $38                                         ; $5fae: $ff
	rst  $38                                         ; $5faf: $ff
	rst  $38                                         ; $5fb0: $ff
	rst  $38                                         ; $5fb1: $ff
	rst  $38                                         ; $5fb2: $ff
	rst  $38                                         ; $5fb3: $ff
	cp   h                                           ; $5fb4: $bc
	ld   d, e                                        ; $5fb5: $53
	ld   b, c                                        ; $5fb6: $41
	ld   de, $1111                                   ; $5fb7: $11 $11 $11
	ld   de, $1111                                   ; $5fba: $11 $11 $11
	ld   de, $1116                                   ; $5fbd: $11 $16 $11
	daa                                              ; $5fc0: $27
	ld   h, a                                        ; $5fc1: $67
	rst  $38                                         ; $5fc2: $ff
	rst  $38                                         ; $5fc3: $ff
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	jp   z, $3164                                    ; $5fc9: $ca $64 $31

	ld   de, $1111                                   ; $5fcc: $11 $11 $11
	ld   de, $1111                                   ; $5fcf: $11 $11 $11
	ld   hl, $2111                                   ; $5fd2: $21 $11 $21
	inc  de                                          ; $5fd5: $13
	ld   b, a                                        ; $5fd6: $47
	cp   [hl]                                        ; $5fd7: $be
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	rst  $38                                         ; $5fda: $ff
	rst  $38                                         ; $5fdb: $ff
	rst  $38                                         ; $5fdc: $ff
	rst  $38                                         ; $5fdd: $ff
	db   $fc                                         ; $5fde: $fc
	or   l                                           ; $5fdf: $b5
	ld   h, e                                        ; $5fe0: $63
	ld   de, $1111                                   ; $5fe1: $11 $11 $11
	ld   de, $1111                                   ; $5fe4: $11 $11 $11
	ld   [de], a                                     ; $5fe7: $12
	ld   de, $1112                                   ; $5fe8: $11 $12 $11
	ld   [hl], $69                                   ; $5feb: $36 $69
	rst  $38                                         ; $5fed: $ff
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	rst  $38                                         ; $5ff0: $ff
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	rst  $38                                         ; $5ff3: $ff
	cp   c                                           ; $5ff4: $b9
	halt                                             ; $5ff5: $76
	ld   d, c                                        ; $5ff6: $51
	inc  de                                          ; $5ff7: $13
	ld   de, $1111                                   ; $5ff8: $11 $11 $11
	ld   de, $1311                                   ; $5ffb: $11 $11 $13
	ld   de, $1112                                   ; $5ffe: $11 $12 $11
	ld   b, [hl]                                     ; $6001: $46
	ld   l, d                                        ; $6002: $6a
	rst  JumpTable                                         ; $6003: $df
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	rst  $38                                         ; $6006: $ff
	rst  $38                                         ; $6007: $ff
	rst  $38                                         ; $6008: $ff
	cp   $99                                         ; $6009: $fe $99
	sub  [hl]                                        ; $600b: $96
	halt                                             ; $600c: $76
	ld   [hl], $41                                   ; $600d: $36 $41
	dec  [hl]                                        ; $600f: $35
	ld   de, $1133                                   ; $6010: $11 $33 $11
	ld   de, $1133                                   ; $6013: $11 $33 $11
	ld   [hl], c                                     ; $6016: $71
	dec  d                                           ; $6017: $15
	ld   [hl], h                                     ; $6018: $74
	ld   l, h                                        ; $6019: $6c
	sbc  $ff                                         ; $601a: $de $ff
	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	db   $ed                                         ; $601f: $ed
	db   $ec                                         ; $6020: $ec
	sbc  b                                           ; $6021: $98
	adc  b                                           ; $6022: $88
	ld   [hl], l                                     ; $6023: $75
	ld   l, b                                        ; $6024: $68
	ld   h, l                                        ; $6025: $65
	ld   h, a                                        ; $6026: $67
	ld   d, h                                        ; $6027: $54
	ld   d, l                                        ; $6028: $55
	ld   d, l                                        ; $6029: $55
	ld   d, e                                        ; $602a: $53
	ld   d, [hl]                                     ; $602b: $56
	ld   b, e                                        ; $602c: $43
	ld   b, l                                        ; $602d: $45
	ld   [hl+], a                                    ; $602e: $22
	ld   b, h                                        ; $602f: $44
	ld   b, l                                        ; $6030: $45
	ld   l, b                                        ; $6031: $68
	xor  e                                           ; $6032: $ab
	cp   l                                           ; $6033: $bd
	db   $ed                                         ; $6034: $ed
	adc  $db                                         ; $6035: $ce $db
	cp   e                                           ; $6037: $bb
	xor  d                                           ; $6038: $aa
	xor  b                                           ; $6039: $a8
	xor  d                                           ; $603a: $aa
	adc  d                                           ; $603b: $8a
	xor  d                                           ; $603c: $aa
	xor  e                                           ; $603d: $ab
	cp   b                                           ; $603e: $b8
	sbc  d                                           ; $603f: $9a
	adc  b                                           ; $6040: $88
	sbc  b                                           ; $6041: $98
	ld   [hl], a                                     ; $6042: $77
	ld   h, l                                        ; $6043: $65
	ld   h, [hl]                                     ; $6044: $66
	ld   b, h                                        ; $6045: $44
	ld   b, h                                        ; $6046: $44
	ld   [hl+], a                                    ; $6047: $22
	inc  sp                                          ; $6048: $33
	ld   [hl-], a                                    ; $6049: $32
	dec  [hl]                                        ; $604a: $35
	ld   h, [hl]                                     ; $604b: $66
	ld   a, c                                        ; $604c: $79
	sbc  c                                           ; $604d: $99
	xor  d                                           ; $604e: $aa
	xor  e                                           ; $604f: $ab
	cp   d                                           ; $6050: $ba
	cp   d                                           ; $6051: $ba
	cp   e                                           ; $6052: $bb
	set  1, h                                        ; $6053: $cb $cc
	call $bccc                                       ; $6055: $cd $cc $bc
	cp   e                                           ; $6058: $bb
	xor  b                                           ; $6059: $a8
	sbc  b                                           ; $605a: $98
	ld   [hl], a                                     ; $605b: $77
	ld   h, [hl]                                     ; $605c: $66
	ld   d, l                                        ; $605d: $55
	ld   b, h                                        ; $605e: $44
	ld   b, h                                        ; $605f: $44
	ld   b, h                                        ; $6060: $44
	ld   b, e                                        ; $6061: $43
	ld   b, h                                        ; $6062: $44
	ld   b, h                                        ; $6063: $44
	ld   b, l                                        ; $6064: $45
	ld   d, [hl]                                     ; $6065: $56
	ld   [hl], a                                     ; $6066: $77
	adc  b                                           ; $6067: $88
	sbc  c                                           ; $6068: $99
	xor  e                                           ; $6069: $ab
	cp   h                                           ; $606a: $bc
	call z, $cbcb                                    ; $606b: $cc $cb $cb
	res  5, d                                        ; $606e: $cb $aa
	cp   d                                           ; $6070: $ba
	sbc  c                                           ; $6071: $99
	sbc  b                                           ; $6072: $98
	add  a                                           ; $6073: $87
	ld   [hl], a                                     ; $6074: $77
	ld   h, [hl]                                     ; $6075: $66
	ld   h, [hl]                                     ; $6076: $66
	ld   h, [hl]                                     ; $6077: $66
	ld   h, [hl]                                     ; $6078: $66
	ld   h, [hl]                                     ; $6079: $66
	ld   h, [hl]                                     ; $607a: $66
	ld   h, [hl]                                     ; $607b: $66
	ld   [hl], a                                     ; $607c: $77
	ld   [hl], a                                     ; $607d: $77
	ld   a, b                                        ; $607e: $78
	adc  c                                           ; $607f: $89
	sbc  b                                           ; $6080: $98
	adc  c                                           ; $6081: $89
	sbc  c                                           ; $6082: $99
	sbc  c                                           ; $6083: $99
	xor  c                                           ; $6084: $a9
	sbc  c                                           ; $6085: $99
	sbc  c                                           ; $6086: $99
	adc  b                                           ; $6087: $88
	sbc  b                                           ; $6088: $98
	add  a                                           ; $6089: $87
	add  a                                           ; $608a: $87
	ld   [hl], a                                     ; $608b: $77
	ld   [hl], a                                     ; $608c: $77
	ld   [hl], a                                     ; $608d: $77
	ld   [hl], a                                     ; $608e: $77
	ld   [hl], a                                     ; $608f: $77
	ld   [hl], a                                     ; $6090: $77
	ld   a, b                                        ; $6091: $78
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	sbc  c                                           ; $6094: $99
	sbc  b                                           ; $6095: $98
	sbc  c                                           ; $6096: $99
	sbc  c                                           ; $6097: $99
	sbc  c                                           ; $6098: $99
	sbc  c                                           ; $6099: $99
	sbc  c                                           ; $609a: $99
	sbc  b                                           ; $609b: $98
	adc  b                                           ; $609c: $88
	sbc  b                                           ; $609d: $98
	sbc  b                                           ; $609e: $98
	adc  b                                           ; $609f: $88
	add  a                                           ; $60a0: $87
	ld   [hl], a                                     ; $60a1: $77
	ld   [hl], a                                     ; $60a2: $77
	ld   [hl], a                                     ; $60a3: $77
	ld   [hl], a                                     ; $60a4: $77
	ld   [hl], a                                     ; $60a5: $77
	ld   [hl], a                                     ; $60a6: $77
	add  a                                           ; $60a7: $87
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  c                                           ; $60aa: $89
	sbc  c                                           ; $60ab: $99
	sbc  c                                           ; $60ac: $99
	adc  b                                           ; $60ad: $88
	sbc  b                                           ; $60ae: $98
	adc  c                                           ; $60af: $89
	sbc  b                                           ; $60b0: $98
	sbc  c                                           ; $60b1: $99
	sbc  c                                           ; $60b2: $99
	sbc  c                                           ; $60b3: $99
	sbc  b                                           ; $60b4: $98
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
	sbc  c                                           ; $60c4: $99
	sbc  b                                           ; $60c5: $98
	sbc  c                                           ; $60c6: $99
	sbc  b                                           ; $60c7: $98
	sbc  c                                           ; $60c8: $99
	sbc  b                                           ; $60c9: $98
	sbc  c                                           ; $60ca: $99
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	sbc  c                                           ; $60ce: $99
	adc  c                                           ; $60cf: $89
	sbc  c                                           ; $60d0: $99
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	ld   [hl], a                                     ; $60d7: $77
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  c                                           ; $60e0: $89
	adc  b                                           ; $60e1: $88
	adc  c                                           ; $60e2: $89
	sbc  c                                           ; $60e3: $99
	sbc  c                                           ; $60e4: $99
	sbc  c                                           ; $60e5: $99
	sbc  c                                           ; $60e6: $99
	adc  c                                           ; $60e7: $89
	sbc  c                                           ; $60e8: $99
	sbc  c                                           ; $60e9: $99
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	add  a                                           ; $60ed: $87
	adc  b                                           ; $60ee: $88
	ld   [hl], a                                     ; $60ef: $77
	ld   [hl], a                                     ; $60f0: $77
	ld   a, b                                        ; $60f1: $78
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  c                                           ; $60f9: $89
	sbc  c                                           ; $60fa: $99
	sbc  c                                           ; $60fb: $99
	sbc  c                                           ; $60fc: $99
	sbc  c                                           ; $60fd: $99
	sbc  c                                           ; $60fe: $99
	sbc  c                                           ; $60ff: $99
	sbc  b                                           ; $6100: $98
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
	adc  c                                           ; $6112: $89
	sbc  c                                           ; $6113: $99
	sbc  b                                           ; $6114: $98
	sbc  b                                           ; $6115: $98
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
	adc  c                                           ; $6263: $89
	adc  b                                           ; $6264: $88
	adc  b                                           ; $6265: $88
	adc  b                                           ; $6266: $88
	adc  b                                           ; $6267: $88
	sbc  b                                           ; $6268: $98
	ld   a, b                                        ; $6269: $78
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

Jump_0bd_6297:
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
	add  a                                           ; $62e2: $87
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	ld   a, b                                        ; $62e5: $78
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
	add  a                                           ; $62f0: $87
	ld   a, b                                        ; $62f1: $78
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	add  a                                           ; $62f5: $87
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	adc  b                                           ; $62f9: $88
	adc  b                                           ; $62fa: $88
	adc  b                                           ; $62fb: $88
	adc  b                                           ; $62fc: $88
	add  a                                           ; $62fd: $87
	add  a                                           ; $62fe: $87
	adc  c                                           ; $62ff: $89
	adc  b                                           ; $6300: $88
	sbc  b                                           ; $6301: $98
	ld   [hl], a                                     ; $6302: $77
	ld   a, b                                        ; $6303: $78
	add  a                                           ; $6304: $87
	sbc  b                                           ; $6305: $98
	adc  b                                           ; $6306: $88
	adc  b                                           ; $6307: $88
	sbc  b                                           ; $6308: $98
	adc  b                                           ; $6309: $88
	ld   a, c                                        ; $630a: $79
	sbc  b                                           ; $630b: $98
	ld   [hl], a                                     ; $630c: $77
	ld   [hl], a                                     ; $630d: $77
	ld   [hl], a                                     ; $630e: $77
	adc  b                                           ; $630f: $88
	sbc  b                                           ; $6310: $98
	adc  b                                           ; $6311: $88
	adc  b                                           ; $6312: $88
	adc  c                                           ; $6313: $89
	adc  c                                           ; $6314: $89
	sub  a                                           ; $6315: $97
	ld   a, b                                        ; $6316: $78
	ld   a, b                                        ; $6317: $78
	add  a                                           ; $6318: $87
	adc  b                                           ; $6319: $88
	sbc  c                                           ; $631a: $99
	sbc  c                                           ; $631b: $99
	sbc  b                                           ; $631c: $98
	adc  b                                           ; $631d: $88
	ld   [hl], a                                     ; $631e: $77
	adc  b                                           ; $631f: $88
	ld   a, b                                        ; $6320: $78
	adc  b                                           ; $6321: $88
	ld   [hl], a                                     ; $6322: $77
	adc  b                                           ; $6323: $88
	ld   a, b                                        ; $6324: $78
	ld   a, b                                        ; $6325: $78
	adc  b                                           ; $6326: $88
	ld   a, b                                        ; $6327: $78
	sbc  b                                           ; $6328: $98
	adc  b                                           ; $6329: $88
	sbc  c                                           ; $632a: $99
	sbc  c                                           ; $632b: $99
	sbc  d                                           ; $632c: $9a
	add  a                                           ; $632d: $87
	ld   a, b                                        ; $632e: $78
	add  a                                           ; $632f: $87
	ld   [hl], a                                     ; $6330: $77
	ld   [hl], a                                     ; $6331: $77
	add  [hl]                                        ; $6332: $86
	ld   a, b                                        ; $6333: $78
	ld   a, b                                        ; $6334: $78
	ld   a, b                                        ; $6335: $78
	sbc  b                                           ; $6336: $98
	add  a                                           ; $6337: $87
	sbc  b                                           ; $6338: $98
	adc  c                                           ; $6339: $89
	adc  b                                           ; $633a: $88
	sbc  b                                           ; $633b: $98
	adc  b                                           ; $633c: $88
	adc  b                                           ; $633d: $88
	sbc  b                                           ; $633e: $98
	ld   [hl], a                                     ; $633f: $77
	adc  b                                           ; $6340: $88
	ld   [hl], a                                     ; $6341: $77
	adc  c                                           ; $6342: $89
	adc  b                                           ; $6343: $88
	ld   a, b                                        ; $6344: $78
	sbc  b                                           ; $6345: $98
	adc  b                                           ; $6346: $88
	sub  a                                           ; $6347: $97
	adc  b                                           ; $6348: $88
	adc  c                                           ; $6349: $89
	sbc  b                                           ; $634a: $98
	adc  b                                           ; $634b: $88
	add  a                                           ; $634c: $87
	ld   a, b                                        ; $634d: $78
	adc  c                                           ; $634e: $89
	sub  a                                           ; $634f: $97
	sbc  b                                           ; $6350: $98
	ld   [hl], a                                     ; $6351: $77
	adc  c                                           ; $6352: $89
	adc  c                                           ; $6353: $89
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	ld   a, b                                        ; $6357: $78
	sbc  b                                           ; $6358: $98
	ld   a, b                                        ; $6359: $78
	adc  c                                           ; $635a: $89
	ld   a, c                                        ; $635b: $79
	sbc  c                                           ; $635c: $99
	sbc  b                                           ; $635d: $98
	adc  c                                           ; $635e: $89
	adc  b                                           ; $635f: $88
	ld   a, b                                        ; $6360: $78
	adc  c                                           ; $6361: $89
	sbc  b                                           ; $6362: $98
	adc  b                                           ; $6363: $88
	add  a                                           ; $6364: $87
	ld   [hl], a                                     ; $6365: $77
	sbc  b                                           ; $6366: $98
	adc  c                                           ; $6367: $89
	ld   a, c                                        ; $6368: $79
	sub  a                                           ; $6369: $97
	ld   [hl], a                                     ; $636a: $77
	sbc  c                                           ; $636b: $99
	adc  b                                           ; $636c: $88
	adc  c                                           ; $636d: $89
	sbc  c                                           ; $636e: $99
	add  a                                           ; $636f: $87
	sbc  c                                           ; $6370: $99
	adc  b                                           ; $6371: $88
	adc  b                                           ; $6372: $88
	adc  b                                           ; $6373: $88
	add  a                                           ; $6374: $87
	adc  c                                           ; $6375: $89
	adc  c                                           ; $6376: $89
	add  a                                           ; $6377: $87
	adc  b                                           ; $6378: $88
	adc  b                                           ; $6379: $88
	sbc  c                                           ; $637a: $99
	adc  b                                           ; $637b: $88
	adc  b                                           ; $637c: $88
	adc  c                                           ; $637d: $89
	adc  c                                           ; $637e: $89
	add  a                                           ; $637f: $87
	adc  b                                           ; $6380: $88
	add  a                                           ; $6381: $87
	sbc  b                                           ; $6382: $98
	adc  c                                           ; $6383: $89
	adc  b                                           ; $6384: $88
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	ld   a, b                                        ; $6387: $78
	add  a                                           ; $6388: $87
	adc  c                                           ; $6389: $89
	sbc  c                                           ; $638a: $99
	sub  a                                           ; $638b: $97
	ld   a, c                                        ; $638c: $79
	adc  c                                           ; $638d: $89
	add  a                                           ; $638e: $87
	adc  b                                           ; $638f: $88
	ld   a, c                                        ; $6390: $79
	add  a                                           ; $6391: $87
	adc  c                                           ; $6392: $89
	add  a                                           ; $6393: $87
	add  a                                           ; $6394: $87
	sbc  c                                           ; $6395: $99
	ld   a, c                                        ; $6396: $79
	sbc  c                                           ; $6397: $99
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	adc  b                                           ; $639a: $88
	adc  c                                           ; $639b: $89
	sub  a                                           ; $639c: $97
	sbc  c                                           ; $639d: $99
	sbc  b                                           ; $639e: $98
	ld   a, c                                        ; $639f: $79
	ld   a, b                                        ; $63a0: $78
	ld   a, b                                        ; $63a1: $78
	sbc  c                                           ; $63a2: $99
	ld   [hl], a                                     ; $63a3: $77
	sbc  b                                           ; $63a4: $98
	adc  b                                           ; $63a5: $88
	add  a                                           ; $63a6: $87
	sbc  b                                           ; $63a7: $98

Call_0bd_63a8:
	ld   a, b                                        ; $63a8: $78
	adc  b                                           ; $63a9: $88
	adc  b                                           ; $63aa: $88
	ld   a, b                                        ; $63ab: $78
	adc  b                                           ; $63ac: $88
	add  a                                           ; $63ad: $87
	sbc  c                                           ; $63ae: $99
	adc  b                                           ; $63af: $88
	ld   [hl], a                                     ; $63b0: $77
	sbc  b                                           ; $63b1: $98
	adc  b                                           ; $63b2: $88
	adc  b                                           ; $63b3: $88
	ld   [hl], a                                     ; $63b4: $77
	adc  b                                           ; $63b5: $88
	adc  c                                           ; $63b6: $89
	ld   [hl], a                                     ; $63b7: $77
	sub  a                                           ; $63b8: $97
	ld   l, c                                        ; $63b9: $69
	ret                                              ; $63ba: $c9


	ld   a, b                                        ; $63bb: $78
	adc  b                                           ; $63bc: $88
	add  a                                           ; $63bd: $87
	ld   l, d                                        ; $63be: $6a
	sub  a                                           ; $63bf: $97
	ld   h, [hl]                                     ; $63c0: $66
	ld   a, c                                        ; $63c1: $79
	add  [hl]                                        ; $63c2: $86
	add  a                                           ; $63c3: $87
	xor  b                                           ; $63c4: $a8
	sbc  c                                           ; $63c5: $99
	adc  d                                           ; $63c6: $8a
	ld   a, b                                        ; $63c7: $78
	ld   a, b                                        ; $63c8: $78
	ld   a, b                                        ; $63c9: $78
	sbc  b                                           ; $63ca: $98
	add  [hl]                                        ; $63cb: $86
	sbc  b                                           ; $63cc: $98
	adc  b                                           ; $63cd: $88
	ld   a, c                                        ; $63ce: $79
	sbc  c                                           ; $63cf: $99
	ld   a, b                                        ; $63d0: $78
	ld   a, b                                        ; $63d1: $78
	sub  a                                           ; $63d2: $97
	add  a                                           ; $63d3: $87
	sub  a                                           ; $63d4: $97
	adc  c                                           ; $63d5: $89
	ld   a, c                                        ; $63d6: $79
	adc  c                                           ; $63d7: $89
	adc  b                                           ; $63d8: $88
	sub  a                                           ; $63d9: $97
	sbc  b                                           ; $63da: $98
	sbc  b                                           ; $63db: $98
	sbc  c                                           ; $63dc: $99
	ld   a, b                                        ; $63dd: $78
	sbc  b                                           ; $63de: $98
	ld   a, b                                        ; $63df: $78
	sbc  c                                           ; $63e0: $99
	sub  a                                           ; $63e1: $97
	ld   a, c                                        ; $63e2: $79
	sbc  c                                           ; $63e3: $99
	ld   a, b                                        ; $63e4: $78
	adc  d                                           ; $63e5: $8a
	sub  a                                           ; $63e6: $97
	adc  c                                           ; $63e7: $89
	xor  b                                           ; $63e8: $a8
	sbc  b                                           ; $63e9: $98
	adc  c                                           ; $63ea: $89
	adc  b                                           ; $63eb: $88
	add  a                                           ; $63ec: $87
	sbc  b                                           ; $63ed: $98
	sbc  b                                           ; $63ee: $98
	add  a                                           ; $63ef: $87
	adc  b                                           ; $63f0: $88
	ld   a, b                                        ; $63f1: $78
	add  a                                           ; $63f2: $87
	ld   a, b                                        ; $63f3: $78
	add  a                                           ; $63f4: $87
	adc  c                                           ; $63f5: $89
	sub  a                                           ; $63f6: $97
	sbc  c                                           ; $63f7: $99
	sbc  c                                           ; $63f8: $99
	ld   a, c                                        ; $63f9: $79
	sub  a                                           ; $63fa: $97
	adc  b                                           ; $63fb: $88
	adc  b                                           ; $63fc: $88
	sub  a                                           ; $63fd: $97
	ld   a, c                                        ; $63fe: $79
	adc  b                                           ; $63ff: $88
	adc  b                                           ; $6400: $88
	adc  c                                           ; $6401: $89
	sub  a                                           ; $6402: $97
	sbc  b                                           ; $6403: $98
	adc  b                                           ; $6404: $88
	adc  b                                           ; $6405: $88
	ld   a, c                                        ; $6406: $79
	adc  c                                           ; $6407: $89
	sub  a                                           ; $6408: $97
	ld   a, d                                        ; $6409: $7a
	sub  a                                           ; $640a: $97
	adc  b                                           ; $640b: $88
	sbc  c                                           ; $640c: $99
	ld   [hl], a                                     ; $640d: $77
	sbc  c                                           ; $640e: $99
	add  a                                           ; $640f: $87
	ld   [hl], a                                     ; $6410: $77
	adc  b                                           ; $6411: $88
	ld   h, a                                        ; $6412: $67
	ld   a, b                                        ; $6413: $78
	add  a                                           ; $6414: $87
	adc  b                                           ; $6415: $88
	add  a                                           ; $6416: $87
	add  a                                           ; $6417: $87
	ld   a, b                                        ; $6418: $78
	sbc  d                                           ; $6419: $9a
	ld   a, c                                        ; $641a: $79
	adc  c                                           ; $641b: $89
	sbc  b                                           ; $641c: $98
	ld   [hl], a                                     ; $641d: $77
	sub  a                                           ; $641e: $97
	sub  a                                           ; $641f: $97
	ld   a, b                                        ; $6420: $78
	adc  b                                           ; $6421: $88
	ld   l, b                                        ; $6422: $68
	adc  c                                           ; $6423: $89
	add  a                                           ; $6424: $87
	sub  a                                           ; $6425: $97
	sub  a                                           ; $6426: $97
	sbc  b                                           ; $6427: $98
	adc  b                                           ; $6428: $88
	ld   l, c                                        ; $6429: $69
	ld   a, b                                        ; $642a: $78
	add  a                                           ; $642b: $87
	sbc  b                                           ; $642c: $98
	sub  a                                           ; $642d: $97
	add  a                                           ; $642e: $87
	adc  c                                           ; $642f: $89
	ld   a, b                                        ; $6430: $78
	ld   a, c                                        ; $6431: $79
	adc  b                                           ; $6432: $88
	adc  b                                           ; $6433: $88
	adc  c                                           ; $6434: $89
	sub  a                                           ; $6435: $97
	add  a                                           ; $6436: $87
	sbc  b                                           ; $6437: $98
	ld   [hl], a                                     ; $6438: $77
	ld   a, b                                        ; $6439: $78
	adc  b                                           ; $643a: $88
	ld   h, a                                        ; $643b: $67
	add  a                                           ; $643c: $87
	add  a                                           ; $643d: $87
	add  a                                           ; $643e: $87
	adc  d                                           ; $643f: $8a
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  c                                           ; $6442: $89
	add  a                                           ; $6443: $87
	sbc  b                                           ; $6444: $98
	adc  b                                           ; $6445: $88
	add  a                                           ; $6446: $87
	adc  b                                           ; $6447: $88
	add  [hl]                                        ; $6448: $86
	ld   l, b                                        ; $6449: $68
	ld   a, b                                        ; $644a: $78
	ld   [hl], a                                     ; $644b: $77
	ld   l, b                                        ; $644c: $68
	ld   [hl], a                                     ; $644d: $77
	add  [hl]                                        ; $644e: $86
	adc  b                                           ; $644f: $88
	sub  a                                           ; $6450: $97
	ld   a, b                                        ; $6451: $78
	ld   a, c                                        ; $6452: $79
	adc  b                                           ; $6453: $88
	adc  c                                           ; $6454: $89
	sbc  b                                           ; $6455: $98
	sbc  c                                           ; $6456: $99
	sbc  b                                           ; $6457: $98
	xor  c                                           ; $6458: $a9
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	sbc  b                                           ; $645b: $98
	ld   [hl], a                                     ; $645c: $77
	halt                                             ; $645d: $76
	halt                                             ; $645e: $76
	ld   h, [hl]                                     ; $645f: $66
	ld   h, l                                        ; $6460: $65
	ld   d, l                                        ; $6461: $55
	ld   d, [hl]                                     ; $6462: $56
	ld   h, [hl]                                     ; $6463: $66
	ld   h, [hl]                                     ; $6464: $66
	adc  b                                           ; $6465: $88
	sbc  c                                           ; $6466: $99
	sbc  c                                           ; $6467: $99
	cp   h                                           ; $6468: $bc
	xor  d                                           ; $6469: $aa
	call z, $baaa                                    ; $646a: $cc $aa $ba
	xor  c                                           ; $646d: $a9
	add  a                                           ; $646e: $87
	halt                                             ; $646f: $76
	ld   d, h                                        ; $6470: $54
	inc  sp                                          ; $6471: $33
	ld   [hl-], a                                    ; $6472: $32
	ld   de, $3422                                   ; $6473: $11 $22 $34
	ld   b, l                                        ; $6476: $45
	ld   a, c                                        ; $6477: $79
	sbc  d                                           ; $6478: $9a
	cp   l                                           ; $6479: $bd
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	rst  $38                                         ; $647d: $ff
	res  7, d                                        ; $647e: $cb $ba
	sub  [hl]                                        ; $6480: $96
	ld   d, d                                        ; $6481: $52
	ld   b, e                                        ; $6482: $43
	ld   hl, $1311                                   ; $6483: $21 $11 $13
	ld   de, $7724                                   ; $6486: $11 $24 $77
	ld   [hl], a                                     ; $6489: $77
	cp   [hl]                                        ; $648a: $be
	rst  $38                                         ; $648b: $ff
	rst  $38                                         ; $648c: $ff
	rst  $38                                         ; $648d: $ff
	rst  $38                                         ; $648e: $ff
	res  7, e                                        ; $648f: $cb $bb
	sub  [hl]                                        ; $6491: $96
	ld   d, [hl]                                     ; $6492: $56
	ld   d, e                                        ; $6493: $53
	ld   hl, $1111                                   ; $6494: $21 $11 $11
	ld   [de], a                                     ; $6497: $12

Jump_0bd_6498:
	inc  hl                                          ; $6498: $23

Jump_0bd_6499:
	inc  [hl]                                        ; $6499: $34
	ld   e, c                                        ; $649a: $59
	sbc  c                                           ; $649b: $99
	call $ffff                                       ; $649c: $cd $ff $ff
	rst  $38                                         ; $649f: $ff
	rst  $38                                         ; $64a0: $ff
	db   $db                                         ; $64a1: $db
	xor  c                                           ; $64a2: $a9
	sub  l                                           ; $64a3: $95
	ld   b, h                                        ; $64a4: $44
	ld   [hl-], a                                    ; $64a5: $32
	ld   hl, $1111                                   ; $64a6: $21 $11 $11
	inc  hl                                          ; $64a9: $23
	inc  h                                           ; $64aa: $24
	ld   d, [hl]                                     ; $64ab: $56
	sbc  d                                           ; $64ac: $9a
	sbc  e                                           ; $64ad: $9b
	rst  $28                                         ; $64ae: $ef
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	rst  $38                                         ; $64b1: $ff
	db   $ec                                         ; $64b2: $ec
	jp   z, $5498                                    ; $64b3: $ca $98 $54

	ld   b, h                                        ; $64b6: $44
	ld   hl, $1111                                   ; $64b7: $21 $11 $11
	ld   de, $4544                                   ; $64ba: $11 $44 $45
	ld   l, b                                        ; $64bd: $68
	cp   h                                           ; $64be: $bc
	cp   [hl]                                        ; $64bf: $be
	rst  $38                                         ; $64c0: $ff
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	db   $eb                                         ; $64c4: $eb
	sub  a                                           ; $64c5: $97
	halt                                             ; $64c6: $76
	ld   b, e                                        ; $64c7: $43
	ld   hl, $1112                                   ; $64c8: $21 $12 $11
	ld   de, $3434                                   ; $64cb: $11 $34 $34
	ld   l, c                                        ; $64ce: $69
	sbc  e                                           ; $64cf: $9b
	cp   e                                           ; $64d0: $bb
	rst  $38                                         ; $64d1: $ff
	rst  $38                                         ; $64d2: $ff
	rst  $38                                         ; $64d3: $ff
	rst  $38                                         ; $64d4: $ff
	db   $dd                                         ; $64d5: $dd
	xor  b                                           ; $64d6: $a8
	add  a                                           ; $64d7: $87
	ld   d, d                                        ; $64d8: $52
	inc  sp                                          ; $64d9: $33
	ld   hl, $1111                                   ; $64da: $21 $11 $11
	ld   [de], a                                     ; $64dd: $12
	inc  [hl]                                        ; $64de: $34
	ld   h, [hl]                                     ; $64df: $66
	sbc  c                                           ; $64e0: $99
	call $ffdf                                       ; $64e1: $cd $df $ff
	rst  $38                                         ; $64e4: $ff
	rst  $38                                         ; $64e5: $ff
	db   $fd                                         ; $64e6: $fd
	reti                                             ; $64e7: $d9


	add  a                                           ; $64e8: $87
	halt                                             ; $64e9: $76
	inc  sp                                          ; $64ea: $33
	ld   hl, $1111                                   ; $64eb: $21 $11 $11
	ld   de, $2423                                   ; $64ee: $11 $23 $24
	ld   e, c                                        ; $64f1: $59
	call $ffbd                                       ; $64f2: $cd $bd $ff
	rst  $38                                         ; $64f5: $ff
	rst  $38                                         ; $64f6: $ff
	rst  $38                                         ; $64f7: $ff
	db   $db                                         ; $64f8: $db
	sbc  c                                           ; $64f9: $99
	halt                                             ; $64fa: $76
	ld   sp, $0121                                   ; $64fb: $31 $21 $01
	ld   de, $1311                                   ; $64fe: $11 $11 $13
	ld   b, h                                        ; $6501: $44
	ld   h, a                                        ; $6502: $67
	xor  e                                           ; $6503: $ab
	db   $dd                                         ; $6504: $dd
	rst  $28                                         ; $6505: $ef
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	db   $fc                                         ; $6509: $fc
	ret                                              ; $650a: $c9


	halt                                             ; $650b: $76
	ld   h, h                                        ; $650c: $64
	inc  hl                                          ; $650d: $23
	ld   de, $1111                                   ; $650e: $11 $11 $11
	ld   de, $4643                                   ; $6511: $11 $43 $46
	ld   a, c                                        ; $6514: $79
	cp   h                                           ; $6515: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6516: $cf
	rst  $38                                         ; $6517: $ff
	rst  $38                                         ; $6518: $ff
	rst  $38                                         ; $6519: $ff
	cp   $db                                         ; $651a: $fe $db
	adc  b                                           ; $651c: $88
	halt                                             ; $651d: $76
	ld   b, e                                        ; $651e: $43
	ld   [hl-], a                                    ; $651f: $32
	ld   de, $1111                                   ; $6520: $11 $11 $11
	inc  de                                          ; $6523: $13
	ld   b, h                                        ; $6524: $44
	ld   d, [hl]                                     ; $6525: $56
	sbc  e                                           ; $6526: $9b
	db   $db                                         ; $6527: $db
	rst  JumpTable                                         ; $6528: $df
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	rst  $38                                         ; $652b: $ff
	db   $fd                                         ; $652c: $fd
	ret                                              ; $652d: $c9


	add  a                                           ; $652e: $87
	ld   h, l                                        ; $652f: $65
	inc  sp                                          ; $6530: $33
	ld   [hl+], a                                    ; $6531: $22
	ld   de, $1111                                   ; $6532: $11 $11 $11
	inc  h                                           ; $6535: $24
	ld   b, [hl]                                     ; $6536: $46
	ld   l, b                                        ; $6537: $68
	xor  h                                           ; $6538: $ac
	call z, $ffff                                    ; $6539: $cc $ff $ff
	rst  $38                                         ; $653c: $ff
	cp   $dc                                         ; $653d: $fe $dc
	cp   b                                           ; $653f: $b8
	add  a                                           ; $6540: $87
	ld   h, h                                        ; $6541: $64
	ld   b, e                                        ; $6542: $43
	ld   sp, $0111                                   ; $6543: $31 $11 $01
	ld   de, $4543                                   ; $6546: $11 $43 $45
	ld   l, b                                        ; $6549: $68
	xor  e                                           ; $654a: $ab
	cp   [hl]                                        ; $654b: $be
	rst  $38                                         ; $654c: $ff
	rst  $38                                         ; $654d: $ff
	rst  $38                                         ; $654e: $ff
	cp   $cc                                         ; $654f: $fe $cc
	xor  b                                           ; $6551: $a8
	add  a                                           ; $6552: $87
	ld   d, l                                        ; $6553: $55
	ld   b, h                                        ; $6554: $44
	ld   sp, $2122                                   ; $6555: $31 $22 $21
	ld   de, $4544                                   ; $6558: $11 $44 $45
	ld   d, a                                        ; $655b: $57
	xor  h                                           ; $655c: $ac
	call $ffee                                       ; $655d: $cd $ee $ff
	rst  $38                                         ; $6560: $ff
	db   $ed                                         ; $6561: $ed
	call $87a9                                       ; $6562: $cd $a9 $87
	ld   h, l                                        ; $6565: $65
	ld   d, h                                        ; $6566: $54
	ld   [hl-], a                                    ; $6567: $32
	ld   [hl+], a                                    ; $6568: $22
	ld   hl, $4411                                   ; $6569: $21 $11 $44
	ld   b, l                                        ; $656c: $45
	ld   h, a                                        ; $656d: $67
	xor  e                                           ; $656e: $ab
	set  1, l                                        ; $656f: $cb $cd
	rst  $38                                         ; $6571: $ff
	rst  $38                                         ; $6572: $ff
	cp   $dc                                         ; $6573: $fe $dc
	xor  c                                           ; $6575: $a9
	sbc  b                                           ; $6576: $98
	halt                                             ; $6577: $76
	ld   h, l                                        ; $6578: $65
	ld   b, e                                        ; $6579: $43
	inc  hl                                          ; $657a: $23
	ld   [hl+], a                                    ; $657b: $22
	ld   de, $5535                                   ; $657c: $11 $35 $55
	ld   b, l                                        ; $657f: $45
	adc  e                                           ; $6580: $8b
	xor  e                                           ; $6581: $ab
	call $feef                                       ; $6582: $cd $ef $fe
	db   $dd                                         ; $6585: $dd
	call $99cb                                       ; $6586: $cd $cb $99
	add  a                                           ; $6589: $87
	ld   h, [hl]                                     ; $658a: $66
	ld   d, h                                        ; $658b: $54
	inc  [hl]                                        ; $658c: $34
	ld   b, e                                        ; $658d: $43
	ld   hl, $5414                                   ; $658e: $21 $14 $54
	ld   d, l                                        ; $6591: $55
	ld   l, c                                        ; $6592: $69
	xor  d                                           ; $6593: $aa
	xor  e                                           ; $6594: $ab
	adc  $fe                                         ; $6595: $ce $fe
	xor  $dd                                         ; $6597: $ee $dd
	call z, $98aa                                    ; $6599: $cc $aa $98
	ld   [hl], a                                     ; $659c: $77
	ld   h, l                                        ; $659d: $65
	ld   d, h                                        ; $659e: $54
	ld   d, l                                        ; $659f: $55
	ld   b, e                                        ; $65a0: $43
	ld   hl, $5535                                   ; $65a1: $21 $35 $55
	ld   b, l                                        ; $65a4: $45
	ld   l, c                                        ; $65a5: $69
	xor  d                                           ; $65a6: $aa
	cp   e                                           ; $65a7: $bb

Jump_0bd_65a8:
	adc  $ee                                         ; $65a8: $ce $ee
	call c, $dbdc                                    ; $65aa: $dc $dc $db
	xor  d                                           ; $65ad: $aa
	sbc  b                                           ; $65ae: $98
	ld   [hl], a                                     ; $65af: $77
	ld   h, [hl]                                     ; $65b0: $66
	ld   d, h                                        ; $65b1: $54
	ld   d, l                                        ; $65b2: $55
	ld   d, h                                        ; $65b3: $54
	inc  sp                                          ; $65b4: $33
	dec  [hl]                                        ; $65b5: $35
	ld   d, h                                        ; $65b6: $54
	ld   d, l                                        ; $65b7: $55
	ld   l, c                                        ; $65b8: $69
	sbc  d                                           ; $65b9: $9a
	cp   d                                           ; $65ba: $ba
	xor  l                                           ; $65bb: $ad
	call z, $bcdc                                    ; $65bc: $cc $dc $bc
	res  7, d                                        ; $65bf: $cb $ba
	sbc  b                                           ; $65c1: $98
	adc  b                                           ; $65c2: $88
	ld   [hl], a                                     ; $65c3: $77
	ld   h, l                                        ; $65c4: $65
	ld   h, [hl]                                     ; $65c5: $66
	ld   d, l                                        ; $65c6: $55
	ld   b, h                                        ; $65c7: $44
	inc  [hl]                                        ; $65c8: $34
	ld   d, h                                        ; $65c9: $54
	ld   d, l                                        ; $65ca: $55
	ld   d, a                                        ; $65cb: $57
	ld   a, c                                        ; $65cc: $79
	sbc  d                                           ; $65cd: $9a
	sbc  e                                           ; $65ce: $9b
	call z, $ccdc                                    ; $65cf: $cc $dc $cc
	call z, $a9aa                                    ; $65d2: $cc $aa $a9
	adc  c                                           ; $65d5: $89
	adc  b                                           ; $65d6: $88
	halt                                             ; $65d7: $76
	ld   d, [hl]                                     ; $65d8: $56
	ld   h, [hl]                                     ; $65d9: $66
	ld   h, l                                        ; $65da: $65
	ld   b, h                                        ; $65db: $44
	inc  [hl]                                        ; $65dc: $34
	ld   b, h                                        ; $65dd: $44
	ld   d, [hl]                                     ; $65de: $56
	ld   [hl], a                                     ; $65df: $77
	ld   a, b                                        ; $65e0: $78
	adc  d                                           ; $65e1: $8a
	cp   e                                           ; $65e2: $bb
	call z, $bccb                                    ; $65e3: $cc $cb $bc
	cp   d                                           ; $65e6: $ba
	cp   e                                           ; $65e7: $bb
	sbc  c                                           ; $65e8: $99
	sbc  b                                           ; $65e9: $98
	adc  b                                           ; $65ea: $88
	sub  a                                           ; $65eb: $97
	ld   h, [hl]                                     ; $65ec: $66
	ld   h, [hl]                                     ; $65ed: $66
	ld   h, l                                        ; $65ee: $65
	ld   b, h                                        ; $65ef: $44
	inc  [hl]                                        ; $65f0: $34
	ld   d, h                                        ; $65f1: $54
	ld   d, l                                        ; $65f2: $55
	ld   h, [hl]                                     ; $65f3: $66
	ld   a, b                                        ; $65f4: $78
	adc  c                                           ; $65f5: $89
	sbc  d                                           ; $65f6: $9a
	cp   e                                           ; $65f7: $bb
	cp   e                                           ; $65f8: $bb
	cp   h                                           ; $65f9: $bc
	cp   e                                           ; $65fa: $bb
	cp   d                                           ; $65fb: $ba
	cp   d                                           ; $65fc: $ba
	xor  c                                           ; $65fd: $a9
	sbc  c                                           ; $65fe: $99
	sub  a                                           ; $65ff: $97
	ld   h, a                                        ; $6600: $67
	ld   [hl], a                                     ; $6601: $77
	ld   h, h                                        ; $6602: $64
	ld   b, h                                        ; $6603: $44
	ld   b, h                                        ; $6604: $44
	inc  sp                                          ; $6605: $33
	ld   b, l                                        ; $6606: $45
	ld   h, [hl]                                     ; $6607: $66
	ld   [hl], a                                     ; $6608: $77
	ld   a, b                                        ; $6609: $78
	sbc  d                                           ; $660a: $9a
	xor  e                                           ; $660b: $ab
	cp   h                                           ; $660c: $bc
	res  7, e                                        ; $660d: $cb $bb
	call z, $b9cc                                    ; $660f: $cc $cc $b9
	sbc  d                                           ; $6612: $9a
	sbc  c                                           ; $6613: $99
	ld   [hl], a                                     ; $6614: $77
	ld   [hl], a                                     ; $6615: $77
	ld   h, l                                        ; $6616: $65
	ld   d, h                                        ; $6617: $54
	ld   b, e                                        ; $6618: $43
	inc  sp                                          ; $6619: $33
	ld   b, h                                        ; $661a: $44
	ld   b, l                                        ; $661b: $45
	ld   h, a                                        ; $661c: $67
	ld   h, a                                        ; $661d: $67
	sbc  c                                           ; $661e: $99
	cp   e                                           ; $661f: $bb
	cp   e                                           ; $6620: $bb
	call z, $cccc                                    ; $6621: $cc $cc $cc
	cp   h                                           ; $6624: $bc
	jp   z, $89aa                                    ; $6625: $ca $aa $89

	sub  a                                           ; $6628: $97
	ld   h, [hl]                                     ; $6629: $66
	halt                                             ; $662a: $76
	ld   d, h                                        ; $662b: $54
	ld   b, h                                        ; $662c: $44
	inc  [hl]                                        ; $662d: $34
	inc  sp                                          ; $662e: $33
	ld   b, h                                        ; $662f: $44
	ld   d, [hl]                                     ; $6630: $56
	ld   [hl], a                                     ; $6631: $77
	ld   a, b                                        ; $6632: $78
	adc  c                                           ; $6633: $89
	xor  h                                           ; $6634: $ac
	set  1, l                                        ; $6635: $cb $cd
	call $bbdc                                       ; $6637: $cd $dc $bb
	cp   e                                           ; $663a: $bb
	cp   c                                           ; $663b: $b9
	sbc  b                                           ; $663c: $98
	add  a                                           ; $663d: $87
	ld   h, [hl]                                     ; $663e: $66
	ld   h, l                                        ; $663f: $65
	ld   h, l                                        ; $6640: $65
	ld   b, e                                        ; $6641: $43
	inc  sp                                          ; $6642: $33
	inc  [hl]                                        ; $6643: $34
	inc  [hl]                                        ; $6644: $34
	ld   d, [hl]                                     ; $6645: $56
	ld   a, b                                        ; $6646: $78
	adc  b                                           ; $6647: $88
	sbc  e                                           ; $6648: $9b
	cp   h                                           ; $6649: $bc
	res  7, e                                        ; $664a: $cb $bb
	cp   e                                           ; $664c: $bb
	call z, $bbcc                                    ; $664d: $cc $cc $bb
	sbc  d                                           ; $6650: $9a
	sbc  b                                           ; $6651: $98
	add  a                                           ; $6652: $87
	ld   h, l                                        ; $6653: $65
	ld   d, l                                        ; $6654: $55
	ld   b, e                                        ; $6655: $43
	ld   [hl-], a                                    ; $6656: $32
	inc  hl                                          ; $6657: $23
	inc  sp                                          ; $6658: $33
	inc  [hl]                                        ; $6659: $34
	ld   h, a                                        ; $665a: $67
	sbc  d                                           ; $665b: $9a
	adc  b                                           ; $665c: $88
	sbc  d                                           ; $665d: $9a
	cp   e                                           ; $665e: $bb
	res  7, h                                        ; $665f: $cb $bc
	set  1, h                                        ; $6661: $cb $cc
	res  7, d                                        ; $6663: $cb $ba
	xor  d                                           ; $6665: $aa
	adc  b                                           ; $6666: $88
	ld   [hl], a                                     ; $6667: $77
	ld   h, l                                        ; $6668: $65
	ld   d, [hl]                                     ; $6669: $56
	ld   d, h                                        ; $666a: $54
	ld   b, e                                        ; $666b: $43
	inc  sp                                          ; $666c: $33
	inc  sp                                          ; $666d: $33
	inc  [hl]                                        ; $666e: $34
	ld   b, [hl]                                     ; $666f: $46
	ld   a, c                                        ; $6670: $79
	adc  c                                           ; $6671: $89
	cp   c                                           ; $6672: $b9
	xor  e                                           ; $6673: $ab
	xor  e                                           ; $6674: $ab
	call z, $dbcd                                    ; $6675: $cc $cd $db
	db   $db                                         ; $6678: $db
	cp   d                                           ; $6679: $ba
	xor  d                                           ; $667a: $aa
	adc  c                                           ; $667b: $89
	sub  a                                           ; $667c: $97
	halt                                             ; $667d: $76
	ld   d, l                                        ; $667e: $55
	ld   d, l                                        ; $667f: $55
	ld   b, h                                        ; $6680: $44
	ld   [hl-], a                                    ; $6681: $32
	ld   [hl+], a                                    ; $6682: $22
	ld   b, l                                        ; $6683: $45
	ld   b, h                                        ; $6684: $44
	ld   d, a                                        ; $6685: $57
	sbc  d                                           ; $6686: $9a
	res  5, d                                        ; $6687: $cb $aa
	cp   h                                           ; $6689: $bc
	db   $ed                                         ; $668a: $ed
	res  7, h                                        ; $668b: $cb $bc
	adc  $ca                                         ; $668d: $ce $ca
	sbc  d                                           ; $668f: $9a
	xor  d                                           ; $6690: $aa
	sbc  b                                           ; $6691: $98
	ld   h, [hl]                                     ; $6692: $66
	ld   d, h                                        ; $6693: $54
	ld   d, l                                        ; $6694: $55
	ld   d, l                                        ; $6695: $55
	ld   [hl-], a                                    ; $6696: $32
	ld   [de], a                                     ; $6697: $12
	inc  sp                                          ; $6698: $33
	ld   b, h                                        ; $6699: $44
	ld   b, a                                        ; $669a: $47
	sbc  e                                           ; $669b: $9b
	jp   z, $acb9                                    ; $669c: $ca $b9 $ac

	xor  $cc                                         ; $669f: $ee $cc
	call z, $baec                                    ; $66a1: $cc $ec $ba
	xor  d                                           ; $66a4: $aa
	cp   h                                           ; $66a5: $bc
	cp   b                                           ; $66a6: $b8
	halt                                             ; $66a7: $76
	ld   h, [hl]                                     ; $66a8: $66
	ld   b, h                                        ; $66a9: $44
	ld   b, h                                        ; $66aa: $44
	ld   b, h                                        ; $66ab: $44
	ld   hl, $2312                                   ; $66ac: $21 $12 $23
	ld   b, h                                        ; $66af: $44
	ld   a, d                                        ; $66b0: $7a
	res  7, e                                        ; $66b1: $cb $bb
	cp   h                                           ; $66b3: $bc
	call c, $cdcb                                    ; $66b4: $dc $cb $cd
	xor  $dc                                         ; $66b7: $ee $dc
	xor  d                                           ; $66b9: $aa
	cp   e                                           ; $66ba: $bb
	xor  d                                           ; $66bb: $aa
	sbc  c                                           ; $66bc: $99
	ld   [hl], a                                     ; $66bd: $77
	ld   d, e                                        ; $66be: $53
	inc  sp                                          ; $66bf: $33
	inc  [hl]                                        ; $66c0: $34
	inc  sp                                          ; $66c1: $33
	ld   [hl+], a                                    ; $66c2: $22
	inc  hl                                          ; $66c3: $23
	inc  sp                                          ; $66c4: $33
	ld   b, l                                        ; $66c5: $45
	ld   a, d                                        ; $66c6: $7a
	db   $db                                         ; $66c7: $db
	call z, $bbbd                                    ; $66c8: $cc $bd $bb
	cp   [hl]                                        ; $66cb: $be
	db   $fc                                         ; $66cc: $fc
	call c, $baba                                    ; $66cd: $dc $ba $ba
	xor  e                                           ; $66d0: $ab
	sbc  c                                           ; $66d1: $99
	xor  b                                           ; $66d2: $a8
	halt                                             ; $66d3: $76
	ld   b, c                                        ; $66d4: $41
	inc  hl                                          ; $66d5: $23
	inc  [hl]                                        ; $66d6: $34
	inc  sp                                          ; $66d7: $33
	ld   [hl-], a                                    ; $66d8: $32
	ld   hl, $4922                                   ; $66d9: $21 $22 $49
	call $acdb                                       ; $66dc: $cd $db $ac
	cp   e                                           ; $66df: $bb
	xor  e                                           ; $66e0: $ab
	sbc  $fe                                         ; $66e1: $de $fe
	call z, $aa99                                    ; $66e3: $cc $99 $aa
	jp   z, $9799                                    ; $66e6: $ca $99 $97

	ld   d, l                                        ; $66e9: $55
	ld   [hl-], a                                    ; $66ea: $32
	ld   [hl-], a                                    ; $66eb: $32
	dec  [hl]                                        ; $66ec: $35
	ld   d, e                                        ; $66ed: $53
	ld   hl, $3611                                   ; $66ee: $21 $11 $36
	add  a                                           ; $66f1: $87
	ld   a, h                                        ; $66f2: $7c
	call z, $acdb                                    ; $66f3: $cc $db $ac
	cp   e                                           ; $66f6: $bb
	xor  $ce                                         ; $66f7: $ee $ce
	reti                                             ; $66f9: $d9


	xor  d                                           ; $66fa: $aa
	xor  d                                           ; $66fb: $aa
	cp   c                                           ; $66fc: $b9
	sbc  c                                           ; $66fd: $99
	ld   a, b                                        ; $66fe: $78
	ld   [hl], l                                     ; $66ff: $75
	ld   [hl+], a                                    ; $6700: $22
	inc  sp                                          ; $6701: $33
	inc  sp                                          ; $6702: $33
	ld   d, l                                        ; $6703: $55
	ld   hl, $2511                                   ; $6704: $21 $11 $25
	ld   b, h                                        ; $6707: $44
	xor  [hl]                                        ; $6708: $ae
	db   $fd                                         ; $6709: $fd
	jp   hl                                          ; $670a: $e9


	ld   l, d                                        ; $670b: $6a
	adc  $cc                                         ; $670c: $ce $cc
	db   $dd                                         ; $670e: $dd
	db   $fc                                         ; $670f: $fc
	xor  c                                           ; $6710: $a9
	sbc  d                                           ; $6711: $9a
	jp   z, $9a79                                    ; $6712: $ca $79 $9a

	ld   [hl], h                                     ; $6715: $74
	ld   de, $4623                                   ; $6716: $11 $23 $46
	ld   d, h                                        ; $6719: $54
	ld   [hl+], a                                    ; $671a: $22
	ld   sp, $2411                                   ; $671b: $31 $11 $24
	adc  l                                           ; $671e: $8d
	rst  JumpTable                                         ; $671f: $df
	or   $8c                                         ; $6720: $f6 $8c
	rst  $38                                         ; $6722: $ff
	add  l                                           ; $6723: $85
	ld   a, a                                        ; $6724: $7f
	cp   $a3                                         ; $6725: $fe $a3
	ld   e, c                                        ; $6727: $59
	db   $dd                                         ; $6728: $dd
	xor  d                                           ; $6729: $aa
	ld   a, b                                        ; $672a: $78
	add  [hl]                                        ; $672b: $86
	ld   de, $9514                                   ; $672c: $11 $14 $95
	ld   sp, $4256                                   ; $672f: $31 $56 $42
	ld   de, $9b3a                                   ; $6732: $11 $3a $9b
	ld   a, [$b8bb]                                  ; $6735: $fa $bb $b8
	ld   a, [hl]                                     ; $6738: $7e
	xor  h                                           ; $6739: $ac
	db   $fd                                         ; $673a: $fd
	sbc  $c7                                         ; $673b: $de $c7
	ld   l, b                                        ; $673d: $68
	sbc  e                                           ; $673e: $9b
	res  1, b                                        ; $673f: $cb $88
	add  h                                           ; $6741: $84
	inc  [hl]                                        ; $6742: $34
	ld   b, h                                        ; $6743: $44
	ld   d, a                                        ; $6744: $57
	ld   b, h                                        ; $6745: $44
	ld   b, h                                        ; $6746: $44
	ld   d, c                                        ; $6747: $51
	ld   de, $8d43                                   ; $6748: $11 $43 $8d
	sub  [hl]                                        ; $674b: $96
	ld   l, e                                        ; $674c: $6b
	rst  $38                                         ; $674d: $ff
	call nz, $ef58                                   ; $674e: $c4 $58 $ef
	ret  c                                           ; $6751: $d8

	add  l                                           ; $6752: $85
	cp   a                                           ; $6753: $bf
	ld   hl, sp-$75                                  ; $6754: $f8 $8b
	ld   l, c                                        ; $6756: $69
	sub  l                                           ; $6757: $95
	ld   h, a                                        ; $6758: $67
	ld   h, h                                        ; $6759: $64
	ld   [hl-], a                                    ; $675a: $32
	ld   e, b                                        ; $675b: $58
	add  l                                           ; $675c: $85
	ld   hl, $2115                                   ; $675d: $21 $15 $21
	inc  [hl]                                        ; $6760: $34
	ld   a, l                                        ; $6761: $7d
	db   $fd                                         ; $6762: $fd
	adc  l                                           ; $6763: $8d
	sbc  e                                           ; $6764: $9b
	ld   [hl], h                                     ; $6765: $74
	xor  a                                           ; $6766: $af
	db   $fd                                         ; $6767: $fd
	add  $4f                                         ; $6768: $c6 $4f
	ei                                               ; $676a: $fb
	sbc  b                                           ; $676b: $98
	sbc  c                                           ; $676c: $99
	ret                                              ; $676d: $c9


	ld   [hl], a                                     ; $676e: $77
	ld   b, h                                        ; $676f: $44
	inc  sp                                          ; $6770: $33

jr_0bd_6771:
	ld   b, [hl]                                     ; $6771: $46
	cp   d                                           ; $6772: $ba
	ld   sp, $5311                                   ; $6773: $31 $11 $53
	ld   hl, $cf16                                   ; $6776: $21 $16 $cf
	rst  $30                                         ; $6779: $f7
	ld   [hl], $df                                   ; $677a: $36 $df
	xor  b                                           ; $677c: $a8
	adc  d                                           ; $677d: $8a
	rst  JumpTable                                         ; $677e: $df
	ld   a, [$8e97]                                  ; $677f: $fa $97 $8e
	jp   hl                                          ; $6782: $e9


	ld   a, d                                        ; $6783: $7a
	sub  [hl]                                        ; $6784: $96
	ld   d, e                                        ; $6785: $53
	ld   d, [hl]                                     ; $6786: $56
	ld   h, h                                        ; $6787: $64
	ld   d, [hl]                                     ; $6788: $56
	adc  b                                           ; $6789: $88
	ld   d, c                                        ; $678a: $51
	ld   de, $7716                                   ; $678b: $11 $16 $77
	xor  d                                           ; $678e: $aa
	db   $ed                                         ; $678f: $ed
	ld   e, d                                        ; $6790: $5a
	rst  $38                                         ; $6791: $ff
	ld   h, c                                        ; $6792: $61
	ld   a, a                                        ; $6793: $7f
	rst  $38                                         ; $6794: $ff
	sub  a                                           ; $6795: $97

Jump_0bd_6796:
	sbc  e                                           ; $6796: $9b
	ld   a, c                                        ; $6797: $79
	db   $fc                                         ; $6798: $fc
	db   $ec                                         ; $6799: $ec
	ld   h, [hl]                                     ; $679a: $66
	ld   d, a                                        ; $679b: $57
	ld   b, e                                        ; $679c: $43
	ld   [hl-], a                                    ; $679d: $32
	sbc  d                                           ; $679e: $9a
	sbc  b                                           ; $679f: $98
	ld   d, e                                        ; $67a0: $53
	ld   de, $4811                                   ; $67a1: $11 $11 $48
	db   $db                                         ; $67a4: $db
	ld   h, [hl]                                     ; $67a5: $66
	rst  $38                                         ; $67a6: $ff
	sub  [hl]                                        ; $67a7: $96
	ld   c, h                                        ; $67a8: $4c
	sbc  $fa                                         ; $67a9: $de $fa
	ld   a, d                                        ; $67ab: $7a
	call Call_0bd_78a8                               ; $67ac: $cd $a8 $78
	call c, Call_0bd_68a7                            ; $67af: $dc $a7 $68
	ld   h, l                                        ; $67b2: $65
	inc  hl                                          ; $67b3: $23
	xor  b                                           ; $67b4: $a8
	ld   h, [hl]                                     ; $67b5: $66
	ld   [de], a                                     ; $67b6: $12
	ld   b, h                                        ; $67b7: $44
	ld   d, e                                        ; $67b8: $53
	ld   de, $fd6e                                   ; $67b9: $11 $6e $fd
	and  h                                           ; $67bc: $a4
	ld   c, a                                        ; $67bd: $4f
	ei                                               ; $67be: $fb
	ld   b, l                                        ; $67bf: $45
	dec  a                                           ; $67c0: $3d
	rst  $38                                         ; $67c1: $ff
	jp   c, $8d32                                    ; $67c2: $da $32 $8d

	rst  $38                                         ; $67c5: $ff
	jp   hl                                          ; $67c6: $e9


	ld   [hl-], a                                    ; $67c7: $32
	jr   jr_0bd_6771                                 ; $67c8: $18 $a7

	ld   h, l                                        ; $67ca: $65
	ld   d, [hl]                                     ; $67cb: $56
	ld   [hl], a                                     ; $67cc: $77
	ld   d, d                                        ; $67cd: $52
	ld   de, $9f11                                   ; $67ce: $11 $11 $9f
	ei                                               ; $67d1: $fb
	rla                                              ; $67d2: $17
	cp   [hl]                                        ; $67d3: $be
	rst  $30                                         ; $67d4: $f7
	ld   b, c                                        ; $67d5: $41
	adc  a                                           ; $67d6: $8f
	rst  $38                                         ; $67d7: $ff
	add  [hl]                                        ; $67d8: $86
	ld   [hl], e                                     ; $67d9: $73
	call c, $86fe                                    ; $67da: $dc $fe $86
	jr   @+$67                                       ; $67dd: $18 $65

	ld   d, a                                        ; $67df: $57
	ld   d, e                                        ; $67e0: $53
	adc  b                                           ; $67e1: $88
	ld   d, [hl]                                     ; $67e2: $56
	ld   d, c                                        ; $67e3: $51
	ld   sp, $7f14                                   ; $67e4: $31 $14 $7f
	rst  $30                                         ; $67e7: $f7
	ld   hl, $b3cf                                   ; $67e8: $21 $cf $b3
	ld   l, c                                        ; $67eb: $69
	rst  $38                                         ; $67ec: $ff
	db   $db                                         ; $67ed: $db
	adc  c                                           ; $67ee: $89
	xor  b                                           ; $67ef: $a8
	cp   l                                           ; $67f0: $bd
	cp   h                                           ; $67f1: $bc
	reti                                             ; $67f2: $d9


	ld   [de], a                                     ; $67f3: $12
	ld   l, c                                        ; $67f4: $69
	or   [hl]                                        ; $67f5: $b6
	ld   b, c                                        ; $67f6: $41
	ld   d, l                                        ; $67f7: $55
	ld   e, b                                        ; $67f8: $58
	ld   d, d                                        ; $67f9: $52
	inc  hl                                          ; $67fa: $23
	ld   [hl], $98                                   ; $67fb: $36 $98
	adc  a                                           ; $67fd: $8f
	jp   hl                                          ; $67fe: $e9


	ld   h, c                                        ; $67ff: $61
	ld   l, a                                        ; $6800: $6f
	rst  $38                                         ; $6801: $ff
	ld   b, [hl]                                     ; $6802: $46
	ld   a, a                                        ; $6803: $7f
	sbc  c                                           ; $6804: $99
	reti                                             ; $6805: $d9


	or   h                                           ; $6806: $b4
	res  3, d                                        ; $6807: $cb $9a
	ld   b, a                                        ; $6809: $47
	ld   b, l                                        ; $680a: $45
	ld   b, a                                        ; $680b: $47
	add  l                                           ; $680c: $85
	ld   h, d                                        ; $680d: $62
	inc  hl                                          ; $680e: $23
	ld   [hl], l                                     ; $680f: $75
	ld   [hl-], a                                    ; $6810: $32
	ld   b, l                                        ; $6811: $45
	xor  a                                           ; $6812: $af
	ld   a, d                                        ; $6813: $7a
	ret  z                                           ; $6814: $c8

	ld   c, b                                        ; $6815: $48
	xor  l                                           ; $6816: $ad
	ei                                               ; $6817: $fb
	sbc  a                                           ; $6818: $9f
	push bc                                          ; $6819: $c5
	ld   a, l                                        ; $681a: $7d
	cp   l                                           ; $681b: $bd
	push de                                          ; $681c: $d5
	adc  c                                           ; $681d: $89
	ld   h, [hl]                                     ; $681e: $66
	ld   [hl], a                                     ; $681f: $77
	jr   c, @+$55                                    ; $6820: $38 $53

	ld   [hl], h                                     ; $6822: $74
	ld   h, l                                        ; $6823: $65
	ld   [hl-], a                                    ; $6824: $32
	ld   hl, $ce16                                   ; $6825: $21 $16 $ce
	ld   sp, hl                                      ; $6828: $f9
	ld   h, l                                        ; $6829: $65
	ld   c, e                                        ; $682a: $4b
	db   $fd                                         ; $682b: $fd
	adc  a                                           ; $682c: $8f
	ld   [$28f9], a                                  ; $682d: $ea $f9 $28
	set  7, a                                        ; $6830: $cb $ff
	xor  b                                           ; $6832: $a8
	ld   [hl], c                                     ; $6833: $71
	inc  d                                           ; $6834: $14
	adc  d                                           ; $6835: $8a
	cp   c                                           ; $6836: $b9
	ld   de, $a711                                   ; $6837: $11 $11 $a7
	ld   b, c                                        ; $683a: $41
	ld   d, $bf                                      ; $683b: $16 $bf
	jp   nc, $dc32                                   ; $683d: $d2 $32 $dc

	rst  $28                                         ; $6840: $ef
	ld   l, c                                        ; $6841: $69
	xor  e                                           ; $6842: $ab
	call Call_0bd_73f6                               ; $6843: $cd $f6 $73
	cp   a                                           ; $6846: $bf
	cp   a                                           ; $6847: $bf
	ld   sp, $9c31                                   ; $6848: $31 $31 $9c
	add  l                                           ; $684b: $85
	ld   d, e                                        ; $684c: $53
	ld   de, $8257                                   ; $684d: $11 $57 $82
	inc  hl                                          ; $6850: $23
	ld   e, l                                        ; $6851: $5d
	db   $fd                                         ; $6852: $fd
	sub  h                                           ; $6853: $94
	add  hl, de                                      ; $6854: $19
	rst  $38                                         ; $6855: $ff

jr_0bd_6856:
	ldh  a, [c]                                      ; $6856: $f2
	add  hl, de                                      ; $6857: $19
	rst  $38                                         ; $6858: $ff
	cp   $12                                         ; $6859: $fe $12
	call Call_0bd_69a5                               ; $685b: $cd $a5 $69
	add  e                                           ; $685e: $83
	dec  d                                           ; $685f: $15
	xor  d                                           ; $6860: $aa
	ld   h, c                                        ; $6861: $61
	ld   [de], a                                     ; $6862: $12
	ld   h, [hl]                                     ; $6863: $66
	ld   h, d                                        ; $6864: $62
	add  hl, hl                                      ; $6865: $29
	db   $ec                                         ; $6866: $ec
	add  $1b                                         ; $6867: $c6 $1b
	db   $ec                                         ; $6869: $ec
	ei                                               ; $686a: $fb
	adc  h                                           ; $686b: $8c
	and  d                                           ; $686c: $a2
	xor  a                                           ; $686d: $af
	db   $fd                                         ; $686e: $fd
	ld   [hl], h                                     ; $686f: $74
	xor  e                                           ; $6870: $ab
	ld   [hl], h                                     ; $6871: $74
	ld   h, d                                        ; $6872: $62
	ld   l, h                                        ; $6873: $6c
	ld   [hl], $51                                   ; $6874: $36 $51
	inc  sp                                          ; $6876: $33
	ld   h, l                                        ; $6877: $65
	ld   d, e                                        ; $6878: $53
	ld   b, a                                        ; $6879: $47
	ld   e, h                                        ; $687a: $5c
	rst  ToBoot                                         ; $687b: $c7
	ld   b, e                                        ; $687c: $43
	reti                                             ; $687d: $d9


	cp   a                                           ; $687e: $bf
	cp   $96                                         ; $687f: $fe $96
	ld   d, a                                        ; $6881: $57
	xor  $ec                                         ; $6882: $ee $ec
	sub  [hl]                                        ; $6884: $96
	ld   e, d                                        ; $6885: $5a
	add  [hl]                                        ; $6886: $86
	ld   b, d                                        ; $6887: $42
	ld   a, b                                        ; $6888: $78
	and  l                                           ; $6889: $a5
	ld   hl, $3613                                   ; $688a: $21 $13 $36
	ld   e, b                                        ; $688d: $58
	ld   l, [hl]                                     ; $688e: $6e
	ldh  a, [c]                                      ; $688f: $f2
	ld   [hl+], a                                    ; $6890: $22

jr_0bd_6891:
	rst  $38                                         ; $6891: $ff
	ret  c                                           ; $6892: $d8

	ld   c, a                                        ; $6893: $4f
	call c, $c987                                    ; $6894: $dc $87 $c9
	rst  $38                                         ; $6897: $ff
	and  [hl]                                        ; $6898: $a6
	sub  h                                           ; $6899: $94
	daa                                              ; $689a: $27
	jr   @-$26                                       ; $689b: $18 $d8

	ld   h, d                                        ; $689d: $62
	ld   de, $4656                                   ; $689e: $11 $56 $46
	ld   h, d                                        ; $68a1: $62
	ld   e, a                                        ; $68a2: $5f
	di                                               ; $68a3: $f3
	or   a                                           ; $68a4: $b7
	jr   jr_0bd_6891                                 ; $68a5: $18 $ea

Call_0bd_68a7:
	rst  $38                                         ; $68a7: $ff
	inc  hl                                          ; $68a8: $23
	cp   a                                           ; $68a9: $bf
	jp   z, $ea99                                    ; $68aa: $ca $99 $ea

	ld   b, e                                        ; $68ad: $43
	sub  l                                           ; $68ae: $95
	ld   d, a                                        ; $68af: $57
	jr   jr_0bd_6856                                 ; $68b0: $18 $a4

	ld   d, e                                        ; $68b2: $53
	inc  de                                          ; $68b3: $13
	ld   [hl], d                                     ; $68b4: $72
	add  hl, de                                      ; $68b5: $19
	rst  $38                                         ; $68b6: $ff
	add  c                                           ; $68b7: $81
	dec  e                                           ; $68b8: $1d
	ei                                               ; $68b9: $fb
	pop  de                                          ; $68ba: $d1
	ld   a, a                                        ; $68bb: $7f
	rst  $38                                         ; $68bc: $ff
	ld   l, c                                        ; $68bd: $69
	cp   d                                           ; $68be: $ba
	sub  a                                           ; $68bf: $97
	xor  h                                           ; $68c0: $ac
	or   [hl]                                        ; $68c1: $b6
	ld   [hl-], a                                    ; $68c2: $32
	ld   a, [hl-]                                    ; $68c3: $3a
	add  l                                           ; $68c4: $85
	ld   sp, $1555                                   ; $68c5: $31 $55 $15
	xor  d                                           ; $68c8: $aa
	pop  de                                          ; $68c9: $d1
	rra                                              ; $68ca: $1f
	jp   nc, $ff34                                   ; $68cb: $d2 $34 $ff

	jp   nz, $9fad                                   ; $68ce: $c2 $ad $9f

	or   [hl]                                        ; $68d1: $b6
	jp   $817e                                       ; $68d2: $c3 $7e $81


	adc  b                                           ; $68d5: $88
	ld   l, [hl]                                     ; $68d6: $6e
	ld   [de], a                                     ; $68d7: $12
	sub  c                                           ; $68d8: $91
	add  d                                           ; $68d9: $82
	dec  d                                           ; $68da: $15
	cp   a                                           ; $68db: $bf
	add  l                                           ; $68dc: $85
	dec  d                                           ; $68dd: $15
	ld   a, [$ff84]                                  ; $68de: $fa $84 $ff
	adc  d                                           ; $68e1: $8a
	ld   a, [de]                                     ; $68e2: $1a
	call c, $cae8                                    ; $68e3: $dc $e8 $ca
	ld   a, c                                        ; $68e6: $79
	inc  d                                           ; $68e7: $14
	ld   l, d                                        ; $68e8: $6a
	cp   c                                           ; $68e9: $b9
	ld   d, c                                        ; $68ea: $51
	ld   c, b                                        ; $68eb: $48
	ld   a, b                                        ; $68ec: $78
	ld   b, c                                        ; $68ed: $41
	ld   e, a                                        ; $68ee: $5f
	ret                                              ; $68ef: $c9


	ld   d, c                                        ; $68f0: $51
	ld   a, a                                        ; $68f1: $7f
	ret                                              ; $68f2: $c9


	db   $dd                                         ; $68f3: $dd
	ld   d, l                                        ; $68f4: $55
	dec  e                                           ; $68f5: $1d
	db   $fd                                         ; $68f6: $fd
	push af                                          ; $68f7: $f5
	ld   b, [hl]                                     ; $68f8: $46
	ld   d, l                                        ; $68f9: $55
	xor  e                                           ; $68fa: $ab
	ld   e, c                                        ; $68fb: $59
	ld   e, c                                        ; $68fc: $59
	add  c                                           ; $68fd: $81
	inc  h                                           ; $68fe: $24
	xor  h                                           ; $68ff: $ac
	ld   d, c                                        ; $6900: $51
	ld   l, c                                        ; $6901: $69
	db   $ec                                         ; $6902: $ec
	add  c                                           ; $6903: $81
	rra                                              ; $6904: $1f
	rst  $38                                         ; $6905: $ff
	ld   [hl], c                                     ; $6906: $71
	cpl                                              ; $6907: $2f
	rst  $38                                         ; $6908: $ff
	or   c                                           ; $6909: $b1
	call $4736                                       ; $690a: $cd $36 $47
	ld   a, [$5712]                                  ; $690d: $fa $12 $57
	jp   hl                                          ; $6910: $e9


	ld   h, c                                        ; $6911: $61
	ld   a, [de]                                     ; $6912: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6913: $cf
	pop  af                                          ; $6914: $f1
	dec  de                                          ; $6915: $1b
	ld   hl, sp-$0d                                  ; $6916: $f8 $f3
	xor  a                                           ; $6918: $af
	jr   c, jr_0bd_696a                              ; $6919: $38 $4f

	sub  $94                                         ; $691b: $d6 $94
	ld   sp, hl                                      ; $691d: $f9
	add  d                                           ; $691e: $82
	ld   a, [hl-]                                    ; $691f: $3a
	ld   l, c                                        ; $6920: $69
	adc  c                                           ; $6921: $89
	ld   h, a                                        ; $6922: $67
	ld   b, [hl]                                     ; $6923: $46
	ld   [hl], c                                     ; $6924: $71
	ld   a, e                                        ; $6925: $7b
	xor  b                                           ; $6926: $a8
	xor  e                                           ; $6927: $ab
	ld   d, l                                        ; $6928: $55
	ld   [hl], a                                     ; $6929: $77
	rst  $28                                         ; $692a: $ef
	sub  a                                           ; $692b: $97
	ld   c, a                                        ; $692c: $4f
	pop  de                                          ; $692d: $d1
	sbc  [hl]                                        ; $692e: $9e
	sbc  c                                           ; $692f: $99
	ld   h, c                                        ; $6930: $61
	xor  d                                           ; $6931: $aa
	ld   e, l                                        ; $6932: $5d
	ld   b, l                                        ; $6933: $45
	ld   d, l                                        ; $6934: $55
	and  a                                           ; $6935: $a7
	ld   [hl+], a                                    ; $6936: $22
	ld   a, c                                        ; $6937: $79
	ei                                               ; $6938: $fb
	ld   c, b                                        ; $6939: $48
	dec  de                                          ; $693a: $1b
	pop  af                                          ; $693b: $f1
	cp   l                                           ; $693c: $bd
	ld   e, $a6                                      ; $693d: $1e $a6
	cp   c                                           ; $693f: $b9
	rst  JumpTable                                         ; $6940: $df
	sub  c                                           ; $6941: $91
	ld   [hl], $bb                                   ; $6942: $36 $bb
	dec  [hl]                                        ; $6944: $35
	sbc  b                                           ; $6945: $98

Jump_0bd_6946:
	and  e                                           ; $6946: $a3
	dec  [hl]                                        ; $6947: $35
	ld   a, h                                        ; $6948: $7c
	ld   h, e                                        ; $6949: $63
	ld   h, a                                        ; $694a: $67
	db   $db                                         ; $694b: $db
	ld   h, h                                        ; $694c: $64
	ld   a, e                                        ; $694d: $7b
	rst  $28                                         ; $694e: $ef
	ld   d, c                                        ; $694f: $51
	xor  a                                           ; $6950: $af
	db   $fc                                         ; $6951: $fc
	ld   de, $97ff                                   ; $6952: $11 $ff $97
	dec  h                                           ; $6955: $25
	add  a                                           ; $6956: $87
	ret  z                                           ; $6957: $c8

	ld   [hl], h                                     ; $6958: $74
	ld   d, $17                                      ; $6959: $16 $17
	cp   a                                           ; $695b: $bf
	and  c                                           ; $695c: $a1
	ld   d, c                                        ; $695d: $51
	cp   e                                           ; $695e: $bb
	jp   z, $ef3e                                    ; $695f: $ca $3e $ef

	ld   [hl], h                                     ; $6962: $74
	ld   d, a                                        ; $6963: $57
	cp   d                                           ; $6964: $ba
	ld   sp, hl                                      ; $6965: $f9
	ld   h, [hl]                                     ; $6966: $66
	jr   c, jr_0bd_69c2                              ; $6967: $38 $59

	ld   l, l                                        ; $6969: $6d

jr_0bd_696a:
	add  $61                                         ; $696a: $c6 $61
	ld   [hl-], a                                    ; $696c: $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $696d: $cf
	sbc  d                                           ; $696e: $9a
	dec  d                                           ; $696f: $15
	ld   hl, sp+$36                                  ; $6970: $f8 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6972: $cf
	and  e                                           ; $6973: $a3
	adc  a                                           ; $6974: $8f
	ret  c                                           ; $6975: $d8

	inc  d                                           ; $6976: $14
	db   $ed                                         ; $6977: $ed
	rst  $10                                         ; $6978: $d7
	ld   [hl], h                                     ; $6979: $74
	ld   b, a                                        ; $697a: $47
	ei                                               ; $697b: $fb
	ld   b, [hl]                                     ; $697c: $46
	add  hl, de                                      ; $697d: $19
	ld   h, l                                        ; $697e: $65
	or   $35                                         ; $697f: $f6 $35
	ld   e, d                                        ; $6981: $5a
	ld   a, [$5f11]                                  ; $6982: $fa $11 $5f
	ret  z                                           ; $6985: $c8

	di                                               ; $6986: $f3
	sbc  e                                           ; $6987: $9b
	ld   d, [hl]                                     ; $6988: $56
	rst  $28                                         ; $6989: $ef
	ld   a, d                                        ; $698a: $7a
	inc  d                                           ; $698b: $14
	db   $eb                                         ; $698c: $eb
	rst  $30                                         ; $698d: $f7
	ld   de, $bc68                                   ; $698e: $11 $68 $bc
	ld   b, a                                        ; $6991: $47
	ld   h, $ab                                      ; $6992: $26 $ab
	ld   a, c                                        ; $6994: $79
	ld   h, d                                        ; $6995: $62
	rst  $30                                         ; $6996: $f7
	sbc  $19                                         ; $6997: $de $19
	adc  e                                           ; $6999: $8b
	db   $eb                                         ; $699a: $eb
	ld   e, d                                        ; $699b: $5a
	and  l                                           ; $699c: $a5
	ld   h, l                                        ; $699d: $65
	xor  l                                           ; $699e: $ad
	ld   d, h                                        ; $699f: $54
	ld   h, a                                        ; $69a0: $67
	push de                                          ; $69a1: $d5
	ld   [hl-], a                                    ; $69a2: $32
	adc  h                                           ; $69a3: $8c
	ld   d, e                                        ; $69a4: $53

Call_0bd_69a5:
	ld   a, [hl]                                     ; $69a5: $7e
	sbc  [hl]                                        ; $69a6: $9e
	ld   b, c                                        ; $69a7: $41
	add  h                                           ; $69a8: $84
	rst  $38                                         ; $69a9: $ff
	xor  c                                           ; $69aa: $a9
	ld   d, $eb                                      ; $69ab: $16 $eb
	ret  z                                           ; $69ad: $c8

	ld   d, l                                        ; $69ae: $55
	adc  b                                           ; $69af: $88
	cp   c                                           ; $69b0: $b9
	ld   [hl], l                                     ; $69b1: $75
	dec  sp                                          ; $69b2: $3b
	ld   b, l                                        ; $69b3: $45
	xor  c                                           ; $69b4: $a9
	or   l                                           ; $69b5: $b5

jr_0bd_69b6:
	ld   [de], a                                     ; $69b6: $12
	db   $ed                                         ; $69b7: $ed
	pop  de                                          ; $69b8: $d1
	ld   c, [hl]                                     ; $69b9: $4e
	ld   a, a                                        ; $69ba: $7f
	add  $56                                         ; $69bb: $c6 $56
	xor  c                                           ; $69bd: $a9
	db   $ec                                         ; $69be: $ec
	ld   d, l                                        ; $69bf: $55
	sbc  h                                           ; $69c0: $9c
	and  e                                           ; $69c1: $a3

jr_0bd_69c2:
	ld   e, d                                        ; $69c2: $5a
	cp   c                                           ; $69c3: $b9
	ld   de, $ca9f                                   ; $69c4: $11 $9f $ca
	ld   de, $aa76                                   ; $69c7: $11 $76 $aa
	xor  c                                           ; $69ca: $a9
	ld   d, a                                        ; $69cb: $57
	sbc  h                                           ; $69cc: $9c
	sub  $23                                         ; $69cd: $d6 $23
	adc  a                                           ; $69cf: $8f
	rst  $30                                         ; $69d0: $f7
	ld   sp, $96ad                                   ; $69d1: $31 $ad $96
	sbc  c                                           ; $69d4: $99
	add  l                                           ; $69d5: $85
	add  hl, de                                      ; $69d6: $19
	sbc  l                                           ; $69d7: $9d
	add  e                                           ; $69d8: $83
	inc  [hl]                                        ; $69d9: $34
	sbc  d                                           ; $69da: $9a
	sub  e                                           ; $69db: $93
	adc  c                                           ; $69dc: $89
	sla  d                                           ; $69dd: $cb $22
	xor  a                                           ; $69df: $af
	ld   a, e                                        ; $69e0: $7b
	and  [hl]                                        ; $69e1: $a6
	and  [hl]                                        ; $69e2: $a6
	ld   l, h                                        ; $69e3: $6c
	push de                                          ; $69e4: $d5
	add  d                                           ; $69e5: $82
	ld   l, a                                        ; $69e6: $6f
	xor  c                                           ; $69e7: $a9
	halt                                             ; $69e8: $76
	ld   e, d                                        ; $69e9: $5a
	dec  d                                           ; $69ea: $15
	cp   c                                           ; $69eb: $b9
	and  h                                           ; $69ec: $a4
	ld   h, h                                        ; $69ed: $64
	ld   e, e                                        ; $69ee: $5b
	db   $fc                                         ; $69ef: $fc
	ld   h, e                                        ; $69f0: $63
	rra                                              ; $69f1: $1f
	or   $91                                         ; $69f2: $f6 $91
	rra                                              ; $69f4: $1f
	sbc  $83                                         ; $69f5: $de $83
	ld   [hl], a                                     ; $69f7: $77
	ld   b, l                                        ; $69f8: $45
	xor  h                                           ; $69f9: $ac
	ld   sp, hl                                      ; $69fa: $f9
	inc  hl                                          ; $69fb: $23
	jr   c, jr_0bd_69b6                              ; $69fc: $38 $b8

	ld   h, l                                        ; $69fe: $65
	ld   l, d                                        ; $69ff: $6a
	ld   a, c                                        ; $6a00: $79
	or   a                                           ; $6a01: $b7
	inc  sp                                          ; $6a02: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a03: $cf
	add  $45                                         ; $6a04: $c6 $45
	xor  e                                           ; $6a06: $ab
	adc  b                                           ; $6a07: $88
	ld   [hl], a                                     ; $6a08: $77
	sbc  e                                           ; $6a09: $9b
	cp   e                                           ; $6a0a: $bb
	ld   h, d                                        ; $6a0b: $62
	inc  sp                                          ; $6a0c: $33
	call z, $56b9                                    ; $6a0d: $cc $b9 $56
	ld   b, a                                        ; $6a10: $47
	ld   a, b                                        ; $6a11: $78
	add  [hl]                                        ; $6a12: $86
	ld   a, c                                        ; $6a13: $79
	db   $db                                         ; $6a14: $db
	halt                                             ; $6a15: $76
	ld   a, d                                        ; $6a16: $7a
	ld   d, [hl]                                     ; $6a17: $56
	cp   b                                           ; $6a18: $b8
	call Call_0bd_4744                               ; $6a19: $cd $44 $47
	jp   c, $9896                                    ; $6a1c: $da $96 $98

	add  a                                           ; $6a1f: $87
	scf                                              ; $6a20: $37
	ld   a, c                                        ; $6a21: $79
	ld   a, c                                        ; $6a22: $79
	adc  c                                           ; $6a23: $89
	add  $31                                         ; $6a24: $c6 $31
	ld   e, [hl]                                     ; $6a26: $5e
	db   $fc                                         ; $6a27: $fc
	sub  d                                           ; $6a28: $92
	inc  h                                           ; $6a29: $24
	ld   c, a                                        ; $6a2a: $4f
	db   $fd                                         ; $6a2b: $fd
	ld   [hl], d                                     ; $6a2c: $72
	ld   b, [hl]                                     ; $6a2d: $46
	xor  d                                           ; $6a2e: $aa
	cp   d                                           ; $6a2f: $ba
	ld   h, h                                        ; $6a30: $64
	ld   d, a                                        ; $6a31: $57
	cp   e                                           ; $6a32: $bb
	sub  a                                           ; $6a33: $97
	ld   h, a                                        ; $6a34: $67
	ld   [hl], l                                     ; $6a35: $75
	ld   e, b                                        ; $6a36: $58
	jp   z, Jump_0bd_5674                            ; $6a37: $ca $74 $56

	cp   l                                           ; $6a3a: $bd
	ld   b, [hl]                                     ; $6a3b: $46
	ld   h, [hl]                                     ; $6a3c: $66
	db   $ed                                         ; $6a3d: $ed
	ld   h, h                                        ; $6a3e: $64
	ld   b, [hl]                                     ; $6a3f: $46
	xor  c                                           ; $6a40: $a9
	cp   b                                           ; $6a41: $b8
	ld   l, b                                        ; $6a42: $68
	ld   a, c                                        ; $6a43: $79
	sub  [hl]                                        ; $6a44: $96
	ld   a, d                                        ; $6a45: $7a
	cp   c                                           ; $6a46: $b9
	sub  a                                           ; $6a47: $97
	halt                                             ; $6a48: $76
	dec  [hl]                                        ; $6a49: $35
	sbc  e                                           ; $6a4a: $9b
	jp   z, Jump_0bd_6946                            ; $6a4b: $ca $46 $69

	ret  c                                           ; $6a4e: $d8

	ld   [hl], l                                     ; $6a4f: $75
	ld   l, e                                        ; $6a50: $6b
	sbc  b                                           ; $6a51: $98
	add  [hl]                                        ; $6a52: $86
	sbc  b                                           ; $6a53: $98
	sbc  e                                           ; $6a54: $9b
	ld   h, a                                        ; $6a55: $67
	ld   d, a                                        ; $6a56: $57
	xor  b                                           ; $6a57: $a8
	halt                                             ; $6a58: $76
	ld   a, c                                        ; $6a59: $79
	sbc  c                                           ; $6a5a: $99
	sbc  c                                           ; $6a5b: $99
	add  a                                           ; $6a5c: $87
	ld   [hl], a                                     ; $6a5d: $77
	ld   h, a                                        ; $6a5e: $67
	adc  d                                           ; $6a5f: $8a
	cp   c                                           ; $6a60: $b9
	add  l                                           ; $6a61: $85
	ld   l, d                                        ; $6a62: $6a
	adc  b                                           ; $6a63: $88
	sub  [hl]                                        ; $6a64: $96
	adc  c                                           ; $6a65: $89
	adc  b                                           ; $6a66: $88
	ld   h, a                                        ; $6a67: $67
	adc  c                                           ; $6a68: $89
	add  a                                           ; $6a69: $87
	ld   a, b                                        ; $6a6a: $78
	cp   b                                           ; $6a6b: $b8
	ld   h, a                                        ; $6a6c: $67
	sbc  c                                           ; $6a6d: $99
	add  a                                           ; $6a6e: $87
	ld   l, b                                        ; $6a6f: $68
	adc  c                                           ; $6a70: $89
	ld   a, c                                        ; $6a71: $79
	sub  l                                           ; $6a72: $95
	ld   h, [hl]                                     ; $6a73: $66
	xor  d                                           ; $6a74: $aa
	sbc  b                                           ; $6a75: $98
	adc  b                                           ; $6a76: $88
	ld   [hl], a                                     ; $6a77: $77
	sbc  d                                           ; $6a78: $9a
	ld   [hl], a                                     ; $6a79: $77
	ld   [hl], a                                     ; $6a7a: $77
	sbc  d                                           ; $6a7b: $9a
	xor  c                                           ; $6a7c: $a9
	add  [hl]                                        ; $6a7d: $86
	ld   [hl], a                                     ; $6a7e: $77
	ld   a, b                                        ; $6a7f: $78
	ld   a, c                                        ; $6a80: $79
	xor  d                                           ; $6a81: $aa
	adc  b                                           ; $6a82: $88
	ld   [hl], a                                     ; $6a83: $77
	halt                                             ; $6a84: $76
	ld   a, b                                        ; $6a85: $78
	xor  b                                           ; $6a86: $a8
	sub  [hl]                                        ; $6a87: $96
	ld   l, c                                        ; $6a88: $69
	sbc  d                                           ; $6a89: $9a
	adc  b                                           ; $6a8a: $88
	ld   h, a                                        ; $6a8b: $67
	halt                                             ; $6a8c: $76
	ld   a, c                                        ; $6a8d: $79
	xor  d                                           ; $6a8e: $aa
	sub  a                                           ; $6a8f: $97
	ld   h, a                                        ; $6a90: $67
	ld   [hl], a                                     ; $6a91: $77
	adc  c                                           ; $6a92: $89
	cp   c                                           ; $6a93: $b9
	halt                                             ; $6a94: $76
	ld   h, a                                        ; $6a95: $67
	adc  d                                           ; $6a96: $8a
	sbc  c                                           ; $6a97: $99
	sbc  c                                           ; $6a98: $99
	sbc  b                                           ; $6a99: $98
	ld   [hl], a                                     ; $6a9a: $77
	ld   a, b                                        ; $6a9b: $78
	sbc  c                                           ; $6a9c: $99
	adc  b                                           ; $6a9d: $88
	sub  a                                           ; $6a9e: $97
	ld   [hl], a                                     ; $6a9f: $77
	sbc  b                                           ; $6aa0: $98
	sub  a                                           ; $6aa1: $97
	ld   a, b                                        ; $6aa2: $78
	ld   a, b                                        ; $6aa3: $78
	ld   a, b                                        ; $6aa4: $78
	ld   a, c                                        ; $6aa5: $79
	xor  c                                           ; $6aa6: $a9
	sub  a                                           ; $6aa7: $97
	ld   a, b                                        ; $6aa8: $78
	sbc  b                                           ; $6aa9: $98
	add  a                                           ; $6aaa: $87
	ld   a, b                                        ; $6aab: $78
	ld   a, b                                        ; $6aac: $78
	sbc  c                                           ; $6aad: $99
	adc  c                                           ; $6aae: $89
	adc  c                                           ; $6aaf: $89
	adc  c                                           ; $6ab0: $89
	sub  a                                           ; $6ab1: $97
	ld   [hl], a                                     ; $6ab2: $77
	adc  b                                           ; $6ab3: $88
	sbc  b                                           ; $6ab4: $98
	adc  b                                           ; $6ab5: $88
	ld   a, c                                        ; $6ab6: $79
	adc  b                                           ; $6ab7: $88
	adc  b                                           ; $6ab8: $88
	add  a                                           ; $6ab9: $87
	ld   a, b                                        ; $6aba: $78
	sbc  b                                           ; $6abb: $98
	adc  b                                           ; $6abc: $88
	adc  b                                           ; $6abd: $88
	sbc  b                                           ; $6abe: $98
	adc  b                                           ; $6abf: $88
	adc  b                                           ; $6ac0: $88
	sbc  c                                           ; $6ac1: $99
	ld   [hl], a                                     ; $6ac2: $77
	ld   a, b                                        ; $6ac3: $78
	sbc  c                                           ; $6ac4: $99
	adc  b                                           ; $6ac5: $88
	sbc  b                                           ; $6ac6: $98
	sbc  c                                           ; $6ac7: $99
	adc  b                                           ; $6ac8: $88
	sub  a                                           ; $6ac9: $97
	ld   a, b                                        ; $6aca: $78
	adc  c                                           ; $6acb: $89
	add  a                                           ; $6acc: $87
	ld   a, b                                        ; $6acd: $78
	adc  c                                           ; $6ace: $89
	sbc  b                                           ; $6acf: $98
	adc  b                                           ; $6ad0: $88
	add  a                                           ; $6ad1: $87
	adc  b                                           ; $6ad2: $88
	adc  c                                           ; $6ad3: $89
	ld   [hl], a                                     ; $6ad4: $77
	adc  b                                           ; $6ad5: $88
	sbc  c                                           ; $6ad6: $99
	add  a                                           ; $6ad7: $87
	ld   [hl], a                                     ; $6ad8: $77
	sbc  c                                           ; $6ad9: $99
	sbc  b                                           ; $6ada: $98
	ld   [hl], a                                     ; $6adb: $77
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  c                                           ; $6ade: $89
	adc  c                                           ; $6adf: $89
	sbc  b                                           ; $6ae0: $98
	add  a                                           ; $6ae1: $87
	adc  b                                           ; $6ae2: $88
	sbc  b                                           ; $6ae3: $98
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  c                                           ; $6ae7: $89
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	ld   a, b                                        ; $6aeb: $78
	adc  b                                           ; $6aec: $88
	adc  c                                           ; $6aed: $89
	sbc  c                                           ; $6aee: $99
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	ld   a, b                                        ; $6af2: $78
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	add  a                                           ; $6af9: $87
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	adc  b                                           ; $6afe: $88
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	ld   a, b                                        ; $6b03: $78
	adc  b                                           ; $6b04: $88
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	adc  b                                           ; $6b07: $88
	adc  b                                           ; $6b08: $88
	ld   [hl], a                                     ; $6b09: $77
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

Jump_0bd_6b76:
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
	sbc  b                                           ; $6b9b: $98
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
	ld   a, b                                        ; $6baa: $78
	adc  b                                           ; $6bab: $88
	sbc  b                                           ; $6bac: $98
	adc  b                                           ; $6bad: $88
	adc  b                                           ; $6bae: $88
	adc  b                                           ; $6baf: $88
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  b                                           ; $6bb2: $88
	adc  b                                           ; $6bb3: $88
	sbc  b                                           ; $6bb4: $98
	adc  b                                           ; $6bb5: $88
	adc  b                                           ; $6bb6: $88
	adc  b                                           ; $6bb7: $88
	ld   [hl], a                                     ; $6bb8: $77
	adc  b                                           ; $6bb9: $88
	sbc  c                                           ; $6bba: $99
	adc  b                                           ; $6bbb: $88
	adc  b                                           ; $6bbc: $88
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	adc  b                                           ; $6bc0: $88
	adc  b                                           ; $6bc1: $88
	ld   a, b                                        ; $6bc2: $78
	adc  b                                           ; $6bc3: $88
	adc  b                                           ; $6bc4: $88
	adc  b                                           ; $6bc5: $88
	ld   [hl], a                                     ; $6bc6: $77
	adc  b                                           ; $6bc7: $88
	adc  b                                           ; $6bc8: $88
	adc  b                                           ; $6bc9: $88
	adc  b                                           ; $6bca: $88
	adc  b                                           ; $6bcb: $88
	ld   a, b                                        ; $6bcc: $78
	adc  b                                           ; $6bcd: $88
	sbc  b                                           ; $6bce: $98
	add  a                                           ; $6bcf: $87
	ld   a, b                                        ; $6bd0: $78
	adc  b                                           ; $6bd1: $88
	adc  b                                           ; $6bd2: $88
	adc  b                                           ; $6bd3: $88
	adc  b                                           ; $6bd4: $88
	adc  b                                           ; $6bd5: $88
	adc  b                                           ; $6bd6: $88
	adc  b                                           ; $6bd7: $88
	adc  b                                           ; $6bd8: $88
	add  a                                           ; $6bd9: $87
	adc  b                                           ; $6bda: $88
	adc  c                                           ; $6bdb: $89
	adc  b                                           ; $6bdc: $88
	adc  b                                           ; $6bdd: $88
	adc  b                                           ; $6bde: $88
	adc  b                                           ; $6bdf: $88
	adc  b                                           ; $6be0: $88
	adc  b                                           ; $6be1: $88
	adc  b                                           ; $6be2: $88
	ld   a, b                                        ; $6be3: $78
	sbc  b                                           ; $6be4: $98
	adc  b                                           ; $6be5: $88
	ld   a, b                                        ; $6be6: $78
	add  a                                           ; $6be7: $87
	adc  c                                           ; $6be8: $89
	sbc  b                                           ; $6be9: $98
	sbc  b                                           ; $6bea: $98
	add  a                                           ; $6beb: $87
	ld   a, b                                        ; $6bec: $78
	adc  b                                           ; $6bed: $88
	adc  b                                           ; $6bee: $88
	adc  b                                           ; $6bef: $88
	adc  b                                           ; $6bf0: $88
	adc  b                                           ; $6bf1: $88
	adc  b                                           ; $6bf2: $88
	adc  b                                           ; $6bf3: $88
	adc  b                                           ; $6bf4: $88
	adc  b                                           ; $6bf5: $88
	adc  b                                           ; $6bf6: $88
	adc  c                                           ; $6bf7: $89
	adc  b                                           ; $6bf8: $88
	add  a                                           ; $6bf9: $87
	adc  b                                           ; $6bfa: $88
	adc  c                                           ; $6bfb: $89
	adc  b                                           ; $6bfc: $88
	adc  b                                           ; $6bfd: $88
	sbc  b                                           ; $6bfe: $98
	ld   [hl], a                                     ; $6bff: $77
	adc  b                                           ; $6c00: $88
	adc  c                                           ; $6c01: $89
	adc  b                                           ; $6c02: $88
	sub  a                                           ; $6c03: $97
	adc  b                                           ; $6c04: $88
	adc  b                                           ; $6c05: $88
	adc  b                                           ; $6c06: $88
	sbc  b                                           ; $6c07: $98
	adc  b                                           ; $6c08: $88
	adc  b                                           ; $6c09: $88
	add  a                                           ; $6c0a: $87
	adc  b                                           ; $6c0b: $88
	adc  c                                           ; $6c0c: $89
	sbc  c                                           ; $6c0d: $99
	add  a                                           ; $6c0e: $87
	ld   a, b                                        ; $6c0f: $78
	adc  b                                           ; $6c10: $88
	adc  b                                           ; $6c11: $88
	adc  c                                           ; $6c12: $89
	add  a                                           ; $6c13: $87
	ld   a, b                                        ; $6c14: $78
	adc  b                                           ; $6c15: $88
	adc  c                                           ; $6c16: $89
	sbc  b                                           ; $6c17: $98
	adc  b                                           ; $6c18: $88
	ld   [hl], a                                     ; $6c19: $77
	adc  c                                           ; $6c1a: $89
	sbc  b                                           ; $6c1b: $98
	adc  b                                           ; $6c1c: $88
	sbc  c                                           ; $6c1d: $99
	add  a                                           ; $6c1e: $87
	ld   a, b                                        ; $6c1f: $78
	adc  c                                           ; $6c20: $89
	adc  c                                           ; $6c21: $89
	ld   [hl], a                                     ; $6c22: $77
	adc  b                                           ; $6c23: $88
	sbc  b                                           ; $6c24: $98
	adc  b                                           ; $6c25: $88
	sbc  b                                           ; $6c26: $98
	ld   a, b                                        ; $6c27: $78
	ld   a, b                                        ; $6c28: $78
	add  a                                           ; $6c29: $87
	sbc  c                                           ; $6c2a: $99
	adc  c                                           ; $6c2b: $89
	adc  b                                           ; $6c2c: $88
	adc  b                                           ; $6c2d: $88
	adc  c                                           ; $6c2e: $89
	sbc  b                                           ; $6c2f: $98
	ld   a, b                                        ; $6c30: $78
	ld   a, c                                        ; $6c31: $79
	sbc  b                                           ; $6c32: $98
	sbc  b                                           ; $6c33: $98
	adc  b                                           ; $6c34: $88
	adc  b                                           ; $6c35: $88
	ld   a, b                                        ; $6c36: $78
	adc  c                                           ; $6c37: $89
	adc  b                                           ; $6c38: $88
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	adc  b                                           ; $6c3b: $88
	ld   a, b                                        ; $6c3c: $78
	adc  b                                           ; $6c3d: $88
	sbc  b                                           ; $6c3e: $98
	ld   [hl], a                                     ; $6c3f: $77
	ld   a, b                                        ; $6c40: $78
	adc  b                                           ; $6c41: $88
	adc  b                                           ; $6c42: $88
	adc  b                                           ; $6c43: $88
	add  a                                           ; $6c44: $87
	adc  c                                           ; $6c45: $89
	ld   a, b                                        ; $6c46: $78
	sbc  b                                           ; $6c47: $98
	adc  b                                           ; $6c48: $88
	adc  b                                           ; $6c49: $88
	add  a                                           ; $6c4a: $87
	ld   a, b                                        ; $6c4b: $78
	adc  c                                           ; $6c4c: $89
	adc  b                                           ; $6c4d: $88
	adc  b                                           ; $6c4e: $88
	adc  b                                           ; $6c4f: $88
	ld   a, b                                        ; $6c50: $78
	adc  b                                           ; $6c51: $88
	adc  b                                           ; $6c52: $88
	adc  b                                           ; $6c53: $88
	ld   a, b                                        ; $6c54: $78
	sbc  b                                           ; $6c55: $98
	adc  b                                           ; $6c56: $88
	adc  b                                           ; $6c57: $88
	adc  b                                           ; $6c58: $88
	adc  b                                           ; $6c59: $88
	ld   [hl], a                                     ; $6c5a: $77
	adc  b                                           ; $6c5b: $88
	sbc  b                                           ; $6c5c: $98
	adc  b                                           ; $6c5d: $88
	adc  b                                           ; $6c5e: $88
	adc  b                                           ; $6c5f: $88
	sub  a                                           ; $6c60: $97
	adc  b                                           ; $6c61: $88
	adc  c                                           ; $6c62: $89
	add  a                                           ; $6c63: $87
	ld   a, b                                        ; $6c64: $78
	ld   a, b                                        ; $6c65: $78
	adc  c                                           ; $6c66: $89
	add  a                                           ; $6c67: $87
	ld   a, b                                        ; $6c68: $78
	adc  b                                           ; $6c69: $88
	adc  b                                           ; $6c6a: $88
	adc  b                                           ; $6c6b: $88
	sbc  b                                           ; $6c6c: $98
	adc  b                                           ; $6c6d: $88
	ld   a, b                                        ; $6c6e: $78
	ld   a, b                                        ; $6c6f: $78
	sbc  b                                           ; $6c70: $98
	add  a                                           ; $6c71: $87
	adc  b                                           ; $6c72: $88
	adc  b                                           ; $6c73: $88
	adc  c                                           ; $6c74: $89
	sbc  c                                           ; $6c75: $99
	adc  b                                           ; $6c76: $88
	adc  b                                           ; $6c77: $88
	ld   a, b                                        ; $6c78: $78
	adc  b                                           ; $6c79: $88
	sbc  c                                           ; $6c7a: $99
	sbc  b                                           ; $6c7b: $98
	ld   a, b                                        ; $6c7c: $78
	ld   [hl], a                                     ; $6c7d: $77
	sbc  b                                           ; $6c7e: $98
	adc  c                                           ; $6c7f: $89
	sbc  b                                           ; $6c80: $98
	add  a                                           ; $6c81: $87
	ld   [hl], a                                     ; $6c82: $77
	ld   a, b                                        ; $6c83: $78
	adc  c                                           ; $6c84: $89
	sbc  b                                           ; $6c85: $98
	add  a                                           ; $6c86: $87
	ld   [hl], a                                     ; $6c87: $77
	ld   a, c                                        ; $6c88: $79
	sbc  c                                           ; $6c89: $99
	adc  b                                           ; $6c8a: $88
	add  a                                           ; $6c8b: $87
	add  a                                           ; $6c8c: $87
	ld   a, b                                        ; $6c8d: $78
	adc  c                                           ; $6c8e: $89
	sbc  b                                           ; $6c8f: $98
	add  a                                           ; $6c90: $87
	ld   a, b                                        ; $6c91: $78
	sbc  b                                           ; $6c92: $98
	adc  c                                           ; $6c93: $89
	adc  b                                           ; $6c94: $88
	add  a                                           ; $6c95: $87
	add  a                                           ; $6c96: $87
	adc  c                                           ; $6c97: $89
	sbc  c                                           ; $6c98: $99
	adc  b                                           ; $6c99: $88
	ld   a, b                                        ; $6c9a: $78
	add  a                                           ; $6c9b: $87
	adc  c                                           ; $6c9c: $89
	sbc  c                                           ; $6c9d: $99
	adc  b                                           ; $6c9e: $88
	adc  b                                           ; $6c9f: $88
	ld   a, b                                        ; $6ca0: $78
	sbc  b                                           ; $6ca1: $98
	adc  c                                           ; $6ca2: $89
	add  a                                           ; $6ca3: $87
	ld   [hl], a                                     ; $6ca4: $77
	sbc  c                                           ; $6ca5: $99
	ld   [hl], a                                     ; $6ca6: $77
	ld   a, b                                        ; $6ca7: $78
	adc  b                                           ; $6ca8: $88
	ld   [hl], a                                     ; $6ca9: $77
	add  a                                           ; $6caa: $87
	adc  c                                           ; $6cab: $89
	adc  c                                           ; $6cac: $89
	sub  a                                           ; $6cad: $97
	ld   a, b                                        ; $6cae: $78
	adc  b                                           ; $6caf: $88
	sbc  b                                           ; $6cb0: $98
	add  a                                           ; $6cb1: $87
	ld   a, b                                        ; $6cb2: $78
	sbc  c                                           ; $6cb3: $99
	ld   [hl], a                                     ; $6cb4: $77
	ld   a, b                                        ; $6cb5: $78
	adc  b                                           ; $6cb6: $88
	adc  b                                           ; $6cb7: $88
	adc  b                                           ; $6cb8: $88
	sbc  c                                           ; $6cb9: $99
	add  a                                           ; $6cba: $87
	adc  c                                           ; $6cbb: $89
	adc  b                                           ; $6cbc: $88
	add  a                                           ; $6cbd: $87
	adc  b                                           ; $6cbe: $88
	adc  c                                           ; $6cbf: $89
	sbc  b                                           ; $6cc0: $98
	adc  b                                           ; $6cc1: $88
	adc  b                                           ; $6cc2: $88
	adc  b                                           ; $6cc3: $88
	adc  b                                           ; $6cc4: $88
	adc  b                                           ; $6cc5: $88
	add  a                                           ; $6cc6: $87
	add  a                                           ; $6cc7: $87
	sbc  b                                           ; $6cc8: $98
	adc  b                                           ; $6cc9: $88
	add  a                                           ; $6cca: $87
	adc  b                                           ; $6ccb: $88
	adc  b                                           ; $6ccc: $88
	add  a                                           ; $6ccd: $87
	ld   a, c                                        ; $6cce: $79
	adc  b                                           ; $6ccf: $88
	add  a                                           ; $6cd0: $87
	adc  b                                           ; $6cd1: $88
	sbc  c                                           ; $6cd2: $99
	ld   [hl], a                                     ; $6cd3: $77
	ld   a, b                                        ; $6cd4: $78
	sbc  b                                           ; $6cd5: $98
	adc  b                                           ; $6cd6: $88
	sbc  b                                           ; $6cd7: $98
	adc  b                                           ; $6cd8: $88
	ld   a, b                                        ; $6cd9: $78
	sbc  c                                           ; $6cda: $99
	add  a                                           ; $6cdb: $87
	adc  c                                           ; $6cdc: $89
	adc  b                                           ; $6cdd: $88
	adc  b                                           ; $6cde: $88
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	add  a                                           ; $6ce1: $87
	ld   a, b                                        ; $6ce2: $78
	adc  b                                           ; $6ce3: $88
	sub  [hl]                                        ; $6ce4: $96
	ld   a, b                                        ; $6ce5: $78
	sbc  c                                           ; $6ce6: $99
	ld   [hl], a                                     ; $6ce7: $77
	adc  c                                           ; $6ce8: $89
	adc  b                                           ; $6ce9: $88
	adc  b                                           ; $6cea: $88
	adc  b                                           ; $6ceb: $88
	ld   a, b                                        ; $6cec: $78
	add  a                                           ; $6ced: $87
	add  a                                           ; $6cee: $87
	adc  c                                           ; $6cef: $89
	ld   a, c                                        ; $6cf0: $79
	sub  a                                           ; $6cf1: $97
	adc  b                                           ; $6cf2: $88
	adc  c                                           ; $6cf3: $89
	add  a                                           ; $6cf4: $87
	adc  c                                           ; $6cf5: $89
	adc  c                                           ; $6cf6: $89
	ld   [hl], a                                     ; $6cf7: $77
	sbc  b                                           ; $6cf8: $98
	adc  b                                           ; $6cf9: $88
	adc  b                                           ; $6cfa: $88
	sbc  b                                           ; $6cfb: $98
	sbc  b                                           ; $6cfc: $98
	ld   a, b                                        ; $6cfd: $78
	sbc  b                                           ; $6cfe: $98
	sbc  b                                           ; $6cff: $98
	adc  c                                           ; $6d00: $89
	sub  a                                           ; $6d01: $97
	ld   [hl], a                                     ; $6d02: $77
	adc  b                                           ; $6d03: $88
	sbc  b                                           ; $6d04: $98
	sbc  c                                           ; $6d05: $99
	ld   a, b                                        ; $6d06: $78
	adc  b                                           ; $6d07: $88
	adc  b                                           ; $6d08: $88
	adc  c                                           ; $6d09: $89
	sub  a                                           ; $6d0a: $97
	adc  b                                           ; $6d0b: $88
	adc  b                                           ; $6d0c: $88
	ld   [hl], a                                     ; $6d0d: $77
	adc  b                                           ; $6d0e: $88
	adc  b                                           ; $6d0f: $88
	ld   a, b                                        ; $6d10: $78
	adc  b                                           ; $6d11: $88
	adc  b                                           ; $6d12: $88
	adc  c                                           ; $6d13: $89
	sub  a                                           ; $6d14: $97
	add  a                                           ; $6d15: $87
	adc  b                                           ; $6d16: $88
	adc  b                                           ; $6d17: $88
	ld   a, b                                        ; $6d18: $78
	add  a                                           ; $6d19: $87
	adc  b                                           ; $6d1a: $88
	sbc  b                                           ; $6d1b: $98
	adc  b                                           ; $6d1c: $88
	sbc  b                                           ; $6d1d: $98
	adc  b                                           ; $6d1e: $88
	adc  b                                           ; $6d1f: $88
	adc  b                                           ; $6d20: $88
	adc  c                                           ; $6d21: $89
	add  a                                           ; $6d22: $87
	add  a                                           ; $6d23: $87
	adc  c                                           ; $6d24: $89
	adc  b                                           ; $6d25: $88
	sub  a                                           ; $6d26: $97
	sbc  c                                           ; $6d27: $99
	adc  b                                           ; $6d28: $88
	sbc  b                                           ; $6d29: $98
	adc  c                                           ; $6d2a: $89
	adc  c                                           ; $6d2b: $89
	adc  b                                           ; $6d2c: $88
	adc  b                                           ; $6d2d: $88
	adc  c                                           ; $6d2e: $89
	adc  b                                           ; $6d2f: $88
	add  a                                           ; $6d30: $87
	adc  c                                           ; $6d31: $89
	sbc  b                                           ; $6d32: $98
	ld   [hl], a                                     ; $6d33: $77
	sbc  c                                           ; $6d34: $99
	adc  b                                           ; $6d35: $88
	ld   a, b                                        ; $6d36: $78
	sbc  b                                           ; $6d37: $98
	ld   [hl], a                                     ; $6d38: $77
	ld   a, c                                        ; $6d39: $79
	sub  a                                           ; $6d3a: $97
	adc  b                                           ; $6d3b: $88
	adc  c                                           ; $6d3c: $89
	sbc  b                                           ; $6d3d: $98
	ld   a, b                                        ; $6d3e: $78
	sbc  b                                           ; $6d3f: $98
	sub  a                                           ; $6d40: $97
	adc  b                                           ; $6d41: $88
	sbc  c                                           ; $6d42: $99
	adc  b                                           ; $6d43: $88
	ld   a, b                                        ; $6d44: $78
	add  a                                           ; $6d45: $87
	adc  c                                           ; $6d46: $89
	adc  c                                           ; $6d47: $89
	add  a                                           ; $6d48: $87
	sbc  b                                           ; $6d49: $98
	adc  c                                           ; $6d4a: $89
	ld   [hl], a                                     ; $6d4b: $77
	adc  c                                           ; $6d4c: $89
	adc  c                                           ; $6d4d: $89
	ld   [hl], a                                     ; $6d4e: $77
	adc  c                                           ; $6d4f: $89
	sbc  b                                           ; $6d50: $98
	add  a                                           ; $6d51: $87
	adc  b                                           ; $6d52: $88
	sbc  b                                           ; $6d53: $98
	ld   [hl], a                                     ; $6d54: $77
	adc  b                                           ; $6d55: $88
	sbc  b                                           ; $6d56: $98
	adc  b                                           ; $6d57: $88
	adc  b                                           ; $6d58: $88
	adc  c                                           ; $6d59: $89
	adc  b                                           ; $6d5a: $88
	ld   [hl], a                                     ; $6d5b: $77
	adc  c                                           ; $6d5c: $89
	sbc  b                                           ; $6d5d: $98
	adc  b                                           ; $6d5e: $88
	ld   a, b                                        ; $6d5f: $78
	sbc  b                                           ; $6d60: $98
	add  a                                           ; $6d61: $87
	ld   a, c                                        ; $6d62: $79
	adc  b                                           ; $6d63: $88
	adc  b                                           ; $6d64: $88
	adc  b                                           ; $6d65: $88
	adc  b                                           ; $6d66: $88
	sbc  b                                           ; $6d67: $98
	ld   a, b                                        ; $6d68: $78
	adc  c                                           ; $6d69: $89
	add  a                                           ; $6d6a: $87
	adc  c                                           ; $6d6b: $89
	sbc  b                                           ; $6d6c: $98
	adc  b                                           ; $6d6d: $88
	adc  b                                           ; $6d6e: $88
	ld   [hl], a                                     ; $6d6f: $77
	adc  b                                           ; $6d70: $88
	sbc  c                                           ; $6d71: $99
	sbc  b                                           ; $6d72: $98
	ld   [hl], a                                     ; $6d73: $77
	adc  b                                           ; $6d74: $88
	adc  b                                           ; $6d75: $88
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	ld   a, b                                        ; $6d78: $78
	add  a                                           ; $6d79: $87
	adc  b                                           ; $6d7a: $88
	sbc  c                                           ; $6d7b: $99
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
	ld   a, c                                        ; $6d87: $79
	adc  b                                           ; $6d88: $88
	ld   [hl], a                                     ; $6d89: $77
	adc  c                                           ; $6d8a: $89
	adc  b                                           ; $6d8b: $88
	add  a                                           ; $6d8c: $87
	adc  b                                           ; $6d8d: $88
	sbc  b                                           ; $6d8e: $98
	adc  c                                           ; $6d8f: $89
	add  a                                           ; $6d90: $87
	adc  b                                           ; $6d91: $88
	adc  c                                           ; $6d92: $89
	adc  b                                           ; $6d93: $88
	adc  b                                           ; $6d94: $88
	ld   a, b                                        ; $6d95: $78
	sbc  b                                           ; $6d96: $98
	adc  b                                           ; $6d97: $88
	adc  c                                           ; $6d98: $89
	sub  a                                           ; $6d99: $97
	adc  c                                           ; $6d9a: $89
	adc  b                                           ; $6d9b: $88
	ld   [hl], a                                     ; $6d9c: $77
	sbc  b                                           ; $6d9d: $98
	adc  b                                           ; $6d9e: $88
	adc  b                                           ; $6d9f: $88
	add  a                                           ; $6da0: $87
	adc  b                                           ; $6da1: $88
	ld   a, b                                        ; $6da2: $78
	adc  b                                           ; $6da3: $88
	sbc  c                                           ; $6da4: $99
	ld   a, b                                        ; $6da5: $78
	adc  b                                           ; $6da6: $88
	adc  b                                           ; $6da7: $88
	adc  b                                           ; $6da8: $88
	add  a                                           ; $6da9: $87
	adc  b                                           ; $6daa: $88
	adc  b                                           ; $6dab: $88
	ld   [hl], a                                     ; $6dac: $77
	adc  c                                           ; $6dad: $89
	adc  b                                           ; $6dae: $88
	sbc  b                                           ; $6daf: $98
	ld   a, b                                        ; $6db0: $78
	ld   a, b                                        ; $6db1: $78
	add  a                                           ; $6db2: $87
	sbc  c                                           ; $6db3: $99
	adc  b                                           ; $6db4: $88
	ld   [hl], a                                     ; $6db5: $77
	adc  b                                           ; $6db6: $88
	adc  b                                           ; $6db7: $88
	adc  c                                           ; $6db8: $89
	adc  b                                           ; $6db9: $88
	adc  b                                           ; $6dba: $88
	adc  b                                           ; $6dbb: $88
	adc  b                                           ; $6dbc: $88
	adc  c                                           ; $6dbd: $89
	adc  b                                           ; $6dbe: $88
	adc  b                                           ; $6dbf: $88
	add  a                                           ; $6dc0: $87
	adc  b                                           ; $6dc1: $88
	adc  b                                           ; $6dc2: $88
	adc  b                                           ; $6dc3: $88
	adc  b                                           ; $6dc4: $88
	adc  b                                           ; $6dc5: $88
	adc  b                                           ; $6dc6: $88
	add  a                                           ; $6dc7: $87
	sbc  b                                           ; $6dc8: $98
	adc  c                                           ; $6dc9: $89
	adc  b                                           ; $6dca: $88
	ld   [hl], a                                     ; $6dcb: $77
	add  a                                           ; $6dcc: $87
	ld   a, b                                        ; $6dcd: $78
	sbc  b                                           ; $6dce: $98
	adc  b                                           ; $6dcf: $88
	ld   a, b                                        ; $6dd0: $78
	sbc  b                                           ; $6dd1: $98
	add  a                                           ; $6dd2: $87
	ld   a, b                                        ; $6dd3: $78
	sbc  b                                           ; $6dd4: $98
	adc  b                                           ; $6dd5: $88
	ld   a, b                                        ; $6dd6: $78
	adc  b                                           ; $6dd7: $88
	adc  b                                           ; $6dd8: $88
	sbc  b                                           ; $6dd9: $98
	adc  b                                           ; $6dda: $88
	adc  b                                           ; $6ddb: $88
	adc  b                                           ; $6ddc: $88
	adc  b                                           ; $6ddd: $88
	adc  b                                           ; $6dde: $88
	adc  b                                           ; $6ddf: $88
	adc  b                                           ; $6de0: $88
	sbc  b                                           ; $6de1: $98
	adc  b                                           ; $6de2: $88
	ld   [hl], a                                     ; $6de3: $77
	add  a                                           ; $6de4: $87
	adc  c                                           ; $6de5: $89
	ld   a, b                                        ; $6de6: $78
	sbc  b                                           ; $6de7: $98
	sbc  b                                           ; $6de8: $98
	ld   [hl], a                                     ; $6de9: $77
	sbc  b                                           ; $6dea: $98
	sbc  b                                           ; $6deb: $98
	ld   a, c                                        ; $6dec: $79
	sbc  b                                           ; $6ded: $98
	ld   [hl], a                                     ; $6dee: $77
	ld   a, b                                        ; $6def: $78
	adc  b                                           ; $6df0: $88
	sub  a                                           ; $6df1: $97
	ld   a, c                                        ; $6df2: $79
	sub  a                                           ; $6df3: $97
	add  a                                           ; $6df4: $87
	adc  c                                           ; $6df5: $89
	adc  b                                           ; $6df6: $88
	adc  b                                           ; $6df7: $88
	sbc  c                                           ; $6df8: $99
	ld   a, b                                        ; $6df9: $78
	adc  b                                           ; $6dfa: $88
	adc  b                                           ; $6dfb: $88
	adc  c                                           ; $6dfc: $89
	adc  b                                           ; $6dfd: $88
	sbc  b                                           ; $6dfe: $98
	add  a                                           ; $6dff: $87
	ld   a, b                                        ; $6e00: $78
	sbc  b                                           ; $6e01: $98
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	sub  a                                           ; $6e04: $97
	ld   a, b                                        ; $6e05: $78
	adc  b                                           ; $6e06: $88
	adc  b                                           ; $6e07: $88
	sbc  b                                           ; $6e08: $98
	adc  b                                           ; $6e09: $88
	add  a                                           ; $6e0a: $87
	ld   a, b                                        ; $6e0b: $78
	adc  b                                           ; $6e0c: $88
	sub  a                                           ; $6e0d: $97
	adc  c                                           ; $6e0e: $89
	adc  b                                           ; $6e0f: $88
	ld   [hl], a                                     ; $6e10: $77
	sbc  b                                           ; $6e11: $98
	adc  c                                           ; $6e12: $89
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	adc  b                                           ; $6e15: $88
	adc  c                                           ; $6e16: $89
	adc  b                                           ; $6e17: $88
	ld   [hl], a                                     ; $6e18: $77
	adc  b                                           ; $6e19: $88
	sbc  b                                           ; $6e1a: $98
	adc  c                                           ; $6e1b: $89
	adc  b                                           ; $6e1c: $88
	add  a                                           ; $6e1d: $87
	adc  b                                           ; $6e1e: $88
	adc  b                                           ; $6e1f: $88
	adc  b                                           ; $6e20: $88
	adc  b                                           ; $6e21: $88
	adc  b                                           ; $6e22: $88
	adc  b                                           ; $6e23: $88
	adc  b                                           ; $6e24: $88
	sbc  b                                           ; $6e25: $98
	adc  b                                           ; $6e26: $88
	adc  b                                           ; $6e27: $88
	adc  b                                           ; $6e28: $88
	adc  b                                           ; $6e29: $88
	adc  b                                           ; $6e2a: $88
	adc  b                                           ; $6e2b: $88
	add  a                                           ; $6e2c: $87
	adc  b                                           ; $6e2d: $88
	sbc  b                                           ; $6e2e: $98
	ld   a, b                                        ; $6e2f: $78
	adc  b                                           ; $6e30: $88
	adc  b                                           ; $6e31: $88
	adc  b                                           ; $6e32: $88
	sbc  b                                           ; $6e33: $98
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	adc  b                                           ; $6e36: $88
	adc  c                                           ; $6e37: $89
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	ld   a, b                                        ; $6e3b: $78
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
	add  a                                           ; $6e4a: $87
	adc  b                                           ; $6e4b: $88
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  b                                           ; $6e4f: $88
	adc  c                                           ; $6e50: $89
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	add  a                                           ; $6e53: $87
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  c                                           ; $6e56: $89
	adc  b                                           ; $6e57: $88
	add  a                                           ; $6e58: $87
	adc  b                                           ; $6e59: $88
	adc  b                                           ; $6e5a: $88
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	adc  b                                           ; $6e5d: $88
	adc  b                                           ; $6e5e: $88
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  c                                           ; $6e61: $89
	adc  b                                           ; $6e62: $88
	ld   [hl], a                                     ; $6e63: $77
	adc  b                                           ; $6e64: $88
	adc  b                                           ; $6e65: $88
	ld   a, c                                        ; $6e66: $79
	adc  b                                           ; $6e67: $88
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  b                                           ; $6e6f: $88
	adc  b                                           ; $6e70: $88
	adc  b                                           ; $6e71: $88
	adc  b                                           ; $6e72: $88
	add  a                                           ; $6e73: $87
	adc  b                                           ; $6e74: $88
	adc  b                                           ; $6e75: $88
	adc  b                                           ; $6e76: $88
	sbc  b                                           ; $6e77: $98
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	adc  b                                           ; $6e7b: $88
	sbc  b                                           ; $6e7c: $98
	adc  b                                           ; $6e7d: $88
	adc  b                                           ; $6e7e: $88
	adc  b                                           ; $6e7f: $88
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	adc  b                                           ; $6e82: $88
	adc  b                                           ; $6e83: $88
	adc  b                                           ; $6e84: $88
	adc  b                                           ; $6e85: $88
	adc  b                                           ; $6e86: $88
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	adc  b                                           ; $6e89: $88
	add  a                                           ; $6e8a: $87
	adc  b                                           ; $6e8b: $88
	adc  b                                           ; $6e8c: $88
	adc  b                                           ; $6e8d: $88
	adc  b                                           ; $6e8e: $88
	adc  b                                           ; $6e8f: $88
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	adc  b                                           ; $6e92: $88
	add  a                                           ; $6e93: $87
	adc  b                                           ; $6e94: $88
	adc  b                                           ; $6e95: $88
	adc  b                                           ; $6e96: $88
	adc  b                                           ; $6e97: $88
	adc  b                                           ; $6e98: $88
	adc  b                                           ; $6e99: $88
	adc  b                                           ; $6e9a: $88
	adc  b                                           ; $6e9b: $88
	adc  b                                           ; $6e9c: $88
	adc  b                                           ; $6e9d: $88
	adc  b                                           ; $6e9e: $88
	ld   a, b                                        ; $6e9f: $78
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  b                                           ; $6eaa: $88
	adc  c                                           ; $6eab: $89
	adc  b                                           ; $6eac: $88
	adc  b                                           ; $6ead: $88
	adc  b                                           ; $6eae: $88
	adc  b                                           ; $6eaf: $88
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	adc  b                                           ; $6eb5: $88
	adc  b                                           ; $6eb6: $88
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	sbc  b                                           ; $6ebc: $98
	adc  b                                           ; $6ebd: $88
	adc  b                                           ; $6ebe: $88
	adc  b                                           ; $6ebf: $88
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	adc  b                                           ; $6ec2: $88
	adc  b                                           ; $6ec3: $88
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  b                                           ; $6ec8: $88
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	adc  b                                           ; $6ecb: $88
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	sbc  b                                           ; $6ed0: $98
	adc  b                                           ; $6ed1: $88
	adc  b                                           ; $6ed2: $88
	adc  b                                           ; $6ed3: $88
	adc  b                                           ; $6ed4: $88
	sbc  c                                           ; $6ed5: $99
	sbc  b                                           ; $6ed6: $98
	adc  b                                           ; $6ed7: $88
	ld   a, b                                        ; $6ed8: $78
	adc  b                                           ; $6ed9: $88
	adc  b                                           ; $6eda: $88
	adc  b                                           ; $6edb: $88
	adc  b                                           ; $6edc: $88
	adc  b                                           ; $6edd: $88
	adc  b                                           ; $6ede: $88
	adc  b                                           ; $6edf: $88
	sbc  c                                           ; $6ee0: $99
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	adc  b                                           ; $6ee7: $88
	adc  b                                           ; $6ee8: $88
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	adc  b                                           ; $6eee: $88
	adc  b                                           ; $6eef: $88
	adc  b                                           ; $6ef0: $88
	adc  b                                           ; $6ef1: $88
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	adc  b                                           ; $6ef5: $88
	adc  b                                           ; $6ef6: $88
	adc  b                                           ; $6ef7: $88
	adc  b                                           ; $6ef8: $88
	adc  b                                           ; $6ef9: $88
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	adc  b                                           ; $6efc: $88
	adc  b                                           ; $6efd: $88
	adc  b                                           ; $6efe: $88
	adc  b                                           ; $6eff: $88
	adc  b                                           ; $6f00: $88
	adc  b                                           ; $6f01: $88
	adc  b                                           ; $6f02: $88
	adc  b                                           ; $6f03: $88
	adc  b                                           ; $6f04: $88
	adc  b                                           ; $6f05: $88
	adc  b                                           ; $6f06: $88
	adc  b                                           ; $6f07: $88
	adc  b                                           ; $6f08: $88
	adc  b                                           ; $6f09: $88
	adc  b                                           ; $6f0a: $88
	adc  b                                           ; $6f0b: $88
	adc  b                                           ; $6f0c: $88
	adc  b                                           ; $6f0d: $88
	adc  b                                           ; $6f0e: $88
	adc  b                                           ; $6f0f: $88
	adc  b                                           ; $6f10: $88
	adc  b                                           ; $6f11: $88
	adc  b                                           ; $6f12: $88
	adc  b                                           ; $6f13: $88
	adc  b                                           ; $6f14: $88
	adc  b                                           ; $6f15: $88
	adc  b                                           ; $6f16: $88
	adc  b                                           ; $6f17: $88
	adc  b                                           ; $6f18: $88
	adc  b                                           ; $6f19: $88
	adc  b                                           ; $6f1a: $88
	adc  b                                           ; $6f1b: $88
	adc  b                                           ; $6f1c: $88
	adc  b                                           ; $6f1d: $88
	adc  b                                           ; $6f1e: $88
	adc  b                                           ; $6f1f: $88
	adc  b                                           ; $6f20: $88
	adc  b                                           ; $6f21: $88
	adc  b                                           ; $6f22: $88
	adc  b                                           ; $6f23: $88
	adc  b                                           ; $6f24: $88
	adc  b                                           ; $6f25: $88
	adc  b                                           ; $6f26: $88
	adc  b                                           ; $6f27: $88
	adc  b                                           ; $6f28: $88
	adc  b                                           ; $6f29: $88
	adc  b                                           ; $6f2a: $88
	adc  b                                           ; $6f2b: $88
	adc  b                                           ; $6f2c: $88
	adc  b                                           ; $6f2d: $88
	adc  b                                           ; $6f2e: $88
	adc  b                                           ; $6f2f: $88
	adc  b                                           ; $6f30: $88
	adc  b                                           ; $6f31: $88
	adc  b                                           ; $6f32: $88
	adc  b                                           ; $6f33: $88
	adc  b                                           ; $6f34: $88
	adc  b                                           ; $6f35: $88
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
	adc  b                                           ; $6f4a: $88
	adc  b                                           ; $6f4b: $88
	adc  b                                           ; $6f4c: $88
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	adc  b                                           ; $6f4f: $88
	adc  b                                           ; $6f50: $88
	adc  b                                           ; $6f51: $88
	adc  b                                           ; $6f52: $88
	adc  b                                           ; $6f53: $88
	adc  b                                           ; $6f54: $88
	adc  b                                           ; $6f55: $88
	adc  b                                           ; $6f56: $88
	adc  b                                           ; $6f57: $88
	adc  b                                           ; $6f58: $88
	adc  b                                           ; $6f59: $88
	adc  b                                           ; $6f5a: $88
	adc  b                                           ; $6f5b: $88
	adc  b                                           ; $6f5c: $88
	adc  b                                           ; $6f5d: $88
	adc  b                                           ; $6f5e: $88
	adc  b                                           ; $6f5f: $88
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
	adc  b                                           ; $6f72: $88
	adc  b                                           ; $6f73: $88
	adc  b                                           ; $6f74: $88
	adc  b                                           ; $6f75: $88
	adc  b                                           ; $6f76: $88
	adc  b                                           ; $6f77: $88
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
	adc  b                                           ; $6f9d: $88
	adc  b                                           ; $6f9e: $88
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
	adc  b                                           ; $7083: $88
	adc  b                                           ; $7084: $88
	adc  b                                           ; $7085: $88
	adc  b                                           ; $7086: $88
	adc  b                                           ; $7087: $88
	adc  b                                           ; $7088: $88
	adc  b                                           ; $7089: $88
	adc  b                                           ; $708a: $88
	adc  b                                           ; $708b: $88
	adc  b                                           ; $708c: $88
	adc  b                                           ; $708d: $88
	adc  b                                           ; $708e: $88
	adc  b                                           ; $708f: $88
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	adc  b                                           ; $7092: $88
	adc  b                                           ; $7093: $88
	adc  b                                           ; $7094: $88
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	adc  b                                           ; $7099: $88
	adc  b                                           ; $709a: $88
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	adc  b                                           ; $709e: $88
	adc  b                                           ; $709f: $88
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	adc  b                                           ; $70a2: $88
	adc  b                                           ; $70a3: $88
	adc  b                                           ; $70a4: $88
	adc  b                                           ; $70a5: $88
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	adc  b                                           ; $70ad: $88
	adc  b                                           ; $70ae: $88
	adc  b                                           ; $70af: $88
	adc  b                                           ; $70b0: $88
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  b                                           ; $70b6: $88
	adc  b                                           ; $70b7: $88
	adc  b                                           ; $70b8: $88
	adc  b                                           ; $70b9: $88
	adc  b                                           ; $70ba: $88
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	adc  b                                           ; $70be: $88
	adc  b                                           ; $70bf: $88
	adc  b                                           ; $70c0: $88
	adc  b                                           ; $70c1: $88
	adc  b                                           ; $70c2: $88
	adc  b                                           ; $70c3: $88
	adc  b                                           ; $70c4: $88
	adc  b                                           ; $70c5: $88
	adc  b                                           ; $70c6: $88
	adc  b                                           ; $70c7: $88
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	adc  b                                           ; $70cd: $88
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	adc  b                                           ; $70d2: $88
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	adc  b                                           ; $70d6: $88
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	adc  b                                           ; $70d9: $88
	adc  b                                           ; $70da: $88
	adc  b                                           ; $70db: $88
	adc  b                                           ; $70dc: $88
	adc  b                                           ; $70dd: $88
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	adc  b                                           ; $70e0: $88
	adc  b                                           ; $70e1: $88
	adc  b                                           ; $70e2: $88
	adc  b                                           ; $70e3: $88
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	adc  b                                           ; $70ea: $88
	adc  b                                           ; $70eb: $88
	adc  b                                           ; $70ec: $88
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	adc  b                                           ; $70f0: $88
	adc  b                                           ; $70f1: $88
	adc  b                                           ; $70f2: $88
	adc  b                                           ; $70f3: $88
	adc  b                                           ; $70f4: $88
	adc  b                                           ; $70f5: $88
	adc  b                                           ; $70f6: $88
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	adc  b                                           ; $70fa: $88
	adc  b                                           ; $70fb: $88
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	adc  b                                           ; $7103: $88
	adc  b                                           ; $7104: $88
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  b                                           ; $710b: $88
	adc  b                                           ; $710c: $88
	adc  b                                           ; $710d: $88
	adc  b                                           ; $710e: $88
	adc  b                                           ; $710f: $88
	adc  b                                           ; $7110: $88
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	adc  b                                           ; $7116: $88
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  b                                           ; $7119: $88
	adc  b                                           ; $711a: $88
	adc  b                                           ; $711b: $88
	adc  b                                           ; $711c: $88
	adc  b                                           ; $711d: $88
	adc  b                                           ; $711e: $88
	adc  b                                           ; $711f: $88
	adc  b                                           ; $7120: $88
	adc  b                                           ; $7121: $88
	adc  b                                           ; $7122: $88
	adc  b                                           ; $7123: $88
	adc  b                                           ; $7124: $88
	adc  b                                           ; $7125: $88
	adc  b                                           ; $7126: $88
	adc  b                                           ; $7127: $88
	adc  b                                           ; $7128: $88
	adc  b                                           ; $7129: $88
	adc  b                                           ; $712a: $88
	adc  b                                           ; $712b: $88
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	adc  b                                           ; $712e: $88
	adc  b                                           ; $712f: $88
	adc  b                                           ; $7130: $88
	adc  b                                           ; $7131: $88
	adc  b                                           ; $7132: $88
	adc  b                                           ; $7133: $88
	adc  b                                           ; $7134: $88
	adc  b                                           ; $7135: $88
	adc  b                                           ; $7136: $88
	adc  b                                           ; $7137: $88
	adc  b                                           ; $7138: $88
	adc  b                                           ; $7139: $88
	adc  b                                           ; $713a: $88
	adc  b                                           ; $713b: $88
	adc  b                                           ; $713c: $88
	adc  b                                           ; $713d: $88
	adc  b                                           ; $713e: $88
	adc  b                                           ; $713f: $88
	adc  b                                           ; $7140: $88
	adc  b                                           ; $7141: $88
	adc  b                                           ; $7142: $88
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	adc  b                                           ; $714d: $88
	adc  b                                           ; $714e: $88
	adc  b                                           ; $714f: $88
	adc  b                                           ; $7150: $88
	adc  b                                           ; $7151: $88
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	adc  b                                           ; $7157: $88
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  b                                           ; $715c: $88
	adc  b                                           ; $715d: $88
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	adc  b                                           ; $7166: $88
	adc  b                                           ; $7167: $88
	adc  b                                           ; $7168: $88
	adc  b                                           ; $7169: $88
	adc  b                                           ; $716a: $88
	adc  b                                           ; $716b: $88
	adc  b                                           ; $716c: $88
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	adc  b                                           ; $7171: $88
	adc  b                                           ; $7172: $88
	adc  b                                           ; $7173: $88
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	adc  b                                           ; $7179: $88
	adc  b                                           ; $717a: $88
	adc  b                                           ; $717b: $88
	adc  b                                           ; $717c: $88
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  b                                           ; $7180: $88
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	adc  b                                           ; $7184: $88
	adc  b                                           ; $7185: $88
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	adc  b                                           ; $718b: $88
	adc  b                                           ; $718c: $88
	adc  b                                           ; $718d: $88
	adc  b                                           ; $718e: $88
	adc  b                                           ; $718f: $88
	adc  b                                           ; $7190: $88
	adc  b                                           ; $7191: $88
	adc  b                                           ; $7192: $88
	adc  b                                           ; $7193: $88
	adc  b                                           ; $7194: $88
	adc  b                                           ; $7195: $88
	adc  b                                           ; $7196: $88
	adc  b                                           ; $7197: $88
	adc  b                                           ; $7198: $88
	adc  b                                           ; $7199: $88
	adc  b                                           ; $719a: $88
	adc  b                                           ; $719b: $88
	adc  b                                           ; $719c: $88
	adc  b                                           ; $719d: $88
	adc  b                                           ; $719e: $88
	adc  b                                           ; $719f: $88
	adc  b                                           ; $71a0: $88
	adc  b                                           ; $71a1: $88
	adc  b                                           ; $71a2: $88
	adc  b                                           ; $71a3: $88
	adc  b                                           ; $71a4: $88
	adc  b                                           ; $71a5: $88
	adc  b                                           ; $71a6: $88
	adc  b                                           ; $71a7: $88
	adc  b                                           ; $71a8: $88
	adc  b                                           ; $71a9: $88
	adc  b                                           ; $71aa: $88
	adc  b                                           ; $71ab: $88
	adc  b                                           ; $71ac: $88
	adc  b                                           ; $71ad: $88
	adc  b                                           ; $71ae: $88
	adc  b                                           ; $71af: $88
	adc  b                                           ; $71b0: $88
	adc  b                                           ; $71b1: $88
	adc  b                                           ; $71b2: $88
	adc  b                                           ; $71b3: $88
	adc  b                                           ; $71b4: $88
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	adc  b                                           ; $71b7: $88
	adc  b                                           ; $71b8: $88
	adc  b                                           ; $71b9: $88
	adc  b                                           ; $71ba: $88
	adc  b                                           ; $71bb: $88
	adc  b                                           ; $71bc: $88
	adc  b                                           ; $71bd: $88
	adc  b                                           ; $71be: $88
	adc  b                                           ; $71bf: $88
	adc  b                                           ; $71c0: $88
	adc  b                                           ; $71c1: $88
	adc  b                                           ; $71c2: $88
	adc  b                                           ; $71c3: $88
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	adc  b                                           ; $71c6: $88
	adc  b                                           ; $71c7: $88
	adc  b                                           ; $71c8: $88
	adc  b                                           ; $71c9: $88
	adc  b                                           ; $71ca: $88
	adc  b                                           ; $71cb: $88
	adc  b                                           ; $71cc: $88
	adc  b                                           ; $71cd: $88
	adc  b                                           ; $71ce: $88
	adc  b                                           ; $71cf: $88
	adc  b                                           ; $71d0: $88
	adc  b                                           ; $71d1: $88
	adc  b                                           ; $71d2: $88
	adc  b                                           ; $71d3: $88
	adc  b                                           ; $71d4: $88
	adc  b                                           ; $71d5: $88
	adc  b                                           ; $71d6: $88
	adc  b                                           ; $71d7: $88
	adc  b                                           ; $71d8: $88
	adc  b                                           ; $71d9: $88
	adc  b                                           ; $71da: $88
	adc  b                                           ; $71db: $88
	adc  b                                           ; $71dc: $88
	adc  b                                           ; $71dd: $88
	adc  b                                           ; $71de: $88
	adc  b                                           ; $71df: $88
	adc  b                                           ; $71e0: $88
	adc  b                                           ; $71e1: $88
	adc  b                                           ; $71e2: $88
	adc  b                                           ; $71e3: $88
	adc  b                                           ; $71e4: $88
	adc  b                                           ; $71e5: $88
	adc  b                                           ; $71e6: $88
	adc  b                                           ; $71e7: $88
	adc  b                                           ; $71e8: $88
	adc  b                                           ; $71e9: $88
	adc  b                                           ; $71ea: $88
	adc  b                                           ; $71eb: $88
	adc  b                                           ; $71ec: $88
	adc  b                                           ; $71ed: $88
	adc  b                                           ; $71ee: $88
	adc  b                                           ; $71ef: $88
	adc  b                                           ; $71f0: $88
	adc  b                                           ; $71f1: $88
	adc  b                                           ; $71f2: $88
	adc  b                                           ; $71f3: $88
	adc  b                                           ; $71f4: $88
	adc  b                                           ; $71f5: $88
	adc  b                                           ; $71f6: $88
	adc  b                                           ; $71f7: $88
	adc  b                                           ; $71f8: $88
	adc  b                                           ; $71f9: $88
	adc  b                                           ; $71fa: $88
	adc  b                                           ; $71fb: $88
	adc  b                                           ; $71fc: $88
	adc  b                                           ; $71fd: $88
	adc  b                                           ; $71fe: $88
	adc  b                                           ; $71ff: $88
	adc  b                                           ; $7200: $88
	adc  b                                           ; $7201: $88
	adc  b                                           ; $7202: $88
	adc  b                                           ; $7203: $88
	adc  b                                           ; $7204: $88
	adc  b                                           ; $7205: $88
	adc  b                                           ; $7206: $88
	adc  b                                           ; $7207: $88
	adc  b                                           ; $7208: $88
	adc  b                                           ; $7209: $88
	adc  b                                           ; $720a: $88
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	adc  b                                           ; $720e: $88
	adc  b                                           ; $720f: $88
	adc  b                                           ; $7210: $88
	adc  b                                           ; $7211: $88
	adc  b                                           ; $7212: $88
	adc  b                                           ; $7213: $88
	adc  b                                           ; $7214: $88
	adc  b                                           ; $7215: $88
	adc  b                                           ; $7216: $88
	adc  b                                           ; $7217: $88
	adc  b                                           ; $7218: $88
	adc  b                                           ; $7219: $88
	adc  b                                           ; $721a: $88
	adc  b                                           ; $721b: $88
	adc  b                                           ; $721c: $88
	adc  b                                           ; $721d: $88
	adc  b                                           ; $721e: $88
	adc  b                                           ; $721f: $88
	adc  b                                           ; $7220: $88
	adc  b                                           ; $7221: $88
	adc  b                                           ; $7222: $88
	adc  b                                           ; $7223: $88
	adc  b                                           ; $7224: $88
	adc  b                                           ; $7225: $88
	adc  b                                           ; $7226: $88
	adc  b                                           ; $7227: $88
	adc  b                                           ; $7228: $88
	adc  b                                           ; $7229: $88
	adc  b                                           ; $722a: $88
	adc  b                                           ; $722b: $88
	adc  b                                           ; $722c: $88
	adc  b                                           ; $722d: $88
	adc  b                                           ; $722e: $88
	adc  b                                           ; $722f: $88
	adc  b                                           ; $7230: $88
	adc  b                                           ; $7231: $88
	adc  b                                           ; $7232: $88
	adc  b                                           ; $7233: $88
	adc  b                                           ; $7234: $88
	adc  b                                           ; $7235: $88
	adc  b                                           ; $7236: $88
	adc  b                                           ; $7237: $88
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  b                                           ; $723a: $88
	adc  b                                           ; $723b: $88
	adc  b                                           ; $723c: $88
	adc  b                                           ; $723d: $88
	adc  b                                           ; $723e: $88
	adc  b                                           ; $723f: $88
	adc  b                                           ; $7240: $88
	adc  b                                           ; $7241: $88
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	adc  b                                           ; $7245: $88
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	adc  b                                           ; $7248: $88
	adc  b                                           ; $7249: $88
	adc  b                                           ; $724a: $88
	adc  b                                           ; $724b: $88
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	adc  b                                           ; $7251: $88
	adc  b                                           ; $7252: $88
	adc  b                                           ; $7253: $88
	adc  b                                           ; $7254: $88
	adc  b                                           ; $7255: $88
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  b                                           ; $7259: $88
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  b                                           ; $7263: $88
	adc  b                                           ; $7264: $88
	adc  b                                           ; $7265: $88
	adc  b                                           ; $7266: $88
	adc  b                                           ; $7267: $88
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
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

Call_0bd_73f6:
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

Call_0bd_74a7:
	adc  b                                           ; $74a7: $88
	adc  b                                           ; $74a8: $88

Jump_0bd_74a9:
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
	adc  b                                           ; $7598: $88
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

Call_0bd_75b9:
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
	adc  b                                           ; $77b8: $88
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

Call_0bd_7887:
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

Jump_0bd_7899:
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

Call_0bd_78a8:
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
	sbc  c                                           ; $7b6c: $99
	sbc  c                                           ; $7b6d: $99
	sbc  c                                           ; $7b6e: $99
	sbc  c                                           ; $7b6f: $99
	sbc  c                                           ; $7b70: $99
	sbc  b                                           ; $7b71: $98
	adc  b                                           ; $7b72: $88
	ld   [hl], a                                     ; $7b73: $77
	halt                                             ; $7b74: $76
	ld   h, [hl]                                     ; $7b75: $66
	ld   d, l                                        ; $7b76: $55
	ld   d, l                                        ; $7b77: $55
	ld   h, [hl]                                     ; $7b78: $66
	ld   [hl], a                                     ; $7b79: $77
	ld   a, b                                        ; $7b7a: $78
	sbc  c                                           ; $7b7b: $99
	cp   e                                           ; $7b7c: $bb
	cp   e                                           ; $7b7d: $bb
	cp   e                                           ; $7b7e: $bb
	xor  c                                           ; $7b7f: $a9
	sbc  c                                           ; $7b80: $99
	ld   [hl], a                                     ; $7b81: $77
	ld   h, [hl]                                     ; $7b82: $66
	ld   h, [hl]                                     ; $7b83: $66
	ld   h, [hl]                                     ; $7b84: $66
	ld   a, b                                        ; $7b85: $78
	sbc  c                                           ; $7b86: $99
	sbc  e                                           ; $7b87: $9b
	cp   e                                           ; $7b88: $bb
	set  1, e                                        ; $7b89: $cb $cb
	xor  c                                           ; $7b8b: $a9
	add  a                                           ; $7b8c: $87
	ld   d, h                                        ; $7b8d: $54
	ld   [hl-], a                                    ; $7b8e: $32
	ld   de, $3423                                   ; $7b8f: $11 $23 $34
	ld   d, [hl]                                     ; $7b92: $56
	adc  d                                           ; $7b93: $8a
	call $eeee                                       ; $7b94: $cd $ee $ee
	db   $ec                                         ; $7b97: $ec
	jp   z, Jump_0bd_65a8                            ; $7b98: $ca $a8 $65

	ld   b, h                                        ; $7b9b: $44
	ld   d, l                                        ; $7b9c: $55
	ld   h, [hl]                                     ; $7b9d: $66
	ld   a, b                                        ; $7b9e: $78
	sbc  d                                           ; $7b9f: $9a
	cp   h                                           ; $7ba0: $bc
	res  5, b                                        ; $7ba1: $cb $a8
	halt                                             ; $7ba3: $76
	ld   d, h                                        ; $7ba4: $54
	ld   b, e                                        ; $7ba5: $43
	ld   [hl-], a                                    ; $7ba6: $32
	inc  sp                                          ; $7ba7: $33
	ld   b, [hl]                                     ; $7ba8: $46
	adc  c                                           ; $7ba9: $89
	cp   h                                           ; $7baa: $bc
	sbc  $ed                                         ; $7bab: $de $ed
	db   $ec                                         ; $7bad: $ec
	jp   z, $9899                                    ; $7bae: $ca $99 $98

	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	sbc  c                                           ; $7bb4: $99
	sbc  c                                           ; $7bb5: $99
	halt                                             ; $7bb6: $76
	ld   b, e                                        ; $7bb7: $43
	ld   [hl+], a                                    ; $7bb8: $22
	inc  hl                                          ; $7bb9: $23
	inc  sp                                          ; $7bba: $33
	inc  [hl]                                        ; $7bbb: $34
	ld   d, [hl]                                     ; $7bbc: $56
	sbc  e                                           ; $7bbd: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bbe: $cf
	rst  $38                                         ; $7bbf: $ff
	db   $fd                                         ; $7bc0: $fd
	call c, $a8ba                                    ; $7bc1: $dc $ba $a8
	ld   [hl], a                                     ; $7bc4: $77
	ld   [hl], a                                     ; $7bc5: $77
	sbc  c                                           ; $7bc6: $99
	sbc  d                                           ; $7bc7: $9a
	xor  c                                           ; $7bc8: $a9
	xor  c                                           ; $7bc9: $a9
	sbc  b                                           ; $7bca: $98
	ld   h, h                                        ; $7bcb: $64
	ld   de, $1111                                   ; $7bcc: $11 $11 $11
	inc  hl                                          ; $7bcf: $23
	inc  [hl]                                        ; $7bd0: $34
	ld   l, c                                        ; $7bd1: $69
	sbc  $ff                                         ; $7bd2: $de $ff
	rst  $38                                         ; $7bd4: $ff
	db   $dd                                         ; $7bd5: $dd
	db   $db                                         ; $7bd6: $db
	cp   e                                           ; $7bd7: $bb
	xor  b                                           ; $7bd8: $a8
	adc  b                                           ; $7bd9: $88
	sbc  d                                           ; $7bda: $9a
	xor  d                                           ; $7bdb: $aa
	xor  d                                           ; $7bdc: $aa
	sbc  b                                           ; $7bdd: $98
	halt                                             ; $7bde: $76
	ld   b, d                                        ; $7bdf: $42
	ld   de, $1111                                   ; $7be0: $11 $11 $11
	inc  [hl]                                        ; $7be3: $34
	ld   b, l                                        ; $7be4: $45
	ld   l, d                                        ; $7be5: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7be6: $cf
	rst  $38                                         ; $7be7: $ff
	rst  $38                                         ; $7be8: $ff
	call c, $bbbb                                    ; $7be9: $dc $bb $bb
	xor  d                                           ; $7bec: $aa
	adc  c                                           ; $7bed: $89
	sbc  d                                           ; $7bee: $9a
	xor  e                                           ; $7bef: $ab
	cp   e                                           ; $7bf0: $bb
	xor  b                                           ; $7bf1: $a8
	ld   h, h                                        ; $7bf2: $64
	ld   sp, $1111                                   ; $7bf3: $31 $11 $11
	ld   de, $4533                                   ; $7bf6: $11 $33 $45
	ld   l, c                                        ; $7bf9: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bfa: $cf
	rst  $38                                         ; $7bfb: $ff
	rst  $38                                         ; $7bfc: $ff
	call c, $dccd                                    ; $7bfd: $dc $cd $dc
	res  3, b                                        ; $7c00: $cb $98
	adc  d                                           ; $7c02: $8a
	xor  h                                           ; $7c03: $ac
	cp   d                                           ; $7c04: $ba
	sub  [hl]                                        ; $7c05: $96
	ld   b, e                                        ; $7c06: $43
	ld   de, $1111                                   ; $7c07: $11 $11 $11
	ld   de, $5544                                   ; $7c0a: $11 $44 $55
	ld   a, e                                        ; $7c0d: $7b
	rst  $28                                         ; $7c0e: $ef
	rst  $38                                         ; $7c0f: $ff
	cp   $db                                         ; $7c10: $fe $db
	xor  l                                           ; $7c12: $ad
	db   $dd                                         ; $7c13: $dd
	jp   z, $8b88                                    ; $7c14: $ca $88 $8b

	db   $dd                                         ; $7c17: $dd
	ld   [$3295], a                                  ; $7c18: $ea $95 $32
	ld   bc, $1111                                   ; $7c1b: $01 $11 $11
	ld   de, $5635                                   ; $7c1e: $11 $35 $56
	ld   a, e                                        ; $7c21: $7b
	rst  $38                                         ; $7c22: $ff
	rst  $38                                         ; $7c23: $ff
	rst  $38                                         ; $7c24: $ff
	jp   c, $ddac                                    ; $7c25: $da $ac $dd

	cp   b                                           ; $7c28: $b8
	halt                                             ; $7c29: $76
	ld   a, e                                        ; $7c2a: $7b
	xor  $fb                                         ; $7c2b: $ee $fb
	sub  l                                           ; $7c2d: $95
	ld   [hl+], a                                    ; $7c2e: $22
	ld   de, $1111                                   ; $7c2f: $11 $11 $11
	ld   de, $7747                                   ; $7c32: $11 $47 $77
	sbc  l                                           ; $7c35: $9d
	rst  $38                                         ; $7c36: $ff
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	cp   c                                           ; $7c39: $b9
	adc  c                                           ; $7c3a: $89
	jp   z, Jump_0bd_4596                            ; $7c3b: $ca $96 $45

	adc  [hl]                                        ; $7c3e: $8e
	rst  $38                                         ; $7c3f: $ff
	db   $fd                                         ; $7c40: $fd
	sub  [hl]                                        ; $7c41: $96
	inc  sp                                          ; $7c42: $33
	ld   de, $1111                                   ; $7c43: $11 $11 $11
	ld   de, $aa59                                   ; $7c46: $11 $59 $aa
	xor  a                                           ; $7c49: $af
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	add  h                                           ; $7c4d: $84
	ld   b, [hl]                                     ; $7c4e: $46
	sub  a                                           ; $7c4f: $97
	ld   b, d                                        ; $7c50: $42
	inc  d                                           ; $7c51: $14
	xor  a                                           ; $7c52: $af
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	cp   c                                           ; $7c55: $b9
	halt                                             ; $7c56: $76
	ld   hl, $1111                                   ; $7c57: $21 $11 $11
	ld   de, $db7c                                   ; $7c5a: $11 $7c $db
	rst  JumpTable                                         ; $7c5d: $df
	rst  $38                                         ; $7c5e: $ff
	rst  $38                                         ; $7c5f: $ff
	db   $fd                                         ; $7c60: $fd
	ld   hl, $4111                                   ; $7c61: $21 $11 $41
	ld   de, $ff16                                   ; $7c64: $11 $16 $ff
	rst  $38                                         ; $7c67: $ff
	rst  $38                                         ; $7c68: $ff
	call $21da                                       ; $7c69: $cd $da $21
	ld   de, $1111                                   ; $7c6c: $11 $11 $11
	cp   a                                           ; $7c6f: $bf
	rst  $38                                         ; $7c70: $ff
	rst  $38                                         ; $7c71: $ff
	rst  $38                                         ; $7c72: $ff
	rst  $38                                         ; $7c73: $ff
	db   $f4                                         ; $7c74: $f4
	ld   de, $1111                                   ; $7c75: $11 $11 $11
	ld   de, $ff1f                                   ; $7c78: $11 $1f $ff
	rst  $38                                         ; $7c7b: $ff
	rst  $38                                         ; $7c7c: $ff
	adc  $fb                                         ; $7c7d: $ce $fb
	ld   de, $1111                                   ; $7c7f: $11 $11 $11
	ld   de, $ffef                                   ; $7c82: $11 $ef $ff
	rst  $38                                         ; $7c85: $ff
	rst  $38                                         ; $7c86: $ff
	rst  $38                                         ; $7c87: $ff
	sub  c                                           ; $7c88: $91
	ld   de, $1111                                   ; $7c89: $11 $11 $11
	ld   de, $ffbf                                   ; $7c8c: $11 $bf $ff
	rst  $38                                         ; $7c8f: $ff
	db   $fd                                         ; $7c90: $fd
	sbc  d                                           ; $7c91: $9a
	sub  l                                           ; $7c92: $95
	ld   de, $1111                                   ; $7c93: $11 $11 $11
	ld   de, $ff9f                                   ; $7c96: $11 $9f $ff
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	cp   $21                                         ; $7c9b: $fe $21
	ld   de, $1111                                   ; $7c9d: $11 $11 $11
	rra                                              ; $7ca0: $1f
	rst  $38                                         ; $7ca1: $ff
	rst  $38                                         ; $7ca2: $ff
	rst  $38                                         ; $7ca3: $ff
	rst  $38                                         ; $7ca4: $ff
	ld   b, c                                        ; $7ca5: $41
	ld   de, $1111                                   ; $7ca6: $11 $11 $11
	ld   de, $bf11                                   ; $7ca9: $11 $11 $bf
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	db   $f4                                         ; $7caf: $f4
	ld   de, $1111                                   ; $7cb0: $11 $11 $11
	ld   de, $ffcf                                   ; $7cb3: $11 $cf $ff
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	rst  $38                                         ; $7cb8: $ff
	ld   d, c                                        ; $7cb9: $51
	ld   de, $1111                                   ; $7cba: $11 $11 $11
	ld   de, $1311                                   ; $7cbd: $11 $11 $13
	adc  e                                           ; $7cc0: $8b
	rst  $38                                         ; $7cc1: $ff
	rst  $38                                         ; $7cc2: $ff
	ld   a, [$5562]                                  ; $7cc3: $fa $62 $55
	ld   de, $2811                                   ; $7cc6: $11 $11 $28
	rst  $38                                         ; $7cc9: $ff
	rst  $38                                         ; $7cca: $ff
	rst  $38                                         ; $7ccb: $ff
	rst  $38                                         ; $7ccc: $ff
	db   $fc                                         ; $7ccd: $fc
	ld   de, $4611                                   ; $7cce: $11 $11 $46
	ld   de, $1111                                   ; $7cd1: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $7cd4: $11 $14 $ff
	rst  $38                                         ; $7cd7: $ff
	or   $23                                         ; $7cd8: $f6 $23
	cp   d                                           ; $7cda: $ba
	ld   hl, $4f11                                   ; $7cdb: $21 $11 $4f
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	rst  $30                                         ; $7ce2: $f7
	ld   de, $9515                                   ; $7ce3: $11 $15 $95
	ld   de, $1111                                   ; $7ce6: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7ce9: $11 $11 $ff
	rst  $38                                         ; $7cec: $ff
	push de                                          ; $7ced: $d5
	ld   d, a                                        ; $7cee: $57
	ei                                               ; $7cef: $fb
	ld   de, $9f11                                   ; $7cf0: $11 $11 $9f
	rst  $38                                         ; $7cf3: $ff
	rst  $38                                         ; $7cf4: $ff
	rst  $38                                         ; $7cf5: $ff
	rst  $38                                         ; $7cf6: $ff
	push af                                          ; $7cf7: $f5
	ld   de, $7317                                   ; $7cf8: $11 $17 $73
	ld   de, $1111                                   ; $7cfb: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7cfe: $11 $11 $ff
	rst  $38                                         ; $7d01: $ff
	ld   sp, hl                                      ; $7d02: $f9
	xor  c                                           ; $7d03: $a9
	ld   sp, hl                                      ; $7d04: $f9
	ld   de, $9f11                                   ; $7d05: $11 $11 $9f
	rst  $38                                         ; $7d08: $ff
	rst  $38                                         ; $7d09: $ff
	rst  $38                                         ; $7d0a: $ff
	rst  $38                                         ; $7d0b: $ff
	rst  $30                                         ; $7d0c: $f7
	ld   b, d                                        ; $7d0d: $42
	inc  h                                           ; $7d0e: $24
	ld   [hl-], a                                    ; $7d0f: $32
	ld   de, $1111                                   ; $7d10: $11 $11 $11
	ld   de, $ef11                                   ; $7d13: $11 $11 $ef
	rst  $38                                         ; $7d16: $ff
	db   $fc                                         ; $7d17: $fc
	xor  c                                           ; $7d18: $a9
	xor  b                                           ; $7d19: $a8
	ld   de, $6f11                                   ; $7d1a: $11 $11 $6f
	rst  $38                                         ; $7d1d: $ff
	rst  $38                                         ; $7d1e: $ff
	rst  $38                                         ; $7d1f: $ff
	rst  $38                                         ; $7d20: $ff
	ld   [$4374], a                                  ; $7d21: $ea $74 $43
	ld   hl, $1111                                   ; $7d24: $21 $11 $11
	ld   de, $1111                                   ; $7d27: $11 $11 $11
	adc  a                                           ; $7d2a: $8f
	rst  $38                                         ; $7d2b: $ff
	cp   $8a                                         ; $7d2c: $fe $8a
	and  a                                           ; $7d2e: $a7
	ld   de, $4f11                                   ; $7d2f: $11 $11 $4f
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	rst  $38                                         ; $7d34: $ff
	rst  $38                                         ; $7d35: $ff
	ret                                              ; $7d36: $c9


	sbc  b                                           ; $7d37: $98
	ld   d, e                                        ; $7d38: $53
	ld   de, $1111                                   ; $7d39: $11 $11 $11
	ld   de, $1111                                   ; $7d3c: $11 $11 $11
	ld   e, a                                        ; $7d3f: $5f
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	xor  h                                           ; $7d42: $ac
	or   a                                           ; $7d43: $b7
	ld   de, $3f11                                   ; $7d44: $11 $11 $3f
	rst  $38                                         ; $7d47: $ff
	rst  $38                                         ; $7d48: $ff
	rst  $38                                         ; $7d49: $ff
	rst  $38                                         ; $7d4a: $ff
	jp   z, Jump_0bd_51ca                            ; $7d4b: $ca $ca $51

	ld   de, $1111                                   ; $7d4e: $11 $11 $11
	ld   de, $1111                                   ; $7d51: $11 $11 $11
	rra                                              ; $7d54: $1f
	rst  $38                                         ; $7d55: $ff
	rst  $38                                         ; $7d56: $ff
	cp   l                                           ; $7d57: $bd
	ret                                              ; $7d58: $c9


	ld   de, $4e11                                   ; $7d59: $11 $11 $4e
	rst  $38                                         ; $7d5c: $ff
	rst  $38                                         ; $7d5d: $ff
	rst  $38                                         ; $7d5e: $ff
	cp   $ab                                         ; $7d5f: $fe $ab
	db   $db                                         ; $7d61: $db
	ld   b, c                                        ; $7d62: $41
	ld   de, $1132                                   ; $7d63: $11 $32 $11
	ld   de, $1111                                   ; $7d66: $11 $11 $11
	rra                                              ; $7d69: $1f
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	sbc  $f8                                         ; $7d6c: $de $f8
	ld   de, $4d11                                   ; $7d6e: $11 $11 $4d
	db   $ed                                         ; $7d71: $ed
	rst  $38                                         ; $7d72: $ff
	rst  $38                                         ; $7d73: $ff
	db   $fd                                         ; $7d74: $fd
	cp   h                                           ; $7d75: $bc
	jp   c, $1321                                    ; $7d76: $da $21 $13

	ld   d, d                                        ; $7d79: $52
	ld   de, $1111                                   ; $7d7a: $11 $11 $11
	ld   de, $ff0f                                   ; $7d7d: $11 $0f $ff
	rst  $38                                         ; $7d80: $ff
	rst  $38                                         ; $7d81: $ff
	or   $11                                         ; $7d82: $f6 $11
	ld   de, $bb3b                                   ; $7d84: $11 $3b $bb
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	db   $fc                                         ; $7d8a: $fc
	add  $11                                         ; $7d8b: $c6 $11
	ld   [hl+], a                                    ; $7d8d: $22
	ld   hl, $1111                                   ; $7d8e: $21 $11 $11
	ld   de, $7f11                                   ; $7d91: $11 $11 $7f
	rst  $38                                         ; $7d94: $ff
	rst  $38                                         ; $7d95: $ff
	rst  $38                                         ; $7d96: $ff
	jp   nc, $1111                                   ; $7d97: $d2 $11 $11

	add  hl, de                                      ; $7d9a: $19
	ld   a, e                                        ; $7d9b: $7b
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	and  c                                           ; $7da0: $a1
	ld   [de], a                                     ; $7da1: $12
	ld   hl, $1111                                   ; $7da2: $21 $11 $11
	ld   de, $1111                                   ; $7da5: $11 $11 $11
	rst  $38                                         ; $7da8: $ff
	rst  $38                                         ; $7da9: $ff
	rst  $38                                         ; $7daa: $ff
	rst  $38                                         ; $7dab: $ff
	sub  c                                           ; $7dac: $91
	ld   de, $3611                                   ; $7dad: $11 $11 $36
	ld   a, l                                        ; $7db0: $7d
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	rst  $38                                         ; $7db3: $ff
	db   $fd                                         ; $7db4: $fd
	ld   d, c                                        ; $7db5: $51
	ld   [de], a                                     ; $7db6: $12
	ld   de, $1111                                   ; $7db7: $11 $11 $11
	ld   de, $1111                                   ; $7dba: $11 $11 $11
	rst  $38                                         ; $7dbd: $ff
	rst  $38                                         ; $7dbe: $ff
	rst  $38                                         ; $7dbf: $ff
	rst  $38                                         ; $7dc0: $ff
	ld   h, c                                        ; $7dc1: $61
	dec  d                                           ; $7dc2: $15
	ld   de, $6f52                                   ; $7dc3: $11 $52 $6f
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	db   $fc                                         ; $7dc9: $fc
	ld   de, $1131                                   ; $7dca: $11 $31 $11
	ld   de, $1111                                   ; $7dcd: $11 $11 $11
	ld   de, $ff1d                                   ; $7dd0: $11 $1d $ff
	rst  $38                                         ; $7dd3: $ff
	rst  $38                                         ; $7dd4: $ff
	db   $fc                                         ; $7dd5: $fc
	ld   hl, $1165                                   ; $7dd6: $21 $65 $11
	ld   de, $ffbf                                   ; $7dd9: $11 $bf $ff
	rst  $38                                         ; $7ddc: $ff
	rst  $38                                         ; $7ddd: $ff
	or   $35                                         ; $7dde: $f6 $35
	ld   de, $1111                                   ; $7de0: $11 $11 $11
	ld   de, $1111                                   ; $7de3: $11 $11 $11
	cpl                                              ; $7de6: $2f
	ei                                               ; $7de7: $fb
	rst  $38                                         ; $7de8: $ff
	rst  $38                                         ; $7de9: $ff
	push hl                                          ; $7dea: $e5
	ld   h, $b1                                      ; $7deb: $26 $b1
	ld   de, $df18                                   ; $7ded: $11 $18 $df
	rst  $38                                         ; $7df0: $ff
	rst  $38                                         ; $7df1: $ff
	rst  $38                                         ; $7df2: $ff
	reti                                             ; $7df3: $d9


	add  c                                           ; $7df4: $81
	ld   de, $1111                                   ; $7df5: $11 $11 $11
	ld   de, $1111                                   ; $7df8: $11 $11 $11
	rst  $38                                         ; $7dfb: $ff
	xor  a                                           ; $7dfc: $af
	rst  $38                                         ; $7dfd: $ff
	rst  $38                                         ; $7dfe: $ff
	ld   [hl], d                                     ; $7dff: $72
	adc  a                                           ; $7e00: $8f
	ld   de, $6911                                   ; $7e01: $11 $11 $69
	set  7, a                                        ; $7e04: $cb $ff
	rst  $38                                         ; $7e06: $ff
	rst  $38                                         ; $7e07: $ff
	db   $fc                                         ; $7e08: $fc
	ld   hl, $1111                                   ; $7e09: $21 $11 $11
	ld   de, $1111                                   ; $7e0c: $11 $11 $11
	rra                                              ; $7e0f: $1f
	db   $f4                                         ; $7e10: $f4
	rst  $38                                         ; $7e11: $ff
	rst  $38                                         ; $7e12: $ff
	rst  ToBoot                                         ; $7e13: $c7
	ld   a, $f1                                      ; $7e14: $3e $f1
	ld   de, $4916                                   ; $7e16: $11 $16 $49
	adc  a                                           ; $7e19: $8f
	rst  $38                                         ; $7e1a: $ff
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	pop  de                                          ; $7e1d: $d1
	ld   [de], a                                     ; $7e1e: $12
	ld   sp, $1111                                   ; $7e1f: $31 $11 $11
	ld   de, $ff18                                   ; $7e22: $11 $18 $ff
	ccf                                              ; $7e25: $3f
	rst  $38                                         ; $7e26: $ff
	ld   a, [$f7ab]                                  ; $7e27: $fa $ab $f7
	ld   de, $1111                                   ; $7e2a: $11 $11 $11
	add  hl, hl                                      ; $7e2d: $29
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	ld   a, [$6258]                                  ; $7e31: $fa $58 $62
	ld   de, $1111                                   ; $7e34: $11 $11 $11
	ld   de, $1dff                                   ; $7e37: $11 $ff $1d
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	cp   a                                           ; $7e3c: $bf
	rst  $38                                         ; $7e3d: $ff
	rla                                              ; $7e3e: $17
	ld   d, c                                        ; $7e3f: $51
	ld   sp, $9d11                                   ; $7e40: $31 $11 $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e43: $cf
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	rst  JumpTable                                         ; $7e46: $df
	db   $fc                                         ; $7e47: $fc
	ld   h, c                                        ; $7e48: $61
	ld   de, $1111                                   ; $7e49: $11 $11 $11
	ld   a, [de]                                     ; $7e4c: $1a
	ld   [hl], c                                     ; $7e4d: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e4e: $cf
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	rst  $38                                         ; $7e51: $ff
	rst  $38                                         ; $7e52: $ff
	rst  $38                                         ; $7e53: $ff
	rst  $30                                         ; $7e54: $f7
	ld   de, $1112                                   ; $7e55: $11 $12 $11
	ld   c, c                                        ; $7e58: $49
	rst  $28                                         ; $7e59: $ef
	cp   e                                           ; $7e5a: $bb
	rst  $38                                         ; $7e5b: $ff
	ld   [$4264], a                                  ; $7e5c: $ea $64 $42
	ld   de, $6114                                   ; $7e5f: $11 $14 $61
	ld   [de], a                                     ; $7e62: $12
	daa                                              ; $7e63: $27
	ld   b, l                                        ; $7e64: $45
	ld   a, [hl]                                     ; $7e65: $7e
	db   $fd                                         ; $7e66: $fd
	db   $ed                                         ; $7e67: $ed
	rst  $38                                         ; $7e68: $ff
	db   $ec                                         ; $7e69: $ec
	adc  $ca                                         ; $7e6a: $ce $ca
	xor  d                                           ; $7e6c: $aa
	sbc  e                                           ; $7e6d: $9b
	sbc  c                                           ; $7e6e: $99
	sbc  d                                           ; $7e6f: $9a
	xor  c                                           ; $7e70: $a9
	sub  a                                           ; $7e71: $97
	ld   [hl], a                                     ; $7e72: $77
	halt                                             ; $7e73: $76
	halt                                             ; $7e74: $76
	ld   h, l                                        ; $7e75: $65
	ld   b, h                                        ; $7e76: $44
	inc  sp                                          ; $7e77: $33
	ld   [hl+], a                                    ; $7e78: $22
	inc  sp                                          ; $7e79: $33
	ld   d, [hl]                                     ; $7e7a: $56
	adc  c                                           ; $7e7b: $89
	cp   e                                           ; $7e7c: $bb
	call z, $ccdd                                    ; $7e7d: $cc $dd $cc
	cp   h                                           ; $7e80: $bc
	call z, $abbb                                    ; $7e81: $cc $bb $ab
	xor  d                                           ; $7e84: $aa
	sbc  c                                           ; $7e85: $99
	add  a                                           ; $7e86: $87
	ld   [hl], a                                     ; $7e87: $77
	ld   [hl], a                                     ; $7e88: $77
	ld   h, [hl]                                     ; $7e89: $66
	ld   h, [hl]                                     ; $7e8a: $66
	ld   h, [hl]                                     ; $7e8b: $66
	ld   d, l                                        ; $7e8c: $55
	ld   b, h                                        ; $7e8d: $44
	ld   b, h                                        ; $7e8e: $44
	ld   d, l                                        ; $7e8f: $55
	ld   [hl], a                                     ; $7e90: $77
	adc  b                                           ; $7e91: $88
	xor  d                                           ; $7e92: $aa
	xor  d                                           ; $7e93: $aa
	xor  d                                           ; $7e94: $aa
	xor  e                                           ; $7e95: $ab
	cp   e                                           ; $7e96: $bb
	xor  d                                           ; $7e97: $aa
	xor  d                                           ; $7e98: $aa
	adc  c                                           ; $7e99: $89
	sbc  b                                           ; $7e9a: $98
	sbc  b                                           ; $7e9b: $98
	ld   [hl], a                                     ; $7e9c: $77
	adc  b                                           ; $7e9d: $88
	ld   [hl], a                                     ; $7e9e: $77
	ld   [hl], a                                     ; $7e9f: $77
	ld   [hl], a                                     ; $7ea0: $77
	halt                                             ; $7ea1: $76
	ld   h, [hl]                                     ; $7ea2: $66
	ld   [hl], a                                     ; $7ea3: $77
	adc  b                                           ; $7ea4: $88
	adc  c                                           ; $7ea5: $89
	sbc  c                                           ; $7ea6: $99
	add  a                                           ; $7ea7: $87
	ld   [hl], a                                     ; $7ea8: $77
	adc  b                                           ; $7ea9: $88
	sbc  c                                           ; $7eaa: $99
	sbc  b                                           ; $7eab: $98
	adc  c                                           ; $7eac: $89
	adc  b                                           ; $7ead: $88
	sbc  c                                           ; $7eae: $99
	adc  c                                           ; $7eaf: $89
	sub  a                                           ; $7eb0: $97
	ld   [hl], a                                     ; $7eb1: $77
	ld   [hl], a                                     ; $7eb2: $77
	ld   [hl], a                                     ; $7eb3: $77
	ld   h, [hl]                                     ; $7eb4: $66
	halt                                             ; $7eb5: $76
	ld   [hl], a                                     ; $7eb6: $77
	ld   [hl], a                                     ; $7eb7: $77
	sbc  c                                           ; $7eb8: $99
	sbc  c                                           ; $7eb9: $99
	xor  d                                           ; $7eba: $aa
	sbc  c                                           ; $7ebb: $99
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	ld   a, b                                        ; $7ebe: $78
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	add  a                                           ; $7ec1: $87
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	adc  c                                           ; $7ec4: $89
	adc  b                                           ; $7ec5: $88
	add  a                                           ; $7ec6: $87
	ld   a, b                                        ; $7ec7: $78
	ld   [hl], a                                     ; $7ec8: $77
	ld   [hl], a                                     ; $7ec9: $77
	ld   [hl], a                                     ; $7eca: $77
	ld   [hl], a                                     ; $7ecb: $77
	ld   a, b                                        ; $7ecc: $78
	adc  c                                           ; $7ecd: $89
	adc  d                                           ; $7ece: $8a
	sbc  c                                           ; $7ecf: $99
	adc  b                                           ; $7ed0: $88
	sbc  c                                           ; $7ed1: $99
	adc  c                                           ; $7ed2: $89
	sbc  c                                           ; $7ed3: $99
	adc  b                                           ; $7ed4: $88
	adc  b                                           ; $7ed5: $88
	ld   [hl], a                                     ; $7ed6: $77
	add  a                                           ; $7ed7: $87
	ld   a, b                                        ; $7ed8: $78
	ld   [hl], a                                     ; $7ed9: $77
	ld   [hl], a                                     ; $7eda: $77
	ld   [hl], a                                     ; $7edb: $77
	add  a                                           ; $7edc: $87
	ld   [hl], a                                     ; $7edd: $77
	ld   [hl], a                                     ; $7ede: $77
	ld   [hl], a                                     ; $7edf: $77
	ld   [hl], a                                     ; $7ee0: $77
	adc  b                                           ; $7ee1: $88
	adc  b                                           ; $7ee2: $88
	sbc  c                                           ; $7ee3: $99
	adc  c                                           ; $7ee4: $89
	sbc  b                                           ; $7ee5: $98
	sbc  b                                           ; $7ee6: $98
	sbc  c                                           ; $7ee7: $99
	adc  c                                           ; $7ee8: $89
	sbc  c                                           ; $7ee9: $99
	adc  b                                           ; $7eea: $88
	adc  b                                           ; $7eeb: $88
	adc  b                                           ; $7eec: $88
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	ld   [hl], a                                     ; $7eef: $77
	ld   a, b                                        ; $7ef0: $78
	add  a                                           ; $7ef1: $87
	ld   [hl], a                                     ; $7ef2: $77
	ld   [hl], a                                     ; $7ef3: $77
	ld   [hl], a                                     ; $7ef4: $77
	ld   a, b                                        ; $7ef5: $78
	adc  b                                           ; $7ef6: $88
	adc  b                                           ; $7ef7: $88
	sbc  b                                           ; $7ef8: $98
	adc  c                                           ; $7ef9: $89
	adc  b                                           ; $7efa: $88
	adc  c                                           ; $7efb: $89
	sbc  b                                           ; $7efc: $98
	sbc  c                                           ; $7efd: $99
	sbc  b                                           ; $7efe: $98
	adc  b                                           ; $7eff: $88
	adc  b                                           ; $7f00: $88
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	add  a                                           ; $7f03: $87
	ld   [hl], a                                     ; $7f04: $77
	adc  b                                           ; $7f05: $88
	adc  b                                           ; $7f06: $88
	adc  b                                           ; $7f07: $88
	ld   [hl], a                                     ; $7f08: $77
	ld   [hl], a                                     ; $7f09: $77
	ld   [hl], a                                     ; $7f0a: $77
	ld   [hl], a                                     ; $7f0b: $77
	adc  c                                           ; $7f0c: $89
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	sbc  c                                           ; $7f0f: $99
	sbc  c                                           ; $7f10: $99
	adc  b                                           ; $7f11: $88
	adc  c                                           ; $7f12: $89
	sbc  c                                           ; $7f13: $99
	sbc  c                                           ; $7f14: $99
	sbc  b                                           ; $7f15: $98
	adc  b                                           ; $7f16: $88
	add  a                                           ; $7f17: $87
	ld   [hl], a                                     ; $7f18: $77
	adc  b                                           ; $7f19: $88
	adc  b                                           ; $7f1a: $88
	adc  b                                           ; $7f1b: $88
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	adc  b                                           ; $7f1e: $88
	add  a                                           ; $7f1f: $87
	adc  b                                           ; $7f20: $88
	adc  b                                           ; $7f21: $88
	adc  b                                           ; $7f22: $88
	adc  b                                           ; $7f23: $88
	adc  b                                           ; $7f24: $88
	adc  b                                           ; $7f25: $88
	sbc  b                                           ; $7f26: $98
	adc  c                                           ; $7f27: $89
	sbc  c                                           ; $7f28: $99
	sbc  c                                           ; $7f29: $99
	sbc  c                                           ; $7f2a: $99
	adc  b                                           ; $7f2b: $88
	adc  b                                           ; $7f2c: $88
	adc  b                                           ; $7f2d: $88
	add  a                                           ; $7f2e: $87
	adc  b                                           ; $7f2f: $88
	adc  b                                           ; $7f30: $88
	adc  b                                           ; $7f31: $88
	adc  b                                           ; $7f32: $88
	adc  b                                           ; $7f33: $88
	adc  b                                           ; $7f34: $88
	adc  b                                           ; $7f35: $88
	adc  b                                           ; $7f36: $88
	adc  b                                           ; $7f37: $88
	adc  b                                           ; $7f38: $88
	adc  b                                           ; $7f39: $88
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	sbc  b                                           ; $7f3f: $98
	adc  b                                           ; $7f40: $88
	adc  b                                           ; $7f41: $88
	adc  b                                           ; $7f42: $88
	ld   a, b                                        ; $7f43: $78
	adc  b                                           ; $7f44: $88
	adc  b                                           ; $7f45: $88
	adc  b                                           ; $7f46: $88
	adc  b                                           ; $7f47: $88
	adc  b                                           ; $7f48: $88
	adc  b                                           ; $7f49: $88
	adc  b                                           ; $7f4a: $88
	adc  b                                           ; $7f4b: $88
	adc  b                                           ; $7f4c: $88
	adc  b                                           ; $7f4d: $88
	adc  b                                           ; $7f4e: $88
	adc  b                                           ; $7f4f: $88
	adc  b                                           ; $7f50: $88
	adc  b                                           ; $7f51: $88
	adc  b                                           ; $7f52: $88
	adc  c                                           ; $7f53: $89
	adc  b                                           ; $7f54: $88
	adc  b                                           ; $7f55: $88
	adc  b                                           ; $7f56: $88
	adc  b                                           ; $7f57: $88
	adc  b                                           ; $7f58: $88
	adc  b                                           ; $7f59: $88
	adc  b                                           ; $7f5a: $88
	adc  b                                           ; $7f5b: $88
	adc  b                                           ; $7f5c: $88
	adc  b                                           ; $7f5d: $88
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	adc  b                                           ; $7f62: $88
	adc  b                                           ; $7f63: $88
	adc  b                                           ; $7f64: $88
	adc  b                                           ; $7f65: $88
	adc  b                                           ; $7f66: $88
	adc  b                                           ; $7f67: $88
	adc  b                                           ; $7f68: $88
	adc  b                                           ; $7f69: $88
	adc  b                                           ; $7f6a: $88
	adc  b                                           ; $7f6b: $88
	adc  b                                           ; $7f6c: $88
	adc  b                                           ; $7f6d: $88
	adc  b                                           ; $7f6e: $88
	adc  b                                           ; $7f6f: $88
	adc  b                                           ; $7f70: $88
	adc  b                                           ; $7f71: $88
	adc  b                                           ; $7f72: $88
	adc  b                                           ; $7f73: $88
	adc  b                                           ; $7f74: $88
	adc  b                                           ; $7f75: $88
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	adc  b                                           ; $7f7b: $88
	adc  b                                           ; $7f7c: $88
	adc  b                                           ; $7f7d: $88
	adc  b                                           ; $7f7e: $88
	adc  b                                           ; $7f7f: $88
	adc  b                                           ; $7f80: $88
	adc  b                                           ; $7f81: $88
	adc  b                                           ; $7f82: $88
	adc  b                                           ; $7f83: $88
	adc  b                                           ; $7f84: $88
	adc  b                                           ; $7f85: $88
	adc  b                                           ; $7f86: $88
	adc  b                                           ; $7f87: $88
	adc  b                                           ; $7f88: $88
	adc  b                                           ; $7f89: $88
	adc  b                                           ; $7f8a: $88
	adc  b                                           ; $7f8b: $88
	adc  b                                           ; $7f8c: $88
	adc  b                                           ; $7f8d: $88
	adc  b                                           ; $7f8e: $88
	adc  b                                           ; $7f8f: $88
	adc  b                                           ; $7f90: $88
	adc  b                                           ; $7f91: $88
	adc  b                                           ; $7f92: $88
	adc  b                                           ; $7f93: $88
	adc  b                                           ; $7f94: $88
	adc  b                                           ; $7f95: $88
	adc  b                                           ; $7f96: $88
	adc  b                                           ; $7f97: $88
	adc  b                                           ; $7f98: $88
	adc  b                                           ; $7f99: $88
	adc  b                                           ; $7f9a: $88
	adc  b                                           ; $7f9b: $88
	adc  b                                           ; $7f9c: $88
	adc  b                                           ; $7f9d: $88
	adc  b                                           ; $7f9e: $88
	adc  b                                           ; $7f9f: $88
	adc  b                                           ; $7fa0: $88
	adc  b                                           ; $7fa1: $88
	adc  b                                           ; $7fa2: $88
	adc  b                                           ; $7fa3: $88
	adc  b                                           ; $7fa4: $88
	adc  b                                           ; $7fa5: $88
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	adc  b                                           ; $7fab: $88
	adc  b                                           ; $7fac: $88
	adc  b                                           ; $7fad: $88
	adc  b                                           ; $7fae: $88
	adc  b                                           ; $7faf: $88
	adc  b                                           ; $7fb0: $88
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	adc  b                                           ; $7fb3: $88
	adc  b                                           ; $7fb4: $88
	adc  b                                           ; $7fb5: $88
	adc  b                                           ; $7fb6: $88
	adc  b                                           ; $7fb7: $88
	adc  b                                           ; $7fb8: $88
	adc  b                                           ; $7fb9: $88
	adc  b                                           ; $7fba: $88
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	adc  b                                           ; $7fc0: $88
	adc  b                                           ; $7fc1: $88
	adc  b                                           ; $7fc2: $88
	adc  b                                           ; $7fc3: $88
	adc  b                                           ; $7fc4: $88
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	adc  b                                           ; $7fc9: $88
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	adc  b                                           ; $7fcc: $88
	adc  b                                           ; $7fcd: $88
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	adc  b                                           ; $7fd1: $88
	adc  b                                           ; $7fd2: $88
	adc  b                                           ; $7fd3: $88
	adc  b                                           ; $7fd4: $88
	adc  b                                           ; $7fd5: $88
	adc  b                                           ; $7fd6: $88
	adc  b                                           ; $7fd7: $88
	adc  b                                           ; $7fd8: $88
	adc  b                                           ; $7fd9: $88
	adc  b                                           ; $7fda: $88
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	adc  b                                           ; $7fe3: $88
	adc  b                                           ; $7fe4: $88
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
	adc  b                                           ; $7fe9: $88
	adc  b                                           ; $7fea: $88
	adc  b                                           ; $7feb: $88
	adc  b                                           ; $7fec: $88
	adc  b                                           ; $7fed: $88
	adc  b                                           ; $7fee: $88
	adc  b                                           ; $7fef: $88
	adc  b                                           ; $7ff0: $88
	adc  b                                           ; $7ff1: $88
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	adc  b                                           ; $7ff5: $88
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	adc  b                                           ; $7ffd: $88
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
