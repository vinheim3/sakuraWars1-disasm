; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

	ld   h, c                                        ; $4000: $61
	ld   bc, $00ff                                   ; $4001: $01 $ff $00
	rst  $38                                         ; $4004: $ff
	nop                                              ; $4005: $00
	rst  $38                                         ; $4006: $ff
	nop                                              ; $4007: $00
	rst  $38                                         ; $4008: $ff
	nop                                              ; $4009: $00
	rst  $38                                         ; $400a: $ff
	nop                                              ; $400b: $00
	rst  $38                                         ; $400c: $ff
	nop                                              ; $400d: $00
	rst  $38                                         ; $400e: $ff
	nop                                              ; $400f: $00
	rst  $30                                         ; $4010: $f7
	nop                                              ; $4011: $00
	adc  h                                           ; $4012: $8c
	rst  $38                                         ; $4013: $ff
	add  d                                           ; $4014: $82
	cp   $80                                         ; $4015: $fe $80
	rst  $38                                         ; $4017: $ff
	add  b                                           ; $4018: $80
	cp   $80                                         ; $4019: $fe $80
	rst  $38                                         ; $401b: $ff
	add  b                                           ; $401c: $80
	db   $fd                                         ; $401d: $fd
	add  b                                           ; $401e: $80
	cp   $80                                         ; $401f: $fe $80
	db   $f4                                         ; $4021: $f4
	add  b                                           ; $4022: $80
	and  b                                           ; $4023: $a0
	add  b                                           ; $4024: $80
	sub  b                                           ; $4025: $90
	add  b                                           ; $4026: $80
	ld   c, d                                        ; $4027: $4a
	add  b                                           ; $4028: $80
	or   l                                           ; $4029: $b5
	add  b                                           ; $402a: $80
	ld   a, [$5580]                                  ; $402b: $fa $80 $55
	add  b                                           ; $402e: $80
	and  b                                           ; $402f: $a0
	add  [hl]                                        ; $4030: $86
	nop                                              ; $4031: $00
	add  b                                           ; $4032: $80
	ld   b, b                                        ; $4033: $40
	add  b                                           ; $4034: $80
	and  b                                           ; $4035: $a0
	add  b                                           ; $4036: $80
	ld   b, b                                        ; $4037: $40
	rst  $38                                         ; $4038: $ff
	nop                                              ; $4039: $00
	or   e                                           ; $403a: $b3
	nop                                              ; $403b: $00
	add  b                                           ; $403c: $80
	sub  b                                           ; $403d: $90
	adc  h                                           ; $403e: $8c
	nop                                              ; $403f: $00
	add  b                                           ; $4040: $80
	db   $fd                                         ; $4041: $fd
	adc  b                                           ; $4042: $88
	rst  $38                                         ; $4043: $ff
	add  b                                           ; $4044: $80
	push af                                          ; $4045: $f5
	add  b                                           ; $4046: $80
	and  b                                           ; $4047: $a0
	add  d                                           ; $4048: $82
	nop                                              ; $4049: $00
	add  b                                           ; $404a: $80
	push af                                          ; $404b: $f5
	add  b                                           ; $404c: $80
	ld   [$fd80], a                                  ; $404d: $ea $80 $fd
	add  b                                           ; $4050: $80
	xor  d                                           ; $4051: $aa
	adc  b                                           ; $4052: $88
	nop                                              ; $4053: $00
	add  b                                           ; $4054: $80
	xor  b                                           ; $4055: $a8
	add  b                                           ; $4056: $80
	ld   d, h                                        ; $4057: $54
	add  b                                           ; $4058: $80
	and  b                                           ; $4059: $a0
	adc  b                                           ; $405a: $88
	nop                                              ; $405b: $00
	add  b                                           ; $405c: $80
	ld   b, b                                        ; $405d: $40
	rst  $38                                         ; $405e: $ff
	nop                                              ; $405f: $00
	add  $00                                         ; $4060: $c6 $00
	ld   bc, $50fe                                   ; $4062: $01 $fe $50
	add  b                                           ; $4065: $80
	ld   d, e                                        ; $4066: $53
	ld   bc, $53fb                                   ; $4067: $01 $fb $53
	add  c                                           ; $406a: $81
	ei                                               ; $406b: $fb
	add  b                                           ; $406c: $80
	adc  e                                           ; $406d: $8b
	add  c                                           ; $406e: $81
	cp   e                                           ; $406f: $bb
	adc  c                                           ; $4070: $89
	xor  e                                           ; $4071: $ab
	ld   bc, $ffed                                   ; $4072: $01 $ed $ff
	add  c                                           ; $4075: $81
	add  c                                           ; $4076: $81
	ld   [bc], a                                     ; $4077: $02
	cp   a                                           ; $4078: $bf
	pop  bc                                          ; $4079: $c1
	rlca                                             ; $407a: $07
	add  b                                           ; $407b: $80
	inc  b                                           ; $407c: $04
	add  c                                           ; $407d: $81

Jump_02f_407e:
	rlca                                             ; $407e: $07
	add  d                                           ; $407f: $82
	ld   b, $80                                      ; $4080: $06 $80
	nop                                              ; $4082: $00
	inc  bc                                          ; $4083: $03
	ld   bc, $0200                                   ; $4084: $01 $00 $02
	ld   a, c                                        ; $4087: $79
	add  b                                           ; $4088: $80
	and  a                                           ; $4089: $a7
	add  hl, bc                                      ; $408a: $09
	xor  a                                           ; $408b: $af
	or   a                                           ; $408c: $b7
	cp   a                                           ; $408d: $bf
	and  e                                           ; $408e: $a3
	cp   a                                           ; $408f: $bf
	pop  bc                                          ; $4090: $c1
	rst  $38                                         ; $4091: $ff
	adc  c                                           ; $4092: $89
	cp   e                                           ; $4093: $bb
	dec  sp                                          ; $4094: $3b
	add  b                                           ; $4095: $80
	ld   a, e                                        ; $4096: $7b
	ld   bc, $0dfb                                   ; $4097: $01 $fb $0d
	cp   l                                           ; $409a: $bd
	nop                                              ; $409b: $00
	ld   a, [de]                                     ; $409c: $1a
	inc  bc                                          ; $409d: $03
	dec  b                                           ; $409e: $05
	ld   bc, $030b                                   ; $409f: $01 $0b $03
	rla                                              ; $40a2: $17
	rlca                                             ; $40a3: $07
	cpl                                              ; $40a4: $2f
	ld   c, $df                                      ; $40a5: $0e $df
	dec  e                                           ; $40a7: $1d
	ccf                                              ; $40a8: $3f
	ld   a, [hl-]                                    ; $40a9: $3a
	rst  $38                                         ; $40aa: $ff
	ld   b, $ff                                      ; $40ab: $06 $ff
	add  hl, de                                      ; $40ad: $19
	ei                                               ; $40ae: $fb
	db   $db                                         ; $40af: $db
	ei                                               ; $40b0: $fb
	xor  e                                           ; $40b1: $ab
	ei                                               ; $40b2: $fb
	ld   e, e                                        ; $40b3: $5b
	ei                                               ; $40b4: $fb
	cp   e                                           ; $40b5: $bb
	ei                                               ; $40b6: $fb
	ld   h, e                                        ; $40b7: $63
	add  c                                           ; $40b8: $81
	rst  $30                                         ; $40b9: $f7
	nop                                              ; $40ba: $00
	add  hl, de                                      ; $40bb: $19
	add  b                                           ; $40bc: $80
	cp   $00                                         ; $40bd: $fe $00
	rst  $38                                         ; $40bf: $ff
	add  c                                           ; $40c0: $81
	add  b                                           ; $40c1: $80
	ld   bc, $b8b9                                   ; $40c2: $01 $b9 $b8
	add  c                                           ; $40c5: $81
	or   a                                           ; $40c6: $b7
	inc  b                                           ; $40c7: $04
	ldh  a, [$7f]                                    ; $40c8: $f0 $7f
	ld   e, c                                        ; $40ca: $59
	ccf                                              ; $40cb: $3f
	jr   nz, @-$7e                                   ; $40cc: $20 $80

	rra                                              ; $40ce: $1f
	nop                                              ; $40cf: $00
	rst  $38                                         ; $40d0: $ff
	add  c                                           ; $40d1: $81
	ld   bc, $ff03                                   ; $40d2: $01 $03 $ff
	add  c                                           ; $40d5: $81
	rst  $38                                         ; $40d6: $ff
	jp   $fe80                                       ; $40d7: $c3 $80 $fe


	inc  bc                                          ; $40da: $03
	rst  $38                                         ; $40db: $ff
	call nz, $78ff                           ; $40dc: $c4 $ff $78
	add  b                                           ; $40df: $80
	rst  ToBoot                                         ; $40e0: $c7
	nop                                              ; $40e1: $00
	rst  $38                                         ; $40e2: $ff
	add  c                                           ; $40e3: $81
	ld   de, $7f01                                   ; $40e4: $11 $01 $7f
	sbc  a                                           ; $40e7: $9f
	add  b                                           ; $40e8: $80
	rst  $38                                         ; $40e9: $ff
	add  b                                           ; $40ea: $80
	rra                                              ; $40eb: $1f
	inc  bc                                          ; $40ec: $03
	rst  $38                                         ; $40ed: $ff
	rrca                                             ; $40ee: $0f
	rst  $38                                         ; $40ef: $ff
	ld   bc, $ff81                                   ; $40f0: $01 $81 $ff
	add  c                                           ; $40f3: $81
	nop                                              ; $40f4: $00
	add  hl, bc                                      ; $40f5: $09
	rst  $38                                         ; $40f6: $ff
	cp   $ff                                         ; $40f7: $fe $ff
	db   $fd                                         ; $40f9: $fd
	rst  $38                                         ; $40fa: $ff
	ei                                               ; $40fb: $fb
	rst  $38                                         ; $40fc: $ff
	rst  $30                                         ; $40fd: $f7
	db   $fc                                         ; $40fe: $fc
	inc  c                                           ; $40ff: $0c
	add  b                                           ; $4100: $80
	ld   hl, sp+$00                                  ; $4101: $f8 $00
	rst  $38                                         ; $4103: $ff
	add  c                                           ; $4104: $81
	nop                                              ; $4105: $00
	dec  b                                           ; $4106: $05
	rst  $38                                         ; $4107: $ff
	nop                                              ; $4108: $00
	rst  $38                                         ; $4109: $ff
	nop                                              ; $410a: $00
	rst  $38                                         ; $410b: $ff
	nop                                              ; $410c: $00
	add  b                                           ; $410d: $80
	rst  $38                                         ; $410e: $ff
	add  d                                           ; $410f: $82
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	rst  $38                                         ; $4112: $ff
	add  c                                           ; $4113: $81
	adc  b                                           ; $4114: $88
	ld   bc, $fcfb                                   ; $4115: $01 $fb $fc
	add  b                                           ; $4118: $80
	rst  $38                                         ; $4119: $ff
	add  b                                           ; $411a: $80
	ld   hl, sp+$03                                  ; $411b: $f8 $03
	rst  $38                                         ; $411d: $ff
	ldh  a, [rIE]                                    ; $411e: $f0 $ff
	add  b                                           ; $4120: $80
	add  c                                           ; $4121: $81
	rst  $38                                         ; $4122: $ff
	add  c                                           ; $4123: $81
	ld   bc, $9d01                                   ; $4124: $01 $01 $9d
	adc  l                                           ; $4127: $8d
	add  c                                           ; $4128: $81
	ld   a, l                                        ; $4129: $7d
	inc  b                                           ; $412a: $04
	rrca                                             ; $412b: $0f
	cp   $9a                                         ; $412c: $fe $9a
	db   $fc                                         ; $412e: $fc
	inc  b                                           ; $412f: $04
	add  b                                           ; $4130: $80
	ld   hl, sp-$01                                  ; $4131: $f8 $ff
	nop                                              ; $4133: $00
	ldh  a, [rP1]                                    ; $4134: $f0 $00
	ld   bc, $00ff                                   ; $4136: $01 $ff $00
	add  [hl]                                        ; $4139: $86
	db   $db                                         ; $413a: $db
	add  b                                           ; $413b: $80
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	rst  $38                                         ; $413e: $ff
	add  c                                           ; $413f: $81
	nop                                              ; $4140: $00
	ld   bc, $00ff                                   ; $4141: $01 $ff $00
	add  [hl]                                        ; $4144: $86
	ld   l, l                                        ; $4145: $6d
	add  b                                           ; $4146: $80
	nop                                              ; $4147: $00
	nop                                              ; $4148: $00
	rst  $38                                         ; $4149: $ff
	add  c                                           ; $414a: $81
	nop                                              ; $414b: $00
	ld   bc, $00ff                                   ; $414c: $01 $ff $00
	add  [hl]                                        ; $414f: $86
	or   [hl]                                        ; $4150: $b6
	add  b                                           ; $4151: $80
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	rst  $38                                         ; $4154: $ff
	add  c                                           ; $4155: $81
	nop                                              ; $4156: $00
	ld   [bc], a                                     ; $4157: $02
	rst  $38                                         ; $4158: $ff
	nop                                              ; $4159: $00
	dec  de                                          ; $415a: $1b
	add  l                                           ; $415b: $85
	db   $db                                         ; $415c: $db
	ld   [bc], a                                     ; $415d: $02
	ret  nz                                          ; $415e: $c0

	nop                                              ; $415f: $00
	rst  $38                                         ; $4160: $ff
	add  c                                           ; $4161: $81
	nop                                              ; $4162: $00
	ld   [bc], a                                     ; $4163: $02
	rst  $38                                         ; $4164: $ff
	nop                                              ; $4165: $00
	inc  bc                                          ; $4166: $03
	add  l                                           ; $4167: $85
	db   $db                                         ; $4168: $db
	ld   [bc], a                                     ; $4169: $02
	ret  c                                           ; $416a: $d8

jr_02f_416b:
	nop                                              ; $416b: $00
	rst  $38                                         ; $416c: $ff
	add  c                                           ; $416d: $81
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	rst  $38                                         ; $4170: $ff
	add  b                                           ; $4171: $80
	nop                                              ; $4172: $00
	add  [hl]                                        ; $4173: $86
	db   $db                                         ; $4174: $db
	ld   bc, $ff00                                   ; $4175: $01 $00 $ff
	add  c                                           ; $4178: $81
	nop                                              ; $4179: $00
	ld   [bc], a                                     ; $417a: $02
	rst  $38                                         ; $417b: $ff
	nop                                              ; $417c: $00
	dec  c                                           ; $417d: $0d
	add  l                                           ; $417e: $85
	ld   l, l                                        ; $417f: $6d
	ld   [bc], a                                     ; $4180: $02
	ld   h, b                                        ; $4181: $60
	nop                                              ; $4182: $00
	rst  $38                                         ; $4183: $ff
	add  c                                           ; $4184: $81
	nop                                              ; $4185: $00
	ld   [bc], a                                     ; $4186: $02
	rst  $38                                         ; $4187: $ff
	nop                                              ; $4188: $00
	ld   bc, $6d85                                   ; $4189: $01 $85 $6d
	ld   [bc], a                                     ; $418c: $02
	ld   l, h                                        ; $418d: $6c
	nop                                              ; $418e: $00
	rst  $38                                         ; $418f: $ff
	add  c                                           ; $4190: $81
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	rst  $38                                         ; $4193: $ff
	add  b                                           ; $4194: $80
	nop                                              ; $4195: $00
	add  [hl]                                        ; $4196: $86
	ld   l, l                                        ; $4197: $6d
	ld   bc, $ff00                                   ; $4198: $01 $00 $ff
	add  c                                           ; $419b: $81
	nop                                              ; $419c: $00
	ld   [bc], a                                     ; $419d: $02
	rst  $38                                         ; $419e: $ff
	nop                                              ; $419f: $00
	ld   [hl], $85                                   ; $41a0: $36 $85
	or   [hl]                                        ; $41a2: $b6
	ld   [bc], a                                     ; $41a3: $02
	add  b                                           ; $41a4: $80
	nop                                              ; $41a5: $00
	rst  $38                                         ; $41a6: $ff
	add  c                                           ; $41a7: $81
	nop                                              ; $41a8: $00
	ld   [bc], a                                     ; $41a9: $02
	rst  $38                                         ; $41aa: $ff
	nop                                              ; $41ab: $00
	ld   b, $85                                      ; $41ac: $06 $85
	or   [hl]                                        ; $41ae: $b6
	ld   [bc], a                                     ; $41af: $02
	or   b                                           ; $41b0: $b0
	nop                                              ; $41b1: $00
	rst  $38                                         ; $41b2: $ff

jr_02f_41b3:
	add  c                                           ; $41b3: $81
	nop                                              ; $41b4: $00
	nop                                              ; $41b5: $00
	rst  $38                                         ; $41b6: $ff
	add  b                                           ; $41b7: $80
	nop                                              ; $41b8: $00
	add  [hl]                                        ; $41b9: $86
	or   [hl]                                        ; $41ba: $b6
	ld   bc, $ff00                                   ; $41bb: $01 $00 $ff
	ret  nz                                          ; $41be: $c0

	nop                                              ; $41bf: $00
	add  b                                           ; $41c0: $80
	ld   b, h                                        ; $41c1: $44
	add  b                                           ; $41c2: $80
	ld   a, a                                        ; $41c3: $7f
	add  b                                           ; $41c4: $80
	adc  $80                                         ; $41c5: $ce $80
	ld   d, l                                        ; $41c7: $55
	add  b                                           ; $41c8: $80
	ld   h, h                                        ; $41c9: $64
	add  b                                           ; $41ca: $80
	ld   l, [hl]                                     ; $41cb: $6e
	add  b                                           ; $41cc: $80
	ld   b, h                                        ; $41cd: $44
	add  d                                           ; $41ce: $82
	nop                                              ; $41cf: $00
	add  b                                           ; $41d0: $80
	add  b                                           ; $41d1: $80
	add  d                                           ; $41d2: $82
	nop                                              ; $41d3: $00
	add  d                                           ; $41d4: $82
	add  b                                           ; $41d5: $80
	add  h                                           ; $41d6: $84
	nop                                              ; $41d7: $00
	add  b                                           ; $41d8: $80
	inc  bc                                          ; $41d9: $03
	add  [hl]                                        ; $41da: $86
	nop                                              ; $41db: $00
	add  b                                           ; $41dc: $80
	inc  bc                                          ; $41dd: $03
	add  b                                           ; $41de: $80
	nop                                              ; $41df: $00
	add  b                                           ; $41e0: $80
	ld   b, b                                        ; $41e1: $40
	add  b                                           ; $41e2: $80
	db   $fc                                         ; $41e3: $fc
	add  d                                           ; $41e4: $82
	ld   b, h                                        ; $41e5: $44
	add  d                                           ; $41e6: $82
	add  h                                           ; $41e7: $84
	add  b                                           ; $41e8: $80
	jr   jr_02f_416b                                 ; $41e9: $18 $80

	nop                                              ; $41eb: $00
	add  b                                           ; $41ec: $80
	ld   b, b                                        ; $41ed: $40
	add  b                                           ; $41ee: $80
	ld   [hl], a                                     ; $41ef: $77
	add  b                                           ; $41f0: $80
	and  h                                           ; $41f1: $a4
	add  b                                           ; $41f2: $80
	db   $fc                                         ; $41f3: $fc
	add  d                                           ; $41f4: $82
	inc  h                                           ; $41f5: $24
	add  b                                           ; $41f6: $80
	rst  $10                                         ; $41f7: $d7
	add  d                                           ; $41f8: $82
	nop                                              ; $41f9: $00
	adc  d                                           ; $41fa: $8a
	add  b                                           ; $41fb: $80
	add  b                                           ; $41fc: $80
	nop                                              ; $41fd: $00
	add  b                                           ; $41fe: $80
	ld   a, $80                                      ; $41ff: $3e $80
	rst  $38                                         ; $4201: $ff
	add  b                                           ; $4202: $80

jr_02f_4203:
	xor  d                                           ; $4203: $aa
	add  b                                           ; $4204: $80
	ld   a, $80                                      ; $4205: $3e $80
	rst  $38                                         ; $4207: $ff
	add  b                                           ; $4208: $80
	ld   d, l                                        ; $4209: $55
	add  b                                           ; $420a: $80
	rst  $38                                         ; $420b: $ff
	add  d                                           ; $420c: $82
	nop                                              ; $420d: $00
	add  d                                           ; $420e: $82
	add  b                                           ; $420f: $80
	add  b                                           ; $4210: $80
	nop                                              ; $4211: $00
	add  b                                           ; $4212: $80

jr_02f_4213:
	add  b                                           ; $4213: $80
	add  b                                           ; $4214: $80
	nop                                              ; $4215: $00
	add  b                                           ; $4216: $80
	add  b                                           ; $4217: $80
	add  b                                           ; $4218: $80
	nop                                              ; $4219: $00
	add  b                                           ; $421a: $80
	ld   a, a                                        ; $421b: $7f
	add  b                                           ; $421c: $80
	ld   e, [hl]                                     ; $421d: $5e
	add  b                                           ; $421e: $80
	add  b                                           ; $421f: $80
	add  b                                           ; $4220: $80
	ld   a, a                                        ; $4221: $7f
	add  b                                           ; $4222: $80
	ld   a, [hl+]                                    ; $4223: $2a
	add  b                                           ; $4224: $80
	ld   [de], a                                     ; $4225: $12
	add  b                                           ; $4226: $80
	ld   l, l                                        ; $4227: $6d
	add  b                                           ; $4228: $80
	nop                                              ; $4229: $00
	add  b                                           ; $422a: $80
	ld   bc, $0280                                   ; $422b: $01 $80 $02
	add  b                                           ; $422e: $80
	rlca                                             ; $422f: $07
	add  b                                           ; $4230: $80
	jr   jr_02f_41b3                                 ; $4231: $18 $80

	rlca                                             ; $4233: $07
	add  b                                           ; $4234: $80
	add  h                                           ; $4235: $84
	add  b                                           ; $4236: $80
	add  a                                           ; $4237: $87
	add  b                                           ; $4238: $80
	nop                                              ; $4239: $00
	add  b                                           ; $423a: $80

jr_02f_423b:
	ld   bc, $8180                                   ; $423b: $01 $80 $81
	add  b                                           ; $423e: $80
	pop  bc                                          ; $423f: $c1
	add  b                                           ; $4240: $80
	ld   sp, $c180                                   ; $4241: $31 $80 $c1
	add  b                                           ; $4244: $80
	ld   b, c                                        ; $4245: $41
	add  b                                           ; $4246: $80
	pop  bc                                          ; $4247: $c1
	add  d                                           ; $4248: $82

jr_02f_4249:
	nop                                              ; $4249: $00
	add  b                                           ; $424a: $80
	ld   [$0484], sp                                 ; $424b: $08 $84 $04
	add  b                                           ; $424e: $80
	ld   b, b                                        ; $424f: $40
	add  b                                           ; $4250: $80
	add  b                                           ; $4251: $80
	add  b                                           ; $4252: $80
	nop                                              ; $4253: $00
	add  b                                           ; $4254: $80
	ld   a, $80                                      ; $4255: $3e $80
	inc  e                                           ; $4257: $1c
	add  b                                           ; $4258: $80
	rst  $38                                         ; $4259: $ff
	add  b                                           ; $425a: $80
	inc  d                                           ; $425b: $14
	add  b                                           ; $425c: $80
	ccf                                              ; $425d: $3f
	add  b                                           ; $425e: $80
	ld   e, h                                        ; $425f: $5c
	add  b                                           ; $4260: $80
	ld   c, c                                        ; $4261: $49
	add  b                                           ; $4262: $80
	nop                                              ; $4263: $00
	add  b                                           ; $4264: $80
	rrca                                             ; $4265: $0f
	add  b                                           ; $4266: $80
	ld   [$8f80], sp                                 ; $4267: $08 $80 $8f
	add  b                                           ; $426a: $80
	ld   bc, $1f80                                   ; $426b: $01 $80 $1f
	add  d                                           ; $426e: $82
	ld   bc, $0080                                   ; $426f: $01 $80 $00
	add  b                                           ; $4272: $80
	ldh  [$80], a                                    ; $4273: $e0 $80
	ld   hl, $e080                                   ; $4275: $21 $80 $e0
	add  b                                           ; $4278: $80
	nop                                              ; $4279: $00
	add  b                                           ; $427a: $80
	pop  af                                          ; $427b: $f1
	add  b                                           ; $427c: $80
	ld   bc, $0082                                   ; $427d: $01 $82 $00
	add  b                                           ; $4280: $80
	jr   nz, jr_02f_4203                             ; $4281: $20 $80

	db   $fc                                         ; $4283: $fc
	add  b                                           ; $4284: $80
	db   $10                                         ; $4285: $10
	add  b                                           ; $4286: $80
	ld   [$1880], sp                                 ; $4287: $08 $80 $18
	add  b                                           ; $428a: $80
	nop                                              ; $428b: $00
	add  b                                           ; $428c: $80
	ldh  a, [$80]                                    ; $428d: $f0 $80
	nop                                              ; $428f: $00
	add  b                                           ; $4290: $80
	jr   jr_02f_4213                                 ; $4291: $18 $80

	ld   h, $80                                      ; $4293: $26 $80
	rst  $38                                         ; $4295: $ff
	add  d                                           ; $4296: $82
	ld   d, l                                        ; $4297: $55
	add  b                                           ; $4298: $80
	ld   [hl], a                                     ; $4299: $77
	add  b                                           ; $429a: $80
	inc  b                                           ; $429b: $04
	add  b                                           ; $429c: $80
	nop                                              ; $429d: $00
	add  b                                           ; $429e: $80
	ld   bc, $0f80                                   ; $429f: $01 $80 $0f
	add  b                                           ; $42a2: $80
	adc  c                                           ; $42a3: $89
	add  b                                           ; $42a4: $80
	add  hl, bc                                      ; $42a5: $09
	add  b                                           ; $42a6: $80
	rrca                                             ; $42a7: $0f
	add  d                                           ; $42a8: $82
	ld   bc, $0082                                   ; $42a9: $01 $82 $00
	add  b                                           ; $42ac: $80
	db   $e3                                         ; $42ad: $e3
	add  b                                           ; $42ae: $80
	ld   hl, $2080                                   ; $42af: $21 $80 $20
	add  b                                           ; $42b2: $80
	pop  hl                                          ; $42b3: $e1
	add  b                                           ; $42b4: $80
	inc  bc                                          ; $42b5: $03
	add  d                                           ; $42b6: $82
	nop                                              ; $42b7: $00
	add  b                                           ; $42b8: $80
	jr   nz, jr_02f_423b                             ; $42b9: $20 $80

	cp   $80                                         ; $42bb: $fe $80
	ld   h, h                                        ; $42bd: $64
	add  b                                           ; $42be: $80
	ld   hl, sp-$80                                  ; $42bf: $f8 $80
	inc  [hl]                                        ; $42c1: $34
	add  b                                           ; $42c2: $80
	cp   $80                                         ; $42c3: $fe $80
	jr   nz, jr_02f_4249                             ; $42c5: $20 $82

	nop                                              ; $42c7: $00
	adc  c                                           ; $42c8: $89
	ld   bc, $6107                                   ; $42c9: $01 $07 $61
	or   b                                           ; $42cc: $b0
	ret  nc                                          ; $42cd: $d0

	rst  $38                                         ; $42ce: $ff
	add  d                                           ; $42cf: $82
	cp   [hl]                                        ; $42d0: $be
	or   [hl]                                        ; $42d1: $b6
	xor  [hl]                                        ; $42d2: $ae
	add  b                                           ; $42d3: $80
	cp   [hl]                                        ; $42d4: $be
	inc  b                                           ; $42d5: $04
	and  [hl]                                        ; $42d6: $a6
	cp   [hl]                                        ; $42d7: $be
	cp   $7e                                         ; $42d8: $fe $7e
	ld   b, e                                        ; $42da: $43
	add  b                                           ; $42db: $80
	ccf                                              ; $42dc: $3f
	add  b                                           ; $42dd: $80
	nop                                              ; $42de: $00
	dec  bc                                          ; $42df: $0b
	cp   $82                                         ; $42e0: $fe $82
	add  e                                           ; $42e2: $83
	add  b                                           ; $42e3: $80
	db   $fd                                         ; $42e4: $fd
	add  l                                           ; $42e5: $85
	cp   $82                                         ; $42e6: $fe $82
	rst  $38                                         ; $42e8: $ff
	ld   sp, hl                                      ; $42e9: $f9
	rst  $38                                         ; $42ea: $ff
	add  d                                           ; $42eb: $82
	add  b                                           ; $42ec: $80
	rst  $38                                         ; $42ed: $ff
	add  d                                           ; $42ee: $82
	nop                                              ; $42ef: $00
	inc  b                                           ; $42f0: $04
	ld   hl, sp+$00                                  ; $42f1: $f8 $00
	db   $fc                                         ; $42f3: $fc
	inc  b                                           ; $42f4: $04
	rst  $38                                         ; $42f5: $ff
	add  c                                           ; $42f6: $81
	nop                                              ; $42f7: $00
	ld   bc, $00ff                                   ; $42f8: $01 $ff $00
	add  b                                           ; $42fb: $80
	rst  $38                                         ; $42fc: $ff
	add  [hl]                                        ; $42fd: $86
	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	rst  $38                                         ; $4300: $ff
	add  c                                           ; $4301: $81
	nop                                              ; $4302: $00
	ld   bc, $00ff                                   ; $4303: $01 $ff $00
	add  b                                           ; $4306: $80
	rst  $38                                         ; $4307: $ff
	adc  [hl]                                        ; $4308: $8e
	nop                                              ; $4309: $00
	ld   b, $3f                                      ; $430a: $06 $3f
	ld   bc, $0141                                   ; $430c: $01 $41 $01
	cp   a                                           ; $430f: $bf
	or   a                                           ; $4310: $b7
	xor  a                                           ; $4311: $af
	add  b                                           ; $4312: $80
	cp   a                                           ; $4313: $bf
	inc  b                                           ; $4314: $04
	and  a                                           ; $4315: $a7
	cp   a                                           ; $4316: $bf
	cp   l                                           ; $4317: $bd
	cp   [hl]                                        ; $4318: $be
	jp   nz, $fc80                                   ; $4319: $c2 $80 $fc

	nop                                              ; $431c: $00
	rst  $38                                         ; $431d: $ff
	add  c                                           ; $431e: $81
	ld   b, b                                        ; $431f: $40
	add  c                                           ; $4320: $81
	rst  $38                                         ; $4321: $ff
	ld   [bc], a                                     ; $4322: $02
	ret  nz                                          ; $4323: $c0

	rst  $38                                         ; $4324: $ff
	ld   a, a                                        ; $4325: $7f
	add  b                                           ; $4326: $80
	add  b                                           ; $4327: $80
	add  d                                           ; $4328: $82
	nop                                              ; $4329: $00
	nop                                              ; $432a: $00
	rst  $38                                         ; $432b: $ff
	add  c                                           ; $432c: $81
	jr   z, jr_02f_4332                              ; $432d: $28 $03

	rst  $28                                         ; $432f: $ef
	add  sp, -$11                                    ; $4330: $e8 $ef

jr_02f_4332:
	ccf                                              ; $4332: $3f
	add  b                                           ; $4333: $80
	ldh  a, [$84]                                    ; $4334: $f0 $84
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	rst  $38                                         ; $4338: $ff
	add  c                                           ; $4339: $81
	nop                                              ; $433a: $00
	ld   bc, $00ff                                   ; $433b: $01 $ff $00
	add  b                                           ; $433e: $80
	rst  $38                                         ; $433f: $ff
	add  l                                           ; $4340: $85
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	ld   h, b                                        ; $4343: $60
	adc  l                                           ; $4344: $8d
	or   b                                           ; $4345: $b0
	nop                                              ; $4346: $00
	sub  [hl]                                        ; $4347: $96
	adc  l                                           ; $4348: $8d
	xor  e                                           ; $4349: $ab
	nop                                              ; $434a: $00
	db   $ed                                         ; $434b: $ed
	rst  $38                                         ; $434c: $ff
	nop                                              ; $434d: $00
	rst  $38                                         ; $434e: $ff
	nop                                              ; $434f: $00
	rst  $38                                         ; $4350: $ff
	nop                                              ; $4351: $00
	rst  $38                                         ; $4352: $ff
	nop                                              ; $4353: $00
	rst  $38                                         ; $4354: $ff
	nop                                              ; $4355: $00
	rst  $38                                         ; $4356: $ff
	nop                                              ; $4357: $00
	rst  $38                                         ; $4358: $ff
	nop                                              ; $4359: $00
	rst  $38                                         ; $435a: $ff
	nop                                              ; $435b: $00
	rst  $38                                         ; $435c: $ff
	nop                                              ; $435d: $00
	db   $f4                                         ; $435e: $f4
	nop                                              ; $435f: $00
	pop  de                                          ; $4360: $d1
	nop                                              ; $4361: $00
	nop                                              ; $4362: $00
	cp   $81                                         ; $4363: $fe $81
	nop                                              ; $4365: $00
	add  c                                           ; $4366: $81
	ld   bc, $0000                                   ; $4367: $01 $00 $00
	add  c                                           ; $436a: $81
	ld   bc, $0002                                   ; $436b: $01 $02 $00
	ld   bc, $8400                                   ; $436e: $01 $00 $84
	ld   bc, $ff00                                   ; $4371: $01 $00 $ff
	adc  c                                           ; $4374: $89
	nop                                              ; $4375: $00
	nop                                              ; $4376: $00
	cp   $81                                         ; $4377: $fe $81
	nop                                              ; $4379: $00
	add  b                                           ; $437a: $80
	ld   bc, $fe08                                   ; $437b: $01 $08 $fe
	ld   bc, $0103                                   ; $437e: $01 $03 $01
	rlca                                             ; $4381: $07
	ld   bc, $0103                                   ; $4382: $01 $03 $01
	ld   sp, hl                                      ; $4385: $f9
	add  e                                           ; $4386: $83
	ld   bc, $ff00                                   ; $4387: $01 $00 $ff
	adc  c                                           ; $438a: $89
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	cp   $81                                         ; $438d: $fe $81
	nop                                              ; $438f: $00
	add  b                                           ; $4390: $80
	ld   bc, $ee0a                                   ; $4391: $01 $0a $ee
	ld   bc, $0103                                   ; $4394: $01 $03 $01
	rlca                                             ; $4397: $07
	ld   bc, $0103                                   ; $4398: $01 $03 $01
	add  sp, $01                                     ; $439b: $e8 $01
	nop                                              ; $439d: $00
	add  c                                           ; $439e: $81
	ld   bc, $ff00                                   ; $439f: $01 $00 $ff
	adc  c                                           ; $43a2: $89
	nop                                              ; $43a3: $00
	nop                                              ; $43a4: $00
	cp   $80                                         ; $43a5: $fe $80
	nop                                              ; $43a7: $00
	ld   de, $0148                           ; $43a8: $11 $48 $01
	rrca                                             ; $43ab: $0f
	ld   bc, $0c03                                   ; $43ac: $01 $03 $0c
	ld   bc, $010f                                   ; $43af: $01 $0f $01
	inc  bc                                          ; $43b2: $03
	inc  c                                           ; $43b3: $0c
	ld   bc, $010f                                   ; $43b4: $01 $0f $01
	inc  bc                                          ; $43b7: $03
	ld   b, h                                        ; $43b8: $44
	ld   bc, $89ff                                   ; $43b9: $01 $ff $89
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	cp   $81                                         ; $43be: $fe $81
	nop                                              ; $43c0: $00
	add  c                                           ; $43c1: $81
	ld   bc, $0000                                   ; $43c2: $01 $00 $00
	add  d                                           ; $43c5: $82
	ld   bc, $0000                                   ; $43c6: $01 $00 $00
	add  d                                           ; $43c9: $82
	ld   bc, $0000                                   ; $43ca: $01 $00 $00
	add  b                                           ; $43cd: $80
	ld   bc, $ff00                                   ; $43ce: $01 $00 $ff
	adc  c                                           ; $43d1: $89
	nop                                              ; $43d2: $00
	rrca                                             ; $43d3: $0f
	cp   $00                                         ; $43d4: $fe $00
	ld   b, a                                        ; $43d6: $47
	inc  bc                                          ; $43d7: $03
	inc  c                                           ; $43d8: $0c
	ld   bc, $010f                                   ; $43d9: $01 $0f $01
	inc  bc                                          ; $43dc: $03
	inc  c                                           ; $43dd: $0c
	ld   bc, $4900                                   ; $43de: $01 $00 $49
	nop                                              ; $43e1: $00
	ld   bc, $8200                                   ; $43e2: $01 $00 $82
	ld   bc, $ff00                                   ; $43e5: $01 $00 $ff
	adc  c                                           ; $43e8: $89
	nop                                              ; $43e9: $00
	nop                                              ; $43ea: $00
	cp   $81                                         ; $43eb: $fe $81
	nop                                              ; $43ed: $00
	dec  c                                           ; $43ee: $0d
	ld   bc, $011f                                   ; $43ef: $01 $1f $01
	inc  bc                                          ; $43f2: $03
	ld   bc, $0107                                   ; $43f3: $01 $07 $01
	inc  bc                                          ; $43f6: $03
	add  hl, de                                      ; $43f7: $19
	ld   c, a                                        ; $43f8: $4f
	ld   [$0301], sp                                 ; $43f9: $08 $01 $03
	ld   b, l                                        ; $43fc: $45
	add  b                                           ; $43fd: $80
	ld   bc, $ff00                                   ; $43fe: $01 $00 $ff
	adc  c                                           ; $4401: $89
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	cp   $81                                         ; $4404: $fe $81
	nop                                              ; $4406: $00
	db   $10                                         ; $4407: $10
	ld   bc, $010f                                   ; $4408: $01 $0f $01
	inc  bc                                          ; $440b: $03
	ld   bc, $0107                                   ; $440c: $01 $07 $01
	inc  bc                                          ; $440f: $03
	add  hl, bc                                      ; $4410: $09
	ld   bc, $0f49                                   ; $4411: $01 $49 $0f
	ld   bc, $4403                                   ; $4414: $01 $03 $44
	ld   bc, $89ff                                   ; $4417: $01 $ff $89
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	cp   $80                                         ; $441c: $fe $80
	nop                                              ; $441e: $00
	ld   de, $0148                           ; $441f: $11 $48 $01
	ld   c, c                                        ; $4422: $49
	ld   c, b                                        ; $4423: $48
	ld   bc, $010f                                   ; $4424: $01 $0f $01
	inc  bc                                          ; $4427: $03
	nop                                              ; $4428: $00
	ld   b, l                                        ; $4429: $45
	ld   bc, $0f49                                   ; $442a: $01 $49 $0f
	ld   bc, $4403                                   ; $442d: $01 $03 $44
	ld   bc, $89ff                                   ; $4430: $01 $ff $89
	nop                                              ; $4433: $00
	nop                                              ; $4434: $00
	cp   $81                                         ; $4435: $fe $81
	nop                                              ; $4437: $00
	add  b                                           ; $4438: $80
	ld   bc, $1906                                   ; $4439: $01 $06 $19
	rrca                                             ; $443c: $0f
	ld   bc, $0103                                   ; $443d: $01 $03 $01
	dec  d                                           ; $4440: $15
	ld   bc, $3f80                                   ; $4441: $01 $80 $3f
	add  c                                           ; $4444: $81
	nop                                              ; $4445: $00
	add  b                                           ; $4446: $80
	ld   bc, $ff00                                   ; $4447: $01 $00 $ff
	adc  c                                           ; $444a: $89
	nop                                              ; $444b: $00
	ld   c, $fe                                      ; $444c: $0e $fe
	nop                                              ; $444e: $00
	ld   b, a                                        ; $444f: $47
	inc  bc                                          ; $4450: $03
	inc  c                                           ; $4451: $0c
	ld   c, b                                        ; $4452: $48
	add  hl, bc                                      ; $4453: $09
	rrca                                             ; $4454: $0f
	ld   bc, $0103                                   ; $4455: $01 $03 $01
	ld   c, l                                        ; $4458: $4d
	ld   bc, $470f                                   ; $4459: $01 $0f $47
	add  b                                           ; $445c: $80
	ld   bc, $0000                                   ; $445d: $01 $00 $00
	add  b                                           ; $4460: $80
	ld   bc, $ff00                                   ; $4461: $01 $00 $ff
	adc  c                                           ; $4464: $89
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	cp   $80                                         ; $4467: $fe $80
	ld   bc, $0003                                   ; $4469: $01 $03 $00
	ld   b, h                                        ; $446c: $44
	nop                                              ; $446d: $00
	ld   b, l                                        ; $446e: $45
	add  c                                           ; $446f: $81
	ld   bc, $0080                                   ; $4470: $01 $80 $00
	ld   bc, $4544                                   ; $4473: $01 $44 $45
	add  c                                           ; $4476: $81
	ld   bc, $0080                                   ; $4477: $01 $80 $00
	ld   bc, $ff01                                   ; $447a: $01 $01 $ff
	adc  c                                           ; $447d: $89
	nop                                              ; $447e: $00
	ld   bc, $00fe                                   ; $447f: $01 $fe $00
	add  b                                           ; $4482: $80
	ld   bc, $470a                                   ; $4483: $01 $0a $47
	inc  bc                                          ; $4486: $03
	or   d                                           ; $4487: $b2
	ld   bc, $0103                                   ; $4488: $01 $03 $01
	rlca                                             ; $448b: $07
	or   [hl]                                        ; $448c: $b6
	inc  e                                           ; $448d: $1c
	ld   bc, $8059                                   ; $448e: $01 $59 $80
	ld   bc, $0000                                   ; $4491: $01 $00 $00
	add  b                                           ; $4494: $80
	ld   bc, $fe00                                   ; $4495: $01 $00 $fe
	adc  c                                           ; $4498: $89
	nop                                              ; $4499: $00
	dec  bc                                          ; $449a: $0b
	cp   $00                                         ; $449b: $fe $00
	ld   bc, $0100                                   ; $449d: $01 $00 $01
	nop                                              ; $44a0: $00
	and  $01                                         ; $44a1: $e6 $01
	inc  bc                                          ; $44a3: $03
	ld   bc, $e307                                   ; $44a4: $01 $07 $e3
	add  d                                           ; $44a7: $82
	ld   bc, $0000                                   ; $44a8: $01 $00 $00
	add  c                                           ; $44ab: $81
	ld   bc, $fe00                                   ; $44ac: $01 $00 $fe
	adc  c                                           ; $44af: $89
	nop                                              ; $44b0: $00
	nop                                              ; $44b1: $00
	cp   $82                                         ; $44b2: $fe $82
	ld   bc, $0000                                   ; $44b4: $01 $00 $00
	add  c                                           ; $44b7: $81
	ld   bc, $0000                                   ; $44b8: $01 $00 $00
	add  b                                           ; $44bb: $80
	ld   bc, $0080                                   ; $44bc: $01 $80 $00
	add  b                                           ; $44bf: $80
	ld   bc, $0080                                   ; $44c0: $01 $80 $00
	add  b                                           ; $44c3: $80
	ld   bc, $ff00                                   ; $44c4: $01 $00 $ff
	adc  c                                           ; $44c7: $89
	nop                                              ; $44c8: $00
	nop                                              ; $44c9: $00
	cp   $81                                         ; $44ca: $fe $81
	ld   bc, $d710                                   ; $44cc: $01 $10 $d7
	ld   bc, $0103                                   ; $44cf: $01 $03 $01
	push de                                          ; $44d2: $d5
	ld   bc, $01df                                   ; $44d3: $01 $df $01
	inc  bc                                          ; $44d6: $03
	ld   bc, $0107                                   ; $44d7: $01 $07 $01
	inc  bc                                          ; $44da: $03
	ld   bc, $01d9                                   ; $44db: $01 $d9 $01
	rst  $38                                         ; $44de: $ff
	adc  c                                           ; $44df: $89
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	cp   $81                                         ; $44e2: $fe $81
	ld   bc, $c710                                   ; $44e4: $01 $10 $c7
	ld   bc, $0103                                   ; $44e7: $01 $03 $01
	call nz, $ce01                                   ; $44ea: $c4 $01 $ce
	ld   bc, $0103                                   ; $44ed: $01 $03 $01
	rlca                                             ; $44f0: $07
	ld   bc, $0103                                   ; $44f1: $01 $03 $01
	ret                                              ; $44f4: $c9


	ld   bc, $89ff                                   ; $44f5: $01 $ff $89
	nop                                              ; $44f8: $00
	ld   bc, $00fe                                   ; $44f9: $01 $fe $00
	add  b                                           ; $44fc: $80
	ld   bc, $0000                                   ; $44fd: $01 $00 $00
	add  e                                           ; $4500: $83
	ld   bc, $0000                                   ; $4501: $01 $00 $00
	add  b                                           ; $4504: $80
	ld   bc, $0000                                   ; $4505: $01 $00 $00
	add  b                                           ; $4508: $80
	ld   bc, $0080                                   ; $4509: $01 $80 $00
	add  b                                           ; $450c: $80
	ld   bc, $ff00                                   ; $450d: $01 $00 $ff
	adc  c                                           ; $4510: $89
	nop                                              ; $4511: $00
	nop                                              ; $4512: $00
	cp   $80                                         ; $4513: $fe $80
	ld   bc, $0002                                   ; $4515: $01 $02 $00
	ld   bc, $8400                                   ; $4518: $01 $00 $84
	ld   bc, $0003                                   ; $451b: $01 $03 $00
	ld   bc, $0100                                   ; $451e: $01 $00 $01
	add  b                                           ; $4521: $80
	nop                                              ; $4522: $00
	add  b                                           ; $4523: $80
	ld   bc, $ff00                                   ; $4524: $01 $00 $ff
	adc  c                                           ; $4527: $89
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	cp   $80                                         ; $452a: $fe $80
	ld   bc, $000c                                   ; $452c: $01 $0c $00
	ld   e, l                                        ; $452f: $5d
	rlca                                             ; $4530: $07
	ld   bc, $0103                                   ; $4531: $01 $03 $01
	ld   e, c                                        ; $4534: $59
	ld   d, [hl]                                     ; $4535: $56
	ld   bc, $0103                                   ; $4536: $01 $03 $01
	rlca                                             ; $4539: $07
	ld   d, e                                        ; $453a: $53
	add  b                                           ; $453b: $80
	nop                                              ; $453c: $00
	add  b                                           ; $453d: $80
	ld   bc, $ff00                                   ; $453e: $01 $00 $ff
	adc  c                                           ; $4541: $89
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	cp   $80                                         ; $4544: $fe $80
	ld   bc, $0002                                   ; $4546: $01 $02 $00
	ld   bc, $8400                                   ; $4549: $01 $00 $84
	ld   bc, $0003                                   ; $454c: $01 $03 $00
	ld   bc, $0100                                   ; $454f: $01 $00 $01
	add  b                                           ; $4552: $80
	nop                                              ; $4553: $00
	add  b                                           ; $4554: $80
	ld   bc, $ff00                                   ; $4555: $01 $00 $ff
	adc  c                                           ; $4558: $89
	nop                                              ; $4559: $00
	nop                                              ; $455a: $00
	cp   $83                                         ; $455b: $fe $83
	ld   bc, $0000                                   ; $455d: $01 $00 $00
	add  h                                           ; $4560: $84
	ld   bc, $0000                                   ; $4561: $01 $00 $00
	add  b                                           ; $4564: $80
	ld   bc, $0080                                   ; $4565: $01 $80 $00
	add  b                                           ; $4568: $80
	ld   bc, $ff00                                   ; $4569: $01 $00 $ff
	adc  c                                           ; $456c: $89
	nop                                              ; $456d: $00
	nop                                              ; $456e: $00
	rst  $38                                         ; $456f: $ff
	add  b                                           ; $4570: $80
	ld   bc, $0000                                   ; $4571: $01 $00 $00
	add  h                                           ; $4574: $84
	ld   bc, $0000                                   ; $4575: $01 $00 $00
	add  b                                           ; $4578: $80
	ld   bc, $0000                                   ; $4579: $01 $00 $00
	add  b                                           ; $457c: $80
	ld   bc, $0080                                   ; $457d: $01 $80 $00
	add  h                                           ; $4580: $84
	ld   bc, $0000                                   ; $4581: $01 $00 $00
	add  b                                           ; $4584: $80
	ld   bc, $6501                                   ; $4585: $01 $01 $65
	sbc  d                                           ; $4588: $9a
	add  c                                           ; $4589: $81
	nop                                              ; $458a: $00
	nop                                              ; $458b: $00
	rst  $38                                         ; $458c: $ff
	add  b                                           ; $458d: $80
	ld   bc, $0000                                   ; $458e: $01 $00 $00
	add  h                                           ; $4591: $84
	ld   bc, $0000                                   ; $4592: $01 $00 $00
	add  d                                           ; $4595: $82
	ld   bc, $0081                                   ; $4596: $01 $81 $00
	add  h                                           ; $4599: $84
	ld   bc, $0000                                   ; $459a: $01 $00 $00
	add  b                                           ; $459d: $80
	ld   bc, $6501                                   ; $459e: $01 $01 $65
	sbc  d                                           ; $45a1: $9a
	add  c                                           ; $45a2: $81
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	rst  $38                                         ; $45a5: $ff
	add  b                                           ; $45a6: $80
	ld   bc, $0000                                   ; $45a7: $01 $00 $00
	add  [hl]                                        ; $45aa: $86
	ld   bc, $0000                                   ; $45ab: $01 $00 $00
	add  b                                           ; $45ae: $80
	ld   bc, $0081                                   ; $45af: $01 $81 $00
	add  [hl]                                        ; $45b2: $86
	ld   bc, $0001                                   ; $45b3: $01 $01 $00
	rst  $38                                         ; $45b6: $ff
	add  d                                           ; $45b7: $82
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	rst  $38                                         ; $45ba: $ff
	add  b                                           ; $45bb: $80
	ld   bc, $0000                                   ; $45bc: $01 $00 $00
	add  [hl]                                        ; $45bf: $86
	ld   bc, $0000                                   ; $45c0: $01 $00 $00
	add  d                                           ; $45c3: $82
	ld   bc, $0000                                   ; $45c4: $01 $00 $00
	add  [hl]                                        ; $45c7: $86
	ld   bc, $0001                                   ; $45c8: $01 $01 $00
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	nop                                              ; $45cd: $00
	pop  bc                                          ; $45ce: $c1
	nop                                              ; $45cf: $00
	or   $00                                         ; $45d0: $f6 $00
	nop                                              ; $45d2: $00
	cp   $81                                         ; $45d3: $fe $81
	nop                                              ; $45d5: $00
	add  c                                           ; $45d6: $81
	ld   bc, $0000                                   ; $45d7: $01 $00 $00
	add  c                                           ; $45da: $81
	ld   bc, $0002                                   ; $45db: $01 $02 $00
	ld   bc, $8400                                   ; $45de: $01 $00 $84
	ld   bc, $ff00                                   ; $45e1: $01 $00 $ff
	adc  c                                           ; $45e4: $89
	nop                                              ; $45e5: $00
	nop                                              ; $45e6: $00
	cp   $81                                         ; $45e7: $fe $81
	nop                                              ; $45e9: $00
	add  c                                           ; $45ea: $81
	ld   bc, $0000                                   ; $45eb: $01 $00 $00
	add  c                                           ; $45ee: $81
	ld   bc, $0002                                   ; $45ef: $01 $02 $00
	ld   bc, $8400                                   ; $45f2: $01 $00 $84
	ld   bc, $ff00                                   ; $45f5: $01 $00 $ff
	adc  c                                           ; $45f8: $89
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	cp   $81                                         ; $45fb: $fe $81
	nop                                              ; $45fd: $00
	add  b                                           ; $45fe: $80
	ld   l, e                                        ; $45ff: $6b
	ld   [$017e], sp                                 ; $4600: $08 $7e $01
	inc  bc                                          ; $4603: $03
	ld   bc, $0107                                   ; $4604: $01 $07 $01
	ld   a, d                                        ; $4607: $7a
	ld   l, d                                        ; $4608: $6a
	ld   l, e                                        ; $4609: $6b
	add  e                                           ; $460a: $83
	ld   bc, $ff00                                   ; $460b: $01 $00 $ff
	adc  c                                           ; $460e: $89
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	cp   $81                                         ; $4611: $fe $81
	nop                                              ; $4613: $00
	add  c                                           ; $4614: $81
	ld   bc, $0000                                   ; $4615: $01 $00 $00
	add  d                                           ; $4618: $82
	ld   bc, $0000                                   ; $4619: $01 $00 $00
	add  d                                           ; $461c: $82
	ld   bc, $0000                                   ; $461d: $01 $00 $00
	add  b                                           ; $4620: $80
	ld   bc, $ff00                                   ; $4621: $01 $00 $ff
	adc  c                                           ; $4624: $89
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	cp   $81                                         ; $4627: $fe $81
	nop                                              ; $4629: $00
	add  c                                           ; $462a: $81
	ld   bc, $0000                                   ; $462b: $01 $00 $00
	add  d                                           ; $462e: $82
	ld   bc, $0000                                   ; $462f: $01 $00 $00
	add  d                                           ; $4632: $82
	ld   bc, $0000                                   ; $4633: $01 $00 $00
	add  b                                           ; $4636: $80
	ld   bc, $ff00                                   ; $4637: $01 $00 $ff
	adc  c                                           ; $463a: $89
	nop                                              ; $463b: $00
	nop                                              ; $463c: $00
	cp   $83                                         ; $463d: $fe $83
	nop                                              ; $463f: $00
	add  hl, bc                                      ; $4640: $09
	ld   l, [hl]                                     ; $4641: $6e
	ld   bc, $006f                                   ; $4642: $01 $6f $00
	ld   a, b                                        ; $4645: $78
	nop                                              ; $4646: $00
	ld   a, b                                        ; $4647: $78
	nop                                              ; $4648: $00
	ld   bc, $8200                                   ; $4649: $01 $00 $82
	ld   bc, $ff00                                   ; $464c: $01 $00 $ff
	adc  c                                           ; $464f: $89
	nop                                              ; $4650: $00
	nop                                              ; $4651: $00
	cp   $83                                         ; $4652: $fe $83
	nop                                              ; $4654: $00
	add  a                                           ; $4655: $87
	ld   bc, $0000                                   ; $4656: $01 $00 $00
	add  d                                           ; $4659: $82
	ld   bc, $ff00                                   ; $465a: $01 $00 $ff
	adc  c                                           ; $465d: $89
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	cp   $83                                         ; $4660: $fe $83
	nop                                              ; $4662: $00
	add  a                                           ; $4663: $87
	ld   bc, $0000                                   ; $4664: $01 $00 $00
	add  d                                           ; $4667: $82
	ld   bc, $ff00                                   ; $4668: $01 $00 $ff
	adc  c                                           ; $466b: $89
	nop                                              ; $466c: $00
	nop                                              ; $466d: $00
	cp   $83                                         ; $466e: $fe $83
	nop                                              ; $4670: $00
	add  hl, bc                                      ; $4671: $09
	ld   l, h                                        ; $4672: $6c
	ld   bc, $006d                                   ; $4673: $01 $6d $00
	ld   a, b                                        ; $4676: $78
	nop                                              ; $4677: $00
	ld   a, b                                        ; $4678: $78
	nop                                              ; $4679: $00
	ld   bc, $8200                                   ; $467a: $01 $00 $82
	ld   bc, $ff00                                   ; $467d: $01 $00 $ff
	adc  c                                           ; $4680: $89
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	cp   $83                                         ; $4683: $fe $83
	nop                                              ; $4685: $00
	add  c                                           ; $4686: $81
	ld   bc, $0000                                   ; $4687: $01 $00 $00
	add  c                                           ; $468a: $81
	ld   bc, $0001                                   ; $468b: $01 $01 $00
	ld   bc, $0081                                   ; $468e: $01 $81 $00
	add  b                                           ; $4691: $80
	ld   bc, $ff00                                   ; $4692: $01 $00 $ff
	adc  c                                           ; $4695: $89
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	cp   $83                                         ; $4698: $fe $83
	nop                                              ; $469a: $00
	add  c                                           ; $469b: $81
	ld   bc, $0000                                   ; $469c: $01 $00 $00
	add  c                                           ; $469f: $81
	ld   bc, $0000                                   ; $46a0: $01 $00 $00
	add  c                                           ; $46a3: $81
	ld   bc, $0000                                   ; $46a4: $01 $00 $00
	add  b                                           ; $46a7: $80
	ld   bc, $ff00                                   ; $46a8: $01 $00 $ff
	adc  c                                           ; $46ab: $89
	nop                                              ; $46ac: $00
	nop                                              ; $46ad: $00
	cp   $80                                         ; $46ae: $fe $80
	ld   bc, $0081                                   ; $46b0: $01 $81 $00
	rlca                                             ; $46b3: $07
	ld   e, [hl]                                     ; $46b4: $5e
	ld   bc, $5d03                                   ; $46b5: $01 $03 $5d
	ld   a, c                                        ; $46b8: $79
	nop                                              ; $46b9: $00
	ld   a, c                                        ; $46ba: $79
	nop                                              ; $46bb: $00
	add  c                                           ; $46bc: $81
	ld   bc, $0080                                   ; $46bd: $01 $80 $00
	ld   bc, $ff01                                   ; $46c0: $01 $01 $ff
	adc  c                                           ; $46c3: $89
	nop                                              ; $46c4: $00
	ld   bc, $00fe                                   ; $46c5: $01 $fe $00
	add  b                                           ; $46c8: $80
	ld   bc, $0080                                   ; $46c9: $01 $80 $00
	add  c                                           ; $46cc: $81
	ld   bc, $0000                                   ; $46cd: $01 $00 $00
	add  b                                           ; $46d0: $80
	ld   bc, $0080                                   ; $46d1: $01 $80 $00
	add  c                                           ; $46d4: $81
	ld   bc, $0000                                   ; $46d5: $01 $00 $00
	add  b                                           ; $46d8: $80
	ld   bc, $fe00                                   ; $46d9: $01 $00 $fe
	adc  c                                           ; $46dc: $89
	nop                                              ; $46dd: $00
	inc  bc                                          ; $46de: $03
	cp   $00                                         ; $46df: $fe $00
	ld   bc, $8200                                   ; $46e1: $01 $00 $82
	ld   bc, $0000                                   ; $46e4: $01 $00 $00
	add  b                                           ; $46e7: $80
	ld   bc, $0000                                   ; $46e8: $01 $00 $00
	add  d                                           ; $46eb: $82
	ld   bc, $0000                                   ; $46ec: $01 $00 $00
	add  c                                           ; $46ef: $81
	ld   bc, $fe00                                   ; $46f0: $01 $00 $fe
	adc  c                                           ; $46f3: $89
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	cp   $82                                         ; $46f6: $fe $82
	ld   bc, $0008                                   ; $46f8: $01 $08 $00
	ld   e, l                                        ; $46fb: $5d
	rlca                                             ; $46fc: $07
	ld   bc, $0103                                   ; $46fd: $01 $03 $01
	ld   e, c                                        ; $4700: $59
	ld   bc, $8000                                   ; $4701: $01 $00 $80
	ld   bc, $0080                                   ; $4704: $01 $80 $00
	add  b                                           ; $4707: $80
	ld   bc, $ff00                                   ; $4708: $01 $00 $ff
	adc  c                                           ; $470b: $89
	nop                                              ; $470c: $00
	nop                                              ; $470d: $00
	cp   $82                                         ; $470e: $fe $82
	ld   bc, $0002                                   ; $4710: $01 $02 $00
	ld   bc, $8300                                   ; $4713: $01 $00 $83
	ld   bc, $0080                                   ; $4716: $01 $80 $00
	nop                                              ; $4719: $00
	ld   bc, $0080                                   ; $471a: $01 $80 $00
	add  b                                           ; $471d: $80
	ld   bc, $ff00                                   ; $471e: $01 $00 $ff
	adc  c                                           ; $4721: $89
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	cp   $83                                         ; $4724: $fe $83
	ld   bc, $0000                                   ; $4726: $01 $00 $00
	add  h                                           ; $4729: $84
	ld   bc, $0000                                   ; $472a: $01 $00 $00
	add  b                                           ; $472d: $80
	ld   bc, $0080                                   ; $472e: $01 $80 $00
	add  b                                           ; $4731: $80
	ld   bc, $ff00                                   ; $4732: $01 $00 $ff
	adc  c                                           ; $4735: $89
	nop                                              ; $4736: $00
	ld   bc, $00fe                                   ; $4737: $01 $fe $00
	add  b                                           ; $473a: $80
	ld   bc, $0000                                   ; $473b: $01 $00 $00
	add  e                                           ; $473e: $83
	ld   bc, $0000                                   ; $473f: $01 $00 $00
	add  b                                           ; $4742: $80
	ld   bc, $0000                                   ; $4743: $01 $00 $00
	add  b                                           ; $4746: $80
	ld   bc, $0080                                   ; $4747: $01 $80 $00
	add  b                                           ; $474a: $80
	ld   bc, $ff00                                   ; $474b: $01 $00 $ff
	adc  c                                           ; $474e: $89
	nop                                              ; $474f: $00
	nop                                              ; $4750: $00
	cp   $80                                         ; $4751: $fe $80
	ld   bc, $0002                                   ; $4753: $01 $02 $00
	ld   bc, $8400                                   ; $4756: $01 $00 $84
	ld   bc, $0003                                   ; $4759: $01 $03 $00
	ld   bc, $0100                                   ; $475c: $01 $00 $01
	add  b                                           ; $475f: $80
	nop                                              ; $4760: $00
	add  b                                           ; $4761: $80
	ld   bc, $ff00                                   ; $4762: $01 $00 $ff
	adc  c                                           ; $4765: $89
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	cp   $80                                         ; $4768: $fe $80
	ld   bc, $000c                                   ; $476a: $01 $0c $00
	ld   e, l                                        ; $476d: $5d
	rlca                                             ; $476e: $07
	ld   bc, $0103                                   ; $476f: $01 $03 $01
	ld   e, c                                        ; $4772: $59
	ld   d, [hl]                                     ; $4773: $56
	ld   bc, $0103                                   ; $4774: $01 $03 $01
	rlca                                             ; $4777: $07
	ld   d, e                                        ; $4778: $53
	add  b                                           ; $4779: $80
	nop                                              ; $477a: $00
	add  b                                           ; $477b: $80
	ld   bc, $ff00                                   ; $477c: $01 $00 $ff
	adc  c                                           ; $477f: $89
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	cp   $80                                         ; $4782: $fe $80
	ld   bc, $0002                                   ; $4784: $01 $02 $00
	ld   bc, $8400                                   ; $4787: $01 $00 $84
	ld   bc, $0003                                   ; $478a: $01 $03 $00
	ld   bc, $0100                                   ; $478d: $01 $00 $01
	add  b                                           ; $4790: $80
	nop                                              ; $4791: $00
	add  b                                           ; $4792: $80
	ld   bc, $ff00                                   ; $4793: $01 $00 $ff
	adc  c                                           ; $4796: $89
	nop                                              ; $4797: $00
	nop                                              ; $4798: $00
	cp   $83                                         ; $4799: $fe $83
	ld   bc, $0000                                   ; $479b: $01 $00 $00
	add  h                                           ; $479e: $84
	ld   bc, $0000                                   ; $479f: $01 $00 $00
	add  b                                           ; $47a2: $80
	ld   bc, $0080                                   ; $47a3: $01 $80 $00
	add  b                                           ; $47a6: $80
	ld   bc, $ff00                                   ; $47a7: $01 $00 $ff
	adc  c                                           ; $47aa: $89
	nop                                              ; $47ab: $00
	nop                                              ; $47ac: $00
	rst  $38                                         ; $47ad: $ff
	add  b                                           ; $47ae: $80
	ld   bc, $0000                                   ; $47af: $01 $00 $00
	add  h                                           ; $47b2: $84
	ld   bc, $0000                                   ; $47b3: $01 $00 $00
	add  b                                           ; $47b6: $80
	ld   bc, $0000                                   ; $47b7: $01 $00 $00
	add  b                                           ; $47ba: $80
	ld   bc, $0080                                   ; $47bb: $01 $80 $00
	add  h                                           ; $47be: $84
	ld   bc, $0000                                   ; $47bf: $01 $00 $00
	add  b                                           ; $47c2: $80
	ld   bc, $6501                                   ; $47c3: $01 $01 $65
	sbc  d                                           ; $47c6: $9a
	add  c                                           ; $47c7: $81
	nop                                              ; $47c8: $00
	nop                                              ; $47c9: $00
	rst  $38                                         ; $47ca: $ff
	add  b                                           ; $47cb: $80
	ld   bc, $0000                                   ; $47cc: $01 $00 $00
	add  h                                           ; $47cf: $84
	ld   bc, $0000                                   ; $47d0: $01 $00 $00
	add  d                                           ; $47d3: $82
	ld   bc, $0081                                   ; $47d4: $01 $81 $00
	add  h                                           ; $47d7: $84
	ld   bc, $0000                                   ; $47d8: $01 $00 $00
	add  b                                           ; $47db: $80
	ld   bc, $6501                                   ; $47dc: $01 $01 $65
	sbc  d                                           ; $47df: $9a
	add  c                                           ; $47e0: $81
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	rst  $38                                         ; $47e3: $ff
	add  b                                           ; $47e4: $80
	ld   bc, $0000                                   ; $47e5: $01 $00 $00
	add  [hl]                                        ; $47e8: $86
	ld   bc, $0000                                   ; $47e9: $01 $00 $00
	add  b                                           ; $47ec: $80
	ld   bc, $0081                                   ; $47ed: $01 $81 $00
	add  [hl]                                        ; $47f0: $86
	ld   bc, $0001                                   ; $47f1: $01 $01 $00
	rst  $38                                         ; $47f4: $ff
	add  d                                           ; $47f5: $82
	nop                                              ; $47f6: $00
	nop                                              ; $47f7: $00
	rst  $38                                         ; $47f8: $ff
	add  b                                           ; $47f9: $80
	ld   bc, $0000                                   ; $47fa: $01 $00 $00
	add  [hl]                                        ; $47fd: $86
	ld   bc, $0000                                   ; $47fe: $01 $00 $00
	add  d                                           ; $4801: $82
	ld   bc, $0000                                   ; $4802: $01 $00 $00
	add  [hl]                                        ; $4805: $86
	ld   bc, $0001                                   ; $4806: $01 $01 $00
	rst  $38                                         ; $4809: $ff
	rst  $38                                         ; $480a: $ff
	nop                                              ; $480b: $00
	pop  bc                                          ; $480c: $c1
	nop                                              ; $480d: $00
	ld   l, b                                        ; $480e: $68
	nop                                              ; $480f: $00
	add  b                                           ; $4810: $80
	nop                                              ; $4811: $00
	ld   c, $30                                      ; $4812: $0e $30
	nop                                              ; $4814: $00
	ld   a, b                                        ; $4815: $78
	nop                                              ; $4816: $00
	add  hl, bc                                      ; $4817: $09
	nop                                              ; $4818: $00
	ld   [hl], e                                     ; $4819: $73
	nop                                              ; $481a: $00
	jr   c, jr_02f_481d                              ; $481b: $38 $00

jr_02f_481d:
	ld   b, b                                        ; $481d: $40
	nop                                              ; $481e: $00
	ld   a, e                                        ; $481f: $7b
	nop                                              ; $4820: $00
	ld   sp, $0083                                   ; $4821: $31 $83 $00
	ld   [bc], a                                     ; $4824: $02
	sub  d                                           ; $4825: $92
	nop                                              ; $4826: $00
	ret  nz                                          ; $4827: $c0

	add  e                                           ; $4828: $83
	nop                                              ; $4829: $00
	ld   [bc], a                                     ; $482a: $02
	sbc  $00                                         ; $482b: $de $00
	adc  h                                           ; $482d: $8c
	add  e                                           ; $482e: $83
	nop                                              ; $482f: $00
	ld   [bc], a                                     ; $4830: $02
	db   $e3                                         ; $4831: $e3
	nop                                              ; $4832: $00
	ld   [hl], a                                     ; $4833: $77
	add  e                                           ; $4834: $83
	nop                                              ; $4835: $00
	ld   b, $07                                      ; $4836: $06 $07
	nop                                              ; $4838: $00
	sub  e                                           ; $4839: $93
	nop                                              ; $483a: $00
	sbc  a                                           ; $483b: $9f
	nop                                              ; $483c: $00
	dec  de                                          ; $483d: $1b
	adc  c                                           ; $483e: $89
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	add  h                                           ; $4841: $84
	add  e                                           ; $4842: $83
	nop                                              ; $4843: $00
	inc  c                                           ; $4844: $0c
	ld   sp, $7b00                                   ; $4845: $31 $00 $7b
	nop                                              ; $4848: $00
	inc  sp                                          ; $4849: $33
	nop                                              ; $484a: $00
	add  hl, sp                                      ; $484b: $39
	nop                                              ; $484c: $00
	ld   a, e                                        ; $484d: $7b
	nop                                              ; $484e: $00
	dec  sp                                          ; $484f: $3b
	nop                                              ; $4850: $00
	ld   [$0081], sp                                 ; $4851: $08 $81 $00
	ld   c, $d6                                      ; $4854: $0e $d6
	nop                                              ; $4856: $00
	sub  $00                                         ; $4857: $d6 $00
	add  b                                           ; $4859: $80
	nop                                              ; $485a: $00
	ret  nz                                          ; $485b: $c0

	nop                                              ; $485c: $00
	adc  $00                                         ; $485d: $ce $00
	add  [hl]                                        ; $485f: $86
	nop                                              ; $4860: $00
	jr   jr_02f_4863                                 ; $4861: $18 $00

jr_02f_4863:
	inc  a                                           ; $4863: $3c
	add  a                                           ; $4864: $87
	nop                                              ; $4865: $00
	ld   [$003c], sp                                 ; $4866: $08 $3c $00
	jr   jr_02f_486b                                 ; $4869: $18 $00

jr_02f_486b:
	ld   [$1000], sp                                 ; $486b: $08 $00 $10
	nop                                              ; $486e: $00
	db   $10                                         ; $486f: $10
	add  a                                           ; $4870: $87
	nop                                              ; $4871: $00
	ld   [hl+], a                                    ; $4872: $22
	ld   [$1800], sp                                 ; $4873: $08 $00 $18
	nop                                              ; $4876: $00
	inc  a                                           ; $4877: $3c
	nop                                              ; $4878: $00
	jr   nz, jr_02f_487b                             ; $4879: $20 $00

jr_02f_487b:
	inc  c                                           ; $487b: $0c
	nop                                              ; $487c: $00
	jr   jr_02f_487f                                 ; $487d: $18 $00

jr_02f_487f:
	jr   nc, jr_02f_4881                             ; $487f: $30 $00

jr_02f_4881:
	inc  e                                           ; $4881: $1c
	nop                                              ; $4882: $00
	inc  a                                           ; $4883: $3c
	nop                                              ; $4884: $00
	jr   jr_02f_4887                                 ; $4885: $18 $00

jr_02f_4887:
	inc  a                                           ; $4887: $3c
	nop                                              ; $4888: $00
	jr   nz, jr_02f_488b                             ; $4889: $20 $00

jr_02f_488b:
	inc  e                                           ; $488b: $1c
	nop                                              ; $488c: $00
	inc  e                                           ; $488d: $1c
	nop                                              ; $488e: $00
	jr   nz, jr_02f_4891                             ; $488f: $20 $00

jr_02f_4891:
	inc  a                                           ; $4891: $3c
	nop                                              ; $4892: $00
	jr   jr_02f_4895                                 ; $4893: $18 $00

jr_02f_4895:
	inc  c                                           ; $4895: $0c
	add  c                                           ; $4896: $81
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	jr   @-$7d                                       ; $4899: $18 $81

	nop                                              ; $489b: $00
	ld   c, $30                                      ; $489c: $0e $30

jr_02f_489e:
	nop                                              ; $489e: $00
	ld   a, [de]                                     ; $489f: $1a
	nop                                              ; $48a0: $00
	ld   a, [hl-]                                    ; $48a1: $3a
	nop                                              ; $48a2: $00
	inc  b                                           ; $48a3: $04
	nop                                              ; $48a4: $00
	inc  a                                           ; $48a5: $3c
	nop                                              ; $48a6: $00
	inc  e                                           ; $48a7: $1c
	nop                                              ; $48a8: $00
	jr   jr_02f_48ab                                 ; $48a9: $18 $00

jr_02f_48ab:
	inc  a                                           ; $48ab: $3c
	add  c                                           ; $48ac: $81
	nop                                              ; $48ad: $00
	ld   c, $20                                      ; $48ae: $0e $20
	nop                                              ; $48b0: $00
	inc  a                                           ; $48b1: $3c
	nop                                              ; $48b2: $00
	jr   jr_02f_48b5                                 ; $48b3: $18 $00

jr_02f_48b5:
	jr   jr_02f_48b7                                 ; $48b5: $18 $00

jr_02f_48b7:
	inc  a                                           ; $48b7: $3c
	nop                                              ; $48b8: $00
	inc  b                                           ; $48b9: $04
	nop                                              ; $48ba: $00
	jr   jr_02f_48bd                                 ; $48bb: $18 $00

jr_02f_48bd:
	inc  e                                           ; $48bd: $1c
	add  c                                           ; $48be: $81
	nop                                              ; $48bf: $00
	ld   [$003c], sp                                 ; $48c0: $08 $3c $00
	jr   jr_02f_48c5                                 ; $48c3: $18 $00

jr_02f_48c5:
	inc  a                                           ; $48c5: $3c
	nop                                              ; $48c6: $00
	jr   c, jr_02f_48c9                              ; $48c7: $38 $00

jr_02f_48c9:
	inc  c                                           ; $48c9: $0c
	add  c                                           ; $48ca: $81
	nop                                              ; $48cb: $00
	nop                                              ; $48cc: $00
	jr   @-$7b                                       ; $48cd: $18 $83

	nop                                              ; $48cf: $00
	inc  b                                           ; $48d0: $04
	stop                                             ; $48d1: $10 $00
	jr   jr_02f_48d5                                 ; $48d3: $18 $00

jr_02f_48d5:
	inc  a                                           ; $48d5: $3c
	add  c                                           ; $48d6: $81
	nop                                              ; $48d7: $00
	ld   [bc], a                                     ; $48d8: $02
	inc  a                                           ; $48d9: $3c
	nop                                              ; $48da: $00
	inc  a                                           ; $48db: $3c
	add  c                                           ; $48dc: $81
	nop                                              ; $48dd: $00
	ld   b, $3c                                      ; $48de: $06 $3c
	nop                                              ; $48e0: $00
	jr   jr_02f_48e3                                 ; $48e1: $18 $00

jr_02f_48e3:
	jr   jr_02f_48e5                                 ; $48e3: $18 $00

jr_02f_48e5:
	inc  a                                           ; $48e5: $3c
	add  c                                           ; $48e6: $81
	nop                                              ; $48e7: $00
	inc  e                                           ; $48e8: $1c
	jr   c, jr_02f_48eb                              ; $48e9: $38 $00

jr_02f_48eb:
	jr   jr_02f_48ed                                 ; $48eb: $18 $00

jr_02f_48ed:
	jr   nz, jr_02f_48ef                             ; $48ed: $20 $00

jr_02f_48ef:
	inc  a                                           ; $48ef: $3c
	nop                                              ; $48f0: $00
	jr   jr_02f_48f3                                 ; $48f1: $18 $00

jr_02f_48f3:
	jr   c, jr_02f_48f5                              ; $48f3: $38 $00

jr_02f_48f5:
	ld   a, h                                        ; $48f5: $7c
	nop                                              ; $48f6: $00
	inc  b                                           ; $48f7: $04
	nop                                              ; $48f8: $00
	ld   a, b                                        ; $48f9: $78
	nop                                              ; $48fa: $00
	inc  a                                           ; $48fb: $3c
	nop                                              ; $48fc: $00
	ld   b, b                                        ; $48fd: $40
	nop                                              ; $48fe: $00
	ld   a, h                                        ; $48ff: $7c
	nop                                              ; $4900: $00
	jr   c, jr_02f_4903                              ; $4901: $38 $00

jr_02f_4903:
	ld   hl, sp+$00                                  ; $4903: $f8 $00
	ld   a, b                                        ; $4905: $78
	add  c                                           ; $4906: $81
	nop                                              ; $4907: $00
	ld   [bc], a                                     ; $4908: $02
	ld   [hl], b                                     ; $4909: $70
	nop                                              ; $490a: $00
	ld   [hl], b                                     ; $490b: $70
	add  c                                           ; $490c: $81
	nop                                              ; $490d: $00
	ld   b, $78                                      ; $490e: $06 $78
	nop                                              ; $4910: $00
	ld   hl, sp+$00                                  ; $4911: $f8 $00
	ld   [hl], c                                     ; $4913: $71
	nop                                              ; $4914: $00
	dec  sp                                          ; $4915: $3b
	add  c                                           ; $4916: $81
	nop                                              ; $4917: $00
	ld   [bc], a                                     ; $4918: $02
	jr   c, jr_02f_491b                              ; $4919: $38 $00

jr_02f_491b:
	jr   c, jr_02f_489e                              ; $491b: $38 $81

	nop                                              ; $491d: $00
	inc  c                                           ; $491e: $0c
	dec  sp                                          ; $491f: $3b
	nop                                              ; $4920: $00
	ld   [hl], c                                     ; $4921: $71
	nop                                              ; $4922: $00
	sub  c                                           ; $4923: $91
	nop                                              ; $4924: $00
	ret  nz                                          ; $4925: $c0

	nop                                              ; $4926: $00
	ld   c, d                                        ; $4927: $4a
	nop                                              ; $4928: $00
	ret  nz                                          ; $4929: $c0

	nop                                              ; $492a: $00
	adc  [hl]                                        ; $492b: $8e
	add  c                                           ; $492c: $81
	nop                                              ; $492d: $00
	ld   [de], a                                     ; $492e: $12
	add  b                                           ; $492f: $80
	nop                                              ; $4930: $00
	push de                                          ; $4931: $d5
	nop                                              ; $4932: $00
	jr   nz, jr_02f_4935                             ; $4933: $20 $00

jr_02f_4935:
	stop                                             ; $4935: $10 $00
	ld   [$0400], sp                                 ; $4937: $08 $00 $04
	nop                                              ; $493a: $00
	inc  b                                           ; $493b: $04
	nop                                              ; $493c: $00
	ld   [$1000], sp                                 ; $493d: $08 $00 $10
	nop                                              ; $4940: $00
	rst  JumpTable                                         ; $4941: $df
	adc  l                                           ; $4942: $8d
	nop                                              ; $4943: $00
	nop                                              ; $4944: $00
	rst  $38                                         ; $4945: $ff
	rst  $38                                         ; $4946: $ff
	nop                                              ; $4947: $00
	sbc  [hl]                                        ; $4948: $9e
	nop                                              ; $4949: $00
	nop                                              ; $494a: $00
	ld   b, h                                        ; $494b: $44
	add  e                                           ; $494c: $83
	nop                                              ; $494d: $00
	nop                                              ; $494e: $00
	ld   l, l                                        ; $494f: $6d
	add  c                                           ; $4950: $81
	nop                                              ; $4951: $00
	inc  b                                           ; $4952: $04
	jr   c, jr_02f_4955                              ; $4953: $38 $00

jr_02f_4955:
	ld   bc, $1000                                   ; $4955: $01 $00 $10
	add  c                                           ; $4958: $81
	nop                                              ; $4959: $00
	inc  b                                           ; $495a: $04
	ld   [$c900], sp                                 ; $495b: $08 $00 $c9
	nop                                              ; $495e: $00
	db   $eb                                         ; $495f: $eb
	add  e                                           ; $4960: $83
	nop                                              ; $4961: $00
	ld   [bc], a                                     ; $4962: $02
	db   $e3                                         ; $4963: $e3
	nop                                              ; $4964: $00
	ret                                              ; $4965: $c9


	add  e                                           ; $4966: $83
	nop                                              ; $4967: $00
	ld   c, $8c                                      ; $4968: $0e $8c
	nop                                              ; $496a: $00
	sbc  $00                                         ; $496b: $de $00
	ld   c, h                                        ; $496d: $4c
	nop                                              ; $496e: $00
	ld   c, [hl]                                     ; $496f: $4e
	nop                                              ; $4970: $00
	sbc  [hl]                                        ; $4971: $9e
	nop                                              ; $4972: $00
	adc  $00                                         ; $4973: $ce $00
	ld   a, c                                        ; $4975: $79
	nop                                              ; $4976: $00
	inc  a                                           ; $4977: $3c
	add  c                                           ; $4978: $81
	nop                                              ; $4979: $00
	ld   [bc], a                                     ; $497a: $02
	inc  a                                           ; $497b: $3c
	nop                                              ; $497c: $00
	jr   c, @-$7b                                    ; $497d: $38 $83

	nop                                              ; $497f: $00
	ld   b, $41                                      ; $4980: $06 $41
	nop                                              ; $4982: $00
	ld   bc, $0300                                   ; $4983: $01 $00 $03
	nop                                              ; $4986: $00
	ld   b, $81                                      ; $4987: $06 $81
	nop                                              ; $4989: $00
	ld   [de], a                                     ; $498a: $12
	inc  bc                                          ; $498b: $03
	nop                                              ; $498c: $00
	inc  bc                                          ; $498d: $03
	nop                                              ; $498e: $00
	ldh  a, [rP1]                                    ; $498f: $f0 $00
	db   $f4                                         ; $4991: $f4
	nop                                              ; $4992: $00
	ld   de, $8000                                   ; $4993: $11 $00 $80
	nop                                              ; $4996: $00
	db   $db                                         ; $4997: $db
	nop                                              ; $4998: $00
	ld   c, $00                                      ; $4999: $0e $00
	add  b                                           ; $499b: $80
	nop                                              ; $499c: $00
	add  b                                           ; $499d: $80
	add  c                                           ; $499e: $81
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	ld   b, h                                        ; $49a1: $44
	add  c                                           ; $49a2: $81
	nop                                              ; $49a3: $00
	ld   a, [bc]                                     ; $49a4: $0a
	ld   [$0400], sp                                 ; $49a5: $08 $00 $04
	nop                                              ; $49a8: $00
	ld   [hl], d                                     ; $49a9: $72
	nop                                              ; $49aa: $00
	ld   [hl], d                                     ; $49ab: $72
	nop                                              ; $49ac: $00
	inc  b                                           ; $49ad: $04
	nop                                              ; $49ae: $00
	ld   [$0081], sp                                 ; $49af: $08 $81 $00
	inc  b                                           ; $49b2: $04
	inc  e                                           ; $49b3: $1c
	nop                                              ; $49b4: $00
	ld   a, [hl+]                                    ; $49b5: $2a
	nop                                              ; $49b6: $00
	ld   d, l                                        ; $49b7: $55
	add  c                                           ; $49b8: $81
	nop                                              ; $49b9: $00
	ld   [bc], a                                     ; $49ba: $02
	inc  e                                           ; $49bb: $1c
	nop                                              ; $49bc: $00
	inc  e                                           ; $49bd: $1c
	add  c                                           ; $49be: $81
	nop                                              ; $49bf: $00
	inc  d                                           ; $49c0: $14
	ld   h, e                                        ; $49c1: $63
	nop                                              ; $49c2: $00
	add  hl, sp                                      ; $49c3: $39
	nop                                              ; $49c4: $00
	ld   a, l                                        ; $49c5: $7d
	nop                                              ; $49c6: $00
	inc  b                                           ; $49c7: $04
	nop                                              ; $49c8: $00
	ld   a, b                                        ; $49c9: $78
	nop                                              ; $49ca: $00
	inc  a                                           ; $49cb: $3c
	nop                                              ; $49cc: $00
	ld   b, b                                        ; $49cd: $40
	nop                                              ; $49ce: $00
	ld   a, h                                        ; $49cf: $7c
	nop                                              ; $49d0: $00
	jr   c, jr_02f_49d3                              ; $49d1: $38 $00

jr_02f_49d3:
	di                                               ; $49d3: $f3
	nop                                              ; $49d4: $00
	or   a                                           ; $49d5: $b7
	add  a                                           ; $49d6: $87
	nop                                              ; $49d7: $00
	ld   b, $07                                      ; $49d8: $06 $07
	nop                                              ; $49da: $00
	ld   b, e                                        ; $49db: $43
	nop                                              ; $49dc: $00
	sbc  [hl]                                        ; $49dd: $9e
	nop                                              ; $49de: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49df: $cf
	add  c                                           ; $49e0: $81
	nop                                              ; $49e1: $00
	ld   [bc], a                                     ; $49e2: $02
	rrca                                             ; $49e3: $0f
	nop                                              ; $49e4: $00
	ld   c, $81                                      ; $49e5: $0e $81
	nop                                              ; $49e7: $00
	ld   [bc], a                                     ; $49e8: $02
	ret  nz                                          ; $49e9: $c0

	nop                                              ; $49ea: $00
	sub  b                                           ; $49eb: $90
	add  c                                           ; $49ec: $81
	nop                                              ; $49ed: $00
	ld   a, [bc]                                     ; $49ee: $0a
	ld   [$0400], sp                                 ; $49ef: $08 $00 $04
	nop                                              ; $49f2: $00
	ld   [hl], d                                     ; $49f3: $72
	nop                                              ; $49f4: $00
	ld   [hl], d                                     ; $49f5: $72
	nop                                              ; $49f6: $00
	inc  b                                           ; $49f7: $04
	nop                                              ; $49f8: $00
	ld   [$0081], sp                                 ; $49f9: $08 $81 $00
	ld   [bc], a                                     ; $49fc: $02
	ld   a, [hl]                                     ; $49fd: $7e
	nop                                              ; $49fe: $00
	dec  e                                           ; $49ff: $1d
	add  c                                           ; $4a00: $81
	nop                                              ; $4a01: $00
	ld   [bc], a                                     ; $4a02: $02
	dec  e                                           ; $4a03: $1d
	nop                                              ; $4a04: $00
	dec  e                                           ; $4a05: $1d
	add  c                                           ; $4a06: $81
	nop                                              ; $4a07: $00
	ld   [bc], a                                     ; $4a08: $02

jr_02f_4a09:
	dec  e                                           ; $4a09: $1d
	nop                                              ; $4a0a: $00
	ld   a, [hl]                                     ; $4a0b: $7e
	rst  $38                                         ; $4a0c: $ff
	nop                                              ; $4a0d: $00
	rst  $38                                         ; $4a0e: $ff
	nop                                              ; $4a0f: $00
	rst  $38                                         ; $4a10: $ff
	nop                                              ; $4a11: $00
	rst  $38                                         ; $4a12: $ff
	nop                                              ; $4a13: $00
	rst  $38                                         ; $4a14: $ff
	nop                                              ; $4a15: $00
	rst  $38                                         ; $4a16: $ff
	nop                                              ; $4a17: $00
	rst  $38                                         ; $4a18: $ff
	nop                                              ; $4a19: $00
	rst  $38                                         ; $4a1a: $ff
	nop                                              ; $4a1b: $00
	rst  $38                                         ; $4a1c: $ff
	nop                                              ; $4a1d: $00
	rst  $38                                         ; $4a1e: $ff
	nop                                              ; $4a1f: $00
	and  e                                           ; $4a20: $a3
	nop                                              ; $4a21: $00
	and  b                                           ; $4a22: $a0
	nop                                              ; $4a23: $00
	sbc  b                                           ; $4a24: $98
	nop                                              ; $4a25: $00
	ld   [bc], a                                     ; $4a26: $02
	ld   bc, $0100                                   ; $4a27: $01 $00 $01
	adc  e                                           ; $4a2a: $8b
	nop                                              ; $4a2b: $00
	ld   a, [bc]                                     ; $4a2c: $0a
	inc  bc                                          ; $4a2d: $03
	nop                                              ; $4a2e: $00
	inc  b                                           ; $4a2f: $04
	nop                                              ; $4a30: $00
	ld   [$d000], sp                                 ; $4a31: $08 $00 $d0
	nop                                              ; $4a34: $00
	ld   h, b                                        ; $4a35: $60
	ld   b, b                                        ; $4a36: $40
	nop                                              ; $4a37: $00
	add  h                                           ; $4a38: $84
	ld   b, b                                        ; $4a39: $40
	ld   bc, $ff00                                   ; $4a3a: $01 $00 $ff
	adc  e                                           ; $4a3d: $8b
	nop                                              ; $4a3e: $00
	add  hl, bc                                      ; $4a3f: $09
	add  b                                           ; $4a40: $80
	nop                                              ; $4a41: $00
	ld   h, b                                        ; $4a42: $60
	nop                                              ; $4a43: $00
	rra                                              ; $4a44: $1f
	nop                                              ; $4a45: $00
	ld   c, $30                                      ; $4a46: $0e $30
	ld   a, $00                                      ; $4a48: $3e $00

jr_02f_4a4a:
	add  e                                           ; $4a4a: $83
	inc  a                                           ; $4a4b: $3c
	nop                                              ; $4a4c: $00
	dec  a                                           ; $4a4d: $3d
	add  b                                           ; $4a4e: $80
	ld   bc, $fd0d                                   ; $4a4f: $01 $0d $fd
	nop                                              ; $4a52: $00
	inc  bc                                          ; $4a53: $03
	nop                                              ; $4a54: $00
	rlca                                             ; $4a55: $07
	nop                                              ; $4a56: $00
	jr   jr_02f_4a59                                 ; $4a57: $18 $00

jr_02f_4a59:
	ccf                                              ; $4a59: $3f
	rra                                              ; $4a5a: $1f
	ld   l, b                                        ; $4a5b: $68
	jr   z, jr_02f_4a4a                              ; $4a5c: $28 $ec

	ld   l, h                                        ; $4a5e: $6c
	add  b                                           ; $4a5f: $80
	ld   l, a                                        ; $4a60: $6f
	add  b                                           ; $4a61: $80
	ld   a, b                                        ; $4a62: $78
	add  b                                           ; $4a63: $80
	ld   a, a                                        ; $4a64: $7f
	add  b                                           ; $4a65: $80
	ld   [hl], b                                     ; $4a66: $70
	add  b                                           ; $4a67: $80
	jr   jr_02f_4a6a                                 ; $4a68: $18 $00

jr_02f_4a6a:
	nop                                              ; $4a6a: $00
	add  b                                           ; $4a6b: $80
	add  b                                           ; $4a6c: $80
	add  b                                           ; $4a6d: $80
	nop                                              ; $4a6e: $00
	add  b                                           ; $4a6f: $80
	add  b                                           ; $4a70: $80
	dec  bc                                          ; $4a71: $0b
	ld   hl, sp-$05                                  ; $4a72: $f8 $fb
	ldh  a, [$fc]                                    ; $4a74: $f0 $fc
	nop                                              ; $4a76: $00
	ld   d, b                                        ; $4a77: $50
	nop                                              ; $4a78: $00
	ld   d, d                                        ; $4a79: $52
	nop                                              ; $4a7a: $00
	adc  b                                           ; $4a7b: $88
	add  b                                           ; $4a7c: $80
	inc  b                                           ; $4a7d: $04
	add  b                                           ; $4a7e: $80
	nop                                              ; $4a7f: $00
	ld   [bc], a                                     ; $4a80: $02
	db   $10                                         ; $4a81: $10
	sub  b                                           ; $4a82: $90
	and  b                                           ; $4a83: $a0
	add  c                                           ; $4a84: $81
	jr   nz, jr_02f_4a09                             ; $4a85: $20 $82

	nop                                              ; $4a87: $00
	add  hl, bc                                      ; $4a88: $09
	ld   b, b                                        ; $4a89: $40
	ld   b, d                                        ; $4a8a: $42
	ld   b, b                                        ; $4a8b: $40
	ld   b, h                                        ; $4a8c: $44
	jr   nz, @+$2a                                   ; $4a8d: $20 $28

	nop                                              ; $4a8f: $00
	ld   c, $00                                      ; $4a90: $0e $00
	cp   $95                                         ; $4a92: $fe $95
	nop                                              ; $4a94: $00
	ld   a, [bc]                                     ; $4a95: $0a
	inc  b                                           ; $4a96: $04
	nop                                              ; $4a97: $00
	ld   b, $00                                      ; $4a98: $06 $00
	dec  e                                           ; $4a9a: $1d
	nop                                              ; $4a9b: $00
	rla                                              ; $4a9c: $17
	nop                                              ; $4a9d: $00
	inc  c                                           ; $4a9e: $0c
	nop                                              ; $4a9f: $00
	inc  b                                           ; $4aa0: $04
	sub  c                                           ; $4aa1: $91
	nop                                              ; $4aa2: $00
	ld   c, $08                                      ; $4aa3: $0e $08
	nop                                              ; $4aa5: $00
	inc  c                                           ; $4aa6: $0c
	nop                                              ; $4aa7: $00
	ld   a, d                                        ; $4aa8: $7a
	nop                                              ; $4aa9: $00
	ld   e, [hl]                                     ; $4aaa: $5e
	nop                                              ; $4aab: $00
	ld   [hl-], a                                    ; $4aac: $32
	nop                                              ; $4aad: $00
	dec  d                                           ; $4aae: $15
	nop                                              ; $4aaf: $00
	dec  b                                           ; $4ab0: $05
	nop                                              ; $4ab1: $00
	ld   [bc], a                                     ; $4ab2: $02
	adc  l                                           ; $4ab3: $8d
	nop                                              ; $4ab4: $00
	add  b                                           ; $4ab5: $80
	ld   c, $ff                                      ; $4ab6: $0e $ff
	nop                                              ; $4ab8: $00
	rst  $38                                         ; $4ab9: $ff
	nop                                              ; $4aba: $00
	rst  $38                                         ; $4abb: $ff
	nop                                              ; $4abc: $00
	rst  $38                                         ; $4abd: $ff
	nop                                              ; $4abe: $00
	rst  $38                                         ; $4abf: $ff
	nop                                              ; $4ac0: $00
	rst  $38                                         ; $4ac1: $ff
	nop                                              ; $4ac2: $00
	rst  $38                                         ; $4ac3: $ff
	nop                                              ; $4ac4: $00
	rst  $38                                         ; $4ac5: $ff
	nop                                              ; $4ac6: $00
	rst  $38                                         ; $4ac7: $ff
	nop                                              ; $4ac8: $00
	rst  $38                                         ; $4ac9: $ff
	nop                                              ; $4aca: $00
	rst  $38                                         ; $4acb: $ff
	nop                                              ; $4acc: $00
	rst  $38                                         ; $4acd: $ff
	nop                                              ; $4ace: $00
	rst  $38                                         ; $4acf: $ff
	nop                                              ; $4ad0: $00
	rst  $38                                         ; $4ad1: $ff
	nop                                              ; $4ad2: $00
	rst  $38                                         ; $4ad3: $ff
	nop                                              ; $4ad4: $00
	rst  $38                                         ; $4ad5: $ff
	nop                                              ; $4ad6: $00
	rst  $38                                         ; $4ad7: $ff
	nop                                              ; $4ad8: $00
	rst  $38                                         ; $4ad9: $ff
	nop                                              ; $4ada: $00
	rst  $38                                         ; $4adb: $ff
	nop                                              ; $4adc: $00
	rst  $38                                         ; $4add: $ff
	nop                                              ; $4ade: $00
	rst  $38                                         ; $4adf: $ff
	nop                                              ; $4ae0: $00
	rst  $38                                         ; $4ae1: $ff
	nop                                              ; $4ae2: $00
	rst  $38                                         ; $4ae3: $ff
	nop                                              ; $4ae4: $00
	rst  $38                                         ; $4ae5: $ff
	nop                                              ; $4ae6: $00
	rst  $38                                         ; $4ae7: $ff
	nop                                              ; $4ae8: $00
	di                                               ; $4ae9: $f3
	nop                                              ; $4aea: $00
	ld   bc, $9fff                                   ; $4aeb: $01 $ff $9f
	add  b                                           ; $4aee: $80
	sbc  [hl]                                        ; $4aef: $9e
	add  b                                           ; $4af0: $80
	sbc  l                                           ; $4af1: $9d
	add  b                                           ; $4af2: $80
	sbc  d                                           ; $4af3: $9a
	add  b                                           ; $4af4: $80
	sbc  l                                           ; $4af5: $9d
	add  b                                           ; $4af6: $80
	sbc  d                                           ; $4af7: $9a
	add  b                                           ; $4af8: $80
	sub  h                                           ; $4af9: $94
	add  b                                           ; $4afa: $80
	sbc  b                                           ; $4afb: $98
	ld   bc, $5434                                   ; $4afc: $01 $34 $54
	add  b                                           ; $4aff: $80
	and  b                                           ; $4b00: $a0
	add  b                                           ; $4b01: $80
	ld   b, b                                        ; $4b02: $40
	add  b                                           ; $4b03: $80
	add  b                                           ; $4b04: $80
	add  [hl]                                        ; $4b05: $86
	nop                                              ; $4b06: $00
	add  b                                           ; $4b07: $80
	dec  b                                           ; $4b08: $05
	add  b                                           ; $4b09: $80
	nop                                              ; $4b0a: $00
	add  b                                           ; $4b0b: $80
	ld   bc, $0080                                   ; $4b0c: $01 $80 $00
	add  hl, bc                                      ; $4b0f: $09
	inc  c                                           ; $4b10: $0c
	nop                                              ; $4b11: $00
	ld   e, $00                                      ; $4b12: $1e $00
	inc  sp                                          ; $4b14: $33
	nop                                              ; $4b15: $00
	ld   h, c                                        ; $4b16: $61
	rlca                                             ; $4b17: $07
	ld   [de], a                                     ; $4b18: $12
	ld   d, l                                        ; $4b19: $55
	add  b                                           ; $4b1a: $80
	xor  d                                           ; $4b1b: $aa
	add  b                                           ; $4b1c: $80
	ld   d, l                                        ; $4b1d: $55
	add  b                                           ; $4b1e: $80
	xor  d                                           ; $4b1f: $aa
	add  b                                           ; $4b20: $80
	ld   d, l                                        ; $4b21: $55
	add  b                                           ; $4b22: $80
	ld   a, [hl+]                                    ; $4b23: $2a
	add  b                                           ; $4b24: $80
	dec  d                                           ; $4b25: $15
	ld   [bc], a                                     ; $4b26: $02
	ld   c, d                                        ; $4b27: $4a
	adc  d                                           ; $4b28: $8a
	and  b                                           ; $4b29: $a0
	adc  l                                           ; $4b2a: $8d
	nop                                              ; $4b2b: $00
	nop                                              ; $4b2c: $00
	ld   h, b                                        ; $4b2d: $60
	adc  l                                           ; $4b2e: $8d
	ld   bc, $2003                                   ; $4b2f: $01 $03 $20
	inc  hl                                          ; $4b32: $23
	sub  d                                           ; $4b33: $92
	sub  e                                           ; $4b34: $93
	add  b                                           ; $4b35: $80
	jp   Jump_02f_6780                               ; $4b36: $c3 $80 $67


	add  b                                           ; $4b39: $80
	inc  sp                                          ; $4b3a: $33
	add  b                                           ; $4b3b: $80
	sbc  e                                           ; $4b3c: $9b
	inc  b                                           ; $4b3d: $04
	ld   c, l                                        ; $4b3e: $4d
	ld   c, a                                        ; $4b3f: $4f
	and  h                                           ; $4b40: $a4
	and  a                                           ; $4b41: $a7
	ld   b, d                                        ; $4b42: $42
	adc  l                                           ; $4b43: $8d
	add  b                                           ; $4b44: $80
	nop                                              ; $4b45: $00
	inc  a                                           ; $4b46: $3c
	add  l                                           ; $4b47: $85
	inc  bc                                          ; $4b48: $03
	add  b                                           ; $4b49: $80
	ldh  a, [rTMA]                                   ; $4b4a: $f0 $06
	add  e                                           ; $4b4c: $83
	di                                               ; $4b4d: $f3
	inc  a                                           ; $4b4e: $3c
	db   $fc                                         ; $4b4f: $fc
	db   $10                                         ; $4b50: $10
	ld   a, a                                        ; $4b51: $7f
	and  b                                           ; $4b52: $a0
	add  c                                           ; $4b53: $81
	add  c                                           ; $4b54: $81
	add  b                                           ; $4b55: $80
	add  b                                           ; $4b56: $80
	ld   [$80c1], sp                                 ; $4b57: $08 $c1 $80
	or   b                                           ; $4b5a: $b0
	ld   b, b                                        ; $4b5b: $40
	ld   c, h                                        ; $4b5c: $4c
	ldh  [$e2], a                                    ; $4b5d: $e0 $e2
	ld   a, b                                        ; $4b5f: $78
	ld   a, c                                        ; $4b60: $79
	add  b                                           ; $4b61: $80
	cp   $00                                         ; $4b62: $fe $00
	nop                                              ; $4b64: $00
	add  b                                           ; $4b65: $80
	add  b                                           ; $4b66: $80
	add  b                                           ; $4b67: $80
	ld   h, b                                        ; $4b68: $60
	ld   a, [bc]                                     ; $4b69: $0a
	sbc  b                                           ; $4b6a: $98
	jr   jr_02f_4bd4                                 ; $4b6b: $18 $67

	rlca                                             ; $4b6d: $07
	ld   [de], a                                     ; $4b6e: $12
	inc  bc                                          ; $4b6f: $03
	dec  c                                           ; $4b70: $0d
	nop                                              ; $4b71: $00
	add  e                                           ; $4b72: $83
	nop                                              ; $4b73: $00
	ret  nz                                          ; $4b74: $c0

	add  a                                           ; $4b75: $87
	add  b                                           ; $4b76: $80
	nop                                              ; $4b77: $00
	nop                                              ; $4b78: $00
	add  c                                           ; $4b79: $81
	add  b                                           ; $4b7a: $80
	ld   [bc], a                                     ; $4b7b: $02
	nop                                              ; $4b7c: $00
	add  b                                           ; $4b7d: $80
	ret  nz                                          ; $4b7e: $c0

	cp   l                                           ; $4b7f: $bd
	nop                                              ; $4b80: $00
	ld   bc, $94f4                                   ; $4b81: $01 $f4 $94
	add  b                                           ; $4b84: $80
	sbc  b                                           ; $4b85: $98
	add  b                                           ; $4b86: $80
	db   $10                                         ; $4b87: $10
	add  b                                           ; $4b88: $80
	adc  b                                           ; $4b89: $88
	add  b                                           ; $4b8a: $80
	db   $10                                         ; $4b8b: $10
	add  b                                           ; $4b8c: $80
	add  b                                           ; $4b8d: $80
	add  b                                           ; $4b8e: $80
	db   $10                                         ; $4b8f: $10
	add  b                                           ; $4b90: $80
	add  b                                           ; $4b91: $80
	nop                                              ; $4b92: $00
	ld   h, b                                        ; $4b93: $60
	adc  [hl]                                        ; $4b94: $8e
	ld   bc, $f880                                   ; $4b95: $01 $80 $f8
	nop                                              ; $4b98: $00
	inc  bc                                          ; $4b99: $03
	add  h                                           ; $4b9a: $84
	rst  $38                                         ; $4b9b: $ff
	add  b                                           ; $4b9c: $80
	xor  a                                           ; $4b9d: $af
	add  b                                           ; $4b9e: $80
	rst  $10                                         ; $4b9f: $d7
	add  b                                           ; $4ba0: $80
	xor  e                                           ; $4ba1: $ab
	ld   bc, $8546                                   ; $4ba2: $01 $46 $85

jr_02f_4ba5:
	add  b                                           ; $4ba5: $80
	adc  d                                           ; $4ba6: $8a
	add  b                                           ; $4ba7: $80
	add  l                                           ; $4ba8: $85
	add  b                                           ; $4ba9: $80
	add  d                                           ; $4baa: $82
	add  b                                           ; $4bab: $80
	add  c                                           ; $4bac: $81
	add  b                                           ; $4bad: $80
	add  d                                           ; $4bae: $82
	add  b                                           ; $4baf: $80
	add  c                                           ; $4bb0: $81
	add  b                                           ; $4bb1: $80
	add  b                                           ; $4bb2: $80
	nop                                              ; $4bb3: $00
	and  b                                           ; $4bb4: $a0
	adc  l                                           ; $4bb5: $8d
	nop                                              ; $4bb6: $00

jr_02f_4bb7:
	nop                                              ; $4bb7: $00
	ld   h, b                                        ; $4bb8: $60
	adc  l                                           ; $4bb9: $8d
	ld   bc, $4101                                   ; $4bba: $01 $01 $41
	ld   b, e                                        ; $4bbd: $43
	add  b                                           ; $4bbe: $80
	and  e                                           ; $4bbf: $a3
	add  b                                           ; $4bc0: $80
	ld   d, e                                        ; $4bc1: $53
	add  b                                           ; $4bc2: $80
	add  e                                           ; $4bc3: $83
	add  d                                           ; $4bc4: $82
	inc  bc                                          ; $4bc5: $03
	add  d                                           ; $4bc6: $82
	nop                                              ; $4bc7: $00
	nop                                              ; $4bc8: $00
	ld   b, e                                        ; $4bc9: $43
	adc  l                                           ; $4bca: $8d
	add  b                                           ; $4bcb: $80
	inc  bc                                          ; $4bcc: $03
	ld   l, a                                        ; $4bcd: $6f
	cp   a                                           ; $4bce: $bf
	ld   b, a                                        ; $4bcf: $47
	ld   e, a                                        ; $4bd0: $5f
	add  b                                           ; $4bd1: $80
	xor  a                                           ; $4bd2: $af
	inc  bc                                          ; $4bd3: $03

jr_02f_4bd4:
	ld   d, e                                        ; $4bd4: $53
	ld   d, a                                        ; $4bd5: $57
	rla                                              ; $4bd6: $17
	rst  $20                                         ; $4bd7: $e7
	add  b                                           ; $4bd8: $80
	dec  de                                          ; $4bd9: $1b
	ld   [bc], a                                     ; $4bda: $02
	ld   [bc], a                                     ; $4bdb: $02
	db   $fd                                         ; $4bdc: $fd
	db   $fc                                         ; $4bdd: $fc
	adc  a                                           ; $4bde: $8f
	rst  $38                                         ; $4bdf: $ff
	ld   b, $e0                                      ; $4be0: $06 $e0
	nop                                              ; $4be2: $00
	jr   jr_02f_4ba5                                 ; $4be3: $18 $c0

	call nz, $e3e0                                   ; $4be5: $c4 $e0 $e3
	add  b                                           ; $4be8: $80
	ld   hl, sp-$80                                  ; $4be9: $f8 $80
	cp   $83                                         ; $4beb: $fe $83
	rst  $38                                         ; $4bed: $ff
	add  [hl]                                        ; $4bee: $86
	nop                                              ; $4bef: $00
	ld   [$00c0], sp                                 ; $4bf0: $08 $c0 $00
	jr   nz, jr_02f_4bf5                             ; $4bf3: $20 $00

jr_02f_4bf5:
	jr   jr_02f_4bb7                                 ; $4bf5: $18 $c0

	add  $f0                                         ; $4bf7: $c6 $f0
	ld   c, $bd                                      ; $4bf9: $0e $bd
	nop                                              ; $4bfb: $00
	ld   b, c                                        ; $4bfc: $41
	nop                                              ; $4bfd: $00
	rlca                                             ; $4bfe: $07
	db   $d3                                         ; $4bff: $d3
	rlca                                             ; $4c00: $07
	ld   bc, $0300                                   ; $4c01: $01 $00 $03
	inc  b                                           ; $4c04: $04
	ld   bc, $8016                                   ; $4c05: $01 $16 $80
	add  a                                           ; $4c08: $87
	dec  b                                           ; $4c09: $05
	inc  bc                                          ; $4c0a: $03
	inc  de                                          ; $4c0b: $13
	inc  bc                                          ; $4c0c: $03
	inc  b                                           ; $4c0d: $04
	ld   bc, $8016                                   ; $4c0e: $01 $16 $80
	add  a                                           ; $4c11: $87
	ld   [bc], a                                     ; $4c12: $02
	inc  bc                                          ; $4c13: $03
	dec  b                                           ; $4c14: $05
	jp   $0089                                       ; $4c15: $c3 $89 $00


	ld   [$17c3], sp                                 ; $4c18: $08 $c3 $17
	ld   bc, $0107                                   ; $4c1b: $01 $07 $01
	rlca                                             ; $4c1e: $07
	ld   bc, $0403                                   ; $4c1f: $01 $03 $04
	add  c                                           ; $4c22: $81
	ld   bc, $1600                                   ; $4c23: $01 $00 $16
	add  d                                           ; $4c26: $82
	add  a                                           ; $4c27: $87
	inc  bc                                          ; $4c28: $03
	db   $10                                         ; $4c29: $10
	inc  de                                          ; $4c2a: $13
	dec  d                                           ; $4c2b: $15
	db   $d3                                         ; $4c2c: $d3
	adc  c                                           ; $4c2d: $89
	nop                                              ; $4c2e: $00
	inc  d                                           ; $4c2f: $14
	db   $d3                                         ; $4c30: $d3
	rlca                                             ; $4c31: $07
	ld   bc, $0121                                   ; $4c32: $01 $21 $01
	inc  bc                                          ; $4c35: $03
	ld   bc, $010f                                   ; $4c36: $01 $0f $01
	ccf                                              ; $4c39: $3f
	inc  b                                           ; $4c3a: $04
	nop                                              ; $4c3b: $00
	ld   bc, $0107                                   ; $4c3c: $01 $07 $01
	rlca                                             ; $4c3f: $07
	ld   bc, $1207                                   ; $4c40: $01 $07 $12
	inc  b                                           ; $4c43: $04
	jp   nc, $0089                                   ; $4c44: $d2 $89 $00

	add  hl, bc                                      ; $4c47: $09
	ld   b, c                                        ; $4c48: $41
	sub  l                                           ; $4c49: $95
	ld   bc, $01d1                                   ; $4c4a: $01 $d1 $01
	inc  bc                                          ; $4c4d: $03
	ld   bc, $010f                                   ; $4c4e: $01 $0f $01
	db   $db                                         ; $4c51: $db
	add  b                                           ; $4c52: $80
	nop                                              ; $4c53: $00
	ld   [$0192], sp                                 ; $4c54: $08 $92 $01
	inc  bc                                          ; $4c57: $03
	add  c                                           ; $4c58: $81
	ld   b, $11                                      ; $4c59: $06 $11
	ld   b, $01                                      ; $4c5b: $06 $01
	db   $d3                                         ; $4c5d: $d3
	adc  c                                           ; $4c5e: $89
	nop                                              ; $4c5f: $00
	ld   bc, $17d2                                   ; $4c60: $01 $d2 $17
	add  b                                           ; $4c63: $80
	ld   bc, $0709                                   ; $4c64: $01 $09 $07
	ld   h, l                                        ; $4c67: $65
	rrca                                             ; $4c68: $0f
	ld   l, h                                        ; $4c69: $6c
	ld   bc, $07de                                   ; $4c6a: $01 $de $07
	sbc  $10                                         ; $4c6d: $de $10
	ld   bc, $1681                                   ; $4c6f: $01 $81 $16
	inc  bc                                          ; $4c72: $03
	inc  de                                          ; $4c73: $13
	dec  b                                           ; $4c74: $05
	sub  d                                           ; $4c75: $92
	ld   b, c                                        ; $4c76: $41
	adc  c                                           ; $4c77: $89
	nop                                              ; $4c78: $00
	inc  d                                           ; $4c79: $14
	ld   b, b                                        ; $4c7a: $40
	ld   e, c                                        ; $4c7b: $59
	inc  bc                                          ; $4c7c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c7d: $cf
	rlca                                             ; $4c7e: $07
	rla                                              ; $4c7f: $17
	rlca                                             ; $4c80: $07
	ld   d, $01                                      ; $4c81: $16 $01
	cp   $07                                         ; $4c83: $fe $07
	xor  $14                                         ; $4c85: $ee $14
	db   $e4                                         ; $4c87: $e4
	ld   [hl], e                                     ; $4c88: $73
	inc  bc                                          ; $4c89: $03
	add  h                                           ; $4c8a: $84
	inc  b                                           ; $4c8b: $04
	inc  d                                           ; $4c8c: $14
	inc  b                                           ; $4c8d: $04
	jp   nc, $0089                                   ; $4c8e: $d2 $89 $00

	inc  d                                           ; $4c91: $14
	db   $d3                                         ; $4c92: $d3
	ld   a, [$8c03]                                  ; $4c93: $fa $03 $8c
	ld   [hl], d                                     ; $4c96: $72
	ld   bc, $0007                                   ; $4c97: $01 $07 $00
	ld   [hl], h                                     ; $4c9a: $74
	sbc  l                                           ; $4c9b: $9d
	rlca                                             ; $4c9c: $07
	xor  $00                                         ; $4c9d: $ee $00
	add  $01                                         ; $4c9f: $c6 $01
	inc  bc                                          ; $4ca1: $03
	ld   bc, $ce0f                                   ; $4ca2: $01 $0f $ce
	dec  b                                           ; $4ca5: $05
	db   $d3                                         ; $4ca6: $d3
	adc  c                                           ; $4ca7: $89
	nop                                              ; $4ca8: $00
	inc  d                                           ; $4ca9: $14
	call nc, $03ed                                   ; $4caa: $d4 $ed $03
	adc  h                                           ; $4cad: $8c
	ld   [hl], d                                     ; $4cae: $72
	nop                                              ; $4caf: $00
	ld   bc, $7407                                   ; $4cb0: $01 $07 $74
	db   $fd                                         ; $4cb3: $fd
	rlca                                             ; $4cb4: $07
	sbc  b                                           ; $4cb5: $98
	ld   bc, $01f1                                   ; $4cb6: $01 $f1 $01
	inc  bc                                          ; $4cb9: $03
	ld   bc, $fa0f                                   ; $4cba: $01 $0f $fa
	sub  e                                           ; $4cbd: $93
	ld   b, c                                        ; $4cbe: $41
	adc  c                                           ; $4cbf: $89
	nop                                              ; $4cc0: $00
	inc  d                                           ; $4cc1: $14
	db   $d3                                         ; $4cc2: $d3
	sbc  d                                           ; $4cc3: $9a
	inc  bc                                          ; $4cc4: $03
	adc  a                                           ; $4cc5: $8f
	rlca                                             ; $4cc6: $07
	ld   d, $01                                      ; $4cc7: $16 $01
	ld   de, $d801                                   ; $4cc9: $11 $01 $d8
	inc  bc                                          ; $4ccc: $03
	rlc  e                                           ; $4ccd: $cb $03
	ld   [bc], a                                     ; $4ccf: $02
	ld   bc, $0195                                   ; $4cd0: $01 $95 $01
	sub  a                                           ; $4cd3: $97
	sub  [hl]                                        ; $4cd4: $96
	sub  e                                           ; $4cd5: $93
	db   $d3                                         ; $4cd6: $d3
	adc  c                                           ; $4cd7: $89
	nop                                              ; $4cd8: $00
	db   $10                                         ; $4cd9: $10
	call nc, $0717                                   ; $4cda: $d4 $17 $07
	ld   de, $7507                                   ; $4cdd: $11 $07 $75
	rrca                                             ; $4ce0: $0f
	ld   a, h                                        ; $4ce1: $7c
	ld   bc, $03f8                                   ; $4ce2: $01 $f8 $03
	ld   a, [$e601]                                  ; $4ce5: $fa $01 $e6
	rst  $20                                         ; $4ce8: $e7
	ld   bc, $8007                                   ; $4ce9: $01 $07 $80
	rla                                              ; $4cec: $17
	ld   bc, $d200                                   ; $4ced: $01 $00 $d2
	adc  c                                           ; $4cf0: $89
	nop                                              ; $4cf1: $00
	inc  d                                           ; $4cf2: $14
	call nc, $0717                                   ; $4cf3: $d4 $17 $07
	ld   bc, $01d5                                   ; $4cf6: $01 $d5 $01
	inc  bc                                          ; $4cf9: $03
	ld   bc, $fbd5                                   ; $4cfa: $01 $d5 $fb
	inc  bc                                          ; $4cfd: $03
	db   $ed                                         ; $4cfe: $ed
	rlca                                             ; $4cff: $07
	inc  h                                           ; $4d00: $24
	ld   bc, $0103                                   ; $4d01: $01 $03 $01
	or   c                                           ; $4d04: $b1
	sub  h                                           ; $4d05: $94
	nop                                              ; $4d06: $00
	sub  $89                                         ; $4d07: $d6 $89
	nop                                              ; $4d09: $00
	inc  d                                           ; $4d0a: $14
	jp   nz, $0711                                   ; $4d0b: $c2 $11 $07

	ld   bc, $01f5                                   ; $4d0e: $01 $f5 $01
	inc  bc                                          ; $4d11: $03
	ld   bc, $9bf5                                   ; $4d12: $01 $f5 $9b
	inc  bc                                          ; $4d15: $03
	sbc  d                                           ; $4d16: $9a
	ld   bc, $01d5                                   ; $4d17: $01 $d5 $01
	inc  bc                                          ; $4d1a: $03
	ld   bc, $00c6                                   ; $4d1b: $01 $c6 $00
	inc  bc                                          ; $4d1e: $03
	add  $89                                         ; $4d1f: $c6 $89
	nop                                              ; $4d21: $00
	ld   a, [bc]                                     ; $4d22: $0a
	jp   nc, $0393                                   ; $4d23: $d2 $93 $03

	sub  c                                           ; $4d26: $91
	db   $10                                         ; $4d27: $10
	ld   d, $06                                      ; $4d28: $16 $06
	rlca                                             ; $4d2a: $07
	ld   bc, $0106                                   ; $4d2b: $01 $06 $01
	add  d                                           ; $4d2e: $82
	inc  b                                           ; $4d2f: $04
	ld   bc, $1601                                   ; $4d30: $01 $01 $16
	add  b                                           ; $4d33: $80
	add  a                                           ; $4d34: $87
	ld   bc, $c603                                   ; $4d35: $01 $03 $c6
	adc  c                                           ; $4d38: $89
	nop                                              ; $4d39: $00
	inc  d                                           ; $4d3a: $14
	jp   nz, $0110                                   ; $4d3b: $c2 $10 $01

	inc  sp                                          ; $4d3e: $33
	ld   bc, $2403                                   ; $4d3f: $01 $03 $24
	db   $10                                         ; $4d42: $10
	inc  b                                           ; $4d43: $04
	nop                                              ; $4d44: $00
	ld   b, $00                                      ; $4d45: $06 $00
	scf                                              ; $4d47: $37
	rlca                                             ; $4d48: $07
	ld   bc, $9730                                   ; $4d49: $01 $30 $97
	add  c                                           ; $4d4c: $81
	ld   b, $03                                      ; $4d4d: $06 $03
	add  $89                                         ; $4d4f: $c6 $89
	nop                                              ; $4d51: $00
	inc  d                                           ; $4d52: $14
	jp   nc, $0192                                   ; $4d53: $d2 $92 $01

	sub  l                                           ; $4d56: $95
	ld   l, $01                                      ; $4d57: $2e $01
	rlca                                             ; $4d59: $07
	ld   bc, $0103                                   ; $4d5a: $01 $03 $01
	add  hl, hl                                      ; $4d5d: $29
	ld   [bc], a                                     ; $4d5e: $02
	rlca                                             ; $4d5f: $07
	add  d                                           ; $4d60: $82
	inc  bc                                          ; $4d61: $03
	ld   bc, $0107                                   ; $4d62: $01 $07 $01
	inc  bc                                          ; $4d65: $03
	add  b                                           ; $4d66: $80
	sub  $89                                         ; $4d67: $d6 $89
	nop                                              ; $4d69: $00
	inc  d                                           ; $4d6a: $14
	db   $d3                                         ; $4d6b: $d3
	nop                                              ; $4d6c: $00
	rlca                                             ; $4d6d: $07
	db   $10                                         ; $4d6e: $10
	adc  $01                                         ; $4d6f: $ce $01
	rlca                                             ; $4d71: $07
	ld   bc, $0103                                   ; $4d72: $01 $03 $01
	reti                                             ; $4d75: $d9


	nop                                              ; $4d76: $00
	sub  a                                           ; $4d77: $97
	jr   nz, jr_02f_4d7d                             ; $4d78: $20 $03

	ld   bc, $0107                                   ; $4d7a: $01 $07 $01

jr_02f_4d7d:
	inc  bc                                          ; $4d7d: $03
	and  b                                           ; $4d7e: $a0
	add  $89                                         ; $4d7f: $c6 $89
	nop                                              ; $4d81: $00
	add  hl, bc                                      ; $4d82: $09
	jp   nc, $0701                                   ; $4d83: $d2 $01 $07

	ld   bc, $0107                                   ; $4d86: $01 $07 $01
	rlca                                             ; $4d89: $07
	ld   bc, $0403                                   ; $4d8a: $01 $03 $04
	add  c                                           ; $4d8d: $81
	ld   bc, $1600                                   ; $4d8e: $01 $00 $16
	add  d                                           ; $4d91: $82
	add  a                                           ; $4d92: $87
	ld   [bc], a                                     ; $4d93: $02
	db   $10                                         ; $4d94: $10
	inc  bc                                          ; $4d95: $03
	sub  $89                                         ; $4d96: $d6 $89
	nop                                              ; $4d98: $00
	ld   c, $d3                                      ; $4d99: $0e $d3
	rlca                                             ; $4d9b: $07
	ld   bc, $0107                                   ; $4d9c: $01 $07 $01
	rlca                                             ; $4d9f: $07
	ld   bc, $0403                                   ; $4da0: $01 $03 $04
	ld   bc, $8516                                   ; $4da3: $01 $16 $85
	ld   bc, $8103                                   ; $4da6: $01 $03 $81
	add  c                                           ; $4da9: $81
	ld   b, $02                                      ; $4daa: $06 $02
	inc  de                                          ; $4dac: $13
	inc  b                                           ; $4dad: $04
	jp   nc, $00ff                                   ; $4dae: $d2 $ff $00

	rst  $38                                         ; $4db1: $ff
	nop                                              ; $4db2: $00
	rst  $38                                         ; $4db3: $ff
	nop                                              ; $4db4: $00
	add  $00                                         ; $4db5: $c6 $00
	dec  l                                           ; $4db7: $2d
	nop                                              ; $4db8: $00
	inc  bc                                          ; $4db9: $03
	ld   a, [hl+]                                    ; $4dba: $2a
	ld   bc, $0107                                   ; $4dbb: $01 $07 $01
	adc  l                                           ; $4dbe: $8d
	nop                                              ; $4dbf: $00
	ld   bc, $1fcd                                   ; $4dc0: $01 $cd $1f
	adc  c                                           ; $4dc3: $89
	nop                                              ; $4dc4: $00
	inc  d                                           ; $4dc5: $14
	pop  de                                          ; $4dc6: $d1
	ld   a, $01                                      ; $4dc7: $3e $01
	inc  bc                                          ; $4dc9: $03
	ld   bc, $2437                                   ; $4dca: $01 $37 $24
	ld   bc, $0203                                   ; $4dcd: $01 $03 $02
	ld   bc, $0203                                   ; $4dd0: $01 $03 $02
	ld   bc, $0203                                   ; $4dd3: $01 $03 $02
	ld   bc, $2b03                                   ; $4dd6: $01 $03 $2b
	ld   b, $d0                                      ; $4dd9: $06 $d0
	adc  c                                           ; $4ddb: $89
	nop                                              ; $4ddc: $00
	inc  d                                           ; $4ddd: $14
	pop  de                                          ; $4dde: $d1
	ld   a, [hl-]                                    ; $4ddf: $3a
	ld   bc, $0107                                   ; $4de0: $01 $07 $01
	scf                                              ; $4de3: $37
	inc  h                                           ; $4de4: $24
	ld   bc, $0203                                   ; $4de5: $01 $03 $02
	ld   bc, $0203                                   ; $4de8: $01 $03 $02
	ld   bc, $0203                                   ; $4deb: $01 $03 $02
	ld   bc, $2b03                                   ; $4dee: $01 $03 $2b
	ld   b, $d0                                      ; $4df1: $06 $d0
	adc  c                                           ; $4df3: $89
	nop                                              ; $4df4: $00
	inc  d                                           ; $4df5: $14
	pop  de                                          ; $4df6: $d1
	jr   c, jr_02f_4dfa                              ; $4df7: $38 $01

	dec  b                                           ; $4df9: $05

jr_02f_4dfa:
	ld   bc, $2437                                   ; $4dfa: $01 $37 $24
	ld   bc, $0203                                   ; $4dfd: $01 $03 $02
	ld   bc, $0203                                   ; $4e00: $01 $03 $02
	ld   bc, $0203                                   ; $4e03: $01 $03 $02
	ld   bc, $2b03                                   ; $4e06: $01 $03 $2b
	ld   b, $d0                                      ; $4e09: $06 $d0
	adc  c                                           ; $4e0b: $89
	nop                                              ; $4e0c: $00
	inc  d                                           ; $4e0d: $14
	pop  de                                          ; $4e0e: $d1
	ld   [hl], $01                                   ; $4e0f: $36 $01
	inc  bc                                          ; $4e11: $03
	ld   bc, $243f                                   ; $4e12: $01 $3f $24
	ld   bc, $0203                                   ; $4e15: $01 $03 $02
	ld   bc, $0203                                   ; $4e18: $01 $03 $02
	ld   bc, $0203                                   ; $4e1b: $01 $03 $02
	ld   bc, $2b03                                   ; $4e1e: $01 $03 $2b
	ld   b, $d0                                      ; $4e21: $06 $d0
	adc  c                                           ; $4e23: $89
	nop                                              ; $4e24: $00
	inc  d                                           ; $4e25: $14
	pop  de                                          ; $4e26: $d1
	ld   [hl-], a                                    ; $4e27: $32
	ld   bc, $0103                                   ; $4e28: $01 $03 $01
	dec  sp                                          ; $4e2b: $3b
	inc  h                                           ; $4e2c: $24
	ld   bc, $0203                                   ; $4e2d: $01 $03 $02
	ld   bc, $0203                                   ; $4e30: $01 $03 $02
	ld   bc, $0203                                   ; $4e33: $01 $03 $02
	ld   bc, $2b03                                   ; $4e36: $01 $03 $2b
	ret  z                                           ; $4e39: $c8

	ld   e, $89                                      ; $4e3a: $1e $89
	nop                                              ; $4e3c: $00
	inc  d                                           ; $4e3d: $14
	pop  de                                          ; $4e3e: $d1
	ld   c, $01                                      ; $4e3f: $0e $01
	inc  bc                                          ; $4e41: $03
	ld   bc, $2407                                   ; $4e42: $01 $07 $24
	ld   bc, $0203                                   ; $4e45: $01 $03 $02
	ld   bc, $0203                                   ; $4e48: $01 $03 $02
	ld   bc, $0203                                   ; $4e4b: $01 $03 $02
	ld   bc, $e003                                   ; $4e4e: $01 $03 $e0
	ld   bc, $891c                                   ; $4e51: $01 $1c $89
	nop                                              ; $4e54: $00
	inc  bc                                          ; $4e55: $03
	jp   c, $0103                                    ; $4e56: $da $03 $01

	rrca                                             ; $4e59: $0f
	adc  h                                           ; $4e5a: $8c
	nop                                              ; $4e5b: $00
	ld   [bc], a                                     ; $4e5c: $02
	ret  nz                                          ; $4e5d: $c0

	ld   bc, $8916                                   ; $4e5e: $01 $16 $89
	nop                                              ; $4e61: $00
	inc  d                                           ; $4e62: $14
	rst  $28                                         ; $4e63: $ef
	ld   bc, $0103                                   ; $4e64: $01 $03 $01
	rlca                                             ; $4e67: $07
	ld   bc, $0103                                   ; $4e68: $01 $03 $01
	rrca                                             ; $4e6b: $0f
	ld   bc, $0103                                   ; $4e6c: $01 $03 $01
	rlca                                             ; $4e6f: $07
	ld   bc, $0103                                   ; $4e70: $01 $03 $01
	rst  $38                                         ; $4e73: $ff
	ld   bc, $0103                                   ; $4e74: $01 $03 $01
	inc  e                                           ; $4e77: $1c
	adc  c                                           ; $4e78: $89
	nop                                              ; $4e79: $00
	inc  d                                           ; $4e7a: $14
	rst  JumpTable                                         ; $4e7b: $df
	ld   bc, $0103                                   ; $4e7c: $01 $03 $01
	rlca                                             ; $4e7f: $07
	ld   bc, $0103                                   ; $4e80: $01 $03 $01
	rrca                                             ; $4e83: $0f
	ld   bc, $0103                                   ; $4e84: $01 $03 $01
	rlca                                             ; $4e87: $07
	ld   bc, $0103                                   ; $4e88: $01 $03 $01
	rst  JumpTable                                         ; $4e8b: $df
	ld   bc, $0103                                   ; $4e8c: $01 $03 $01
	inc  c                                           ; $4e8f: $0c
	adc  c                                           ; $4e90: $89
	nop                                              ; $4e91: $00
	inc  d                                           ; $4e92: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e93: $cf
	ld   bc, $0103                                   ; $4e94: $01 $03 $01
	rlca                                             ; $4e97: $07
	ld   bc, $0103                                   ; $4e98: $01 $03 $01
	rrca                                             ; $4e9b: $0f
	ld   bc, $0103                                   ; $4e9c: $01 $03 $01
	rlca                                             ; $4e9f: $07
	ld   bc, $0103                                   ; $4ea0: $01 $03 $01
	ccf                                              ; $4ea3: $3f
	ld   bc, $0103                                   ; $4ea4: $01 $03 $01
	db   $fc                                         ; $4ea7: $fc
	adc  c                                           ; $4ea8: $89
	nop                                              ; $4ea9: $00
	inc  d                                           ; $4eaa: $14
	cp   a                                           ; $4eab: $bf
	ld   bc, $0103                                   ; $4eac: $01 $03 $01
	rlca                                             ; $4eaf: $07
	ld   bc, $0103                                   ; $4eb0: $01 $03 $01
	rrca                                             ; $4eb3: $0f
	ld   bc, $0103                                   ; $4eb4: $01 $03 $01
	rlca                                             ; $4eb7: $07
	ld   bc, $0103                                   ; $4eb8: $01 $03 $01
	xor  e                                           ; $4ebb: $ab
	ld   bc, $0103                                   ; $4ebc: $01 $03 $01
	jr   @-$75                                       ; $4ebf: $18 $89

	nop                                              ; $4ec1: $00
	inc  d                                           ; $4ec2: $14
	xor  a                                           ; $4ec3: $af
	ld   bc, $0103                                   ; $4ec4: $01 $03 $01
	rlca                                             ; $4ec7: $07
	ld   bc, $0103                                   ; $4ec8: $01 $03 $01
	rrca                                             ; $4ecb: $0f
	ld   bc, $0103                                   ; $4ecc: $01 $03 $01
	rlca                                             ; $4ecf: $07
	ld   bc, $0103                                   ; $4ed0: $01 $03 $01
	xor  e                                           ; $4ed3: $ab
	ld   bc, $0103                                   ; $4ed4: $01 $03 $01
	ld   [$0089], sp                                 ; $4ed7: $08 $89 $00
	dec  d                                           ; $4eda: $15
	sbc  a                                           ; $4edb: $9f
	ld   bc, $0103                                   ; $4edc: $01 $03 $01
	rlca                                             ; $4edf: $07
	ld   bc, $0103                                   ; $4ee0: $01 $03 $01
	rrca                                             ; $4ee3: $0f
	ld   bc, $0103                                   ; $4ee4: $01 $03 $01
	rlca                                             ; $4ee7: $07
	ld   bc, $0103                                   ; $4ee8: $01 $03 $01
	ld   l, e                                        ; $4eeb: $6b
	ld   bc, $0103                                   ; $4eec: $01 $03 $01
	db   $eb                                         ; $4eef: $eb
	inc  de                                          ; $4ef0: $13
	adc  b                                           ; $4ef1: $88
	nop                                              ; $4ef2: $00
	inc  d                                           ; $4ef3: $14
	adc  a                                           ; $4ef4: $8f
	ld   bc, $0103                                   ; $4ef5: $01 $03 $01
	rlca                                             ; $4ef8: $07
	ld   bc, $0103                                   ; $4ef9: $01 $03 $01
	rrca                                             ; $4efc: $0f
	ld   bc, $0103                                   ; $4efd: $01 $03 $01
	rlca                                             ; $4f00: $07
	ld   bc, $0103                                   ; $4f01: $01 $03 $01
	sub  a                                           ; $4f04: $97
	ld   bc, $0103                                   ; $4f05: $01 $03 $01
	inc  d                                           ; $4f08: $14
	adc  c                                           ; $4f09: $89
	nop                                              ; $4f0a: $00
	inc  d                                           ; $4f0b: $14
	ccf                                              ; $4f0c: $3f
	ld   bc, $0103                                   ; $4f0d: $01 $03 $01
	rlca                                             ; $4f10: $07
	ld   bc, $0103                                   ; $4f11: $01 $03 $01
	rrca                                             ; $4f14: $0f
	ld   bc, $0103                                   ; $4f15: $01 $03 $01
	rlca                                             ; $4f18: $07
	ld   bc, $0103                                   ; $4f19: $01 $03 $01
	scf                                              ; $4f1c: $37
	ld   bc, $0103                                   ; $4f1d: $01 $03 $01
	inc  b                                           ; $4f20: $04
	adc  c                                           ; $4f21: $89
	nop                                              ; $4f22: $00
	inc  d                                           ; $4f23: $14
	cpl                                              ; $4f24: $2f
	ld   bc, $0103                                   ; $4f25: $01 $03 $01
	rlca                                             ; $4f28: $07
	ld   bc, $0103                                   ; $4f29: $01 $03 $01
	rrca                                             ; $4f2c: $0f
	ld   bc, $0103                                   ; $4f2d: $01 $03 $01
	rlca                                             ; $4f30: $07
	ld   bc, $0103                                   ; $4f31: $01 $03 $01
	rst  $10                                         ; $4f34: $d7
	ld   bc, $0103                                   ; $4f35: $01 $03 $01
	db   $f4                                         ; $4f38: $f4
	adc  c                                           ; $4f39: $89
	nop                                              ; $4f3a: $00
	inc  b                                           ; $4f3b: $04
	dec  d                                           ; $4f3c: $15
	ld   bc, $0107                                   ; $4f3d: $01 $07 $01
	inc  bc                                          ; $4f40: $03
	adc  c                                           ; $4f41: $89
	nop                                              ; $4f42: $00
	inc  b                                           ; $4f43: $04
	inc  bc                                          ; $4f44: $03
	ld   [bc], a                                     ; $4f45: $02
	inc  b                                           ; $4f46: $04
	dec  de                                          ; $4f47: $1b
	rrca                                             ; $4f48: $0f
	rst  $38                                         ; $4f49: $ff
	nop                                              ; $4f4a: $00
	rst  $38                                         ; $4f4b: $ff
	nop                                              ; $4f4c: $00
	rst  $38                                         ; $4f4d: $ff
	nop                                              ; $4f4e: $00
	add  $00                                         ; $4f4f: $c6 $00
	dec  l                                           ; $4f51: $2d
	nop                                              ; $4f52: $00
	inc  bc                                          ; $4f53: $03
	ld   a, [hl+]                                    ; $4f54: $2a
	ld   bc, $0107                                   ; $4f55: $01 $07 $01
	adc  l                                           ; $4f58: $8d
	nop                                              ; $4f59: $00
	ld   bc, $e0cd                                   ; $4f5a: $01 $cd $e0
	adc  c                                           ; $4f5d: $89
	nop                                              ; $4f5e: $00
	inc  d                                           ; $4f5f: $14
	ld   l, $3e                                      ; $4f60: $2e $3e
	ld   bc, $0103                                   ; $4f62: $01 $03 $01
	scf                                              ; $4f65: $37
	inc  h                                           ; $4f66: $24
	ld   bc, $0203                                   ; $4f67: $01 $03 $02
	ld   bc, $0203                                   ; $4f6a: $01 $03 $02
	ld   bc, $0203                                   ; $4f6d: $01 $03 $02
	ld   bc, $2b03                                   ; $4f70: $01 $03 $2b
	ld   b, $2f                                      ; $4f73: $06 $2f
	adc  c                                           ; $4f75: $89
	nop                                              ; $4f76: $00
	inc  d                                           ; $4f77: $14
	ld   l, $3a                                      ; $4f78: $2e $3a
	ld   bc, $0107                                   ; $4f7a: $01 $07 $01
	scf                                              ; $4f7d: $37
	inc  h                                           ; $4f7e: $24
	ld   bc, $0203                                   ; $4f7f: $01 $03 $02
	ld   bc, $0203                                   ; $4f82: $01 $03 $02
	ld   bc, $0203                                   ; $4f85: $01 $03 $02
	ld   bc, $2b03                                   ; $4f88: $01 $03 $2b
	ld   b, $2f                                      ; $4f8b: $06 $2f
	adc  c                                           ; $4f8d: $89
	nop                                              ; $4f8e: $00
	inc  d                                           ; $4f8f: $14
	ld   l, $38                                      ; $4f90: $2e $38
	ld   bc, $0105                                   ; $4f92: $01 $05 $01
	scf                                              ; $4f95: $37
	inc  h                                           ; $4f96: $24
	ld   bc, $0203                                   ; $4f97: $01 $03 $02
	ld   bc, $0203                                   ; $4f9a: $01 $03 $02
	ld   bc, $0203                                   ; $4f9d: $01 $03 $02
	ld   bc, $2b03                                   ; $4fa0: $01 $03 $2b
	ld   b, $2f                                      ; $4fa3: $06 $2f
	adc  c                                           ; $4fa5: $89
	nop                                              ; $4fa6: $00
	inc  d                                           ; $4fa7: $14
	ld   l, $36                                      ; $4fa8: $2e $36
	ld   bc, $0103                                   ; $4faa: $01 $03 $01
	ccf                                              ; $4fad: $3f
	inc  h                                           ; $4fae: $24
	ld   bc, $0203                                   ; $4faf: $01 $03 $02
	ld   bc, $0203                                   ; $4fb2: $01 $03 $02
	ld   bc, $0203                                   ; $4fb5: $01 $03 $02
	ld   bc, $2b03                                   ; $4fb8: $01 $03 $2b
	ld   b, $2f                                      ; $4fbb: $06 $2f
	adc  c                                           ; $4fbd: $89
	nop                                              ; $4fbe: $00
	inc  d                                           ; $4fbf: $14
	ld   l, $32                                      ; $4fc0: $2e $32
	ld   bc, $0103                                   ; $4fc2: $01 $03 $01
	dec  sp                                          ; $4fc5: $3b
	inc  h                                           ; $4fc6: $24
	ld   bc, $0203                                   ; $4fc7: $01 $03 $02
	ld   bc, $0203                                   ; $4fca: $01 $03 $02
	ld   bc, $0203                                   ; $4fcd: $01 $03 $02
	ld   bc, $2b03                                   ; $4fd0: $01 $03 $2b
	ret  z                                           ; $4fd3: $c8

	pop  hl                                          ; $4fd4: $e1
	adc  c                                           ; $4fd5: $89
	nop                                              ; $4fd6: $00
	inc  d                                           ; $4fd7: $14
	ld   l, $0e                                      ; $4fd8: $2e $0e
	ld   bc, $0103                                   ; $4fda: $01 $03 $01
	rlca                                             ; $4fdd: $07
	inc  h                                           ; $4fde: $24
	ld   bc, $0203                                   ; $4fdf: $01 $03 $02
	ld   bc, $0203                                   ; $4fe2: $01 $03 $02
	ld   bc, $0203                                   ; $4fe5: $01 $03 $02
	ld   bc, $e003                                   ; $4fe8: $01 $03 $e0
	ld   bc, $89e3                                   ; $4feb: $01 $e3 $89
	nop                                              ; $4fee: $00
	inc  bc                                          ; $4fef: $03
	dec  h                                           ; $4ff0: $25
	inc  bc                                          ; $4ff1: $03
	ld   bc, $8c0f                                   ; $4ff2: $01 $0f $8c
	nop                                              ; $4ff5: $00
	ld   [bc], a                                     ; $4ff6: $02
	ret  nz                                          ; $4ff7: $c0

	ld   bc, $89e9                                   ; $4ff8: $01 $e9 $89
	nop                                              ; $4ffb: $00
	inc  d                                           ; $4ffc: $14
	db   $10                                         ; $4ffd: $10
	ld   bc, $0103                                   ; $4ffe: $01 $03 $01
	rlca                                             ; $5001: $07
	ld   bc, $0103                                   ; $5002: $01 $03 $01
	rrca                                             ; $5005: $0f
	ld   bc, $0103                                   ; $5006: $01 $03 $01
	rlca                                             ; $5009: $07
	ld   bc, $0103                                   ; $500a: $01 $03 $01
	rst  $38                                         ; $500d: $ff
	ld   bc, $0103                                   ; $500e: $01 $03 $01
	db   $e3                                         ; $5011: $e3
	adc  c                                           ; $5012: $89
	nop                                              ; $5013: $00
	inc  d                                           ; $5014: $14
	jr   nz, jr_02f_5018                             ; $5015: $20 $01

	inc  bc                                          ; $5017: $03

jr_02f_5018:
	ld   bc, $0107                                   ; $5018: $01 $07 $01
	inc  bc                                          ; $501b: $03
	ld   bc, $010f                                   ; $501c: $01 $0f $01
	inc  bc                                          ; $501f: $03
	ld   bc, $0107                                   ; $5020: $01 $07 $01
	inc  bc                                          ; $5023: $03
	ld   bc, $01df                                   ; $5024: $01 $df $01
	inc  bc                                          ; $5027: $03
	ld   bc, $89f3                                   ; $5028: $01 $f3 $89
	nop                                              ; $502b: $00
	inc  d                                           ; $502c: $14
	jr   nc, jr_02f_5030                             ; $502d: $30 $01

	inc  bc                                          ; $502f: $03

jr_02f_5030:
	ld   bc, $0107                                   ; $5030: $01 $07 $01
	inc  bc                                          ; $5033: $03
	ld   bc, $010f                                   ; $5034: $01 $0f $01
	inc  bc                                          ; $5037: $03
	ld   bc, $0107                                   ; $5038: $01 $07 $01
	inc  bc                                          ; $503b: $03
	ld   bc, $013f                  ; $503c: $01 $3f $01
	inc  bc                                          ; $503f: $03
	ld   bc, $8903                                   ; $5040: $01 $03 $89
	nop                                              ; $5043: $00
	inc  d                                           ; $5044: $14
	ld   b, b                                        ; $5045: $40
	ld   bc, $0103                                   ; $5046: $01 $03 $01
	rlca                                             ; $5049: $07
	ld   bc, $0103                                   ; $504a: $01 $03 $01
	rrca                                             ; $504d: $0f
	ld   bc, $0103                                   ; $504e: $01 $03 $01
	rlca                                             ; $5051: $07
	ld   bc, $0103                                   ; $5052: $01 $03 $01
	xor  e                                           ; $5055: $ab
	ld   bc, $0103                                   ; $5056: $01 $03 $01
	rst  $20                                         ; $5059: $e7
	adc  c                                           ; $505a: $89
	nop                                              ; $505b: $00
	inc  d                                           ; $505c: $14
	ld   d, b                                        ; $505d: $50
	ld   bc, $0103                                   ; $505e: $01 $03 $01
	rlca                                             ; $5061: $07
	ld   bc, $0103                                   ; $5062: $01 $03 $01
	rrca                                             ; $5065: $0f
	ld   bc, $0103                                   ; $5066: $01 $03 $01
	rlca                                             ; $5069: $07
	ld   bc, $0103                                   ; $506a: $01 $03 $01
	xor  e                                           ; $506d: $ab
	ld   bc, $0103                                   ; $506e: $01 $03 $01
	rst  $30                                         ; $5071: $f7
	adc  c                                           ; $5072: $89
	nop                                              ; $5073: $00
	inc  d                                           ; $5074: $14
	ld   h, b                                        ; $5075: $60
	ld   bc, $0103                                   ; $5076: $01 $03 $01
	rlca                                             ; $5079: $07
	ld   bc, $0103                                   ; $507a: $01 $03 $01
	rrca                                             ; $507d: $0f
	ld   bc, $0103                                   ; $507e: $01 $03 $01
	rlca                                             ; $5081: $07
	ld   bc, $0103                                   ; $5082: $01 $03 $01
	ld   l, e                                        ; $5085: $6b
	ld   bc, $0103                                   ; $5086: $01 $03 $01
	rlca                                             ; $5089: $07
	adc  c                                           ; $508a: $89
	nop                                              ; $508b: $00
	inc  d                                           ; $508c: $14
	ld   [hl], b                                     ; $508d: $70
	ld   bc, $0103                                   ; $508e: $01 $03 $01
	rlca                                             ; $5091: $07
	ld   bc, $0103                                   ; $5092: $01 $03 $01
	rrca                                             ; $5095: $0f
	ld   bc, $0103                                   ; $5096: $01 $03 $01
	rlca                                             ; $5099: $07
	ld   bc, $0103                                   ; $509a: $01 $03 $01
	sub  a                                           ; $509d: $97
	ld   bc, $0103                                   ; $509e: $01 $03 $01
	db   $eb                                         ; $50a1: $eb
	adc  c                                           ; $50a2: $89
	nop                                              ; $50a3: $00
	inc  d                                           ; $50a4: $14
	ret  nz                                          ; $50a5: $c0

	ld   bc, $0103                                   ; $50a6: $01 $03 $01
	rlca                                             ; $50a9: $07
	ld   bc, $0103                                   ; $50aa: $01 $03 $01
	rrca                                             ; $50ad: $0f
	ld   bc, $0103                                   ; $50ae: $01 $03 $01
	rlca                                             ; $50b1: $07
	ld   bc, $0103                                   ; $50b2: $01 $03 $01
	scf                                              ; $50b5: $37
	ld   bc, $0103                                   ; $50b6: $01 $03 $01
	ei                                               ; $50b9: $fb
	adc  c                                           ; $50ba: $89
	nop                                              ; $50bb: $00
	inc  d                                           ; $50bc: $14
	ret  nc                                          ; $50bd: $d0

	ld   bc, $0103                                   ; $50be: $01 $03 $01
	rlca                                             ; $50c1: $07
	ld   bc, $0103                                   ; $50c2: $01 $03 $01
	rrca                                             ; $50c5: $0f
	ld   bc, $0103                                   ; $50c6: $01 $03 $01
	rlca                                             ; $50c9: $07
	ld   bc, $0103                                   ; $50ca: $01 $03 $01
	rst  $10                                         ; $50cd: $d7
	ld   bc, $0103                                   ; $50ce: $01 $03 $01
	dec  bc                                          ; $50d1: $0b
	adc  c                                           ; $50d2: $89
	nop                                              ; $50d3: $00
	inc  b                                           ; $50d4: $04
	ld   [$0701], a                                  ; $50d5: $ea $01 $07
	ld   bc, $8903                                   ; $50d8: $01 $03 $89
	nop                                              ; $50db: $00
	inc  b                                           ; $50dc: $04
	inc  bc                                          ; $50dd: $03
	ld   [bc], a                                     ; $50de: $02
	inc  b                                           ; $50df: $04
	dec  de                                          ; $50e0: $1b
	ldh  a, [rIE]                                    ; $50e1: $f0 $ff
	nop                                              ; $50e3: $00
	rst  $38                                         ; $50e4: $ff
	nop                                              ; $50e5: $00
	rst  $38                                         ; $50e6: $ff
	nop                                              ; $50e7: $00
	add  $00                                         ; $50e8: $c6 $00
	dec  l                                           ; $50ea: $2d
	nop                                              ; $50eb: $00
	inc  bc                                          ; $50ec: $03
	ld   a, [hl+]                                    ; $50ed: $2a
	ld   bc, $0107                                   ; $50ee: $01 $07 $01
	adc  l                                           ; $50f1: $8d
	nop                                              ; $50f2: $00
	ld   bc, $e0cd                                   ; $50f3: $01 $cd $e0
	adc  c                                           ; $50f6: $89
	nop                                              ; $50f7: $00
	inc  d                                           ; $50f8: $14
	ld   l, $3e                                      ; $50f9: $2e $3e
	ld   bc, $0103                                   ; $50fb: $01 $03 $01
	scf                                              ; $50fe: $37
	inc  h                                           ; $50ff: $24
	ld   bc, $0203                                   ; $5100: $01 $03 $02
	ld   bc, $0203                                   ; $5103: $01 $03 $02
	ld   bc, $0203                                   ; $5106: $01 $03 $02
	ld   bc, $2b03                                   ; $5109: $01 $03 $2b
	ld   b, $2f                                      ; $510c: $06 $2f
	adc  c                                           ; $510e: $89
	nop                                              ; $510f: $00
	inc  d                                           ; $5110: $14
	ld   l, $3a                                      ; $5111: $2e $3a
	ld   bc, $0107                                   ; $5113: $01 $07 $01
	scf                                              ; $5116: $37
	inc  h                                           ; $5117: $24
	ld   bc, $0203                                   ; $5118: $01 $03 $02
	ld   bc, $0203                                   ; $511b: $01 $03 $02
	ld   bc, $0203                                   ; $511e: $01 $03 $02
	ld   bc, $2b03                                   ; $5121: $01 $03 $2b
	ld   b, $2f                                      ; $5124: $06 $2f
	adc  c                                           ; $5126: $89
	nop                                              ; $5127: $00
	inc  d                                           ; $5128: $14
	ld   l, $38                                      ; $5129: $2e $38
	ld   bc, $0105                                   ; $512b: $01 $05 $01
	scf                                              ; $512e: $37
	inc  h                                           ; $512f: $24
	ld   bc, $0203                                   ; $5130: $01 $03 $02
	ld   bc, $0203                                   ; $5133: $01 $03 $02
	ld   bc, $0203                                   ; $5136: $01 $03 $02
	ld   bc, $2b03                                   ; $5139: $01 $03 $2b
	ld   b, $2f                                      ; $513c: $06 $2f
	adc  c                                           ; $513e: $89
	nop                                              ; $513f: $00
	inc  d                                           ; $5140: $14
	ld   l, $36                                      ; $5141: $2e $36
	ld   bc, $0103                                   ; $5143: $01 $03 $01
	ccf                                              ; $5146: $3f
	inc  h                                           ; $5147: $24
	ld   bc, $0203                                   ; $5148: $01 $03 $02
	ld   bc, $0203                                   ; $514b: $01 $03 $02
	ld   bc, $0203                                   ; $514e: $01 $03 $02
	ld   bc, $2b03                                   ; $5151: $01 $03 $2b
	ld   b, $2f                                      ; $5154: $06 $2f
	adc  c                                           ; $5156: $89
	nop                                              ; $5157: $00
	inc  d                                           ; $5158: $14
	ld   l, $32                                      ; $5159: $2e $32
	ld   bc, $0103                                   ; $515b: $01 $03 $01
	dec  sp                                          ; $515e: $3b
	inc  h                                           ; $515f: $24
	ld   bc, $0203                                   ; $5160: $01 $03 $02
	ld   bc, $0203                                   ; $5163: $01 $03 $02
	ld   bc, $0203                                   ; $5166: $01 $03 $02
	ld   bc, $2b03                                   ; $5169: $01 $03 $2b
	ret  z                                           ; $516c: $c8

	pop  hl                                          ; $516d: $e1
	adc  c                                           ; $516e: $89
	nop                                              ; $516f: $00
	inc  d                                           ; $5170: $14
	ld   l, $0e                                      ; $5171: $2e $0e
	ld   bc, $0103                                   ; $5173: $01 $03 $01
	rlca                                             ; $5176: $07
	inc  h                                           ; $5177: $24
	ld   bc, $0203                                   ; $5178: $01 $03 $02
	ld   bc, $0203                                   ; $517b: $01 $03 $02
	ld   bc, $0203                                   ; $517e: $01 $03 $02
	ld   bc, $e003                                   ; $5181: $01 $03 $e0
	ld   bc, $89e3                                   ; $5184: $01 $e3 $89
	nop                                              ; $5187: $00
	inc  bc                                          ; $5188: $03
	dec  h                                           ; $5189: $25
	inc  bc                                          ; $518a: $03
	ld   bc, $8c0f                                   ; $518b: $01 $0f $8c
	nop                                              ; $518e: $00
	ld   [bc], a                                     ; $518f: $02
	ret  nz                                          ; $5190: $c0

	ld   bc, $89e9                                   ; $5191: $01 $e9 $89
	nop                                              ; $5194: $00
	inc  d                                           ; $5195: $14
	db   $10                                         ; $5196: $10
	ld   bc, $0103                                   ; $5197: $01 $03 $01
	rlca                                             ; $519a: $07
	ld   bc, $0103                                   ; $519b: $01 $03 $01
	rrca                                             ; $519e: $0f
	ld   bc, $0103                                   ; $519f: $01 $03 $01
	rlca                                             ; $51a2: $07
	ld   bc, $0103                                   ; $51a3: $01 $03 $01
	rst  $38                                         ; $51a6: $ff
	ld   bc, $0103                                   ; $51a7: $01 $03 $01
	db   $e3                                         ; $51aa: $e3
	adc  c                                           ; $51ab: $89
	nop                                              ; $51ac: $00
	inc  d                                           ; $51ad: $14
	jr   nz, jr_02f_51b1                             ; $51ae: $20 $01

	inc  bc                                          ; $51b0: $03

jr_02f_51b1:
	ld   bc, $0107                                   ; $51b1: $01 $07 $01
	inc  bc                                          ; $51b4: $03
	ld   bc, $010f                                   ; $51b5: $01 $0f $01
	inc  bc                                          ; $51b8: $03
	ld   bc, $0107                                   ; $51b9: $01 $07 $01
	inc  bc                                          ; $51bc: $03
	ld   bc, $01df                                   ; $51bd: $01 $df $01
	inc  bc                                          ; $51c0: $03
	ld   bc, $89f3                                   ; $51c1: $01 $f3 $89
	nop                                              ; $51c4: $00
	inc  d                                           ; $51c5: $14
	jr   nc, jr_02f_51c9                             ; $51c6: $30 $01

	inc  bc                                          ; $51c8: $03

jr_02f_51c9:
	ld   bc, $0107                                   ; $51c9: $01 $07 $01
	inc  bc                                          ; $51cc: $03
	ld   bc, $010f                                   ; $51cd: $01 $0f $01
	inc  bc                                          ; $51d0: $03
	ld   bc, $0107                                   ; $51d1: $01 $07 $01
	inc  bc                                          ; $51d4: $03
	ld   bc, $013f                  ; $51d5: $01 $3f $01
	inc  bc                                          ; $51d8: $03
	ld   bc, $8903                                   ; $51d9: $01 $03 $89
	nop                                              ; $51dc: $00
	inc  d                                           ; $51dd: $14
	ld   b, b                                        ; $51de: $40
	ld   bc, $0103                                   ; $51df: $01 $03 $01
	rlca                                             ; $51e2: $07
	ld   bc, $0103                                   ; $51e3: $01 $03 $01
	rrca                                             ; $51e6: $0f
	ld   bc, $0103                                   ; $51e7: $01 $03 $01
	rlca                                             ; $51ea: $07
	ld   bc, $0103                                   ; $51eb: $01 $03 $01
	xor  e                                           ; $51ee: $ab
	ld   bc, $0103                                   ; $51ef: $01 $03 $01
	rst  $20                                         ; $51f2: $e7
	adc  c                                           ; $51f3: $89
	nop                                              ; $51f4: $00
	inc  d                                           ; $51f5: $14
	ld   d, b                                        ; $51f6: $50
	ld   bc, $0103                                   ; $51f7: $01 $03 $01
	rlca                                             ; $51fa: $07
	ld   bc, $0103                                   ; $51fb: $01 $03 $01
	rrca                                             ; $51fe: $0f
	ld   bc, $0103                                   ; $51ff: $01 $03 $01
	rlca                                             ; $5202: $07
	ld   bc, $0103                                   ; $5203: $01 $03 $01
	xor  e                                           ; $5206: $ab
	ld   bc, $0103                                   ; $5207: $01 $03 $01
	rst  $30                                         ; $520a: $f7
	adc  c                                           ; $520b: $89
	nop                                              ; $520c: $00
	inc  d                                           ; $520d: $14
	ld   h, b                                        ; $520e: $60
	ld   bc, $0103                                   ; $520f: $01 $03 $01
	rlca                                             ; $5212: $07
	ld   bc, $0103                                   ; $5213: $01 $03 $01
	rrca                                             ; $5216: $0f
	ld   bc, $0103                                   ; $5217: $01 $03 $01
	rlca                                             ; $521a: $07
	ld   bc, $0103                                   ; $521b: $01 $03 $01
	ld   l, e                                        ; $521e: $6b
	ld   bc, $0103                                   ; $521f: $01 $03 $01
	rlca                                             ; $5222: $07
	adc  c                                           ; $5223: $89
	nop                                              ; $5224: $00
	inc  d                                           ; $5225: $14
	ld   [hl], b                                     ; $5226: $70
	ld   bc, $0103                                   ; $5227: $01 $03 $01
	rlca                                             ; $522a: $07
	ld   bc, $0103                                   ; $522b: $01 $03 $01
	rrca                                             ; $522e: $0f
	ld   bc, $0103                                   ; $522f: $01 $03 $01
	rlca                                             ; $5232: $07
	ld   bc, $0103                                   ; $5233: $01 $03 $01
	sub  a                                           ; $5236: $97
	ld   bc, $0103                                   ; $5237: $01 $03 $01
	db   $eb                                         ; $523a: $eb
	adc  c                                           ; $523b: $89
	nop                                              ; $523c: $00
	inc  d                                           ; $523d: $14
	ret  nz                                          ; $523e: $c0

	ld   bc, $0103                                   ; $523f: $01 $03 $01
	rlca                                             ; $5242: $07
	ld   bc, $0103                                   ; $5243: $01 $03 $01
	rrca                                             ; $5246: $0f
	ld   bc, $0103                                   ; $5247: $01 $03 $01
	rlca                                             ; $524a: $07
	ld   bc, $0103                                   ; $524b: $01 $03 $01
	scf                                              ; $524e: $37
	ld   bc, $0103                                   ; $524f: $01 $03 $01
	ei                                               ; $5252: $fb
	adc  c                                           ; $5253: $89
	nop                                              ; $5254: $00
	inc  d                                           ; $5255: $14
	ret  nc                                          ; $5256: $d0

	ld   bc, $0103                                   ; $5257: $01 $03 $01
	rlca                                             ; $525a: $07
	ld   bc, $0103                                   ; $525b: $01 $03 $01
	rrca                                             ; $525e: $0f
	ld   bc, $0103                                   ; $525f: $01 $03 $01
	rlca                                             ; $5262: $07
	ld   bc, $0103                                   ; $5263: $01 $03 $01
	rst  $10                                         ; $5266: $d7
	ld   bc, $0103                                   ; $5267: $01 $03 $01
	dec  bc                                          ; $526a: $0b
	adc  c                                           ; $526b: $89
	nop                                              ; $526c: $00
	inc  b                                           ; $526d: $04
	ld   [$0701], a                                  ; $526e: $ea $01 $07
	ld   bc, $8903                                   ; $5271: $01 $03 $89
	nop                                              ; $5274: $00
	inc  b                                           ; $5275: $04
	inc  bc                                          ; $5276: $03
	ld   [bc], a                                     ; $5277: $02
	inc  b                                           ; $5278: $04
	dec  de                                          ; $5279: $1b
	ldh  a, [rIE]                                    ; $527a: $f0 $ff
	nop                                              ; $527c: $00
	rst  $38                                         ; $527d: $ff
	nop                                              ; $527e: $00
	rst  $38                                         ; $527f: $ff
	nop                                              ; $5280: $00
	add  $00                                         ; $5281: $c6 $00
	dec  l                                           ; $5283: $2d
	nop                                              ; $5284: $00
	inc  bc                                          ; $5285: $03
	ld   a, [hl+]                                    ; $5286: $2a
	ld   bc, $0107                                   ; $5287: $01 $07 $01
	adc  l                                           ; $528a: $8d
	nop                                              ; $528b: $00
	ld   bc, $e0cd                                   ; $528c: $01 $cd $e0
	adc  c                                           ; $528f: $89
	nop                                              ; $5290: $00
	inc  d                                           ; $5291: $14
	ld   l, $3e                                      ; $5292: $2e $3e
	ld   bc, $0103                                   ; $5294: $01 $03 $01
	scf                                              ; $5297: $37
	inc  h                                           ; $5298: $24
	ld   bc, $0203                                   ; $5299: $01 $03 $02
	ld   bc, $0203                                   ; $529c: $01 $03 $02
	ld   bc, $0203                                   ; $529f: $01 $03 $02
	ld   bc, $2b03                                   ; $52a2: $01 $03 $2b
	ld   b, $2f                                      ; $52a5: $06 $2f
	adc  c                                           ; $52a7: $89
	nop                                              ; $52a8: $00
	inc  d                                           ; $52a9: $14
	ld   l, $3a                                      ; $52aa: $2e $3a
	ld   bc, $0107                                   ; $52ac: $01 $07 $01
	scf                                              ; $52af: $37
	inc  h                                           ; $52b0: $24
	ld   bc, $0203                                   ; $52b1: $01 $03 $02
	ld   bc, $0203                                   ; $52b4: $01 $03 $02
	ld   bc, $0203                                   ; $52b7: $01 $03 $02
	ld   bc, $2b03                                   ; $52ba: $01 $03 $2b
	ld   b, $2f                                      ; $52bd: $06 $2f
	adc  c                                           ; $52bf: $89
	nop                                              ; $52c0: $00
	inc  d                                           ; $52c1: $14
	ld   l, $38                                      ; $52c2: $2e $38
	ld   bc, $0105                                   ; $52c4: $01 $05 $01
	scf                                              ; $52c7: $37
	inc  h                                           ; $52c8: $24
	ld   bc, $0203                                   ; $52c9: $01 $03 $02
	ld   bc, $0203                                   ; $52cc: $01 $03 $02
	ld   bc, $0203                                   ; $52cf: $01 $03 $02
	ld   bc, $2b03                                   ; $52d2: $01 $03 $2b
	ld   b, $2f                                      ; $52d5: $06 $2f
	adc  c                                           ; $52d7: $89
	nop                                              ; $52d8: $00
	inc  d                                           ; $52d9: $14
	ld   l, $36                                      ; $52da: $2e $36
	ld   bc, $0103                                   ; $52dc: $01 $03 $01
	ccf                                              ; $52df: $3f
	inc  h                                           ; $52e0: $24
	ld   bc, $0203                                   ; $52e1: $01 $03 $02
	ld   bc, $0203                                   ; $52e4: $01 $03 $02
	ld   bc, $0203                                   ; $52e7: $01 $03 $02
	ld   bc, $2b03                                   ; $52ea: $01 $03 $2b
	ld   b, $2f                                      ; $52ed: $06 $2f
	adc  c                                           ; $52ef: $89
	nop                                              ; $52f0: $00
	inc  d                                           ; $52f1: $14
	ld   l, $32                                      ; $52f2: $2e $32
	ld   bc, $0103                                   ; $52f4: $01 $03 $01
	dec  sp                                          ; $52f7: $3b
	inc  h                                           ; $52f8: $24
	ld   bc, $0203                                   ; $52f9: $01 $03 $02
	ld   bc, $0203                                   ; $52fc: $01 $03 $02
	ld   bc, $0203                                   ; $52ff: $01 $03 $02
	ld   bc, $2b03                                   ; $5302: $01 $03 $2b
	ret  z                                           ; $5305: $c8

	pop  hl                                          ; $5306: $e1
	adc  c                                           ; $5307: $89
	nop                                              ; $5308: $00
	inc  d                                           ; $5309: $14
	ld   l, $0e                                      ; $530a: $2e $0e
	ld   bc, $0103                                   ; $530c: $01 $03 $01
	rlca                                             ; $530f: $07
	inc  h                                           ; $5310: $24
	ld   bc, $0203                                   ; $5311: $01 $03 $02
	ld   bc, $0203                                   ; $5314: $01 $03 $02
	ld   bc, $0203                                   ; $5317: $01 $03 $02
	ld   bc, $e003                                   ; $531a: $01 $03 $e0
	ld   bc, $89e3                                   ; $531d: $01 $e3 $89
	nop                                              ; $5320: $00
	inc  bc                                          ; $5321: $03
	dec  h                                           ; $5322: $25
	inc  bc                                          ; $5323: $03
	ld   bc, $8c0f                                   ; $5324: $01 $0f $8c
	nop                                              ; $5327: $00
	ld   [bc], a                                     ; $5328: $02
	ret  nz                                          ; $5329: $c0

	ld   bc, $89e9                                   ; $532a: $01 $e9 $89
	nop                                              ; $532d: $00
	inc  d                                           ; $532e: $14
	db   $10                                         ; $532f: $10
	ld   bc, $0103                                   ; $5330: $01 $03 $01
	rlca                                             ; $5333: $07
	ld   bc, $0103                                   ; $5334: $01 $03 $01
	rrca                                             ; $5337: $0f
	ld   bc, $0103                                   ; $5338: $01 $03 $01
	rlca                                             ; $533b: $07
	ld   bc, $0103                                   ; $533c: $01 $03 $01
	rst  $38                                         ; $533f: $ff
	ld   bc, $0103                                   ; $5340: $01 $03 $01
	db   $e3                                         ; $5343: $e3
	adc  c                                           ; $5344: $89
	nop                                              ; $5345: $00
	inc  d                                           ; $5346: $14
	jr   nz, jr_02f_534a                             ; $5347: $20 $01

	inc  bc                                          ; $5349: $03

jr_02f_534a:
	ld   bc, $0107                                   ; $534a: $01 $07 $01
	inc  bc                                          ; $534d: $03
	ld   bc, $010f                                   ; $534e: $01 $0f $01
	inc  bc                                          ; $5351: $03
	ld   bc, $0107                                   ; $5352: $01 $07 $01
	inc  bc                                          ; $5355: $03
	ld   bc, $01df                                   ; $5356: $01 $df $01
	inc  bc                                          ; $5359: $03
	ld   bc, $89f3                                   ; $535a: $01 $f3 $89
	nop                                              ; $535d: $00
	inc  d                                           ; $535e: $14
	jr   nc, jr_02f_5362                             ; $535f: $30 $01

	inc  bc                                          ; $5361: $03

jr_02f_5362:
	ld   bc, $0107                                   ; $5362: $01 $07 $01
	inc  bc                                          ; $5365: $03
	ld   bc, $010f                                   ; $5366: $01 $0f $01
	inc  bc                                          ; $5369: $03
	ld   bc, $0107                                   ; $536a: $01 $07 $01
	inc  bc                                          ; $536d: $03
	ld   bc, $013f                  ; $536e: $01 $3f $01
	inc  bc                                          ; $5371: $03
	ld   bc, $8903                                   ; $5372: $01 $03 $89
	nop                                              ; $5375: $00
	inc  d                                           ; $5376: $14
	ld   b, b                                        ; $5377: $40
	ld   bc, $0103                                   ; $5378: $01 $03 $01
	rlca                                             ; $537b: $07
	ld   bc, $0103                                   ; $537c: $01 $03 $01
	rrca                                             ; $537f: $0f
	ld   bc, $0103                                   ; $5380: $01 $03 $01
	rlca                                             ; $5383: $07
	ld   bc, $0103                                   ; $5384: $01 $03 $01
	xor  e                                           ; $5387: $ab
	ld   bc, $0103                                   ; $5388: $01 $03 $01
	rst  $20                                         ; $538b: $e7
	adc  c                                           ; $538c: $89
	nop                                              ; $538d: $00
	inc  d                                           ; $538e: $14
	ld   d, b                                        ; $538f: $50
	ld   bc, $0103                                   ; $5390: $01 $03 $01
	rlca                                             ; $5393: $07
	ld   bc, $0103                                   ; $5394: $01 $03 $01
	rrca                                             ; $5397: $0f
	ld   bc, $0103                                   ; $5398: $01 $03 $01
	rlca                                             ; $539b: $07
	ld   bc, $0103                                   ; $539c: $01 $03 $01
	xor  e                                           ; $539f: $ab
	ld   bc, $0103                                   ; $53a0: $01 $03 $01
	rst  $30                                         ; $53a3: $f7
	adc  c                                           ; $53a4: $89
	nop                                              ; $53a5: $00
	inc  d                                           ; $53a6: $14
	ld   h, b                                        ; $53a7: $60
	ld   bc, $0103                                   ; $53a8: $01 $03 $01
	rlca                                             ; $53ab: $07
	ld   bc, $0103                                   ; $53ac: $01 $03 $01
	rrca                                             ; $53af: $0f
	ld   bc, $0103                                   ; $53b0: $01 $03 $01
	rlca                                             ; $53b3: $07
	ld   bc, $0103                                   ; $53b4: $01 $03 $01
	ld   l, e                                        ; $53b7: $6b
	ld   bc, $0103                                   ; $53b8: $01 $03 $01
	rlca                                             ; $53bb: $07
	adc  c                                           ; $53bc: $89
	nop                                              ; $53bd: $00
	inc  d                                           ; $53be: $14
	ld   [hl], b                                     ; $53bf: $70
	ld   bc, $0103                                   ; $53c0: $01 $03 $01
	rlca                                             ; $53c3: $07
	ld   bc, $0103                                   ; $53c4: $01 $03 $01
	rrca                                             ; $53c7: $0f
	ld   bc, $0103                                   ; $53c8: $01 $03 $01
	rlca                                             ; $53cb: $07
	ld   bc, $0103                                   ; $53cc: $01 $03 $01
	sub  a                                           ; $53cf: $97
	ld   bc, $0103                                   ; $53d0: $01 $03 $01
	db   $eb                                         ; $53d3: $eb
	adc  c                                           ; $53d4: $89
	nop                                              ; $53d5: $00
	inc  d                                           ; $53d6: $14
	ret  nz                                          ; $53d7: $c0

	ld   bc, $0103                                   ; $53d8: $01 $03 $01
	rlca                                             ; $53db: $07
	ld   bc, $0103                                   ; $53dc: $01 $03 $01
	rrca                                             ; $53df: $0f
	ld   bc, $0103                                   ; $53e0: $01 $03 $01
	rlca                                             ; $53e3: $07
	ld   bc, $0103                                   ; $53e4: $01 $03 $01
	scf                                              ; $53e7: $37
	ld   bc, $0103                                   ; $53e8: $01 $03 $01
	ei                                               ; $53eb: $fb
	adc  c                                           ; $53ec: $89
	nop                                              ; $53ed: $00
	inc  d                                           ; $53ee: $14
	ret  nc                                          ; $53ef: $d0

	ld   bc, $0103                                   ; $53f0: $01 $03 $01
	rlca                                             ; $53f3: $07
	ld   bc, $0103                                   ; $53f4: $01 $03 $01
	rrca                                             ; $53f7: $0f
	ld   bc, $0103                                   ; $53f8: $01 $03 $01
	rlca                                             ; $53fb: $07
	ld   bc, $0103                                   ; $53fc: $01 $03 $01
	rst  $10                                         ; $53ff: $d7
	ld   bc, $0103                                   ; $5400: $01 $03 $01
	dec  bc                                          ; $5403: $0b
	adc  c                                           ; $5404: $89
	nop                                              ; $5405: $00
	inc  b                                           ; $5406: $04
	ld   [$0701], a                                  ; $5407: $ea $01 $07
	ld   bc, $8903                                   ; $540a: $01 $03 $89
	nop                                              ; $540d: $00
	inc  b                                           ; $540e: $04
	inc  bc                                          ; $540f: $03
	ld   [bc], a                                     ; $5410: $02
	inc  b                                           ; $5411: $04
	dec  de                                          ; $5412: $1b
	ldh  a, [rIE]                                    ; $5413: $f0 $ff
	nop                                              ; $5415: $00
	rst  $38                                         ; $5416: $ff
	nop                                              ; $5417: $00
	rst  $38                                         ; $5418: $ff
	nop                                              ; $5419: $00
	add  $00                                         ; $541a: $c6 $00
	dec  l                                           ; $541c: $2d
	nop                                              ; $541d: $00
	inc  bc                                          ; $541e: $03
	ld   a, [hl+]                                    ; $541f: $2a
	ld   bc, $0107                                   ; $5420: $01 $07 $01
	adc  l                                           ; $5423: $8d
	nop                                              ; $5424: $00
	ld   bc, $e0cd                                   ; $5425: $01 $cd $e0
	adc  c                                           ; $5428: $89
	nop                                              ; $5429: $00
	inc  d                                           ; $542a: $14
	ld   l, $3e                                      ; $542b: $2e $3e
	ld   bc, $0103                                   ; $542d: $01 $03 $01
	scf                                              ; $5430: $37
	inc  h                                           ; $5431: $24
	ld   bc, $0203                                   ; $5432: $01 $03 $02
	ld   bc, $0203                                   ; $5435: $01 $03 $02
	ld   bc, $0203                                   ; $5438: $01 $03 $02
	ld   bc, $2b03                                   ; $543b: $01 $03 $2b
	ld   b, $2f                                      ; $543e: $06 $2f
	adc  c                                           ; $5440: $89
	nop                                              ; $5441: $00
	inc  d                                           ; $5442: $14
	ld   l, $3a                                      ; $5443: $2e $3a
	ld   bc, $0107                                   ; $5445: $01 $07 $01
	scf                                              ; $5448: $37
	inc  h                                           ; $5449: $24
	ld   bc, $0203                                   ; $544a: $01 $03 $02
	ld   bc, $0203                                   ; $544d: $01 $03 $02
	ld   bc, $0203                                   ; $5450: $01 $03 $02
	ld   bc, $2b03                                   ; $5453: $01 $03 $2b
	ld   b, $2f                                      ; $5456: $06 $2f
	adc  c                                           ; $5458: $89
	nop                                              ; $5459: $00
	inc  d                                           ; $545a: $14
	ld   l, $38                                      ; $545b: $2e $38
	ld   bc, $0105                                   ; $545d: $01 $05 $01
	scf                                              ; $5460: $37
	inc  h                                           ; $5461: $24
	ld   bc, $0203                                   ; $5462: $01 $03 $02
	ld   bc, $0203                                   ; $5465: $01 $03 $02
	ld   bc, $0203                                   ; $5468: $01 $03 $02
	ld   bc, $2b03                                   ; $546b: $01 $03 $2b
	ld   b, $2f                                      ; $546e: $06 $2f
	adc  c                                           ; $5470: $89
	nop                                              ; $5471: $00
	inc  d                                           ; $5472: $14
	ld   l, $36                                      ; $5473: $2e $36
	ld   bc, $0103                                   ; $5475: $01 $03 $01
	ccf                                              ; $5478: $3f
	inc  h                                           ; $5479: $24
	ld   bc, $0203                                   ; $547a: $01 $03 $02
	ld   bc, $0203                                   ; $547d: $01 $03 $02
	ld   bc, $0203                                   ; $5480: $01 $03 $02
	ld   bc, $2b03                                   ; $5483: $01 $03 $2b
	ld   b, $2f                                      ; $5486: $06 $2f
	adc  c                                           ; $5488: $89
	nop                                              ; $5489: $00
	inc  d                                           ; $548a: $14
	ld   l, $32                                      ; $548b: $2e $32
	ld   bc, $0103                                   ; $548d: $01 $03 $01
	dec  sp                                          ; $5490: $3b
	inc  h                                           ; $5491: $24
	ld   bc, $0203                                   ; $5492: $01 $03 $02
	ld   bc, $0203                                   ; $5495: $01 $03 $02
	ld   bc, $0203                                   ; $5498: $01 $03 $02
	ld   bc, $2b03                                   ; $549b: $01 $03 $2b
	ret  z                                           ; $549e: $c8

	pop  hl                                          ; $549f: $e1
	adc  c                                           ; $54a0: $89
	nop                                              ; $54a1: $00
	inc  d                                           ; $54a2: $14
	ld   l, $0e                                      ; $54a3: $2e $0e
	ld   bc, $0103                                   ; $54a5: $01 $03 $01
	rlca                                             ; $54a8: $07
	inc  h                                           ; $54a9: $24
	ld   bc, $0203                                   ; $54aa: $01 $03 $02
	ld   bc, $0203                                   ; $54ad: $01 $03 $02
	ld   bc, $0203                                   ; $54b0: $01 $03 $02
	ld   bc, $e003                                   ; $54b3: $01 $03 $e0
	ld   bc, $89e3                                   ; $54b6: $01 $e3 $89
	nop                                              ; $54b9: $00
	inc  bc                                          ; $54ba: $03
	dec  h                                           ; $54bb: $25
	inc  bc                                          ; $54bc: $03
	ld   bc, $8c0f                                   ; $54bd: $01 $0f $8c
	nop                                              ; $54c0: $00
	ld   [bc], a                                     ; $54c1: $02
	ret  nz                                          ; $54c2: $c0

	ld   bc, $89e9                                   ; $54c3: $01 $e9 $89
	nop                                              ; $54c6: $00
	inc  d                                           ; $54c7: $14
	db   $10                                         ; $54c8: $10
	ld   bc, $0103                                   ; $54c9: $01 $03 $01
	rlca                                             ; $54cc: $07
	ld   bc, $0103                                   ; $54cd: $01 $03 $01
	rrca                                             ; $54d0: $0f
	ld   bc, $0103                                   ; $54d1: $01 $03 $01
	rlca                                             ; $54d4: $07
	ld   bc, $0103                                   ; $54d5: $01 $03 $01
	rst  $38                                         ; $54d8: $ff
	ld   bc, $0103                                   ; $54d9: $01 $03 $01
	db   $e3                                         ; $54dc: $e3
	adc  c                                           ; $54dd: $89
	nop                                              ; $54de: $00
	inc  d                                           ; $54df: $14
	jr   nz, jr_02f_54e3                             ; $54e0: $20 $01

	inc  bc                                          ; $54e2: $03

jr_02f_54e3:
	ld   bc, $0107                                   ; $54e3: $01 $07 $01
	inc  bc                                          ; $54e6: $03
	ld   bc, $010f                                   ; $54e7: $01 $0f $01
	inc  bc                                          ; $54ea: $03
	ld   bc, $0107                                   ; $54eb: $01 $07 $01
	inc  bc                                          ; $54ee: $03
	ld   bc, $01df                                   ; $54ef: $01 $df $01
	inc  bc                                          ; $54f2: $03
	ld   bc, $89f3                                   ; $54f3: $01 $f3 $89
	nop                                              ; $54f6: $00
	inc  d                                           ; $54f7: $14
	jr   nc, jr_02f_54fb                             ; $54f8: $30 $01

	inc  bc                                          ; $54fa: $03

jr_02f_54fb:
	ld   bc, $0107                                   ; $54fb: $01 $07 $01
	inc  bc                                          ; $54fe: $03
	ld   bc, $010f                                   ; $54ff: $01 $0f $01
	inc  bc                                          ; $5502: $03
	ld   bc, $0107                                   ; $5503: $01 $07 $01
	inc  bc                                          ; $5506: $03
	ld   bc, $013f                  ; $5507: $01 $3f $01
	inc  bc                                          ; $550a: $03
	ld   bc, $8903                                   ; $550b: $01 $03 $89
	nop                                              ; $550e: $00
	inc  d                                           ; $550f: $14
	ld   b, b                                        ; $5510: $40
	ld   bc, $0103                                   ; $5511: $01 $03 $01
	rlca                                             ; $5514: $07
	ld   bc, $0103                                   ; $5515: $01 $03 $01
	rrca                                             ; $5518: $0f
	ld   bc, $0103                                   ; $5519: $01 $03 $01
	rlca                                             ; $551c: $07
	ld   bc, $0103                                   ; $551d: $01 $03 $01
	xor  e                                           ; $5520: $ab
	ld   bc, $0103                                   ; $5521: $01 $03 $01
	rst  $20                                         ; $5524: $e7
	adc  c                                           ; $5525: $89
	nop                                              ; $5526: $00
	inc  d                                           ; $5527: $14
	ld   d, b                                        ; $5528: $50
	ld   bc, $0103                                   ; $5529: $01 $03 $01
	rlca                                             ; $552c: $07
	ld   bc, $0103                                   ; $552d: $01 $03 $01
	rrca                                             ; $5530: $0f
	ld   bc, $0103                                   ; $5531: $01 $03 $01
	rlca                                             ; $5534: $07
	ld   bc, $0103                                   ; $5535: $01 $03 $01
	xor  e                                           ; $5538: $ab
	ld   bc, $0103                                   ; $5539: $01 $03 $01
	rst  $30                                         ; $553c: $f7
	adc  c                                           ; $553d: $89
	nop                                              ; $553e: $00
	inc  d                                           ; $553f: $14
	ld   h, b                                        ; $5540: $60
	ld   bc, $0103                                   ; $5541: $01 $03 $01
	rlca                                             ; $5544: $07
	ld   bc, $0103                                   ; $5545: $01 $03 $01
	rrca                                             ; $5548: $0f
	ld   bc, $0103                                   ; $5549: $01 $03 $01
	rlca                                             ; $554c: $07
	ld   bc, $0103                                   ; $554d: $01 $03 $01
	ld   l, e                                        ; $5550: $6b
	ld   bc, $0103                                   ; $5551: $01 $03 $01
	rlca                                             ; $5554: $07
	adc  c                                           ; $5555: $89
	nop                                              ; $5556: $00
	inc  d                                           ; $5557: $14
	ld   [hl], b                                     ; $5558: $70
	ld   bc, $0103                                   ; $5559: $01 $03 $01
	rlca                                             ; $555c: $07
	ld   bc, $0103                                   ; $555d: $01 $03 $01
	rrca                                             ; $5560: $0f
	ld   bc, $0103                                   ; $5561: $01 $03 $01
	rlca                                             ; $5564: $07
	ld   bc, $0103                                   ; $5565: $01 $03 $01
	sub  a                                           ; $5568: $97
	ld   bc, $0103                                   ; $5569: $01 $03 $01
	db   $eb                                         ; $556c: $eb
	adc  c                                           ; $556d: $89
	nop                                              ; $556e: $00
	inc  d                                           ; $556f: $14
	ret  nz                                          ; $5570: $c0

	ld   bc, $0103                                   ; $5571: $01 $03 $01
	rlca                                             ; $5574: $07
	ld   bc, $0103                                   ; $5575: $01 $03 $01
	rrca                                             ; $5578: $0f
	ld   bc, $0103                                   ; $5579: $01 $03 $01
	rlca                                             ; $557c: $07
	ld   bc, $0103                                   ; $557d: $01 $03 $01
	scf                                              ; $5580: $37
	ld   bc, $0103                                   ; $5581: $01 $03 $01
	ei                                               ; $5584: $fb
	adc  c                                           ; $5585: $89
	nop                                              ; $5586: $00
	inc  d                                           ; $5587: $14
	ret  nc                                          ; $5588: $d0

	ld   bc, $0103                                   ; $5589: $01 $03 $01
	rlca                                             ; $558c: $07
	ld   bc, $0103                                   ; $558d: $01 $03 $01
	rrca                                             ; $5590: $0f
	ld   bc, $0103                                   ; $5591: $01 $03 $01
	rlca                                             ; $5594: $07
	ld   bc, $0103                                   ; $5595: $01 $03 $01
	rst  $10                                         ; $5598: $d7
	ld   bc, $0103                                   ; $5599: $01 $03 $01
	dec  bc                                          ; $559c: $0b
	adc  c                                           ; $559d: $89
	nop                                              ; $559e: $00
	inc  b                                           ; $559f: $04
	ld   [$0701], a                                  ; $55a0: $ea $01 $07
	ld   bc, $8903                                   ; $55a3: $01 $03 $89
	nop                                              ; $55a6: $00
	inc  b                                           ; $55a7: $04
	inc  bc                                          ; $55a8: $03
	ld   [bc], a                                     ; $55a9: $02
	inc  b                                           ; $55aa: $04
	dec  de                                          ; $55ab: $1b
	ldh  a, [rIE]                                    ; $55ac: $f0 $ff
	nop                                              ; $55ae: $00
	rst  $38                                         ; $55af: $ff
	nop                                              ; $55b0: $00
	rst  $38                                         ; $55b1: $ff
	nop                                              ; $55b2: $00
	add  $00                                         ; $55b3: $c6 $00
	dec  l                                           ; $55b5: $2d
	nop                                              ; $55b6: $00
	inc  bc                                          ; $55b7: $03
	ld   a, [hl+]                                    ; $55b8: $2a
	ld   bc, $0107                                   ; $55b9: $01 $07 $01
	adc  l                                           ; $55bc: $8d
	nop                                              ; $55bd: $00
	ld   bc, $e0cd                                   ; $55be: $01 $cd $e0
	adc  c                                           ; $55c1: $89
	nop                                              ; $55c2: $00
	inc  d                                           ; $55c3: $14
	ld   l, $3e                                      ; $55c4: $2e $3e
	ld   bc, $0103                                   ; $55c6: $01 $03 $01
	scf                                              ; $55c9: $37
	inc  h                                           ; $55ca: $24
	ld   bc, $0203                                   ; $55cb: $01 $03 $02
	ld   bc, $0203                                   ; $55ce: $01 $03 $02
	ld   bc, $0203                                   ; $55d1: $01 $03 $02
	ld   bc, $2b03                                   ; $55d4: $01 $03 $2b
	ld   b, $2f                                      ; $55d7: $06 $2f
	adc  c                                           ; $55d9: $89
	nop                                              ; $55da: $00
	inc  d                                           ; $55db: $14
	ld   l, $3a                                      ; $55dc: $2e $3a
	ld   bc, $0107                                   ; $55de: $01 $07 $01
	scf                                              ; $55e1: $37
	inc  h                                           ; $55e2: $24
	ld   bc, $0203                                   ; $55e3: $01 $03 $02
	ld   bc, $0203                                   ; $55e6: $01 $03 $02
	ld   bc, $0203                                   ; $55e9: $01 $03 $02
	ld   bc, $2b03                                   ; $55ec: $01 $03 $2b
	ld   b, $2f                                      ; $55ef: $06 $2f
	adc  c                                           ; $55f1: $89
	nop                                              ; $55f2: $00
	inc  d                                           ; $55f3: $14
	ld   l, $38                                      ; $55f4: $2e $38
	ld   bc, $0105                                   ; $55f6: $01 $05 $01
	scf                                              ; $55f9: $37
	inc  h                                           ; $55fa: $24
	ld   bc, $0203                                   ; $55fb: $01 $03 $02
	ld   bc, $0203                                   ; $55fe: $01 $03 $02
	ld   bc, $0203                                   ; $5601: $01 $03 $02
	ld   bc, $2b03                                   ; $5604: $01 $03 $2b
	ld   b, $2f                                      ; $5607: $06 $2f
	adc  c                                           ; $5609: $89
	nop                                              ; $560a: $00
	inc  d                                           ; $560b: $14
	ld   l, $36                                      ; $560c: $2e $36
	ld   bc, $0103                                   ; $560e: $01 $03 $01
	ccf                                              ; $5611: $3f
	inc  h                                           ; $5612: $24
	ld   bc, $0203                                   ; $5613: $01 $03 $02
	ld   bc, $0203                                   ; $5616: $01 $03 $02
	ld   bc, $0203                                   ; $5619: $01 $03 $02
	ld   bc, $2b03                                   ; $561c: $01 $03 $2b
	ld   b, $2f                                      ; $561f: $06 $2f
	adc  c                                           ; $5621: $89
	nop                                              ; $5622: $00
	inc  d                                           ; $5623: $14
	ld   l, $32                                      ; $5624: $2e $32
	ld   bc, $0103                                   ; $5626: $01 $03 $01
	dec  sp                                          ; $5629: $3b
	inc  h                                           ; $562a: $24
	ld   bc, $0203                                   ; $562b: $01 $03 $02
	ld   bc, $0203                                   ; $562e: $01 $03 $02
	ld   bc, $0203                                   ; $5631: $01 $03 $02
	ld   bc, $2b03                                   ; $5634: $01 $03 $2b
	ret  z                                           ; $5637: $c8

	pop  hl                                          ; $5638: $e1
	adc  c                                           ; $5639: $89
	nop                                              ; $563a: $00
	inc  d                                           ; $563b: $14
	ld   l, $0e                                      ; $563c: $2e $0e
	ld   bc, $0103                                   ; $563e: $01 $03 $01
	rlca                                             ; $5641: $07
	inc  h                                           ; $5642: $24
	ld   bc, $0203                                   ; $5643: $01 $03 $02
	ld   bc, $0203                                   ; $5646: $01 $03 $02
	ld   bc, $0203                                   ; $5649: $01 $03 $02
	ld   bc, $e003                                   ; $564c: $01 $03 $e0
	ld   bc, $89e3                                   ; $564f: $01 $e3 $89
	nop                                              ; $5652: $00
	inc  bc                                          ; $5653: $03
	dec  h                                           ; $5654: $25
	inc  bc                                          ; $5655: $03
	ld   bc, $8c0f                                   ; $5656: $01 $0f $8c
	nop                                              ; $5659: $00
	ld   [bc], a                                     ; $565a: $02
	ret  nz                                          ; $565b: $c0

	ld   bc, $89e9                                   ; $565c: $01 $e9 $89
	nop                                              ; $565f: $00
	inc  d                                           ; $5660: $14
	db   $10                                         ; $5661: $10
	ld   bc, $0103                                   ; $5662: $01 $03 $01
	rlca                                             ; $5665: $07
	ld   bc, $0103                                   ; $5666: $01 $03 $01
	rrca                                             ; $5669: $0f
	ld   bc, $0103                                   ; $566a: $01 $03 $01
	rlca                                             ; $566d: $07
	ld   bc, $0103                                   ; $566e: $01 $03 $01
	rst  $38                                         ; $5671: $ff
	ld   bc, $0103                                   ; $5672: $01 $03 $01
	db   $e3                                         ; $5675: $e3
	adc  c                                           ; $5676: $89
	nop                                              ; $5677: $00
	inc  d                                           ; $5678: $14
	jr   nz, jr_02f_567c                             ; $5679: $20 $01

	inc  bc                                          ; $567b: $03

jr_02f_567c:
	ld   bc, $0107                                   ; $567c: $01 $07 $01
	inc  bc                                          ; $567f: $03
	ld   bc, $010f                                   ; $5680: $01 $0f $01
	inc  bc                                          ; $5683: $03
	ld   bc, $0107                                   ; $5684: $01 $07 $01
	inc  bc                                          ; $5687: $03
	ld   bc, $01df                                   ; $5688: $01 $df $01
	inc  bc                                          ; $568b: $03
	ld   bc, $89f3                                   ; $568c: $01 $f3 $89
	nop                                              ; $568f: $00
	inc  d                                           ; $5690: $14
	jr   nc, jr_02f_5694                             ; $5691: $30 $01

	inc  bc                                          ; $5693: $03

jr_02f_5694:
	ld   bc, $0107                                   ; $5694: $01 $07 $01
	inc  bc                                          ; $5697: $03
	ld   bc, $010f                                   ; $5698: $01 $0f $01
	inc  bc                                          ; $569b: $03
	ld   bc, $0107                                   ; $569c: $01 $07 $01
	inc  bc                                          ; $569f: $03
	ld   bc, $013f                  ; $56a0: $01 $3f $01
	inc  bc                                          ; $56a3: $03
	ld   bc, $8903                                   ; $56a4: $01 $03 $89
	nop                                              ; $56a7: $00
	inc  d                                           ; $56a8: $14
	ld   b, b                                        ; $56a9: $40
	ld   bc, $0103                                   ; $56aa: $01 $03 $01
	rlca                                             ; $56ad: $07
	ld   bc, $0103                                   ; $56ae: $01 $03 $01
	rrca                                             ; $56b1: $0f
	ld   bc, $0103                                   ; $56b2: $01 $03 $01
	rlca                                             ; $56b5: $07
	ld   bc, $0103                                   ; $56b6: $01 $03 $01
	xor  e                                           ; $56b9: $ab
	ld   bc, $0103                                   ; $56ba: $01 $03 $01
	rst  $20                                         ; $56bd: $e7
	adc  c                                           ; $56be: $89
	nop                                              ; $56bf: $00
	inc  d                                           ; $56c0: $14
	ld   d, b                                        ; $56c1: $50
	ld   bc, $0103                                   ; $56c2: $01 $03 $01
	rlca                                             ; $56c5: $07
	ld   bc, $0103                                   ; $56c6: $01 $03 $01
	rrca                                             ; $56c9: $0f
	ld   bc, $0103                                   ; $56ca: $01 $03 $01
	rlca                                             ; $56cd: $07
	ld   bc, $0103                                   ; $56ce: $01 $03 $01
	xor  e                                           ; $56d1: $ab
	ld   bc, $0103                                   ; $56d2: $01 $03 $01
	rst  $30                                         ; $56d5: $f7
	adc  c                                           ; $56d6: $89
	nop                                              ; $56d7: $00
	inc  d                                           ; $56d8: $14
	ld   h, b                                        ; $56d9: $60
	ld   bc, $0103                                   ; $56da: $01 $03 $01
	rlca                                             ; $56dd: $07
	ld   bc, $0103                                   ; $56de: $01 $03 $01
	rrca                                             ; $56e1: $0f
	ld   bc, $0103                                   ; $56e2: $01 $03 $01
	rlca                                             ; $56e5: $07
	ld   bc, $0103                                   ; $56e6: $01 $03 $01
	ld   l, e                                        ; $56e9: $6b
	ld   bc, $0103                                   ; $56ea: $01 $03 $01
	rlca                                             ; $56ed: $07
	adc  c                                           ; $56ee: $89
	nop                                              ; $56ef: $00
	inc  d                                           ; $56f0: $14
	ld   [hl], b                                     ; $56f1: $70
	ld   bc, $0103                                   ; $56f2: $01 $03 $01
	rlca                                             ; $56f5: $07
	ld   bc, $0103                                   ; $56f6: $01 $03 $01
	rrca                                             ; $56f9: $0f
	ld   bc, $0103                                   ; $56fa: $01 $03 $01
	rlca                                             ; $56fd: $07
	ld   bc, $0103                                   ; $56fe: $01 $03 $01
	sub  a                                           ; $5701: $97
	ld   bc, $0103                                   ; $5702: $01 $03 $01
	db   $eb                                         ; $5705: $eb
	adc  c                                           ; $5706: $89
	nop                                              ; $5707: $00
	inc  d                                           ; $5708: $14
	ret  nz                                          ; $5709: $c0

	ld   bc, $0103                                   ; $570a: $01 $03 $01
	rlca                                             ; $570d: $07
	ld   bc, $0103                                   ; $570e: $01 $03 $01
	rrca                                             ; $5711: $0f
	ld   bc, $0103                                   ; $5712: $01 $03 $01
	rlca                                             ; $5715: $07
	ld   bc, $0103                                   ; $5716: $01 $03 $01
	scf                                              ; $5719: $37
	ld   bc, $0103                                   ; $571a: $01 $03 $01
	ei                                               ; $571d: $fb
	adc  c                                           ; $571e: $89
	nop                                              ; $571f: $00
	inc  d                                           ; $5720: $14
	ret  nc                                          ; $5721: $d0

	ld   bc, $0103                                   ; $5722: $01 $03 $01
	rlca                                             ; $5725: $07
	ld   bc, $0103                                   ; $5726: $01 $03 $01
	rrca                                             ; $5729: $0f
	ld   bc, $0103                                   ; $572a: $01 $03 $01
	rlca                                             ; $572d: $07
	ld   bc, $0103                                   ; $572e: $01 $03 $01
	rst  $10                                         ; $5731: $d7
	ld   bc, $0103                                   ; $5732: $01 $03 $01
	dec  bc                                          ; $5735: $0b
	adc  c                                           ; $5736: $89
	nop                                              ; $5737: $00
	inc  b                                           ; $5738: $04
	ld   [$0701], a                                  ; $5739: $ea $01 $07
	ld   bc, $8903                                   ; $573c: $01 $03 $89
	nop                                              ; $573f: $00
	inc  b                                           ; $5740: $04
	inc  bc                                          ; $5741: $03
	ld   [bc], a                                     ; $5742: $02
	inc  b                                           ; $5743: $04
	dec  de                                          ; $5744: $1b
	ldh  a, [rIE]                                    ; $5745: $f0 $ff
	nop                                              ; $5747: $00
	rst  $38                                         ; $5748: $ff
	nop                                              ; $5749: $00
	rst  $38                                         ; $574a: $ff
	nop                                              ; $574b: $00
	add  $00                                         ; $574c: $c6 $00
	dec  l                                           ; $574e: $2d
	nop                                              ; $574f: $00
	inc  bc                                          ; $5750: $03
	ld   a, [hl+]                                    ; $5751: $2a
	ld   bc, $0107                                   ; $5752: $01 $07 $01
	adc  l                                           ; $5755: $8d
	nop                                              ; $5756: $00
	ld   bc, $10cd                                   ; $5757: $01 $cd $10
	adc  c                                           ; $575a: $89
	nop                                              ; $575b: $00
	inc  d                                           ; $575c: $14
	sbc  $3e                                         ; $575d: $de $3e
	ld   bc, $0103                                   ; $575f: $01 $03 $01
	scf                                              ; $5762: $37
	inc  h                                           ; $5763: $24
	ld   bc, $0203                                   ; $5764: $01 $03 $02
	ld   bc, $0203                                   ; $5767: $01 $03 $02
	ld   bc, $0203                                   ; $576a: $01 $03 $02
	ld   bc, $2b03                                   ; $576d: $01 $03 $2b
	ld   b, $df                                      ; $5770: $06 $df
	adc  c                                           ; $5772: $89
	nop                                              ; $5773: $00
	inc  d                                           ; $5774: $14
	sbc  $3a                                         ; $5775: $de $3a
	ld   bc, $0107                                   ; $5777: $01 $07 $01
	scf                                              ; $577a: $37
	inc  h                                           ; $577b: $24
	ld   bc, $0203                                   ; $577c: $01 $03 $02
	ld   bc, $0203                                   ; $577f: $01 $03 $02
	ld   bc, $0203                                   ; $5782: $01 $03 $02
	ld   bc, $2b03                                   ; $5785: $01 $03 $2b
	ld   b, $df                                      ; $5788: $06 $df
	adc  c                                           ; $578a: $89
	nop                                              ; $578b: $00
	inc  d                                           ; $578c: $14
	sbc  $38                                         ; $578d: $de $38
	ld   bc, $0105                                   ; $578f: $01 $05 $01
	scf                                              ; $5792: $37
	inc  h                                           ; $5793: $24
	ld   bc, $0203                                   ; $5794: $01 $03 $02
	ld   bc, $0203                                   ; $5797: $01 $03 $02
	ld   bc, $0203                                   ; $579a: $01 $03 $02
	ld   bc, $2b03                                   ; $579d: $01 $03 $2b
	ld   b, $df                                      ; $57a0: $06 $df
	adc  c                                           ; $57a2: $89
	nop                                              ; $57a3: $00
	inc  d                                           ; $57a4: $14
	sbc  $36                                         ; $57a5: $de $36
	ld   bc, $0103                                   ; $57a7: $01 $03 $01
	ccf                                              ; $57aa: $3f
	inc  h                                           ; $57ab: $24
	ld   bc, $0203                                   ; $57ac: $01 $03 $02
	ld   bc, $0203                                   ; $57af: $01 $03 $02
	ld   bc, $0203                                   ; $57b2: $01 $03 $02
	ld   bc, $2b03                                   ; $57b5: $01 $03 $2b
	ld   b, $df                                      ; $57b8: $06 $df
	adc  c                                           ; $57ba: $89
	nop                                              ; $57bb: $00
	inc  d                                           ; $57bc: $14
	sbc  $32                                         ; $57bd: $de $32
	ld   bc, $0103                                   ; $57bf: $01 $03 $01
	dec  sp                                          ; $57c2: $3b
	inc  h                                           ; $57c3: $24
	ld   bc, $0203                                   ; $57c4: $01 $03 $02
	ld   bc, $0203                                   ; $57c7: $01 $03 $02
	ld   bc, $0203                                   ; $57ca: $01 $03 $02
	ld   bc, $2b03                                   ; $57cd: $01 $03 $2b
	ret  z                                           ; $57d0: $c8

	ld   de, $0089                                   ; $57d1: $11 $89 $00
	inc  d                                           ; $57d4: $14
	sbc  $0e                                         ; $57d5: $de $0e
	ld   bc, $0103                                   ; $57d7: $01 $03 $01
	rlca                                             ; $57da: $07
	inc  h                                           ; $57db: $24
	ld   bc, $0203                                   ; $57dc: $01 $03 $02
	ld   bc, $0203                                   ; $57df: $01 $03 $02
	ld   bc, $0203                                   ; $57e2: $01 $03 $02
	ld   bc, $e003                                   ; $57e5: $01 $03 $e0
	ld   bc, $8913                                   ; $57e8: $01 $13 $89
	nop                                              ; $57eb: $00
	inc  bc                                          ; $57ec: $03
	push de                                          ; $57ed: $d5
	inc  bc                                          ; $57ee: $03
	ld   bc, $8c0f                                   ; $57ef: $01 $0f $8c
	nop                                              ; $57f2: $00
	ld   [bc], a                                     ; $57f3: $02
	ret  nz                                          ; $57f4: $c0

	ld   bc, $8919                                   ; $57f5: $01 $19 $89
	nop                                              ; $57f8: $00
	inc  d                                           ; $57f9: $14
	ldh  [rSB], a                                    ; $57fa: $e0 $01
	inc  bc                                          ; $57fc: $03
	ld   bc, $0107                                   ; $57fd: $01 $07 $01
	inc  bc                                          ; $5800: $03
	ld   bc, $010f                                   ; $5801: $01 $0f $01
	inc  bc                                          ; $5804: $03
	ld   bc, $0107                                   ; $5805: $01 $07 $01
	inc  bc                                          ; $5808: $03
	ld   bc, $01ff                                   ; $5809: $01 $ff $01
	inc  bc                                          ; $580c: $03
	ld   bc, $8913                                   ; $580d: $01 $13 $89
	nop                                              ; $5810: $00
	inc  d                                           ; $5811: $14
	ret  nc                                          ; $5812: $d0

	ld   bc, $0103                                   ; $5813: $01 $03 $01
	rlca                                             ; $5816: $07
	ld   bc, $0103                                   ; $5817: $01 $03 $01
	rrca                                             ; $581a: $0f
	ld   bc, $0103                                   ; $581b: $01 $03 $01
	rlca                                             ; $581e: $07
	ld   bc, $0103                                   ; $581f: $01 $03 $01
	rst  JumpTable                                         ; $5822: $df
	ld   bc, $0103                                   ; $5823: $01 $03 $01
	inc  bc                                          ; $5826: $03
	adc  c                                           ; $5827: $89
	nop                                              ; $5828: $00
	inc  d                                           ; $5829: $14
	ret  nz                                          ; $582a: $c0

	ld   bc, $0103                                   ; $582b: $01 $03 $01
	rlca                                             ; $582e: $07
	ld   bc, $0103                                   ; $582f: $01 $03 $01
	rrca                                             ; $5832: $0f
	ld   bc, $0103                                   ; $5833: $01 $03 $01
	rlca                                             ; $5836: $07
	ld   bc, $0103                                   ; $5837: $01 $03 $01
	ccf                                              ; $583a: $3f
	ld   bc, $0103                                   ; $583b: $01 $03 $01
	di                                               ; $583e: $f3
	adc  c                                           ; $583f: $89
	nop                                              ; $5840: $00
	inc  d                                           ; $5841: $14
	or   b                                           ; $5842: $b0
	ld   bc, $0103                                   ; $5843: $01 $03 $01
	rlca                                             ; $5846: $07
	ld   bc, $0103                                   ; $5847: $01 $03 $01
	rrca                                             ; $584a: $0f
	ld   bc, $0103                                   ; $584b: $01 $03 $01
	rlca                                             ; $584e: $07
	ld   bc, $0103                                   ; $584f: $01 $03 $01
	xor  e                                           ; $5852: $ab
	ld   bc, $0103                                   ; $5853: $01 $03 $01
	rla                                              ; $5856: $17
	adc  c                                           ; $5857: $89
	nop                                              ; $5858: $00
	inc  d                                           ; $5859: $14
	and  b                                           ; $585a: $a0
	ld   bc, $0103                                   ; $585b: $01 $03 $01
	rlca                                             ; $585e: $07
	ld   bc, $0103                                   ; $585f: $01 $03 $01
	rrca                                             ; $5862: $0f
	ld   bc, $0103                                   ; $5863: $01 $03 $01
	rlca                                             ; $5866: $07
	ld   bc, $0103                                   ; $5867: $01 $03 $01
	xor  e                                           ; $586a: $ab
	ld   bc, $0103                                   ; $586b: $01 $03 $01
	rlca                                             ; $586e: $07
	adc  c                                           ; $586f: $89
	nop                                              ; $5870: $00
	inc  d                                           ; $5871: $14
	sub  b                                           ; $5872: $90
	ld   bc, $0103                                   ; $5873: $01 $03 $01
	rlca                                             ; $5876: $07
	ld   bc, $0103                                   ; $5877: $01 $03 $01
	rrca                                             ; $587a: $0f
	ld   bc, $0103                                   ; $587b: $01 $03 $01
	rlca                                             ; $587e: $07
	ld   bc, $0103                                   ; $587f: $01 $03 $01
	ld   l, e                                        ; $5882: $6b
	ld   bc, $0103                                   ; $5883: $01 $03 $01
	rst  $30                                         ; $5886: $f7
	adc  c                                           ; $5887: $89
	nop                                              ; $5888: $00
	inc  d                                           ; $5889: $14
	add  b                                           ; $588a: $80
	ld   bc, $0103                                   ; $588b: $01 $03 $01
	rlca                                             ; $588e: $07
	ld   bc, $0103                                   ; $588f: $01 $03 $01
	rrca                                             ; $5892: $0f
	ld   bc, $0103                                   ; $5893: $01 $03 $01
	rlca                                             ; $5896: $07
	ld   bc, $0103                                   ; $5897: $01 $03 $01
	sub  a                                           ; $589a: $97
	ld   bc, $0103                                   ; $589b: $01 $03 $01
	dec  de                                          ; $589e: $1b
	adc  c                                           ; $589f: $89
	nop                                              ; $58a0: $00
	inc  d                                           ; $58a1: $14
	jr   nc, jr_02f_58a5                             ; $58a2: $30 $01

	inc  bc                                          ; $58a4: $03

jr_02f_58a5:
	ld   bc, $0107                                   ; $58a5: $01 $07 $01
	inc  bc                                          ; $58a8: $03
	ld   bc, $010f                                   ; $58a9: $01 $0f $01
	inc  bc                                          ; $58ac: $03
	ld   bc, $0107                                   ; $58ad: $01 $07 $01
	inc  bc                                          ; $58b0: $03
	ld   bc, $0137                                   ; $58b1: $01 $37 $01
	inc  bc                                          ; $58b4: $03
	ld   bc, $890b                                   ; $58b5: $01 $0b $89
	nop                                              ; $58b8: $00
	inc  d                                           ; $58b9: $14
	jr   nz, jr_02f_58bd                             ; $58ba: $20 $01

	inc  bc                                          ; $58bc: $03

jr_02f_58bd:
	ld   bc, $0107                                   ; $58bd: $01 $07 $01
	inc  bc                                          ; $58c0: $03
	ld   bc, $010f                                   ; $58c1: $01 $0f $01
	inc  bc                                          ; $58c4: $03
	ld   bc, $0107                                   ; $58c5: $01 $07 $01
	inc  bc                                          ; $58c8: $03
	ld   bc, $01d7                                   ; $58c9: $01 $d7 $01
	inc  bc                                          ; $58cc: $03
	ld   bc, $89fb                                   ; $58cd: $01 $fb $89
	nop                                              ; $58d0: $00
	inc  b                                           ; $58d1: $04
	ld   a, [de]                                     ; $58d2: $1a
	ld   bc, $0107                                   ; $58d3: $01 $07 $01
	inc  bc                                          ; $58d6: $03
	adc  c                                           ; $58d7: $89
	nop                                              ; $58d8: $00
	inc  bc                                          ; $58d9: $03
	inc  bc                                          ; $58da: $03
	ld   [bc], a                                     ; $58db: $02
	inc  b                                           ; $58dc: $04
	dec  de                                          ; $58dd: $1b
	rst  $38                                         ; $58de: $ff
	nop                                              ; $58df: $00
	rst  $38                                         ; $58e0: $ff
	nop                                              ; $58e1: $00
	rst  $38                                         ; $58e2: $ff
	nop                                              ; $58e3: $00
	rst  ToBoot                                         ; $58e4: $c7
	nop                                              ; $58e5: $00
	ld   b, e                                        ; $58e6: $43
	nop                                              ; $58e7: $00
	ld   [bc], a                                     ; $58e8: $02
	adc  $01                                         ; $58e9: $ce $01
	ld   [bc], a                                     ; $58eb: $02
	adc  [hl]                                        ; $58ec: $8e
	nop                                              ; $58ed: $00
	ld   bc, $4e03                                   ; $58ee: $01 $03 $4e
	adc  c                                           ; $58f1: $89
	nop                                              ; $58f2: $00
	db   $10                                         ; $58f3: $10
	ld   e, [hl]                                     ; $58f4: $5e
	ld   bc, $0c53                                   ; $58f5: $01 $53 $0c
	ld   bc, $0103                                   ; $58f8: $01 $03 $01
	rlca                                             ; $58fb: $07
	ld   b, $07                                      ; $58fc: $06 $07
	inc  bc                                          ; $58fe: $03
	ld   bc, $010f                                   ; $58ff: $01 $0f $01
	inc  bc                                          ; $5902: $03
	ld   bc, $8007                                   ; $5903: $01 $07 $80
	nop                                              ; $5906: $00
	ld   bc, $5e52                                   ; $5907: $01 $52 $5e
	adc  c                                           ; $590a: $89
	nop                                              ; $590b: $00
	inc  d                                           ; $590c: $14
	ld   e, h                                        ; $590d: $5c
	ld   bc, $1c51                                   ; $590e: $01 $51 $1c
	ld   bc, $0103                                   ; $5911: $01 $03 $01
	rlca                                             ; $5914: $07
	ld   b, $07                                      ; $5915: $06 $07
	inc  bc                                          ; $5917: $03
	ld   bc, $010f                                   ; $5918: $01 $0f $01
	inc  bc                                          ; $591b: $03
	ld   bc, $1007                                   ; $591c: $01 $07 $10
	nop                                              ; $591f: $00
	ld   d, d                                        ; $5920: $52
	ld   e, [hl]                                     ; $5921: $5e
	adc  c                                           ; $5922: $89
	nop                                              ; $5923: $00
	inc  d                                           ; $5924: $14
	ld   e, [hl]                                     ; $5925: $5e
	ld   d, d                                        ; $5926: $52
	ld   l, $01                                      ; $5927: $2e $01
	rlca                                             ; $5929: $07
	ld   bc, $2427                                   ; $592a: $01 $27 $24
	ld   bc, $4a2f                                   ; $592d: $01 $2f $4a
	ld   bc, $6c07                                   ; $5930: $01 $07 $6c
	ld   bc, $0103                                   ; $5933: $01 $03 $01
	rlca                                             ; $5936: $07
	jr   nz, jr_02f_598b                             ; $5937: $20 $52

	ld   e, [hl]                                     ; $5939: $5e
	adc  c                                           ; $593a: $89
	nop                                              ; $593b: $00
	inc  d                                           ; $593c: $14
	ld   e, [hl]                                     ; $593d: $5e
	ld   d, d                                        ; $593e: $52
	ld   a, $01                                      ; $593f: $3e $01
	rlca                                             ; $5941: $07
	ld   bc, $2427                                   ; $5942: $01 $27 $24
	ld   bc, $4a2f                                   ; $5945: $01 $2f $4a
	ld   bc, $6c07                                   ; $5948: $01 $07 $6c
	ld   bc, $0103                                   ; $594b: $01 $03 $01
	rlca                                             ; $594e: $07
	jr   nc, jr_02f_59a3                             ; $594f: $30 $52

	ld   e, [hl]                                     ; $5951: $5e
	adc  c                                           ; $5952: $89
	nop                                              ; $5953: $00
	inc  bc                                          ; $5954: $03
	ld   e, [hl]                                     ; $5955: $5e
	ld   d, d                                        ; $5956: $52
	ld   bc, $800a                                   ; $5957: $01 $0a $80
	add  hl, bc                                      ; $595a: $09
	add  hl, bc                                      ; $595b: $09
	ld   [$012f], sp                                 ; $595c: $08 $2f $01
	inc  c                                           ; $595f: $0c
	ld   a, [hl+]                                    ; $5960: $2a
	add  hl, bc                                      ; $5961: $09
	ld   c, h                                        ; $5962: $4c
	ld   [bc], a                                     ; $5963: $02
	ld   b, a                                        ; $5964: $47
	dec  bc                                          ; $5965: $0b
	add  b                                           ; $5966: $80
	nop                                              ; $5967: $00
	ld   [bc], a                                     ; $5968: $02
	ld   d, c                                        ; $5969: $51
	ld   bc, $895c                                   ; $596a: $01 $5c $89
	nop                                              ; $596d: $00
	inc  bc                                          ; $596e: $03
	ld   e, [hl]                                     ; $596f: $5e
	ld   d, d                                        ; $5970: $52
	ld   de, $800a                                   ; $5971: $11 $0a $80
	add  hl, bc                                      ; $5974: $09
	ld   c, $08                                      ; $5975: $0e $08
	cpl                                              ; $5977: $2f
	ld   bc, $2a0c                                   ; $5978: $01 $0c $2a
	add  hl, bc                                      ; $597b: $09
	ld   c, h                                        ; $597c: $4c
	ld   [bc], a                                     ; $597d: $02
	ld   b, a                                        ; $597e: $47
	dec  bc                                          ; $597f: $0b
	stop                                             ; $5980: $10 $00
	ld   d, e                                        ; $5982: $53
	ld   bc, $895e                                   ; $5983: $01 $5e $89
	nop                                              ; $5986: $00
	ld   bc, $034e                                   ; $5987: $01 $4e $03
	add  e                                           ; $598a: $83

jr_02f_598b:
	nop                                              ; $598b: $00
	ld   bc, $0726                                   ; $598c: $01 $26 $07
	add  c                                           ; $598f: $81
	nop                                              ; $5990: $00
	ld   bc, $2607                                   ; $5991: $01 $07 $26
	add  d                                           ; $5994: $82
	nop                                              ; $5995: $00
	ld   [bc], a                                     ; $5996: $02
	ld   [bc], a                                     ; $5997: $02
	ld   bc, $894e                                   ; $5998: $01 $4e $89
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	ld   c, e                                        ; $599d: $4b
	add  h                                           ; $599e: $84
	nop                                              ; $599f: $00
	ld   b, $0e                                      ; $59a0: $06 $0e
	inc  bc                                          ; $59a2: $03

jr_02f_59a3:
	ld   bc, $010f                                   ; $59a3: $01 $0f $01
	inc  bc                                          ; $59a6: $03
	ld   bc, $0084                                   ; $59a7: $01 $84 $00
	nop                                              ; $59aa: $00
	ld   c, e                                        ; $59ab: $4b
	adc  c                                           ; $59ac: $89
	nop                                              ; $59ad: $00
	nop                                              ; $59ae: $00
	ld   c, e                                        ; $59af: $4b
	add  h                                           ; $59b0: $84
	nop                                              ; $59b1: $00
	ld   b, $1e                                      ; $59b2: $06 $1e
	inc  bc                                          ; $59b4: $03
	ld   bc, $010f                                   ; $59b5: $01 $0f $01
	inc  bc                                          ; $59b8: $03
	ld   de, $0084                                   ; $59b9: $11 $84 $00
	nop                                              ; $59bc: $00
	ld   c, e                                        ; $59bd: $4b
	adc  c                                           ; $59be: $89
	nop                                              ; $59bf: $00
	nop                                              ; $59c0: $00
	ld   a, e                                        ; $59c1: $7b
	sub  c                                           ; $59c2: $91
	nop                                              ; $59c3: $00
	nop                                              ; $59c4: $00
	ld   a, e                                        ; $59c5: $7b
	adc  c                                           ; $59c6: $89
	nop                                              ; $59c7: $00
	inc  d                                           ; $59c8: $14
	inc  c                                           ; $59c9: $0c
	nop                                              ; $59ca: $00
	adc  h                                           ; $59cb: $8c
	ld   bc, $0103                                   ; $59cc: $01 $03 $01
	rlca                                             ; $59cf: $07
	ld   bc, $8a03                                   ; $59d0: $01 $03 $8a
	nop                                              ; $59d3: $00
	adc  e                                           ; $59d4: $8b
	rrca                                             ; $59d5: $0f
	ld   bc, $0103                                   ; $59d6: $01 $03 $01
	rlca                                             ; $59d9: $07
	ld   bc, $0081                                   ; $59da: $01 $81 $00
	inc  c                                           ; $59dd: $0c
	adc  c                                           ; $59de: $89
	nop                                              ; $59df: $00
	inc  d                                           ; $59e0: $14
	inc  c                                           ; $59e1: $0c
	nop                                              ; $59e2: $00
	sbc  h                                           ; $59e3: $9c
	ld   bc, $0103                                   ; $59e4: $01 $03 $01
	rlca                                             ; $59e7: $07
	ld   bc, $9a03                                   ; $59e8: $01 $03 $9a
	nop                                              ; $59eb: $00
	sbc  e                                           ; $59ec: $9b
	rrca                                             ; $59ed: $0f
	ld   bc, $0103                                   ; $59ee: $01 $03 $01
	rlca                                             ; $59f1: $07
	ld   bc, $0091                                   ; $59f2: $01 $91 $00
	inc  c                                           ; $59f5: $0c
	adc  c                                           ; $59f6: $89
	nop                                              ; $59f7: $00
	inc  d                                           ; $59f8: $14
	inc  c                                           ; $59f9: $0c
	nop                                              ; $59fa: $00
	xor  h                                           ; $59fb: $ac
	ld   bc, $0103                                   ; $59fc: $01 $03 $01
	rlca                                             ; $59ff: $07
	ld   bc, $aa03                                   ; $5a00: $01 $03 $aa
	nop                                              ; $5a03: $00
	xor  e                                           ; $5a04: $ab
	rrca                                             ; $5a05: $0f
	ld   bc, $0103                                   ; $5a06: $01 $03 $01
	rlca                                             ; $5a09: $07
	ld   bc, $00a1                                   ; $5a0a: $01 $a1 $00
	inc  c                                           ; $5a0d: $0c
	adc  c                                           ; $5a0e: $89
	nop                                              ; $5a0f: $00
	inc  d                                           ; $5a10: $14
	inc  c                                           ; $5a11: $0c
	nop                                              ; $5a12: $00
	cp   h                                           ; $5a13: $bc
	ld   bc, $0103                                   ; $5a14: $01 $03 $01
	rlca                                             ; $5a17: $07
	ld   bc, $ba03                                   ; $5a18: $01 $03 $ba
	nop                                              ; $5a1b: $00
	cp   e                                           ; $5a1c: $bb
	rrca                                             ; $5a1d: $0f
	ld   bc, $0103                                   ; $5a1e: $01 $03 $01
	rlca                                             ; $5a21: $07
	ld   bc, $00b1                                   ; $5a22: $01 $b1 $00
	inc  c                                           ; $5a25: $0c
	adc  c                                           ; $5a26: $89
	nop                                              ; $5a27: $00
	inc  d                                           ; $5a28: $14
	inc  c                                           ; $5a29: $0c
	ld   l, h                                        ; $5a2a: $6c
	ld   bc, $6e03                                   ; $5a2b: $01 $03 $6e
	ld   l, a                                        ; $5a2e: $6f
	rlca                                             ; $5a2f: $07
	ld   bc, $0103                                   ; $5a30: $01 $03 $01
	rrca                                             ; $5a33: $0f
	ld   bc, $6603                                   ; $5a34: $01 $03 $66
	ld   l, a                                        ; $5a37: $6f
	rlca                                             ; $5a38: $07
	ld   bc, $0103                                   ; $5a39: $01 $03 $01
	ld   l, e                                        ; $5a3c: $6b
	inc  c                                           ; $5a3d: $0c
	adc  c                                           ; $5a3e: $89
	nop                                              ; $5a3f: $00
	inc  d                                           ; $5a40: $14
	inc  c                                           ; $5a41: $0c
	ld   a, h                                        ; $5a42: $7c
	ld   bc, $7e03                                   ; $5a43: $01 $03 $7e
	ld   a, a                                        ; $5a46: $7f
	rlca                                             ; $5a47: $07
	ld   bc, $0103                                   ; $5a48: $01 $03 $01
	rrca                                             ; $5a4b: $0f
	ld   bc, $7603                                   ; $5a4c: $01 $03 $76
	ld   a, a                                        ; $5a4f: $7f
	rlca                                             ; $5a50: $07
	ld   bc, $0103                                   ; $5a51: $01 $03 $01
	ld   a, e                                        ; $5a54: $7b
	inc  c                                           ; $5a55: $0c
	adc  c                                           ; $5a56: $89
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	ld   a, e                                        ; $5a59: $7b
	sub  c                                           ; $5a5a: $91
	nop                                              ; $5a5b: $00
	nop                                              ; $5a5c: $00
	ld   a, e                                        ; $5a5d: $7b
	rst  $38                                         ; $5a5e: $ff
	nop                                              ; $5a5f: $00
	rst  $38                                         ; $5a60: $ff
	nop                                              ; $5a61: $00
	rst  $38                                         ; $5a62: $ff
	nop                                              ; $5a63: $00
	add  $00                                         ; $5a64: $c6 $00
	ld   d, c                                        ; $5a66: $51
	nop                                              ; $5a67: $00
	ld   [bc], a                                     ; $5a68: $02
	ldh  [rSB], a                                    ; $5a69: $e0 $01
	inc  bc                                          ; $5a6b: $03
	adc  [hl]                                        ; $5a6c: $8e
	nop                                              ; $5a6d: $00
	ld   bc, $e002                                   ; $5a6e: $01 $02 $e0
	adc  c                                           ; $5a71: $89
	nop                                              ; $5a72: $00
	inc  d                                           ; $5a73: $14
	db   $e3                                         ; $5a74: $e3
	dec  b                                           ; $5a75: $05
	ld   bc, $01f3                                   ; $5a76: $01 $f3 $01
	add  hl, bc                                      ; $5a79: $09
	ld   bc, $0103                                   ; $5a7a: $01 $03 $01
	ld   hl, sp-$2a                                  ; $5a7d: $f8 $d6
	inc  bc                                          ; $5a7f: $03
	ld   bc, $2007                                   ; $5a80: $01 $07 $20
	ld   bc, $d220                                   ; $5a83: $01 $20 $d2
	nop                                              ; $5a86: $00
	inc  b                                           ; $5a87: $04
	db   $e3                                         ; $5a88: $e3
	adc  c                                           ; $5a89: $89
	nop                                              ; $5a8a: $00
	inc  d                                           ; $5a8b: $14
	db   $e4                                         ; $5a8c: $e4
	ld   bc, $c302                                   ; $5a8d: $01 $02 $c3
	ld   bc, $0109                                   ; $5a90: $01 $09 $01
	inc  bc                                          ; $5a93: $03
	ld   bc, $016f                                   ; $5a94: $01 $6f $01
	inc  bc                                          ; $5a97: $03
	ld   bc, $6007                                   ; $5a98: $01 $07 $60
	ld   bc, $a260                                   ; $5a9b: $01 $60 $a2
	nop                                              ; $5a9e: $00
	inc  b                                           ; $5a9f: $04
	db   $e3                                         ; $5aa0: $e3
	adc  c                                           ; $5aa1: $89
	nop                                              ; $5aa2: $00
	db   $10                                         ; $5aa3: $10
	db   $e3                                         ; $5aa4: $e3
	inc  b                                           ; $5aa5: $04
	pop  de                                          ; $5aa6: $d1
	ld   bc, $010f                                   ; $5aa7: $01 $0f $01
	ld   [$00d6], sp                                 ; $5aaa: $08 $d6 $00
	db   $dd                                         ; $5aad: $dd
	ld   bc, $0107                                   ; $5aae: $01 $07 $01
	ld   l, e                                        ; $5ab1: $6b
	inc  b                                           ; $5ab2: $04
	ld   l, h                                        ; $5ab3: $6c
	reti                                             ; $5ab4: $d9


	add  b                                           ; $5ab5: $80
	nop                                              ; $5ab6: $00
	ld   bc, $e304                                   ; $5ab7: $01 $04 $e3
	adc  c                                           ; $5aba: $89
	nop                                              ; $5abb: $00
	inc  d                                           ; $5abc: $14
	db   $e3                                         ; $5abd: $e3
	inc  b                                           ; $5abe: $04
	and  c                                           ; $5abf: $a1
	ld   bc, $010f                                   ; $5ac0: $01 $0f $01
	ld   [$d771], sp                                 ; $5ac3: $08 $71 $d7
	xor  l                                           ; $5ac6: $ad
	ld   bc, $0107                                   ; $5ac7: $01 $07 $01
	dec  hl                                          ; $5aca: $2b
	inc  b                                           ; $5acb: $04
	inc  l                                           ; $5acc: $2c
	ld   c, $a7                                      ; $5acd: $0e $a7
	nop                                              ; $5acf: $00
	inc  b                                           ; $5ad0: $04
	db   $e3                                         ; $5ad1: $e3
	adc  c                                           ; $5ad2: $89
	nop                                              ; $5ad3: $00
	rrca                                             ; $5ad4: $0f
	db   $e3                                         ; $5ad5: $e3
	inc  b                                           ; $5ad6: $04
	ret  c                                           ; $5ad7: $d8

	inc  hl                                          ; $5ad8: $23
	ld   c, h                                        ; $5ad9: $4c
	ld   c, d                                        ; $5ada: $4a
	ld   c, e                                        ; $5adb: $4b
	ld   l, c                                        ; $5adc: $69
	ld   l, e                                        ; $5add: $6b
	rlca                                             ; $5ade: $07
	ld   bc, $0103                                   ; $5adf: $01 $03 $01
	ld   l, c                                        ; $5ae2: $69
	rrca                                             ; $5ae3: $0f
	sub  $80                                         ; $5ae4: $d6 $80
	nop                                              ; $5ae6: $00
	ld   [bc], a                                     ; $5ae7: $02
	ld   [bc], a                                     ; $5ae8: $02
	ld   bc, $89e4                                   ; $5ae9: $01 $e4 $89
	nop                                              ; $5aec: $00
	inc  d                                           ; $5aed: $14
	db   $e3                                         ; $5aee: $e3
	inc  b                                           ; $5aef: $04
	xor  b                                           ; $5af0: $a8
	ld   h, e                                        ; $5af1: $63
	ld   c, h                                        ; $5af2: $4c
	ld   c, d                                        ; $5af3: $4a
	ld   c, e                                        ; $5af4: $4b
	add  hl, hl                                      ; $5af5: $29
	dec  hl                                          ; $5af6: $2b
	rlca                                             ; $5af7: $07
	ld   bc, $0103                                   ; $5af8: $01 $03 $01
	add  hl, hl                                      ; $5afb: $29
	rrca                                             ; $5afc: $0f
	ld   [hl], c                                     ; $5afd: $71
	rst  $10                                         ; $5afe: $d7
	nop                                              ; $5aff: $00
	ld   bc, $e305                                   ; $5b00: $01 $05 $e3
	adc  c                                           ; $5b03: $89
	nop                                              ; $5b04: $00
	ld   bc, $02e0                                   ; $5b05: $01 $e0 $02
	adc  [hl]                                        ; $5b08: $8e
	nop                                              ; $5b09: $00
	ld   [bc], a                                     ; $5b0a: $02
	inc  bc                                          ; $5b0b: $03
	ld   bc, $89e0                                   ; $5b0c: $01 $e0 $89
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	rst  $20                                         ; $5b11: $e7
	add  h                                           ; $5b12: $84
	nop                                              ; $5b13: $00
	ld   b, $2d                                      ; $5b14: $06 $2d
	ld   bc, $0107                                   ; $5b16: $01 $07 $01
	inc  bc                                          ; $5b19: $03
	ld   bc, $8428                                   ; $5b1a: $01 $28 $84
	nop                                              ; $5b1d: $00
	nop                                              ; $5b1e: $00
	rst  $20                                         ; $5b1f: $e7
	adc  c                                           ; $5b20: $89
	nop                                              ; $5b21: $00
	nop                                              ; $5b22: $00
	rst  $20                                         ; $5b23: $e7
	add  h                                           ; $5b24: $84
	nop                                              ; $5b25: $00
	ld   b, $3d                                      ; $5b26: $06 $3d
	ld   bc, $0107                                   ; $5b28: $01 $07 $01
	inc  bc                                          ; $5b2b: $03
	ld   bc, $8438                                   ; $5b2c: $01 $38 $84
	nop                                              ; $5b2f: $00
	nop                                              ; $5b30: $00
	rst  $20                                         ; $5b31: $e7
	adc  c                                           ; $5b32: $89
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	rst  $20                                         ; $5b35: $e7
	add  h                                           ; $5b36: $84
	nop                                              ; $5b37: $00
	ld   b, $1a                                      ; $5b38: $06 $1a
	inc  bc                                          ; $5b3a: $03
	ld   bc, $03f2                                   ; $5b3b: $01 $f2 $03
	ld   bc, $84e8                                   ; $5b3e: $01 $e8 $84
	nop                                              ; $5b41: $00
	nop                                              ; $5b42: $00
	rst  $20                                         ; $5b43: $e7
	adc  c                                           ; $5b44: $89
	nop                                              ; $5b45: $00
	nop                                              ; $5b46: $00
	add  sp, -$6f                                    ; $5b47: $e8 $91
	nop                                              ; $5b49: $00
	nop                                              ; $5b4a: $00
	add  sp, -$77                                    ; $5b4b: $e8 $89
	nop                                              ; $5b4d: $00
	ld   [$00e7], sp                                 ; $5b4e: $08 $e7 $00
	ld   d, $03                                      ; $5b51: $16 $03
	dec  d                                           ; $5b53: $15
	nop                                              ; $5b54: $00
	dec  d                                           ; $5b55: $15
	inc  bc                                          ; $5b56: $03
	ld   d, $89                                      ; $5b57: $16 $89
	nop                                              ; $5b59: $00
	nop                                              ; $5b5a: $00
	rst  $20                                         ; $5b5b: $e7
	adc  c                                           ; $5b5c: $89
	nop                                              ; $5b5d: $00
	add  hl, bc                                      ; $5b5e: $09
	rst  $20                                         ; $5b5f: $e7
	or   $10                                         ; $5b60: $f6 $10
	inc  bc                                          ; $5b62: $03
	pop  af                                          ; $5b63: $f1
	nop                                              ; $5b64: $00
	pop  af                                          ; $5b65: $f1
	inc  bc                                          ; $5b66: $03
	inc  de                                          ; $5b67: $13
	push af                                          ; $5b68: $f5
	add  b                                           ; $5b69: $80
	nop                                              ; $5b6a: $00
	nop                                              ; $5b6b: $00
	db   $10                                         ; $5b6c: $10
	add  b                                           ; $5b6d: $80
	rrca                                             ; $5b6e: $0f
	dec  b                                           ; $5b6f: $05
	xor  a                                           ; $5b70: $af
	ld   bc, $0103                                   ; $5b71: $01 $03 $01
	cp   h                                           ; $5b74: $bc
	rst  $20                                         ; $5b75: $e7
	adc  c                                           ; $5b76: $89
	nop                                              ; $5b77: $00
	add  hl, bc                                      ; $5b78: $09
	rst  $20                                         ; $5b79: $e7
	add  $d5                                         ; $5b7a: $c6 $d5
	ld   bc, $07f6                                   ; $5b7c: $01 $f6 $07
	pop  af                                          ; $5b7f: $f1
	ld   bc, $c5d6                                   ; $5b80: $01 $d6 $c5
	add  b                                           ; $5b83: $80
	nop                                              ; $5b84: $00
	nop                                              ; $5b85: $00
	ldh  [$80], a                                    ; $5b86: $e0 $80
	rrca                                             ; $5b88: $0f
	dec  b                                           ; $5b89: $05
	ld   l, a                                        ; $5b8a: $6f
	ld   bc, $0103                                   ; $5b8b: $01 $03 $01
	adc  h                                           ; $5b8e: $8c
	rst  $20                                         ; $5b8f: $e7
	adc  c                                           ; $5b90: $89
	nop                                              ; $5b91: $00
	nop                                              ; $5b92: $00
	rst  $20                                         ; $5b93: $e7
	add  b                                           ; $5b94: $80
	db   $f4                                         ; $5b95: $f4
	inc  b                                           ; $5b96: $04
	ldh  [c], a                                      ; $5b97: $e2
	di                                               ; $5b98: $f3
	nop                                              ; $5b99: $00
	di                                               ; $5b9a: $f3
	ldh  [c], a                                      ; $5b9b: $e2
	add  b                                           ; $5b9c: $80
	db   $f4                                         ; $5b9d: $f4
	ld   a, [bc]                                     ; $5b9e: $0a
	dec  e                                           ; $5b9f: $1d
	ld   bc, $a007                                   ; $5ba0: $01 $07 $a0
	ld   bc, $0165                                   ; $5ba3: $01 $65 $01
	ld   h, a                                        ; $5ba6: $67
	ld   bc, $e7b8                                   ; $5ba7: $01 $b8 $e7
	adc  c                                           ; $5baa: $89
	nop                                              ; $5bab: $00
	nop                                              ; $5bac: $00
	rst  $20                                         ; $5bad: $e7
	add  b                                           ; $5bae: $80
	call nz, $0004                                   ; $5baf: $c4 $04 $00
	pop  hl                                          ; $5bb2: $e1
	nop                                              ; $5bb3: $00
	pop  hl                                          ; $5bb4: $e1
	nop                                              ; $5bb5: $00
	add  b                                           ; $5bb6: $80
	call nz, $e00a                                   ; $5bb7: $c4 $0a $e0
	inc  c                                           ; $5bba: $0c
	rlca                                             ; $5bbb: $07
	ld   h, b                                        ; $5bbc: $60
	ld   bc, $0125                                   ; $5bbd: $01 $25 $01
	daa                                              ; $5bc0: $27
	ld   bc, $e788                                   ; $5bc1: $01 $88 $e7
	adc  c                                           ; $5bc4: $89
	nop                                              ; $5bc5: $00
	nop                                              ; $5bc6: $00
	add  sp, -$6f                                    ; $5bc7: $e8 $91
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	add  sp, -$01                                    ; $5bcb: $e8 $ff
	nop                                              ; $5bcd: $00
	rst  $38                                         ; $5bce: $ff
	nop                                              ; $5bcf: $00
	rst  $38                                         ; $5bd0: $ff
	nop                                              ; $5bd1: $00
	add  $00                                         ; $5bd2: $c6 $00
	ld   a, e                                        ; $5bd4: $7b
	nop                                              ; $5bd5: $00
	nop                                              ; $5bd6: $00
	ld   c, $91                                      ; $5bd7: $0e $91
	nop                                              ; $5bd9: $00
	nop                                              ; $5bda: $00
	ld   c, $89                                      ; $5bdb: $0e $89
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	ld   c, $83                                      ; $5bdf: $0e $83
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	ld   bc, $0089                                   ; $5be3: $01 $89 $00
	ld   [bc], a                                     ; $5be6: $02
	ld   bc, $0e00                                   ; $5be7: $01 $00 $0e
	adc  c                                           ; $5bea: $89
	nop                                              ; $5beb: $00
	nop                                              ; $5bec: $00
	ld   c, $83                                      ; $5bed: $0e $83
	nop                                              ; $5bef: $00
	nop                                              ; $5bf0: $00
	ld   bc, $0089                                   ; $5bf1: $01 $89 $00
	ld   [bc], a                                     ; $5bf4: $02
	ld   bc, $0e00                                   ; $5bf5: $01 $00 $0e
	adc  c                                           ; $5bf8: $89
	nop                                              ; $5bf9: $00
	nop                                              ; $5bfa: $00
	ld   c, $83                                      ; $5bfb: $0e $83
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	ld   bc, $0089                                   ; $5bff: $01 $89 $00
	ld   [bc], a                                     ; $5c02: $02
	ld   bc, $0e00                                   ; $5c03: $01 $00 $0e
	adc  c                                           ; $5c06: $89
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	ld   c, $83                                      ; $5c09: $0e $83
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	ld   bc, $0089                                   ; $5c0d: $01 $89 $00
	ld   [bc], a                                     ; $5c10: $02
	ld   bc, $0e00                                   ; $5c11: $01 $00 $0e
	adc  c                                           ; $5c14: $89
	nop                                              ; $5c15: $00
	nop                                              ; $5c16: $00
	ld   c, $83                                      ; $5c17: $0e $83
	nop                                              ; $5c19: $00
	nop                                              ; $5c1a: $00
	ld   bc, $0089                                   ; $5c1b: $01 $89 $00
	ld   [bc], a                                     ; $5c1e: $02
	ld   bc, $0e00                                   ; $5c1f: $01 $00 $0e
	adc  c                                           ; $5c22: $89
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	ld   c, $83                                      ; $5c25: $0e $83
	nop                                              ; $5c27: $00
	nop                                              ; $5c28: $00
	ld   bc, $0089                                   ; $5c29: $01 $89 $00
	ld   [bc], a                                     ; $5c2c: $02
	ld   bc, $0e00                                   ; $5c2d: $01 $00 $0e
	adc  c                                           ; $5c30: $89
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	ld   c, $91                                      ; $5c33: $0e $91
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	ld   c, $89                                      ; $5c37: $0e $89
	nop                                              ; $5c39: $00
	nop                                              ; $5c3a: $00
	ld   [bc], a                                     ; $5c3b: $02
	add  c                                           ; $5c3c: $81
	nop                                              ; $5c3d: $00
	add  b                                           ; $5c3e: $80
	ld   bc, $0001                                   ; $5c3f: $01 $01 $00
	ld   bc, $0083                                   ; $5c42: $01 $83 $00
	nop                                              ; $5c45: $00
	ld   bc, $0080                                   ; $5c46: $01 $80 $00
	add  b                                           ; $5c49: $80
	ld   bc, $0080                                   ; $5c4a: $01 $80 $00
	nop                                              ; $5c4d: $00
	ld   [bc], a                                     ; $5c4e: $02
	adc  c                                           ; $5c4f: $89
	nop                                              ; $5c50: $00
	nop                                              ; $5c51: $00
	ld   [bc], a                                     ; $5c52: $02
	add  c                                           ; $5c53: $81
	nop                                              ; $5c54: $00
	add  b                                           ; $5c55: $80
	ld   b, $02                                      ; $5c56: $06 $02
	nop                                              ; $5c58: $00
	ld   b, $07                                      ; $5c59: $06 $07
	add  c                                           ; $5c5b: $81
	nop                                              ; $5c5c: $00
	ld   bc, $0607                                   ; $5c5d: $01 $07 $06
	add  b                                           ; $5c60: $80
	nop                                              ; $5c61: $00
	add  b                                           ; $5c62: $80
	ld   bc, $0080                                   ; $5c63: $01 $80 $00
	nop                                              ; $5c66: $00
	ld   [bc], a                                     ; $5c67: $02
	adc  c                                           ; $5c68: $89
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	ld   [bc], a                                     ; $5c6b: $02
	add  c                                           ; $5c6c: $81
	nop                                              ; $5c6d: $00
	add  b                                           ; $5c6e: $80
	ld   b, $02                                      ; $5c6f: $06 $02
	nop                                              ; $5c71: $00
	ld   b, $07                                      ; $5c72: $06 $07
	add  d                                           ; $5c74: $82
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	ld   bc, $0080                                   ; $5c77: $01 $80 $00
	add  b                                           ; $5c7a: $80
	ld   bc, $0080                                   ; $5c7b: $01 $80 $00
	nop                                              ; $5c7e: $00
	ld   [bc], a                                     ; $5c7f: $02
	adc  c                                           ; $5c80: $89
	nop                                              ; $5c81: $00
	ld   [bc], a                                     ; $5c82: $02
	ld   [bc], a                                     ; $5c83: $02
	nop                                              ; $5c84: $00
	ld   bc, $0080                                   ; $5c85: $01 $80 $00
	ld   b, $07                                      ; $5c88: $06 $07
	nop                                              ; $5c8a: $00
	rlca                                             ; $5c8b: $07
	nop                                              ; $5c8c: $00
	rlca                                             ; $5c8d: $07
	nop                                              ; $5c8e: $00
	rlca                                             ; $5c8f: $07
	add  h                                           ; $5c90: $84
	nop                                              ; $5c91: $00
	ld   [bc], a                                     ; $5c92: $02
	ld   bc, $0200                                   ; $5c93: $01 $00 $02
	adc  c                                           ; $5c96: $89
	nop                                              ; $5c97: $00
	nop                                              ; $5c98: $00
	inc  bc                                          ; $5c99: $03
	add  b                                           ; $5c9a: $80
	rlca                                             ; $5c9b: $07
	add  h                                           ; $5c9c: $84
	nop                                              ; $5c9d: $00
	ld   [bc], a                                     ; $5c9e: $02
	rlca                                             ; $5c9f: $07
	nop                                              ; $5ca0: $00
	rlca                                             ; $5ca1: $07
	add  h                                           ; $5ca2: $84
	nop                                              ; $5ca3: $00
	ld   [bc], a                                     ; $5ca4: $02
	ld   bc, $0200                                   ; $5ca5: $01 $00 $02
	adc  c                                           ; $5ca8: $89
	nop                                              ; $5ca9: $00
	ld   bc, $0602                                   ; $5caa: $01 $02 $06
	add  c                                           ; $5cad: $81
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	rlca                                             ; $5cb0: $07
	add  l                                           ; $5cb1: $85
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	rlca                                             ; $5cb4: $07
	add  b                                           ; $5cb5: $80
	nop                                              ; $5cb6: $00
	add  b                                           ; $5cb7: $80
	rlca                                             ; $5cb8: $07
	ld   [bc], a                                     ; $5cb9: $02
	ld   b, $00                                      ; $5cba: $06 $00
	ld   [bc], a                                     ; $5cbc: $02
	adc  c                                           ; $5cbd: $89
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	ld   [bc], a                                     ; $5cc0: $02
	sub  c                                           ; $5cc1: $91
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	ld   [bc], a                                     ; $5cc4: $02
	adc  c                                           ; $5cc5: $89
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	ld   a, [bc]                                     ; $5cc8: $0a
	adc  l                                           ; $5cc9: $8d
	nop                                              ; $5cca: $00
	nop                                              ; $5ccb: $00
	ld   [$0081], sp                                 ; $5ccc: $08 $81 $00
	nop                                              ; $5ccf: $00
	ld   [bc], a                                     ; $5cd0: $02
	adc  c                                           ; $5cd1: $89
	nop                                              ; $5cd2: $00
	nop                                              ; $5cd3: $00
	ld   a, [bc]                                     ; $5cd4: $0a
	adc  l                                           ; $5cd5: $8d
	nop                                              ; $5cd6: $00
	nop                                              ; $5cd7: $00
	ld   [$0081], sp                                 ; $5cd8: $08 $81 $00
	nop                                              ; $5cdb: $00
	ld   [bc], a                                     ; $5cdc: $02
	adc  c                                           ; $5cdd: $89
	nop                                              ; $5cde: $00
	nop                                              ; $5cdf: $00
	ld   c, $8d                                      ; $5ce0: $0e $8d
	nop                                              ; $5ce2: $00
	add  d                                           ; $5ce3: $82
	jr   nz, jr_02f_5ce6                             ; $5ce4: $20 $00

jr_02f_5ce6:
	ld   c, $ff                                      ; $5ce6: $0e $ff
	nop                                              ; $5ce8: $00
	rst  $38                                         ; $5ce9: $ff
	nop                                              ; $5cea: $00
	rst  $38                                         ; $5ceb: $ff
	nop                                              ; $5cec: $00
	add  $00                                         ; $5ced: $c6 $00
	ld   a, a                                        ; $5cef: $7f
	nop                                              ; $5cf0: $00
	nop                                              ; $5cf1: $00
	ld   c, $91                                      ; $5cf2: $0e $91
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	add  [hl]                                        ; $5cf6: $86
	adc  c                                           ; $5cf7: $89
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	add  [hl]                                        ; $5cfa: $86
	add  e                                           ; $5cfb: $83
	nop                                              ; $5cfc: $00
	nop                                              ; $5cfd: $00
	ld   bc, $0089                                   ; $5cfe: $01 $89 $00
	ld   [bc], a                                     ; $5d01: $02
	ld   bc, $8600                                   ; $5d02: $01 $00 $86
	adc  c                                           ; $5d05: $89
	nop                                              ; $5d06: $00
	nop                                              ; $5d07: $00
	add  [hl]                                        ; $5d08: $86
	add  e                                           ; $5d09: $83
	nop                                              ; $5d0a: $00
	nop                                              ; $5d0b: $00
	ld   bc, $0089                                   ; $5d0c: $01 $89 $00
	ld   [bc], a                                     ; $5d0f: $02
	ld   bc, $8600                                   ; $5d10: $01 $00 $86
	adc  c                                           ; $5d13: $89
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	add  [hl]                                        ; $5d16: $86
	add  e                                           ; $5d17: $83
	nop                                              ; $5d18: $00
	nop                                              ; $5d19: $00
	ld   bc, $0089                                   ; $5d1a: $01 $89 $00
	ld   [bc], a                                     ; $5d1d: $02
	ld   bc, $8600                                   ; $5d1e: $01 $00 $86
	adc  c                                           ; $5d21: $89
	nop                                              ; $5d22: $00
	nop                                              ; $5d23: $00
	add  [hl]                                        ; $5d24: $86
	add  e                                           ; $5d25: $83
	nop                                              ; $5d26: $00
	nop                                              ; $5d27: $00
	ld   bc, $0089                                   ; $5d28: $01 $89 $00
	ld   [bc], a                                     ; $5d2b: $02
	ld   bc, $8600                                   ; $5d2c: $01 $00 $86
	adc  c                                           ; $5d2f: $89
	nop                                              ; $5d30: $00
	nop                                              ; $5d31: $00
	add  [hl]                                        ; $5d32: $86
	add  e                                           ; $5d33: $83
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	ld   bc, $0089                                   ; $5d36: $01 $89 $00
	ld   [bc], a                                     ; $5d39: $02
	ld   bc, $8600                                   ; $5d3a: $01 $00 $86
	adc  c                                           ; $5d3d: $89
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	add  [hl]                                        ; $5d40: $86
	add  e                                           ; $5d41: $83
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	ld   bc, $0089                                   ; $5d44: $01 $89 $00
	ld   [bc], a                                     ; $5d47: $02
	ld   bc, $8600                                   ; $5d48: $01 $00 $86
	adc  c                                           ; $5d4b: $89
	nop                                              ; $5d4c: $00
	nop                                              ; $5d4d: $00
	add  [hl]                                        ; $5d4e: $86
	sub  c                                           ; $5d4f: $91
	nop                                              ; $5d50: $00
	nop                                              ; $5d51: $00
	add  [hl]                                        ; $5d52: $86
	adc  c                                           ; $5d53: $89
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	adc  e                                           ; $5d56: $8b
	add  h                                           ; $5d57: $84
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	ld   bc, $0080                                   ; $5d5a: $01 $80 $00
	add  b                                           ; $5d5d: $80
	ld   bc, $0001                                   ; $5d5e: $01 $01 $00
	ld   bc, $0084                                   ; $5d61: $01 $84 $00
	nop                                              ; $5d64: $00
	adc  e                                           ; $5d65: $8b
	adc  c                                           ; $5d66: $89
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	adc  e                                           ; $5d69: $8b
	add  d                                           ; $5d6a: $82
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	ld   bc, $0082                                   ; $5d6d: $01 $82 $00
	add  b                                           ; $5d70: $80
	ld   bc, $0001                                   ; $5d71: $01 $01 $00
	ld   bc, $0082                                   ; $5d74: $01 $82 $00
	add  b                                           ; $5d77: $80
	ld   bc, $8b00                                   ; $5d78: $01 $00 $8b
	adc  c                                           ; $5d7b: $89
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	adc  e                                           ; $5d7e: $8b
	add  d                                           ; $5d7f: $82
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	ld   bc, $0082                                   ; $5d82: $01 $82 $00
	add  b                                           ; $5d85: $80
	ld   bc, $0001                                   ; $5d86: $01 $01 $00
	ld   bc, $0082                                   ; $5d89: $01 $82 $00
	add  b                                           ; $5d8c: $80
	ld   bc, $8b00                                   ; $5d8d: $01 $00 $8b
	adc  c                                           ; $5d90: $89
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	adc  e                                           ; $5d93: $8b
	add  d                                           ; $5d94: $82
	nop                                              ; $5d95: $00
	nop                                              ; $5d96: $00
	ld   bc, $0081                                   ; $5d97: $01 $81 $00
	nop                                              ; $5d9a: $00
	ld   bc, $0080                                   ; $5d9b: $01 $80 $00
	add  b                                           ; $5d9e: $80
	ld   bc, $0082                                   ; $5d9f: $01 $82 $00
	add  b                                           ; $5da2: $80
	ld   bc, $8b00                                   ; $5da3: $01 $00 $8b
	adc  c                                           ; $5da6: $89
	nop                                              ; $5da7: $00
	nop                                              ; $5da8: $00
	adc  e                                           ; $5da9: $8b
	add  h                                           ; $5daa: $84
	nop                                              ; $5dab: $00
	ld   [bc], a                                     ; $5dac: $02
	ld   bc, $0100                                   ; $5dad: $01 $00 $01
	add  b                                           ; $5db0: $80
	nop                                              ; $5db1: $00
	add  b                                           ; $5db2: $80
	ld   bc, $0082                                   ; $5db3: $01 $82 $00
	add  b                                           ; $5db6: $80
	ld   bc, $8b00                                   ; $5db7: $01 $00 $8b
	adc  c                                           ; $5dba: $89
	nop                                              ; $5dbb: $00
	ld   [bc], a                                     ; $5dbc: $02
	adc  e                                           ; $5dbd: $8b
	nop                                              ; $5dbe: $00
	rlca                                             ; $5dbf: $07
	add  d                                           ; $5dc0: $82
	nop                                              ; $5dc1: $00
	ld   [bc], a                                     ; $5dc2: $02
	ld   b, $00                                      ; $5dc3: $06 $00
	ld   bc, $0088                                   ; $5dc5: $01 $88 $00
	ld   bc, $0883                                   ; $5dc8: $01 $83 $08
	adc  b                                           ; $5dcb: $88
	nop                                              ; $5dcc: $00
	ld   bc, $078b                                   ; $5dcd: $01 $8b $07
	add  e                                           ; $5dd0: $83
	nop                                              ; $5dd1: $00
	nop                                              ; $5dd2: $00
	rlca                                             ; $5dd3: $07
	add  h                                           ; $5dd4: $84
	nop                                              ; $5dd5: $00
	ld   [bc], a                                     ; $5dd6: $02
	rlca                                             ; $5dd7: $07
	nop                                              ; $5dd8: $00
	rlca                                             ; $5dd9: $07
	add  c                                           ; $5dda: $81
	nop                                              ; $5ddb: $00
	nop                                              ; $5ddc: $00
	adc  e                                           ; $5ddd: $8b
	adc  c                                           ; $5dde: $89
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	add  e                                           ; $5de1: $83
	adc  l                                           ; $5de2: $8d
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	ld   [$0081], sp                                 ; $5de5: $08 $81 $00
	nop                                              ; $5de8: $00
	adc  e                                           ; $5de9: $8b
	adc  c                                           ; $5dea: $89
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	add  e                                           ; $5ded: $83
	adc  l                                           ; $5dee: $8d
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	ld   [$0081], sp                                 ; $5df1: $08 $81 $00
	nop                                              ; $5df4: $00
	adc  e                                           ; $5df5: $8b
	adc  c                                           ; $5df6: $89
	nop                                              ; $5df7: $00
	nop                                              ; $5df8: $00
	add  [hl]                                        ; $5df9: $86
	adc  l                                           ; $5dfa: $8d
	nop                                              ; $5dfb: $00
	add  d                                           ; $5dfc: $82
	jr   nz, jr_02f_5dff                             ; $5dfd: $20 $00

jr_02f_5dff:
	add  [hl]                                        ; $5dff: $86
	rst  $38                                         ; $5e00: $ff
	nop                                              ; $5e01: $00
	rst  $38                                         ; $5e02: $ff
	nop                                              ; $5e03: $00
	rst  $38                                         ; $5e04: $ff
	nop                                              ; $5e05: $00
	add  $00                                         ; $5e06: $c6 $00
	ld   a, b                                        ; $5e08: $78
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	ld   c, $91                                      ; $5e0b: $0e $91
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	ld   c, $89                                      ; $5e0f: $0e $89
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	ld   c, $83                                      ; $5e13: $0e $83
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	ld   bc, $0089                                   ; $5e17: $01 $89 $00
	ld   [bc], a                                     ; $5e1a: $02
	ld   bc, $0e00                                   ; $5e1b: $01 $00 $0e
	adc  c                                           ; $5e1e: $89
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	ld   c, $83                                      ; $5e21: $0e $83
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	ld   bc, $0089                                   ; $5e25: $01 $89 $00
	ld   [bc], a                                     ; $5e28: $02
	ld   bc, $0e00                                   ; $5e29: $01 $00 $0e
	adc  c                                           ; $5e2c: $89
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	ld   c, $83                                      ; $5e2f: $0e $83
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	ld   bc, $0089                                   ; $5e33: $01 $89 $00
	ld   [bc], a                                     ; $5e36: $02
	ld   bc, $0e00                                   ; $5e37: $01 $00 $0e
	adc  c                                           ; $5e3a: $89
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	ld   c, $83                                      ; $5e3d: $0e $83
	nop                                              ; $5e3f: $00
	nop                                              ; $5e40: $00
	ld   bc, $0089                                   ; $5e41: $01 $89 $00
	ld   [bc], a                                     ; $5e44: $02
	ld   bc, $0e00                                   ; $5e45: $01 $00 $0e
	adc  c                                           ; $5e48: $89
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	ld   c, $83                                      ; $5e4b: $0e $83
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	ld   bc, $0089                                   ; $5e4f: $01 $89 $00
	ld   [bc], a                                     ; $5e52: $02
	ld   bc, $0e00                                   ; $5e53: $01 $00 $0e
	adc  c                                           ; $5e56: $89
	nop                                              ; $5e57: $00
	nop                                              ; $5e58: $00
	ld   c, $83                                      ; $5e59: $0e $83
	nop                                              ; $5e5b: $00
	nop                                              ; $5e5c: $00
	ld   bc, $0089                                   ; $5e5d: $01 $89 $00
	ld   [bc], a                                     ; $5e60: $02
	ld   bc, $0e00                                   ; $5e61: $01 $00 $0e
	adc  c                                           ; $5e64: $89
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	ld   c, $91                                      ; $5e67: $0e $91
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	ld   c, $89                                      ; $5e6b: $0e $89
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	ld   [bc], a                                     ; $5e6f: $02
	adc  l                                           ; $5e70: $8d
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	ld   b, $81                                      ; $5e73: $06 $81
	nop                                              ; $5e75: $00
	nop                                              ; $5e76: $00
	inc  b                                           ; $5e77: $04
	adc  c                                           ; $5e78: $89
	nop                                              ; $5e79: $00
	inc  bc                                          ; $5e7a: $03
	ld   [bc], a                                     ; $5e7b: $02
	ld   bc, $0100                                   ; $5e7c: $01 $00 $01
	adc  d                                           ; $5e7f: $8a
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	ld   b, $81                                      ; $5e82: $06 $81
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	inc  b                                           ; $5e86: $04
	adc  c                                           ; $5e87: $89
	nop                                              ; $5e88: $00
	ld   bc, $0102                                   ; $5e89: $01 $02 $01
	add  b                                           ; $5e8c: $80
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	ld   bc, $0087                                   ; $5e8f: $01 $87 $00
	add  c                                           ; $5e92: $81
	ld   b, $81                                      ; $5e93: $06 $81
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	inc  b                                           ; $5e97: $04
	adc  c                                           ; $5e98: $89
	nop                                              ; $5e99: $00
	ld   bc, $0102                                   ; $5e9a: $01 $02 $01
	add  b                                           ; $5e9d: $80
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	ld   bc, $0087                                   ; $5ea0: $01 $87 $00
	add  c                                           ; $5ea3: $81
	ld   b, $81                                      ; $5ea4: $06 $81
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	inc  b                                           ; $5ea8: $04
	adc  c                                           ; $5ea9: $89
	nop                                              ; $5eaa: $00
	ld   bc, $0102                                   ; $5eab: $01 $02 $01
	add  b                                           ; $5eae: $80
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	rlca                                             ; $5eb1: $07
	add  b                                           ; $5eb2: $80
	ld   b, $00                                      ; $5eb3: $06 $00
	nop                                              ; $5eb5: $00
	add  b                                           ; $5eb6: $80
	ld   b, $00                                      ; $5eb7: $06 $00
	nop                                              ; $5eb9: $00
	add  b                                           ; $5eba: $80
	ld   b, $85                                      ; $5ebb: $06 $85
	nop                                              ; $5ebd: $00
	nop                                              ; $5ebe: $00
	inc  b                                           ; $5ebf: $04
	adc  c                                           ; $5ec0: $89
	nop                                              ; $5ec1: $00
	ld   bc, $0102                                   ; $5ec2: $01 $02 $01
	add  b                                           ; $5ec5: $80
	nop                                              ; $5ec6: $00
	nop                                              ; $5ec7: $00
	rlca                                             ; $5ec8: $07
	add  b                                           ; $5ec9: $80
	ld   b, $00                                      ; $5eca: $06 $00
	nop                                              ; $5ecc: $00
	add  b                                           ; $5ecd: $80
	ld   b, $00                                      ; $5ece: $06 $00
	nop                                              ; $5ed0: $00
	add  b                                           ; $5ed1: $80
	ld   b, $83                                      ; $5ed2: $06 $83
	nop                                              ; $5ed4: $00
	ld   [bc], a                                     ; $5ed5: $02
	rlca                                             ; $5ed6: $07
	nop                                              ; $5ed7: $00
	inc  bc                                          ; $5ed8: $03
	adc  c                                           ; $5ed9: $89
	nop                                              ; $5eda: $00
	nop                                              ; $5edb: $00
	ld   [bc], a                                     ; $5edc: $02
	add  b                                           ; $5edd: $80
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	ld   bc, $008a                                   ; $5ee0: $01 $8a $00
	inc  b                                           ; $5ee3: $04
	rlca                                             ; $5ee4: $07
	nop                                              ; $5ee5: $00
	rlca                                             ; $5ee6: $07
	nop                                              ; $5ee7: $00
	inc  bc                                          ; $5ee8: $03
	adc  c                                           ; $5ee9: $89
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	dec  bc                                          ; $5eec: $0b
	adc  l                                           ; $5eed: $8d
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	ld   [$0080], sp                                 ; $5ef0: $08 $80 $00
	ld   bc, $0407                                   ; $5ef3: $01 $07 $04
	adc  c                                           ; $5ef6: $89
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	dec  bc                                          ; $5ef9: $0b
	adc  l                                           ; $5efa: $8d
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	ld   [$0081], sp                                 ; $5efd: $08 $81 $00
	nop                                              ; $5f00: $00
	inc  bc                                          ; $5f01: $03
	adc  c                                           ; $5f02: $89
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	ld   c, $8d                                      ; $5f05: $0e $8d
	nop                                              ; $5f07: $00
	add  d                                           ; $5f08: $82
	jr   nz, jr_02f_5f0b                             ; $5f09: $20 $00

jr_02f_5f0b:
	ld   c, $ff                                      ; $5f0b: $0e $ff
	nop                                              ; $5f0d: $00
	rst  $38                                         ; $5f0e: $ff
	nop                                              ; $5f0f: $00
	rst  $38                                         ; $5f10: $ff
	nop                                              ; $5f11: $00
	add  $00                                         ; $5f12: $c6 $00
	ld   e, h                                        ; $5f14: $5c
	nop                                              ; $5f15: $00
	sub  d                                           ; $5f16: $92
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	ret  nz                                          ; $5f19: $c0

	adc  c                                           ; $5f1a: $89
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	ret  nz                                          ; $5f1d: $c0

	sub  c                                           ; $5f1e: $91
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	ret  nz                                          ; $5f21: $c0

	adc  c                                           ; $5f22: $89
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	ret  nz                                          ; $5f25: $c0

	add  e                                           ; $5f26: $83
	nop                                              ; $5f27: $00
	ld   [$0301], sp                                 ; $5f28: $08 $01 $03
	ld   bc, $0107                                   ; $5f2b: $01 $07 $01
	inc  bc                                          ; $5f2e: $03
	ld   bc, $080f                                   ; $5f2f: $01 $0f $08
	add  e                                           ; $5f32: $83
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	ret  nz                                          ; $5f35: $c0

	adc  c                                           ; $5f36: $89
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	ret  nz                                          ; $5f39: $c0

	add  e                                           ; $5f3a: $83
	nop                                              ; $5f3b: $00
	ld   [$0311], sp                                 ; $5f3c: $08 $11 $03
	ld   bc, $0107                                   ; $5f3f: $01 $07 $01
	inc  bc                                          ; $5f42: $03
	ld   bc, $180f                                   ; $5f43: $01 $0f $18
	add  e                                           ; $5f46: $83
	nop                                              ; $5f47: $00
	nop                                              ; $5f48: $00
	ret  nz                                          ; $5f49: $c0

	adc  c                                           ; $5f4a: $89
	nop                                              ; $5f4b: $00
	nop                                              ; $5f4c: $00
	ret  nz                                          ; $5f4d: $c0

	sub  c                                           ; $5f4e: $91
	nop                                              ; $5f4f: $00
	nop                                              ; $5f50: $00
	ret  nz                                          ; $5f51: $c0

	adc  c                                           ; $5f52: $89
	nop                                              ; $5f53: $00
	nop                                              ; $5f54: $00
	ret  nz                                          ; $5f55: $c0

	sub  c                                           ; $5f56: $91
	nop                                              ; $5f57: $00
	nop                                              ; $5f58: $00
	ret  nz                                          ; $5f59: $c0

	adc  c                                           ; $5f5a: $89
	nop                                              ; $5f5b: $00
	nop                                              ; $5f5c: $00
	ret  nz                                          ; $5f5d: $c0

	sub  c                                           ; $5f5e: $91
	nop                                              ; $5f5f: $00
	nop                                              ; $5f60: $00
	ret  nz                                          ; $5f61: $c0

	adc  c                                           ; $5f62: $89
	nop                                              ; $5f63: $00
	rlca                                             ; $5f64: $07
	ret  nz                                          ; $5f65: $c0

	nop                                              ; $5f66: $00
	scf                                              ; $5f67: $37
	rrca                                             ; $5f68: $0f
	ld   bc, $0103                                   ; $5f69: $01 $03 $01
	dec  sp                                          ; $5f6c: $3b
	adc  d                                           ; $5f6d: $8a
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	ret  nz                                          ; $5f70: $c0

	adc  c                                           ; $5f71: $89
	nop                                              ; $5f72: $00
	nop                                              ; $5f73: $00
	ret  nz                                          ; $5f74: $c0

	add  c                                           ; $5f75: $81
	nop                                              ; $5f76: $00
	add  b                                           ; $5f77: $80
	add  hl, bc                                      ; $5f78: $09
	adc  h                                           ; $5f79: $8c
	nop                                              ; $5f7a: $00
	nop                                              ; $5f7b: $00
	ret  nz                                          ; $5f7c: $c0

	adc  c                                           ; $5f7d: $89
	nop                                              ; $5f7e: $00
	inc  bc                                          ; $5f7f: $03
	add  b                                           ; $5f80: $80
	ld   bc, $4803                                   ; $5f81: $01 $03 $48
	add  b                                           ; $5f84: $80
	inc  de                                          ; $5f85: $13
	inc  bc                                          ; $5f86: $03
	ld   c, h                                        ; $5f87: $4c
	ld   bc, $480f                                   ; $5f88: $01 $0f $48
	adc  b                                           ; $5f8b: $88
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	ret  nz                                          ; $5f8e: $c0

	adc  c                                           ; $5f8f: $89
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	ret  nz                                          ; $5f92: $c0

	add  c                                           ; $5f93: $81
	nop                                              ; $5f94: $00
	add  b                                           ; $5f95: $80
	add  hl, bc                                      ; $5f96: $09
	add  [hl]                                        ; $5f97: $86
	nop                                              ; $5f98: $00
	ld   b, $0d                                      ; $5f99: $06 $0d
	inc  bc                                          ; $5f9b: $03
	ld   c, $0b                                      ; $5f9c: $0e $0b
	rlca                                             ; $5f9e: $07
	inc  c                                           ; $5f9f: $0c
	ret  nz                                          ; $5fa0: $c0

	adc  c                                           ; $5fa1: $89
	nop                                              ; $5fa2: $00
	nop                                              ; $5fa3: $00
	ret  nz                                          ; $5fa4: $c0

	add  b                                           ; $5fa5: $80
	nop                                              ; $5fa6: $00
	inc  bc                                          ; $5fa7: $03
	ld   c, c                                        ; $5fa8: $49
	inc  bc                                          ; $5fa9: $03
	ld   bc, $854b                                   ; $5faa: $01 $4b $85
	nop                                              ; $5fad: $00
	ld   b, $1d                                      ; $5fae: $06 $1d
	inc  bc                                          ; $5fb0: $03
	ld   e, $1b                                      ; $5fb1: $1e $1b
	rlca                                             ; $5fb3: $07
	inc  e                                           ; $5fb4: $1c
	ret  nz                                          ; $5fb5: $c0

	adc  c                                           ; $5fb6: $89
	nop                                              ; $5fb7: $00
	nop                                              ; $5fb8: $00
	ret  nz                                          ; $5fb9: $c0

	adc  e                                           ; $5fba: $8b
	nop                                              ; $5fbb: $00
	ld   b, $50                                      ; $5fbc: $06 $50
	ld   bc, $4351                                   ; $5fbe: $01 $51 $43
	rlca                                             ; $5fc1: $07
	ld   bc, $8985                                   ; $5fc2: $01 $85 $89
	nop                                              ; $5fc5: $00
	nop                                              ; $5fc6: $00
	ret  nz                                          ; $5fc7: $c0

	sub  c                                           ; $5fc8: $91
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	ret  nz                                          ; $5fcb: $c0

	adc  c                                           ; $5fcc: $89
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	ret  nz                                          ; $5fcf: $c0

	add  b                                           ; $5fd0: $80
	nop                                              ; $5fd1: $00
	inc  b                                           ; $5fd2: $04
	ld   d, l                                        ; $5fd3: $55
	inc  bc                                          ; $5fd4: $03
	ld   bc, $580f                                   ; $5fd5: $01 $0f $58
	add  d                                           ; $5fd8: $82
	nop                                              ; $5fd9: $00
	inc  bc                                          ; $5fda: $03
	ld   d, d                                        ; $5fdb: $52
	ld   bc, $5407                                   ; $5fdc: $01 $07 $54
	add  d                                           ; $5fdf: $82
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	ret  nz                                          ; $5fe2: $c0

	adc  c                                           ; $5fe3: $89
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	ret  nz                                          ; $5fe6: $c0

	add  c                                           ; $5fe7: $81
	nop                                              ; $5fe8: $00
	rlca                                             ; $5fe9: $07
	ld   h, a                                        ; $5fea: $67
	rrca                                             ; $5feb: $0f
	ld   bc, $0103                                   ; $5fec: $01 $03 $01
	rlca                                             ; $5fef: $07
	ld   bc, $866d                                   ; $5ff0: $01 $6d $86
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	ret  nz                                          ; $5ff5: $c0

	adc  c                                           ; $5ff6: $89
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	ret  nz                                          ; $5ff9: $c0

	add  c                                           ; $5ffa: $81
	nop                                              ; $5ffb: $00
	db   $10                                         ; $5ffc: $10
	ld   [hl], a                                     ; $5ffd: $77
	rrca                                             ; $5ffe: $0f
	ld   bc, $0103                                   ; $5fff: $01 $03 $01
	rlca                                             ; $6002: $07
	ld   bc, $007d                                   ; $6003: $01 $7d $00
	ld   e, c                                        ; $6006: $59
	inc  bc                                          ; $6007: $03
	ld   bc, $0107                                   ; $6008: $01 $07 $01
	inc  bc                                          ; $600b: $03
	ld   e, [hl]                                     ; $600c: $5e
	ret  nz                                          ; $600d: $c0

	adc  c                                           ; $600e: $89
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	ret  nz                                          ; $6011: $c0

	sub  c                                           ; $6012: $91
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	ret  nz                                          ; $6015: $c0

	rst  $38                                         ; $6016: $ff
	nop                                              ; $6017: $00
	rst  $38                                         ; $6018: $ff
	nop                                              ; $6019: $00
	rst  $38                                         ; $601a: $ff
	nop                                              ; $601b: $00
	add  $00                                         ; $601c: $c6 $00
	ld   e, h                                        ; $601e: $5c
	nop                                              ; $601f: $00
	sub  d                                           ; $6020: $92
	nop                                              ; $6021: $00
	nop                                              ; $6022: $00
	ret  nz                                          ; $6023: $c0

	adc  c                                           ; $6024: $89
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	ret  nz                                          ; $6027: $c0

	sub  c                                           ; $6028: $91
	nop                                              ; $6029: $00
	nop                                              ; $602a: $00
	ret  nz                                          ; $602b: $c0

	adc  c                                           ; $602c: $89
	nop                                              ; $602d: $00
	nop                                              ; $602e: $00
	ret  nz                                          ; $602f: $c0

	add  e                                           ; $6030: $83
	nop                                              ; $6031: $00
	ld   [$0301], sp                                 ; $6032: $08 $01 $03
	ld   bc, $0107                                   ; $6035: $01 $07 $01
	inc  bc                                          ; $6038: $03
	ld   bc, $080f                                   ; $6039: $01 $0f $08
	add  e                                           ; $603c: $83
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	ret  nz                                          ; $603f: $c0

	adc  c                                           ; $6040: $89
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	ret  nz                                          ; $6043: $c0

	add  e                                           ; $6044: $83
	nop                                              ; $6045: $00
	ld   [$0311], sp                                 ; $6046: $08 $11 $03
	ld   bc, $0107                                   ; $6049: $01 $07 $01
	inc  bc                                          ; $604c: $03
	ld   bc, $180f                                   ; $604d: $01 $0f $18
	add  e                                           ; $6050: $83
	nop                                              ; $6051: $00
	nop                                              ; $6052: $00
	ret  nz                                          ; $6053: $c0

	adc  c                                           ; $6054: $89
	nop                                              ; $6055: $00
	nop                                              ; $6056: $00
	ret  nz                                          ; $6057: $c0

	sub  c                                           ; $6058: $91
	nop                                              ; $6059: $00
	nop                                              ; $605a: $00
	ret  nz                                          ; $605b: $c0

	adc  c                                           ; $605c: $89
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	ret  nz                                          ; $605f: $c0

	sub  c                                           ; $6060: $91
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	ret  nz                                          ; $6063: $c0

	adc  c                                           ; $6064: $89
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	ret  nz                                          ; $6067: $c0

	sub  c                                           ; $6068: $91
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	ret  nz                                          ; $606b: $c0

	adc  c                                           ; $606c: $89
	nop                                              ; $606d: $00
	rlca                                             ; $606e: $07
	ret  nz                                          ; $606f: $c0

	nop                                              ; $6070: $00
	scf                                              ; $6071: $37
	rrca                                             ; $6072: $0f
	ld   bc, $0103                                   ; $6073: $01 $03 $01
	dec  sp                                          ; $6076: $3b
	adc  d                                           ; $6077: $8a
	nop                                              ; $6078: $00
	nop                                              ; $6079: $00
	ret  nz                                          ; $607a: $c0

	adc  c                                           ; $607b: $89
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00
	ret  nz                                          ; $607e: $c0

	add  c                                           ; $607f: $81
	nop                                              ; $6080: $00
	add  b                                           ; $6081: $80
	add  hl, bc                                      ; $6082: $09
	adc  h                                           ; $6083: $8c
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	ret  nz                                          ; $6086: $c0

	adc  c                                           ; $6087: $89
	nop                                              ; $6088: $00
	inc  bc                                          ; $6089: $03
	add  b                                           ; $608a: $80
	ld   bc, $4803                                   ; $608b: $01 $03 $48
	add  b                                           ; $608e: $80
	inc  de                                          ; $608f: $13
	inc  bc                                          ; $6090: $03
	ld   c, h                                        ; $6091: $4c
	ld   bc, $480f                                   ; $6092: $01 $0f $48
	adc  b                                           ; $6095: $88
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	ret  nz                                          ; $6098: $c0

	adc  c                                           ; $6099: $89
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	ret  nz                                          ; $609c: $c0

	add  c                                           ; $609d: $81
	nop                                              ; $609e: $00
	add  b                                           ; $609f: $80
	add  hl, bc                                      ; $60a0: $09
	add  [hl]                                        ; $60a1: $86
	nop                                              ; $60a2: $00
	ld   b, $0d                                      ; $60a3: $06 $0d
	inc  bc                                          ; $60a5: $03
	ld   c, $0b                                      ; $60a6: $0e $0b
	rlca                                             ; $60a8: $07
	inc  c                                           ; $60a9: $0c
	ret  nz                                          ; $60aa: $c0

	adc  c                                           ; $60ab: $89
	nop                                              ; $60ac: $00
	nop                                              ; $60ad: $00
	ret  nz                                          ; $60ae: $c0

	add  b                                           ; $60af: $80
	nop                                              ; $60b0: $00
	inc  bc                                          ; $60b1: $03
	ld   c, c                                        ; $60b2: $49
	inc  bc                                          ; $60b3: $03
	ld   bc, $854b                                   ; $60b4: $01 $4b $85
	nop                                              ; $60b7: $00
	ld   b, $1d                                      ; $60b8: $06 $1d
	inc  bc                                          ; $60ba: $03
	ld   e, $1b                                      ; $60bb: $1e $1b
	rlca                                             ; $60bd: $07
	inc  e                                           ; $60be: $1c
	ret  nz                                          ; $60bf: $c0

	adc  c                                           ; $60c0: $89
	nop                                              ; $60c1: $00
	nop                                              ; $60c2: $00
	ret  nz                                          ; $60c3: $c0

	adc  e                                           ; $60c4: $8b
	nop                                              ; $60c5: $00
	ld   b, $50                                      ; $60c6: $06 $50
	ld   bc, $4351                                   ; $60c8: $01 $51 $43
	rlca                                             ; $60cb: $07
	ld   bc, $8985                                   ; $60cc: $01 $85 $89
	nop                                              ; $60cf: $00
	nop                                              ; $60d0: $00
	ret  nz                                          ; $60d1: $c0

	add  c                                           ; $60d2: $81
	nop                                              ; $60d3: $00
	add  hl, bc                                      ; $60d4: $09
	ld   d, l                                        ; $60d5: $55
	inc  bc                                          ; $60d6: $03
	ld   bc, $580f                                   ; $60d7: $01 $0f $58
	nop                                              ; $60da: $00
	ld   d, d                                        ; $60db: $52
	ld   bc, $5407                                   ; $60dc: $01 $07 $54
	add  h                                           ; $60df: $84
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	ret  nz                                          ; $60e2: $c0

	adc  c                                           ; $60e3: $89
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	ret  nz                                          ; $60e6: $c0

	add  c                                           ; $60e7: $81
	nop                                              ; $60e8: $00
	ld   a, [bc]                                     ; $60e9: $0a
	ld   h, b                                        ; $60ea: $60
	ld   bc, $0103                                   ; $60eb: $01 $03 $01
	rlca                                             ; $60ee: $07
	ld   h, h                                        ; $60ef: $64
	nop                                              ; $60f0: $00
	inc  [hl]                                        ; $60f1: $34
	ld   bc, $3603                                   ; $60f2: $01 $03 $36
	add  e                                           ; $60f5: $83
	nop                                              ; $60f6: $00
	nop                                              ; $60f7: $00
	ret  nz                                          ; $60f8: $c0

	adc  c                                           ; $60f9: $89
	nop                                              ; $60fa: $00
	nop                                              ; $60fb: $00
	ret  nz                                          ; $60fc: $c0

	add  c                                           ; $60fd: $81
	nop                                              ; $60fe: $00
	dec  b                                           ; $60ff: $05
	ld   [hl], b                                     ; $6100: $70
	ld   bc, $0103                                   ; $6101: $01 $03 $01
	rlca                                             ; $6104: $07
	ld   [hl], h                                     ; $6105: $74
	adc  b                                           ; $6106: $88
	nop                                              ; $6107: $00
	nop                                              ; $6108: $00
	ret  nz                                          ; $6109: $c0

	adc  c                                           ; $610a: $89
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	ret  nz                                          ; $610d: $c0

	sub  c                                           ; $610e: $91
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	ret  nz                                          ; $6111: $c0

	adc  c                                           ; $6112: $89
	nop                                              ; $6113: $00
	nop                                              ; $6114: $00
	ret  nz                                          ; $6115: $c0

	sub  c                                           ; $6116: $91
	nop                                              ; $6117: $00
	nop                                              ; $6118: $00
	ret  nz                                          ; $6119: $c0

	rst  $38                                         ; $611a: $ff
	nop                                              ; $611b: $00
	rst  $38                                         ; $611c: $ff
	nop                                              ; $611d: $00
	rst  $38                                         ; $611e: $ff
	nop                                              ; $611f: $00
	add  $00                                         ; $6120: $c6 $00
	ld   h, [hl]                                     ; $6122: $66
	nop                                              ; $6123: $00
	sub  c                                           ; $6124: $91
	nop                                              ; $6125: $00
	ld   bc, $2820                                   ; $6126: $01 $20 $28
	adc  c                                           ; $6129: $89
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	ld   [$0090], sp                                 ; $612c: $08 $90 $00
	ld   bc, $2820                                   ; $612f: $01 $20 $28
	adc  c                                           ; $6132: $89
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	ld   [$0090], sp                                 ; $6135: $08 $90 $00
	ld   bc, $2820                                   ; $6138: $01 $20 $28
	adc  c                                           ; $613b: $89
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	ld   [$0090], sp                                 ; $613e: $08 $90 $00
	ld   bc, $2820                                   ; $6141: $01 $20 $28
	adc  c                                           ; $6144: $89
	nop                                              ; $6145: $00
	nop                                              ; $6146: $00
	ld   [$0090], sp                                 ; $6147: $08 $90 $00
	ld   bc, $2820                                   ; $614a: $01 $20 $28
	adc  c                                           ; $614d: $89
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	ld   [$008f], sp                                 ; $6150: $08 $8f $00
	ld   [bc], a                                     ; $6153: $02
	ld   h, b                                        ; $6154: $60
	nop                                              ; $6155: $00
	ld   l, b                                        ; $6156: $68
	adc  c                                           ; $6157: $89
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	ld   [$008f], sp                                 ; $615a: $08 $8f $00
	ld   [bc], a                                     ; $615d: $02
	ld   h, b                                        ; $615e: $60
	nop                                              ; $615f: $00
	ld   l, b                                        ; $6160: $68
	adc  c                                           ; $6161: $89
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	ld   c, b                                        ; $6164: $48
	add  h                                           ; $6165: $84
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	ld   b, b                                        ; $6168: $40
	add  d                                           ; $6169: $82
	nop                                              ; $616a: $00
	ld   bc, $6020                                   ; $616b: $01 $20 $60
	add  d                                           ; $616e: $82
	nop                                              ; $616f: $00
	ld   [bc], a                                     ; $6170: $02
	jr   nz, jr_02f_6173                             ; $6171: $20 $00

jr_02f_6173:
	ld   l, b                                        ; $6173: $68
	adc  c                                           ; $6174: $89
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	ld   [$0091], sp                                 ; $6177: $08 $91 $00
	nop                                              ; $617a: $00
	ld   [$0089], sp                                 ; $617b: $08 $89 $00
	nop                                              ; $617e: $00
	ld   [$0091], sp                                 ; $617f: $08 $91 $00
	nop                                              ; $6182: $00
	ld   [$0089], sp                                 ; $6183: $08 $89 $00
	nop                                              ; $6186: $00
	ld   [$0091], sp                                 ; $6187: $08 $91 $00
	nop                                              ; $618a: $00
	ld   [$0089], sp                                 ; $618b: $08 $89 $00
	ld   [bc], a                                     ; $618e: $02
	ld   [$0200], sp                                 ; $618f: $08 $00 $02
	add  h                                           ; $6192: $84
	nop                                              ; $6193: $00
	ld   [bc], a                                     ; $6194: $02
	ld   [bc], a                                     ; $6195: $02
	nop                                              ; $6196: $00
	inc  b                                           ; $6197: $04
	add  h                                           ; $6198: $84
	nop                                              ; $6199: $00
	ld   [bc], a                                     ; $619a: $02
	inc  b                                           ; $619b: $04
	nop                                              ; $619c: $00
	ld   [$0089], sp                                 ; $619d: $08 $89 $00
	ld   [bc], a                                     ; $61a0: $02
	ld   [$0300], sp                                 ; $61a1: $08 $00 $03
	add  h                                           ; $61a4: $84
	nop                                              ; $61a5: $00
	ld   [bc], a                                     ; $61a6: $02
	inc  bc                                          ; $61a7: $03
	nop                                              ; $61a8: $00
	inc  b                                           ; $61a9: $04
	add  h                                           ; $61aa: $84
	nop                                              ; $61ab: $00
	ld   [bc], a                                     ; $61ac: $02
	inc  b                                           ; $61ad: $04
	nop                                              ; $61ae: $00
	ld   [$0089], sp                                 ; $61af: $08 $89 $00
	ld   [bc], a                                     ; $61b2: $02
	ld   [$0300], sp                                 ; $61b3: $08 $00 $03
	add  h                                           ; $61b6: $84
	nop                                              ; $61b7: $00
	ld   [bc], a                                     ; $61b8: $02
	inc  bc                                          ; $61b9: $03
	nop                                              ; $61ba: $00
	inc  b                                           ; $61bb: $04
	add  h                                           ; $61bc: $84
	nop                                              ; $61bd: $00
	ld   [bc], a                                     ; $61be: $02
	inc  b                                           ; $61bf: $04
	nop                                              ; $61c0: $00
	ld   [$0089], sp                                 ; $61c1: $08 $89 $00
	ld   [bc], a                                     ; $61c4: $02
	ld   [$0300], sp                                 ; $61c5: $08 $00 $03
	add  h                                           ; $61c8: $84
	nop                                              ; $61c9: $00
	ld   [bc], a                                     ; $61ca: $02
	inc  bc                                          ; $61cb: $03
	nop                                              ; $61cc: $00
	ld   [bc], a                                     ; $61cd: $02
	add  h                                           ; $61ce: $84
	nop                                              ; $61cf: $00
	ld   [bc], a                                     ; $61d0: $02
	ld   [bc], a                                     ; $61d1: $02
	nop                                              ; $61d2: $00
	ld   [$0089], sp                                 ; $61d3: $08 $89 $00
	ld   bc, $0108                                   ; $61d6: $01 $08 $01
	add  b                                           ; $61d9: $80
	nop                                              ; $61da: $00
	add  b                                           ; $61db: $80
	ld   bc, $0080                                   ; $61dc: $01 $80 $00
	ld   [bc], a                                     ; $61df: $02
	ld   bc, $0100                                   ; $61e0: $01 $00 $01
	add  b                                           ; $61e3: $80
	nop                                              ; $61e4: $00
	add  b                                           ; $61e5: $80
	ld   bc, $0080                                   ; $61e6: $01 $80 $00
	nop                                              ; $61e9: $00
	ld   bc, $0080                                   ; $61ea: $01 $80 $00
	nop                                              ; $61ed: $00
	ld   [$0089], sp                                 ; $61ee: $08 $89 $00
	ld   bc, $0108                                   ; $61f1: $01 $08 $01
	add  b                                           ; $61f4: $80
	nop                                              ; $61f5: $00
	add  b                                           ; $61f6: $80
	ld   bc, $0080                                   ; $61f7: $01 $80 $00
	ld   [bc], a                                     ; $61fa: $02
	ld   bc, $0100                                   ; $61fb: $01 $00 $01
	add  b                                           ; $61fe: $80
	nop                                              ; $61ff: $00
	add  b                                           ; $6200: $80
	ld   bc, $0080                                   ; $6201: $01 $80 $00
	nop                                              ; $6204: $00
	ld   bc, $0080                                   ; $6205: $01 $80 $00
	nop                                              ; $6208: $00
	ld   [$0089], sp                                 ; $6209: $08 $89 $00
	nop                                              ; $620c: $00
	ld   c, b                                        ; $620d: $48
	sub  c                                           ; $620e: $91
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	ld   c, b                                        ; $6211: $48
	rst  $38                                         ; $6212: $ff
	nop                                              ; $6213: $00
	rst  $38                                         ; $6214: $ff
	nop                                              ; $6215: $00
	rst  $38                                         ; $6216: $ff
	nop                                              ; $6217: $00
	add  $00                                         ; $6218: $c6 $00
	ld   [hl], b                                     ; $621a: $70
	nop                                              ; $621b: $00
	nop                                              ; $621c: $00
	ld   c, $91                                      ; $621d: $0e $91
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	ld   b, $89                                      ; $6221: $06 $89
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	ld   b, $83                                      ; $6225: $06 $83
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	ld   bc, $0089                                   ; $6229: $01 $89 $00
	ld   [bc], a                                     ; $622c: $02
	ld   bc, $0600                                   ; $622d: $01 $00 $06
	adc  c                                           ; $6230: $89
	nop                                              ; $6231: $00
	nop                                              ; $6232: $00
	ld   b, $83                                      ; $6233: $06 $83
	nop                                              ; $6235: $00
	nop                                              ; $6236: $00
	ld   bc, $0089                                   ; $6237: $01 $89 $00
	ld   [bc], a                                     ; $623a: $02
	ld   bc, $0600                                   ; $623b: $01 $00 $06
	adc  c                                           ; $623e: $89
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	ld   b, $83                                      ; $6241: $06 $83
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	ld   bc, $0089                                   ; $6245: $01 $89 $00
	ld   [bc], a                                     ; $6248: $02
	ld   bc, $0600                                   ; $6249: $01 $00 $06
	adc  c                                           ; $624c: $89
	nop                                              ; $624d: $00
	nop                                              ; $624e: $00
	ld   b, $83                                      ; $624f: $06 $83
	nop                                              ; $6251: $00
	nop                                              ; $6252: $00
	ld   bc, $0089                                   ; $6253: $01 $89 $00
	ld   [bc], a                                     ; $6256: $02
	ld   bc, $0600                                   ; $6257: $01 $00 $06
	adc  c                                           ; $625a: $89
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	ld   b, $83                                      ; $625d: $06 $83
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	ld   bc, $0089                                   ; $6261: $01 $89 $00
	ld   [bc], a                                     ; $6264: $02
	ld   bc, $0600                                   ; $6265: $01 $00 $06
	adc  c                                           ; $6268: $89
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	ld   b, $83                                      ; $626b: $06 $83
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	ld   bc, $0089                                   ; $626f: $01 $89 $00
	ld   [bc], a                                     ; $6272: $02
	ld   bc, $0600                                   ; $6273: $01 $00 $06
	adc  c                                           ; $6276: $89
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	ld   b, $91                                      ; $6279: $06 $91
	nop                                              ; $627b: $00
	nop                                              ; $627c: $00
	ld   b, $89                                      ; $627d: $06 $89
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	dec  bc                                          ; $6281: $0b
	add  d                                           ; $6282: $82
	nop                                              ; $6283: $00
	nop                                              ; $6284: $00
	ld   bc, $0085                                   ; $6285: $01 $85 $00
	nop                                              ; $6288: $00
	ld   bc, $0084                                   ; $6289: $01 $84 $00
	nop                                              ; $628c: $00
	dec  bc                                          ; $628d: $0b
	adc  c                                           ; $628e: $89
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	dec  bc                                          ; $6291: $0b
	add  d                                           ; $6292: $82
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	ld   bc, $0085                                   ; $6295: $01 $85 $00
	add  c                                           ; $6298: $81
	ld   bc, $0082                                   ; $6299: $01 $82 $00
	nop                                              ; $629c: $00
	dec  bc                                          ; $629d: $0b
	adc  c                                           ; $629e: $89
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	dec  bc                                          ; $62a1: $0b
	add  d                                           ; $62a2: $82
	nop                                              ; $62a3: $00
	nop                                              ; $62a4: $00
	ld   bc, $0085                                   ; $62a5: $01 $85 $00
	add  c                                           ; $62a8: $81
	ld   bc, $0082                                   ; $62a9: $01 $82 $00
	nop                                              ; $62ac: $00
	dec  bc                                          ; $62ad: $0b
	adc  c                                           ; $62ae: $89
	nop                                              ; $62af: $00
	nop                                              ; $62b0: $00
	dec  bc                                          ; $62b1: $0b
	add  c                                           ; $62b2: $81
	nop                                              ; $62b3: $00
	add  b                                           ; $62b4: $80
	rlca                                             ; $62b5: $07
	add  [hl]                                        ; $62b6: $86
	nop                                              ; $62b7: $00
	add  b                                           ; $62b8: $80
	ld   bc, $0082                                   ; $62b9: $01 $82 $00
	nop                                              ; $62bc: $00
	dec  bc                                          ; $62bd: $0b
	adc  c                                           ; $62be: $89
	nop                                              ; $62bf: $00
	ld   bc, $070b                                   ; $62c0: $01 $0b $07
	adc  l                                           ; $62c3: $8d
	nop                                              ; $62c4: $00
	nop                                              ; $62c5: $00
	rlca                                             ; $62c6: $07
	add  b                                           ; $62c7: $80
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	dec  bc                                          ; $62ca: $0b
	adc  c                                           ; $62cb: $89
	nop                                              ; $62cc: $00
	nop                                              ; $62cd: $00
	inc  c                                           ; $62ce: $0c
	adc  [hl]                                        ; $62cf: $8e
	nop                                              ; $62d0: $00
	nop                                              ; $62d1: $00
	rlca                                             ; $62d2: $07
	add  b                                           ; $62d3: $80
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	dec  bc                                          ; $62d6: $0b
	adc  c                                           ; $62d7: $89
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	inc  c                                           ; $62da: $0c
	sub  c                                           ; $62db: $91
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	inc  c                                           ; $62de: $0c
	adc  c                                           ; $62df: $89
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	inc  b                                           ; $62e2: $04
	adc  l                                           ; $62e3: $8d
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	ld   [$0081], sp                                 ; $62e6: $08 $81 $00
	nop                                              ; $62e9: $00
	inc  c                                           ; $62ea: $0c
	adc  c                                           ; $62eb: $89
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	inc  b                                           ; $62ee: $04
	adc  l                                           ; $62ef: $8d
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	ld   [$0081], sp                                 ; $62f2: $08 $81 $00
	nop                                              ; $62f5: $00
	inc  c                                           ; $62f6: $0c
	adc  c                                           ; $62f7: $89
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	ld   b, $8d                                      ; $62fa: $06 $8d
	nop                                              ; $62fc: $00
	add  d                                           ; $62fd: $82
	jr   nz, jr_02f_6300                             ; $62fe: $20 $00

jr_02f_6300:
	ld   b, $ff                                      ; $6300: $06 $ff
	nop                                              ; $6302: $00
	rst  $38                                         ; $6303: $ff
	nop                                              ; $6304: $00
	rst  $38                                         ; $6305: $ff
	nop                                              ; $6306: $00
	add  $00                                         ; $6307: $c6 $00
	ld   h, c                                        ; $6309: $61
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	ld   b, $8f                                      ; $630c: $06 $8f
	nop                                              ; $630e: $00
	ld   [bc], a                                     ; $630f: $02
	jr   nz, jr_02f_6312                             ; $6310: $20 $00

jr_02f_6312:
	ld   h, $89                                      ; $6312: $26 $89
	nop                                              ; $6314: $00
	ld   bc, $0106                                   ; $6315: $01 $06 $01
	adc  a                                           ; $6318: $8f
	nop                                              ; $6319: $00
	ld   bc, $6661                                   ; $631a: $01 $61 $66
	adc  c                                           ; $631d: $89
	nop                                              ; $631e: $00
	ld   bc, $0106                                   ; $631f: $01 $06 $01
	adc  a                                           ; $6322: $8f
	nop                                              ; $6323: $00
	ld   bc, $6661                                   ; $6324: $01 $61 $66
	adc  c                                           ; $6327: $89
	nop                                              ; $6328: $00
	ld   bc, $0106                                   ; $6329: $01 $06 $01
	adc  a                                           ; $632c: $8f
	nop                                              ; $632d: $00
	ld   bc, $6661                                   ; $632e: $01 $61 $66
	adc  c                                           ; $6331: $89
	nop                                              ; $6332: $00
	ld   bc, $0106                                   ; $6333: $01 $06 $01

jr_02f_6336:
	adc  a                                           ; $6336: $8f
	nop                                              ; $6337: $00
	ld   bc, $6661                                   ; $6338: $01 $61 $66
	adc  c                                           ; $633b: $89
	nop                                              ; $633c: $00
	ld   bc, $0106                                   ; $633d: $01 $06 $01
	adc  [hl]                                        ; $6340: $8e
	nop                                              ; $6341: $00
	ld   [bc], a                                     ; $6342: $02
	ld   h, b                                        ; $6343: $60
	ld   bc, $8966                                   ; $6344: $01 $66 $89
	nop                                              ; $6347: $00

jr_02f_6348:
	ld   bc, $0106                                   ; $6348: $01 $06 $01
	adc  [hl]                                        ; $634b: $8e
	nop                                              ; $634c: $00
	ld   [bc], a                                     ; $634d: $02
	ld   h, b                                        ; $634e: $60
	ld   bc, $8966                                   ; $634f: $01 $66 $89
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	ld   b, [hl]                                     ; $6354: $46
	adc  a                                           ; $6355: $8f
	nop                                              ; $6356: $00
	ld   [bc], a                                     ; $6357: $02
	jr   nz, jr_02f_635a                             ; $6358: $20 $00

jr_02f_635a:
	ld   h, [hl]                                     ; $635a: $66
	adc  c                                           ; $635b: $89
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00

jr_02f_635e:
	ld   b, $84                                      ; $635e: $06 $84
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	ld   bc, $0083                                   ; $6362: $01 $83 $00
	nop                                              ; $6365: $00
	ld   bc, $0084                                   ; $6366: $01 $84 $00
	nop                                              ; $6369: $00
	ld   b, $89                                      ; $636a: $06 $89
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	ld   b, $84                                      ; $636e: $06 $84
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	ld   bc, $0083                                   ; $6372: $01 $83 $00
	nop                                              ; $6375: $00
	ld   bc, $0084                                   ; $6376: $01 $84 $00
	nop                                              ; $6379: $00
	ld   b, $89                                      ; $637a: $06 $89
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	ld   b, $84                                      ; $637e: $06 $84
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	ld   bc, $0083                                   ; $6382: $01 $83 $00
	nop                                              ; $6385: $00
	ld   bc, $0084                                   ; $6386: $01 $84 $00
	nop                                              ; $6389: $00
	ld   b, $89                                      ; $638a: $06 $89
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	dec  b                                           ; $638e: $05
	sub  c                                           ; $638f: $91
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	dec  b                                           ; $6392: $05
	adc  c                                           ; $6393: $89
	nop                                              ; $6394: $00
	ld   [$0007], sp                                 ; $6395: $08 $07 $00
	ld   [bc], a                                     ; $6398: $02
	nop                                              ; $6399: $00
	ld   [bc], a                                     ; $639a: $02
	nop                                              ; $639b: $00
	ld   [hl+], a                                    ; $639c: $22
	nop                                              ; $639d: $00
	ld   [hl+], a                                    ; $639e: $22
	adc  c                                           ; $639f: $89
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	rlca                                             ; $63a2: $07
	adc  c                                           ; $63a3: $89
	nop                                              ; $63a4: $00
	ld   [$0007], sp                                 ; $63a5: $08 $07 $00
	ld   [bc], a                                     ; $63a8: $02
	nop                                              ; $63a9: $00
	ld   [bc], a                                     ; $63aa: $02
	jr   nz, jr_02f_63af                             ; $63ab: $20 $02

	nop                                              ; $63ad: $00
	ld   [hl+], a                                    ; $63ae: $22

jr_02f_63af:
	add  e                                           ; $63af: $83
	nop                                              ; $63b0: $00
	add  b                                           ; $63b1: $80
	jr   nz, jr_02f_6336                             ; $63b2: $20 $82

	nop                                              ; $63b4: $00
	nop                                              ; $63b5: $00
	rlca                                             ; $63b6: $07
	adc  c                                           ; $63b7: $89
	nop                                              ; $63b8: $00
	nop                                              ; $63b9: $00
	rlca                                             ; $63ba: $07
	add  e                                           ; $63bb: $83
	nop                                              ; $63bc: $00
	ld   [bc], a                                     ; $63bd: $02
	jr   nz, jr_02f_63c0                             ; $63be: $20 $00

jr_02f_63c0:
	jr   nz, @-$7b                                   ; $63c0: $20 $83

	nop                                              ; $63c2: $00
	add  b                                           ; $63c3: $80
	jr   nz, jr_02f_6348                             ; $63c4: $20 $82

	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	rlca                                             ; $63c8: $07
	adc  c                                           ; $63c9: $89
	nop                                              ; $63ca: $00
	nop                                              ; $63cb: $00
	rlca                                             ; $63cc: $07
	add  d                                           ; $63cd: $82
	nop                                              ; $63ce: $00
	ld   [bc], a                                     ; $63cf: $02
	jr   nz, jr_02f_63d2                             ; $63d0: $20 $00

jr_02f_63d2:
	jr   nz, jr_02f_635e                             ; $63d2: $20 $8a

	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	rlca                                             ; $63d6: $07
	adc  c                                           ; $63d7: $89
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	rlca                                             ; $63da: $07
	add  d                                           ; $63db: $82
	nop                                              ; $63dc: $00
	add  b                                           ; $63dd: $80
	jr   nz, @-$73                                   ; $63de: $20 $8b

	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	rlca                                             ; $63e2: $07
	adc  c                                           ; $63e3: $89
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	ld   b, l                                        ; $63e6: $45
	sub  c                                           ; $63e7: $91
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	ld   b, l                                        ; $63ea: $45
	rst  $38                                         ; $63eb: $ff
	nop                                              ; $63ec: $00
	rst  $38                                         ; $63ed: $ff
	nop                                              ; $63ee: $00
	rst  $38                                         ; $63ef: $ff
	nop                                              ; $63f0: $00
	add  $00                                         ; $63f1: $c6 $00
	ld   h, h                                        ; $63f3: $64
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	ld   c, $91                                      ; $63f6: $0e $91
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	ld   c, $89                                      ; $63fa: $0e $89
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	ld   c, $83                                      ; $63fe: $0e $83
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	ld   bc, $0089                                   ; $6402: $01 $89 $00
	ld   [bc], a                                     ; $6405: $02
	ld   bc, $0e00                                   ; $6406: $01 $00 $0e
	adc  c                                           ; $6409: $89
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	ld   c, $83                                      ; $640c: $0e $83
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	ld   bc, $0089                                   ; $6410: $01 $89 $00
	ld   [bc], a                                     ; $6413: $02
	ld   bc, $0e00                                   ; $6414: $01 $00 $0e
	adc  c                                           ; $6417: $89
	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	ld   c, $83                                      ; $641a: $0e $83
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	ld   bc, $0089                                   ; $641e: $01 $89 $00
	ld   [bc], a                                     ; $6421: $02
	ld   bc, $0e00                                   ; $6422: $01 $00 $0e
	adc  c                                           ; $6425: $89
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	ld   c, $83                                      ; $6428: $0e $83
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	ld   bc, $0089                                   ; $642c: $01 $89 $00
	ld   [bc], a                                     ; $642f: $02
	ld   bc, $0e00                                   ; $6430: $01 $00 $0e
	adc  c                                           ; $6433: $89
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	ld   c, $83                                      ; $6436: $0e $83
	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	ld   bc, $0089                                   ; $643a: $01 $89 $00
	ld   [bc], a                                     ; $643d: $02
	ld   bc, $0e00                                   ; $643e: $01 $00 $0e
	adc  c                                           ; $6441: $89
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	ld   c, $83                                      ; $6444: $0e $83
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	ld   bc, $0089                                   ; $6448: $01 $89 $00
	ld   [bc], a                                     ; $644b: $02
	ld   bc, $0e00                                   ; $644c: $01 $00 $0e
	adc  c                                           ; $644f: $89
	nop                                              ; $6450: $00
	nop                                              ; $6451: $00
	ld   c, $91                                      ; $6452: $0e $91
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	ld   c, $89                                      ; $6456: $0e $89
	nop                                              ; $6458: $00
	ld   [bc], a                                     ; $6459: $02
	inc  bc                                          ; $645a: $03
	nop                                              ; $645b: $00
	rlca                                             ; $645c: $07
	adc  a                                           ; $645d: $8f
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	inc  b                                           ; $6460: $04
	adc  c                                           ; $6461: $89
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	inc  bc                                          ; $6464: $03
	add  e                                           ; $6465: $83
	nop                                              ; $6466: $00
	add  b                                           ; $6467: $80
	rlca                                             ; $6468: $07
	add  d                                           ; $6469: $82
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	rlca                                             ; $646c: $07
	add  l                                           ; $646d: $85
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	inc  b                                           ; $6470: $04
	adc  c                                           ; $6471: $89
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	inc  bc                                          ; $6474: $03
	adc  d                                           ; $6475: $8a
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	rlca                                             ; $6478: $07
	add  b                                           ; $6479: $80
	nop                                              ; $647a: $00
	add  b                                           ; $647b: $80
	rlca                                             ; $647c: $07
	add  b                                           ; $647d: $80
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	inc  b                                           ; $6480: $04
	adc  c                                           ; $6481: $89
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	inc  bc                                          ; $6484: $03
	sub  c                                           ; $6485: $91
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	inc  bc                                          ; $6488: $03
	adc  c                                           ; $6489: $89
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	inc  bc                                          ; $648c: $03
	sub  c                                           ; $648d: $91
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	inc  bc                                          ; $6490: $03
	adc  c                                           ; $6491: $89
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	inc  bc                                          ; $6494: $03
	sub  c                                           ; $6495: $91
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	inc  bc                                          ; $6498: $03
	adc  c                                           ; $6499: $89
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	inc  bc                                          ; $649c: $03
	sub  c                                           ; $649d: $91
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	inc  bc                                          ; $64a0: $03
	adc  c                                           ; $64a1: $89
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	dec  bc                                          ; $64a4: $0b
	adc  l                                           ; $64a5: $8d
	nop                                              ; $64a6: $00
	nop                                              ; $64a7: $00
	ld   [$0081], sp                                 ; $64a8: $08 $81 $00
	nop                                              ; $64ab: $00
	inc  bc                                          ; $64ac: $03
	adc  c                                           ; $64ad: $89
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	dec  bc                                          ; $64b0: $0b
	adc  l                                           ; $64b1: $8d
	nop                                              ; $64b2: $00
	nop                                              ; $64b3: $00
	ld   [$0081], sp                                 ; $64b4: $08 $81 $00
	nop                                              ; $64b7: $00
	inc  bc                                          ; $64b8: $03
	adc  c                                           ; $64b9: $89
	nop                                              ; $64ba: $00
	nop                                              ; $64bb: $00
	ld   c, $8d                                      ; $64bc: $0e $8d
	nop                                              ; $64be: $00
	add  d                                           ; $64bf: $82
	jr   nz, jr_02f_64c2                             ; $64c0: $20 $00

jr_02f_64c2:
	ld   c, $ff                                      ; $64c2: $0e $ff
	nop                                              ; $64c4: $00
	rst  $38                                         ; $64c5: $ff
	nop                                              ; $64c6: $00
	rst  $38                                         ; $64c7: $ff
	nop                                              ; $64c8: $00
	add  $00                                         ; $64c9: $c6 $00
	ld   h, h                                        ; $64cb: $64
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	ld   c, $91                                      ; $64ce: $0e $91
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	ld   c, $89                                      ; $64d2: $0e $89
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	ld   c, $83                                      ; $64d6: $0e $83
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	ld   bc, $0089                                   ; $64da: $01 $89 $00
	ld   [bc], a                                     ; $64dd: $02
	ld   bc, $0e00                                   ; $64de: $01 $00 $0e
	adc  c                                           ; $64e1: $89
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	ld   c, $83                                      ; $64e4: $0e $83
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	ld   bc, $0089                                   ; $64e8: $01 $89 $00
	ld   [bc], a                                     ; $64eb: $02
	ld   bc, $0e00                                   ; $64ec: $01 $00 $0e
	adc  c                                           ; $64ef: $89
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	ld   c, $83                                      ; $64f2: $0e $83
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	ld   bc, $0089                                   ; $64f6: $01 $89 $00
	ld   [bc], a                                     ; $64f9: $02
	ld   bc, $0e00                                   ; $64fa: $01 $00 $0e
	adc  c                                           ; $64fd: $89
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	ld   c, $83                                      ; $6500: $0e $83
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	ld   bc, $0089                                   ; $6504: $01 $89 $00
	ld   [bc], a                                     ; $6507: $02
	ld   bc, $0e00                                   ; $6508: $01 $00 $0e
	adc  c                                           ; $650b: $89
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	ld   c, $83                                      ; $650e: $0e $83
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	ld   bc, $0089                                   ; $6512: $01 $89 $00
	ld   [bc], a                                     ; $6515: $02
	ld   bc, $0e00                                   ; $6516: $01 $00 $0e
	adc  c                                           ; $6519: $89
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	ld   c, $83                                      ; $651c: $0e $83
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	ld   bc, $0089                                   ; $6520: $01 $89 $00
	ld   [bc], a                                     ; $6523: $02
	ld   bc, $0e00                                   ; $6524: $01 $00 $0e
	adc  c                                           ; $6527: $89
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	ld   c, $91                                      ; $652a: $0e $91
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	ld   c, $89                                      ; $652e: $0e $89
	nop                                              ; $6530: $00
	ld   [bc], a                                     ; $6531: $02
	inc  bc                                          ; $6532: $03
	nop                                              ; $6533: $00
	rlca                                             ; $6534: $07
	adc  a                                           ; $6535: $8f
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	inc  b                                           ; $6538: $04
	adc  c                                           ; $6539: $89
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	inc  bc                                          ; $653c: $03
	add  e                                           ; $653d: $83
	nop                                              ; $653e: $00
	add  b                                           ; $653f: $80
	rlca                                             ; $6540: $07
	add  d                                           ; $6541: $82
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	rlca                                             ; $6544: $07
	add  l                                           ; $6545: $85
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	inc  b                                           ; $6548: $04
	adc  c                                           ; $6549: $89
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	inc  bc                                          ; $654c: $03
	adc  d                                           ; $654d: $8a
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	rlca                                             ; $6550: $07
	add  b                                           ; $6551: $80
	nop                                              ; $6552: $00
	add  b                                           ; $6553: $80
	rlca                                             ; $6554: $07
	add  b                                           ; $6555: $80
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	inc  b                                           ; $6558: $04
	adc  c                                           ; $6559: $89
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	inc  bc                                          ; $655c: $03
	sub  c                                           ; $655d: $91
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	inc  bc                                          ; $6560: $03
	adc  c                                           ; $6561: $89
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	inc  bc                                          ; $6564: $03
	sub  c                                           ; $6565: $91
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	inc  bc                                          ; $6568: $03
	adc  c                                           ; $6569: $89
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	inc  bc                                          ; $656c: $03
	sub  c                                           ; $656d: $91
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	inc  bc                                          ; $6570: $03
	adc  c                                           ; $6571: $89
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	inc  bc                                          ; $6574: $03
	sub  c                                           ; $6575: $91
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	inc  bc                                          ; $6578: $03
	adc  c                                           ; $6579: $89
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	dec  bc                                          ; $657c: $0b

jr_02f_657d:
	adc  l                                           ; $657d: $8d
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	ld   [$0081], sp                                 ; $6580: $08 $81 $00
	nop                                              ; $6583: $00
	inc  bc                                          ; $6584: $03
	adc  c                                           ; $6585: $89
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	dec  bc                                          ; $6588: $0b
	adc  l                                           ; $6589: $8d
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	ld   [$0081], sp                                 ; $658c: $08 $81 $00
	nop                                              ; $658f: $00
	inc  bc                                          ; $6590: $03
	adc  c                                           ; $6591: $89
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	ld   c, $8d                                      ; $6594: $0e $8d
	nop                                              ; $6596: $00
	add  d                                           ; $6597: $82
	jr   nz, jr_02f_659a                             ; $6598: $20 $00

jr_02f_659a:
	ld   c, $ff                                      ; $659a: $0e $ff
	nop                                              ; $659c: $00
	rst  $38                                         ; $659d: $ff
	nop                                              ; $659e: $00
	rst  $38                                         ; $659f: $ff
	nop                                              ; $65a0: $00
	add  $00                                         ; $65a1: $c6 $00
	ld   c, a                                        ; $65a3: $4f
	nop                                              ; $65a4: $00
	sub  d                                           ; $65a5: $92
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	inc  bc                                          ; $65a8: $03
	adc  c                                           ; $65a9: $89
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	inc  bc                                          ; $65ac: $03
	sub  c                                           ; $65ad: $91
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	inc  bc                                          ; $65b0: $03
	adc  c                                           ; $65b1: $89
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	inc  bc                                          ; $65b4: $03
	sub  c                                           ; $65b5: $91
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	inc  bc                                          ; $65b8: $03
	adc  c                                           ; $65b9: $89
	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	inc  bc                                          ; $65bc: $03
	sub  c                                           ; $65bd: $91
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	inc  bc                                          ; $65c0: $03
	adc  c                                           ; $65c1: $89
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	inc  bc                                          ; $65c4: $03
	sub  c                                           ; $65c5: $91
	nop                                              ; $65c6: $00
	nop                                              ; $65c7: $00
	inc  bc                                          ; $65c8: $03
	adc  c                                           ; $65c9: $89
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	inc  bc                                          ; $65cc: $03
	sub  c                                           ; $65cd: $91
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	inc  bc                                          ; $65d0: $03
	adc  c                                           ; $65d1: $89
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	inc  bc                                          ; $65d4: $03
	sub  c                                           ; $65d5: $91
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	inc  bc                                          ; $65d8: $03
	adc  c                                           ; $65d9: $89
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	inc  bc                                          ; $65dc: $03
	sub  c                                           ; $65dd: $91
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	inc  bc                                          ; $65e0: $03
	adc  c                                           ; $65e1: $89
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	inc  bc                                          ; $65e4: $03
	sub  c                                           ; $65e5: $91
	nop                                              ; $65e6: $00
	nop                                              ; $65e7: $00
	inc  bc                                          ; $65e8: $03
	adc  c                                           ; $65e9: $89
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	inc  bc                                          ; $65ec: $03
	add  d                                           ; $65ed: $82
	nop                                              ; $65ee: $00
	add  b                                           ; $65ef: $80
	jr   nz, jr_02f_657d                             ; $65f0: $20 $8b

	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	inc  bc                                          ; $65f4: $03
	adc  c                                           ; $65f5: $89
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	inc  bc                                          ; $65f8: $03
	add  c                                           ; $65f9: $81
	nop                                              ; $65fa: $00
	add  b                                           ; $65fb: $80
	ld   b, b                                        ; $65fc: $40
	adc  h                                           ; $65fd: $8c
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	inc  bc                                          ; $6600: $03
	adc  c                                           ; $6601: $89
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	inc  bc                                          ; $6604: $03
	sub  c                                           ; $6605: $91
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	inc  bc                                          ; $6608: $03
	adc  c                                           ; $6609: $89
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	inc  bc                                          ; $660c: $03
	sub  c                                           ; $660d: $91
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	inc  bc                                          ; $6610: $03
	adc  c                                           ; $6611: $89
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	inc  bc                                          ; $6614: $03
	sub  c                                           ; $6615: $91
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	inc  bc                                          ; $6618: $03
	adc  c                                           ; $6619: $89
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	inc  bc                                          ; $661c: $03

jr_02f_661d:
	sub  c                                           ; $661d: $91
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	inc  bc                                          ; $6620: $03
	adc  c                                           ; $6621: $89
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	inc  bc                                          ; $6624: $03
	sub  c                                           ; $6625: $91
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	inc  bc                                          ; $6628: $03
	adc  c                                           ; $6629: $89
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	inc  bc                                          ; $662c: $03
	sub  c                                           ; $662d: $91
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	inc  bc                                          ; $6630: $03
	adc  c                                           ; $6631: $89
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	inc  bc                                          ; $6634: $03
	sub  c                                           ; $6635: $91
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	inc  bc                                          ; $6638: $03
	rst  $38                                         ; $6639: $ff
	nop                                              ; $663a: $00
	rst  $38                                         ; $663b: $ff
	nop                                              ; $663c: $00
	rst  $38                                         ; $663d: $ff
	nop                                              ; $663e: $00
	push bc                                          ; $663f: $c5
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	inc  bc                                          ; $6642: $03
	ld   c, a                                        ; $6643: $4f
	nop                                              ; $6644: $00
	sub  d                                           ; $6645: $92
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	inc  bc                                          ; $6648: $03
	adc  c                                           ; $6649: $89
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	inc  bc                                          ; $664c: $03
	sub  c                                           ; $664d: $91
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	inc  bc                                          ; $6650: $03
	adc  c                                           ; $6651: $89
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	inc  bc                                          ; $6654: $03
	sub  c                                           ; $6655: $91
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	inc  bc                                          ; $6658: $03
	adc  c                                           ; $6659: $89
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	inc  bc                                          ; $665c: $03
	sub  c                                           ; $665d: $91
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	inc  bc                                          ; $6660: $03
	adc  c                                           ; $6661: $89
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	inc  bc                                          ; $6664: $03
	sub  c                                           ; $6665: $91
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	inc  bc                                          ; $6668: $03
	adc  c                                           ; $6669: $89
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	inc  bc                                          ; $666c: $03
	sub  c                                           ; $666d: $91
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	inc  bc                                          ; $6670: $03
	adc  c                                           ; $6671: $89
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	inc  bc                                          ; $6674: $03
	sub  c                                           ; $6675: $91
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	inc  bc                                          ; $6678: $03
	adc  c                                           ; $6679: $89
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	inc  bc                                          ; $667c: $03
	sub  c                                           ; $667d: $91
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	inc  bc                                          ; $6680: $03
	adc  c                                           ; $6681: $89
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	inc  bc                                          ; $6684: $03
	sub  c                                           ; $6685: $91
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	inc  bc                                          ; $6688: $03
	adc  c                                           ; $6689: $89
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	inc  bc                                          ; $668c: $03
	add  d                                           ; $668d: $82
	nop                                              ; $668e: $00
	add  b                                           ; $668f: $80
	jr   nz, jr_02f_661d                             ; $6690: $20 $8b

	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	inc  bc                                          ; $6694: $03
	adc  c                                           ; $6695: $89
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	inc  bc                                          ; $6698: $03
	add  c                                           ; $6699: $81
	nop                                              ; $669a: $00
	add  b                                           ; $669b: $80
	ld   b, b                                        ; $669c: $40
	adc  h                                           ; $669d: $8c
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	inc  bc                                          ; $66a0: $03
	adc  c                                           ; $66a1: $89
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	inc  bc                                          ; $66a4: $03
	sub  c                                           ; $66a5: $91
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	inc  bc                                          ; $66a8: $03
	adc  c                                           ; $66a9: $89
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	inc  bc                                          ; $66ac: $03
	sub  c                                           ; $66ad: $91
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	inc  bc                                          ; $66b0: $03
	adc  c                                           ; $66b1: $89
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	inc  bc                                          ; $66b4: $03
	sub  c                                           ; $66b5: $91
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	inc  bc                                          ; $66b8: $03
	adc  c                                           ; $66b9: $89
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	inc  bc                                          ; $66bc: $03
	sub  c                                           ; $66bd: $91
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	inc  bc                                          ; $66c0: $03
	adc  c                                           ; $66c1: $89
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	inc  bc                                          ; $66c4: $03
	sub  c                                           ; $66c5: $91
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	inc  bc                                          ; $66c8: $03
	adc  c                                           ; $66c9: $89
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	inc  bc                                          ; $66cc: $03
	sub  c                                           ; $66cd: $91
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	inc  bc                                          ; $66d0: $03
	adc  c                                           ; $66d1: $89
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	inc  bc                                          ; $66d4: $03
	sub  c                                           ; $66d5: $91
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	inc  bc                                          ; $66d8: $03
	rst  $38                                         ; $66d9: $ff
	nop                                              ; $66da: $00
	rst  $38                                         ; $66db: $ff
	nop                                              ; $66dc: $00
	rst  $38                                         ; $66dd: $ff
	nop                                              ; $66de: $00
	push bc                                          ; $66df: $c5
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	inc  bc                                          ; $66e2: $03
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	ld   a, c                                        ; $66fb: $79
	ld   h, [hl]                                     ; $66fc: $66
	sub  b                                           ; $66fd: $90
	ld   l, [hl]                                     ; $66fe: $6e
	dec  c                                           ; $66ff: $0d
	ld   d, [hl]                                     ; $6700: $56
	adc  d                                           ; $6701: $8a
	ld   c, c                                        ; $6702: $49
	sub  l                                           ; $6703: $95
	ld   l, a                                        ; $6704: $6f
	sub  b                                           ; $6705: $90
	ld   l, [hl]                                     ; $6706: $6e
	dec  c                                           ; $6707: $0d
	ld   d, [hl]                                     ; $6708: $56
	adc  d                                           ; $6709: $8a
	ld   c, c                                        ; $670a: $49
	rst  $38                                         ; $670b: $ff
	ld   a, a                                        ; $670c: $7f
	rst  $38                                         ; $670d: $ff
	inc  bc                                          ; $670e: $03
	ld   a, c                                        ; $670f: $79
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	inc  de                                          ; $6713: $13
	ld   a, a                                        ; $6714: $7f
	xor  h                                           ; $6715: $ac
	ld   c, l                                        ; $6716: $4d
	ld   h, d                                        ; $6717: $62
	inc  d                                           ; $6718: $14
	rst  $38                                         ; $6719: $ff
	ld   a, a                                        ; $671a: $7f
	inc  de                                          ; $671b: $13
	ld   a, a                                        ; $671c: $7f
	ldh  [$03], a                                    ; $671d: $e0 $03
	rra                                              ; $671f: $1f
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	rst  $38                                         ; $6723: $ff
	ld   e, a                                        ; $6724: $5f
	rst  $38                                         ; $6725: $ff
	ld   a, a                                        ; $6726: $7f
	sbc  a                                           ; $6727: $9f
	ld   [hl], $83                                   ; $6728: $36 $83
	inc  d                                           ; $672a: $14
	ld   e, a                                        ; $672b: $5f
	ld   l, e                                        ; $672c: $6b
	inc  [hl]                                        ; $672d: $34
	ld   [hl], d                                     ; $672e: $72
	ld   c, l                                        ; $672f: $4d
	inc  b                                           ; $6730: $04
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	rst  $30                                         ; $6733: $f7
	ld   a, a                                        ; $6734: $7f
	ld   e, a                                        ; $6735: $5f
	inc  de                                          ; $6736: $13
	dec  c                                           ; $6737: $0d
	inc  [hl]                                        ; $6738: $34
	rra                                              ; $6739: $1f
	nop                                              ; $673a: $00
	xor  l                                           ; $673b: $ad
	ld   e, e                                        ; $673c: $5b
	rst  $38                                         ; $673d: $ff
	ld   a, a                                        ; $673e: $7f
	db   $dd                                         ; $673f: $dd
	ld   e, $62                                      ; $6740: $1e $62
	inc  e                                           ; $6742: $1c
	cp   c                                           ; $6743: $b9
	halt                                             ; $6744: $76
	ld   h, d                                        ; $6745: $62
	ld   h, c                                        ; $6746: $61
	add  e                                           ; $6747: $83
	inc  d                                           ; $6748: $14
	add  e                                           ; $6749: $83
	inc  d                                           ; $674a: $14
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	ldh  [$03], a                                    ; $6755: $e0 $03
	rst  $38                                         ; $6757: $ff
	inc  bc                                          ; $6758: $03
	rra                                              ; $6759: $1f
	nop                                              ; $675a: $00
	ldh  [$03], a                                    ; $675b: $e0 $03
	rst  $38                                         ; $675d: $ff
	ld   a, a                                        ; $675e: $7f
	db   $ec                                         ; $675f: $ec
	ld   h, c                                        ; $6760: $61
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	ccf                                              ; $6773: $3f
	ld   h, a                                        ; $6774: $67
	ld   a, a                                        ; $6775: $7f
	ld   c, [hl]                                     ; $6776: $4e
	rst  JumpTable                                         ; $6777: $df
	dec  a                                           ; $6778: $3d
	ld   a, b                                        ; $6779: $78
	ld   sp, $673f                                   ; $677a: $31 $3f $67
	ld   a, l                                        ; $677d: $7d
	ccf                                              ; $677e: $3f
	sub  c                                           ; $677f: $91

Jump_02f_6780:
	ld   b, d                                        ; $6780: $42
	ld   d, l                                        ; $6781: $55
	dec  a                                           ; $6782: $3d
	ccf                                              ; $6783: $3f
	ld   h, a                                        ; $6784: $67
	ld   a, a                                        ; $6785: $7f
	ld   c, [hl]                                     ; $6786: $4e
	di                                               ; $6787: $f3
	ld   c, c                                        ; $6788: $49
	jr   nc, jr_02f_67d4                             ; $6789: $30 $49

	rst  $38                                         ; $678b: $ff
	ld   a, a                                        ; $678c: $7f
	rst  $38                                         ; $678d: $ff
	inc  bc                                          ; $678e: $03
	ld   a, c                                        ; $678f: $79
	nop                                              ; $6790: $00
	nop                                              ; $6791: $00
	nop                                              ; $6792: $00
	inc  de                                          ; $6793: $13
	ld   a, a                                        ; $6794: $7f
	xor  h                                           ; $6795: $ac
	ld   c, l                                        ; $6796: $4d
	ld   h, d                                        ; $6797: $62
	inc  d                                           ; $6798: $14
	rst  $38                                         ; $6799: $ff
	ld   a, a                                        ; $679a: $7f
	inc  de                                          ; $679b: $13
	ld   a, a                                        ; $679c: $7f
	ldh  [$03], a                                    ; $679d: $e0 $03
	rra                                              ; $679f: $1f
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	ldh  [$03], a                                    ; $67a3: $e0 $03
	rra                                              ; $67a5: $1f
	inc  bc                                          ; $67a6: $03
	ld   e, a                                        ; $67a7: $5f
	ld   c, d                                        ; $67a8: $4a
	ld   b, [hl]                                     ; $67a9: $46
	nop                                              ; $67aa: $00
	ldh  [$03], a                                    ; $67ab: $e0 $03
	dec  sp                                          ; $67ad: $3b
	inc  h                                           ; $67ae: $24
	xor  c                                           ; $67af: $a9
	ld   [hl-], a                                    ; $67b0: $32
	ld   h, a                                        ; $67b1: $67
	nop                                              ; $67b2: $00
	ldh  [$03], a                                    ; $67b3: $e0 $03
	rst  $38                                         ; $67b5: $ff
	ld   a, a                                        ; $67b6: $7f
	sbc  a                                           ; $67b7: $9f
	ld   [hl], $62                                   ; $67b8: $36 $62
	ld   h, c                                        ; $67ba: $61
	ldh  [$03], a                                    ; $67bb: $e0 $03
	rst  $38                                         ; $67bd: $ff
	ld   a, a                                        ; $67be: $7f
	db   $dd                                         ; $67bf: $dd
	ld   e, $62                                      ; $67c0: $1e $62
	inc  e                                           ; $67c2: $1c
	ldh  [$03], a                                    ; $67c3: $e0 $03
	rst  $38                                         ; $67c5: $ff
	ld   a, a                                        ; $67c6: $7f
	sbc  a                                           ; $67c7: $9f
	ld   [hl], $83                                   ; $67c8: $36 $83
	inc  d                                           ; $67ca: $14
	ldh  [$03], a                                    ; $67cb: $e0 $03
	sbc  l                                           ; $67cd: $9d
	dec  sp                                          ; $67ce: $3b
	sbc  b                                           ; $67cf: $98
	ld   de, $0485                                   ; $67d0: $11 $85 $04
	nop                                              ; $67d3: $00

jr_02f_67d4:
	nop                                              ; $67d4: $00
	ldh  [$03], a                                    ; $67d5: $e0 $03
	rst  $38                                         ; $67d7: $ff
	inc  bc                                          ; $67d8: $03
	rra                                              ; $67d9: $1f
	nop                                              ; $67da: $00
	ldh  [$03], a                                    ; $67db: $e0 $03
	rst  $38                                         ; $67dd: $ff
	ld   a, a                                        ; $67de: $7f
	db   $ec                                         ; $67df: $ec
	ld   h, c                                        ; $67e0: $61
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	ld   d, $53                                      ; $67fb: $16 $53
	ret  nc                                          ; $67fd: $d0

	ld   d, [hl]                                     ; $67fe: $56
	rrca                                             ; $67ff: $0f
	ld   a, $aa                                      ; $6800: $3e $aa
	dec  [hl]                                        ; $6802: $35
	ld   a, c                                        ; $6803: $79
	ld   [hl], a                                     ; $6804: $77
	ret  nc                                          ; $6805: $d0

	ld   d, [hl]                                     ; $6806: $56
	rrca                                             ; $6807: $0f
	ld   a, $aa                                      ; $6808: $3e $aa
	dec  [hl]                                        ; $680a: $35
	rst  $38                                         ; $680b: $ff
	ld   a, a                                        ; $680c: $7f
	rst  $38                                         ; $680d: $ff
	inc  bc                                          ; $680e: $03
	ld   a, c                                        ; $680f: $79
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	inc  de                                          ; $6813: $13
	ld   a, a                                        ; $6814: $7f
	xor  h                                           ; $6815: $ac
	ld   c, l                                        ; $6816: $4d
	ld   h, d                                        ; $6817: $62
	inc  d                                           ; $6818: $14
	rst  $38                                         ; $6819: $ff
	ld   a, a                                        ; $681a: $7f
	inc  de                                          ; $681b: $13
	ld   a, a                                        ; $681c: $7f
	ldh  [$03], a                                    ; $681d: $e0 $03
	rra                                              ; $681f: $1f
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	rst  $38                                         ; $6823: $ff
	ld   e, a                                        ; $6824: $5f
	rst  $38                                         ; $6825: $ff
	ld   a, a                                        ; $6826: $7f
	sbc  a                                           ; $6827: $9f
	ld   [hl], $83                                   ; $6828: $36 $83
	inc  d                                           ; $682a: $14
	ld   e, a                                        ; $682b: $5f
	ld   l, e                                        ; $682c: $6b
	rst  $38                                         ; $682d: $ff
	ld   a, a                                        ; $682e: $7f
	sbc  a                                           ; $682f: $9f
	ld   [hl], $80                                   ; $6830: $36 $80
	ld   c, h                                        ; $6832: $4c
	rst  $30                                         ; $6833: $f7
	ld   a, a                                        ; $6834: $7f
	rst  $38                                         ; $6835: $ff
	ld   a, a                                        ; $6836: $7f
	db   $dd                                         ; $6837: $dd
	ld   e, $62                                      ; $6838: $1e $62
	inc  e                                           ; $683a: $1c
	xor  l                                           ; $683b: $ad
	ld   e, e                                        ; $683c: $5b
	ccf                                              ; $683d: $3f
	ld   c, c                                        ; $683e: $49
	ld   e, $00                                      ; $683f: $1e $00
	inc  hl                                          ; $6841: $23
	inc  b                                           ; $6842: $04
	ld   a, [hl-]                                    ; $6843: $3a
	ld   a, a                                        ; $6844: $7f
	or   l                                           ; $6845: $b5
	ld   h, d                                        ; $6846: $62
	xor  h                                           ; $6847: $ac
	jr   jr_02f_68b0                                 ; $6848: $18 $66

	inc  d                                           ; $684a: $14
	or   l                                           ; $684b: $b5
	ld   c, d                                        ; $684c: $4a
	ld   h, d                                        ; $684d: $62
	ld   h, c                                        ; $684e: $61
	rst  $38                                         ; $684f: $ff
	ld   a, a                                        ; $6850: $7f
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	ldh  [$03], a                                    ; $6855: $e0 $03
	rst  $38                                         ; $6857: $ff
	inc  bc                                          ; $6858: $03
	rra                                              ; $6859: $1f
	nop                                              ; $685a: $00
	ldh  [$03], a                                    ; $685b: $e0 $03
	rst  $38                                         ; $685d: $ff
	ld   a, a                                        ; $685e: $7f
	db   $ec                                         ; $685f: $ec
	ld   h, c                                        ; $6860: $61
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	sbc  b                                           ; $686b: $98
	ld   e, e                                        ; $686c: $5b
	ld   d, h                                        ; $686d: $54
	ld   e, d                                        ; $686e: $5a
	pop  af                                          ; $686f: $f1
	ld   c, l                                        ; $6870: $4d
	ld   h, d                                        ; $6871: $62
	inc  e                                           ; $6872: $1c
	sbc  b                                           ; $6873: $98
	ld   e, e                                        ; $6874: $5b
	ld   d, h                                        ; $6875: $54
	ld   e, d                                        ; $6876: $5a
	pop  af                                          ; $6877: $f1
	ld   c, l                                        ; $6878: $4d
	xor  l                                           ; $6879: $ad
	dec  [hl]                                        ; $687a: $35
	sbc  b                                           ; $687b: $98
	ld   e, e                                        ; $687c: $5b
	ld   d, h                                        ; $687d: $54
	ld   e, d                                        ; $687e: $5a
	inc  d                                           ; $687f: $14
	ld   c, d                                        ; $6880: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6881: $cf
	ld   b, c                                        ; $6882: $41
	ld   a, [hl-]                                    ; $6883: $3a
	ld   c, a                                        ; $6884: $4f
	rst  $30                                         ; $6885: $f7
	ld   e, [hl]                                     ; $6886: $5e
	sub  h                                           ; $6887: $94
	ld   d, d                                        ; $6888: $52
	rst  $28                                         ; $6889: $ef
	ld   sp, $7fff                                   ; $688a: $31 $ff $7f
	rst  $38                                         ; $688d: $ff
	inc  bc                                          ; $688e: $03
	ld   a, c                                        ; $688f: $79
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	inc  de                                          ; $6893: $13
	ld   a, a                                        ; $6894: $7f
	xor  h                                           ; $6895: $ac
	ld   c, l                                        ; $6896: $4d
	ld   h, d                                        ; $6897: $62
	inc  d                                           ; $6898: $14
	rst  $38                                         ; $6899: $ff
	ld   a, a                                        ; $689a: $7f
	inc  de                                          ; $689b: $13
	ld   a, a                                        ; $689c: $7f
	ldh  [$03], a                                    ; $689d: $e0 $03
	rra                                              ; $689f: $1f
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	ld   b, l                                        ; $68a3: $45
	ld   b, d                                        ; $68a4: $42
	sbc  a                                           ; $68a5: $9f
	ld   [hl], $ff                                   ; $68a6: $36 $ff
	ld   a, a                                        ; $68a8: $7f
	add  e                                           ; $68a9: $83
	inc  d                                           ; $68aa: $14
	rst  $38                                         ; $68ab: $ff
	ld   e, a                                        ; $68ac: $5f
	db   $dd                                         ; $68ad: $dd
	ld   e, $62                                      ; $68ae: $1e $62

jr_02f_68b0:
	ld   h, c                                        ; $68b0: $61
	ld   h, d                                        ; $68b1: $62
	inc  e                                           ; $68b2: $1c
	rst  $30                                         ; $68b3: $f7
	ld   a, a                                        ; $68b4: $7f
	rst  $38                                         ; $68b5: $ff
	ld   a, a                                        ; $68b6: $7f
	sbc  a                                           ; $68b7: $9f
	ld   [hl], $62                                   ; $68b8: $36 $62
	inc  e                                           ; $68ba: $1c
	ld   e, a                                        ; $68bb: $5f
	ld   l, e                                        ; $68bc: $6b
	adc  d                                           ; $68bd: $8a
	dec  l                                           ; $68be: $2d
	rst  $38                                         ; $68bf: $ff
	ld   a, a                                        ; $68c0: $7f
	add  e                                           ; $68c1: $83
	inc  d                                           ; $68c2: $14
	jp   c, Jump_02f_407e                            ; $68c3: $da $7e $40

	ld   [bc], a                                     ; $68c6: $02
	rst  $38                                         ; $68c7: $ff
	inc  bc                                          ; $68c8: $03
	ld   b, [hl]                                     ; $68c9: $46
	nop                                              ; $68ca: $00
	xor  l                                           ; $68cb: $ad
	ld   c, e                                        ; $68cc: $4b
	sbc  a                                           ; $68cd: $9f
	ld   [hl], $68                                   ; $68ce: $36 $68
	jr   c, jr_02f_68d7                              ; $68d0: $38 $05

	inc  b                                           ; $68d2: $04
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	ldh  [$03], a                                    ; $68d5: $e0 $03

jr_02f_68d7:
	rst  $38                                         ; $68d7: $ff
	inc  bc                                          ; $68d8: $03
	rra                                              ; $68d9: $1f
	nop                                              ; $68da: $00
	ldh  [$03], a                                    ; $68db: $e0 $03
	rst  $38                                         ; $68dd: $ff
	ld   a, a                                        ; $68de: $7f
	db   $ec                                         ; $68df: $ec
	ld   h, c                                        ; $68e0: $61
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	nop                                              ; $68f2: $00
	sbc  l                                           ; $68f3: $9d
	ld   e, e                                        ; $68f4: $5b
	sub  d                                           ; $68f5: $92
	ld   l, a                                        ; $68f6: $6f
	rst  $30                                         ; $68f7: $f7
	ld   sp, $1e0b                                   ; $68f8: $31 $0b $1e
	sbc  l                                           ; $68fb: $9d
	ld   e, e                                        ; $68fc: $5b
	ld   a, a                                        ; $68fd: $7f
	ld   a, [hl-]                                    ; $68fe: $3a
	rst  $30                                         ; $68ff: $f7
	ld   sp, $1e0b                                   ; $6900: $31 $0b $1e
	ld   e, l                                        ; $6903: $5d
	ld   c, e                                        ; $6904: $4b
	sub  a                                           ; $6905: $97
	ld   [hl-], a                                    ; $6906: $32
	rst  $30                                         ; $6907: $f7
	ld   sp, $1e0b                                   ; $6908: $31 $0b $1e
	rst  $38                                         ; $690b: $ff
	ld   a, a                                        ; $690c: $7f
	rst  $38                                         ; $690d: $ff
	inc  bc                                          ; $690e: $03
	ld   a, c                                        ; $690f: $79
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	inc  de                                          ; $6913: $13
	ld   a, a                                        ; $6914: $7f
	xor  h                                           ; $6915: $ac
	ld   c, l                                        ; $6916: $4d
	ld   h, d                                        ; $6917: $62
	inc  d                                           ; $6918: $14
	rst  $38                                         ; $6919: $ff
	ld   a, a                                        ; $691a: $7f
	inc  de                                          ; $691b: $13
	ld   a, a                                        ; $691c: $7f
	ldh  [$03], a                                    ; $691d: $e0 $03
	rra                                              ; $691f: $1f
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	ldh  a, [$7f]                                    ; $6923: $f0 $7f
	rst  $38                                         ; $6925: $ff
	ld   a, a                                        ; $6926: $7f
	sbc  h                                           ; $6927: $9c
	nop                                              ; $6928: $00
	ld   b, [hl]                                     ; $6929: $46
	nop                                              ; $692a: $00
	ldh  a, [$7f]                                    ; $692b: $f0 $7f
	db   $fc                                         ; $692d: $fc
	rra                                              ; $692e: $1f
	ld   a, [hl]                                     ; $692f: $7e
	ld   a, [de]                                     ; $6930: $1a
	add  hl, bc                                      ; $6931: $09
	inc  a                                           ; $6932: $3c
	ldh  a, [$7f]                                    ; $6933: $f0 $7f
	db   $fc                                         ; $6935: $fc
	rra                                              ; $6936: $1f
	ccf                                              ; $6937: $3f
	ld   bc, $0089                                   ; $6938: $01 $89 $00
	ldh  a, [$7f]                                    ; $693b: $f0 $7f
	ld   b, [hl]                                     ; $693d: $46
	nop                                              ; $693e: $00
	ccf                                              ; $693f: $3f
	ld   bc, $1423                                   ; $6940: $01 $23 $14
	ldh  a, [$7f]                                    ; $6943: $f0 $7f
	sbc  a                                           ; $6945: $9f
	ld   [hl], $ff                                   ; $6946: $36 $ff
	ld   a, a                                        ; $6948: $7f
	add  e                                           ; $6949: $83
	inc  d                                           ; $694a: $14
	ldh  a, [$7f]                                    ; $694b: $f0 $7f
	ld   h, d                                        ; $694d: $62
	ld   h, c                                        ; $694e: $61
	rst  $38                                         ; $694f: $ff
	ld   a, a                                        ; $6950: $7f
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	ldh  a, [$7f]                                    ; $6953: $f0 $7f
	ldh  [$03], a                                    ; $6955: $e0 $03
	rst  $38                                         ; $6957: $ff
	inc  bc                                          ; $6958: $03
	rra                                              ; $6959: $1f
	nop                                              ; $695a: $00
	ldh  a, [$7f]                                    ; $695b: $f0 $7f
	rst  $38                                         ; $695d: $ff
	ld   a, a                                        ; $695e: $7f
	db   $ec                                         ; $695f: $ec
	ld   h, c                                        ; $6960: $61
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	rst  $38                                         ; $6973: $ff
	ld   e, e                                        ; $6974: $5b
	pop  de                                          ; $6975: $d1
	ld   l, [hl]                                     ; $6976: $6e
	inc  c                                           ; $6977: $0c
	ld   [hl], $4d                                   ; $6978: $36 $4d
	ld   b, l                                        ; $697a: $45
	rst  $38                                         ; $697b: $ff
	ld   e, e                                        ; $697c: $5b
	or   [hl]                                        ; $697d: $b6
	ld   l, $f6                                      ; $697e: $2e $f6
	dec  [hl]                                        ; $6980: $35
	ld   [hl], b                                     ; $6981: $70
	dec  l                                           ; $6982: $2d
	rst  $38                                         ; $6983: $ff
	ld   e, e                                        ; $6984: $5b
	sbc  a                                           ; $6985: $9f
	ld   h, $7a                                      ; $6986: $26 $7a
	ld   sp, $218f                                   ; $6988: $31 $8f $21
	rst  $38                                         ; $698b: $ff
	ld   a, a                                        ; $698c: $7f
	rst  $38                                         ; $698d: $ff
	inc  bc                                          ; $698e: $03
	ld   a, c                                        ; $698f: $79
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	inc  de                                          ; $6993: $13
	ld   a, a                                        ; $6994: $7f
	xor  h                                           ; $6995: $ac
	ld   c, l                                        ; $6996: $4d
	ld   h, d                                        ; $6997: $62
	inc  d                                           ; $6998: $14
	rst  $38                                         ; $6999: $ff
	ld   a, a                                        ; $699a: $7f
	inc  de                                          ; $699b: $13
	ld   a, a                                        ; $699c: $7f
	ldh  [$03], a                                    ; $699d: $e0 $03
	rra                                              ; $699f: $1f
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	rst  $38                                         ; $69a3: $ff
	ld   e, a                                        ; $69a4: $5f
	rst  $38                                         ; $69a5: $ff
	ld   a, a                                        ; $69a6: $7f
	sbc  a                                           ; $69a7: $9f
	ld   [hl], $83                                   ; $69a8: $36 $83
	inc  d                                           ; $69aa: $14
	rst  $30                                         ; $69ab: $f7
	ld   a, a                                        ; $69ac: $7f
	rst  $38                                         ; $69ad: $ff
	ld   a, a                                        ; $69ae: $7f
	db   $dd                                         ; $69af: $dd
	ld   e, $62                                      ; $69b0: $1e $62
	inc  e                                           ; $69b2: $1c
	ld   e, a                                        ; $69b3: $5f
	ld   l, e                                        ; $69b4: $6b
	ld   h, d                                        ; $69b5: $62
	ld   h, c                                        ; $69b6: $61
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	ldh  [$03], a                                    ; $69d5: $e0 $03
	rst  $38                                         ; $69d7: $ff
	inc  bc                                          ; $69d8: $03
	rra                                              ; $69d9: $1f
	nop                                              ; $69da: $00
	ldh  [$03], a                                    ; $69db: $e0 $03
	rst  $38                                         ; $69dd: $ff
	ld   a, a                                        ; $69de: $7f
	db   $ec                                         ; $69df: $ec
	ld   h, c                                        ; $69e0: $61
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	rst  $38                                         ; $69e3: $ff
	ld   a, a                                        ; $69e4: $7f
	rst  $38                                         ; $69e5: $ff
	ld   a, a                                        ; $69e6: $7f
	rst  $38                                         ; $69e7: $ff
	ld   a, a                                        ; $69e8: $7f
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	nop                                              ; $6a00: $00
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	rst  $38                                         ; $6a23: $ff
	ld   a, a                                        ; $6a24: $7f
	rst  $38                                         ; $6a25: $ff
	ld   a, a                                        ; $6a26: $7f
	rst  $38                                         ; $6a27: $ff
	ld   a, a                                        ; $6a28: $7f
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	rst  $38                                         ; $6a2b: $ff
	ld   a, a                                        ; $6a2c: $7f
	rst  $38                                         ; $6a2d: $ff
	ld   a, a                                        ; $6a2e: $7f
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	rst  $38                                         ; $6a43: $ff
	ld   a, a                                        ; $6a44: $7f
	rst  JumpTable                                         ; $6a45: $df
	ld   e, l                                        ; $6a46: $5d
	dec  b                                           ; $6a47: $05
	add  hl, hl                                      ; $6a48: $29
	nop                                              ; $6a49: $00
	nop                                              ; $6a4a: $00
	rst  $38                                         ; $6a4b: $ff
	ld   a, a                                        ; $6a4c: $7f
	rst  JumpTable                                         ; $6a4d: $df
	ld   e, l                                        ; $6a4e: $5d
	dec  b                                           ; $6a4f: $05
	add  hl, hl                                      ; $6a50: $29
	nop                                              ; $6a51: $00
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	rst  $38                                         ; $6a63: $ff
	ld   a, a                                        ; $6a64: $7f
	rst  $38                                         ; $6a65: $ff
	ld   a, a                                        ; $6a66: $7f
	rst  $38                                         ; $6a67: $ff
	ld   a, a                                        ; $6a68: $7f
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	nop                                              ; $6a7d: $00
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	rst  $38                                         ; $6aa3: $ff
	ld   a, a                                        ; $6aa4: $7f
	rst  $38                                         ; $6aa5: $ff
	ld   a, a                                        ; $6aa6: $7f
	rst  $38                                         ; $6aa7: $ff
	ld   a, a                                        ; $6aa8: $7f
	nop                                              ; $6aa9: $00
	nop                                              ; $6aaa: $00
	rst  $38                                         ; $6aab: $ff
	ld   a, a                                        ; $6aac: $7f
	rst  $38                                         ; $6aad: $ff
	ld   a, a                                        ; $6aae: $7f
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	rst  $38                                         ; $6ac3: $ff
	ld   a, a                                        ; $6ac4: $7f
	rst  JumpTable                                         ; $6ac5: $df
	ld   e, l                                        ; $6ac6: $5d
	dec  b                                           ; $6ac7: $05
	add  hl, hl                                      ; $6ac8: $29
	nop                                              ; $6ac9: $00
	nop                                              ; $6aca: $00
	rst  $38                                         ; $6acb: $ff
	ld   a, a                                        ; $6acc: $7f
	rst  JumpTable                                         ; $6acd: $df
	ld   e, l                                        ; $6ace: $5d
	dec  b                                           ; $6acf: $05
	add  hl, hl                                      ; $6ad0: $29
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	rst  $38                                         ; $6ae3: $ff
	ld   a, a                                        ; $6ae4: $7f
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	rst  $38                                         ; $6ae7: $ff
	inc  bc                                          ; $6ae8: $03
	ld   h, b                                        ; $6ae9: $60
	ld   [bc], a                                     ; $6aea: $02
	rst  $38                                         ; $6aeb: $ff
	ld   a, a                                        ; $6aec: $7f
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	rra                                              ; $6aef: $1f
	inc  e                                           ; $6af0: $1c
	ld   [hl], e                                     ; $6af1: $73
	ld   c, [hl]                                     ; $6af2: $4e
	and  b                                           ; $6af3: $a0
	ld   [hl], l                                     ; $6af4: $75
	add  b                                           ; $6af5: $80
	inc  a                                           ; $6af6: $3c
	jr   nc, jr_02f_6b78                             ; $6af7: $30 $7f

	rst  JumpTable                                         ; $6af9: $df
	ld   bc, $7fff                                   ; $6afa: $01 $ff $7f
	inc  bc                                          ; $6afd: $03
	nop                                              ; $6afe: $00
	rst  $38                                         ; $6aff: $ff
	inc  bc                                          ; $6b00: $03
	ld   sp, $a05a                                   ; $6b01: $31 $5a $a0
	ld   [hl], l                                     ; $6b04: $75
	ld   h, b                                        ; $6b05: $60
	jr   @+$01                                       ; $6b06: $18 $ff

jr_02f_6b08:
	inc  bc                                          ; $6b08: $03
	rst  JumpTable                                         ; $6b09: $df
	ld   bc, $0000                                   ; $6b0a: $01 $00 $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	ldh  [$03], a                                    ; $6b23: $e0 $03
	ld   b, d                                        ; $6b25: $42
	ld   [$35af], sp                                 ; $6b26: $08 $af $35
	sub  [hl]                                        ; $6b29: $96
	ld   c, [hl]                                     ; $6b2a: $4e
	ldh  [$03], a                                    ; $6b2b: $e0 $03
	ld   b, h                                        ; $6b2d: $44

jr_02f_6b2e:
	nop                                              ; $6b2e: $00
	or   $11                                         ; $6b2f: $f6 $11
	inc  a                                           ; $6b31: $3c
	dec  hl                                          ; $6b32: $2b
	ldh  [$03], a                                    ; $6b33: $e0 $03
	rst  $38                                         ; $6b35: $ff
	ld   a, a                                        ; $6b36: $7f
	rst  $38                                         ; $6b37: $ff
	rlca                                             ; $6b38: $07
	rst  ToBoot                                         ; $6b39: $c7
	ld   a, [hl]                                     ; $6b3a: $7e
	xor  a                                           ; $6b3b: $af
	dec  [hl]                                        ; $6b3c: $35
	ld   b, h                                        ; $6b3d: $44
	nop                                              ; $6b3e: $00
	or   $11                                         ; $6b3f: $f6 $11
	inc  a                                           ; $6b41: $3c
	dec  hl                                          ; $6b42: $2b
	db   $e4                                         ; $6b43: $e4
	inc  bc                                          ; $6b44: $03
	add  hl, bc                                      ; $6b45: $09
	nop                                              ; $6b46: $00
	sbc  a                                           ; $6b47: $9f
	ld   a, [hl-]                                    ; $6b48: $3a
	dec  de                                          ; $6b49: $1b
	nop                                              ; $6b4a: $00
	db   $e4                                         ; $6b4b: $e4
	inc  bc                                          ; $6b4c: $03
	ld   a, [bc]                                     ; $6b4d: $0a
	jr   jr_02f_6b67                                 ; $6b4e: $18 $17

	ld   b, h                                        ; $6b50: $44
	rst  $38                                         ; $6b51: $ff
	ld   a, l                                        ; $6b52: $7d
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	add  hl, hl                                      ; $6b55: $29
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	dec  c                                           ; $6b63: $0d
	nop                                              ; $6b64: $00
	rst  $38                                         ; $6b65: $ff
	nop                                              ; $6b66: $00

jr_02f_6b67:
	ret  nz                                          ; $6b67: $c0

	nop                                              ; $6b68: $00
	add  b                                           ; $6b69: $80
	jr   nz, jr_02f_6b08                             ; $6b6a: $20 $9c

	nop                                              ; $6b6c: $00
	add  b                                           ; $6b6d: $80
	jr   nz, jr_02f_6b2e                             ; $6b6e: $20 $be

	nop                                              ; $6b70: $00
	ld   [bc], a                                     ; $6b71: $02
	ld   b, b                                        ; $6b72: $40
	nop                                              ; $6b73: $00
	ld   b, b                                        ; $6b74: $40
	rst  $38                                         ; $6b75: $ff
	nop                                              ; $6b76: $00
	rst  $38                                         ; $6b77: $ff

jr_02f_6b78:
	nop                                              ; $6b78: $00
	rst  $38                                         ; $6b79: $ff
	nop                                              ; $6b7a: $00
	rst  $38                                         ; $6b7b: $ff
	nop                                              ; $6b7c: $00
	rst  $38                                         ; $6b7d: $ff
	nop                                              ; $6b7e: $00
	pop  de                                          ; $6b7f: $d1
	nop                                              ; $6b80: $00
	rst  $38                                         ; $6b81: $ff
	ld   a, a                                        ; $6b82: $7f
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	rra                                              ; $6b85: $1f
	nop                                              ; $6b86: $00
	ld   e, a                                        ; $6b87: $5f
	ld   [bc], a                                     ; $6b88: $02
	rst  $38                                         ; $6b89: $ff
	ld   a, a                                        ; $6b8a: $7f
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	rra                                              ; $6b8d: $1f
	nop                                              ; $6b8e: $00
	ld   e, a                                        ; $6b8f: $5f
	ld   [bc], a                                     ; $6b90: $02
