; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07a", ROMX[$4000], BANK[$7a]

	ldh  a, [c]                                      ; $4000: $f2
	ld   bc, $0096                                   ; $4001: $01 $96 $00
	nop                                              ; $4004: $00
	inc  de                                          ; $4005: $13
	add  l                                           ; $4006: $85
	inc  c                                           ; $4007: $0c
	nop                                              ; $4008: $00
	rra                                              ; $4009: $1f
	add  l                                           ; $400a: $85
	nop                                              ; $400b: $00
	ld   bc, $8f70                                   ; $400c: $01 $70 $8f
	add  b                                           ; $400f: $80
	add  e                                           ; $4010: $83
	add  b                                           ; $4011: $80
	cp   b                                           ; $4012: $b8
	add  b                                           ; $4013: $80
	cp   [hl]                                        ; $4014: $be
	nop                                              ; $4015: $00
	rst  $38                                         ; $4016: $ff
	add  l                                           ; $4017: $85
	nop                                              ; $4018: $00
	nop                                              ; $4019: $00
	ld   l, a                                        ; $401a: $6f
	add  c                                           ; $401b: $81
	sub  c                                           ; $401c: $91
	add  d                                           ; $401d: $82
	ld   d, c                                        ; $401e: $51
	nop                                              ; $401f: $00
	cp   $86                                         ; $4020: $fe $86
	nop                                              ; $4022: $00
	add  [hl]                                        ; $4023: $86
	add  b                                           ; $4024: $80
	add  l                                           ; $4025: $85
	nop                                              ; $4026: $00
	ld   bc, $407f                                   ; $4027: $01 $7f $40
	add  c                                           ; $402a: $81
	nop                                              ; $402b: $00
	nop                                              ; $402c: $00
	db   $20, $80                                    ; $402d: $20 $80
	stop                                             ; $402f: $10 $00
	rra                                              ; $4031: $1f
	add  l                                           ; $4032: $85
	nop                                              ; $4033: $00
	nop                                              ; $4034: $00
	rst  $38                                         ; $4035: $ff
	add  e                                           ; $4036: $83
	nop                                              ; $4037: $00
	add  b                                           ; $4038: $80
	ld   bc, $ff00                                   ; $4039: $01 $00 $ff
	add  l                                           ; $403c: $85
	nop                                              ; $403d: $00
	ld   [$847b], sp                                 ; $403e: $08 $7b $84
	nop                                              ; $4041: $00
	inc  b                                           ; $4042: $04
	ei                                               ; $4043: $fb
	rst  $38                                         ; $4044: $ff
	add  b                                           ; $4045: $80
	rst  $38                                         ; $4046: $ff
	add  b                                           ; $4047: $80
	add  l                                           ; $4048: $85
	nop                                              ; $4049: $00
	ld   bc, $18e7                                   ; $404a: $01 $e7 $18
	add  b                                           ; $404d: $80
	nop                                              ; $404e: $00
	inc  b                                           ; $404f: $04
	ld   hl, sp-$04                                  ; $4050: $f8 $fc
	ld   b, $fe                                      ; $4052: $06 $fe
	inc  bc                                          ; $4054: $03
	add  l                                           ; $4055: $85
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	rst  $38                                         ; $4058: $ff
	add  l                                           ; $4059: $85
	nop                                              ; $405a: $00
	nop                                              ; $405b: $00
	rst  $38                                         ; $405c: $ff
	add  l                                           ; $405d: $85
	nop                                              ; $405e: $00
	inc  bc                                          ; $405f: $03
	adc  $32                                         ; $4060: $ce $32
	ld   h, b                                        ; $4062: $60
	ld   h, h                                        ; $4063: $64
	add  b                                           ; $4064: $80
	ldh  [rSC], a                                    ; $4065: $e0 $02
	ret  nz                                          ; $4067: $c0

	ret  c                                           ; $4068: $d8

	ldh  [$85], a                                    ; $4069: $e0 $85
	nop                                              ; $406b: $00
	nop                                              ; $406c: $00
	inc  de                                          ; $406d: $13
	add  l                                           ; $406e: $85
	inc  e                                           ; $406f: $1c
	nop                                              ; $4070: $00
	rrca                                             ; $4071: $0f
	add  l                                           ; $4072: $85
	nop                                              ; $4073: $00
	ld   bc, $7e81                                   ; $4074: $01 $81 $7e
	add  b                                           ; $4077: $80
	ld   [hl], e                                     ; $4078: $73
	add  b                                           ; $4079: $80
	ld   c, a                                        ; $407a: $4f
	add  b                                           ; $407b: $80
	ld   c, [hl]                                     ; $407c: $4e
	nop                                              ; $407d: $00
	rst  $38                                         ; $407e: $ff
	add  l                                           ; $407f: $85
	nop                                              ; $4080: $00
	ld   bc, $7986                                   ; $4081: $01 $86 $79
	add  b                                           ; $4084: $80
	ld   sp, hl                                      ; $4085: $f9
	add  b                                           ; $4086: $80
	pop  bc                                          ; $4087: $c1
	add  b                                           ; $4088: $80
	add  hl, de                                      ; $4089: $19
	nop                                              ; $408a: $00
	rst  $38                                         ; $408b: $ff
	add  [hl]                                        ; $408c: $86
	nop                                              ; $408d: $00
	add  l                                           ; $408e: $85
	ret  nz                                          ; $408f: $c0

	nop                                              ; $4090: $00
	db   $d3                                         ; $4091: $d3
	adc  l                                           ; $4092: $8d
	inc  c                                           ; $4093: $0c
	ld   [bc], a                                     ; $4094: $02
	ld   l, [hl]                                     ; $4095: $6e
	cp   $f0                                         ; $4096: $fe $f0
	add  b                                           ; $4098: $80
	or   $80                                         ; $4099: $f6 $80
	jp   z, $9080                                    ; $409b: $ca $80 $90

	add  b                                           ; $409e: $80
	sbc  d                                           ; $409f: $9a

jr_07a_40a0:
	add  b                                           ; $40a0: $80

jr_07a_40a1:
	sbc  [hl]                                        ; $40a1: $9e
	add  b                                           ; $40a2: $80
	sbc  $01                                         ; $40a3: $de $01
	call z, $8d1c                                    ; $40a5: $cc $1c $8d
	ld   d, c                                        ; $40a8: $51
	nop                                              ; $40a9: $00
	cp   $8d                                         ; $40aa: $fe $8d
	add  b                                           ; $40ac: $80
	inc  bc                                          ; $40ad: $03
	ldh  a, [rAUD1SWEEP]                             ; $40ae: $f0 $10
	jr   jr_07a_40ea                                 ; $40b0: $18 $38

	add  b                                           ; $40b2: $80
	ld   a, $00                                      ; $40b3: $3e $00
	ccf                                              ; $40b5: $3f
	add  b                                           ; $40b6: $80
	cpl                                              ; $40b7: $2f
	add  b                                           ; $40b8: $80
	inc  hl                                          ; $40b9: $23
	add  b                                           ; $40ba: $80
	ld   hl, $2080                                   ; $40bb: $21 $80 $20
	ld   bc, $5728                                   ; $40be: $01 $28 $57
	add  l                                           ; $40c1: $85
	nop                                              ; $40c2: $00
	add  b                                           ; $40c3: $80
	ret  nz                                          ; $40c4: $c0

	add  b                                           ; $40c5: $80
	ldh  [rTIMA], a                                  ; $40c6: $e0 $05
	ldh  a, [$78]                                    ; $40c8: $f0 $78
	ld   l, h                                        ; $40ca: $6c
	jr   c, jr_07a_40a0                              ; $40cb: $38 $d3

	ld   [$0081], sp                                 ; $40cd: $08 $81 $00
	nop                                              ; $40d0: $00
	inc  b                                           ; $40d1: $04
	add  b                                           ; $40d2: $80
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	ld   [bc], a                                     ; $40d5: $02
	add  c                                           ; $40d6: $81
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	ld   bc, $0081                                   ; $40d9: $01 $81 $00
	nop                                              ; $40dc: $00
	rst  $38                                         ; $40dd: $ff
	adc  e                                           ; $40de: $8b
	nop                                              ; $40df: $00
	ld   b, $80                                      ; $40e0: $06 $80
	nop                                              ; $40e2: $00
	and  b                                           ; $40e3: $a0
	rst  JumpTable                                         ; $40e4: $df
	rst  $20                                         ; $40e5: $e7
	ld   h, a                                        ; $40e6: $67
	ld   a, a                                        ; $40e7: $7f
	add  b                                           ; $40e8: $80
	ccf                                              ; $40e9: $3f

jr_07a_40ea:
	add  a                                           ; $40ea: $87
	nop                                              ; $40eb: $00
	inc  b                                           ; $40ec: $04
	ld   [bc], a                                     ; $40ed: $02
	cp   $f4                                         ; $40ee: $fe $f4
	ld   hl, sp-$10                                  ; $40f0: $f8 $f0
	add  b                                           ; $40f2: $80
	ldh  [$87], a                                    ; $40f3: $e0 $87
	nop                                              ; $40f5: $00
	add  b                                           ; $40f6: $80
	ld   bc, $0382                                   ; $40f7: $01 $82 $03
	add  b                                           ; $40fa: $80
	rlca                                             ; $40fb: $07
	add  b                                           ; $40fc: $80
	ld   b, $80                                      ; $40fd: $06 $80
	add  hl, bc                                      ; $40ff: $09
	rlca                                             ; $4100: $07
	dec  de                                          ; $4101: $1b
	ld   a, [de]                                     ; $4102: $1a
	ld   [de], a                                     ; $4103: $12
	db   $10                                         ; $4104: $10
	adc  h                                           ; $4105: $8c
	sub  b                                           ; $4106: $90
	add  b                                           ; $4107: $80
	and  b                                           ; $4108: $a0
	add  c                                           ; $4109: $81
	nop                                              ; $410a: $00
	ld   [bc], a                                     ; $410b: $02
	ld   b, b                                        ; $410c: $40
	nop                                              ; $410d: $00
	add  b                                           ; $410e: $80
	adc  b                                           ; $410f: $88
	nop                                              ; $4110: $00
	add  b                                           ; $4111: $80
	ld   bc, $0380                                   ; $4112: $01 $80 $03
	add  b                                           ; $4115: $80
	rrca                                             ; $4116: $0f
	rlca                                             ; $4117: $07
	rra                                              ; $4118: $1f
	ld   e, $7e                                      ; $4119: $1e $7e
	ld   a, b                                        ; $411b: $78
	ld   hl, sp+$70                                  ; $411c: $f8 $70
	or   a                                           ; $411e: $b7
	jr   nc, jr_07a_40a1                             ; $411f: $30 $80

	ld   [hl], b                                     ; $4121: $70
	add  c                                           ; $4122: $81
	ldh  a, [$80]                                    ; $4123: $f0 $80
	ret  nc                                          ; $4125: $d0

	add  h                                           ; $4126: $84
	db   $10                                         ; $4127: $10
	ld   bc, $bb50                                   ; $4128: $01 $50 $bb
	adc  l                                           ; $412b: $8d
	inc  e                                           ; $412c: $1c
	nop                                              ; $412d: $00
	and  b                                           ; $412e: $a0
	add  b                                           ; $412f: $80
	ld   d, b                                        ; $4130: $50
	add  h                                           ; $4131: $84
	ld   d, e                                        ; $4132: $53
	add  c                                           ; $4133: $81
	ld   d, d                                        ; $4134: $52
	add  b                                           ; $4135: $80
	ld   d, e                                        ; $4136: $53
	add  b                                           ; $4137: $80
	ld   d, d                                        ; $4138: $52
	ld   b, $0b                                      ; $4139: $06 $0b
	ld   sp, hl                                      ; $413b: $f9
	jp   hl                                          ; $413c: $e9


	ld   sp, hl                                      ; $413d: $f9
	jp   hl                                          ; $413e: $e9


	ld   sp, hl                                      ; $413f: $f9
	xor  c                                           ; $4140: $a9
	add  b                                           ; $4141: $80
	reti                                             ; $4142: $d9


	add  c                                           ; $4143: $81
	ld   e, c                                        ; $4144: $59
	add  b                                           ; $4145: $80
	add  hl, de                                      ; $4146: $19
	add  b                                           ; $4147: $80
	reti                                             ; $4148: $d9


	nop                                              ; $4149: $00
	rst  $38                                         ; $414a: $ff
	adc  l                                           ; $414b: $8d
	ret  nz                                          ; $414c: $c0

	nop                                              ; $414d: $00
	db   $d3                                         ; $414e: $d3
	adc  l                                           ; $414f: $8d
	inc  c                                           ; $4150: $0c
	inc  bc                                          ; $4151: $03
	ld   h, b                                        ; $4152: $60
	add  h                                           ; $4153: $84
	cp   h                                           ; $4154: $bc
	cp   b                                           ; $4155: $b8
	add  b                                           ; $4156: $80
	cp   [hl]                                        ; $4157: $be
	add  b                                           ; $4158: $80
	adc  [hl]                                        ; $4159: $8e
	nop                                              ; $415a: $00
	add  b                                           ; $415b: $80
	add  b                                           ; $415c: $80
	or   b                                           ; $415d: $b0
	dec  b                                           ; $415e: $05
	add  b                                           ; $415f: $80
	rst  $20                                         ; $4160: $e7
	rst  $38                                         ; $4161: $ff
	add  sp, -$01                                    ; $4162: $e8 $ff
	ld   e, a                                        ; $4164: $5f
	add  l                                           ; $4165: $85
	ld   d, c                                        ; $4166: $51
	nop                                              ; $4167: $00
	ld   b, c                                        ; $4168: $41
	add  l                                           ; $4169: $85
	ld   d, c                                        ; $416a: $51
	dec  b                                           ; $416b: $05
	sbc  c                                           ; $416c: $99
	ld   l, $2a                                      ; $416d: $2e $2a
	cpl                                              ; $416f: $2f
	inc  l                                           ; $4170: $2c
	cpl                                              ; $4171: $2f
	add  b                                           ; $4172: $80
	daa                                              ; $4173: $27
	inc  b                                           ; $4174: $04
	ld   hl, $2829                                   ; $4175: $21 $29 $28
	ld   l, $2a                                      ; $4178: $2e $2a
	add  c                                           ; $417a: $81
	ld   h, $00                                      ; $417b: $26 $00
	xor  c                                           ; $417d: $a9
	add  b                                           ; $417e: $80
	ld   [$8880], sp                                 ; $417f: $08 $80 $88
	inc  bc                                          ; $4182: $03
	ret  z                                           ; $4183: $c8

	ld   c, b                                        ; $4184: $48
	ret  z                                           ; $4185: $c8

	ld   [$4885], sp                                 ; $4186: $08 $85 $48
	nop                                              ; $4189: $00
	db   $fc                                         ; $418a: $fc
	add  a                                           ; $418b: $87
	nop                                              ; $418c: $00
	ld   b, $30                                      ; $418d: $06 $30
	ld   d, b                                        ; $418f: $50
	ld   c, h                                        ; $4190: $4c
	ld   e, h                                        ; $4191: $5c
	ld   c, e                                        ; $4192: $4b
	ld   b, a                                        ; $4193: $47
	ld   b, e                                        ; $4194: $43
	add  b                                           ; $4195: $80
	nop                                              ; $4196: $00
	nop                                              ; $4197: $00
	jr   nz, @-$7e                                   ; $4198: $20 $80

	nop                                              ; $419a: $00
	ld   [bc], a                                     ; $419b: $02
	stop                                             ; $419c: $10 $00
	ld   [$0081], sp                                 ; $419e: $08 $81 $00
	ld   bc, $0004                                   ; $41a1: $01 $04 $00
	add  b                                           ; $41a4: $80
	ld   [bc], a                                     ; $41a5: $02
	ld   bc, $00fc                                   ; $41a6: $01 $fc $00
	add  b                                           ; $41a9: $80
	rra                                              ; $41aa: $1f
	ld   b, $00                                      ; $41ab: $06 $00
	ccf                                              ; $41ad: $3f
	cpl                                              ; $41ae: $2f
	rrca                                             ; $41af: $0f
	rla                                              ; $41b0: $17
	rlca                                             ; $41b1: $07
	rrca                                             ; $41b2: $0f
	add  l                                           ; $41b3: $85
	nop                                              ; $41b4: $00
	add  b                                           ; $41b5: $80
	ret  nz                                          ; $41b6: $c0

	nop                                              ; $41b7: $00
	nop                                              ; $41b8: $00
	add  b                                           ; $41b9: $80
	ldh  [$80], a                                    ; $41ba: $e0 $80
	ret  nz                                          ; $41bc: $c0

	ld   [bc], a                                     ; $41bd: $02
	add  b                                           ; $41be: $80
	add  c                                           ; $41bf: $81
	ld   bc, $0082                                   ; $41c0: $01 $82 $00
	ld   b, $23                                      ; $41c3: $06 $23
	jr   nz, jr_07a_420b                             ; $41c5: $20 $44

	ld   b, b                                        ; $41c7: $40

jr_07a_41c8:
	ld   c, b                                        ; $41c8: $48
	ld   b, b                                        ; $41c9: $40
	sub  b                                           ; $41ca: $90
	add  c                                           ; $41cb: $81
	add  b                                           ; $41cc: $80
	inc  bc                                          ; $41cd: $03
	jr   nz, jr_07a_41d0                             ; $41ce: $20 $00

jr_07a_41d0:
	ld   b, b                                        ; $41d0: $40
	nop                                              ; $41d1: $00
	add  c                                           ; $41d2: $81
	add  b                                           ; $41d3: $80
	adc  c                                           ; $41d4: $89
	nop                                              ; $41d5: $00
	ld   bc, $2830                                   ; $41d6: $01 $30 $28
	add  b                                           ; $41d9: $80
	ld   l, b                                        ; $41da: $68
	inc  b                                           ; $41db: $04
	rst  $20                                         ; $41dc: $e7
	ld   hl, $4761                                   ; $41dd: $21 $61 $47
	ld   b, h                                        ; $41e0: $44
	add  b                                           ; $41e1: $80
	ld   c, a                                        ; $41e2: $4f
	ld   bc, $424b                                   ; $41e3: $01 $4b $42
	add  d                                           ; $41e6: $82
	ld   c, d                                        ; $41e7: $4a
	dec  b                                           ; $41e8: $05
	ld   c, e                                        ; $41e9: $4b
	ld   c, d                                        ; $41ea: $4a
	ld   c, e                                        ; $41eb: $4b
	ld   b, a                                        ; $41ec: $47
	ret  nc                                          ; $41ed: $d0

	ld   d, b                                        ; $41ee: $50
	add  c                                           ; $41ef: $81
	ret  nc                                          ; $41f0: $d0

	add  b                                           ; $41f1: $80
	sub  b                                           ; $41f2: $90
	add  c                                           ; $41f3: $81
	db   $10                                         ; $41f4: $10
	add  c                                           ; $41f5: $81
	ret  nc                                          ; $41f6: $d0

	inc  bc                                          ; $41f7: $03
	ld   d, b                                        ; $41f8: $50
	ret  nc                                          ; $41f9: $d0

	rlca                                             ; $41fa: $07
	ld   d, d                                        ; $41fb: $52
	add  b                                           ; $41fc: $80
	ld   d, e                                        ; $41fd: $53
	add  c                                           ; $41fe: $81
	ld   d, d                                        ; $41ff: $52
	ld   [$5253], sp                                 ; $4200: $08 $53 $52
	ld   d, e                                        ; $4203: $53
	ld   d, d                                        ; $4204: $52
	ld   d, e                                        ; $4205: $53
	ld   d, d                                        ; $4206: $52
	ld   d, e                                        ; $4207: $53
	ld   d, d                                        ; $4208: $52
	ld   d, b                                        ; $4209: $50
	add  b                                           ; $420a: $80

jr_07a_420b:
	ld   e, c                                        ; $420b: $59
	add  b                                           ; $420c: $80
	reti                                             ; $420d: $d9


	add  b                                           ; $420e: $80
	add  hl, de                                      ; $420f: $19
	ld   a, [bc]                                     ; $4210: $0a
	cp   c                                           ; $4211: $b9
	ld   sp, hl                                      ; $4212: $f9
	add  hl, sp                                      ; $4213: $39
	ld   sp, hl                                      ; $4214: $f9
	add  hl, sp                                      ; $4215: $39
	ld   sp, hl                                      ; $4216: $f9
	add  hl, sp                                      ; $4217: $39
	ld   sp, hl                                      ; $4218: $f9
	add  c                                           ; $4219: $81
	ld   bc, $8dec                                   ; $421a: $01 $ec $8d
	inc  c                                           ; $421d: $0c
	dec  bc                                          ; $421e: $0b
	db   $e4                                         ; $421f: $e4
	rlca                                             ; $4220: $07
	inc  bc                                          ; $4221: $03
	nop                                              ; $4222: $00
	ld   [$e0ff], a                                  ; $4223: $ea $ff $e0
	rst  $38                                         ; $4226: $ff
	db   $f4                                         ; $4227: $f4
	rst  $38                                         ; $4228: $ff
	cp   $ff                                         ; $4229: $fe $ff
	add  e                                           ; $422b: $83
	nop                                              ; $422c: $00
	add  b                                           ; $422d: $80
	sub  c                                           ; $422e: $91
	add  b                                           ; $422f: $80
	ld   de, $f181                                   ; $4230: $11 $81 $f1
	dec  b                                           ; $4233: $05
	ld   [hl], c                                     ; $4234: $71
	pop  af                                          ; $4235: $f1
	or   c                                           ; $4236: $b1
	pop  af                                          ; $4237: $f1
	ld   sp, $8011                                   ; $4238: $31 $11 $80
	ld   d, c                                        ; $423b: $51
	nop                                              ; $423c: $00
	sub  l                                           ; $423d: $95
	add  c                                           ; $423e: $81
	ld   h, $81                                      ; $423f: $26 $81
	ld   [hl+], a                                    ; $4241: $22
	add  b                                           ; $4242: $80
	ld   l, $82                                      ; $4243: $2e $82
	jr   nz, jr_07a_41c8                             ; $4245: $20 $81

	cpl                                              ; $4247: $2f
	nop                                              ; $4248: $00
	db   $e4                                         ; $4249: $e4
	adc  d                                           ; $424a: $8a
	ld   c, b                                        ; $424b: $48
	add  c                                           ; $424c: $81
	ret  z                                           ; $424d: $c8

	ld   b, $52                                      ; $424e: $06 $52
	ld   d, c                                        ; $4250: $51
	ld   c, h                                        ; $4251: $4c
	ld   e, h                                        ; $4252: $5c
	ld   d, d                                        ; $4253: $52
	ld   c, [hl]                                     ; $4254: $4e
	ld   e, [hl]                                     ; $4255: $5e
	add  b                                           ; $4256: $80
	ld   d, d                                        ; $4257: $52
	add  l                                           ; $4258: $85
	ld   e, d                                        ; $4259: $5a
	nop                                              ; $425a: $00
	halt                                             ; $425b: $76
	adc  l                                           ; $425c: $8d
	add  e                                           ; $425d: $83
	nop                                              ; $425e: $00
	ld   l, e                                        ; $425f: $6b
	add  e                                           ; $4260: $83
	pop  af                                          ; $4261: $f1
	nop                                              ; $4262: $00
	rst  $30                                         ; $4263: $f7
	add  c                                           ; $4264: $81
	ldh  a, [rP1]                                    ; $4265: $f0 $00
	or   $81                                         ; $4267: $f6 $81
	pop  af                                          ; $4269: $f1
	ld   [bc], a                                     ; $426a: $02
	rst  $30                                         ; $426b: $f7
	ldh  a, [$30]                                    ; $426c: $f0 $30
	add  e                                           ; $426e: $83
	rra                                              ; $426f: $1f
	nop                                              ; $4270: $00
	rst  JumpTable                                         ; $4271: $df
	add  c                                           ; $4272: $81
	rra                                              ; $4273: $1f
	nop                                              ; $4274: $00
	rst  JumpTable                                         ; $4275: $df
	add  c                                           ; $4276: $81
	rra                                              ; $4277: $1f

jr_07a_4278:
	ld   [bc], a                                     ; $4278: $02
	rst  JumpTable                                         ; $4279: $df
	rra                                              ; $427a: $1f
	pop  af                                          ; $427b: $f1
	add  b                                           ; $427c: $80
	add  c                                           ; $427d: $81
	adc  e                                           ; $427e: $8b
	add  d                                           ; $427f: $82
	nop                                              ; $4280: $00
	ld   [hl], e                                     ; $4281: $73
	add  b                                           ; $4282: $80
	adc  b                                           ; $4283: $88
	inc  b                                           ; $4284: $04
	ld   [$6828], sp                                 ; $4285: $08 $28 $68
	jr   z, @+$6a                                    ; $4288: $28 $68

	add  c                                           ; $428a: $81
	jr   z, jr_07a_428e                              ; $428b: $28 $01

	ld   l, b                                        ; $428d: $68

jr_07a_428e:
	ld   c, b                                        ; $428e: $48
	add  c                                           ; $428f: $81
	xor  b                                           ; $4290: $a8
	ld   [$4bef], sp                                 ; $4291: $08 $ef $4b
	ld   c, c                                        ; $4294: $49
	ld   c, [hl]                                     ; $4295: $4e
	ld   c, d                                        ; $4296: $4a
	ld   c, [hl]                                     ; $4297: $4e
	ld   c, d                                        ; $4298: $4a
	ld   c, [hl]                                     ; $4299: $4e
	ld   c, h                                        ; $429a: $4c
	add  b                                           ; $429b: $80
	ld   c, e                                        ; $429c: $4b
	nop                                              ; $429d: $00
	ld   c, b                                        ; $429e: $48
	add  b                                           ; $429f: $80
	ld   c, a                                        ; $42a0: $4f
	ld   [$4f4e], sp                                 ; $42a1: $08 $4e $4f
	add  $d0                                         ; $42a4: $c6 $d0
	db   $10                                         ; $42a6: $10
	sub  b                                           ; $42a7: $90
	db   $10                                         ; $42a8: $10
	sub  b                                           ; $42a9: $90
	db   $10                                         ; $42aa: $10
	add  b                                           ; $42ab: $80
	sub  b                                           ; $42ac: $90
	add  c                                           ; $42ad: $81
	db   $10                                         ; $42ae: $10
	add  b                                           ; $42af: $80
	ret  nc                                          ; $42b0: $d0

	ld   [$9010], sp                                 ; $42b1: $08 $10 $90
	ret  nz                                          ; $42b4: $c0

	ld   d, a                                        ; $42b5: $57
	jr   @+$61                                       ; $42b6: $18 $5f

	ld   b, [hl]                                     ; $42b8: $46
	ld   c, a                                        ; $42b9: $4f
	ld   c, [hl]                                     ; $42ba: $4e
	add  b                                           ; $42bb: $80
	ld   b, b                                        ; $42bc: $40
	add  c                                           ; $42bd: $81
	ld   a, a                                        ; $42be: $7f
	ld   bc, $7f40                                   ; $42bf: $01 $40 $7f
	add  b                                           ; $42c2: $80
	ld   b, b                                        ; $42c3: $40
	nop                                              ; $42c4: $00
	ld   b, c                                        ; $42c5: $41
	add  d                                           ; $42c6: $82
	ld   sp, hl                                      ; $42c7: $f9
	add  b                                           ; $42c8: $80
	ld   bc, $f983                                   ; $42c9: $01 $83 $f9
	ld   bc, $8179                                   ; $42cc: $01 $79 $81
	add  b                                           ; $42cf: $80
	ld   bc, $ec00                                   ; $42d0: $01 $00 $ec
	adc  l                                           ; $42d3: $8d
	inc  c                                           ; $42d4: $0c
	nop                                              ; $42d5: $00
	ldh  [$81], a                                    ; $42d6: $e0 $81
	nop                                              ; $42d8: $00
	inc  c                                           ; $42d9: $0c
	ret  nc                                          ; $42da: $d0

	cp   $c6                                         ; $42db: $fe $c6
	cp   $e6                                         ; $42dd: $fe $e6
	cp   $e6                                         ; $42df: $fe $e6
	cp   $e2                                         ; $42e1: $fe $e2
	cp   $f2                                         ; $42e3: $fe $f2
	cp   $46                                         ; $42e5: $fe $46
	adc  l                                           ; $42e7: $8d
	ld   d, c                                        ; $42e8: $51
	ld   bc, $2091                                   ; $42e9: $01 $91 $20
	add  b                                           ; $42ec: $80
	cpl                                              ; $42ed: $2f
	add  d                                           ; $42ee: $82
	jr   nz, jr_07a_42f1                             ; $42ef: $20 $00

jr_07a_42f1:
	jr   z, jr_07a_4278                              ; $42f1: $28 $85

	ld   l, $01                                      ; $42f3: $2e $01
	db   $ed                                         ; $42f5: $ed
	ld   c, b                                        ; $42f6: $48
	add  b                                           ; $42f7: $80
	ret  z                                           ; $42f8: $c8

	adc  d                                           ; $42f9: $8a
	ld   c, b                                        ; $42fa: $48
	ld   bc, $5ad9                                   ; $42fb: $01 $d9 $5a
	add  c                                           ; $42fe: $81

Call_07a_42ff:
	ld   b, d                                        ; $42ff: $42
	add  b                                           ; $4300: $80
	ld   e, [hl]                                     ; $4301: $5e
	add  d                                           ; $4302: $82
	ld   b, d                                        ; $4303: $42
	add  e                                           ; $4304: $83
	ld   e, d                                        ; $4305: $5a
	nop                                              ; $4306: $00
	ld   h, [hl]                                     ; $4307: $66
	adc  c                                           ; $4308: $89
	add  e                                           ; $4309: $83
	db   $10                                         ; $430a: $10
	adc  l                                           ; $430b: $8d
	add  b                                           ; $430c: $80
	ldh  a, [$80]                                    ; $430d: $f0 $80
	ld   d, $f1                                      ; $430f: $16 $f1
	rst  $30                                         ; $4311: $f7
	or   $f0                                         ; $4312: $f6 $f0
	pop  af                                          ; $4314: $f1
	rst  $30                                         ; $4315: $f7
	or   $f0                                         ; $4316: $f6 $f0
	pop  af                                          ; $4318: $f1
	rst  $30                                         ; $4319: $f7
	or   $e6                                         ; $431a: $f6 $e6
	add  c                                           ; $431c: $81
	nop                                              ; $431d: $00
	ld   bc, $1fd0                                   ; $431e: $01 $d0 $1f
	add  b                                           ; $4321: $80
	rst  JumpTable                                         ; $4322: $df
	add  b                                           ; $4323: $80
	rra                                              ; $4324: $1f
	add  b                                           ; $4325: $80
	rst  JumpTable                                         ; $4326: $df
	add  b                                           ; $4327: $80
	rra                                              ; $4328: $1f
	add  b                                           ; $4329: $80
	rst  JumpTable                                         ; $432a: $df
	nop                                              ; $432b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432c: $cf
	add  c                                           ; $432d: $81
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	cp   $89                                         ; $4330: $fe $89
	add  d                                           ; $4332: $82
	inc  b                                           ; $4333: $04
	ld   h, d                                        ; $4334: $62
	ld   [bc], a                                     ; $4335: $02
	ld   a, [de]                                     ; $4336: $1a
	ld   [bc], a                                     ; $4337: $02
	adc  e                                           ; $4338: $8b
	add  b                                           ; $4339: $80
	ret  z                                           ; $433a: $c8

	add  c                                           ; $433b: $81
	adc  b                                           ; $433c: $88
	add  b                                           ; $433d: $80
	ld   [$2800], sp                                 ; $433e: $08 $00 $28
	add  l                                           ; $4341: $85
	ld   l, b                                        ; $4342: $68
	nop                                              ; $4343: $00
	ld   bc, $4f80                                   ; $4344: $01 $80 $4f
	nop                                              ; $4347: $00
	ld   c, [hl]                                     ; $4348: $4e
	add  c                                           ; $4349: $81
	ld   c, d                                        ; $434a: $4a
	add  a                                           ; $434b: $87
	ld   c, e                                        ; $434c: $4b
	nop                                              ; $434d: $00
	ld   c, $80                                      ; $434e: $0e $80
	sub  b                                           ; $4350: $90
	add  b                                           ; $4351: $80
	db   $10                                         ; $4352: $10
	add  b                                           ; $4353: $80
	ld   d, b                                        ; $4354: $50
	add  a                                           ; $4355: $87
	ret  nc                                          ; $4356: $d0

	ld   bc, $4fd8                                   ; $4357: $01 $d8 $4f
	add  b                                           ; $435a: $80
	ld   d, a                                        ; $435b: $57
	add  e                                           ; $435c: $83
	ld   d, b                                        ; $435d: $50
	add  l                                           ; $435e: $85
	ld   d, e                                        ; $435f: $53
	ld   bc, $f9ba                                   ; $4360: $01 $ba $f9
	add  b                                           ; $4363: $80
	pop  af                                          ; $4364: $f1
	add  e                                           ; $4365: $83
	ld   bc, $f981                                   ; $4366: $01 $81 $f9
	inc  b                                           ; $4369: $04
	pop  af                                          ; $436a: $f1
	ld   sp, hl                                      ; $436b: $f9
	pop  af                                          ; $436c: $f1
	ld   sp, hl                                      ; $436d: $f9
	inc  d                                           ; $436e: $14
	adc  l                                           ; $436f: $8d
	inc  c                                           ; $4370: $0c
	dec  bc                                          ; $4371: $0b
	inc  d                                           ; $4372: $14
	cp   $f0                                         ; $4373: $fe $f0
	cp   $f8                                         ; $4375: $fe $f8
	cp   $fc                                         ; $4377: $fe $fc
	cp   $fc                                         ; $4379: $fe $fc
	cp   $f2                                         ; $437b: $fe $f2
	ldh  a, [$80]                                    ; $437d: $f0 $80
	rlca                                             ; $437f: $07
	add  b                                           ; $4380: $80
	ccf                                              ; $4381: $3f
	nop                                              ; $4382: $00
	ld   b, b                                        ; $4383: $40
	add  b                                           ; $4384: $80

jr_07a_4385:
	ld   d, c                                        ; $4385: $51
	dec  c                                           ; $4386: $0d
	ld   b, c                                        ; $4387: $41
	ld   e, c                                        ; $4388: $59
	ld   bc, $6141                                   ; $4389: $01 $41 $61
	ld   a, c                                        ; $438c: $79
	add  hl, hl                                      ; $438d: $29
	pop  hl                                          ; $438e: $e1
	and  c                                           ; $438f: $a1
	ld   l, c                                        ; $4390: $69
	ld   bc, $8191                                   ; $4391: $01 $91 $81
	xor  $89                                         ; $4394: $ee $89
	add  b                                           ; $4396: $80
	add  b                                           ; $4397: $80
	add  e                                           ; $4398: $83
	add  b                                           ; $4399: $80
	sbc  a                                           ; $439a: $9f
	nop                                              ; $439b: $00
	rst  $30                                         ; $439c: $f7
	add  h                                           ; $439d: $84
	ld   l, $01                                      ; $439e: $2e $01
	inc  l                                           ; $43a0: $2c
	inc  h                                           ; $43a1: $24
	add  b                                           ; $43a2: $80
	inc  hl                                          ; $43a3: $23
	ld   bc, $af2f                                   ; $43a4: $01 $2f $af
	add  b                                           ; $43a7: $80
	inc  l                                           ; $43a8: $2c
	ld   [bc], a                                     ; $43a9: $02
	inc  hl                                          ; $43aa: $23
	ld   l, b                                        ; $43ab: $68
	ld   c, b                                        ; $43ac: $48
	add  b                                           ; $43ad: $80
	ld   e, c                                        ; $43ae: $59
	add  b                                           ; $43af: $80
	ld   e, e                                        ; $43b0: $5b
	inc  b                                           ; $43b1: $04
	ld   c, e                                        ; $43b2: $4b
	ld   c, d                                        ; $43b3: $4a
	ld   c, e                                        ; $43b4: $4b
	ret                                              ; $43b5: $c9


	adc  c                                           ; $43b6: $89
	add  b                                           ; $43b7: $80
	dec  bc                                          ; $43b8: $0b
	add  b                                           ; $43b9: $80
	ld   c, e                                        ; $43ba: $4b
	ld   [bc], a                                     ; $43bb: $02
	rlc  b                                           ; $43bc: $cb $00
	ld   e, d                                        ; $43be: $5a
	add  c                                           ; $43bf: $81
	jp   c, $c280                                    ; $43c0: $da $80 $c2

	add  b                                           ; $43c3: $80
	ld   e, [hl]                                     ; $43c4: $5e
	add  c                                           ; $43c5: $81
	jp   nz, $da82                                   ; $43c6: $c2 $82 $da

	ld   bc, $1494                                   ; $43c9: $01 $94 $14
	adc  b                                           ; $43cc: $88
	ld   d, h                                        ; $43cd: $54
	add  b                                           ; $43ce: $80
	ld   d, b                                        ; $43cf: $50
	add  b                                           ; $43d0: $80
	ld   b, a                                        ; $43d1: $47
	add  b                                           ; $43d2: $80
	rst  $10                                         ; $43d3: $d7
	add  b                                           ; $43d4: $80
	xor  d                                           ; $43d5: $aa
	add  b                                           ; $43d6: $80
	ld   d, l                                        ; $43d7: $55
	add  b                                           ; $43d8: $80
	ld   a, [hl+]                                    ; $43d9: $2a
	add  h                                           ; $43da: $84
	nop                                              ; $43db: $00
	inc  bc                                          ; $43dc: $03
	push af                                          ; $43dd: $f5
	rst  $38                                         ; $43de: $ff
	ld   e, [hl]                                     ; $43df: $5e
	ld   d, h                                        ; $43e0: $54
	add  b                                           ; $43e1: $80
	xor  d                                           ; $43e2: $aa
	add  b                                           ; $43e3: $80
	ld   d, h                                        ; $43e4: $54
	add  b                                           ; $43e5: $80
	xor  d                                           ; $43e6: $aa
	add  b                                           ; $43e7: $80
	inc  d                                           ; $43e8: $14
	add  b                                           ; $43e9: $80
	ld   [bc], a                                     ; $43ea: $02
	add  b                                           ; $43eb: $80
	nop                                              ; $43ec: $00
	add  b                                           ; $43ed: $80
	rst  $38                                         ; $43ee: $ff
	ld   bc, $4342                                   ; $43ef: $01 $42 $43
	add  c                                           ; $43f2: $81
	ld   d, e                                        ; $43f3: $53
	add  b                                           ; $43f4: $80
	ld   d, d                                        ; $43f5: $52
	add  b                                           ; $43f6: $80
	ld   d, e                                        ; $43f7: $53
	add  c                                           ; $43f8: $81
	ld   d, d                                        ; $43f9: $52
	add  b                                           ; $43fa: $80
	ld   [de], a                                     ; $43fb: $12
	add  b                                           ; $43fc: $80
	add  d                                           ; $43fd: $82
	nop                                              ; $43fe: $00
	cpl                                              ; $43ff: $2f
	add  b                                           ; $4400: $80
	ld   l, b                                        ; $4401: $68
	nop                                              ; $4402: $00
	jr   z, jr_07a_4385                              ; $4403: $28 $80

	ld   c, $80                                      ; $4405: $0e $80
	ld   l, a                                        ; $4407: $6f
	inc  b                                           ; $4408: $04
	rrca                                             ; $4409: $0f
	add  hl, bc                                      ; $440a: $09
	add  hl, hl                                      ; $440b: $29
	inc  l                                           ; $440c: $2c
	ld   l, $81                                      ; $440d: $2e $81
	ld   l, a                                        ; $440f: $6f
	nop                                              ; $4410: $00
	rlca                                             ; $4411: $07
	add  b                                           ; $4412: $80
	ld   c, e                                        ; $4413: $4b
	add  c                                           ; $4414: $81
	ld   h, e                                        ; $4415: $63
	nop                                              ; $4416: $00
	ldh  [c], a                                      ; $4417: $e2
	add  c                                           ; $4418: $81
	jp   $4880                                       ; $4419: $c3 $80 $48


	add  b                                           ; $441c: $80
	ld   c, [hl]                                     ; $441d: $4e
	add  b                                           ; $441e: $80
	ld   c, a                                        ; $441f: $4f
	nop                                              ; $4420: $00
	rlca                                             ; $4421: $07
	add  h                                           ; $4422: $84
	ret  nc                                          ; $4423: $d0

	nop                                              ; $4424: $00
	db   $10                                         ; $4425: $10
	add  d                                           ; $4426: $82
	ret  nc                                          ; $4427: $d0

	add  b                                           ; $4428: $80
	db   $10                                         ; $4429: $10
	ld   [bc], a                                     ; $442a: $02
	sub  $d2                                         ; $442b: $d6 $d2
	inc  bc                                          ; $442d: $03
	add  h                                           ; $442e: $84
	ld   d, e                                        ; $442f: $53
	ld   bc, $4313                                   ; $4430: $01 $13 $43
	add  c                                           ; $4433: $81
	jp   $8314                                       ; $4434: $c3 $14 $83


	inc  bc                                          ; $4437: $03
	dec  bc                                          ; $4438: $0b
	ld   [$f909], sp                                 ; $4439: $08 $09 $f9
	pop  hl                                          ; $443c: $e1
	ld   sp, hl                                      ; $443d: $f9
	pop  bc                                          ; $443e: $c1
	ld   sp, hl                                      ; $443f: $f9
	ret                                              ; $4440: $c9


	ld   sp, hl                                      ; $4441: $f9
	reti                                             ; $4442: $d9


	ld   sp, hl                                      ; $4443: $f9
	sbc  c                                           ; $4444: $99
	ld   sp, hl                                      ; $4445: $f9
	add  hl, de                                      ; $4446: $19
	ld   sp, hl                                      ; $4447: $f9
	cp   c                                           ; $4448: $b9
	ld   sp, hl                                      ; $4449: $f9
	db   $ec                                         ; $444a: $ec
	adc  l                                           ; $444b: $8d
	inc  c                                           ; $444c: $0c
	ld   bc, $fe1e                                   ; $444d: $01 $1e $fe
	add  b                                           ; $4450: $80
	ldh  [$80], a                                    ; $4451: $e0 $80
	rlca                                             ; $4453: $07
	add  b                                           ; $4454: $80
	ccf                                              ; $4455: $3f
	add  d                                           ; $4456: $82
	rst  $38                                         ; $4457: $ff
	add  b                                           ; $4458: $80
	ld   hl, sp-$80                                  ; $4459: $f8 $80
	ret  nz                                          ; $445b: $c0

	ld   bc, $0110                                   ; $445c: $01 $10 $01
	add  b                                           ; $445f: $80
	ld   b, c                                        ; $4460: $41
	ld   [bc], a                                     ; $4461: $02
	pop  bc                                          ; $4462: $c1
	pop  de                                          ; $4463: $d1
	pop  bc                                          ; $4464: $c1
	add  c                                           ; $4465: $81
	pop  de                                          ; $4466: $d1
	add  b                                           ; $4467: $80
	ld   de, $5180                                   ; $4468: $11 $80 $51
	add  b                                           ; $446b: $80
	ld   de, $9104                                   ; $446c: $11 $04 $91
	db   $fc                                         ; $446f: $fc
	db   $fd                                         ; $4470: $fd
	db   $e3                                         ; $4471: $e3
	rst  $30                                         ; $4472: $f7
	add  b                                           ; $4473: $80
	sbc  a                                           ; $4474: $9f
	add  a                                           ; $4475: $87
	cp   a                                           ; $4476: $bf
	nop                                              ; $4477: $00
	ld   a, [hl+]                                    ; $4478: $2a
	add  b                                           ; $4479: $80
	ld   l, $82                                      ; $447a: $2e $82
	and  b                                           ; $447c: $a0
	add  hl, bc                                      ; $447d: $09
	and  [hl]                                        ; $447e: $a6
	and  $ee                                         ; $447f: $e6 $ee
	and  $ee                                         ; $4481: $e6 $ee
	ldh  [c], a                                      ; $4483: $e2
	xor  $e0                                         ; $4484: $ee $e0
	xor  $2d                                         ; $4486: $ee $2d
	adc  e                                           ; $4488: $8b
	res  0, b                                        ; $4489: $cb $80
	jp   z, $1800                                    ; $448b: $ca $00 $18

	add  e                                           ; $448e: $83
	jp   c, $d080                                    ; $448f: $da $80 $d0

	add  hl, bc                                      ; $4492: $09
	ret  nz                                          ; $4493: $c0

	jp   nz, $cdc3                                   ; $4494: $c2 $c3 $cd

	adc  a                                           ; $4497: $8f
	dec  de                                          ; $4498: $1b
	jr   jr_07a_44db                                 ; $4499: $18 $40

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $449b: $cf
	adc  a                                           ; $449c: $8f
	add  b                                           ; $449d: $80
	add  b                                           ; $449e: $80
	dec  de                                          ; $449f: $1b
	rlca                                             ; $44a0: $07
	ld   a, a                                        ; $44a1: $7f
	add  b                                           ; $44a2: $80
	ld   hl, sp-$79                                  ; $44a3: $f8 $87
	rst  $38                                         ; $44a5: $ff
	add  b                                           ; $44a6: $80
	ld   hl, sp-$79                                  ; $44a7: $f8 $87
	rst  $38                                         ; $44a9: $ff
	add  b                                           ; $44aa: $80
	ld   hl, sp-$07                                  ; $44ab: $f8 $f9
	rst  $38                                         ; $44ad: $ff
	ld   c, $08                                      ; $44ae: $0e $08
	ld   sp, hl                                      ; $44b0: $f9
	rst  $38                                         ; $44b1: $ff
	add  hl, bc                                      ; $44b2: $09
	rrca                                             ; $44b3: $0f
	ldh  a, [rIE]                                    ; $44b4: $f0 $ff
	nop                                              ; $44b6: $00
	rrca                                             ; $44b7: $0f
	add  sp, -$01                                    ; $44b8: $e8 $ff
	ld   [$801f], sp                                 ; $44ba: $08 $1f $80
	rst  $38                                         ; $44bd: $ff
	add  b                                           ; $44be: $80
	nop                                              ; $44bf: $00
	add  d                                           ; $44c0: $82
	rst  $38                                         ; $44c1: $ff
	rlca                                             ; $44c2: $07
	ld   a, a                                        ; $44c3: $7f
	rst  $38                                         ; $44c4: $ff
	nop                                              ; $44c5: $00
	add  b                                           ; $44c6: $80
	ccf                                              ; $44c7: $3f
	rst  $38                                         ; $44c8: $ff
	ccf                                              ; $44c9: $3f
	rst  $38                                         ; $44ca: $ff
	add  b                                           ; $44cb: $80
	jp   nz, $020e                                   ; $44cc: $c2 $0e $02

	ld   l, d                                        ; $44cf: $6a
	adc  d                                           ; $44d0: $8a
	or   $d6                                         ; $44d1: $f6 $d6
	ld   a, [$feba]                                  ; $44d3: $fa $ba $fe
	ld   [bc], a                                     ; $44d6: $02
	ld   a, [hl]                                     ; $44d7: $7e
	ld   bc, $02ff                                   ; $44d8: $01 $ff $02

jr_07a_44db:
	db   $fc                                         ; $44db: $fc
	ld   a, [hl+]                                    ; $44dc: $2a
	add  c                                           ; $44dd: $81
	ld   l, a                                        ; $44de: $6f
	dec  b                                           ; $44df: $05
	rst  $28                                         ; $44e0: $ef
	xor  a                                           ; $44e1: $af
	rrca                                             ; $44e2: $0f
	ld   c, a                                        ; $44e3: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e4: $cf
	adc  a                                           ; $44e5: $8f
	add  b                                           ; $44e6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e7: $cf
	add  b                                           ; $44e8: $80
	ld   l, a                                        ; $44e9: $6f
	ld   [bc], a                                     ; $44ea: $02
	daa                                              ; $44eb: $27
	inc  hl                                          ; $44ec: $23
	ld   c, c                                        ; $44ed: $49
	add  e                                           ; $44ee: $83
	ld   c, b                                        ; $44ef: $48
	adc  b                                           ; $44f0: $88
	ld   c, c                                        ; $44f1: $49
	rlca                                             ; $44f2: $07
	ret  nz                                          ; $44f3: $c0

	db   $d3                                         ; $44f4: $d3
	rla                                              ; $44f5: $17
	dec  d                                           ; $44f6: $15
	dec  de                                          ; $44f7: $1b
	ld   e, $9e                                      ; $44f8: $1e $9e
	sbc  a                                           ; $44fa: $9f
	add  [hl]                                        ; $44fb: $86
	rst  JumpTable                                         ; $44fc: $df
	ld   bc, $cc39                                   ; $44fd: $01 $39 $cc
	add  c                                           ; $4500: $81
	db   $ec                                         ; $4501: $ec
	ld   bc, $ac2c                                   ; $4502: $01 $2c $ac
	add  b                                           ; $4505: $80
	call z, $ec81                                    ; $4506: $cc $81 $ec
	rlca                                             ; $4509: $07
	call z, $ccec                                    ; $450a: $cc $ec $cc
	db   $ec                                         ; $450d: $ec
	ld   h, a                                        ; $450e: $67
	rst  ToBoot                                         ; $450f: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4510: $cf
	rrca                                             ; $4511: $0f
	add  b                                           ; $4512: $80
	inc  bc                                          ; $4513: $03
	nop                                              ; $4514: $00
	nop                                              ; $4515: $00
	add  b                                           ; $4516: $80
	ld   [$7f82], sp                                 ; $4517: $08 $82 $7f
	add  b                                           ; $451a: $80
	ld   e, a                                        ; $451b: $5f
	ld   [bc], a                                     ; $451c: $02
	ld   b, a                                        ; $451d: $47
	ld   c, [hl]                                     ; $451e: $4e
	add  hl, bc                                      ; $451f: $09
	add  b                                           ; $4520: $80
	pop  af                                          ; $4521: $f1
	add  b                                           ; $4522: $80
	ld   sp, hl                                      ; $4523: $f9
	add  b                                           ; $4524: $80
	add  hl, sp                                      ; $4525: $39
	add  b                                           ; $4526: $80
	ld   bc, $a106                                   ; $4527: $01 $06 $a1
	pop  hl                                          ; $452a: $e1
	add  hl, de                                      ; $452b: $19
	ld   sp, hl                                      ; $452c: $f9
	add  hl, bc                                      ; $452d: $09
	ld   sp, hl                                      ; $452e: $f9
	xor  a                                           ; $452f: $af
	adc  c                                           ; $4530: $89
	ret  nz                                          ; $4531: $c0

	add  d                                           ; $4532: $82
	add  b                                           ; $4533: $80
	ld   bc, $00c0                                   ; $4534: $01 $c0 $00
	add  b                                           ; $4537: $80
	inc  bc                                          ; $4538: $03
	add  c                                           ; $4539: $81
	rrca                                             ; $453a: $0f
	add  b                                           ; $453b: $80
	ld   c, $01                                      ; $453c: $0e $01
	ld   [$830e], sp                                 ; $453e: $08 $0e $83
	ld   b, $01                                      ; $4541: $06 $01
	ld   a, h                                        ; $4543: $7c
	ld   l, h                                        ; $4544: $6c
	add  c                                           ; $4545: $81
	db   $ec                                         ; $4546: $ec
	add  b                                           ; $4547: $80
	adc  h                                           ; $4548: $8c
	nop                                              ; $4549: $00
	inc  c                                           ; $454a: $0c
	add  [hl]                                        ; $454b: $86
	call z, $0081                                    ; $454c: $cc $81 $00
	add  b                                           ; $454f: $80
	ld   bc, $070c                                   ; $4550: $01 $0c $07
	sub  a                                           ; $4553: $97
	sbc  a                                           ; $4554: $9f
	or   a                                           ; $4555: $b7
	cp   a                                           ; $4556: $bf
	or   e                                           ; $4557: $b3
	cp   a                                           ; $4558: $bf
	or   c                                           ; $4559: $b1
	cp   a                                           ; $455a: $bf
	or   c                                           ; $455b: $b1
	cp   a                                           ; $455c: $bf
	adc  e                                           ; $455d: $8b
	sub  c                                           ; $455e: $91
	adc  h                                           ; $455f: $8c
	ld   de, $8400                                   ; $4560: $11 $00 $84
	adc  l                                           ; $4563: $8d
	cp   a                                           ; $4564: $bf
	inc  b                                           ; $4565: $04
	ld   h, [hl]                                     ; $4566: $66
	xor  $e8                                         ; $4567: $ee $e8
	xor  $e8                                         ; $4569: $ee $e8
	add  b                                           ; $456b: $80
	xor  $00                                         ; $456c: $ee $00
	db   $ec                                         ; $456e: $ec
	add  b                                           ; $456f: $80
	ldh  [c], a                                      ; $4570: $e2
	add  b                                           ; $4571: $80
	and  $80                                         ; $4572: $e6 $80
	db   $ec                                         ; $4574: $ec
	add  b                                           ; $4575: $80
	and  e                                           ; $4576: $a3
	ld   bc, $c928                                   ; $4577: $01 $28 $c9
	add  c                                           ; $457a: $81
	rlc  b                                           ; $457b: $cb $00
	jp   z, $c881                                    ; $457d: $ca $81 $c8

	ld   a, [bc]                                     ; $4580: $0a
	ret                                              ; $4581: $c9


	add  $c7                                         ; $4582: $c6 $c7
	ret  nz                                          ; $4584: $c0

	rst  ToBoot                                         ; $4585: $c7
	ret  z                                           ; $4586: $c8

	adc  a                                           ; $4587: $8f
	rrca                                             ; $4588: $0f
	adc  a                                           ; $4589: $8f
	add  b                                           ; $458a: $80
	nop                                              ; $458b: $00
	add  b                                           ; $458c: $80
	rra                                              ; $458d: $1f
	add  b                                           ; $458e: $80
	add  b                                           ; $458f: $80
	ld   d, a                                        ; $4590: $57
	rra                                              ; $4591: $1f
	sbc  a                                           ; $4592: $9f
	add  b                                           ; $4593: $80
	nop                                              ; $4594: $00
	rra                                              ; $4595: $1f
	sbc  a                                           ; $4596: $9f
	nop                                              ; $4597: $00
	add  b                                           ; $4598: $80
	rst  ToBoot                                         ; $4599: $c7
	rst  $38                                         ; $459a: $ff
	ld   b, a                                        ; $459b: $47
	ld   a, a                                        ; $459c: $7f
	and  b                                           ; $459d: $a0
	rst  $38                                         ; $459e: $ff
	nop                                              ; $459f: $00
	ld   e, a                                        ; $45a0: $5f
	ret  nz                                          ; $45a1: $c0

	rst  $38                                         ; $45a2: $ff
	ld   b, b                                        ; $45a3: $40
	ld   a, a                                        ; $45a4: $7f
	add  b                                           ; $45a5: $80
	rst  $38                                         ; $45a6: $ff
	nop                                              ; $45a7: $00
	ld   a, a                                        ; $45a8: $7f
	ret  nc                                          ; $45a9: $d0

	rst  $38                                         ; $45aa: $ff
	ret  nc                                          ; $45ab: $d0

	rst  $38                                         ; $45ac: $ff
	nop                                              ; $45ad: $00
	rst  $38                                         ; $45ae: $ff
	nop                                              ; $45af: $00
	rst  $38                                         ; $45b0: $ff
	nop                                              ; $45b1: $00
	rst  $38                                         ; $45b2: $ff
	nop                                              ; $45b3: $00
	rst  $38                                         ; $45b4: $ff
	nop                                              ; $45b5: $00
	rst  $38                                         ; $45b6: $ff
	nop                                              ; $45b7: $00
	rst  $38                                         ; $45b8: $ff
	rra                                              ; $45b9: $1f
	rst  $38                                         ; $45ba: $ff
	rra                                              ; $45bb: $1f
	rst  $38                                         ; $45bc: $ff
	nop                                              ; $45bd: $00
	rst  $38                                         ; $45be: $ff
	nop                                              ; $45bf: $00
	rst  $38                                         ; $45c0: $ff
	nop                                              ; $45c1: $00
	rst  $38                                         ; $45c2: $ff
	nop                                              ; $45c3: $00
	rst  $38                                         ; $45c4: $ff
	nop                                              ; $45c5: $00

jr_07a_45c6:
	rst  $38                                         ; $45c6: $ff
	nop                                              ; $45c7: $00
	rst  $38                                         ; $45c8: $ff
	inc  bc                                          ; $45c9: $03

jr_07a_45ca:
	rst  $38                                         ; $45ca: $ff
	nop                                              ; $45cb: $00
	db   $fc                                         ; $45cc: $fc
	ld   bc, $02ff                                   ; $45cd: $01 $ff $02
	db   $fc                                         ; $45d0: $fc
	dec  b                                           ; $45d1: $05
	rst  $38                                         ; $45d2: $ff
	nop                                              ; $45d3: $00
	ld   a, [$ff0f]                                  ; $45d4: $fa $0f $ff
	dec  b                                           ; $45d7: $05
	push af                                          ; $45d8: $f5
	ret  nz                                          ; $45d9: $c0

	push bc                                          ; $45da: $c5
	dec  b                                           ; $45db: $05
	ld   b, $fe                                      ; $45dc: $06 $fe
	ei                                               ; $45de: $fb
	inc  bc                                          ; $45df: $03
	ld   bc, $fef9                                   ; $45e0: $01 $f9 $fe
	ld   bc, $f807                                   ; $45e3: $01 $07 $f8
	rst  $38                                         ; $45e6: $ff
	nop                                              ; $45e7: $00
	rlca                                             ; $45e8: $07
	add  h                                           ; $45e9: $84
	ld   c, c                                        ; $45ea: $49
	add  b                                           ; $45eb: $80
	ld   c, b                                        ; $45ec: $48
	add  b                                           ; $45ed: $80
	ld   c, c                                        ; $45ee: $49
	add  b                                           ; $45ef: $80
	ld   c, e                                        ; $45f0: $4b
	inc  b                                           ; $45f1: $04
	inc  c                                           ; $45f2: $0c
	adc  h                                           ; $45f3: $8c
	ld   c, a                                        ; $45f4: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f5: $cf
	jp   z, $df85                                    ; $45f6: $ca $85 $df

	add  b                                           ; $45f9: $80
	rra                                              ; $45fa: $1f
	db   $10                                         ; $45fb: $10
	sbc  h                                           ; $45fc: $9c
	sbc  l                                           ; $45fd: $9d
	jp   c, $18df                                    ; $45fe: $da $df $18

	dec  e                                           ; $4601: $1d
	cp   b                                           ; $4602: $b8
	db   $ec                                         ; $4603: $ec
	adc  h                                           ; $4604: $8c
	db   $ec                                         ; $4605: $ec

Jump_07a_4606:
	adc  h                                           ; $4606: $8c
	db   $ec                                         ; $4607: $ec
	inc  c                                           ; $4608: $0c
	ld   l, h                                        ; $4609: $6c
	adc  h                                           ; $460a: $8c
	db   $ec                                         ; $460b: $ec
	inc  l                                           ; $460c: $2c
	add  e                                           ; $460d: $83
	ld   l, h                                        ; $460e: $6c
	cp   l                                           ; $460f: $bd
	ld   bc, $7f80                                   ; $4610: $01 $80 $7f
	add  b                                           ; $4613: $80
	ld   d, l                                        ; $4614: $55
	adc  b                                           ; $4615: $88
	nop                                              ; $4616: $00
	add  b                                           ; $4617: $80
	ld   [de], a                                     ; $4618: $12
	add  b                                           ; $4619: $80
	rst  JumpTable                                         ; $461a: $df
	add  b                                           ; $461b: $80
	add  b                                           ; $461c: $80
	add  h                                           ; $461d: $84
	nop                                              ; $461e: $00
	add  b                                           ; $461f: $80
	ld   [$5480], sp                                 ; $4620: $08 $80 $54
	add  b                                           ; $4623: $80
	xor  d                                           ; $4624: $aa
	add  b                                           ; $4625: $80
	rst  $38                                         ; $4626: $ff
	add  b                                           ; $4627: $80
	ld   e, a                                        ; $4628: $5f
	add  [hl]                                        ; $4629: $86
	nop                                              ; $462a: $00
	add  b                                           ; $462b: $80
	ld   b, b                                        ; $462c: $40
	add  b                                           ; $462d: $80
	xor  b                                           ; $462e: $a8
	add  d                                           ; $462f: $82
	ldh  a, [$80]                                    ; $4630: $f0 $80
	or   b                                           ; $4632: $b0
	add  b                                           ; $4633: $80
	jr   nc, jr_07a_45ca                             ; $4634: $30 $94

	nop                                              ; $4636: $00
	add  b                                           ; $4637: $80
	jr   jr_07a_45c6                                 ; $4638: $18 $8c

	nop                                              ; $463a: $00
	add  b                                           ; $463b: $80
	jr   nc, jr_07a_463e                             ; $463c: $30 $00

jr_07a_463e:
	add  hl, hl                                      ; $463e: $29
	add  c                                           ; $463f: $81
	rst  $30                                         ; $4640: $f7
	inc  bc                                          ; $4641: $03
	rst  $10                                         ; $4642: $d7
	rst  $30                                         ; $4643: $f7
	sub  $f6                                         ; $4644: $d6 $f6
	add  b                                           ; $4646: $80
	rst  $30                                         ; $4647: $f7
	ld   bc, $f6d6                                   ; $4648: $01 $d6 $f6
	add  b                                           ; $464b: $80
	rst  ToBoot                                         ; $464c: $c7
	rlca                                             ; $464d: $07
	sub  [hl]                                        ; $464e: $96
	xor  [hl]                                        ; $464f: $ae
	db   $e3                                         ; $4650: $e3
	rst  $38                                         ; $4651: $ff
	ld   e, b                                        ; $4652: $58
	ld   a, a                                        ; $4653: $7f
	inc  a                                           ; $4654: $3c
	ld   a, $80                                      ; $4655: $3e $80
	ld   d, l                                        ; $4657: $55
	add  b                                           ; $4658: $80
	ld   a, [hl+]                                    ; $4659: $2a
	add  d                                           ; $465a: $82
	nop                                              ; $465b: $00
	rlca                                             ; $465c: $07
	ld   h, d                                        ; $465d: $62
	ld   h, l                                        ; $465e: $65
	ldh  [c], a                                      ; $465f: $e2
	rst  $38                                         ; $4660: $ff
	add  c                                           ; $4661: $81
	rst  $38                                         ; $4662: $ff
	sbc  e                                           ; $4663: $9b
	rst  $38                                         ; $4664: $ff
	add  b                                           ; $4665: $80
	nop                                              ; $4666: $00
	ld   bc, $fbf9                                   ; $4667: $01 $f9 $fb
	add  d                                           ; $466a: $82
	ld   sp, hl                                      ; $466b: $f9
	dec  b                                           ; $466c: $05
	ld   bc, $46f9                                   ; $466d: $01 $f9 $46
	add  a                                           ; $4670: $87
	add  h                                           ; $4671: $84
	add  a                                           ; $4672: $87
	add  b                                           ; $4673: $80
	ld   [bc], a                                     ; $4674: $02
	add  b                                           ; $4675: $80
	ld   bc, $8680                                   ; $4676: $01 $80 $86
	add  b                                           ; $4679: $80
	add  a                                           ; $467a: $87
	add  hl, bc                                      ; $467b: $09
	add  h                                           ; $467c: $84
	sbc  a                                           ; $467d: $9f
	call z, $1cf0                                    ; $467e: $cc $f0 $1c
	rst  $38                                         ; $4681: $ff
	ld   d, c                                        ; $4682: $51
	db   $fd                                         ; $4683: $fd
	daa                                              ; $4684: $27
	ld   [hl], a                                     ; $4685: $77
	add  b                                           ; $4686: $80
	cpl                                              ; $4687: $2f
	dec  b                                           ; $4688: $05
	db   $fc                                         ; $4689: $fc
	rst  $38                                         ; $468a: $ff
	di                                               ; $468b: $f3
	rst  $38                                         ; $468c: $ff
	db   $f4                                         ; $468d: $f4
	inc  b                                           ; $468e: $04
	add  b                                           ; $468f: $80
	inc  sp                                          ; $4690: $33
	ld   bc, $a05f                                   ; $4691: $01 $5f $a0
	add  b                                           ; $4694: $80
	ldh  a, [$80]                                    ; $4695: $f0 $80
	ldh  [rSB], a                                    ; $4697: $e0 $01
	ld   [hl-], a                                    ; $4699: $32
	ldh  a, [c]                                      ; $469a: $f2
	add  b                                           ; $469b: $80
	rst  $38                                         ; $469c: $ff
	ld   bc, $ffc0                                   ; $469d: $01 $c0 $ff
	add  b                                           ; $46a0: $80
	jr   nz, @+$04                                   ; $46a1: $20 $02

	ld   [$1888], sp                                 ; $46a3: $08 $88 $18
	add  c                                           ; $46a6: $81
	ld   h, b                                        ; $46a7: $60
	add  d                                           ; $46a8: $82
	nop                                              ; $46a9: $00
	add  b                                           ; $46aa: $80
	ldh  a, [rTAC]                                   ; $46ab: $f0 $07
	jr   nc, @-$0e                                   ; $46ad: $30 $f0

	ld   b, b                                        ; $46af: $40
	ld   [hl], b                                     ; $46b0: $70
	ld   [$dc06], sp                                 ; $46b1: $08 $06 $dc
	dec  h                                           ; $46b4: $25
	add  b                                           ; $46b5: $80
	nop                                              ; $46b6: $00
	add  d                                           ; $46b7: $82
	rst  $38                                         ; $46b8: $ff
	inc  b                                           ; $46b9: $04
	ldh  [rIE], a                                    ; $46ba: $e0 $ff
	rra                                              ; $46bc: $1f
	rst  $20                                         ; $46bd: $e7
	ei                                               ; $46be: $fb
	add  b                                           ; $46bf: $80
	rst  $30                                         ; $46c0: $f7
	ld   bc, $d8c7                                   ; $46c1: $01 $c7 $d8
	adc  h                                           ; $46c4: $8c
	ld   sp, hl                                      ; $46c5: $f9
	ld   bc, $f9fa                                   ; $46c6: $01 $fa $f9
	adc  c                                           ; $46c9: $89
	rst  $38                                         ; $46ca: $ff
	inc  c                                           ; $46cb: $0c
	rrca                                             ; $46cc: $0f
	rst  $38                                         ; $46cd: $ff
	rst  $30                                         ; $46ce: $f7
	rrca                                             ; $46cf: $0f
	ld   c, $87                                      ; $46d0: $0e $87
	ld   [hl], b                                     ; $46d2: $70
	sub  e                                           ; $46d3: $93
	cp   [hl]                                        ; $46d4: $be
	and  d                                           ; $46d5: $a2
	cp   [hl]                                        ; $46d6: $be
	add  d                                           ; $46d7: $82
	cp   [hl]                                        ; $46d8: $be
	add  b                                           ; $46d9: $80
	jp   nz, $d681                                   ; $46da: $c2 $81 $d6

	add  b                                           ; $46dd: $80
	jp   nz, $2c03                                   ; $46de: $c2 $03 $2c

	add  $91                                         ; $46e1: $c6 $91
	ld   [hl], c                                     ; $46e3: $71
	add  b                                           ; $46e4: $80
	inc  h                                           ; $46e5: $24
	inc  bc                                          ; $46e6: $03
	ccf                                              ; $46e7: $3f
	jr   nz, jr_07a_470c                             ; $46e8: $20 $22

	inc  a                                           ; $46ea: $3c
	add  b                                           ; $46eb: $80
	ld   hl, $3180                                   ; $46ec: $21 $80 $31
	dec  b                                           ; $46ef: $05
	ld   a, [hl+]                                    ; $46f0: $2a
	add  hl, hl                                      ; $46f1: $29
	ld   h, d                                        ; $46f2: $62
	ld   h, b                                        ; $46f3: $60
	xor  [hl]                                        ; $46f4: $ae
	adc  [hl]                                        ; $46f5: $8e
	add  b                                           ; $46f6: $80
	jr   nz, jr_07a_46f9                             ; $46f7: $20 $00

jr_07a_46f9:
	rst  $38                                         ; $46f9: $ff
	add  b                                           ; $46fa: $80
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	ld   a, a                                        ; $46fd: $7f
	add  b                                           ; $46fe: $80
	adc  d                                           ; $46ff: $8a
	add  c                                           ; $4700: $81
	add  b                                           ; $4701: $80
	add  b                                           ; $4702: $80
	ld   b, b                                        ; $4703: $40
	ld   a, [bc]                                     ; $4704: $0a
	ld   bc, $0007                                   ; $4705: $01 $07 $00
	ld   a, [hl]                                     ; $4708: $7e
	ld   b, b                                        ; $4709: $40
	ld   hl, sp+$21                                  ; $470a: $f8 $21

jr_07a_470c:
	jr   nz, @+$01                                   ; $470c: $20 $ff

	add  c                                           ; $470e: $81
	sub  l                                           ; $470f: $95
	add  b                                           ; $4710: $80
	ld   d, [hl]                                     ; $4711: $56
	add  b                                           ; $4712: $80
	rla                                              ; $4713: $17

jr_07a_4714:
	ld   bc, $67e9                                   ; $4714: $01 $e9 $67
	add  d                                           ; $4717: $82
	rst  $20                                         ; $4718: $e7
	add  b                                           ; $4719: $80
	ld   h, [hl]                                     ; $471a: $66
	add  b                                           ; $471b: $80
	db   $e4                                         ; $471c: $e4
	add  b                                           ; $471d: $80
	and  h                                           ; $471e: $a4
	add  b                                           ; $471f: $80
	db   $e4                                         ; $4720: $e4
	ld   b, $a4                                      ; $4721: $06 $a4
	db   $e4                                         ; $4723: $e4
	inc  e                                           ; $4724: $1c
	db   $fc                                         ; $4725: $fc
	ld   d, h                                        ; $4726: $54
	ld   d, a                                        ; $4727: $57
	ld   [bc], a                                     ; $4728: $02
	add  e                                           ; $4729: $83
	nop                                              ; $472a: $00
	ld   bc, $0002                                   ; $472b: $01 $02 $00
	add  b                                           ; $472e: $80
	dec  de                                          ; $472f: $1b
	ld   b, $3b                                      ; $4730: $06 $3b
	inc  sp                                          ; $4732: $33
	rlca                                             ; $4733: $07
	jr   jr_07a_4736                                 ; $4734: $18 $00

jr_07a_4736:
	ldh  [hScriptOpcodeParams], a                                    ; $4736: $e0 $a0
	add  c                                           ; $4738: $81
	nop                                              ; $4739: $00
	add  b                                           ; $473a: $80
	dec  b                                           ; $473b: $05
	rlca                                             ; $473c: $07
	xor  d                                           ; $473d: $aa
	and  d                                           ; $473e: $a2
	rra                                              ; $473f: $1f
	cp   a                                           ; $4740: $bf
	sub  a                                           ; $4741: $97
	sbc  a                                           ; $4742: $9f
	ret  c                                           ; $4743: $d8

	ld   [bc], a                                     ; $4744: $02
	add  b                                           ; $4745: $80
	nop                                              ; $4746: $00
	inc  e                                           ; $4747: $1c
	ld   b, b                                        ; $4748: $40
	inc  d                                           ; $4749: $14
	ld   [hl], b                                     ; $474a: $70
	jr   nc, jr_07a_47ad                             ; $474b: $30 $60

	ld   e, h                                        ; $474d: $5c
	db   $fd                                         ; $474e: $fd
	db   $fc                                         ; $474f: $fc
	pop  bc                                          ; $4750: $c1
	db   $fd                                         ; $4751: $fd
	cp   l                                           ; $4752: $bd
	db   $fd                                         ; $4753: $fd
	ld   a, l                                        ; $4754: $7d
	jr   nz, jr_07a_4758                             ; $4755: $20 $01

	nop                                              ; $4757: $00

jr_07a_4758:
	inc  d                                           ; $4758: $14
	dec  d                                           ; $4759: $15
	dec  c                                           ; $475a: $0d
	dec  e                                           ; $475b: $1d
	dec  d                                           ; $475c: $15
	dec  bc                                          ; $475d: $0b
	jp   nc, Jump_07a_4606                           ; $475e: $d2 $06 $46

	ld   d, [hl]                                     ; $4761: $56
	ld   d, a                                        ; $4762: $57
	ld   b, a                                        ; $4763: $47
	ld   hl, sp-$80                                  ; $4764: $f8 $80
	ld   b, b                                        ; $4766: $40
	ld   [bc], a                                     ; $4767: $02
	ret  nz                                          ; $4768: $c0

	sub  c                                           ; $4769: $91
	ld   de, $3a80                                   ; $476a: $11 $80 $3a
	ld   de, $1f7f                                   ; $476d: $11 $7f $1f
	jr   c, jr_07a_4779                              ; $4770: $38 $07

	dec  de                                          ; $4772: $1b
	inc  bc                                          ; $4773: $03
	dec  bc                                          ; $4774: $0b
	inc  bc                                          ; $4775: $03
	daa                                              ; $4776: $27
	inc  bc                                          ; $4777: $03
	ld   d, a                                        ; $4778: $57

jr_07a_4779:
	ld   b, [hl]                                     ; $4779: $46
	sbc  b                                           ; $477a: $98
	db   $dd                                         ; $477b: $dd
	dec  e                                           ; $477c: $1d
	inc  e                                           ; $477d: $1c
	ld   a, c                                        ; $477e: $79
	dec  b                                           ; $477f: $05
	add  b                                           ; $4780: $80
	ldh  a, [rTMA]                                   ; $4781: $f0 $06
	dec  e                                           ; $4783: $1d
	db   $fd                                         ; $4784: $fd
	push hl                                          ; $4785: $e5
	db   $fc                                         ; $4786: $fc
	ei                                               ; $4787: $fb
	inc  h                                           ; $4788: $24
	jr   nz, @-$7e                                   ; $4789: $20 $80

	jr   z, @+$03                                    ; $478b: $28 $01

	ldh  a, [$60]                                    ; $478d: $f0 $60
	add  c                                           ; $478f: $81
	nop                                              ; $4790: $00
	add  b                                           ; $4791: $80
	jr   z, jr_07a_4714                              ; $4792: $28 $80

	ld   b, b                                        ; $4794: $40
	inc  b                                           ; $4795: $04
	nop                                              ; $4796: $00
	ld   l, d                                        ; $4797: $6a
	db   $ed                                         ; $4798: $ed
	db   $ec                                         ; $4799: $ec
	db   $eb                                         ; $479a: $eb
	add  e                                           ; $479b: $83
	add  sp, -$7e                                    ; $479c: $e8 $82
	ldh  [$82], a                                    ; $479e: $e0 $82
	add  sp, $00                                     ; $47a0: $e8 $00
	cp   [hl]                                        ; $47a2: $be
	add  e                                           ; $47a3: $83
	cp   l                                           ; $47a4: $bd
	add  b                                           ; $47a5: $80
	cp   h                                           ; $47a6: $bc
	add  b                                           ; $47a7: $80
	sbc  h                                           ; $47a8: $9c
	add  b                                           ; $47a9: $80
	sbc  l                                           ; $47aa: $9d
	add  d                                           ; $47ab: $82
	db   $fd                                         ; $47ac: $fd

jr_07a_47ad:
	nop                                              ; $47ad: $00
	db   $eb                                         ; $47ae: $eb
	add  e                                           ; $47af: $83
	add  sp, $01                                     ; $47b0: $e8 $01
	db   $eb                                         ; $47b2: $eb
	add  sp, -$7a                                    ; $47b3: $e8 $86
	ld   [$bd82], a                                  ; $47b5: $ea $82 $bd
	inc  bc                                          ; $47b8: $03
	db   $fd                                         ; $47b9: $fd
	dec  e                                           ; $47ba: $1d
	dec  a                                           ; $47bb: $3d
	db   $dd                                         ; $47bc: $dd
	add  b                                           ; $47bd: $80
	dec  a                                           ; $47be: $3d
	add  d                                           ; $47bf: $82
	cp   l                                           ; $47c0: $bd
	add  b                                           ; $47c1: $80
	sbc  l                                           ; $47c2: $9d
	dec  b                                           ; $47c3: $05
	ldh  [$fa], a                                    ; $47c4: $e0 $fa
	add  b                                           ; $47c6: $80
	ld   a, [$fa9a]                                  ; $47c7: $fa $9a $fa
	add  b                                           ; $47ca: $80
	nop                                              ; $47cb: $00
	add  b                                           ; $47cc: $80
	ld   a, [$fb0b]                                  ; $47cd: $fa $0b $fb
	ld   hl, sp-$05                                  ; $47d0: $f8 $fb
	ld   hl, sp+$03                                  ; $47d2: $f8 $03
	ld   sp, hl                                      ; $47d4: $f9
	push bc                                          ; $47d5: $c5
	cp   a                                           ; $47d6: $bf
	dec  [hl]                                        ; $47d7: $35
	cp   a                                           ; $47d8: $bf
	cp   b                                           ; $47d9: $b8
	or   d                                           ; $47da: $b2
	add  b                                           ; $47db: $80
	add  b                                           ; $47dc: $80
	add  c                                           ; $47dd: $81
	cp   a                                           ; $47de: $bf
	ld   [bc], a                                     ; $47df: $02
	cpl                                              ; $47e0: $2f
	xor  a                                           ; $47e1: $af
	rrca                                             ; $47e2: $0f
	add  b                                           ; $47e3: $80
	adc  a                                           ; $47e4: $8f
	nop                                              ; $47e5: $00
	ld   [$8f89], sp                                 ; $47e6: $08 $89 $8f
	nop                                              ; $47e9: $00
	rrca                                             ; $47ea: $0f
	add  b                                           ; $47eb: $80
	adc  a                                           ; $47ec: $8f
	dec  bc                                          ; $47ed: $0b
	rrca                                             ; $47ee: $0f
	ld   c, a                                        ; $47ef: $4f
	add  a                                           ; $47f0: $87
	ld   [hl], b                                     ; $47f1: $70
	sub  b                                           ; $47f2: $90
	cp   [hl]                                        ; $47f3: $be
	and  d                                           ; $47f4: $a2
	cp   h                                           ; $47f5: $bc
	add  e                                           ; $47f6: $83
	cp   h                                           ; $47f7: $bc
	ret  nz                                          ; $47f8: $c0

	jp   nz, $d681                                   ; $47f9: $c2 $81 $d6

	add  b                                           ; $47fc: $80
	jp   nz, $2d01                                   ; $47fd: $c2 $01 $2d

	ld   b, $80                                      ; $4800: $06 $80
	ld   de, $0480                                   ; $4802: $11 $80 $04
	inc  bc                                          ; $4805: $03
	ccf                                              ; $4806: $3f
	ret  nz                                          ; $4807: $c0

	ld   [bc], a                                     ; $4808: $02
	db   $fc                                         ; $4809: $fc
	add  b                                           ; $480a: $80
	pop  bc                                          ; $480b: $c1
	add  b                                           ; $480c: $80
	pop  de                                          ; $480d: $d1
	inc  bc                                          ; $480e: $03
	xor  d                                           ; $480f: $aa
	xor  c                                           ; $4810: $a9
	db   $fd                                         ; $4811: $fd
	ld   a, a                                        ; $4812: $7f
	add  d                                           ; $4813: $82
	rst  $38                                         ; $4814: $ff
	add  b                                           ; $4815: $80
	ld   a, [hl]                                     ; $4816: $7e
	add  b                                           ; $4817: $80
	db   $f4                                         ; $4818: $f4
	add  b                                           ; $4819: $80
	and  b                                           ; $481a: $a0
	add  d                                           ; $481b: $82
	ret  nz                                          ; $481c: $c0

	inc  b                                           ; $481d: $04
	adc  b                                           ; $481e: $88
	ld   a, b                                        ; $481f: $78
	ld   h, b                                        ; $4820: $60
	ldh  [hScriptOpcodeParams], a                                    ; $4821: $e0 $a0
	add  c                                           ; $4823: $81
	nop                                              ; $4824: $00
	add  b                                           ; $4825: $80
	dec  b                                           ; $4826: $05
	ld   b, $aa                                      ; $4827: $06 $aa
	and  d                                           ; $4829: $a2
	rra                                              ; $482a: $1f
	cp   a                                           ; $482b: $bf
	sub  a                                           ; $482c: $97
	sbc  a                                           ; $482d: $9f
	reti                                             ; $482e: $d9


	add  c                                           ; $482f: $81
	ld   [bc], a                                     ; $4830: $02
	ld   hl, $1442                                   ; $4831: $21 $42 $14
	ld   [hl], c                                     ; $4834: $71
	jr   nc, jr_07a_489a                             ; $4835: $30 $63

	ld   e, a                                        ; $4837: $5f
	cp   $ff                                         ; $4838: $fe $ff
	pop  bc                                          ; $483a: $c1
	rst  $38                                         ; $483b: $ff
	cp   a                                           ; $483c: $bf
	rst  $38                                         ; $483d: $ff
	dec  a                                           ; $483e: $3d
	ld   b, b                                        ; $483f: $40
	ld   bc, $8400                                   ; $4840: $01 $00 $84
	dec  b                                           ; $4843: $05
	add  l                                           ; $4844: $85
	dec  b                                           ; $4845: $05
	db   $fd                                         ; $4846: $fd
	ei                                               ; $4847: $fb
	ld   a, [de]                                     ; $4848: $1a
	and  $c6                                         ; $4849: $e6 $c6
	sbc  $df                                         ; $484b: $de $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $484d: $cf
	jp   c, $5500                                    ; $484e: $da $00 $55

	ld   b, l                                        ; $4851: $45
	sbc  b                                           ; $4852: $98
	db   $dd                                         ; $4853: $dd
	add  b                                           ; $4854: $80
	inc  e                                           ; $4855: $1c
	ld   bc, $057a                                   ; $4856: $01 $7a $05
	add  b                                           ; $4859: $80
	ldh  a, [$08]                                    ; $485a: $f0 $08
	inc  e                                           ; $485c: $1c
	db   $fc                                         ; $485d: $fc
	db   $e4                                         ; $485e: $e4
	db   $fc                                         ; $485f: $fc
	ld   a, b                                        ; $4860: $78
	nop                                              ; $4861: $00
	ld   b, b                                        ; $4862: $40
	nop                                              ; $4863: $00
	ret  nz                                          ; $4864: $c0

	adc  c                                           ; $4865: $89
	nop                                              ; $4866: $00
	dec  b                                           ; $4867: $05
	dec  bc                                          ; $4868: $0b
	rst  $38                                         ; $4869: $ff
	call nc, Call_07a_42ff                           ; $486a: $d4 $ff $42
	ld   h, d                                        ; $486d: $62
	add  b                                           ; $486e: $80
	ld   de, $fe80                                   ; $486f: $11 $80 $fe
	add  b                                           ; $4872: $80
	rst  $38                                         ; $4873: $ff
	inc  c                                           ; $4874: $0c
	db   $fd                                         ; $4875: $fd
	cp   $ec                                         ; $4876: $fe $ec
	ldh  a, [$e7]                                    ; $4878: $f0 $e7
	add  a                                           ; $487a: $87
	ld   [hl], b                                     ; $487b: $70
	sub  b                                           ; $487c: $90
	sbc  [hl]                                        ; $487d: $9e
	ldh  [c], a                                      ; $487e: $e2
	ldh  [rIE], a                                    ; $487f: $e0 $ff
	db   $fc                                         ; $4881: $fc
	add  e                                           ; $4882: $83
	rst  $38                                         ; $4883: $ff
	add  b                                           ; $4884: $80
	jp   nz, $9f00                                   ; $4885: $c2 $00 $9f

	add  c                                           ; $4888: $81
	ld   h, b                                        ; $4889: $60
	add  b                                           ; $488a: $80
	nop                                              ; $488b: $00
	add  b                                           ; $488c: $80
	dec  b                                           ; $488d: $05
	add  b                                           ; $488e: $80
	rst  $38                                         ; $488f: $ff

jr_07a_4890:
	inc  c                                           ; $4890: $0c
	ld   a, $ff                                      ; $4891: $3e $ff
	ld   a, c                                        ; $4893: $79
	ld   a, a                                        ; $4894: $7f
	add  hl, sp                                      ; $4895: $39
	rlca                                             ; $4896: $07
	ld   b, $01                                      ; $4897: $06 $01
	nop                                              ; $4899: $00

jr_07a_489a:
	rlca                                             ; $489a: $07
	ld   b, c                                        ; $489b: $41
	ld   a, a                                        ; $489c: $7f
	rst  ToBoot                                         ; $489d: $c7
	add  b                                           ; $489e: $80
	ccf                                              ; $489f: $3f
	nop                                              ; $48a0: $00
	rst  $38                                         ; $48a1: $ff
	add  b                                           ; $48a2: $80
	cp   a                                           ; $48a3: $bf
	add  b                                           ; $48a4: $80
	ld   e, [hl]                                     ; $48a5: $5e
	add  b                                           ; $48a6: $80
	dec  d                                           ; $48a7: $15
	add  b                                           ; $48a8: $80
	add  sp, -$80                                    ; $48a9: $e8 $80
	ld   b, b                                        ; $48ab: $40
	adc  b                                           ; $48ac: $88
	nop                                              ; $48ad: $00
	add  d                                           ; $48ae: $82
	ld   bc, $0084                                   ; $48af: $01 $84 $00
	add  b                                           ; $48b2: $80
	inc  bc                                          ; $48b3: $03
	ld   a, [bc]                                     ; $48b4: $0a
	ld   a, $3f                                      ; $48b5: $3e $3f
	ld   b, c                                        ; $48b7: $41
	ld   a, a                                        ; $48b8: $7f
	cp   a                                           ; $48b9: $bf
	rst  $38                                         ; $48ba: $ff
	dec  a                                           ; $48bb: $3d
	ld   b, b                                        ; $48bc: $40
	ld   bc, $0400                                   ; $48bd: $01 $00 $04
	add  c                                           ; $48c0: $81
	dec  b                                           ; $48c1: $05
	ld   [$fbfd], sp                                 ; $48c2: $08 $fd $fb
	ld   a, [de]                                     ; $48c5: $1a
	and  $c6                                         ; $48c6: $e6 $c6
	sbc  $df                                         ; $48c8: $de $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ca: $cf
	ldh  a, [$80]                                    ; $48cb: $f0 $80
	ld   b, b                                        ; $48cd: $40
	ld   [bc], a                                     ; $48ce: $02
	ret  nz                                          ; $48cf: $c0

	sub  b                                           ; $48d0: $90
	db   $10                                         ; $48d1: $10
	add  b                                           ; $48d2: $80
	ld   a, [hl-]                                    ; $48d3: $3a
	ld   [$1f7f], sp                                 ; $48d4: $08 $7f $1f
	jr   c, jr_07a_48e0                              ; $48d7: $38 $07

	dec  de                                          ; $48d9: $1b
	inc  bc                                          ; $48da: $03
	dec  bc                                          ; $48db: $0b
	inc  bc                                          ; $48dc: $03
	rrca                                             ; $48dd: $0f
	add  a                                           ; $48de: $87
	nop                                              ; $48df: $00

jr_07a_48e0:
	add  b                                           ; $48e0: $80
	ldh  a, [rAUD1LEN]                               ; $48e1: $f0 $11
	inc  e                                           ; $48e3: $1c
	db   $fc                                         ; $48e4: $fc
	db   $e4                                         ; $48e5: $e4
	db   $fc                                         ; $48e6: $fc
	ld   [$afff], sp                                 ; $48e7: $08 $ff $af
	rst  $38                                         ; $48ea: $ff
	ccf                                              ; $48eb: $3f
	rst  $38                                         ; $48ec: $ff
	ccf                                              ; $48ed: $3f
	ld   a, a                                        ; $48ee: $7f
	add  a                                           ; $48ef: $87
	rst  $20                                         ; $48f0: $e7
	ld   e, a                                        ; $48f1: $5f
	rlca                                             ; $48f2: $07
	ld   b, l                                        ; $48f3: $45
	ld   b, a                                        ; $48f4: $47
	add  b                                           ; $48f5: $80
	add  a                                           ; $48f6: $87
	ld   bc, $e1fb                                   ; $48f7: $01 $fb $e1
	add  b                                           ; $48fa: $80
	ldh  [c], a                                      ; $48fb: $e2
	add  b                                           ; $48fc: $80
	push hl                                          ; $48fd: $e5
	add  b                                           ; $48fe: $80
	add  b                                           ; $48ff: $80
	add  b                                           ; $4900: $80
	and  b                                           ; $4901: $a0
	rlca                                             ; $4902: $07
	jp   $72c2                                       ; $4903: $c3 $c2 $72


	ldh  a, [$30]                                    ; $4906: $f0 $30
	ldh  a, [rAUD3LEVEL]                             ; $4908: $f0 $1c
	ld   d, b                                        ; $490a: $50
	add  b                                           ; $490b: $80
	or   b                                           ; $490c: $b0
	add  b                                           ; $490d: $80
	jr   nz, jr_07a_4890                             ; $490e: $20 $80

	db   $10                                         ; $4910: $10
	add  b                                           ; $4911: $80
	nop                                              ; $4912: $00
	add  b                                           ; $4913: $80
	add  b                                           ; $4914: $80
	ld   bc, $40c0                                   ; $4915: $01 $c0 $40
	add  b                                           ; $4918: $80
	ld   h, b                                        ; $4919: $60
	ld   bc, $54db                                   ; $491a: $01 $db $54
	add  b                                           ; $491d: $80
	nop                                              ; $491e: $00
	add  b                                           ; $491f: $80
	add  b                                           ; $4920: $80
	add  b                                           ; $4921: $80
	ldh  [$80], a                                    ; $4922: $e0 $80
	di                                               ; $4924: $f3
	ld   [bc], a                                     ; $4925: $02
	inc  bc                                          ; $4926: $03
	di                                               ; $4927: $f3
	cp   $81                                         ; $4928: $fe $81
	db   $e3                                         ; $492a: $e3
	nop                                              ; $492b: $00
	db   $dd                                         ; $492c: $dd
	add  e                                           ; $492d: $83
	jr   nc, @-$7e                                   ; $492e: $30 $80

jr_07a_4930:
	ld   bc, $ff80                                   ; $4930: $01 $80 $ff
	ld   b, $dc                                      ; $4933: $06 $dc
	rst  $38                                         ; $4935: $ff
	inc  hl                                          ; $4936: $23
	rst  $38                                         ; $4937: $ff
	ld   hl, sp-$01                                  ; $4938: $f8 $ff
	db   $e4                                         ; $493a: $e4
	add  e                                           ; $493b: $83
	inc  b                                           ; $493c: $04
	add  b                                           ; $493d: $80
	rst  ToBoot                                         ; $493e: $c7
	ld   [bc], a                                     ; $493f: $02
	call nz, $07c7                                   ; $4940: $c4 $c7 $07
	add  c                                           ; $4943: $81
	rst  ToBoot                                         ; $4944: $c7
	inc  bc                                          ; $4945: $03
	rlca                                             ; $4946: $07
	rst  ToBoot                                         ; $4947: $c7
	adc  b                                           ; $4948: $88
	sub  b                                           ; $4949: $90
	add  d                                           ; $494a: $82
	nop                                              ; $494b: $00
	add  b                                           ; $494c: $80
	ldh  a, [rDIV]                                   ; $494d: $f0 $04
	ld   a, b                                        ; $494f: $78
	ld   hl, sp-$68                                  ; $4950: $f8 $98
	ld   hl, sp-$20                                  ; $4952: $f8 $e0
	add  c                                           ; $4954: $81
	ld   hl, sp+$00                                  ; $4955: $f8 $00
	inc  d                                           ; $4957: $14
	add  l                                           ; $4958: $85
	ld   h, b                                        ; $4959: $60
	add  b                                           ; $495a: $80
	ld   b, b                                        ; $495b: $40
	add  d                                           ; $495c: $82
	ld   [hl], b                                     ; $495d: $70
	ld   [bc], a                                     ; $495e: $02
	ld   b, b                                        ; $495f: $40
	ld   [hl], b                                     ; $4960: $70
	or   c                                           ; $4961: $b1
	add  c                                           ; $4962: $81
	db   $e3                                         ; $4963: $e3
	add  b                                           ; $4964: $80
	and  e                                           ; $4965: $a3
	add  b                                           ; $4966: $80
	ld   [hl+], a                                    ; $4967: $22
	add  b                                           ; $4968: $80

jr_07a_4969:
	ld   [bc], a                                     ; $4969: $02
	add  d                                           ; $496a: $82
	inc  bc                                          ; $496b: $03
	inc  b                                           ; $496c: $04
	ld   [bc], a                                     ; $496d: $02
	rlca                                             ; $496e: $07
	db   $eb                                         ; $496f: $eb
	ld   a, [$81f9]                                  ; $4970: $fa $f9 $81
	ld   a, [$aa80]                                  ; $4973: $fa $80 $aa
	add  b                                           ; $4976: $80
	ld   [bc], a                                     ; $4977: $02
	add  b                                           ; $4978: $80
	ld   e, d                                        ; $4979: $5a
	add  b                                           ; $497a: $80
	ld   a, [$1802]                                  ; $497b: $fa $02 $18
	ldh  a, [c]                                      ; $497e: $f2
	db   $ec                                         ; $497f: $ec
	add  b                                           ; $4980: $80
	rla                                              ; $4981: $17
	ld   bc, $03ff                                   ; $4982: $01 $ff $03
	add  e                                           ; $4985: $83
	db   $db                                         ; $4986: $db
	nop                                              ; $4987: $00
	call c, $df80                                    ; $4988: $dc $80 $df
	dec  b                                           ; $498b: $05
	ret  nc                                          ; $498c: $d0

	db   $10                                         ; $498d: $10
	ret  nz                                          ; $498e: $c0

	nop                                              ; $498f: $00
	rst  $38                                         ; $4990: $ff
	rst  ToBoot                                         ; $4991: $c7
	add  b                                           ; $4992: $80
	ld   hl, sp+$01                                  ; $4993: $f8 $01

jr_07a_4995:
	ldh  [$df], a                                    ; $4995: $e0 $df
	add  b                                           ; $4997: $80
	ret  nz                                          ; $4998: $c0

	add  c                                           ; $4999: $81
	jp   c, Jump_07a_5a00                            ; $499a: $da $00 $5a

	add  c                                           ; $499d: $81
	jp   c, $9500                                    ; $499e: $da $00 $95

jr_07a_49a1:
	add  b                                           ; $49a1: $80
	ldh  a, [rP1]                                    ; $49a2: $f0 $00
	ld   [hl], b                                     ; $49a4: $70
	add  c                                           ; $49a5: $81
	jr   nc, jr_07a_49a9                             ; $49a6: $30 $01

	or   b                                           ; $49a8: $b0

jr_07a_49a9:
	jr   nc, jr_07a_4930                             ; $49a9: $30 $85

	or   b                                           ; $49ab: $b0
	dec  b                                           ; $49ac: $05
	ld   e, b                                        ; $49ad: $58
	nop                                              ; $49ae: $00
	rlca                                             ; $49af: $07
	nop                                              ; $49b0: $00
	dec  bc                                          ; $49b1: $0b
	nop                                              ; $49b2: $00
	add  b                                           ; $49b3: $80
	ld   [$2080], sp                                 ; $49b4: $08 $80 $20
	add  h                                           ; $49b7: $84
	nop                                              ; $49b8: $00
	inc  b                                           ; $49b9: $04
	add  hl, bc                                      ; $49ba: $09
	ld   a, $d6                                      ; $49bb: $3e $d6
	inc  d                                           ; $49bd: $14
	ld   b, c                                        ; $49be: $41
	add  a                                           ; $49bf: $87
	nop                                              ; $49c0: $00
	add  b                                           ; $49c1: $80
	ld   [bc], a                                     ; $49c2: $02
	inc  b                                           ; $49c3: $04
	xor  b                                           ; $49c4: $a8
	ldh  a, [rP1]                                    ; $49c5: $f0 $00
	ld   [hl], b                                     ; $49c7: $70
	add  b                                           ; $49c8: $80
	add  l                                           ; $49c9: $85
	nop                                              ; $49ca: $00
	add  b                                           ; $49cb: $80
	ld   d, b                                        ; $49cc: $50
	add  b                                           ; $49cd: $80
	and  b                                           ; $49ce: $a0
	ld   [$d277], sp                                 ; $49cf: $08 $77 $d2
	call c, $8ede                                    ; $49d2: $dc $de $8e
	sbc  [hl]                                        ; $49d5: $9e
	ret  nz                                          ; $49d6: $c0

	sbc  [hl]                                        ; $49d7: $9e
	pop  hl                                          ; $49d8: $e1
	add  c                                           ; $49d9: $81
	add  b                                           ; $49da: $80
	add  b                                           ; $49db: $80
	ret  nz                                          ; $49dc: $c0

	add  b                                           ; $49dd: $80
	xor  b                                           ; $49de: $a8
	ld   [bc], a                                     ; $49df: $02
	ld   [hl], b                                     ; $49e0: $70
	or   b                                           ; $49e1: $b0
	ld   [hl], b                                     ; $49e2: $70
	add  c                                           ; $49e3: $81
	ldh  a, [rSC]                                    ; $49e4: $f0 $02
	ld   [hl], b                                     ; $49e6: $70
	jr   nc, jr_07a_4969                             ; $49e7: $30 $80

	add  l                                           ; $49e9: $85
	nop                                              ; $49ea: $00
	dec  c                                           ; $49eb: $0d
	ldh  a, [rIE]                                    ; $49ec: $f0 $ff
	xor  a                                           ; $49ee: $af
	rst  $38                                         ; $49ef: $ff
	ccf                                              ; $49f0: $3f
	rst  $38                                         ; $49f1: $ff
	ccf                                              ; $49f2: $3f
	ld   a, a                                        ; $49f3: $7f
	sbc  a                                           ; $49f4: $9f
	rst  $38                                         ; $49f5: $ff
	ld   a, a                                        ; $49f6: $7f
	ccf                                              ; $49f7: $3f
	ld   e, l                                        ; $49f8: $5d
	ld   e, a                                        ; $49f9: $5f
	add  b                                           ; $49fa: $80
	and  a                                           ; $49fb: $a7
	ld   bc, $e1e3                                   ; $49fc: $01 $e3 $e1
	add  b                                           ; $49ff: $80
	ldh  [c], a                                      ; $4a00: $e2
	add  b                                           ; $4a01: $80
	push hl                                          ; $4a02: $e5
	add  b                                           ; $4a03: $80
	add  b                                           ; $4a04: $80

jr_07a_4a05:
	add  b                                           ; $4a05: $80
	and  b                                           ; $4a06: $a0
	add  b                                           ; $4a07: $80
	ret  nz                                          ; $4a08: $c0

	dec  b                                           ; $4a09: $05
	ld   [hl], e                                     ; $4a0a: $73
	ldh  a, [c]                                      ; $4a0b: $f2
	ld   [hl-], a                                    ; $4a0c: $32
	ldh  a, [rAUD3LEVEL]                             ; $4a0d: $f0 $1c
	ld   d, b                                        ; $4a0f: $50
	add  b                                           ; $4a10: $80
	or   b                                           ; $4a11: $b0
	add  b                                           ; $4a12: $80
	jr   nz, jr_07a_4995                             ; $4a13: $20 $80

	db   $10                                         ; $4a15: $10
	add  d                                           ; $4a16: $82
	nop                                              ; $4a17: $00
	add  b                                           ; $4a18: $80
	add  b                                           ; $4a19: $80
	ld   [bc], a                                     ; $4a1a: $02
	ldh  [$60], a                                    ; $4a1b: $e0 $60
	cp   a                                           ; $4a1d: $bf
	add  e                                           ; $4a1e: $83
	jr   nc, jr_07a_49a1                             ; $4a1f: $30 $80

	nop                                              ; $4a21: $00
	add  b                                           ; $4a22: $80
	or   $02                                         ; $4a23: $f6 $02
	call nc, $22f6                                   ; $4a25: $d4 $f6 $22
	add  c                                           ; $4a28: $81
	or   $00                                         ; $4a29: $f6 $00
	ld   [$0483], a                                  ; $4a2b: $ea $83 $04
	add  b                                           ; $4a2e: $80
	rst  ToBoot                                         ; $4a2f: $c7
	ld   [bc], a                                     ; $4a30: $02
	call nz, $07c7                                   ; $4a31: $c4 $c7 $07
	add  e                                           ; $4a34: $83
	rst  ToBoot                                         ; $4a35: $c7
	ld   bc, $9048                                   ; $4a36: $01 $48 $90
	add  b                                           ; $4a39: $80
	nop                                              ; $4a3a: $00
	ld   bc, $0001                                   ; $4a3b: $01 $01 $00

jr_07a_4a3e:
	add  b                                           ; $4a3e: $80
	ret  nc                                          ; $4a3f: $d0

	inc  b                                           ; $4a40: $04
	ld   d, b                                        ; $4a41: $50
	ret  nc                                          ; $4a42: $d0

	sub  b                                           ; $4a43: $90
	ret  nc                                          ; $4a44: $d0

	ret  nz                                          ; $4a45: $c0

	add  c                                           ; $4a46: $81
	ret  nc                                          ; $4a47: $d0

	add  hl, bc                                      ; $4a48: $09
	jp   nc, $f0f6                                   ; $4a49: $d2 $f6 $f0

	or   $f2                                         ; $4a4c: $f6 $f2
	ldh  a, [$a6]                                    ; $4a4e: $f0 $a6
	and  b                                           ; $4a50: $a0
	ld   [bc], a                                     ; $4a51: $02
	nop                                              ; $4a52: $00
	add  b                                           ; $4a53: $80
	ld   d, b                                        ; $4a54: $50
	add  d                                           ; $4a55: $82
	ldh  a, [rSC]                                    ; $4a56: $f0 $02
	ld   [$07c7], a                                  ; $4a58: $ea $c7 $07
	add  b                                           ; $4a5b: $80
	rst  ToBoot                                         ; $4a5c: $c7
	inc  bc                                          ; $4a5d: $03
	rlca                                             ; $4a5e: $07
	scf                                              ; $4a5f: $37
	rlca                                             ; $4a60: $07
	db   $eb                                         ; $4a61: $eb
	add  b                                           ; $4a62: $80

jr_07a_4a63:
	inc  bc                                          ; $4a63: $03
	add  e                                           ; $4a64: $83

jr_07a_4a65:
	db   $db                                         ; $4a65: $db
	ld   [bc], a                                     ; $4a66: $02
	reti                                             ; $4a67: $d9


	ret  nc                                          ; $4a68: $d0

	ret  z                                           ; $4a69: $c8

	add  b                                           ; $4a6a: $80
	jp   c, $c005                                    ; $4a6b: $da $05 $c0

	ret  nc                                          ; $4a6e: $d0

	ret  nz                                          ; $4a6f: $c0

	jp   c, $c8c0                                    ; $4a70: $da $c0 $c8

	add  e                                           ; $4a73: $83
	jp   nz, $1500                                   ; $4a74: $c2 $00 $15

	add  d                                           ; $4a77: $82
	ld   [hl], b                                     ; $4a78: $70
	ld   bc, $b0f0                                   ; $4a79: $01 $f0 $b0
	add  b                                           ; $4a7c: $80
	jr   nc, jr_07a_4a80                             ; $4a7d: $30 $01

	or   b                                           ; $4a7f: $b0

jr_07a_4a80:
	jr   nc, jr_07a_4a05                             ; $4a80: $30 $83

	or   b                                           ; $4a82: $b0
	ld   bc, $7039                                   ; $4a83: $01 $39 $70
	add  b                                           ; $4a86: $80
	ld   d, b                                        ; $4a87: $50
	add  c                                           ; $4a88: $81
	nop                                              ; $4a89: $00
	inc  bc                                          ; $4a8a: $03
	ld   c, $00                                      ; $4a8b: $0e $00
	ld   b, $01                                      ; $4a8d: $06 $01
	add  c                                           ; $4a8f: $81
	nop                                              ; $4a90: $00
	add  b                                           ; $4a91: $80
	ld   [de], a                                     ; $4a92: $12
	ld   bc, $dbff                                   ; $4a93: $01 $ff $db
	add  b                                           ; $4a96: $80
	add  b                                           ; $4a97: $80
	rlca                                             ; $4a98: $07
	jr   jr_07a_4a63                                 ; $4a99: $18 $c8

	ldh  a, [c]                                      ; $4a9b: $f2
	ld   a, [$7802]                                  ; $4a9c: $fa $02 $78
	add  [hl]                                        ; $4a9f: $86
	nop                                              ; $4aa0: $00
	add  b                                           ; $4aa1: $80
	ld   d, b                                        ; $4aa2: $50
	add  b                                           ; $4aa3: $80
	and  b                                           ; $4aa4: $a0
	ld   bc, $c2e7                                   ; $4aa5: $01 $e7 $c2
	add  b                                           ; $4aa8: $80
	ld   b, d                                        ; $4aa9: $42
	rlca                                             ; $4aaa: $07
	nop                                              ; $4aab: $00
	ld   [bc], a                                     ; $4aac: $02
	ld   e, $26                                      ; $4aad: $1e $26
	nop                                              ; $4aaf: $00
	ld   e, $01                                      ; $4ab0: $1e $01
	nop                                              ; $4ab2: $00
	add  b                                           ; $4ab3: $80
	ld   b, b                                        ; $4ab4: $40
	add  b                                           ; $4ab5: $80
	jr   z, jr_07a_4ab8                              ; $4ab6: $28 $00

jr_07a_4ab8:
	ldh  a, [$81]                                    ; $4ab8: $f0 $81
	or   b                                           ; $4aba: $b0
	nop                                              ; $4abb: $00
	jr   nc, jr_07a_4a3e                             ; $4abc: $30 $80

	sub  b                                           ; $4abe: $90
	nop                                              ; $4abf: $00
	ldh  a, [$80]                                    ; $4ac0: $f0 $80
	nop                                              ; $4ac2: $00
	nop                                              ; $4ac3: $00
	add  b                                           ; $4ac4: $80
	add  h                                           ; $4ac5: $84

jr_07a_4ac6:
	nop                                              ; $4ac6: $00
	add  l                                           ; $4ac7: $85
	jr   nc, @-$7e                                   ; $4ac8: $30 $80

	ccf                                              ; $4aca: $3f
	ld   bc, $2d1d                                   ; $4acb: $01 $1d $2d
	add  b                                           ; $4ace: $80
	rst  $38                                         ; $4acf: $ff
	inc  b                                           ; $4ad0: $04
	db   $e3                                         ; $4ad1: $e3
	rst  $38                                         ; $4ad2: $ff
	inc  e                                           ; $4ad3: $1c
	ld   a, $3c                                      ; $4ad4: $3e $3c
	add  e                                           ; $4ad6: $83
	ld   [$b508], sp                                 ; $4ad7: $08 $08 $b5
	cp   a                                           ; $4ada: $bf
	rst  $30                                         ; $4adb: $f7
	rst  $38                                         ; $4adc: $ff
	ld   d, e                                        ; $4add: $53
	rst  $38                                         ; $4ade: $ff
	and  b                                           ; $4adf: $a0
	inc  b                                           ; $4ae0: $04
	nop                                              ; $4ae1: $00
	add  c                                           ; $4ae2: $81
	jr   nc, jr_07a_4a65                             ; $4ae3: $30 $80

	inc  sp                                          ; $4ae5: $33
	inc  de                                          ; $4ae6: $13
	ld   c, a                                        ; $4ae7: $4f
	ld   a, a                                        ; $4ae8: $7f
	xor  $ff                                         ; $4ae9: $ee $ff
	ld   b, c                                        ; $4aeb: $41
	rst  $38                                         ; $4aec: $ff
	xor  a                                           ; $4aed: $af
	rst  $38                                         ; $4aee: $ff
	rst  JumpTable                                         ; $4aef: $df
	jr   nz, jr_07a_4afa                             ; $4af0: $20 $08

	inc  hl                                          ; $4af2: $23
	dec  h                                           ; $4af3: $25
	ld   l, $ea                                      ; $4af4: $2e $ea
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4af6: $cf
	ld   e, h                                        ; $4af7: $5c
	rst  $38                                         ; $4af8: $ff
	and  [hl]                                        ; $4af9: $a6

jr_07a_4afa:
	rst  $38                                         ; $4afa: $ff
	add  b                                           ; $4afb: $80
	ret  nz                                          ; $4afc: $c0

	ld   c, $f8                                      ; $4afd: $0e $f8
	rst  $38                                         ; $4aff: $ff
	cp   a                                           ; $4b00: $bf
	ld   a, a                                        ; $4b01: $7f
	xor  b                                           ; $4b02: $a8
	ldh  a, [$67]                                    ; $4b03: $f0 $67
	add  a                                           ; $4b05: $87
	ldh  a, [$90]                                    ; $4b06: $f0 $90
	ld   a, [hl]                                     ; $4b08: $7e
	ld   h, d                                        ; $4b09: $62
	add  b                                           ; $4b0a: $80
	rst  $38                                         ; $4b0b: $ff
	ld   a, h                                        ; $4b0c: $7c
	add  e                                           ; $4b0d: $83
	rst  $38                                         ; $4b0e: $ff
	add  b                                           ; $4b0f: $80
	inc  sp                                          ; $4b10: $33
	add  b                                           ; $4b11: $80
	ld   b, $80                                      ; $4b12: $06 $80
	ld   de, $0480                                   ; $4b14: $11 $80 $04
	inc  bc                                          ; $4b17: $03
	ccf                                              ; $4b18: $3f
	ret  nz                                          ; $4b19: $c0

	nop                                              ; $4b1a: $00
	cp   $82                                         ; $4b1b: $fe $82
	rst  $38                                         ; $4b1d: $ff
	dec  b                                           ; $4b1e: $05
	add  hl, bc                                      ; $4b1f: $09
	adc  b                                           ; $4b20: $88
	ret  nz                                          ; $4b21: $c0

	ld   h, b                                        ; $4b22: $60
	xor  [hl]                                        ; $4b23: $ae
	adc  [hl]                                        ; $4b24: $8e
	add  b                                           ; $4b25: $80
	jr   nz, jr_07a_4b28                             ; $4b26: $20 $00

jr_07a_4b28:
	rst  $38                                         ; $4b28: $ff
	add  b                                           ; $4b29: $80
	nop                                              ; $4b2a: $00
	nop                                              ; $4b2b: $00
	ld   a, a                                        ; $4b2c: $7f
	add  b                                           ; $4b2d: $80
	push af                                          ; $4b2e: $f5
	add  b                                           ; $4b2f: $80
	ret  nc                                          ; $4b30: $d0

	ld   [$0781], sp                                 ; $4b31: $08 $81 $07
	ld   b, $01                                      ; $4b34: $06 $01
	nop                                              ; $4b36: $00
	rlca                                             ; $4b37: $07
	ld   b, c                                        ; $4b38: $41
	ld   a, a                                        ; $4b39: $7f
	rst  ToBoot                                         ; $4b3a: $c7
	add  b                                           ; $4b3b: $80
	ccf                                              ; $4b3c: $3f
	nop                                              ; $4b3d: $00
	rst  $38                                         ; $4b3e: $ff
	add  b                                           ; $4b3f: $80
	ld   d, d                                        ; $4b40: $52
	add  b                                           ; $4b41: $80
	jr   z, jr_07a_4ac6                              ; $4b42: $28 $82

	rst  $38                                         ; $4b44: $ff
	add  b                                           ; $4b45: $80
	ld   d, l                                        ; $4b46: $55
	add  b                                           ; $4b47: $80
	nop                                              ; $4b48: $00
	add  b                                           ; $4b49: $80
	ret  nz                                          ; $4b4a: $c0

	add  b                                           ; $4b4b: $80
	inc  bc                                          ; $4b4c: $03
	dec  b                                           ; $4b4d: $05
	cp   $ff                                         ; $4b4e: $fe $ff
	pop  bc                                          ; $4b50: $c1
	rst  $38                                         ; $4b51: $ff
	sub  h                                           ; $4b52: $94
	xor  c                                           ; $4b53: $a9
	add  b                                           ; $4b54: $80
	call nc, $0102                                   ; $4b55: $d4 $02 $01
	nop                                              ; $4b58: $00
	inc  b                                           ; $4b59: $04
	add  c                                           ; $4b5a: $81
	dec  b                                           ; $4b5b: $05
	ld   b, $fd                                      ; $4b5c: $06 $fd
	ei                                               ; $4b5e: $fb
	ld   a, [de]                                     ; $4b5f: $1a
	and  $c6                                         ; $4b60: $e6 $c6
	sbc  $e0                                         ; $4b62: $de $e0
	add  d                                           ; $4b64: $82
	ld   b, b                                        ; $4b65: $40
	ld   [bc], a                                     ; $4b66: $02
	ret  nz                                          ; $4b67: $c0

	sub  b                                           ; $4b68: $90
	db   $10                                         ; $4b69: $10
	add  b                                           ; $4b6a: $80
	ld   a, [hl-]                                    ; $4b6b: $3a
	ld   b, $7f                                      ; $4b6c: $06 $7f
	rra                                              ; $4b6e: $1f
	jr   c, @+$09                                    ; $4b6f: $38 $07

	dec  de                                          ; $4b71: $1b
	inc  bc                                          ; $4b72: $03
	rlca                                             ; $4b73: $07
	adc  c                                           ; $4b74: $89
	nop                                              ; $4b75: $00
	add  b                                           ; $4b76: $80
	ldh  a, [$0a]                                    ; $4b77: $f0 $0a
	inc  e                                           ; $4b79: $1c
	db   $fc                                         ; $4b7a: $fc
	add  b                                           ; $4b7b: $80
	rst  $38                                         ; $4b7c: $ff
	ld   e, a                                        ; $4b7d: $5f
	rst  $38                                         ; $4b7e: $ff
	ld   c, a                                        ; $4b7f: $4f
	rst  $38                                         ; $4b80: $ff
	xor  a                                           ; $4b81: $af
	rst  $38                                         ; $4b82: $ff
	rra                                              ; $4b83: $1f
	add  c                                           ; $4b84: $81
	ld   a, a                                        ; $4b85: $7f
	rlca                                             ; $4b86: $07
	or   b                                           ; $4b87: $b0
	rst  $38                                         ; $4b88: $ff
	dec  [hl]                                        ; $4b89: $35
	ld   a, $3b                                      ; $4b8a: $3e $3b
	jr   nz, @+$62                                   ; $4b8c: $20 $60

	ld   b, b                                        ; $4b8e: $40
	add  b                                           ; $4b8f: $80
	jp   $d001                                       ; $4b90: $c3 $01 $d0


	sub  b                                           ; $4b93: $90
	add  b                                           ; $4b94: $80
	adc  e                                           ; $4b95: $8b
	add  b                                           ; $4b96: $80
	add  c                                           ; $4b97: $81
	add  b                                           ; $4b98: $80
	ret  nc                                          ; $4b99: $d0

	add  b                                           ; $4b9a: $80
	ld   b, $09                                      ; $4b9b: $06 $09
	ld   l, e                                        ; $4b9d: $6b
	inc  d                                           ; $4b9e: $14
	ret  nz                                          ; $4b9f: $c0

	nop                                              ; $4ba0: $00
	jr   nz, jr_07a_4ba3                             ; $4ba1: $20 $00

jr_07a_4ba3:
	stop                                             ; $4ba3: $10 $00
	cpl                                              ; $4ba5: $2f
	daa                                              ; $4ba6: $27
	add  b                                           ; $4ba7: $80
	ld   b, a                                        ; $4ba8: $47
	ld   bc, $0306                                   ; $4ba9: $01 $06 $03
	add  b                                           ; $4bac: $80
	inc  sp                                          ; $4bad: $33
	inc  hl                                          ; $4bae: $23
	db   $fd                                         ; $4baf: $fd
	rst  $38                                         ; $4bb0: $ff

jr_07a_4bb1:
	rst  ToBoot                                         ; $4bb1: $c7
	rst  $38                                         ; $4bb2: $ff
	cp   b                                           ; $4bb3: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bb4: $cf
	ld   d, h                                        ; $4bb5: $54
	sbc  [hl]                                        ; $4bb6: $9e
	sbc  c                                           ; $4bb7: $99
	sbc  a                                           ; $4bb8: $9f
	dec  de                                          ; $4bb9: $1b
	rra                                              ; $4bba: $1f
	dec  de                                          ; $4bbb: $1b
	rra                                              ; $4bbc: $1f
	add  hl, de                                      ; $4bbd: $19
	rra                                              ; $4bbe: $1f
	ld   bc, $4305                                   ; $4bbf: $01 $05 $43
	add  c                                           ; $4bc2: $81
	ld   c, [hl]                                     ; $4bc3: $4e
	jp   $30c6                                       ; $4bc4: $c3 $c6 $30


	and  h                                           ; $4bc7: $a4
	inc  d                                           ; $4bc8: $14
	add  hl, sp                                      ; $4bc9: $39
	ld   hl, $81e1                                   ; $4bca: $21 $e1 $81
	sbc  b                                           ; $4bcd: $98
	add  b                                           ; $4bce: $80
	xor  c                                           ; $4bcf: $a9
	ld   b, e                                        ; $4bd0: $43
	sub  d                                           ; $4bd1: $92
	sub  c                                           ; $4bd2: $91
	add  b                                           ; $4bd3: $80
	add  c                                           ; $4bd4: $81
	add  b                                           ; $4bd5: $80
	ld   sp, $1580                                   ; $4bd6: $31 $80 $15
	add  b                                           ; $4bd9: $80
	ld   b, c                                        ; $4bda: $41
	add  b                                           ; $4bdb: $80
	ld   hl, $1003                                   ; $4bdc: $21 $03 $10
	ld   [de], a                                     ; $4bdf: $12
	inc  bc                                          ; $4be0: $03
	nop                                              ; $4be1: $00
	add  d                                           ; $4be2: $82
	inc  bc                                          ; $4be3: $03
	adc  b                                           ; $4be4: $88
	nop                                              ; $4be5: $00
	dec  bc                                          ; $4be6: $0b
	ld   c, l                                        ; $4be7: $4d
	rrca                                             ; $4be8: $0f
	add  h                                           ; $4be9: $84

jr_07a_4bea:
	add  a                                           ; $4bea: $87
	ld   h, d                                        ; $4beb: $62
	jp   $e030                                       ; $4bec: $c3 $30 $e0


	rrca                                             ; $4bef: $0f
	jr   nc, jr_07a_4bfa                             ; $4bf0: $30 $08

	rlca                                             ; $4bf2: $07
	add  d                                           ; $4bf3: $82
	nop                                              ; $4bf4: $00
	rlca                                             ; $4bf5: $07
	ld   e, l                                        ; $4bf6: $5d
	sbc  c                                           ; $4bf7: $99
	daa                                              ; $4bf8: $27
	cp   h                                           ; $4bf9: $bc

jr_07a_4bfa:
	and  e                                           ; $4bfa: $a3
	cp   a                                           ; $4bfb: $bf
	db   $e3                                         ; $4bfc: $e3
	ld   h, b                                        ; $4bfd: $60
	add  b                                           ; $4bfe: $80
	ldh  [rSB], a                                    ; $4bff: $e0 $01
	ld   b, b                                        ; $4c01: $40
	add  b                                           ; $4c02: $80
	add  d                                           ; $4c03: $82
	nop                                              ; $4c04: $00
	rlca                                             ; $4c05: $07
	inc  bc                                          ; $4c06: $03
	ld   bc, $000e                                   ; $4c07: $01 $0e $00
	ldh  a, [$0c]                                    ; $4c0a: $f0 $0c
	ld   hl, sp+$08                                  ; $4c0c: $f8 $08
	add  b                                           ; $4c0e: $80
	inc  h                                           ; $4c0f: $24
	rst  $38                                         ; $4c10: $ff
	nop                                              ; $4c11: $00
	rst  $38                                         ; $4c12: $ff
	nop                                              ; $4c13: $00
	ldh  [c], a                                      ; $4c14: $e2
	nop                                              ; $4c15: $00
	jp   c, $8701                                    ; $4c16: $da $01 $87

	nop                                              ; $4c19: $00
	add  [hl]                                        ; $4c1a: $86
	rrca                                             ; $4c1b: $0f
	add  [hl]                                        ; $4c1c: $86

jr_07a_4c1d:
	nop                                              ; $4c1d: $00
	add  [hl]                                        ; $4c1e: $86
	rst  $38                                         ; $4c1f: $ff
	add  [hl]                                        ; $4c20: $86
	nop                                              ; $4c21: $00
	add  d                                           ; $4c22: $82
	rst  $38                                         ; $4c23: $ff
	add  b                                           ; $4c24: $80
	cp   $80                                         ; $4c25: $fe $80
	db   $fd                                         ; $4c27: $fd
	add  [hl]                                        ; $4c28: $86
	nop                                              ; $4c29: $00
	add  b                                           ; $4c2a: $80
	xor  d                                           ; $4c2b: $aa
	add  b                                           ; $4c2c: $80
	ld   d, h                                        ; $4c2d: $54
	add  b                                           ; $4c2e: $80
	jr   z, jr_07a_4bb1                              ; $4c2f: $28 $80

	ld   b, b                                        ; $4c31: $40
	adc  l                                           ; $4c32: $8d
	nop                                              ; $4c33: $00
	ld   bc, $000f                                   ; $4c34: $01 $0f $00
	add  b                                           ; $4c37: $80
	rrca                                             ; $4c38: $0f
	ld   [bc], a                                     ; $4c39: $02
	nop                                              ; $4c3a: $00
	rrca                                             ; $4c3b: $0f
	nop                                              ; $4c3c: $00
	add  c                                           ; $4c3d: $81
	rrca                                             ; $4c3e: $0f
	add  b                                           ; $4c3f: $80
	nop                                              ; $4c40: $00
	dec  b                                           ; $4c41: $05
	dec  b                                           ; $4c42: $05
	rrca                                             ; $4c43: $0f
	dec  b                                           ; $4c44: $05
	rrca                                             ; $4c45: $0f
	ldh  a, [rP1]                                    ; $4c46: $f0 $00
	add  b                                           ; $4c48: $80
	db   $fc                                         ; $4c49: $fc
	inc  bc                                          ; $4c4a: $03
	ld   bc, $01ff                                   ; $4c4b: $01 $ff $01
	rst  $38                                         ; $4c4e: $ff
	add  b                                           ; $4c4f: $80
	cp   $80                                         ; $4c50: $fe $80
	nop                                              ; $4c52: $00
	inc  b                                           ; $4c53: $04
	ld   d, l                                        ; $4c54: $55
	rst  $38                                         ; $4c55: $ff
	ld   e, d                                        ; $4c56: $5a
	pop  af                                          ; $4c57: $f1
	cp   $87                                         ; $4c58: $fe $87
	nop                                              ; $4c5a: $00
	add  c                                           ; $4c5b: $81
	ccf                                              ; $4c5c: $3f
	inc  bc                                          ; $4c5d: $03
	jr   nz, jr_07a_4c88                             ; $4c5e: $20 $28

	cpl                                              ; $4c60: $2f
	jr   jr_07a_4bea                                 ; $4c61: $18 $87

	nop                                              ; $4c63: $00
	add  c                                           ; $4c64: $81
	rst  $38                                         ; $4c65: $ff
	add  b                                           ; $4c66: $80
	nop                                              ; $4c67: $00
	add  b                                           ; $4c68: $80
	rst  $38                                         ; $4c69: $ff
	add  c                                           ; $4c6a: $81
	nop                                              ; $4c6b: $00
	inc  bc                                          ; $4c6c: $03

jr_07a_4c6d:
	ld   d, a                                        ; $4c6d: $57
	rst  $38                                         ; $4c6e: $ff
	ld   d, a                                        ; $4c6f: $57
	rst  $38                                         ; $4c70: $ff
	add  b                                           ; $4c71: $80
	xor  d                                           ; $4c72: $aa
	add  b                                           ; $4c73: $80
	nop                                              ; $4c74: $00
	inc  b                                           ; $4c75: $04
	add  b                                           ; $4c76: $80
	rst  $38                                         ; $4c77: $ff
	push de                                          ; $4c78: $d5
	rst  $38                                         ; $4c79: $ff
	ld   d, l                                        ; $4c7a: $55
	add  c                                           ; $4c7b: $81
	nop                                              ; $4c7c: $00
	add  d                                           ; $4c7d: $82
	rst  $38                                         ; $4c7e: $ff
	add  b                                           ; $4c7f: $80
	xor  d                                           ; $4c80: $aa
	add  b                                           ; $4c81: $80
	nop                                              ; $4c82: $00
	inc  b                                           ; $4c83: $04
	inc  bc                                          ; $4c84: $03
	rst  $38                                         ; $4c85: $ff
	ld   d, b                                        ; $4c86: $50
	rst  $38                                         ; $4c87: $ff

jr_07a_4c88:
	ld   d, e                                        ; $4c88: $53
	add  c                                           ; $4c89: $81
	nop                                              ; $4c8a: $00
	add  d                                           ; $4c8b: $82
	rst  $38                                         ; $4c8c: $ff
	add  b                                           ; $4c8d: $80
	xor  d                                           ; $4c8e: $aa
	add  b                                           ; $4c8f: $80
	nop                                              ; $4c90: $00
	inc  bc                                          ; $4c91: $03
	add  b                                           ; $4c92: $80
	rst  $38                                         ; $4c93: $ff
	ld   a, a                                        ; $4c94: $7f
	rst  $38                                         ; $4c95: $ff
	adc  b                                           ; $4c96: $88
	nop                                              ; $4c97: $00
	add  c                                           ; $4c98: $81
	ldh  [rP1], a                                    ; $4c99: $e0 $00
	jr   nz, jr_07a_4c1d                             ; $4c9b: $20 $80

	and  b                                           ; $4c9d: $a0
	nop                                              ; $4c9e: $00
	ccf                                              ; $4c9f: $3f
	add  c                                           ; $4ca0: $81
	nop                                              ; $4ca1: $00
	add  d                                           ; $4ca2: $82
	rst  $38                                         ; $4ca3: $ff
	add  b                                           ; $4ca4: $80
	xor  d                                           ; $4ca5: $aa
	add  b                                           ; $4ca6: $80
	nop                                              ; $4ca7: $00
	inc  b                                           ; $4ca8: $04
	inc  c                                           ; $4ca9: $0c
	rst  $38                                         ; $4caa: $ff
	jp   $cfff                                       ; $4cab: $c3 $ff $cf


	add  c                                           ; $4cae: $81
	nop                                              ; $4caf: $00
	add  d                                           ; $4cb0: $82
	rst  $38                                         ; $4cb1: $ff
	add  b                                           ; $4cb2: $80
	xor  d                                           ; $4cb3: $aa
	add  b                                           ; $4cb4: $80
	nop                                              ; $4cb5: $00
	inc  b                                           ; $4cb6: $04
	ld   a, $fe                                      ; $4cb7: $3e $fe

jr_07a_4cb9:
	sbc  l                                           ; $4cb9: $9d
	db   $fd                                         ; $4cba: $fd
	xor  b                                           ; $4cbb: $a8
	add  c                                           ; $4cbc: $81
	inc  l                                           ; $4cbd: $2c
	add  d                                           ; $4cbe: $82
	db   $ec                                         ; $4cbf: $ec
	add  b                                           ; $4cc0: $80
	xor  h                                           ; $4cc1: $ac
	ld   b, $24                                      ; $4cc2: $06 $24
	nop                                              ; $4cc4: $00
	ld   b, b                                        ; $4cc5: $40
	ld   a, a                                        ; $4cc6: $7f
	sbc  a                                           ; $4cc7: $9f
	rst  $38                                         ; $4cc8: $ff
	and  b                                           ; $4cc9: $a0
	adc  [hl]                                        ; $4cca: $8e
	rrca                                             ; $4ccb: $0f
	add  [hl]                                        ; $4ccc: $86
	rst  $38                                         ; $4ccd: $ff
	add  b                                           ; $4cce: $80
	cp   $80                                         ; $4ccf: $fe $80
	db   $fd                                         ; $4cd1: $fd
	add  b                                           ; $4cd2: $80
	ld   a, [$f580]                                  ; $4cd3: $fa $80 $f5
	add  b                                           ; $4cd6: $80
	ld   [$d480], a                                  ; $4cd7: $ea $80 $d4
	add  b                                           ; $4cda: $80
	xor  b                                           ; $4cdb: $a8
	add  b                                           ; $4cdc: $80
	ld   b, b                                        ; $4cdd: $40
	add  b                                           ; $4cde: $80
	and  b                                           ; $4cdf: $a0
	add  b                                           ; $4ce0: $80
	ld   b, b                                        ; $4ce1: $40
	add  b                                           ; $4ce2: $80
	add  b                                           ; $4ce3: $80
	dec  b                                           ; $4ce4: $05
	nop                                              ; $4ce5: $00
	or   h                                           ; $4ce6: $b4
	ld   a, a                                        ; $4ce7: $7f
	ld   h, e                                        ; $4ce8: $63
	ld   a, a                                        ; $4ce9: $7f
	jr   z, jr_07a_4c6d                              ; $4cea: $28 $81

	nop                                              ; $4cec: $00
	add  b                                           ; $4ced: $80
	ld   a, a                                        ; $4cee: $7f
	add  b                                           ; $4cef: $80
	nop                                              ; $4cf0: $00
	inc  b                                           ; $4cf1: $04
	ld   b, b                                        ; $4cf2: $40
	rst  $38                                         ; $4cf3: $ff
	ld   a, $ff                                      ; $4cf4: $3e $ff
	add  c                                           ; $4cf6: $81
	add  c                                           ; $4cf7: $81
	rst  $38                                         ; $4cf8: $ff
	add  d                                           ; $4cf9: $82
	nop                                              ; $4cfa: $00
	add  b                                           ; $4cfb: $80
	rst  $38                                         ; $4cfc: $ff
	add  b                                           ; $4cfd: $80
	nop                                              ; $4cfe: $00
	inc  b                                           ; $4cff: $04
	add  h                                           ; $4d00: $84
	rst  $38                                         ; $4d01: $ff
	ld   a, a                                        ; $4d02: $7f
	rst  $38                                         ; $4d03: $ff
	inc  b                                           ; $4d04: $04
	add  c                                           ; $4d05: $81
	rst  $38                                         ; $4d06: $ff
	add  d                                           ; $4d07: $82
	nop                                              ; $4d08: $00
	add  b                                           ; $4d09: $80
	rst  $38                                         ; $4d0a: $ff
	add  b                                           ; $4d0b: $80
	nop                                              ; $4d0c: $00
	nop                                              ; $4d0d: $00
	db   $10                                         ; $4d0e: $10
	add  c                                           ; $4d0f: $81
	rst  $38                                         ; $4d10: $ff
	nop                                              ; $4d11: $00
	rrca                                             ; $4d12: $0f
	add  c                                           ; $4d13: $81

jr_07a_4d14:
	pop  hl                                          ; $4d14: $e1
	add  d                                           ; $4d15: $82
	ld   bc, $e980                                   ; $4d16: $01 $80 $e9
	nop                                              ; $4d19: $00
	ld   bc, $0080                                   ; $4d1a: $01 $80 $00
	add  b                                           ; $4d1d: $80
	rst  JumpTable                                         ; $4d1e: $df
	ld   bc, $27ef                                   ; $4d1f: $01 $ef $27
	add  b                                           ; $4d22: $80
	cpl                                              ; $4d23: $2f
	adc  e                                           ; $4d24: $8b
	inc  l                                           ; $4d25: $2c
	nop                                              ; $4d26: $00
	db   $e4                                         ; $4d27: $e4
	add  b                                           ; $4d28: $80
	rst  $38                                         ; $4d29: $ff
	add  e                                           ; $4d2a: $83
	nop                                              ; $4d2b: $00
	nop                                              ; $4d2c: $00
	ld   b, b                                        ; $4d2d: $40
	add  b                                           ; $4d2e: $80
	ld   a, a                                        ; $4d2f: $7f
	nop                                              ; $4d30: $00
	ld   h, b                                        ; $4d31: $60
	add  b                                           ; $4d32: $80
	ld   h, a                                        ; $4d33: $67
	add  b                                           ; $4d34: $80
	ld   l, e                                        ; $4d35: $6b
	nop                                              ; $4d36: $00
	jr   nz, jr_07a_4cb9                             ; $4d37: $20 $80

	rst  $38                                         ; $4d39: $ff
	add  h                                           ; $4d3a: $84
	nop                                              ; $4d3b: $00
	add  b                                           ; $4d3c: $80
	rst  $38                                         ; $4d3d: $ff
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	add  d                                           ; $4d40: $82
	rst  $38                                         ; $4d41: $ff
	nop                                              ; $4d42: $00
	add  b                                           ; $4d43: $80
	add  c                                           ; $4d44: $81
	and  b                                           ; $4d45: $a0
	add  h                                           ; $4d46: $84
	cp   a                                           ; $4d47: $bf
	ld   b, $20                                      ; $4d48: $06 $20
	nop                                              ; $4d4a: $00
	cpl                                              ; $4d4b: $2f
	rst  $28                                         ; $4d4c: $ef
	sub  a                                           ; $4d4d: $97
	rst  $30                                         ; $4d4e: $f7
	and  b                                           ; $4d4f: $a0
	add  b                                           ; $4d50: $80
	rst  $38                                         ; $4d51: $ff
	add  e                                           ; $4d52: $83
	ld   bc, $0900                                   ; $4d53: $01 $00 $09
	add  b                                           ; $4d56: $80
	jp   hl                                          ; $4d57: $e9


	ld   bc, $0929                                   ; $4d58: $01 $29 $09
	add  c                                           ; $4d5b: $81
	add  hl, hl                                      ; $4d5c: $29
	nop                                              ; $4d5d: $00
	sbc  [hl]                                        ; $4d5e: $9e
	adc  l                                           ; $4d5f: $8d
	and  b                                           ; $4d60: $a0
	nop                                              ; $4d61: $00
	ccf                                              ; $4d62: $3f
	add  c                                           ; $4d63: $81
	nop                                              ; $4d64: $00
	add  h                                           ; $4d65: $84
	rst  $38                                         ; $4d66: $ff
	add  b                                           ; $4d67: $80
	nop                                              ; $4d68: $00
	add  b                                           ; $4d69: $80
	di                                               ; $4d6a: $f3
	add  b                                           ; $4d6b: $80
	db   $fc                                         ; $4d6c: $fc
	add  d                                           ; $4d6d: $82
	nop                                              ; $4d6e: $00
	add  h                                           ; $4d6f: $84
	rst  $38                                         ; $4d70: $ff
	add  b                                           ; $4d71: $80
	nop                                              ; $4d72: $00
	inc  b                                           ; $4d73: $04

jr_07a_4d74:
	and  c                                           ; $4d74: $a1
	rst  $38                                         ; $4d75: $ff
	ld   e, $ff                                      ; $4d76: $1e $ff
	cp   a                                           ; $4d78: $bf
	add  c                                           ; $4d79: $81
	nop                                              ; $4d7a: $00
	add  h                                           ; $4d7b: $84
	rst  $38                                         ; $4d7c: $ff
	add  b                                           ; $4d7d: $80
	nop                                              ; $4d7e: $00
	inc  b                                           ; $4d7f: $04
	ret  nz                                          ; $4d80: $c0

	rst  $38                                         ; $4d81: $ff
	rrca                                             ; $4d82: $0f
	rst  $38                                         ; $4d83: $ff
	jr   nc, jr_07a_4d14                             ; $4d84: $30 $8e

	rrca                                             ; $4d86: $0f
	add  b                                           ; $4d87: $80
	ld   a, [$f480]                                  ; $4d88: $fa $80 $f4
	add  b                                           ; $4d8b: $80
	add  sp, -$80                                    ; $4d8c: $e8 $80
	ret  nc                                          ; $4d8e: $d0

	add  b                                           ; $4d8f: $80
	and  b                                           ; $4d90: $a0
	add  b                                           ; $4d91: $80
	ld   b, b                                        ; $4d92: $40
	add  b                                           ; $4d93: $80

jr_07a_4d94:
	add  b                                           ; $4d94: $80
	ld   bc, $bf40                                   ; $4d95: $01 $40 $bf
	add  c                                           ; $4d98: $81
	nop                                              ; $4d99: $00
	add  h                                           ; $4d9a: $84
	rst  $38                                         ; $4d9b: $ff
	add  b                                           ; $4d9c: $80
	nop                                              ; $4d9d: $00
	inc  b                                           ; $4d9e: $04
	ld   a, [hl]                                     ; $4d9f: $7e
	cp   $3f                                         ; $4da0: $fe $3f
	rst  $38                                         ; $4da2: $ff
	ld   b, b                                        ; $4da3: $40
	add  c                                           ; $4da4: $81
	nop                                              ; $4da5: $00
	ld   [bc], a                                     ; $4da6: $02
	xor  d                                           ; $4da7: $aa
	rst  $38                                         ; $4da8: $ff
	xor  d                                           ; $4da9: $aa
	add  c                                           ; $4daa: $81
	rst  $38                                         ; $4dab: $ff
	add  b                                           ; $4dac: $80
	nop                                              ; $4dad: $00
	dec  b                                           ; $4dae: $05
	ld   b, l                                        ; $4daf: $45
	ld   a, a                                        ; $4db0: $7f
	ret  c                                           ; $4db1: $d8

	rst  $38                                         ; $4db2: $ff
	dec  e                                           ; $4db3: $1d
	nop                                              ; $4db4: $00
	add  b                                           ; $4db5: $80
	rst  $38                                         ; $4db6: $ff
	ld   [bc], a                                     ; $4db7: $02
	nop                                              ; $4db8: $00
	rst  $38                                         ; $4db9: $ff
	nop                                              ; $4dba: $00
	add  c                                           ; $4dbb: $81
	rst  $38                                         ; $4dbc: $ff
	add  b                                           ; $4dbd: $80
	nop                                              ; $4dbe: $00
	dec  b                                           ; $4dbf: $05
	ldh  a, [c]                                      ; $4dc0: $f2
	di                                               ; $4dc1: $f3
	db   $f4                                         ; $4dc2: $f4
	db   $fd                                         ; $4dc3: $fd
	rlca                                             ; $4dc4: $07
	nop                                              ; $4dc5: $00
	add  b                                           ; $4dc6: $80
	ldh  a, [rSC]                                    ; $4dc7: $f0 $02
	nop                                              ; $4dc9: $00
	ldh  a, [rP1]                                    ; $4dca: $f0 $00
	add  c                                           ; $4dcc: $81
	ldh  a, [$81]                                    ; $4dcd: $f0 $81
	nop                                              ; $4dcf: $00
	inc  b                                           ; $4dd0: $04
	ldh  a, [rSVBK]                                  ; $4dd1: $f0 $70
	ldh  a, [$80]                                    ; $4dd3: $f0 $80
	rrca                                             ; $4dd5: $0f
	add  b                                           ; $4dd6: $80
	ld   c, $80                                      ; $4dd7: $0e $80
	ld   bc, $0f88                                   ; $4dd9: $01 $88 $0f
	ld   bc, $2c38                                   ; $4ddc: $01 $38 $2c
	add  b                                           ; $4ddf: $80
	dec  l                                           ; $4de0: $2d
	add  b                                           ; $4de1: $80
	inc  l                                           ; $4de2: $2c
	add  b                                           ; $4de3: $80
	dec  l                                           ; $4de4: $2d
	add  b                                           ; $4de5: $80
	inc  l                                           ; $4de6: $2c
	add  h                                           ; $4de7: $84
	dec  l                                           ; $4de8: $2d
	nop                                              ; $4de9: $00
	adc  b                                           ; $4dea: $88
	add  a                                           ; $4deb: $87
	ld   l, h                                        ; $4dec: $6c
	nop                                              ; $4ded: $00
	ld   c, h                                        ; $4dee: $4c
	add  e                                           ; $4def: $83
	ld   l, h                                        ; $4df0: $6c
	nop                                              ; $4df1: $00
	jr   nz, jr_07a_4d74                             ; $4df2: $20 $80

	nop                                              ; $4df4: $00
	add  l                                           ; $4df5: $85
	rst  $38                                         ; $4df6: $ff
	dec  b                                           ; $4df7: $05
	db   $fd                                         ; $4df8: $fd
	rst  $38                                         ; $4df9: $ff
	ld   hl, sp-$01                                  ; $4dfa: $f8 $ff
	ld   a, [$8000]                                  ; $4dfc: $fa $00 $80
	inc  bc                                          ; $4dff: $03
	nop                                              ; $4e00: $00
	dec  bc                                          ; $4e01: $0b
	add  e                                           ; $4e02: $83
	ei                                               ; $4e03: $fb
	ld   [$fbab], sp                                 ; $4e04: $08 $ab $fb
	dec  bc                                          ; $4e07: $0b
	ei                                               ; $4e08: $fb
	dec  bc                                          ; $4e09: $0b
	ei                                               ; $4e0a: $fb
	and  e                                           ; $4e0b: $a3
	inc  bc                                          ; $4e0c: $03
	jr   z, jr_07a_4d94                              ; $4e0d: $28 $85

	add  hl, hl                                      ; $4e0f: $29
	nop                                              ; $4e10: $00
	add  hl, bc                                      ; $4e11: $09
	add  l                                           ; $4e12: $85
	add  hl, hl                                      ; $4e13: $29
	ld   bc, $cfee                                   ; $4e14: $01 $ee $cf
	add  b                                           ; $4e17: $80
	ccf                                              ; $4e18: $3f
	add  h                                           ; $4e19: $84
	rst  $38                                         ; $4e1a: $ff
	add  b                                           ; $4e1b: $80
	db   $fc                                         ; $4e1c: $fc
	add  b                                           ; $4e1d: $80
	db   $e3                                         ; $4e1e: $e3
	add  b                                           ; $4e1f: $80
	sbc  a                                           ; $4e20: $9f
	inc  bc                                          ; $4e21: $03
	push af                                          ; $4e22: $f5
	rst  $38                                         ; $4e23: $ff
	push af                                          ; $4e24: $f5
	rst  $38                                         ; $4e25: $ff
	add  b                                           ; $4e26: $80
	ld   hl, sp-$80                                  ; $4e27: $f8 $80
	db   $e3                                         ; $4e29: $e3
	add  b                                           ; $4e2a: $80
	sbc  a                                           ; $4e2b: $9f
	add  b                                           ; $4e2c: $80
	ld   a, a                                        ; $4e2d: $7f
	add  d                                           ; $4e2e: $82
	rst  $38                                         ; $4e2f: $ff
	add  hl, bc                                      ; $4e30: $09
	ld   a, l                                        ; $4e31: $7d
	rst  $38                                         ; $4e32: $ff
	xor  b                                           ; $4e33: $a8
	ccf                                              ; $4e34: $3f
	ret  nz                                          ; $4e35: $c0

	rst  $38                                         ; $4e36: $ff
	ret  nc                                          ; $4e37: $d0

	rst  $38                                         ; $4e38: $ff
	ld   a, [$80ff]                                  ; $4e39: $fa $ff $80
	cp   $80                                         ; $4e3c: $fe $80
	di                                               ; $4e3e: $f3
	add  b                                           ; $4e3f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e40: $cf
	stop                                             ; $4e41: $10 $00
	rst  $38                                         ; $4e43: $ff
	ld   a, h                                        ; $4e44: $7c
	rst  $38                                         ; $4e45: $ff
	jr   nc, @+$01                                   ; $4e46: $30 $ff

	inc  bc                                          ; $4e48: $03
	rst  $38                                         ; $4e49: $ff
	ld   e, d                                        ; $4e4a: $5a
	ccf                                              ; $4e4b: $3f
	add  b                                           ; $4e4c: $80
	rst  $38                                         ; $4e4d: $ff
	nop                                              ; $4e4e: $00
	rst  $38                                         ; $4e4f: $ff
	nop                                              ; $4e50: $00
	rst  $38                                         ; $4e51: $ff
	xor  d                                           ; $4e52: $aa
	add  b                                           ; $4e53: $80
	ld   c, $80                                      ; $4e54: $0e $80
	add  hl, bc                                      ; $4e56: $09
	add  b                                           ; $4e57: $80
	ld   a, [bc]                                     ; $4e58: $0a
	add  b                                           ; $4e59: $80
	dec  c                                           ; $4e5a: $0d
	add  b                                           ; $4e5b: $80
	ld   [$0480], sp                                 ; $4e5c: $08 $80 $04
	add  b                                           ; $4e5f: $80
	ld   [$042d], sp                                 ; $4e60: $08 $2d $04
	dec  sp                                          ; $4e63: $3b
	rst  $38                                         ; $4e64: $ff
	ld   a, $ff                                      ; $4e65: $3e $ff
	db   $fc                                         ; $4e67: $fc
	rst  $38                                         ; $4e68: $ff
	ld   sp, hl                                      ; $4e69: $f9
	cp   $b3                                         ; $4e6a: $fe $b3
	db   $fd                                         ; $4e6c: $fd
	ld   b, $f3                                      ; $4e6d: $06 $f3
	inc  b                                           ; $4e6f: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e70: $cf
	ld   h, b                                        ; $4e71: $60
	rst  $38                                         ; $4e72: $ff
	ld   h, $f3                                      ; $4e73: $26 $f3
	adc  a                                           ; $4e75: $8f
	rst  $28                                         ; $4e76: $ef
	ccf                                              ; $4e77: $3f
	sbc  a                                           ; $4e78: $9f
	ld   a, $7f                                      ; $4e79: $3e $7f
	ld   e, $ff                                      ; $4e7b: $1e $ff
	ld   a, [bc]                                     ; $4e7d: $0a
	rst  $38                                         ; $4e7e: $ff
	nop                                              ; $4e7f: $00
	rst  $38                                         ; $4e80: $ff
	ld   a, [hl+]                                    ; $4e81: $2a
	cp   $3f                                         ; $4e82: $fe $3f
	rst  $38                                         ; $4e84: $ff
	inc  e                                           ; $4e85: $1c
	rst  $38                                         ; $4e86: $ff
	add  hl, de                                      ; $4e87: $19
	rst  $38                                         ; $4e88: $ff
	inc  de                                          ; $4e89: $13
	rst  $38                                         ; $4e8a: $ff
	rlca                                             ; $4e8b: $07
	rst  $38                                         ; $4e8c: $ff
	ld   c, a                                        ; $4e8d: $4f
	rst  $38                                         ; $4e8e: $ff
	rra                                              ; $4e8f: $1f
	add  b                                           ; $4e90: $80
	ld   a, a                                        ; $4e91: $7f
	inc  bc                                          ; $4e92: $03
	rst  $38                                         ; $4e93: $ff
	cp   $ff                                         ; $4e94: $fe $ff
	db   $fc                                         ; $4e96: $fc
	add  c                                           ; $4e97: $81
	rst  $38                                         ; $4e98: $ff
	nop                                              ; $4e99: $00
	ld   sp, hl                                      ; $4e9a: $f9
	add  c                                           ; $4e9b: $81
	rst  $38                                         ; $4e9c: $ff
	nop                                              ; $4e9d: $00
	di                                               ; $4e9e: $f3
	add  c                                           ; $4e9f: $81
	rst  $38                                         ; $4ea0: $ff
	ld   [bc], a                                     ; $4ea1: $02
	rst  $20                                         ; $4ea2: $e7
	rst  $38                                         ; $4ea3: $ff
	db   $eb                                         ; $4ea4: $eb
	adc  l                                           ; $4ea5: $8d
	rst  $38                                         ; $4ea6: $ff
	nop                                              ; $4ea7: $00
	di                                               ; $4ea8: $f3
	add  c                                           ; $4ea9: $81
	rst  $38                                         ; $4eaa: $ff
	nop                                              ; $4eab: $00
	di                                               ; $4eac: $f3
	add  e                                           ; $4ead: $83
	rst  $38                                         ; $4eae: $ff
	nop                                              ; $4eaf: $00
	ld   sp, hl                                      ; $4eb0: $f9
	add  e                                           ; $4eb1: $83
	rst  $38                                         ; $4eb2: $ff
	nop                                              ; $4eb3: $00
	inc  [hl]                                        ; $4eb4: $34
	adc  l                                           ; $4eb5: $8d
	dec  l                                           ; $4eb6: $2d
	ld   [bc], a                                     ; $4eb7: $02
	xor  b                                           ; $4eb8: $a8
	ld   l, a                                        ; $4eb9: $6f
	ld   h, e                                        ; $4eba: $63
	add  b                                           ; $4ebb: $80
	ld   h, a                                        ; $4ebc: $67
	ld   b, $60                                      ; $4ebd: $06 $60
	ld   h, c                                        ; $4ebf: $61
	ld   a, a                                        ; $4ec0: $7f
	ld   a, c                                        ; $4ec1: $79
	ld   a, a                                        ; $4ec2: $7f
	ld   a, b                                        ; $4ec3: $78
	ld   h, b                                        ; $4ec4: $60
	add  b                                           ; $4ec5: $80
	ld   h, a                                        ; $4ec6: $67
	add  b                                           ; $4ec7: $80
	ld   l, e                                        ; $4ec8: $6b
	nop                                              ; $4ec9: $00
	rra                                              ; $4eca: $1f
	add  c                                           ; $4ecb: $81
	rst  $38                                         ; $4ecc: $ff
	rlca                                             ; $4ecd: $07
	ret  nz                                          ; $4ece: $c0

	nop                                              ; $4ecf: $00
	ld   sp, hl                                      ; $4ed0: $f9
	rst  $38                                         ; $4ed1: $ff
	db   $f4                                         ; $4ed2: $f4
	rst  $38                                         ; $4ed3: $ff
	dec  c                                           ; $4ed4: $0d
	nop                                              ; $4ed5: $00
	add  d                                           ; $4ed6: $82
	rst  $38                                         ; $4ed7: $ff
	add  b                                           ; $4ed8: $80
	db   $fd                                         ; $4ed9: $fd
	add  b                                           ; $4eda: $80
	cp   $80                                         ; $4edb: $fe $80
	nop                                              ; $4edd: $00
	dec  b                                           ; $4ede: $05
	ld   a, a                                        ; $4edf: $7f
	rst  $38                                         ; $4ee0: $ff
	ld   a, [hl]                                     ; $4ee1: $7e
	rst  $38                                         ; $4ee2: $ff
	ld   bc, $8000                                   ; $4ee3: $01 $00 $80
	cp   $80                                         ; $4ee6: $fe $80
	db   $fd                                         ; $4ee8: $fd
	nop                                              ; $4ee9: $00
	ld   [$2984], sp                                 ; $4eea: $08 $84 $29
	add  d                                           ; $4eed: $82
	jp   hl                                          ; $4eee: $e9


	add  e                                           ; $4eef: $83

jr_07a_4ef0:
	add  hl, hl                                      ; $4ef0: $29
	inc  b                                           ; $4ef1: $04
	ld   hl, $f6f7                                   ; $4ef2: $21 $f7 $f6
	ei                                               ; $4ef5: $fb
	ld   a, [$fd80]                                  ; $4ef6: $fa $80 $fd
	add  hl, de                                      ; $4ef9: $19
	cp   $f4                                         ; $4efa: $fe $f4
	rst  $38                                         ; $4efc: $ff
	ldh  [rIE], a                                    ; $4efd: $e0 $ff
	ld   b, b                                        ; $4eff: $40
	rst  $38                                         ; $4f00: $ff
	nop                                              ; $4f01: $00
	rst  $38                                         ; $4f02: $ff
	add  c                                           ; $4f03: $81
	ei                                               ; $4f04: $fb
	add  [hl]                                        ; $4f05: $86
	cp   $03                                         ; $4f06: $fe $03
	rst  $38                                         ; $4f08: $ff
	ld   bc, $80ff                                   ; $4f09: $01 $ff $80
	ld   a, a                                        ; $4f0c: $7f
	ld   b, b                                        ; $4f0d: $40
	cp   a                                           ; $4f0e: $bf
	jr   nz, jr_07a_4ef0                             ; $4f0f: $20 $df

	db   $10                                         ; $4f11: $10
	rst  $28                                         ; $4f12: $ef
	ld   d, l                                        ; $4f13: $55
	add  c                                           ; $4f14: $81
	rst  $38                                         ; $4f15: $ff
	add  b                                           ; $4f16: $80
	ld   a, a                                        ; $4f17: $7f
	add  b                                           ; $4f18: $80
	cp   a                                           ; $4f19: $bf
	add  b                                           ; $4f1a: $80
	rst  JumpTable                                         ; $4f1b: $df
	add  b                                           ; $4f1c: $80
	rst  $30                                         ; $4f1d: $f7
	inc  d                                           ; $4f1e: $14
	ld   a, [$56fb]                                  ; $4f1f: $fa $fb $56
	rst  $38                                         ; $4f22: $ff
	adc  b                                           ; $4f23: $88
	ld   a, a                                        ; $4f24: $7f
	cpl                                              ; $4f25: $2f
	rst  $38                                         ; $4f26: $ff
	daa                                              ; $4f27: $27
	rst  $38                                         ; $4f28: $ff
	ld   de, $18ff                                   ; $4f29: $11 $ff $18
	rst  $38                                         ; $4f2c: $ff
	ld   e, $ff                                      ; $4f2d: $1e $ff
	rra                                              ; $4f2f: $1f
	rst  $38                                         ; $4f30: $ff
	rra                                              ; $4f31: $1f
	rst  $38                                         ; $4f32: $ff
	ld   b, b                                        ; $4f33: $40
	add  b                                           ; $4f34: $80
	ld   [$0080], sp                                 ; $4f35: $08 $80 $00
	add  b                                           ; $4f38: $80
	ld   [$0085], sp                                 ; $4f39: $08 $85 $00
	add  b                                           ; $4f3c: $80
	rrca                                             ; $4f3d: $0f
	adc  h                                           ; $4f3e: $8c
	nop                                              ; $4f3f: $00
	add  b                                           ; $4f40: $80
	rst  $38                                         ; $4f41: $ff
	inc  b                                           ; $4f42: $04
	di                                               ; $4f43: $f3
	rst  $38                                         ; $4f44: $ff
	ldh  a, [rIE]                                    ; $4f45: $f0 $ff
	db   $fc                                         ; $4f47: $fc
	add  c                                           ; $4f48: $81
	rst  $38                                         ; $4f49: $ff
	ld   a, [hl-]                                    ; $4f4a: $3a
	ld   a, a                                        ; $4f4b: $7f
	rst  $38                                         ; $4f4c: $ff
	rra                                              ; $4f4d: $1f
	rst  $38                                         ; $4f4e: $ff
	add  a                                           ; $4f4f: $87
	rst  $38                                         ; $4f50: $ff
	pop  hl                                          ; $4f51: $e1
	rst  $38                                         ; $4f52: $ff
	add  [hl]                                        ; $4f53: $86
	rst  $38                                         ; $4f54: $ff
	ccf                                              ; $4f55: $3f
	rst  $38                                         ; $4f56: $ff
	cp   a                                           ; $4f57: $bf
	rst  $38                                         ; $4f58: $ff
	adc  a                                           ; $4f59: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f5a: $cf
	inc  de                                          ; $4f5b: $13
	di                                               ; $4f5c: $f3
	inc  e                                           ; $4f5d: $1c
	db   $fc                                         ; $4f5e: $fc
	rra                                              ; $4f5f: $1f
	rst  $38                                         ; $4f60: $ff
	rrca                                             ; $4f61: $0f
	rst  $38                                         ; $4f62: $ff
	adc  l                                           ; $4f63: $8d
	rst  $38                                         ; $4f64: $ff
	and  [hl]                                        ; $4f65: $a6
	db   $fc                                         ; $4f66: $fc
	cp   l                                           ; $4f67: $bd
	rst  $38                                         ; $4f68: $ff
	cp   b                                           ; $4f69: $b8
	rst  $38                                         ; $4f6a: $ff
	cp   b                                           ; $4f6b: $b8
	rst  $38                                         ; $4f6c: $ff
	cp   b                                           ; $4f6d: $b8
	rst  $38                                         ; $4f6e: $ff
	jr   c, jr_07a_4ff0                              ; $4f6f: $38 $7f

	adc  b                                           ; $4f71: $88
	rst  $38                                         ; $4f72: $ff
	or   a                                           ; $4f73: $b7
	rst  $38                                         ; $4f74: $ff
	pop  af                                          ; $4f75: $f1
	rst  $38                                         ; $4f76: $ff
	ld   de, $e11f                                   ; $4f77: $11 $1f $e1
	rst  $20                                         ; $4f7a: $e7

jr_07a_4f7b:
	ld   a, [$f4f9]                                  ; $4f7b: $fa $f9 $f4
	rst  $38                                         ; $4f7e: $ff
	pop  af                                          ; $4f7f: $f1
	rst  $38                                         ; $4f80: $ff
	pop  af                                          ; $4f81: $f1
	rst  $38                                         ; $4f82: $ff
	ld   [hl], h                                     ; $4f83: $74
	ldh  a, [$80]                                    ; $4f84: $f0 $80
	add  l                                           ; $4f86: $85
	ldh  a, [rTMA]                                   ; $4f87: $f0 $06
	jr   nc, jr_07a_4f7b                             ; $4f89: $30 $f0

	nop                                              ; $4f8b: $00
	ldh  a, [$c0]                                    ; $4f8c: $f0 $c0
	ldh  a, [$36]                                    ; $4f8e: $f0 $36
	adc  e                                           ; $4f90: $8b
	dec  l                                           ; $4f91: $2d
	inc  bc                                          ; $4f92: $03
	xor  l                                           ; $4f93: $ad
	db   $ed                                         ; $4f94: $ed
	db   $ec                                         ; $4f95: $ec
	ld   l, b                                        ; $4f96: $68
	adc  h                                           ; $4f97: $8c
	ld   l, h                                        ; $4f98: $6c
	ld   bc, $0020                                   ; $4f99: $01 $20 $00
	adc  d                                           ; $4f9c: $8a
	rst  $38                                         ; $4f9d: $ff
	inc  bc                                          ; $4f9e: $03
	cp   $ff                                         ; $4f9f: $fe $ff
	ld   [bc], a                                     ; $4fa1: $02
	inc  bc                                          ; $4fa2: $03
	add  b                                           ; $4fa3: $80
	ei                                               ; $4fa4: $fb
	inc  c                                           ; $4fa5: $0c
	di                                               ; $4fa6: $f3
	ei                                               ; $4fa7: $fb
	db   $eb                                         ; $4fa8: $eb
	ei                                               ; $4fa9: $fb
	db   $d3                                         ; $4faa: $d3
	ei                                               ; $4fab: $fb
	and  e                                           ; $4fac: $a3
	ei                                               ; $4fad: $fb
	ld   b, e                                        ; $4fae: $43
	ei                                               ; $4faf: $fb
	adc  e                                           ; $4fb0: $8b
	ei                                               ; $4fb1: $fb
	xor  b                                           ; $4fb2: $a8
	adc  l                                           ; $4fb3: $8d
	add  hl, hl                                      ; $4fb4: $29
	nop                                              ; $4fb5: $00
	cp   [hl]                                        ; $4fb6: $be
	adc  e                                           ; $4fb7: $8b
	and  b                                           ; $4fb8: $a0
	ld   [bc], a                                     ; $4fb9: $02
	xor  a                                           ; $4fba: $af
	cp   a                                           ; $4fbb: $bf
	sub  $8d                                         ; $4fbc: $d6 $8d
	rrca                                             ; $4fbe: $0f
	inc  d                                           ; $4fbf: $14
	ld   h, h                                        ; $4fc0: $64
	rst  $38                                         ; $4fc1: $ff
	cp   $ff                                         ; $4fc2: $fe $ff
	ld   a, [$f0ff]                                  ; $4fc4: $fa $ff $f0
	db   $fd                                         ; $4fc7: $fd
	pop  af                                          ; $4fc8: $f1
	db   $fd                                         ; $4fc9: $fd
	pop  bc                                          ; $4fca: $c1
	db   $ed                                         ; $4fcb: $ed
	pop  bc                                          ; $4fcc: $c1
	db   $ed                                         ; $4fcd: $ed
	push bc                                          ; $4fce: $c5
	db   $ed                                         ; $4fcf: $ed
	or   $b6                                         ; $4fd0: $f6 $b6
	ld   [hl], $b6                                   ; $4fd2: $36 $b6
	ld   [hl], $89                                   ; $4fd4: $36 $89
	or   [hl]                                        ; $4fd6: $b6
	nop                                              ; $4fd7: $00
	ldh  a, [$80]                                    ; $4fd8: $f0 $80
	nop                                              ; $4fda: $00
	add  b                                           ; $4fdb: $80
	rrca                                             ; $4fdc: $0f
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	add  b                                           ; $4fdf: $80
	ld   b, $00                                      ; $4fe0: $06 $00
	add  hl, bc                                      ; $4fe2: $09
	add  l                                           ; $4fe3: $85
	rrca                                             ; $4fe4: $0f
	nop                                              ; $4fe5: $00
	or   $80                                         ; $4fe6: $f6 $80
	nop                                              ; $4fe8: $00
	add  b                                           ; $4fe9: $80
	rst  $38                                         ; $4fea: $ff
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	add  b                                           ; $4fed: $80
	db   $db                                         ; $4fee: $db
	nop                                              ; $4fef: $00

jr_07a_4ff0:
	inc  h                                           ; $4ff0: $24
	add  l                                           ; $4ff1: $85
	rst  $38                                         ; $4ff2: $ff
	nop                                              ; $4ff3: $00
	db   $db                                         ; $4ff4: $db
	add  b                                           ; $4ff5: $80
	nop                                              ; $4ff6: $00
	add  b                                           ; $4ff7: $80
	rst  $38                                         ; $4ff8: $ff
	nop                                              ; $4ff9: $00
	nop                                              ; $4ffa: $00
	add  b                                           ; $4ffb: $80
	ld   l, l                                        ; $4ffc: $6d
	nop                                              ; $4ffd: $00
	sub  d                                           ; $4ffe: $92
	add  l                                           ; $4fff: $85
	rst  $38                                         ; $5000: $ff
	nop                                              ; $5001: $00
	ld   l, l                                        ; $5002: $6d
	add  b                                           ; $5003: $80
	nop                                              ; $5004: $00
	add  b                                           ; $5005: $80
	rst  $38                                         ; $5006: $ff
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	add  b                                           ; $5009: $80
	or   [hl]                                        ; $500a: $b6
	nop                                              ; $500b: $00
	ld   c, c                                        ; $500c: $49
	add  c                                           ; $500d: $81
	rst  $38                                         ; $500e: $ff
	add  b                                           ; $500f: $80
	cp   $02                                         ; $5010: $fe $02
	ld   a, [$b2fe]                                  ; $5012: $fa $fe $b2
	add  b                                           ; $5015: $80
	nop                                              ; $5016: $00
	add  b                                           ; $5017: $80
	rst  $38                                         ; $5018: $ff
	nop                                              ; $5019: $00
	nop                                              ; $501a: $00
	add  b                                           ; $501b: $80
	ret  nc                                          ; $501c: $d0

	rlca                                             ; $501d: $07
	dec  sp                                          ; $501e: $3b
	ei                                               ; $501f: $fb
	dec  de                                          ; $5020: $1b
	db   $db                                         ; $5021: $db
	ld   e, e                                        ; $5022: $5b
	db   $db                                         ; $5023: $db
	ld   e, e                                        ; $5024: $5b
	db   $db                                         ; $5025: $db
	add  c                                           ; $5026: $81
	nop                                              ; $5027: $00
	add  b                                           ; $5028: $80
	rst  $38                                         ; $5029: $ff
	add  c                                           ; $502a: $81
	nop                                              ; $502b: $00
	add  [hl]                                        ; $502c: $86
	ld   l, l                                        ; $502d: $6d
	add  c                                           ; $502e: $81
	nop                                              ; $502f: $00
	add  b                                           ; $5030: $80
	rst  $38                                         ; $5031: $ff
	add  c                                           ; $5032: $81
	nop                                              ; $5033: $00
	add  [hl]                                        ; $5034: $86
	or   [hl]                                        ; $5035: $b6
	rlca                                             ; $5036: $07
	ld   [$6c2c], sp                                 ; $5037: $08 $2c $6c
	db   $ed                                         ; $503a: $ed
	xor  l                                           ; $503b: $ad
	dec  l                                           ; $503c: $2d
	inc  l                                           ; $503d: $2c
	dec  l                                           ; $503e: $2d
	add  e                                           ; $503f: $83
	db   $ec                                         ; $5040: $ec
	add  c                                           ; $5041: $81
	db   $ed                                         ; $5042: $ed
	inc  bc                                          ; $5043: $03
	ld   l, c                                        ; $5044: $69
	ld   c, h                                        ; $5045: $4c
	ld   c, e                                        ; $5046: $4b
	res  0, b                                        ; $5047: $cb $80
	rst  ToBoot                                         ; $5049: $c7
	dec  bc                                          ; $504a: $0b
	ld   b, b                                        ; $504b: $40
	ret  nz                                          ; $504c: $c0

	dec  b                                           ; $504d: $05
	rrca                                             ; $504e: $0f
	ld   bc, $230f                                   ; $504f: $01 $0f $23
	rst  $28                                         ; $5052: $ef
	add  sp, -$20                                    ; $5053: $e8 $e0
	ret  nz                                          ; $5055: $c0

	nop                                              ; $5056: $00
	add  d                                           ; $5057: $82
	rst  $38                                         ; $5058: $ff
	add  b                                           ; $5059: $80
	nop                                              ; $505a: $00
	rlca                                             ; $505b: $07
	ret  nc                                          ; $505c: $d0

	rst  $38                                         ; $505d: $ff
	adc  a                                           ; $505e: $8f
	rst  $38                                         ; $505f: $ff
	rra                                              ; $5060: $1f
	rst  $38                                         ; $5061: $ff
	cp   a                                           ; $5062: $bf
	nop                                              ; $5063: $00
	add  b                                           ; $5064: $80
	ld   bc, wBGP                                   ; $5065: $01 $04 $c2
	cp   $39                                         ; $5068: $fe $39
	rst  $38                                         ; $506a: $ff
	ld   a, [$0080]                                  ; $506b: $fa $80 $00
	add  h                                           ; $506e: $84
	rst  $38                                         ; $506f: $ff
	ld   bc, $0800                                   ; $5070: $01 $00 $08
	add  [hl]                                        ; $5073: $86
	add  hl, hl                                      ; $5074: $29
	add  h                                           ; $5075: $84
	jp   hl                                          ; $5076: $e9


	dec  b                                           ; $5077: $05
	add  hl, hl                                      ; $5078: $29
	and  c                                           ; $5079: $a1
	and  b                                           ; $507a: $a0
	or   b                                           ; $507b: $b0
	cp   a                                           ; $507c: $bf
	xor  a                                           ; $507d: $af
	add  c                                           ; $507e: $81
	and  b                                           ; $507f: $a0
	add  [hl]                                        ; $5080: $86
	cp   e                                           ; $5081: $bb
	add  a                                           ; $5082: $87
	ld   l, h                                        ; $5083: $6c
	ld   bc, $636f                                   ; $5084: $01 $6f $63
	add  b                                           ; $5087: $80
	ld   h, a                                        ; $5088: $67
	db   $10                                         ; $5089: $10
	ld   h, b                                        ; $508a: $60
	ld   [hl], l                                     ; $508b: $75
	ld   a, a                                        ; $508c: $7f
	jr   z, @+$01                                    ; $508d: $28 $ff

	ld   hl, sp-$01                                  ; $508f: $f8 $ff
	ld   sp, hl                                      ; $5091: $f9
	rst  $38                                         ; $5092: $ff
	db   $fc                                         ; $5093: $fc
	nop                                              ; $5094: $00
	rrca                                             ; $5095: $0f
	rst  $38                                         ; $5096: $ff
	rst  $28                                         ; $5097: $ef
	rst  $38                                         ; $5098: $ff
	ldh  [rP1], a                                    ; $5099: $e0 $00
	add  b                                           ; $509b: $80
	rst  $38                                         ; $509c: $ff
	add  h                                           ; $509d: $84
	ei                                               ; $509e: $fb
	add  b                                           ; $509f: $80
	inc  bc                                          ; $50a0: $03
	add  b                                           ; $50a1: $80
	db   $fd                                         ; $50a2: $fd
	add  b                                           ; $50a3: $80
	cp   $80                                         ; $50a4: $fe $80
	nop                                              ; $50a6: $00
	add  b                                           ; $50a7: $80
	rst  $38                                         ; $50a8: $ff
	nop                                              ; $50a9: $00
	ld   sp, hl                                      ; $50aa: $f9
	adc  l                                           ; $50ab: $8d
	rrca                                             ; $50ac: $0f
	nop                                              ; $50ad: $00
	jp   nc, $ff8d                                   ; $50ae: $d2 $8d $ff

	nop                                              ; $50b1: $00
	ld   c, c                                        ; $50b2: $49
	adc  e                                           ; $50b3: $8b
	rst  $38                                         ; $50b4: $ff
	ld   [de], a                                     ; $50b5: $12
	cp   $ff                                         ; $50b6: $fe $ff
	ld   h, $fe                                      ; $50b8: $26 $fe
	ld   hl, sp-$02                                  ; $50ba: $f8 $fe
	ldh  [$f6], a                                    ; $50bc: $e0 $f6
	jp   nz, $c6f6                                   ; $50be: $c2 $f6 $c6

	or   $c6                                         ; $50c1: $f6 $c6
	or   $06                                         ; $50c3: $f6 $06
	or   [hl]                                        ; $50c5: $b6
	ld   d, $b6                                      ; $50c6: $16 $b6
	ld   e, e                                        ; $50c8: $5b
	adc  l                                           ; $50c9: $8d
	db   $db                                         ; $50ca: $db
	adc  [hl]                                        ; $50cb: $8e
	ld   l, l                                        ; $50cc: $6d
	adc  [hl]                                        ; $50cd: $8e
	or   [hl]                                        ; $50ce: $b6
	nop                                              ; $50cf: $00
	ret  z                                           ; $50d0: $c8

	adc  l                                           ; $50d1: $8d
	db   $ec                                         ; $50d2: $ec
	inc  b                                           ; $50d3: $04
	ld   h, e                                        ; $50d4: $63
	rst  ToBoot                                         ; $50d5: $c7
	adc  e                                           ; $50d6: $8b
	dec  bc                                          ; $50d7: $0b
	ld   c, h                                        ; $50d8: $4c
	adc  c                                           ; $50d9: $89
	ld   l, h                                        ; $50da: $6c
	nop                                              ; $50db: $00
	rst  JumpTable                                         ; $50dc: $df
	add  c                                           ; $50dd: $81
	rst  $38                                         ; $50de: $ff
	add  b                                           ; $50df: $80
	nop                                              ; $50e0: $00
	dec  bc                                          ; $50e1: $0b
	ldh  [rIE], a                                    ; $50e2: $e0 $ff
	rst  JumpTable                                         ; $50e4: $df
	rst  $38                                         ; $50e5: $ff
	cp   a                                           ; $50e6: $bf
	rst  $38                                         ; $50e7: $ff
	ld   a, a                                        ; $50e8: $7f
	rst  $38                                         ; $50e9: $ff
	cp   $ff                                         ; $50ea: $fe $ff
	nop                                              ; $50ec: $00
	cp   $80                                         ; $50ed: $fe $80
	db   $fd                                         ; $50ef: $fd
	add  b                                           ; $50f0: $80
	inc  bc                                          ; $50f1: $03
	ld   a, [bc]                                     ; $50f2: $0a
	dec  de                                          ; $50f3: $1b
	ei                                               ; $50f4: $fb
	db   $db                                         ; $50f5: $db
	ei                                               ; $50f6: $fb
	cp   e                                           ; $50f7: $bb
	ei                                               ; $50f8: $fb
	ld   a, e                                        ; $50f9: $7b
	ei                                               ; $50fa: $fb
	ld   a, e                                        ; $50fb: $7b
	ei                                               ; $50fc: $fb
	adc  b                                           ; $50fd: $88
	add  e                                           ; $50fe: $83
	add  hl, hl                                      ; $50ff: $29
	nop                                              ; $5100: $00
	add  hl, bc                                      ; $5101: $09
	add  a                                           ; $5102: $87
	add  hl, hl                                      ; $5103: $29
	nop                                              ; $5104: $00
	sbc  d                                           ; $5105: $9a
	adc  l                                           ; $5106: $8d
	cp   e                                           ; $5107: $bb
	nop                                              ; $5108: $00
	ld   [$2983], sp                                 ; $5109: $08 $83 $29
	add  [hl]                                        ; $510c: $86
	ld   hl, $e180                                   ; $510d: $21 $80 $e1
	nop                                              ; $5110: $00
	ld   bc, $ff80                                   ; $5111: $01 $80 $ff
	add  h                                           ; $5114: $84
	nop                                              ; $5115: $00
	add  b                                           ; $5116: $80
	rst  $38                                         ; $5117: $ff
	dec  b                                           ; $5118: $05
	nop                                              ; $5119: $00
	rst  $30                                         ; $511a: $f7
	rst  $38                                         ; $511b: $ff
	ld   a, [$0dff]                                  ; $511c: $fa $ff $0d
	add  b                                           ; $511f: $80
	rst  $38                                         ; $5120: $ff
	add  h                                           ; $5121: $84
	nop                                              ; $5122: $00
	add  b                                           ; $5123: $80
	rst  $38                                         ; $5124: $ff
	ld   [$7f00], sp                                 ; $5125: $08 $00 $7f
	rst  $38                                         ; $5128: $ff
	cp   $ff                                         ; $5129: $fe $ff
	sbc  e                                           ; $512b: $9b
	dec  d                                           ; $512c: $15
	dec  [hl]                                        ; $512d: $35
	push hl                                          ; $512e: $e5
	add  c                                           ; $512f: $81
	ldh  [$0b], a                                    ; $5130: $e0 $0b
	ldh  a, [$d0]                                    ; $5132: $f0 $d0
	ldh  a, [$e0]                                    ; $5134: $f0 $e0
	add  sp, -$20                                    ; $5136: $e8 $e0
	push hl                                          ; $5138: $e5
	ldh  [c], a                                      ; $5139: $e2
	nop                                              ; $513a: $00
	ret  nz                                          ; $513b: $c0

	ld   b, e                                        ; $513c: $43
	ld   h, e                                        ; $513d: $63
	add  d                                           ; $513e: $82
	dec  sp                                          ; $513f: $3b
	inc  b                                           ; $5140: $04
	ld   a, e                                        ; $5141: $7b
	ld   e, e                                        ; $5142: $5b
	ld   a, e                                        ; $5143: $7b
	dec  sp                                          ; $5144: $3b
	cp   e                                           ; $5145: $bb
	add  c                                           ; $5146: $81
	dec  sp                                          ; $5147: $3b
	ld   bc, $1c03                                   ; $5148: $01 $03 $1c
	add  c                                           ; $514b: $81
	rst  JumpTable                                         ; $514c: $df
	rlca                                             ; $514d: $07
	ret  nz                                          ; $514e: $c0

	nop                                              ; $514f: $00

jr_07a_5150:
	ld   sp, hl                                      ; $5150: $f9
	rst  $38                                         ; $5151: $ff
	db   $f4                                         ; $5152: $f4
	rst  $38                                         ; $5153: $ff
	dec  c                                           ; $5154: $0d
	nop                                              ; $5155: $00
	add  d                                           ; $5156: $82
	rst  $38                                         ; $5157: $ff
	add  b                                           ; $5158: $80
	call $ce80                                       ; $5159: $cd $80 $ce
	add  b                                           ; $515c: $80
	nop                                              ; $515d: $00
	dec  b                                           ; $515e: $05
	ld   a, a                                        ; $515f: $7f
	rst  $38                                         ; $5160: $ff
	ld   a, [hl]                                     ; $5161: $7e
	rst  $38                                         ; $5162: $ff
	ld   bc, $8000                                   ; $5163: $01 $00 $80
	cp   $80                                         ; $5166: $fe $80
	db   $fd                                         ; $5168: $fd
	add  hl, bc                                      ; $5169: $09
	ld   bc, $c002                                   ; $516a: $01 $02 $c0
	db   $fc                                         ; $516d: $fc
	dec  sp                                          ; $516e: $3b
	ei                                               ; $516f: $fb
	ld   hl, sp+$02                                  ; $5170: $f8 $02
	nop                                              ; $5172: $00
	ei                                               ; $5173: $fb
	add  b                                           ; $5174: $80
	db   $fd                                         ; $5175: $fd
	dec  b                                           ; $5176: $05
	cp   $ff                                         ; $5177: $fe $ff
	cp   $00                                         ; $5179: $fe $00
	adc  c                                           ; $517b: $89

jr_07a_517c:
	ld   l, c                                        ; $517c: $69
	add  b                                           ; $517d: $80
	add  hl, hl                                      ; $517e: $29
	add  b                                           ; $517f: $80
	ld   c, c                                        ; $5180: $49
	dec  b                                           ; $5181: $05
	add  hl, bc                                      ; $5182: $09
	ld   c, c                                        ; $5183: $49
	add  hl, bc                                      ; $5184: $09
	ret                                              ; $5185: $c9


	xor  c                                           ; $5186: $a9
	add  hl, hl                                      ; $5187: $29
	add  b                                           ; $5188: $80
	jp   hl                                          ; $5189: $e9


	dec  b                                           ; $518a: $05
	xor  c                                           ; $518b: $a9
	add  hl, hl                                      ; $518c: $29
	sbc  [hl]                                        ; $518d: $9e
	cp   $fc                                         ; $518e: $fe $fc
	db   $fd                                         ; $5190: $fd
	add  b                                           ; $5191: $80
	inc  bc                                          ; $5192: $03
	inc  c                                           ; $5193: $0c
	dec  de                                          ; $5194: $1b
	ei                                               ; $5195: $fb
	db   $db                                         ; $5196: $db
	ei                                               ; $5197: $fb
	cp   e                                           ; $5198: $bb
	ei                                               ; $5199: $fb
	ld   a, e                                        ; $519a: $7b
	ei                                               ; $519b: $fb
	ld   a, e                                        ; $519c: $7b
	ei                                               ; $519d: $fb
	ret  z                                           ; $519e: $c8

	add  hl, hl                                      ; $519f: $29
	ld   l, c                                        ; $51a0: $69
	add  c                                           ; $51a1: $81
	add  hl, hl                                      ; $51a2: $29
	nop                                              ; $51a3: $00
	add  hl, bc                                      ; $51a4: $09
	add  a                                           ; $51a5: $87
	add  hl, hl                                      ; $51a6: $29
	inc  b                                           ; $51a7: $04
	ld   [$6d2d], sp                                 ; $51a8: $08 $2d $6d
	db   $ed                                         ; $51ab: $ed
	xor  l                                           ; $51ac: $ad
	add  c                                           ; $51ad: $81
	dec  l                                           ; $51ae: $2d
	add  d                                           ; $51af: $82
	db   $ed                                         ; $51b0: $ed
	add  b                                           ; $51b1: $80
	db   $ec                                         ; $51b2: $ec
	add  b                                           ; $51b3: $80
	db   $ed                                         ; $51b4: $ed
	ld   bc, $6c68                                   ; $51b5: $01 $68 $6c
	add  b                                           ; $51b8: $80
	ld   l, e                                        ; $51b9: $6b
	add  b                                           ; $51ba: $80
	ld   h, a                                        ; $51bb: $67
	add  b                                           ; $51bc: $80
	ld   h, b                                        ; $51bd: $60
	rlca                                             ; $51be: $07
	ld   h, l                                        ; $51bf: $65
	ld   l, a                                        ; $51c0: $6f
	ld   h, c                                        ; $51c1: $61
	ld   l, a                                        ; $51c2: $6f
	ld   h, e                                        ; $51c3: $63
	ld   l, a                                        ; $51c4: $6f
	ld   l, b                                        ; $51c5: $68
	ld   h, b                                        ; $51c6: $60
	add  b                                           ; $51c7: $80
	ld   h, a                                        ; $51c8: $67
	add  b                                           ; $51c9: $80
	ld   l, e                                        ; $51ca: $6b
	adc  d                                           ; $51cb: $8a
	ld   l, h                                        ; $51cc: $6c
	nop                                              ; $51cd: $00
	jr   nz, jr_07a_5150                             ; $51ce: $20 $80

	rst  $38                                         ; $51d0: $ff
	add  h                                           ; $51d1: $84
	nop                                              ; $51d2: $00
	add  b                                           ; $51d3: $80
	rst  $38                                         ; $51d4: $ff
	nop                                              ; $51d5: $00
	nop                                              ; $51d6: $00
	add  c                                           ; $51d7: $81
	rst  $38                                         ; $51d8: $ff
	ld   bc, $0ff0                                   ; $51d9: $01 $f0 $0f
	add  b                                           ; $51dc: $80
	rst  $38                                         ; $51dd: $ff
	add  h                                           ; $51de: $84
	nop                                              ; $51df: $00
	add  b                                           ; $51e0: $80
	rst  $38                                         ; $51e1: $ff
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	add  b                                           ; $51e4: $80
	rst  $38                                         ; $51e5: $ff
	dec  b                                           ; $51e6: $05
	cp   $ff                                         ; $51e7: $fe $ff
	ld   [$0206], sp                                 ; $51e9: $08 $06 $02
	ldh  a, [c]                                      ; $51ec: $f2
	add  b                                           ; $51ed: $80
	ldh  a, [$80]                                    ; $51ee: $f0 $80

jr_07a_51f0:
	or   $80                                         ; $51f0: $f6 $80
	ldh  a, [c]                                      ; $51f2: $f2
	add  b                                           ; $51f3: $80
	ldh  a, [$80]                                    ; $51f4: $f0 $80
	or   $02                                         ; $51f6: $f6 $02
	db   $f4                                         ; $51f8: $f4
	inc  b                                           ; $51f9: $04
	jr   nc, jr_07a_517c                             ; $51fa: $30 $80

	ldh  a, [$08]                                    ; $51fc: $f0 $08
	rst  $38                                         ; $51fe: $ff
	ret  nz                                          ; $51ff: $c0

	nop                                              ; $5200: $00
	ld   sp, hl                                      ; $5201: $f9
	rst  $38                                         ; $5202: $ff
	db   $f4                                         ; $5203: $f4
	rst  $38                                         ; $5204: $ff
	dec  c                                           ; $5205: $0d
	nop                                              ; $5206: $00
	add  d                                           ; $5207: $82
	rst  $38                                         ; $5208: $ff
	ld   [$0100], sp                                 ; $5209: $08 $00 $01
	add  hl, hl                                      ; $520c: $29
	add  hl, sp                                      ; $520d: $39
	add  hl, de                                      ; $520e: $19
	add  hl, sp                                      ; $520f: $39
	add  hl, bc                                      ; $5210: $09
	add  hl, sp                                      ; $5211: $39
	ld   bc, $8180                                   ; $5212: $01 $80 $81
	ld   bc, $c9c1                                   ; $5215: $01 $c1 $c9
	add  b                                           ; $5218: $80
	jp   hl                                          ; $5219: $e9


jr_07a_521a:
	nop                                              ; $521a: $00
	add  hl, hl                                      ; $521b: $29
	ldh  [rSB], a                                    ; $521c: $e0 $01
	add  a                                           ; $521e: $87
	nop                                              ; $521f: $00
	add  [hl]                                        ; $5220: $86
	rrca                                             ; $5221: $0f
	add  [hl]                                        ; $5222: $86
	nop                                              ; $5223: $00
	add  [hl]                                        ; $5224: $86
	rst  $38                                         ; $5225: $ff
	add  [hl]                                        ; $5226: $86
	nop                                              ; $5227: $00
	add  d                                           ; $5228: $82
	rst  $38                                         ; $5229: $ff
	add  b                                           ; $522a: $80
	cp   $80                                         ; $522b: $fe $80
	db   $fd                                         ; $522d: $fd
	add  [hl]                                        ; $522e: $86
	nop                                              ; $522f: $00
	add  b                                           ; $5230: $80
	xor  d                                           ; $5231: $aa
	add  b                                           ; $5232: $80
	ld   d, h                                        ; $5233: $54
	add  b                                           ; $5234: $80
	jr   z, @-$7e                                    ; $5235: $28 $80

	ld   b, b                                        ; $5237: $40
	adc  l                                           ; $5238: $8d
	nop                                              ; $5239: $00
	ld   bc, $000f                                   ; $523a: $01 $0f $00
	add  b                                           ; $523d: $80
	rrca                                             ; $523e: $0f
	ld   [bc], a                                     ; $523f: $02
	nop                                              ; $5240: $00
	rrca                                             ; $5241: $0f
	nop                                              ; $5242: $00
	add  c                                           ; $5243: $81
	rrca                                             ; $5244: $0f
	add  b                                           ; $5245: $80
	nop                                              ; $5246: $00
	dec  b                                           ; $5247: $05
	dec  b                                           ; $5248: $05
	rrca                                             ; $5249: $0f
	dec  b                                           ; $524a: $05
	rrca                                             ; $524b: $0f
	ldh  a, [rP1]                                    ; $524c: $f0 $00
	add  b                                           ; $524e: $80
	db   $fc                                         ; $524f: $fc
	inc  bc                                          ; $5250: $03
	ld   bc, $01ff                                   ; $5251: $01 $ff $01
	rst  $38                                         ; $5254: $ff
	add  b                                           ; $5255: $80
	cp   $80                                         ; $5256: $fe $80
	nop                                              ; $5258: $00
	inc  b                                           ; $5259: $04
	ld   d, l                                        ; $525a: $55
	rst  $38                                         ; $525b: $ff
	ld   e, d                                        ; $525c: $5a
	pop  af                                          ; $525d: $f1
	cp   $87                                         ; $525e: $fe $87
	nop                                              ; $5260: $00
	add  c                                           ; $5261: $81
	ccf                                              ; $5262: $3f
	inc  bc                                          ; $5263: $03
	jr   nz, jr_07a_528e                             ; $5264: $20 $28

	cpl                                              ; $5266: $2f
	jr   jr_07a_51f0                                 ; $5267: $18 $87

	nop                                              ; $5269: $00
	add  c                                           ; $526a: $81
	rst  $38                                         ; $526b: $ff
	add  b                                           ; $526c: $80
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	rst  $38                                         ; $526f: $ff
	adc  b                                           ; $5270: $88
	nop                                              ; $5271: $00
	ld   b, $fe                                      ; $5272: $06 $fe
	rst  $38                                         ; $5274: $ff
	cp   $03                                         ; $5275: $fe $03
	ld   a, a                                        ; $5277: $7f
	db   $fc                                         ; $5278: $fc
	ld   a, a                                        ; $5279: $7f
	add  l                                           ; $527a: $85
	nop                                              ; $527b: $00
	inc  b                                           ; $527c: $04
	rrca                                             ; $527d: $0f
	inc  c                                           ; $527e: $0c
	ld   a, h                                        ; $527f: $7c
	ldh  a, [rSVBK]                                  ; $5280: $f0 $70
	add  b                                           ; $5282: $80
	adc  h                                           ; $5283: $8c
	ld   bc, $837c                                   ; $5284: $01 $7c $83
	add  l                                           ; $5287: $85
	nop                                              ; $5288: $00
	ld   bc, $0080                                   ; $5289: $01 $80 $00
	add  c                                           ; $528c: $81
	ld   a, a                                        ; $528d: $7f

jr_07a_528e:
	add  b                                           ; $528e: $80
	nop                                              ; $528f: $00
	ld   bc, $807f                                   ; $5290: $01 $7f $80
	add  a                                           ; $5293: $87
	nop                                              ; $5294: $00
	add  c                                           ; $5295: $81
	ldh  [rP1], a                                    ; $5296: $e0 $00
	jr   nz, jr_07a_521a                             ; $5298: $20 $80

	and  b                                           ; $529a: $a0
	nop                                              ; $529b: $00
	ccf                                              ; $529c: $3f
	add  c                                           ; $529d: $81
	nop                                              ; $529e: $00
	inc  bc                                          ; $529f: $03
	ld   d, a                                        ; $52a0: $57
	rst  $38                                         ; $52a1: $ff
	ld   d, a                                        ; $52a2: $57
	rst  $38                                         ; $52a3: $ff
	add  b                                           ; $52a4: $80
	xor  d                                           ; $52a5: $aa
	add  b                                           ; $52a6: $80
	nop                                              ; $52a7: $00
	inc  b                                           ; $52a8: $04
	add  b                                           ; $52a9: $80
	rst  $38                                         ; $52aa: $ff
	push de                                          ; $52ab: $d5
	rst  $38                                         ; $52ac: $ff
	ld   d, l                                        ; $52ad: $55
	add  c                                           ; $52ae: $81
	nop                                              ; $52af: $00
	add  d                                           ; $52b0: $82
	rst  $38                                         ; $52b1: $ff
	add  b                                           ; $52b2: $80
	xor  d                                           ; $52b3: $aa
	add  b                                           ; $52b4: $80
	nop                                              ; $52b5: $00
	inc  b                                           ; $52b6: $04
	inc  bc                                          ; $52b7: $03
	rst  $38                                         ; $52b8: $ff
	ld   d, b                                        ; $52b9: $50
	rst  $38                                         ; $52ba: $ff
	ld   d, e                                        ; $52bb: $53
	add  c                                           ; $52bc: $81
	nop                                              ; $52bd: $00
	add  d                                           ; $52be: $82
	rst  $38                                         ; $52bf: $ff
	add  b                                           ; $52c0: $80
	xor  d                                           ; $52c1: $aa
	add  b                                           ; $52c2: $80
	nop                                              ; $52c3: $00
	inc  b                                           ; $52c4: $04
	add  b                                           ; $52c5: $80
	rst  $38                                         ; $52c6: $ff
	ld   a, a                                        ; $52c7: $7f
	rst  $38                                         ; $52c8: $ff
	nop                                              ; $52c9: $00
	adc  [hl]                                        ; $52ca: $8e
	rrca                                             ; $52cb: $0f
	add  [hl]                                        ; $52cc: $86
	rst  $38                                         ; $52cd: $ff
	add  b                                           ; $52ce: $80
	cp   $80                                         ; $52cf: $fe $80
	db   $fd                                         ; $52d1: $fd
	add  b                                           ; $52d2: $80
	ld   a, [$f580]                                  ; $52d3: $fa $80 $f5
	add  b                                           ; $52d6: $80
	ld   [$d480], a                                  ; $52d7: $ea $80 $d4
	add  b                                           ; $52da: $80
	xor  b                                           ; $52db: $a8
	add  b                                           ; $52dc: $80
	ld   b, b                                        ; $52dd: $40
	add  b                                           ; $52de: $80
	and  b                                           ; $52df: $a0
	add  b                                           ; $52e0: $80
	ld   b, b                                        ; $52e1: $40
	add  b                                           ; $52e2: $80
	add  b                                           ; $52e3: $80
	ld   bc, $ff00                                   ; $52e4: $01 $00 $ff
	add  c                                           ; $52e7: $81
	nop                                              ; $52e8: $00
	add  d                                           ; $52e9: $82
	rst  $38                                         ; $52ea: $ff
	add  b                                           ; $52eb: $80
	xor  d                                           ; $52ec: $aa
	add  b                                           ; $52ed: $80
	nop                                              ; $52ee: $00
	inc  b                                           ; $52ef: $04
	inc  c                                           ; $52f0: $0c
	rst  $38                                         ; $52f1: $ff
	jp   $cfff                                       ; $52f2: $c3 $ff $cf


	add  c                                           ; $52f5: $81
	nop                                              ; $52f6: $00
	add  d                                           ; $52f7: $82
	rst  $38                                         ; $52f8: $ff
	add  b                                           ; $52f9: $80
	xor  d                                           ; $52fa: $aa
	add  b                                           ; $52fb: $80
	nop                                              ; $52fc: $00
	inc  b                                           ; $52fd: $04
	ld   a, $fe                                      ; $52fe: $3e $fe
	sbc  l                                           ; $5300: $9d
	db   $fd                                         ; $5301: $fd
	xor  b                                           ; $5302: $a8
	add  c                                           ; $5303: $81
	inc  l                                           ; $5304: $2c
	add  d                                           ; $5305: $82
	db   $ec                                         ; $5306: $ec
	add  b                                           ; $5307: $80
	xor  h                                           ; $5308: $ac
	rlca                                             ; $5309: $07
	inc  h                                           ; $530a: $24
	nop                                              ; $530b: $00
	ld   b, b                                        ; $530c: $40
	ld   a, a                                        ; $530d: $7f
	sbc  a                                           ; $530e: $9f
	rst  $38                                         ; $530f: $ff
	ccf                                              ; $5310: $3f
	ld   h, b                                        ; $5311: $60
	add  d                                           ; $5312: $82
	ld   a, a                                        ; $5313: $7f
	add  b                                           ; $5314: $80
	rlca                                             ; $5315: $07
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	add  b                                           ; $5318: $80
	ld   a, b                                        ; $5319: $78
	ld   [bc], a                                     ; $531a: $02
	rrca                                             ; $531b: $0f
	cp   a                                           ; $531c: $bf
	or   b                                           ; $531d: $b0
	add  b                                           ; $531e: $80
	ld   a, [hl]                                     ; $531f: $7e
	nop                                              ; $5320: $00
	ret  z                                           ; $5321: $c8

	add  b                                           ; $5322: $80
	cpl                                              ; $5323: $2f
	adc  e                                           ; $5324: $8b
	inc  l                                           ; $5325: $2c
	inc  bc                                          ; $5326: $03
	rst  $20                                         ; $5327: $e7
	rst  $38                                         ; $5328: $ff
	di                                               ; $5329: $f3
	rrca                                             ; $532a: $0f
	add  b                                           ; $532b: $80
	ld   a, b                                        ; $532c: $78
	add  b                                           ; $532d: $80
	rst  ToBoot                                         ; $532e: $c7
	add  b                                           ; $532f: $80
	ld   a, a                                        ; $5330: $7f
	add  b                                           ; $5331: $80
	ld   a, [hl]                                     ; $5332: $7e
	add  d                                           ; $5333: $82
	ld   h, e                                        ; $5334: $63
	db   $10                                         ; $5335: $10
	ldh  [$e3], a                                    ; $5336: $e0 $e3
	dec  bc                                          ; $5338: $0b
	rra                                              ; $5339: $1f
	rst  ToBoot                                         ; $533a: $c7
	rst  $38                                         ; $533b: $ff
	adc  a                                           ; $533c: $8f
	ld   hl, sp+$18                                  ; $533d: $f8 $18
	rst  ToBoot                                         ; $533f: $c7
	and  a                                           ; $5340: $a7
	ccf                                              ; $5341: $3f
	rst  JumpTable                                         ; $5342: $df
	ld   hl, sp-$48                                  ; $5343: $f8 $b8
	add  [hl]                                        ; $5345: $86
	ld   b, $80                                      ; $5346: $06 $80
	db   $fc                                         ; $5348: $fc
	add  b                                           ; $5349: $80
	db   $ec                                         ; $534a: $ec
	add  b                                           ; $534b: $80
	inc  c                                           ; $534c: $0c
	ld   bc, $eccc                                   ; $534d: $01 $cc $ec
	add  b                                           ; $5350: $80
	xor  h                                           ; $5351: $ac
	nop                                              ; $5352: $00
	inc  l                                           ; $5353: $2c
	add  b                                           ; $5354: $80
	ld   l, h                                        ; $5355: $6c
	add  b                                           ; $5356: $80
	db   $ec                                         ; $5357: $ec
	nop                                              ; $5358: $00
	inc  c                                           ; $5359: $0c
	add  b                                           ; $535a: $80
	ld   a, a                                        ; $535b: $7f
	add  c                                           ; $535c: $81
	ld   bc, $7100                                   ; $535d: $01 $00 $71
	add  a                                           ; $5360: $87
	add  hl, bc                                      ; $5361: $09
	nop                                              ; $5362: $00
	and  $8d                                         ; $5363: $e6 $8d
	and  b                                           ; $5365: $a0
	nop                                              ; $5366: $00
	ccf                                              ; $5367: $3f
	add  b                                           ; $5368: $80
	rst  $38                                         ; $5369: $ff
	ld   [bc], a                                     ; $536a: $02
	inc  bc                                          ; $536b: $03
	rst  $38                                         ; $536c: $ff
	db   $fc                                         ; $536d: $fc
	add  b                                           ; $536e: $80
	rst  $38                                         ; $536f: $ff
	add  b                                           ; $5370: $80
	ld   a, a                                        ; $5371: $7f
	ld   [bc], a                                     ; $5372: $02
	rlca                                             ; $5373: $07
	add  a                                           ; $5374: $87
	add  b                                           ; $5375: $80
	add  b                                           ; $5376: $80
	ld   a, b                                        ; $5377: $78
	inc  bc                                          ; $5378: $03
	rlca                                             ; $5379: $07
	dec  hl                                          ; $537a: $2b
	xor  h                                           ; $537b: $ac
	adc  h                                           ; $537c: $8c
	add  b                                           ; $537d: $80
	call z, $0c00                                    ; $537e: $cc $00 $0c
	add  b                                           ; $5381: $80
	call z, $fc82                                    ; $5382: $cc $82 $fc
	add  b                                           ; $5385: $80
	inc  a                                           ; $5386: $3c
	ld   [bc], a                                     ; $5387: $02
	inc  c                                           ; $5388: $0c
	call z, $85c0                                    ; $5389: $cc $c0 $85
	ld   a, c                                        ; $538c: $79
	ld   [bc], a                                     ; $538d: $02
	ld   bc, $0179                                   ; $538e: $01 $79 $01
	add  b                                           ; $5391: $80
	nop                                              ; $5392: $00
	add  b                                           ; $5393: $80
	ld   e, a                                        ; $5394: $5f
	ld   bc, $906f                                   ; $5395: $01 $6f $90
	adc  [hl]                                        ; $5398: $8e
	rrca                                             ; $5399: $0f
	add  b                                           ; $539a: $80
	ld   a, [$f480]                                  ; $539b: $fa $80 $f4
	add  b                                           ; $539e: $80
	add  sp, -$80                                    ; $539f: $e8 $80
	ret  nc                                          ; $53a1: $d0

	add  b                                           ; $53a2: $80
	and  b                                           ; $53a3: $a0
	add  b                                           ; $53a4: $80
	ld   b, b                                        ; $53a5: $40
	add  b                                           ; $53a6: $80
	add  b                                           ; $53a7: $80
	ld   bc, $3f40                                   ; $53a8: $01 $40 $3f
	add  c                                           ; $53ab: $81
	and  b                                           ; $53ac: $a0
	add  h                                           ; $53ad: $84
	cp   a                                           ; $53ae: $bf
	ld   b, $20                                      ; $53af: $06 $20
	nop                                              ; $53b1: $00
	cpl                                              ; $53b2: $2f
	rst  $28                                         ; $53b3: $ef
	sub  a                                           ; $53b4: $97
	rst  $30                                         ; $53b5: $f7
	and  b                                           ; $53b6: $a0
	add  c                                           ; $53b7: $81
	nop                                              ; $53b8: $00
	add  h                                           ; $53b9: $84
	rst  $38                                         ; $53ba: $ff
	add  b                                           ; $53bb: $80
	nop                                              ; $53bc: $00
	add  b                                           ; $53bd: $80
	di                                               ; $53be: $f3
	add  b                                           ; $53bf: $80
	db   $fc                                         ; $53c0: $fc
	add  d                                           ; $53c1: $82
	nop                                              ; $53c2: $00
	add  h                                           ; $53c3: $84
	rst  $38                                         ; $53c4: $ff
	add  b                                           ; $53c5: $80
	nop                                              ; $53c6: $00
	inc  b                                           ; $53c7: $04
	and  c                                           ; $53c8: $a1
	rst  $38                                         ; $53c9: $ff
	ld   e, $ff                                      ; $53ca: $1e $ff
	cp   a                                           ; $53cc: $bf
	add  c                                           ; $53cd: $81
	nop                                              ; $53ce: $00
	add  h                                           ; $53cf: $84
	rst  $38                                         ; $53d0: $ff
	add  b                                           ; $53d1: $80
	nop                                              ; $53d2: $00
	inc  b                                           ; $53d3: $04
	ret  nz                                          ; $53d4: $c0

	rst  $38                                         ; $53d5: $ff
	rrca                                             ; $53d6: $0f
	rst  $38                                         ; $53d7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53d8: $cf
	add  c                                           ; $53d9: $81
	nop                                              ; $53da: $00
	add  h                                           ; $53db: $84
	rst  $38                                         ; $53dc: $ff
	add  b                                           ; $53dd: $80
	nop                                              ; $53de: $00
	dec  b                                           ; $53df: $05
	ld   a, [hl]                                     ; $53e0: $7e
	cp   $3f                                         ; $53e1: $fe $3f
	rst  $38                                         ; $53e3: $ff
	adc  b                                           ; $53e4: $88
	inc  l                                           ; $53e5: $2c
	add  b                                           ; $53e6: $80
	dec  l                                           ; $53e7: $2d
	add  b                                           ; $53e8: $80
	inc  l                                           ; $53e9: $2c

jr_07a_53ea:
	add  b                                           ; $53ea: $80
	dec  l                                           ; $53eb: $2d
	add  b                                           ; $53ec: $80
	inc  l                                           ; $53ed: $2c
	add  h                                           ; $53ee: $84
	dec  l                                           ; $53ef: $2d
	nop                                              ; $53f0: $00
	adc  b                                           ; $53f1: $88
	add  b                                           ; $53f2: $80
	ld   l, h                                        ; $53f3: $6c
	adc  d                                           ; $53f4: $8a
	ld   l, l                                        ; $53f5: $6d
	inc  b                                           ; $53f6: $04
	ld   l, h                                        ; $53f7: $6c
	inc  e                                           ; $53f8: $1c
	ld   h, [hl]                                     ; $53f9: $66
	sub  $56                                         ; $53fa: $d6 $56
	add  c                                           ; $53fc: $81
	ld   b, $04                                      ; $53fd: $06 $04
	ld   c, $0a                                      ; $53ff: $0e $0a
	adc  d                                           ; $5401: $8a
	ld   a, [bc]                                     ; $5402: $0a
	ld   e, d                                        ; $5403: $5a
	add  b                                           ; $5404: $80
	ld   [de], a                                     ; $5405: $12
	ld   [bc], a                                     ; $5406: $02
	ld   [bc], a                                     ; $5407: $02
	jr   nz, jr_07a_53ea                             ; $5408: $20 $e0

	adc  l                                           ; $540a: $8d
	db   $ec                                         ; $540b: $ec
	nop                                              ; $540c: $00
	ld   a, h                                        ; $540d: $7c
	adc  l                                           ; $540e: $8d
	add  hl, bc                                      ; $540f: $09
	nop                                              ; $5410: $00
	ld   a, c                                        ; $5411: $79
	add  c                                           ; $5412: $81
	nop                                              ; $5413: $00
	ld   [bc], a                                     ; $5414: $02
	xor  d                                           ; $5415: $aa
	rst  $38                                         ; $5416: $ff
	xor  d                                           ; $5417: $aa
	add  c                                           ; $5418: $81
	rst  $38                                         ; $5419: $ff
	add  b                                           ; $541a: $80
	nop                                              ; $541b: $00
	dec  b                                           ; $541c: $05
	ld   b, l                                        ; $541d: $45
	ld   a, a                                        ; $541e: $7f
	ret  c                                           ; $541f: $d8

	rst  $38                                         ; $5420: $ff
	dec  e                                           ; $5421: $1d
	nop                                              ; $5422: $00
	add  b                                           ; $5423: $80
	rst  $38                                         ; $5424: $ff
	ld   [bc], a                                     ; $5425: $02
	nop                                              ; $5426: $00
	rst  $38                                         ; $5427: $ff
	nop                                              ; $5428: $00
	add  c                                           ; $5429: $81
	rst  $38                                         ; $542a: $ff
	add  b                                           ; $542b: $80
	nop                                              ; $542c: $00
	dec  b                                           ; $542d: $05
	ldh  a, [c]                                      ; $542e: $f2
	di                                               ; $542f: $f3
	db   $f4                                         ; $5430: $f4
	db   $fd                                         ; $5431: $fd
	rlca                                             ; $5432: $07
	nop                                              ; $5433: $00
	add  b                                           ; $5434: $80
	ldh  a, [rSC]                                    ; $5435: $f0 $02
	nop                                              ; $5437: $00
	ldh  a, [rP1]                                    ; $5438: $f0 $00
	add  c                                           ; $543a: $81
	ldh  a, [$81]                                    ; $543b: $f0 $81
	nop                                              ; $543d: $00
	inc  b                                           ; $543e: $04
	ldh  a, [rSVBK]                                  ; $543f: $f0 $70
	ldh  a, [$80]                                    ; $5441: $f0 $80
	rrca                                             ; $5443: $0f
	add  b                                           ; $5444: $80
	ld   c, $80                                      ; $5445: $0e $80
	ld   bc, $0f89                                   ; $5447: $01 $89 $0f
	add  b                                           ; $544a: $80
	ld   c, $80                                      ; $544b: $0e $80
	add  hl, bc                                      ; $544d: $09
	add  b                                           ; $544e: $80
	ld   a, [bc]                                     ; $544f: $0a
	add  b                                           ; $5450: $80
	dec  c                                           ; $5451: $0d
	add  b                                           ; $5452: $80
	ld   [$0480], sp                                 ; $5453: $08 $80 $04
	add  b                                           ; $5456: $80
	ld   [$0402], sp                                 ; $5457: $08 $02 $04
	inc  [hl]                                        ; $545a: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $545b: $cf
	add  b                                           ; $545c: $80
	ccf                                              ; $545d: $3f
	add  h                                           ; $545e: $84
	rst  $38                                         ; $545f: $ff
	add  b                                           ; $5460: $80
	db   $fc                                         ; $5461: $fc
	add  b                                           ; $5462: $80
	db   $e3                                         ; $5463: $e3
	add  b                                           ; $5464: $80
	sbc  a                                           ; $5465: $9f
	inc  bc                                          ; $5466: $03
	push af                                          ; $5467: $f5
	rst  $38                                         ; $5468: $ff
	push af                                          ; $5469: $f5
	rst  $38                                         ; $546a: $ff
	add  b                                           ; $546b: $80
	ld   hl, sp-$80                                  ; $546c: $f8 $80
	db   $e3                                         ; $546e: $e3
	add  b                                           ; $546f: $80
	sbc  a                                           ; $5470: $9f
	add  b                                           ; $5471: $80
	ld   a, a                                        ; $5472: $7f
	add  d                                           ; $5473: $82
	rst  $38                                         ; $5474: $ff
	add  hl, bc                                      ; $5475: $09
	ld   a, l                                        ; $5476: $7d
	rst  $38                                         ; $5477: $ff
	xor  b                                           ; $5478: $a8
	ccf                                              ; $5479: $3f
	ret  nz                                          ; $547a: $c0

	rst  $38                                         ; $547b: $ff
	ret  nc                                          ; $547c: $d0

	rst  $38                                         ; $547d: $ff
	ld   a, [$80ff]                                  ; $547e: $fa $ff $80
	cp   $80                                         ; $5481: $fe $80
	di                                               ; $5483: $f3
	add  b                                           ; $5484: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5485: $cf
	jr   nc, jr_07a_5488                             ; $5486: $30 $00

jr_07a_5488:
	rst  $38                                         ; $5488: $ff
	ld   a, h                                        ; $5489: $7c
	rst  $38                                         ; $548a: $ff
	jr   nc, @+$01                                   ; $548b: $30 $ff

	inc  bc                                          ; $548d: $03
	rst  $38                                         ; $548e: $ff
	ld   e, d                                        ; $548f: $5a
	ccf                                              ; $5490: $3f
	add  b                                           ; $5491: $80
	rst  $38                                         ; $5492: $ff
	nop                                              ; $5493: $00
	rst  $38                                         ; $5494: $ff
	nop                                              ; $5495: $00
	rst  $38                                         ; $5496: $ff
	sub  l                                           ; $5497: $95
	rst  $38                                         ; $5498: $ff
	ld   a, $ff                                      ; $5499: $3e $ff
	db   $fc                                         ; $549b: $fc
	rst  $38                                         ; $549c: $ff
	ld   sp, hl                                      ; $549d: $f9
	cp   $b3                                         ; $549e: $fe $b3
	db   $fd                                         ; $54a0: $fd
	ld   b, $f3                                      ; $54a1: $06 $f3
	inc  b                                           ; $54a3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54a4: $cf
	ld   h, b                                        ; $54a5: $60
	rst  $38                                         ; $54a6: $ff
	ld   h, $f3                                      ; $54a7: $26 $f3
	adc  a                                           ; $54a9: $8f
	rst  $28                                         ; $54aa: $ef
	ccf                                              ; $54ab: $3f
	sbc  a                                           ; $54ac: $9f
	ld   a, $7f                                      ; $54ad: $3e $7f
	ld   e, $ff                                      ; $54af: $1e $ff
	ld   a, [bc]                                     ; $54b1: $0a
	rst  $38                                         ; $54b2: $ff
	nop                                              ; $54b3: $00
	rst  $38                                         ; $54b4: $ff
	ld   a, [hl+]                                    ; $54b5: $2a
	cp   $b7                                         ; $54b6: $fe $b7
	adc  l                                           ; $54b8: $8d
	dec  l                                           ; $54b9: $2d
	ld   [bc], a                                     ; $54ba: $02
	adc  h                                           ; $54bb: $8c
	ld   l, d                                        ; $54bc: $6a
	ld   h, d                                        ; $54bd: $62
	add  b                                           ; $54be: $80
	ld   h, [hl]                                     ; $54bf: $66
	nop                                              ; $54c0: $00
	ld   h, b                                        ; $54c1: $60
	add  c                                           ; $54c2: $81
	ld   a, [hl]                                     ; $54c3: $7e
	inc  b                                           ; $54c4: $04
	ld   a, a                                        ; $54c5: $7f
	ld   a, l                                        ; $54c6: $7d
	ld   a, a                                        ; $54c7: $7f
	ld   h, e                                        ; $54c8: $63
	ld   h, b                                        ; $54c9: $60
	add  b                                           ; $54ca: $80
	ld   h, a                                        ; $54cb: $67
	add  b                                           ; $54cc: $80
	db   $fd                                         ; $54cd: $fd
	add  c                                           ; $54ce: $81
	db   $fc                                         ; $54cf: $fc
	nop                                              ; $54d0: $00
	db   $fd                                         ; $54d1: $fd
	add  c                                           ; $54d2: $81
	ld   bc, $ff80                                   ; $54d3: $01 $80 $ff
	ld   [bc], a                                     ; $54d6: $02
	ret  nz                                          ; $54d7: $c0

	rst  $38                                         ; $54d8: $ff
	ccf                                              ; $54d9: $3f
	add  b                                           ; $54da: $80
	rst  $38                                         ; $54db: $ff
	ld   bc, $2c20                                   ; $54dc: $01 $20 $2c
	add  b                                           ; $54df: $80
	inc  c                                           ; $54e0: $0c
	nop                                              ; $54e1: $00
	inc  e                                           ; $54e2: $1c
	add  c                                           ; $54e3: $81
	db   $fc                                         ; $54e4: $fc
	add  c                                           ; $54e5: $81
	db   $ec                                         ; $54e6: $ec
	nop                                              ; $54e7: $00
	inc  c                                           ; $54e8: $0c
	add  b                                           ; $54e9: $80
	xor  h                                           ; $54ea: $ac
	add  b                                           ; $54eb: $80
	ld   l, h                                        ; $54ec: $6c
	inc  c                                           ; $54ed: $0c
	ld   c, l                                        ; $54ee: $4d
	rst  $38                                         ; $54ef: $ff
	dec  e                                           ; $54f0: $1d
	rst  $38                                         ; $54f1: $ff
	jr   @+$01                                       ; $54f2: $18 $ff

	inc  de                                          ; $54f4: $13
	rst  $38                                         ; $54f5: $ff
	rlca                                             ; $54f6: $07
	rst  $38                                         ; $54f7: $ff
	ld   c, a                                        ; $54f8: $4f
	rst  $38                                         ; $54f9: $ff
	rra                                              ; $54fa: $1f
	add  b                                           ; $54fb: $80
	ld   a, a                                        ; $54fc: $7f
	ld   [bc], a                                     ; $54fd: $02
	rst  $38                                         ; $54fe: $ff
	ld   bc, $80fe                                   ; $54ff: $01 $fe $80
	db   $fd                                         ; $5502: $fd
	dec  c                                           ; $5503: $0d
	cp   l                                           ; $5504: $bd
	db   $fd                                         ; $5505: $fd
	ld   de, $00fb                                   ; $5506: $11 $fb $00
	ei                                               ; $5509: $fb
	inc  c                                           ; $550a: $0c
	rst  $38                                         ; $550b: $ff
	ld   [$45ff], sp                                 ; $550c: $08 $ff $45
	rst  $38                                         ; $550f: $ff
	rla                                              ; $5510: $17
	ld   hl, sp-$7c                                  ; $5511: $f8 $84
	ei                                               ; $5513: $fb
	dec  bc                                          ; $5514: $0b
	xor  d                                           ; $5515: $aa
	ei                                               ; $5516: $fb
	inc  b                                           ; $5517: $04
	rst  $38                                         ; $5518: $ff
	inc  b                                           ; $5519: $04
	rst  $38                                         ; $551a: $ff
	ld   d, l                                        ; $551b: $55
	rst  $38                                         ; $551c: $ff
	ei                                               ; $551d: $fb
	inc  a                                           ; $551e: $3c
	db   $fc                                         ; $551f: $fc
	ret  nz                                          ; $5520: $c0

	add  b                                           ; $5521: $80
	ld   hl, sp+$0e                                  ; $5522: $f8 $0e
	ld   sp, hl                                      ; $5524: $f9
	ei                                               ; $5525: $fb
	xor  b                                           ; $5526: $a8
	ei                                               ; $5527: $fb
	rlca                                             ; $5528: $07
	rst  $38                                         ; $5529: $ff
	inc  bc                                          ; $552a: $03
	rst  $38                                         ; $552b: $ff
	ld   d, a                                        ; $552c: $57
	rst  $38                                         ; $552d: $ff
	db   $fd                                         ; $552e: $fd
	ld   [hl], a                                     ; $552f: $77
	halt                                             ; $5530: $76
	ld   a, e                                        ; $5531: $7b
	ld   a, d                                        ; $5532: $7a
	add  b                                           ; $5533: $80
	ld   a, l                                        ; $5534: $7d
	add  hl, bc                                      ; $5535: $09
	cp   $f4                                         ; $5536: $fe $f4
	rst  $38                                         ; $5538: $ff
	ldh  [rIE], a                                    ; $5539: $e0 $ff
	ld   b, b                                        ; $553b: $40

jr_07a_553c:
	rst  $38                                         ; $553c: $ff
	nop                                              ; $553d: $00
	rst  $38                                         ; $553e: $ff
	ld   d, l                                        ; $553f: $55
	add  b                                           ; $5540: $80
	ld   [$0080], sp                                 ; $5541: $08 $80 $00
	add  b                                           ; $5544: $80
	ld   [$0085], sp                                 ; $5545: $08 $85 $00
	add  b                                           ; $5548: $80
	rrca                                             ; $5549: $0f
	adc  h                                           ; $554a: $8c
	nop                                              ; $554b: $00
	add  b                                           ; $554c: $80
	rst  $38                                         ; $554d: $ff
	db   $10                                         ; $554e: $10
	call nc, $86fb                                   ; $554f: $d4 $fb $86
	cp   $03                                         ; $5552: $fe $03
	rst  $38                                         ; $5554: $ff
	ld   bc, $80ff                                   ; $5555: $01 $ff $80
	ld   a, a                                        ; $5558: $7f
	ld   b, b                                        ; $5559: $40
	cp   a                                           ; $555a: $bf
	jr   nz, jr_07a_553c                             ; $555b: $20 $df

	db   $10                                         ; $555d: $10
	rst  $28                                         ; $555e: $ef
	ld   d, l                                        ; $555f: $55
	add  c                                           ; $5560: $81
	rst  $38                                         ; $5561: $ff
	add  b                                           ; $5562: $80
	ld   a, a                                        ; $5563: $7f
	add  b                                           ; $5564: $80
	cp   a                                           ; $5565: $bf

jr_07a_5566:
	add  b                                           ; $5566: $80
	rst  JumpTable                                         ; $5567: $df
	add  b                                           ; $5568: $80
	rst  $30                                         ; $5569: $f7
	jr   jr_07a_5566                                 ; $556a: $18 $fa

	ei                                               ; $556c: $fb
	ld   d, [hl]                                     ; $556d: $56
	rst  $38                                         ; $556e: $ff
	adc  b                                           ; $556f: $88
	ld   a, a                                        ; $5570: $7f
	cpl                                              ; $5571: $2f
	rst  $38                                         ; $5572: $ff
	daa                                              ; $5573: $27
	rst  $38                                         ; $5574: $ff
	ld   de, $18ff                                   ; $5575: $11 $ff $18
	rst  $38                                         ; $5578: $ff
	ld   e, $ff                                      ; $5579: $1e $ff
	rra                                              ; $557b: $1f
	rst  $38                                         ; $557c: $ff
	rra                                              ; $557d: $1f
	rst  $38                                         ; $557e: $ff
	or   e                                           ; $557f: $b3
	rst  $38                                         ; $5580: $ff
	ldh  a, [rIE]                                    ; $5581: $f0 $ff
	db   $fc                                         ; $5583: $fc
	add  c                                           ; $5584: $81
	rst  $38                                         ; $5585: $ff
	jr   jr_07a_5607                                 ; $5586: $18 $7f

	rst  $38                                         ; $5588: $ff
	rra                                              ; $5589: $1f
	rst  $38                                         ; $558a: $ff
	add  a                                           ; $558b: $87
	rst  $38                                         ; $558c: $ff
	pop  hl                                          ; $558d: $e1
	rst  $38                                         ; $558e: $ff
	add  [hl]                                        ; $558f: $86
	rst  $38                                         ; $5590: $ff
	ccf                                              ; $5591: $3f
	rst  $38                                         ; $5592: $ff
	cp   a                                           ; $5593: $bf
	rst  $38                                         ; $5594: $ff
	adc  a                                           ; $5595: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5596: $cf
	inc  de                                          ; $5597: $13
	di                                               ; $5598: $f3
	inc  e                                           ; $5599: $1c
	db   $fc                                         ; $559a: $fc
	rra                                              ; $559b: $1f
	rst  $38                                         ; $559c: $ff
	rrca                                             ; $559d: $0f
	rst  $38                                         ; $559e: $ff
	sbc  c                                           ; $559f: $99
	adc  e                                           ; $55a0: $8b
	dec  l                                           ; $55a1: $2d
	inc  bc                                          ; $55a2: $03
	xor  l                                           ; $55a3: $ad
	db   $ed                                         ; $55a4: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a5: $cf
	ld   l, e                                        ; $55a6: $6b
	add  b                                           ; $55a7: $80
	ld   l, h                                        ; $55a8: $6c
	add  h                                           ; $55a9: $84
	ld   l, l                                        ; $55aa: $6d
	rlca                                             ; $55ab: $07
	ld   l, h                                        ; $55ac: $6c
	ld   l, l                                        ; $55ad: $6d
	ld   l, h                                        ; $55ae: $6c
	ld   l, l                                        ; $55af: $6d
	ld   l, h                                        ; $55b0: $6c
	ld   l, l                                        ; $55b1: $6d
	rst  $38                                         ; $55b2: $ff
	cp   $80                                         ; $55b3: $fe $80
	nop                                              ; $55b5: $00
	ld   [$fed0], sp                                 ; $55b6: $08 $d0 $fe
	adc  [hl]                                        ; $55b9: $8e
	cp   $1e                                         ; $55ba: $fe $1e
	cp   $3e                                         ; $55bc: $fe $3e
	cp   $7e                                         ; $55be: $fe $7e
	add  c                                           ; $55c0: $81
	cp   $00                                         ; $55c1: $fe $00
	ld   e, $8d                                      ; $55c3: $1e $8d
	db   $ec                                         ; $55c5: $ec
	nop                                              ; $55c6: $00
	ld   a, h                                        ; $55c7: $7c
	adc  c                                           ; $55c8: $89
	add  hl, bc                                      ; $55c9: $09
	add  b                                           ; $55ca: $80
	add  hl, hl                                      ; $55cb: $29
	add  b                                           ; $55cc: $80
	ld   e, c                                        ; $55cd: $59
	nop                                              ; $55ce: $00
	and  $8b                                         ; $55cf: $e6 $8b
	and  b                                           ; $55d1: $a0
	inc  h                                           ; $55d2: $24
	xor  a                                           ; $55d3: $af
	cp   a                                           ; $55d4: $bf
	ldh  a, [c]                                      ; $55d5: $f2
	rst  $38                                         ; $55d6: $ff
	and  [hl]                                        ; $55d7: $a6
	db   $fc                                         ; $55d8: $fc
	cp   l                                           ; $55d9: $bd
	rst  $38                                         ; $55da: $ff
	cp   b                                           ; $55db: $b8
	rst  $38                                         ; $55dc: $ff
	cp   b                                           ; $55dd: $b8
	rst  $38                                         ; $55de: $ff
	cp   b                                           ; $55df: $b8
	rst  $38                                         ; $55e0: $ff
	jr   c, @+$81                                    ; $55e1: $38 $7f

	adc  b                                           ; $55e3: $88
	rst  $38                                         ; $55e4: $ff
	or   a                                           ; $55e5: $b7
	rst  $38                                         ; $55e6: $ff
	pop  af                                          ; $55e7: $f1
	rst  $38                                         ; $55e8: $ff
	ld   de, $e11f                                   ; $55e9: $11 $1f $e1
	rst  $20                                         ; $55ec: $e7

jr_07a_55ed:
	ld   a, [$f4f9]                                  ; $55ed: $fa $f9 $f4
	rst  $38                                         ; $55f0: $ff
	pop  af                                          ; $55f1: $f1
	rst  $38                                         ; $55f2: $ff
	pop  af                                          ; $55f3: $f1
	rst  $38                                         ; $55f4: $ff
	ld   [hl], h                                     ; $55f5: $74
	ldh  a, [$80]                                    ; $55f6: $f0 $80
	add  l                                           ; $55f8: $85
	ldh  a, [rTMA]                                   ; $55f9: $f0 $06
	jr   nc, jr_07a_55ed                             ; $55fb: $30 $f0

	nop                                              ; $55fd: $00
	ldh  a, [$c0]                                    ; $55fe: $f0 $c0
	ldh  a, [rIF]                                    ; $5600: $f0 $0f
	add  b                                           ; $5602: $80
	nop                                              ; $5603: $00
	add  b                                           ; $5604: $80
	rrca                                             ; $5605: $0f
	nop                                              ; $5606: $00

jr_07a_5607:
	nop                                              ; $5607: $00
	add  b                                           ; $5608: $80
	ld   b, $00                                      ; $5609: $06 $00
	add  hl, bc                                      ; $560b: $09
	add  l                                           ; $560c: $85
	rrca                                             ; $560d: $0f
	nop                                              ; $560e: $00
	or   $80                                         ; $560f: $f6 $80
	nop                                              ; $5611: $00
	add  b                                           ; $5612: $80
	rst  $38                                         ; $5613: $ff
	nop                                              ; $5614: $00
	nop                                              ; $5615: $00
	add  b                                           ; $5616: $80
	db   $db                                         ; $5617: $db
	nop                                              ; $5618: $00
	inc  h                                           ; $5619: $24
	add  l                                           ; $561a: $85
	rst  $38                                         ; $561b: $ff
	nop                                              ; $561c: $00
	db   $db                                         ; $561d: $db
	add  b                                           ; $561e: $80
	nop                                              ; $561f: $00
	add  b                                           ; $5620: $80
	rst  $38                                         ; $5621: $ff
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	add  b                                           ; $5624: $80
	ld   l, l                                        ; $5625: $6d
	nop                                              ; $5626: $00
	sub  d                                           ; $5627: $92
	add  l                                           ; $5628: $85
	rst  $38                                         ; $5629: $ff
	nop                                              ; $562a: $00
	ld   l, l                                        ; $562b: $6d
	add  b                                           ; $562c: $80
	nop                                              ; $562d: $00
	add  b                                           ; $562e: $80
	rst  $38                                         ; $562f: $ff
	nop                                              ; $5630: $00
	nop                                              ; $5631: $00
	add  b                                           ; $5632: $80
	or   [hl]                                        ; $5633: $b6
	nop                                              ; $5634: $00
	ld   c, c                                        ; $5635: $49
	add  c                                           ; $5636: $81
	rst  $38                                         ; $5637: $ff
	add  b                                           ; $5638: $80
	cp   $02                                         ; $5639: $fe $02
	ld   a, [$b2fe]                                  ; $563b: $fa $fe $b2
	add  b                                           ; $563e: $80
	nop                                              ; $563f: $00
	add  b                                           ; $5640: $80
	rst  $38                                         ; $5641: $ff
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	add  b                                           ; $5644: $80
	ret  nc                                          ; $5645: $d0

	rlca                                             ; $5646: $07
	dec  sp                                          ; $5647: $3b
	ei                                               ; $5648: $fb
	dec  de                                          ; $5649: $1b
	db   $db                                         ; $564a: $db
	ld   e, e                                        ; $564b: $5b
	db   $db                                         ; $564c: $db
	ld   e, e                                        ; $564d: $5b
	db   $db                                         ; $564e: $db
	add  c                                           ; $564f: $81
	nop                                              ; $5650: $00
	add  b                                           ; $5651: $80
	rst  $38                                         ; $5652: $ff
	add  c                                           ; $5653: $81
	nop                                              ; $5654: $00
	add  [hl]                                        ; $5655: $86
	ld   l, l                                        ; $5656: $6d
	add  c                                           ; $5657: $81
	nop                                              ; $5658: $00
	add  b                                           ; $5659: $80
	rst  $38                                         ; $565a: $ff
	add  c                                           ; $565b: $81
	nop                                              ; $565c: $00
	add  [hl]                                        ; $565d: $86
	or   [hl]                                        ; $565e: $b6
	rlca                                             ; $565f: $07
	ld   [$6c2c], sp                                 ; $5660: $08 $2c $6c
	db   $ed                                         ; $5663: $ed
	xor  l                                           ; $5664: $ad
	dec  l                                           ; $5665: $2d
	inc  l                                           ; $5666: $2c
	dec  l                                           ; $5667: $2d
	add  e                                           ; $5668: $83
	db   $ec                                         ; $5669: $ec
	add  c                                           ; $566a: $81
	db   $ed                                         ; $566b: $ed
	inc  b                                           ; $566c: $04
	ld   c, c                                        ; $566d: $49
	ld   l, h                                        ; $566e: $6c
	ld   l, b                                        ; $566f: $68
	ld   l, e                                        ; $5670: $6b
	ld   h, e                                        ; $5671: $63
	add  b                                           ; $5672: $80
	ld   h, a                                        ; $5673: $67
	add  b                                           ; $5674: $80
	ld   l, a                                        ; $5675: $6f
	nop                                              ; $5676: $00
	ld   h, b                                        ; $5677: $60
	add  d                                           ; $5678: $82
	ld   a, a                                        ; $5679: $7f
	ld   [bc], a                                     ; $567a: $02
	ld   a, [hl]                                     ; $567b: $7e
	ld   a, a                                        ; $567c: $7f
	ld   bc, $0080                                   ; $567d: $01 $80 $00
	add  h                                           ; $5680: $84
	rst  $38                                         ; $5681: $ff
	rlca                                             ; $5682: $07
	nop                                              ; $5683: $00
	and  b                                           ; $5684: $a0
	rst  $38                                         ; $5685: $ff
	rra                                              ; $5686: $1f
	rst  $38                                         ; $5687: $ff
	cp   [hl]                                        ; $5688: $be
	rst  $38                                         ; $5689: $ff
	add  $80                                         ; $568a: $c6 $80
	ld   b, h                                        ; $568c: $44
	ld   bc, $b0f4                                   ; $568d: $01 $f4 $b0
	add  c                                           ; $5690: $81
	adc  b                                           ; $5691: $88
	ld   [bc], a                                     ; $5692: $02
	ret  z                                           ; $5693: $c8

	jr   c, jr_07a_56c2                              ; $5694: $38 $2c

	add  b                                           ; $5696: $80
	call nc, $fc80                                   ; $5697: $d4 $80 $fc
	ld   [bc], a                                     ; $569a: $02
	call nz, $29bc                                   ; $569b: $c4 $bc $29
	add  b                                           ; $569e: $80
	ld   e, c                                        ; $569f: $59
	add  b                                           ; $56a0: $80
	add  hl, hl                                      ; $56a1: $29
	add  b                                           ; $56a2: $80
	ld   e, c                                        ; $56a3: $59
	add  b                                           ; $56a4: $80
	add  hl, hl                                      ; $56a5: $29
	add  b                                           ; $56a6: $80
	ld   e, c                                        ; $56a7: $59
	add  b                                           ; $56a8: $80
	add  hl, hl                                      ; $56a9: $29
	add  b                                           ; $56aa: $80
	ld   a, c                                        ; $56ab: $79
	inc  b                                           ; $56ac: $04
	ld   sp, hl                                      ; $56ad: $f9
	and  b                                           ; $56ae: $a0
	or   b                                           ; $56af: $b0
	cp   a                                           ; $56b0: $bf
	xor  a                                           ; $56b1: $af
	add  c                                           ; $56b2: $81
	and  b                                           ; $56b3: $a0
	add  [hl]                                        ; $56b4: $86
	cp   e                                           ; $56b5: $bb
	nop                                              ; $56b6: $00
	reti                                             ; $56b7: $d9


	adc  l                                           ; $56b8: $8d
	rrca                                             ; $56b9: $0f
	inc  d                                           ; $56ba: $14
	ld   h, h                                        ; $56bb: $64
	rst  $38                                         ; $56bc: $ff
	cp   $ff                                         ; $56bd: $fe $ff
	ld   a, [$f0ff]                                  ; $56bf: $fa $ff $f0

jr_07a_56c2:
	db   $fd                                         ; $56c2: $fd
	pop  af                                          ; $56c3: $f1
	db   $fd                                         ; $56c4: $fd
	pop  bc                                          ; $56c5: $c1
	db   $ed                                         ; $56c6: $ed
	pop  bc                                          ; $56c7: $c1
	db   $ed                                         ; $56c8: $ed
	push bc                                          ; $56c9: $c5
	db   $ed                                         ; $56ca: $ed
	or   $b6                                         ; $56cb: $f6 $b6
	ld   [hl], $b6                                   ; $56cd: $36 $b6
	ld   [hl], $89                                   ; $56cf: $36 $89
	or   [hl]                                        ; $56d1: $b6
	nop                                              ; $56d2: $00
	ld   sp, hl                                      ; $56d3: $f9
	adc  l                                           ; $56d4: $8d
	rrca                                             ; $56d5: $0f
	nop                                              ; $56d6: $00
	jp   nc, $ff8d                                   ; $56d7: $d2 $8d $ff

	nop                                              ; $56da: $00
	ld   c, c                                        ; $56db: $49
	adc  e                                           ; $56dc: $8b
	rst  $38                                         ; $56dd: $ff
	ld   [de], a                                     ; $56de: $12
	cp   $ff                                         ; $56df: $fe $ff
	ld   h, $fe                                      ; $56e1: $26 $fe
	ld   hl, sp-$02                                  ; $56e3: $f8 $fe
	ldh  [$f6], a                                    ; $56e5: $e0 $f6
	jp   nz, $c6f6                                   ; $56e7: $c2 $f6 $c6

	or   $c6                                         ; $56ea: $f6 $c6
	or   $06                                         ; $56ec: $f6 $06
	or   [hl]                                        ; $56ee: $b6
	ld   d, $b6                                      ; $56ef: $16 $b6
	ld   e, e                                        ; $56f1: $5b
	adc  l                                           ; $56f2: $8d
	db   $db                                         ; $56f3: $db
	adc  [hl]                                        ; $56f4: $8e
	ld   l, l                                        ; $56f5: $6d
	adc  [hl]                                        ; $56f6: $8e
	or   [hl]                                        ; $56f7: $b6
	nop                                              ; $56f8: $00
	ret  z                                           ; $56f9: $c8

	adc  l                                           ; $56fa: $8d
	db   $ec                                         ; $56fb: $ec
	ld   bc, $6044                                   ; $56fc: $01 $44 $60
	add  b                                           ; $56ff: $80
	ld   h, a                                        ; $5700: $67
	add  b                                           ; $5701: $80
	ld   l, e                                        ; $5702: $6b
	add  b                                           ; $5703: $80
	ld   l, l                                        ; $5704: $6d
	add  b                                           ; $5705: $80
	ld   l, h                                        ; $5706: $6c
	add  h                                           ; $5707: $84
	ld   l, l                                        ; $5708: $6d
	add  b                                           ; $5709: $80
	nop                                              ; $570a: $00
	add  d                                           ; $570b: $82
	rst  $38                                         ; $570c: $ff
	add  b                                           ; $570d: $80
	cp   $80                                         ; $570e: $fe $80
	nop                                              ; $5710: $00
	dec  c                                           ; $5711: $0d
	db   $fc                                         ; $5712: $fc
	cp   $f8                                         ; $5713: $fe $f8
	cp   $f0                                         ; $5715: $fe $f0
	cp   $62                                         ; $5717: $fe $62
	ld   b, h                                        ; $5719: $44
	ret  nc                                          ; $571a: $d0

	db   $fc                                         ; $571b: $fc
	ret  nz                                          ; $571c: $c0

	call nz, $2c24                                   ; $571d: $c4 $24 $2c
	add  [hl]                                        ; $5720: $86
	db   $ec                                         ; $5721: $ec
	nop                                              ; $5722: $00
	inc  c                                           ; $5723: $0c
	adc  l                                           ; $5724: $8d
	ld   a, c                                        ; $5725: $79
	nop                                              ; $5726: $00
	ldh  [c], a                                      ; $5727: $e2
	adc  l                                           ; $5728: $8d
	cp   e                                           ; $5729: $bb
	nop                                              ; $572a: $00
	ld   c, l                                        ; $572b: $4d
	add  a                                           ; $572c: $87
	ld   l, l                                        ; $572d: $6d
	add  b                                           ; $572e: $80
	ld   l, h                                        ; $572f: $6c
	ld   c, $6a                                      ; $5730: $0e $6a
	ld   l, e                                        ; $5732: $6b
	ld   h, c                                        ; $5733: $61
	ld   h, a                                        ; $5734: $67
	rst  $28                                         ; $5735: $ef
	cp   $c6                                         ; $5736: $fe $c6
	cp   $8e                                         ; $5738: $fe $8e
	cp   $9e                                         ; $573a: $fe $9e
	cp   $be                                         ; $573c: $fe $be
	cp   $7e                                         ; $573e: $fe $7e
	add  b                                           ; $5740: $80
	nop                                              ; $5741: $00
	add  b                                           ; $5742: $80
	ldh  [rSB], a                                    ; $5743: $e0 $01
	rst  $38                                         ; $5745: $ff
	rra                                              ; $5746: $1f
	add  c                                           ; $5747: $81
	db   $ec                                         ; $5748: $ec
	ld   b, $e8                                      ; $5749: $06 $e8
	db   $ec                                         ; $574b: $ec
	ldh  [$ec], a                                    ; $574c: $e0 $ec
	ldh  [$ec], a                                    ; $574e: $e0 $ec
	db   $e4                                         ; $5750: $e4

jr_07a_5751:
	add  c                                           ; $5751: $81
	db   $ec                                         ; $5752: $ec
	add  b                                           ; $5753: $80
	ld   l, h                                        ; $5754: $6c
	nop                                              ; $5755: $00
	ld   h, b                                        ; $5756: $60
	add  b                                           ; $5757: $80
	ld   b, $88                                      ; $5758: $06 $88
	add  [hl]                                        ; $575a: $86
	inc  b                                           ; $575b: $04
	add  b                                           ; $575c: $80
	add  e                                           ; $575d: $83
	inc  bc                                          ; $575e: $03
	dec  bc                                          ; $575f: $0b
	ld   l, e                                        ; $5760: $6b
	add  b                                           ; $5761: $80
	ld   h, a                                        ; $5762: $67
	add  b                                           ; $5763: $80
	ld   h, b                                        ; $5764: $60
	add  b                                           ; $5765: $80
	ld   a, a                                        ; $5766: $7f
	dec  b                                           ; $5767: $05
	ld   a, [hl]                                     ; $5768: $7e
	ld   a, a                                        ; $5769: $7f
	ld   a, l                                        ; $576a: $7d
	ld   a, a                                        ; $576b: $7f
	ld   h, e                                        ; $576c: $63
	ld   h, b                                        ; $576d: $60
	add  b                                           ; $576e: $80
	ld   h, a                                        ; $576f: $67
	add  b                                           ; $5770: $80
	add  a                                           ; $5771: $87
	add  b                                           ; $5772: $80
	ldh  a, [rP1]                                    ; $5773: $f0 $00
	nop                                              ; $5775: $00
	add  b                                           ; $5776: $80
	rrca                                             ; $5777: $0f
	add  d                                           ; $5778: $82
	rst  $38                                         ; $5779: $ff
	ld   [bc], a                                     ; $577a: $02
	ret  nz                                          ; $577b: $c0

	rst  $38                                         ; $577c: $ff
	ccf                                              ; $577d: $3f
	add  b                                           ; $577e: $80
	rst  $38                                         ; $577f: $ff
	inc  b                                           ; $5780: $04
	ld   h, b                                        ; $5781: $60
	ld   l, h                                        ; $5782: $6c
	inc  l                                           ; $5783: $2c
	xor  h                                           ; $5784: $ac
	adc  h                                           ; $5785: $8c
	add  b                                           ; $5786: $80
	ld   l, h                                        ; $5787: $6c
	add  b                                           ; $5788: $80
	ld   h, h                                        ; $5789: $64
	add  b                                           ; $578a: $80
	inc  b                                           ; $578b: $04
	ld   [bc], a                                     ; $578c: $02
	add  h                                           ; $578d: $84
	ld   h, h                                        ; $578e: $64
	db   $e4                                         ; $578f: $e4
	add  b                                           ; $5790: $80
	db   $f4                                         ; $5791: $f4
	ld   bc, $0c04                                   ; $5792: $01 $04 $0c
	add  b                                           ; $5795: $80
	db   $fc                                         ; $5796: $fc
	add  b                                           ; $5797: $80
	call z, $2c80                                    ; $5798: $cc $80 $2c
	add  [hl]                                        ; $579b: $86
	db   $ec                                         ; $579c: $ec
	nop                                              ; $579d: $00
	inc  c                                           ; $579e: $0c
	add  b                                           ; $579f: $80
	ld   h, $88                                      ; $57a0: $26 $88
	and  [hl]                                        ; $57a2: $a6
	inc  bc                                          ; $57a3: $03
	and  b                                           ; $57a4: $a0
	and  a                                           ; $57a5: $a7
	rlca                                             ; $57a6: $07
	rst  $38                                         ; $57a7: $ff
	add  l                                           ; $57a8: $85
	nop                                              ; $57a9: $00
	ld   [bc], a                                     ; $57aa: $02
	rrca                                             ; $57ab: $0f
	ld   bc, $80f1                                   ; $57ac: $01 $f1 $80
	ldh  a, [$80]                                    ; $57af: $f0 $80
	ld   bc, $f101                                   ; $57b1: $01 $01 $f1
	ld   c, $87                                      ; $57b4: $0e $87
	nop                                              ; $57b6: $00
	ld   [bc], a                                     ; $57b7: $02
	di                                               ; $57b8: $f3
	ld   a, a                                        ; $57b9: $7f
	ld   [hl], e                                     ; $57ba: $73
	add  b                                           ; $57bb: $80
	adc  [hl]                                        ; $57bc: $8e
	ld   bc, $0ef1                                   ; $57bd: $01 $f1 $0e
	add  a                                           ; $57c0: $87
	nop                                              ; $57c1: $00
	add  c                                           ; $57c2: $81
	rst  $38                                         ; $57c3: $ff
	inc  bc                                          ; $57c4: $03
	nop                                              ; $57c5: $00
	jr   nc, @+$01                                   ; $57c6: $30 $ff

	jr   nc, jr_07a_5751                             ; $57c8: $30 $87

	nop                                              ; $57ca: $00
	add  c                                           ; $57cb: $81
	rst  $38                                         ; $57cc: $ff
	add  b                                           ; $57cd: $80
	nop                                              ; $57ce: $00
	add  b                                           ; $57cf: $80
	rst  $38                                         ; $57d0: $ff
	add  b                                           ; $57d1: $80
	pop  af                                          ; $57d2: $f1
	add  c                                           ; $57d3: $81
	ld   bc, $7100                                   ; $57d4: $01 $00 $71
	add  a                                           ; $57d7: $87
	add  c                                           ; $57d8: $81
	nop                                              ; $57d9: $00
	pop  af                                          ; $57da: $f1
	add  b                                           ; $57db: $80
	cp   $80                                         ; $57dc: $fe $80
	cp   a                                           ; $57de: $bf
	add  b                                           ; $57df: $80
	add  a                                           ; $57e0: $87
	add  b                                           ; $57e1: $80
	sub  b                                           ; $57e2: $90
	inc  bc                                          ; $57e3: $03
	xor  a                                           ; $57e4: $af
	xor  h                                           ; $57e5: $ac
	and  h                                           ; $57e6: $a4
	and  b                                           ; $57e7: $a0
	add  b                                           ; $57e8: $80
	or   c                                           ; $57e9: $b1
	ld   bc, $b5b2                                   ; $57ea: $01 $b2 $b5
	add  b                                           ; $57ed: $80
	add  hl, sp                                      ; $57ee: $39
	add  b                                           ; $57ef: $80
	rst  ToBoot                                         ; $57f0: $c7
	add  b                                           ; $57f1: $80
	ld   hl, sp+$15                                  ; $57f2: $f8 $15
	rst  $38                                         ; $57f4: $ff
	sbc  a                                           ; $57f5: $9f
	rra                                              ; $57f6: $1f
	add  a                                           ; $57f7: $87
	ret                                              ; $57f8: $c9


	call $f406                                       ; $57f9: $cd $06 $f4
	inc  bc                                          ; $57fc: $03
	dec  c                                           ; $57fd: $0d
	rst  $38                                         ; $57fe: $ff
	ld   a, a                                        ; $57ff: $7f
	add  c                                           ; $5800: $81
	ld   sp, $ddf1                                   ; $5801: $31 $f1 $dd
	dec  e                                           ; $5804: $1d
	ld   d, l                                        ; $5805: $55
	push af                                          ; $5806: $f5
	dec  d                                           ; $5807: $15
	push af                                          ; $5808: $f5
	ld   [hl], l                                     ; $5809: $75
	add  c                                           ; $580a: $81
	dec  [hl]                                        ; $580b: $35
	nop                                              ; $580c: $00
	ld   [hl], c                                     ; $580d: $71
	adc  l                                           ; $580e: $8d
	add  c                                           ; $580f: $81
	inc  b                                           ; $5810: $04
	rst  $38                                         ; $5811: $ff
	or   [hl]                                        ; $5812: $b6
	cp   [hl]                                        ; $5813: $be
	cp   b                                           ; $5814: $b8
	or   b                                           ; $5815: $b0
	add  b                                           ; $5816: $80
	or   d                                           ; $5817: $b2
	ld   [$bfb6], sp                                 ; $5818: $08 $b6 $bf
	cp   b                                           ; $581b: $b8
	cp   h                                           ; $581c: $bc
	cp   c                                           ; $581d: $b9
	cp   e                                           ; $581e: $bb
	cp   b                                           ; $581f: $b8
	cp   c                                           ; $5820: $b9
	or   b                                           ; $5821: $b0
	rlca                                             ; $5822: $07
	ld   [bc], a                                     ; $5823: $02
	add  [hl]                                        ; $5824: $86
	nop                                              ; $5825: $00
	add  [hl]                                        ; $5826: $86
	rrca                                             ; $5827: $0f
	add  [hl]                                        ; $5828: $86
	nop                                              ; $5829: $00
	add  [hl]                                        ; $582a: $86
	rst  $38                                         ; $582b: $ff
	add  [hl]                                        ; $582c: $86
	nop                                              ; $582d: $00
	add  h                                           ; $582e: $84
	rst  $38                                         ; $582f: $ff
	add  b                                           ; $5830: $80
	cp   $86                                         ; $5831: $fe $86
	nop                                              ; $5833: $00
	add  b                                           ; $5834: $80
	rst  $38                                         ; $5835: $ff
	add  b                                           ; $5836: $80
	cp   $80                                         ; $5837: $fe $80
	push de                                          ; $5839: $d5
	add  b                                           ; $583a: $80
	add  b                                           ; $583b: $80
	add  [hl]                                        ; $583c: $86
	nop                                              ; $583d: $00
	add  b                                           ; $583e: $80
	db   $fc                                         ; $583f: $fc
	add  b                                           ; $5840: $80
	cp   [hl]                                        ; $5841: $be
	add  b                                           ; $5842: $80
	ld   d, h                                        ; $5843: $54
	add  b                                           ; $5844: $80
	ld   [bc], a                                     ; $5845: $02
	adc  e                                           ; $5846: $8b
	nop                                              ; $5847: $00
	ld   [bc], a                                     ; $5848: $02
	ld   bc, $a0a1                                   ; $5849: $01 $a1 $a0
	add  [hl]                                        ; $584c: $86
	nop                                              ; $584d: $00
	ld   [$5b1b], sp                                 ; $584e: $08 $1b $5b
	xor  [hl]                                        ; $5851: $ae
	and  b                                           ; $5852: $a0
	and  c                                           ; $5853: $a1
	ld   a, [de]                                     ; $5854: $1a
	ld   a, [bc]                                     ; $5855: $0a
	pop  af                                          ; $5856: $f1
	ld   c, $85                                      ; $5857: $0e $85
	nop                                              ; $5859: $00
	add  b                                           ; $585a: $80
	ld   b, b                                        ; $585b: $40
	inc  b                                           ; $585c: $04
	ldh  [hScriptOpcodeParams], a                                    ; $585d: $e0 $a0
	or   b                                           ; $585f: $b0
	db   $10                                         ; $5860: $10
	ldh  [$99], a                                    ; $5861: $e0 $99
	nop                                              ; $5863: $00
	inc  bc                                          ; $5864: $03
	inc  b                                           ; $5865: $04
	rlca                                             ; $5866: $07
	inc  b                                           ; $5867: $04
	nop                                              ; $5868: $00
	add  b                                           ; $5869: $80
	ld   bc, $0700                                   ; $586a: $01 $00 $07
	add  l                                           ; $586d: $85
	nop                                              ; $586e: $00
	ld   bc, $916e                                   ; $586f: $01 $6e $91
	add  h                                           ; $5872: $84
	ld   d, c                                        ; $5873: $51
	nop                                              ; $5874: $00
	rst  $38                                         ; $5875: $ff
	add  l                                           ; $5876: $85
	nop                                              ; $5877: $00
	ld   bc, $50af                                   ; $5878: $01 $af $50
	add  b                                           ; $587b: $80
	ld   b, b                                        ; $587c: $40
	add  d                                           ; $587d: $82
	nop                                              ; $587e: $00
	db   $10                                         ; $587f: $10
	ld   d, a                                        ; $5880: $57
	xor  b                                           ; $5881: $a8
	ld   a, l                                        ; $5882: $7d
	db   $fd                                         ; $5883: $fd
	ld   l, $fe                                      ; $5884: $2e $fe
	dec  b                                           ; $5886: $05
	db   $fd                                         ; $5887: $fd
	ld   d, $fe                                      ; $5888: $16 $fe
	ld   d, a                                        ; $588a: $57
	rst  $38                                         ; $588b: $ff
	ld   c, e                                        ; $588c: $4b
	ld   a, a                                        ; $588d: $7f
	adc  e                                           ; $588e: $8b
	rst  $38                                         ; $588f: $ff
	xor  b                                           ; $5890: $a8
	add  b                                           ; $5891: $80
	dec  bc                                          ; $5892: $0b
	add  b                                           ; $5893: $80
	rla                                              ; $5894: $17
	add  b                                           ; $5895: $80
	cp   a                                           ; $5896: $bf
	add  hl, bc                                      ; $5897: $09
	ld   a, a                                        ; $5898: $7f
	rst  JumpTable                                         ; $5899: $df
	rst  $38                                         ; $589a: $ff
	rrca                                             ; $589b: $0f
	rst  $38                                         ; $589c: $ff
	ld   b, a                                        ; $589d: $47
	rst  $38                                         ; $589e: $ff
	ld   b, a                                        ; $589f: $47
	rst  $38                                         ; $58a0: $ff
	ld   d, b                                        ; $58a1: $50
	add  l                                           ; $58a2: $85
	rst  $38                                         ; $58a3: $ff
	add  b                                           ; $58a4: $80
	db   $fd                                         ; $58a5: $fd
	add  b                                           ; $58a6: $80
	db   $eb                                         ; $58a7: $eb
	add  b                                           ; $58a8: $80
	push af                                          ; $58a9: $f5
	adc  b                                           ; $58aa: $88
	rst  $38                                         ; $58ab: $ff
	add  b                                           ; $58ac: $80
	rst  $30                                         ; $58ad: $f7
	add  d                                           ; $58ae: $82
	rst  $38                                         ; $58af: $ff
	add  b                                           ; $58b0: $80
	cp   a                                           ; $58b1: $bf
	adc  [hl]                                        ; $58b2: $8e
	rrca                                             ; $58b3: $0f
	adc  b                                           ; $58b4: $88
	rst  $38                                         ; $58b5: $ff
	add  b                                           ; $58b6: $80
	rst  $30                                         ; $58b7: $f7
	dec  b                                           ; $58b8: $05
	db   $eb                                         ; $58b9: $eb
	ld   [$7072], a                                  ; $58ba: $ea $72 $70
	rst  $38                                         ; $58bd: $ff
	db   $fc                                         ; $58be: $fc
	add  b                                           ; $58bf: $80
	ld   [$fd80], a                                  ; $58c0: $ea $80 $fd
	ld   bc, $ff7f                                   ; $58c3: $01 $7f $ff
	add  d                                           ; $58c6: $82
	ld   a, a                                        ; $58c7: $7f
	dec  b                                           ; $58c8: $05
	ccf                                              ; $58c9: $3f
	ld   a, a                                        ; $58ca: $7f
	ld   c, e                                        ; $58cb: $4b
	ld   l, e                                        ; $58cc: $6b
	pop  hl                                          ; $58cd: $e1
	ld   bc, $2380                                   ; $58ce: $01 $80 $23
	add  b                                           ; $58d1: $80
	ld   d, l                                        ; $58d2: $55
	add  b                                           ; $58d3: $80
	db   $eb                                         ; $58d4: $eb
	add  h                                           ; $58d5: $84
	rst  $38                                         ; $58d6: $ff
	add  b                                           ; $58d7: $80
	cp   a                                           ; $58d8: $bf
	add  b                                           ; $58d9: $80
	dec  d                                           ; $58da: $15
	add  b                                           ; $58db: $80
	xor  a                                           ; $58dc: $af
	adc  d                                           ; $58dd: $8a
	rst  $38                                         ; $58de: $ff
	add  b                                           ; $58df: $80
	ret  nz                                          ; $58e0: $c0

	add  b                                           ; $58e1: $80
	xor  b                                           ; $58e2: $a8
	add  b                                           ; $58e3: $80
	db   $f4                                         ; $58e4: $f4
	add  b                                           ; $58e5: $80
	ldh  [c], a                                      ; $58e6: $e2
	add  b                                           ; $58e7: $80
	rst  $30                                         ; $58e8: $f7
	add  h                                           ; $58e9: $84
	rst  $38                                         ; $58ea: $ff
	ld   b, $be                                      ; $58eb: $06 $be
	cp   d                                           ; $58ed: $ba
	ld   [$aa0a], a                                  ; $58ee: $ea $0a $aa
	ld   a, [bc]                                     ; $58f1: $0a
	ld   c, d                                        ; $58f2: $4a
	add  c                                           ; $58f3: $81
	nop                                              ; $58f4: $00
	ld   bc, $8684                                   ; $58f5: $01 $84 $86
	add  b                                           ; $58f8: $80
	ld   b, [hl]                                     ; $58f9: $46
	add  b                                           ; $58fa: $80
	add  [hl]                                        ; $58fb: $86
	ld   b, $ac                                      ; $58fc: $06 $ac
	and  b                                           ; $58fe: $a0
	ldh  [rP1], a                                    ; $58ff: $e0 $00
	and  b                                           ; $5901: $a0
	nop                                              ; $5902: $00
	ld   b, b                                        ; $5903: $40
	adc  a                                           ; $5904: $8f
	nop                                              ; $5905: $00
	inc  bc                                          ; $5906: $03
	dec  bc                                          ; $5907: $0b
	ld   c, $0a                                      ; $5908: $0e $0a
	nop                                              ; $590a: $00
	add  b                                           ; $590b: $80
	ld   [bc], a                                     ; $590c: $02
	add  hl, bc                                      ; $590d: $09
	ld   [de], a                                     ; $590e: $12
	ld   [bc], a                                     ; $590f: $02
	ld   bc, $1911                                   ; $5910: $01 $11 $19
	add  hl, hl                                      ; $5913: $29
	ld   c, c                                        ; $5914: $49
	add  hl, bc                                      ; $5915: $09
	xor  c                                           ; $5916: $a9
	add  hl, hl                                      ; $5917: $29
	add  d                                           ; $5918: $82
	xor  b                                           ; $5919: $a8
	add  b                                           ; $591a: $80
	and  b                                           ; $591b: $a0
	add  b                                           ; $591c: $80
	add  b                                           ; $591d: $80
	add  d                                           ; $591e: $82
	ld   d, b                                        ; $591f: $50
	add  b                                           ; $5920: $80
	ld   b, b                                        ; $5921: $40
	sub  h                                           ; $5922: $94
	nop                                              ; $5923: $00
	add  b                                           ; $5924: $80
	ld   bc, $0802                                   ; $5925: $01 $02 $08
	rrca                                             ; $5928: $0f
	rlca                                             ; $5929: $07
	add  l                                           ; $592a: $85
	nop                                              ; $592b: $00
	inc  b                                           ; $592c: $04
	inc  b                                           ; $592d: $04
	rlca                                             ; $592e: $07
	inc  hl                                          ; $592f: $23
	ccf                                              ; $5930: $3f
	rra                                              ; $5931: $1f
	add  d                                           ; $5932: $82
	rst  $38                                         ; $5933: $ff
	add  c                                           ; $5934: $81
	nop                                              ; $5935: $00
	inc  c                                           ; $5936: $0c
	inc  b                                           ; $5937: $04
	rlca                                             ; $5938: $07
	ld   b, e                                        ; $5939: $43
	ld   a, a                                        ; $593a: $7f
	ld   a, [hl-]                                    ; $593b: $3a
	rst  $38                                         ; $593c: $ff
	ld   d, c                                        ; $593d: $51
	rst  $38                                         ; $593e: $ff
	dec  hl                                          ; $593f: $2b
	rst  $38                                         ; $5940: $ff
	dec  hl                                          ; $5941: $2b
	rst  $38                                         ; $5942: $ff
	ld   d, h                                        ; $5943: $54
	add  d                                           ; $5944: $82
	nop                                              ; $5945: $00
	dec  b                                           ; $5946: $05
	rst  $38                                         ; $5947: $ff
	db   $f4                                         ; $5948: $f4
	rst  $38                                         ; $5949: $ff
	and  c                                           ; $594a: $a1
	rst  $38                                         ; $594b: $ff
	ld   d, l                                        ; $594c: $55
	add  e                                           ; $594d: $83
	rst  $38                                         ; $594e: $ff
	add  d                                           ; $594f: $82
	nop                                              ; $5950: $00
	ld   [bc], a                                     ; $5951: $02
	dec  d                                           ; $5952: $15
	rst  $38                                         ; $5953: $ff
	dec  d                                           ; $5954: $15
	add  a                                           ; $5955: $87
	rst  $38                                         ; $5956: $ff
	ld   bc, $0ff0                                   ; $5957: $01 $f0 $0f
	add  b                                           ; $595a: $80
	dec  c                                           ; $595b: $0d
	add  b                                           ; $595c: $80
	rrca                                             ; $595d: $0f
	inc  bc                                          ; $595e: $03
	ld   [$000f], sp                                 ; $595f: $08 $0f $00
	ld   [$0084], sp                                 ; $5962: $08 $84 $00
	inc  bc                                          ; $5965: $03
	xor  b                                           ; $5966: $a8
	and  h                                           ; $5967: $a4
	ld   b, h                                        ; $5968: $44
	ld   b, b                                        ; $5969: $40
	add  b                                           ; $596a: $80
	and  b                                           ; $596b: $a0
	ld   bc, $8020                                   ; $596c: $01 $20 $80
	add  b                                           ; $596f: $80
	inc  bc                                          ; $5970: $03
	ld   bc, $5b01                                   ; $5971: $01 $01 $5b
	add  b                                           ; $5974: $80
	inc  bc                                          ; $5975: $03
	dec  b                                           ; $5976: $05
	ld   [bc], a                                     ; $5977: $02
	rlca                                             ; $5978: $07
	ld   l, c                                        ; $5979: $69
	ld   [hl], c                                     ; $597a: $71
	ld   h, b                                        ; $597b: $60
	ld   [hl], b                                     ; $597c: $70
	add  b                                           ; $597d: $80
	ldh  a, [$80]                                    ; $597e: $f0 $80
	nop                                              ; $5980: $00
	add  b                                           ; $5981: $80
	ldh  a, [rP1]                                    ; $5982: $f0 $00
	or   b                                           ; $5984: $b0
	add  c                                           ; $5985: $81
	ldh  a, [rSB]                                    ; $5986: $f0 $01
	ld   c, b                                        ; $5988: $48
	ld   hl, sp-$80                                  ; $5989: $f8 $80
	ld   e, l                                        ; $598b: $5d
	add  b                                           ; $598c: $80
	xor  d                                           ; $598d: $aa
	add  b                                           ; $598e: $80
	ld   bc, $0080                                   ; $598f: $01 $80 $00
	add  b                                           ; $5992: $80
	ld   d, l                                        ; $5993: $55
	add  b                                           ; $5994: $80
	cp   a                                           ; $5995: $bf
	add  b                                           ; $5996: $80
	dec  d                                           ; $5997: $15
	add  b                                           ; $5998: $80
	ld   [bc], a                                     ; $5999: $02
	adc  b                                           ; $599a: $88
	rst  $38                                         ; $599b: $ff
	add  b                                           ; $599c: $80
	xor  e                                           ; $599d: $ab
	add  b                                           ; $599e: $80
	pop  af                                          ; $599f: $f1
	add  b                                           ; $59a0: $80
	and  b                                           ; $59a1: $a0
	add  b                                           ; $59a2: $80
	db   $fd                                         ; $59a3: $fd
	add  b                                           ; $59a4: $80
	cp   $80                                         ; $59a5: $fe $80
	db   $fd                                         ; $59a7: $fd
	add  b                                           ; $59a8: $80
	cp   $80                                         ; $59a9: $fe $80
	rst  $30                                         ; $59ab: $f7
	add  b                                           ; $59ac: $80
	xor  d                                           ; $59ad: $aa
	add  b                                           ; $59ae: $80
	ld   b, b                                        ; $59af: $40
	inc  bc                                          ; $59b0: $03
	inc  b                                           ; $59b1: $04
	nop                                              ; $59b2: $00
	ld   c, $06                                      ; $59b3: $0e $06
	add  b                                           ; $59b5: $80
	add  [hl]                                        ; $59b6: $86
	rlca                                             ; $59b7: $07
	db   $d3                                         ; $59b8: $d3
	ret  nz                                          ; $59b9: $c0

	sub  e                                           ; $59ba: $93
	add  d                                           ; $59bb: $82
	ld   de, $1300                                   ; $59bc: $11 $00 $13
	ld   [bc], a                                     ; $59bf: $02
	add  b                                           ; $59c0: $80
	inc  de                                          ; $59c1: $13
	ld   [bc], a                                     ; $59c2: $02
	nop                                              ; $59c3: $00
	ld   de, $811f                                   ; $59c4: $11 $1f $81
	nop                                              ; $59c7: $00
	rrca                                             ; $59c8: $0f
	ld   bc, $0300                                   ; $59c9: $01 $00 $03
	ld   bc, $1915                                   ; $59cc: $01 $15 $19
	dec  d                                           ; $59cf: $15
	dec  b                                           ; $59d0: $05
	inc  b                                           ; $59d1: $04

jr_07a_59d2:
	inc  h                                           ; $59d2: $24
	ld   b, b                                        ; $59d3: $40
	nop                                              ; $59d4: $00
	ld   [bc], a                                     ; $59d5: $02
	ld   b, d                                        ; $59d6: $42
	ld   d, d                                        ; $59d7: $52
	sub  d                                           ; $59d8: $92
	add  b                                           ; $59d9: $80
	ld   d, b                                        ; $59da: $50
	add  d                                           ; $59db: $82
	ld   b, b                                        ; $59dc: $40
	sub  c                                           ; $59dd: $91
	nop                                              ; $59de: $00
	inc  bc                                          ; $59df: $03
	ld   bc, $0705                                   ; $59e0: $01 $05 $07
	inc  bc                                          ; $59e3: $03
	add  d                                           ; $59e4: $82
	nop                                              ; $59e5: $00
	add  b                                           ; $59e6: $80
	inc  bc                                          ; $59e7: $03
	add  b                                           ; $59e8: $80
	rrca                                             ; $59e9: $0f
	inc  bc                                          ; $59ea: $03
	ccf                                              ; $59eb: $3f
	cp   a                                           ; $59ec: $bf
	rst  $38                                         ; $59ed: $ff
	ld   a, a                                        ; $59ee: $7f
	add  c                                           ; $59ef: $81
	rst  $38                                         ; $59f0: $ff
	jr   nz, jr_07a_59d2                             ; $59f1: $20 $df

	ccf                                              ; $59f3: $3f
	dec  e                                           ; $59f4: $1d
	rst  $38                                         ; $59f5: $ff
	ld   a, [$faff]                                  ; $59f6: $fa $ff $fa
	rst  $38                                         ; $59f9: $ff
	xor  b                                           ; $59fa: $a8
	rst  $38                                         ; $59fb: $ff
	xor  b                                           ; $59fc: $a8
	rst  $38                                         ; $59fd: $ff
	xor  b                                           ; $59fe: $a8
	rst  $38                                         ; $59ff: $ff

Jump_07a_5a00:
	db   $10                                         ; $5a00: $10
	rst  $38                                         ; $5a01: $ff
	ld   b, b                                        ; $5a02: $40
	rst  $38                                         ; $5a03: $ff
	ld   [hl], b                                     ; $5a04: $70
	rst  $38                                         ; $5a05: $ff
	and  d                                           ; $5a06: $a2
	rst  $38                                         ; $5a07: $ff
	rst  $10                                         ; $5a08: $d7
	rst  $38                                         ; $5a09: $ff
	ld   d, a                                        ; $5a0a: $57
	rst  $38                                         ; $5a0b: $ff
	add  d                                           ; $5a0c: $82
	rst  $38                                         ; $5a0d: $ff
	ld   a, [hl+]                                    ; $5a0e: $2a
	rst  $38                                         ; $5a0f: $ff

jr_07a_5a10:
	cp   a                                           ; $5a10: $bf
	rst  $38                                         ; $5a11: $ff
	ld   c, a                                        ; $5a12: $4f
	adc  l                                           ; $5a13: $8d
	ldh  a, [rP1]                                    ; $5a14: $f0 $00
	nop                                              ; $5a16: $00
	adc  e                                           ; $5a17: $8b
	rst  $38                                         ; $5a18: $ff
	ld   [bc], a                                     ; $5a19: $02
	db   $fd                                         ; $5a1a: $fd
	cp   $fc                                         ; $5a1b: $fe $fc
	add  e                                           ; $5a1d: $83
	rst  $38                                         ; $5a1e: $ff
	rlca                                             ; $5a1f: $07
	db   $fd                                         ; $5a20: $fd
	cp   $f4                                         ; $5a21: $fe $f4
	ld   hl, sp-$30                                  ; $5a23: $f8 $d0
	ldh  [rLYC], a                                   ; $5a25: $e0 $45
	add  l                                           ; $5a27: $85
	add  b                                           ; $5a28: $80
	ld   [bc], a                                     ; $5a29: $02
	nop                                              ; $5a2a: $00

jr_07a_5a2b:
	rrca                                             ; $5a2b: $0f
	add  c                                           ; $5a2c: $81
	nop                                              ; $5a2d: $00
	add  b                                           ; $5a2e: $80
	inc  bc                                          ; $5a2f: $03
	add  b                                           ; $5a30: $80
	ld   bc, $0280                                   ; $5a31: $01 $80 $02
	add  d                                           ; $5a34: $82
	nop                                              ; $5a35: $00
	add  b                                           ; $5a36: $80
	dec  b                                           ; $5a37: $05
	dec  b                                           ; $5a38: $05
	ldh  a, [rTAC]                                   ; $5a39: $f0 $07
	inc  b                                           ; $5a3b: $04
	inc  bc                                          ; $5a3c: $03
	ldh  a, [c]                                      ; $5a3d: $f2
	di                                               ; $5a3e: $f3
	add  b                                           ; $5a3f: $80
	ld   [hl], e                                     ; $5a40: $73
	add  b                                           ; $5a41: $80
	di                                               ; $5a42: $f3
	ld   bc, $5352                                   ; $5a43: $01 $52 $53
	add  b                                           ; $5a46: $80
	inc  bc                                          ; $5a47: $03
	ld   b, $f0                                      ; $5a48: $06 $f0
	di                                               ; $5a4a: $f3
	inc  b                                           ; $5a4b: $04
	ld   hl, sp+$00                                  ; $5a4c: $f8 $00
	ld   hl, sp+$68                                  ; $5a4e: $f8 $68
	add  l                                           ; $5a50: $85
	ldh  a, [$03]                                    ; $5a51: $f0 $03
	ld   h, b                                        ; $5a53: $60
	ldh  a, [rP1]                                    ; $5a54: $f0 $00
	ldh  a, [$85]                                    ; $5a56: $f0 $85
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	inc  b                                           ; $5a5a: $04
	add  c                                           ; $5a5b: $81
	nop                                              ; $5a5c: $00
	nop                                              ; $5a5d: $00
	ld   a, [bc]                                     ; $5a5e: $0a
	add  b                                           ; $5a5f: $80
	inc  de                                          ; $5a60: $13
	ld   [bc], a                                     ; $5a61: $02
	ld   [bc], a                                     ; $5a62: $02
	inc  de                                          ; $5a63: $13
	rra                                              ; $5a64: $1f
	add  h                                           ; $5a65: $84
	nop                                              ; $5a66: $00
	add  b                                           ; $5a67: $80
	ld   [bc], a                                     ; $5a68: $02
	add  b                                           ; $5a69: $80
	rlca                                             ; $5a6a: $07
	nop                                              ; $5a6b: $00
	nop                                              ; $5a6c: $00
	add  d                                           ; $5a6d: $82
	ld   [bc], a                                     ; $5a6e: $02
	nop                                              ; $5a6f: $00
	ld   c, $80                                      ; $5a70: $0e $80
	nop                                              ; $5a72: $00
	ld   b, $0e                                      ; $5a73: $06 $0e
	dec  d                                           ; $5a75: $15
	nop                                              ; $5a76: $00
	ld   a, [bc]                                     ; $5a77: $0a
	ld   de, $0a00                                   ; $5a78: $11 $00 $0a
	add  d                                           ; $5a7b: $82
	nop                                              ; $5a7c: $00
	inc  bc                                          ; $5a7d: $03
	dec  bc                                          ; $5a7e: $0b
	nop                                              ; $5a7f: $00
	ld   bc, $8411                                   ; $5a80: $01 $11 $84
	db   $10                                         ; $5a83: $10
	dec  b                                           ; $5a84: $05
	nop                                              ; $5a85: $00
	jr   nz, jr_07a_5a88                             ; $5a86: $20 $00

jr_07a_5a88:
	ld   b, b                                        ; $5a88: $40
	jr   nz, jr_07a_5a2b                             ; $5a89: $20 $a0

	add  b                                           ; $5a8b: $80
	nop                                              ; $5a8c: $00
	add  b                                           ; $5a8d: $80
	jr   nz, jr_07a_5a10                             ; $5a8e: $20 $80

	add  b                                           ; $5a90: $80
	sub  h                                           ; $5a91: $94
	nop                                              ; $5a92: $00
	add  b                                           ; $5a93: $80
	ld   bc, $0000                                   ; $5a94: $01 $00 $00
	add  b                                           ; $5a97: $80
	ld   bc, $0380                                   ; $5a98: $01 $80 $03
	add  b                                           ; $5a9b: $80
	rrca                                             ; $5a9c: $0f
	rlca                                             ; $5a9d: $07
	rra                                              ; $5a9e: $1f
	ld   a, [de]                                     ; $5a9f: $1a
	ccf                                              ; $5aa0: $3f
	jr   c, jr_07a_5b22                              ; $5aa1: $38 $7f

	db   $fd                                         ; $5aa3: $fd
	rst  $38                                         ; $5aa4: $ff
	ld   a, a                                        ; $5aa5: $7f
	add  c                                           ; $5aa6: $81
	rst  $38                                         ; $5aa7: $ff
	inc  d                                           ; $5aa8: $14
	db   $fd                                         ; $5aa9: $fd
	rst  $38                                         ; $5aaa: $ff
	ld   hl, sp-$01                                  ; $5aab: $f8 $ff
	push de                                          ; $5aad: $d5
	rst  $38                                         ; $5aae: $ff
	dec  b                                           ; $5aaf: $05
	rst  $38                                         ; $5ab0: $ff
	jr   z, @+$01                                    ; $5ab1: $28 $ff

	and  b                                           ; $5ab3: $a0
	rst  $38                                         ; $5ab4: $ff
	adc  l                                           ; $5ab5: $8d
	rst  $38                                         ; $5ab6: $ff
	xor  a                                           ; $5ab7: $af
	rst  $38                                         ; $5ab8: $ff
	dec  hl                                          ; $5ab9: $2b
	rst  $38                                         ; $5aba: $ff
	dec  hl                                          ; $5abb: $2b
	rst  $38                                         ; $5abc: $ff
	ld   a, a                                        ; $5abd: $7f
	add  e                                           ; $5abe: $83
	rst  $38                                         ; $5abf: $ff
	ld   [bc], a                                     ; $5ac0: $02
	ld   e, a                                        ; $5ac1: $5f
	rst  $38                                         ; $5ac2: $ff
	ld   e, a                                        ; $5ac3: $5f
	add  e                                           ; $5ac4: $83
	rst  $38                                         ; $5ac5: $ff
	ld   bc, $28d7                                   ; $5ac6: $01 $d7 $28
	add  b                                           ; $5ac9: $80
	ld   d, h                                        ; $5aca: $54
	add  b                                           ; $5acb: $80
	ldh  [c], a                                      ; $5acc: $e2
	add  b                                           ; $5acd: $80
	push af                                          ; $5ace: $f5
	add  [hl]                                        ; $5acf: $86
	rst  $38                                         ; $5ad0: $ff
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	adc  b                                           ; $5ad3: $88
	rst  $38                                         ; $5ad4: $ff
	dec  c                                           ; $5ad5: $0d
	cp   $fc                                         ; $5ad6: $fe $fc
	cp   $f8                                         ; $5ad8: $fe $f8
	db   $fc                                         ; $5ada: $fc
	ldh  a, [$f8]                                    ; $5adb: $f0 $f8
	ldh  [c], a                                      ; $5add: $e2
	ldh  a, [c]                                      ; $5ade: $f2
	push hl                                          ; $5adf: $e5
	push bc                                          ; $5ae0: $c5
	jp   nz, $8082                                   ; $5ae1: $c2 $82 $80

	add  c                                           ; $5ae4: $81
	nop                                              ; $5ae5: $00
	add  b                                           ; $5ae6: $80
	dec  b                                           ; $5ae7: $05
	add  b                                           ; $5ae8: $80
	cpl                                              ; $5ae9: $2f
	add  b                                           ; $5aea: $80
	ld   d, l                                        ; $5aeb: $55
	add  h                                           ; $5aec: $84
	rst  $38                                         ; $5aed: $ff
	add  b                                           ; $5aee: $80
	ld   a, a                                        ; $5aef: $7f
	add  b                                           ; $5af0: $80
	cp   a                                           ; $5af1: $bf
	add  b                                           ; $5af2: $80
	ld   a, a                                        ; $5af3: $7f
	add  b                                           ; $5af4: $80
	ld   a, [$0f01]                                  ; $5af5: $fa $01 $0f
	nop                                              ; $5af8: $00
	add  b                                           ; $5af9: $80
	ld   bc, $008a                                   ; $5afa: $01 $8a $00
	db   $10                                         ; $5afd: $10
	ld   b, d                                        ; $5afe: $42
	or   e                                           ; $5aff: $b3
	ld   [hl], b                                     ; $5b00: $70
	ld   [hl], e                                     ; $5b01: $73
	nop                                              ; $5b02: $00
	inc  bc                                          ; $5b03: $03
	ldh  a, [c]                                      ; $5b04: $f2
	di                                               ; $5b05: $f3
	ld   d, d                                        ; $5b06: $52
	ld   d, e                                        ; $5b07: $53
	nop                                              ; $5b08: $00
	inc  bc                                          ; $5b09: $03
	nop                                              ; $5b0a: $00
	inc  bc                                          ; $5b0b: $03
	ld   [bc], a                                     ; $5b0c: $02
	inc  bc                                          ; $5b0d: $03
	ld   l, a                                        ; $5b0e: $6f
	add  c                                           ; $5b0f: $81
	ldh  a, [rP1]                                    ; $5b10: $f0 $00
	rst  $38                                         ; $5b12: $ff
	add  c                                           ; $5b13: $81
	ldh  a, [$80]                                    ; $5b14: $f0 $80
	ldh  a, [c]                                      ; $5b16: $f2
	ld   [$f191], sp                                 ; $5b17: $08 $91 $f1
	ldh  a, [c]                                      ; $5b1a: $f2
	di                                               ; $5b1b: $f3
	sub  b                                           ; $5b1c: $90
	di                                               ; $5b1d: $f3
	or   d                                           ; $5b1e: $b2
	nop                                              ; $5b1f: $00
	dec  c                                           ; $5b20: $0d
	add  b                                           ; $5b21: $80

jr_07a_5b22:
	rra                                              ; $5b22: $1f
	inc  c                                           ; $5b23: $0c
	ccf                                              ; $5b24: $3f
	ld   d, d                                        ; $5b25: $52
	ld   e, a                                        ; $5b26: $5f
	and  b                                           ; $5b27: $a0
	cp   a                                           ; $5b28: $bf
	ldh  [rIE], a                                    ; $5b29: $e0 $ff
	xor  d                                           ; $5b2b: $aa
	rst  $38                                         ; $5b2c: $ff
	ld   a, a                                        ; $5b2d: $7f
	rst  $38                                         ; $5b2e: $ff
	scf                                              ; $5b2f: $37
	nop                                              ; $5b30: $00
	add  [hl]                                        ; $5b31: $86
	dec  b                                           ; $5b32: $05
	add  d                                           ; $5b33: $82
	ld   e, l                                        ; $5b34: $5d

jr_07a_5b35:
	ld   [bc], a                                     ; $5b35: $02
	db   $fc                                         ; $5b36: $fc
	db   $fd                                         ; $5b37: $fd
	inc  c                                           ; $5b38: $0c
	add  c                                           ; $5b39: $81
	nop                                              ; $5b3a: $00
	add  b                                           ; $5b3b: $80
	db   $10                                         ; $5b3c: $10
	rlca                                             ; $5b3d: $07
	jr   nc, jr_07a_5b60                             ; $5b3e: $30 $20

	ld   d, b                                        ; $5b40: $50
	ld   [hl], b                                     ; $5b41: $70
	or   b                                           ; $5b42: $b0
	ldh  a, [$60]                                    ; $5b43: $f0 $60
	ldh  [$80], a                                    ; $5b45: $e0 $80
	ret  nz                                          ; $5b47: $c0

	add  b                                           ; $5b48: $80
	add  b                                           ; $5b49: $80
	adc  h                                           ; $5b4a: $8c
	nop                                              ; $5b4b: $00
	ld   bc, $00ff                                   ; $5b4c: $01 $ff $00
	add  b                                           ; $5b4f: $80
	dec  b                                           ; $5b50: $05
	add  b                                           ; $5b51: $80
	ld   a, [hl+]                                    ; $5b52: $2a
	add  b                                           ; $5b53: $80
	ld   a, a                                        ; $5b54: $7f
	add  b                                           ; $5b55: $80
	cpl                                              ; $5b56: $2f
	add  b                                           ; $5b57: $80
	ld   e, l                                        ; $5b58: $5d
	add  b                                           ; $5b59: $80
	db   $eb                                         ; $5b5a: $eb
	add  b                                           ; $5b5b: $80
	ld   d, l                                        ; $5b5c: $55
	inc  c                                           ; $5b5d: $0c
	ei                                               ; $5b5e: $fb
	rlca                                             ; $5b5f: $07

jr_07a_5b60:
	inc  bc                                          ; $5b60: $03
	rlca                                             ; $5b61: $07
	inc  bc                                          ; $5b62: $03
	rrca                                             ; $5b63: $0f
	add  hl, bc                                      ; $5b64: $09
	rrca                                             ; $5b65: $0f
	ld   [$151f], sp                                 ; $5b66: $08 $1f $15
	rra                                              ; $5b69: $1f
	rrca                                             ; $5b6a: $0f
	add  c                                           ; $5b6b: $81
	ccf                                              ; $5b6c: $3f
	ld   [$ff7d], sp                                 ; $5b6d: $08 $7d $ff
	xor  b                                           ; $5b70: $a8
	rst  $38                                         ; $5b71: $ff
	xor  d                                           ; $5b72: $aa
	rst  $38                                         ; $5b73: $ff
	rrca                                             ; $5b74: $0f
	rst  $38                                         ; $5b75: $ff
	xor  a                                           ; $5b76: $af
	add  a                                           ; $5b77: $87
	rst  $38                                         ; $5b78: $ff
	ld   [bc], a                                     ; $5b79: $02
	cp   a                                           ; $5b7a: $bf
	rst  $38                                         ; $5b7b: $ff
	cp   a                                           ; $5b7c: $bf
	adc  c                                           ; $5b7d: $89
	rst  $38                                         ; $5b7e: $ff
	ld   bc, $02fd                                   ; $5b7f: $01 $fd $02
	add  b                                           ; $5b82: $80
	dec  d                                           ; $5b83: $15
	add  b                                           ; $5b84: $80
	xor  [hl]                                        ; $5b85: $ae
	add  b                                           ; $5b86: $80
	ld   e, a                                        ; $5b87: $5f
	add  b                                           ; $5b88: $80
	adc  a                                           ; $5b89: $8f
	add  b                                           ; $5b8a: $80
	ld   e, a                                        ; $5b8b: $5f
	add  d                                           ; $5b8c: $82
	rst  $38                                         ; $5b8d: $ff
	add  b                                           ; $5b8e: $80
	add  b                                           ; $5b8f: $80
	add  b                                           ; $5b90: $80
	ld   b, c                                        ; $5b91: $41
	add  b                                           ; $5b92: $80
	adc  d                                           ; $5b93: $8a
	add  b                                           ; $5b94: $80
	ld   d, a                                        ; $5b95: $57
	add  [hl]                                        ; $5b96: $86
	rst  $38                                         ; $5b97: $ff
	dec  b                                           ; $5b98: $05
	ld   bc, $faf9                                   ; $5b99: $01 $f9 $fa
	ldh  a, [c]                                      ; $5b9c: $f2
	ldh  [$f0], a                                    ; $5b9d: $e0 $f0
	add  b                                           ; $5b9f: $80
	ldh  [rSB], a                                    ; $5ba0: $e0 $01
	ret  nz                                          ; $5ba2: $c0

	ldh  [$80], a                                    ; $5ba3: $e0 $80
	ret  nz                                          ; $5ba5: $c0

	ld   bc, $c080                                   ; $5ba6: $01 $80 $c0
	add  b                                           ; $5ba9: $80
	add  b                                           ; $5baa: $80
	ld   bc, $5fdf                                   ; $5bab: $01 $df $5f
	add  b                                           ; $5bae: $80
	cp   a                                           ; $5baf: $bf
	add  b                                           ; $5bb0: $80
	dec  d                                           ; $5bb1: $15
	add  b                                           ; $5bb2: $80
	jr   z, jr_07a_5b35                              ; $5bb3: $28 $80

	ld   a, a                                        ; $5bb5: $7f
	add  b                                           ; $5bb6: $80
	cpl                                              ; $5bb7: $2f
	add  b                                           ; $5bb8: $80
	dec  b                                           ; $5bb9: $05
	add  b                                           ; $5bba: $80
	nop                                              ; $5bbb: $00
	add  b                                           ; $5bbc: $80
	ld   a, h                                        ; $5bbd: $7c
	add  b                                           ; $5bbe: $80
	xor  [hl]                                        ; $5bbf: $ae
	add  b                                           ; $5bc0: $80
	dec  e                                           ; $5bc1: $1d
	add  b                                           ; $5bc2: $80
	ld   c, $80                                      ; $5bc3: $0e $80
	ld   e, a                                        ; $5bc5: $5f
	add  b                                           ; $5bc6: $80
	cp   $80                                         ; $5bc7: $fe $80
	ld   a, l                                        ; $5bc9: $7d
	add  b                                           ; $5bca: $80
	xor  d                                           ; $5bcb: $aa
	ld   bc, $51ae                                   ; $5bcc: $01 $ae $51
	add  b                                           ; $5bcf: $80
	cp   a                                           ; $5bd0: $bf
	add  b                                           ; $5bd1: $80
	db   $fd                                         ; $5bd2: $fd
	add  b                                           ; $5bd3: $80
	and  b                                           ; $5bd4: $a0
	add  b                                           ; $5bd5: $80
	db   $fd                                         ; $5bd6: $fd
	add  h                                           ; $5bd7: $84
	rst  $38                                         ; $5bd8: $ff
	rlca                                             ; $5bd9: $07
	ld   b, $07                                      ; $5bda: $06 $07
	ld   a, [hl+]                                    ; $5bdc: $2a
	dec  hl                                          ; $5bdd: $2b
	ld   d, $17                                      ; $5bde: $16 $17
	cp   [hl]                                        ; $5be0: $be
	cp   a                                           ; $5be1: $bf
	add  b                                           ; $5be2: $80
	ld   d, l                                        ; $5be3: $55
	add  b                                           ; $5be4: $80
	ld   a, [bc]                                     ; $5be5: $0a
	add  d                                           ; $5be6: $82
	nop                                              ; $5be7: $00
	dec  c                                           ; $5be8: $0d
	db   $e4                                         ; $5be9: $e4
	push af                                          ; $5bea: $f5
	ld   h, d                                        ; $5beb: $62
	di                                               ; $5bec: $f3
	ld   h, b                                        ; $5bed: $60
	pop  af                                          ; $5bee: $f1
	ld   h, d                                        ; $5bef: $62
	di                                               ; $5bf0: $f3
	ld   h, [hl]                                     ; $5bf1: $66
	rst  $30                                         ; $5bf2: $f7
	or   b                                           ; $5bf3: $b0
	and  e                                           ; $5bf4: $a3
	ld   d, a                                        ; $5bf5: $57
	ld   d, l                                        ; $5bf6: $55
	add  b                                           ; $5bf7: $80
	ld   [bc], a                                     ; $5bf8: $02
	ld   b, $b5                                      ; $5bf9: $06 $b5
	rst  $38                                         ; $5bfb: $ff
	ld   a, a                                        ; $5bfc: $7f
	rst  $38                                         ; $5bfd: $ff
	ld   [$eaff], a                                  ; $5bfe: $ea $ff $ea
	add  c                                           ; $5c01: $81
	rst  $38                                         ; $5c02: $ff
	ld   de, $ffbd                                   ; $5c03: $11 $bd $ff
	scf                                              ; $5c06: $37
	rst  $38                                         ; $5c07: $ff
	cp   d                                           ; $5c08: $ba
	ld   a, [$fd05]                                  ; $5c09: $fa $05 $fd
	push af                                          ; $5c0c: $f5
	db   $fd                                         ; $5c0d: $fd
	db   $ec                                         ; $5c0e: $ec
	db   $fc                                         ; $5c0f: $fc
	ret  c                                           ; $5c10: $d8

	ld   hl, sp-$4c                                  ; $5c11: $f8 $b4
	db   $f4                                         ; $5c13: $f4
	ld   h, b                                        ; $5c14: $60
	ldh  [$80], a                                    ; $5c15: $e0 $80
	ld   d, b                                        ; $5c17: $50
	add  b                                           ; $5c18: $80
	xor  b                                           ; $5c19: $a8
	add  b                                           ; $5c1a: $80
	add  b                                           ; $5c1b: $80
	add  b                                           ; $5c1c: $80
	nop                                              ; $5c1d: $00
	dec  b                                           ; $5c1e: $05
	add  hl, bc                                      ; $5c1f: $09
	rrca                                             ; $5c20: $0f
	ld   d, $1f                                      ; $5c21: $16 $1f
	rrca                                             ; $5c23: $0f
	rra                                              ; $5c24: $1f
	add  b                                           ; $5c25: $80
	ccf                                              ; $5c26: $3f
	inc  b                                           ; $5c27: $04
	dec  d                                           ; $5c28: $15
	ccf                                              ; $5c29: $3f
	jr   nz, jr_07a_5c6b                             ; $5c2a: $20 $3f

	ld   a, [hl+]                                    ; $5c2c: $2a
	add  c                                           ; $5c2d: $81
	nop                                              ; $5c2e: $00
	add  d                                           ; $5c2f: $82
	add  b                                           ; $5c30: $80
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	add  c                                           ; $5c33: $81
	add  b                                           ; $5c34: $80
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	add  c                                           ; $5c37: $81
	add  b                                           ; $5c38: $80
	add  [hl]                                        ; $5c39: $86
	nop                                              ; $5c3a: $00
	add  h                                           ; $5c3b: $84
	ld   bc, $0380                                   ; $5c3c: $01 $80 $03
	nop                                              ; $5c3f: $00
	ccf                                              ; $5c40: $3f
	add  c                                           ; $5c41: $81
	ld   a, a                                        ; $5c42: $7f
	inc  b                                           ; $5c43: $04
	cp   a                                           ; $5c44: $bf
	rst  $38                                         ; $5c45: $ff
	ld   a, a                                        ; $5c46: $7f
	rst  $38                                         ; $5c47: $ff
	ld   a, a                                        ; $5c48: $7f
	add  c                                           ; $5c49: $81
	rst  $38                                         ; $5c4a: $ff
	add  b                                           ; $5c4b: $80
	rst  JumpTable                                         ; $5c4c: $df
	add  b                                           ; $5c4d: $80
	xor  d                                           ; $5c4e: $aa
	adc  h                                           ; $5c4f: $8c
	rst  $38                                         ; $5c50: $ff
	add  b                                           ; $5c51: $80
	ld   [$ff8a], a                                  ; $5c52: $ea $8a $ff
	add  b                                           ; $5c55: $80
	rst  $30                                         ; $5c56: $f7
	add  b                                           ; $5c57: $80
	ld   a, [hl+]                                    ; $5c58: $2a
	adc  h                                           ; $5c59: $8c
	rst  $38                                         ; $5c5a: $ff
	add  b                                           ; $5c5b: $80
	xor  a                                           ; $5c5c: $af
	add  h                                           ; $5c5d: $84
	rst  $38                                         ; $5c5e: $ff
	ld   bc, $fffe                                   ; $5c5f: $01 $fe $ff
	add  b                                           ; $5c62: $80
	cp   $80                                         ; $5c63: $fe $80
	rst  $38                                         ; $5c65: $ff
	nop                                              ; $5c66: $00
	ld   sp, hl                                      ; $5c67: $f9
	add  c                                           ; $5c68: $81
	ei                                               ; $5c69: $fb
	ld   [bc], a                                     ; $5c6a: $02

jr_07a_5c6b:
	ld   a, h                                        ; $5c6b: $7c
	add  b                                           ; $5c6c: $80
	nop                                              ; $5c6d: $00
	add  d                                           ; $5c6e: $82
	inc  c                                           ; $5c6f: $0c
	add  b                                           ; $5c70: $80
	ld   l, h                                        ; $5c71: $6c
	nop                                              ; $5c72: $00
	ld   l, l                                        ; $5c73: $6d
	add  b                                           ; $5c74: $80
	db   $ed                                         ; $5c75: $ed
	ld   [bc], a                                     ; $5c76: $02
	db   $fd                                         ; $5c77: $fd
	rst  $38                                         ; $5c78: $ff
	ld   l, a                                        ; $5c79: $6f
	add  b                                           ; $5c7a: $80
	rst  $38                                         ; $5c7b: $ff
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	add  d                                           ; $5c7e: $82
	rst  $28                                         ; $5c7f: $ef
	nop                                              ; $5c80: $00
	and  b                                           ; $5c81: $a0
	add  b                                           ; $5c82: $80
	rst  $28                                         ; $5c83: $ef
	inc  bc                                          ; $5c84: $03
	rst  $38                                         ; $5c85: $ff
	rst  JumpTable                                         ; $5c86: $df
	rst  $38                                         ; $5c87: $ff
	ld   a, a                                        ; $5c88: $7f
	add  d                                           ; $5c89: $82
	rst  $38                                         ; $5c8a: $ff
	add  c                                           ; $5c8b: $81
	nop                                              ; $5c8c: $00
	add  c                                           ; $5c8d: $81
	ld   c, $05                                      ; $5c8e: $0e $05
	adc  $dc                                         ; $5c90: $ce $dc
	rst  $38                                         ; $5c92: $ff
	rst  $28                                         ; $5c93: $ef
	rst  $38                                         ; $5c94: $ff
	rst  $28                                         ; $5c95: $ef
	add  c                                           ; $5c96: $81
	rst  $38                                         ; $5c97: $ff
	ld   bc, $1f03                                   ; $5c98: $01 $03 $1f
	add  b                                           ; $5c9b: $80
	adc  e                                           ; $5c9c: $8b
	add  b                                           ; $5c9d: $80
	nop                                              ; $5c9e: $00
	add  b                                           ; $5c9f: $80
	ld   [bc], a                                     ; $5ca0: $02
	add  b                                           ; $5ca1: $80
	ld   d, c                                        ; $5ca2: $51
	add  b                                           ; $5ca3: $80
	add  sp, -$80                                    ; $5ca4: $e8 $80
	db   $fc                                         ; $5ca6: $fc
	add  b                                           ; $5ca7: $80
	ld   a, [$ff80]                                  ; $5ca8: $fa $80 $ff
	inc  bc                                          ; $5cab: $03
	cp   $ff                                         ; $5cac: $fe $ff
	ld   e, [hl]                                     ; $5cae: $5e
	ld   e, a                                        ; $5caf: $5f
	add  b                                           ; $5cb0: $80
	rst  $38                                         ; $5cb1: $ff
	add  b                                           ; $5cb2: $80
	ld   a, a                                        ; $5cb3: $7f
	add  b                                           ; $5cb4: $80
	cpl                                              ; $5cb5: $2f
	add  b                                           ; $5cb6: $80
	ld   bc, $8f80                                   ; $5cb7: $01 $80 $8f
	add  b                                           ; $5cba: $80
	ld   d, c                                        ; $5cbb: $51
	add  b                                           ; $5cbc: $80
	nop                                              ; $5cbd: $00
	add  b                                           ; $5cbe: $80
	ld   de, $0088                                   ; $5cbf: $11 $88 $00
	add  b                                           ; $5cc2: $80
	ld   d, l                                        ; $5cc3: $55
	add  b                                           ; $5cc4: $80
	add  b                                           ; $5cc5: $80
	add  b                                           ; $5cc6: $80
	ld   d, b                                        ; $5cc7: $50
	sbc  b                                           ; $5cc8: $98
	nop                                              ; $5cc9: $00
	inc  bc                                          ; $5cca: $03
	ld   a, e                                        ; $5ccb: $7b
	ld   a, a                                        ; $5ccc: $7f
	dec  hl                                          ; $5ccd: $2b
	cpl                                              ; $5cce: $2f
	add  b                                           ; $5ccf: $80
	ld   d, [hl]                                     ; $5cd0: $56
	add  b                                           ; $5cd1: $80
	inc  l                                           ; $5cd2: $2c
	add  [hl]                                        ; $5cd3: $86
	nop                                              ; $5cd4: $00
	add  hl, bc                                      ; $5cd5: $09
	ld   d, c                                        ; $5cd6: $51
	cp   $2d                                         ; $5cd7: $fe $2d
	db   $fd                                         ; $5cd9: $fd
	ld   l, b                                        ; $5cda: $68
	add  sp, $54                                     ; $5cdb: $e8 $54
	call nc, $e060                                   ; $5cdd: $d4 $60 $e0
	add  b                                           ; $5ce0: $80
	ret  nz                                          ; $5ce1: $c0

	add  b                                           ; $5ce2: $80
	and  b                                           ; $5ce3: $a0
	add  b                                           ; $5ce4: $80
	call nz, $fc01                                   ; $5ce5: $c4 $01 $fc
	inc  bc                                          ; $5ce8: $03
	add  b                                           ; $5ce9: $80
	ld   [bc], a                                     ; $5cea: $02
	add  b                                           ; $5ceb: $80
	nop                                              ; $5cec: $00
	add  b                                           ; $5ced: $80
	ld   bc, $0086                                   ; $5cee: $01 $86 $00
	add  b                                           ; $5cf1: $80
	pop  bc                                          ; $5cf2: $c1
	add  b                                           ; $5cf3: $80
	add  d                                           ; $5cf4: $82
	add  b                                           ; $5cf5: $80
	ld   b, b                                        ; $5cf6: $40
	adc  b                                           ; $5cf7: $88
	nop                                              ; $5cf8: $00
	add  b                                           ; $5cf9: $80
	ld   d, b                                        ; $5cfa: $50
	add  b                                           ; $5cfb: $80
	add  b                                           ; $5cfc: $80
	add  b                                           ; $5cfd: $80
	ld   e, l                                        ; $5cfe: $5d
	adc  b                                           ; $5cff: $88
	nop                                              ; $5d00: $00
	add  b                                           ; $5d01: $80
	rla                                              ; $5d02: $17
	add  b                                           ; $5d03: $80
	and  c                                           ; $5d04: $a1
	add  b                                           ; $5d05: $80
	ld   a, a                                        ; $5d06: $7f
	add  b                                           ; $5d07: $80
	cp   l                                           ; $5d08: $bd
	add  b                                           ; $5d09: $80
	ld   a, [bc]                                     ; $5d0a: $0a
	add  h                                           ; $5d0b: $84
	nop                                              ; $5d0c: $00
	add  d                                           ; $5d0d: $82
	rst  $38                                         ; $5d0e: $ff
	add  b                                           ; $5d0f: $80
	ld   a, [$0480]                                  ; $5d10: $fa $80 $04
	add  b                                           ; $5d13: $80
	ldh  [$80], a                                    ; $5d14: $e0 $80
	nop                                              ; $5d16: $00
	add  b                                           ; $5d17: $80
	dec  hl                                          ; $5d18: $2b
	add  b                                           ; $5d19: $80
	ld   bc, $e801                                   ; $5d1a: $01 $01 $e8
	db   $eb                                         ; $5d1d: $eb
	add  b                                           ; $5d1e: $80
	inc  bc                                          ; $5d1f: $03
	inc  bc                                          ; $5d20: $03
	and  l                                           ; $5d21: $a5
	and  a                                           ; $5d22: $a7
	ld   d, $17                                      ; $5d23: $16 $17
	add  b                                           ; $5d25: $80
	rlca                                             ; $5d26: $07
	add  b                                           ; $5d27: $80
	rrca                                             ; $5d28: $0f
	add  d                                           ; $5d29: $82
	rst  $38                                         ; $5d2a: $ff
	ld   bc, $0af5                                   ; $5d2b: $01 $f5 $0a
	add  b                                           ; $5d2e: $80
	ld   d, c                                        ; $5d2f: $51
	add  b                                           ; $5d30: $80
	xor  d                                           ; $5d31: $aa
	add  b                                           ; $5d32: $80
	ld   [hl], l                                     ; $5d33: $75
	add  b                                           ; $5d34: $80
	xor  $80                                         ; $5d35: $ee $80
	push af                                          ; $5d37: $f5
	add  b                                           ; $5d38: $80
	cp   $80                                         ; $5d39: $fe $80
	rst  $38                                         ; $5d3b: $ff
	add  d                                           ; $5d3c: $82
	nop                                              ; $5d3d: $00
	add  b                                           ; $5d3e: $80
	xor  d                                           ; $5d3f: $aa
	add  b                                           ; $5d40: $80
	db   $dd                                         ; $5d41: $dd
	add  b                                           ; $5d42: $80
	cp   [hl]                                        ; $5d43: $be
	add  b                                           ; $5d44: $80
	ld   [hl], l                                     ; $5d45: $75
	add  b                                           ; $5d46: $80
	ld   l, $80                                      ; $5d47: $2e $80
	ld   d, l                                        ; $5d49: $55
	nop                                              ; $5d4a: $00
	nop                                              ; $5d4b: $00
	adc  e                                           ; $5d4c: $8b

jr_07a_5d4d:
	rst  $38                                         ; $5d4d: $ff
	ld   [bc], a                                     ; $5d4e: $02
	ld   a, [$faff]                                  ; $5d4f: $fa $ff $fa
	add  c                                           ; $5d52: $81
	rrca                                             ; $5d53: $0f
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	add  c                                           ; $5d56: $81
	rrca                                             ; $5d57: $0f
	add  b                                           ; $5d58: $80
	dec  c                                           ; $5d59: $0d
	add  b                                           ; $5d5a: $80
	ld   c, $80                                      ; $5d5b: $0e $80
	dec  b                                           ; $5d5d: $05
	add  b                                           ; $5d5e: $80
	ld   [rRAMG], sp                                 ; $5d5f: $08 $00 $00
	add  c                                           ; $5d62: $81
	rst  $38                                         ; $5d63: $ff
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	add  c                                           ; $5d66: $81
	rst  $38                                         ; $5d67: $ff
	add  b                                           ; $5d68: $80
	rst  $30                                         ; $5d69: $f7
	add  b                                           ; $5d6a: $80
	and  d                                           ; $5d6b: $a2
	add  b                                           ; $5d6c: $80
	dec  d                                           ; $5d6d: $15
	add  c                                           ; $5d6e: $81
	nop                                              ; $5d6f: $00
	add  c                                           ; $5d70: $81
	rst  $38                                         ; $5d71: $ff
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	add  e                                           ; $5d74: $83
	rst  $38                                         ; $5d75: $ff
	add  b                                           ; $5d76: $80
	cp   $80                                         ; $5d77: $fe $80
	ld   d, h                                        ; $5d79: $54
	add  b                                           ; $5d7a: $80
	ld   a, [bc]                                     ; $5d7b: $0a
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	add  c                                           ; $5d7e: $81
	rst  $38                                         ; $5d7f: $ff
	inc  b                                           ; $5d80: $04
	nop                                              ; $5d81: $00
	rst  $38                                         ; $5d82: $ff
	cp   $ff                                         ; $5d83: $fe $ff
	cp   $81                                         ; $5d85: $fe $81
	rst  $38                                         ; $5d87: $ff
	add  b                                           ; $5d88: $80
	ld   e, a                                        ; $5d89: $5f
	add  b                                           ; $5d8a: $80
	xor  d                                           ; $5d8b: $aa
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	add  c                                           ; $5d8e: $81
	rst  $38                                         ; $5d8f: $ff
	inc  c                                           ; $5d90: $0c
	cp   a                                           ; $5d91: $bf
	rst  $38                                         ; $5d92: $ff
	rla                                              ; $5d93: $17
	rst  $38                                         ; $5d94: $ff
	and  d                                           ; $5d95: $a2
	rst  $38                                         ; $5d96: $ff
	ldh  a, [c]                                      ; $5d97: $f2
	rst  $38                                         ; $5d98: $ff
	ld   a, d                                        ; $5d99: $7a
	ld   a, a                                        ; $5d9a: $7f
	dec  l                                           ; $5d9b: $2d
	cpl                                              ; $5d9c: $2f
	rrca                                             ; $5d9d: $0f
	add  e                                           ; $5d9e: $83
	ldh  a, [$0a]                                    ; $5d9f: $f0 $0a
	ld   [hl], b                                     ; $5da1: $70
	ldh  a, [$38]                                    ; $5da2: $f0 $38
	ld   hl, sp+$1f                                  ; $5da4: $f8 $1f
	rst  $38                                         ; $5da6: $ff
	sbc  e                                           ; $5da7: $9b
	rst  $38                                         ; $5da8: $ff
	pop  de                                          ; $5da9: $d1
	rst  $38                                         ; $5daa: $ff
	ld   [$0087], a                                  ; $5dab: $ea $87 $00
	add  d                                           ; $5dae: $82
	rst  $38                                         ; $5daf: $ff
	ld   [bc], a                                     ; $5db0: $02
	ld   a, a                                        ; $5db1: $7f
	rst  $38                                         ; $5db2: $ff
	add  b                                           ; $5db3: $80
	add  a                                           ; $5db4: $87
	nop                                              ; $5db5: $00
	add  b                                           ; $5db6: $80
	rst  $38                                         ; $5db7: $ff
	add  b                                           ; $5db8: $80
	ld   a, [$f480]                                  ; $5db9: $fa $80 $f4
	adc  b                                           ; $5dbc: $88
	nop                                              ; $5dbd: $00
	add  b                                           ; $5dbe: $80
	db   $f4                                         ; $5dbf: $f4
	add  b                                           ; $5dc0: $80
	xor  b                                           ; $5dc1: $a8
	add  b                                           ; $5dc2: $80
	ld   b, b                                        ; $5dc3: $40
	nop                                              ; $5dc4: $00
	rst  $38                                         ; $5dc5: $ff
	add  e                                           ; $5dc6: $83
	nop                                              ; $5dc7: $00
	add  b                                           ; $5dc8: $80
	ld   b, b                                        ; $5dc9: $40
	add  b                                           ; $5dca: $80
	jr   nz, jr_07a_5d4d                             ; $5dcb: $20 $80

	ld   d, b                                        ; $5dcd: $50
	add  b                                           ; $5dce: $80
	and  b                                           ; $5dcf: $a0
	add  b                                           ; $5dd0: $80
	ldh  a, [rP1]                                    ; $5dd1: $f0 $00
	rst  $38                                         ; $5dd3: $ff
	add  a                                           ; $5dd4: $87
	nop                                              ; $5dd5: $00
	add  b                                           ; $5dd6: $80
	ld   e, l                                        ; $5dd7: $5d
	add  b                                           ; $5dd8: $80
	ld   [bc], a                                     ; $5dd9: $02
	add  b                                           ; $5dda: $80
	rlca                                             ; $5ddb: $07
	adc  b                                           ; $5ddc: $88
	nop                                              ; $5ddd: $00
	add  b                                           ; $5dde: $80
	ld   e, a                                        ; $5ddf: $5f
	add  b                                           ; $5de0: $80
	cp   a                                           ; $5de1: $bf
	add  b                                           ; $5de2: $80
	rst  $38                                         ; $5de3: $ff
	adc  b                                           ; $5de4: $88
	nop                                              ; $5de5: $00
	ld   a, [bc]                                     ; $5de6: $0a
	cp   $ff                                         ; $5de7: $fe $ff
	db   $fd                                         ; $5de9: $fd
	rst  $38                                         ; $5dea: $ff
	ld   sp, hl                                      ; $5deb: $f9
	db   $fd                                         ; $5dec: $fd
	ld   d, d                                        ; $5ded: $52
	ld   a, a                                        ; $5dee: $7f
	ld   [$5d7f], sp                                 ; $5def: $08 $7f $5d
	add  c                                           ; $5df2: $81
	ld   a, a                                        ; $5df3: $7f
	add  b                                           ; $5df4: $80
	db   $eb                                         ; $5df5: $eb
	ld   bc, $55d5                                   ; $5df6: $01 $d5 $55
	add  b                                           ; $5df9: $80
	add  d                                           ; $5dfa: $82
	add  b                                           ; $5dfb: $80
	nop                                              ; $5dfc: $00
	rlca                                             ; $5dfd: $07
	ld   a, [hl+]                                    ; $5dfe: $2a
	rst  $38                                         ; $5dff: $ff
	adc  b                                           ; $5e00: $88
	rst  $38                                         ; $5e01: $ff
	add  hl, bc                                      ; $5e02: $09
	rst  $38                                         ; $5e03: $ff
	dec  hl                                          ; $5e04: $2b
	ld   a, a                                        ; $5e05: $7f
	add  b                                           ; $5e06: $80
	cp   a                                           ; $5e07: $bf
	add  b                                           ; $5e08: $80
	ld   [hl], l                                     ; $5e09: $75
	add  b                                           ; $5e0a: $80
	xor  d                                           ; $5e0b: $aa
	add  b                                           ; $5e0c: $80
	nop                                              ; $5e0d: $00
	dec  b                                           ; $5e0e: $05
	ld   a, [hl+]                                    ; $5e0f: $2a
	rst  $38                                         ; $5e10: $ff
	adc  d                                           ; $5e11: $8a
	rst  $38                                         ; $5e12: $ff
	ld   e, a                                        ; $5e13: $5f
	rst  $38                                         ; $5e14: $ff
	add  b                                           ; $5e15: $80
	ld   d, a                                        ; $5e16: $57
	add  b                                           ; $5e17: $80
	adc  d                                           ; $5e18: $8a
	add  b                                           ; $5e19: $80
	ld   d, b                                        ; $5e1a: $50
	add  d                                           ; $5e1b: $82
	nop                                              ; $5e1c: $00
	ld   e, [hl]                                     ; $5e1d: $5e
	ld   [bc], a                                     ; $5e1e: $02
	add  [hl]                                        ; $5e1f: $86
	nop                                              ; $5e20: $00
	add  l                                           ; $5e21: $85
	rrca                                             ; $5e22: $0f
	ld   bc, $0c03                                   ; $5e23: $01 $03 $0c
	add  l                                           ; $5e26: $85
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	rst  $38                                         ; $5e29: $ff
	add  b                                           ; $5e2a: $80
	ldh  a, [$80]                                    ; $5e2b: $f0 $80
	db   $fc                                         ; $5e2d: $fc
	add  b                                           ; $5e2e: $80
	cp   $00                                         ; $5e2f: $fe $00
	rst  $38                                         ; $5e31: $ff
	add  [hl]                                        ; $5e32: $86
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	rst  $38                                         ; $5e35: $ff
	add  b                                           ; $5e36: $80
	sbc  a                                           ; $5e37: $9f
	add  d                                           ; $5e38: $82
	ccf                                              ; $5e39: $3f
	ld   bc, $708f                                   ; $5e3a: $01 $8f $70
	add  l                                           ; $5e3d: $85
	nop                                              ; $5e3e: $00
	nop                                              ; $5e3f: $00
	rst  $38                                         ; $5e40: $ff
	add  b                                           ; $5e41: $80
	ldh  a, [$80]                                    ; $5e42: $f0 $80
	db   $e4                                         ; $5e44: $e4
	add  b                                           ; $5e45: $80
	ret                                              ; $5e46: $c9


	ld   bc, $6c93                                   ; $5e47: $01 $93 $6c
	add  l                                           ; $5e4a: $85
	nop                                              ; $5e4b: $00
	ld   bc, $10ef                                   ; $5e4c: $01 $ef $10
	add  b                                           ; $5e4f: $80
	ld   [$0404], sp                                 ; $5e50: $08 $04 $04
	add  h                                           ; $5e53: $84
	add  d                                           ; $5e54: $82
	jp   nz, $853f                                   ; $5e55: $c2 $3f $85

	nop                                              ; $5e58: $00
	ld   bc, $05fa                                   ; $5e59: $01 $fa $05
	add  b                                           ; $5e5c: $80
	nop                                              ; $5e5d: $00
	add  b                                           ; $5e5e: $80
	ld   bc, $0080                                   ; $5e5f: $01 $80 $00
	nop                                              ; $5e62: $00
	rst  $38                                         ; $5e63: $ff
	add  l                                           ; $5e64: $85
	nop                                              ; $5e65: $00
	ld   bc, $55aa                                   ; $5e66: $01 $aa $55
	add  b                                           ; $5e69: $80
	xor  d                                           ; $5e6a: $aa
	add  b                                           ; $5e6b: $80
	ld   d, l                                        ; $5e6c: $55
	add  b                                           ; $5e6d: $80
	ld   [bc], a                                     ; $5e6e: $02
	nop                                              ; $5e6f: $00
	rst  $38                                         ; $5e70: $ff
	add  l                                           ; $5e71: $85
	nop                                              ; $5e72: $00
	ld   bc, $55aa                                   ; $5e73: $01 $aa $55
	add  b                                           ; $5e76: $80
	xor  d                                           ; $5e77: $aa
	add  b                                           ; $5e78: $80
	ld   d, l                                        ; $5e79: $55
	add  b                                           ; $5e7a: $80
	xor  e                                           ; $5e7b: $ab
	nop                                              ; $5e7c: $00
	rst  $38                                         ; $5e7d: $ff
	add  l                                           ; $5e7e: $85
	nop                                              ; $5e7f: $00
	ld   bc, $55aa                                   ; $5e80: $01 $aa $55
	add  b                                           ; $5e83: $80
	xor  e                                           ; $5e84: $ab
	add  b                                           ; $5e85: $80
	ld   a, a                                        ; $5e86: $7f
	add  c                                           ; $5e87: $81
	rst  $38                                         ; $5e88: $ff
	add  l                                           ; $5e89: $85
	nop                                              ; $5e8a: $00
	ld   bc, $56a9                                   ; $5e8b: $01 $a9 $56
	add  b                                           ; $5e8e: $80
	cp   $82                                         ; $5e8f: $fe $82
	db   $fd                                         ; $5e91: $fd
	nop                                              ; $5e92: $00
	rst  $38                                         ; $5e93: $ff
	add  l                                           ; $5e94: $85
	nop                                              ; $5e95: $00
	ld   bc, $b54a                                   ; $5e96: $01 $4a $b5
	add  b                                           ; $5e99: $80
	cp   a                                           ; $5e9a: $bf
	add  b                                           ; $5e9b: $80
	ld   e, a                                        ; $5e9c: $5f
	add  b                                           ; $5e9d: $80
	ld   l, a                                        ; $5e9e: $6f
	nop                                              ; $5e9f: $00
	rst  $38                                         ; $5ea0: $ff
	add  l                                           ; $5ea1: $85
	nop                                              ; $5ea2: $00
	ld   bc, $55aa                                   ; $5ea3: $01 $aa $55
	add  b                                           ; $5ea6: $80
	ld   [$ff83], a                                  ; $5ea7: $ea $83 $ff
	add  l                                           ; $5eaa: $85
	nop                                              ; $5eab: $00
	ld   bc, $55aa                                   ; $5eac: $01 $aa $55
	add  b                                           ; $5eaf: $80
	xor  d                                           ; $5eb0: $aa
	add  b                                           ; $5eb1: $80
	ld   d, l                                        ; $5eb2: $55
	add  b                                           ; $5eb3: $80
	ld   [$ff00], a                                  ; $5eb4: $ea $00 $ff
	add  l                                           ; $5eb7: $85
	nop                                              ; $5eb8: $00
	ld   bc, $55aa                                   ; $5eb9: $01 $aa $55
	add  b                                           ; $5ebc: $80
	xor  d                                           ; $5ebd: $aa
	add  b                                           ; $5ebe: $80
	ld   b, b                                        ; $5ebf: $40
	add  b                                           ; $5ec0: $80
	xor  c                                           ; $5ec1: $a9
	nop                                              ; $5ec2: $00
	rst  $38                                         ; $5ec3: $ff
	add  l                                           ; $5ec4: $85
	nop                                              ; $5ec5: $00
	ld   bc, $40bf                                   ; $5ec6: $01 $bf $40
	add  b                                           ; $5ec9: $80
	and  b                                           ; $5eca: $a0
	add  b                                           ; $5ecb: $80
	nop                                              ; $5ecc: $00
	add  b                                           ; $5ecd: $80
	ld   b, b                                        ; $5ece: $40
	nop                                              ; $5ecf: $00
	rst  $38                                         ; $5ed0: $ff
	add  l                                           ; $5ed1: $85
	nop                                              ; $5ed2: $00
	ld   bc, $08f7                                   ; $5ed3: $01 $f7 $08
	add  b                                           ; $5ed6: $80
	db   $10                                         ; $5ed7: $10
	add  b                                           ; $5ed8: $80
	jr   nz, @-$7e                                   ; $5ed9: $20 $80

	ld   b, b                                        ; $5edb: $40
	nop                                              ; $5edc: $00
	ldh  a, [$80]                                    ; $5edd: $f0 $80
	nop                                              ; $5edf: $00
	add  b                                           ; $5ee0: $80
	inc  c                                           ; $5ee1: $0c
	adc  c                                           ; $5ee2: $89
	rrca                                             ; $5ee3: $0f
	nop                                              ; $5ee4: $00
	rst  $38                                         ; $5ee5: $ff
	add  b                                           ; $5ee6: $80
	ld   a, a                                        ; $5ee7: $7f
	add  b                                           ; $5ee8: $80
	rra                                              ; $5ee9: $1f
	add  b                                           ; $5eea: $80
	add  a                                           ; $5eeb: $87
	add  b                                           ; $5eec: $80
	pop  hl                                          ; $5eed: $e1
	add  [hl]                                        ; $5eee: $86
	ld   hl, sp-$80                                  ; $5eef: $f8 $80
	db   $e3                                         ; $5ef1: $e3
	add  b                                           ; $5ef2: $80
	ld   hl, sp-$80                                  ; $5ef3: $f8 $80
	db   $fc                                         ; $5ef5: $fc
	add  b                                           ; $5ef6: $80
	rst  $38                                         ; $5ef7: $ff
	add  b                                           ; $5ef8: $80
	ccf                                              ; $5ef9: $3f
	add  b                                           ; $5efa: $80
	rrca                                             ; $5efb: $0f
	add  b                                           ; $5efc: $80
	add  e                                           ; $5efd: $83
	add  b                                           ; $5efe: $80
	and  b                                           ; $5eff: $a0
	add  b                                           ; $5f00: $80
	daa                                              ; $5f01: $27
	add  b                                           ; $5f02: $80
	ld   c, a                                        ; $5f03: $4f
	add  b                                           ; $5f04: $80
	rra                                              ; $5f05: $1f
	add  b                                           ; $5f06: $80
	ld   a, $80                                      ; $5f07: $3e $80
	adc  h                                           ; $5f09: $8c
	add  b                                           ; $5f0a: $80
	pop  hl                                          ; $5f0b: $e1
	add  b                                           ; $5f0c: $80
	ld   hl, sp+$03                                  ; $5f0d: $f8 $03
	cp   $ff                                         ; $5f0f: $fe $ff
	pop  bc                                          ; $5f11: $c1
	ret  nz                                          ; $5f12: $c0

	add  b                                           ; $5f13: $80
	and  b                                           ; $5f14: $a0
	add  b                                           ; $5f15: $80
	ld   c, b                                        ; $5f16: $48
	add  b                                           ; $5f17: $80
	call c, $be80                                    ; $5f18: $dc $80 $be
	ld   bc, $3f3e                                   ; $5f1b: $01 $3e $3f
	add  b                                           ; $5f1e: $80
	ld   a, l                                        ; $5f1f: $7d
	ld   [bc], a                                     ; $5f20: $02
	dec  a                                           ; $5f21: $3d
	inc  a                                           ; $5f22: $3c
	nop                                              ; $5f23: $00
	add  b                                           ; $5f24: $80
	rst  $38                                         ; $5f25: $ff
	add  h                                           ; $5f26: $84
	nop                                              ; $5f27: $00
	ld   [bc], a                                     ; $5f28: $02
	add  b                                           ; $5f29: $80
	cp   a                                           ; $5f2a: $bf
	ccf                                              ; $5f2b: $3f
	add  c                                           ; $5f2c: $81
	ld   a, a                                        ; $5f2d: $7f
	ld   bc, $552a                                   ; $5f2e: $01 $2a $55
	add  b                                           ; $5f31: $80
	rst  $38                                         ; $5f32: $ff
	add  l                                           ; $5f33: $85
	nop                                              ; $5f34: $00
	add  d                                           ; $5f35: $82
	xor  a                                           ; $5f36: $af
	ld   [bc], a                                     ; $5f37: $02
	rst  $10                                         ; $5f38: $d7
	add  d                                           ; $5f39: $82
	ld   d, l                                        ; $5f3a: $55
	add  b                                           ; $5f3b: $80
	rst  $38                                         ; $5f3c: $ff
	add  l                                           ; $5f3d: $85
	nop                                              ; $5f3e: $00
	add  b                                           ; $5f3f: $80
	rst  ToBoot                                         ; $5f40: $c7
	add  c                                           ; $5f41: $81
	db   $eb                                         ; $5f42: $eb
	ld   bc, $7f94                                   ; $5f43: $01 $94 $7f
	add  b                                           ; $5f46: $80
	rst  $38                                         ; $5f47: $ff
	add  l                                           ; $5f48: $85
	nop                                              ; $5f49: $00
	add  d                                           ; $5f4a: $82
	ld   a, [$fd02]                                  ; $5f4b: $fa $02 $fd
	ld   c, $f3                                      ; $5f4e: $0e $f3
	add  b                                           ; $5f50: $80
	xor  b                                           ; $5f51: $a8
	ld   [bc], a                                     ; $5f52: $02
	db   $10                                         ; $5f53: $10
	inc  de                                          ; $5f54: $13
	inc  bc                                          ; $5f55: $03
	add  b                                           ; $5f56: $80
	rrca                                             ; $5f57: $0f
	nop                                              ; $5f58: $00
	ld   e, a                                        ; $5f59: $5f
	add  b                                           ; $5f5a: $80
	rst  JumpTable                                         ; $5f5b: $df

jr_07a_5f5c:
	dec  b                                           ; $5f5c: $05
	call c, $d0df                                    ; $5f5d: $dc $df $d0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f60: $cf
	db   $f4                                         ; $5f61: $f4
	or   a                                           ; $5f62: $b7
	add  b                                           ; $5f63: $80
	ld   [bc], a                                     ; $5f64: $02
	nop                                              ; $5f65: $00
	nop                                              ; $5f66: $00
	add  b                                           ; $5f67: $80
	cp   b                                           ; $5f68: $b8
	add  b                                           ; $5f69: $80
	cp   h                                           ; $5f6a: $bc
	add  c                                           ; $5f6b: $81
	cp   [hl]                                        ; $5f6c: $be
	inc  b                                           ; $5f6d: $04
	and  [hl]                                        ; $5f6e: $a6
	ld   e, $02                                      ; $5f6f: $1e $02
	inc  e                                           ; $5f71: $1c
	rst  $20                                         ; $5f72: $e7
	add  c                                           ; $5f73: $81
	rst  $38                                         ; $5f74: $ff
	add  d                                           ; $5f75: $82
	nop                                              ; $5f76: $00
	add  b                                           ; $5f77: $80
	add  b                                           ; $5f78: $80
	nop                                              ; $5f79: $00
	ret  nz                                          ; $5f7a: $c0

	add  b                                           ; $5f7b: $80
	rst  $10                                         ; $5f7c: $d7
	add  c                                           ; $5f7d: $81
	rst  $28                                         ; $5f7e: $ef
	ld   bc, $557a                                   ; $5f7f: $01 $7a $55

jr_07a_5f82:
	add  b                                           ; $5f82: $80
	rst  $38                                         ; $5f83: $ff
	add  l                                           ; $5f84: $85
	nop                                              ; $5f85: $00
	add  b                                           ; $5f86: $80
	db   $f4                                         ; $5f87: $f4
	add  b                                           ; $5f88: $80
	push af                                          ; $5f89: $f5
	ld   [bc], a                                     ; $5f8a: $02
	db   $eb                                         ; $5f8b: $eb
	cp   a                                           ; $5f8c: $bf
	ld   d, h                                        ; $5f8d: $54
	add  b                                           ; $5f8e: $80
	rst  $38                                         ; $5f8f: $ff
	add  l                                           ; $5f90: $85
	nop                                              ; $5f91: $00
	add  b                                           ; $5f92: $80
	db   $fd                                         ; $5f93: $fd
	add  d                                           ; $5f94: $82
	ld   a, [rRAMG]                                  ; $5f95: $fa $00 $00
	add  b                                           ; $5f98: $80
	rst  $38                                         ; $5f99: $ff
	add  l                                           ; $5f9a: $85
	nop                                              ; $5f9b: $00
	add  b                                           ; $5f9c: $80
	ld   a, [hl]                                     ; $5f9d: $7e
	add  c                                           ; $5f9e: $81
	rst  $38                                         ; $5f9f: $ff
	ld   [bc], a                                     ; $5fa0: $02
	ld   a, a                                        ; $5fa1: $7f
	add  c                                           ; $5fa2: $81
	ld   bc, $0080                                   ; $5fa3: $01 $80 $00
	add  b                                           ; $5fa6: $80
	ld   b, $80                                      ; $5fa7: $06 $80
	rra                                              ; $5fa9: $1f
	nop                                              ; $5faa: $00
	ccf                                              ; $5fab: $3f
	add  b                                           ; $5fac: $80
	cp   a                                           ; $5fad: $bf
	inc  b                                           ; $5fae: $04
	ld   a, a                                        ; $5faf: $7f
	ld   e, a                                        ; $5fb0: $5f
	ccf                                              ; $5fb1: $3f
	xor  [hl]                                        ; $5fb2: $ae
	ld   a, [hl]                                     ; $5fb3: $7e
	add  b                                           ; $5fb4: $80
	rrca                                             ; $5fb5: $0f
	add  b                                           ; $5fb6: $80
	inc  bc                                          ; $5fb7: $03
	add  h                                           ; $5fb8: $84
	nop                                              ; $5fb9: $00
	add  b                                           ; $5fba: $80
	inc  c                                           ; $5fbb: $0c
	add  c                                           ; $5fbc: $81
	rrca                                             ; $5fbd: $0f
	nop                                              ; $5fbe: $00
	rst  $38                                         ; $5fbf: $ff
	add  d                                           ; $5fc0: $82
	ld   hl, sp-$80                                  ; $5fc1: $f8 $80
	ld   a, b                                        ; $5fc3: $78
	add  b                                           ; $5fc4: $80
	ld   [$0082], sp                                 ; $5fc5: $08 $82 $00
	add  b                                           ; $5fc8: $80
	add  b                                           ; $5fc9: $80
	add  b                                           ; $5fca: $80
	ldh  a, [$80]                                    ; $5fcb: $f0 $80
	ld   c, b                                        ; $5fcd: $48
	add  b                                           ; $5fce: $80
	ld   b, c                                        ; $5fcf: $41
	inc  b                                           ; $5fd0: $04
	sub  d                                           ; $5fd1: $92
	adc  d                                           ; $5fd2: $8a
	sbc  c                                           ; $5fd3: $99
	and  l                                           ; $5fd4: $a5
	inc  h                                           ; $5fd5: $24
	add  b                                           ; $5fd6: $80
	inc  a                                           ; $5fd7: $3c
	add  b                                           ; $5fd8: $80
	jr   jr_07a_5f5c                                 ; $5fd9: $18 $81

	nop                                              ; $5fdb: $00
	add  b                                           ; $5fdc: $80
	ccf                                              ; $5fdd: $3f
	add  b                                           ; $5fde: $80
	rrca                                             ; $5fdf: $0f
	add  b                                           ; $5fe0: $80
	add  e                                           ; $5fe1: $83
	add  b                                           ; $5fe2: $80
	db   $10                                         ; $5fe3: $10
	add  b                                           ; $5fe4: $80
	ld   c, b                                        ; $5fe5: $48
	add  b                                           ; $5fe6: $80
	ld   b, e                                        ; $5fe7: $43
	add  b                                           ; $5fe8: $80
	inc  l                                           ; $5fe9: $2c
	ld   bc, $a3a1                                   ; $5fea: $01 $a1 $a3
	add  b                                           ; $5fed: $80
	adc  d                                           ; $5fee: $8a
	inc  bc                                          ; $5fef: $03
	ldh  [c], a                                      ; $5ff0: $e2
	ldh  [$f8], a                                    ; $5ff1: $e0 $f8
	ld   a, [$fe80]                                  ; $5ff3: $fa $80 $fe
	add  b                                           ; $5ff6: $80
	ld   e, $01                                      ; $5ff7: $1e $01
	ld   b, $04                                      ; $5ff9: $06 $04
	add  b                                           ; $5ffb: $80
	ret  nz                                          ; $5ffc: $c0

	add  b                                           ; $5ffd: $80
	jr   z, jr_07a_5f82                              ; $5ffe: $28 $82

	rst  $38                                         ; $6000: $ff
	add  b                                           ; $6001: $80
	nop                                              ; $6002: $00
	add  h                                           ; $6003: $84
	rst  $38                                         ; $6004: $ff
	add  d                                           ; $6005: $82
	nop                                              ; $6006: $00
	add  d                                           ; $6007: $82
	rst  $10                                         ; $6008: $d7
	add  b                                           ; $6009: $80
	nop                                              ; $600a: $00
	add  h                                           ; $600b: $84
	rst  $38                                         ; $600c: $ff
	add  d                                           ; $600d: $82
	nop                                              ; $600e: $00
	add  d                                           ; $600f: $82
	push af                                          ; $6010: $f5
	add  b                                           ; $6011: $80
	nop                                              ; $6012: $00
	add  h                                           ; $6013: $84

jr_07a_6014:
	rst  $38                                         ; $6014: $ff
	add  d                                           ; $6015: $82
	nop                                              ; $6016: $00
	add  d                                           ; $6017: $82
	cp   $80                                         ; $6018: $fe $80
	nop                                              ; $601a: $00
	add  h                                           ; $601b: $84
	rst  $38                                         ; $601c: $ff
	add  c                                           ; $601d: $81
	nop                                              ; $601e: $00
	add  b                                           ; $601f: $80
	ld   c, a                                        ; $6020: $4f
	inc  b                                           ; $6021: $04
	ld   sp, $1f33                                   ; $6022: $31 $33 $1f
	dec  e                                           ; $6025: $1d
	nop                                              ; $6026: $00
	add  b                                           ; $6027: $80
	ldh  a, [c]                                      ; $6028: $f2
	add  d                                           ; $6029: $82
	rst  $38                                         ; $602a: $ff
	add  c                                           ; $602b: $81
	nop                                              ; $602c: $00
	add  b                                           ; $602d: $80
	db   $fc                                         ; $602e: $fc
	add  b                                           ; $602f: $80
	or   e                                           ; $6030: $b3
	add  b                                           ; $6031: $80
	xor  [hl]                                        ; $6032: $ae
	nop                                              ; $6033: $00
	nop                                              ; $6034: $00
	add  b                                           ; $6035: $80
	inc  de                                          ; $6036: $13
	add  d                                           ; $6037: $82
	rst  $38                                         ; $6038: $ff
	add  c                                           ; $6039: $81
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	add  b                                           ; $603c: $80
	add  c                                           ; $603d: $81
	rst  JumpTable                                         ; $603e: $df
	nop                                              ; $603f: $00
	ld   e, a                                        ; $6040: $5f
	add  b                                           ; $6041: $80
	nop                                              ; $6042: $00
	add  h                                           ; $6043: $84
	rst  $38                                         ; $6044: $ff
	add  d                                           ; $6045: $82
	nop                                              ; $6046: $00
	add  d                                           ; $6047: $82
	db   $eb                                         ; $6048: $eb
	add  b                                           ; $6049: $80
	nop                                              ; $604a: $00
	add  h                                           ; $604b: $84
	rst  $38                                         ; $604c: $ff
	add  d                                           ; $604d: $82
	nop                                              ; $604e: $00
	add  d                                           ; $604f: $82
	push af                                          ; $6050: $f5
	add  b                                           ; $6051: $80
	nop                                              ; $6052: $00
	add  b                                           ; $6053: $80
	cp   $80                                         ; $6054: $fe $80
	db   $fc                                         ; $6056: $fc
	ld   [bc], a                                     ; $6057: $02
	ld   sp, hl                                      ; $6058: $f9
	ld   hl, sp+$01                                  ; $6059: $f8 $01
	add  c                                           ; $605b: $81
	nop                                              ; $605c: $00
	add  d                                           ; $605d: $82
	rst  $38                                         ; $605e: $ff
	add  b                                           ; $605f: $80
	nop                                              ; $6060: $00
	add  b                                           ; $6061: $80
	rst  $38                                         ; $6062: $ff
	add  b                                           ; $6063: $80
	ld   a, a                                        ; $6064: $7f
	add  b                                           ; $6065: $80
	ccf                                              ; $6066: $3f
	add  c                                           ; $6067: $81
	nop                                              ; $6068: $00
	ld   [bc], a                                     ; $6069: $02
	jr   nz, jr_07a_6014                             ; $606a: $20 $a8

	adc  b                                           ; $606c: $88
	add  b                                           ; $606d: $80
	add  e                                           ; $606e: $83
	ld   bc, $4f0f                                   ; $606f: $01 $0f $4f
	add  b                                           ; $6072: $80
	db   $dd                                         ; $6073: $dd
	add  b                                           ; $6074: $80
	ret  c                                           ; $6075: $d8

	ld   [bc], a                                     ; $6076: $02
	ret  nc                                          ; $6077: $d0

	sub  b                                           ; $6078: $90
	nop                                              ; $6079: $00
	add  b                                           ; $607a: $80
	inc  c                                           ; $607b: $0c
	nop                                              ; $607c: $00
	ldh  a, [$87]                                    ; $607d: $f0 $87
	rrca                                             ; $607f: $0f
	add  b                                           ; $6080: $80
	ld   c, $80                                      ; $6081: $0e $80
	ld   [$0080], sp                                 ; $6083: $08 $80 $00
	nop                                              ; $6086: $00
	rst  $38                                         ; $6087: $ff
	add  c                                           ; $6088: $81
	ld   hl, sp-$80                                  ; $6089: $f8 $80
	ldh  a, [$80]                                    ; $608b: $f0 $80
	ret  nz                                          ; $608d: $c0

	add  b                                           ; $608e: $80
	adc  b                                           ; $608f: $88
	add  b                                           ; $6090: $80
	ld   [$1880], sp                                 ; $6091: $08 $80 $18
	add  b                                           ; $6094: $80
	db   $10                                         ; $6095: $10
	ld   bc, $08f8                                   ; $6096: $01 $f8 $08
	add  b                                           ; $6099: $80
	add  sp, $00                                     ; $609a: $e8 $00
	db   $ec                                         ; $609c: $ec
	add  b                                           ; $609d: $80
	and  $81                                         ; $609e: $e6 $81
	rst  $28                                         ; $60a0: $ef
	nop                                              ; $60a1: $00
	rrca                                             ; $60a2: $0f
	add  b                                           ; $60a3: $80
	rst  $38                                         ; $60a4: $ff
	nop                                              ; $60a5: $00
	rrca                                             ; $60a6: $0f
	add  b                                           ; $60a7: $80
	rst  $28                                         ; $60a8: $ef
	nop                                              ; $60a9: $00
	dec  bc                                          ; $60aa: $0b
	add  b                                           ; $60ab: $80
	inc  b                                           ; $60ac: $04
	add  d                                           ; $60ad: $82
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	ret  nz                                          ; $60b0: $c0

	add  e                                           ; $60b1: $83
	ld   hl, sp-$7f                                  ; $60b2: $f8 $81
	ld   sp, hl                                      ; $60b4: $f9
	nop                                              ; $60b5: $00
	pop  bc                                          ; $60b6: $c1
	add  b                                           ; $60b7: $80
	sub  h                                           ; $60b8: $94
	add  b                                           ; $60b9: $80
	adc  b                                           ; $60ba: $88
	add  b                                           ; $60bb: $80
	inc  h                                           ; $60bc: $24
	add  b                                           ; $60bd: $80
	inc  c                                           ; $60be: $0c
	add  d                                           ; $60bf: $82
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	add  b                                           ; $60c2: $80
	add  b                                           ; $60c3: $80
	ldh  a, [rP1]                                    ; $60c4: $f0 $00
	add  b                                           ; $60c6: $80
	add  [hl]                                        ; $60c7: $86
	rst  $38                                         ; $60c8: $ff
	add  e                                           ; $60c9: $83
	nop                                              ; $60ca: $00
	add  b                                           ; $60cb: $80
	rst  $38                                         ; $60cc: $ff
	nop                                              ; $60cd: $00
	nop                                              ; $60ce: $00
	add  [hl]                                        ; $60cf: $86
	rst  $38                                         ; $60d0: $ff
	add  e                                           ; $60d1: $83
	nop                                              ; $60d2: $00
	add  b                                           ; $60d3: $80
	rst  $38                                         ; $60d4: $ff
	ld   bc, $8300                                   ; $60d5: $01 $00 $83
	add  d                                           ; $60d8: $82
	add  d                                           ; $60d9: $82
	inc  b                                           ; $60da: $04
	add  e                                           ; $60db: $83
	add  b                                           ; $60dc: $80
	add  c                                           ; $60dd: $81
	ld   [bc], a                                     ; $60de: $02
	inc  bc                                          ; $60df: $03
	add  c                                           ; $60e0: $81
	nop                                              ; $60e1: $00
	inc  bc                                          ; $60e2: $03
	add  b                                           ; $60e3: $80
	add  e                                           ; $60e4: $83
	inc  bc                                          ; $60e5: $03
	or   a                                           ; $60e6: $b7
	add  d                                           ; $60e7: $82
	nop                                              ; $60e8: $00
	inc  b                                           ; $60e9: $04
	or   a                                           ; $60ea: $b7
	nop                                              ; $60eb: $00
	or   a                                           ; $60ec: $b7
	nop                                              ; $60ed: $00
	or   a                                           ; $60ee: $b7
	add  d                                           ; $60ef: $82
	nop                                              ; $60f0: $00
	add  b                                           ; $60f1: $80
	ld   l, a                                        ; $60f2: $6f
	nop                                              ; $60f3: $00
	ld   [hl], a                                     ; $60f4: $77
	add  d                                           ; $60f5: $82
	inc  b                                           ; $60f6: $04
	inc  b                                           ; $60f7: $04
	ld   [hl], a                                     ; $60f8: $77
	nop                                              ; $60f9: $00
	ld   [hl], e                                     ; $60fa: $73
	inc  b                                           ; $60fb: $04
	ld   [hl], a                                     ; $60fc: $77
	add  d                                           ; $60fd: $82
	nop                                              ; $60fe: $00
	add  b                                           ; $60ff: $80
	ld   l, h                                        ; $6100: $6c
	nop                                              ; $6101: $00
	ld   [hl], a                                     ; $6102: $77
	add  d                                           ; $6103: $82

Call_07a_6104:
	db   $10                                         ; $6104: $10
	inc  b                                           ; $6105: $04
	ld   [hl], a                                     ; $6106: $77
	nop                                              ; $6107: $00
	ld   h, a                                        ; $6108: $67
	db   $10                                         ; $6109: $10
	ld   [hl], a                                     ; $610a: $77
	add  d                                           ; $610b: $82
	nop                                              ; $610c: $00
	add  b                                           ; $610d: $80
	db   $d3                                         ; $610e: $d3
	nop                                              ; $610f: $00
	ld   [hl], a                                     ; $6110: $77
	add  d                                           ; $6111: $82
	nop                                              ; $6112: $00
	inc  b                                           ; $6113: $04
	ld   [hl], a                                     ; $6114: $77
	nop                                              ; $6115: $00
	ld   [hl], a                                     ; $6116: $77
	nop                                              ; $6117: $00
	ld   [hl], a                                     ; $6118: $77
	add  d                                           ; $6119: $82
	nop                                              ; $611a: $00
	add  b                                           ; $611b: $80
	db   $eb                                         ; $611c: $eb
	add  h                                           ; $611d: $84
	add  a                                           ; $611e: $87
	add  b                                           ; $611f: $80
	rlca                                             ; $6120: $07
	add  b                                           ; $6121: $80
	add  b                                           ; $6122: $80
	add  c                                           ; $6123: $81
	nop                                              ; $6124: $00
	ld   [bc], a                                     ; $6125: $02
	rlca                                             ; $6126: $07
	add  a                                           ; $6127: $87
	add  b                                           ; $6128: $80
	add  b                                           ; $6129: $80
	cp   $80                                         ; $612a: $fe $80
	or   $80                                         ; $612c: $f6 $80
	ldh  a, [$80]                                    ; $612e: $f0 $80
	or   [hl]                                        ; $6130: $b6
	add  b                                           ; $6131: $80
	ld   b, b                                        ; $6132: $40
	add  c                                           ; $6133: $81
	nop                                              ; $6134: $00
	add  b                                           ; $6135: $80
	cp   $00                                         ; $6136: $fe $00
	nop                                              ; $6138: $00
	add  b                                           ; $6139: $80
	rst  $38                                         ; $613a: $ff
	add  b                                           ; $613b: $80
	rst  JumpTable                                         ; $613c: $df
	add  b                                           ; $613d: $80
	rra                                              ; $613e: $1f
	add  b                                           ; $613f: $80
	db   $db                                         ; $6140: $db
	add  b                                           ; $6141: $80
	inc  b                                           ; $6142: $04
	add  c                                           ; $6143: $81
	nop                                              ; $6144: $00
	add  b                                           ; $6145: $80
	rst  $38                                         ; $6146: $ff
	ld   bc, $d848                                   ; $6147: $01 $48 $d8
	add  b                                           ; $614a: $80
	sbc  $82                                         ; $614b: $de $82
	ret  c                                           ; $614d: $d8

	ld   bc, $0c9c                                   ; $614e: $01 $9c $0c
	add  d                                           ; $6151: $82
	nop                                              ; $6152: $00
	ld   [bc], a                                     ; $6153: $02
	add  b                                           ; $6154: $80
	and  b                                           ; $6155: $a0
	rst  JumpTable                                         ; $6156: $df
	adc  l                                           ; $6157: $8d
	nop                                              ; $6158: $00
	ld   bc, $2027                                   ; $6159: $01 $27 $20
	add  b                                           ; $615c: $80
	ld   b, b                                        ; $615d: $40
	adc  d                                           ; $615e: $8a
	nop                                              ; $615f: $00
	inc  b                                           ; $6160: $04
	inc  e                                           ; $6161: $1c
	rst  $28                                         ; $6162: $ef
	rla                                              ; $6163: $17
	rst  $38                                         ; $6164: $ff
	db   $e4                                         ; $6165: $e4
	adc  c                                           ; $6166: $89
	rst  $38                                         ; $6167: $ff
	nop                                              ; $6168: $00
	ret  nz                                          ; $6169: $c0

	add  c                                           ; $616a: $81
	ld   sp, hl                                      ; $616b: $f9
	ld   [bc], a                                     ; $616c: $02
	ld   bc, $f8f9                                   ; $616d: $01 $f9 $f8
	add  a                                           ; $6170: $87
	ld   sp, hl                                      ; $6171: $f9
	nop                                              ; $6172: $00
	ld   c, b                                        ; $6173: $48
	add  e                                           ; $6174: $83
	db   $fc                                         ; $6175: $fc
	ld   [bc], a                                     ; $6176: $02
	ld   a, h                                        ; $6177: $7c
	db   $fc                                         ; $6178: $fc
	add  b                                           ; $6179: $80
	add  l                                           ; $617a: $85
	db   $fc                                         ; $617b: $fc
	nop                                              ; $617c: $00
	ld   [hl], b                                     ; $617d: $70
	sbc  l                                           ; $617e: $9d
	rst  $38                                         ; $617f: $ff
	nop                                              ; $6180: $00
	cp   $83                                         ; $6181: $fe $83
	add  d                                           ; $6183: $82
	ld   b, $83                                      ; $6184: $06 $83
	add  b                                           ; $6186: $80
	add  c                                           ; $6187: $81
	add  d                                           ; $6188: $82
	add  e                                           ; $6189: $83
	add  b                                           ; $618a: $80
	add  c                                           ; $618b: $81
	add  c                                           ; $618c: $81
	add  d                                           ; $618d: $82
	nop                                              ; $618e: $00
	db   $ec                                         ; $618f: $ec
	add  e                                           ; $6190: $83
	nop                                              ; $6191: $00
	ld   b, $6f                                      ; $6192: $06 $6f
	nop                                              ; $6194: $00
	ld   l, a                                        ; $6195: $6f
	nop                                              ; $6196: $00
	ld   l, a                                        ; $6197: $6f
	nop                                              ; $6198: $00
	ld   l, a                                        ; $6199: $6f
	add  c                                           ; $619a: $81
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	daa                                              ; $619d: $27
	add  e                                           ; $619e: $83
	inc  h                                           ; $619f: $24
	ld   b, $6c                                      ; $61a0: $06 $6c
	nop                                              ; $61a2: $00
	ld   l, b                                        ; $61a3: $68
	inc  b                                           ; $61a4: $04
	ld   l, h                                        ; $61a5: $6c
	nop                                              ; $61a6: $00
	ld   c, b                                        ; $61a7: $48
	add  c                                           ; $61a8: $81
	inc  h                                           ; $61a9: $24
	nop                                              ; $61aa: $00
	ccf                                              ; $61ab: $3f
	add  e                                           ; $61ac: $83
	adc  b                                           ; $61ad: $88
	ld   b, $db                                      ; $61ae: $06 $db
	nop                                              ; $61b0: $00
	ld   d, e                                        ; $61b1: $53
	ld   [$005b], sp                                 ; $61b2: $08 $5b $00
	ld   d, e                                        ; $61b5: $53
	add  c                                           ; $61b6: $81
	adc  b                                           ; $61b7: $88

jr_07a_61b8:
	nop                                              ; $61b8: $00
	db   $10                                         ; $61b9: $10
	add  e                                           ; $61ba: $83
	jr   nz, jr_07a_61c3                             ; $61bb: $20 $06

	db   $eb                                         ; $61bd: $eb
	nop                                              ; $61be: $00
	sla  b                                           ; $61bf: $cb $20
	db   $eb                                         ; $61c1: $eb
	nop                                              ; $61c2: $00

jr_07a_61c3:
	res  0, c                                        ; $61c3: $cb $81
	jr   nz, jr_07a_61c7                             ; $61c5: $20 $00

jr_07a_61c7:
	db   $eb                                         ; $61c7: $eb
	add  h                                           ; $61c8: $84
	add  a                                           ; $61c9: $87
	add  b                                           ; $61ca: $80
	rlca                                             ; $61cb: $07
	add  b                                           ; $61cc: $80
	add  a                                           ; $61cd: $87
	add  b                                           ; $61ce: $80
	rlca                                             ; $61cf: $07
	add  d                                           ; $61d0: $82
	add  a                                           ; $61d1: $87
	add  d                                           ; $61d2: $82
	cp   $80                                         ; $61d3: $fe $80
	db   $fd                                         ; $61d5: $fd
	add  b                                           ; $61d6: $80
	db   $fc                                         ; $61d7: $fc
	add  b                                           ; $61d8: $80
	cp   $84                                         ; $61d9: $fe $84
	rst  $38                                         ; $61db: $ff
	add  c                                           ; $61dc: $81
	db   $fc                                         ; $61dd: $fc
	nop                                              ; $61de: $00
	rst  $38                                         ; $61df: $ff
	add  d                                           ; $61e0: $82
	ld   a, a                                        ; $61e1: $7f
	add  c                                           ; $61e2: $81
	rst  $38                                         ; $61e3: $ff
	add  b                                           ; $61e4: $80
	db   $fc                                         ; $61e5: $fc
	add  b                                           ; $61e6: $80
	rst  $38                                         ; $61e7: $ff
	nop                                              ; $61e8: $00
	db   $fc                                         ; $61e9: $fc
	add  b                                           ; $61ea: $80
	inc  bc                                          ; $61eb: $03
	add  c                                           ; $61ec: $81
	di                                               ; $61ed: $f3
	ld   [bc], a                                     ; $61ee: $02
	db   $d3                                         ; $61ef: $d3
	ld   a, a                                        ; $61f0: $7f
	ld   e, a                                        ; $61f1: $5f
	add  b                                           ; $61f2: $80
	rra                                              ; $61f3: $1f
	add  b                                           ; $61f4: $80
	db   $fc                                         ; $61f5: $fc
	add  b                                           ; $61f6: $80
	inc  bc                                          ; $61f7: $03
	ld   bc, $0cf3                                   ; $61f8: $01 $f3 $0c
	adc  l                                           ; $61fb: $8d
	nop                                              ; $61fc: $00
	rlca                                             ; $61fd: $07
	rlca                                             ; $61fe: $07
	nop                                              ; $61ff: $00
	jr   jr_07a_6202                                 ; $6200: $18 $00

jr_07a_6202:
	inc  hl                                          ; $6202: $23
	inc  bc                                          ; $6203: $03
	ld   c, a                                        ; $6204: $4f
	rrca                                             ; $6205: $0f
	add  l                                           ; $6206: $85
	rra                                              ; $6207: $1f
	rlca                                             ; $6208: $07
	ld   e, $86                                      ; $6209: $1e $86
	rst  $38                                         ; $620b: $ff
	rst  ToBoot                                         ; $620c: $c7
	ccf                                              ; $620d: $3f
	ret  c                                           ; $620e: $d8

	rra                                              ; $620f: $1f
	rst  $28                                         ; $6210: $ef
	add  c                                           ; $6211: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6212: $cf
	add  b                                           ; $6213: $80
	adc  a                                           ; $6214: $8f
	add  d                                           ; $6215: $82
	rrca                                             ; $6216: $0f
	ld   [bc], a                                     ; $6217: $02
	ld   h, $f9                                      ; $6218: $26 $f9
	nop                                              ; $621a: $00
	adc  e                                           ; $621b: $8b
	ld   sp, hl                                      ; $621c: $f9
	ld   [bc], a                                     ; $621d: $02
	ld   c, l                                        ; $621e: $4d
	db   $fc                                         ; $621f: $fc
	nop                                              ; $6220: $00
	adc  c                                           ; $6221: $89
	db   $fc                                         ; $6222: $fc
	ld   [bc], a                                     ; $6223: $02
	nop                                              ; $6224: $00
	db   $fc                                         ; $6225: $fc
	ld   [hl], b                                     ; $6226: $70
	sbc  l                                           ; $6227: $9d
	rst  $38                                         ; $6228: $ff
	nop                                              ; $6229: $00
	cp   $87                                         ; $622a: $fe $87
	add  d                                           ; $622c: $82
	ld   [bc], a                                     ; $622d: $02
	add  e                                           ; $622e: $83
	add  b                                           ; $622f: $80
	add  c                                           ; $6230: $81
	add  c                                           ; $6231: $81
	add  d                                           ; $6232: $82
	ld   [bc], a                                     ; $6233: $02
	and  h                                           ; $6234: $a4
	nop                                              ; $6235: $00
	jr   nz, jr_07a_61b8                             ; $6236: $20 $80

	ld   d, b                                        ; $6238: $50
	add  d                                           ; $6239: $82
	ld   [hl], b                                     ; $623a: $70
	inc  b                                           ; $623b: $04
	jr   nz, jr_07a_6265                             ; $623c: $20 $27

	nop                                              ; $623e: $00
	ld   c, a                                        ; $623f: $4f
	nop                                              ; $6240: $00
	add  b                                           ; $6241: $80
	jr   nz, jr_07a_6244                             ; $6242: $20 $00

jr_07a_6244:
	rlca                                             ; $6244: $07
	add  a                                           ; $6245: $87
	inc  h                                           ; $6246: $24
	ld   [bc], a                                     ; $6247: $02
	ld   l, h                                        ; $6248: $6c
	nop                                              ; $6249: $00
	ld   c, b                                        ; $624a: $48
	add  c                                           ; $624b: $81
	inc  h                                           ; $624c: $24
	nop                                              ; $624d: $00
	ccf                                              ; $624e: $3f
	add  a                                           ; $624f: $87
	adc  b                                           ; $6250: $88
	ld   [bc], a                                     ; $6251: $02
	db   $db                                         ; $6252: $db
	nop                                              ; $6253: $00
	ld   d, e                                        ; $6254: $53
	add  c                                           ; $6255: $81
	adc  b                                           ; $6256: $88
	nop                                              ; $6257: $00
	db   $10                                         ; $6258: $10
	add  a                                           ; $6259: $87
	jr   nz, jr_07a_625e                             ; $625a: $20 $02

	db   $eb                                         ; $625c: $eb
	nop                                              ; $625d: $00

jr_07a_625e:
	res  0, c                                        ; $625e: $cb $81
	jr   nz, jr_07a_6262                             ; $6260: $20 $00

jr_07a_6262:
	db   $eb                                         ; $6262: $eb
	adc  b                                           ; $6263: $88
	add  a                                           ; $6264: $87

jr_07a_6265:
	add  b                                           ; $6265: $80
	rlca                                             ; $6266: $07
	add  d                                           ; $6267: $82
	add  a                                           ; $6268: $87
	add  c                                           ; $6269: $81
	rst  $38                                         ; $626a: $ff
	inc  c                                           ; $626b: $0c
	ld   a, [$f2ff]                                  ; $626c: $fa $ff $f2
	add  sp, -$0c                                    ; $626f: $e8 $f4
	db   $dd                                         ; $6271: $dd
	rst  $20                                         ; $6272: $e7
	xor  [hl]                                        ; $6273: $ae
	sub  h                                           ; $6274: $94
	db   $fc                                         ; $6275: $fc
	ret  nz                                          ; $6276: $c0

	ld   [$83c1], a                                  ; $6277: $ea $c1 $83
	rst  $38                                         ; $627a: $ff
	ld   c, $df                                      ; $627b: $0e $df
	xor  a                                           ; $627d: $af
	sbc  h                                           ; $627e: $9c
	inc  a                                           ; $627f: $3c
	xor  a                                           ; $6280: $af
	rst  $10                                         ; $6281: $d7
	dec  b                                           ; $6282: $05
	ld   a, c                                        ; $6283: $79
	add  hl, bc                                      ; $6284: $09
	pop  hl                                          ; $6285: $e1
	ret  nz                                          ; $6286: $c0

	di                                               ; $6287: $f3
	db   $d3                                         ; $6288: $d3
	ld   a, a                                        ; $6289: $7f
	ld   e, a                                        ; $628a: $5f
	add  b                                           ; $628b: $80
	rra                                              ; $628c: $1f
	add  b                                           ; $628d: $80
	rst  $38                                         ; $628e: $ff
	add  b                                           ; $628f: $80
	nop                                              ; $6290: $00
	add  b                                           ; $6291: $80
	di                                               ; $6292: $f3
	add  b                                           ; $6293: $80
	ld   [hl], e                                     ; $6294: $73
	ld   [bc], a                                     ; $6295: $02
	rra                                              ; $6296: $1f
	ldh  [rP1], a                                    ; $6297: $e0 $00
	add  b                                           ; $6299: $80
	ld   bc, $0380                                   ; $629a: $01 $80 $03
	add  b                                           ; $629d: $80
	rlca                                             ; $629e: $07
	add  [hl]                                        ; $629f: $86
	rrca                                             ; $62a0: $0f
	nop                                              ; $62a1: $00
	ldh  [$80], a                                    ; $62a2: $e0 $80
	sbc  h                                           ; $62a4: $9c
	add  b                                           ; $62a5: $80
	sbc  b                                           ; $62a6: $98
	adc  c                                           ; $62a7: $89
	sub  b                                           ; $62a8: $90
	ld   [bc], a                                     ; $62a9: $02

jr_07a_62aa:
	ld   h, [hl]                                     ; $62aa: $66
	rrca                                             ; $62ab: $0f
	ld   bc, $0f8b                                   ; $62ac: $01 $8b $0f
	nop                                              ; $62af: $00
	add  hl, hl                                      ; $62b0: $29
	adc  c                                           ; $62b1: $89
	ld   sp, hl                                      ; $62b2: $f9
	inc  b                                           ; $62b3: $04
	ld   hl, sp-$07                                  ; $62b4: $f8 $f9
	pop  af                                          ; $62b6: $f1
	ld   sp, hl                                      ; $62b7: $f9
	cp   l                                           ; $62b8: $bd
	add  a                                           ; $62b9: $87
	db   $fc                                         ; $62ba: $fc
	ld   [bc], a                                     ; $62bb: $02
	ret  nz                                          ; $62bc: $c0

	db   $fc                                         ; $62bd: $fc
	inc  a                                           ; $62be: $3c
	add  c                                           ; $62bf: $81
	db   $fc                                         ; $62c0: $fc
	nop                                              ; $62c1: $00
	adc  h                                           ; $62c2: $8c
	sbc  [hl]                                        ; $62c3: $9e
	rst  $38                                         ; $62c4: $ff
	ld   bc, $8180                                   ; $62c5: $01 $80 $81
	add  e                                           ; $62c8: $83
	add  d                                           ; $62c9: $82
	ld   bc, $c4c7                                   ; $62ca: $01 $c7 $c4
	add  b                                           ; $62cd: $80
	ld   hl, sp+$01                                  ; $62ce: $f8 $01
	ld   sp, hl                                      ; $62d0: $f9
	ld   hl, sp-$80                                  ; $62d1: $f8 $80
	ld   sp, hl                                      ; $62d3: $f9
	ld   [bc], a                                     ; $62d4: $02
	and  c                                           ; $62d5: $a1
	jr   nz, jr_07a_6347                             ; $62d6: $20 $6f

	add  e                                           ; $62d8: $83
	jr   nz, jr_07a_62db                             ; $62d9: $20 $00

jr_07a_62db:
	ld   l, a                                        ; $62db: $6f
	add  c                                           ; $62dc: $81
	jr   nz, jr_07a_62e0                             ; $62dd: $20 $01

	rst  $28                                         ; $62df: $ef

jr_07a_62e0:
	jr   nz, jr_07a_6262                             ; $62e0: $20 $80

	rst  $28                                         ; $62e2: $ef
	ld   [bc], a                                     ; $62e3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62e4: $cf
	nop                                              ; $62e5: $00
	ld   l, h                                        ; $62e6: $6c
	add  e                                           ; $62e7: $83
	inc  h                                           ; $62e8: $24
	nop                                              ; $62e9: $00
	ld   c, b                                        ; $62ea: $48
	add  c                                           ; $62eb: $81
	nop                                              ; $62ec: $00
	ld   bc, $00ff                                   ; $62ed: $01 $ff $00
	add  c                                           ; $62f0: $81
	rst  $38                                         ; $62f1: $ff
	ld   bc, $5b00                                   ; $62f2: $01 $00 $5b
	add  d                                           ; $62f5: $82
	ld   [$0901], sp                                 ; $62f6: $08 $01 $09
	ld   d, e                                        ; $62f9: $53
	add  c                                           ; $62fa: $81
	ld   bc, $fd01                                   ; $62fb: $01 $01 $fd
	ld   bc, $fd80                                   ; $62fe: $01 $80 $fd
	ld   [bc], a                                     ; $6301: $02
	db   $fc                                         ; $6302: $fc
	nop                                              ; $6303: $00
	res  0, c                                        ; $6304: $cb $81
	jr   nz, jr_07a_630a                             ; $6306: $20 $02

	jr   z, jr_07a_62aa                              ; $6308: $28 $a0

jr_07a_630a:
	db   $e3                                         ; $630a: $e3
	add  c                                           ; $630b: $81
	adc  b                                           ; $630c: $88
	inc  b                                           ; $630d: $04
	adc  c                                           ; $630e: $89
	add  sp, -$67                                    ; $630f: $e8 $99
	ld   hl, sp+$08                                  ; $6311: $f8 $08
	add  b                                           ; $6313: $80
	rlca                                             ; $6314: $07
	add  h                                           ; $6315: $84
	add  a                                           ; $6316: $87
	add  c                                           ; $6317: $81
	rlca                                             ; $6318: $07
	nop                                              ; $6319: $00
	add  a                                           ; $631a: $87
	add  c                                           ; $631b: $81
	rlca                                             ; $631c: $07
	dec  bc                                          ; $631d: $0b
	db   $d3                                         ; $631e: $d3
	push af                                          ; $631f: $f5
	xor  e                                           ; $6320: $ab
	ld   [$afe5], a                                  ; $6321: $ea $e5 $af
	and  d                                           ; $6324: $a2
	sbc  l                                           ; $6325: $9d
	sub  b                                           ; $6326: $90
	push de                                          ; $6327: $d5
	ldh  a, [$e0]                                    ; $6328: $f0 $e0
	add  b                                           ; $632a: $80
	ld   hl, sp+$12                                  ; $632b: $f8 $12
	rst  $38                                         ; $632d: $ff
	cp   $80                                         ; $632e: $fe $80
	ld   [hl], c                                     ; $6330: $71
	or   b                                           ; $6331: $b0
	ret  c                                           ; $6332: $d8

	ld   c, e                                        ; $6333: $4b
	sub  e                                           ; $6334: $93
	dec  hl                                          ; $6335: $2b
	db   $eb                                         ; $6336: $eb
	ld   d, e                                        ; $6337: $53
	inc  de                                          ; $6338: $13
	inc  bc                                          ; $6339: $03
	ld   b, e                                        ; $633a: $43
	jp   $4083                                       ; $633b: $c3 $83 $40


	ret  nz                                          ; $633e: $c0

	add  b                                           ; $633f: $80
	add  b                                           ; $6340: $80
	rst  $38                                         ; $6341: $ff
	add  b                                           ; $6342: $80
	inc  bc                                          ; $6343: $03
	dec  b                                           ; $6344: $05
	ldh  a, [$d0]                                    ; $6345: $f0 $d0

jr_07a_6347:
	ld   [hl], e                                     ; $6347: $73
	ld   d, e                                        ; $6348: $53
	rra                                              ; $6349: $1f
	sbc  a                                           ; $634a: $9f
	add  c                                           ; $634b: $81
	rst  $38                                         ; $634c: $ff
	ld   [bc], a                                     ; $634d: $02
	ld   a, a                                        ; $634e: $7f
	rra                                              ; $634f: $1f
	rst  $28                                         ; $6350: $ef
	adc  l                                           ; $6351: $8d
	rrca                                             ; $6352: $0f
	nop                                              ; $6353: $00
	ldh  [$82], a                                    ; $6354: $e0 $82
	sub  b                                           ; $6356: $90
	add  b                                           ; $6357: $80
	sub  c                                           ; $6358: $91
	add  b                                           ; $6359: $80
	sub  e                                           ; $635a: $93
	add  b                                           ; $635b: $80
	sub  [hl]                                        ; $635c: $96
	add  b                                           ; $635d: $80
	sbc  l                                           ; $635e: $9d
	add  b                                           ; $635f: $80
	sbc  e                                           ; $6360: $9b
	ld   b, $97                                      ; $6361: $06 $97
	cpl                                              ; $6363: $2f
	ld   c, a                                        ; $6364: $4f
	adc  $cf                                         ; $6365: $ce $cf
	add  c                                           ; $6367: $81
	adc  a                                           ; $6368: $8f
	add  b                                           ; $6369: $80
	ld   c, a                                        ; $636a: $4f
	add  [hl]                                        ; $636b: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636c: $cf
	ld   [bc], a                                     ; $636d: $02
	rra                                              ; $636e: $1f
	ld   sp, hl                                      ; $636f: $f9
	add  hl, sp                                      ; $6370: $39
	add  l                                           ; $6371: $85
	ld   sp, hl                                      ; $6372: $f9
	nop                                              ; $6373: $00
	ld   hl, sp-$7f                                  ; $6374: $f8 $81
	ld   sp, hl                                      ; $6376: $f9
	ld   [bc], a                                     ; $6377: $02
	pop  hl                                          ; $6378: $e1
	ld   sp, hl                                      ; $6379: $f9
	xor  b                                           ; $637a: $a8
	add  c                                           ; $637b: $81
	db   $fc                                         ; $637c: $fc
	ld   b, $f8                                      ; $637d: $06 $f8
	db   $fc                                         ; $637f: $fc
	call nz, $bcfc                                   ; $6380: $c4 $fc $bc
	db   $fc                                         ; $6383: $fc
	ld   a, h                                        ; $6384: $7c
	add  e                                           ; $6385: $83
	db   $fc                                         ; $6386: $fc
	nop                                              ; $6387: $00
	ld   [hl], b                                     ; $6388: $70
	adc  [hl]                                        ; $6389: $8e
	rst  $38                                         ; $638a: $ff
	add  b                                           ; $638b: $80
	db   $fc                                         ; $638c: $fc
	add  b                                           ; $638d: $80
	ldh  a, [rSC]                                    ; $638e: $f0 $02
	ret  nz                                          ; $6390: $c0

	cp   a                                           ; $6391: $bf
	rst  $38                                         ; $6392: $ff
	add  c                                           ; $6393: $81
	sub  b                                           ; $6394: $90
	add  e                                           ; $6395: $83
	ret  nc                                          ; $6396: $d0

	inc  bc                                          ; $6397: $03
	ld   c, h                                        ; $6398: $4c
	db   $fc                                         ; $6399: $fc
	ldh  a, [$80]                                    ; $639a: $f0 $80
	add  b                                           ; $639c: $80
	pop  bc                                          ; $639d: $c1
	add  b                                           ; $639e: $80
	rst  $38                                         ; $639f: $ff
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	add  c                                           ; $63a2: $81
	ld   b, b                                        ; $63a3: $40
	add  b                                           ; $63a4: $80
	ld   b, e                                        ; $63a5: $43
	add  b                                           ; $63a6: $80
	ld   b, b                                        ; $63a7: $40
	ld   bc, $2f4f                                   ; $63a8: $01 $4f $2f
	add  b                                           ; $63ab: $80
	rst  $28                                         ; $63ac: $ef
	ld   bc, $c7e7                                   ; $63ad: $01 $e7 $c7

jr_07a_63b0:
	add  b                                           ; $63b0: $80
	rst  $38                                         ; $63b1: $ff
	add  d                                           ; $63b2: $82
	nop                                              ; $63b3: $00
	add  b                                           ; $63b4: $80
	rst  $38                                         ; $63b5: $ff
	add  b                                           ; $63b6: $80
	nop                                              ; $63b7: $00

jr_07a_63b8:
	add  [hl]                                        ; $63b8: $86
	rst  $38                                         ; $63b9: $ff
	add  d                                           ; $63ba: $82
	nop                                              ; $63bb: $00
	add  b                                           ; $63bc: $80
	rst  $38                                         ; $63bd: $ff
	add  b                                           ; $63be: $80
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	db   $fc                                         ; $63c1: $fc
	add  d                                           ; $63c2: $82
	db   $fd                                         ; $63c3: $fd
	nop                                              ; $63c4: $00
	db   $fc                                         ; $63c5: $fc
	add  b                                           ; $63c6: $80
	rst  $38                                         ; $63c7: $ff
	add  d                                           ; $63c8: $82
	nop                                              ; $63c9: $00

jr_07a_63ca:
	add  b                                           ; $63ca: $80
	db   $fc                                         ; $63cb: $fc
	add  b                                           ; $63cc: $80
	nop                                              ; $63cd: $00
	ld   bc, $8880                                   ; $63ce: $01 $80 $88
	add  b                                           ; $63d1: $80
	xor  d                                           ; $63d2: $aa
	ld   bc, $0109                                   ; $63d3: $01 $09 $01
	add  b                                           ; $63d6: $80
	rst  $38                                         ; $63d7: $ff
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	add  [hl]                                        ; $63da: $86
	db   $10                                         ; $63db: $10
	add  e                                           ; $63dc: $83
	rlca                                             ; $63dd: $07
	add  b                                           ; $63de: $80
	rst  $30                                         ; $63df: $f7
	add  e                                           ; $63e0: $83
	rlca                                             ; $63e1: $07
	add  c                                           ; $63e2: $81
	ld   b, a                                        ; $63e3: $47
	ld   b, $58                                      ; $63e4: $06 $58
	cp   $e4                                         ; $63e6: $fe $e4
	db   $fc                                         ; $63e8: $fc
	ei                                               ; $63e9: $fb
	rst  $30                                         ; $63ea: $f7
	ldh  a, [c]                                      ; $63eb: $f2
	add  c                                           ; $63ec: $81
	rst  $30                                         ; $63ed: $f7
	add  d                                           ; $63ee: $82
	ldh  a, [$80]                                    ; $63ef: $f0 $80
	db   $f4                                         ; $63f1: $f4
	nop                                              ; $63f2: $00
	or   e                                           ; $63f3: $b3
	add  c                                           ; $63f4: $81
	jp   $8300                                       ; $63f5: $c3 $00 $83


	add  b                                           ; $63f8: $80
	dec  bc                                          ; $63f9: $0b
	ld   [bc], a                                     ; $63fa: $02
	ei                                               ; $63fb: $fb
	inc  bc                                          ; $63fc: $03
	ei                                               ; $63fd: $fb
	add  b                                           ; $63fe: $80
	nop                                              ; $63ff: $00
	add  d                                           ; $6400: $82
	inc  bc                                          ; $6401: $03
	nop                                              ; $6402: $00
	ret  nz                                          ; $6403: $c0

	add  b                                           ; $6404: $80
	ldh  [rDIV], a                                   ; $6405: $e0 $04
	di                                               ; $6407: $f3
	ld   d, e                                        ; $6408: $53
	ld   [hl], e                                     ; $6409: $73
	inc  de                                          ; $640a: $13
	rra                                              ; $640b: $1f
	add  b                                           ; $640c: $80
	rst  $38                                         ; $640d: $ff
	dec  b                                           ; $640e: $05
	rrca                                             ; $640f: $0f
	rra                                              ; $6410: $1f
	rst  $28                                         ; $6411: $ef
	pop  hl                                          ; $6412: $e1
	sub  c                                           ; $6413: $91
	sub  b                                           ; $6414: $90
	rst  $30                                         ; $6415: $f7
	ld   bc, $0086                                   ; $6416: $01 $86 $00
	add  [hl]                                        ; $6419: $86
	rrca                                             ; $641a: $0f
	add  [hl]                                        ; $641b: $86
	nop                                              ; $641c: $00
	add  [hl]                                        ; $641d: $86
	rst  $38                                         ; $641e: $ff
	add  [hl]                                        ; $641f: $86
	nop                                              ; $6420: $00
	add  d                                           ; $6421: $82
	rst  $38                                         ; $6422: $ff
	add  b                                           ; $6423: $80
	cp   $80                                         ; $6424: $fe $80
	db   $fd                                         ; $6426: $fd
	add  [hl]                                        ; $6427: $86
	nop                                              ; $6428: $00
	add  b                                           ; $6429: $80
	xor  d                                           ; $642a: $aa
	add  b                                           ; $642b: $80
	ld   d, h                                        ; $642c: $54
	add  b                                           ; $642d: $80
	jr   z, jr_07a_63b0                              ; $642e: $28 $80

	ld   b, b                                        ; $6430: $40
	sbc  b                                           ; $6431: $98
	nop                                              ; $6432: $00
	add  c                                           ; $6433: $81
	ccf                                              ; $6434: $3f
	nop                                              ; $6435: $00
	jr   nz, jr_07a_63b8                             ; $6436: $20 $80

	cpl                                              ; $6438: $2f
	nop                                              ; $6439: $00
	rra                                              ; $643a: $1f
	add  a                                           ; $643b: $87
	nop                                              ; $643c: $00
	add  c                                           ; $643d: $81
	rst  $38                                         ; $643e: $ff
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	add  c                                           ; $6441: $81
	rst  $38                                         ; $6442: $ff
	add  a                                           ; $6443: $87
	nop                                              ; $6444: $00
	add  c                                           ; $6445: $81
	ldh  [rP1], a                                    ; $6446: $e0 $00
	jr   nz, jr_07a_63ca                             ; $6448: $20 $80

	and  b                                           ; $644a: $a0
	nop                                              ; $644b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $644c: $cf
	adc  l                                           ; $644d: $8d
	rrca                                             ; $644e: $0f
	add  [hl]                                        ; $644f: $86
	rst  $38                                         ; $6450: $ff
	add  b                                           ; $6451: $80
	cp   $80                                         ; $6452: $fe $80
	db   $fd                                         ; $6454: $fd
	add  b                                           ; $6455: $80
	ld   a, [$f580]                                  ; $6456: $fa $80 $f5
	add  b                                           ; $6459: $80
	ld   [$d480], a                                  ; $645a: $ea $80 $d4
	add  b                                           ; $645d: $80
	xor  b                                           ; $645e: $a8
	add  b                                           ; $645f: $80
	ld   b, b                                        ; $6460: $40
	add  b                                           ; $6461: $80
	and  b                                           ; $6462: $a0
	add  b                                           ; $6463: $80
	ld   b, b                                        ; $6464: $40
	add  b                                           ; $6465: $80
	add  b                                           ; $6466: $80
	add  b                                           ; $6467: $80
	nop                                              ; $6468: $00
	inc  bc                                          ; $6469: $03
	scf                                              ; $646a: $37
	cpl                                              ; $646b: $2f
	dec  hl                                          ; $646c: $2b
	inc  l                                           ; $646d: $2c
	adc  d                                           ; $646e: $8a
	dec  l                                           ; $646f: $2d
	nop                                              ; $6470: $00
	ldh  [$80], a                                    ; $6471: $e0 $80
	rst  $38                                         ; $6473: $ff
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	add  b                                           ; $6476: $80
	rst  $38                                         ; $6477: $ff
	add  b                                           ; $6478: $80
	nop                                              ; $6479: $00
	add  b                                           ; $647a: $80
	ld   a, a                                        ; $647b: $7f
	inc  bc                                          ; $647c: $03
	nop                                              ; $647d: $00
	ld   a, a                                        ; $647e: $7f
	ld   a, b                                        ; $647f: $78
	ld   h, a                                        ; $6480: $67
	add  b                                           ; $6481: $80
	ld   [hl], a                                     ; $6482: $77
	nop                                              ; $6483: $00
	ld   h, b                                        ; $6484: $60
	add  b                                           ; $6485: $80
	rst  $38                                         ; $6486: $ff
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	add  b                                           ; $6489: $80
	rst  $38                                         ; $648a: $ff
	add  b                                           ; $648b: $80
	nop                                              ; $648c: $00
	add  b                                           ; $648d: $80
	rst  $38                                         ; $648e: $ff
	inc  bc                                          ; $648f: $03
	nop                                              ; $6490: $00
	rst  $38                                         ; $6491: $ff
	rrca                                             ; $6492: $0f
	rst  $30                                         ; $6493: $f7
	add  b                                           ; $6494: $80
	rst  $28                                         ; $6495: $ef
	inc  bc                                          ; $6496: $03
	ld   b, $ff                                      ; $6497: $06 $ff
	cp   $00                                         ; $6499: $fe $00
	add  b                                           ; $649b: $80
	rst  $38                                         ; $649c: $ff
	add  b                                           ; $649d: $80
	nop                                              ; $649e: $00
	add  b                                           ; $649f: $80
	rst  $38                                         ; $64a0: $ff
	inc  bc                                          ; $64a1: $03
	rla                                              ; $64a2: $17
	rst  $38                                         ; $64a3: $ff
	sub  b                                           ; $64a4: $90
	ld   a, b                                        ; $64a5: $78
	add  b                                           ; $64a6: $80
	cp   a                                           ; $64a7: $bf
	ld   bc, $fffe                                   ; $64a8: $01 $fe $ff
	add  b                                           ; $64ab: $80
	ld   bc, $fd80                                   ; $64ac: $01 $80 $fd
	add  b                                           ; $64af: $80
	dec  b                                           ; $64b0: $05
	add  d                                           ; $64b1: $82
	push af                                          ; $64b2: $f5
	add  d                                           ; $64b3: $82
	dec  [hl]                                        ; $64b4: $35
	nop                                              ; $64b5: $00
	sbc  [hl]                                        ; $64b6: $9e
	adc  l                                           ; $64b7: $8d
	and  b                                           ; $64b8: $a0
	nop                                              ; $64b9: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ba: $cf
	adc  c                                           ; $64bb: $89
	rrca                                             ; $64bc: $0f
	add  b                                           ; $64bd: $80
	ld   c, $80                                      ; $64be: $0e $80
	rrca                                             ; $64c0: $0f
	add  b                                           ; $64c1: $80
	ld   a, [$f480]                                  ; $64c2: $fa $80 $f4
	add  b                                           ; $64c5: $80
	add  sp, -$80                                    ; $64c6: $e8 $80
	ret  nc                                          ; $64c8: $d0

	add  b                                           ; $64c9: $80
	and  b                                           ; $64ca: $a0
	add  b                                           ; $64cb: $80
	ld   b, b                                        ; $64cc: $40
	add  b                                           ; $64cd: $80
	add  b                                           ; $64ce: $80
	add  b                                           ; $64cf: $80
	ld   b, b                                        ; $64d0: $40
	nop                                              ; $64d1: $00
	ld   [hl-], a                                    ; $64d2: $32
	adc  l                                           ; $64d3: $8d
	dec  l                                           ; $64d4: $2d
	ld   bc, $7bfb                                   ; $64d5: $01 $fb $7b
	add  c                                           ; $64d8: $81
	ld   a, b                                        ; $64d9: $78
	adc  c                                           ; $64da: $89
	ld   a, e                                        ; $64db: $7b
	ld   de, $dfbb                                   ; $64dc: $11 $bb $df
	ld   e, $1f                                      ; $64df: $1e $1f
	dec  a                                           ; $64e1: $3d
	rst  $38                                         ; $64e2: $ff
	pop  af                                          ; $64e3: $f1
	rst  $30                                         ; $64e4: $f7
	pop  af                                          ; $64e5: $f1
	rst  $30                                         ; $64e6: $f7
	di                                               ; $64e7: $f3
	rst  $30                                         ; $64e8: $f7
	di                                               ; $64e9: $f3
	rst  $30                                         ; $64ea: $f7
	di                                               ; $64eb: $f3
	rst  $30                                         ; $64ec: $f7
	sbc  [hl]                                        ; $64ed: $9e
	ld   e, [hl]                                     ; $64ee: $5e
	add  b                                           ; $64ef: $80
	ld   b, b                                        ; $64f0: $40
	nop                                              ; $64f1: $00
	ld   b, c                                        ; $64f2: $41
	adc  c                                           ; $64f3: $89
	ld   e, a                                        ; $64f4: $5f
	inc  c                                           ; $64f5: $0c
	xor  d                                           ; $64f6: $aa
	or   l                                           ; $64f7: $b5
	and  l                                           ; $64f8: $a5
	or   l                                           ; $64f9: $b5
	add  c                                           ; $64fa: $81
	or   l                                           ; $64fb: $b5
	add  c                                           ; $64fc: $81
	or   l                                           ; $64fd: $b5
	pop  de                                          ; $64fe: $d1
	push af                                          ; $64ff: $f5
	pop  af                                          ; $6500: $f1
	push af                                          ; $6501: $f5
	pop  af                                          ; $6502: $f1
	add  c                                           ; $6503: $81
	push af                                          ; $6504: $f5
	ld   bc, $0ec4                                   ; $6505: $01 $c4 $0e
	add  b                                           ; $6508: $80
	add  hl, bc                                      ; $6509: $09
	add  b                                           ; $650a: $80
	ld   a, [bc]                                     ; $650b: $0a
	add  b                                           ; $650c: $80
	dec  c                                           ; $650d: $0d
	add  b                                           ; $650e: $80
	ld   [$0480], sp                                 ; $650f: $08 $80 $04
	add  b                                           ; $6512: $80
	ld   [$0480], sp                                 ; $6513: $08 $80 $04
	nop                                              ; $6516: $00
	rst  $20                                         ; $6517: $e7
	add  e                                           ; $6518: $83
	ld   a, e                                        ; $6519: $7b
	inc  b                                           ; $651a: $04
	ld   a, b                                        ; $651b: $78
	ld   a, e                                        ; $651c: $7b
	ld   a, b                                        ; $651d: $78
	ld   a, e                                        ; $651e: $7b
	ld   [hl], e                                     ; $651f: $73
	add  b                                           ; $6520: $80
	ld   [hl], a                                     ; $6521: $77
	nop                                              ; $6522: $00
	ld   [hl], b                                     ; $6523: $70
	add  b                                           ; $6524: $80
	ld   a, a                                        ; $6525: $7f
	nop                                              ; $6526: $00
	ld   d, a                                        ; $6527: $57
	add  e                                           ; $6528: $83
	rst  $30                                         ; $6529: $f7
	inc  b                                           ; $652a: $04
	rla                                              ; $652b: $17
	rst  $10                                         ; $652c: $d7
	rla                                              ; $652d: $17
	rst  $10                                         ; $652e: $d7
	rst  ToBoot                                         ; $652f: $c7
	add  b                                           ; $6530: $80
	rst  $20                                         ; $6531: $e7
	nop                                              ; $6532: $00
	rlca                                             ; $6533: $07
	add  b                                           ; $6534: $80
	rst  $38                                         ; $6535: $ff
	nop                                              ; $6536: $00
	ld   b, c                                        ; $6537: $41
	add  e                                           ; $6538: $83
	ld   e, a                                        ; $6539: $5f
	ld   a, [bc]                                     ; $653a: $0a
	ld   b, d                                        ; $653b: $42
	ld   e, h                                        ; $653c: $5c
	ld   b, b                                        ; $653d: $40
	ld   e, [hl]                                     ; $653e: $5e
	ld   e, $3f                                      ; $653f: $1e $3f
	inc  a                                           ; $6541: $3c
	inc  bc                                          ; $6542: $03
	db   $f4                                         ; $6543: $f4
	rst  $38                                         ; $6544: $ff
	res  0, a                                        ; $6545: $cb $87
	push af                                          ; $6547: $f5
	add  b                                           ; $6548: $80
	ld   [hl], l                                     ; $6549: $75
	add  b                                           ; $654a: $80
	or   l                                           ; $654b: $b5
	inc  bc                                          ; $654c: $03
	dec  [hl]                                        ; $654d: $35
	push af                                          ; $654e: $f5
	ld   [bc], a                                     ; $654f: $02
	ld   [$008b], sp                                 ; $6550: $08 $8b $00
	add  b                                           ; $6553: $80
	rrca                                             ; $6554: $0f
	adc  h                                           ; $6555: $8c
	nop                                              ; $6556: $00
	ld   bc, $cdff                                   ; $6557: $01 $ff $cd
	adc  e                                           ; $655a: $8b
	dec  l                                           ; $655b: $2d
	dec  b                                           ; $655c: $05
	db   $ed                                         ; $655d: $ed
	xor  l                                           ; $655e: $ad
	xor  a                                           ; $655f: $af
	ld   a, a                                        ; $6560: $7f
	ld   [hl], b                                     ; $6561: $70
	ld   h, b                                        ; $6562: $60
	add  b                                           ; $6563: $80
	ld   [hl], a                                     ; $6564: $77
	add  b                                           ; $6565: $80
	ld   a, e                                        ; $6566: $7b
	add  c                                           ; $6567: $81
	ld   a, b                                        ; $6568: $78
	add  c                                           ; $6569: $81
	ld   a, e                                        ; $656a: $7b
	dec  d                                           ; $656b: $15
	dec  bc                                          ; $656c: $0b
	ld   l, e                                        ; $656d: $6b
	db   $fc                                         ; $656e: $fc
	rst  $38                                         ; $656f: $ff
	ld   b, $07                                      ; $6570: $06 $07
	and  $e7                                         ; $6572: $e6 $e7
	sub  $d7                                         ; $6574: $d6 $d7
	inc  [hl]                                        ; $6576: $34
	scf                                              ; $6577: $37
	jr   nc, @-$07                                   ; $6578: $30 $f7

	pop  af                                          ; $657a: $f1
	rst  $30                                         ; $657b: $f7
	pop  af                                          ; $657c: $f1
	rst  $30                                         ; $657d: $f7
	dec  l                                           ; $657e: $2d
	rst  $38                                         ; $657f: $ff
	jr   jr_07a_6591                                 ; $6580: $18 $0f

	add  b                                           ; $6582: $80
	cp   a                                           ; $6583: $bf
	add  b                                           ; $6584: $80
	sbc  $81                                         ; $6585: $de $81
	ret  nz                                          ; $6587: $c0

	add  e                                           ; $6588: $83
	sbc  $10                                         ; $6589: $de $10
	ld   e, $f5                                      ; $658b: $1e $f5
	ld   [hl], c                                     ; $658d: $71
	or   l                                           ; $658e: $b5
	ld   h, c                                        ; $658f: $61
	ld   [hl], l                                     ; $6590: $75

jr_07a_6591:
	pop  af                                          ; $6591: $f1
	push af                                          ; $6592: $f5
	push bc                                          ; $6593: $c5
	push af                                          ; $6594: $f5
	push hl                                          ; $6595: $e5
	push af                                          ; $6596: $f5
	sub  l                                           ; $6597: $95
	or   l                                           ; $6598: $b5
	sub  l                                           ; $6599: $95
	or   l                                           ; $659a: $b5
	sbc  [hl]                                        ; $659b: $9e
	adc  e                                           ; $659c: $8b
	and  b                                           ; $659d: $a0
	inc  bc                                          ; $659e: $03
	cp   a                                           ; $659f: $bf
	xor  a                                           ; $65a0: $af
	rst  JumpTable                                         ; $65a1: $df
	nop                                              ; $65a2: $00
	add  b                                           ; $65a3: $80
	rrca                                             ; $65a4: $0f
	add  d                                           ; $65a5: $82
	nop                                              ; $65a6: $00
	add  d                                           ; $65a7: $82
	rrca                                             ; $65a8: $0f
	add  b                                           ; $65a9: $80
	nop                                              ; $65aa: $00
	add  b                                           ; $65ab: $80
	rrca                                             ; $65ac: $0f
	ld   bc, $00f0                                   ; $65ad: $01 $f0 $00
	add  b                                           ; $65b0: $80
	rst  $38                                         ; $65b1: $ff
	add  d                                           ; $65b2: $82
	nop                                              ; $65b3: $00
	add  b                                           ; $65b4: $80
	rst  $38                                         ; $65b5: $ff
	inc  bc                                          ; $65b6: $03
	cp   $ff                                         ; $65b7: $fe $ff
	ld   bc, $8000                                   ; $65b9: $01 $00 $80
	cp   $80                                         ; $65bc: $fe $80
	nop                                              ; $65be: $00
	ld   [bc], a                                     ; $65bf: $02
	ldh  a, [rIE]                                    ; $65c0: $f0 $ff
	rrca                                             ; $65c2: $0f
	add  c                                           ; $65c3: $81
	nop                                              ; $65c4: $00
	ld   [$ff82], sp                                 ; $65c5: $08 $82 $ff
	ld   a, b                                        ; $65c8: $78
	rst  $38                                         ; $65c9: $ff
	ld   a, [$5178]                                  ; $65ca: $fa $78 $51
	ld   a, c                                        ; $65cd: $79
	ld   d, b                                        ; $65ce: $50
	add  b                                           ; $65cf: $80
	nop                                              ; $65d0: $00
	add  b                                           ; $65d1: $80
	rst  $38                                         ; $65d2: $ff
	add  c                                           ; $65d3: $81
	nop                                              ; $65d4: $00
	add  d                                           ; $65d5: $82
	rst  $38                                         ; $65d6: $ff
	add  b                                           ; $65d7: $80
	nop                                              ; $65d8: $00
	add  b                                           ; $65d9: $80
	rst  $38                                         ; $65da: $ff
	add  b                                           ; $65db: $80
	ld   hl, sp+$00                                  ; $65dc: $f8 $00
	nop                                              ; $65de: $00
	add  b                                           ; $65df: $80
	rst  $38                                         ; $65e0: $ff
	add  c                                           ; $65e1: $81
	nop                                              ; $65e2: $00
	ld   [$ffd0], sp                                 ; $65e3: $08 $d0 $ff
	adc  a                                           ; $65e6: $8f
	rst  $38                                         ; $65e7: $ff
	ld   e, [hl]                                     ; $65e8: $5e
	rrca                                             ; $65e9: $0f
	adc  $cf                                         ; $65ea: $ce $cf
	rrca                                             ; $65ec: $0f
	add  b                                           ; $65ed: $80
	nop                                              ; $65ee: $00
	add  b                                           ; $65ef: $80
	rst  $38                                         ; $65f0: $ff
	add  c                                           ; $65f1: $81
	nop                                              ; $65f2: $00
	dec  b                                           ; $65f3: $05
	ld   d, a                                        ; $65f4: $57
	rst  $38                                         ; $65f5: $ff
	rlca                                             ; $65f6: $07
	rst  $38                                         ; $65f7: $ff
	ld   d, b                                        ; $65f8: $50
	nop                                              ; $65f9: $00
	add  b                                           ; $65fa: $80
	ccf                                              ; $65fb: $3f
	add  b                                           ; $65fc: $80
	nop                                              ; $65fd: $00
	ld   [bc], a                                     ; $65fe: $02
	ld   a, a                                        ; $65ff: $7f
	rst  $38                                         ; $6600: $ff
	add  b                                           ; $6601: $80
	add  c                                           ; $6602: $81
	nop                                              ; $6603: $00
	add  d                                           ; $6604: $82
	rst  $38                                         ; $6605: $ff
	add  b                                           ; $6606: $80
	ld   bc, $f980                                   ; $6607: $01 $80 $f9
	ld   bc, $2d0c                                   ; $660a: $01 $0c $2d
	add  b                                           ; $660d: $80
	xor  l                                           ; $660e: $ad
	add  d                                           ; $660f: $82
	dec  l                                           ; $6610: $2d
	add  [hl]                                        ; $6611: $86
	xor  l                                           ; $6612: $ad
	add  hl, bc                                      ; $6613: $09
	pop  hl                                          ; $6614: $e1
	inc  bc                                          ; $6615: $03
	inc  b                                           ; $6616: $04
	rlca                                             ; $6617: $07
	jp   nz, $07c3                                   ; $6618: $c2 $c3 $07

	rst  ToBoot                                         ; $661b: $c7
	pop  bc                                          ; $661c: $c1
	ret  nz                                          ; $661d: $c0

	add  d                                           ; $661e: $82
	rrca                                             ; $661f: $0f
	add  b                                           ; $6620: $80
	ld   h, b                                        ; $6621: $60
	ld   d, $34                                      ; $6622: $16 $34
	rst  $30                                         ; $6624: $f7
	dec  sp                                          ; $6625: $3b
	rst  $38                                         ; $6626: $ff
	rra                                              ; $6627: $1f
	rst  JumpTable                                         ; $6628: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6629: $cf
	rst  $28                                         ; $662a: $ef
	sub  a                                           ; $662b: $97
	ld   [hl], a                                     ; $662c: $77
	and  a                                           ; $662d: $a7
	rst  $38                                         ; $662e: $ff
	ld   e, $ff                                      ; $662f: $1e $ff
	cp   h                                           ; $6631: $bc
	rlca                                             ; $6632: $07
	push bc                                          ; $6633: $c5
	sbc  $e0                                         ; $6634: $de $e0
	cp   $c0                                         ; $6636: $fe $c0
	sbc  $9e                                         ; $6638: $de $9e
	add  b                                           ; $663a: $80
	cp   a                                           ; $663b: $bf
	nop                                              ; $663c: $00
	add  b                                           ; $663d: $80
	add  d                                           ; $663e: $82
	rst  $38                                         ; $663f: $ff
	add  b                                           ; $6640: $80
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	or   h                                           ; $6643: $b4
	add  e                                           ; $6644: $83
	or   l                                           ; $6645: $b5
	add  d                                           ; $6646: $82
	dec  [hl]                                        ; $6647: $35
	add  d                                           ; $6648: $82
	push af                                          ; $6649: $f5
	add  b                                           ; $664a: $80
	dec  [hl]                                        ; $664b: $35
	ld   bc, $a081                                   ; $664c: $01 $81 $a0
	add  b                                           ; $664f: $80
	and  a                                           ; $6650: $a7
	add  d                                           ; $6651: $82
	and  b                                           ; $6652: $a0
	add  d                                           ; $6653: $82
	xor  a                                           ; $6654: $af
	add  d                                           ; $6655: $82
	xor  h                                           ; $6656: $ac
	ld   bc, $0020                                   ; $6657: $01 $20 $00
	add  b                                           ; $665a: $80
	rst  $38                                         ; $665b: $ff
	add  d                                           ; $665c: $82
	nop                                              ; $665d: $00
	add  d                                           ; $665e: $82
	rst  $38                                         ; $665f: $ff
	add  b                                           ; $6660: $80
	nop                                              ; $6661: $00
	add  b                                           ; $6662: $80
	rst  $38                                         ; $6663: $ff
	add  b                                           ; $6664: $80
	nop                                              ; $6665: $00
	ld   [bc], a                                     ; $6666: $02
	ld   hl, sp-$01                                  ; $6667: $f8 $ff
	rlca                                             ; $6669: $07
	add  c                                           ; $666a: $81
	nop                                              ; $666b: $00
	dec  b                                           ; $666c: $05
	ret  nc                                          ; $666d: $d0

	rst  $38                                         ; $666e: $ff
	ld   l, a                                        ; $666f: $6f
	rst  $38                                         ; $6670: $ff
	cp   a                                           ; $6671: $bf
	rlca                                             ; $6672: $07
	add  b                                           ; $6673: $80
	rst  $28                                         ; $6674: $ef
	nop                                              ; $6675: $00
	rlca                                             ; $6676: $07
	add  b                                           ; $6677: $80
	nop                                              ; $6678: $00
	add  b                                           ; $6679: $80
	rst  $38                                         ; $667a: $ff
	add  d                                           ; $667b: $82
	nop                                              ; $667c: $00
	add  c                                           ; $667d: $81
	rst  $38                                         ; $667e: $ff
	ld   bc, $ff80                                   ; $667f: $01 $80 $ff
	add  b                                           ; $6682: $80
	rst  JumpTable                                         ; $6683: $df
	nop                                              ; $6684: $00
	add  b                                           ; $6685: $80
	add  b                                           ; $6686: $80
	nop                                              ; $6687: $00
	add  b                                           ; $6688: $80
	rst  $38                                         ; $6689: $ff
	add  c                                           ; $668a: $81
	nop                                              ; $668b: $00
	inc  b                                           ; $668c: $04
	ld   [bc], a                                     ; $668d: $02
	rst  $38                                         ; $668e: $ff
	or   $ff                                         ; $668f: $f6 $ff
	ld   [$fc81], sp                                 ; $6691: $08 $81 $fc
	add  b                                           ; $6694: $80
	nop                                              ; $6695: $00
	ld   [bc], a                                     ; $6696: $02
	ld   e, a                                        ; $6697: $5f
	rst  $38                                         ; $6698: $ff
	and  b                                           ; $6699: $a0
	add  c                                           ; $669a: $81
	nop                                              ; $669b: $00
	add  d                                           ; $669c: $82
	rst  $38                                         ; $669d: $ff
	add  b                                           ; $669e: $80
	ldh  a, [$80]                                    ; $669f: $f0 $80
	di                                               ; $66a1: $f3
	add  b                                           ; $66a2: $80
	nop                                              ; $66a3: $00
	ld   [bc], a                                     ; $66a4: $02
	push af                                          ; $66a5: $f5
	rst  $38                                         ; $66a6: $ff
	ld   a, [bc]                                     ; $66a7: $0a
	add  c                                           ; $66a8: $81
	nop                                              ; $66a9: $00
	dec  b                                           ; $66aa: $05
	db   $f4                                         ; $66ab: $f4
	rst  $38                                         ; $66ac: $ff
	and  e                                           ; $66ad: $a3
	rst  $38                                         ; $66ae: $ff
	ld   e, b                                        ; $66af: $58
	rrca                                             ; $66b0: $0f
	add  b                                           ; $66b1: $80
	rst  $38                                         ; $66b2: $ff
	nop                                              ; $66b3: $00
	rrca                                             ; $66b4: $0f
	add  b                                           ; $66b5: $80
	nop                                              ; $66b6: $00
	add  b                                           ; $66b7: $80
	ldh  a, [$82]                                    ; $66b8: $f0 $82
	nop                                              ; $66ba: $00
	add  c                                           ; $66bb: $81
	ldh  a, [rSB]                                    ; $66bc: $f0 $01
	jr   nc, @-$2e                                   ; $66be: $30 $d0

	add  b                                           ; $66c0: $80
	sub  b                                           ; $66c1: $90
	ld   bc, $07e8                                   ; $66c2: $01 $e8 $07
	add  b                                           ; $66c5: $80
	ld   [$0b80], sp                                 ; $66c6: $08 $80 $0b
	dec  bc                                          ; $66c9: $0b
	ld   a, [bc]                                     ; $66ca: $0a
	dec  bc                                          ; $66cb: $0b
	ld   [$080b], sp                                 ; $66cc: $08 $0b $08
	dec  bc                                          ; $66cf: $0b
	ld   [$080b], sp                                 ; $66d0: $08 $0b $08
	dec  bc                                          ; $66d3: $0b
	inc  c                                           ; $66d4: $0c
	db   $fd                                         ; $66d5: $fd
	add  b                                           ; $66d6: $80
	inc  bc                                          ; $66d7: $03
	inc  b                                           ; $66d8: $04
	rst  ToBoot                                         ; $66d9: $c7
	rst  $38                                         ; $66da: $ff
	cp   a                                           ; $66db: $bf
	rst  $38                                         ; $66dc: $ff
	ld   a, a                                        ; $66dd: $7f
	add  l                                           ; $66de: $85
	rst  $38                                         ; $66df: $ff
	ld   [$7aaa], sp                                 ; $66e0: $08 $aa $7a
	inc  bc                                          ; $66e3: $03
	ld   a, e                                        ; $66e4: $7b
	dec  bc                                          ; $66e5: $0b
	ld   a, e                                        ; $66e6: $7b
	dec  de                                          ; $66e7: $1b
	ld   a, e                                        ; $66e8: $7b
	dec  sp                                          ; $66e9: $3b
	add  l                                           ; $66ea: $85
	ld   a, e                                        ; $66eb: $7b
	add  b                                           ; $66ec: $80
	rst  $38                                         ; $66ed: $ff
	add  b                                           ; $66ee: $80
	nop                                              ; $66ef: $00
	dec  e                                           ; $66f0: $1d
	ld   [hl], l                                     ; $66f1: $75
	ld   a, a                                        ; $66f2: $7f
	ld   h, b                                        ; $66f3: $60
	ld   a, a                                        ; $66f4: $7f
	ld   b, l                                        ; $66f5: $45
	ld   a, a                                        ; $66f6: $7f
	rrca                                             ; $66f7: $0f
	ld   a, a                                        ; $66f8: $7f
	rrca                                             ; $66f9: $0f
	ld   a, a                                        ; $66fa: $7f
	dec  bc                                          ; $66fb: $0b
	ld   a, a                                        ; $66fc: $7f
	db   $db                                         ; $66fd: $db
	xor  a                                           ; $66fe: $af
	ld   a, [bc]                                     ; $66ff: $0a
	ld   l, a                                        ; $6700: $6f
	and  b                                           ; $6701: $a0
	rst  $28                                         ; $6702: $ef
	ret  nz                                          ; $6703: $c0

	rst  $28                                         ; $6704: $ef
	add  c                                           ; $6705: $81
	rst  $28                                         ; $6706: $ef
	add  e                                           ; $6707: $83
	rst  $28                                         ; $6708: $ef
	add  a                                           ; $6709: $87
	rst  $28                                         ; $670a: $ef
	adc  a                                           ; $670b: $8f
	rst  $28                                         ; $670c: $ef
	ld   a, a                                        ; $670d: $7f
	ld   e, a                                        ; $670e: $5f
	add  b                                           ; $670f: $80
	ld   h, b                                        ; $6710: $60
	adc  d                                           ; $6711: $8a
	ld   l, a                                        ; $6712: $6f
	add  b                                           ; $6713: $80
	push af                                          ; $6714: $f5
	add  b                                           ; $6715: $80
	dec  c                                           ; $6716: $0d
	adc  d                                           ; $6717: $8a
	db   $ed                                         ; $6718: $ed
	nop                                              ; $6719: $00
	adc  h                                           ; $671a: $8c
	adc  l                                           ; $671b: $8d
	xor  l                                           ; $671c: $ad
	ld   bc, $6746                                   ; $671d: $01 $46 $67
	add  b                                           ; $6720: $80
	ld   l, e                                        ; $6721: $6b
	add  c                                           ; $6722: $81
	ld   l, b                                        ; $6723: $68
	jr   jr_07a_6791                                 ; $6724: $18 $6b

	ld   c, e                                        ; $6726: $4b
	ld   l, e                                        ; $6727: $6b
	dec  de                                          ; $6728: $1b
	ld   a, e                                        ; $6729: $7b
	ld   a, [de]                                     ; $672a: $1a
	ld   a, e                                        ; $672b: $7b
	jr   c, jr_07a_67a9                              ; $672c: $38 $7b

	add  h                                           ; $672e: $84
	rst  $20                                         ; $672f: $e7
	pop  de                                          ; $6730: $d1
	rst  $10                                         ; $6731: $d7
	ld   de, $1117                                   ; $6732: $11 $17 $11
	rst  $10                                         ; $6735: $d7
	sub  e                                           ; $6736: $93
	rst  $10                                         ; $6737: $d7
	rla                                              ; $6738: $17
	rst  $10                                         ; $6739: $d7
	rla                                              ; $673a: $17
	rst  $10                                         ; $673b: $d7
	ld   d, a                                        ; $673c: $57
	rst  $10                                         ; $673d: $d7
	add  b                                           ; $673e: $80
	ccf                                              ; $673f: $3f
	add  b                                           ; $6740: $80
	ld   e, [hl]                                     ; $6741: $5e
	add  b                                           ; $6742: $80
	ld   b, b                                        ; $6743: $40
	adc  b                                           ; $6744: $88
	ld   e, [hl]                                     ; $6745: $5e
	ld   bc, $3534                                   ; $6746: $01 $34 $35
	adc  b                                           ; $6749: $88
	or   l                                           ; $674a: $b5
	inc  b                                           ; $674b: $04
	or   c                                           ; $674c: $b1
	or   l                                           ; $674d: $b5
	or   c                                           ; $674e: $b1
	or   l                                           ; $674f: $b5
	adc  h                                           ; $6750: $8c
	adc  l                                           ; $6751: $8d
	xor  l                                           ; $6752: $ad
	ld   bc, $7f5f                                   ; $6753: $01 $5f $7f
	add  b                                           ; $6756: $80
	add  b                                           ; $6757: $80
	dec  c                                           ; $6758: $0d
	cp   [hl]                                        ; $6759: $be
	cp   a                                           ; $675a: $bf
	or   h                                           ; $675b: $b4
	cp   a                                           ; $675c: $bf
	and  b                                           ; $675d: $a0
	cp   a                                           ; $675e: $bf
	and  l                                           ; $675f: $a5
	cp   a                                           ; $6760: $bf
	and  a                                           ; $6761: $a7
	cp   a                                           ; $6762: $bf
	add  a                                           ; $6763: $87
	cp   a                                           ; $6764: $bf
	rst  $30                                         ; $6765: $f7
	rst  JumpTable                                         ; $6766: $df
	add  b                                           ; $6767: $80
	ccf                                              ; $6768: $3f
	add  b                                           ; $6769: $80
	rst  $38                                         ; $676a: $ff
	nop                                              ; $676b: $00
	ld   a, a                                        ; $676c: $7f
	add  a                                           ; $676d: $87
	rst  $38                                         ; $676e: $ff
	ld   bc, $efe8                                   ; $676f: $01 $e8 $ef
	add  c                                           ; $6772: $81
	ldh  a, [$87]                                    ; $6773: $f0 $87
	rst  $30                                         ; $6775: $f7
	inc  de                                          ; $6776: $13
	scf                                              ; $6777: $37
	or   a                                           ; $6778: $b7
	db   $fd                                         ; $6779: $fd
	ld   a, [$0604]                                  ; $677a: $fa $04 $06
	ld   [$f8fe], sp                                 ; $677d: $08 $fe $f8
	cp   $f8                                         ; $6780: $fe $f8
	cp   $f8                                         ; $6782: $fe $f8
	cp   $f8                                         ; $6784: $fe $f8
	cp   $fa                                         ; $6786: $fe $fa
	cp   $05                                         ; $6788: $fe $05

jr_07a_678a:
	push af                                          ; $678a: $f5
	adc  h                                           ; $678b: $8c

jr_07a_678c:
	or   $80                                         ; $678c: $f6 $80

jr_07a_678e:
	rst  $38                                         ; $678e: $ff
	add  b                                           ; $678f: $80

jr_07a_6790:
	nop                                              ; $6790: $00

jr_07a_6791:
	nop                                              ; $6791: $00

jr_07a_6792:
	ld   bc, $ff89                                   ; $6792: $01 $89 $ff
	inc  c                                           ; $6795: $0c
	pop  de                                          ; $6796: $d1
	ld   [hl], b                                     ; $6797: $70
	jr   nc, jr_07a_678a                             ; $6798: $30 $f0

	jr   nc, jr_07a_678c                             ; $679a: $30 $f0

	jr   nc, jr_07a_678e                             ; $679c: $30 $f0

	jr   nc, jr_07a_6790                             ; $679e: $30 $f0

	jr   nc, jr_07a_6792                             ; $67a0: $30 $f0

	ld   [hl], b                                     ; $67a2: $70
	add  c                                           ; $67a3: $81
	ldh  a, [$03]                                    ; $67a4: $f0 $03
	rst  $20                                         ; $67a6: $e7
	dec  bc                                          ; $67a7: $0b
	rrca                                             ; $67a8: $0f

jr_07a_67a9:
	inc  c                                           ; $67a9: $0c
	add  b                                           ; $67aa: $80
	rrca                                             ; $67ab: $0f
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	add  b                                           ; $67ae: $80
	rlca                                             ; $67af: $07
	rlca                                             ; $67b0: $07
	rrca                                             ; $67b1: $0f
	nop                                              ; $67b2: $00
	rrca                                             ; $67b3: $0f
	nop                                              ; $67b4: $00
	rrca                                             ; $67b5: $0f
	dec  c                                           ; $67b6: $0d
	rrca                                             ; $67b7: $0f
	ld   a, [$ff80]                                  ; $67b8: $fa $80 $ff
	nop                                              ; $67bb: $00
	rlca                                             ; $67bc: $07
	add  b                                           ; $67bd: $80
	ei                                               ; $67be: $fb
	ld   a, [bc]                                     ; $67bf: $0a
	dec  e                                           ; $67c0: $1d
	db   $fd                                         ; $67c1: $fd
	sbc  $fe                                         ; $67c2: $de $fe
	nop                                              ; $67c4: $00
	ret  nz                                          ; $67c5: $c0

	xor  a                                           ; $67c6: $af
	rst  $38                                         ; $67c7: $ff
	rrca                                             ; $67c8: $0f
	rst  $38                                         ; $67c9: $ff
	db   $db                                         ; $67ca: $db
	add  e                                           ; $67cb: $83
	ld   a, e                                        ; $67cc: $7b
	add  b                                           ; $67cd: $80
	ld   a, d                                        ; $67ce: $7a
	dec  bc                                          ; $67cf: $0b
	ld   [hl], b                                     ; $67d0: $70
	ld   a, c                                        ; $67d1: $79
	ld   h, d                                        ; $67d2: $62
	ld   a, e                                        ; $67d3: $7b
	ret  nz                                          ; $67d4: $c0

	rst  $38                                         ; $67d5: $ff
	adc  a                                           ; $67d6: $8f
	rst  $38                                         ; $67d7: $ff
	dec  d                                           ; $67d8: $15
	ld   a, a                                        ; $67d9: $7f
	or   l                                           ; $67da: $b5
	add  b                                           ; $67db: $80
	add  b                                           ; $67dc: $80
	ld   a, a                                        ; $67dd: $7f
	add  hl, bc                                      ; $67de: $09
	dec  bc                                          ; $67df: $0b
	rst  $38                                         ; $67e0: $ff
	pop  hl                                          ; $67e1: $e1
	rst  $38                                         ; $67e2: $ff
	ld   a, [hl+]                                    ; $67e3: $2a
	ret  nz                                          ; $67e4: $c0

	ld   e, a                                        ; $67e5: $5f
	rst  $38                                         ; $67e6: $ff
	rra                                              ; $67e7: $1f
	rst  $38                                         ; $67e8: $ff
	add  b                                           ; $67e9: $80
	rst  $28                                         ; $67ea: $ef
	nop                                              ; $67eb: $00
	cpl                                              ; $67ec: $2f
	add  c                                           ; $67ed: $81
	ld   l, a                                        ; $67ee: $6f
	add  b                                           ; $67ef: $80
	xor  a                                           ; $67f0: $af
	add  b                                           ; $67f1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67f2: $cf
	add  b                                           ; $67f3: $80
	rrca                                             ; $67f4: $0f

jr_07a_67f5:
	add  d                                           ; $67f5: $82
	rst  $38                                         ; $67f6: $ff
	add  b                                           ; $67f7: $80
	ld   l, a                                        ; $67f8: $6f
	add  d                                           ; $67f9: $82
	ld   h, b                                        ; $67fa: $60
	add  b                                           ; $67fb: $80
	ld   e, a                                        ; $67fc: $5f
	add  b                                           ; $67fd: $80
	ccf                                              ; $67fe: $3f
	add  b                                           ; $67ff: $80
	nop                                              ; $6800: $00
	add  d                                           ; $6801: $82
	rst  $38                                         ; $6802: $ff
	add  b                                           ; $6803: $80
	db   $ed                                         ; $6804: $ed
	add  d                                           ; $6805: $82
	dec  c                                           ; $6806: $0d
	add  b                                           ; $6807: $80
	push af                                          ; $6808: $f5
	add  b                                           ; $6809: $80
	ld   sp, hl                                      ; $680a: $f9
	add  b                                           ; $680b: $80
	ld   bc, $ff82                                   ; $680c: $01 $82 $ff
	nop                                              ; $680f: $00
	adc  h                                           ; $6810: $8c
	add  a                                           ; $6811: $87
	xor  l                                           ; $6812: $ad
	nop                                              ; $6813: $00
	xor  h                                           ; $6814: $ac
	add  e                                           ; $6815: $83
	xor  l                                           ; $6816: $ad
	rlca                                             ; $6817: $07
	ld   a, c                                        ; $6818: $79
	ld   a, e                                        ; $6819: $7b
	jr   c, jr_07a_6897                              ; $681a: $38 $7b

	ld   a, b                                        ; $681c: $78
	ld   a, e                                        ; $681d: $7b
	ld   a, c                                        ; $681e: $79
	ld   a, e                                        ; $681f: $7b
	add  b                                           ; $6820: $80
	ld   a, b                                        ; $6821: $78
	add  b                                           ; $6822: $80
	ld   a, e                                        ; $6823: $7b
	add  b                                           ; $6824: $80
	ld   [hl], a                                     ; $6825: $77
	add  b                                           ; $6826: $80
	ld   h, b                                        ; $6827: $60
	nop                                              ; $6828: $00
	or   a                                           ; $6829: $b7
	add  l                                           ; $682a: $85
	rst  $10                                         ; $682b: $d7
	add  b                                           ; $682c: $80
	rla                                              ; $682d: $17
	add  b                                           ; $682e: $80
	rst  $10                                         ; $682f: $d7
	add  b                                           ; $6830: $80
	rst  $20                                         ; $6831: $e7
	add  b                                           ; $6832: $80
	rlca                                             ; $6833: $07
	add  [hl]                                        ; $6834: $86

jr_07a_6835:
	ld   e, [hl]                                     ; $6835: $5e
	add  b                                           ; $6836: $80
	ld   b, b                                        ; $6837: $40
	add  b                                           ; $6838: $80
	ld   e, $80                                      ; $6839: $1e $80
	ccf                                              ; $683b: $3f
	add  b                                           ; $683c: $80
	nop                                              ; $683d: $00
	dec  bc                                          ; $683e: $0b
	and  b                                           ; $683f: $a0
	or   l                                           ; $6840: $b5
	and  c                                           ; $6841: $a1
	or   l                                           ; $6842: $b5
	and  c                                           ; $6843: $a1
	or   l                                           ; $6844: $b5
	push bc                                          ; $6845: $c5
	push af                                          ; $6846: $f5
	push bc                                          ; $6847: $c5
	push af                                          ; $6848: $f5
	push de                                          ; $6849: $d5
	push af                                          ; $684a: $f5
	add  b                                           ; $684b: $80
	ld   [hl], l                                     ; $684c: $75
	add  b                                           ; $684d: $80
	dec  [hl]                                        ; $684e: $35
	nop                                              ; $684f: $00
	cp   b                                           ; $6850: $b8
	add  l                                           ; $6851: $85
	xor  l                                           ; $6852: $ad
	add  b                                           ; $6853: $80
	xor  h                                           ; $6854: $ac
	add  b                                           ; $6855: $80
	xor  l                                           ; $6856: $ad
	rlca                                             ; $6857: $07
	xor  h                                           ; $6858: $ac
	xor  a                                           ; $6859: $af
	xor  e                                           ; $685a: $ab
	xor  a                                           ; $685b: $af
	add  a                                           ; $685c: $87
	cp   a                                           ; $685d: $bf
	rst  JumpTable                                         ; $685e: $df
	ret  nz                                          ; $685f: $c0

	add  b                                           ; $6860: $80
	cp   a                                           ; $6861: $bf
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	add  b                                           ; $6864: $80
	ld   a, a                                        ; $6865: $7f
	inc  bc                                          ; $6866: $03
	rst  $38                                         ; $6867: $ff
	nop                                              ; $6868: $00
	rst  $38                                         ; $6869: $ff
	nop                                              ; $686a: $00
	add  c                                           ; $686b: $81
	rst  $38                                         ; $686c: $ff
	jr   jr_07a_67f5                                 ; $686d: $18 $86

	rst  $38                                         ; $686f: $ff
	db   $fc                                         ; $6870: $fc
	ld   a, a                                        ; $6871: $7f
	cp   h                                           ; $6872: $bc
	cp   a                                           ; $6873: $bf
	inc  e                                           ; $6874: $1c
	rst  JumpTable                                         ; $6875: $df
	call z, $04ef                                    ; $6876: $cc $ef $04
	rst  $20                                         ; $6879: $e7
	db   $10                                         ; $687a: $10
	rst  $38                                         ; $687b: $ff
	push bc                                          ; $687c: $c5
	rst  $38                                         ; $687d: $ff
	ldh  [$b7], a                                    ; $687e: $e0 $b7
	scf                                              ; $6880: $37
	or   b                                           ; $6881: $b0
	scf                                              ; $6882: $37
	or   a                                           ; $6883: $b7
	jr   nz, jr_07a_6835                             ; $6884: $20 $af

	adc  a                                           ; $6886: $8f
	add  b                                           ; $6887: $80
	sbc  a                                           ; $6888: $9f
	nop                                              ; $6889: $00
	add  b                                           ; $688a: $80
	add  d                                           ; $688b: $82
	rst  $38                                         ; $688c: $ff
	nop                                              ; $688d: $00
	ld   c, $80                                      ; $688e: $0e $80
	cp   $00                                         ; $6890: $fe $00
	ld   c, $80                                      ; $6892: $0e $80
	or   $1a                                         ; $6894: $f6 $1a
	ld   a, [bc]                                     ; $6896: $0a

jr_07a_6897:
	ld   a, [$fcec]                                  ; $6897: $fa $ec $fc
	ldh  [rP1], a                                    ; $689a: $e0 $00
	db   $fd                                         ; $689c: $fd
	rst  $38                                         ; $689d: $ff
	ld   hl, sp-$01                                  ; $689e: $f8 $ff
	di                                               ; $68a0: $f3
	or   $e6                                         ; $68a1: $f6 $e6
	or   $c6                                         ; $68a3: $f6 $c6
	or   $84                                         ; $68a5: $f6 $84
	push af                                          ; $68a7: $f5
	sub  c                                           ; $68a8: $91
	di                                               ; $68a9: $f3
	or   h                                           ; $68aa: $b4
	rst  $30                                         ; $68ab: $f7
	jr   nc, @+$01                                   ; $68ac: $30 $ff

	ccf                                              ; $68ae: $3f
	rst  $38                                         ; $68af: $ff
	ld   a, [hl]                                     ; $68b0: $7e
	add  b                                           ; $68b1: $80
	rst  $38                                         ; $68b2: $ff
	nop                                              ; $68b3: $00
	ld   bc, $fe80                                   ; $68b4: $01 $80 $fe
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	add  c                                           ; $68b9: $81
	rst  $38                                         ; $68ba: $ff
	ld   b, $00                                      ; $68bb: $06 $00
	rst  $38                                         ; $68bd: $ff
	dec  bc                                          ; $68be: $0b
	rst  $38                                         ; $68bf: $ff
	pop  hl                                          ; $68c0: $e1
	rst  $38                                         ; $68c1: $ff
	dec  [hl]                                        ; $68c2: $35
	add  e                                           ; $68c3: $83
	ret  nc                                          ; $68c4: $d0

	add  b                                           ; $68c5: $80
	ld   d, b                                        ; $68c6: $50
	nop                                              ; $68c7: $00
	db   $10                                         ; $68c8: $10
	add  b                                           ; $68c9: $80
	sub  b                                           ; $68ca: $90
	nop                                              ; $68cb: $00
	db   $10                                         ; $68cc: $10
	add  d                                           ; $68cd: $82
	ldh  a, [rP1]                                    ; $68ce: $f0 $00
	rst  $38                                         ; $68d0: $ff
	add  b                                           ; $68d1: $80
	nop                                              ; $68d2: $00
	add  [hl]                                        ; $68d3: $86
	rrca                                             ; $68d4: $0f
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	add  d                                           ; $68d7: $82
	rrca                                             ; $68d8: $0f
	nop                                              ; $68d9: $00
	ldh  a, [$80]                                    ; $68da: $f0 $80
	nop                                              ; $68dc: $00
	add  [hl]                                        ; $68dd: $86
	rst  $38                                         ; $68de: $ff
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	add  d                                           ; $68e1: $82
	rst  $38                                         ; $68e2: $ff
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	add  b                                           ; $68e5: $80
	db   $10                                         ; $68e6: $10
	add  [hl]                                        ; $68e7: $86
	rst  $38                                         ; $68e8: $ff
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	add  d                                           ; $68eb: $82
	rst  $38                                         ; $68ec: $ff
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	add  b                                           ; $68ef: $80
	dec  l                                           ; $68f0: $2d
	add  [hl]                                        ; $68f1: $86
	xor  l                                           ; $68f2: $ad
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	add  d                                           ; $68f5: $82
	rst  $38                                         ; $68f6: $ff
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	add  h                                           ; $68f9: $84
	ld   a, a                                        ; $68fa: $7f
	add  b                                           ; $68fb: $80
	nop                                              ; $68fc: $00
	add  b                                           ; $68fd: $80
	rst  $38                                         ; $68fe: $ff
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	add  d                                           ; $6901: $82
	rst  $38                                         ; $6902: $ff
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	add  h                                           ; $6905: $84
	rst  $38                                         ; $6906: $ff
	add  b                                           ; $6907: $80
	nop                                              ; $6908: $00
	add  b                                           ; $6909: $80
	rst  $38                                         ; $690a: $ff
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	add  d                                           ; $690d: $82
	rst  $38                                         ; $690e: $ff
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	add  h                                           ; $6911: $84
	push af                                          ; $6912: $f5
	add  b                                           ; $6913: $80
	dec  b                                           ; $6914: $05
	add  b                                           ; $6915: $80
	db   $fd                                         ; $6916: $fd
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	add  d                                           ; $6919: $82
	rst  $38                                         ; $691a: $ff
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	add  b                                           ; $691d: $80
	and  c                                           ; $691e: $a1
	add  [hl]                                        ; $691f: $86
	and  a                                           ; $6920: $a7
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	add  d                                           ; $6923: $82
	rst  $38                                         ; $6924: $ff
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	add  b                                           ; $6927: $80
	call nc, $ff86                                   ; $6928: $d4 $86 $ff
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	add  d                                           ; $692d: $82
	rst  $38                                         ; $692e: $ff
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	add  b                                           ; $6931: $80
	ld   a, l                                        ; $6932: $7d
	add  [hl]                                        ; $6933: $86
	rst  $38                                         ; $6934: $ff
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	add  d                                           ; $6937: $82
	rst  $38                                         ; $6938: $ff
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	add  b                                           ; $693b: $80
	ld   b, b                                        ; $693c: $40
	add  [hl]                                        ; $693d: $86
	rst  $38                                         ; $693e: $ff
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	add  d                                           ; $6941: $82
	rst  $38                                         ; $6942: $ff
	nop                                              ; $6943: $00
	rrca                                             ; $6944: $0f
	add  b                                           ; $6945: $80
	nop                                              ; $6946: $00
	add  [hl]                                        ; $6947: $86
	ldh  a, [rP1]                                    ; $6948: $f0 $00
	nop                                              ; $694a: $00
	add  e                                           ; $694b: $83
	ldh  a, [$8e]                                    ; $694c: $f0 $8e
	rrca                                             ; $694e: $0f
	adc  [hl]                                        ; $694f: $8e
	rst  $38                                         ; $6950: $ff
	add  l                                           ; $6951: $85
	nop                                              ; $6952: $00
	inc  b                                           ; $6953: $04
	rrca                                             ; $6954: $0f
	ld   bc, $f0f1                                   ; $6955: $01 $f1 $f0
	pop  af                                          ; $6958: $f1
	add  b                                           ; $6959: $80
	ld   bc, $f101                                   ; $695a: $01 $01 $f1
	rrca                                             ; $695d: $0f
	add  l                                           ; $695e: $85
	nop                                              ; $695f: $00
	add  b                                           ; $6960: $80
	ldh  [$03], a                                    ; $6961: $e0 $03
	rst  $38                                         ; $6963: $ff
	ccf                                              ; $6964: $3f
	ld   sp, hl                                      ; $6965: $f9
	add  $80                                         ; $6966: $c6 $80
	db   $fd                                         ; $6968: $fd
	nop                                              ; $6969: $00
	rst  $38                                         ; $696a: $ff
	add  a                                           ; $696b: $87
	nop                                              ; $696c: $00
	add  c                                           ; $696d: $81
	rst  $38                                         ; $696e: $ff
	inc  bc                                          ; $696f: $03
	nop                                              ; $6970: $00
	ldh  a, [rIE]                                    ; $6971: $f0 $ff
	ldh  a, [$87]                                    ; $6973: $f0 $87
	nop                                              ; $6975: $00
	add  c                                           ; $6976: $81
	rst  $38                                         ; $6977: $ff
	add  b                                           ; $6978: $80
	nop                                              ; $6979: $00
	ld   bc, $3fff                                   ; $697a: $01 $ff $3f
	add  b                                           ; $697d: $80
	cpl                                              ; $697e: $2f
	adc  e                                           ; $697f: $8b
	inc  l                                           ; $6980: $2c
	nop                                              ; $6981: $00
	db   $ed                                         ; $6982: $ed
	add  b                                           ; $6983: $80
	pop  af                                          ; $6984: $f1
	add  c                                           ; $6985: $81
	ld   bc, $7100                                   ; $6986: $01 $00 $71

jr_07a_6989:
	add  a                                           ; $6989: $87
	ld   bc, $8f05                                   ; $698a: $01 $05 $8f
	rst  $38                                         ; $698d: $ff
	adc  l                                           ; $698e: $8d
	adc  a                                           ; $698f: $8f
	sub  d                                           ; $6990: $92
	sub  b                                           ; $6991: $90
	add  b                                           ; $6992: $80
	xor  [hl]                                        ; $6993: $ae
	add  b                                           ; $6994: $80
	or   e                                           ; $6995: $b3
	add  b                                           ; $6996: $80
	or   b                                           ; $6997: $b0
	nop                                              ; $6998: $00
	or   c                                           ; $6999: $b1
	add  c                                           ; $699a: $81
	or   a                                           ; $699b: $b7
	inc  b                                           ; $699c: $04
	ld   a, a                                        ; $699d: $7f
	ld   sp, hl                                      ; $699e: $f9
	inc  bc                                          ; $699f: $03
	rst  $38                                         ; $69a0: $ff
	ld   a, h                                        ; $69a1: $7c
	add  b                                           ; $69a2: $80
	rst  $38                                         ; $69a3: $ff
	inc  b                                           ; $69a4: $04
	ccf                                              ; $69a5: $3f
	db   $fd                                         ; $69a6: $fd
	di                                               ; $69a7: $f3
	rst  $38                                         ; $69a8: $ff
	cp   $80                                         ; $69a9: $fe $80
	rst  $38                                         ; $69ab: $ff
	add  b                                           ; $69ac: $80
	db   $fc                                         ; $69ad: $fc
	dec  bc                                          ; $69ae: $0b
	jr   nc, @+$01                                   ; $69af: $30 $ff

	ld   a, a                                        ; $69b1: $7f
	add  c                                           ; $69b2: $81
	ld   hl, $8df1                                   ; $69b3: $21 $f1 $8d
	db   $fd                                         ; $69b6: $fd
	dec  b                                           ; $69b7: $05
	push af                                          ; $69b8: $f5
	ld   b, l                                        ; $69b9: $45
	dec  d                                           ; $69ba: $15
	add  d                                           ; $69bb: $82
	push de                                          ; $69bc: $d5
	nop                                              ; $69bd: $00
	pop  bc                                          ; $69be: $c1
	adc  l                                           ; $69bf: $8d
	inc  l                                           ; $69c0: $2c
	nop                                              ; $69c1: $00
	sbc  l                                           ; $69c2: $9d
	adc  l                                           ; $69c3: $8d
	ld   bc, $c100                                   ; $69c4: $01 $00 $c1
	add  a                                           ; $69c7: $87
	or   a                                           ; $69c8: $b7
	ld   b, $b6                                      ; $69c9: $06 $b6
	or   b                                           ; $69cb: $b0
	and  b                                           ; $69cc: $a0
	xor  [hl]                                        ; $69cd: $ae
	adc  [hl]                                        ; $69ce: $8e
	sbc  a                                           ; $69cf: $9f
	db   $d3                                         ; $69d0: $d3
	adc  e                                           ; $69d1: $8b
	db   $fd                                         ; $69d2: $fd
	ld   [bc], a                                     ; $69d3: $02
	pop  af                                          ; $69d4: $f1
	ldh  a, [$e4]                                    ; $69d5: $f0 $e4
	adc  e                                           ; $69d7: $8b
	push de                                          ; $69d8: $d5
	inc  b                                           ; $69d9: $04
	ld   b, l                                        ; $69da: $45
	ld   d, l                                        ; $69db: $55
	ld   h, c                                        ; $69dc: $61
	ld   bc, $8100                                   ; $69dd: $01 $00 $81
	ld   bc, $0004                                   ; $69e0: $01 $04 $00
	ld   bc, $0100                                   ; $69e3: $01 $00 $01
	nop                                              ; $69e6: $00
	add  e                                           ; $69e7: $83
	ld   bc, $ce09                                   ; $69e8: $01 $09 $ce
	cp   a                                           ; $69eb: $bf
	ld   d, c                                        ; $69ec: $51
	rst  $38                                         ; $69ed: $ff
	ld   c, $ff                                      ; $69ee: $0e $ff
	ld   e, a                                        ; $69f0: $5f
	rst  $38                                         ; $69f1: $ff
	ret  nz                                          ; $69f2: $c0

	cp   a                                           ; $69f3: $bf
	add  b                                           ; $69f4: $80
	rst  JumpTable                                         ; $69f5: $df
	add  b                                           ; $69f6: $80
	rst  $28                                         ; $69f7: $ef
	add  b                                           ; $69f8: $80
	ldh  a, [rTMA]                                   ; $69f9: $f0 $06
	nop                                              ; $69fb: $00
	or   e                                           ; $69fc: $b3
	sub  e                                           ; $69fd: $93
	or   a                                           ; $69fe: $b7
	ld   b, a                                        ; $69ff: $47
	ldh  a, [$1f]                                    ; $6a00: $f0 $1f
	add  b                                           ; $6a02: $80
	rst  $38                                         ; $6a03: $ff
	nop                                              ; $6a04: $00
	cp   a                                           ; $6a05: $bf
	add  b                                           ; $6a06: $80
	jr   nc, jr_07a_6989                             ; $6a07: $30 $80

	inc  sp                                          ; $6a09: $33
	add  b                                           ; $6a0a: $80
	or   e                                           ; $6a0b: $b3
	add  hl, bc                                      ; $6a0c: $09
	ld   [bc], a                                     ; $6a0d: $02
	add  [hl]                                        ; $6a0e: $86
	nop                                              ; $6a0f: $00
	add  b                                           ; $6a10: $80
	rrca                                             ; $6a11: $0f
	add  b                                           ; $6a12: $80
	dec  b                                           ; $6a13: $05
	add  b                                           ; $6a14: $80
	ld   a, [bc]                                     ; $6a15: $0a
	adc  b                                           ; $6a16: $88
	nop                                              ; $6a17: $00
	add  b                                           ; $6a18: $80
	ld   [$5580], a                                  ; $6a19: $ea $80 $55
	add  b                                           ; $6a1c: $80
	and  b                                           ; $6a1d: $a0
	adc  b                                           ; $6a1e: $88
	nop                                              ; $6a1f: $00
	add  b                                           ; $6a20: $80
	xor  [hl]                                        ; $6a21: $ae
	add  b                                           ; $6a22: $80
	ld   [bc], a                                     ; $6a23: $02
	add  b                                           ; $6a24: $80
	inc  bc                                          ; $6a25: $03
	add  b                                           ; $6a26: $80
	dec  d                                           ; $6a27: $15
	add  a                                           ; $6a28: $87
	nop                                              ; $6a29: $00
	rlca                                             ; $6a2a: $07
	ld   [$1109], sp                                 ; $6a2b: $08 $09 $11

jr_07a_6a2e:
	ld   a, [de]                                     ; $6a2e: $1a
	ld   a, [hl+]                                    ; $6a2f: $2a
	xor  a                                           ; $6a30: $af
	rst  JumpTable                                         ; $6a31: $df
	ld   d, b                                        ; $6a32: $50
	add  l                                           ; $6a33: $85
	nop                                              ; $6a34: $00
	add  b                                           ; $6a35: $80
	ld   a, [bc]                                     ; $6a36: $0a
	add  b                                           ; $6a37: $80
	ld   d, l                                        ; $6a38: $55
	add  b                                           ; $6a39: $80
	xor  a                                           ; $6a3a: $af
	ld   [bc], a                                     ; $6a3b: $02
	rst  $38                                         ; $6a3c: $ff
	ld   hl, sp+$07                                  ; $6a3d: $f8 $07
	add  l                                           ; $6a3f: $85
	nop                                              ; $6a40: $00
	ld   [bc], a                                     ; $6a41: $02
	cp   a                                           ; $6a42: $bf
	cp   h                                           ; $6a43: $bc
	db   $fc                                         ; $6a44: $fc
	add  b                                           ; $6a45: $80
	ldh  [$81], a                                    ; $6a46: $e0 $81
	nop                                              ; $6a48: $00
	nop                                              ; $6a49: $00
	rst  $38                                         ; $6a4a: $ff
	add  l                                           ; $6a4b: $85
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	rst  $38                                         ; $6a4e: $ff
	add  e                                           ; $6a4f: $83
	nop                                              ; $6a50: $00
	add  b                                           ; $6a51: $80
	ld   [bc], a                                     ; $6a52: $02
	nop                                              ; $6a53: $00
	rst  $38                                         ; $6a54: $ff
	add  l                                           ; $6a55: $85
	nop                                              ; $6a56: $00
	ld   bc, $00fe                                   ; $6a57: $01 $fe $00
	add  b                                           ; $6a5a: $80
	ld   b, b                                        ; $6a5b: $40
	ld   bc, $0001                                   ; $6a5c: $01 $01 $00
	add  b                                           ; $6a5f: $80
	ldh  [rP1], a                                    ; $6a60: $e0 $00
	rst  $38                                         ; $6a62: $ff
	add  l                                           ; $6a63: $85
	nop                                              ; $6a64: $00
	ld   [$000f], sp                                 ; $6a65: $08 $0f $00
	stop                                             ; $6a68: $10 $00
	jr   nz, jr_07a_6a6c                             ; $6a6a: $20 $00

jr_07a_6a6c:
	jr   nz, jr_07a_6a2e                             ; $6a6c: $20 $c0

	rst  JumpTable                                         ; $6a6e: $df
	add  l                                           ; $6a6f: $85
	nop                                              ; $6a70: $00
	ld   bc, $00ff                                   ; $6a71: $01 $ff $00
	add  b                                           ; $6a74: $80
	ret  nz                                          ; $6a75: $c0

	add  b                                           ; $6a76: $80
	nop                                              ; $6a77: $00
	add  b                                           ; $6a78: $80
	ldh  [rP1], a                                    ; $6a79: $e0 $00
	rst  $38                                         ; $6a7b: $ff
	add  l                                           ; $6a7c: $85
	nop                                              ; $6a7d: $00
	ld   [$00e0], sp                                 ; $6a7e: $08 $e0 $00
	pop  bc                                          ; $6a81: $c1
	ret  nz                                          ; $6a82: $c0

	ld   [de], a                                     ; $6a83: $12
	nop                                              ; $6a84: $00
	cp   $f0                                         ; $6a85: $fe $f0
	db   $fd                                         ; $6a87: $fd
	add  l                                           ; $6a88: $85
	nop                                              ; $6a89: $00
	ld   bc, $00ff                                   ; $6a8a: $01 $ff $00
	add  b                                           ; $6a8d: $80
	ld   b, b                                        ; $6a8e: $40
	add  b                                           ; $6a8f: $80
	ld   bc, $6180                                   ; $6a90: $01 $80 $61
	nop                                              ; $6a93: $00
	rst  $38                                         ; $6a94: $ff
	add  l                                           ; $6a95: $85
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	rst  $38                                         ; $6a98: $ff
	add  b                                           ; $6a99: $80
	ld   bc, $0081                                   ; $6a9a: $01 $81 $00
	add  b                                           ; $6a9d: $80
	ret  nz                                          ; $6a9e: $c0

	nop                                              ; $6a9f: $00
	rst  $38                                         ; $6aa0: $ff
	add  l                                           ; $6aa1: $85
	nop                                              ; $6aa2: $00
	add  b                                           ; $6aa3: $80
	cp   $00                                         ; $6aa4: $fe $00
	rst  $38                                         ; $6aa6: $ff
	add  b                                           ; $6aa7: $80
	ccf                                              ; $6aa8: $3f
	add  b                                           ; $6aa9: $80
	inc  bc                                          ; $6aaa: $03
	ld   bc, $ff00                                   ; $6aab: $01 $00 $ff
	add  l                                           ; $6aae: $85
	nop                                              ; $6aaf: $00
	add  b                                           ; $6ab0: $80
	xor  b                                           ; $6ab1: $a8

jr_07a_6ab2:
	add  b                                           ; $6ab2: $80
	push de                                          ; $6ab3: $d5
	add  b                                           ; $6ab4: $80
	cp   $03                                         ; $6ab5: $fe $03
	rst  $38                                         ; $6ab7: $ff
	ld   a, a                                        ; $6ab8: $7f
	add  b                                           ; $6ab9: $80
	nop                                              ; $6aba: $00
	add  b                                           ; $6abb: $80
	ld   bc, $0a80                                   ; $6abc: $01 $80 $0a
	add  b                                           ; $6abf: $80
	dec  b                                           ; $6ac0: $05
	add  e                                           ; $6ac1: $83
	rrca                                             ; $6ac2: $0f
	add  c                                           ; $6ac3: $81
	nop                                              ; $6ac4: $00
	ld   bc, $0a05                                   ; $6ac5: $01 $05 $0a
	add  b                                           ; $6ac8: $80
	ld   d, l                                        ; $6ac9: $55
	add  b                                           ; $6aca: $80
	xor  a                                           ; $6acb: $af
	add  b                                           ; $6acc: $80
	ld   a, a                                        ; $6acd: $7f
	nop                                              ; $6ace: $00
	rst  $38                                         ; $6acf: $ff
	add  b                                           ; $6ad0: $80
	cp   $80                                         ; $6ad1: $fe $80
	ret  nz                                          ; $6ad3: $c0

	add  c                                           ; $6ad4: $81
	nop                                              ; $6ad5: $00
	ld   bc, $ab54                                   ; $6ad6: $01 $54 $ab
	add  b                                           ; $6ad9: $80
	ld   e, a                                        ; $6ada: $5f
	add  c                                           ; $6adb: $81
	cp   $01                                         ; $6adc: $fe $01
	ld   hl, sp-$07                                  ; $6ade: $f8 $f9
	add  l                                           ; $6ae0: $85
	nop                                              ; $6ae1: $00
	db   $10                                         ; $6ae2: $10
	ld   a, b                                        ; $6ae3: $78
	adc  a                                           ; $6ae4: $8f
	rrca                                             ; $6ae5: $0f
	nop                                              ; $6ae6: $00
	ld   [$1000], sp                                 ; $6ae7: $08 $00 $10
	nop                                              ; $6aea: $00
	jr   nz, jr_07a_6aed                             ; $6aeb: $20 $00

jr_07a_6aed:
	and  b                                           ; $6aed: $a0
	ld   b, b                                        ; $6aee: $40
	ld   d, b                                        ; $6aef: $50
	nop                                              ; $6af0: $00
	adc  d                                           ; $6af1: $8a
	ld   [bc], a                                     ; $6af2: $02
	ld   hl, sp-$80                                  ; $6af3: $f8 $80
	add  b                                           ; $6af5: $80
	add  l                                           ; $6af6: $85
	nop                                              ; $6af7: $00
	add  b                                           ; $6af8: $80
	ld   b, $80                                      ; $6af9: $06 $80
	nop                                              ; $6afb: $00
	add  b                                           ; $6afc: $80
	ld   e, $84                                      ; $6afd: $1e $84
	nop                                              ; $6aff: $00
	add  b                                           ; $6b00: $80
	ld   e, $80                                      ; $6b01: $1e $80
	nop                                              ; $6b03: $00
	add  b                                           ; $6b04: $80
	ld   e, $80                                      ; $6b05: $1e $80
	nop                                              ; $6b07: $00
	add  b                                           ; $6b08: $80
	ld   e, $80                                      ; $6b09: $1e $80
	ld   c, $8c                                      ; $6b0b: $0e $8c
	ld   e, $80                                      ; $6b0d: $1e $80
	nop                                              ; $6b0f: $00
	add  b                                           ; $6b10: $80
	ldh  a, [rSB]                                    ; $6b11: $f0 $01
	ld   bc, $8000                                   ; $6b13: $01 $00 $80
	ldh  a, [rSB]                                    ; $6b16: $f0 $01
	ld   bc, $8000                                   ; $6b18: $01 $00 $80
	ldh  a, [$80]                                    ; $6b1b: $f0 $80
	nop                                              ; $6b1d: $00
	add  b                                           ; $6b1e: $80
	ldh  a, [$0b]                                    ; $6b1f: $f0 $0b
	ld   [hl], b                                     ; $6b21: $70
	nop                                              ; $6b22: $00
	adc  b                                           ; $6b23: $88
	nop                                              ; $6b24: $00
	ld   [$1000], sp                                 ; $6b25: $08 $00 $10
	nop                                              ; $6b28: $00
	jr   nz, jr_07a_6b2b                             ; $6b29: $20 $00

jr_07a_6b2b:
	ret  nc                                          ; $6b2b: $d0

	db   $10                                         ; $6b2c: $10
	add  b                                           ; $6b2d: $80
	nop                                              ; $6b2e: $00
	add  b                                           ; $6b2f: $80
	jr   nc, jr_07a_6ab2                             ; $6b30: $30 $80

	nop                                              ; $6b32: $00
	add  b                                           ; $6b33: $80
	ldh  a, [$80]                                    ; $6b34: $f0 $80
	nop                                              ; $6b36: $00
	add  b                                           ; $6b37: $80
	ldh  a, [$80]                                    ; $6b38: $f0 $80
	nop                                              ; $6b3a: $00
	add  b                                           ; $6b3b: $80
	ldh  a, [$80]                                    ; $6b3c: $f0 $80
	nop                                              ; $6b3e: $00
	add  b                                           ; $6b3f: $80
	ldh  a, [$0b]                                    ; $6b40: $f0 $0b
	rlca                                             ; $6b42: $07
	nop                                              ; $6b43: $00
	ld   hl, sp-$10                                  ; $6b44: $f8 $f0
	stop                                             ; $6b46: $10 $00
	pop  hl                                          ; $6b48: $e1
	ldh  [rAUD1ENV], a                               ; $6b49: $e0 $12
	nop                                              ; $6b4b: $00
	db   $ec                                         ; $6b4c: $ec
	ldh  [$80], a                                    ; $6b4d: $e0 $80
	nop                                              ; $6b4f: $00
	add  b                                           ; $6b50: $80
	ldh  a, [$80]                                    ; $6b51: $f0 $80
	ld   bc, $9103                                   ; $6b53: $01 $03 $91
	ld   de, $0181                                   ; $6b56: $11 $81 $01
	add  b                                           ; $6b59: $80
	ld   de, $0180                                   ; $6b5a: $11 $80 $01
	add  b                                           ; $6b5d: $80
	ld   [hl], c                                     ; $6b5e: $71
	add  b                                           ; $6b5f: $80
	ld   bc, $f180                                   ; $6b60: $01 $80 $f1
	add  b                                           ; $6b63: $80
	ldh  [$80], a                                    ; $6b64: $e0 $80
	xor  $80                                         ; $6b66: $ee $80
	ldh  [$80], a                                    ; $6b68: $e0 $80
	rst  $28                                         ; $6b6a: $ef
	add  b                                           ; $6b6b: $80
	ldh  [$80], a                                    ; $6b6c: $e0 $80
	rst  $28                                         ; $6b6e: $ef
	add  b                                           ; $6b6f: $80
	ldh  [$80], a                                    ; $6b70: $e0 $80
	rst  $28                                         ; $6b72: $ef
	adc  b                                           ; $6b73: $88
	nop                                              ; $6b74: $00
	add  b                                           ; $6b75: $80
	rrca                                             ; $6b76: $0f
	add  b                                           ; $6b77: $80
	nop                                              ; $6b78: $00
	add  b                                           ; $6b79: $80
	rrca                                             ; $6b7a: $0f
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	add  b                                           ; $6b7d: $80
	rlca                                             ; $6b7e: $07
	adc  c                                           ; $6b7f: $89
	nop                                              ; $6b80: $00
	add  b                                           ; $6b81: $80
	rrca                                             ; $6b82: $0f
	nop                                              ; $6b83: $00
	ldh  a, [$8d]                                    ; $6b84: $f0 $8d
	nop                                              ; $6b86: $00
	ld   bc, $1fef                                   ; $6b87: $01 $ef $1f
	adc  h                                           ; $6b8a: $8c
	rst  $38                                         ; $6b8b: $ff

jr_07a_6b8c:
	ld   bc, $0001                                   ; $6b8c: $01 $01 $00
	add  b                                           ; $6b8f: $80
	ld   b, $00                                      ; $6b90: $06 $00
	ld   bc, $0087                                   ; $6b92: $01 $87 $00
	add  b                                           ; $6b95: $80
	ret  nz                                          ; $6b96: $c0

	ld   b, $f0                                      ; $6b97: $06 $f0
	nop                                              ; $6b99: $00
	rla                                              ; $6b9a: $17
	rlca                                             ; $6b9b: $07
	jr   nz, jr_07a_6b9e                             ; $6b9c: $20 $00

jr_07a_6b9e:
	ret  nz                                          ; $6b9e: $c0

	adc  c                                           ; $6b9f: $89
	nop                                              ; $6ba0: $00
	add  b                                           ; $6ba1: $80
	sbc  a                                           ; $6ba2: $9f
	add  b                                           ; $6ba3: $80
	nop                                              ; $6ba4: $00
	add  b                                           ; $6ba5: $80
	ld   b, $80                                      ; $6ba6: $06 $80
	nop                                              ; $6ba8: $00
	add  h                                           ; $6ba9: $84
	ld   b, [hl]                                     ; $6baa: $46
	add  b                                           ; $6bab: $80
	nop                                              ; $6bac: $00
	add  b                                           ; $6bad: $80
	sbc  a                                           ; $6bae: $9f
	add  b                                           ; $6baf: $80
	nop                                              ; $6bb0: $00
	add  b                                           ; $6bb1: $80
	ret  nz                                          ; $6bb2: $c0

	add  b                                           ; $6bb3: $80
	nop                                              ; $6bb4: $00
	add  h                                           ; $6bb5: $84
	ret  nz                                          ; $6bb6: $c0

	add  b                                           ; $6bb7: $80
	ld   e, $80                                      ; $6bb8: $1e $80
	sbc  [hl]                                        ; $6bba: $9e
	adc  h                                           ; $6bbb: $8c
	nop                                              ; $6bbc: $00
	add  b                                           ; $6bbd: $80
	db   $fc                                         ; $6bbe: $fc
	adc  h                                           ; $6bbf: $8c
	nop                                              ; $6bc0: $00
	add  b                                           ; $6bc1: $80
	db   $fc                                         ; $6bc2: $fc
	add  h                                           ; $6bc3: $84
	nop                                              ; $6bc4: $00
	add  h                                           ; $6bc5: $84
	ld   b, b                                        ; $6bc6: $40
	add  b                                           ; $6bc7: $80
	ld   bc, $fd80                                   ; $6bc8: $01 $80 $fd
	add  h                                           ; $6bcb: $84
	nop                                              ; $6bcc: $00
	add  h                                           ; $6bcd: $84
	add  b                                           ; $6bce: $80
	add  b                                           ; $6bcf: $80
	ldh  [$80], a                                    ; $6bd0: $e0 $80
	rst  $28                                         ; $6bd2: $ef
	adc  h                                           ; $6bd3: $8c

jr_07a_6bd4:
	nop                                              ; $6bd4: $00
	add  b                                           ; $6bd5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd6: $cf
	add  b                                           ; $6bd7: $80
	nop                                              ; $6bd8: $00
	add  b                                           ; $6bd9: $80

jr_07a_6bda:
	ld   b, $80                                      ; $6bda: $06 $80
	nop                                              ; $6bdc: $00
	add  h                                           ; $6bdd: $84
	ld   b, $80                                      ; $6bde: $06 $80

jr_07a_6be0:
	nop                                              ; $6be0: $00
	add  b                                           ; $6be1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6be2: $cf
	add  b                                           ; $6be3: $80
	nop                                              ; $6be4: $00
	add  b                                           ; $6be5: $80
	ret  nz                                          ; $6be6: $c0

	add  b                                           ; $6be7: $80
	nop                                              ; $6be8: $00
	add  h                                           ; $6be9: $84
	ret  nz                                          ; $6bea: $c0

	adc  [hl]                                        ; $6beb: $8e
	rst  $38                                         ; $6bec: $ff
	adc  [hl]                                        ; $6bed: $8e
	ret  nz                                          ; $6bee: $c0

	adc  [hl]                                        ; $6bef: $8e
	nop                                              ; $6bf0: $00
	add  h                                           ; $6bf1: $84
	ld   b, [hl]                                     ; $6bf2: $46
	adc  b                                           ; $6bf3: $88
	ld   b, b                                        ; $6bf4: $40
	add  h                                           ; $6bf5: $84
	ret  nz                                          ; $6bf6: $c0

	add  b                                           ; $6bf7: $80
	nop                                              ; $6bf8: $00
	add  [hl]                                        ; $6bf9: $86
	add  b                                           ; $6bfa: $80
	adc  [hl]                                        ; $6bfb: $8e
	ld   b, b                                        ; $6bfc: $40
	adc  [hl]                                        ; $6bfd: $8e
	add  b                                           ; $6bfe: $80
	add  h                                           ; $6bff: $84
	ld   b, $84                                      ; $6c00: $06 $84
	nop                                              ; $6c02: $00
	add  b                                           ; $6c03: $80
	ccf                                              ; $6c04: $3f
	add  b                                           ; $6c05: $80
	jr   nz, jr_07a_6b8c                             ; $6c06: $20 $84

	ret  nz                                          ; $6c08: $c0

	add  h                                           ; $6c09: $84
	nop                                              ; $6c0a: $00
	add  b                                           ; $6c0b: $80
	rst  $38                                         ; $6c0c: $ff
	add  b                                           ; $6c0d: $80
	nop                                              ; $6c0e: $00
	adc  e                                           ; $6c0f: $8b
	rst  $38                                         ; $6c10: $ff
	add  c                                           ; $6c11: $81
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	ccf                                              ; $6c14: $3f
	add  a                                           ; $6c15: $87
	ret  nz                                          ; $6c16: $c0

	add  c                                           ; $6c17: $81
	rst  $38                                         ; $6c18: $ff
	add  c                                           ; $6c19: $81
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	rst  $38                                         ; $6c1c: $ff
	add  a                                           ; $6c1d: $87
	nop                                              ; $6c1e: $00
	add  c                                           ; $6c1f: $81
	rst  $38                                         ; $6c20: $ff
	add  c                                           ; $6c21: $81
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	cp   a                                           ; $6c24: $bf
	add  l                                           ; $6c25: $85
	ld   b, b                                        ; $6c26: $40
	add  b                                           ; $6c27: $80
	nop                                              ; $6c28: $00
	add  c                                           ; $6c29: $81
	rst  $38                                         ; $6c2a: $ff
	add  c                                           ; $6c2b: $81
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	ld   a, a                                        ; $6c2e: $7f
	add  l                                           ; $6c2f: $85
	add  b                                           ; $6c30: $80
	add  b                                           ; $6c31: $80
	nop                                              ; $6c32: $00
	add  b                                           ; $6c33: $80
	rst  $38                                         ; $6c34: $ff
	nop                                              ; $6c35: $00
	cp   $81                                         ; $6c36: $fe $81
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	cp   $83                                         ; $6c3a: $fe $83
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	ld   a, a                                        ; $6c3e: $7f
	add  c                                           ; $6c3f: $81
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	inc  b                                           ; $6c42: $04
	add  c                                           ; $6c43: $81
	nop                                              ; $6c44: $00
	ld   [bc], a                                     ; $6c45: $02
	dec  de                                          ; $6c46: $1b
	nop                                              ; $6c47: $00
	ld   h, b                                        ; $6c48: $60
	add  e                                           ; $6c49: $83
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	ret  nz                                          ; $6c4c: $c0

	add  a                                           ; $6c4d: $87
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	ldh  [$81], a                                    ; $6c50: $e0 $81
	jr   nz, jr_07a_6bd4                             ; $6c52: $20 $80

	inc  h                                           ; $6c54: $24
	add  b                                           ; $6c55: $80
	inc  hl                                          ; $6c56: $23
	add  b                                           ; $6c57: $80
	jr   nz, jr_07a_6bda                             ; $6c58: $20 $80

	cpl                                              ; $6c5a: $2f
	add  d                                           ; $6c5b: $82
	jr   nz, jr_07a_6be0                             ; $6c5c: $20 $82

	db   $10                                         ; $6c5e: $10
	add  b                                           ; $6c5f: $80
	ld   d, d                                        ; $6c60: $52
	add  b                                           ; $6c61: $80
	sub  c                                           ; $6c62: $91
	add  b                                           ; $6c63: $80
	db   $10                                         ; $6c64: $10
	add  b                                           ; $6c65: $80
	rst  $30                                         ; $6c66: $f7
	add  b                                           ; $6c67: $80
	nop                                              ; $6c68: $00
	add  b                                           ; $6c69: $80
	db   $10                                         ; $6c6a: $10
	ld   [bc], a                                     ; $6c6b: $02
	ldh  a, [rP1]                                    ; $6c6c: $f0 $00
	rrca                                             ; $6c6e: $0f
	add  b                                           ; $6c6f: $80
	nop                                              ; $6c70: $00
	add  b                                           ; $6c71: $80
	ld   bc, $0f85                                   ; $6c72: $01 $85 $0f
	add  b                                           ; $6c75: $80
	ld   c, $00                                      ; $6c76: $0e $00
	rrca                                             ; $6c78: $0f
	sub  c                                           ; $6c79: $91
	nop                                              ; $6c7a: $00
	inc  c                                           ; $6c7b: $0c
	inc  b                                           ; $6c7c: $04
	nop                                              ; $6c7d: $00
	inc  bc                                          ; $6c7e: $03
	nop                                              ; $6c7f: $00

Call_07a_6c80:
	dec  de                                          ; $6c80: $1b
	nop                                              ; $6c81: $00
	jr   jr_07a_6c84                                 ; $6c82: $18 $00

jr_07a_6c84:
	ld   c, $00                                      ; $6c84: $0e $00
	inc  bc                                          ; $6c86: $03
	nop                                              ; $6c87: $00
	add  hl, bc                                      ; $6c88: $09
	add  e                                           ; $6c89: $83
	nop                                              ; $6c8a: $00
	ld   [bc], a                                     ; $6c8b: $02
	add  b                                           ; $6c8c: $80
	nop                                              ; $6c8d: $00
	add  b                                           ; $6c8e: $80
	add  l                                           ; $6c8f: $85
	nop                                              ; $6c90: $00
	ld   b, $02                                      ; $6c91: $06 $02
	nop                                              ; $6c93: $00
	inc  b                                           ; $6c94: $04
	nop                                              ; $6c95: $00
	dec  b                                           ; $6c96: $05
	nop                                              ; $6c97: $00
	dec  b                                           ; $6c98: $05
	add  c                                           ; $6c99: $81
	nop                                              ; $6c9a: $00
	ld   a, [bc]                                     ; $6c9b: $0a
	ld   b, $00                                      ; $6c9c: $06 $00
	ld   b, $00                                      ; $6c9e: $06 $00
	inc  b                                           ; $6ca0: $04
	nop                                              ; $6ca1: $00
	ld   b, e                                        ; $6ca2: $43
	nop                                              ; $6ca3: $00
	ld   b, b                                        ; $6ca4: $40
	nop                                              ; $6ca5: $00
	add  b                                           ; $6ca6: $80
	add  e                                           ; $6ca7: $83
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	add  b                                           ; $6caa: $80
	add  c                                           ; $6cab: $81
	nop                                              ; $6cac: $00
	ld   a, [bc]                                     ; $6cad: $0a
	add  b                                           ; $6cae: $80
	nop                                              ; $6caf: $00
	dec  b                                           ; $6cb0: $05
	nop                                              ; $6cb1: $00
	ld   c, $00                                      ; $6cb2: $0e $00
	inc  bc                                          ; $6cb4: $03
	nop                                              ; $6cb5: $00
	jr   jr_07a_6cb8                                 ; $6cb6: $18 $00

jr_07a_6cb8:
	ld   de, $0081                                   ; $6cb8: $11 $81 $00
	inc  b                                           ; $6cbb: $04
	cpl                                              ; $6cbc: $2f
	nop                                              ; $6cbd: $00
	add  hl, sp                                      ; $6cbe: $39
	nop                                              ; $6cbf: $00
	xor  c                                           ; $6cc0: $a9
	adc  c                                           ; $6cc1: $89
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	add  b                                           ; $6cc4: $80
	add  c                                           ; $6cc5: $81
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	ld   b, b                                        ; $6cc8: $40
	add  l                                           ; $6cc9: $85

jr_07a_6cca:
	nop                                              ; $6cca: $00
	inc  bc                                          ; $6ccb: $03
	rra                                              ; $6ccc: $1f
	nop                                              ; $6ccd: $00
	jr   nz, jr_07a_6cef                             ; $6cce: $20 $1f

	add  b                                           ; $6cd0: $80
	rrca                                             ; $6cd1: $0f
	ld   [bc], a                                     ; $6cd2: $02
	ld   l, a                                        ; $6cd3: $6f
	rrca                                             ; $6cd4: $0f
	ld   b, b                                        ; $6cd5: $40
	add  l                                           ; $6cd6: $85
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	rst  $38                                         ; $6cd9: $ff
	add  b                                           ; $6cda: $80
	nop                                              ; $6cdb: $00
	dec  b                                           ; $6cdc: $05
	rst  $38                                         ; $6cdd: $ff
	jp   nz, $bdfb                                   ; $6cde: $c2 $fb $bd

	rst  $30                                         ; $6ce1: $f7
	ld   [hl], e                                     ; $6ce2: $73
	add  l                                           ; $6ce3: $85
	nop                                              ; $6ce4: $00
	ld   [$00ff], sp                                 ; $6ce5: $08 $ff $00
	ld   bc, $3cfc                                   ; $6ce8: $01 $fc $3c
	cp   h                                           ; $6ceb: $bc
	add  b                                           ; $6cec: $80
	jr   nc, jr_07a_6d61                             ; $6ced: $30 $72

jr_07a_6cef:
	add  e                                           ; $6cef: $83
	ld   b, b                                        ; $6cf0: $40
	add  b                                           ; $6cf1: $80
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	rst  $38                                         ; $6cf4: $ff
	add  b                                           ; $6cf5: $80
	nop                                              ; $6cf6: $00
	dec  b                                           ; $6cf7: $05
	rst  $38                                         ; $6cf8: $ff
	di                                               ; $6cf9: $f3
	ei                                               ; $6cfa: $fb
	jp   hl                                          ; $6cfb: $e9


	db   $fd                                         ; $6cfc: $fd
	sbc  h                                           ; $6cfd: $9c
	add  e                                           ; $6cfe: $83
	add  b                                           ; $6cff: $80
	add  b                                           ; $6d00: $80
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	rst  $38                                         ; $6d03: $ff
	add  b                                           ; $6d04: $80
	nop                                              ; $6d05: $00
	dec  b                                           ; $6d06: $05
	rst  $38                                         ; $6d07: $ff
	sbc  h                                           ; $6d08: $9c
	sbc  $4a                                         ; $6d09: $de $4a
	rst  $28                                         ; $6d0b: $ef
	rst  $20                                         ; $6d0c: $e7
	add  l                                           ; $6d0d: $85
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	rst  $38                                         ; $6d10: $ff
	add  b                                           ; $6d11: $80
	nop                                              ; $6d12: $00
	add  c                                           ; $6d13: $81
	rst  $28                                         ; $6d14: $ef
	inc  bc                                          ; $6d15: $03
	ccf                                              ; $6d16: $3f
	daa                                              ; $6d17: $27
	jr   z, jr_07a_6d3a                              ; $6d18: $28 $20

	add  b                                           ; $6d1a: $80
	inc  h                                           ; $6d1b: $24
	add  b                                           ; $6d1c: $80
	inc  hl                                          ; $6d1d: $23
	add  b                                           ; $6d1e: $80
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	rst  $38                                         ; $6d21: $ff
	add  b                                           ; $6d22: $80
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	rst  $38                                         ; $6d25: $ff
	add  b                                           ; $6d26: $80
	add  hl, sp                                      ; $6d27: $39
	nop                                              ; $6d28: $00
	db   $10                                         ; $6d29: $10
	add  b                                           ; $6d2a: $80
	sbc  $00                                         ; $6d2b: $de $00
	db   $10                                         ; $6d2d: $10
	add  b                                           ; $6d2e: $80
	ld   d, d                                        ; $6d2f: $52
	inc  c                                           ; $6d30: $0c
	sub  c                                           ; $6d31: $91
	sub  b                                           ; $6d32: $90
	ld   bc, $fe00                                   ; $6d33: $01 $00 $fe
	nop                                              ; $6d36: $00
	inc  bc                                          ; $6d37: $03
	db   $fc                                         ; $6d38: $fc
	sbc  l                                           ; $6d39: $9d

jr_07a_6d3a:
	sbc  h                                           ; $6d3a: $9c
	inc  c                                           ; $6d3b: $0c
	db   $ec                                         ; $6d3c: $ec
	db   $10                                         ; $6d3d: $10
	add  c                                           ; $6d3e: $81
	nop                                              ; $6d3f: $00
	adc  d                                           ; $6d40: $8a
	ld   c, $04                                      ; $6d41: $0e $04
	rra                                              ; $6d43: $1f
	nop                                              ; $6d44: $00
	jr   nc, jr_07a_6d47                             ; $6d45: $30 $00

jr_07a_6d47:
	jr   nz, jr_07a_6cca                             ; $6d47: $20 $81

	nop                                              ; $6d49: $00
	inc  c                                           ; $6d4a: $0c
	inc  d                                           ; $6d4b: $14
	nop                                              ; $6d4c: $00
	dec  sp                                          ; $6d4d: $3b
	nop                                              ; $6d4e: $00
	dec  a                                           ; $6d4f: $3d
	nop                                              ; $6d50: $00
	dec  a                                           ; $6d51: $3d
	nop                                              ; $6d52: $00
	xor  a                                           ; $6d53: $af
	nop                                              ; $6d54: $00
	ret  nz                                          ; $6d55: $c0

	nop                                              ; $6d56: $00
	ld   b, b                                        ; $6d57: $40
	add  e                                           ; $6d58: $83
	nop                                              ; $6d59: $00
	ld   [bc], a                                     ; $6d5a: $02
	ld   h, b                                        ; $6d5b: $60
	nop                                              ; $6d5c: $00
	ret  nz                                          ; $6d5d: $c0

	add  c                                           ; $6d5e: $81
	nop                                              ; $6d5f: $00
	inc  b                                           ; $6d60: $04

jr_07a_6d61:
	and  a                                           ; $6d61: $a7
	nop                                              ; $6d62: $00
	inc  bc                                          ; $6d63: $03
	nop                                              ; $6d64: $00
	inc  b                                           ; $6d65: $04
	add  c                                           ; $6d66: $81
	nop                                              ; $6d67: $00
	inc  c                                           ; $6d68: $0c
	ld   bc, $0300                                   ; $6d69: $01 $00 $03
	nop                                              ; $6d6c: $00
	inc  b                                           ; $6d6d: $04
	nop                                              ; $6d6e: $00
	rlca                                             ; $6d6f: $07
	nop                                              ; $6d70: $00
	ret  nz                                          ; $6d71: $c0

	nop                                              ; $6d72: $00
	ld   b, b                                        ; $6d73: $40
	nop                                              ; $6d74: $00
	add  b                                           ; $6d75: $80
	adc  c                                           ; $6d76: $89
	nop                                              ; $6d77: $00
	ld   b, $bf                                      ; $6d78: $06 $bf
	nop                                              ; $6d7a: $00
	jr   nz, jr_07a_6d7d                             ; $6d7b: $20 $00

jr_07a_6d7d:
	inc  b                                           ; $6d7d: $04
	nop                                              ; $6d7e: $00
	ld   a, [de]                                     ; $6d7f: $1a
	add  c                                           ; $6d80: $81
	nop                                              ; $6d81: $00
	ld   [$0005], sp                                 ; $6d82: $08 $05 $00
	ld   de, $0700                                   ; $6d85: $11 $00 $07
	nop                                              ; $6d88: $00
	inc  l                                           ; $6d89: $2c
	nop                                              ; $6d8a: $00
	add  c                                           ; $6d8b: $81
	add  c                                           ; $6d8c: $81
	nop                                              ; $6d8d: $00
	inc  d                                           ; $6d8e: $14
	inc  bc                                          ; $6d8f: $03
	nop                                              ; $6d90: $00
	ld   b, $00                                      ; $6d91: $06 $00
	ld   c, e                                        ; $6d93: $4b
	nop                                              ; $6d94: $00
	ld   b, h                                        ; $6d95: $44
	inc  bc                                          ; $6d96: $03
	sbc  e                                           ; $6d97: $9b
	inc  bc                                          ; $6d98: $03
	ret  c                                           ; $6d99: $d8

	rrca                                             ; $6d9a: $0f
	rlca                                             ; $6d9b: $07
	adc  h                                           ; $6d9c: $8c
	db   $10                                         ; $6d9d: $10
	ld   e, $22                                      ; $6d9e: $1e $22
	inc  a                                           ; $6da0: $3c
	ld   e, h                                        ; $6da1: $5c
	ld   [hl], c                                     ; $6da2: $71
	adc  $80                                         ; $6da3: $ce $80
	nop                                              ; $6da5: $00
	add  c                                           ; $6da6: $81
	rst  $38                                         ; $6da7: $ff
	ld   b, $04                                      ; $6da8: $06 $04
	ld   [hl], a                                     ; $6daa: $77
	ld   [hl], e                                     ; $6dab: $73
	ld   h, h                                        ; $6dac: $64
	xor  b                                           ; $6dad: $a8
	adc  $02                                         ; $6dae: $ce $02
	add  b                                           ; $6db0: $80
	call z, $9901                                    ; $6db1: $cc $01 $99
	ld   h, [hl]                                     ; $6db4: $66
	add  b                                           ; $6db5: $80
	nop                                              ; $6db6: $00
	inc  bc                                          ; $6db7: $03
	rst  $38                                         ; $6db8: $ff
	rrca                                             ; $6db9: $0f
	rst  $38                                         ; $6dba: $ff
	db   $f4                                         ; $6dbb: $f4
	add  b                                           ; $6dbc: $80
	jr   nc, jr_07a_6dc8                             ; $6dbd: $30 $09

	ld   b, b                                        ; $6dbf: $40
	add  c                                           ; $6dc0: $81
	pop  hl                                          ; $6dc1: $e1
	ld   hl, $ede1                                   ; $6dc2: $21 $e1 $ed
	pop  hl                                          ; $6dc5: $e1
	rla                                              ; $6dc6: $17
	nop                                              ; $6dc7: $00

jr_07a_6dc8:
	inc  b                                           ; $6dc8: $04
	add  c                                           ; $6dc9: $81
	di                                               ; $6dca: $f3
	inc  b                                           ; $6dcb: $04
	sub  c                                           ; $6dcc: $91
	push bc                                          ; $6dcd: $c5
	ld   d, h                                        ; $6dce: $54
	push hl                                          ; $6dcf: $e5
	adc  l                                           ; $6dd0: $8d
	add  c                                           ; $6dd1: $81
	sub  e                                           ; $6dd2: $93
	add  b                                           ; $6dd3: $80
	di                                               ; $6dd4: $f3
	nop                                              ; $6dd5: $00
	inc  c                                           ; $6dd6: $0c
	add  b                                           ; $6dd7: $80
	nop                                              ; $6dd8: $00
	add  c                                           ; $6dd9: $81
	rst  $38                                         ; $6dda: $ff
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	add  b                                           ; $6ddd: $80
	xor  l                                           ; $6dde: $ad
	ld   bc, $08ce                                   ; $6ddf: $01 $ce $08
	add  c                                           ; $6de2: $81
	add  hl, hl                                      ; $6de3: $29
	add  b                                           ; $6de4: $80
	rst  $28                                         ; $6de5: $ef
	nop                                              ; $6de6: $00
	db   $10                                         ; $6de7: $10
	add  b                                           ; $6de8: $80
	nop                                              ; $6de9: $00
	add  c                                           ; $6dea: $81
	rst  $38                                         ; $6deb: $ff
	dec  b                                           ; $6dec: $05
	rrca                                             ; $6ded: $0f
	ld   b, a                                        ; $6dee: $47
	ld   c, [hl]                                     ; $6def: $4e
	ld   h, d                                        ; $6df0: $62
	ld   [bc], a                                     ; $6df1: $02
	ld   [de], a                                     ; $6df2: $12
	add  b                                           ; $6df3: $80
	db   $10                                         ; $6df4: $10
	inc  b                                           ; $6df5: $04
	halt                                             ; $6df6: $76
	ld   [hl], b                                     ; $6df7: $70
	adc  l                                           ; $6df8: $8d
	nop                                              ; $6df9: $00
	ld   [bc], a                                     ; $6dfa: $02
	add  c                                           ; $6dfb: $81
	db   $fc                                         ; $6dfc: $fc
	rlca                                             ; $6dfd: $07
	inc  bc                                          ; $6dfe: $03
	ld   h, c                                        ; $6dff: $61
	ld   h, e                                        ; $6e00: $63
	call z, $2200                                    ; $6e01: $cc $00 $22
	ld   a, [hl+]                                    ; $6e04: $2a
	inc  sp                                          ; $6e05: $33
	add  b                                           ; $6e06: $80
	rst  $30                                         ; $6e07: $f7
	nop                                              ; $6e08: $00
	ld   [$0080], sp                                 ; $6e09: $08 $80 $00
	add  c                                           ; $6e0c: $81
	rst  $38                                         ; $6e0d: $ff
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	add  b                                           ; $6e10: $80
	db   $10                                         ; $6e11: $10
	inc  b                                           ; $6e12: $04
	and  $20                                         ; $6e13: $e6 $20
	ld   sp, $39b5                                   ; $6e15: $31 $b5 $39
	add  b                                           ; $6e18: $80
	ld   a, e                                        ; $6e19: $7b
	nop                                              ; $6e1a: $00
	add  h                                           ; $6e1b: $84
	add  b                                           ; $6e1c: $80
	nop                                              ; $6e1d: $00
	add  c                                           ; $6e1e: $81
	rst  $38                                         ; $6e1f: $ff
	nop                                              ; $6e20: $00
	cp   $81                                         ; $6e21: $fe $81
	ld   c, $02                                      ; $6e23: $0e $02
	rrca                                             ; $6e25: $0f
	nop                                              ; $6e26: $00
	rrca                                             ; $6e27: $0f
	add  b                                           ; $6e28: $80
	add  hl, bc                                      ; $6e29: $09
	add  b                                           ; $6e2a: $80
	ld   c, $80                                      ; $6e2b: $0e $80
	inc  c                                           ; $6e2d: $0c
	inc  bc                                          ; $6e2e: $03
	ld   [$030b], sp                                 ; $6e2f: $08 $0b $03
	rrca                                             ; $6e32: $0f
	add  b                                           ; $6e33: $80
	nop                                              ; $6e34: $00
	add  b                                           ; $6e35: $80
	rst  $38                                         ; $6e36: $ff
	add  b                                           ; $6e37: $80
	nop                                              ; $6e38: $00
	dec  b                                           ; $6e39: $05
	rst  $38                                         ; $6e3a: $ff
	ldh  a, [rIE]                                    ; $6e3b: $f0 $ff

jr_07a_6e3d:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e3d: $cf
	db   $fc                                         ; $6e3e: $fc
	inc  a                                           ; $6e3f: $3c
	add  b                                           ; $6e40: $80
	ld   a, c                                        ; $6e41: $79
	dec  b                                           ; $6e42: $05
	db   $e3                                         ; $6e43: $e3
	ld   a, [hl]                                     ; $6e44: $7e
	nop                                              ; $6e45: $00
	ld   c, c                                        ; $6e46: $49
	call nc, $80ff                                   ; $6e47: $d4 $ff $80
	ld   bc, $fe09                                   ; $6e4a: $01 $09 $fe
	rrca                                             ; $6e4d: $0f
	jr   c, jr_07a_6e7f                              ; $6e4e: $38 $2f

	ld   h, b                                        ; $6e50: $60
	ld   e, [hl]                                     ; $6e51: $5e
	pop  bc                                          ; $6e52: $c1
	add  hl, sp                                      ; $6e53: $39
	rlca                                             ; $6e54: $07
	add  a                                           ; $6e55: $87
	add  b                                           ; $6e56: $80
	nop                                              ; $6e57: $00
	add  b                                           ; $6e58: $80
	ld   e, a                                        ; $6e59: $5f
	inc  de                                          ; $6e5a: $13
	ld   e, b                                        ; $6e5b: $58
	inc  a                                           ; $6e5c: $3c
	inc  bc                                          ; $6e5d: $03
	db   $e3                                         ; $6e5e: $e3
	dec  de                                          ; $6e5f: $1b
	jr   jr_07a_6e3d                                 ; $6e60: $18 $db

	ret  c                                           ; $6e62: $d8

	call c, $d9c1                                    ; $6e63: $dc $c1 $d9
	ldh  [rP1], a                                    ; $6e66: $e0 $00
	ld   bc, $fffe                                   ; $6e68: $01 $fe $ff
	nop                                              ; $6e6b: $00
	inc  bc                                          ; $6e6c: $03
	cp   $02                                         ; $6e6d: $fe $02
	add  b                                           ; $6e6f: $80
	rst  ToBoot                                         ; $6e70: $c7
	ld   bc, $c3cf                                   ; $6e71: $01 $cf $c3
	add  b                                           ; $6e74: $80
	sub  e                                           ; $6e75: $93
	add  hl, bc                                      ; $6e76: $09
	ld   [hl-], a                                    ; $6e77: $32
	sub  b                                           ; $6e78: $90
	nop                                              ; $6e79: $00
	ld   d, b                                        ; $6e7a: $50
	cp   $ff                                         ; $6e7b: $fe $ff
	nop                                              ; $6e7d: $00
	pop  hl                                          ; $6e7e: $e1

jr_07a_6e7f:
	sbc  $c0                                         ; $6e7f: $de $c0
	add  b                                           ; $6e81: $80
	ld   h, a                                        ; $6e82: $67
	ld   bc, $a3af                                   ; $6e83: $01 $af $a3
	add  b                                           ; $6e86: $80
	inc  de                                          ; $6e87: $13
	ld   bc, $4132                                   ; $6e88: $01 $32 $41
	add  b                                           ; $6e8b: $80
	nop                                              ; $6e8c: $00
	dec  d                                           ; $6e8d: $15
	ld   a, a                                        ; $6e8e: $7f
	rst  $38                                         ; $6e8f: $ff
	rlca                                             ; $6e90: $07
	daa                                              ; $6e91: $27
	reti                                             ; $6e92: $d9


	dec  bc                                          ; $6e93: $0b
	ld   l, b                                        ; $6e94: $68
	ld   l, a                                        ; $6e95: $6f
	add  b                                           ; $6e96: $80
	sbc  [hl]                                        ; $6e97: $9e
	nop                                              ; $6e98: $00
	ld   a, e                                        ; $6e99: $7b
	nop                                              ; $6e9a: $00
	adc  h                                           ; $6e9b: $8c
	inc  bc                                          ; $6e9c: $03
	nop                                              ; $6e9d: $00
	and  b                                           ; $6e9e: $a0
	adc  [hl]                                        ; $6e9f: $8e
	add  [hl]                                        ; $6ea0: $86
	ret  c                                           ; $6ea1: $d8

	ld   e, $8e                                      ; $6ea2: $1e $8e
	add  b                                           ; $6ea4: $80
	dec  e                                           ; $6ea5: $1d
	add  b                                           ; $6ea6: $80
	ld   sp, $7203                                   ; $6ea7: $31 $03 $72
	adc  l                                           ; $6eaa: $8d
	nop                                              ; $6eab: $00
	ld   hl, sp-$7f                                  ; $6eac: $f8 $81
	rst  $30                                         ; $6eae: $f7
	inc  b                                           ; $6eaf: $04
	db   $ed                                         ; $6eb0: $ed
	call z, $ddc0                                    ; $6eb1: $cc $c0 $dd
	call z, $bb80                                    ; $6eb4: $cc $80 $bb
	add  b                                           ; $6eb7: $80
	inc  sp                                          ; $6eb8: $33
	inc  bc                                          ; $6eb9: $03
	ld   [hl], a                                     ; $6eba: $77
	adc  b                                           ; $6ebb: $88
	nop                                              ; $6ebc: $00
	rst  $38                                         ; $6ebd: $ff
	add  b                                           ; $6ebe: $80
	di                                               ; $6ebf: $f3
	dec  b                                           ; $6ec0: $05
	rst  $20                                         ; $6ec1: $e7
	ld   a, [hl-]                                    ; $6ec2: $3a
	call z, $dd00                                    ; $6ec3: $cc $00 $dd
	call z, $dd80                                    ; $6ec6: $cc $80 $dd
	add  b                                           ; $6ec9: $80
	sbc  c                                           ; $6eca: $99
	inc  b                                           ; $6ecb: $04
	cp   e                                           ; $6ecc: $bb
	ld   b, h                                        ; $6ecd: $44
	nop                                              ; $6ece: $00
	call z, $80a3                                    ; $6ecf: $cc $a3 $80
	add  c                                           ; $6ed2: $81
	ld   b, $42                                      ; $6ed3: $06 $42
	pop  bc                                          ; $6ed5: $c1
	ld   bc, $f5c1                                   ; $6ed6: $01 $c1 $f5
	rst  ToBoot                                         ; $6ed9: $c7
	push bc                                          ; $6eda: $c5
	add  c                                           ; $6edb: $81
	add  a                                           ; $6edc: $87
	ld   [bc], a                                     ; $6edd: $02
	ld   e, h                                        ; $6ede: $5c
	nop                                              ; $6edf: $00
	rra                                              ; $6ee0: $1f
	add  c                                           ; $6ee1: $81
	sbc  $00                                         ; $6ee2: $de $00
	ld   a, [hl-]                                    ; $6ee4: $3a
	add  d                                           ; $6ee5: $82
	db   $e3                                         ; $6ee6: $e3
	add  e                                           ; $6ee7: $83
	rst  $20                                         ; $6ee8: $e7
	nop                                              ; $6ee9: $00
	inc  e                                           ; $6eea: $1c
	add  b                                           ; $6eeb: $80
	nop                                              ; $6eec: $00
	dec  b                                           ; $6eed: $05
	rst  $38                                         ; $6eee: $ff
	ld   hl, sp-$11                                  ; $6eef: $f8 $ef
	rrca                                             ; $6ef1: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ef2: $cf
	rst  ToBoot                                         ; $6ef3: $c7
	add  l                                           ; $6ef4: $85
	rst  JumpTable                                         ; $6ef5: $df
	ld   [$0030], sp                                 ; $6ef6: $08 $30 $00
	ccf                                              ; $6ef9: $3f
	cp   b                                           ; $6efa: $b8
	jr   c, jr_07a_6f39                              ; $6efb: $38 $3c

	ld   a, h                                        ; $6efd: $7c
	jr   c, jr_07a_6f18                              ; $6efe: $38 $18

	add  d                                           ; $6f00: $82
	ld   e, $03                                      ; $6f01: $1e $03
	ld   a, $0e                                      ; $6f03: $3e $0e
	ld   e, $f1                                      ; $6f05: $1e $f1
	add  b                                           ; $6f07: $80
	nop                                              ; $6f08: $00
	ld   a, [bc]                                     ; $6f09: $0a
	ld   a, a                                        ; $6f0a: $7f
	ld   hl, $1c3d                                   ; $6f0b: $21 $3d $1c
	ld   e, $c1                                      ; $6f0e: $1e $c1
	rra                                              ; $6f10: $1f
	nop                                              ; $6f11: $00
	rra                                              ; $6f12: $1f
	ld   [hl], b                                     ; $6f13: $70

jr_07a_6f14:
	rrca                                             ; $6f14: $0f
	add  b                                           ; $6f15: $80
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00

jr_07a_6f18:
	rst  JumpTable                                         ; $6f18: $df
	add  b                                           ; $6f19: $80
	nop                                              ; $6f1a: $00
	inc  bc                                          ; $6f1b: $03
	rst  $38                                         ; $6f1c: $ff
	rrca                                             ; $6f1d: $0f
	rst  $28                                         ; $6f1e: $ef
	ldh  [$80], a                                    ; $6f1f: $e0 $80
	ld   [hl], a                                     ; $6f21: $77
	rlca                                             ; $6f22: $07
	dec  sp                                          ; $6f23: $3b
	ld   [bc], a                                     ; $6f24: $02
	add  hl, sp                                      ; $6f25: $39
	add  b                                           ; $6f26: $80
	sbc  h                                           ; $6f27: $9c
	ld   [de], a                                     ; $6f28: $12
	ld   c, $ff                                      ; $6f29: $0e $ff
	add  d                                           ; $6f2b: $82
	nop                                              ; $6f2c: $00
	add  e                                           ; $6f2d: $83
	rrca                                             ; $6f2e: $0f
	add  b                                           ; $6f2f: $80
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	rrca                                             ; $6f32: $0f
	add  b                                           ; $6f33: $80
	nop                                              ; $6f34: $00
	add  d                                           ; $6f35: $82
	rrca                                             ; $6f36: $0f
	add  b                                           ; $6f37: $80
	nop                                              ; $6f38: $00

jr_07a_6f39:
	add  e                                           ; $6f39: $83
	rst  $38                                         ; $6f3a: $ff
	add  b                                           ; $6f3b: $80
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	rst  $38                                         ; $6f3e: $ff
	add  b                                           ; $6f3f: $80
	nop                                              ; $6f40: $00
	add  c                                           ; $6f41: $81
	rst  $38                                         ; $6f42: $ff
	nop                                              ; $6f43: $00
	rra                                              ; $6f44: $1f
	add  b                                           ; $6f45: $80
	nop                                              ; $6f46: $00
	add  c                                           ; $6f47: $81
	rra                                              ; $6f48: $1f
	inc  b                                           ; $6f49: $04
	ccf                                              ; $6f4a: $3f
	rra                                              ; $6f4b: $1f
	ret  nz                                          ; $6f4c: $c0

	nop                                              ; $6f4d: $00
	rra                                              ; $6f4e: $1f
	add  b                                           ; $6f4f: $80
	nop                                              ; $6f50: $00
	add  c                                           ; $6f51: $81
	rst  $38                                         ; $6f52: $ff
	nop                                              ; $6f53: $00
	adc  a                                           ; $6f54: $8f
	add  b                                           ; $6f55: $80
	rrca                                             ; $6f56: $0f
	add  c                                           ; $6f57: $81
	adc  a                                           ; $6f58: $8f
	inc  b                                           ; $6f59: $04
	sub  b                                           ; $6f5a: $90
	add  b                                           ; $6f5b: $80
	ld   l, a                                        ; $6f5c: $6f
	nop                                              ; $6f5d: $00
	add  b                                           ; $6f5e: $80
	add  b                                           ; $6f5f: $80
	nop                                              ; $6f60: $00
	add  a                                           ; $6f61: $87
	rst  $38                                         ; $6f62: $ff
	add  b                                           ; $6f63: $80
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	rst  $38                                         ; $6f66: $ff
	add  d                                           ; $6f67: $82
	nop                                              ; $6f68: $00
	add  d                                           ; $6f69: $82
	rst  $38                                         ; $6f6a: $ff
	add  e                                           ; $6f6b: $83
	rrca                                             ; $6f6c: $0f
	add  d                                           ; $6f6d: $82
	nop                                              ; $6f6e: $00
	add  l                                           ; $6f6f: $85
	rrca                                             ; $6f70: $0f
	add  e                                           ; $6f71: $83
	rst  $38                                         ; $6f72: $ff

jr_07a_6f73:
	add  d                                           ; $6f73: $82
	nop                                              ; $6f74: $00
	adc  d                                           ; $6f75: $8a
	rst  $38                                         ; $6f76: $ff
	add  b                                           ; $6f77: $80
	nop                                              ; $6f78: $00
	add  b                                           ; $6f79: $80
	add  b                                           ; $6f7a: $80
	nop                                              ; $6f7b: $00
	cp   $83                                         ; $6f7c: $fe $83
	ld   a, [hl]                                     ; $6f7e: $7e
	nop                                              ; $6f7f: $00
	ld   a, a                                        ; $6f80: $7f
	add  l                                           ; $6f81: $85
	nop                                              ; $6f82: $00
	ld   [$4140], sp                                 ; $6f83: $08 $40 $41
	ld   b, b                                        ; $6f86: $40
	ld   b, e                                        ; $6f87: $43
	and  b                                           ; $6f88: $a0
	and  [hl]                                        ; $6f89: $a6
	ld   e, h                                        ; $6f8a: $5c
	ld   e, d                                        ; $6f8b: $5a
	ld   [bc], a                                     ; $6f8c: $02
	add  l                                           ; $6f8d: $85
	nop                                              ; $6f8e: $00
	add  b                                           ; $6f8f: $80
	add  b                                           ; $6f90: $80
	add  b                                           ; $6f91: $80
	jr   nz, jr_07a_6f14                             ; $6f92: $20 $80

	ld   a, [bc]                                     ; $6f94: $0a
	add  b                                           ; $6f95: $80
	add  b                                           ; $6f96: $80
	add  [hl]                                        ; $6f97: $86
	nop                                              ; $6f98: $00
	add  b                                           ; $6f99: $80
	dec  bc                                          ; $6f9a: $0b
	add  b                                           ; $6f9b: $80
	dec  b                                           ; $6f9c: $05
	adc  d                                           ; $6f9d: $8a
	nop                                              ; $6f9e: $00
	add  b                                           ; $6f9f: $80
	ldh  a, [$80]                                    ; $6fa0: $f0 $80
	ld   d, b                                        ; $6fa2: $50
	add  b                                           ; $6fa3: $80
	and  b                                           ; $6fa4: $a0
	add  b                                           ; $6fa5: $80
	db   $10                                         ; $6fa6: $10
	inc  d                                           ; $6fa7: $14
	or   b                                           ; $6fa8: $b0
	or   c                                           ; $6fa9: $b1
	pop  hl                                          ; $6faa: $e1
	ldh  [$c0], a                                    ; $6fab: $e0 $c0
	ld   bc, $0002                                   ; $6fad: $01 $02 $00
	inc  h                                           ; $6fb0: $24
	nop                                              ; $6fb1: $00
	inc  d                                           ; $6fb2: $14
	ld   [$000a], sp                                 ; $6fb3: $08 $0a $00
	ld   de, $b000                                   ; $6fb6: $11 $00 $b0
	ld   d, b                                        ; $6fb9: $50
	ld   l, d                                        ; $6fba: $6a
	ld   [$807f], a                                  ; $6fbb: $ea $7f $80
	rst  $38                                         ; $6fbe: $ff
	add  b                                           ; $6fbf: $80
	ld   a, a                                        ; $6fc0: $7f
	add  b                                           ; $6fc1: $80
	inc  bc                                          ; $6fc2: $03
	add  e                                           ; $6fc3: $83
	nop                                              ; $6fc4: $00
	ld   bc, $00ff                                   ; $6fc5: $01 $ff $00
	add  b                                           ; $6fc8: $80
	and  b                                           ; $6fc9: $a0
	add  b                                           ; $6fca: $80
	ld   d, l                                        ; $6fcb: $55
	add  b                                           ; $6fcc: $80
	cp   $81                                         ; $6fcd: $fe $81
	rst  $38                                         ; $6fcf: $ff
	add  b                                           ; $6fd0: $80
	rra                                              ; $6fd1: $1f
	add  c                                           ; $6fd2: $81
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	rst  $38                                         ; $6fd5: $ff
	add  c                                           ; $6fd6: $81
	nop                                              ; $6fd7: $00
	add  b                                           ; $6fd8: $80
	ld   b, b                                        ; $6fd9: $40
	add  b                                           ; $6fda: $80
	and  b                                           ; $6fdb: $a0
	add  e                                           ; $6fdc: $83
	ldh  a, [$80]                                    ; $6fdd: $f0 $80
	jr   nc, jr_07a_6fe8                             ; $6fdf: $30 $07

	nop                                              ; $6fe1: $00
	ld   sp, $c100                                   ; $6fe2: $31 $00 $c1
	jp   $0024                                       ; $6fe5: $c3 $24 $00


jr_07a_6fe8:
	jr   jr_07a_6f73                                 ; $6fe8: $18 $89

	nop                                              ; $6fea: $00
	add  b                                           ; $6feb: $80
	ret  nz                                          ; $6fec: $c0

	adc  b                                           ; $6fed: $88
	nop                                              ; $6fee: $00
	add  b                                           ; $6fef: $80
	inc  bc                                          ; $6ff0: $03
	add  b                                           ; $6ff1: $80
	ldh  [$8c], a                                    ; $6ff2: $e0 $8c
	rst  $38                                         ; $6ff4: $ff
	adc  d                                           ; $6ff5: $8a
	nop                                              ; $6ff6: $00
	add  b                                           ; $6ff7: $80
	rst  $38                                         ; $6ff8: $ff
	add  b                                           ; $6ff9: $80
	nop                                              ; $6ffa: $00
	add  hl, hl                                      ; $6ffb: $29
	ld   [bc], a                                     ; $6ffc: $02
	add  [hl]                                        ; $6ffd: $86
	nop                                              ; $6ffe: $00
	add  [hl]                                        ; $6fff: $86
	rrca                                             ; $7000: $0f
	add  [hl]                                        ; $7001: $86
	nop                                              ; $7002: $00
	ld   bc, $7f90                                   ; $7003: $01 $90 $7f
	add  b                                           ; $7006: $80
	ld   a, c                                        ; $7007: $79
	add  b                                           ; $7008: $80
	ld   a, d                                        ; $7009: $7a
	add  b                                           ; $700a: $80
	ld   a, e                                        ; $700b: $7b
	nop                                              ; $700c: $00
	rst  $28                                         ; $700d: $ef
	add  l                                           ; $700e: $85
	nop                                              ; $700f: $00
	ld   bc, $18e7                                   ; $7010: $01 $e7 $18
	add  b                                           ; $7013: $80
	rst  $20                                         ; $7014: $e7
	inc  b                                           ; $7015: $04
	jr   nc, jr_07a_7050                             ; $7016: $30 $38

	db   $dd                                         ; $7018: $dd
	rst  JumpTable                                         ; $7019: $df
	push af                                          ; $701a: $f5
	add  l                                           ; $701b: $85
	nop                                              ; $701c: $00
	inc  bc                                          ; $701d: $03
	inc  bc                                          ; $701e: $03
	cp   $3c                                         ; $701f: $fe $3c
	ld   a, $80                                      ; $7021: $3e $80
	add  $02                                         ; $7023: $c6 $02
	jr   nc, jr_07a_705f                             ; $7025: $30 $38

	rst  $30                                         ; $7027: $f7
	add  l                                           ; $7028: $85
	nop                                              ; $7029: $00
	add  b                                           ; $702a: $80
	rst  $38                                         ; $702b: $ff
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	add  c                                           ; $702e: $81
	rst  $38                                         ; $702f: $ff
	add  b                                           ; $7030: $80
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	rst  $38                                         ; $7033: $ff
	add  l                                           ; $7034: $85
	nop                                              ; $7035: $00
	ld   [$03fc], sp                                 ; $7036: $08 $fc $03
	ld   b, $07                                      ; $7039: $06 $07
	inc  e                                           ; $703b: $1c

jr_07a_703c:
	rra                                              ; $703c: $1f
	jr   c, jr_07a_707e                              ; $703d: $38 $3f

	ld   a, [$0085]                                  ; $703f: $fa $85 $00
	ld   [$ff2a], sp                                 ; $7042: $08 $2a $ff
	add  b                                           ; $7045: $80
	cp   $41                                         ; $7046: $fe $41
	db   $ed                                         ; $7048: $ed
	jp   c, $0ed3                                    ; $7049: $da $d3 $0e

	add  l                                           ; $704c: $85
	nop                                              ; $704d: $00
	ld   [bc], a                                     ; $704e: $02
	rst  $38                                         ; $704f: $ff

jr_07a_7050:
	ld   hl, sp+$00                                  ; $7050: $f8 $00
	add  c                                           ; $7052: $81
	ld   hl, sp-$80                                  ; $7053: $f8 $80
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	rst  $38                                         ; $7057: $ff
	add  l                                           ; $7058: $85
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	rst  $38                                         ; $705b: $ff
	add  c                                           ; $705c: $81
	nop                                              ; $705d: $00
	add  b                                           ; $705e: $80

jr_07a_705f:
	ld   bc, $0980                                   ; $705f: $01 $80 $09
	nop                                              ; $7062: $00
	rst  $38                                         ; $7063: $ff
	add  l                                           ; $7064: $85
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	rst  $38                                         ; $7067: $ff
	add  c                                           ; $7068: $81
	ld   bc, $2001                                   ; $7069: $01 $01 $20
	ld   hl, $6380                                   ; $706c: $21 $80 $63
	nop                                              ; $706f: $00
	rst  $38                                         ; $7070: $ff
	add  l                                           ; $7071: $85
	nop                                              ; $7072: $00
	ld   [$efde], sp                                 ; $7073: $08 $de $ef
	ccf                                              ; $7076: $3f
	di                                               ; $7077: $f3
	ei                                               ; $7078: $fb
	add  hl, bc                                      ; $7079: $09
	jr   nc, jr_07a_703c                             ; $707a: $30 $c0

	rst  $38                                         ; $707c: $ff
	add  l                                           ; $707d: $85

jr_07a_707e:
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	rst  $38                                         ; $7080: $ff
	add  c                                           ; $7081: $81
	nop                                              ; $7082: $00
	add  b                                           ; $7083: $80
	ld   bc, $1180                                   ; $7084: $01 $80 $11
	nop                                              ; $7087: $00
	rst  $38                                         ; $7088: $ff
	add  l                                           ; $7089: $85
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	rst  $38                                         ; $708c: $ff
	add  c                                           ; $708d: $81
	nop                                              ; $708e: $00
	add  d                                           ; $708f: $82
	stop                                             ; $7090: $10 $00
	rst  $38                                         ; $7092: $ff
	add  l                                           ; $7093: $85
	nop                                              ; $7094: $00
	ld   [bc], a                                     ; $7095: $02
	rst  $38                                         ; $7096: $ff
	ld   a, a                                        ; $7097: $7f
	nop                                              ; $7098: $00
	add  c                                           ; $7099: $81
	ld   a, a                                        ; $709a: $7f
	add  b                                           ; $709b: $80
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	rst  $38                                         ; $709e: $ff
	add  l                                           ; $709f: $85
	nop                                              ; $70a0: $00
	ld   [$cffd], sp                                 ; $70a1: $08 $fd $cf
	jr   nc, @-$01                                   ; $70a4: $30 $fd

	ld   a, d                                        ; $70a6: $7a
	add  [hl]                                        ; $70a7: $86
	db   $fd                                         ; $70a8: $fd
	rst  $38                                         ; $70a9: $ff
	ld   bc, $0085                                   ; $70aa: $01 $85 $00
	add  hl, bc                                      ; $70ad: $09
	inc  hl                                          ; $70ae: $23
	db   $fc                                         ; $70af: $fc
	ld   c, e                                        ; $70b0: $4b
	rst  $38                                         ; $70b1: $ff
	ld   b, c                                        ; $70b2: $41
	rst  $28                                         ; $70b3: $ef
	db   $10                                         ; $70b4: $10
	rla                                              ; $70b5: $17
	ret                                              ; $70b6: $c9


	dec  bc                                          ; $70b7: $0b
	add  b                                           ; $70b8: $80
	dec  b                                           ; $70b9: $05
	add  b                                           ; $70ba: $80
	dec  bc                                          ; $70bb: $0b
	add  b                                           ; $70bc: $80
	dec  b                                           ; $70bd: $05
	add  b                                           ; $70be: $80
	ld   a, [bc]                                     ; $70bf: $0a
	add  b                                           ; $70c0: $80
	dec  b                                           ; $70c1: $05
	add  b                                           ; $70c2: $80
	ld   a, [bc]                                     ; $70c3: $0a
	add  b                                           ; $70c4: $80
	dec  b                                           ; $70c5: $05
	nop                                              ; $70c6: $00
	sub  h                                           ; $70c7: $94
	adc  l                                           ; $70c8: $8d
	ld   a, e                                        ; $70c9: $7b
	ld   bc, $dec4                                   ; $70ca: $01 $c4 $de
	adc  h                                           ; $70cd: $8c
	rst  JumpTable                                         ; $70ce: $df
	ld   bc, $dcda                                   ; $70cf: $01 $da $dc
	add  b                                           ; $70d2: $80

jr_07a_70d3:
	inc  e                                           ; $70d3: $1c
	adc  d                                           ; $70d4: $8a
	sbc  h                                           ; $70d5: $9c
	nop                                              ; $70d6: $00
	inc  c                                           ; $70d7: $0c
	add  e                                           ; $70d8: $83
	rst  $38                                         ; $70d9: $ff
	add  b                                           ; $70da: $80
	cp   $80                                         ; $70db: $fe $80
	db   $fd                                         ; $70dd: $fd
	add  b                                           ; $70de: $80
	ld   a, [$f580]                                  ; $70df: $fa $80 $f5
	add  b                                           ; $70e2: $80
	ld   [$ff80], a                                  ; $70e3: $ea $80 $ff
	add  b                                           ; $70e6: $80
	ld   a, [$d580]                                  ; $70e7: $fa $80 $d5
	add  b                                           ; $70ea: $80
	xor  d                                           ; $70eb: $aa
	add  b                                           ; $70ec: $80
	ld   d, l                                        ; $70ed: $55
	add  b                                           ; $70ee: $80
	xor  d                                           ; $70ef: $aa
	add  b                                           ; $70f0: $80
	ld   d, b                                        ; $70f1: $50
	add  b                                           ; $70f2: $80
	and  b                                           ; $70f3: $a0
	add  b                                           ; $70f4: $80
	push de                                          ; $70f5: $d5
	add  b                                           ; $70f6: $80
	xor  d                                           ; $70f7: $aa
	add  b                                           ; $70f8: $80
	ld   d, h                                        ; $70f9: $54
	add  b                                           ; $70fa: $80
	and  b                                           ; $70fb: $a0
	add  [hl]                                        ; $70fc: $86
	nop                                              ; $70fd: $00
	ld   bc, $585f                                   ; $70fe: $01 $5f $58
	add  b                                           ; $7101: $80
	xor  b                                           ; $7102: $a8
	adc  d                                           ; $7103: $8a
	ld   [$f100], sp                                 ; $7104: $08 $00 $f1
	add  e                                           ; $7107: $83
	add  hl, bc                                      ; $7108: $09
	add  d                                           ; $7109: $82
	dec  bc                                          ; $710a: $0b
	add  b                                           ; $710b: $80
	inc  de                                          ; $710c: $13
	add  d                                           ; $710d: $82
	rla                                              ; $710e: $17
	ld   [bc], a                                     ; $710f: $02
	push hl                                          ; $7110: $e5
	ldh  [c], a                                      ; $7111: $e2
	ldh  [$80], a                                    ; $7112: $e0 $80
	ldh  [c], a                                      ; $7114: $e2
	add  b                                           ; $7115: $80
	rst  $20                                         ; $7116: $e7
	nop                                              ; $7117: $00
	db   $e4                                         ; $7118: $e4
	add  b                                           ; $7119: $80
	db   $ec                                         ; $711a: $ec
	add  e                                           ; $711b: $83
	ld   c, h                                        ; $711c: $4c
	rlca                                             ; $711d: $07
	ld   c, b                                        ; $711e: $48
	ld   a, b                                        ; $711f: $78
	or   l                                           ; $7120: $b5
	jr   nc, jr_07a_70d3                             ; $7121: $30 $b0

	add  b                                           ; $7123: $80
	jp   z, $87cf                                    ; $7124: $ca $cf $87

	nop                                              ; $7127: $00
	ld   bc, $135c                                   ; $7128: $01 $5c $13
	add  b                                           ; $712b: $80
	dec  de                                          ; $712c: $1b
	ld   bc, $1b9b                                   ; $712d: $01 $9b $1b
	add  h                                           ; $7130: $84
	db   $db                                         ; $7131: $db
	add  c                                           ; $7132: $81
	reti                                             ; $7133: $d9


	ld   [bc], a                                     ; $7134: $02
	ld   e, c                                        ; $7135: $59
	sub  b                                           ; $7136: $90
	db   $10                                         ; $7137: $10
	add  h                                           ; $7138: $84
	sub  b                                           ; $7139: $90
	add  h                                           ; $713a: $84
	ret  z                                           ; $713b: $c8

	add  b                                           ; $713c: $80
	ld   c, b                                        ; $713d: $48
	ld   bc, $552a                                   ; $713e: $01 $2a $55
	add  b                                           ; $7141: $80
	ld   l, d                                        ; $7142: $6a
	add  b                                           ; $7143: $80
	ld   d, l                                        ; $7144: $55
	add  b                                           ; $7145: $80
	ld   b, d                                        ; $7146: $42
	add  [hl]                                        ; $7147: $86
	ld   b, b                                        ; $7148: $40
	ld   bc, $7fff                                   ; $7149: $01 $ff $7f
	add  b                                           ; $714c: $80
	xor  a                                           ; $714d: $af
	add  b                                           ; $714e: $80
	ld   d, l                                        ; $714f: $55
	add  b                                           ; $7150: $80
	xor  d                                           ; $7151: $aa
	add  b                                           ; $7152: $80
	ld   d, l                                        ; $7153: $55
	add  b                                           ; $7154: $80
	ld   a, [hl+]                                    ; $7155: $2a
	add  b                                           ; $7156: $80
	dec  b                                           ; $7157: $05
	add  b                                           ; $7158: $80
	ld   [bc], a                                     ; $7159: $02
	add  [hl]                                        ; $715a: $86
	rst  $38                                         ; $715b: $ff
	add  b                                           ; $715c: $80
	ld   e, a                                        ; $715d: $5f
	add  b                                           ; $715e: $80
	xor  a                                           ; $715f: $af
	add  b                                           ; $7160: $80
	ld   d, a                                        ; $7161: $57
	add  b                                           ; $7162: $80
	xor  e                                           ; $7163: $ab
	add  b                                           ; $7164: $80
	ld   a, [bc]                                     ; $7165: $0a
	add  b                                           ; $7166: $80
	dec  b                                           ; $7167: $05
	add  b                                           ; $7168: $80
	ld   a, [bc]                                     ; $7169: $0a
	add  b                                           ; $716a: $80
	dec  b                                           ; $716b: $05

jr_07a_716c:
	add  b                                           ; $716c: $80
	ld   a, [bc]                                     ; $716d: $0a
	add  b                                           ; $716e: $80
	dec  b                                           ; $716f: $05

jr_07a_7170:
	add  b                                           ; $7170: $80
	ld   a, [bc]                                     ; $7171: $0a
	add  b                                           ; $7172: $80
	dec  b                                           ; $7173: $05
	nop                                              ; $7174: $00
	sub  h                                           ; $7175: $94
	adc  l                                           ; $7176: $8d
	ld   a, e                                        ; $7177: $7b
	nop                                              ; $7178: $00
	push bc                                          ; $7179: $c5
	adc  l                                           ; $717a: $8d
	rst  JumpTable                                         ; $717b: $df
	nop                                              ; $717c: $00
	sbc  d                                           ; $717d: $9a
	add  l                                           ; $717e: $85
	sbc  h                                           ; $717f: $9c
	add  b                                           ; $7180: $80
	sbc  b                                           ; $7181: $98
	add  b                                           ; $7182: $80
	sbc  h                                           ; $7183: $9c
	add  b                                           ; $7184: $80
	sbc  b                                           ; $7185: $98
	add  b                                           ; $7186: $80
	sbc  h                                           ; $7187: $9c
	ld   bc, $d526                                   ; $7188: $01 $26 $d5
	add  b                                           ; $718b: $80
	xor  d                                           ; $718c: $aa
	add  b                                           ; $718d: $80
	call nc, $aa80                                   ; $718e: $d4 $80 $aa
	add  b                                           ; $7191: $80
	ld   d, h                                        ; $7192: $54
	add  b                                           ; $7193: $80
	xor  b                                           ; $7194: $a8
	add  b                                           ; $7195: $80
	ld   d, b                                        ; $7196: $50
	add  b                                           ; $7197: $80
	and  b                                           ; $7198: $a0
	add  b                                           ; $7199: $80
	rst  $38                                         ; $719a: $ff
	add  b                                           ; $719b: $80
	add  b                                           ; $719c: $80
	add  b                                           ; $719d: $80
	cp   a                                           ; $719e: $bf
	add  c                                           ; $719f: $81
	cp   [hl]                                        ; $71a0: $be
	ld   [$a6bf], sp                                 ; $71a1: $08 $bf $a6
	and  l                                           ; $71a4: $a5
	cp   l                                           ; $71a5: $bd
	cp   c                                           ; $71a6: $b9
	or   d                                           ; $71a7: $b2
	cp   e                                           ; $71a8: $bb
	pop  af                                          ; $71a9: $f1
	cp   $80                                         ; $71aa: $fe $80
	ld   [bc], a                                     ; $71ac: $02
	add  b                                           ; $71ad: $80
	ld   a, [$ba80]                                  ; $71ae: $fa $80 $ba
	dec  b                                           ; $71b1: $05
	sbc  d                                           ; $71b2: $9a
	ld   a, [$ba2a]                                  ; $71b3: $fa $2a $ba
	and  d                                           ; $71b6: $a2
	xor  d                                           ; $71b7: $aa
	add  b                                           ; $71b8: $80
	add  d                                           ; $71b9: $82
	nop                                              ; $71ba: $00
	rst  $30                                         ; $71bb: $f7
	add  e                                           ; $71bc: $83
	ld   [$0980], sp                                 ; $71bd: $08 $80 $09
	add  b                                           ; $71c0: $80
	ld   [$0980], sp                                 ; $71c1: $08 $80 $09
	add  b                                           ; $71c4: $80
	ld   [$0980], sp                                 ; $71c5: $08 $80 $09
	ld   bc, $16ee                                   ; $71c8: $01 $ee $16
	add  b                                           ; $71cb: $80
	ld   h, $82                                      ; $71cc: $26 $82
	ld   l, $80                                      ; $71ce: $2e $80
	ld   c, h                                        ; $71d0: $4c
	add  b                                           ; $71d1: $80
	ld   e, h                                        ; $71d2: $5c
	add  b                                           ; $71d3: $80
	ld   e, l                                        ; $71d4: $5d
	add  b                                           ; $71d5: $80
	sbc  c                                           ; $71d6: $99
	add  b                                           ; $71d7: $80
	ret  c                                           ; $71d8: $d8

	nop                                              ; $71d9: $00
	rst  JumpTable                                         ; $71da: $df
	add  c                                           ; $71db: $81
	ret  c                                           ; $71dc: $d8

	add  c                                           ; $71dd: $81
	cp   b                                           ; $71de: $b8
	add  e                                           ; $71df: $83
	or   b                                           ; $71e0: $b0
	inc  b                                           ; $71e1: $04
	ld   [hl], b                                     ; $71e2: $70
	ld   h, b                                        ; $71e3: $60
	rra                                              ; $71e4: $1f
	nop                                              ; $71e5: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71e6: $cf
	add  e                                           ; $71e7: $83
	nop                                              ; $71e8: $00
	add  b                                           ; $71e9: $80
	jr   nz, jr_07a_716c                             ; $71ea: $20 $80

	db   $10                                         ; $71ec: $10
	add  b                                           ; $71ed: $80
	jr   nz, jr_07a_7170                             ; $71ee: $20 $80

	db   $10                                         ; $71f0: $10
	ld   [bc], a                                     ; $71f1: $02
	and  d                                           ; $71f2: $a2
	ld   l, l                                        ; $71f3: $6d
	db   $ed                                         ; $71f4: $ed
	add  c                                           ; $71f5: $81
	ld   l, l                                        ; $71f6: $6d
	add  b                                           ; $71f7: $80
	ld   l, h                                        ; $71f8: $6c
	nop                                              ; $71f9: $00
	ld   a, [hl]                                     ; $71fa: $7e
	add  c                                           ; $71fb: $81
	ld   a, $80                                      ; $71fc: $3e $80
	ld   [hl], $03                                   ; $71fe: $36 $03
	scf                                              ; $7200: $37
	rla                                              ; $7201: $17
	adc  b                                           ; $7202: $88
	ld   l, b                                        ; $7203: $68
	add  b                                           ; $7204: $80
	ld   h, h                                        ; $7205: $64
	add  d                                           ; $7206: $82
	and  h                                           ; $7207: $a4
	add  b                                           ; $7208: $80
	or   h                                           ; $7209: $b4
	add  d                                           ; $720a: $82
	jp   nc, $e880                                   ; $720b: $d2 $80 $e8

	nop                                              ; $720e: $00
	ccf                                              ; $720f: $3f
	adc  l                                           ; $7210: $8d
	ld   b, b                                        ; $7211: $40
	ld   bc, $0181                                   ; $7212: $01 $81 $01
	adc  h                                           ; $7215: $8c
	nop                                              ; $7216: $00
	add  b                                           ; $7217: $80
	ld   d, l                                        ; $7218: $55
	add  b                                           ; $7219: $80
	xor  d                                           ; $721a: $aa
	add  b                                           ; $721b: $80
	ld   d, l                                        ; $721c: $55
	add  b                                           ; $721d: $80
	ld   a, [hl+]                                    ; $721e: $2a
	add  b                                           ; $721f: $80
	dec  d                                           ; $7220: $15
	add  b                                           ; $7221: $80
	ld   a, [bc]                                     ; $7222: $0a
	add  b                                           ; $7223: $80
	dec  b                                           ; $7224: $05
	add  b                                           ; $7225: $80
	ld   [bc], a                                     ; $7226: $02
	add  b                                           ; $7227: $80
	ld   [$008c], sp                                 ; $7228: $08 $8c $00
	nop                                              ; $722b: $00
	sub  h                                           ; $722c: $94
	adc  l                                           ; $722d: $8d
	ld   a, e                                        ; $722e: $7b
	nop                                              ; $722f: $00
	push bc                                          ; $7230: $c5
	add  h                                           ; $7231: $84
	rst  JumpTable                                         ; $7232: $df
	nop                                              ; $7233: $00
	push de                                          ; $7234: $d5
	add  h                                           ; $7235: $84
	jp   c, $d580                                    ; $7236: $da $80 $d5

	ld   bc, $9894                                   ; $7239: $01 $94 $98
	add  b                                           ; $723c: $80
	sbc  h                                           ; $723d: $9c
	add  b                                           ; $723e: $80
	sbc  b                                           ; $723f: $98
	add  b                                           ; $7240: $80
	sbc  h                                           ; $7241: $9c
	add  b                                           ; $7242: $80
	sbc  b                                           ; $7243: $98
	add  b                                           ; $7244: $80
	sbc  h                                           ; $7245: $9c
	add  b                                           ; $7246: $80
	sbc  b                                           ; $7247: $98
	add  b                                           ; $7248: $80
	sbc  h                                           ; $7249: $9c
	ld   bc, $40b3                                   ; $724a: $01 $b3 $40
	add  b                                           ; $724d: $80
	and  b                                           ; $724e: $a0
	add  b                                           ; $724f: $80
	ld   b, b                                        ; $7250: $40
	add  b                                           ; $7251: $80
	add  b                                           ; $7252: $80
	add  b                                           ; $7253: $80
	ld   b, b                                        ; $7254: $40
	add  b                                           ; $7255: $80
	add  b                                           ; $7256: $80
	add  d                                           ; $7257: $82
	nop                                              ; $7258: $00
	ld   bc, $a798                                   ; $7259: $01 $98 $a7
	add  e                                           ; $725c: $83
	cp   a                                           ; $725d: $bf
	nop                                              ; $725e: $00
	add  b                                           ; $725f: $80
	add  b                                           ; $7260: $80
	sbc  a                                           ; $7261: $9f
	rlca                                             ; $7262: $07
	xor  d                                           ; $7263: $aa
	add  b                                           ; $7264: $80
	adc  c                                           ; $7265: $89
	and  e                                           ; $7266: $a3
	xor  d                                           ; $7267: $aa
	add  b                                           ; $7268: $80
	ret  nc                                          ; $7269: $d0

	ld   [bc], a                                     ; $726a: $02
	add  e                                           ; $726b: $83
	ld   a, [$0200]                                  ; $726c: $fa $00 $02
	add  c                                           ; $726f: $81
	xor  d                                           ; $7270: $aa
	dec  b                                           ; $7271: $05
	ld   [bc], a                                     ; $7272: $02
	ld   d, d                                        ; $7273: $52
	ld   a, [$02aa]                                  ; $7274: $fa $aa $02
	and  [hl]                                        ; $7277: $a6
	add  e                                           ; $7278: $83
	add  hl, bc                                      ; $7279: $09
	add  [hl]                                        ; $727a: $86
	ld   [$0980], sp                                 ; $727b: $08 $80 $09
	ld   bc, $b941                                   ; $727e: $01 $41 $b9
	add  b                                           ; $7281: $80
	inc  sp                                          ; $7282: $33
	add  b                                           ; $7283: $80
	ld   [hl-], a                                    ; $7284: $32
	add  b                                           ; $7285: $80
	ld   h, [hl]                                     ; $7286: $66
	add  b                                           ; $7287: $80
	ld   l, l                                        ; $7288: $6d
	add  b                                           ; $7289: $80
	call $9b80                                       ; $728a: $cd $80 $9b
	ld   [bc], a                                     ; $728d: $02
	or   a                                           ; $728e: $b7
	or   [hl]                                        ; $728f: $b6
	cp   $82                                         ; $7290: $fe $82
	ldh  [rP1], a                                    ; $7292: $e0 $00
	ret  nz                                          ; $7294: $c0

	add  d                                           ; $7295: $82
	add  b                                           ; $7296: $80
	add  b                                           ; $7297: $80
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	add  b                                           ; $729a: $80
	add  c                                           ; $729b: $81
	nop                                              ; $729c: $00
	ld   bc, $2050                                   ; $729d: $01 $50 $20
	add  d                                           ; $72a0: $82
	jr   nc, @-$78                                   ; $72a1: $30 $86

	nop                                              ; $72a3: $00
	add  b                                           ; $72a4: $80
	jr   nc, jr_07a_72a7                             ; $72a5: $30 $00

jr_07a_72a7:
	inc  [hl]                                        ; $72a7: $34
	add  c                                           ; $72a8: $81
	dec  de                                          ; $72a9: $1b
	nop                                              ; $72aa: $00
	dec  e                                           ; $72ab: $1d
	add  c                                           ; $72ac: $81
	dec  c                                           ; $72ad: $0d
	add  b                                           ; $72ae: $80
	ld   c, $81                                      ; $72af: $0e $81
	ld   b, $04                                      ; $72b1: $06 $04
	ld   [bc], a                                     ; $72b3: $02
	inc  bc                                          ; $72b4: $03
	ld   bc, $24d2                                   ; $72b5: $01 $d2 $24
	add  b                                           ; $72b8: $80
	or   h                                           ; $72b9: $b4
	add  b                                           ; $72ba: $80
	or   b                                           ; $72bb: $b0

jr_07a_72bc:
	add  b                                           ; $72bc: $80
	sbc  b                                           ; $72bd: $98
	add  b                                           ; $72be: $80
	ret  c                                           ; $72bf: $d8

jr_07a_72c0:
	add  b                                           ; $72c0: $80
	call z, Call_07a_6c80                            ; $72c1: $cc $80 $6c
	add  b                                           ; $72c4: $80
	ld   h, $00                                      ; $72c5: $26 $00
	rst  $38                                         ; $72c7: $ff
	add  l                                           ; $72c8: $85
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	rst  $38                                         ; $72cb: $ff
	add  c                                           ; $72cc: $81
	nop                                              ; $72cd: $00
	add  b                                           ; $72ce: $80
	add  b                                           ; $72cf: $80
	add  b                                           ; $72d0: $80
	ret  nz                                          ; $72d1: $c0

	ld   bc, $58a0                                   ; $72d2: $01 $a0 $58

jr_07a_72d5:
	add  b                                           ; $72d5: $80
	xor  b                                           ; $72d6: $a8
	adc  d                                           ; $72d7: $8a
	ld   [$0201], sp                                 ; $72d8: $08 $01 $02
	dec  b                                           ; $72db: $05
	add  b                                           ; $72dc: $80
	ld   [bc], a                                     ; $72dd: $02
	add  b                                           ; $72de: $80
	ld   bc, $0080                                   ; $72df: $01 $80 $00
	add  b                                           ; $72e2: $80
	ld   bc, $0094                                   ; $72e3: $01 $94 $00
	nop                                              ; $72e6: $00
	sub  h                                           ; $72e7: $94
	adc  l                                           ; $72e8: $8d
	ld   a, e                                        ; $72e9: $7b
	nop                                              ; $72ea: $00
	push bc                                          ; $72eb: $c5
	adc  l                                           ; $72ec: $8d
	rst  JumpTable                                         ; $72ed: $df
	ld   bc, $989e                                   ; $72ee: $01 $9e $98
	add  b                                           ; $72f1: $80
	sbc  h                                           ; $72f2: $9c
	adc  d                                           ; $72f3: $8a
	sbc  b                                           ; $72f4: $98
	nop                                              ; $72f5: $00
	di                                               ; $72f6: $f3
	adc  l                                           ; $72f7: $8d
	nop                                              ; $72f8: $00
	add  b                                           ; $72f9: $80
	cp   l                                           ; $72fa: $bd
	inc  bc                                          ; $72fb: $03
	xor  d                                           ; $72fc: $aa
	add  b                                           ; $72fd: $80
	sbc  l                                           ; $72fe: $9d
	or   a                                           ; $72ff: $b7
	add  b                                           ; $7300: $80
	add  b                                           ; $7301: $80
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	add  b                                           ; $7304: $80
	rst  $38                                         ; $7305: $ff
	add  e                                           ; $7306: $83
	nop                                              ; $7307: $00
	add  b                                           ; $7308: $80
	ldh  [c], a                                      ; $7309: $e2
	inc  bc                                          ; $730a: $03
	xor  d                                           ; $730b: $aa
	ld   [bc], a                                     ; $730c: $02
	ldh  a, [c]                                      ; $730d: $f2
	ld   e, d                                        ; $730e: $5a
	add  b                                           ; $730f: $80
	ld   [bc], a                                     ; $7310: $02
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	add  b                                           ; $7313: $80
	cp   $83                                         ; $7314: $fe $83
	nop                                              ; $7316: $00
	ld   bc, $090e                                   ; $7317: $01 $0e $09
	add  d                                           ; $731a: $82
	ld   [$0980], sp                                 ; $731b: $08 $80 $09
	add  [hl]                                        ; $731e: $86
	ld   [$9407], sp                                 ; $731f: $08 $07 $94
	ld   l, h                                        ; $7322: $6c
	ld   e, a                                        ; $7323: $5f
	ld   e, b                                        ; $7324: $58
	jr   c, jr_07a_7357                              ; $7325: $38 $30

	ret  nc                                          ; $7327: $d0

	ret  nz                                          ; $7328: $c0

	add  b                                           ; $7329: $80
	ld   h, b                                        ; $732a: $60
	add  d                                           ; $732b: $82
	nop                                              ; $732c: $00
	inc  b                                           ; $732d: $04
	ld   h, b                                        ; $732e: $60
	ld   [hl], b                                     ; $732f: $70
	rrca                                             ; $7330: $0f
	nop                                              ; $7331: $00
	cp   a                                           ; $7332: $bf
	adc  e                                           ; $7333: $8b
	nop                                              ; $7334: $00
	ld   [bc], a                                     ; $7335: $02
	adc  a                                           ; $7336: $8f
	jr   nc, @+$01                                   ; $7337: $30 $ff

	add  l                                           ; $7339: $85
	jr   nc, jr_07a_72bc                             ; $733a: $30 $80

	db   $10                                         ; $733c: $10
	add  b                                           ; $733d: $80
	jr   nz, jr_07a_72c0                             ; $733e: $20 $80

	db   $10                                         ; $7340: $10
	ld   [bc], a                                     ; $7341: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7342: $cf
	nop                                              ; $7343: $00
	rst  $30                                         ; $7344: $f7
	adc  e                                           ; $7345: $8b
	nop                                              ; $7346: $00
	rlca                                             ; $7347: $07
	ld   h, a                                        ; $7348: $67
	sub  b                                           ; $7349: $90
	ret  z                                           ; $734a: $c8

	ld   c, b                                        ; $734b: $48
	ld   h, b                                        ; $734c: $60
	jr   nz, jr_07a_737b                             ; $734d: $20 $2c

	inc  c                                           ; $734f: $0c
	add  b                                           ; $7350: $80
	jr   jr_07a_72d5                                 ; $7351: $18 $82

	nop                                              ; $7353: $00
	inc  de                                          ; $7354: $13
	inc  d                                           ; $7355: $14
	inc  [hl]                                        ; $7356: $34

jr_07a_7357:
	sub  l                                           ; $7357: $95
	ld   e, a                                        ; $7358: $5f
	and  b                                           ; $7359: $a0
	xor  a                                           ; $735a: $af
	ld   d, c                                        ; $735b: $51
	ld   e, a                                        ; $735c: $5f
	ld   sp, $183f                                   ; $735d: $31 $3f $18
	rra                                              ; $7360: $1f
	ld   a, [bc]                                     ; $7361: $0a
	dec  c                                           ; $7362: $0d
	dec  d                                           ; $7363: $15
	ld   [de], a                                     ; $7364: $12
	ld   a, [bc]                                     ; $7365: $0a
	add  hl, bc                                      ; $7366: $09
	ld   e, [hl]                                     ; $7367: $5e
	xor  d                                           ; $7368: $aa
	add  b                                           ; $7369: $80
	jp   c, $a303                                    ; $736a: $da $03 $a3

	and  a                                           ; $736d: $a7

jr_07a_736e:
	jp   c, $80d4                                    ; $736e: $da $d4 $80

	ld   [$fd06], a                                  ; $7371: $ea $06 $fd
	ld   a, l                                        ; $7374: $7d
	cpl                                              ; $7375: $2f
	rst  $38                                         ; $7376: $ff
	and  l                                           ; $7377: $a5
	ld   a, a                                        ; $7378: $7f
	cp   d                                           ; $7379: $ba
	add  c                                           ; $737a: $81

jr_07a_737b:
	or   l                                           ; $737b: $b5
	inc  bc                                          ; $737c: $03
	ld   a, e                                        ; $737d: $7b
	rst  $38                                         ; $737e: $ff
	ld   bc, $8000                                   ; $737f: $01 $00 $80
	xor  d                                           ; $7382: $aa
	add  b                                           ; $7383: $80
	ld   d, l                                        ; $7384: $55
	add  b                                           ; $7385: $80
	xor  e                                           ; $7386: $ab
	ld   [bc], a                                     ; $7387: $02
	cp   $ff                                         ; $7388: $fe $ff
	ld   bc, $008d                                   ; $738a: $01 $8d $00
	nop                                              ; $738d: $00
	sub  h                                           ; $738e: $94
	adc  c                                           ; $738f: $89
	ld   a, e                                        ; $7390: $7b
	inc  b                                           ; $7391: $04
	ld   a, b                                        ; $7392: $78
	ld   a, e                                        ; $7393: $7b
	ld   a, b                                        ; $7394: $78
	ld   a, e                                        ; $7395: $7b
	push bc                                          ; $7396: $c5
	add  e                                           ; $7397: $83
	rst  JumpTable                                         ; $7398: $df
	ld   a, [bc]                                     ; $7399: $0a
	sbc  $df                                         ; $739a: $de $df
	sbc  $df                                         ; $739c: $de $df
	rra                                              ; $739e: $1f
	rst  $38                                         ; $739f: $ff
	ld   a, [de]                                     ; $73a0: $1a
	rst  $38                                         ; $73a1: $ff
	ret  z                                           ; $73a2: $c8

	rst  $38                                         ; $73a3: $ff
	xor  h                                           ; $73a4: $ac
	add  e                                           ; $73a5: $83

jr_07a_73a6:
	sbc  b                                           ; $73a6: $98
	ld   hl, $9818                                   ; $73a7: $21 $18 $98
	ld   e, b                                        ; $73aa: $58
	ret  c                                           ; $73ab: $d8

	jr   jr_07a_73a6                                 ; $73ac: $18 $f8

	jr   @-$06                                       ; $73ae: $18 $f8

	ret  nz                                          ; $73b0: $c0

	ret  z                                           ; $73b1: $c8

	push de                                          ; $73b2: $d5
	ld   l, a                                        ; $73b3: $6f
	ld   d, h                                        ; $73b4: $54
	ld   d, a                                        ; $73b5: $57
	inc  l                                           ; $73b6: $2c
	xor  a                                           ; $73b7: $af
	sub  h                                           ; $73b8: $94
	ld   d, a                                        ; $73b9: $57
	xor  b                                           ; $73ba: $a8
	xor  a                                           ; $73bb: $af
	ld   [hl], b                                     ; $73bc: $70
	ld   a, a                                        ; $73bd: $7f
	pop  af                                          ; $73be: $f1
	xor  $c8                                         ; $73bf: $ee $c8
	or   $84                                         ; $73c1: $f6 $84
	ret  nc                                          ; $73c3: $d0

	jr   z, jr_07a_736e                              ; $73c4: $28 $a8

	ld   d, b                                        ; $73c6: $50
	ret  nc                                          ; $73c7: $d0

	ld   b, b                                        ; $73c8: $40
	ret  nz                                          ; $73c9: $c0

	add  b                                           ; $73ca: $80
	ret  z                                           ; $73cb: $c8

	add  b                                           ; $73cc: $80
	sub  b                                           ; $73cd: $90
	add  b                                           ; $73ce: $80
	ld   [$1080], sp                                 ; $73cf: $08 $80 $10
	nop                                              ; $73d2: $00
	ldh  a, [$83]                                    ; $73d3: $f0 $83
	ld   [$0980], sp                                 ; $73d5: $08 $80 $09
	add  b                                           ; $73d8: $80
	ld   [$0980], sp                                 ; $73d9: $08 $80 $09
	add  b                                           ; $73dc: $80
	ld   [$0980], sp                                 ; $73dd: $08 $80 $09
	add  b                                           ; $73e0: $80
	ld   [$0a84], sp                                 ; $73e1: $08 $84 $0a
	add  [hl]                                        ; $73e4: $86
	dec  bc                                          ; $73e5: $0b
	inc  bc                                          ; $73e6: $03
	ld   b, a                                        ; $73e7: $47
	or   b                                           ; $73e8: $b0
	cp   h                                           ; $73e9: $bc
	or   e                                           ; $73ea: $b3
	add  b                                           ; $73eb: $80
	or   b                                           ; $73ec: $b0
	add  b                                           ; $73ed: $80
	or   a                                           ; $73ee: $b7
	add  b                                           ; $73ef: $80
	or   b                                           ; $73f0: $b0
	ld   bc, $9390                                   ; $73f1: $01 $90 $93
	add  b                                           ; $73f4: $80
	sbc  e                                           ; $73f5: $9b
	add  b                                           ; $73f6: $80
	sbc  d                                           ; $73f7: $9a
	inc  bc                                          ; $73f8: $03
	cp   h                                           ; $73f9: $bc
	nop                                              ; $73fa: $00
	add  b                                           ; $73fb: $80
	ccf                                              ; $73fc: $3f
	add  b                                           ; $73fd: $80
	nop                                              ; $73fe: $00
	add  b                                           ; $73ff: $80
	rst  $38                                         ; $7400: $ff
	add  c                                           ; $7401: $81
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	rst  $38                                         ; $7404: $ff
	add  b                                           ; $7405: $80
	ld   d, l                                        ; $7406: $55
	add  b                                           ; $7407: $80
	xor  d                                           ; $7408: $aa
	inc  bc                                          ; $7409: $03
	jr   nc, jr_07a_740c                             ; $740a: $30 $00

jr_07a_740c:
	jr   nc, @+$01                                   ; $740c: $30 $ff

	add  b                                           ; $740e: $80
	nop                                              ; $740f: $00
	add  b                                           ; $7410: $80
	rst  $38                                         ; $7411: $ff
	add  c                                           ; $7412: $81
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	rst  $38                                         ; $7415: $ff
	add  b                                           ; $7416: $80
	ld   d, l                                        ; $7417: $55
	add  b                                           ; $7418: $80
	xor  d                                           ; $7419: $aa
	inc  bc                                          ; $741a: $03
	ld   [$0300], sp                                 ; $741b: $08 $00 $03
	db   $f4                                         ; $741e: $f4
	add  b                                           ; $741f: $80
	nop                                              ; $7420: $00
	add  b                                           ; $7421: $80
	rst  $38                                         ; $7422: $ff
	add  c                                           ; $7423: $81
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	rst  $38                                         ; $7426: $ff
	add  b                                           ; $7427: $80
	ld   d, l                                        ; $7428: $55
	add  b                                           ; $7429: $80
	xor  e                                           ; $742a: $ab
	inc  bc                                          ; $742b: $03
	dec  bc                                          ; $742c: $0b
	inc  [hl]                                        ; $742d: $34
	db   $f4                                         ; $742e: $f4
	inc  [hl]                                        ; $742f: $34
	add  b                                           ; $7430: $80
	inc  l                                           ; $7431: $2c
	add  b                                           ; $7432: $80
	ld   l, b                                        ; $7433: $68
	add  b                                           ; $7434: $80
	ld   l, d                                        ; $7435: $6a
	add  b                                           ; $7436: $80
	jp   z, $c282                                    ; $7437: $ca $82 $c2

	add  b                                           ; $743a: $80
	jp   nc, $c980                                   ; $743b: $d2 $80 $c9

	add  b                                           ; $743e: $80
	jp   nc, $c980                                   ; $743f: $d2 $80 $c9

	add  b                                           ; $7442: $80
	jp   nc, $c980                                   ; $7443: $d2 $80 $c9

	add  b                                           ; $7446: $80
	jp   c, $c980                                    ; $7447: $da $80 $c9

	dec  b                                           ; $744a: $05
	ld   d, l                                        ; $744b: $55
	ld   a, a                                        ; $744c: $7f
	ld   h, b                                        ; $744d: $60
	ld   l, e                                        ; $744e: $6b
	ld   [hl], h                                     ; $744f: $74
	ld   [hl], l                                     ; $7450: $75
	add  b                                           ; $7451: $80
	ld   l, d                                        ; $7452: $6a
	add  b                                           ; $7453: $80
	ld   h, l                                        ; $7454: $65
	add  b                                           ; $7455: $80
	ld   h, d                                        ; $7456: $62
	add  d                                           ; $7457: $82
	ld   h, b                                        ; $7458: $60
	rlca                                             ; $7459: $07
	ld   [hl-], a                                    ; $745a: $32
	rst  $38                                         ; $745b: $ff
	db   $ed                                         ; $745c: $ed
	cp   $ee                                         ; $745d: $fe $ee
	cp   $f4                                         ; $745f: $fe $f4
	cp   $80                                         ; $7461: $fe $80
	xor  $80                                         ; $7463: $ee $80
	cp   $04                                         ; $7465: $fe $04
	db   $ec                                         ; $7467: $ec
	xor  $fc                                         ; $7468: $ee $fc
	cp   $1b                                         ; $746a: $fe $1b
	adc  l                                           ; $746c: $8d
	nop                                              ; $746d: $00
	inc  c                                           ; $746e: $0c
	sub  c                                           ; $746f: $91
	ld   a, a                                        ; $7470: $7f
	ld   [hl], b                                     ; $7471: $70
	ld   a, a                                        ; $7472: $7f
	ld   [hl], c                                     ; $7473: $71
	ld   a, a                                        ; $7474: $7f
	ld   l, h                                        ; $7475: $6c
	ld   a, h                                        ; $7476: $7c
	ld   h, e                                        ; $7477: $63
	ld   h, b                                        ; $7478: $60
	inc  e                                           ; $7479: $1c
	nop                                              ; $747a: $00
	ldh  [$81], a                                    ; $747b: $e0 $81
	nop                                              ; $747d: $00
	ld   [$fec1], sp                                 ; $747e: $08 $c1 $fe
	ld   sp, $8ef0                                   ; $7481: $31 $f0 $8e
	add  b                                           ; $7484: $80
	ld   [hl], b                                     ; $7485: $70
	nop                                              ; $7486: $00
	add  b                                           ; $7487: $80
	add  l                                           ; $7488: $85
	nop                                              ; $7489: $00
	ld   [bc], a                                     ; $748a: $02
	jp   $c000                                       ; $748b: $c3 $00 $c0


	add  a                                           ; $748e: $87
	nop                                              ; $748f: $00
	ld   bc, $3f3c                                   ; $7490: $01 $3c $3f
	add  b                                           ; $7493: $80
	ret  nz                                          ; $7494: $c0

	adc  d                                           ; $7495: $8a
	nop                                              ; $7496: $00
	add  b                                           ; $7497: $80
	add  b                                           ; $7498: $80
	ld   [bc], a                                     ; $7499: $02
	ld   l, d                                        ; $749a: $6a
	ld   a, a                                        ; $749b: $7f
	dec  d                                           ; $749c: $15
	adc  e                                           ; $749d: $8b
	nop                                              ; $749e: $00
	ld   [bc], a                                     ; $749f: $02
	xor  e                                           ; $74a0: $ab
	rst  $38                                         ; $74a1: $ff
	ld   d, h                                        ; $74a2: $54
	adc  e                                           ; $74a3: $8b
	nop                                              ; $74a4: $00
	add  b                                           ; $74a5: $80
	add  b                                           ; $74a6: $80
	nop                                              ; $74a7: $00
	inc  c                                           ; $74a8: $0c
	add  a                                           ; $74a9: $87
	dec  bc                                          ; $74aa: $0b
	add  b                                           ; $74ab: $80
	add  hl, bc                                      ; $74ac: $09
	add  d                                           ; $74ad: $82
	ld   [$6500], sp                                 ; $74ae: $08 $00 $65
	add  a                                           ; $74b1: $87
	sbc  [hl]                                        ; $74b2: $9e
	add  b                                           ; $74b3: $80
	sbc  d                                           ; $74b4: $9a
	add  b                                           ; $74b5: $80
	ld   [bc], a                                     ; $74b6: $02
	add  b                                           ; $74b7: $80
	ld   e, $01                                      ; $74b8: $1e $01
	adc  l                                           ; $74ba: $8d
	xor  $80                                         ; $74bb: $ee $80
	or   $08                                         ; $74bd: $f6 $08
	db   $e4                                         ; $74bf: $e4
	and  $e4                                         ; $74c0: $e6 $e4
	and  $e4                                         ; $74c2: $e6 $e4
	and  $e4                                         ; $74c4: $e6 $e4
	and  $e4                                         ; $74c6: $e6 $e4
	add  c                                           ; $74c8: $81
	and  $01                                         ; $74c9: $e6 $01
	ld   l, d                                        ; $74cb: $6a
	ld   [$9080], sp                                 ; $74cc: $08 $80 $90
	add  b                                           ; $74cf: $80
	ld   [$9880], sp                                 ; $74d0: $08 $80 $98
	add  b                                           ; $74d3: $80
	ld   e, b                                        ; $74d4: $58
	add  b                                           ; $74d5: $80
	sbc  b                                           ; $74d6: $98
	add  b                                           ; $74d7: $80
	ld   e, b                                        ; $74d8: $58
	add  b                                           ; $74d9: $80
	sbc  b                                           ; $74da: $98
	nop                                              ; $74db: $00
	db   $fc                                         ; $74dc: $fc
	add  c                                           ; $74dd: $81
	inc  bc                                          ; $74de: $03
	ld   b, $09                                      ; $74df: $06 $09
	rlca                                             ; $74e1: $07
	nop                                              ; $74e2: $00
	inc  bc                                          ; $74e3: $03
	ld   [bc], a                                     ; $74e4: $02
	ld   bc, $8309                                   ; $74e5: $01 $09 $83
	nop                                              ; $74e8: $00
	ld   bc, $02fa                                   ; $74e9: $01 $fa $02
	add  b                                           ; $74ec: $80
	nop                                              ; $74ed: $00
	add  b                                           ; $74ee: $80
	db   $fd                                         ; $74ef: $fd
	inc  b                                           ; $74f0: $04
	ld   e, [hl]                                     ; $74f1: $5e
	cp   $8d                                         ; $74f2: $fe $8d
	db   $fd                                         ; $74f4: $fd
	ret  nc                                          ; $74f5: $d0

	add  c                                           ; $74f6: $81
	nop                                              ; $74f7: $00
	add  b                                           ; $74f8: $80
	jr   nz, jr_07a_74fb                             ; $74f9: $20 $00

jr_07a_74fb:
	ccf                                              ; $74fb: $3f
	add  c                                           ; $74fc: $81
	ld   b, b                                        ; $74fd: $40
	ld   bc, $057a                                   ; $74fe: $01 $7a $05
	add  b                                           ; $7501: $80
	ld   a, [bc]                                     ; $7502: $0a
	add  b                                           ; $7503: $80
	dec  b                                           ; $7504: $05
	add  d                                           ; $7505: $82
	nop                                              ; $7506: $00
	ld   [bc], a                                     ; $7507: $02
	ld   a, a                                        ; $7508: $7f
	ld   b, b                                        ; $7509: $40
	ret  nz                                          ; $750a: $c0

	add  c                                           ; $750b: $81
	nop                                              ; $750c: $00
	inc  bc                                          ; $750d: $03
	add  d                                           ; $750e: $82
	ld   a, a                                        ; $750f: $7f
	db   $fd                                         ; $7510: $fd
	rst  $38                                         ; $7511: $ff
	add  b                                           ; $7512: $80
	ld   a, a                                        ; $7513: $7f
	add  d                                           ; $7514: $82
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	rst  $38                                         ; $7517: $ff
	add  e                                           ; $7518: $83
	nop                                              ; $7519: $00
	ld   b, $ab                                      ; $751a: $06 $ab
	rst  $38                                         ; $751c: $ff
	ld   bc, $a8ff                                   ; $751d: $01 $ff $a8
	rst  $38                                         ; $7520: $ff
	ld   [bc], a                                     ; $7521: $02
	add  c                                           ; $7522: $81
	nop                                              ; $7523: $00
	ld   [bc], a                                     ; $7524: $02
	rst  $38                                         ; $7525: $ff
	nop                                              ; $7526: $00
	ld   c, $83                                      ; $7527: $0e $83
	add  hl, bc                                      ; $7529: $09
	add  [hl]                                        ; $752a: $86
	ld   [$0980], sp                                 ; $752b: $08 $80 $09
	nop                                              ; $752e: $00
	rlca                                             ; $752f: $07
	adc  e                                           ; $7530: $8b
	nop                                              ; $7531: $00
	inc  bc                                          ; $7532: $03
	ld   [bc], a                                     ; $7533: $02
	inc  bc                                          ; $7534: $03
	ld   [bc], a                                     ; $7535: $02
	inc  bc                                          ; $7536: $03

jr_07a_7537:
	add  b                                           ; $7537: $80
	inc  c                                           ; $7538: $0c
	add  b                                           ; $7539: $80
	db   $10                                         ; $753a: $10
	add  b                                           ; $753b: $80
	ld   a, [hl-]                                    ; $753c: $3a
	add  b                                           ; $753d: $80
	dec  [hl]                                        ; $753e: $35
	ld   b, $0e                                      ; $753f: $06 $0e
	ld   a, $69                                      ; $7541: $3e $69
	rst  $20                                         ; $7543: $e7
	jr   nc, jr_07a_7537                             ; $7544: $30 $f1

	ld   a, a                                        ; $7546: $7f
	add  e                                           ; $7547: $83
	nop                                              ; $7548: $00
	add  b                                           ; $7549: $80
	ld   a, [bc]                                     ; $754a: $0a
	add  b                                           ; $754b: $80
	ld   d, l                                        ; $754c: $55
	add  b                                           ; $754d: $80
	xor  a                                           ; $754e: $af
	ld   de, $fef9                                   ; $754f: $11 $f9 $fe
	nop                                              ; $7552: $00
	ld   sp, hl                                      ; $7553: $f9
	ei                                               ; $7554: $fb
	rra                                              ; $7555: $1f
	ld   [$781f], sp                                 ; $7556: $08 $1f $78
	ld   a, a                                        ; $7559: $7f
	add  sp, -$01                                    ; $755a: $e8 $ff
	ret  c                                           ; $755c: $d8

	rst  $38                                         ; $755d: $ff
	jr   nc, @+$01                                   ; $755e: $30 $ff

	jr   nz, jr_07a_75e1                             ; $7560: $20 $7f

	add  d                                           ; $7562: $82
	rst  $38                                         ; $7563: $ff
	ld   a, [bc]                                     ; $7564: $0a
	dec  b                                           ; $7565: $05
	rst  $38                                         ; $7566: $ff
	dec  b                                           ; $7567: $05
	rst  $38                                         ; $7568: $ff
	dec  b                                           ; $7569: $05
	rst  $38                                         ; $756a: $ff
	dec  b                                           ; $756b: $05
	rst  $38                                         ; $756c: $ff
	ld   d, l                                        ; $756d: $55
	rst  $38                                         ; $756e: $ff
	ld   d, h                                        ; $756f: $54
	add  c                                           ; $7570: $81
	rst  $38                                         ; $7571: $ff
	add  hl, bc                                      ; $7572: $09
	ld   c, e                                        ; $7573: $4b
	ld   hl, sp-$31                                  ; $7574: $f8 $cf
	ld   hl, sp+$48                                  ; $7576: $f8 $48
	ei                                               ; $7578: $fb
	ld   e, e                                        ; $7579: $5b
	ei                                               ; $757a: $fb
	dec  hl                                          ; $757b: $2b
	jp   hl                                          ; $757c: $e9


	add  b                                           ; $757d: $80
	ldh  [c], a                                      ; $757e: $e2
	ld   b, $a6                                      ; $757f: $06 $a6
	and  h                                           ; $7581: $a4
	adc  l                                           ; $7582: $8d
	adc  b                                           ; $7583: $88
	or   $08                                         ; $7584: $f6 $08
	ld   hl, sp-$80                                  ; $7586: $f8 $80
	nop                                              ; $7588: $00
	adc  c                                           ; $7589: $89
	rst  $38                                         ; $758a: $ff
	ld   [bc], a                                     ; $758b: $02

jr_07a_758c:
	ret  nz                                          ; $758c: $c0

	inc  a                                           ; $758d: $3c
	inc  bc                                          ; $758e: $03
	add  b                                           ; $758f: $80
	nop                                              ; $7590: $00
	adc  c                                           ; $7591: $89
	rst  $38                                         ; $7592: $ff
	add  b                                           ; $7593: $80
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	rst  $38                                         ; $7596: $ff
	add  b                                           ; $7597: $80
	nop                                              ; $7598: $00
	adc  c                                           ; $7599: $89
	rst  $38                                         ; $759a: $ff
	ld   bc, $da2d                                   ; $759b: $01 $2d $da
	add  b                                           ; $759e: $80
	reti                                             ; $759f: $d9


	add  b                                           ; $75a0: $80
	jp   c, $d980                                    ; $75a1: $da $80 $d9

	dec  b                                           ; $75a4: $05
	adc  d                                           ; $75a5: $8a
	jp   c, $d999                                    ; $75a6: $da $99 $d9

	sbc  d                                           ; $75a9: $9a
	jp   c, $d980                                    ; $75aa: $da $80 $d9

	ld   [bc], a                                     ; $75ad: $02
	and  b                                           ; $75ae: $a0
	nop                                              ; $75af: $00
	ld   hl, sp-$80                                  ; $75b0: $f8 $80
	nop                                              ; $75b2: $00
	add  c                                           ; $75b3: $81
	ldh  a, [$80]                                    ; $75b4: $f0 $80
	ld   hl, sp+$01                                  ; $75b6: $f8 $01
	ldh  a, [$f8]                                    ; $75b8: $f0 $f8
	add  b                                           ; $75ba: $80
	db   $fc                                         ; $75bb: $fc
	inc  bc                                          ; $75bc: $03
	ld   hl, sp-$04                                  ; $75bd: $f8 $fc
	inc  hl                                          ; $75bf: $23
	rst  $38                                         ; $75c0: $ff
	adc  b                                           ; $75c1: $88
	ldh  [$03], a                                    ; $75c2: $e0 $03
	ccf                                              ; $75c4: $3f
	rra                                              ; $75c5: $1f
	ret  nz                                          ; $75c6: $c0

	rst  $38                                         ; $75c7: $ff
	add  b                                           ; $75c8: $80
	ret  nz                                          ; $75c9: $c0

	nop                                              ; $75ca: $00
	ccf                                              ; $75cb: $3f
	add  a                                           ; $75cc: $87
	nop                                              ; $75cd: $00
	ld   b, $fe                                      ; $75ce: $06 $fe
	rst  $38                                         ; $75d0: $ff
	dec  d                                           ; $75d1: $15
	ei                                               ; $75d2: $fb
	stop                                             ; $75d3: $10 $00
	rst  $38                                         ; $75d5: $ff
	add  a                                           ; $75d6: $87
	nop                                              ; $75d7: $00
	inc  bc                                          ; $75d8: $03
	ret                                              ; $75d9: $c9


	rst  $38                                         ; $75da: $ff
	db   $ed                                         ; $75db: $ed
	inc  h                                           ; $75dc: $24
	add  b                                           ; $75dd: $80
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	rst  $38                                         ; $75e0: $ff

jr_07a_75e1:
	add  a                                           ; $75e1: $87
	nop                                              ; $75e2: $00
	inc  bc                                          ; $75e3: $03
	daa                                              ; $75e4: $27
	rst  $38                                         ; $75e5: $ff
	or   l                                           ; $75e6: $b5
	sub  e                                           ; $75e7: $93
	ld   b, [hl]                                     ; $75e8: $46
	ld   [bc], a                                     ; $75e9: $02
	add  [hl]                                        ; $75ea: $86
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	rrca                                             ; $75ed: $0f
	add  c                                           ; $75ee: $81
	ld   [bc], a                                     ; $75ef: $02
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	add  b                                           ; $75f2: $80
	ld   [bc], a                                     ; $75f3: $02
	ld   bc, $070a                                   ; $75f4: $01 $0a $07
	add  l                                           ; $75f7: $85
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	rst  $38                                         ; $75fa: $ff
	add  b                                           ; $75fb: $80
	ld   [bc], a                                     ; $75fc: $02
	add  b                                           ; $75fd: $80
	add  hl, bc                                      ; $75fe: $09
	add  c                                           ; $75ff: $81
	ld   [$f700], sp                                 ; $7600: $08 $00 $f7
	add  l                                           ; $7603: $85
	nop                                              ; $7604: $00
	ld   [bc], a                                     ; $7605: $02
	cp   $41                                         ; $7606: $fe $41
	ld   b, b                                        ; $7608: $40
	add  b                                           ; $7609: $80
	jr   nz, jr_07a_758c                             ; $760a: $20 $80

	add  b                                           ; $760c: $80
	ld   bc, $bf40                                   ; $760d: $01 $40 $bf
	add  [hl]                                        ; $7610: $86
	nop                                              ; $7611: $00
	add  c                                           ; $7612: $81
	rst  $38                                         ; $7613: $ff
	add  b                                           ; $7614: $80
	ld   a, a                                        ; $7615: $7f
	add  b                                           ; $7616: $80
	ccf                                              ; $7617: $3f
	nop                                              ; $7618: $00
	rst  $38                                         ; $7619: $ff
	add  l                                           ; $761a: $85
	nop                                              ; $761b: $00
	ld   bc, $956a                                   ; $761c: $01 $6a $95
	add  b                                           ; $761f: $80
	xor  e                                           ; $7620: $ab
	add  b                                           ; $7621: $80
	sub  $80                                         ; $7622: $d6 $80
	ldh  [c], a                                      ; $7624: $e2
	nop                                              ; $7625: $00
	rst  $38                                         ; $7626: $ff
	add  l                                           ; $7627: $85
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	rst  $38                                         ; $762a: $ff
	add  c                                           ; $762b: $81
	rlca                                             ; $762c: $07
	nop                                              ; $762d: $00
	ld   b, $81                                      ; $762e: $06 $81

jr_07a_7630:
	rlca                                             ; $7630: $07
	nop                                              ; $7631: $00
	ld   sp, hl                                      ; $7632: $f9
	add  l                                           ; $7633: $85
	nop                                              ; $7634: $00
	inc  b                                           ; $7635: $04
	cp   a                                           ; $7636: $bf
	rst  $38                                         ; $7637: $ff
	ccf                                              ; $7638: $3f
	rst  $38                                         ; $7639: $ff
	ld   a, a                                        ; $763a: $7f
	add  c                                           ; $763b: $81
	rst  $38                                         ; $763c: $ff
	add  [hl]                                        ; $763d: $86
	nop                                              ; $763e: $00
	ld   [$e0de], sp                                 ; $763f: $08 $de $e0
	add  d                                           ; $7642: $82
	ldh  [rAUDVOL], a                                ; $7643: $e0 $24
	ldh  [$e4], a                                    ; $7645: $e0 $e4
	ldh  [$9c], a                                    ; $7647: $e0 $9c
	add  l                                           ; $7649: $85
	nop                                              ; $764a: $00
	ld   bc, $1728                                   ; $764b: $01 $28 $17
	add  b                                           ; $764e: $80
	rrca                                             ; $764f: $0f
	inc  b                                           ; $7650: $04
	ld   d, a                                        ; $7651: $57
	rla                                              ; $7652: $17
	and  a                                           ; $7653: $a7
	daa                                              ; $7654: $27
	rst  $38                                         ; $7655: $ff
	add  l                                           ; $7656: $85
	nop                                              ; $7657: $00
	ld   bc, $ea15                                   ; $7658: $01 $15 $ea
	add  b                                           ; $765b: $80
	push de                                          ; $765c: $d5
	add  b                                           ; $765d: $80
	xor  d                                           ; $765e: $aa
	add  b                                           ; $765f: $80
	ld   d, a                                        ; $7660: $57
	nop                                              ; $7661: $00
	rst  $38                                         ; $7662: $ff
	add  l                                           ; $7663: $85
	nop                                              ; $7664: $00
	ld   [$af5f], sp                                 ; $7665: $08 $5f $af
	ld   e, a                                        ; $7668: $5f
	ld   c, a                                        ; $7669: $4f
	xor  a                                           ; $766a: $af
	adc  a                                           ; $766b: $8f
	cp   a                                           ; $766c: $bf
	add  b                                           ; $766d: $80
	rst  $38                                         ; $766e: $ff
	add  l                                           ; $766f: $85
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	rst  $38                                         ; $7672: $ff
	add  h                                           ; $7673: $84
	db   $fc                                         ; $7674: $fc
	ld   bc, $ff00                                   ; $7675: $01 $00 $ff
	add  l                                           ; $7678: $85
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	rst  $38                                         ; $767b: $ff
	add  l                                           ; $767c: $85
	rlca                                             ; $767d: $07
	nop                                              ; $767e: $00
	ld   hl, sp-$7b                                  ; $767f: $f8 $85
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	ldh  a, [$85]                                    ; $7683: $f0 $85
	ld   [hl], b                                     ; $7685: $70
	nop                                              ; $7686: $00
	add  b                                           ; $7687: $80
	add  l                                           ; $7688: $85
	nop                                              ; $7689: $00
	add  b                                           ; $768a: $80
	add  hl, de                                      ; $768b: $19
	add  b                                           ; $768c: $80
	inc  sp                                          ; $768d: $33
	add  b                                           ; $768e: $80
	ld   h, a                                        ; $768f: $67
	add  b                                           ; $7690: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7691: $cf
	add  [hl]                                        ; $7692: $86
	nop                                              ; $7693: $00
	add  [hl]                                        ; $7694: $86
	rst  $38                                         ; $7695: $ff
	ld   bc, $0a0d                                   ; $7696: $01 $0d $0a
	add  l                                           ; $7699: $85
	ld   [$0f80], sp                                 ; $769a: $08 $80 $0f
	add  e                                           ; $769d: $83
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	ld   hl, sp-$7d                                  ; $76a0: $f8 $83
	ld   [rRAMG], sp                                 ; $76a2: $08 $00 $00
	add  b                                           ; $76a5: $80
	add  b                                           ; $76a6: $80
	add  b                                           ; $76a7: $80
	ld   bc, $0380                                   ; $76a8: $01 $80 $03
	add  d                                           ; $76ab: $82
	nop                                              ; $76ac: $00
	add  b                                           ; $76ad: $80
	jr   nz, jr_07a_7630                             ; $76ae: $20 $80

	ld   de, $8a80                                   ; $76b0: $11 $80 $8a
	add  b                                           ; $76b3: $80
	add  h                                           ; $76b4: $84
	add  b                                           ; $76b5: $80
	adc  [hl]                                        ; $76b6: $8e
	add  b                                           ; $76b7: $80
	rst  JumpTable                                         ; $76b8: $df
	add  b                                           ; $76b9: $80
	ld   c, $00                                      ; $76ba: $0e $00
	nop                                              ; $76bc: $00
	add  d                                           ; $76bd: $82
	rra                                              ; $76be: $1f
	add  d                                           ; $76bf: $82
	ccf                                              ; $76c0: $3f
	add  b                                           ; $76c1: $80
	rra                                              ; $76c2: $1f
	add  b                                           ; $76c3: $80
	ld   bc, $0a80                                   ; $76c4: $01 $80 $0a
	add  b                                           ; $76c7: $80
	dec  c                                           ; $76c8: $0d
	add  d                                           ; $76c9: $82
	cp   $86                                         ; $76ca: $fe $86
	rst  $38                                         ; $76cc: $ff
	add  b                                           ; $76cd: $80
	ld   a, $80                                      ; $76ce: $3e $80
	ld   b, c                                        ; $76d0: $41
	nop                                              ; $76d1: $00
	ld   [bc], a                                     ; $76d2: $02
	add  c                                           ; $76d3: $81
	rlca                                             ; $76d4: $07
	nop                                              ; $76d5: $00
	ld   bc, $0781                                   ; $76d6: $01 $81 $07
	ld   bc, $0703                                   ; $76d9: $01 $03 $07
	add  d                                           ; $76dc: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76dd: $cf
	inc  b                                           ; $76de: $04
	rst  ToBoot                                         ; $76df: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76e0: $cf
	ld   c, $ff                                      ; $76e1: $0e $ff
	db   $fc                                         ; $76e3: $fc
	add  c                                           ; $76e4: $81
	rst  $38                                         ; $76e5: $ff
	ld   [bc], a                                     ; $76e6: $02
	ld   sp, hl                                      ; $76e7: $f9
	rst  $38                                         ; $76e8: $ff
	di                                               ; $76e9: $f3
	add  c                                           ; $76ea: $81
	rst  $38                                         ; $76eb: $ff
	ld   b, $e7                                      ; $76ec: $06 $e7
	rst  $38                                         ; $76ee: $ff
	rst  JumpTable                                         ; $76ef: $df
	rst  $38                                         ; $76f0: $ff
	adc  $e0                                         ; $76f1: $ce $e0
	pop  hl                                          ; $76f3: $e1
	add  c                                           ; $76f4: $81
	ldh  [$82], a                                    ; $76f5: $e0 $82
	ldh  a, [rP1]                                    ; $76f7: $f0 $00
	ldh  [$81], a                                    ; $76f9: $e0 $81
	ldh  a, [$80]                                    ; $76fb: $f0 $80
	pop  af                                          ; $76fd: $f1
	ld   bc, $56a6                                   ; $76fe: $01 $a6 $56
	add  b                                           ; $7701: $80
	cpl                                              ; $7702: $2f
	add  b                                           ; $7703: $80
	ld   e, a                                        ; $7704: $5f
	add  b                                           ; $7705: $80
	ccf                                              ; $7706: $3f
	add  h                                           ; $7707: $84
	ld   a, a                                        ; $7708: $7f
	add  b                                           ; $7709: $80
	ld   h, b                                        ; $770a: $60
	add  b                                           ; $770b: $80
	cp   a                                           ; $770c: $bf
	add  [hl]                                        ; $770d: $86
	rst  $38                                         ; $770e: $ff
	add  b                                           ; $770f: $80
	jp   $1780                                       ; $7710: $c3 $80 $17


	add  b                                           ; $7713: $80
	xor  a                                           ; $7714: $af
	ld   bc, $0f70                                   ; $7715: $01 $70 $0f
	add  d                                           ; $7718: $82
	rra                                              ; $7719: $1f
	inc  b                                           ; $771a: $04
	rst  $38                                         ; $771b: $ff
	add  b                                           ; $771c: $80
	ret  nz                                          ; $771d: $c0

	rst  JumpTable                                         ; $771e: $df
	rst  $38                                         ; $771f: $ff
	add  c                                           ; $7720: $81
	rst  $28                                         ; $7721: $ef
	ld   [bc], a                                     ; $7722: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7723: $cf
	ret  nz                                          ; $7724: $c0

	nop                                              ; $7725: $00
	add  h                                           ; $7726: $84
	db   $fc                                         ; $7727: $fc
	add  b                                           ; $7728: $80
	nop                                              ; $7729: $00
	add  h                                           ; $772a: $84
	db   $fc                                         ; $772b: $fc
	add  b                                           ; $772c: $80
	nop                                              ; $772d: $00
	add  [hl]                                        ; $772e: $86
	rlca                                             ; $772f: $07
	add  b                                           ; $7730: $80
	nop                                              ; $7731: $00
	add  h                                           ; $7732: $84
	rrca                                             ; $7733: $0f
	add  [hl]                                        ; $7734: $86
	ld   a, a                                        ; $7735: $7f
	add  b                                           ; $7736: $80
	nop                                              ; $7737: $00
	adc  h                                           ; $7738: $8c
	rst  $38                                         ; $7739: $ff
	add  b                                           ; $773a: $80
	nop                                              ; $773b: $00
	adc  h                                           ; $773c: $8c
	rst  $38                                         ; $773d: $ff
	add  b                                           ; $773e: $80
	nop                                              ; $773f: $00
	add  e                                           ; $7740: $83
	rst  $38                                         ; $7741: $ff
	adc  c                                           ; $7742: $89
	rrca                                             ; $7743: $0f
	add  e                                           ; $7744: $83
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	ldh  a, [$88]                                    ; $7747: $f0 $88
	rst  $38                                         ; $7749: $ff
	add  h                                           ; $774a: $84
	nop                                              ; $774b: $00
	add  [hl]                                        ; $774c: $86
	rst  $38                                         ; $774d: $ff
	ld   bc, $fffe                                   ; $774e: $01 $fe $ff
	add  c                                           ; $7751: $81
	ld   bc, $0080                                   ; $7752: $01 $80 $00
	rlca                                             ; $7755: $07
	ld   c, $ee                                      ; $7756: $0e $ee
	rst  $28                                         ; $7758: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7759: $cf
	rst  $28                                         ; $775a: $ef
	xor  a                                           ; $775b: $af
	rst  $20                                         ; $775c: $e7
	ld   h, a                                        ; $775d: $67
	add  b                                           ; $775e: $80
	rst  $10                                         ; $775f: $d7
	add  b                                           ; $7760: $80
	and  [hl]                                        ; $7761: $a6
	add  b                                           ; $7762: $80
	pop  bc                                          ; $7763: $c1
	add  b                                           ; $7764: $80
	rst  $38                                         ; $7765: $ff
	add  b                                           ; $7766: $80
	xor  e                                           ; $7767: $ab
	add  b                                           ; $7768: $80
	ld   d, a                                        ; $7769: $57
	add  b                                           ; $776a: $80
	xor  a                                           ; $776b: $af
	add  b                                           ; $776c: $80
	ld   e, a                                        ; $776d: $5f
	add  b                                           ; $776e: $80
	cp   a                                           ; $776f: $bf
	add  b                                           ; $7770: $80
	ld   a, a                                        ; $7771: $7f
	add  b                                           ; $7772: $80
	rst  $38                                         ; $7773: $ff
	add  b                                           ; $7774: $80
	xor  $00                                         ; $7775: $ee $00
	ldh  [$81], a                                    ; $7777: $e0 $81
	rst  $28                                         ; $7779: $ef
	add  b                                           ; $777a: $80
	rst  JumpTable                                         ; $777b: $df
	ld   bc, $dfcf                                   ; $777c: $01 $cf $df
	add  d                                           ; $777f: $82
	sbc  a                                           ; $7780: $9f
	db   $10                                         ; $7781: $10
	rra                                              ; $7782: $1f
	ld   c, a                                        ; $7783: $4f
	ld   c, h                                        ; $7784: $4c
	jp   $ffe0                                       ; $7785: $c3 $e0 $ff


	cp   a                                           ; $7788: $bf
	rst  $38                                         ; $7789: $ff
	cp   $ff                                         ; $778a: $fe $ff
	rst  JumpTable                                         ; $778c: $df
	rst  $38                                         ; $778d: $ff
	ld   a, l                                        ; $778e: $7d
	rst  $38                                         ; $778f: $ff
	cp   $ff                                         ; $7790: $fe $ff
	ei                                               ; $7792: $fb
	add  c                                           ; $7793: $81
	rst  $38                                         ; $7794: $ff
	inc  b                                           ; $7795: $04
	jr   nc, @-$05                                   ; $7796: $30 $f9

	ld   [hl], c                                     ; $7798: $71
	ld   sp, hl                                      ; $7799: $f9
	ld   a, e                                        ; $779a: $7b
	add  c                                           ; $779b: $81
	ei                                               ; $779c: $fb
	nop                                              ; $779d: $00
	rst  $38                                         ; $779e: $ff
	add  b                                           ; $779f: $80
	rst  $30                                         ; $77a0: $f7
	inc  b                                           ; $77a1: $04
	rst  $20                                         ; $77a2: $e7
	db   $e3                                         ; $77a3: $e3
	jp   $9151                                       ; $77a4: $c3 $51 $91


	add  b                                           ; $77a7: $80
	cp   c                                           ; $77a8: $b9
	add  b                                           ; $77a9: $80
	adc  $80                                         ; $77aa: $ce $80
	rst  $30                                         ; $77ac: $f7
	add  b                                           ; $77ad: $80
	ld   sp, hl                                      ; $77ae: $f9
	add  b                                           ; $77af: $80
	cp   $82                                         ; $77b0: $fe $82
	rst  $38                                         ; $77b2: $ff
	add  b                                           ; $77b3: $80
	rst  $30                                         ; $77b4: $f7
	add  b                                           ; $77b5: $80
	ld   e, a                                        ; $77b6: $5f
	add  b                                           ; $77b7: $80
	ld   a, $80                                      ; $77b8: $3e $80
	call z, $fd80                                    ; $77ba: $cc $80 $fd
	add  b                                           ; $77bd: $80
	db   $fc                                         ; $77be: $fc
	add  b                                           ; $77bf: $80
	dec  a                                           ; $77c0: $3d
	add  b                                           ; $77c1: $80
	ret  nz                                          ; $77c2: $c0

	add  b                                           ; $77c3: $80
	db   $fd                                         ; $77c4: $fd
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	add  b                                           ; $77c7: $80
	ccf                                              ; $77c8: $3f
	add  d                                           ; $77c9: $82
	ld   a, a                                        ; $77ca: $7f
	inc  b                                           ; $77cb: $04
	ccf                                              ; $77cc: $3f
	cp   a                                           ; $77cd: $bf
	sbc  a                                           ; $77ce: $9f
	ld   e, a                                        ; $77cf: $5f
	ld   b, b                                        ; $77d0: $40
	add  b                                           ; $77d1: $80
	and  b                                           ; $77d2: $a0
	add  b                                           ; $77d3: $80
	ld   b, b                                        ; $77d4: $40
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	adc  b                                           ; $77d7: $88
	rst  $38                                         ; $77d8: $ff
	add  d                                           ; $77d9: $82
	nop                                              ; $77da: $00
	add  b                                           ; $77db: $80
	inc  bc                                          ; $77dc: $03
	add  b                                           ; $77dd: $80
	adc  a                                           ; $77de: $8f
	add  d                                           ; $77df: $82
	add  b                                           ; $77e0: $80
	add  d                                           ; $77e1: $82
	add  a                                           ; $77e2: $87
	add  d                                           ; $77e3: $82
	rlca                                             ; $77e4: $07
	add  b                                           ; $77e5: $80
	add  a                                           ; $77e6: $87
	add  b                                           ; $77e7: $80
	rst  $38                                         ; $77e8: $ff
	add  h                                           ; $77e9: $84
	nop                                              ; $77ea: $00
	add  b                                           ; $77eb: $80
	ld   a, a                                        ; $77ec: $7f
	add  b                                           ; $77ed: $80
	ld   b, b                                        ; $77ee: $40
	add  d                                           ; $77ef: $82
	ld   e, a                                        ; $77f0: $5f
	add  b                                           ; $77f1: $80
	rst  $38                                         ; $77f2: $ff
	add  h                                           ; $77f3: $84
	nop                                              ; $77f4: $00
	add  b                                           ; $77f5: $80
	rst  $38                                         ; $77f6: $ff
	add  b                                           ; $77f7: $80
	nop                                              ; $77f8: $00
	add  h                                           ; $77f9: $84
	rst  $38                                         ; $77fa: $ff
	add  h                                           ; $77fb: $84
	nop                                              ; $77fc: $00
	add  b                                           ; $77fd: $80
	rst  $38                                         ; $77fe: $ff
	add  b                                           ; $77ff: $80
	nop                                              ; $7800: $00
	add  c                                           ; $7801: $81
	rst  $38                                         ; $7802: $ff
	ld   bc, $000f                                   ; $7803: $01 $0f $00
	adc  h                                           ; $7806: $8c
	rrca                                             ; $7807: $0f
	ld   bc, $00f0                                   ; $7808: $01 $f0 $00
	add  b                                           ; $780b: $80
	rst  $38                                         ; $780c: $ff
	rlca                                             ; $780d: $07
	ld   e, $fe                                      ; $780e: $1e $fe
	ld   a, l                                        ; $7810: $7d
	db   $fd                                         ; $7811: $fd
	ld   e, d                                        ; $7812: $5a
	ld   a, [$f434]                                  ; $7813: $fa $34 $f4
	add  b                                           ; $7816: $80
	push af                                          ; $7817: $f5
	add  b                                           ; $7818: $80
	ld   [$0080], a                                  ; $7819: $ea $80 $00
	ld   bc, $003f                                   ; $781c: $01 $3f $00
	add  b                                           ; $781f: $80
	add  b                                           ; $7820: $80
	add  d                                           ; $7821: $82
	nop                                              ; $7822: $00
	add  b                                           ; $7823: $80
	add  b                                           ; $7824: $80
	add  e                                           ; $7825: $83
	nop                                              ; $7826: $00
	ld   [bc], a                                     ; $7827: $02
	ccf                                              ; $7828: $3f
	adc  d                                           ; $7829: $8a
	ld   a, [bc]                                     ; $782a: $0a
	add  b                                           ; $782b: $80
	dec  d                                           ; $782c: $15
	add  b                                           ; $782d: $80
	ld   a, [bc]                                     ; $782e: $0a
	add  b                                           ; $782f: $80
	dec  b                                           ; $7830: $05
	add  b                                           ; $7831: $80
	ld   [bc], a                                     ; $7832: $02
	add  b                                           ; $7833: $80
	and  b                                           ; $7834: $a0
	dec  bc                                          ; $7835: $0b
	ldh  a, [rSVBK]                                  ; $7836: $f0 $70
	ld   e, h                                        ; $7838: $5c
	ld   e, l                                        ; $7839: $5d
	cp   c                                           ; $783a: $b9
	cp   e                                           ; $783b: $bb
	ld   [hl], e                                     ; $783c: $73
	ld   [hl], a                                     ; $783d: $77
	rst  $20                                         ; $783e: $e7
	rst  $28                                         ; $783f: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7840: $cf
	rst  JumpTable                                         ; $7841: $df
	add  b                                           ; $7842: $80
	sbc  a                                           ; $7843: $9f
	ld   bc, $0f1f                                   ; $7844: $01 $1f $0f
	add  b                                           ; $7847: $80
	ld   c, $01                                      ; $7848: $0e $01
	inc  bc                                          ; $784a: $03
	db   $ec                                         ; $784b: $ec
	add  b                                           ; $784c: $80
	rst  $20                                         ; $784d: $e7
	add  b                                           ; $784e: $80
	pop  hl                                          ; $784f: $e1
	ld   bc, $f6e6                                   ; $7850: $01 $e6 $f6
	add  b                                           ; $7853: $80
	jp   $8001                                       ; $7854: $c3 $01 $80


	adc  b                                           ; $7857: $88
	add  b                                           ; $7858: $80
	ld   [$0080], sp                                 ; $7859: $08 $80 $00
	ld   bc, $00f8                                   ; $785c: $01 $f8 $00
	add  b                                           ; $785f: $80
	rst  $38                                         ; $7860: $ff
	add  b                                           ; $7861: $80
	cp   $80                                         ; $7862: $fe $80
	ld   bc, $fb80                                   ; $7864: $01 $80 $fb
	add  d                                           ; $7867: $82

jr_07a_7868:
	ld   b, $80                                      ; $7868: $06 $80

jr_07a_786a:
	dec  c                                           ; $786a: $0d
	add  b                                           ; $786b: $80
	ld   [$6480], sp                                 ; $786c: $08 $80 $64
	ld   bc, $c1c0                                   ; $786f: $01 $c0 $c1
	add  b                                           ; $7872: $80
	or   c                                           ; $7873: $b1
	add  b                                           ; $7874: $80
	ld   h, c                                        ; $7875: $61
	ld   bc, $e1e3                                   ; $7876: $01 $e3 $e1
	add  b                                           ; $7879: $80
	ret                                              ; $787a: $c9


	add  b                                           ; $787b: $80
	ret  c                                           ; $787c: $d8

	ld   bc, $faf9                                   ; $787d: $01 $f9 $fa
	add  b                                           ; $7880: $80
	ld   a, l                                        ; $7881: $7d
	ld   [$be3e], sp                                 ; $7882: $08 $3e $be
	adc  a                                           ; $7885: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7886: $cf
	rst  ToBoot                                         ; $7887: $c7

jr_07a_7888:
	rst  $20                                         ; $7888: $e7
	db   $e3                                         ; $7889: $e3
	di                                               ; $788a: $f3
	ldh  a, [$80]                                    ; $788b: $f0 $80
	ld   hl, sp+$02                                  ; $788d: $f8 $02
	db   $fc                                         ; $788f: $fc
	ld   d, [hl]                                     ; $7890: $56
	xor  d                                           ; $7891: $aa
	add  b                                           ; $7892: $80
	ld   d, l                                        ; $7893: $55
	add  b                                           ; $7894: $80
	xor  d                                           ; $7895: $aa
	add  b                                           ; $7896: $80
	ld   d, l                                        ; $7897: $55
	add  b                                           ; $7898: $80
	xor  d                                           ; $7899: $aa
	add  b                                           ; $789a: $80
	call nc, $f880                                   ; $789b: $d4 $80 $f8
	add  b                                           ; $789e: $80
	nop                                              ; $789f: $00
	add  b                                           ; $78a0: $80
	add  b                                           ; $78a1: $80
	ld   bc, $003f                                   ; $78a2: $01 $3f $00
	add  b                                           ; $78a5: $80
	add  b                                           ; $78a6: $80
	add  h                                           ; $78a7: $84
	nop                                              ; $78a8: $00
	add  b                                           ; $78a9: $80
	ld   bc, $a180                                   ; $78aa: $01 $80 $a1
	nop                                              ; $78ad: $00
	ccf                                              ; $78ae: $3f
	adc  [hl]                                        ; $78af: $8e
	ld   [hl], e                                     ; $78b0: $73
	adc  [hl]                                        ; $78b1: $8e
	add  a                                           ; $78b2: $87
	add  b                                           ; $78b3: $80
	ld   e, a                                        ; $78b4: $5f
	adc  h                                           ; $78b5: $8c
	ld   e, [hl]                                     ; $78b6: $5e
	add  b                                           ; $78b7: $80
	rst  $38                                         ; $78b8: $ff
	add  d                                           ; $78b9: $82
	nop                                              ; $78ba: $00
	adc  b                                           ; $78bb: $88
	ld   a, a                                        ; $78bc: $7f
	add  b                                           ; $78bd: $80
	rst  $38                                         ; $78be: $ff
	add  d                                           ; $78bf: $82
	nop                                              ; $78c0: $00
	add  a                                           ; $78c1: $87
	rst  $38                                         ; $78c2: $ff
	jr   nz, jr_07a_78c5                             ; $78c3: $20 $00

jr_07a_78c5:
	rrca                                             ; $78c5: $0f
	nop                                              ; $78c6: $00
	rrca                                             ; $78c7: $0f
	inc  bc                                          ; $78c8: $03
	inc  c                                           ; $78c9: $0c
	nop                                              ; $78ca: $00
	rrca                                             ; $78cb: $0f
	rlca                                             ; $78cc: $07
	ld   [$0f00], sp                                 ; $78cd: $08 $00 $0f
	rlca                                             ; $78d0: $07
	ld   [$0f00], sp                                 ; $78d1: $08 $00 $0f
	dec  h                                           ; $78d4: $25
	jp   c, $b535                                    ; $78d5: $da $35 $b5

	xor  c                                           ; $78d8: $a9
	add  hl, hl                                      ; $78d9: $29
	ld   a, [de]                                     ; $78da: $1a
	sbc  d                                           ; $78db: $9a
	or   h                                           ; $78dc: $b4
	inc  [hl]                                        ; $78dd: $34
	jr   z, jr_07a_7888                              ; $78de: $28 $a8

	sub  h                                           ; $78e0: $94
	inc  d                                           ; $78e1: $14
	jr   z, @-$56                                    ; $78e2: $28 $a8

	sbc  a                                           ; $78e4: $9f
	add  c                                           ; $78e5: $81
	jr   nz, jr_07a_7868                             ; $78e6: $20 $80

	jr   nc, jr_07a_786a                             ; $78e8: $30 $80

	add  hl, sp                                      ; $78ea: $39
	nop                                              ; $78eb: $00
	ccf                                              ; $78ec: $3f
	add  h                                           ; $78ed: $84
	ld   a, $00                                      ; $78ee: $3e $00
	nop                                              ; $78f0: $00
	add  b                                           ; $78f1: $80
	ld   a, h                                        ; $78f2: $7c
	add  h                                           ; $78f3: $84
	ld   a, a                                        ; $78f4: $7f
	add  [hl]                                        ; $78f5: $86
	rst  $38                                         ; $78f6: $ff
	ld   bc, $0007                                   ; $78f7: $01 $07 $00
	add  b                                           ; $78fa: $80
	db   $e4                                         ; $78fb: $e4
	ld   bc, $f0f4                                   ; $78fc: $01 $f4 $f0
	add  b                                           ; $78ff: $80
	ld   hl, sp-$80                                  ; $7900: $f8 $80
	ld   a, [$fe00]                                  ; $7902: $fa $00 $fe
	add  e                                           ; $7905: $83
	db   $fc                                         ; $7906: $fc
	ld   bc, $04f9                                   ; $7907: $01 $f9 $04
	add  c                                           ; $790a: $81
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	ld   [bc], a                                     ; $790d: $02
	add  c                                           ; $790e: $81
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	ld   bc, $0084                                   ; $7911: $01 $84 $00
	ld   bc, $6d92                                   ; $7914: $01 $92 $6d
	add  b                                           ; $7917: $80
	xor  e                                           ; $7918: $ab
	add  b                                           ; $7919: $80
	ld   c, e                                        ; $791a: $4b
	add  b                                           ; $791b: $80
	daa                                              ; $791c: $27
	add  b                                           ; $791d: $80
	dec  de                                          ; $791e: $1b
	add  b                                           ; $791f: $80
	inc  l                                           ; $7920: $2c
	ld   bc, $9616                                   ; $7921: $01 $16 $96
	add  b                                           ; $7924: $80
	rrca                                             ; $7925: $0f
	ld   bc, $d057                                   ; $7926: $01 $57 $d0
	add  d                                           ; $7929: $82
	ldh  a, [rP1]                                    ; $792a: $f0 $00
	add  sp, -$7d                                    ; $792c: $e8 $83
	ldh  [rSB], a                                    ; $792e: $e0 $01
	ld   d, b                                        ; $7930: $50
	ld   b, b                                        ; $7931: $40
	add  b                                           ; $7932: $80
	nop                                              ; $7933: $00
	ld   bc, $7c9f                                   ; $7934: $01 $9f $7c
	add  b                                           ; $7937: $80
	inc  a                                           ; $7938: $3c
	ld   bc, $080c                                   ; $7939: $01 $0c $08
	add  d                                           ; $793c: $82
	nop                                              ; $793d: $00
	ld   bc, $0008                                   ; $793e: $01 $08 $00
	add  b                                           ; $7941: $80
	ld   bc, $0080                                   ; $7942: $01 $80 $00
	ld   bc, $01f1                                   ; $7945: $01 $f1 $01
	add  b                                           ; $7948: $80
	ld   [bc], a                                     ; $7949: $02
	add  b                                           ; $794a: $80

jr_07a_794b:
	ld   d, l                                        ; $794b: $55
	add  b                                           ; $794c: $80
	xor  d                                           ; $794d: $aa
	add  b                                           ; $794e: $80
	ld   d, l                                        ; $794f: $55
	add  b                                           ; $7950: $80
	xor  d                                           ; $7951: $aa
	add  b                                           ; $7952: $80
	ld   d, l                                        ; $7953: $55
	add  b                                           ; $7954: $80
	xor  d                                           ; $7955: $aa
	ld   bc, $435c                                   ; $7956: $01 $5c $43
	add  b                                           ; $7959: $80
	add  a                                           ; $795a: $87
	add  b                                           ; $795b: $80
	ld   e, a                                        ; $795c: $5f
	add  b                                           ; $795d: $80
	sbc  a                                           ; $795e: $9f
	add  b                                           ; $795f: $80
	ld   e, a                                        ; $7960: $5f
	ld   bc, $afbf                                   ; $7961: $01 $bf $af
	add  b                                           ; $7964: $80
	ld   c, a                                        ; $7965: $4f
	ld   [bc], a                                     ; $7966: $02
	xor  a                                           ; $7967: $af
	and  b                                           ; $7968: $a0
	nop                                              ; $7969: $00
	adc  d                                           ; $796a: $8a
	ld   [hl], e                                     ; $796b: $73
	add  b                                           ; $796c: $80
	ld   d, e                                        ; $796d: $53
	add  b                                           ; $796e: $80
	nop                                              ; $796f: $00
	adc  h                                           ; $7970: $8c
	add  a                                           ; $7971: $87
	add  b                                           ; $7972: $80
	nop                                              ; $7973: $00
	adc  d                                           ; $7974: $8a
	ld   e, [hl]                                     ; $7975: $5e
	add  b                                           ; $7976: $80
	ld   d, h                                        ; $7977: $54
	add  b                                           ; $7978: $80
	nop                                              ; $7979: $00
	add  [hl]                                        ; $797a: $86
	ld   a, a                                        ; $797b: $7f
	add  b                                           ; $797c: $80
	dec  sp                                          ; $797d: $3b
	add  b                                           ; $797e: $80
	ld   l, [hl]                                     ; $797f: $6e
	add  b                                           ; $7980: $80
	ld   d, l                                        ; $7981: $55
	add  b                                           ; $7982: $80
	nop                                              ; $7983: $00
	add  [hl]                                        ; $7984: $86
	rst  $38                                         ; $7985: $ff
	add  b                                           ; $7986: $80
	cp   e                                           ; $7987: $bb
	add  b                                           ; $7988: $80
	xor  $80                                         ; $7989: $ee $80
	ld   d, l                                        ; $798b: $55
	inc  bc                                          ; $798c: $03
	nop                                              ; $798d: $00
	ld   hl, sp+$08                                  ; $798e: $f8 $08
	nop                                              ; $7990: $00
	add  b                                           ; $7991: $80
	rrca                                             ; $7992: $0f
	add  b                                           ; $7993: $80
	nop                                              ; $7994: $00
	add  b                                           ; $7995: $80
	rrca                                             ; $7996: $0f
	add  b                                           ; $7997: $80
	nop                                              ; $7998: $00
	add  b                                           ; $7999: $80
	rrca                                             ; $799a: $0f
	add  b                                           ; $799b: $80
	nop                                              ; $799c: $00
	add  hl, bc                                      ; $799d: $09
	rrca                                             ; $799e: $0f
	rst  $28                                         ; $799f: $ef
	db   $10                                         ; $79a0: $10
	jr   z, jr_07a_794b                              ; $79a1: $28 $a8

	sub  b                                           ; $79a3: $90
	db   $10                                         ; $79a4: $10
	jr   nz, @-$5e                                   ; $79a5: $20 $a0

	add  b                                           ; $79a7: $80
	add  b                                           ; $79a8: $80
	nop                                              ; $79a9: $00
	add  b                                           ; $79aa: $80
	add  b                                           ; $79ab: $80
	add  b                                           ; $79ac: $80
	nop                                              ; $79ad: $00
	ld   bc, $bf80                                   ; $79ae: $01 $80 $bf
	add  c                                           ; $79b1: $81
	ccf                                              ; $79b2: $3f
	nop                                              ; $79b3: $00
	ld   a, $81                                      ; $79b4: $3e $81
	ccf                                              ; $79b6: $3f
	nop                                              ; $79b7: $00
	ld   a, l                                        ; $79b8: $7d
	add  c                                           ; $79b9: $81
	ld   a, a                                        ; $79ba: $7f
	nop                                              ; $79bb: $00
	ei                                               ; $79bc: $fb
	add  c                                           ; $79bd: $81
	rst  $38                                         ; $79be: $ff
	ld   [bc], a                                     ; $79bf: $02
	ld   hl, sp-$01                                  ; $79c0: $f8 $ff
	nop                                              ; $79c2: $00
	adc  e                                           ; $79c3: $8b
	rst  $38                                         ; $79c4: $ff
	ld   [bc], a                                     ; $79c5: $02
	nop                                              ; $79c6: $00
	rst  $38                                         ; $79c7: $ff
	nop                                              ; $79c8: $00
	add  c                                           ; $79c9: $81
	rst  $38                                         ; $79ca: $ff
	add  d                                           ; $79cb: $82
	cp   $02                                         ; $79cc: $fe $02
	rst  $38                                         ; $79ce: $ff
	cp   $fd                                         ; $79cf: $fe $fd
	add  c                                           ; $79d1: $81
	db   $fc                                         ; $79d2: $fc
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	add  b                                           ; $79d5: $80
	rst  $38                                         ; $79d6: $ff
	nop                                              ; $79d7: $00
	dec  c                                           ; $79d8: $0d
	add  b                                           ; $79d9: $80
	ld   l, l                                        ; $79da: $6d
	dec  c                                           ; $79db: $0d
	ld   a, a                                        ; $79dc: $7f
	ld   a, l                                        ; $79dd: $7d
	set  7, e                                        ; $79de: $cb $fb
	ret  nz                                          ; $79e0: $c0

	nop                                              ; $79e1: $00
	adc  [hl]                                        ; $79e2: $8e
	ld   [hl], c                                     ; $79e3: $71
	pop  hl                                          ; $79e4: $e1
	rst  $38                                         ; $79e5: $ff
	ld   e, $ff                                      ; $79e6: $1e $ff
	ldh  [rAUD3HIGH], a                              ; $79e8: $e0 $1e
	add  b                                           ; $79ea: $80
	ld   a, $07                                      ; $79eb: $3e $07
	ld   a, [hl]                                     ; $79ed: $7e
	cp   $3e                                         ; $79ee: $fe $3e
	ld   a, [hl]                                     ; $79f0: $7e
	ld   a, $00                                      ; $79f1: $3e $00
	ld   a, b                                        ; $79f3: $78
	add  [hl]                                        ; $79f4: $86
	add  b                                           ; $79f5: $80
	adc  [hl]                                        ; $79f6: $8e
	ld   [bc], a                                     ; $79f7: $02
	ld   bc, $00ff                                   ; $79f8: $01 $ff $00
	adc  e                                           ; $79fb: $8b
	rst  $38                                         ; $79fc: $ff
	inc  b                                           ; $79fd: $04
	nop                                              ; $79fe: $00
	rst  $38                                         ; $79ff: $ff
	ld   a, a                                        ; $7a00: $7f
	add  c                                           ; $7a01: $81
	sbc  l                                           ; $7a02: $9d
	add  c                                           ; $7a03: $81
	sbc  [hl]                                        ; $7a04: $9e
	inc  b                                           ; $7a05: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a06: $cf
	adc  h                                           ; $7a07: $8c
	cp   [hl]                                        ; $7a08: $be
	add  b                                           ; $7a09: $80
	cp   a                                           ; $7a0a: $bf
	add  c                                           ; $7a0b: $81
	ret  nz                                          ; $7a0c: $c0

	inc  c                                           ; $7a0d: $0c
	nop                                              ; $7a0e: $00
	rst  $38                                         ; $7a0f: $ff
	ld   sp, hl                                      ; $7a10: $f9
	or   [hl]                                        ; $7a11: $b6
	ld   [hl], $76                                   ; $7a12: $36 $76
	ld   a, a                                        ; $7a14: $7f
	ld   [hl], a                                     ; $7a15: $77
	rst  $30                                         ; $7a16: $f7
	di                                               ; $7a17: $f3
	inc  bc                                          ; $7a18: $03
	nop                                              ; $7a19: $00
	rst  $38                                         ; $7a1a: $ff
	add  b                                           ; $7a1b: $80
	ldh  [$80], a                                    ; $7a1c: $e0 $80
	jr   c, jr_07a_7a21                              ; $7a1e: $38 $01

	rst  $38                                         ; $7a20: $ff

jr_07a_7a21:
	add  b                                           ; $7a21: $80
	add  c                                           ; $7a22: $81
	ccf                                              ; $7a23: $3f
	nop                                              ; $7a24: $00
	ld   a, a                                        ; $7a25: $7f
	add  c                                           ; $7a26: $81
	rra                                              ; $7a27: $1f
	add  hl, bc                                      ; $7a28: $09
	rst  JumpTable                                         ; $7a29: $df
	rrca                                             ; $7a2a: $0f
	rst  $28                                         ; $7a2b: $ef
	rrca                                             ; $7a2c: $0f
	rra                                              ; $7a2d: $1f
	rlca                                             ; $7a2e: $07
	ld   [$03ff], sp                                 ; $7a2f: $08 $ff $03
	db   $fc                                         ; $7a32: $fc
	add  d                                           ; $7a33: $82
	cp   $00                                         ; $7a34: $fe $00
	rst  $38                                         ; $7a36: $ff
	add  d                                           ; $7a37: $82
	cp   $81                                         ; $7a38: $fe $81
	rst  $38                                         ; $7a3a: $ff
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	add  b                                           ; $7a3d: $80
	rst  $38                                         ; $7a3e: $ff
	ld   a, [bc]                                     ; $7a3f: $0a
	nop                                              ; $7a40: $00
	ld   a, c                                        ; $7a41: $79
	ld   a, [hl]                                     ; $7a42: $7e
	ld   a, e                                        ; $7a43: $7b
	ld   a, a                                        ; $7a44: $7f
	ld   h, e                                        ; $7a45: $63
	ld   a, a                                        ; $7a46: $7f
	ldh  [rP1], a                                    ; $7a47: $e0 $00
	ld   a, a                                        ; $7a49: $7f
	add  b                                           ; $7a4a: $80
	add  b                                           ; $7a4b: $80
	ret  nz                                          ; $7a4c: $c0

	inc  b                                           ; $7a4d: $04
	nop                                              ; $7a4e: $00
	rst  $38                                         ; $7a4f: $ff
	ld   hl, sp+$03                                  ; $7a50: $f8 $03
	ei                                               ; $7a52: $fb
	add  b                                           ; $7a53: $80
	ld   a, l                                        ; $7a54: $7d
	dec  bc                                          ; $7a55: $0b
	ld   c, $ce                                      ; $7a56: $0e $ce
	jp   $0003                                       ; $7a58: $c3 $03 $00


	rst  $38                                         ; $7a5b: $ff
	nop                                              ; $7a5c: $00
	jr   z, jr_07a_7a8f                              ; $7a5d: $28 $30

	jr   @+$01                                       ; $7a5f: $18 $ff

	nop                                              ; $7a61: $00
	add  h                                           ; $7a62: $84
	rst  $38                                         ; $7a63: $ff
	add  b                                           ; $7a64: $80
	ld   a, a                                        ; $7a65: $7f
	dec  bc                                          ; $7a66: $0b
	ccf                                              ; $7a67: $3f
	rst  $38                                         ; $7a68: $ff
	rra                                              ; $7a69: $1f
	ccf                                              ; $7a6a: $3f
	rrca                                             ; $7a6b: $0f
	db   $10                                         ; $7a6c: $10
	rst  $38                                         ; $7a6d: $ff
	inc  bc                                          ; $7a6e: $03
	rst  $38                                         ; $7a6f: $ff
	db   $fd                                         ; $7a70: $fd
	rst  $38                                         ; $7a71: $ff
	cp   $87                                         ; $7a72: $fe $87
	rst  $38                                         ; $7a74: $ff
	nop                                              ; $7a75: $00
	rrca                                             ; $7a76: $0f
	add  b                                           ; $7a77: $80
	nop                                              ; $7a78: $00
	add  b                                           ; $7a79: $80
	rrca                                             ; $7a7a: $0f
	add  b                                           ; $7a7b: $80
	nop                                              ; $7a7c: $00
	add  b                                           ; $7a7d: $80
	rrca                                             ; $7a7e: $0f
	add  b                                           ; $7a7f: $80
	nop                                              ; $7a80: $00
	add  b                                           ; $7a81: $80
	rrca                                             ; $7a82: $0f
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	add  b                                           ; $7a85: $80
	rrca                                             ; $7a86: $0f
	ld   b, $f1                                      ; $7a87: $06 $f1
	ld   bc, $8303                                   ; $7a89: $01 $03 $83
	add  a                                           ; $7a8c: $87
	rlca                                             ; $7a8d: $07
	rrca                                             ; $7a8e: $0f

jr_07a_7a8f:
	add  b                                           ; $7a8f: $80
	adc  a                                           ; $7a90: $8f
	inc  b                                           ; $7a91: $04
	rrca                                             ; $7a92: $0f
	rra                                              ; $7a93: $1f
	sbc  a                                           ; $7a94: $9f
	cp   a                                           ; $7a95: $bf
	ccf                                              ; $7a96: $3f
	add  b                                           ; $7a97: $80
	rst  $38                                         ; $7a98: $ff
	nop                                              ; $7a99: $00
	ldh  a, [$81]                                    ; $7a9a: $f0 $81
	rst  $38                                         ; $7a9c: $ff
	nop                                              ; $7a9d: $00
	rst  $28                                         ; $7a9e: $ef
	add  c                                           ; $7a9f: $81
	rst  $38                                         ; $7aa0: $ff
	nop                                              ; $7aa1: $00
	rst  JumpTable                                         ; $7aa2: $df
	add  d                                           ; $7aa3: $82
	rst  $38                                         ; $7aa4: $ff
	add  c                                           ; $7aa5: $81
	ret  nz                                          ; $7aa6: $c0

	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	adc  d                                           ; $7aa9: $8a
	rst  $38                                         ; $7aaa: $ff
	add  c                                           ; $7aab: $81
	nop                                              ; $7aac: $00
	ld   bc, $f807                                   ; $7aad: $01 $07 $f8
	add  d                                           ; $7ab0: $82
	ld   sp, hl                                      ; $7ab1: $f9
	add  b                                           ; $7ab2: $80
	ei                                               ; $7ab3: $fb
	nop                                              ; $7ab4: $00
	rst  $38                                         ; $7ab5: $ff
	add  b                                           ; $7ab6: $80
	ldh  a, [$80]                                    ; $7ab7: $f0 $80
	rst  $38                                         ; $7ab9: $ff
	add  c                                           ; $7aba: $81
	nop                                              ; $7abb: $00
	rlca                                             ; $7abc: $07
	rra                                              ; $7abd: $1f
	ld   sp, hl                                      ; $7abe: $f9
	jp   hl                                          ; $7abf: $e9


	ld   sp, hl                                      ; $7ac0: $f9
	add  hl, bc                                      ; $7ac1: $09
	ld   a, a                                        ; $7ac2: $7f
	ld   [hl], b                                     ; $7ac3: $70
	ldh  a, [$81]                                    ; $7ac4: $f0 $81
	nop                                              ; $7ac6: $00
	add  b                                           ; $7ac7: $80
	rst  $38                                         ; $7ac8: $ff
	add  c                                           ; $7ac9: $81
	nop                                              ; $7aca: $00
	ld   bc, $1ee0                                   ; $7acb: $01 $e0 $1e
	add  b                                           ; $7ace: $80
	ld   a, $04                                      ; $7acf: $3e $04
	ld   e, [hl]                                     ; $7ad1: $5e
	cp   [hl]                                        ; $7ad2: $be
	xor  $fe                                         ; $7ad3: $ee $fe
	ld   c, $80                                      ; $7ad5: $0e $80
	nop                                              ; $7ad7: $00
	add  b                                           ; $7ad8: $80
	rst  $38                                         ; $7ad9: $ff
	add  d                                           ; $7ada: $82
	nop                                              ; $7adb: $00
	adc  d                                           ; $7adc: $8a
	rst  $38                                         ; $7add: $ff
	add  c                                           ; $7ade: $81
	nop                                              ; $7adf: $00
	ld   [bc], a                                     ; $7ae0: $02
	ccf                                              ; $7ae1: $3f
	ret  nz                                          ; $7ae2: $c0

	ldh  [$82], a                                    ; $7ae3: $e0 $82
	db   $e3                                         ; $7ae5: $e3
	ld   bc, $dfc0                                   ; $7ae6: $01 $c0 $df
	add  b                                           ; $7ae9: $80
	ret  nz                                          ; $7aea: $c0

	add  b                                           ; $7aeb: $80
	rst  $38                                         ; $7aec: $ff
	add  c                                           ; $7aed: $81
	nop                                              ; $7aee: $00
	ld   [$38fb], sp                                 ; $7aef: $08 $fb $38
	dec  de                                          ; $7af2: $1b
	ret  c                                           ; $7af3: $d8

	sbc  b                                           ; $7af4: $98
	sbc  a                                           ; $7af5: $9f
	ld   [hl], a                                     ; $7af6: $77
	ld   a, a                                        ; $7af7: $7f
	rrca                                             ; $7af8: $0f
	add  b                                           ; $7af9: $80
	nop                                              ; $7afa: $00
	add  b                                           ; $7afb: $80
	rst  $38                                         ; $7afc: $ff
	add  c                                           ; $7afd: $81

jr_07a_7afe:
	nop                                              ; $7afe: $00
	ld   [$07f0], sp                                 ; $7aff: $08 $f0 $07
	adc  a                                           ; $7b02: $8f
	inc  bc                                          ; $7b03: $03
	ld   b, e                                        ; $7b04: $43
	add  e                                           ; $7b05: $83
	and  a                                           ; $7b06: $a7
	pop  bc                                          ; $7b07: $c1
	db   $dd                                         ; $7b08: $dd
	add  b                                           ; $7b09: $80
	ld   bc, $ff80                                   ; $7b0a: $01 $80 $ff
	add  d                                           ; $7b0d: $82
	nop                                              ; $7b0e: $00
	adc  d                                           ; $7b0f: $8a
	rst  $38                                         ; $7b10: $ff
	add  c                                           ; $7b11: $81
	nop                                              ; $7b12: $00
	ld   bc, $c03f                                   ; $7b13: $01 $3f $c0
	add  d                                           ; $7b16: $82
	ldh  [rSC], a                                    ; $7b17: $e0 $02
	pop  af                                          ; $7b19: $f1
	pop  hl                                          ; $7b1a: $e1
	rst  $28                                         ; $7b1b: $ef
	add  b                                           ; $7b1c: $80
	ldh  [$80], a                                    ; $7b1d: $e0 $80
	rst  $38                                         ; $7b1f: $ff
	add  c                                           ; $7b20: $81
	nop                                              ; $7b21: $00
	inc  bc                                          ; $7b22: $03
	ld   [$f9e9], sp                                 ; $7b23: $08 $e9 $f9
	ld   hl, sp-$80                                  ; $7b26: $f8 $80
	cp   $02                                         ; $7b28: $fe $02
	sbc  $fe                                         ; $7b2a: $de $fe
	ret  nz                                          ; $7b2c: $c0

	add  b                                           ; $7b2d: $80
	nop                                              ; $7b2e: $00
	add  b                                           ; $7b2f: $80
	rst  $38                                         ; $7b30: $ff
	add  c                                           ; $7b31: $81
	nop                                              ; $7b32: $00
	ld   [$07f0], sp                                 ; $7b33: $08 $f0 $07
	adc  a                                           ; $7b36: $8f
	inc  bc                                          ; $7b37: $03
	rlca                                             ; $7b38: $07
	ld   bc, $0043                                   ; $7b39: $01 $43 $00
	ld   a, $80                                      ; $7b3c: $3e $80
	nop                                              ; $7b3e: $00
	add  b                                           ; $7b3f: $80
	rst  $38                                         ; $7b40: $ff
	add  d                                           ; $7b41: $82
	nop                                              ; $7b42: $00
	add  [hl]                                        ; $7b43: $86
	rst  $38                                         ; $7b44: $ff
	add  b                                           ; $7b45: $80
	ld   a, a                                        ; $7b46: $7f
	add  b                                           ; $7b47: $80
	rst  $38                                         ; $7b48: $ff
	add  c                                           ; $7b49: $81
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	rst  $38                                         ; $7b4c: $ff
	add  a                                           ; $7b4d: $87
	rrca                                             ; $7b4e: $0f
	add  b                                           ; $7b4f: $80
	nop                                              ; $7b50: $00
	add  d                                           ; $7b51: $82
	ld   bc, $0f00                                   ; $7b52: $01 $00 $0f
	add  a                                           ; $7b55: $87
	rst  $38                                         ; $7b56: $ff
	add  b                                           ; $7b57: $80
	ldh  a, [$80]                                    ; $7b58: $f0 $80
	db   $f4                                         ; $7b5a: $f4
	add  b                                           ; $7b5b: $80
	ld   hl, sp-$7e                                  ; $7b5c: $f8 $82
	ret  nz                                          ; $7b5e: $c0

	add  h                                           ; $7b5f: $84
	rst  $38                                         ; $7b60: $ff
	add  b                                           ; $7b61: $80
	inc  bc                                          ; $7b62: $03
	add  d                                           ; $7b63: $82
	db   $e3                                         ; $7b64: $e3
	add  d                                           ; $7b65: $82
	nop                                              ; $7b66: $00
	add  h                                           ; $7b67: $84
	rst  $38                                         ; $7b68: $ff
	add  b                                           ; $7b69: $80
	inc  c                                           ; $7b6a: $0c
	add  d                                           ; $7b6b: $82
	ld   l, h                                        ; $7b6c: $6c
	add  d                                           ; $7b6d: $82
	nop                                              ; $7b6e: $00
	add  h                                           ; $7b6f: $84
	rst  $38                                         ; $7b70: $ff
	add  b                                           ; $7b71: $80
	nop                                              ; $7b72: $00
	add  d                                           ; $7b73: $82
	ld   a, b                                        ; $7b74: $78
	add  d                                           ; $7b75: $82
	nop                                              ; $7b76: $00
	add  h                                           ; $7b77: $84
	rst  $38                                         ; $7b78: $ff
	add  b                                           ; $7b79: $80
	jr   nc, jr_07a_7afe                             ; $7b7a: $30 $82

	ld   sp, hl                                      ; $7b7c: $f9
	add  d                                           ; $7b7d: $82
	nop                                              ; $7b7e: $00
	add  h                                           ; $7b7f: $84
	rst  $38                                         ; $7b80: $ff
	add  b                                           ; $7b81: $80
	nop                                              ; $7b82: $00
	add  b                                           ; $7b83: $80
	cp   b                                           ; $7b84: $b8
	add  b                                           ; $7b85: $80
	cp   h                                           ; $7b86: $bc
	add  d                                           ; $7b87: $82
	nop                                              ; $7b88: $00
	add  h                                           ; $7b89: $84
	rst  $38                                         ; $7b8a: $ff
	add  b                                           ; $7b8b: $80
	nop                                              ; $7b8c: $00
	add  d                                           ; $7b8d: $82
	pop  hl                                          ; $7b8e: $e1
	add  d                                           ; $7b8f: $82
	nop                                              ; $7b90: $00
	add  h                                           ; $7b91: $84
	rst  $38                                         ; $7b92: $ff
	add  b                                           ; $7b93: $80
	nop                                              ; $7b94: $00
	add  d                                           ; $7b95: $82
	sbc  b                                           ; $7b96: $98
	add  d                                           ; $7b97: $82
	nop                                              ; $7b98: $00
	add  h                                           ; $7b99: $84
	rst  $38                                         ; $7b9a: $ff
	add  b                                           ; $7b9b: $80
	and  b                                           ; $7b9c: $a0
	add  d                                           ; $7b9d: $82
	db   $fc                                         ; $7b9e: $fc
	add  d                                           ; $7b9f: $82
	nop                                              ; $7ba0: $00
	add  h                                           ; $7ba1: $84
	rst  $38                                         ; $7ba2: $ff
	add  b                                           ; $7ba3: $80
	nop                                              ; $7ba4: $00
	add  b                                           ; $7ba5: $80
	ld   [hl], c                                     ; $7ba6: $71
	add  b                                           ; $7ba7: $80
	ld   [hl], e                                     ; $7ba8: $73
	add  d                                           ; $7ba9: $82
	nop                                              ; $7baa: $00
	add  h                                           ; $7bab: $84
	rst  $38                                         ; $7bac: $ff
	add  b                                           ; $7bad: $80
	nop                                              ; $7bae: $00
	add  d                                           ; $7baf: $82
	db   $ec                                         ; $7bb0: $ec
	add  d                                           ; $7bb1: $82
	nop                                              ; $7bb2: $00
	add  h                                           ; $7bb3: $84
	rst  $38                                         ; $7bb4: $ff
	add  b                                           ; $7bb5: $80
	ld   b, $82                                      ; $7bb6: $06 $82
	scf                                              ; $7bb8: $37
	add  d                                           ; $7bb9: $82
	nop                                              ; $7bba: $00
	add  h                                           ; $7bbb: $84
	rst  $38                                         ; $7bbc: $ff
	add  h                                           ; $7bbd: $84
	rlca                                             ; $7bbe: $07
	add  d                                           ; $7bbf: $82
	nop                                              ; $7bc0: $00
	add  h                                           ; $7bc1: $84
	rst  $38                                         ; $7bc2: $ff
	add  b                                           ; $7bc3: $80
	nop                                              ; $7bc4: $00
	add  d                                           ; $7bc5: $82
	sbc  b                                           ; $7bc6: $98
	add  d                                           ; $7bc7: $82
	nop                                              ; $7bc8: $00
	add  h                                           ; $7bc9: $84
	rst  $38                                         ; $7bca: $ff
	add  b                                           ; $7bcb: $80
	ret  nz                                          ; $7bcc: $c0

	add  d                                           ; $7bcd: $82
	ldh  [$75], a                                    ; $7bce: $e0 $75
	ld   bc, $0702                                   ; $7bd0: $01 $02 $07
	nop                                              ; $7bd3: $00
	ld   [$0080], sp                                 ; $7bd4: $08 $80 $00
	add  b                                           ; $7bd7: $80
	rrca                                             ; $7bd8: $0f
	add  b                                           ; $7bd9: $80
	ld   c, $02                                      ; $7bda: $0e $02
	inc  c                                           ; $7bdc: $0c
	nop                                              ; $7bdd: $00
	inc  c                                           ; $7bde: $0c
	add  b                                           ; $7bdf: $80
	nop                                              ; $7be0: $00
	ld   [bc], a                                     ; $7be1: $02
	inc  c                                           ; $7be2: $0c
	nop                                              ; $7be3: $00
	db   $fc                                         ; $7be4: $fc
	add  d                                           ; $7be5: $82
	nop                                              ; $7be6: $00
	inc  b                                           ; $7be7: $04
	ld   b, a                                        ; $7be8: $47
	ld   b, b                                        ; $7be9: $40
	ld   b, a                                        ; $7bea: $47
	ld   b, b                                        ; $7beb: $40
	nop                                              ; $7bec: $00
	add  b                                           ; $7bed: $80
	ld   a, a                                        ; $7bee: $7f
	inc  b                                           ; $7bef: $04
	add  b                                           ; $7bf0: $80
	rst  $38                                         ; $7bf1: $ff
	ld   b, h                                        ; $7bf2: $44
	rst  ToBoot                                         ; $7bf3: $c7
	ld   a, l                                        ; $7bf4: $7d
	add  b                                           ; $7bf5: $80
	ld   b, $0b                                      ; $7bf6: $06 $0b
	ld   c, $8d                                      ; $7bf8: $0e $8d
	inc  c                                           ; $7bfa: $0c
	ld   c, $19                                      ; $7bfb: $0e $19
	rra                                              ; $7bfd: $1f
	jr   nz, @+$3b                                   ; $7bfe: $20 $39

	nop                                              ; $7c00: $00
	and  b                                           ; $7c01: $a0
	add  b                                           ; $7c02: $80
	ccf                                              ; $7c03: $3f
	add  b                                           ; $7c04: $80
	nop                                              ; $7c05: $00
	add  c                                           ; $7c06: $81
	ld   a, h                                        ; $7c07: $7c
	ld   bc, $c85c                                   ; $7c08: $01 $5c $c8
	add  c                                           ; $7c0b: $81
	ret                                              ; $7c0c: $c9


	ld   bc, $c241                                   ; $7c0d: $01 $41 $c2
	add  b                                           ; $7c10: $80
	ld   [bc], a                                     ; $7c11: $02
	inc  b                                           ; $7c12: $04
	ld   b, d                                        ; $7c13: $42
	call nz, Call_07a_6104                           ; $7c14: $c4 $04 $61
	ld   b, c                                        ; $7c17: $41
	add  b                                           ; $7c18: $80
	ld   b, d                                        ; $7c19: $42
	add  b                                           ; $7c1a: $80
	add  d                                           ; $7c1b: $82
	add  d                                           ; $7c1c: $82
	inc  b                                           ; $7c1d: $04
	add  d                                           ; $7c1e: $82
	ld   [$1080], sp                                 ; $7c1f: $08 $80 $10
	ld   [de], a                                     ; $7c22: $12
	ld   d, $0e                                      ; $7c23: $16 $0e
	ld   b, $0e                                      ; $7c25: $06 $0e
	dec  a                                           ; $7c27: $3d
	inc  e                                           ; $7c28: $1c
	inc  c                                           ; $7c29: $0c
	inc  e                                           ; $7c2a: $1c
	ld   h, d                                        ; $7c2b: $62
	jr   nz, jr_07a_7c67                             ; $7c2c: $20 $39

	dec  h                                           ; $7c2e: $25
	jp   hl                                          ; $7c2f: $e9


	ld   c, c                                        ; $7c30: $49
	jp   hl                                          ; $7c31: $e9


	add  hl, bc                                      ; $7c32: $09
	push hl                                          ; $7c33: $e5
	ld   [hl-], a                                    ; $7c34: $32
	ld   d, d                                        ; $7c35: $52
	add  b                                           ; $7c36: $80
	ld   d, b                                        ; $7c37: $50
	ld   bc, $d252                                   ; $7c38: $01 $52 $d2
	add  b                                           ; $7c3b: $80
	sub  b                                           ; $7c3c: $90
	ld   bc, $1292                                   ; $7c3d: $01 $92 $12
	add  b                                           ; $7c40: $80
	db   $10                                         ; $7c41: $10
	add  b                                           ; $7c42: $80
	ld   [de], a                                     ; $7c43: $12
	ld   bc, $8210                                   ; $7c44: $01 $10 $82
	add  b                                           ; $7c47: $80
	or   b                                           ; $7c48: $b0
	add  b                                           ; $7c49: $80
	sub  b                                           ; $7c4a: $90
	add  b                                           ; $7c4b: $80
	ldh  a, [$80]                                    ; $7c4c: $f0 $80
	ret  nc                                          ; $7c4e: $d0

	add  b                                           ; $7c4f: $80
	ldh  a, [$80]                                    ; $7c50: $f0 $80
	ret  nc                                          ; $7c52: $d0

	add  b                                           ; $7c53: $80
	ldh  a, [rDIV]                                   ; $7c54: $f0 $04
	ret  nc                                          ; $7c56: $d0

	dec  de                                          ; $7c57: $1b
	ld   h, e                                        ; $7c58: $63
	ld   h, b                                        ; $7c59: $60
	ldh  [$81], a                                    ; $7c5a: $e0 $81
	inc  bc                                          ; $7c5c: $03
	nop                                              ; $7c5d: $00
	di                                               ; $7c5e: $f3
	add  c                                           ; $7c5f: $81
	rst  $30                                         ; $7c60: $f7
	nop                                              ; $7c61: $00
	rlca                                             ; $7c62: $07
	add  b                                           ; $7c63: $80
	ei                                               ; $7c64: $fb
	add  b                                           ; $7c65: $80
	db   $fd                                         ; $7c66: $fd

jr_07a_7c67:
	add  b                                           ; $7c67: $80
	ld   a, [de]                                     ; $7c68: $1a
	add  b                                           ; $7c69: $80
	ld   [hl], d                                     ; $7c6a: $72
	add  b                                           ; $7c6b: $80
	db   $f4                                         ; $7c6c: $f4
	add  d                                           ; $7c6d: $82
	db   $e4                                         ; $7c6e: $e4
	add  b                                           ; $7c6f: $80
	add  sp, -$80                                    ; $7c70: $e8 $80
	ret  z                                           ; $7c72: $c8

	add  b                                           ; $7c73: $80
	ret  c                                           ; $7c74: $d8

	add  b                                           ; $7c75: $80
	nop                                              ; $7c76: $00
	ld   bc, $201f                                   ; $7c77: $01 $1f $20
	add  c                                           ; $7c7a: $81
	ld   b, b                                        ; $7c7b: $40
	add  c                                           ; $7c7c: $81
	nop                                              ; $7c7d: $00
	inc  bc                                          ; $7c7e: $03
	add  b                                           ; $7c7f: $80
	add  c                                           ; $7c80: $81
	ld   a, [hl]                                     ; $7c81: $7e
	nop                                              ; $7c82: $00
	add  b                                           ; $7c83: $80
	ld   e, $80                                      ; $7c84: $1e $80
	ei                                               ; $7c86: $fb
	add  b                                           ; $7c87: $80
	db   $db                                         ; $7c88: $db
	nop                                              ; $7c89: $00
	rst  $30                                         ; $7c8a: $f7
	add  b                                           ; $7c8b: $80
	rst  $10                                         ; $7c8c: $d7
	ld   b, $f7                                      ; $7c8d: $06 $f7
	and  $c6                                         ; $7c8f: $e6 $c6
	adc  $cf                                         ; $7c91: $ce $cf
	adc  $cf                                         ; $7c93: $ce $cf
	add  b                                           ; $7c95: $80
	inc  bc                                          ; $7c96: $03
	ld   [bc], a                                     ; $7c97: $02
	cp   b                                           ; $7c98: $b8
	ret  c                                           ; $7c99: $d8

	cp   b                                           ; $7c9a: $b8
	add  c                                           ; $7c9b: $81
	ld   hl, sp-$80                                  ; $7c9c: $f8 $80
	ldh  a, [$81]                                    ; $7c9e: $f0 $81
	jr   nc, jr_07a_7ca4                             ; $7ca0: $30 $02

	or   b                                           ; $7ca2: $b0
	ld   [hl], b                                     ; $7ca3: $70

jr_07a_7ca4:
	ldh  a, [$80]                                    ; $7ca4: $f0 $80
	ldh  [$84], a                                    ; $7ca6: $e0 $84
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	ld   [bc], a                                     ; $7caa: $02
	add  b                                           ; $7cab: $80
	inc  b                                           ; $7cac: $04
	add  h                                           ; $7cad: $84
	inc  c                                           ; $7cae: $0c
	ld   [bc], a                                     ; $7caf: $02
	inc  e                                           ; $7cb0: $1c
	ld   d, $00                                      ; $7cb1: $16 $00
	add  b                                           ; $7cb3: $80
	ld   [hl], e                                     ; $7cb4: $73
	add  b                                           ; $7cb5: $80
	inc  sp                                          ; $7cb6: $33
	nop                                              ; $7cb7: $00
	dec  bc                                          ; $7cb8: $0b
	add  b                                           ; $7cb9: $80
	jp   $f302                                       ; $7cba: $c3 $02 $f3


	ldh  a, [$f8]                                    ; $7cbd: $f0 $f8
	add  d                                           ; $7cbf: $82
	ei                                               ; $7cc0: $fb
	ld   bc, $03e6                                   ; $7cc1: $01 $e6 $03
	add  b                                           ; $7cc4: $80
	jp   $c000                                       ; $7cc5: $c3 $00 $c0


	add  e                                           ; $7cc8: $83
	push bc                                          ; $7cc9: $c5
	ld   bc, $051d                                   ; $7cca: $01 $1d $05
	add  b                                           ; $7ccd: $80
	ld   b, l                                        ; $7cce: $45
	add  b                                           ; $7ccf: $80
	ld   b, h                                        ; $7cd0: $44
	inc  b                                           ; $7cd1: $04
	db   $fc                                         ; $7cd2: $fc
	nop                                              ; $7cd3: $00
	inc  b                                           ; $7cd4: $04
	nop                                              ; $7cd5: $00
	ld   [$0089], sp                                 ; $7cd6: $08 $89 $00

jr_07a_7cd9:
	ld   [bc], a                                     ; $7cd9: $02
	call nz, $fbcf                                   ; $7cda: $c4 $cf $fb
	add  b                                           ; $7cdd: $80
	ld   [$1f82], sp                                 ; $7cde: $08 $82 $1f
	add  d                                           ; $7ce1: $82
	ccf                                              ; $7ce2: $3f
	add  d                                           ; $7ce3: $82
	ld   a, a                                        ; $7ce4: $7f
	add  b                                           ; $7ce5: $80
	rst  $38                                         ; $7ce6: $ff
	add  b                                           ; $7ce7: $80
	nop                                              ; $7ce8: $00
	add  d                                           ; $7ce9: $82
	cp   $82                                         ; $7cea: $fe $82
	db   $fc                                         ; $7cec: $fc
	nop                                              ; $7ced: $00
	ld   hl, sp-$80                                  ; $7cee: $f8 $80
	ld   sp, hl                                      ; $7cf0: $f9
	nop                                              ; $7cf1: $00
	ret  nc                                          ; $7cf2: $d0

	add  b                                           ; $7cf3: $80
	adc  b                                           ; $7cf4: $88
	nop                                              ; $7cf5: $00
	ld   [$0082], sp                                 ; $7cf6: $08 $82 $00
	add  b                                           ; $7cf9: $80
	ld   b, b                                        ; $7cfa: $40
	add  b                                           ; $7cfb: $80
	add  b                                           ; $7cfc: $80
	ld   bc, $80a0                                   ; $7cfd: $01 $a0 $80
	add  b                                           ; $7d00: $80
	nop                                              ; $7d01: $00
	add  b                                           ; $7d02: $80

jr_07a_7d03:
	db   $10                                         ; $7d03: $10
	add  c                                           ; $7d04: $81

jr_07a_7d05:
	jr   nz, jr_07a_7d0b                             ; $7d05: $20 $04

jr_07a_7d07:
	ld   hl, $4143                                   ; $7d07: $21 $43 $41
	ld   b, [hl]                                     ; $7d0a: $46

jr_07a_7d0b:
	ld   b, d                                        ; $7d0b: $42
	add  b                                           ; $7d0c: $80
	add  d                                           ; $7d0d: $82
	ld   bc, $848c                                   ; $7d0e: $01 $8c $84
	add  b                                           ; $7d11: $80
	inc  b                                           ; $7d12: $04
	nop                                              ; $7d13: $00
	ld   h, d                                        ; $7d14: $62
	add  b                                           ; $7d15: $80
	ld   [de], a                                     ; $7d16: $12
	nop                                              ; $7d17: $00
	sub  d                                           ; $7d18: $92
	add  d                                           ; $7d19: $82
	inc  h                                           ; $7d1a: $24
	add  d                                           ; $7d1b: $82
	ld   c, c                                        ; $7d1c: $49
	add  d                                           ; $7d1d: $82
	sub  e                                           ; $7d1e: $93
	ld   b, $45                                      ; $7d1f: $06 $45
	ld   [de], a                                     ; $7d21: $12
	ld   [hl], d                                     ; $7d22: $72
	ret  nc                                          ; $7d23: $d0

	pop  de                                          ; $7d24: $d1
	jp   nc, $80c3                                   ; $7d25: $d2 $c3 $80

	ret  nz                                          ; $7d28: $c0

	ld   bc, $c3c2                                   ; $7d29: $01 $c2 $c3
	add  b                                           ; $7d2c: $80
	ret  nz                                          ; $7d2d: $c0

jr_07a_7d2e:
	add  b                                           ; $7d2e: $80
	jp   nz, $c001                                   ; $7d2f: $c2 $01 $c0

	inc  hl                                          ; $7d32: $23
	add  b                                           ; $7d33: $80
	ldh  a, [rTAC]                                   ; $7d34: $f0 $07
	ret  nc                                          ; $7d36: $d0

	db   $10                                         ; $7d37: $10
	jr   nc, jr_07a_7daa                             ; $7d38: $30 $70

	ld   d, b                                        ; $7d3a: $50
	ret  nc                                          ; $7d3b: $d0

	jr   nc, jr_07a_7d2e                             ; $7d3c: $30 $f0

	add  b                                           ; $7d3e: $80
	db   $10                                         ; $7d3f: $10
	add  b                                           ; $7d40: $80
	or   b                                           ; $7d41: $b0
	ld   [bc], a                                     ; $7d42: $02
	db   $10                                         ; $7d43: $10
	dec  b                                           ; $7d44: $05
	db   $fd                                         ; $7d45: $fd
	add  b                                           ; $7d46: $80
	cp   $80                                         ; $7d47: $fe $80
	rst  $38                                         ; $7d49: $ff
	add  b                                           ; $7d4a: $80
	nop                                              ; $7d4b: $00
	add  h                                           ; $7d4c: $84
	rst  $38                                         ; $7d4d: $ff
	add  b                                           ; $7d4e: $80
	nop                                              ; $7d4f: $00
	add  b                                           ; $7d50: $80
	ret  nc                                          ; $7d51: $d0

	add  b                                           ; $7d52: $80
	sub  b                                           ; $7d53: $90
	add  b                                           ; $7d54: $80
	jr   nc, jr_07a_7cd9                             ; $7d55: $30 $82

	jr   nz, jr_07a_7cd9                             ; $7d57: $20 $80

	and  b                                           ; $7d59: $a0
	add  b                                           ; $7d5a: $80
	add  b                                           ; $7d5b: $80
	add  b                                           ; $7d5c: $80
	nop                                              ; $7d5d: $00
	ld   [$3d3c], sp                                 ; $7d5e: $08 $3c $3d
	ld   a, c                                        ; $7d61: $79
	ld   a, e                                        ; $7d62: $7b
	db   $f4                                         ; $7d63: $f4
	dec  b                                           ; $7d64: $05
	rlca                                             ; $7d65: $07
	rst  $30                                         ; $7d66: $f7
	db   $f4                                         ; $7d67: $f4
	add  l                                           ; $7d68: $85
	or   $80                                         ; $7d69: $f6 $80
	ld   [hl], h                                     ; $7d6b: $74
	add  b                                           ; $7d6c: $80
	add  d                                           ; $7d6d: $82
	add  b                                           ; $7d6e: $80
	ld   [hl], e                                     ; $7d6f: $73
	add  b                                           ; $7d70: $80
	ld   [hl], c                                     ; $7d71: $71
	add  b                                           ; $7d72: $80
	ld   sp, hl                                      ; $7d73: $f9
	add  h                                           ; $7d74: $84
	ld   hl, sp-$80                                  ; $7d75: $f8 $80
	ld   h, b                                        ; $7d77: $60
	add  b                                           ; $7d78: $80
	jr   nz, jr_07a_7d05                             ; $7d79: $20 $8a

	nop                                              ; $7d7b: $00
	inc  b                                           ; $7d7c: $04
	ld   b, $18                                      ; $7d7d: $06 $18
	ld   d, $10                                      ; $7d7f: $16 $10
	jr   jr_07a_7d03                                 ; $7d81: $18 $80

	rlca                                             ; $7d83: $07
	add  b                                           ; $7d84: $80
	jr   jr_07a_7d07                                 ; $7d85: $18 $80

	jr   c, jr_07a_7d92                              ; $7d87: $38 $09

	ld   bc, $7d00                                   ; $7d89: $01 $00 $7d
	ld   a, h                                        ; $7d8c: $7c
	ld   bc, $fb02                                   ; $7d8d: $01 $02 $fb
	ld   a, e                                        ; $7d90: $7b
	ei                                               ; $7d91: $fb

jr_07a_7d92:
	ld   a, b                                        ; $7d92: $78
	add  b                                           ; $7d93: $80
	jr   jr_07a_7d9c                                 ; $7d94: $18 $06

	ldh  [$60], a                                    ; $7d96: $e0 $60
	add  b                                           ; $7d98: $80
	nop                                              ; $7d99: $00
	rst  $38                                         ; $7d9a: $ff
	nop                                              ; $7d9b: $00

jr_07a_7d9c:
	rst  $38                                         ; $7d9c: $ff
	add  b                                           ; $7d9d: $80
	nop                                              ; $7d9e: $00
	add  b                                           ; $7d9f: $80
	ld   b, h                                        ; $7da0: $44
	add  d                                           ; $7da1: $82
	inc  b                                           ; $7da2: $04
	add  e                                           ; $7da3: $83
	nop                                              ; $7da4: $00
	dec  b                                           ; $7da5: $05
	add  b                                           ; $7da6: $80
	nop                                              ; $7da7: $00
	add  b                                           ; $7da8: $80
	nop                                              ; $7da9: $00

jr_07a_7daa:
	add  b                                           ; $7daa: $80
	ld   a, a                                        ; $7dab: $7f
	add  l                                           ; $7dac: $85
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	ld   a, h                                        ; $7daf: $7c
	add  b                                           ; $7db0: $80
	nop                                              ; $7db1: $00
	dec  b                                           ; $7db2: $05
	add  b                                           ; $7db3: $80
	jp   nz, $8180                                   ; $7db4: $c2 $80 $81

	ld   bc, $853e                                   ; $7db7: $01 $3e $85
	nop                                              ; $7dba: $00
	ld   bc, $e1f5                                   ; $7dbb: $01 $f5 $e1
	add  b                                           ; $7dbe: $80
	ldh  [c], a                                      ; $7dbf: $e2
	add  b                                           ; $7dc0: $80
	pop  hl                                          ; $7dc1: $e1
	ld   [bc], a                                     ; $7dc2: $02
	ldh  [$e3], a                                    ; $7dc3: $e0 $e3
	rla                                              ; $7dc5: $17
	add  l                                           ; $7dc6: $85
	nop                                              ; $7dc7: $00
	add  b                                           ; $7dc8: $80
	ld   d, l                                        ; $7dc9: $55
	add  b                                           ; $7dca: $80
	xor  d                                           ; $7dcb: $aa
	add  b                                           ; $7dcc: $80
	ld   d, l                                        ; $7dcd: $55
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	add  b                                           ; $7dd0: $80
	rst  $38                                         ; $7dd1: $ff
	add  l                                           ; $7dd2: $85
	nop                                              ; $7dd3: $00
	add  b                                           ; $7dd4: $80
	ld   d, b                                        ; $7dd5: $50
	add  b                                           ; $7dd6: $80
	and  b                                           ; $7dd7: $a0
	add  b                                           ; $7dd8: $80
	ld   d, b                                        ; $7dd9: $50
	ld   [bc], a                                     ; $7dda: $02
	nop                                              ; $7ddb: $00
	ldh  a, [$0e]                                    ; $7ddc: $f0 $0e
	add  c                                           ; $7dde: $81
	nop                                              ; $7ddf: $00

jr_07a_7de0:
	ld   bc, $4041                                   ; $7de0: $01 $41 $40
	add  b                                           ; $7de3: $80
	ld   h, b                                        ; $7de4: $60
	add  b                                           ; $7de5: $80
	and  b                                           ; $7de6: $a0
	add  b                                           ; $7de7: $80
	or   b                                           ; $7de8: $b0
	add  b                                           ; $7de9: $80
	cp   b                                           ; $7dea: $b8
	ld   [bc], a                                     ; $7deb: $02
	jr   jr_07a_7e46                                 ; $7dec: $18 $58

	xor  b                                           ; $7dee: $a8

jr_07a_7def:
	add  b                                           ; $7def: $80
	sub  e                                           ; $7df0: $93
	ld   [$4b53], sp                                 ; $7df1: $08 $53 $4b
	ld   c, b                                        ; $7df4: $48
	ld   b, b                                        ; $7df5: $40
	jr   nz, jr_07a_7e1a                             ; $7df6: $20 $22

	inc  h                                           ; $7df8: $24
	and  h                                           ; $7df9: $a4
	inc  d                                           ; $7dfa: $14
	add  b                                           ; $7dfb: $80
	ld   [de], a                                     ; $7dfc: $12
	ld   [bc], a                                     ; $7dfd: $02
	ld   d, d                                        ; $7dfe: $52
	ld   a, [bc]                                     ; $7dff: $0a
	ld   [hl], $80                                   ; $7e00: $36 $80
	ei                                               ; $7e02: $fb
	add  b                                           ; $7e03: $80
	db   $fd                                         ; $7e04: $fd
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	add  b                                           ; $7e07: $80
	rst  $38                                         ; $7e08: $ff
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	add  d                                           ; $7e0b: $82
	rst  $38                                         ; $7e0c: $ff
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	add  b                                           ; $7e0f: $80
	rst  $38                                         ; $7e10: $ff
	nop                                              ; $7e11: $00
	rrca                                             ; $7e12: $0f
	add  [hl]                                        ; $7e13: $86
	ldh  a, [$80]                                    ; $7e14: $f0 $80
	ld   [hl], b                                     ; $7e16: $70
	add  b                                           ; $7e17: $80
	or   b                                           ; $7e18: $b0
	add  b                                           ; $7e19: $80

jr_07a_7e1a:
	jr   nc, jr_07a_7e23                             ; $7e1a: $30 $07

	ld   [hl], b                                     ; $7e1c: $70
	ld   a, a                                        ; $7e1d: $7f
	nop                                              ; $7e1e: $00
	add  b                                           ; $7e1f: $80
	nop                                              ; $7e20: $00
	add  b                                           ; $7e21: $80
	ld   a, a                                        ; $7e22: $7f

jr_07a_7e23:
	add  b                                           ; $7e23: $80
	add  h                                           ; $7e24: $84
	nop                                              ; $7e25: $00
	add  b                                           ; $7e26: $80
	rst  $38                                         ; $7e27: $ff
	ld   bc, $8000                                   ; $7e28: $01 $00 $80
	add  d                                           ; $7e2b: $82
	jr   nz, jr_07a_7e2f                             ; $7e2c: $20 $01

	db   $10                                         ; $7e2e: $10

jr_07a_7e2f:
	sub  b                                           ; $7e2f: $90
	add  b                                           ; $7e30: $80
	db   $10                                         ; $7e31: $10
	add  d                                           ; $7e32: $82
	ld   [$f880], sp                                 ; $7e33: $08 $80 $f8
	rlca                                             ; $7e36: $07
	nop                                              ; $7e37: $00
	jr   z, @-$57                                    ; $7e38: $28 $a7

	sbc  b                                           ; $7e3a: $98
	ld   d, b                                        ; $7e3b: $50
	ld   d, e                                        ; $7e3c: $53
	ld   d, b                                        ; $7e3d: $50
	ld   b, h                                        ; $7e3e: $44
	add  b                                           ; $7e3f: $80
	cpl                                              ; $7e40: $2f
	add  b                                           ; $7e41: $80
	jr   nz, @-$7e                                   ; $7e42: $20 $80

	db   $10                                         ; $7e44: $10
	add  b                                           ; $7e45: $80

jr_07a_7e46:
	rrca                                             ; $7e46: $0f
	ld   [bc], a                                     ; $7e47: $02
	nop                                              ; $7e48: $00
	jr   nc, @-$2e                                   ; $7e49: $30 $d0

	add  b                                           ; $7e4b: $80
	db   $10                                         ; $7e4c: $10
	ld   [bc], a                                     ; $7e4d: $02
	sub  b                                           ; $7e4e: $90
	nop                                              ; $7e4f: $00
	ld   [hl], b                                     ; $7e50: $70
	add  b                                           ; $7e51: $80
	ret  nz                                          ; $7e52: $c0

	add  d                                           ; $7e53: $82
	nop                                              ; $7e54: $00
	add  b                                           ; $7e55: $80
	ldh  a, [rSB]                                    ; $7e56: $f0 $01
	nop                                              ; $7e58: $00
	jr   jr_07a_7de0                                 ; $7e59: $18 $85

	rst  $20                                         ; $7e5b: $e7
	add  b                                           ; $7e5c: $80
	ld   h, b                                        ; $7e5d: $60
	ld   b, $20                                      ; $7e5e: $06 $20
	daa                                              ; $7e60: $27
	rlca                                             ; $7e61: $07
	rst  ToBoot                                         ; $7e62: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e63: $cf
	ld   c, a                                        ; $7e64: $4f
	call nz, $8081                                   ; $7e65: $c4 $81 $80
	add  b                                           ; $7e68: $80
	and  b                                           ; $7e69: $a0
	add  b                                           ; $7e6a: $80
	or   b                                           ; $7e6b: $b0
	add  b                                           ; $7e6c: $80
	jr   nc, jr_07a_7def                             ; $7e6d: $30 $80

	sub  b                                           ; $7e6f: $90
	nop                                              ; $7e70: $00
	add  b                                           ; $7e71: $80
	add  b                                           ; $7e72: $80
	and  b                                           ; $7e73: $a0
	ld   bc, $bcc0                                   ; $7e74: $01 $c0 $bc
	add  [hl]                                        ; $7e77: $86
	nop                                              ; $7e78: $00
	add  b                                           ; $7e79: $80
	inc  e                                           ; $7e7a: $1c
	add  b                                           ; $7e7b: $80

jr_07a_7e7c:
	rra                                              ; $7e7c: $1f
	inc  bc                                          ; $7e7d: $03
	rlca                                             ; $7e7e: $07
	inc  de                                          ; $7e7f: $13
	dec  de                                          ; $7e80: $1b
	rra                                              ; $7e81: $1f
	add  b                                           ; $7e82: $80
	ld   h, b                                        ; $7e83: $60
	dec  b                                           ; $7e84: $05
	ldh  [$f0], a                                    ; $7e85: $e0 $f0
	ldh  [$c0], a                                    ; $7e87: $e0 $c0
	ldh  [$60], a                                    ; $7e89: $e0 $60
	add  c                                           ; $7e8b: $81
	jr   nz, jr_07a_7e8e                             ; $7e8c: $20 $00

jr_07a_7e8e:
	ld   h, b                                        ; $7e8e: $60
	add  c                                           ; $7e8f: $81
	nop                                              ; $7e90: $00
	ld   bc, $001e                                   ; $7e91: $01 $1e $00
	add  d                                           ; $7e94: $82
	add  b                                           ; $7e95: $80
	ld   bc, $0002                                   ; $7e96: $01 $02 $00
	add  b                                           ; $7e99: $80
	add  b                                           ; $7e9a: $80
	nop                                              ; $7e9b: $00
	add  h                                           ; $7e9c: $84
	add  d                                           ; $7e9d: $82
	add  c                                           ; $7e9e: $81
	ld   bc, $fc80                                   ; $7e9f: $01 $80 $fc
	add  c                                           ; $7ea2: $81
	nop                                              ; $7ea3: $00
	add  b                                           ; $7ea4: $80
	ld   [hl], e                                     ; $7ea5: $73
	ld   bc, $c0f3                                   ; $7ea6: $01 $f3 $c0
	add  b                                           ; $7ea9: $80
	ld   b, b                                        ; $7eaa: $40
	ld   b, $31                                      ; $7eab: $06 $31
	ld   [bc], a                                     ; $7ead: $02
	inc  de                                          ; $7eae: $13
	ld   [$8000], sp                                 ; $7eaf: $08 $00 $80
	sbc  a                                           ; $7eb2: $9f
	add  c                                           ; $7eb3: $81
	nop                                              ; $7eb4: $00
	add  c                                           ; $7eb5: $81
	rst  $38                                         ; $7eb6: $ff
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	add  b                                           ; $7eb9: $80
	rst  $38                                         ; $7eba: $ff
	ld   b, $55                                      ; $7ebb: $06 $55
	xor  d                                           ; $7ebd: $aa
	db   $fd                                         ; $7ebe: $fd
	dec  c                                           ; $7ebf: $0d
	rrca                                             ; $7ec0: $0f
	rlca                                             ; $7ec1: $07
	ld   hl, sp-$7f                                  ; $7ec2: $f8 $81
	nop                                              ; $7ec4: $00
	add  c                                           ; $7ec5: $81
	ldh  a, [rP1]                                    ; $7ec6: $f0 $00
	nop                                              ; $7ec8: $00
	add  b                                           ; $7ec9: $80
	ldh  a, [rSB]                                    ; $7eca: $f0 $01
	ld   d, b                                        ; $7ecc: $50
	and  b                                           ; $7ecd: $a0
	add  b                                           ; $7ece: $80
	ret  nc                                          ; $7ecf: $d0

	add  b                                           ; $7ed0: $80
	ld   h, b                                        ; $7ed1: $60
	dec  b                                           ; $7ed2: $05
	rst  $30                                         ; $7ed3: $f7
	add  sp, -$20                                    ; $7ed4: $e8 $e0
	or   b                                           ; $7ed6: $b0
	nop                                              ; $7ed7: $00
	or   b                                           ; $7ed8: $b0
	add  h                                           ; $7ed9: $84
	nop                                              ; $7eda: $00
	add  d                                           ; $7edb: $82
	ld   a, a                                        ; $7edc: $7f
	nop                                              ; $7edd: $00
	ccf                                              ; $7ede: $3f
	add  b                                           ; $7edf: $80
	add  hl, bc                                      ; $7ee0: $09
	dec  b                                           ; $7ee1: $05
	dec  b                                           ; $7ee2: $05

jr_07a_7ee3:
	push bc                                          ; $7ee3: $c5
	inc  b                                           ; $7ee4: $04
	call nz, $2202                                   ; $7ee5: $c4 $02 $22
	add  b                                           ; $7ee8: $80
	ld   [bc], a                                     ; $7ee9: $02
	add  d                                           ; $7eea: $82
	ld   bc, $0009                                   ; $7eeb: $01 $09 $00
	sub  b                                           ; $7eee: $90
	nop                                              ; $7eef: $00
	xor  a                                           ; $7ef0: $af
	nop                                              ; $7ef1: $00

jr_07a_7ef2:
	ldh  a, [$c7]                                    ; $7ef2: $f0 $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef4: $cf
	ld   b, e                                        ; $7ef5: $43
	ld   a, e                                        ; $7ef6: $7b
	add  b                                           ; $7ef7: $80
	ld   l, e                                        ; $7ef8: $6b
	nop                                              ; $7ef9: $00
	jr   nz, jr_07a_7e7c                             ; $7efa: $20 $80

	nop                                              ; $7efc: $00
	inc  b                                           ; $7efd: $04
	rla                                              ; $7efe: $17
	and  a                                           ; $7eff: $a7
	adc  a                                           ; $7f00: $8f
	nop                                              ; $7f01: $00
	ldh  a, [$80]                                    ; $7f02: $f0 $80
	nop                                              ; $7f04: $00
	add  b                                           ; $7f05: $80
	ldh  a, [rP1]                                    ; $7f06: $f0 $00
	ldh  [$80], a                                    ; $7f08: $e0 $80
	ldh  a, [rP1]                                    ; $7f0a: $f0 $00
	ldh  [$80], a                                    ; $7f0c: $e0 $80
	ld   h, b                                        ; $7f0e: $60
	inc  b                                           ; $7f0f: $04
	jr   nz, jr_07a_7ef2                             ; $7f10: $20 $e0

	ret  nc                                          ; $7f12: $d0

	rra                                              ; $7f13: $1f
	rst  $38                                         ; $7f14: $ff
	add  b                                           ; $7f15: $80
	nop                                              ; $7f16: $00
	inc  bc                                          ; $7f17: $03
	db   $fd                                         ; $7f18: $fd
	rst  $38                                         ; $7f19: $ff
	ld   [bc], a                                     ; $7f1a: $02
	rrca                                             ; $7f1b: $0f
	add  b                                           ; $7f1c: $80
	ldh  a, [rTAC]                                   ; $7f1d: $f0 $07
	rrca                                             ; $7f1f: $0f
	nop                                              ; $7f20: $00
	jr   nz, jr_07a_7ee3                             ; $7f21: $20 $c0

	ld   hl, sp-$19                                  ; $7f23: $f8 $e7
	nop                                              ; $7f25: $00
	rst  $38                                         ; $7f26: $ff
	add  b                                           ; $7f27: $80
	nop                                              ; $7f28: $00
	inc  bc                                          ; $7f29: $03
	ld   a, a                                        ; $7f2a: $7f
	cp   a                                           ; $7f2b: $bf
	ldh  [$c0], a                                    ; $7f2c: $e0 $c0
	add  b                                           ; $7f2e: $80
	rra                                              ; $7f2f: $1f
	nop                                              ; $7f30: $00
	ldh  [$81], a                                    ; $7f31: $e0 $81
	nop                                              ; $7f33: $00
	dec  b                                           ; $7f34: $05
	ld   h, b                                        ; $7f35: $60
	add  b                                           ; $7f36: $80
	inc  hl                                          ; $7f37: $23
	push af                                          ; $7f38: $f5
	scf                                              ; $7f39: $37
	ld   a, [hl]                                     ; $7f3a: $7e
	add  b                                           ; $7f3b: $80
	add  b                                           ; $7f3c: $80
	ld   bc, $007f                                   ; $7f3d: $01 $7f $00
	add  b                                           ; $7f40: $80
	rst  $38                                         ; $7f41: $ff
	add  h                                           ; $7f42: $84
	nop                                              ; $7f43: $00
	add  b                                           ; $7f44: $80
	ldh  a, [$80]                                    ; $7f45: $f0 $80
	nop                                              ; $7f47: $00
	add  b                                           ; $7f48: $80
	ldh  a, [$80]                                    ; $7f49: $f0 $80
	nop                                              ; $7f4b: $00
	add  b                                           ; $7f4c: $80
	ldh  a, [$84]                                    ; $7f4d: $f0 $84
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	rst  $30                                         ; $7f51: $f7
	add  b                                           ; $7f52: $80
	ld   c, a                                        ; $7f53: $4f
	dec  e                                           ; $7f54: $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f55: $cf
	call nz, $c2c7                                   ; $7f56: $c4 $c7 $c2
	rst  ToBoot                                         ; $7f59: $c7
	ret  c                                           ; $7f5a: $d8

	rra                                              ; $7f5b: $1f
	ld   h, b                                        ; $7f5c: $60
	rst  $38                                         ; $7f5d: $ff
	pop  hl                                          ; $7f5e: $e1
	rst  $38                                         ; $7f5f: $ff
	db   $e4                                         ; $7f60: $e4
	rst  $38                                         ; $7f61: $ff
	dec  de                                          ; $7f62: $1b
	add  h                                           ; $7f63: $84
	inc  c                                           ; $7f64: $0c
	ld   [$c088], sp                                 ; $7f65: $08 $88 $c0
	ld   c, $c0                                      ; $7f68: $0e $c0
	ld   b, b                                        ; $7f6a: $40
	ret  nz                                          ; $7f6b: $c0

	nop                                              ; $7f6c: $00
	ret  nz                                          ; $7f6d: $c0

jr_07a_7f6e:
	nop                                              ; $7f6e: $00
	ret  nz                                          ; $7f6f: $c0

	nop                                              ; $7f70: $00
	ret  nz                                          ; $7f71: $c0

	ld   a, [hl-]                                    ; $7f72: $3a
	add  c                                           ; $7f73: $81
	dec  de                                          ; $7f74: $1b
	add  b                                           ; $7f75: $80
	inc  bc                                          ; $7f76: $03
	add  d                                           ; $7f77: $82
	rra                                              ; $7f78: $1f
	add  b                                           ; $7f79: $80
	inc  bc                                          ; $7f7a: $03
	add  b                                           ; $7f7b: $80
	nop                                              ; $7f7c: $00
	inc  b                                           ; $7f7d: $04
	stop                                             ; $7f7e: $10 $00
	rst  $38                                         ; $7f80: $ff
	nop                                              ; $7f81: $00
	ld   b, b                                        ; $7f82: $40
	add  b                                           ; $7f83: $80
	db   $10                                         ; $7f84: $10
	add  b                                           ; $7f85: $80
	nop                                              ; $7f86: $00
	add  c                                           ; $7f87: $81
	db   $10                                         ; $7f88: $10
	add  b                                           ; $7f89: $80
	nop                                              ; $7f8a: $00
	ld   de, $0010                                   ; $7f8b: $11 $10 $00
	ld   d, b                                        ; $7f8e: $50
	nop                                              ; $7f8f: $00
	ld   [hl], e                                     ; $7f90: $73
	rst  $38                                         ; $7f91: $ff
	ldh  [c], a                                      ; $7f92: $e2
	rst  $38                                         ; $7f93: $ff
	add  hl, hl                                      ; $7f94: $29
	cp   a                                           ; $7f95: $bf
	and  b                                           ; $7f96: $a0
	cp   b                                           ; $7f97: $b8
	or   b                                           ; $7f98: $b0
	or   a                                           ; $7f99: $b7
	add  b                                           ; $7f9a: $80
	cp   b                                           ; $7f9b: $b8
	cp   a                                           ; $7f9c: $bf
	add  b                                           ; $7f9d: $80
	add  b                                           ; $7f9e: $80
	nop                                              ; $7f9f: $00
	inc  bc                                          ; $7fa0: $03
	ld   b, c                                        ; $7fa1: $41
	ret  nz                                          ; $7fa2: $c0

	ld   b, d                                        ; $7fa3: $42
	jp   nz, $0280                                   ; $7fa4: $c2 $80 $02

	ld   bc, $c406                                   ; $7fa7: $01 $06 $c4
	add  b                                           ; $7faa: $80
	inc  b                                           ; $7fab: $04
	ld   [bc], a                                     ; $7fac: $02
	inc  c                                           ; $7fad: $0c
	ld   [$81c0], sp                                 ; $7fae: $08 $c0 $81
	nop                                              ; $7fb1: $00
	ld   bc, $03f4                                   ; $7fb2: $01 $f4 $03
	add  b                                           ; $7fb5: $80
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	rrca                                             ; $7fb8: $0f
	add  c                                           ; $7fb9: $81
	ld   a, a                                        ; $7fba: $7f
	inc  bc                                          ; $7fbb: $03
	ld   h, c                                        ; $7fbc: $61
	rra                                              ; $7fbd: $1f
	nop                                              ; $7fbe: $00
	ld   a, [hl]                                     ; $7fbf: $7e
	add  d                                           ; $7fc0: $82
	ld   a, a                                        ; $7fc1: $7f
	ld   bc, $30af                                   ; $7fc2: $01 $af $30
	add  b                                           ; $7fc5: $80
	ld   h, b                                        ; $7fc6: $60
	add  b                                           ; $7fc7: $80
	ld   [hl], b                                     ; $7fc8: $70
	add  b                                           ; $7fc9: $80
	ld   h, b                                        ; $7fca: $60
	add  b                                           ; $7fcb: $80
	ld   [hl], b                                     ; $7fcc: $70
	add  h                                           ; $7fcd: $84
	jr   nc, jr_07a_7fd0                             ; $7fce: $30 $00

jr_07a_7fd0:
	rra                                              ; $7fd0: $1f
	add  b                                           ; $7fd1: $80
	ld   c, $8a                                      ; $7fd2: $0e $8a
	ld   a, $01                                      ; $7fd4: $3e $01
	inc  a                                           ; $7fd6: $3c
	dec  sp                                          ; $7fd7: $3b
	adc  l                                           ; $7fd8: $8d
	nop                                              ; $7fd9: $00
	inc  b                                           ; $7fda: $04
	add  a                                           ; $7fdb: $87
	nop                                              ; $7fdc: $00
	ld   a, [hl]                                     ; $7fdd: $7e
	jr   nz, jr_07a_7ffe                             ; $7fde: $20 $1e

	add  e                                           ; $7fe0: $83
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	inc  [hl]                                        ; $7fe3: $34
	add  e                                           ; $7fe4: $83
	inc  b                                           ; $7fe5: $04
	nop                                              ; $7fe6: $00
	cp   a                                           ; $7fe7: $bf
	add  c                                           ; $7fe8: $81
	ld   [hl], b                                     ; $7fe9: $70
	nop                                              ; $7fea: $00
	jr   nc, jr_07a_7f6e                             ; $7feb: $30 $81

	db   $10                                         ; $7fed: $10
	add  [hl]                                        ; $7fee: $86
	ldh  a, [rP1]                                    ; $7fef: $f0 $00
	ldh  [rIE], a                                    ; $7ff1: $e0 $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	rst  $38                                         ; $7ffa: $ff
	nop                                              ; $7ffb: $00
	rst  $38                                         ; $7ffc: $ff
	nop                                              ; $7ffd: $00

jr_07a_7ffe:
	rst  $30                                         ; $7ffe: $f7
	nop                                              ; $7fff: $00
