; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

	ld   bc, $0101                                   ; $4000: $01 $01 $01
	dec  b                                           ; $4003: $05
	ld   a, [bc]                                     ; $4004: $0a
	adc  h                                           ; $4005: $8c
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	ldh  a, [$8d]                                    ; $4008: $f0 $8d
	nop                                              ; $400a: $00
	inc  bc                                          ; $400b: $03
	ld   a, [hl+]                                    ; $400c: $2a
	ld   a, [hl-]                                    ; $400d: $3a
	dec  d                                           ; $400e: $15
	dec  b                                           ; $400f: $05
	add  b                                           ; $4010: $80
	ld   a, [bc]                                     ; $4011: $0a
	add  b                                           ; $4012: $80
	nop                                              ; $4013: $00
	dec  bc                                          ; $4014: $0b
	ld   c, $0f                                      ; $4015: $0e $0f
	inc  c                                           ; $4017: $0c
	rrca                                             ; $4018: $0f
	jr   c, jr_07e_405a                              ; $4019: $38 $3f

	dec  b                                           ; $401b: $05
	nop                                              ; $401c: $00
	sbc  a                                           ; $401d: $9f
	cp   a                                           ; $401e: $bf
	ld   a, a                                        ; $401f: $7f
	ld   e, a                                        ; $4020: $5f
	add  b                                           ; $4021: $80
	and  b                                           ; $4022: $a0
	add  b                                           ; $4023: $80
	rra                                              ; $4024: $1f
	rlca                                             ; $4025: $07
	add  b                                           ; $4026: $80
	rst  $38                                         ; $4027: $ff
	ccf                                              ; $4028: $3f
	rst  $38                                         ; $4029: $ff
	sbc  a                                           ; $402a: $9f
	ld   a, a                                        ; $402b: $7f
	ld   e, a                                        ; $402c: $5f
	nop                                              ; $402d: $00
	add  d                                           ; $402e: $82
	rst  $38                                         ; $402f: $ff
	add  b                                           ; $4030: $80
	nop                                              ; $4031: $00
	add  b                                           ; $4032: $80
	rst  $38                                         ; $4033: $ff
	ld   bc, $f50a                                   ; $4034: $01 $0a $f5
	add  c                                           ; $4037: $81
	rst  $38                                         ; $4038: $ff
	add  b                                           ; $4039: $80
	rst  $30                                         ; $403a: $f7
	nop                                              ; $403b: $00
	nop                                              ; $403c: $00
	add  d                                           ; $403d: $82
	rst  $38                                         ; $403e: $ff
	add  b                                           ; $403f: $80
	nop                                              ; $4040: $00
	add  c                                           ; $4041: $81
	rst  $38                                         ; $4042: $ff
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	add  b                                           ; $4045: $80
	ldh  a, [$81]                                    ; $4046: $f0 $81
	rst  $38                                         ; $4048: $ff
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	add  d                                           ; $404b: $82
	rst  $38                                         ; $404c: $ff
	add  b                                           ; $404d: $80
	ld   bc, $ff81                                   ; $404e: $01 $81 $ff
	nop                                              ; $4051: $00
	nop                                              ; $4052: $00
	add  b                                           ; $4053: $80
	rra                                              ; $4054: $1f
	nop                                              ; $4055: $00
	rst  $38                                         ; $4056: $ff
	add  b                                           ; $4057: $80
	rst  JumpTable                                         ; $4058: $df
	ld   a, [hl+]                                    ; $4059: $2a

jr_07e_405a:
	nop                                              ; $405a: $00
	xor  d                                           ; $405b: $aa
	rst  $38                                         ; $405c: $ff
	add  b                                           ; $405d: $80
	rst  $38                                         ; $405e: $ff
	ld   d, l                                        ; $405f: $55
	ld   a, a                                        ; $4060: $7f
	push af                                          ; $4061: $f5
	rst  $38                                         ; $4062: $ff
	ldh  a, [$7f]                                    ; $4063: $f0 $7f
	ld   hl, sp-$01                                  ; $4065: $f8 $ff
	sbc  l                                           ; $4067: $9d
	ld   e, a                                        ; $4068: $5f
	db   $fd                                         ; $4069: $fd
	rst  $38                                         ; $406a: $ff
	ldh  [c], a                                      ; $406b: $e2
	rst  $38                                         ; $406c: $ff
	rrca                                             ; $406d: $0f
	rst  $38                                         ; $406e: $ff
	ld   d, b                                        ; $406f: $50

Call_07e_4070:
	rst  $38                                         ; $4070: $ff
	ld   d, h                                        ; $4071: $54
	rst  $38                                         ; $4072: $ff
	inc  bc                                          ; $4073: $03
	rst  $38                                         ; $4074: $ff
	inc  bc                                          ; $4075: $03
	rst  $38                                         ; $4076: $ff
	ld   d, h                                        ; $4077: $54
	rst  $38                                         ; $4078: $ff
	ld   d, l                                        ; $4079: $55
	rst  $38                                         ; $407a: $ff
	add  b                                           ; $407b: $80
	rst  $38                                         ; $407c: $ff
	ret  nz                                          ; $407d: $c0

	rst  $38                                         ; $407e: $ff
	dec  d                                           ; $407f: $15
	rst  $38                                         ; $4080: $ff
	ld   bc, $feff                                   ; $4081: $01 $ff $fe
	rst  $38                                         ; $4084: $ff
	add  b                                           ; $4085: $80
	rst  $30                                         ; $4086: $f7
	inc  h                                           ; $4087: $24
	inc  d                                           ; $4088: $14
	rst  $38                                         ; $4089: $ff
	ld   e, $f5                                      ; $408a: $1e $f5
	ld   d, l                                        ; $408c: $55
	rst  $38                                         ; $408d: $ff
	nop                                              ; $408e: $00
	rst  $38                                         ; $408f: $ff
	ld   d, l                                        ; $4090: $55
	rst  $38                                         ; $4091: $ff
	ld   d, l                                        ; $4092: $55
	rst  $38                                         ; $4093: $ff
	nop                                              ; $4094: $00
	rst  $38                                         ; $4095: $ff
	nop                                              ; $4096: $00
	rst  $38                                         ; $4097: $ff
	ld   d, l                                        ; $4098: $55
	rst  $38                                         ; $4099: $ff
	ld   d, l                                        ; $409a: $55
	rst  $38                                         ; $409b: $ff
	ld   d, l                                        ; $409c: $55
	rst  $38                                         ; $409d: $ff
	ld   d, l                                        ; $409e: $55
	rst  $38                                         ; $409f: $ff
	ld   d, l                                        ; $40a0: $55
	rst  $38                                         ; $40a1: $ff
	ld   d, l                                        ; $40a2: $55
	rst  $38                                         ; $40a3: $ff
	nop                                              ; $40a4: $00
	rst  $38                                         ; $40a5: $ff
	nop                                              ; $40a6: $00
	rst  $38                                         ; $40a7: $ff
	ld   d, l                                        ; $40a8: $55
	rst  $38                                         ; $40a9: $ff
	ld   d, l                                        ; $40aa: $55
	rst  $38                                         ; $40ab: $ff
	ld   d, l                                        ; $40ac: $55
	add  c                                           ; $40ad: $81
	rst  $38                                         ; $40ae: $ff
	add  b                                           ; $40af: $80
	ld   d, b                                        ; $40b0: $50
	ld   a, [bc]                                     ; $40b1: $0a
	ld   a, a                                        ; $40b2: $7f
	rst  $38                                         ; $40b3: $ff
	ccf                                              ; $40b4: $3f
	rst  $38                                         ; $40b5: $ff
	ccf                                              ; $40b6: $3f
	rst  $38                                         ; $40b7: $ff
	ld   [hl], h                                     ; $40b8: $74
	db   $f4                                         ; $40b9: $f4
	ld   d, a                                        ; $40ba: $57
	rst  $38                                         ; $40bb: $ff
	ld   d, a                                        ; $40bc: $57
	add  c                                           ; $40bd: $81
	rst  $38                                         ; $40be: $ff
	add  b                                           ; $40bf: $80
	nop                                              ; $40c0: $00
	add  h                                           ; $40c1: $84
	rst  $38                                         ; $40c2: $ff
	add  b                                           ; $40c3: $80
	nop                                              ; $40c4: $00
	add  b                                           ; $40c5: $80
	rst  $38                                         ; $40c6: $ff
	add  b                                           ; $40c7: $80
	ld   [$7e02], sp                                 ; $40c8: $08 $02 $7e
	ld   e, [hl]                                     ; $40cb: $5e
	jr   nz, @-$7d                                   ; $40cc: $20 $81

	inc  a                                           ; $40ce: $3c
	inc  bc                                          ; $40cf: $03
	ld   b, d                                        ; $40d0: $42
	ld   e, [hl]                                     ; $40d1: $5e
	jr   nz, jr_07e_40d4                             ; $40d2: $20 $00

jr_07e_40d4:
	add  b                                           ; $40d4: $80
	rst  $38                                         ; $40d5: $ff
	add  b                                           ; $40d6: $80
	nop                                              ; $40d7: $00
	ld   [bc], a                                     ; $40d8: $02
	cp   c                                           ; $40d9: $b9
	xor  c                                           ; $40da: $a9
	add  c                                           ; $40db: $81
	add  c                                           ; $40dc: $81
	sub  c                                           ; $40dd: $91
	nop                                              ; $40de: $00
	xor  c                                           ; $40df: $a9
	add  c                                           ; $40e0: $81
	cp   c                                           ; $40e1: $b9
	ld   bc, $0111                                   ; $40e2: $01 $11 $01
	add  b                                           ; $40e5: $80
	db   $fd                                         ; $40e6: $fd
	add  b                                           ; $40e7: $80
	ld   bc, $f000                                   ; $40e8: $01 $00 $f0
	adc  l                                           ; $40eb: $8d
	nop                                              ; $40ec: $00
	ld   bc, $01f1                                   ; $40ed: $01 $f1 $01
	add  b                                           ; $40f0: $80
	inc  bc                                          ; $40f1: $03
	add  b                                           ; $40f2: $80
	dec  b                                           ; $40f3: $05
	add  b                                           ; $40f4: $80
	ld   a, [bc]                                     ; $40f5: $0a
	add  [hl]                                        ; $40f6: $86
	nop                                              ; $40f7: $00
	inc  b                                           ; $40f8: $04
	pop  af                                          ; $40f9: $f1
	ei                                               ; $40fa: $fb
	db   $f4                                         ; $40fb: $f4
	rst  $38                                         ; $40fc: $ff
	cp   $81                                         ; $40fd: $fe $81

Call_07e_40ff:
	rst  $38                                         ; $40ff: $ff
	add  [hl]                                        ; $4100: $86
	nop                                              ; $4101: $00
	rlca                                             ; $4102: $07
	ld   d, h                                        ; $4103: $54
	rst  $38                                         ; $4104: $ff
	ld   bc, $80ff                                   ; $4105: $01 $ff $80
	rst  $38                                         ; $4108: $ff
	push de                                          ; $4109: $d5
	rst  $38                                         ; $410a: $ff
	add  a                                           ; $410b: $87
	nop                                              ; $410c: $00
	ld   b, $bf                                      ; $410d: $06 $bf
	dec  d                                           ; $410f: $15
	rst  $38                                         ; $4110: $ff
	nop                                              ; $4111: $00
	rst  $38                                         ; $4112: $ff
	ld   d, l                                        ; $4113: $55
	rst  $38                                         ; $4114: $ff
	add  a                                           ; $4115: $87
	nop                                              ; $4116: $00
	ld   b, $fe                                      ; $4117: $06 $fe
	ld   d, h                                        ; $4119: $54
	rst  $38                                         ; $411a: $ff
	nop                                              ; $411b: $00
	rst  $38                                         ; $411c: $ff
	ld   d, l                                        ; $411d: $55
	rst  $38                                         ; $411e: $ff
	add  a                                           ; $411f: $87
	nop                                              ; $4120: $00
	ld   b, $fe                                      ; $4121: $06 $fe
	ld   d, e                                        ; $4123: $53
	db   $fd                                         ; $4124: $fd
	dec  b                                           ; $4125: $05
	db   $fd                                         ; $4126: $fd
	ld   d, e                                        ; $4127: $53
	ei                                               ; $4128: $fb
	add  [hl]                                        ; $4129: $86
	ld   [bc], a                                     ; $412a: $02
	dec  b                                           ; $412b: $05
	cp   $ff                                         ; $412c: $fe $ff
	cp   [hl]                                        ; $412e: $be
	rst  $38                                         ; $412f: $ff
	rla                                              ; $4130: $17
	ld   d, a                                        ; $4131: $57
	add  h                                           ; $4132: $84
	ld   e, a                                        ; $4133: $5f
	add  b                                           ; $4134: $80
	res  0, b                                        ; $4135: $cb $80
	rst  $38                                         ; $4137: $ff
	add  hl, hl                                      ; $4138: $29
	xor  d                                           ; $4139: $aa
	rst  $38                                         ; $413a: $ff
	nop                                              ; $413b: $00
	rst  $38                                         ; $413c: $ff
	ld   d, l                                        ; $413d: $55
	rst  $38                                         ; $413e: $ff
	xor  d                                           ; $413f: $aa
	rst  $38                                         ; $4140: $ff
	add  b                                           ; $4141: $80
	rst  $38                                         ; $4142: $ff
	ret  nz                                          ; $4143: $c0

	rst  $38                                         ; $4144: $ff
	ld   [$faff], a                                  ; $4145: $ea $ff $fa
	rst  $38                                         ; $4148: $ff
	ld   bc, $bdfb                                   ; $4149: $01 $fb $bd
	db   $fd                                         ; $414c: $fd
	ld   d, l                                        ; $414d: $55
	rst  $38                                         ; $414e: $ff
	sub  a                                           ; $414f: $97
	db   $fd                                         ; $4150: $fd
	ld   l, $fe                                      ; $4151: $2e $fe
	rrca                                             ; $4153: $0f
	rst  $38                                         ; $4154: $ff
	and  c                                           ; $4155: $a1
	rst  $38                                         ; $4156: $ff
	xor  c                                           ; $4157: $a9
	rst  $38                                         ; $4158: $ff
	ld   e, l                                        ; $4159: $5d
	rst  $38                                         ; $415a: $ff
	ld   [hl], b                                     ; $415b: $70
	ld   a, a                                        ; $415c: $7f
	ld   b, l                                        ; $415d: $45
	rst  $38                                         ; $415e: $ff
	pop  hl                                          ; $415f: $e1
	ld   e, a                                        ; $4160: $5f
	xor  [hl]                                        ; $4161: $ae
	xor  a                                           ; $4162: $af
	add  b                                           ; $4163: $80
	ld   d, a                                        ; $4164: $57
	ld   [bc], a                                     ; $4165: $02
	ld   d, b                                        ; $4166: $50
	rst  $38                                         ; $4167: $ff
	ld   a, [$5580]                                  ; $4168: $fa $80 $55
	rra                                              ; $416b: $1f
	rst  $38                                         ; $416c: $ff
	nop                                              ; $416d: $00
	rst  $38                                         ; $416e: $ff
	ld   d, l                                        ; $416f: $55
	rst  $38                                         ; $4170: $ff
	ld   d, l                                        ; $4171: $55
	rst  $38                                         ; $4172: $ff
	nop                                              ; $4173: $00
	rst  $38                                         ; $4174: $ff
	nop                                              ; $4175: $00
	rst  $38                                         ; $4176: $ff
	ld   d, l                                        ; $4177: $55
	rst  $38                                         ; $4178: $ff
	dec  b                                           ; $4179: $05
	rst  $38                                         ; $417a: $ff
	ld   d, l                                        ; $417b: $55
	rst  $38                                         ; $417c: $ff
	dec  b                                           ; $417d: $05
	rst  $38                                         ; $417e: $ff
	ld   d, l                                        ; $417f: $55
	rst  $38                                         ; $4180: $ff
	ld   d, l                                        ; $4181: $55
	rst  $38                                         ; $4182: $ff
	nop                                              ; $4183: $00
	rst  $38                                         ; $4184: $ff
	nop                                              ; $4185: $00
	rst  $38                                         ; $4186: $ff
	ld   d, l                                        ; $4187: $55
	rst  $38                                         ; $4188: $ff
	ld   d, l                                        ; $4189: $55
	rst  $38                                         ; $418a: $ff
	ld   d, l                                        ; $418b: $55
	add  c                                           ; $418c: $81
	rst  $38                                         ; $418d: $ff
	add  b                                           ; $418e: $80
	ld   d, b                                        ; $418f: $50
	ld   a, [bc]                                     ; $4190: $0a
	ld   a, a                                        ; $4191: $7f
	rst  $38                                         ; $4192: $ff
	ld   a, a                                        ; $4193: $7f
	rst  $38                                         ; $4194: $ff
	ld   e, a                                        ; $4195: $5f
	rst  $38                                         ; $4196: $ff
	ld   c, d                                        ; $4197: $4a
	ld   [$ff57], a                                  ; $4198: $ea $57 $ff
	xor  b                                           ; $419b: $a8
	add  h                                           ; $419c: $84
	nop                                              ; $419d: $00
	add  b                                           ; $419e: $80
	rst  $38                                         ; $419f: $ff
	inc  bc                                          ; $41a0: $03
	nop                                              ; $41a1: $00
	add  b                                           ; $41a2: $80
	rst  $38                                         ; $41a3: $ff
	ld   a, a                                        ; $41a4: $7f
	add  b                                           ; $41a5: $80
	nop                                              ; $41a6: $00
	ld   bc, $feff                                   ; $41a7: $01 $ff $fe
	add  h                                           ; $41aa: $84
	ld   bc, $f980                                   ; $41ab: $01 $80 $f9
	add  b                                           ; $41ae: $80
	ld   bc, $fd80                                   ; $41af: $01 $80 $fd
	add  b                                           ; $41b2: $80
	ld   bc, $f901                                   ; $41b3: $01 $01 $f9
	rlca                                             ; $41b6: $07
	add  l                                           ; $41b7: $85
	nop                                              ; $41b8: $00
	ld   bc, $fc03                                   ; $41b9: $01 $03 $fc
	add  b                                           ; $41bc: $80
	cp   $80                                         ; $41bd: $fe $80
	ld   d, h                                        ; $41bf: $54
	add  b                                           ; $41c0: $80
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	rst  $38                                         ; $41c3: $ff
	add  l                                           ; $41c4: $85
	nop                                              ; $41c5: $00
	ld   [$7dfa], sp                                 ; $41c6: $08 $fa $7d
	ld   a, d                                        ; $41c9: $7a
	cp   d                                           ; $41ca: $ba
	cp   l                                           ; $41cb: $bd
	ld   a, l                                        ; $41cc: $7d
	ld   a, d                                        ; $41cd: $7a
	ld   [bc], a                                     ; $41ce: $02
	rst  $38                                         ; $41cf: $ff
	add  l                                           ; $41d0: $85
	nop                                              ; $41d1: $00
	ld   bc, $55aa                                   ; $41d2: $01 $aa $55
	add  b                                           ; $41d5: $80
	xor  d                                           ; $41d6: $aa
	add  b                                           ; $41d7: $80
	ld   d, l                                        ; $41d8: $55
	add  b                                           ; $41d9: $80
	xor  d                                           ; $41da: $aa
	nop                                              ; $41db: $00
	rst  $38                                         ; $41dc: $ff
	add  l                                           ; $41dd: $85
	nop                                              ; $41de: $00
	ld   bc, $50a0                                   ; $41df: $01 $a0 $50
	add  b                                           ; $41e2: $80
	and  b                                           ; $41e3: $a0
	add  b                                           ; $41e4: $80
	ld   d, b                                        ; $41e5: $50
	add  b                                           ; $41e6: $80
	and  b                                           ; $41e7: $a0
	nop                                              ; $41e8: $00
	ldh  a, [$81]                                    ; $41e9: $f0 $81
	rst  $38                                         ; $41eb: $ff
	add  [hl]                                        ; $41ec: $86

Call_07e_41ed:
	nop                                              ; $41ed: $00
	rlca                                             ; $41ee: $07
	ld   bc, $3039                                   ; $41ef: $01 $39 $30
	ld   [$ffc0], sp                                 ; $41f2: $08 $c0 $ff
	ret  nz                                          ; $41f5: $c0

	rst  $38                                         ; $41f6: $ff
	add  e                                           ; $41f7: $83
	ld   bc, $1102                                   ; $41f8: $01 $02 $11
	ld   bc, $8011                                   ; $41fb: $01 $11 $80
	sub  c                                           ; $41fe: $91
	inc  bc                                          ; $41ff: $03
	xor  c                                           ; $4200: $a9
	cp   c                                           ; $4201: $b9
	ld   b, l                                        ; $4202: $45
	ld   d, l                                        ; $4203: $55
	add  b                                           ; $4204: $80
	xor  d                                           ; $4205: $aa
	add  b                                           ; $4206: $80
	ld   d, l                                        ; $4207: $55
	add  b                                           ; $4208: $80
	xor  d                                           ; $4209: $aa
	add  b                                           ; $420a: $80
	ld   d, l                                        ; $420b: $55
	add  b                                           ; $420c: $80
	xor  d                                           ; $420d: $aa
	add  b                                           ; $420e: $80
	ld   d, l                                        ; $420f: $55
	add  b                                           ; $4210: $80
	xor  d                                           ; $4211: $aa
	ld   bc, $505f                                   ; $4212: $01 $5f $50
	add  b                                           ; $4215: $80
	and  b                                           ; $4216: $a0
	add  b                                           ; $4217: $80
	ld   d, b                                        ; $4218: $50
	add  b                                           ; $4219: $80
	and  b                                           ; $421a: $a0
	add  b                                           ; $421b: $80
	ld   d, b                                        ; $421c: $50
	add  b                                           ; $421d: $80
	and  b                                           ; $421e: $a0
	add  b                                           ; $421f: $80
	ld   d, b                                        ; $4220: $50
	add  b                                           ; $4221: $80
	and  b                                           ; $4222: $a0
	nop                                              ; $4223: $00
	rrca                                             ; $4224: $0f
	add  b                                           ; $4225: $80
	nop                                              ; $4226: $00
	add  b                                           ; $4227: $80
	rst  $38                                         ; $4228: $ff
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	add  b                                           ; $422b: $80
	rst  $38                                         ; $422c: $ff
	add  b                                           ; $422d: $80
	nop                                              ; $422e: $00
	ld   b, $30                                      ; $422f: $06 $30
	ldh  a, [$c3]                                    ; $4231: $f0 $c3
	ld   [bc], a                                     ; $4233: $02
	cp   c                                           ; $4234: $b9
	ld   a, b                                        ; $4235: $78
	pop  bc                                          ; $4236: $c1
	add  b                                           ; $4237: $80
	ld   bc, $f180                                   ; $4238: $01 $80 $f1
	nop                                              ; $423b: $00
	ld   bc, $fd80                                   ; $423c: $01 $80 $fd
	add  d                                           ; $423f: $82
	ld   bc, $7104                                   ; $4240: $01 $04 $71
	pop  af                                          ; $4243: $f1
	add  c                                           ; $4244: $81
	ld   bc, $85ff                                   ; $4245: $01 $ff $85
	nop                                              ; $4248: $00
	add  d                                           ; $4249: $82
	rst  $38                                         ; $424a: $ff
	nop                                              ; $424b: $00
	db   $fc                                         ; $424c: $fc
	add  c                                           ; $424d: $81
	rst  $38                                         ; $424e: $ff
	nop                                              ; $424f: $00
	inc  bc                                          ; $4250: $03
	add  l                                           ; $4251: $85
	nop                                              ; $4252: $00
	add  d                                           ; $4253: $82
	rst  $38                                         ; $4254: $ff
	rlca                                             ; $4255: $07
	ld   a, a                                        ; $4256: $7f
	rst  $38                                         ; $4257: $ff
	adc  a                                           ; $4258: $8f
	rst  $38                                         ; $4259: $ff
	db   $f4                                         ; $425a: $f4
	rst  $38                                         ; $425b: $ff
	ld   a, a                                        ; $425c: $7f
	rst  $38                                         ; $425d: $ff
	adc  d                                           ; $425e: $8a
	add  a                                           ; $425f: $87
	ld   bc, $ff7b                                   ; $4260: $01 $7b $ff
	add  b                                           ; $4263: $80
	rra                                              ; $4264: $1f
	add  b                                           ; $4265: $80
	ld   h, e                                        ; $4266: $63
	add  b                                           ; $4267: $80
	ld   a, h                                        ; $4268: $7c
	add  [hl]                                        ; $4269: $86
	ld   a, a                                        ; $426a: $7f
	rlca                                             ; $426b: $07
	rra                                              ; $426c: $1f
	rst  $38                                         ; $426d: $ff
	inc  bc                                          ; $426e: $03
	rst  $38                                         ; $426f: $ff
	ldh  [rIE], a                                    ; $4270: $e0 $ff
	ld   a, h                                        ; $4272: $7c
	ld   a, a                                        ; $4273: $7f
	add  b                                           ; $4274: $80
	adc  a                                           ; $4275: $8f
	ld   bc, $f3f1                                   ; $4276: $01 $f1 $f3
	add  d                                           ; $4279: $82
	rst  $38                                         ; $427a: $ff
	ld   [$f7f0], sp                                 ; $427b: $08 $f0 $f7
	push af                                          ; $427e: $f5
	or   $36                                         ; $427f: $f6 $36

Jump_07e_4281:
	or   [hl]                                        ; $4281: $b6
	inc  [hl]                                        ; $4282: $34
	or   [hl]                                        ; $4283: $b6
	or   d                                           ; $4284: $b2
	add  l                                           ; $4285: $85
	or   [hl]                                        ; $4286: $b6
	nop                                              ; $4287: $00
	inc  bc                                          ; $4288: $03
	adc  l                                           ; $4289: $8d
	add  a                                           ; $428a: $87
	nop                                              ; $428b: $00
	ei                                               ; $428c: $fb
	adc  l                                           ; $428d: $8d
	ld   a, a                                        ; $428e: $7f
	nop                                              ; $428f: $00
	db   $fd                                         ; $4290: $fd
	adc  l                                           ; $4291: $8d
	rst  $38                                         ; $4292: $ff
	nop                                              ; $4293: $00
	nop                                              ; $4294: $00
	adc  e                                           ; $4295: $8b
	add  [hl]                                        ; $4296: $86
	add  b                                           ; $4297: $80
	add  h                                           ; $4298: $84
	ld   bc, $7ffb                                   ; $4299: $01 $fb $7f
	add  c                                           ; $429c: $81
	ccf                                              ; $429d: $3f
	nop                                              ; $429e: $00
	ld   a, a                                        ; $429f: $7f
	add  b                                           ; $42a0: $80
	rst  $38                                         ; $42a1: $ff
	ld   bc, $5f1f                                   ; $42a2: $01 $1f $5f
	add  b                                           ; $42a5: $80
	ccf                                              ; $42a6: $3f
	add  d                                           ; $42a7: $82
	ld   a, a                                        ; $42a8: $7f
	ld   bc, $af2b                                   ; $42a9: $01 $2b $af
	add  b                                           ; $42ac: $80
	sub  a                                           ; $42ad: $97
	add  b                                           ; $42ae: $80
	xor  a                                           ; $42af: $af
	add  b                                           ; $42b0: $80
	sub  a                                           ; $42b1: $97
	add  b                                           ; $42b2: $80
	xor  a                                           ; $42b3: $af
	add  b                                           ; $42b4: $80
	cp   a                                           ; $42b5: $bf
	add  b                                           ; $42b6: $80
	add  a                                           ; $42b7: $87
	add  b                                           ; $42b8: $80
	cp   a                                           ; $42b9: $bf
	nop                                              ; $42ba: $00
	ld   a, c                                        ; $42bb: $79
	adc  e                                           ; $42bc: $8b
	rst  $38                                         ; $42bd: $ff
	inc  bc                                          ; $42be: $03
	di                                               ; $42bf: $f3
	rst  $38                                         ; $42c0: $ff
	dec  [hl]                                        ; $42c1: $35
	cp   a                                           ; $42c2: $bf
	add  b                                           ; $42c3: $80
	add  a                                           ; $42c4: $87
	nop                                              ; $42c5: $00
	rst  $38                                         ; $42c6: $ff
	add  b                                           ; $42c7: $80
	ld   a, a                                        ; $42c8: $7f
	ld   [$7fff], sp                                 ; $42c9: $08 $ff $7f

jr_07e_42cc:
	rst  $38                                         ; $42cc: $ff
	ld   e, a                                        ; $42cd: $5f
	rst  $38                                         ; $42ce: $ff
	ld   [$affc], sp                                 ; $42cf: $08 $fc $af
	rst  $38                                         ; $42d2: $ff
	add  b                                           ; $42d3: $80
	ld   a, a                                        ; $42d4: $7f
	dec  b                                           ; $42d5: $05
	ld   a, b                                        ; $42d6: $78
	ld   a, a                                        ; $42d7: $7f
	ld   d, b                                        ; $42d8: $50
	ld   l, a                                        ; $42d9: $6f
	rst  ToBoot                                         ; $42da: $c7
	rst  $38                                         ; $42db: $ff
	add  b                                           ; $42dc: $80
	ld   hl, sp+$15                                  ; $42dd: $f8 $15
	add  l                                           ; $42df: $85
	add  a                                           ; $42e0: $87
	ld   [hl], b                                     ; $42e1: $70
	ld   a, a                                        ; $42e2: $7f
	ldh  a, [c]                                      ; $42e3: $f2
	rst  $38                                         ; $42e4: $ff
	adc  a                                           ; $42e5: $8f
	rst  $38                                         ; $42e6: $ff
	ld   c, $fe                                      ; $42e7: $0e $fe
	ld   [hl], c                                     ; $42e9: $71
	pop  af                                          ; $42ea: $f1
	adc  l                                           ; $42eb: $8d
	adc  a                                           ; $42ec: $8f
	ld   a, l                                        ; $42ed: $7d
	ld   a, a                                        ; $42ee: $7f
	ld   d, l                                        ; $42ef: $55
	rst  $38                                         ; $42f0: $ff
	nop                                              ; $42f1: $00
	rst  $38                                         ; $42f2: $ff
	xor  d                                           ; $42f3: $aa
	rst  $38                                         ; $42f4: $ff
	add  b                                           ; $42f5: $80
	ld   b, b                                        ; $42f6: $40
	add  c                                           ; $42f7: $81
	ld   e, a                                        ; $42f8: $5f
	dec  b                                           ; $42f9: $05
	ld   e, [hl]                                     ; $42fa: $5e
	ld   e, a                                        ; $42fb: $5f
	ld   e, h                                        ; $42fc: $5c
	ld   e, [hl]                                     ; $42fd: $5e
	ld   e, c                                        ; $42fe: $59
	ld   e, l                                        ; $42ff: $5d
	add  b                                           ; $4300: $80
	ld   d, e                                        ; $4301: $53
	dec  b                                           ; $4302: $05
	ld   e, a                                        ; $4303: $5f
	ld   e, b                                        ; $4304: $58
	ld   e, h                                        ; $4305: $5c
	ld   h, e                                        ; $4306: $63
	nop                                              ; $4307: $00
	sbc  a                                           ; $4308: $9f
	add  b                                           ; $4309: $80
	cp   a                                           ; $430a: $bf
	dec  b                                           ; $430b: $05
	rlca                                             ; $430c: $07
	sbc  a                                           ; $430d: $9f
	ld   h, e                                        ; $430e: $63
	ld   [hl], a                                     ; $430f: $77
	sbc  c                                           ; $4310: $99
	adc  e                                           ; $4311: $8b
	add  b                                           ; $4312: $80
	db   $ec                                         ; $4313: $ec
	dec  b                                           ; $4314: $05
	adc  a                                           ; $4315: $8f
	ld   de, $a303                                   ; $4316: $11 $03 $a3
	ld   e, a                                        ; $4319: $5f
	ld   b, b                                        ; $431a: $40
	add  b                                           ; $431b: $80
	ld   b, e                                        ; $431c: $43
	nop                                              ; $431d: $00
	ld   b, b                                        ; $431e: $40
	add  b                                           ; $431f: $80
	ld   a, a                                        ; $4320: $7f
	add  [hl]                                        ; $4321: $86
	ld   b, b                                        ; $4322: $40
	add  b                                           ; $4323: $80
	rst  $38                                         ; $4324: $ff
	inc  bc                                          ; $4325: $03
	ldh  a, [$0c]                                    ; $4326: $f0 $0c
	db   $fc                                         ; $4328: $fc

jr_07e_4329:
	nop                                              ; $4329: $00
	add  b                                           ; $432a: $80
	rst  $38                                         ; $432b: $ff
	add  [hl]                                        ; $432c: $86
	nop                                              ; $432d: $00
	add  b                                           ; $432e: $80
	adc  c                                           ; $432f: $89
	add  b                                           ; $4330: $80
	adc  h                                           ; $4331: $8c
	ld   [bc], a                                     ; $4332: $02
	add  b                                           ; $4333: $80
	sbc  h                                           ; $4334: $9c
	ld   e, h                                        ; $4335: $5c
	add  b                                           ; $4336: $80
	ld   c, [hl]                                     ; $4337: $4e
	add  b                                           ; $4338: $80
	ld   b, [hl]                                     ; $4339: $46
	add  b                                           ; $433a: $80
	ld   e, [hl]                                     ; $433b: $5e
	ld   [hl], $4e                                   ; $433c: $36 $4e
	ld   c, $06                                      ; $433e: $0e $06
	ld   e, $00                                      ; $4340: $1e $00
	ld   d, h                                        ; $4342: $54
	ld   h, b                                        ; $4343: $60
	ld   a, [hl-]                                    ; $4344: $3a
	ld   h, b                                        ; $4345: $60

jr_07e_4346:
	adc  h                                           ; $4346: $8c
	ret  nz                                          ; $4347: $c0

	adc  b                                           ; $4348: $88
	sub  h                                           ; $4349: $94
	jr   nz, jr_07e_42cc                             ; $434a: $20 $80

	xor  b                                           ; $434c: $a8
	ld   [hl], b                                     ; $434d: $70
	ld   [bc], a                                     ; $434e: $02
	ld   h, b                                        ; $434f: $60
	ld   b, e                                        ; $4350: $43
	ld   [hl], b                                     ; $4351: $70
	scf                                              ; $4352: $37
	nop                                              ; $4353: $00
	ld   a, a                                        ; $4354: $7f
	ld   [bc], a                                     ; $4355: $02
	ld   a, [$1406]                                  ; $4356: $fa $06 $14
	ld   [$0050], sp                                 ; $4359: $08 $50 $00
	or   b                                           ; $435c: $b0
	nop                                              ; $435d: $00
	add  hl, sp                                      ; $435e: $39
	jr   @-$47                                       ; $435f: $18 $b7

	ld   a, [hl+]                                    ; $4361: $2a
	inc  d                                           ; $4362: $14
	pop  de                                          ; $4363: $d1
	ret                                              ; $4364: $c9


	xor  c                                           ; $4365: $a9
	jp   hl                                          ; $4366: $e9


	add  hl, bc                                      ; $4367: $09
	ld   b, $14                                      ; $4368: $06 $14
	ld   [hl-], a                                    ; $436a: $32
	adc  d                                           ; $436b: $8a
	ld   a, [$2062]                                  ; $436c: $fa $62 $20
	dec  h                                           ; $436f: $25
	or   e                                           ; $4370: $b3
	jr   z, jr_07e_4382                              ; $4371: $28 $0f

	rra                                              ; $4373: $1f
	add  b                                           ; $4374: $80
	dec  d                                           ; $4375: $15
	add  b                                           ; $4376: $80
	ld   a, [bc]                                     ; $4377: $0a
	add  h                                           ; $4378: $84
	nop                                              ; $4379: $00
	add  b                                           ; $437a: $80
	add  b                                           ; $437b: $80
	dec  c                                           ; $437c: $0d
	dec  l                                           ; $437d: $2d
	add  hl, bc                                      ; $437e: $09
	sub  d                                           ; $437f: $92
	add  b                                           ; $4380: $80
	ld   h, b                                        ; $4381: $60

jr_07e_4382:
	ld   b, b                                        ; $4382: $40
	adc  h                                           ; $4383: $8c
	add  b                                           ; $4384: $80
	stop                                             ; $4385: $10 $00
	and  c                                           ; $4387: $a1
	and  b                                           ; $4388: $a0
	ld   e, [hl]                                     ; $4389: $5e
	ld   d, b                                        ; $438a: $50
	add  b                                           ; $438b: $80
	jr   nz, @+$0b                                   ; $438c: $20 $09

	ld   l, e                                        ; $438e: $6b
	dec  h                                           ; $438f: $25
	ld   h, c                                        ; $4390: $61
	inc  bc                                          ; $4391: $03
	jp   z, $f5e2                                    ; $4392: $ca $e2 $f5

	ld   sp, $01f4                                   ; $4395: $31 $f4 $01
	add  b                                           ; $4398: $80
	ld   b, b                                        ; $4399: $40
	inc  b                                           ; $439a: $04
	ld   d, [hl]                                     ; $439b: $56
	ld   b, b                                        ; $439c: $40
	and  d                                           ; $439d: $a2
	nop                                              ; $439e: $00
	ei                                               ; $439f: $fb
	add  b                                           ; $43a0: $80
	ld   b, b                                        ; $43a1: $40
	inc  b                                           ; $43a2: $04
	ld   h, b                                        ; $43a3: $60
	jr   nz, jr_07e_4346                             ; $43a4: $20 $a0

	ccf                                              ; $43a6: $3f
	jr   nz, jr_07e_4329                             ; $43a7: $20 $80

	nop                                              ; $43a9: $00
	ld   b, $36                                      ; $43aa: $06 $36
	add  hl, sp                                      ; $43ac: $39
	reti                                             ; $43ad: $d9


	add  hl, de                                      ; $43ae: $19
	add  hl, hl                                      ; $43af: $29
	jr   z, @+$50                                    ; $43b0: $28 $4e

	add  b                                           ; $43b2: $80
	ld   [bc], a                                     ; $43b3: $02
	ld   [$8305], sp                                 ; $43b4: $08 $05 $83
	add  [hl]                                        ; $43b7: $86
	inc  hl                                          ; $43b8: $23
	rst  $20                                         ; $43b9: $e7
	add  d                                           ; $43ba: $82
	and  $66                                         ; $43bb: $e6 $66
	and  $80                                         ; $43bd: $e6 $80
	db   $e4                                         ; $43bf: $e4
	add  hl, de                                      ; $43c0: $19
	ld   b, b                                        ; $43c1: $40
	ld   h, b                                        ; $43c2: $60
	pop  af                                          ; $43c3: $f1
	nop                                              ; $43c4: $00
	db   $ec                                         ; $43c5: $ec
	nop                                              ; $43c6: $00
	cp   d                                           ; $43c7: $ba
	nop                                              ; $43c8: $00
	cp   $00                                         ; $43c9: $fe $00
	ld   a, a                                        ; $43cb: $7f
	nop                                              ; $43cc: $00
	ld   a, a                                        ; $43cd: $7f
	ld   b, c                                        ; $43ce: $41
	rst  $38                                         ; $43cf: $ff
	ldh  [rTAC], a                                   ; $43d0: $e0 $07
	nop                                              ; $43d2: $00
	ld   [hl], c                                     ; $43d3: $71
	ld   sp, $3f3e                                   ; $43d4: $31 $3e $3f
	ld   [hl-], a                                    ; $43d7: $32
	dec  a                                           ; $43d8: $3d
	rrca                                             ; $43d9: $0f
	ld   bc, $0080                                   ; $43da: $01 $80 $00
	ld   b, $3f                                      ; $43dd: $06 $3f
	ld   a, a                                        ; $43df: $7f
	cp   a                                           ; $43e0: $bf
	ccf                                              ; $43e1: $3f
	add  b                                           ; $43e2: $80
	nop                                              ; $43e3: $00
	rst  $38                                         ; $43e4: $ff
	rst  $38                                         ; $43e5: $ff
	nop                                              ; $43e6: $00
	rst  $38                                         ; $43e7: $ff
	nop                                              ; $43e8: $00
	rst  $38                                         ; $43e9: $ff
	nop                                              ; $43ea: $00
	rst  $38                                         ; $43eb: $ff
	nop                                              ; $43ec: $00
	rst  $38                                         ; $43ed: $ff
	nop                                              ; $43ee: $00
	rst  $38                                         ; $43ef: $ff
	nop                                              ; $43f0: $00
	rst  $20                                         ; $43f1: $e7
	nop                                              ; $43f2: $00
	reti                                             ; $43f3: $d9


	nop                                              ; $43f4: $00
	add  b                                           ; $43f5: $80
	rrca                                             ; $43f6: $0f
	add  b                                           ; $43f7: $80
	ld   c, $03                                      ; $43f8: $0e $03
	nop                                              ; $43fa: $00
	ld   bc, $000e                                   ; $43fb: $01 $0e $00
	add  b                                           ; $43fe: $80
	ld   bc, $0000                                   ; $43ff: $01 $00 $00
	add  e                                           ; $4402: $83
	rrca                                             ; $4403: $0f
	inc  b                                           ; $4404: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4405: $cf
	ret  nz                                          ; $4406: $c0

	jr   nc, jr_07e_440c                             ; $4407: $30 $03

	jp   $0780                                       ; $4409: $c3 $80 $07


jr_07e_440c:
	add  b                                           ; $440c: $80
	rra                                              ; $440d: $1f
	add  c                                           ; $440e: $81
	rst  $38                                         ; $440f: $ff
	ld   [bc], a                                     ; $4410: $02
	ld   a, [$faff]                                  ; $4411: $fa $ff $fa
	add  b                                           ; $4414: $80
	rst  $38                                         ; $4415: $ff
	add  b                                           ; $4416: $80
	nop                                              ; $4417: $00
	add  b                                           ; $4418: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4419: $cf
	add  l                                           ; $441a: $85
	rst  $38                                         ; $441b: $ff
	ld   b, $20                                      ; $441c: $06 $20
	rst  $38                                         ; $441e: $ff
	rst  JumpTable                                         ; $441f: $df
	nop                                              ; $4420: $00
	ld   a, a                                        ; $4421: $7f
	rst  $38                                         ; $4422: $ff
	ld   a, a                                        ; $4423: $7f
	add  c                                           ; $4424: $81
	rst  $38                                         ; $4425: $ff
	add  b                                           ; $4426: $80
	ldh  a, [$82]                                    ; $4427: $f0 $82
	rst  $38                                         ; $4429: $ff
	inc  b                                           ; $442a: $04
	nop                                              ; $442b: $00
	rst  $38                                         ; $442c: $ff
	pop  af                                          ; $442d: $f1
	ccf                                              ; $442e: $3f
	adc  $81                                         ; $442f: $ce $81
	rst  $38                                         ; $4431: $ff
	inc  bc                                          ; $4432: $03
	sub  b                                           ; $4433: $90
	rst  $38                                         ; $4434: $ff
	ld   l, a                                        ; $4435: $6f
	nop                                              ; $4436: $00
	add  b                                           ; $4437: $80
	ld   a, [$8007]                                  ; $4438: $fa $07 $80
	rst  $38                                         ; $443b: $ff
	rra                                              ; $443c: $1f
	ldh  [$80], a                                    ; $443d: $e0 $80
	rst  $38                                         ; $443f: $ff
	nop                                              ; $4440: $00
	rst  $38                                         ; $4441: $ff
	add  b                                           ; $4442: $80
	db   $fc                                         ; $4443: $fc
	dec  de                                          ; $4444: $1b
	nop                                              ; $4445: $00
	rst  $38                                         ; $4446: $ff
	sub  e                                           ; $4447: $93
	ld   l, a                                        ; $4448: $6f
	ld   hl, sp-$05                                  ; $4449: $f8 $fb
	adc  b                                           ; $444b: $88
	xor  $79                                         ; $444c: $ee $79
	rra                                              ; $444e: $1f
	nop                                              ; $444f: $00
	rst  $38                                         ; $4450: $ff
	cpl                                              ; $4451: $2f
	rst  $38                                         ; $4452: $ff
	inc  l                                           ; $4453: $2c
	inc  bc                                          ; $4454: $03
	jp   $3cff                                       ; $4455: $c3 $ff $3c


	rst  $38                                         ; $4458: $ff
	ld   bc, $00ff                                   ; $4459: $01 $ff $00
	cp   $16                                         ; $445c: $fe $16
	ldh  a, [$1f]                                    ; $445e: $f0 $1f
	ld   sp, hl                                      ; $4460: $f9
	add  b                                           ; $4461: $80
	rst  $38                                         ; $4462: $ff
	add  hl, de                                      ; $4463: $19
	ld   b, $ff                                      ; $4464: $06 $ff
	ldh  [rIE], a                                    ; $4466: $e0 $ff
	ld   d, $ff                                      ; $4468: $16 $ff
	ld   c, $ff                                      ; $446a: $0e $ff
	nop                                              ; $446c: $00
	rst  $38                                         ; $446d: $ff
	ld   d, [hl]                                     ; $446e: $56
	rst  $38                                         ; $446f: $ff
	ld   c, b                                        ; $4470: $48
	ldh  [$fd], a                                    ; $4471: $e0 $fd
	rst  $38                                         ; $4473: $ff
	inc  c                                           ; $4474: $0c
	cp   $e5                                         ; $4475: $fe $e5
	db   $fd                                         ; $4477: $fd
	ld   d, b                                        ; $4478: $50
	ei                                               ; $4479: $fb
	inc  sp                                          ; $447a: $33
	or   $48                                         ; $447b: $f6 $48

jr_07e_447d:
	adc  $80                                         ; $447d: $ce $80
	add  b                                           ; $447f: $80
	add  b                                           ; $4480: $80
	nop                                              ; $4481: $00
	inc  de                                          ; $4482: $13
	db   $10                                         ; $4483: $10
	rla                                              ; $4484: $17
	cpl                                              ; $4485: $2f
	dec  sp                                          ; $4486: $3b
	rlca                                             ; $4487: $07
	rla                                              ; $4488: $17
	dec  hl                                          ; $4489: $2b
	ccf                                              ; $448a: $3f
	rlca                                             ; $448b: $07
	inc  de                                          ; $448c: $13
	adc  l                                           ; $448d: $8d
	rst  $30                                         ; $448e: $f7
	ld   b, c                                        ; $448f: $41
	add  hl, sp                                      ; $4490: $39
	ld   bc, $0b03                                   ; $4491: $01 $03 $0b
	ld   sp, hl                                      ; $4494: $f9
	xor  $e0                                         ; $4495: $ee $e0
	add  b                                           ; $4497: $80
	ret  nz                                          ; $4498: $c0

	ld   hl, $a29c                                   ; $4499: $21 $9c $a2
	pop  bc                                          ; $449c: $c1
	adc  $d6                                         ; $449d: $ce $d6
	sbc  a                                           ; $449f: $9f
	nop                                              ; $44a0: $00
	add  a                                           ; $44a1: $87
	ld   bc, $3f3e                                   ; $44a2: $01 $3e $3f
	rst  $38                                         ; $44a5: $ff
	ret  nz                                          ; $44a6: $c0

	di                                               ; $44a7: $f3
	ld   [hl+], a                                    ; $44a8: $22
	ld   bc, $0030                                   ; $44a9: $01 $30 $00
	sub  b                                           ; $44ac: $90
	ld   b, b                                        ; $44ad: $40
	ld   c, a                                        ; $44ae: $4f
	ldh  [$5f], a                                    ; $44af: $e0 $5f
	rst  $38                                         ; $44b1: $ff
	rst  ToBoot                                         ; $44b2: $c7
	inc  b                                           ; $44b3: $04
	ld   d, [hl]                                     ; $44b4: $56
	ld   l, d                                        ; $44b5: $6a
	nop                                              ; $44b6: $00
	rst  $38                                         ; $44b7: $ff
	ld   b, b                                        ; $44b8: $40
	cp   a                                           ; $44b9: $bf
	rra                                              ; $44ba: $1f
	ldh  [$80], a                                    ; $44bb: $e0 $80
	rlca                                             ; $44bd: $07
	dec  b                                           ; $44be: $05
	rrca                                             ; $44bf: $0f
	ld   [$80f8], sp                                 ; $44c0: $08 $f8 $80
	add  c                                           ; $44c3: $81
	ld   bc, $0480                                   ; $44c4: $01 $80 $04
	ld   b, $00                                      ; $44c7: $06 $00
	rst  $38                                         ; $44c9: $ff
	dec  de                                          ; $44ca: $1b
	db   $e4                                         ; $44cb: $e4
	ld   h, b                                        ; $44cc: $60
	rst  $38                                         ; $44cd: $ff
	sbc  a                                           ; $44ce: $9f

jr_07e_44cf:
	add  b                                           ; $44cf: $80
	ld   [$0407], sp                                 ; $44d0: $08 $07 $04
	rlca                                             ; $44d3: $07
	inc  e                                           ; $44d4: $1c
	jr   jr_07e_44cf                                 ; $44d5: $18 $f8

	rst  $30                                         ; $44d7: $f7
	ld   [$8000], sp                                 ; $44d8: $08 $00 $80
	rst  $38                                         ; $44db: $ff
	add  b                                           ; $44dc: $80
	nop                                              ; $44dd: $00
	add  hl, de                                      ; $44de: $19
	rst  $38                                         ; $44df: $ff
	ccf                                              ; $44e0: $3f
	rlca                                             ; $44e1: $07
	cpl                                              ; $44e2: $2f
	dec  bc                                          ; $44e3: $0b
	inc  de                                          ; $44e4: $13
	nop                                              ; $44e5: $00
	ld   [$e700], sp                                 ; $44e6: $08 $00 $e7
	rra                                              ; $44e9: $1f
	dec  hl                                          ; $44ea: $2b
	rst  $38                                         ; $44eb: $ff
	db   $d3                                         ; $44ec: $d3
	scf                                              ; $44ed: $37
	ld   sp, $a0e1                                   ; $44ee: $31 $e1 $a0
	ret  nz                                          ; $44f1: $c0

	db   $fd                                         ; $44f2: $fd
	sbc  [hl]                                        ; $44f3: $9e
	db   $fc                                         ; $44f4: $fc
	ld   h, c                                        ; $44f5: $61
	ld   a, [hl]                                     ; $44f6: $7e
	ccf                                              ; $44f7: $3f
	jr   nc, jr_07e_447d                             ; $44f8: $30 $83

	rrca                                             ; $44fa: $0f
	add  b                                           ; $44fb: $80
	nop                                              ; $44fc: $00
	add  b                                           ; $44fd: $80
	rrca                                             ; $44fe: $0f
	ld   [bc], a                                     ; $44ff: $02
	ld   bc, $0e00                                   ; $4500: $01 $00 $0e
	add  c                                           ; $4503: $81
	rrca                                             ; $4504: $0f
	add  d                                           ; $4505: $82
	rst  $38                                         ; $4506: $ff
	add  b                                           ; $4507: $80
	add  sp, $11                                     ; $4508: $e8 $11
	nop                                              ; $450a: $00
	rrca                                             ; $450b: $0f
	or   [hl]                                        ; $450c: $b6
	add  $8f                                         ; $450d: $c6 $8f
	inc  c                                           ; $450f: $0c
	rrca                                             ; $4510: $0f
	jp   nz, $efd1                                   ; $4511: $c2 $d1 $ef

	ldh  a, [rIE]                                    ; $4514: $f0 $ff
	ret  nz                                          ; $4516: $c0

	rst  $38                                         ; $4517: $ff
	ld   b, e                                        ; $4518: $43
	ld   a, a                                        ; $4519: $7f
	inc  sp                                          ; $451a: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $451b: $cf
	add  b                                           ; $451c: $80
	ld   b, $09                                      ; $451d: $06 $09
	and  [hl]                                        ; $451f: $a6
	ld   hl, $20a4                                   ; $4520: $21 $a4 $20
	rst  $38                                         ; $4523: $ff
	db   $fc                                         ; $4524: $fc
	rst  $38                                         ; $4525: $ff
	ret  nz                                          ; $4526: $c0

	call c, $80e3                                    ; $4527: $dc $e3 $80
	ld   hl, sp-$80                                  ; $452a: $f8 $80
	db   $fc                                         ; $452c: $fc
	daa                                              ; $452d: $27
	db   $e3                                         ; $452e: $e3
	ldh  [rSC], a                                    ; $452f: $e0 $02
	nop                                              ; $4531: $00
	push bc                                          ; $4532: $c5
	ld   b, h                                        ; $4533: $44
	xor  d                                           ; $4534: $aa
	ld   a, [hl+]                                    ; $4535: $2a
	pop  hl                                          ; $4536: $e1
	rra                                              ; $4537: $1f
	ld   bc, $32ff                                   ; $4538: $01 $ff $32
	rrca                                             ; $453b: $0f
	dec  b                                           ; $453c: $05
	rlca                                             ; $453d: $07
	rst  $20                                         ; $453e: $e7
	jr   nz, jr_07e_4559                             ; $453f: $20 $18

	inc  b                                           ; $4541: $04
	ld   a, [de]                                     ; $4542: $1a
	nop                                              ; $4543: $00
	add  c                                           ; $4544: $81
	nop                                              ; $4545: $00
	call nc, $83ff                                   ; $4546: $d4 $ff $83
	rst  $38                                         ; $4549: $ff
	sub  [hl]                                        ; $454a: $96
	rst  $38                                         ; $454b: $ff
	ld   d, l                                        ; $454c: $55
	rst  $38                                         ; $454d: $ff
	inc  d                                           ; $454e: $14
	rst  $38                                         ; $454f: $ff
	scf                                              ; $4550: $37
	nop                                              ; $4551: $00
	or   l                                           ; $4552: $b5
	adc  a                                           ; $4553: $8f
	ld   c, [hl]                                     ; $4554: $4e
	ld   b, e                                        ; $4555: $43
	add  b                                           ; $4556: $80
	ret  nc                                          ; $4557: $d0

	add  b                                           ; $4558: $80

jr_07e_4559:
	xor  $1e                                         ; $4559: $ee $1e
	cp   e                                           ; $455b: $bb
	rst  $38                                         ; $455c: $ff
	ld   d, c                                        ; $455d: $51
	rst  $38                                         ; $455e: $ff
	ld   h, c                                        ; $455f: $61
	rst  $38                                         ; $4560: $ff
	xor  e                                           ; $4561: $ab
	ld   a, a                                        ; $4562: $7f
	ld   e, $fe                                      ; $4563: $1e $fe
	inc  e                                           ; $4565: $1c
	db   $fd                                         ; $4566: $fd
	and  c                                           ; $4567: $a1
	nop                                              ; $4568: $00
	add  b                                           ; $4569: $80
	add  c                                           ; $456a: $81
	ld   d, l                                        ; $456b: $55
	ld   d, a                                        ; $456c: $57
	db   $e3                                         ; $456d: $e3
	rst  $28                                         ; $456e: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $456f: $cf
	rst  JumpTable                                         ; $4570: $df
	jr   nz, @+$41                                   ; $4571: $20 $3f

	rst  $38                                         ; $4573: $ff
	add  b                                           ; $4574: $80
	ld   a, a                                        ; $4575: $7f
	rst  $38                                         ; $4576: $ff
	nop                                              ; $4577: $00
	rst  $38                                         ; $4578: $ff
	nop                                              ; $4579: $00
	add  b                                           ; $457a: $80
	db   $fc                                         ; $457b: $fc
	add  b                                           ; $457c: $80
	cp   $80                                         ; $457d: $fe $80
	pop  af                                          ; $457f: $f1
	inc  b                                           ; $4580: $04
	rst  $38                                         ; $4581: $ff
	inc  bc                                          ; $4582: $03
	db   $fc                                         ; $4583: $fc
	rst  $38                                         ; $4584: $ff
	nop                                              ; $4585: $00
	add  b                                           ; $4586: $80
	ret  nz                                          ; $4587: $c0

	dec  d                                           ; $4588: $15
	rlca                                             ; $4589: $07
	cp   $04                                         ; $458a: $fe $04
	ld   a, [hl]                                     ; $458c: $7e
	ld   a, h                                        ; $458d: $7c
	nop                                              ; $458e: $00
	ld   hl, $c8e1                                   ; $458f: $21 $e1 $c8
	ld   hl, sp-$0e                                  ; $4592: $f8 $f2
	inc  bc                                          ; $4594: $03
	push hl                                          ; $4595: $e5
	rlca                                             ; $4596: $07
	inc  bc                                          ; $4597: $03
	daa                                              ; $4598: $27
	rst  ToBoot                                         ; $4599: $c7
	nop                                              ; $459a: $00
	inc  bc                                          ; $459b: $03
	ld   a, a                                        ; $459c: $7f
	ld   a, l                                        ; $459d: $7d
	cp   $80                                         ; $459e: $fe $80
	rst  $38                                         ; $45a0: $ff
	inc  bc                                          ; $45a1: $03
	add  sp, $1f                                     ; $45a2: $e8 $1f
	rla                                              ; $45a4: $17
	ldh  [$80], a                                    ; $45a5: $e0 $80
	cp   $80                                         ; $45a7: $fe $80
	rst  $38                                         ; $45a9: $ff
	inc  c                                           ; $45aa: $0c
	ret  nz                                          ; $45ab: $c0

	inc  a                                           ; $45ac: $3c
	db   $fd                                         ; $45ad: $fd
	cp   $ff                                         ; $45ae: $fe $ff
	rrca                                             ; $45b0: $0f
	jr   nc, jr_07e_45f2                             ; $45b1: $30 $3f

	cp   c                                           ; $45b3: $b9
	cp   a                                           ; $45b4: $bf
	ld   b, $e0                                      ; $45b5: $06 $e0
	rst  $38                                         ; $45b7: $ff
	add  c                                           ; $45b8: $81
	rst  JumpTable                                         ; $45b9: $df
	dec  bc                                          ; $45ba: $0b
	ret  nz                                          ; $45bb: $c0

	rlca                                             ; $45bc: $07
	nop                                              ; $45bd: $00
	inc  a                                           ; $45be: $3c
	rst  ToBoot                                         ; $45bf: $c7
	ld   bc, $cf3d                                   ; $45c0: $01 $3d $cf
	adc  h                                           ; $45c3: $8c
	rst  $38                                         ; $45c4: $ff
	ld   a, h                                        ; $45c5: $7c
	nop                                              ; $45c6: $00
	add  d                                           ; $45c7: $82
	rst  $38                                         ; $45c8: $ff
	dec  bc                                          ; $45c9: $0b
	ld   a, [hl]                                     ; $45ca: $7e
	add  c                                           ; $45cb: $81
	rra                                              ; $45cc: $1f
	dec  e                                           ; $45cd: $1d
	db   $f4                                         ; $45ce: $f4
	ldh  a, [$86]                                    ; $45cf: $f0 $86
	ldh  a, [$71]                                    ; $45d1: $f0 $71
	add  c                                           ; $45d3: $81
	ld   a, a                                        ; $45d4: $7f
	nop                                              ; $45d5: $00
	add  b                                           ; $45d6: $80
	ldh  [$80], a                                    ; $45d7: $e0 $80
	ld   hl, sp+$0b                                  ; $45d9: $f8 $0b
	xor  a                                           ; $45db: $af
	ld   e, b                                        ; $45dc: $58
	rst  $30                                         ; $45dd: $f7
	db   $e3                                         ; $45de: $e3
	ld   h, d                                        ; $45df: $62
	ld   bc, $ff7f                                   ; $45e0: $01 $7f $ff
	rlca                                             ; $45e3: $07
	ld   b, a                                        ; $45e4: $47
	ld   c, c                                        ; $45e5: $49
	adc  c                                           ; $45e6: $89
	add  b                                           ; $45e7: $80
	add  d                                           ; $45e8: $82
	ld   b, $80                                      ; $45e9: $06 $80
	ret  nz                                          ; $45eb: $c0

	jr   nz, @+$21                                   ; $45ec: $20 $1f

	rst  JumpTable                                         ; $45ee: $df
	rst  $38                                         ; $45ef: $ff
	rst  JumpTable                                         ; $45f0: $df
	add  b                                           ; $45f1: $80

jr_07e_45f2:
	nop                                              ; $45f2: $00
	inc  b                                           ; $45f3: $04
	add  b                                           ; $45f4: $80
	adc  h                                           ; $45f5: $8c
	rst  $38                                         ; $45f6: $ff
	or   e                                           ; $45f7: $b3
	ld   b, b                                        ; $45f8: $40
	add  b                                           ; $45f9: $80
	and  b                                           ; $45fa: $a0
	add  b                                           ; $45fb: $80
	rrca                                             ; $45fc: $0f
	add  a                                           ; $45fd: $87
	nop                                              ; $45fe: $00
	add  b                                           ; $45ff: $80
	rst  $38                                         ; $4600: $ff
	add  b                                           ; $4601: $80
	ld   a, [$d580]                                  ; $4602: $fa $80 $d5
	add  b                                           ; $4605: $80
	xor  b                                           ; $4606: $a8
	adc  e                                           ; $4607: $8b
	nop                                              ; $4608: $00
	ld   [bc], a                                     ; $4609: $02
	inc  bc                                          ; $460a: $03
	ld   [bc], a                                     ; $460b: $02
	ld   bc, $0085                                   ; $460c: $01 $85 $00
	inc  b                                           ; $460f: $04
	dec  e                                           ; $4610: $1d
	inc  bc                                          ; $4611: $03
	ld   h, e                                        ; $4612: $63
	ld   b, [hl]                                     ; $4613: $46
	call nc, $1880                                   ; $4614: $d4 $80 $18
	ld   bc, $df30                                   ; $4617: $01 $30 $df
	add  l                                           ; $461a: $85
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	ret  nc                                          ; $461d: $d0

	add  l                                           ; $461e: $85
	ldh  [rP1], a                                    ; $461f: $e0 $00
	inc  sp                                          ; $4621: $33
	add  c                                           ; $4622: $81
	ld   bc, $0300                                   ; $4623: $01 $00 $03
	add  l                                           ; $4626: $85
	ld   bc, $ff81                                   ; $4627: $01 $81 $ff
	ld   b, $01                                      ; $462a: $06 $01
	jr   jr_07e_4649                                 ; $462c: $18 $1b

	inc  sp                                          ; $462e: $33
	dec  sp                                          ; $462f: $3b
	dec  de                                          ; $4630: $1b
	dec  sp                                          ; $4631: $3b
	add  d                                           ; $4632: $82
	ld   a, e                                        ; $4633: $7b
	ld   c, $73                                      ; $4634: $0e $73
	ld   a, e                                        ; $4636: $7b
	ld   d, e                                        ; $4637: $53
	ld   a, e                                        ; $4638: $7b
	ld   e, e                                        ; $4639: $5b
	ld   a, e                                        ; $463a: $7b
	ld   a, b                                        ; $463b: $78
	ld   a, [hl]                                     ; $463c: $7e
	ld   a, d                                        ; $463d: $7a
	ld   a, [hl]                                     ; $463e: $7e
	halt                                             ; $463f: $76
	ld   a, [hl]                                     ; $4640: $7e
	ld   d, d                                        ; $4641: $52
	ld   a, [hl]                                     ; $4642: $7e
	ld   e, [hl]                                     ; $4643: $5e
	add  l                                           ; $4644: $85
	ld   a, [hl]                                     ; $4645: $7e
	ld   bc, $0023                                   ; $4646: $01 $23 $00

jr_07e_4649:
	add  b                                           ; $4649: $80
	ldh  [rSC], a                                    ; $464a: $e0 $02
	or   b                                           ; $464c: $b0
	ldh  a, [$b0]                                    ; $464d: $f0 $b0
	add  c                                           ; $464f: $81
	ldh  a, [rSC]                                    ; $4650: $f0 $02
	ld   [hl], b                                     ; $4652: $70
	ldh  a, [rSVBK]                                  ; $4653: $f0 $70
	add  c                                           ; $4655: $81
	ldh  a, [rP1]                                    ; $4656: $f0 $00
	ld   [hl], a                                     ; $4658: $77
	add  b                                           ; $4659: $80
	ld   [hl], h                                     ; $465a: $74
	add  b                                           ; $465b: $80
	ld   [hl], e                                     ; $465c: $73
	rlca                                             ; $465d: $07
	ld   [hl], h                                     ; $465e: $74
	rrca                                             ; $465f: $0f
	inc  bc                                          ; $4660: $03
	nop                                              ; $4661: $00
	db   $fc                                         ; $4662: $fc
	db   $fd                                         ; $4663: $fd
	ld   bc, $81fe                                   ; $4664: $01 $fe $81
	rst  $38                                         ; $4667: $ff
	dec  b                                           ; $4668: $05
	db   $10                                         ; $4669: $10
	rra                                              ; $466a: $1f
	ld   l, $e0                                      ; $466b: $2e $e0
	rst  JumpTable                                         ; $466d: $df
	rra                                              ; $466e: $1f
	add  b                                           ; $466f: $80
	ldh  [$80], a                                    ; $4670: $e0 $80
	inc  c                                           ; $4672: $0c
	add  b                                           ; $4673: $80
	ld   a, h                                        ; $4674: $7c
	add  b                                           ; $4675: $80
	ld   l, h                                        ; $4676: $6c
	add  b                                           ; $4677: $80
	ld   d, h                                        ; $4678: $54
	add  b                                           ; $4679: $80
	rlca                                             ; $467a: $07
	add  b                                           ; $467b: $80
	ld   hl, sp-$80                                  ; $467c: $f8 $80
	nop                                              ; $467e: $00
	ld   b, $24                                      ; $467f: $06 $24
	inc  a                                           ; $4681: $3c
	ld   a, [hl]                                     ; $4682: $7e
	ld   h, [hl]                                     ; $4683: $66
	ld   e, b                                        ; $4684: $58
	ld   e, d                                        ; $4685: $5a
	ld   a, [de]                                     ; $4686: $1a
	add  c                                           ; $4687: $81
	ld   e, d                                        ; $4688: $5a
	ld   bc, $c08d                                   ; $4689: $01 $8d $c0
	adc  h                                           ; $468c: $8c
	nop                                              ; $468d: $00
	ld   de, $4350                                   ; $468e: $11 $50 $43
	ld   b, d                                        ; $4691: $42
	ld   e, a                                        ; $4692: $5f
	ld   b, c                                        ; $4693: $41
	ld   e, a                                        ; $4694: $5f
	add  b                                           ; $4695: $80
	rst  $38                                         ; $4696: $ff
	or   d                                           ; $4697: $b2
	cp   $2f                                         ; $4698: $fe $2f
	rrca                                             ; $469a: $0f
	inc  c                                           ; $469b: $0c
	cp   a                                           ; $469c: $bf
	or   a                                           ; $469d: $b7
	rrca                                             ; $469e: $0f
	ld   a, e                                        ; $469f: $7b
	ld   a, h                                        ; $46a0: $7c
	add  h                                           ; $46a1: $84
	ld   a, l                                        ; $46a2: $7d
	add  b                                           ; $46a3: $80
	dec  a                                           ; $46a4: $3d
	add  b                                           ; $46a5: $80
	pop  bc                                          ; $46a6: $c1
	dec  bc                                          ; $46a7: $0b
	inc  a                                           ; $46a8: $3c
	db   $fc                                         ; $46a9: $fc
	jp   $dddf                                       ; $46aa: $c3 $df $dd


	ld   b, b                                        ; $46ad: $40
	jp   $c2c1                                       ; $46ae: $c3 $c1 $c2


	jp   $c2c0                                       ; $46b1: $c3 $c0 $c2


	add  c                                           ; $46b4: $81
	ret  nz                                          ; $46b5: $c0

	nop                                              ; $46b6: $00
	jp   nz, Jump_07e_4281                           ; $46b7: $c2 $81 $42

	ld   bc, $0dc2                                   ; $46ba: $01 $c2 $0d
	adc  l                                           ; $46bd: $8d
	ret  nz                                          ; $46be: $c0

	nop                                              ; $46bf: $00
	ldh  a, [$85]                                    ; $46c0: $f0 $85
	nop                                              ; $46c2: $00
	db   $10                                         ; $46c3: $10
	ld   bc, $0600                                   ; $46c4: $01 $00 $06
	inc  b                                           ; $46c7: $04
	dec  c                                           ; $46c8: $0d
	ld   bc, $0100                                   ; $46c9: $01 $00 $01
	add  hl, bc                                      ; $46cc: $09
	nop                                              ; $46cd: $00
	jr   jr_07e_46e1                                 ; $46ce: $18 $11

	inc  [hl]                                        ; $46d0: $34
	rlca                                             ; $46d1: $07
	rst  ToBoot                                         ; $46d2: $c7
	adc  a                                           ; $46d3: $8f
	xor  e                                           ; $46d4: $ab
	add  b                                           ; $46d5: $80
	inc  sp                                          ; $46d6: $33
	ld   bc, $4363                                   ; $46d7: $01 $63 $43
	add  b                                           ; $46da: $80
	add  e                                           ; $46db: $83
	ld   bc, $8203                                   ; $46dc: $01 $03 $82
	add  b                                           ; $46df: $80
	ret  nz                                          ; $46e0: $c0

jr_07e_46e1:
	nop                                              ; $46e1: $00
	add  b                                           ; $46e2: $80
	add  b                                           ; $46e3: $80
	nop                                              ; $46e4: $00
	add  b                                           ; $46e5: $80
	inc  e                                           ; $46e6: $1c
	inc  b                                           ; $46e7: $04
	ld   [hl], $3e                                   ; $46e8: $36 $3e
	ld   a, [hl-]                                    ; $46ea: $3a
	ld   a, $5e                                      ; $46eb: $3e $5e
	add  c                                           ; $46ed: $81
	ld   a, [hl]                                     ; $46ee: $7e
	nop                                              ; $46ef: $00
	inc  bc                                          ; $46f0: $03
	adc  l                                           ; $46f1: $8d
	ldh  [rP1], a                                    ; $46f2: $e0 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46f4: $cf
	add  b                                           ; $46f5: $80
	rst  $38                                         ; $46f6: $ff
	inc  bc                                          ; $46f7: $03
	adc  c                                           ; $46f8: $89
	rst  $28                                         ; $46f9: $ef
	adc  c                                           ; $46fa: $89
	rst  $28                                         ; $46fb: $ef
	add  b                                           ; $46fc: $80
	ld   bc, $ff80                                   ; $46fd: $01 $80 $ff
	nop                                              ; $4700: $00
	ld   bc, $ff80                                   ; $4701: $01 $80 $ff
	ld   [bc], a                                     ; $4704: $02
	ld   [hl], b                                     ; $4705: $70
	ld   [hl], c                                     ; $4706: $71
	ld   d, c                                        ; $4707: $51
	add  l                                           ; $4708: $85
	ld   a, e                                        ; $4709: $7b
	inc  bc                                          ; $470a: $03
	ld   d, e                                        ; $470b: $53
	ld   a, e                                        ; $470c: $7b
	ld   h, c                                        ; $470d: $61
	ld   h, e                                        ; $470e: $63
	add  b                                           ; $470f: $80
	inc  bc                                          ; $4710: $03
	add  b                                           ; $4711: $80
	nop                                              ; $4712: $00
	dec  b                                           ; $4713: $05
	ld   d, d                                        ; $4714: $52
	ld   a, [hl]                                     ; $4715: $7e
	ld   a, d                                        ; $4716: $7a
	ld   a, [hl]                                     ; $4717: $7e
	ld   d, h                                        ; $4718: $54
	ld   a, h                                        ; $4719: $7c
	add  b                                           ; $471a: $80
	ld   h, b                                        ; $471b: $60
	add  d                                           ; $471c: $82
	nop                                              ; $471d: $00
	inc  b                                           ; $471e: $04
	inc  b                                           ; $471f: $04
	rlca                                             ; $4720: $07
	adc  e                                           ; $4721: $8b
	ld   hl, sp+$5f                                  ; $4722: $f8 $5f
	add  c                                           ; $4724: $81
	ldh  [$03], a                                    ; $4725: $e0 $03
	and  b                                           ; $4727: $a0
	ldh  [$60], a                                    ; $4728: $e0 $60
	ldh  [$80], a                                    ; $472a: $e0 $80
	add  b                                           ; $472c: $80
	ld   [$3020], sp                                 ; $472d: $08 $20 $30
	ld   d, b                                        ; $4730: $50
	ret  nz                                          ; $4731: $c0

	or   b                                           ; $4732: $b0
	jr   nc, jr_07e_47b4                             ; $4733: $30 $7f

	ld   [hl], c                                     ; $4735: $71
	ld   e, l                                        ; $4736: $5d
	add  c                                           ; $4737: $81
	ld   d, c                                        ; $4738: $51
	add  b                                           ; $4739: $80
	ld   de, $0d02                                   ; $473a: $11 $02 $0d
	ld   bc, $811f                                   ; $473d: $01 $1f $81
	ld   e, a                                        ; $4740: $5f
	ld   [bc], a                                     ; $4741: $02
	ld   bc, $4d41                                   ; $4742: $01 $41 $4d
	adc  e                                           ; $4745: $8b
	ld   e, h                                        ; $4746: $5c
	dec  b                                           ; $4747: $05
	ld   d, l                                        ; $4748: $55
	ld   b, l                                        ; $4749: $45
	jr   jr_07e_47a6                                 ; $474a: $18 $5a

	ld   b, b                                        ; $474c: $40
	ld   b, d                                        ; $474d: $42
	add  b                                           ; $474e: $80
	ld   b, b                                        ; $474f: $40
	add  d                                           ; $4750: $82
	ld   b, c                                        ; $4751: $41
	nop                                              ; $4752: $00
	ld   b, b                                        ; $4753: $40
	add  c                                           ; $4754: $81
	ld   b, c                                        ; $4755: $41
	add  b                                           ; $4756: $80
	pop  bc                                          ; $4757: $c1
	nop                                              ; $4758: $00
	ld   c, [hl]                                     ; $4759: $4e
	add  a                                           ; $475a: $87
	nop                                              ; $475b: $00
	add  h                                           ; $475c: $84
	add  b                                           ; $475d: $80
	ld   [$c14e], sp                                 ; $475e: $08 $4e $c1
	ld   a, h                                        ; $4761: $7c
	db   $fc                                         ; $4762: $fc
	rst  $38                                         ; $4763: $ff
	cp   $1e                                         ; $4764: $fe $1e
	ret  nz                                          ; $4766: $c0

	nop                                              ; $4767: $00
	add  b                                           ; $4768: $80
	ret  nc                                          ; $4769: $d0

	dec  b                                           ; $476a: $05
	sbc  $00                                         ; $476b: $de $00
	pop  hl                                          ; $476d: $e1
	ld   [de], a                                     ; $476e: $12
	ldh  a, [c]                                      ; $476f: $f2
	nop                                              ; $4770: $00
	add  b                                           ; $4771: $80
	sbc  a                                           ; $4772: $9f
	ld   bc, $e519                                   ; $4773: $01 $19 $e5
	add  b                                           ; $4776: $80
	ld   bc, $0080                                   ; $4777: $01 $80 $00
	nop                                              ; $477a: $00
	inc  e                                           ; $477b: $1c
	add  c                                           ; $477c: $81
	inc  bc                                          ; $477d: $03
	nop                                              ; $477e: $00
	ldh  [c], a                                      ; $477f: $e2
	add  b                                           ; $4780: $80
	jr   jr_07e_4794                                 ; $4781: $18 $11

	ccf                                              ; $4783: $3f
	cp   $43                                         ; $4784: $fe $43
	ld   e, a                                        ; $4786: $5f
	call c, $a63f                                    ; $4787: $dc $3f $a6

jr_07e_478a:
	db   $fc                                         ; $478a: $fc
	push af                                          ; $478b: $f5
	sub  [hl]                                        ; $478c: $96
	db   $e4                                         ; $478d: $e4
	add  e                                           ; $478e: $83
	sub  c                                           ; $478f: $91
	nop                                              ; $4790: $00
	ld   [hl], $06                                   ; $4791: $36 $06
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4793: $cf

jr_07e_4794:
	nop                                              ; $4794: $00
	add  b                                           ; $4795: $80
	ret  nz                                          ; $4796: $c0

	ld   [bc], a                                     ; $4797: $02
	jr   nc, jr_07e_478a                             ; $4798: $30 $f0

	ret  nz                                          ; $479a: $c0

	add  e                                           ; $479b: $83
	ldh  a, [$0d]                                    ; $479c: $f0 $0d
	or   b                                           ; $479e: $b0
	ld   [hl], b                                     ; $479f: $70
	jr   nc, jr_07e_47a2                             ; $47a0: $30 $00

jr_07e_47a2:
	inc  l                                           ; $47a2: $2c
	rst  $38                                         ; $47a3: $ff
	db   $d3                                         ; $47a4: $d3
	rst  $38                                         ; $47a5: $ff

jr_07e_47a6:
	ldh  a, [rIE]                                    ; $47a6: $f0 $ff
	ld   hl, sp-$01                                  ; $47a8: $f8 $ff
	ld   [$808f], sp                                 ; $47aa: $08 $8f $80
	rla                                              ; $47ad: $17
	dec  d                                           ; $47ae: $15
	ld   a, a                                        ; $47af: $7f
	rst  $38                                         ; $47b0: $ff
	nop                                              ; $47b1: $00
	db   $fc                                         ; $47b2: $fc
	db   $ed                                         ; $47b3: $ed

jr_07e_47b4:
	cp   $ef                                         ; $47b4: $fe $ef
	rst  $38                                         ; $47b6: $ff
	inc  bc                                          ; $47b7: $03
	rst  $38                                         ; $47b8: $ff
	inc  bc                                          ; $47b9: $03
	rst  $38                                         ; $47ba: $ff
	jr   nc, @+$01                                   ; $47bb: $30 $ff

	rst  ToBoot                                         ; $47bd: $c7
	cp   $c8                                         ; $47be: $fe $c8
	rst  $38                                         ; $47c0: $ff
	ld   b, c                                        ; $47c1: $41
	ld   a, a                                        ; $47c2: $7f
	ret  nz                                          ; $47c3: $c0

jr_07e_47c4:
	ccf                                              ; $47c4: $3f
	add  b                                           ; $47c5: $80
	ld   a, a                                        ; $47c6: $7f
	inc  c                                           ; $47c7: $0c
	pop  de                                          ; $47c8: $d1
	rst  $38                                         ; $47c9: $ff
	pop  de                                          ; $47ca: $d1
	rst  $38                                         ; $47cb: $ff
	inc  bc                                          ; $47cc: $03
	cp   a                                           ; $47cd: $bf
	xor  b                                           ; $47ce: $a8
	ccf                                              ; $47cf: $3f
	call nc, Call_07e_40ff                           ; $47d0: $d4 $ff $40
	rst  $38                                         ; $47d3: $ff
	ld   b, b                                        ; $47d4: $40
	rst  $38                                         ; $47d5: $ff
	nop                                              ; $47d6: $00
	rst  $38                                         ; $47d7: $ff
	nop                                              ; $47d8: $00
	rst  $38                                         ; $47d9: $ff
	nop                                              ; $47da: $00
	rst  $38                                         ; $47db: $ff
	nop                                              ; $47dc: $00
	rst  $38                                         ; $47dd: $ff
	nop                                              ; $47de: $00
	rst  $38                                         ; $47df: $ff
	nop                                              ; $47e0: $00
	rst  $38                                         ; $47e1: $ff
	nop                                              ; $47e2: $00
	add  $00                                         ; $47e3: $c6 $00
	ld   c, l                                        ; $47e5: $4d
	ld   bc, $0000                                   ; $47e6: $01 $00 $00
	add  b                                           ; $47e9: $80
	inc  bc                                          ; $47ea: $03
	add  h                                           ; $47eb: $84
	rrca                                             ; $47ec: $0f
	add  b                                           ; $47ed: $80
	inc  c                                           ; $47ee: $0c
	add  d                                           ; $47ef: $82
	rrca                                             ; $47f0: $0f
	ld   [bc], a                                     ; $47f1: $02
	ld   c, $91                                      ; $47f2: $0e $91
	ld   h, b                                        ; $47f4: $60
	add  b                                           ; $47f5: $80
	cp   $03                                         ; $47f6: $fe $03
	ld   b, d                                        ; $47f8: $42
	cp   $7e                                         ; $47f9: $fe $7e
	ld   e, [hl]                                     ; $47fb: $5e
	add  h                                           ; $47fc: $84
	ld   c, [hl]                                     ; $47fd: $4e
	ld   [bc], a                                     ; $47fe: $02
	adc  $4e                                         ; $47ff: $ce $4e
	add  hl, de                                      ; $4801: $19
	add  l                                           ; $4802: $85
	rrca                                             ; $4803: $0f
	nop                                              ; $4804: $00
	ld   c, a                                        ; $4805: $4f
	add  c                                           ; $4806: $81
	rrca                                             ; $4807: $0f
	dec  bc                                          ; $4808: $0b
	dec  c                                           ; $4809: $0d
	rrca                                             ; $480a: $0f
	ld   [bc], a                                     ; $480b: $02
	rrca                                             ; $480c: $0f
	call $fce3                                       ; $480d: $cd $e3 $fc
	ldh  a, [$60]                                    ; $4810: $f0 $60
	nop                                              ; $4812: $00
	sbc  b                                           ; $4813: $98
	ld   hl, sp-$80                                  ; $4814: $f8 $80
	ldh  a, [$80]                                    ; $4816: $f0 $80
	ld   hl, sp-$80                                  ; $4818: $f8 $80
	ldh  a, [$80]                                    ; $481a: $f0 $80
	ld   hl, sp+$00                                  ; $481c: $f8 $00
	ld   h, a                                        ; $481e: $67
	add  b                                           ; $481f: $80
	nop                                              ; $4820: $00
	add  l                                           ; $4821: $85
	add  b                                           ; $4822: $80
	nop                                              ; $4823: $00
	add  c                                           ; $4824: $81
	add  e                                           ; $4825: $83
	add  b                                           ; $4826: $80
	inc  bc                                          ; $4827: $03
	ld   h, c                                        ; $4828: $61
	db   $e3                                         ; $4829: $e3
	db   $eb                                         ; $482a: $eb
	add  sp, -$7e                                    ; $482b: $e8 $82
	xor  $81                                         ; $482d: $ee $81
	rrca                                             ; $482f: $0f
	dec  b                                           ; $4830: $05
	rst  $28                                         ; $4831: $ef
	ld   [$eae0], a                                  ; $4832: $ea $e0 $ea
	ldh  [$ee], a                                    ; $4835: $e0 $ee
	add  d                                           ; $4837: $82
	ld   a, [hl]                                     ; $4838: $7e
	ld   [$7e6e], sp                                 ; $4839: $08 $6e $7e
	ld   c, $0f                                      ; $483c: $0e $0f
	db   $e4                                         ; $483e: $e4
	dec  bc                                          ; $483f: $0b
	nop                                              ; $4840: $00
	ccf                                              ; $4841: $3f
	jr   nc, jr_07e_47c4                             ; $4842: $30 $80

	nop                                              ; $4844: $00
	ld   bc, $01fe                                   ; $4845: $01 $fe $01
	add  b                                           ; $4848: $80
	ld   [bc], a                                     ; $4849: $02
	ld   bc, $7cfc                                   ; $484a: $01 $fc $7c
	add  b                                           ; $484d: $80
	ld   a, d                                        ; $484e: $7a
	dec  b                                           ; $484f: $05
	db   $fc                                         ; $4850: $fc
	call c, Call_07e_6e5e                            ; $4851: $dc $5e $6e
	ld   c, h                                        ; $4854: $4c
	ld   e, h                                        ; $4855: $5c
	add  b                                           ; $4856: $80
	ld   l, [hl]                                     ; $4857: $6e
	ld   [bc], a                                     ; $4858: $02
	pop  bc                                          ; $4859: $c1
	ld   e, c                                        ; $485a: $59
	reti                                             ; $485b: $d9


	add  b                                           ; $485c: $80
	ld   sp, hl                                      ; $485d: $f9
	add  b                                           ; $485e: $80
	push af                                          ; $485f: $f5
	add  b                                           ; $4860: $80
	ld   sp, hl                                      ; $4861: $f9
	add  b                                           ; $4862: $80
	push af                                          ; $4863: $f5
	add  b                                           ; $4864: $80
	ld   sp, hl                                      ; $4865: $f9
	nop                                              ; $4866: $00
	pop  bc                                          ; $4867: $c1
	add  b                                           ; $4868: $80
	db   $fc                                         ; $4869: $fc
	nop                                              ; $486a: $00
	ccf                                              ; $486b: $3f
	adc  d                                           ; $486c: $8a
	add  sp, $04                                     ; $486d: $e8 $04
	jp   hl                                          ; $486f: $e9


	ret  z                                           ; $4870: $c8

	rrca                                             ; $4871: $0f
	sub  b                                           ; $4872: $90
	add  b                                           ; $4873: $80
	add  b                                           ; $4874: $80
	ret  nz                                          ; $4875: $c0

	add  b                                           ; $4876: $80
	ldh  [$80], a                                    ; $4877: $e0 $80
	ld   h, b                                        ; $4879: $60
	add  e                                           ; $487a: $83
	nop                                              ; $487b: $00
	inc  b                                           ; $487c: $04
	add  b                                           ; $487d: $80
	add  h                                           ; $487e: $84
	db   $fc                                         ; $487f: $fc
	ld   c, b                                        ; $4880: $48
	ld   c, a                                        ; $4881: $4f
	add  b                                           ; $4882: $80
	inc  sp                                          ; $4883: $33
	add  b                                           ; $4884: $80
	ld   a, [bc]                                     ; $4885: $0a
	add  b                                           ; $4886: $80
	rlca                                             ; $4887: $07
	add  [hl]                                        ; $4888: $86
	ld   bc, $5e01                                   ; $4889: $01 $01 $5e
	and  a                                           ; $488c: $a7
	add  b                                           ; $488d: $80
	rst  ToBoot                                         ; $488e: $c7
	dec  b                                           ; $488f: $05
	rlca                                             ; $4890: $07
	nop                                              ; $4891: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4892: $cf
	rst  ToBoot                                         ; $4893: $c7
	add  b                                           ; $4894: $80
	add  a                                           ; $4895: $87
	add  b                                           ; $4896: $80
	and  a                                           ; $4897: $a7
	ld   bc, $6765                                   ; $4898: $01 $65 $67
	add  b                                           ; $489b: $80
	rst  $20                                         ; $489c: $e7
	nop                                              ; $489d: $00
	ld   h, e                                        ; $489e: $63
	add  b                                           ; $489f: $80
	ld   l, [hl]                                     ; $48a0: $6e
	nop                                              ; $48a1: $00
	ld   h, [hl]                                     ; $48a2: $66
	add  b                                           ; $48a3: $80
	ld   l, [hl]                                     ; $48a4: $6e
	add  d                                           ; $48a5: $82
	ld   h, [hl]                                     ; $48a6: $66
	ld   b, $00                                      ; $48a7: $06 $00
	ld   d, b                                        ; $48a9: $50
	ld   e, d                                        ; $48aa: $5a
	inc  c                                           ; $48ab: $0c
	halt                                             ; $48ac: $76
	nop                                              ; $48ad: $00
	ld   a, b                                        ; $48ae: $78
	add  d                                           ; $48af: $82
	dec  a                                           ; $48b0: $3d
	inc  bc                                          ; $48b1: $03
	ld   bc, $0100                                   ; $48b2: $01 $00 $01
	dec  [hl]                                        ; $48b5: $35
	add  c                                           ; $48b6: $81
	inc  [hl]                                        ; $48b7: $34
	inc  d                                           ; $48b8: $14
	db   $db                                         ; $48b9: $db
	ld   bc, $00c0                                   ; $48ba: $01 $c0 $00
	db   $db                                         ; $48bd: $db
	pop  af                                          ; $48be: $f1
	or   e                                           ; $48bf: $b3
	pop  af                                          ; $48c0: $f1
	rst  $30                                         ; $48c1: $f7
	ldh  a, [c]                                      ; $48c2: $f2
	cp   $f6                                         ; $48c3: $fe $f6
	cp   $ec                                         ; $48c5: $fe $ec
	ld   e, h                                        ; $48c7: $5c
	call nz, $20e4                                   ; $48c8: $c4 $e4 $20
	ldh  a, [rSB]                                    ; $48cb: $f0 $01
	ld   a, $80                                      ; $48cd: $3e $80
	inc  c                                           ; $48cf: $0c
	add  b                                           ; $48d0: $80
	dec  c                                           ; $48d1: $0d
	add  c                                           ; $48d2: $81
	rrca                                             ; $48d3: $0f
	add  b                                           ; $48d4: $80
	inc  c                                           ; $48d5: $0c
	inc  bc                                          ; $48d6: $03
	inc  bc                                          ; $48d7: $03
	nop                                              ; $48d8: $00
	inc  bc                                          ; $48d9: $03
	rrca                                             ; $48da: $0f
	add  b                                           ; $48db: $80
	nop                                              ; $48dc: $00
	ld   bc, $0eed                                   ; $48dd: $01 $ed $0e
	add  b                                           ; $48e0: $80
	adc  [hl]                                        ; $48e1: $8e
	ld   c, $8a                                      ; $48e2: $0e $8a
	adc  [hl]                                        ; $48e4: $8e
	jp   nc, $1ad6                                   ; $48e5: $d2 $d6 $1a

	ld   e, $ea                                      ; $48e8: $1e $ea
	ld   e, $fa                                      ; $48ea: $1e $fa
	cp   $1a                                         ; $48ec: $fe $1a
	ld   e, $8e                                      ; $48ee: $1e $8e
	rrca                                             ; $48f0: $0f
	rra                                              ; $48f1: $1f
	add  d                                           ; $48f2: $82
	ld   [hl], a                                     ; $48f3: $77
	inc  b                                           ; $48f4: $04
	halt                                             ; $48f5: $76
	ld   [hl], l                                     ; $48f6: $75
	db   $10                                         ; $48f7: $10
	ld   h, [hl]                                     ; $48f8: $66
	ld   a, b                                        ; $48f9: $78
	add  d                                           ; $48fa: $82
	nop                                              ; $48fb: $00
	ld   bc, $f0e8                                   ; $48fc: $01 $e8 $f0
	add  b                                           ; $48ff: $80
	ld   hl, sp+$04                                  ; $4900: $f8 $04
	ret  z                                           ; $4902: $c8

	adc  b                                           ; $4903: $88
	rst  JumpTable                                         ; $4904: $df
	ld   a, [$80fd]                                  ; $4905: $fa $fd $80
	rlca                                             ; $4908: $07
	add  e                                           ; $4909: $83
	nop                                              ; $490a: $00
	nop                                              ; $490b: $00
	cp   $81                                         ; $490c: $fe $81
	add  b                                           ; $490e: $80
	inc  b                                           ; $490f: $04
	xor  a                                           ; $4910: $af
	add  b                                           ; $4911: $80
	xor  a                                           ; $4912: $af
	nop                                              ; $4913: $00
	cp   $80                                         ; $4914: $fe $80
	add  b                                           ; $4916: $80
	add  e                                           ; $4917: $83
	nop                                              ; $4918: $00
	ld   b, $f0                                      ; $4919: $06 $f0
	ldh  [$b0], a                                    ; $491b: $e0 $b0
	nop                                              ; $491d: $00
	ld   d, b                                        ; $491e: $50
	nop                                              ; $491f: $00
	ldh  a, [$97]                                    ; $4920: $f0 $97
	nop                                              ; $4922: $00
	ld   bc, $542b                                   ; $4923: $01 $2b $54
	add  b                                           ; $4926: $80
	ld   l, d                                        ; $4927: $6a
	add  b                                           ; $4928: $80
	ld   d, h                                        ; $4929: $54
	add  b                                           ; $492a: $80
	ld   a, b                                        ; $492b: $78
	add  b                                           ; $492c: $80
	ld   a, h                                        ; $492d: $7c
	add  b                                           ; $492e: $80
	ld   a, b                                        ; $492f: $78
	ld   bc, $fc7c                                   ; $4930: $01 $7c $fc
	add  b                                           ; $4933: $80
	ld   hl, sp-$80                                  ; $4934: $f8 $80
	ld   a, b                                        ; $4936: $78
	add  b                                           ; $4937: $80
	ld   a, h                                        ; $4938: $7c
	add  b                                           ; $4939: $80
	cp   b                                           ; $493a: $b8
	ld   bc, $bcbd                                   ; $493b: $01 $bd $bc
	add  b                                           ; $493e: $80
	cp   b                                           ; $493f: $b8
	add  h                                           ; $4940: $84
	ret  c                                           ; $4941: $d8

	ld   b, $bb                                      ; $4942: $06 $bb
	ld   b, h                                        ; $4944: $44
	ld   b, d                                        ; $4945: $42
	inc  b                                           ; $4946: $04
	xor  e                                           ; $4947: $ab
	nop                                              ; $4948: $00
	db   $ec                                         ; $4949: $ec
	add  a                                           ; $494a: $87
	nop                                              ; $494b: $00
	nop                                              ; $494c: $00
	adc  d                                           ; $494d: $8a
	add  a                                           ; $494e: $87
	adc  h                                           ; $494f: $8c
	inc  b                                           ; $4950: $04
	inc  c                                           ; $4951: $0c
	adc  h                                           ; $4952: $8c
	adc  b                                           ; $4953: $88
	ld   [hl], b                                     ; $4954: $70
	ld   a, [hl]                                     ; $4955: $7e
	add  b                                           ; $4956: $80
	ld   e, b                                        ; $4957: $58
	add  h                                           ; $4958: $84
	ld   bc, $0003                                   ; $4959: $01 $03 $00
	ld   bc, $0100                                   ; $495c: $01 $00 $01
	add  e                                           ; $495f: $83
	nop                                              ; $4960: $00
	ld   a, [bc]                                     ; $4961: $0a
	dec  d                                           ; $4962: $15
	rst  $20                                         ; $4963: $e7
	ldh  [c], a                                      ; $4964: $e2
	rst  $20                                         ; $4965: $e7
	rst  ToBoot                                         ; $4966: $c7
	jp   nz, TimerOverflowInterrupt                  ; $4967: $c2 $50 $00

	ld   b, l                                        ; $496a: $45
	nop                                              ; $496b: $00
	rst  $20                                         ; $496c: $e7
	add  e                                           ; $496d: $83
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	add  b                                           ; $4970: $80
	add  c                                           ; $4971: $81
	nop                                              ; $4972: $00
	add  b                                           ; $4973: $80
	add  b                                           ; $4974: $80
	add  b                                           ; $4975: $80
	nop                                              ; $4976: $00
	ld   [bc], a                                     ; $4977: $02
	ld   b, b                                        ; $4978: $40
	nop                                              ; $4979: $00
	ret  nz                                          ; $497a: $c0

	add  e                                           ; $497b: $83
	nop                                              ; $497c: $00
	ld   [bc], a                                     ; $497d: $02
	ld   a, [hl]                                     ; $497e: $7e
	ld   b, b                                        ; $497f: $40
	ld   a, $8b                                      ; $4980: $3e $8b
	nop                                              ; $4982: $00
	ld   [bc], a                                     ; $4983: $02
	rlca                                             ; $4984: $07
	inc  bc                                          ; $4985: $03
	rlca                                             ; $4986: $07
	add  d                                           ; $4987: $82
	inc  bc                                          ; $4988: $03
	add  a                                           ; $4989: $87
	nop                                              ; $498a: $00
	nop                                              ; $498b: $00
	inc  bc                                          ; $498c: $03
	add  l                                           ; $498d: $85
	nop                                              ; $498e: $00
	ld   bc, $03fc                                   ; $498f: $01 $fc $03
	add  b                                           ; $4992: $80
	ld   [bc], a                                     ; $4993: $02
	add  b                                           ; $4994: $80
	xor  a                                           ; $4995: $af
	add  b                                           ; $4996: $80
	cp   $00                                         ; $4997: $fe $00
	rst  $38                                         ; $4999: $ff
	add  l                                           ; $499a: $85
	nop                                              ; $499b: $00
	ld   bc, $f40b                                   ; $499c: $01 $0b $f4
	add  b                                           ; $499f: $80
	xor  c                                           ; $49a0: $a9
	add  b                                           ; $49a1: $80
	ld   d, e                                        ; $49a2: $53
	add  b                                           ; $49a3: $80
	and  e                                           ; $49a4: $a3
	nop                                              ; $49a5: $00
	rst  $38                                         ; $49a6: $ff
	add  l                                           ; $49a7: $85
	nop                                              ; $49a8: $00
	ld   bc, $51ae                                   ; $49a9: $01 $ae $51
	add  b                                           ; $49ac: $80
	ld   l, d                                        ; $49ad: $6a
	add  b                                           ; $49ae: $80
	rst  $30                                         ; $49af: $f7
	add  b                                           ; $49b0: $80
	ei                                               ; $49b1: $fb
	nop                                              ; $49b2: $00
	rst  $38                                         ; $49b3: $ff
	add  l                                           ; $49b4: $85
	nop                                              ; $49b5: $00
	ld   bc, $50a0                                   ; $49b6: $01 $a0 $50
	add  b                                           ; $49b9: $80
	ldh  [$80], a                                    ; $49ba: $e0 $80

jr_07e_49bc:
	ldh  a, [$80]                                    ; $49bc: $f0 $80
	ldh  [rSB], a                                    ; $49be: $e0 $01
	dec  l                                           ; $49c0: $2d
	ld   [hl+], a                                    ; $49c1: $22
	add  b                                           ; $49c2: $80
	push de                                          ; $49c3: $d5
	add  b                                           ; $49c4: $80
	xor  d                                           ; $49c5: $aa
	add  b                                           ; $49c6: $80
	pop  de                                          ; $49c7: $d1
	add  b                                           ; $49c8: $80
	add  d                                           ; $49c9: $82
	add  b                                           ; $49ca: $80
	ld   c, l                                        ; $49cb: $4d
	add  d                                           ; $49cc: $82
	ret  nz                                          ; $49cd: $c0

	add  d                                           ; $49ce: $82
	rlca                                             ; $49cf: $07
	add  b                                           ; $49d0: $80
	add  e                                           ; $49d1: $83
	add  b                                           ; $49d2: $80
	inc  bc                                          ; $49d3: $03
	add  b                                           ; $49d4: $80
	xor  a                                           ; $49d5: $af
	add  b                                           ; $49d6: $80
	ld   h, a                                        ; $49d7: $67
	add  b                                           ; $49d8: $80
	ld   a, [hl]                                     ; $49d9: $7e
	add  b                                           ; $49da: $80
	push af                                          ; $49db: $f5
	add  b                                           ; $49dc: $80
	and  b                                           ; $49dd: $a0
	add  b                                           ; $49de: $80
	db   $fc                                         ; $49df: $fc
	add  b                                           ; $49e0: $80
	and  d                                           ; $49e1: $a2
	add  b                                           ; $49e2: $80
	ld   d, b                                        ; $49e3: $50
	add  b                                           ; $49e4: $80
	add  b                                           ; $49e5: $80
	add  b                                           ; $49e6: $80
	nop                                              ; $49e7: $00
	dec  b                                           ; $49e8: $05
	add  b                                           ; $49e9: $80
	add  c                                           ; $49ea: $81
	ld   b, c                                        ; $49eb: $41
	ld   b, [hl]                                     ; $49ec: $46
	add  hl, de                                      ; $49ed: $19
	db   $10                                         ; $49ee: $10
	add  l                                           ; $49ef: $85
	nop                                              ; $49f0: $00
	add  b                                           ; $49f1: $80
	db   $10                                         ; $49f2: $10
	add  b                                           ; $49f3: $80
	ld   h, b                                        ; $49f4: $60
	add  b                                           ; $49f5: $80
	add  b                                           ; $49f6: $80
	inc  bc                                          ; $49f7: $03
	nop                                              ; $49f8: $00
	ld   c, $18                                      ; $49f9: $0e $18
	db   $10                                         ; $49fb: $10
	add  b                                           ; $49fc: $80
	ld   h, h                                        ; $49fd: $64
	dec  bc                                          ; $49fe: $0b
	add  h                                           ; $49ff: $84
	push bc                                          ; $4a00: $c5
	inc  h                                           ; $4a01: $24
	inc  l                                           ; $4a02: $2c
	inc  hl                                          ; $4a03: $23
	ld   l, a                                        ; $4a04: $6f
	rrca                                             ; $4a05: $0f
	ld   [bc], a                                     ; $4a06: $02
	ccf                                              ; $4a07: $3f
	ld   a, [de]                                     ; $4a08: $1a
	ld   a, h                                        ; $4a09: $7c
	ld   a, b                                        ; $4a0a: $78
	add  b                                           ; $4a0b: $80
	sub  h                                           ; $4a0c: $94
	dec  e                                           ; $4a0d: $1d
	add  a                                           ; $4a0e: $87
	and  l                                           ; $4a0f: $a5
	sbc  a                                           ; $4a10: $9f
	ld   d, c                                        ; $4a11: $51
	rst  $38                                         ; $4a12: $ff
	ld   d, e                                        ; $4a13: $53
	rst  $38                                         ; $4a14: $ff
	sbc  a                                           ; $4a15: $9f
	pop  af                                          ; $4a16: $f1
	ld   a, a                                        ; $4a17: $7f
	adc  a                                           ; $4a18: $8f
	ld   a, a                                        ; $4a19: $7f
	ld   l, a                                        ; $4a1a: $6f
	sbc  e                                           ; $4a1b: $9b
	ld   a, a                                        ; $4a1c: $7f
	rst  JumpTable                                         ; $4a1d: $df
	rst  $38                                         ; $4a1e: $ff
	ld   a, a                                        ; $4a1f: $7f
	rst  $38                                         ; $4a20: $ff
	ld   hl, sp-$01                                  ; $4a21: $f8 $ff
	push hl                                          ; $4a23: $e5
	rst  $38                                         ; $4a24: $ff
	or   l                                           ; $4a25: $b5
	rst  $38                                         ; $4a26: $ff
	rst  $10                                         ; $4a27: $d7
	rst  $38                                         ; $4a28: $ff
	ld   a, a                                        ; $4a29: $7f
	rst  $38                                         ; $4a2a: $ff
	dec  b                                           ; $4a2b: $05
	add  c                                           ; $4a2c: $81
	ldh  a, [rDIV]                                   ; $4a2d: $f0 $04
	ldh  [$f0], a                                    ; $4a2f: $e0 $f0
	or   b                                           ; $4a31: $b0
	ldh  a, [$50]                                    ; $4a32: $f0 $50
	add  l                                           ; $4a34: $85
	ldh  a, [rSB]                                    ; $4a35: $f0 $01
	ld   l, a                                        ; $4a37: $6f
	ret  nz                                          ; $4a38: $c0

	add  b                                           ; $4a39: $80
	jr   nz, jr_07e_49bc                             ; $4a3a: $20 $80

	nop                                              ; $4a3c: $00
	ld   bc, $00c0                                   ; $4a3d: $01 $c0 $00
	add  b                                           ; $4a40: $80
	db   $10                                         ; $4a41: $10
	inc  de                                          ; $4a42: $13
	ld   d, b                                        ; $4a43: $50
	db   $10                                         ; $4a44: $10
	ld   d, h                                        ; $4a45: $54
	call nc, $e264                                   ; $4a46: $d4 $64 $e2
	and  $62                                         ; $4a49: $e6 $62
	ld   a, [hl]                                     ; $4a4b: $7e
	inc  a                                           ; $4a4c: $3c
	ld   [hl+], a                                    ; $4a4d: $22
	inc  b                                           ; $4a4e: $04
	ld   b, l                                        ; $4a4f: $45
	inc  b                                           ; $4a50: $04
	inc  [hl]                                        ; $4a51: $34
	jr   nc, jr_07e_4a72                             ; $4a52: $30 $1e

	ld   a, h                                        ; $4a54: $7c
	cp   l                                           ; $4a55: $bd
	ld   a, h                                        ; $4a56: $7c
	add  b                                           ; $4a57: $80
	cp   $04                                         ; $4a58: $fe $04
	adc  d                                           ; $4a5a: $8a
	ld   a, a                                        ; $4a5b: $7f
	ccf                                              ; $4a5c: $3f
	ld   e, a                                        ; $4a5d: $5f
	nop                                              ; $4a5e: $00
	add  e                                           ; $4a5f: $83
	rra                                              ; $4a60: $1f
	ld   [bc], a                                     ; $4a61: $02
	sbc  a                                           ; $4a62: $9f
	cp   a                                           ; $4a63: $bf
	ccf                                              ; $4a64: $3f
	add  c                                           ; $4a65: $81
	rra                                              ; $4a66: $1f
	nop                                              ; $4a67: $00
	and  l                                           ; $4a68: $a5
	add  c                                           ; $4a69: $81
	ldh  a, [rP1]                                    ; $4a6a: $f0 $00
	db   $10                                         ; $4a6c: $10
	adc  c                                           ; $4a6d: $89
	ldh  [rSB], a                                    ; $4a6e: $e0 $01
	ld   d, d                                        ; $4a70: $52
	db   $fd                                         ; $4a71: $fd

jr_07e_4a72:
	add  b                                           ; $4a72: $80
	cp   $80                                         ; $4a73: $fe $80
	ld   [hl], l                                     ; $4a75: $75
	add  b                                           ; $4a76: $80
	ld   [$b580], a                                  ; $4a77: $ea $80 $b5
	add  h                                           ; $4a7a: $84
	nop                                              ; $4a7b: $00
	add  b                                           ; $4a7c: $80
	ld   b, a                                        ; $4a7d: $47
	add  b                                           ; $4a7e: $80
	add  a                                           ; $4a7f: $87
	add  b                                           ; $4a80: $80
	dec  bc                                          ; $4a81: $0b
	add  b                                           ; $4a82: $80
	add  a                                           ; $4a83: $87
	add  b                                           ; $4a84: $80
	inc  c                                           ; $4a85: $0c
	add  b                                           ; $4a86: $80
	ld   bc, $0580                                   ; $4a87: $01 $80 $05
	add  b                                           ; $4a8a: $80
	rlca                                             ; $4a8b: $07
	add  h                                           ; $4a8c: $84
	rst  $38                                         ; $4a8d: $ff
	add  b                                           ; $4a8e: $80
	db   $eb                                         ; $4a8f: $eb
	add  b                                           ; $4a90: $80
	ld   d, l                                        ; $4a91: $55
	add  b                                           ; $4a92: $80
	ld   [$d480], a                                  ; $4a93: $ea $80 $d4
	add  b                                           ; $4a96: $80
	adc  d                                           ; $4a97: $8a
	ld   bc, $d0df                                   ; $4a98: $01 $df $d0
	add  b                                           ; $4a9b: $80
	and  b                                           ; $4a9c: $a0
	add  b                                           ; $4a9d: $80
	ret  nc                                          ; $4a9e: $d0

	add  b                                           ; $4a9f: $80
	sub  b                                           ; $4aa0: $90
	add  b                                           ; $4aa1: $80
	nop                                              ; $4aa2: $00
	add  b                                           ; $4aa3: $80
	add  b                                           ; $4aa4: $80
	add  b                                           ; $4aa5: $80
	nop                                              ; $4aa6: $00
	add  b                                           ; $4aa7: $80
	db   $10                                         ; $4aa8: $10
	ld   bc, $030c                                   ; $4aa9: $01 $0c $03
	add  b                                           ; $4aac: $80
	ld   bc, $2080                                   ; $4aad: $01 $80 $20
	add  b                                           ; $4ab0: $80
	inc  d                                           ; $4ab1: $14
	add  b                                           ; $4ab2: $80
	xor  b                                           ; $4ab3: $a8
	add  b                                           ; $4ab4: $80
	ld   d, h                                        ; $4ab5: $54
	dec  b                                           ; $4ab6: $05
	and  b                                           ; $4ab7: $a0
	and  c                                           ; $4ab8: $a1
	ld   b, c                                        ; $4ab9: $41
	ld   b, [hl]                                     ; $4aba: $46
	call nc, $81d2                                   ; $4abb: $d4 $d2 $81
	nop                                              ; $4abe: $00
	add  b                                           ; $4abf: $80
	dec  b                                           ; $4ac0: $05
	add  b                                           ; $4ac1: $80
	ld   b, $01                                      ; $4ac2: $06 $01
	inc  e                                           ; $4ac4: $1c
	dec  e                                           ; $4ac5: $1d
	add  b                                           ; $4ac6: $80
	ld   h, h                                        ; $4ac7: $64
	inc  bc                                          ; $4ac8: $03
	sub  h                                           ; $4ac9: $94
	or   h                                           ; $4aca: $b4
	inc  d                                           ; $4acb: $14
	dec  [hl]                                        ; $4acc: $35
	add  b                                           ; $4acd: $80
	jr   jr_07e_4ad5                                 ; $4ace: $18 $05

	ld   h, b                                        ; $4ad0: $60
	ld   l, b                                        ; $4ad1: $68
	add  b                                           ; $4ad2: $80
	sub  b                                           ; $4ad3: $90
	inc  b                                           ; $4ad4: $04

jr_07e_4ad5:
	add  h                                           ; $4ad5: $84
	add  b                                           ; $4ad6: $80
	inc  b                                           ; $4ad7: $04
	rlca                                             ; $4ad8: $07
	ld   b, h                                        ; $4ad9: $44
	ld   d, h                                        ; $4ada: $54
	ld   b, e                                        ; $4adb: $43
	add  hl, bc                                      ; $4adc: $09
	rra                                              ; $4add: $1f
	sub  d                                           ; $4ade: $92
	nop                                              ; $4adf: $00
	add  b                                           ; $4ae0: $80
	add  e                                           ; $4ae1: $83
	jr   nz, jr_07e_4af0                             ; $4ae2: $20 $0c

	and  b                                           ; $4ae4: $a0
	db   $10                                         ; $4ae5: $10
	ld   d, b                                        ; $4ae6: $50
	ld   [hl], b                                     ; $4ae7: $70
	ld   d, b                                        ; $4ae8: $50
	ldh  a, [rSVBK]                                  ; $4ae9: $f0 $70
	ldh  a, [$5c]                                    ; $4aeb: $f0 $5c
	db   $e3                                         ; $4aed: $e3
	rst  $38                                         ; $4aee: $ff
	dec  de                                          ; $4aef: $1b

jr_07e_4af0:
	ei                                               ; $4af0: $fb
	add  b                                           ; $4af1: $80
	pop  hl                                          ; $4af2: $e1
	add  b                                           ; $4af3: $80
	and  c                                           ; $4af4: $a1
	ld   [bc], a                                     ; $4af5: $02
	xor  d                                           ; $4af6: $aa
	and  l                                           ; $4af7: $a5
	ldh  a, [$82]                                    ; $4af8: $f0 $82
	nop                                              ; $4afa: $00
	nop                                              ; $4afb: $00
	cp   $80                                         ; $4afc: $fe $80
	and  a                                           ; $4afe: $a7
	ld   bc, $0d0f                                   ; $4aff: $01 $0f $0d
	add  b                                           ; $4b02: $80
	xor  a                                           ; $4b03: $af
	ld   [bc], a                                     ; $4b04: $02
	adc  a                                           ; $4b05: $8f
	di                                               ; $4b06: $f3
	add  e                                           ; $4b07: $83
	add  b                                           ; $4b08: $80
	ld   [bc], a                                     ; $4b09: $02
	dec  bc                                          ; $4b0a: $0b
	ld   [hl+], a                                    ; $4b0b: $22
	ld   [de], a                                     ; $4b0c: $12
	or   d                                           ; $4b0d: $b2
	ld   b, d                                        ; $4b0e: $42
	sub  [hl]                                        ; $4b0f: $96
	rst  $38                                         ; $4b10: $ff
	db   $ed                                         ; $4b11: $ed
	db   $fd                                         ; $4b12: $fd
	sub  h                                           ; $4b13: $94
	push de                                          ; $4b14: $d5
	ld   e, [hl]                                     ; $4b15: $5e
	ld   e, d                                        ; $4b16: $5a
	add  h                                           ; $4b17: $84
	xor  d                                           ; $4b18: $aa
	rlca                                             ; $4b19: $07
	rst  $20                                         ; $4b1a: $e7
	rst  $28                                         ; $4b1b: $ef
	jr   z, jr_07e_4b8e                              ; $4b1c: $28 $70

	ld   b, b                                        ; $4b1e: $40
	ld   d, b                                        ; $4b1f: $50
	jr   nc, jr_07e_4b92                             ; $4b20: $30 $70

	add  d                                           ; $4b22: $82
	or   b                                           ; $4b23: $b0
	ld   bc, $b090                                   ; $4b24: $01 $90 $b0
	add  b                                           ; $4b27: $80
	ldh  a, [$03]                                    ; $4b28: $f0 $03
	ld   [hl], b                                     ; $4b2a: $70
	ldh  a, [$3f]                                    ; $4b2b: $f0 $3f
	push hl                                          ; $4b2d: $e5
	add  b                                           ; $4b2e: $80
	or   l                                           ; $4b2f: $b5
	dec  c                                           ; $4b30: $0d
	ld   [hl], l                                     ; $4b31: $75
	ld   [hl], c                                     ; $4b32: $71
	sub  c                                           ; $4b33: $91
	ld   de, $1151                                   ; $4b34: $11 $51 $11
	or   c                                           ; $4b37: $b1
	dec  d                                           ; $4b38: $15
	dec  sp                                          ; $4b39: $3b
	rra                                              ; $4b3a: $1f
	ld   h, c                                        ; $4b3b: $61
	ld   hl, $be3f                                   ; $4b3c: $21 $3f $be
	add  d                                           ; $4b3f: $82
	rst  JumpTable                                         ; $4b40: $df
	add  d                                           ; $4b41: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b42: $cf
	add  b                                           ; $4b43: $80
	adc  $80                                         ; $4b44: $ce $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b46: $cf
	add  b                                           ; $4b47: $80
	adc  $00                                         ; $4b48: $ce $00
	dec  b                                           ; $4b4a: $05
	add  d                                           ; $4b4b: $82
	rrca                                             ; $4b4c: $0f
	ld   bc, $0007                                   ; $4b4d: $01 $07 $00
	add  b                                           ; $4b50: $80
	rlca                                             ; $4b51: $07
	add  l                                           ; $4b52: $85
	inc  bc                                          ; $4b53: $03
	nop                                              ; $4b54: $00
	ld   c, [hl]                                     ; $4b55: $4e
	add  d                                           ; $4b56: $82
	ldh  [rSB], a                                    ; $4b57: $e0 $01
	ret  nz                                          ; $4b59: $c0

	nop                                              ; $4b5a: $00
	add  e                                           ; $4b5b: $83
	ret  nz                                          ; $4b5c: $c0

	add  d                                           ; $4b5d: $82
	ret  nc                                          ; $4b5e: $d0

	inc  b                                           ; $4b5f: $04
	sbc  b                                           ; $4b60: $98
	ld   bc, $bf57                                   ; $4b61: $01 $57 $bf
	ccf                                              ; $4b64: $3f
	add  b                                           ; $4b65: $80
	ld   [hl], l                                     ; $4b66: $75
	nop                                              ; $4b67: $00
	pop  af                                          ; $4b68: $f1
	add  b                                           ; $4b69: $80
	db   $f4                                         ; $4b6a: $f4
	nop                                              ; $4b6b: $00
	db   $fd                                         ; $4b6c: $fd
	add  c                                           ; $4b6d: $81
	inc  c                                           ; $4b6e: $0c
	inc  bc                                          ; $4b6f: $03
	ld   b, $77                                      ; $4b70: $06 $77
	cp   a                                           ; $4b72: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b73: $cf
	add  b                                           ; $4b74: $80
	adc  $80                                         ; $4b75: $ce $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b77: $cf
	add  b                                           ; $4b78: $80
	adc  $80                                         ; $4b79: $ce $80
	rrca                                             ; $4b7b: $0f
	inc  bc                                          ; $4b7c: $03
	adc  [hl]                                        ; $4b7d: $8e
	ld   c, $8d                                      ; $4b7e: $0e $8d
	dec  c                                           ; $4b80: $0d
	add  b                                           ; $4b81: $80
	ld   l, $00                                      ; $4b82: $2e $00
	ld   [bc], a                                     ; $4b84: $02
	add  e                                           ; $4b85: $83
	inc  bc                                          ; $4b86: $03
	nop                                              ; $4b87: $00
	inc  b                                           ; $4b88: $04
	add  a                                           ; $4b89: $87
	rlca                                             ; $4b8a: $07
	ld   bc, $c08d                                   ; $4b8b: $01 $8d $c0

jr_07e_4b8e:
	add  b                                           ; $4b8e: $80
	ret  nc                                          ; $4b8f: $d0

	add  b                                           ; $4b90: $80
	ret  nz                                          ; $4b91: $c0

jr_07e_4b92:
	nop                                              ; $4b92: $00
	ld   [hl], b                                     ; $4b93: $70
	add  a                                           ; $4b94: $87
	or   b                                           ; $4b95: $b0
	nop                                              ; $4b96: $00
	adc  b                                           ; $4b97: $88
	add  b                                           ; $4b98: $80
	ld   h, e                                        ; $4b99: $63
	ld   b, $71                                      ; $4b9a: $06 $71
	ld   [hl], l                                     ; $4b9c: $75
	ld   h, l                                        ; $4b9d: $65
	ld   h, e                                        ; $4b9e: $63
	inc  bc                                          ; $4b9f: $03
	adc  b                                           ; $4ba0: $88
	nop                                              ; $4ba1: $00
	add  b                                           ; $4ba2: $80
	ld   bc, $4900                                   ; $4ba3: $01 $00 $49
	add  c                                           ; $4ba6: $81
	ld   bc, $2301                                   ; $4ba7: $01 $01 $23
	push hl                                          ; $4baa: $e5
	add  b                                           ; $4bab: $80
	ld   [$c580], a                                  ; $4bac: $ea $80 $c5
	add  b                                           ; $4baf: $80
	xor  b                                           ; $4bb0: $a8
	add  b                                           ; $4bb1: $80
	nop                                              ; $4bb2: $00
	add  b                                           ; $4bb3: $80
	ret  nz                                          ; $4bb4: $c0

	add  d                                           ; $4bb5: $82
	db   $fc                                         ; $4bb6: $fc
	nop                                              ; $4bb7: $00
	dec  b                                           ; $4bb8: $05
	add  e                                           ; $4bb9: $83
	rlca                                             ; $4bba: $07
	ld   [bc], a                                     ; $4bbb: $02
	dec  b                                           ; $4bbc: $05
	rlca                                             ; $4bbd: $07
	ld   a, [bc]                                     ; $4bbe: $0a
	add  l                                           ; $4bbf: $85
	rst  $38                                         ; $4bc0: $ff
	nop                                              ; $4bc1: $00
	ld   a, [bc]                                     ; $4bc2: $0a
	rst  $38                                         ; $4bc3: $ff
	nop                                              ; $4bc4: $00
	rst  $38                                         ; $4bc5: $ff
	nop                                              ; $4bc6: $00
	rst  $38                                         ; $4bc7: $ff
	nop                                              ; $4bc8: $00
	rst  $38                                         ; $4bc9: $ff
	nop                                              ; $4bca: $00
	rst  $38                                         ; $4bcb: $ff
	nop                                              ; $4bcc: $00
	rst  $38                                         ; $4bcd: $ff
	nop                                              ; $4bce: $00
	rst  $38                                         ; $4bcf: $ff
	nop                                              ; $4bd0: $00
	add  [hl]                                        ; $4bd1: $86
	nop                                              ; $4bd2: $00
	daa                                              ; $4bd3: $27
	ld   bc, $0001                                   ; $4bd4: $01 $01 $00
	rrca                                             ; $4bd7: $0f
	add  b                                           ; $4bd8: $80
	inc  c                                           ; $4bd9: $0c
	add  b                                           ; $4bda: $80
	rlca                                             ; $4bdb: $07
	add  h                                           ; $4bdc: $84
	rrca                                             ; $4bdd: $0f
	dec  b                                           ; $4bde: $05
	inc  c                                           ; $4bdf: $0c
	rrca                                             ; $4be0: $0f
	ld   bc, $c30e                                   ; $4be1: $01 $0e $c3
	ccf                                              ; $4be4: $3f
	add  b                                           ; $4be5: $80
	cp   $09                                         ; $4be6: $fe $09
	db   $fc                                         ; $4be8: $fc
	rst  $38                                         ; $4be9: $ff
	pop  af                                          ; $4bea: $f1
	cp   $c4                                         ; $4beb: $fe $c4
	ld   hl, sp+$10                                  ; $4bed: $f8 $10
	ldh  [rLCDC], a                                  ; $4bef: $e0 $40
	add  b                                           ; $4bf1: $80
	add  b                                           ; $4bf2: $80
	ld   bc, $0405                                   ; $4bf3: $01 $05 $04
	rlca                                             ; $4bf6: $07
	sbc  l                                           ; $4bf7: $9d
	cp   $e0                                         ; $4bf8: $fe $e0
	add  b                                           ; $4bfa: $80
	add  b                                           ; $4bfb: $80
	nop                                              ; $4bfc: $00
	ld   a, [bc]                                     ; $4bfd: $0a
	ld   b, $07                                      ; $4bfe: $06 $07
	jr   @+$20                                       ; $4c00: $18 $1e

	ld   c, l                                        ; $4c02: $4d
	ld   [hl], l                                     ; $4c03: $75
	ld   [$70aa], a                                  ; $4c04: $ea $aa $70
	rst  $38                                         ; $4c07: $ff
	ldh  a, [$81]                                    ; $4c08: $f0 $81
	nop                                              ; $4c0a: $00
	add  b                                           ; $4c0b: $80
	rra                                              ; $4c0c: $1f
	ld   [$ff67], sp                                 ; $4c0d: $08 $67 $ff
	ret  nz                                          ; $4c10: $c0

	cp   a                                           ; $4c11: $bf
	ld   c, e                                        ; $4c12: $4b
	ld   e, a                                        ; $4c13: $5f
	and  b                                           ; $4c14: $a0
	xor  a                                           ; $4c15: $af
	db   $fc                                         ; $4c16: $fc
	add  d                                           ; $4c17: $82
	nop                                              ; $4c18: $00
	dec  bc                                          ; $4c19: $0b
	inc  bc                                          ; $4c1a: $03
	db   $ec                                         ; $4c1b: $ec
	cp   $10                                         ; $4c1c: $fe $10
	rst  $38                                         ; $4c1e: $ff
	cp   $ff                                         ; $4c1f: $fe $ff
	ld   hl, sp-$01                                  ; $4c21: $f8 $ff
	ret  nz                                          ; $4c23: $c0

	rst  $38                                         ; $4c24: $ff
	call nz, $0381                                   ; $4c25: $c4 $81 $03
	ld   bc, $ff00                                   ; $4c28: $01 $00 $ff
	add  c                                           ; $4c2b: $81
	nop                                              ; $4c2c: $00
	ld   [$8880], sp                                 ; $4c2d: $08 $80 $88
	ld   hl, sp+$08                                  ; $4c30: $f8 $08
	rst  $38                                         ; $4c32: $ff
	cp   $ff                                         ; $4c33: $fe $ff
	xor  h                                           ; $4c35: $ac
	ld   d, l                                        ; $4c36: $55
	add  b                                           ; $4c37: $80
	nop                                              ; $4c38: $00
	ld   [bc], a                                     ; $4c39: $02
	ld   bc, $01ff                                   ; $4c3a: $01 $ff $01
	add  d                                           ; $4c3d: $82
	ld   [bc], a                                     ; $4c3e: $02
	add  b                                           ; $4c3f: $80
	inc  b                                           ; $4c40: $04
	inc  b                                           ; $4c41: $04
	add  h                                           ; $4c42: $84
	ld   h, h                                        ; $4c43: $64
	rst  $38                                         ; $4c44: $ff
	and  $06                                         ; $4c45: $e6 $06
	add  b                                           ; $4c47: $80
	ld   [$0703], sp                                 ; $4c48: $08 $03 $07
	rst  $38                                         ; $4c4b: $ff
	ld   b, $01                                      ; $4c4c: $06 $01
	add  h                                           ; $4c4e: $84
	nop                                              ; $4c4f: $00
	ld   [bc], a                                     ; $4c50: $02
	ld   a, a                                        ; $4c51: $7f
	rst  $38                                         ; $4c52: $ff
	ld   d, $81                                      ; $4c53: $16 $81
	ld   b, c                                        ; $4c55: $41
	add  b                                           ; $4c56: $80
	pop  bc                                          ; $4c57: $c1
	inc  b                                           ; $4c58: $04
	ld   de, $07d1                                   ; $4c59: $11 $d1 $07
	inc  d                                           ; $4c5c: $14
	inc  b                                           ; $4c5d: $04
	add  c                                           ; $4c5e: $81
	nop                                              ; $4c5f: $00
	add  b                                           ; $4c60: $80
	rst  $38                                         ; $4c61: $ff
	ld   [bc], a                                     ; $4c62: $02
	nop                                              ; $4c63: $00
	rst  $38                                         ; $4c64: $ff
	add  b                                           ; $4c65: $80
	add  c                                           ; $4c66: $81
	rst  $38                                         ; $4c67: $ff
	nop                                              ; $4c68: $00
	add  b                                           ; $4c69: $80
	add  b                                           ; $4c6a: $80
	rst  $38                                         ; $4c6b: $ff
	add  e                                           ; $4c6c: $83
	nop                                              ; $4c6d: $00
	add  b                                           ; $4c6e: $80
	rst  $38                                         ; $4c6f: $ff
	ld   [bc], a                                     ; $4c70: $02
	nop                                              ; $4c71: $00
	rst  $38                                         ; $4c72: $ff
	ld   [bc], a                                     ; $4c73: $02
	add  c                                           ; $4c74: $81
	rst  $38                                         ; $4c75: $ff
	inc  bc                                          ; $4c76: $03
	ld   [bc], a                                     ; $4c77: $02
	rst  $38                                         ; $4c78: $ff
	cp   $01                                         ; $4c79: $fe $01
	add  b                                           ; $4c7b: $80
	nop                                              ; $4c7c: $00
	add  b                                           ; $4c7d: $80
	ld   bc, $ff80                                   ; $4c7e: $01 $80 $ff
	add  hl, bc                                      ; $4c81: $09
	ld   c, $f1                                      ; $4c82: $0e $f1
	inc  bc                                          ; $4c84: $03
	ei                                               ; $4c85: $fb
	ld   a, [$04fb]                                  ; $4c86: $fa $fb $04
	cp   $a9                                         ; $4c89: $fe $a9
	ld   d, l                                        ; $4c8b: $55
	add  b                                           ; $4c8c: $80
	xor  d                                           ; $4c8d: $aa
	add  b                                           ; $4c8e: $80
	ld   d, l                                        ; $4c8f: $55
	add  b                                           ; $4c90: $80
	rst  $38                                         ; $4c91: $ff
	ld   b, $3b                                      ; $4c92: $06 $3b
	db   $fc                                         ; $4c94: $fc
	or   e                                           ; $4c95: $b3
	rst  $30                                         ; $4c96: $f7
	ld   b, c                                        ; $4c97: $41
	jp   $8101                                       ; $4c98: $c3 $01 $81


	nop                                              ; $4c9b: $00
	add  b                                           ; $4c9c: $80
	add  b                                           ; $4c9d: $80
	add  b                                           ; $4c9e: $80
	ld   b, b                                        ; $4c9f: $40
	inc  b                                           ; $4ca0: $04
	ldh  a, [rIE]                                    ; $4ca1: $f0 $ff
	ld   l, b                                        ; $4ca3: $68
	rst  $38                                         ; $4ca4: $ff
	sbc  b                                           ; $4ca5: $98
	add  b                                           ; $4ca6: $80
	add  b                                           ; $4ca7: $80
	add  b                                           ; $4ca8: $80
	nop                                              ; $4ca9: $00
	add  d                                           ; $4caa: $82
	add  b                                           ; $4cab: $80
	add  d                                           ; $4cac: $82
	ld   b, b                                        ; $4cad: $40
	ld   [bc], a                                     ; $4cae: $02
	rst  $38                                         ; $4caf: $ff
	nop                                              ; $4cb0: $00
	rst  $38                                         ; $4cb1: $ff
	adc  b                                           ; $4cb2: $88
	nop                                              ; $4cb3: $00
	rlca                                             ; $4cb4: $07
	jr   @+$21                                       ; $4cb5: $18 $1f

	nop                                              ; $4cb7: $00
	rst  $38                                         ; $4cb8: $ff
	ld   bc, $06ff                                   ; $4cb9: $01 $ff $06
	nop                                              ; $4cbc: $00
	add  b                                           ; $4cbd: $80
	ld   bc, $020b                                   ; $4cbe: $01 $0b $02
	inc  bc                                          ; $4cc1: $03
	ld   bc, $4c0f                                   ; $4cc2: $01 $0f $4c
	ld   a, a                                        ; $4cc5: $7f

jr_07e_4cc6:
	nop                                              ; $4cc6: $00
	rst  $38                                         ; $4cc7: $ff
	cp   h                                           ; $4cc8: $bc
	rst  $38                                         ; $4cc9: $ff
	add  a                                           ; $4cca: $87
	ld   [$0084], sp                                 ; $4ccb: $08 $84 $00
	add  b                                           ; $4cce: $80
	ld   bc, $0380                                   ; $4ccf: $01 $80 $03
	dec  d                                           ; $4cd2: $15
	ld   b, $07                                      ; $4cd3: $06 $07
	ld   c, $0f                                      ; $4cd5: $0e $0f
	db   $f4                                         ; $4cd7: $f4
	rlca                                             ; $4cd8: $07
	dec  bc                                          ; $4cd9: $0b
	rrca                                             ; $4cda: $0f
	ld   [hl], a                                     ; $4cdb: $77
	ld   a, a                                        ; $4cdc: $7f
	rst  JumpTable                                         ; $4cdd: $df
	rst  $38                                         ; $4cde: $ff
	add  a                                           ; $4cdf: $87
	rst  $38                                         ; $4ce0: $ff
	inc  bc                                          ; $4ce1: $03
	rst  $38                                         ; $4ce2: $ff
	ld   bc, $00ff                                   ; $4ce3: $01 $ff $00
	rst  $38                                         ; $4ce6: $ff
	nop                                              ; $4ce7: $00
	ld   d, l                                        ; $4ce8: $55
	add  b                                           ; $4ce9: $80
	xor  d                                           ; $4cea: $aa
	add  b                                           ; $4ceb: $80
	push de                                          ; $4cec: $d5
	add  b                                           ; $4ced: $80
	ld   [$f580], a                                  ; $4cee: $ea $80 $f5
	add  b                                           ; $4cf1: $80
	ld   a, [$fd80]                                  ; $4cf2: $fa $80 $fd
	add  b                                           ; $4cf5: $80
	cp   $80                                         ; $4cf6: $fe $80
	ld   d, l                                        ; $4cf8: $55
	add  b                                           ; $4cf9: $80
	xor  d                                           ; $4cfa: $aa
	add  b                                           ; $4cfb: $80
	ld   d, l                                        ; $4cfc: $55
	add  b                                           ; $4cfd: $80
	xor  d                                           ; $4cfe: $aa
	add  b                                           ; $4cff: $80

Jump_07e_4d00:
	ld   d, l                                        ; $4d00: $55
	add  b                                           ; $4d01: $80
	xor  d                                           ; $4d02: $aa
	add  b                                           ; $4d03: $80
	ld   d, l                                        ; $4d04: $55
	add  b                                           ; $4d05: $80
	xor  d                                           ; $4d06: $aa
	rlca                                             ; $4d07: $07
	ccf                                              ; $4d08: $3f
	rst  $38                                         ; $4d09: $ff
	ld   b, a                                        ; $4d0a: $47
	cp   a                                           ; $4d0b: $bf
	ld   l, h                                        ; $4d0c: $6c
	ld   d, a                                        ; $4d0d: $57
	xor  e                                           ; $4d0e: $ab
	xor  b                                           ; $4d0f: $a8
	add  b                                           ; $4d10: $80
	ld   d, h                                        ; $4d11: $54
	add  b                                           ; $4d12: $80
	xor  d                                           ; $4d13: $aa
	add  b                                           ; $4d14: $80
	ld   d, l                                        ; $4d15: $55
	add  b                                           ; $4d16: $80
	xor  d                                           ; $4d17: $aa
	dec  bc                                          ; $4d18: $0b
	rst  $20                                         ; $4d19: $e7
	rst  $38                                         ; $4d1a: $ff
	rst  ToBoot                                         ; $4d1b: $c7
	rst  $38                                         ; $4d1c: $ff
	rra                                              ; $4d1d: $1f
	rst  $38                                         ; $4d1e: $ff
	jp   $383f                                       ; $4d1f: $c3 $3f $38


	rlca                                             ; $4d22: $07
	ld   bc, $8002                                   ; $4d23: $01 $02 $80
	ld   bc, $8204                                   ; $4d26: $01 $04 $82
	add  e                                           ; $4d29: $83
	or   $ff                                         ; $4d2a: $f6 $ff
	rst  $20                                         ; $4d2c: $e7
	add  c                                           ; $4d2d: $81
	rst  $38                                         ; $4d2e: $ff
	ld   c, $cf                                      ; $4d2f: $0e $cf
	rst  $38                                         ; $4d31: $ff
	jr   nz, @+$01                                   ; $4d32: $20 $ff

	ld   b, b                                        ; $4d34: $40
	rst  $38                                         ; $4d35: $ff
	dec  d                                           ; $4d36: $15
	push de                                          ; $4d37: $d5
	ld   a, [hl+]                                    ; $4d38: $2a
	xor  d                                           ; $4d39: $aa
	add  b                                           ; $4d3a: $80
	rst  $38                                         ; $4d3b: $ff
	adc  b                                           ; $4d3c: $88
	rst  $38                                         ; $4d3d: $ff
	rst  $20                                         ; $4d3e: $e7
	add  c                                           ; $4d3f: $81
	rst  $38                                         ; $4d40: $ff
	ld   [bc], a                                     ; $4d41: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d42: $cf
	rst  $38                                         ; $4d43: $ff
	jr   nz, jr_07e_4cc6                             ; $4d44: $20 $80

	rst  $38                                         ; $4d46: $ff
	add  d                                           ; $4d47: $82
	nop                                              ; $4d48: $00
	ld   bc, $20ff                                   ; $4d49: $01 $ff $20
	add  c                                           ; $4d4c: $81
	rst  $38                                         ; $4d4d: $ff
	nop                                              ; $4d4e: $00
	sbc  a                                           ; $4d4f: $9f
	add  c                                           ; $4d50: $81
	rst  $38                                         ; $4d51: $ff
	nop                                              ; $4d52: $00
	ld   b, b                                        ; $4d53: $40
	add  b                                           ; $4d54: $80
	rst  $38                                         ; $4d55: $ff
	add  d                                           ; $4d56: $82
	nop                                              ; $4d57: $00
	ld   bc, $40ff                                   ; $4d58: $01 $ff $40
	add  c                                           ; $4d5b: $81
	rst  $38                                         ; $4d5c: $ff
	nop                                              ; $4d5d: $00
	ccf                                              ; $4d5e: $3f
	add  c                                           ; $4d5f: $81
	rst  $38                                         ; $4d60: $ff
	nop                                              ; $4d61: $00
	add  b                                           ; $4d62: $80
	add  b                                           ; $4d63: $80
	rst  $38                                         ; $4d64: $ff
	add  d                                           ; $4d65: $82
	nop                                              ; $4d66: $00
	ld   bc, $81ff                                   ; $4d67: $01 $ff $81
	add  e                                           ; $4d6a: $83
	rst  $38                                         ; $4d6b: $ff
	ld   [bc], a                                     ; $4d6c: $02
	cp   $ff                                         ; $4d6d: $fe $ff
	add  b                                           ; $4d6f: $80
	add  b                                           ; $4d70: $80
	rst  $38                                         ; $4d71: $ff
	add  d                                           ; $4d72: $82
	nop                                              ; $4d73: $00
	ld   bc, $04ff                                   ; $4d74: $01 $ff $04
	add  c                                           ; $4d77: $81
	rst  $38                                         ; $4d78: $ff
	inc  b                                           ; $4d79: $04
	ld   sp, hl                                      ; $4d7a: $f9
	rst  $38                                         ; $4d7b: $ff
	ld   a, a                                        ; $4d7c: $7f
	rst  $38                                         ; $4d7d: $ff
	add  d                                           ; $4d7e: $82
	add  b                                           ; $4d7f: $80
	rst  $38                                         ; $4d80: $ff
	add  c                                           ; $4d81: $81
	nop                                              ; $4d82: $00
	ld   [bc], a                                     ; $4d83: $02
	rlca                                             ; $4d84: $07
	rst  $38                                         ; $4d85: $ff
	rrca                                             ; $4d86: $0f
	add  c                                           ; $4d87: $81
	rst  $38                                         ; $4d88: $ff
	nop                                              ; $4d89: $00
	di                                               ; $4d8a: $f3
	add  c                                           ; $4d8b: $81
	rst  $38                                         ; $4d8c: $ff
	nop                                              ; $4d8d: $00
	inc  b                                           ; $4d8e: $04
	add  b                                           ; $4d8f: $80
	rst  $38                                         ; $4d90: $ff
	add  c                                           ; $4d91: $81
	nop                                              ; $4d92: $00
	ld   [bc], a                                     ; $4d93: $02
	rst  JumpTable                                         ; $4d94: $df
	rst  $38                                         ; $4d95: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d96: $cf
	add  c                                           ; $4d97: $81
	rst  $38                                         ; $4d98: $ff
	ld   b, $e7                                      ; $4d99: $06 $e7
	rst  $38                                         ; $4d9b: $ff
	ld   hl, sp-$01                                  ; $4d9c: $f8 $ff
	rlca                                             ; $4d9e: $07
	db   $fc                                         ; $4d9f: $fc
	db   $f4                                         ; $4da0: $f4
	add  b                                           ; $4da1: $80
	inc  b                                           ; $4da2: $04
	inc  c                                           ; $4da3: $0c
	ld   [bc], a                                     ; $4da4: $02
	ld   a, l                                        ; $4da5: $7d
	rst  $38                                         ; $4da6: $ff
	ccf                                              ; $4da7: $3f
	rst  $38                                         ; $4da8: $ff
	sbc  a                                           ; $4da9: $9f
	rst  $38                                         ; $4daa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dab: $cf
	rst  $38                                         ; $4dac: $ff
	db   $10                                         ; $4dad: $10
	rst  $38                                         ; $4dae: $ff
	push af                                          ; $4daf: $f5
	ld   a, [bc]                                     ; $4db0: $0a
	add  b                                           ; $4db1: $80
	dec  b                                           ; $4db2: $05
	add  b                                           ; $4db3: $80
	ld   a, [bc]                                     ; $4db4: $0a
	add  hl, bc                                      ; $4db5: $09
	sbc  a                                           ; $4db6: $9f
	rst  $38                                         ; $4db7: $ff
	adc  a                                           ; $4db8: $8f
	rst  $38                                         ; $4db9: $ff
	ldh  [rIE], a                                    ; $4dba: $e0 $ff
	dec  bc                                          ; $4dbc: $0b
	db   $fc                                         ; $4dbd: $fc
	dec  c                                           ; $4dbe: $0d
	push af                                          ; $4dbf: $f5
	add  b                                           ; $4dc0: $80
	xor  d                                           ; $4dc1: $aa
	add  b                                           ; $4dc2: $80
	ld   d, l                                        ; $4dc3: $55
	add  b                                           ; $4dc4: $80
	xor  d                                           ; $4dc5: $aa
	add  [hl]                                        ; $4dc6: $86
	nop                                              ; $4dc7: $00
	inc  bc                                          ; $4dc8: $03
	adc  h                                           ; $4dc9: $8c
	di                                               ; $4dca: $f3
	ld   [hl], e                                     ; $4dcb: $73
	di                                               ; $4dcc: $f3
	add  b                                           ; $4dcd: $80
	rst  $20                                         ; $4dce: $e7
	add  b                                           ; $4dcf: $80
	nop                                              ; $4dd0: $00
	nop                                              ; $4dd1: $00
	rst  $38                                         ; $4dd2: $ff
	add  [hl]                                        ; $4dd3: $86
	nop                                              ; $4dd4: $00
	add  e                                           ; $4dd5: $83
	rst  $38                                         ; $4dd6: $ff
	add  b                                           ; $4dd7: $80
	nop                                              ; $4dd8: $00
	nop                                              ; $4dd9: $00
	rst  $38                                         ; $4dda: $ff
	add  l                                           ; $4ddb: $85
	nop                                              ; $4ddc: $00
	ld   bc, $f30c                                   ; $4ddd: $01 $0c $f3
	add  b                                           ; $4de0: $80
	rst  $20                                         ; $4de1: $e7
	add  b                                           ; $4de2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4de3: $cf
	add  b                                           ; $4de4: $80
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	rst  $38                                         ; $4de7: $ff
	add  [hl]                                        ; $4de8: $86
	nop                                              ; $4de9: $00
	add  c                                           ; $4dea: $81
	ldh  a, [$80]                                    ; $4deb: $f0 $80
	ldh  [$80], a                                    ; $4ded: $e0 $80
	nop                                              ; $4def: $00
	inc  bc                                          ; $4df0: $03
	ccf                                              ; $4df1: $3f
	jr   nc, @+$4e                                   ; $4df2: $30 $4c

	ld   a, h                                        ; $4df4: $7c
	add  b                                           ; $4df5: $80
	ld   a, b                                        ; $4df6: $78
	add  b                                           ; $4df7: $80
	ld   a, h                                        ; $4df8: $7c
	add  b                                           ; $4df9: $80
	ld   a, b                                        ; $4dfa: $78
	rlca                                             ; $4dfb: $07
	inc  a                                           ; $4dfc: $3c
	ld   a, h                                        ; $4dfd: $7c
	ret  c                                           ; $4dfe: $d8

	ld   e, b                                        ; $4dff: $58
	xor  b                                           ; $4e00: $a8
	xor  h                                           ; $4e01: $ac
	inc  [hl]                                        ; $4e02: $34
	ret  nz                                          ; $4e03: $c0

	add  b                                           ; $4e04: $80
	nop                                              ; $4e05: $00
	adc  d                                           ; $4e06: $8a
	ret  nz                                          ; $4e07: $c0

	nop                                              ; $4e08: $00
	and  $83                                         ; $4e09: $e6 $83
	cp   $00                                         ; $4e0b: $fe $00
	nop                                              ; $4e0d: $00
	add  l                                           ; $4e0e: $85
	jr   jr_07e_4e13                                 ; $4e0f: $18 $02

	and  $fe                                         ; $4e11: $e6 $fe

jr_07e_4e13:
	rla                                              ; $4e13: $17
	adc  l                                           ; $4e14: $8d
	nop                                              ; $4e15: $00
	ld   [bc], a                                     ; $4e16: $02
	db   $eb                                         ; $4e17: $eb
	rst  $20                                         ; $4e18: $e7
	pop  hl                                          ; $4e19: $e1
	add  c                                           ; $4e1a: $81
	di                                               ; $4e1b: $f3
	ld   a, [bc]                                     ; $4e1c: $0a
	ldh  [c], a                                      ; $4e1d: $e2
	db   $e3                                         ; $4e1e: $e3
	push af                                          ; $4e1f: $f5
	rst  ToBoot                                         ; $4e20: $c7
	ld   l, d                                        ; $4e21: $6a
	adc  a                                           ; $4e22: $8f
	rst  ToBoot                                         ; $4e23: $c7
	adc  a                                           ; $4e24: $8f
	ld   a, [de]                                     ; $4e25: $1a
	sbc  a                                           ; $4e26: $9f
	ld   a, [hl+]                                    ; $4e27: $2a
	add  e                                           ; $4e28: $83
	ldh  [rTIMA], a                                  ; $4e29: $e0 $05
	cp   $3e                                         ; $4e2b: $fe $3e
	ld   e, a                                        ; $4e2d: $5f
	rst  $38                                         ; $4e2e: $ff
	sbc  e                                           ; $4e2f: $9b
	rst  $38                                         ; $4e30: $ff
	add  b                                           ; $4e31: $80
	rst  $28                                         ; $4e32: $ef
	ld   [bc], a                                     ; $4e33: $02
	xor  e                                           ; $4e34: $ab
	rst  $28                                         ; $4e35: $ef
	ld   h, [hl]                                     ; $4e36: $66
	add  l                                           ; $4e37: $85
	cp   $86                                         ; $4e38: $fe $86
	ld   a, [hl]                                     ; $4e3a: $7e
	nop                                              ; $4e3b: $00

jr_07e_4e3c:
	rlca                                             ; $4e3c: $07
	adc  [hl]                                        ; $4e3d: $8e
	db   $10                                         ; $4e3e: $10
	ld   hl, $dfff                                   ; $4e3f: $21 $ff $df
	rst  $38                                         ; $4e42: $ff
	add  b                                           ; $4e43: $80
	rst  $38                                         ; $4e44: $ff
	ld   a, a                                        ; $4e45: $7f
	rst  $38                                         ; $4e46: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e47: $cf
	rst  $38                                         ; $4e48: $ff
	inc  bc                                          ; $4e49: $03
	rst  $38                                         ; $4e4a: $ff
	ldh  a, [rIE]                                    ; $4e4b: $f0 $ff
	ccf                                              ; $4e4d: $3f
	rst  $38                                         ; $4e4e: $ff
	dec  sp                                          ; $4e4f: $3b
	rlca                                             ; $4e50: $07
	ldh  a, [$f7]                                    ; $4e51: $f0 $f7
	ld   h, a                                        ; $4e53: $67
	ldh  [$bc], a                                    ; $4e54: $e0 $bc
	db   $fc                                         ; $4e56: $fc
	ld   [$90ff], a                                  ; $4e57: $ea $ff $90
	rst  $38                                         ; $4e5a: $ff
	jr   jr_07e_4e3c                                 ; $4e5b: $18 $df

	inc  l                                           ; $4e5d: $2c
	xor  a                                           ; $4e5e: $af
	ld   bc, $00ff                                   ; $4e5f: $01 $ff $00
	add  b                                           ; $4e62: $80
	rst  $38                                         ; $4e63: $ff
	dec  c                                           ; $4e64: $0d
	nop                                              ; $4e65: $00
	sbc  a                                           ; $4e66: $9f
	rst  $38                                         ; $4e67: $ff
	ld   b, a                                        ; $4e68: $47
	ccf                                              ; $4e69: $3f
	ld   d, b                                        ; $4e6a: $50
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e6b: $cf
	daa                                              ; $4e6c: $27
	ldh  a, [rDIV]                                   ; $4e6d: $f0 $04
	db   $fc                                         ; $4e6f: $fc
	ld   d, a                                        ; $4e70: $57
	ldh  a, [rP1]                                    ; $4e71: $f0 $00
	add  b                                           ; $4e73: $80
	ldh  a, [rP1]                                    ; $4e74: $f0 $00
	nop                                              ; $4e76: $00
	add  d                                           ; $4e77: $82
	ldh  a, [rP1]                                    ; $4e78: $f0 $00
	nop                                              ; $4e7a: $00

jr_07e_4e7b:
	add  b                                           ; $4e7b: $80
	ldh  a, [$03]                                    ; $4e7c: $f0 $03
	nop                                              ; $4e7e: $00
	sub  b                                           ; $4e7f: $90
	ldh  a, [$6f]                                    ; $4e80: $f0 $6f
	add  l                                           ; $4e82: $85
	nop                                              ; $4e83: $00
	add  b                                           ; $4e84: $80
	ld   h, b                                        ; $4e85: $60
	inc  bc                                          ; $4e86: $03
	ld   d, b                                        ; $4e87: $50
	ld   [hl], b                                     ; $4e88: $70
	ld   l, b                                        ; $4e89: $68
	ld   a, b                                        ; $4e8a: $78
	add  b                                           ; $4e8b: $80
	ld   a, h                                        ; $4e8c: $7c
	nop                                              ; $4e8d: $00
	jr   nc, jr_07e_4e13                             ; $4e8e: $30 $83

	nop                                              ; $4e90: $00
	add  b                                           ; $4e91: $80
	jr   c, @+$08                                    ; $4e92: $38 $06

	ld   a, b                                        ; $4e94: $78
	ld   a, h                                        ; $4e95: $7c
	ld   [hl], h                                     ; $4e96: $74
	ld   a, h                                        ; $4e97: $7c
	inc  l                                           ; $4e98: $2c
	jr   c, jr_07e_4eb3                              ; $4e99: $38 $18

	add  e                                           ; $4e9b: $83
	nop                                              ; $4e9c: $00
	add  d                                           ; $4e9d: $82
	ldh  [$80], a                                    ; $4e9e: $e0 $80
	ld   b, c                                        ; $4ea0: $41
	add  b                                           ; $4ea1: $80
	ld   b, e                                        ; $4ea2: $43
	add  b                                           ; $4ea3: $80
	rst  $20                                         ; $4ea4: $e7
	add  b                                           ; $4ea5: $80
	rst  $28                                         ; $4ea6: $ef
	nop                                              ; $4ea7: $00
	rrca                                             ; $4ea8: $0f
	add  c                                           ; $4ea9: $81
	nop                                              ; $4eaa: $00
	add  b                                           ; $4eab: $80
	ld   d, b                                        ; $4eac: $50
	add  b                                           ; $4ead: $80
	and  b                                           ; $4eae: $a0
	add  [hl]                                        ; $4eaf: $86
	ldh  a, [$03]                                    ; $4eb0: $f0 $03
	and  l                                           ; $4eb2: $a5

jr_07e_4eb3:
	ld   d, h                                        ; $4eb3: $54
	xor  e                                           ; $4eb4: $ab
	xor  d                                           ; $4eb5: $aa
	add  b                                           ; $4eb6: $80
	ld   d, l                                        ; $4eb7: $55
	db   $10                                         ; $4eb8: $10
	ld   a, [hl+]                                    ; $4eb9: $2a
	xor  d                                           ; $4eba: $aa
	ld   d, b                                        ; $4ebb: $50
	ret  nc                                          ; $4ebc: $d0

	sbc  b                                           ; $4ebd: $98
	ldh  a, [$74]                                    ; $4ebe: $f0 $74
	add  sp, -$2b                                    ; $4ec0: $e8 $d5
	rst  JumpTable                                         ; $4ec2: $df
	ld   b, c                                        ; $4ec3: $41
	ret  nz                                          ; $4ec4: $c0

	nop                                              ; $4ec5: $00
	ret  nz                                          ; $4ec6: $c0

	ld   b, b                                        ; $4ec7: $40
	ret  nz                                          ; $4ec8: $c0

	ld   b, b                                        ; $4ec9: $40
	add  b                                           ; $4eca: $80
	ret  nz                                          ; $4ecb: $c0

	nop                                              ; $4ecc: $00
	ld   b, b                                        ; $4ecd: $40
	add  b                                           ; $4ece: $80
	nop                                              ; $4ecf: $00
	inc  b                                           ; $4ed0: $04
	jr   nz, jr_07e_4ed3                             ; $4ed1: $20 $00

jr_07e_4ed3:
	ldh  [$f8], a                                    ; $4ed3: $e0 $f8
	ld   e, $8d                                      ; $4ed5: $1e $8d
	cp   $00                                         ; $4ed7: $fe $00
	rla                                              ; $4ed9: $17
	adc  e                                           ; $4eda: $8b
	nop                                              ; $4edb: $00
	add  b                                           ; $4edc: $80
	stop                                             ; $4edd: $10 $00
	sub  b                                           ; $4edf: $90
	add  e                                           ; $4ee0: $83
	sbc  a                                           ; $4ee1: $9f
	add  b                                           ; $4ee2: $80
	sub  l                                           ; $4ee3: $95
	add  b                                           ; $4ee4: $80
	sbc  d                                           ; $4ee5: $9a
	add  b                                           ; $4ee6: $80
	add  b                                           ; $4ee7: $80
	add  d                                           ; $4ee8: $82

jr_07e_4ee9:
	nop                                              ; $4ee9: $00
	nop                                              ; $4eea: $00
	rst  $38                                         ; $4eeb: $ff
	add  b                                           ; $4eec: $80
	db   $10                                         ; $4eed: $10
	add  c                                           ; $4eee: $81
	rra                                              ; $4eef: $1f
	nop                                              ; $4ef0: $00
	inc  e                                           ; $4ef1: $1c
	add  b                                           ; $4ef2: $80
	cp   a                                           ; $4ef3: $bf
	inc  bc                                          ; $4ef4: $03
	rst  $38                                         ; $4ef5: $ff
	db   $fc                                         ; $4ef6: $fc
	rst  $38                                         ; $4ef7: $ff
	jr   jr_07e_4e7b                                 ; $4ef8: $18 $81

	rst  $38                                         ; $4efa: $ff
	nop                                              ; $4efb: $00
	add  c                                           ; $4efc: $81
	add  c                                           ; $4efd: $81
	ld   a, [hl]                                     ; $4efe: $7e
	add  h                                           ; $4eff: $84
	cp   $06                                         ; $4f00: $fe $06
	nop                                              ; $4f02: $00
	jr   jr_07e_4ee9                                 ; $4f03: $18 $e4

	db   $fc                                         ; $4f05: $fc
	rst  $20                                         ; $4f06: $e7
	rst  $38                                         ; $4f07: $ff
	rra                                              ; $4f08: $1f
	adc  c                                           ; $4f09: $89
	db   $10                                         ; $4f0a: $10
	add  b                                           ; $4f0b: $80
	nop                                              ; $4f0c: $00
	add  b                                           ; $4f0d: $80
	ldh  a, [rTMA]                                   ; $4f0e: $f0 $06
	inc  sp                                          ; $4f10: $33
	rst  $38                                         ; $4f11: $ff
	or   h                                           ; $4f12: $b4
	ld   hl, sp+$10                                  ; $4f13: $f8 $10
	ldh  [$80], a                                    ; $4f15: $e0 $80
	add  c                                           ; $4f17: $81
	nop                                              ; $4f18: $00
	add  b                                           ; $4f19: $80
	add  b                                           ; $4f1a: $80
	add  b                                           ; $4f1b: $80
	ld   b, b                                        ; $4f1c: $40
	add  b                                           ; $4f1d: $80
	and  b                                           ; $4f1e: $a0
	add  b                                           ; $4f1f: $80
	ld   d, a                                        ; $4f20: $57
	add  b                                           ; $4f21: $80
	xor  e                                           ; $4f22: $ab
	add  b                                           ; $4f23: $80
	ld   d, l                                        ; $4f24: $55
	add  b                                           ; $4f25: $80
	ld   a, [hl+]                                    ; $4f26: $2a
	add  b                                           ; $4f27: $80
	dec  d                                           ; $4f28: $15
	add  b                                           ; $4f29: $80
	ld   a, [hl+]                                    ; $4f2a: $2a
	add  b                                           ; $4f2b: $80
	dec  d                                           ; $4f2c: $15
	add  b                                           ; $4f2d: $80
	ld   a, [bc]                                     ; $4f2e: $0a
	inc  hl                                          ; $4f2f: $23
	ld   d, l                                        ; $4f30: $55
	rst  $38                                         ; $4f31: $ff
	nop                                              ; $4f32: $00
	rst  $38                                         ; $4f33: $ff
	add  b                                           ; $4f34: $80
	rst  $38                                         ; $4f35: $ff

jr_07e_4f36:
	ret  nz                                          ; $4f36: $c0

	rst  $38                                         ; $4f37: $ff
	ld   h, b                                        ; $4f38: $60
	ld   a, a                                        ; $4f39: $7f
	or   b                                           ; $4f3a: $b0
	cp   a                                           ; $4f3b: $bf
	ld   e, b                                        ; $4f3c: $58
	ld   e, a                                        ; $4f3d: $5f
	xor  h                                           ; $4f3e: $ac
	xor  a                                           ; $4f3f: $af
	pop  bc                                          ; $4f40: $c1
	jr   nc, jr_07e_4f83                             ; $4f41: $30 $40

	ret  nz                                          ; $4f43: $c0

	jr   nz, jr_07e_4f36                             ; $4f44: $20 $f0

	nop                                              ; $4f46: $00
	ldh  a, [rP1]                                    ; $4f47: $f0 $00
	ldh  a, [rP1]                                    ; $4f49: $f0 $00

jr_07e_4f4b:
	ldh  a, [rP1]                                    ; $4f4b: $f0 $00
	ldh  a, [rP1]                                    ; $4f4d: $f0 $00
	ldh  a, [$9f]                                    ; $4f4f: $f0 $9f
	jr   nc, jr_07e_4f9f                             ; $4f51: $30 $4c

	ld   a, h                                        ; $4f53: $7c
	add  b                                           ; $4f54: $80
	ld   a, b                                        ; $4f55: $78
	add  b                                           ; $4f56: $80
	ld   a, h                                        ; $4f57: $7c
	add  b                                           ; $4f58: $80
	ld   a, b                                        ; $4f59: $78
	add  b                                           ; $4f5a: $80
	ld   a, h                                        ; $4f5b: $7c
	add  b                                           ; $4f5c: $80
	ld   a, b                                        ; $4f5d: $78
	add  b                                           ; $4f5e: $80
	ld   a, h                                        ; $4f5f: $7c
	ld   bc, $7f4f                                   ; $4f60: $01 $4f $7f
	add  b                                           ; $4f63: $80
	rlca                                             ; $4f64: $07
	add  d                                           ; $4f65: $82
	rrca                                             ; $4f66: $0f
	add  b                                           ; $4f67: $80
	daa                                              ; $4f68: $27
	add  b                                           ; $4f69: $80
	ld   b, e                                        ; $4f6a: $43
	add  d                                           ; $4f6b: $82
	pop  bc                                          ; $4f6c: $c1
	add  b                                           ; $4f6d: $80
	adc  a                                           ; $4f6e: $8f
	add  b                                           ; $4f6f: $80
	rst  ToBoot                                         ; $4f70: $c7
	add  b                                           ; $4f71: $80
	di                                               ; $4f72: $f3
	add  b                                           ; $4f73: $80
	ld   sp, hl                                      ; $4f74: $f9
	ld   c, $9c                                      ; $4f75: $0e $9c
	db   $fc                                         ; $4f77: $fc
	xor  [hl]                                        ; $4f78: $ae
	cp   $f6                                         ; $4f79: $fe $f6
	cp   $de                                         ; $4f7b: $fe $de
	cp   $f7                                         ; $4f7d: $fe $f7
	ldh  a, [$d0]                                    ; $4f7f: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $4f81: $f0 $a0

jr_07e_4f83:
	ldh  a, [$60]                                    ; $4f83: $f0 $60
	add  b                                           ; $4f85: $80
	ret  nz                                          ; $4f86: $c0

	add  b                                           ; $4f87: $80
	add  b                                           ; $4f88: $80
	add  e                                           ; $4f89: $83
	nop                                              ; $4f8a: $00
	ld   bc, $9f91                                   ; $4f8b: $01 $91 $9f
	add  d                                           ; $4f8e: $82
	rra                                              ; $4f8f: $1f
	ld   [bc], a                                     ; $4f90: $02
	ld   b, $07                                      ; $4f91: $06 $07
	inc  b                                           ; $4f93: $04
	add  c                                           ; $4f94: $81
	rlca                                             ; $4f95: $07
	inc  b                                           ; $4f96: $04
	rla                                              ; $4f97: $17
	rra                                              ; $4f98: $1f
	inc  bc                                          ; $4f99: $03
	rrca                                             ; $4f9a: $0f
	rlca                                             ; $4f9b: $07
	add  e                                           ; $4f9c: $83
	ld   hl, sp+$02                                  ; $4f9d: $f8 $02

jr_07e_4f9f:
	nop                                              ; $4f9f: $00
	ld   hl, sp+$20                                  ; $4fa0: $f8 $20
	add  l                                           ; $4fa2: $85
	ldh  [rP1], a                                    ; $4fa3: $e0 $00
	ld   h, $89                                      ; $4fa5: $26 $89
	cp   $04                                         ; $4fa7: $fe $04
	inc  h                                           ; $4fa9: $24
	inc  a                                           ; $4faa: $3c
	and  $fe                                         ; $4fab: $e6 $fe
	rlca                                             ; $4fad: $07
	adc  l                                           ; $4fae: $8d
	stop                                             ; $4faf: $10 $00
	ldh  a, [rIE]                                    ; $4fb1: $f0 $ff
	nop                                              ; $4fb3: $00
	rst  $38                                         ; $4fb4: $ff
	nop                                              ; $4fb5: $00
	rst  $38                                         ; $4fb6: $ff
	nop                                              ; $4fb7: $00
	rst  $38                                         ; $4fb8: $ff
	nop                                              ; $4fb9: $00
	rst  $38                                         ; $4fba: $ff
	nop                                              ; $4fbb: $00
	rst  $38                                         ; $4fbc: $ff
	nop                                              ; $4fbd: $00
	rst  $30                                         ; $4fbe: $f7
	nop                                              ; $4fbf: $00
	adc  $00                                         ; $4fc0: $ce $00
	add  [hl]                                        ; $4fc2: $86
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	rst  $38                                         ; $4fc5: $ff
	add  b                                           ; $4fc6: $80
	ld   c, d                                        ; $4fc7: $4a
	add  b                                           ; $4fc8: $80
	jr   nc, jr_07e_4f4b                             ; $4fc9: $30 $80

	nop                                              ; $4fcb: $00
	ld   bc, $bf40                                   ; $4fcc: $01 $40 $bf
	add  l                                           ; $4fcf: $85
	nop                                              ; $4fd0: $00
	ld   [$6dff], sp                                 ; $4fd1: $08 $ff $6d
	db   $ed                                         ; $4fd4: $ed
	jp   nc, $e112                                   ; $4fd5: $d2 $12 $e1

	ld   sp, $bcd3                                   ; $4fd8: $31 $d3 $bc
	add  l                                           ; $4fdb: $85
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	rst  $38                                         ; $4fde: $ff
	add  b                                           ; $4fdf: $80
	push af                                          ; $4fe0: $f5
	dec  b                                           ; $4fe1: $05
	ld   hl, sp-$48                                  ; $4fe2: $f8 $b8
	pop  de                                          ; $4fe4: $d1
	ld   [hl], c                                     ; $4fe5: $71
	ldh  [rIE], a                                    ; $4fe6: $e0 $ff
	add  l                                           ; $4fe8: $85
	nop                                              ; $4fe9: $00
	add  b                                           ; $4fea: $80
	ld   d, b                                        ; $4feb: $50
	ld   [bc], a                                     ; $4fec: $02
	ldh  [rSVBK], a                                  ; $4fed: $e0 $70
	ld   h, b                                        ; $4fef: $60
	add  b                                           ; $4ff0: $80
	ldh  a, [rSB]                                    ; $4ff1: $f0 $01
	add  b                                           ; $4ff3: $80
	ld   a, a                                        ; $4ff4: $7f
	add  b                                           ; $4ff5: $80
	inc  c                                           ; $4ff6: $0c
	inc  b                                           ; $4ff7: $04
	nop                                              ; $4ff8: $00
	ld   b, $00                                      ; $4ff9: $06 $00
	ld   b, $00                                      ; $4ffb: $06 $00
	add  [hl]                                        ; $4ffd: $86
	rrca                                             ; $4ffe: $0f
	ld   bc, $01f1                                   ; $4fff: $01 $f1 $01
	add  b                                           ; $5002: $80
	rlca                                             ; $5003: $07
	add  b                                           ; $5004: $80
	rra                                              ; $5005: $1f
	add  b                                           ; $5006: $80
	ld   a, a                                        ; $5007: $7f
	adc  h                                           ; $5008: $8c
	rst  $38                                         ; $5009: $ff
	ld   [hl-], a                                    ; $500a: $32
	db   $fc                                         ; $500b: $fc
	rst  $38                                         ; $500c: $ff
	di                                               ; $500d: $f3
	rst  $38                                         ; $500e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $500f: $cf
	rst  $38                                         ; $5010: $ff
	ccf                                              ; $5011: $3f
	rst  $38                                         ; $5012: $ff
	nop                                              ; $5013: $00
	rst  $38                                         ; $5014: $ff
	ldh  a, [rIE]                                    ; $5015: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5017: $cf
	rst  $38                                         ; $5018: $ff
	ld   a, $ff                                      ; $5019: $3e $ff
	db   $fc                                         ; $501b: $fc
	rst  $38                                         ; $501c: $ff
	pop  af                                          ; $501d: $f1
	rst  $38                                         ; $501e: $ff
	jp   $8fff                                       ; $501f: $c3 $ff $8f


	rst  $38                                         ; $5022: $ff
	ccf                                              ; $5023: $3f
	rst  $38                                         ; $5024: $ff
	ld   b, b                                        ; $5025: $40
	rst  $38                                         ; $5026: $ff
	sub  a                                           ; $5027: $97
	rst  $38                                         ; $5028: $ff
	ld   [bc], a                                     ; $5029: $02
	rst  $38                                         ; $502a: $ff
	ld   b, h                                        ; $502b: $44
	rst  $38                                         ; $502c: $ff
	db   $ed                                         ; $502d: $ed
	rst  $38                                         ; $502e: $ff
	cp   $ff                                         ; $502f: $fe $ff
	ld   sp, hl                                      ; $5031: $f9
	rst  $38                                         ; $5032: $ff
	db   $f4                                         ; $5033: $f4
	rst  $38                                         ; $5034: $ff
	ld   [$f7ff], sp                                 ; $5035: $08 $ff $f7
	rst  $38                                         ; $5038: $ff
	rst  $28                                         ; $5039: $ef
	rst  $38                                         ; $503a: $ff
	rst  JumpTable                                         ; $503b: $df
	rst  $38                                         ; $503c: $ff
	ccf                                              ; $503d: $3f
	add  c                                           ; $503e: $81
	rst  $38                                         ; $503f: $ff
	ld   a, [bc]                                     ; $5040: $0a
	cp   $ff                                         ; $5041: $fe $ff
	ld   bc, $0bff                                   ; $5043: $01 $ff $0b
	ei                                               ; $5046: $fb
	ldh  [rIE], a                                    ; $5047: $e0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5049: $cf
	rst  $38                                         ; $504a: $ff
	sbc  [hl]                                        ; $504b: $9e
	add  c                                           ; $504c: $81
	rst  $38                                         ; $504d: $ff
	inc  d                                           ; $504e: $14
	inc  a                                           ; $504f: $3c
	rst  $38                                         ; $5050: $ff
	ld   a, c                                        ; $5051: $79
	rst  $38                                         ; $5052: $ff
	db   $fc                                         ; $5053: $fc
	rst  $38                                         ; $5054: $ff
	db   $fd                                         ; $5055: $fd
	dec  de                                          ; $5056: $1b
	dec  e                                           ; $5057: $1d
	rrca                                             ; $5058: $0f
	ld   c, $0f                                      ; $5059: $0e $0f
	add  c                                           ; $505b: $81
	sub  e                                           ; $505c: $93
	rra                                              ; $505d: $1f

jr_07e_505e:
	sbc  e                                           ; $505e: $9b
	db   $db                                         ; $505f: $db
	cp   e                                           ; $5060: $bb
	or   e                                           ; $5061: $b3

jr_07e_5062:
	cp   a                                           ; $5062: $bf
	rrca                                             ; $5063: $0f
	add  b                                           ; $5064: $80
	ccf                                              ; $5065: $3f
	dec  c                                           ; $5066: $0d
	rst  $38                                         ; $5067: $ff
	ld   a, a                                        ; $5068: $7f
	rst  $38                                         ; $5069: $ff
	cpl                                              ; $506a: $2f
	rst  $38                                         ; $506b: $ff
	ld   b, a                                        ; $506c: $47
	rst  $38                                         ; $506d: $ff
	rst  JumpTable                                         ; $506e: $df
	rst  $38                                         ; $506f: $ff
	rst  JumpTable                                         ; $5070: $df
	rst  $38                                         ; $5071: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5072: $cf
	rst  $38                                         ; $5073: $ff
	ldh  [$81], a                                    ; $5074: $e0 $81
	rst  $38                                         ; $5076: $ff
	ld   b, $ee                                      ; $5077: $06 $ee
	rst  $38                                         ; $5079: $ff
	db   $e4                                         ; $507a: $e4
	rst  $38                                         ; $507b: $ff
	ldh  [c], a                                      ; $507c: $e2
	rst  $38                                         ; $507d: $ff
	rst  $30                                         ; $507e: $f7
	add  c                                           ; $507f: $81
	rst  $38                                         ; $5080: $ff
	inc  b                                           ; $5081: $04
	sbc  a                                           ; $5082: $9f
	rst  $38                                         ; $5083: $ff
	ld   a, a                                        ; $5084: $7f
	rst  $38                                         ; $5085: $ff
	cp   b                                           ; $5086: $b8
	add  c                                           ; $5087: $81
	rst  $38                                         ; $5088: $ff
	inc  b                                           ; $5089: $04
	cp   $ff                                         ; $508a: $fe $ff
	ld   a, [$feff]                                  ; $508c: $fa $ff $fe
	add  e                                           ; $508f: $83
	rst  $38                                         ; $5090: $ff
	ld   a, [bc]                                     ; $5091: $0a
	add  e                                           ; $5092: $83
	rst  $38                                         ; $5093: $ff
	pop  hl                                          ; $5094: $e1
	rst  $38                                         ; $5095: $ff
	ld   c, a                                        ; $5096: $4f
	rst  $38                                         ; $5097: $ff
	rra                                              ; $5098: $1f
	rst  $38                                         ; $5099: $ff
	ld   e, a                                        ; $509a: $5f
	rst  $38                                         ; $509b: $ff
	rst  $20                                         ; $509c: $e7
	add  e                                           ; $509d: $83
	rst  $38                                         ; $509e: $ff
	add  hl, bc                                      ; $509f: $09
	ldh  a, [rIE]                                    ; $50a0: $f0 $ff
	call c, $1a00                                    ; $50a2: $dc $00 $1a
	nop                                              ; $50a5: $00
	ret  nz                                          ; $50a6: $c0

	nop                                              ; $50a7: $00
	call z, $820c                                    ; $50a8: $cc $0c $82
	ld   e, $80                                      ; $50ab: $1e $80
	inc  c                                           ; $50ad: $0c
	ld   c, $c0                                      ; $50ae: $0e $c0
	nop                                              ; $50b0: $00
	adc  $37                                         ; $50b1: $ce $37
	rst  $20                                         ; $50b3: $e7
	db   $eb                                         ; $50b4: $eb
	rst  $38                                         ; $50b5: $ff
	rst  $30                                         ; $50b6: $f7
	sbc  c                                           ; $50b7: $99
	cp   [hl]                                        ; $50b8: $be
	ld   h, c                                        ; $50b9: $61
	ld   d, a                                        ; $50ba: $57
	ld   de, $2723                                   ; $50bb: $11 $23 $27
	add  b                                           ; $50be: $80
	ld   b, e                                        ; $50bf: $43
	dec  b                                           ; $50c0: $05
	inc  hl                                          ; $50c1: $23
	ld   h, l                                        ; $50c2: $65
	pop  de                                          ; $50c3: $d1
	sub  d                                           ; $50c4: $92
	and  d                                           ; $50c5: $a2
	and  b                                           ; $50c6: $a0
	add  b                                           ; $50c7: $80
	ret  nz                                          ; $50c8: $c0

	add  b                                           ; $50c9: $80
	and  b                                           ; $50ca: $a0
	ld   a, [bc]                                     ; $50cb: $0a
	ld   [bc], a                                     ; $50cc: $02
	ld   d, d                                        ; $50cd: $52
	ld   d, h                                        ; $50ce: $54
	or   h                                           ; $50cf: $b4
	cp   h                                           ; $50d0: $bc
	ld   hl, sp+$5a                                  ; $50d1: $f8 $5a
	and  c                                           ; $50d3: $a1
	ret  nz                                          ; $50d4: $c0

	db   $10                                         ; $50d5: $10
	ret  nc                                          ; $50d6: $d0

	add  b                                           ; $50d7: $80
	ld   b, b                                        ; $50d8: $40
	add  b                                           ; $50d9: $80
	sub  b                                           ; $50da: $90
	add  b                                           ; $50db: $80
	jr   nz, jr_07e_505e                             ; $50dc: $20 $80

	ld   [hl], b                                     ; $50de: $70
	add  b                                           ; $50df: $80
	jr   nz, jr_07e_5062                             ; $50e0: $20 $80

	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	ldh  a, [$83]                                    ; $50e4: $f0 $83
	rrca                                             ; $50e6: $0f
	ld   [bc], a                                     ; $50e7: $02
	inc  c                                           ; $50e8: $0c
	rrca                                             ; $50e9: $0f
	inc  bc                                          ; $50ea: $03
	add  l                                           ; $50eb: $85
	rrca                                             ; $50ec: $0f
	ld   a, [de]                                     ; $50ed: $1a
	ld   [$c2ff], sp                                 ; $50ee: $08 $ff $c2
	rst  $38                                         ; $50f1: $ff
	inc  [hl]                                        ; $50f2: $34
	rst  $38                                         ; $50f3: $ff
	db   $fc                                         ; $50f4: $fc
	rst  $38                                         ; $50f5: $ff
	db   $fc                                         ; $50f6: $fc
	rst  $38                                         ; $50f7: $ff
	db   $fc                                         ; $50f8: $fc
	rst  $38                                         ; $50f9: $ff
	pop  af                                          ; $50fa: $f1
	rst  $38                                         ; $50fb: $ff
	db   $e3                                         ; $50fc: $e3
	rst  $38                                         ; $50fd: $ff
	ld   de, $bdff                                   ; $50fe: $11 $ff $bd
	rst  $38                                         ; $5101: $ff
	inc  sp                                          ; $5102: $33
	rst  $38                                         ; $5103: $ff
	ld   l, a                                        ; $5104: $6f
	rst  $38                                         ; $5105: $ff
	sbc  a                                           ; $5106: $9f
	rst  $38                                         ; $5107: $ff
	ld   a, a                                        ; $5108: $7f
	adc  c                                           ; $5109: $89
	rst  $38                                         ; $510a: $ff
	ld   [de], a                                     ; $510b: $12
	cp   $ff                                         ; $510c: $fe $ff
	db   $fd                                         ; $510e: $fd
	rst  $38                                         ; $510f: $ff
	ld   hl, sp-$01                                  ; $5110: $f8 $ff
	di                                               ; $5112: $f3
	rst  $38                                         ; $5113: $ff
	rst  $20                                         ; $5114: $e7
	rst  $38                                         ; $5115: $ff
	ldh  a, [rIE]                                    ; $5116: $f0 $ff
	push de                                          ; $5118: $d5
	rst  $38                                         ; $5119: $ff
	adc  b                                           ; $511a: $88
	rst  $38                                         ; $511b: $ff
	dec  a                                           ; $511c: $3d
	rst  $38                                         ; $511d: $ff
	ld   a, a                                        ; $511e: $7f
	add  l                                           ; $511f: $85
	rst  $38                                         ; $5120: $ff
	ld   de, $ff01                                   ; $5121: $11 $01 $ff
	db   $dd                                         ; $5124: $dd
	rst  $38                                         ; $5125: $ff
	sbc  e                                           ; $5126: $9b
	rst  $38                                         ; $5127: $ff
	rla                                              ; $5128: $17
	rst  $38                                         ; $5129: $ff
	rrca                                             ; $512a: $0f
	rst  $38                                         ; $512b: $ff
	ccf                                              ; $512c: $3f
	rst  $38                                         ; $512d: $ff
	ld   e, a                                        ; $512e: $5f
	rst  $38                                         ; $512f: $ff
	cp   a                                           ; $5130: $bf
	rst  $38                                         ; $5131: $ff
	ld   [hl], c                                     ; $5132: $71
	cp   $80                                         ; $5133: $fe $80
	rst  $38                                         ; $5135: $ff
	ld   b, $e3                                      ; $5136: $06 $e3
	rst  $38                                         ; $5138: $ff
	call $fcff                                       ; $5139: $cd $ff $fc
	rst  $38                                         ; $513c: $ff
	sbc  l                                           ; $513d: $9d
	add  c                                           ; $513e: $81
	rst  $38                                         ; $513f: $ff
	ld   [bc], a                                     ; $5140: $02
	ccf                                              ; $5141: $3f
	rst  $38                                         ; $5142: $ff
	rrca                                             ; $5143: $0f
	add  c                                           ; $5144: $81
	ld   a, a                                        ; $5145: $7f
	ld   [$ffaf], sp                                 ; $5146: $08 $af $ff
	ccf                                              ; $5149: $3f
	rst  $38                                         ; $514a: $ff
	ld   e, a                                        ; $514b: $5f
	rst  $38                                         ; $514c: $ff
	ld   a, a                                        ; $514d: $7f
	rst  $38                                         ; $514e: $ff
	ccf                                              ; $514f: $3f
	add  c                                           ; $5150: $81
	rst  $38                                         ; $5151: $ff
	ld   a, [bc]                                     ; $5152: $0a
	ld   b, c                                        ; $5153: $41
	rst  $38                                         ; $5154: $ff
	db   $f4                                         ; $5155: $f4
	rst  $38                                         ; $5156: $ff
	and  d                                           ; $5157: $a2
	rst  $38                                         ; $5158: $ff
	rst  ToBoot                                         ; $5159: $c7
	rst  $38                                         ; $515a: $ff
	rst  $28                                         ; $515b: $ef
	rst  $38                                         ; $515c: $ff
	ccf                                              ; $515d: $3f
	add  e                                           ; $515e: $83
	rst  $38                                         ; $515f: $ff
	ld   [bc], a                                     ; $5160: $02
	cp   a                                           ; $5161: $bf
	rst  $38                                         ; $5162: $ff
	ld   a, a                                        ; $5163: $7f
	add  e                                           ; $5164: $83
	rst  $38                                         ; $5165: $ff
	nop                                              ; $5166: $00
	ccf                                              ; $5167: $3f
	add  l                                           ; $5168: $85
	rst  $38                                         ; $5169: $ff
	ld   [$ff81], sp                                 ; $516a: $08 $81 $ff
	db   $eb                                         ; $516d: $eb
	rst  $38                                         ; $516e: $ff
	jp   $88ff                                       ; $516f: $c3 $ff $88


	rst  $38                                         ; $5172: $ff
	rst  JumpTable                                         ; $5173: $df
	add  l                                           ; $5174: $85
	rst  $38                                         ; $5175: $ff
	inc  c                                           ; $5176: $0c
	ld   a, e                                        ; $5177: $7b
	rst  $38                                         ; $5178: $ff
	db   $fc                                         ; $5179: $fc
	rst  $38                                         ; $517a: $ff
	db   $fc                                         ; $517b: $fc
	rst  $38                                         ; $517c: $ff
	ld   hl, sp-$01                                  ; $517d: $f8 $ff
	cp   $ff                                         ; $517f: $fe $ff
	cp   $ff                                         ; $5181: $fe $ff
	db   $fc                                         ; $5183: $fc
	add  c                                           ; $5184: $81
	rst  $38                                         ; $5185: $ff
	nop                                              ; $5186: $00
	ret  nz                                          ; $5187: $c0

	add  l                                           ; $5188: $85
	nop                                              ; $5189: $00
	ld   [bc], a                                     ; $518a: $02
	ret  nz                                          ; $518b: $c0

	nop                                              ; $518c: $00
	ret  nz                                          ; $518d: $c0

	add  c                                           ; $518e: $81
	nop                                              ; $518f: $00
	ld   [bc], a                                     ; $5190: $02
	ld   b, $00                                      ; $5191: $06 $00
	ld   a, [hl-]                                    ; $5193: $3a
	add  c                                           ; $5194: $81
	nop                                              ; $5195: $00
	dec  h                                           ; $5196: $25
	jp   $f000                                       ; $5197: $c3 $00 $f0


	nop                                              ; $519a: $00
	dec  a                                           ; $519b: $3d
	nop                                              ; $519c: $00
	dec  c                                           ; $519d: $0d
	ld   [bc], a                                     ; $519e: $02
	ld   a, [de]                                     ; $519f: $1a
	ld   b, $86                                      ; $51a0: $06 $86
	ld   h, [hl]                                     ; $51a2: $66
	push bc                                          ; $51a3: $c5
	ld   a, $11                                      ; $51a4: $3e $11
	ccf                                              ; $51a6: $3f
	dec  hl                                          ; $51a7: $2b
	dec  d                                           ; $51a8: $15
	dec  de                                          ; $51a9: $1b
	rrca                                             ; $51aa: $0f
	sub  e                                           ; $51ab: $93
	rla                                              ; $51ac: $17
	dec  c                                           ; $51ad: $0d
	dec  bc                                          ; $51ae: $0b
	ld   b, d                                        ; $51af: $42
	nop                                              ; $51b0: $00
	jr   nc, jr_07e_51b3                             ; $51b1: $30 $00

jr_07e_51b3:
	rst  $38                                         ; $51b3: $ff
	ret  nz                                          ; $51b4: $c0

	ld   d, b                                        ; $51b5: $50
	and  b                                           ; $51b6: $a0
	jr   nc, jr_07e_51c9                             ; $51b7: $30 $10

	nop                                              ; $51b9: $00
	and  b                                           ; $51ba: $a0
	ret  nc                                          ; $51bb: $d0

	ld   h, b                                        ; $51bc: $60
	add  b                                           ; $51bd: $80
	ret  nc                                          ; $51be: $d0

	add  b                                           ; $51bf: $80
	ldh  [$80], a                                    ; $51c0: $e0 $80
	ld   d, b                                        ; $51c2: $50
	db   $10                                         ; $51c3: $10
	ldh  a, [rIE]                                    ; $51c4: $f0 $ff
	ld   a, e                                        ; $51c6: $7b
	rst  $38                                         ; $51c7: $ff
	pop  af                                          ; $51c8: $f1

jr_07e_51c9:
	rst  $38                                         ; $51c9: $ff
	or   c                                           ; $51ca: $b1
	rst  $38                                         ; $51cb: $ff
	push af                                          ; $51cc: $f5
	rst  $38                                         ; $51cd: $ff
	rst  $28                                         ; $51ce: $ef
	rst  $38                                         ; $51cf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51d0: $cf
	rst  $38                                         ; $51d1: $ff
	rra                                              ; $51d2: $1f
	rst  $38                                         ; $51d3: $ff
	ld   c, $80                                      ; $51d4: $0e $80
	pop  bc                                          ; $51d6: $c1
	add  e                                           ; $51d7: $83
	db   $dd                                         ; $51d8: $dd
	add  b                                           ; $51d9: $80
	call c, Call_07e_5d80                            ; $51da: $dc $80 $5d
	add  b                                           ; $51dd: $80
	adc  b                                           ; $51de: $88
	add  b                                           ; $51df: $80
	ld   d, l                                        ; $51e0: $55
	ld   a, [bc]                                     ; $51e1: $0a
	ldh  [c], a                                      ; $51e2: $e2
	ld   a, a                                        ; $51e3: $7f
	ld   e, a                                        ; $51e4: $5f
	ld   a, a                                        ; $51e5: $7f
	ld   l, [hl]                                     ; $51e6: $6e
	ld   a, a                                        ; $51e7: $7f
	halt                                             ; $51e8: $76
	ld   a, a                                        ; $51e9: $7f
	ld   a, c                                        ; $51ea: $79
	ld   a, a                                        ; $51eb: $7f
	ld   a, [hl]                                     ; $51ec: $7e
	add  c                                           ; $51ed: $81
	ld   a, a                                        ; $51ee: $7f
	inc  hl                                          ; $51ef: $23
	nop                                              ; $51f0: $00
	ld   a, a                                        ; $51f1: $7f
	ldh  a, [rIE]                                    ; $51f2: $f0 $ff
	rst  $10                                         ; $51f4: $d7
	rst  $38                                         ; $51f5: $ff
	add  c                                           ; $51f6: $81
	rst  $38                                         ; $51f7: $ff
	jr   @+$01                                       ; $51f8: $18 $ff

	ld   a, $ff                                      ; $51fa: $3e $ff
	cp   a                                           ; $51fc: $bf
	rst  $38                                         ; $51fd: $ff
	ld   a, a                                        ; $51fe: $7f
	rst  $38                                         ; $51ff: $ff
	ld   e, a                                        ; $5200: $5f
	rst  $38                                         ; $5201: $ff
	ld   [de], a                                     ; $5202: $12
	cp   $f0                                         ; $5203: $fe $f0
	rst  $38                                         ; $5205: $ff
	db   $fc                                         ; $5206: $fc
	rst  $38                                         ; $5207: $ff
	ld   a, a                                        ; $5208: $7f
	rst  $38                                         ; $5209: $ff
	ccf                                              ; $520a: $3f
	rst  $38                                         ; $520b: $ff
	adc  a                                           ; $520c: $8f
	rst  $38                                         ; $520d: $ff
	rst  ToBoot                                         ; $520e: $c7
	rst  $38                                         ; $520f: $ff
	ldh  a, [rIE]                                    ; $5210: $f0 $ff
	add  a                                           ; $5212: $87
	add  b                                           ; $5213: $80
	add  b                                           ; $5214: $80
	call nc, $3a0a                                   ; $5215: $d4 $0a $3a
	ld   a, [$ff0f]                                  ; $5218: $fa $0f $ff
	jp   $f0ff                                       ; $521b: $c3 $ff $f0


	rst  $38                                         ; $521e: $ff
	db   $fc                                         ; $521f: $fc
	rst  $38                                         ; $5220: $ff
	nop                                              ; $5221: $00
	add  b                                           ; $5222: $80
	rst  $38                                         ; $5223: $ff
	add  c                                           ; $5224: $81
	nop                                              ; $5225: $00
	add  b                                           ; $5226: $80
	xor  d                                           ; $5227: $aa
	add  b                                           ; $5228: $80
	push de                                          ; $5229: $d5
	add  b                                           ; $522a: $80
	rst  $38                                         ; $522b: $ff
	ld   b, $af                                      ; $522c: $06 $af
	rst  $38                                         ; $522e: $ff
	ld   b, l                                        ; $522f: $45
	rst  $38                                         ; $5230: $ff
	add  sp, -$01                                    ; $5231: $e8 $ff
	db   $fd                                         ; $5233: $fd
	add  c                                           ; $5234: $81
	nop                                              ; $5235: $00
	add  b                                           ; $5236: $80
	and  b                                           ; $5237: $a0
	add  d                                           ; $5238: $82
	ldh  a, [rAUD2LEN]                               ; $5239: $f0 $16
	ldh  [$f0], a                                    ; $523b: $e0 $f0
	ld   b, b                                        ; $523d: $40
	ldh  a, [rAUD4LEN]                               ; $523e: $f0 $20
	ldh  a, [rPCM12]                                 ; $5240: $f0 $76
	rst  $38                                         ; $5242: $ff
	xor  [hl]                                        ; $5243: $ae
	rst  $38                                         ; $5244: $ff
	inc  de                                          ; $5245: $13
	rst  $38                                         ; $5246: $ff
	cp   a                                           ; $5247: $bf
	rst  $38                                         ; $5248: $ff
	ld   sp, hl                                      ; $5249: $f9
	rst  $38                                         ; $524a: $ff
	or   $ff                                         ; $524b: $f6 $ff
	di                                               ; $524d: $f3
	rst  $38                                         ; $524e: $ff
	di                                               ; $524f: $f3
	rst  $38                                         ; $5250: $ff
	add  hl, hl                                      ; $5251: $29
	add  b                                           ; $5252: $80
	nop                                              ; $5253: $00
	inc  c                                           ; $5254: $0c
	add  b                                           ; $5255: $80
	and  c                                           ; $5256: $a1
	ret  nz                                          ; $5257: $c0

	ld   b, b                                        ; $5258: $40
	add  c                                           ; $5259: $81
	ld   bc, $7c81                                   ; $525a: $01 $81 $7c
	add  c                                           ; $525d: $81
	ld   a, a                                        ; $525e: $7f
	adc  c                                           ; $525f: $89
	rst  $38                                         ; $5260: $ff
	adc  c                                           ; $5261: $89
	add  b                                           ; $5262: $80
	ld   a, a                                        ; $5263: $7f
	jr   jr_07e_52a3                                 ; $5264: $18 $3d

	ld   a, a                                        ; $5266: $7f
	ld   e, b                                        ; $5267: $58
	rst  $38                                         ; $5268: $ff
	add  sp, -$01                                    ; $5269: $e8 $ff
	db   $fc                                         ; $526b: $fc
	rst  $38                                         ; $526c: $ff
	push af                                          ; $526d: $f5
	rst  $38                                         ; $526e: $ff
	ld   a, c                                        ; $526f: $79
	rst  $38                                         ; $5270: $ff
	inc  a                                           ; $5271: $3c
	rst  $38                                         ; $5272: $ff
	ld   c, $ff                                      ; $5273: $0e $ff
	rlca                                             ; $5275: $07
	rst  $38                                         ; $5276: $ff
	or   c                                           ; $5277: $b1
	rst  $38                                         ; $5278: $ff
	ld   a, [$fdff]                                  ; $5279: $fa $ff $fd
	rst  $38                                         ; $527c: $ff
	cp   $83                                         ; $527d: $fe $83
	rst  $38                                         ; $527f: $ff
	inc  b                                           ; $5280: $04
	cp   $06                                         ; $5281: $fe $06
	ld   e, $26                                      ; $5283: $1e $26
	and  [hl]                                        ; $5285: $a6
	add  a                                           ; $5286: $87
	ld   h, [hl]                                     ; $5287: $66
	ld   [bc], a                                     ; $5288: $02
	ld   h, a                                        ; $5289: $67
	ld   h, [hl]                                     ; $528a: $66
	ld   h, a                                        ; $528b: $67
	adc  c                                           ; $528c: $89
	ld   h, [hl]                                     ; $528d: $66
	ld   [$6067], sp                                 ; $528e: $08 $67 $60
	ld   hl, sp+$00                                  ; $5291: $f8 $00
	xor  h                                           ; $5293: $ac
	nop                                              ; $5294: $00
	rrca                                             ; $5295: $0f
	nop                                              ; $5296: $00
	inc  sp                                          ; $5297: $33
	add  c                                           ; $5298: $81
	nop                                              ; $5299: $00
	nop                                              ; $529a: $00
	add  hl, de                                      ; $529b: $19
	add  c                                           ; $529c: $81
	nop                                              ; $529d: $00
	nop                                              ; $529e: $00
	adc  h                                           ; $529f: $8c
	add  c                                           ; $52a0: $81
	nop                                              ; $52a1: $00
	nop                                              ; $52a2: $00

jr_07e_52a3:
	ld   a, [bc]                                     ; $52a3: $0a
	add  c                                           ; $52a4: $81
	nop                                              ; $52a5: $00
	ld   b, $c0                                      ; $52a6: $06 $c0
	nop                                              ; $52a8: $00
	ldh  a, [rP1]                                    ; $52a9: $f0 $00
	or   b                                           ; $52ab: $b0
	ld   b, b                                        ; $52ac: $40
	ld   d, b                                        ; $52ad: $50
	add  e                                           ; $52ae: $83
	ld   h, b                                        ; $52af: $60
	ld   [bc], a                                     ; $52b0: $02
	cp   $ff                                         ; $52b1: $fe $ff
	cp   $83                                         ; $52b3: $fe $83
	rst  $38                                         ; $52b5: $ff
	inc  d                                           ; $52b6: $14
	ld   a, a                                        ; $52b7: $7f
	rst  $38                                         ; $52b8: $ff
	ccf                                              ; $52b9: $3f
	rst  $38                                         ; $52ba: $ff
	sbc  a                                           ; $52bb: $9f
	rst  $38                                         ; $52bc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52bd: $cf
	rst  $38                                         ; $52be: $ff
	db   $10                                         ; $52bf: $10
	rst  $38                                         ; $52c0: $ff
	ld   [hl], l                                     ; $52c1: $75
	rst  $38                                         ; $52c2: $ff
	or   h                                           ; $52c3: $b4
	rst  $38                                         ; $52c4: $ff
	call z, $f0ff                                    ; $52c5: $cc $ff $f0
	rst  $38                                         ; $52c8: $ff
	db   $fc                                         ; $52c9: $fc
	rst  $38                                         ; $52ca: $ff
	cp   $81                                         ; $52cb: $fe $81
	rst  $38                                         ; $52cd: $ff
	db   $10                                         ; $52ce: $10
	db   $10                                         ; $52cf: $10
	rst  $38                                         ; $52d0: $ff
	jp   $acff                                       ; $52d1: $c3 $ff $ac


	rst  $38                                         ; $52d4: $ff

jr_07e_52d5:
	ld   a, a                                        ; $52d5: $7f
	rst  $38                                         ; $52d6: $ff
	ld   e, a                                        ; $52d7: $5f
	rst  $38                                         ; $52d8: $ff
	sbc  a                                           ; $52d9: $9f
	rst  $38                                         ; $52da: $ff
	ld   e, a                                        ; $52db: $5f
	rst  $38                                         ; $52dc: $ff
	adc  a                                           ; $52dd: $8f
	rst  $38                                         ; $52de: $ff
	db   $10                                         ; $52df: $10
	add  e                                           ; $52e0: $83
	ldh  a, [rSC]                                    ; $52e1: $f0 $02
	jr   nc, jr_07e_52d5                             ; $52e3: $30 $f0

	ret  nz                                          ; $52e5: $c0

	add  l                                           ; $52e6: $85
	ldh  a, [$fe]                                    ; $52e7: $f0 $fe
	nop                                              ; $52e9: $00
	ld   bc, $606f                                   ; $52ea: $01 $6f $60
	add  b                                           ; $52ed: $80
	nop                                              ; $52ee: $00
	nop                                              ; $52ef: $00
	add  hl, bc                                      ; $52f0: $09
	add  c                                           ; $52f1: $81
	nop                                              ; $52f2: $00
	ld   [$0004], sp                                 ; $52f3: $08 $04 $00
	ld   bc, $0400                                   ; $52f6: $01 $00 $04
	nop                                              ; $52f9: $00
	add  hl, de                                      ; $52fa: $19
	nop                                              ; $52fb: $00
	pop  hl                                          ; $52fc: $e1
	add  c                                           ; $52fd: $81
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	ld   c, h                                        ; $5300: $4c
	add  a                                           ; $5301: $87
	nop                                              ; $5302: $00
	ld   [bc], a                                     ; $5303: $02
	ld   c, h                                        ; $5304: $4c
	nop                                              ; $5305: $00
	inc  bc                                          ; $5306: $03
	add  c                                           ; $5307: $81
	nop                                              ; $5308: $00
	nop                                              ; $5309: $00
	adc  $87                                         ; $530a: $ce $87
	nop                                              ; $530c: $00
	ld   [bc], a                                     ; $530d: $02
	call z, $9e00                                    ; $530e: $cc $00 $9e
	adc  l                                           ; $5311: $8d
	ld   h, b                                        ; $5312: $60
	rst  $38                                         ; $5313: $ff
	nop                                              ; $5314: $00
	cp   l                                           ; $5315: $bd
	nop                                              ; $5316: $00
	inc  b                                           ; $5317: $04
	ld   a, [hl]                                     ; $5318: $7e
	nop                                              ; $5319: $00
	add  b                                           ; $531a: $80
	nop                                              ; $531b: $00
	db   $fc                                         ; $531c: $fc
	adc  b                                           ; $531d: $88
	nop                                              ; $531e: $00
	ld   bc, $ff02                                   ; $531f: $01 $02 $ff
	add  c                                           ; $5322: $81
	nop                                              ; $5323: $00
	ld   [$0020], sp                                 ; $5324: $08 $20 $00
	ld   b, b                                        ; $5327: $40
	nop                                              ; $5328: $00
	ld   b, b                                        ; $5329: $40
	nop                                              ; $532a: $00
	jr   nz, jr_07e_532d                             ; $532b: $20 $00

jr_07e_532d:
	rra                                              ; $532d: $1f
	add  c                                           ; $532e: $81
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	ld   e, $89                                      ; $5331: $1e $89
	nop                                              ; $5333: $00
	nop                                              ; $5334: $00
	db   $fc                                         ; $5335: $fc
	add  c                                           ; $5336: $81
	nop                                              ; $5337: $00

jr_07e_5338:
	nop                                              ; $5338: $00
	ld   h, d                                        ; $5339: $62
	add  e                                           ; $533a: $83
	ld   h, b                                        ; $533b: $60
	nop                                              ; $533c: $00
	ld   [hl], b                                     ; $533d: $70
	add  c                                           ; $533e: $81
	nop                                              ; $533f: $00
	ld   b, $40                                      ; $5340: $06 $40
	nop                                              ; $5342: $00
	ld   h, b                                        ; $5343: $60
	ld   b, b                                        ; $5344: $40
	ret  nc                                          ; $5345: $d0

	jr   nc, jr_07e_5338                             ; $5346: $30 $f0

	rst  $38                                         ; $5348: $ff
	nop                                              ; $5349: $00
	cp   h                                           ; $534a: $bc
	nop                                              ; $534b: $00
	add  [hl]                                        ; $534c: $86
	ld   [bc], a                                     ; $534d: $02
	nop                                              ; $534e: $00
	cp   $81                                         ; $534f: $fe $81
	ld   [bc], a                                     ; $5351: $02
	inc  b                                           ; $5352: $04
	ldh  [c], a                                      ; $5353: $e2
	ld   [bc], a                                     ; $5354: $02
	ld   e, $02                                      ; $5355: $1e $02
	di                                               ; $5357: $f3
	adc  l                                           ; $5358: $8d
	inc  de                                          ; $5359: $13
	ld   [bc], a                                     ; $535a: $02
	jp   c, Boot                                     ; $535b: $da $00 $01

	add  c                                           ; $535e: $81
	nop                                              ; $535f: $00
	ld   [bc], a                                     ; $5360: $02
	ld   b, c                                        ; $5361: $41
	ld   d, c                                        ; $5362: $51
	rst  $10                                         ; $5363: $d7
	add  b                                           ; $5364: $80
	pop  af                                          ; $5365: $f1
	ld   b, $c5                                      ; $5366: $06 $c5
	rst  $30                                         ; $5368: $f7
	call nz, Call_07e_4070                           ; $5369: $c4 $70 $40
	cp   d                                           ; $536c: $ba
	ld   [hl], b                                     ; $536d: $70
	add  b                                           ; $536e: $80
	ldh  a, [$80]                                    ; $536f: $f0 $80
	add  b                                           ; $5371: $80
	nop                                              ; $5372: $00
	ldh  a, [$81]                                    ; $5373: $f0 $81
	add  b                                           ; $5375: $80
	ld   bc, $80f0                                   ; $5376: $01 $f0 $80
	add  c                                           ; $5379: $81
	ldh  [rSB], a                                    ; $537a: $e0 $01
	ld   h, b                                        ; $537c: $60
	ld   [hl], b                                     ; $537d: $70
	rst  $38                                         ; $537e: $ff
	nop                                              ; $537f: $00
	ret                                              ; $5380: $c9


	nop                                              ; $5381: $00
	inc  bc                                          ; $5382: $03
	ret  nz                                          ; $5383: $c0

	nop                                              ; $5384: $00
	ldh  a, [$c3]                                    ; $5385: $f0 $c3
	add  b                                           ; $5387: $80
	inc  de                                          ; $5388: $13
	inc  bc                                          ; $5389: $03
	inc  sp                                          ; $538a: $33
	inc  hl                                          ; $538b: $23
	inc  bc                                          ; $538c: $03
	ldh  [$87], a                                    ; $538d: $e0 $87
	nop                                              ; $538f: $00
	nop                                              ; $5390: $00
	ld   a, [hl-]                                    ; $5391: $3a
	add  h                                           ; $5392: $84
	jr   nc, jr_07e_539e                             ; $5393: $30 $09

	nop                                              ; $5395: $00
	jr   z, jr_07e_5398                              ; $5396: $28 $00

jr_07e_5398:
	ld   [bc], a                                     ; $5398: $02
	nop                                              ; $5399: $00
	jr   z, jr_07e_539c                              ; $539a: $28 $00

jr_07e_539c:
	jr   c, jr_07e_539e                              ; $539c: $38 $00

jr_07e_539e:
	db   $10                                         ; $539e: $10
	add  l                                           ; $539f: $85
	ld   h, b                                        ; $53a0: $60
	add  b                                           ; $53a1: $80
	nop                                              ; $53a2: $00
	inc  b                                           ; $53a3: $04
	ld   d, b                                        ; $53a4: $50
	nop                                              ; $53a5: $00
	ld   d, b                                        ; $53a6: $50
	nop                                              ; $53a7: $00
	ld   [hl], b                                     ; $53a8: $70
	rst  $38                                         ; $53a9: $ff
	nop                                              ; $53aa: $00
	cp   [hl]                                        ; $53ab: $be
	nop                                              ; $53ac: $00
	ld   d, b                                        ; $53ad: $50
	ld   bc, $0e01                                   ; $53ae: $01 $01 $0e
	ld   bc, $0680                                   ; $53b1: $01 $80 $06
	add  b                                           ; $53b4: $80
	inc  bc                                          ; $53b5: $03
	add  d                                           ; $53b6: $82
	nop                                              ; $53b7: $00
	add  h                                           ; $53b8: $84
	inc  b                                           ; $53b9: $04
	inc  bc                                          ; $53ba: $03
	or   b                                           ; $53bb: $b0
	ret  nz                                          ; $53bc: $c0

	add  b                                           ; $53bd: $80
	nop                                              ; $53be: $00
	add  b                                           ; $53bf: $80
	ld   a, [bc]                                     ; $53c0: $0a
	add  b                                           ; $53c1: $80
	sbc  l                                           ; $53c2: $9d
	add  b                                           ; $53c3: $80
	ld   a, [hl-]                                    ; $53c4: $3a
	add  b                                           ; $53c5: $80
	ld   [hl], l                                     ; $53c6: $75
	add  b                                           ; $53c7: $80
	ldh  [$80], a                                    ; $53c8: $e0 $80
	nop                                              ; $53ca: $00
	add  b                                           ; $53cb: $80
	add  b                                           ; $53cc: $80
	add  b                                           ; $53cd: $80
	adc  c                                           ; $53ce: $89
	add  b                                           ; $53cf: $80
	or   [hl]                                        ; $53d0: $b6
	add  b                                           ; $53d1: $80
	adc  c                                           ; $53d2: $89
	add  b                                           ; $53d3: $80
	sbc  a                                           ; $53d4: $9f
	add  h                                           ; $53d5: $84
	nop                                              ; $53d6: $00
	add  b                                           ; $53d7: $80
	daa                                              ; $53d8: $27
	add  b                                           ; $53d9: $80
	add  e                                           ; $53da: $83
	add  b                                           ; $53db: $80
	ld   b, b                                        ; $53dc: $40
	add  b                                           ; $53dd: $80
	ldh  a, [rSC]                                    ; $53de: $f0 $02
	ret  nz                                          ; $53e0: $c0

	rst  ToBoot                                         ; $53e1: $c7
	rlca                                             ; $53e2: $07
	add  b                                           ; $53e3: $80
	rrca                                             ; $53e4: $0f
	add  b                                           ; $53e5: $80
	ld   d, a                                        ; $53e6: $57
	ld   [bc], a                                     ; $53e7: $02
	xor  e                                           ; $53e8: $ab
	ld   d, a                                        ; $53e9: $57
	db   $fc                                         ; $53ea: $fc
	add  b                                           ; $53eb: $80
	ldh  a, [$81]                                    ; $53ec: $f0 $81
	nop                                              ; $53ee: $00
	add  b                                           ; $53ef: $80
	ld   a, $82                                      ; $53f0: $3e $82
	db   $fc                                         ; $53f2: $fc
	add  b                                           ; $53f3: $80
	ld   hl, sp+$02                                  ; $53f4: $f8 $02
	ldh  a, [rBCPS]                                  ; $53f6: $f0 $68
	sbc  b                                           ; $53f8: $98
	adc  h                                           ; $53f9: $8c
	nop                                              ; $53fa: $00
	add  b                                           ; $53fb: $80
	cp   $80                                         ; $53fc: $fe $80
	ld   bc, $7f80                                   ; $53fe: $01 $80 $7f
	add  b                                           ; $5401: $80
	rra                                              ; $5402: $1f
	add  c                                           ; $5403: $81
	nop                                              ; $5404: $00
	add  b                                           ; $5405: $80
	rlca                                             ; $5406: $07
	add  b                                           ; $5407: $80
	rrca                                             ; $5408: $0f
	add  b                                           ; $5409: $80
	dec  d                                           ; $540a: $15
	add  hl, bc                                      ; $540b: $09
	nop                                              ; $540c: $00
	db   $fc                                         ; $540d: $fc
	db   $fd                                         ; $540e: $fd
	ldh  a, [c]                                      ; $540f: $f2
	ldh  a, [$c6]                                    ; $5410: $f0 $c6
	jp   z, $1525                                    ; $5412: $ca $25 $15

	ccf                                              ; $5415: $3f
	add  d                                           ; $5416: $82
	rst  $38                                         ; $5417: $ff
	inc  bc                                          ; $5418: $03
	ld   d, l                                        ; $5419: $55
	ld   d, d                                        ; $541a: $52
	nop                                              ; $541b: $00
	rst  $30                                         ; $541c: $f7
	add  c                                           ; $541d: $81
	ld   [$a801], sp                                 ; $541e: $08 $01 $a8
	and  b                                           ; $5421: $a0
	add  b                                           ; $5422: $80
	ld   d, b                                        ; $5423: $50
	add  e                                           ; $5424: $83
	ldh  a, [$03]                                    ; $5425: $f0 $03
	ld   d, b                                        ; $5427: $50
	xor  a                                           ; $5428: $af
	nop                                              ; $5429: $00
	rst  $38                                         ; $542a: $ff
	add  a                                           ; $542b: $87
	nop                                              ; $542c: $00
	add  b                                           ; $542d: $80
	inc  bc                                          ; $542e: $03
	add  b                                           ; $542f: $80
	rlca                                             ; $5430: $07
	ld   [bc], a                                     ; $5431: $02
	ldh  [rP1], a                                    ; $5432: $e0 $00
	rst  $38                                         ; $5434: $ff
	add  c                                           ; $5435: $81
	nop                                              ; $5436: $00
	add  b                                           ; $5437: $80
	ld   a, [bc]                                     ; $5438: $0a
	add  b                                           ; $5439: $80
	dec  d                                           ; $543a: $15
	add  b                                           ; $543b: $80
	rra                                              ; $543c: $1f
	add  b                                           ; $543d: $80
	sbc  a                                           ; $543e: $9f
	inc  b                                           ; $543f: $04
	rst  JumpTable                                         ; $5440: $df
	jp   z, $000a                                    ; $5441: $ca $0a $00

	rst  $38                                         ; $5444: $ff
	add  c                                           ; $5445: $81
	nop                                              ; $5446: $00
	add  b                                           ; $5447: $80
	xor  d                                           ; $5448: $aa
	add  b                                           ; $5449: $80
	ld   d, l                                        ; $544a: $55
	add  c                                           ; $544b: $81
	rst  $38                                         ; $544c: $ff
	add  b                                           ; $544d: $80
	push af                                          ; $544e: $f5
	ld   b, $aa                                      ; $544f: $06 $aa
	or   l                                           ; $5451: $b5
	rra                                              ; $5452: $1f
	rlca                                             ; $5453: $07
	add  a                                           ; $5454: $87
	nop                                              ; $5455: $00
	ld   b, b                                        ; $5456: $40
	add  b                                           ; $5457: $80
	add  b                                           ; $5458: $80
	ld   bc, $4060                                   ; $5459: $01 $60 $40
	add  c                                           ; $545c: $81
	ldh  [$80], a                                    ; $545d: $e0 $80
	ld   d, b                                        ; $545f: $50
	ld   [bc], a                                     ; $5460: $02
	and  b                                           ; $5461: $a0
	ld   e, d                                        ; $5462: $5a
	ld   a, [$f880]                                  ; $5463: $fa $80 $f8
	add  b                                           ; $5466: $80
	db   $10                                         ; $5467: $10
	adc  b                                           ; $5468: $88
	nop                                              ; $5469: $00

jr_07e_546a:
	add  b                                           ; $546a: $80
	ld   bc, $0085                                   ; $546b: $01 $85 $00
	dec  b                                           ; $546e: $05
	dec  hl                                          ; $546f: $2b
	add  hl, hl                                      ; $5470: $29
	dec  d                                           ; $5471: $15
	ld   d, $0e                                      ; $5472: $16 $0e
	rrca                                             ; $5474: $0f
	add  b                                           ; $5475: $80
	rlca                                             ; $5476: $07
	add  h                                           ; $5477: $84
	nop                                              ; $5478: $00
	add  b                                           ; $5479: $80
	rlca                                             ; $547a: $07
	nop                                              ; $547b: $00
	rst  $38                                         ; $547c: $ff
	add  b                                           ; $547d: $80
	ld   d, l                                        ; $547e: $55
	add  b                                           ; $547f: $80
	nop                                              ; $5480: $00
	add  b                                           ; $5481: $80
	ld   d, l                                        ; $5482: $55
	ld   bc, $0807                                   ; $5483: $01 $07 $08
	add  b                                           ; $5486: $80
	dec  b                                           ; $5487: $05
	add  b                                           ; $5488: $80
	ld   a, [bc]                                     ; $5489: $0a
	add  b                                           ; $548a: $80
	dec  b                                           ; $548b: $05
	add  b                                           ; $548c: $80
	ld   a, [bc]                                     ; $548d: $0a
	add  b                                           ; $548e: $80
	dec  b                                           ; $548f: $05
	add  d                                           ; $5490: $82
	rrca                                             ; $5491: $0f
	ld   bc, $a959                                   ; $5492: $01 $59 $a9
	add  b                                           ; $5495: $80
	ld   d, h                                        ; $5496: $54
	add  b                                           ; $5497: $80
	cp   h                                           ; $5498: $bc
	add  b                                           ; $5499: $80
	ld   a, h                                        ; $549a: $7c
	add  b                                           ; $549b: $80
	ld   hl, sp-$80                                  ; $549c: $f8 $80
	pop  af                                          ; $549e: $f1
	add  b                                           ; $549f: $80
	ldh  [$80], a                                    ; $54a0: $e0 $80
	ret  nz                                          ; $54a2: $c0

	add  b                                           ; $54a3: $80
	ret  nc                                          ; $54a4: $d0

	add  b                                           ; $54a5: $80
	ldh  [$84], a                                    ; $54a6: $e0 $84
	nop                                              ; $54a8: $00
	add  b                                           ; $54a9: $80
	add  b                                           ; $54aa: $80
	sub  e                                           ; $54ab: $93
	nop                                              ; $54ac: $00
	add  b                                           ; $54ad: $80
	rrca                                             ; $54ae: $0f
	add  b                                           ; $54af: $80
	rra                                              ; $54b0: $1f
	add  d                                           ; $54b1: $82
	ccf                                              ; $54b2: $3f
	add  b                                           ; $54b3: $80
	ld   d, l                                        ; $54b4: $55
	add  b                                           ; $54b5: $80
	xor  d                                           ; $54b6: $aa
	add  b                                           ; $54b7: $80
	ld   d, l                                        ; $54b8: $55
	add  b                                           ; $54b9: $80
	xor  d                                           ; $54ba: $aa
	add  [hl]                                        ; $54bb: $86
	rst  $38                                         ; $54bc: $ff
	add  b                                           ; $54bd: $80
	ld   e, a                                        ; $54be: $5f
	add  b                                           ; $54bf: $80
	xor  d                                           ; $54c0: $aa
	add  b                                           ; $54c1: $80
	ld   d, l                                        ; $54c2: $55
	add  b                                           ; $54c3: $80
	xor  d                                           ; $54c4: $aa
	add  b                                           ; $54c5: $80
	ldh  a, [$82]                                    ; $54c6: $f0 $82
	ldh  [$82], a                                    ; $54c8: $e0 $82
	ret  nz                                          ; $54ca: $c0

	add  b                                           ; $54cb: $80
	add  b                                           ; $54cc: $80
	sub  d                                           ; $54cd: $92
	nop                                              ; $54ce: $00
	adc  b                                           ; $54cf: $88
	rrca                                             ; $54d0: $0f
	add  b                                           ; $54d1: $80
	ld   a, [bc]                                     ; $54d2: $0a
	add  b                                           ; $54d3: $80
	dec  d                                           ; $54d4: $15
	add  b                                           ; $54d5: $80
	ld   a, [bc]                                     ; $54d6: $0a
	add  b                                           ; $54d7: $80
	ldh  a, [$86]                                    ; $54d8: $f0 $86
	rst  $38                                         ; $54da: $ff
	add  b                                           ; $54db: $80
	xor  d                                           ; $54dc: $aa
	add  b                                           ; $54dd: $80
	ld   d, l                                        ; $54de: $55
	add  b                                           ; $54df: $80
	xor  d                                           ; $54e0: $aa
	add  b                                           ; $54e1: $80
	jr   nc, jr_07e_546a                             ; $54e2: $30 $86

	ldh  a, [$80]                                    ; $54e4: $f0 $80
	xor  b                                           ; $54e6: $a8
	add  b                                           ; $54e7: $80
	ld   d, b                                        ; $54e8: $50
	add  b                                           ; $54e9: $80
	xor  b                                           ; $54ea: $a8
	adc  [hl]                                        ; $54eb: $8e
	nop                                              ; $54ec: $00
	add  b                                           ; $54ed: $80
	rlca                                             ; $54ee: $07
	add  b                                           ; $54ef: $80
	inc  bc                                          ; $54f0: $03
	add  d                                           ; $54f1: $82
	ld   bc, $0086                                   ; $54f2: $01 $86 $00
	add  c                                           ; $54f5: $81
	rst  $38                                         ; $54f6: $ff
	ld   [bc], a                                     ; $54f7: $02
	ei                                               ; $54f8: $fb
	ld   a, [$80fe]                                  ; $54f9: $fa $fe $80
	db   $fc                                         ; $54fc: $fc
	add  b                                           ; $54fd: $80
	rst  $38                                         ; $54fe: $ff
	add  b                                           ; $54ff: $80
	ld   a, a                                        ; $5500: $7f
	add  b                                           ; $5501: $80
	ld   d, l                                        ; $5502: $55
	add  b                                           ; $5503: $80
	ld   a, [hl+]                                    ; $5504: $2a
	add  b                                           ; $5505: $80
	cp   $86                                         ; $5506: $fe $86
	rst  $38                                         ; $5508: $ff
	add  b                                           ; $5509: $80
	cp   $80                                         ; $550a: $fe $80
	ld   d, l                                        ; $550c: $55
	add  b                                           ; $550d: $80
	xor  d                                           ; $550e: $aa
	add  b                                           ; $550f: $80
	add  b                                           ; $5510: $80
	add  b                                           ; $5511: $80
	ld   b, b                                        ; $5512: $40
	add  b                                           ; $5513: $80
	and  b                                           ; $5514: $a0
	add  hl, bc                                      ; $5515: $09
	ret  nc                                          ; $5516: $d0

	pop  de                                          ; $5517: $d1
	ld   c, c                                        ; $5518: $49

jr_07e_5519:
	ld   c, a                                        ; $5519: $4f
	sub  a                                           ; $551a: $97
	sbc  a                                           ; $551b: $9f
	cpl                                              ; $551c: $2f
	rra                                              ; $551d: $1f
	ccf                                              ; $551e: $3f
	rst  $38                                         ; $551f: $ff
	add  l                                           ; $5520: $85
	nop                                              ; $5521: $00
	ld   [bc], a                                     ; $5522: $02
	or   $0f                                         ; $5523: $f6 $0f
	ld   c, $81                                      ; $5525: $0e $81
	rrca                                             ; $5527: $0f
	ld   [bc], a                                     ; $5528: $02
	dec  bc                                          ; $5529: $0b
	rrca                                             ; $552a: $0f
	db   $fc                                         ; $552b: $fc
	add  l                                           ; $552c: $85
	nop                                              ; $552d: $00
	ld   [$fa85], sp                                 ; $552e: $08 $85 $fa
	or   a                                           ; $5531: $b7
	rst  $30                                         ; $5532: $f7
	cp   a                                           ; $5533: $bf
	rst  $38                                         ; $5534: $ff
	cp   a                                           ; $5535: $bf
	rst  $38                                         ; $5536: $ff
	ccf                                              ; $5537: $3f
	add  l                                           ; $5538: $85
	nop                                              ; $5539: $00
	ld   bc, $a05f                                   ; $553a: $01 $5f $a0
	add  b                                           ; $553d: $80
	ld   b, b                                        ; $553e: $40
	add  b                                           ; $553f: $80
	xor  b                                           ; $5540: $a8
	add  b                                           ; $5541: $80
	ld   b, b                                        ; $5542: $40
	nop                                              ; $5543: $00
	rst  $38                                         ; $5544: $ff
	add  l                                           ; $5545: $85
	nop                                              ; $5546: $00
	nop                                              ; $5547: $00
	ldh  a, [$85]                                    ; $5548: $f0 $85
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	ld   de, $de81                                   ; $554c: $11 $81 $de
	inc  bc                                          ; $554f: $03
	sbc  d                                           ; $5550: $9a
	jp   c, $d555                                    ; $5551: $da $55 $d5

	add  b                                           ; $5554: $80
	ld   [$e580], a                                  ; $5555: $ea $80 $e5
	add  b                                           ; $5558: $80
	ld   [hl+], a                                    ; $5559: $22
	add  b                                           ; $555a: $80
	ret  nz                                          ; $555b: $c0

	dec  b                                           ; $555c: $05
	ld   b, b                                        ; $555d: $40
	ld   e, a                                        ; $555e: $5f
	jr   nz, jr_07e_55a0                             ; $555f: $20 $3f

	ld   e, l                                        ; $5561: $5d
	ld   e, a                                        ; $5562: $5f
	add  b                                           ; $5563: $80
	ccf                                              ; $5564: $3f
	inc  bc                                          ; $5565: $03
	ld   h, d                                        ; $5566: $62
	ld   a, a                                        ; $5567: $7f
	ld   [bc], a                                     ; $5568: $02
	rra                                              ; $5569: $1f
	add  b                                           ; $556a: $80
	rrca                                             ; $556b: $0f
	rlca                                             ; $556c: $07
	dec  c                                           ; $556d: $0d
	rrca                                             ; $556e: $0f
	sbc  b                                           ; $556f: $98
	rst  $38                                         ; $5570: $ff
	sbc  b                                           ; $5571: $98
	rst  $38                                         ; $5572: $ff
	db   $dd                                         ; $5573: $dd
	rst  $38                                         ; $5574: $ff
	add  b                                           ; $5575: $80
	cp   a                                           ; $5576: $bf
	add  hl, bc                                      ; $5577: $09
	ld   h, $ff                                      ; $5578: $26 $ff
	ld   [hl-], a                                    ; $557a: $32
	db   $eb                                         ; $557b: $eb
	ld   a, c                                        ; $557c: $79
	ld   a, e                                        ; $557d: $7b
	db   $eb                                         ; $557e: $eb
	res  5, a                                        ; $557f: $cb $af
	and  b                                           ; $5581: $a0
	add  b                                           ; $5582: $80
	ret  nz                                          ; $5583: $c0

	add  b                                           ; $5584: $80
	and  b                                           ; $5585: $a0
	add  b                                           ; $5586: $80
	ldh  a, [$03]                                    ; $5587: $f0 $03
	ld   [hl], b                                     ; $5589: $70
	ldh  a, [rLCDC]                                  ; $558a: $f0 $40
	ret  nz                                          ; $558c: $c0

	add  b                                           ; $558d: $80
	and  b                                           ; $558e: $a0
	add  b                                           ; $558f: $80
	ldh  [rSB], a                                    ; $5590: $e0 $01
	sub  a                                           ; $5592: $97
	sbc  b                                           ; $5593: $98
	add  b                                           ; $5594: $80
	jr   jr_07e_5519                                 ; $5595: $18 $82

	inc  a                                           ; $5597: $3c
	add  b                                           ; $5598: $80
	ld   a, h                                        ; $5599: $7c
	add  b                                           ; $559a: $80
	ld   [hl], h                                     ; $559b: $74
	add  b                                           ; $559c: $80
	inc  l                                           ; $559d: $2c
	add  b                                           ; $559e: $80
	ld   d, h                                        ; $559f: $54

jr_07e_55a0:
	ld   [bc], a                                     ; $55a0: $02
	ld   [bc], a                                     ; $55a1: $02
	inc  bc                                          ; $55a2: $03
	ld   bc, $0381                                   ; $55a3: $01 $81 $03
	ld   bc, $0706                                   ; $55a6: $01 $06 $07
	add  b                                           ; $55a9: $80
	rrca                                             ; $55aa: $0f
	ld   d, $11                                      ; $55ab: $16 $11
	rra                                              ; $55ad: $1f
	dec  hl                                          ; $55ae: $2b
	ccf                                              ; $55af: $3f
	ld   d, a                                        ; $55b0: $57
	ld   a, a                                        ; $55b1: $7f
	ld   d, e                                        ; $55b2: $53
	db   $e3                                         ; $55b3: $e3
	ld   c, e                                        ; $55b4: $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55b5: $cf
	sub  l                                           ; $55b6: $95
	sbc  a                                           ; $55b7: $9f
	xor  a                                           ; $55b8: $af
	cp   a                                           ; $55b9: $bf
	db   $dd                                         ; $55ba: $dd
	rst  $38                                         ; $55bb: $ff
	cp   e                                           ; $55bc: $bb
	rst  $38                                         ; $55bd: $ff
	ld   [hl], l                                     ; $55be: $75
	rst  $38                                         ; $55bf: $ff
	adc  $fc                                         ; $55c0: $ce $fc
	cp   a                                           ; $55c2: $bf
	add  c                                           ; $55c3: $81
	ldh  a, [rP1]                                    ; $55c4: $f0 $00
	ld   [hl], b                                     ; $55c6: $70
	add  e                                           ; $55c7: $83
	ldh  a, [rTAC]                                   ; $55c8: $f0 $07
	ld   [hl], b                                     ; $55ca: $70
	ldh  a, [$c0]                                    ; $55cb: $f0 $c0
	ldh  a, [$b0]                                    ; $55cd: $f0 $b0
	nop                                              ; $55cf: $00
	inc  b                                           ; $55d0: $04
	dec  bc                                          ; $55d1: $0b
	add  b                                           ; $55d2: $80
	inc  bc                                          ; $55d3: $03
	dec  b                                           ; $55d4: $05
	rlca                                             ; $55d5: $07
	rst  ToBoot                                         ; $55d6: $c7
	push bc                                          ; $55d7: $c5
	push hl                                          ; $55d8: $e5
	db   $e4                                         ; $55d9: $e4
	db   $f4                                         ; $55da: $f4
	add  b                                           ; $55db: $80
	ld   d, b                                        ; $55dc: $50
	ld   bc, $0800                                   ; $55dd: $01 $00 $08
	add  b                                           ; $55e0: $80
	ld   d, b                                        ; $55e1: $50
	add  hl, bc                                      ; $55e2: $09
	cp   b                                           ; $55e3: $b8
	rst  $38                                         ; $55e4: $ff
	ccf                                              ; $55e5: $3f
	rst  $38                                         ; $55e6: $ff
	xor  a                                           ; $55e7: $af
	rst  JumpTable                                         ; $55e8: $df
	rst  $28                                         ; $55e9: $ef
	rst  $38                                         ; $55ea: $ff
	db   $eb                                         ; $55eb: $eb
	db   $f4                                         ; $55ec: $f4
	add  b                                           ; $55ed: $80
	daa                                              ; $55ee: $27
	inc  b                                           ; $55ef: $04
	nop                                              ; $55f0: $00
	rra                                              ; $55f1: $1f
	ld   [de], a                                     ; $55f2: $12
	ld   e, $13                                      ; $55f3: $1e $13
	add  l                                           ; $55f5: $85
	rst  $38                                         ; $55f6: $ff
	dec  c                                           ; $55f7: $0d
	ccf                                              ; $55f8: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55f9: $cf
	sbc  e                                           ; $55fa: $9b
	rst  $30                                         ; $55fb: $f7
	ld   h, a                                        ; $55fc: $67
	db   $fd                                         ; $55fd: $fd
	ld   a, c                                        ; $55fe: $79
	ld   a, l                                        ; $55ff: $7d
	ld   [hl-], a                                    ; $5600: $32
	ret  nz                                          ; $5601: $c0

	jr   nc, @-$0e                                   ; $5602: $30 $f0

	ret  nz                                          ; $5604: $c0

	ldh  a, [$80]                                    ; $5605: $f0 $80
	ldh  [$0d], a                                    ; $5607: $e0 $0d
	ret  nc                                          ; $5609: $d0

jr_07e_560a:
	ldh  a, [$d0]                                    ; $560a: $f0 $d0
	ldh  [rLCDC], a                                  ; $560c: $e0 $40
	ld   h, b                                        ; $560e: $60
	and  b                                           ; $560f: $a0
	ldh  [$9a], a                                    ; $5610: $e0 $9a
	rla                                              ; $5612: $17
	ld   d, $17                                      ; $5613: $16 $17
	dec  c                                           ; $5615: $0d
	rrca                                             ; $5616: $0f
	add  d                                           ; $5617: $82
	dec  de                                          ; $5618: $1b
	ld   bc, $1b1a                                   ; $5619: $01 $1a $1b
	add  b                                           ; $561c: $80
	rra                                              ; $561d: $1f
	add  b                                           ; $561e: $80
	dec  e                                           ; $561f: $1d
	ld   de, $fe5e                                   ; $5620: $11 $5e $fe
	sbc  a                                           ; $5623: $9f
	rst  $38                                         ; $5624: $ff
	sbc  a                                           ; $5625: $9f
	rst  $38                                         ; $5626: $ff
	sbc  a                                           ; $5627: $9f
	rst  $38                                         ; $5628: $ff
	sbc  a                                           ; $5629: $9f
	rst  $38                                         ; $562a: $ff
	adc  a                                           ; $562b: $8f
	rst  $38                                         ; $562c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $562d: $cf
	rst  $38                                         ; $562e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $562f: $cf
	rst  $38                                         ; $5630: $ff
	ld   a, d                                        ; $5631: $7a
	xor  d                                           ; $5632: $aa
	add  b                                           ; $5633: $80
	ld   d, b                                        ; $5634: $50
	add  b                                           ; $5635: $80
	xor  b                                           ; $5636: $a8
	add  b                                           ; $5637: $80
	ld   d, l                                        ; $5638: $55
	add  b                                           ; $5639: $80
	ld   [$5180], a                                  ; $563a: $ea $80 $51
	inc  b                                           ; $563d: $04
	ldh  [c], a                                      ; $563e: $e2
	ld   [$ede5], a                                  ; $563f: $ea $e5 $ed
	rrca                                             ; $5642: $0f
	adc  c                                           ; $5643: $89
	nop                                              ; $5644: $00
	add  b                                           ; $5645: $80
	ld   b, b                                        ; $5646: $40
	add  b                                           ; $5647: $80
	nop                                              ; $5648: $00
	ld   [bc], a                                     ; $5649: $02
	rst  $28                                         ; $564a: $ef
	ldh  [$d0], a                                    ; $564b: $e0 $d0
	add  c                                           ; $564d: $81
	ldh  a, [$03]                                    ; $564e: $f0 $03
	nop                                              ; $5650: $00
	ldh  a, [$c3]                                    ; $5651: $f0 $c3
	di                                               ; $5653: $f3
	add  b                                           ; $5654: $80
	db   $d3                                         ; $5655: $d3
	ld   bc, $a686                                   ; $5656: $01 $86 $a6
	add  b                                           ; $5659: $80
	ld   d, a                                        ; $565a: $57
	dec  b                                           ; $565b: $05
	ret  nc                                          ; $565c: $d0

	rra                                              ; $565d: $1f
	nop                                              ; $565e: $00
	rrca                                             ; $565f: $0f
	dec  e                                           ; $5660: $1d
	rra                                              ; $5661: $1f
	add  b                                           ; $5662: $80
	rrca                                             ; $5663: $0f
	add  b                                           ; $5664: $80
	ld   a, [bc]                                     ; $5665: $0a
	ld   bc, $0200                                   ; $5666: $01 $00 $02
	add  b                                           ; $5669: $80
	sub  d                                           ; $566a: $92
	add  b                                           ; $566b: $80
	ld   e, e                                        ; $566c: $5b
	inc  bc                                          ; $566d: $03
	or   c                                           ; $566e: $b1
	rst  $38                                         ; $566f: $ff
	adc  b                                           ; $5670: $88
	add  $80                                         ; $5671: $c6 $80
	db   $fd                                         ; $5673: $fd
	add  b                                           ; $5674: $80
	adc  d                                           ; $5675: $8a
	ld   a, [bc]                                     ; $5676: $0a
	xor  e                                           ; $5677: $ab
	xor  d                                           ; $5678: $aa
	sbc  [hl]                                        ; $5679: $9e
	sbc  h                                           ; $567a: $9c
	ld   a, h                                        ; $567b: $7c
	ld   a, b                                        ; $567c: $78
	cp   c                                           ; $567d: $b9
	or   b                                           ; $567e: $b0
	ld   d, c                                        ; $567f: $51
	ldh  a, [rSVBK]                                  ; $5680: $f0 $70
	add  c                                           ; $5682: $81
	ret  nc                                          ; $5683: $d0

	add  b                                           ; $5684: $80
	ldh  a, [rSB]                                    ; $5685: $f0 $01
	or   b                                           ; $5687: $b0
	jr   nc, jr_07e_560a                             ; $5688: $30 $80

	jr   nz, jr_07e_568d                             ; $568a: $20 $01

	sub  b                                           ; $568c: $90

jr_07e_568d:
	db   $10                                         ; $568d: $10
	add  b                                           ; $568e: $80

jr_07e_568f:
	nop                                              ; $568f: $00
	ld   bc, $2c23                                   ; $5690: $01 $23 $2c
	add  b                                           ; $5693: $80
	sub  h                                           ; $5694: $94
	add  b                                           ; $5695: $80

jr_07e_5696:
	ld   [$0082], sp                                 ; $5696: $08 $82 $00
	add  b                                           ; $5699: $80
	cp   $09                                         ; $569a: $fe $09
	inc  hl                                          ; $569c: $23
	ccf                                              ; $569d: $3f
	dec  e                                           ; $569e: $1d
	add  hl, bc                                      ; $569f: $09
	ld   d, $7e                                      ; $56a0: $16 $7e
	ld   e, h                                        ; $56a2: $5c
	db   $fc                                         ; $56a3: $fc
	jr   nc, jr_07e_5696                             ; $56a4: $30 $f0

	add  b                                           ; $56a6: $80
	sub  e                                           ; $56a7: $93
	add  b                                           ; $56a8: $80
	rlca                                             ; $56a9: $07
	dec  e                                           ; $56aa: $1d
	add  hl, bc                                      ; $56ab: $09
	rrca                                             ; $56ac: $0f
	sub  [hl]                                        ; $56ad: $96
	sbc  a                                           ; $56ae: $9f
	and  b                                           ; $56af: $a0
	rst  $38                                         ; $56b0: $ff
	sbc  c                                           ; $56b1: $99
	rst  $38                                         ; $56b2: $ff
	or   b                                           ; $56b3: $b0
	rst  $38                                         ; $56b4: $ff
	ld   c, h                                        ; $56b5: $4c
	dec  a                                           ; $56b6: $3d
	adc  b                                           ; $56b7: $88
	add  b                                           ; $56b8: $80
	ld   c, c                                        ; $56b9: $49
	ld   c, a                                        ; $56ba: $4f
	or   d                                           ; $56bb: $b2
	cp   a                                           ; $56bc: $bf
	ld   [hl], c                                     ; $56bd: $71
	ld   a, [hl]                                     ; $56be: $7e
	inc  bc                                          ; $56bf: $03
	rst  $38                                         ; $56c0: $ff
	add  a                                           ; $56c1: $87
	ldh  a, [rAUD4LEN]                               ; $56c2: $f0 $20
	ldh  a, [rP1]                                    ; $56c4: $f0 $00

jr_07e_56c6:
	ldh  a, [$90]                                    ; $56c6: $f0 $90
	jr   nc, @-$7c                                   ; $56c8: $30 $82

	ldh  a, [$80]                                    ; $56ca: $f0 $80
	ld   [hl], b                                     ; $56cc: $70
	add  b                                           ; $56cd: $80
	add  b                                           ; $56ce: $80
	nop                                              ; $56cf: $00
	rrca                                             ; $56d0: $0f
	add  l                                           ; $56d1: $85
	nop                                              ; $56d2: $00
	add  b                                           ; $56d3: $80
	db   $fc                                         ; $56d4: $fc
	add  b                                           ; $56d5: $80
	rst  $38                                         ; $56d6: $ff
	inc  b                                           ; $56d7: $04
	push af                                          ; $56d8: $f5
	rst  $38                                         ; $56d9: $ff
	and  b                                           ; $56da: $a0
	rst  $38                                         ; $56db: $ff
	ld   b, l                                        ; $56dc: $45
	add  c                                           ; $56dd: $81
	ld   de, $1001                                   ; $56de: $11 $01 $10
	ld   de, $0180                                   ; $56e1: $11 $80 $01
	add  b                                           ; $56e4: $80
	nop                                              ; $56e5: $00
	add  b                                           ; $56e6: $80
	ret  nz                                          ; $56e7: $c0

	nop                                              ; $56e8: $00
	ld   h, b                                        ; $56e9: $60
	add  c                                           ; $56ea: $81
	ldh  [$03], a                                    ; $56eb: $e0 $03
	ld   h, b                                        ; $56ed: $60
	sbc  h                                           ; $56ee: $9c
	ld   h, b                                        ; $56ef: $60
	inc  e                                           ; $56f0: $1c
	add  b                                           ; $56f1: $80
	rla                                              ; $56f2: $17
	add  b                                           ; $56f3: $80
	nop                                              ; $56f4: $00
	dec  b                                           ; $56f5: $05
	ld   a, b                                        ; $56f6: $78
	ld   a, a                                        ; $56f7: $7f

jr_07e_56f8:
	add  [hl]                                        ; $56f8: $86
	rst  $38                                         ; $56f9: $ff
	cp   $80                                         ; $56fa: $fe $80
	add  b                                           ; $56fc: $80
	nop                                              ; $56fd: $00
	ld   bc, $c0cf                                   ; $56fe: $01 $cf $c0
	add  b                                           ; $5701: $80
	ret  nc                                          ; $5702: $d0

	add  b                                           ; $5703: $80
	ret  nz                                          ; $5704: $c0

	add  b                                           ; $5705: $80

jr_07e_5706:
	nop                                              ; $5706: $00
	inc  bc                                          ; $5707: $03
	ld   b, b                                        ; $5708: $40
	ret  nz                                          ; $5709: $c0

	nop                                              ; $570a: $00
	add  b                                           ; $570b: $80
	add  b                                           ; $570c: $80
	jr   nc, jr_07e_568f                             ; $570d: $30 $80

	ld   [hl], b                                     ; $570f: $70
	nop                                              ; $5710: $00
	ld   [de], a                                     ; $5711: $12
	add  c                                           ; $5712: $81
	dec  e                                           ; $5713: $1d
	add  d                                           ; $5714: $82
	ld   e, $80                                      ; $5715: $1e $80
	ld   c, [hl]                                     ; $5717: $4e
	dec  d                                           ; $5718: $15
	sub  [hl]                                        ; $5719: $96
	or   $6a                                         ; $571a: $f6 $6a
	ld   [$eccc], a                                  ; $571c: $ea $cc $ec
	ld   e, [hl]                                     ; $571f: $5e
	cp   $ce                                         ; $5720: $fe $ce
	cp   $c7                                         ; $5722: $fe $c7
	rst  $38                                         ; $5724: $ff
	and  a                                           ; $5725: $a7
	rst  $38                                         ; $5726: $ff
	cpl                                              ; $5727: $2f
	ld   a, a                                        ; $5728: $7f
	ld   l, a                                        ; $5729: $6f
	ccf                                              ; $572a: $3f
	cpl                                              ; $572b: $2f
	ccf                                              ; $572c: $3f
	dec  [hl]                                        ; $572d: $35
	dec  d                                           ; $572e: $15
	add  b                                           ; $572f: $80
	sbc  $80                                         ; $5730: $de $80
	rst  JumpTable                                         ; $5732: $df
	ld   bc, $5e4e                                   ; $5733: $01 $4e $5e
	add  b                                           ; $5736: $80
	sbc  l                                           ; $5737: $9d
	add  b                                           ; $5738: $80
	sbc  a                                           ; $5739: $9f
	add  b                                           ; $573a: $80
	sbc  l                                           ; $573b: $9d
	add  b                                           ; $573c: $80
	sbc  a                                           ; $573d: $9f
	inc  bc                                          ; $573e: $03
	stop                                             ; $573f: $10 $00
	ld   c, a                                        ; $5741: $4f
	ld   b, b                                        ; $5742: $40
	add  b                                           ; $5743: $80
	jr   nz, jr_07e_56c6                             ; $5744: $20 $80

	add  b                                           ; $5746: $80
	add  b                                           ; $5747: $80
	ld   b, b                                        ; $5748: $40
	add  b                                           ; $5749: $80
	and  b                                           ; $574a: $a0
	add  b                                           ; $574b: $80
	ld   b, b                                        ; $574c: $40
	add  b                                           ; $574d: $80
	and  b                                           ; $574e: $a0
	add  b                                           ; $574f: $80
	ld   b, b                                        ; $5750: $40
	rlca                                             ; $5751: $07
	ld   a, b                                        ; $5752: $78
	rst  $30                                         ; $5753: $f7
	add  c                                           ; $5754: $81
	ld   b, e                                        ; $5755: $43
	add  [hl]                                        ; $5756: $86
	push bc                                          ; $5757: $c5
	ld   h, a                                        ; $5758: $67
	ld   h, [hl]                                     ; $5759: $66
	add  b                                           ; $575a: $80
	ld   h, a                                        ; $575b: $67
	add  b                                           ; $575c: $80
	rst  $28                                         ; $575d: $ef
	add  b                                           ; $575e: $80
	rst  $10                                         ; $575f: $d7
	add  b                                           ; $5760: $80
	xor  [hl]                                        ; $5761: $ae
	add  b                                           ; $5762: $80
	xor  e                                           ; $5763: $ab
	add  b                                           ; $5764: $80
	pop  de                                          ; $5765: $d1
	ld   [bc], a                                     ; $5766: $02
	ld   h, b                                        ; $5767: $60
	ldh  [$80], a                                    ; $5768: $e0 $80
	add  l                                           ; $576a: $85
	nop                                              ; $576b: $00
	add  b                                           ; $576c: $80
	ld   bc, $b405                                   ; $576d: $01 $05 $b4
	xor  d                                           ; $5770: $aa
	ld   e, [hl]                                     ; $5771: $5e
	ld   e, b                                        ; $5772: $58
	sbc  b                                           ; $5773: $98
	add  b                                           ; $5774: $80
	add  b                                           ; $5775: $80
	jr   z, jr_07e_56f8                              ; $5776: $28 $80

	inc  a                                           ; $5778: $3c
	ld   b, $58                                      ; $5779: $06 $58
	ld   a, b                                        ; $577b: $78
	cp   b                                           ; $577c: $b8
	ld   hl, sp+$50                                  ; $577d: $f8 $50
	ldh  a, [$cf]                                    ; $577f: $f0 $cf
	add  a                                           ; $5781: $87
	nop                                              ; $5782: $00
	add  b                                           ; $5783: $80
	jr   nc, jr_07e_5706                             ; $5784: $30 $80

	ret  nz                                          ; $5786: $c0

	add  b                                           ; $5787: $80
	ld   [hl], b                                     ; $5788: $70
	nop                                              ; $5789: $00
	ldh  a, [rIE]                                    ; $578a: $f0 $ff
	nop                                              ; $578c: $00
	rst  $38                                         ; $578d: $ff
	nop                                              ; $578e: $00
	rst  $38                                         ; $578f: $ff
	nop                                              ; $5790: $00
	rst  $38                                         ; $5791: $ff
	nop                                              ; $5792: $00
	rst  $38                                         ; $5793: $ff
	nop                                              ; $5794: $00
	rst  $38                                         ; $5795: $ff
	nop                                              ; $5796: $00
	rst  $30                                         ; $5797: $f7
	nop                                              ; $5798: $00
	or   $00                                         ; $5799: $f6 $00
	add  d                                           ; $579b: $82
	rrca                                             ; $579c: $0f
	inc  bc                                          ; $579d: $03
	nop                                              ; $579e: $00
	ld   bc, $000e                                   ; $579f: $01 $0e $00
	add  b                                           ; $57a2: $80
	ld   bc, $0000                                   ; $57a3: $01 $00 $00
	add  e                                           ; $57a6: $83
	rrca                                             ; $57a7: $0f
	add  b                                           ; $57a8: $80
	ldh  a, [rTMA]                                   ; $57a9: $f0 $06
	rrca                                             ; $57ab: $0f
	nop                                              ; $57ac: $00
	ldh  a, [rP1]                                    ; $57ad: $f0 $00
	ld   [$070f], sp                                 ; $57af: $08 $0f $07
	add  c                                           ; $57b2: $81
	rst  $38                                         ; $57b3: $ff
	ld   [bc], a                                     ; $57b4: $02
	ld   a, [$faff]                                  ; $57b5: $fa $ff $fa
	add  b                                           ; $57b8: $80
	rst  $38                                         ; $57b9: $ff
	add  b                                           ; $57ba: $80
	nop                                              ; $57bb: $00
	inc  bc                                          ; $57bc: $03
	rrca                                             ; $57bd: $0f
	adc  a                                           ; $57be: $8f
	rst  $38                                         ; $57bf: $ff
	ld   a, a                                        ; $57c0: $7f
	add  e                                           ; $57c1: $83
	rst  $38                                         ; $57c2: $ff
	ld   b, $20                                      ; $57c3: $06 $20
	rst  $38                                         ; $57c5: $ff
	rst  JumpTable                                         ; $57c6: $df
	nop                                              ; $57c7: $00
	ld   a, a                                        ; $57c8: $7f
	rst  $38                                         ; $57c9: $ff
	ld   a, a                                        ; $57ca: $7f
	add  c                                           ; $57cb: $81
	rst  $38                                         ; $57cc: $ff
	add  b                                           ; $57cd: $80
	ldh  a, [$82]                                    ; $57ce: $f0 $82
	rst  $38                                         ; $57d0: $ff
	inc  b                                           ; $57d1: $04
	nop                                              ; $57d2: $00
	rst  $38                                         ; $57d3: $ff
	pop  af                                          ; $57d4: $f1
	ccf                                              ; $57d5: $3f
	adc  $81                                         ; $57d6: $ce $81
	rst  $38                                         ; $57d8: $ff
	inc  bc                                          ; $57d9: $03
	sub  b                                           ; $57da: $90
	rst  $38                                         ; $57db: $ff
	ld   l, a                                        ; $57dc: $6f
	nop                                              ; $57dd: $00
	add  b                                           ; $57de: $80
	rst  $38                                         ; $57df: $ff
	rlca                                             ; $57e0: $07
	add  b                                           ; $57e1: $80
	rst  $38                                         ; $57e2: $ff
	rra                                              ; $57e3: $1f
	ldh  [$80], a                                    ; $57e4: $e0 $80
	rst  $38                                         ; $57e6: $ff
	nop                                              ; $57e7: $00
	rst  $38                                         ; $57e8: $ff
	add  b                                           ; $57e9: $80
	db   $fc                                         ; $57ea: $fc
	ld   a, [de]                                     ; $57eb: $1a
	nop                                              ; $57ec: $00
	rst  $38                                         ; $57ed: $ff
	jp   $fc3f                                       ; $57ee: $c3 $3f $fc


	rst  $38                                         ; $57f1: $ff
	jr   @+$01                                       ; $57f2: $18 $ff

	and  $09                                         ; $57f4: $e6 $09
	ld   [$2fff], sp                                 ; $57f6: $08 $ff $2f
	rst  $38                                         ; $57f9: $ff
	inc  l                                           ; $57fa: $2c
	inc  bc                                          ; $57fb: $03
	jp   $3cff                                       ; $57fc: $c3 $ff $3c


	rst  $38                                         ; $57ff: $ff
	ld   bc, $01ff                                   ; $5800: $01 $ff $01
	rst  $38                                         ; $5803: $ff
	db   $10                                         ; $5804: $10
	rst  $38                                         ; $5805: $ff
	db   $10                                         ; $5806: $10
	add  c                                           ; $5807: $81
	rst  $38                                         ; $5808: $ff
	add  hl, de                                      ; $5809: $19
	ld   b, $ff                                      ; $580a: $06 $ff
	ldh  [rIE], a                                    ; $580c: $e0 $ff
	ld   d, $ff                                      ; $580e: $16 $ff
	ld   c, $ff                                      ; $5810: $0e $ff
	nop                                              ; $5812: $00
	rst  $38                                         ; $5813: $ff
	ld   d, [hl]                                     ; $5814: $56
	rst  $38                                         ; $5815: $ff
	ld   d, a                                        ; $5816: $57
	rst  $38                                         ; $5817: $ff
	db   $fd                                         ; $5818: $fd
	rst  $38                                         ; $5819: $ff
	inc  c                                           ; $581a: $0c
	cp   $e5                                         ; $581b: $fe $e5
	db   $fd                                         ; $581d: $fd
	ld   d, b                                        ; $581e: $50
	ei                                               ; $581f: $fb
	inc  sp                                          ; $5820: $33
	or   $48                                         ; $5821: $f6 $48
	adc  $80                                         ; $5823: $ce $80
	add  b                                           ; $5825: $80
	add  b                                           ; $5826: $80
	nop                                              ; $5827: $00
	add  hl, hl                                      ; $5828: $29
	db   $10                                         ; $5829: $10
	rla                                              ; $582a: $17
	cpl                                              ; $582b: $2f
	dec  sp                                          ; $582c: $3b
	rlca                                             ; $582d: $07
	rla                                              ; $582e: $17
	dec  hl                                          ; $582f: $2b
	ccf                                              ; $5830: $3f
	rlca                                             ; $5831: $07
	inc  de                                          ; $5832: $13
	adc  l                                           ; $5833: $8d
	rst  $30                                         ; $5834: $f7
	ld   b, c                                        ; $5835: $41
	add  hl, sp                                      ; $5836: $39
	ld   bc, $1b03                                   ; $5837: $01 $03 $1b
	jp   hl                                          ; $583a: $e9


	ldh  a, [c]                                      ; $583b: $f2
	di                                               ; $583c: $f3
	call nc, $83c7                                   ; $583d: $d4 $c7 $83
	and  b                                           ; $5840: $a0
	ret  nz                                          ; $5841: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5842: $cf
	rst  $10                                         ; $5843: $d7
	sbc  a                                           ; $5844: $9f
	nop                                              ; $5845: $00
	add  a                                           ; $5846: $87
	ld   bc, $3f3e                                   ; $5847: $01 $3e $3f
	rst  $38                                         ; $584a: $ff
	nop                                              ; $584b: $00
	rst  $38                                         ; $584c: $ff
	inc  c                                           ; $584d: $0c
	rst  $30                                         ; $584e: $f7
	inc  b                                           ; $584f: $04
	rst  $38                                         ; $5850: $ff
	rra                                              ; $5851: $1f
	ldh  [$80], a                                    ; $5852: $e0 $80
	rst  $38                                         ; $5854: $ff
	ld   a, [bc]                                     ; $5855: $0a
	ld   bc, $feff                                   ; $5856: $01 $ff $fe
	jr   nc, jr_07e_58b5                             ; $5859: $30 $5a

	ld   l, d                                        ; $585b: $6a
	nop                                              ; $585c: $00
	rst  $38                                         ; $585d: $ff
	ld   b, b                                        ; $585e: $40
	cp   a                                           ; $585f: $bf
	nop                                              ; $5860: $00
	add  b                                           ; $5861: $80
	rst  $38                                         ; $5862: $ff
	nop                                              ; $5863: $00
	db   $10                                         ; $5864: $10
	add  b                                           ; $5865: $80
	rst  JumpTable                                         ; $5866: $df
	nop                                              ; $5867: $00
	db   $10                                         ; $5868: $10
	add  b                                           ; $5869: $80
	rst  $38                                         ; $586a: $ff
	nop                                              ; $586b: $00
	nop                                              ; $586c: $00
	add  b                                           ; $586d: $80
	inc  b                                           ; $586e: $04
	rlca                                             ; $586f: $07
	nop                                              ; $5870: $00
	rst  $38                                         ; $5871: $ff
	ei                                               ; $5872: $fb
	inc  d                                           ; $5873: $14
	ret  nc                                          ; $5874: $d0

	rst  $38                                         ; $5875: $ff
	ccf                                              ; $5876: $3f
	nop                                              ; $5877: $00
	add  b                                           ; $5878: $80
	ldh  a, [rP1]                                    ; $5879: $f0 $00
	nop                                              ; $587b: $00
	add  b                                           ; $587c: $80
	rst  $38                                         ; $587d: $ff
	inc  bc                                          ; $587e: $03
	inc  b                                           ; $587f: $04

Call_07e_5880:
	inc  c                                           ; $5880: $0c
	ld   [$8000], sp                                 ; $5881: $08 $00 $80
	rst  $38                                         ; $5884: $ff
	add  b                                           ; $5885: $80
	nop                                              ; $5886: $00
	add  b                                           ; $5887: $80
	rst  $38                                         ; $5888: $ff
	inc  bc                                          ; $5889: $03
	db   $10                                         ; $588a: $10
	ldh  [$f8], a                                    ; $588b: $e0 $f8
	ld   [$fe80], sp                                 ; $588d: $08 $80 $fe
	nop                                              ; $5890: $00
	nop                                              ; $5891: $00
	add  b                                           ; $5892: $80
	rra                                              ; $5893: $1f
	ld   b, $2b                                      ; $5894: $06 $2b
	rst  $38                                         ; $5896: $ff
	push de                                          ; $5897: $d5
	ld   bc, $ff0f                                   ; $5898: $01 $0f $ff
	ldh  a, [$81]                                    ; $589b: $f0 $81
	nop                                              ; $589d: $00
	inc  bc                                          ; $589e: $03
	rrca                                             ; $589f: $0f
	rst  $38                                         ; $58a0: $ff
	or   $06                                         ; $58a1: $f6 $06
	add  h                                           ; $58a3: $84
	rrca                                             ; $58a4: $0f
	add  b                                           ; $58a5: $80
	nop                                              ; $58a6: $00
	add  b                                           ; $58a7: $80
	rrca                                             ; $58a8: $0f
	add  b                                           ; $58a9: $80
	nop                                              ; $58aa: $00
	add  d                                           ; $58ab: $82
	rrca                                             ; $58ac: $0f
	add  d                                           ; $58ad: $82
	rst  $38                                         ; $58ae: $ff
	add  b                                           ; $58af: $80
	ld   hl, sp-$80                                  ; $58b0: $f8 $80
	nop                                              ; $58b2: $00
	inc  c                                           ; $58b3: $0c
	sub  b                                           ; $58b4: $90

jr_07e_58b5:
	rst  $38                                         ; $58b5: $ff
	ld   l, a                                        ; $58b6: $6f
	nop                                              ; $58b7: $00
	ldh  a, [c]                                      ; $58b8: $f2
	di                                               ; $58b9: $f3
	ldh  [$ef], a                                    ; $58ba: $e0 $ef
	pop  af                                          ; $58bc: $f1
	rst  $38                                         ; $58bd: $ff
	ret  nz                                          ; $58be: $c0

	rst  $38                                         ; $58bf: $ff
	ccf                                              ; $58c0: $3f
	add  d                                           ; $58c1: $82
	nop                                              ; $58c2: $00
	rlca                                             ; $58c3: $07
	rst  $38                                         ; $58c4: $ff
	cp   a                                           ; $58c5: $bf
	ld   a, b                                        ; $58c6: $78
	rlca                                             ; $58c7: $07
	rst  $38                                         ; $58c8: $ff
	ccf                                              ; $58c9: $3f
	rst  $38                                         ; $58ca: $ff
	nop                                              ; $58cb: $00
	add  b                                           ; $58cc: $80
	ret  nz                                          ; $58cd: $c0

	dec  b                                           ; $58ce: $05
	rst  $38                                         ; $58cf: $ff
	ei                                               ; $58d0: $fb
	rlca                                             ; $58d1: $07
	db   $10                                         ; $58d2: $10
	rra                                              ; $58d3: $1f
	inc  c                                           ; $58d4: $0c
	add  b                                           ; $58d5: $80
	rst  $38                                         ; $58d6: $ff
	nop                                              ; $58d7: $00
	nop                                              ; $58d8: $00
	add  d                                           ; $58d9: $82
	rst  $38                                         ; $58da: $ff
	nop                                              ; $58db: $00
	nop                                              ; $58dc: $00
	add  b                                           ; $58dd: $80
	ld   bc, $ff15                                   ; $58de: $01 $15 $ff
	ld   a, [$f50f]                                  ; $58e1: $fa $0f $f5
	rst  $38                                         ; $58e4: $ff
	nop                                              ; $58e5: $00
	rst  $38                                         ; $58e6: $ff
	or   $09                                         ; $58e7: $f6 $09
	ldh  a, [$f3]                                    ; $58e9: $f0 $f3
	ret  nz                                          ; $58eb: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ec: $cf
	ld   e, b                                        ; $58ed: $58
	rst  $38                                         ; $58ee: $ff
	add  e                                           ; $58ef: $83
	rst  $38                                         ; $58f0: $ff
	sub  [hl]                                        ; $58f1: $96
	rst  $38                                         ; $58f2: $ff
	ld   d, l                                        ; $58f3: $55
	rst  $38                                         ; $58f4: $ff
	inc  d                                           ; $58f5: $14
	add  b                                           ; $58f6: $80
	rst  $38                                         ; $58f7: $ff
	ld   b, $c0                                      ; $58f8: $06 $c0
	dec  a                                           ; $58fa: $3d
	rst  $38                                         ; $58fb: $ff
	ld   a, [$28ff]                                  ; $58fc: $fa $ff $28
	ret  nc                                          ; $58ff: $d0

	add  b                                           ; $5900: $80
	xor  $1e                                         ; $5901: $ee $1e
	cp   e                                           ; $5903: $bb
	rst  $38                                         ; $5904: $ff
	ld   d, c                                        ; $5905: $51
	rst  $38                                         ; $5906: $ff
	ld   h, c                                        ; $5907: $61
	rst  $38                                         ; $5908: $ff
	xor  e                                           ; $5909: $ab
	ld   a, a                                        ; $590a: $7f
	ld   e, $fe                                      ; $590b: $1e $fe
	inc  e                                           ; $590d: $1c
	db   $fd                                         ; $590e: $fd
	and  c                                           ; $590f: $a1
	nop                                              ; $5910: $00
	add  b                                           ; $5911: $80
	add  c                                           ; $5912: $81
	ld   d, l                                        ; $5913: $55
	ld   d, a                                        ; $5914: $57
	db   $e3                                         ; $5915: $e3
	rst  $28                                         ; $5916: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5917: $cf
	rst  JumpTable                                         ; $5918: $df
	jr   nz, jr_07e_595a                             ; $5919: $20 $3f

	rst  $38                                         ; $591b: $ff
	add  b                                           ; $591c: $80
	ld   a, a                                        ; $591d: $7f
	rst  $38                                         ; $591e: $ff
	nop                                              ; $591f: $00
	rst  $38                                         ; $5920: $ff
	nop                                              ; $5921: $00
	add  l                                           ; $5922: $85
	rst  $38                                         ; $5923: $ff
	inc  bc                                          ; $5924: $03
	inc  bc                                          ; $5925: $03
	db   $fc                                         ; $5926: $fc
	rst  $38                                         ; $5927: $ff
	nop                                              ; $5928: $00
	add  b                                           ; $5929: $80
	ret  nz                                          ; $592a: $c0

	inc  bc                                          ; $592b: $03
	rlca                                             ; $592c: $07
	cp   $04                                         ; $592d: $fe $04
	cp   $80                                         ; $592f: $fe $80
	db   $fc                                         ; $5931: $fc
	rrca                                             ; $5932: $0f
	db   $fd                                         ; $5933: $fd
	ld   sp, hl                                      ; $5934: $f9
	ldh  a, [$f8]                                    ; $5935: $f0 $f8
	ldh  a, [c]                                      ; $5937: $f2
	inc  bc                                          ; $5938: $03
	push hl                                          ; $5939: $e5
	rlca                                             ; $593a: $07
	inc  bc                                          ; $593b: $03
	daa                                              ; $593c: $27
	add  $01                                         ; $593d: $c6 $01
	inc  bc                                          ; $593f: $03
	ld   a, a                                        ; $5940: $7f
	ld   a, l                                        ; $5941: $7d
	cp   $80                                         ; $5942: $fe $80
	rst  $38                                         ; $5944: $ff
	inc  bc                                          ; $5945: $03
	add  sp, $1f                                     ; $5946: $e8 $1f
	rla                                              ; $5948: $17
	ldh  [$80], a                                    ; $5949: $e0 $80
	cp   $80                                         ; $594b: $fe $80
	rst  $38                                         ; $594d: $ff
	ld   [bc], a                                     ; $594e: $02
	rra                                              ; $594f: $1f
	rst  $38                                         ; $5950: $ff
	ldh  [$80], a                                    ; $5951: $e0 $80
	rst  $38                                         ; $5953: $ff
	nop                                              ; $5954: $00
	nop                                              ; $5955: $00
	add  b                                           ; $5956: $80
	ccf                                              ; $5957: $3f
	inc  b                                           ; $5958: $04
	cp   c                                           ; $5959: $b9

jr_07e_595a:
	cp   a                                           ; $595a: $bf
	ld   b, $e0                                      ; $595b: $06 $e0
	rst  $38                                         ; $595d: $ff
	add  c                                           ; $595e: $81
	rst  JumpTable                                         ; $595f: $df
	dec  b                                           ; $5960: $05
	ccf                                              ; $5961: $3f
	rst  $38                                         ; $5962: $ff
	ld   [bc], a                                     ; $5963: $02
	rst  $38                                         ; $5964: $ff
	db   $fd                                         ; $5965: $fd
	inc  c                                           ; $5966: $0c
	add  b                                           ; $5967: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5968: $cf
	inc  bc                                          ; $5969: $03
	adc  [hl]                                        ; $596a: $8e
	rst  $38                                         ; $596b: $ff
	ld   a, l                                        ; $596c: $7d
	nop                                              ; $596d: $00
	add  d                                           ; $596e: $82
	rst  $38                                         ; $596f: $ff
	add  b                                           ; $5970: $80
	db   $f4                                         ; $5971: $f4
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	add  b                                           ; $5974: $80
	rst  $38                                         ; $5975: $ff
	nop                                              ; $5976: $00
	nop                                              ; $5977: $00
	add  b                                           ; $5978: $80
	ldh  a, [rP1]                                    ; $5979: $f0 $00
	nop                                              ; $597b: $00
	add  b                                           ; $597c: $80
	rst  $38                                         ; $597d: $ff
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	add  b                                           ; $5980: $80
	ldh  [$80], a                                    ; $5981: $e0 $80
	ld   hl, sp-$80                                  ; $5983: $f8 $80
	rst  $38                                         ; $5985: $ff
	inc  bc                                          ; $5986: $03
	nop                                              ; $5987: $00
	db   $e3                                         ; $5988: $e3
	ldh  [c], a                                      ; $5989: $e2
	ld   bc, $ff80                                   ; $598a: $01 $80 $ff
	ld   [bc], a                                     ; $598d: $02
	rlca                                             ; $598e: $07
	ld   b, a                                        ; $598f: $47
	ld   b, b                                        ; $5990: $40
	add  d                                           ; $5991: $82
	add  b                                           ; $5992: $80
	dec  b                                           ; $5993: $05
	ret  nz                                          ; $5994: $c0

	ld   hl, $3fe1                                   ; $5995: $21 $e1 $3f
	rst  $38                                         ; $5998: $ff
	ret  nz                                          ; $5999: $c0

	add  b                                           ; $599a: $80
	nop                                              ; $599b: $00
	inc  bc                                          ; $599c: $03
	add  b                                           ; $599d: $80
	adc  h                                           ; $599e: $8c
	rst  $38                                         ; $599f: $ff
	di                                               ; $59a0: $f3
	add  c                                           ; $59a1: $81
	nop                                              ; $59a2: $00
	add  b                                           ; $59a3: $80
	rrca                                             ; $59a4: $0f
	add  a                                           ; $59a5: $87
	nop                                              ; $59a6: $00
	add  b                                           ; $59a7: $80
	rst  $38                                         ; $59a8: $ff
	add  b                                           ; $59a9: $80
	ld   a, [$d580]                                  ; $59aa: $fa $80 $d5
	add  b                                           ; $59ad: $80
	xor  b                                           ; $59ae: $a8
	adc  e                                           ; $59af: $8b
	nop                                              ; $59b0: $00
	ld   [bc], a                                     ; $59b1: $02
	inc  bc                                          ; $59b2: $03
	ld   [bc], a                                     ; $59b3: $02
	ld   bc, $0085                                   ; $59b4: $01 $85 $00
	inc  b                                           ; $59b7: $04
	dec  e                                           ; $59b8: $1d
	inc  bc                                          ; $59b9: $03
	ld   h, e                                        ; $59ba: $63
	ld   b, [hl]                                     ; $59bb: $46
	call nc, $1880                                   ; $59bc: $d4 $80 $18
	ld   bc, $df30                                   ; $59bf: $01 $30 $df
	add  l                                           ; $59c2: $85
	nop                                              ; $59c3: $00
	nop                                              ; $59c4: $00
	ret  nc                                          ; $59c5: $d0

	add  l                                           ; $59c6: $85
	ldh  [rP1], a                                    ; $59c7: $e0 $00
	sub  e                                           ; $59c9: $93
	add  c                                           ; $59ca: $81
	ld   b, c                                        ; $59cb: $41
	nop                                              ; $59cc: $00
	ld   b, e                                        ; $59cd: $43
	add  l                                           ; $59ce: $85
	ld   b, c                                        ; $59cf: $41
	add  c                                           ; $59d0: $81
	ld   e, a                                        ; $59d1: $5f
	ld   b, $41                                      ; $59d2: $06 $41
	jr   jr_07e_59f1                                 ; $59d4: $18 $1b

	inc  sp                                          ; $59d6: $33
	dec  sp                                          ; $59d7: $3b
	dec  de                                          ; $59d8: $1b
	dec  sp                                          ; $59d9: $3b
	add  d                                           ; $59da: $82
	ld   a, e                                        ; $59db: $7b
	ld   c, $73                                      ; $59dc: $0e $73
	ld   a, e                                        ; $59de: $7b
	ld   d, e                                        ; $59df: $53
	ld   a, e                                        ; $59e0: $7b
	ld   e, e                                        ; $59e1: $5b
	ld   a, e                                        ; $59e2: $7b
	ld   a, b                                        ; $59e3: $78
	ld   a, [hl]                                     ; $59e4: $7e
	ld   a, d                                        ; $59e5: $7a
	ld   a, [hl]                                     ; $59e6: $7e
	halt                                             ; $59e7: $76
	ld   a, [hl]                                     ; $59e8: $7e
	ld   d, d                                        ; $59e9: $52
	ld   a, [hl]                                     ; $59ea: $7e
	ld   e, [hl]                                     ; $59eb: $5e
	add  l                                           ; $59ec: $85
	ld   a, [hl]                                     ; $59ed: $7e
	nop                                              ; $59ee: $00
	inc  bc                                          ; $59ef: $03
	adc  l                                           ; $59f0: $8d

jr_07e_59f1:
	ldh  [rP1], a                                    ; $59f1: $e0 $00
	sub  a                                           ; $59f3: $97
	add  b                                           ; $59f4: $80
	ld   d, h                                        ; $59f5: $54
	add  b                                           ; $59f6: $80
	ld   d, e                                        ; $59f7: $53
	rlca                                             ; $59f8: $07
	ld   d, h                                        ; $59f9: $54
	ld   c, a                                        ; $59fa: $4f
	ld   b, e                                        ; $59fb: $43
	ld   b, b                                        ; $59fc: $40
	ld   e, h                                        ; $59fd: $5c
	ld   e, l                                        ; $59fe: $5d
	ld   b, c                                        ; $59ff: $41
	ld   e, [hl]                                     ; $5a00: $5e
	add  c                                           ; $5a01: $81
	ld   e, a                                        ; $5a02: $5f
	dec  b                                           ; $5a03: $05
	db   $10                                         ; $5a04: $10
	rra                                              ; $5a05: $1f
	ld   l, $e0                                      ; $5a06: $2e $e0
	rst  JumpTable                                         ; $5a08: $df
	rra                                              ; $5a09: $1f
	add  b                                           ; $5a0a: $80
	ldh  [$80], a                                    ; $5a0b: $e0 $80
	inc  c                                           ; $5a0d: $0c
	add  b                                           ; $5a0e: $80
	ld   a, h                                        ; $5a0f: $7c
	add  b                                           ; $5a10: $80
	ld   l, h                                        ; $5a11: $6c
	add  b                                           ; $5a12: $80
	ld   d, h                                        ; $5a13: $54
	add  b                                           ; $5a14: $80
	rlca                                             ; $5a15: $07
	add  b                                           ; $5a16: $80
	ld   hl, sp-$80                                  ; $5a17: $f8 $80
	nop                                              ; $5a19: $00
	ld   b, $24                                      ; $5a1a: $06 $24
	inc  a                                           ; $5a1c: $3c
	ld   a, [hl]                                     ; $5a1d: $7e
	ld   h, [hl]                                     ; $5a1e: $66
	ld   e, b                                        ; $5a1f: $58
	ld   e, d                                        ; $5a20: $5a
	ld   a, [de]                                     ; $5a21: $1a
	add  c                                           ; $5a22: $81
	ld   e, d                                        ; $5a23: $5a
	ld   bc, $c08d                                   ; $5a24: $01 $8d $c0
	adc  h                                           ; $5a27: $8c
	nop                                              ; $5a28: $00
	ld   de, $4350                                   ; $5a29: $11 $50 $43
	ld   b, d                                        ; $5a2c: $42
	ld   e, a                                        ; $5a2d: $5f
	ld   b, c                                        ; $5a2e: $41
	ld   e, a                                        ; $5a2f: $5f
	add  b                                           ; $5a30: $80
	rst  $38                                         ; $5a31: $ff
	or   d                                           ; $5a32: $b2
	cp   $2f                                         ; $5a33: $fe $2f
	rrca                                             ; $5a35: $0f
	ld   c, h                                        ; $5a36: $4c
	ld   a, a                                        ; $5a37: $7f
	scf                                              ; $5a38: $37
	rrca                                             ; $5a39: $0f
	ld   a, e                                        ; $5a3a: $7b
	ld   a, h                                        ; $5a3b: $7c
	add  h                                           ; $5a3c: $84
	ld   a, l                                        ; $5a3d: $7d
	add  b                                           ; $5a3e: $80
	dec  a                                           ; $5a3f: $3d
	add  b                                           ; $5a40: $80
	pop  bc                                          ; $5a41: $c1
	dec  b                                           ; $5a42: $05
	inc  a                                           ; $5a43: $3c
	db   $fc                                         ; $5a44: $fc
	jp   $fcff                                       ; $5a45: $c3 $ff $fc


	ld   b, d                                        ; $5a48: $42
	adc  b                                           ; $5a49: $88
	jp   nz, $4280                                   ; $5a4a: $c2 $80 $42

	inc  bc                                          ; $5a4d: $03
	add  d                                           ; $5a4e: $82
	jp   nz, $000d                                   ; $5a4f: $c2 $0d $00

	adc  h                                           ; $5a52: $8c
	ret  nz                                          ; $5a53: $c0

	nop                                              ; $5a54: $00
	ldh  a, [$81]                                    ; $5a55: $f0 $81
	nop                                              ; $5a57: $00
	inc  d                                           ; $5a58: $14
	ldh  [hScriptOpcodeParams], a                                    ; $5a59: $e0 $a0
	ldh  [rLCDC], a                                  ; $5a5b: $e0 $40
	ld   b, c                                        ; $5a5d: $41
	ld   b, b                                        ; $5a5e: $40
	ld   b, [hl]                                     ; $5a5f: $46
	ld   b, h                                        ; $5a60: $44
	ld   c, l                                        ; $5a61: $4d
	ld   b, c                                        ; $5a62: $41
	ld   b, b                                        ; $5a63: $40
	ld   b, c                                        ; $5a64: $41
	jp   hl                                          ; $5a65: $e9


	nop                                              ; $5a66: $00
	jr   jr_07e_5a7a                                 ; $5a67: $18 $11

	inc  [hl]                                        ; $5a69: $34
	rlca                                             ; $5a6a: $07
	rst  ToBoot                                         ; $5a6b: $c7
	adc  a                                           ; $5a6c: $8f
	xor  e                                           ; $5a6d: $ab
	add  b                                           ; $5a6e: $80
	inc  sp                                          ; $5a6f: $33
	ld   bc, $4363                                   ; $5a70: $01 $63 $43
	add  b                                           ; $5a73: $80
	add  e                                           ; $5a74: $83
	ld   bc, $8203                                   ; $5a75: $01 $03 $82
	add  b                                           ; $5a78: $80
	ret  nz                                          ; $5a79: $c0

jr_07e_5a7a:
	nop                                              ; $5a7a: $00
	add  b                                           ; $5a7b: $80
	add  b                                           ; $5a7c: $80
	nop                                              ; $5a7d: $00
	add  b                                           ; $5a7e: $80
	inc  e                                           ; $5a7f: $1c
	inc  b                                           ; $5a80: $04
	ld   [hl], $3e                                   ; $5a81: $36 $3e
	ld   a, [hl-]                                    ; $5a83: $3a
	ld   a, $5e                                      ; $5a84: $3e $5e
	add  c                                           ; $5a86: $81
	ld   a, [hl]                                     ; $5a87: $7e
	nop                                              ; $5a88: $00
	inc  bc                                          ; $5a89: $03
	adc  l                                           ; $5a8a: $8d
	ldh  [rP1], a                                    ; $5a8b: $e0 $00
	adc  a                                           ; $5a8d: $8f
	add  b                                           ; $5a8e: $80
	ld   e, a                                        ; $5a8f: $5f
	inc  bc                                          ; $5a90: $03
	ld   c, c                                        ; $5a91: $49
	ld   c, a                                        ; $5a92: $4f
	ld   c, c                                        ; $5a93: $49
	ld   c, a                                        ; $5a94: $4f
	add  b                                           ; $5a95: $80
	ld   b, c                                        ; $5a96: $41
	add  b                                           ; $5a97: $80
	ld   e, a                                        ; $5a98: $5f
	nop                                              ; $5a99: $00
	ld   b, c                                        ; $5a9a: $41
	add  b                                           ; $5a9b: $80
	ld   e, a                                        ; $5a9c: $5f
	nop                                              ; $5a9d: $00
	ld   d, b                                        ; $5a9e: $50
	add  b                                           ; $5a9f: $80
	ld   d, c                                        ; $5aa0: $51
	add  l                                           ; $5aa1: $85
	ld   a, e                                        ; $5aa2: $7b
	inc  bc                                          ; $5aa3: $03
	ld   d, e                                        ; $5aa4: $53
	ld   a, e                                        ; $5aa5: $7b
	ld   h, c                                        ; $5aa6: $61
	ld   h, e                                        ; $5aa7: $63
	add  b                                           ; $5aa8: $80
	inc  bc                                          ; $5aa9: $03
	add  b                                           ; $5aaa: $80
	nop                                              ; $5aab: $00
	dec  b                                           ; $5aac: $05
	ld   d, d                                        ; $5aad: $52
	ld   a, [hl]                                     ; $5aae: $7e
	ld   a, d                                        ; $5aaf: $7a
	ld   a, [hl]                                     ; $5ab0: $7e
	ld   d, h                                        ; $5ab1: $54
	ld   a, h                                        ; $5ab2: $7c
	add  b                                           ; $5ab3: $80
	ld   h, b                                        ; $5ab4: $60
	add  d                                           ; $5ab5: $82
	nop                                              ; $5ab6: $00
	inc  b                                           ; $5ab7: $04
	inc  b                                           ; $5ab8: $04
	rlca                                             ; $5ab9: $07
	adc  e                                           ; $5aba: $8b
	ld   hl, sp+$5f                                  ; $5abb: $f8 $5f
	add  c                                           ; $5abd: $81
	ldh  [$03], a                                    ; $5abe: $e0 $03
	and  b                                           ; $5ac0: $a0
	ldh  [$60], a                                    ; $5ac1: $e0 $60
	ldh  [$80], a                                    ; $5ac3: $e0 $80
	add  b                                           ; $5ac5: $80
	ld   [$3020], sp                                 ; $5ac6: $08 $20 $30
	ld   d, b                                        ; $5ac9: $50
	ret  nz                                          ; $5aca: $c0

	or   b                                           ; $5acb: $b0
	jr   nc, jr_07e_5b2d                             ; $5acc: $30 $5f

	ld   d, c                                        ; $5ace: $51
	ld   e, l                                        ; $5acf: $5d
	add  e                                           ; $5ad0: $83
	ld   d, c                                        ; $5ad1: $51
	ld   bc, $414d                                   ; $5ad2: $01 $4d $41
	add  d                                           ; $5ad5: $82
	ld   e, a                                        ; $5ad6: $5f
	add  b                                           ; $5ad7: $80
	ld   b, c                                        ; $5ad8: $41
	nop                                              ; $5ad9: $00
	ld   c, l                                        ; $5ada: $4d
	adc  e                                           ; $5adb: $8b
	ld   e, h                                        ; $5adc: $5c
	inc  bc                                          ; $5add: $03
	ld   d, l                                        ; $5ade: $55
	ld   b, l                                        ; $5adf: $45
	jr   jr_07e_5b3c                                 ; $5ae0: $18 $5a

	adc  d                                           ; $5ae2: $8a
	ld   b, d                                        ; $5ae3: $42
	add  b                                           ; $5ae4: $80
	jp   nz, Jump_07e_4d00                           ; $5ae5: $c2 $00 $4d

	adc  e                                           ; $5ae8: $8b
	nop                                              ; $5ae9: $00
	add  b                                           ; $5aea: $80
	ret  nz                                          ; $5aeb: $c0

	ld   bc, $c1ce                                   ; $5aec: $01 $ce $c1
	add  b                                           ; $5aef: $80
	ld   hl, sp-$80                                  ; $5af0: $f8 $80
	rst  $38                                         ; $5af2: $ff
	ld   de, $ff7f                                   ; $5af3: $11 $7f $ff
	ld   l, a                                        ; $5af6: $6f
	rst  $38                                         ; $5af7: $ff
	db   $eb                                         ; $5af8: $eb
	rst  $38                                         ; $5af9: $ff
	dec  b                                           ; $5afa: $05
	rst  $38                                         ; $5afb: $ff
	ld   bc, $00ff                                   ; $5afc: $01 $ff $00
	rst  $38                                         ; $5aff: $ff
	rst  JumpTable                                         ; $5b00: $df
	ccf                                              ; $5b01: $3f
	dec  de                                          ; $5b02: $1b
	rlca                                             ; $5b03: $07
	db   $e3                                         ; $5b04: $e3
	ldh  [$80], a                                    ; $5b05: $e0 $80
	db   $fc                                         ; $5b07: $fc
	add  b                                           ; $5b08: $80
	rst  $38                                         ; $5b09: $ff
	ld   de, $ff8f                                   ; $5b0a: $11 $8f $ff
	adc  a                                           ; $5b0d: $8f
	rst  $38                                         ; $5b0e: $ff
	ld   a, $fe                                      ; $5b0f: $3e $fe
	jp   $fcff                                       ; $5b11: $c3 $ff $fc


	rst  $38                                         ; $5b14: $ff
	ld   a, a                                        ; $5b15: $7f
	rst  $38                                         ; $5b16: $ff

jr_07e_5b17:
	ld   l, a                                        ; $5b17: $6f
	rra                                              ; $5b18: $1f
	adc  l                                           ; $5b19: $8d
	add  e                                           ; $5b1a: $83
	pop  af                                          ; $5b1b: $f1
	ldh  a, [$80]                                    ; $5b1c: $f0 $80
	cp   $01                                         ; $5b1e: $fe $01
	rrca                                             ; $5b20: $0f
	nop                                              ; $5b21: $00
	add  b                                           ; $5b22: $80
	ret  nz                                          ; $5b23: $c0

	ld   [bc], a                                     ; $5b24: $02
	jr   nc, jr_07e_5b17                             ; $5b25: $30 $f0

	ret  nz                                          ; $5b27: $c0

	add  e                                           ; $5b28: $83
	ldh  a, [$0d]                                    ; $5b29: $f0 $0d
	or   b                                           ; $5b2b: $b0
	ld   [hl], b                                     ; $5b2c: $70

jr_07e_5b2d:
	jr   nc, jr_07e_5b2f                             ; $5b2d: $30 $00

jr_07e_5b2f:
	inc  l                                           ; $5b2f: $2c
	rst  $38                                         ; $5b30: $ff
	db   $d3                                         ; $5b31: $d3
	rst  $38                                         ; $5b32: $ff
	ldh  a, [rIE]                                    ; $5b33: $f0 $ff
	ld   hl, sp-$01                                  ; $5b35: $f8 $ff
	ld   [$800f], sp                                 ; $5b37: $08 $0f $80
	rla                                              ; $5b3a: $17
	add  b                                           ; $5b3b: $80

jr_07e_5b3c:
	rst  $38                                         ; $5b3c: $ff
	add  b                                           ; $5b3d: $80
	nop                                              ; $5b3e: $00
	ld   hl, rAUD1SWEEP                                   ; $5b3f: $21 $10 $ff
	rst  $28                                         ; $5b42: $ef
	rst  $38                                         ; $5b43: $ff
	inc  bc                                          ; $5b44: $03
	rst  $38                                         ; $5b45: $ff
	inc  bc                                          ; $5b46: $03
	rst  $38                                         ; $5b47: $ff
	jr   nc, @+$01                                   ; $5b48: $30 $ff

	rst  ToBoot                                         ; $5b4a: $c7
	rst  $38                                         ; $5b4b: $ff
	ret                                              ; $5b4c: $c9


	rst  $38                                         ; $5b4d: $ff
	ld   b, c                                        ; $5b4e: $41
	ld   a, a                                        ; $5b4f: $7f
	add  b                                           ; $5b50: $80
	rst  $38                                         ; $5b51: $ff
	ld   a, a                                        ; $5b52: $7f
	rst  $38                                         ; $5b53: $ff
	pop  de                                          ; $5b54: $d1
	rst  $38                                         ; $5b55: $ff
	pop  de                                          ; $5b56: $d1
	rst  $38                                         ; $5b57: $ff
	inc  bc                                          ; $5b58: $03
	rst  $38                                         ; $5b59: $ff
	add  sp, -$01                                    ; $5b5a: $e8 $ff
	inc  d                                           ; $5b5c: $14
	rst  $38                                         ; $5b5d: $ff
	ld   b, b                                        ; $5b5e: $40
	rst  $38                                         ; $5b5f: $ff
	or   b                                           ; $5b60: $b0
	nop                                              ; $5b61: $00
	add  b                                           ; $5b62: $80
	ldh  [rSC], a                                    ; $5b63: $e0 $02
	or   b                                           ; $5b65: $b0
	ldh  a, [$b0]                                    ; $5b66: $f0 $b0
	add  c                                           ; $5b68: $81
	ldh  a, [rSC]                                    ; $5b69: $f0 $02
	ld   [hl], b                                     ; $5b6b: $70
	ldh  a, [rSVBK]                                  ; $5b6c: $f0 $70
	add  d                                           ; $5b6e: $82
	ldh  a, [rIE]                                    ; $5b6f: $f0 $ff
	nop                                              ; $5b71: $00
	rst  $38                                         ; $5b72: $ff
	nop                                              ; $5b73: $00
	rst  $38                                         ; $5b74: $ff
	nop                                              ; $5b75: $00
	rst  $38                                         ; $5b76: $ff
	nop                                              ; $5b77: $00
	rst  $38                                         ; $5b78: $ff
	nop                                              ; $5b79: $00
	rst  $38                                         ; $5b7a: $ff
	nop                                              ; $5b7b: $00
	rst  $38                                         ; $5b7c: $ff
	nop                                              ; $5b7d: $00
	or   [hl]                                        ; $5b7e: $b6
	nop                                              ; $5b7f: $00
	inc  d                                           ; $5b80: $14
	ld   bc, $0705                                   ; $5b81: $01 $05 $07
	inc  b                                           ; $5b84: $04
	dec  c                                           ; $5b85: $0d
	ld   [bc], a                                     ; $5b86: $02
	add  hl, bc                                      ; $5b87: $09
	dec  b                                           ; $5b88: $05
	add  b                                           ; $5b89: $80
	ld   a, [bc]                                     ; $5b8a: $0a
	add  b                                           ; $5b8b: $80
	rlca                                             ; $5b8c: $07
	add  b                                           ; $5b8d: $80
	ld   [$0480], sp                                 ; $5b8e: $08 $80 $04
	add  b                                           ; $5b91: $80
	nop                                              ; $5b92: $00
	add  b                                           ; $5b93: $80
	ld   b, b                                        ; $5b94: $40
	add  b                                           ; $5b95: $80
	and  e                                           ; $5b96: $a3
	add  b                                           ; $5b97: $80
	ld   e, h                                        ; $5b98: $5c
	add  b                                           ; $5b99: $80
	ldh  [$80], a                                    ; $5b9a: $e0 $80
	nop                                              ; $5b9c: $00
	dec  c                                           ; $5b9d: $0d
	ld   bc, $0f00                                   ; $5b9e: $01 $00 $0f
	ld   bc, $0a3a                                   ; $5ba1: $01 $3a $0a
	ld   a, b                                        ; $5ba4: $78
	ld   c, b                                        ; $5ba5: $48
	cp   b                                           ; $5ba6: $b8
	rst  $38                                         ; $5ba7: $ff
	rrca                                             ; $5ba8: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ba9: $cf
	call $80cb                                       ; $5baa: $cd $cb $80
	pop  bc                                          ; $5bad: $c1
	ld   bc, $0b7b                                   ; $5bae: $01 $7b $0b
	add  b                                           ; $5bb1: $80
	ld   d, l                                        ; $5bb2: $55
	add  b                                           ; $5bb3: $80
	xor  e                                           ; $5bb4: $ab
	nop                                              ; $5bb5: $00
	ld   bc, $3d80                                   ; $5bb6: $01 $80 $3d
	add  b                                           ; $5bb9: $80
	db   $fd                                         ; $5bba: $fd
	add  d                                           ; $5bbb: $82
	db   $fc                                         ; $5bbc: $fc
	add  b                                           ; $5bbd: $80
	ldh  a, [$80]                                    ; $5bbe: $f0 $80
	ldh  [$80], a                                    ; $5bc0: $e0 $80
	add  b                                           ; $5bc2: $80
	add  b                                           ; $5bc3: $80
	rla                                              ; $5bc4: $17
	add  b                                           ; $5bc5: $80
	ldh  [$8a], a                                    ; $5bc6: $e0 $8a
	nop                                              ; $5bc8: $00
	add  b                                           ; $5bc9: $80
	dec  a                                           ; $5bca: $3d
	add  b                                           ; $5bcb: $80
	nop                                              ; $5bcc: $00
	add  b                                           ; $5bcd: $80
	ld   bc, $0580                                   ; $5bce: $01 $80 $05
	add  b                                           ; $5bd1: $80
	dec  c                                           ; $5bd2: $0d
	add  b                                           ; $5bd3: $80
	dec  a                                           ; $5bd4: $3d
	add  b                                           ; $5bd5: $80
	dec  [hl]                                        ; $5bd6: $35
	add  b                                           ; $5bd7: $80
	or   c                                           ; $5bd8: $b1
	inc  bc                                          ; $5bd9: $03
	or   e                                           ; $5bda: $b3
	ld   c, h                                        ; $5bdb: $4c
	rst  $38                                         ; $5bdc: $ff
	ld   a, a                                        ; $5bdd: $7f
	add  c                                           ; $5bde: $81
	rst  $38                                         ; $5bdf: $ff
	nop                                              ; $5be0: $00
	cp   a                                           ; $5be1: $bf
	add  e                                           ; $5be2: $83
	rst  $38                                         ; $5be3: $ff
	nop                                              ; $5be4: $00
	rst  JumpTable                                         ; $5be5: $df
	add  c                                           ; $5be6: $81
	rst  $38                                         ; $5be7: $ff
	nop                                              ; $5be8: $00
	rra                                              ; $5be9: $1f
	add  e                                           ; $5bea: $83
	rst  $38                                         ; $5beb: $ff
	ld   a, [bc]                                     ; $5bec: $0a
	db   $fc                                         ; $5bed: $fc
	rst  $38                                         ; $5bee: $ff
	pop  af                                          ; $5bef: $f1
	rst  $38                                         ; $5bf0: $ff
	jp   hl                                          ; $5bf1: $e9


	rst  $38                                         ; $5bf2: $ff
	add  d                                           ; $5bf3: $82
	rst  $38                                         ; $5bf4: $ff
	ld   h, [hl]                                     ; $5bf5: $66
	rst  $38                                         ; $5bf6: $ff
	nop                                              ; $5bf7: $00
	add  e                                           ; $5bf8: $83
	rst  $38                                         ; $5bf9: $ff
	ld   a, [bc]                                     ; $5bfa: $0a
	nop                                              ; $5bfb: $00
	rst  $38                                         ; $5bfc: $ff
	ld   l, c                                        ; $5bfd: $69
	rst  $38                                         ; $5bfe: $ff
	jr   nz, @+$01                                   ; $5bff: $20 $ff

jr_07e_5c01:
	ld   e, $ff                                      ; $5c01: $1e $ff
	ld   d, a                                        ; $5c03: $57
	rst  $38                                         ; $5c04: $ff
	nop                                              ; $5c05: $00
	add  e                                           ; $5c06: $83
	rst  $38                                         ; $5c07: $ff
	ld   a, [bc]                                     ; $5c08: $0a
	nop                                              ; $5c09: $00
	rst  $38                                         ; $5c0a: $ff
	add  hl, de                                      ; $5c0b: $19
	rst  $38                                         ; $5c0c: $ff

jr_07e_5c0d:
	ld   d, b                                        ; $5c0d: $50
	rst  $38                                         ; $5c0e: $ff

jr_07e_5c0f:
	inc  b                                           ; $5c0f: $04
	rst  $38                                         ; $5c10: $ff
	ld   c, l                                        ; $5c11: $4d
	rst  $38                                         ; $5c12: $ff
	nop                                              ; $5c13: $00
	add  e                                           ; $5c14: $83
	rst  $38                                         ; $5c15: $ff
	ld   a, [bc]                                     ; $5c16: $0a
	nop                                              ; $5c17: $00
	rst  $38                                         ; $5c18: $ff
	xor  e                                           ; $5c19: $ab
	rst  $38                                         ; $5c1a: $ff
	ret                                              ; $5c1b: $c9


	rst  $38                                         ; $5c1c: $ff
	nop                                              ; $5c1d: $00
	rst  $38                                         ; $5c1e: $ff
	ld   h, d                                        ; $5c1f: $62
	rst  $38                                         ; $5c20: $ff
	nop                                              ; $5c21: $00
	add  e                                           ; $5c22: $83
	rst  $38                                         ; $5c23: $ff
	ld   a, [bc]                                     ; $5c24: $0a
	nop                                              ; $5c25: $00
	rst  $38                                         ; $5c26: $ff
	ld   c, b                                        ; $5c27: $48
	rst  $38                                         ; $5c28: $ff
	ld   [bc], a                                     ; $5c29: $02
	rst  $38                                         ; $5c2a: $ff
	ldh  a, [rIE]                                    ; $5c2b: $f0 $ff
	cp   d                                           ; $5c2d: $ba
	rst  $38                                         ; $5c2e: $ff
	nop                                              ; $5c2f: $00
	add  e                                           ; $5c30: $83
	rst  $38                                         ; $5c31: $ff
	ld   a, [bc]                                     ; $5c32: $0a
	nop                                              ; $5c33: $00
	rst  $38                                         ; $5c34: $ff
	call $86ff                                       ; $5c35: $cd $ff $86
	rst  $38                                         ; $5c38: $ff
	jr   nz, @+$01                                   ; $5c39: $20 $ff

	ld   l, e                                        ; $5c3b: $6b
	rst  $38                                         ; $5c3c: $ff
	nop                                              ; $5c3d: $00
	add  e                                           ; $5c3e: $83
	rst  $38                                         ; $5c3f: $ff
	ld   a, [bc]                                     ; $5c40: $0a
	ld   bc, $5cff                                   ; $5c41: $01 $ff $5c
	rst  $38                                         ; $5c44: $ff
	ld   c, b                                        ; $5c45: $48
	rst  $38                                         ; $5c46: $ff
	ld   a, [bc]                                     ; $5c47: $0a
	rst  $38                                         ; $5c48: $ff
	rra                                              ; $5c49: $1f
	rst  $38                                         ; $5c4a: $ff
	nop                                              ; $5c4b: $00
	add  l                                           ; $5c4c: $85
	rst  $38                                         ; $5c4d: $ff
	ld   [$ff7f], sp                                 ; $5c4e: $08 $7f $ff
	sbc  a                                           ; $5c51: $9f
	rst  $38                                         ; $5c52: $ff
	ld   b, a                                        ; $5c53: $47
	rst  $38                                         ; $5c54: $ff
	ld   e, e                                        ; $5c55: $5b
	rst  $38                                         ; $5c56: $ff
	inc  c                                           ; $5c57: $0c
	add  b                                           ; $5c58: $80
	ldh  a, [c]                                      ; $5c59: $f2
	add  b                                           ; $5c5a: $80
	or   $80                                         ; $5c5b: $f6 $80
	db   $f4                                         ; $5c5d: $f4
	ld   bc, $e5f5                                   ; $5c5e: $01 $f5 $e5
	add  b                                           ; $5c61: $80
	jp   hl                                          ; $5c62: $e9


	add  b                                           ; $5c63: $80
	ei                                               ; $5c64: $fb
	inc  bc                                          ; $5c65: $03
	di                                               ; $5c66: $f3
	db   $e3                                         ; $5c67: $e3
	di                                               ; $5c68: $f3
	db   $fc                                         ; $5c69: $fc
	add  b                                           ; $5c6a: $80
	ld   bc, $0780                                   ; $5c6b: $01 $80 $07
	adc  d                                           ; $5c6e: $8a
	rrca                                             ; $5c6f: $0f
	adc  l                                           ; $5c70: $8d
	rst  $38                                         ; $5c71: $ff
	add  h                                           ; $5c72: $84
	db   $fc                                         ; $5c73: $fc
	add  h                                           ; $5c74: $84
	ld   hl, sp-$7e                                  ; $5c75: $f8 $82
	ldh  a, [rP1]                                    ; $5c77: $f0 $00
	nop                                              ; $5c79: $00
	add  d                                           ; $5c7a: $82
	ld   [hl+], a                                    ; $5c7b: $22
	add  b                                           ; $5c7c: $80
	jr   nz, jr_07e_5c01                             ; $5c7d: $20 $82

	ld   [hl], b                                     ; $5c7f: $70
	add  b                                           ; $5c80: $80
	ld   a, b                                        ; $5c81: $78
	add  d                                           ; $5c82: $82
	ld   hl, sp-$7e                                  ; $5c83: $f8 $82
	dec  a                                           ; $5c85: $3d
	add  b                                           ; $5c86: $80
	add  hl, sp                                      ; $5c87: $39
	add  b                                           ; $5c88: $80
	jr   c, jr_07e_5c0f                              ; $5c89: $38 $84

	jr   nz, jr_07e_5c0d                             ; $5c8b: $20 $80

	nop                                              ; $5c8d: $00
	add  d                                           ; $5c8e: $82
	sbc  e                                           ; $5c8f: $9b
	inc  b                                           ; $5c90: $04
	sbc  $df                                         ; $5c91: $de $df
	call $c3cf                                       ; $5c93: $cd $cf $c3
	add  b                                           ; $5c96: $80
	rst  ToBoot                                         ; $5c97: $c7
	add  b                                           ; $5c98: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c99: $cf
	ld   c, d                                        ; $5c9a: $4a
	sbc  $9f                                         ; $5c9b: $de $9f
	cp   [hl]                                        ; $5c9d: $be
	cp   a                                           ; $5c9e: $bf
	cp   h                                           ; $5c9f: $bc
	ccf                                              ; $5ca0: $3f
	ld   a, e                                        ; $5ca1: $7b
	ld   a, a                                        ; $5ca2: $7f
	and  $ff                                         ; $5ca3: $e6 $ff
	db   $dd                                         ; $5ca5: $dd
	rst  $38                                         ; $5ca6: $ff
	cp   e                                           ; $5ca7: $bb
	rst  $38                                         ; $5ca8: $ff
	ld   [hl], a                                     ; $5ca9: $77
	rst  $38                                         ; $5caa: $ff
	xor  $ff                                         ; $5cab: $ee $ff
	ld   e, $ff                                      ; $5cad: $1e $ff
	nop                                              ; $5caf: $00
	rst  $38                                         ; $5cb0: $ff
	call c, $07ff                                    ; $5cb1: $dc $ff $07
	rst  $38                                         ; $5cb4: $ff
	sbc  d                                           ; $5cb5: $9a
	rst  $38                                         ; $5cb6: $ff
	or   h                                           ; $5cb7: $b4
	rst  $38                                         ; $5cb8: $ff
	and  d                                           ; $5cb9: $a2
	rst  $38                                         ; $5cba: $ff
	sub  a                                           ; $5cbb: $97
	rst  $38                                         ; $5cbc: $ff
	ret  nz                                          ; $5cbd: $c0

	rst  $38                                         ; $5cbe: $ff
	nop                                              ; $5cbf: $00
	rst  $38                                         ; $5cc0: $ff
	xor  h                                           ; $5cc1: $ac
	rst  $38                                         ; $5cc2: $ff
	adc  c                                           ; $5cc3: $89
	rst  $38                                         ; $5cc4: $ff

jr_07e_5cc5:
	dec  h                                           ; $5cc5: $25
	rst  $38                                         ; $5cc6: $ff
	cp   a                                           ; $5cc7: $bf
	rst  $38                                         ; $5cc8: $ff
	xor  l                                           ; $5cc9: $ad
	rst  $38                                         ; $5cca: $ff
	ld   c, b                                        ; $5ccb: $48
	rst  $38                                         ; $5ccc: $ff
	ld   e, d                                        ; $5ccd: $5a
	rst  $38                                         ; $5cce: $ff
	nop                                              ; $5ccf: $00
	rst  $38                                         ; $5cd0: $ff
	ld   b, e                                        ; $5cd1: $43
	rst  $38                                         ; $5cd2: $ff
	sbc  h                                           ; $5cd3: $9c
	rst  $38                                         ; $5cd4: $ff
	rst  $10                                         ; $5cd5: $d7
	rst  $38                                         ; $5cd6: $ff
	db   $e3                                         ; $5cd7: $e3
	rst  $38                                         ; $5cd8: $ff
	ld   b, l                                        ; $5cd9: $45
	rst  $38                                         ; $5cda: $ff
	ld   h, $ff                                      ; $5cdb: $26 $ff
	adc  b                                           ; $5cdd: $88
	rst  $38                                         ; $5cde: $ff
	nop                                              ; $5cdf: $00
	rst  $38                                         ; $5ce0: $ff
	sub  [hl]                                        ; $5ce1: $96
	rst  $38                                         ; $5ce2: $ff
	add  l                                           ; $5ce3: $85
	rst  $38                                         ; $5ce4: $ff
	inc  de                                          ; $5ce5: $13
	add  c                                           ; $5ce6: $81
	rst  $38                                         ; $5ce7: $ff
	ld   d, h                                        ; $5ce8: $54
	ld   d, l                                        ; $5ce9: $55
	rst  $38                                         ; $5cea: $ff
	and  c                                           ; $5ceb: $a1
	rst  $38                                         ; $5cec: $ff
	dec  bc                                          ; $5ced: $0b
	rst  $38                                         ; $5cee: $ff
	nop                                              ; $5cef: $00
	rst  $38                                         ; $5cf0: $ff
	inc  [hl]                                        ; $5cf1: $34
	rst  $38                                         ; $5cf2: $ff
	ret  nc                                          ; $5cf3: $d0

	rst  $38                                         ; $5cf4: $ff
	db   $e4                                         ; $5cf5: $e4
	rst  $38                                         ; $5cf6: $ff
	ld   a, a                                        ; $5cf7: $7f
	rst  $38                                         ; $5cf8: $ff
	dec  a                                           ; $5cf9: $3d
	rst  $38                                         ; $5cfa: $ff
	dec  l                                           ; $5cfb: $2d
	rst  $38                                         ; $5cfc: $ff
	ld   l, a                                        ; $5cfd: $6f
	rst  $38                                         ; $5cfe: $ff
	nop                                              ; $5cff: $00
	rst  $38                                         ; $5d00: $ff
	pop  hl                                          ; $5d01: $e1
	rst  $38                                         ; $5d02: $ff
	sbc  h                                           ; $5d03: $9c
	rst  $38                                         ; $5d04: $ff
	ld   a, l                                        ; $5d05: $7d
	rst  $38                                         ; $5d06: $ff
	xor  a                                           ; $5d07: $af
	rst  $38                                         ; $5d08: $ff
	sbc  e                                           ; $5d09: $9b
	rst  $38                                         ; $5d0a: $ff
	ld   h, l                                        ; $5d0b: $65
	rst  $38                                         ; $5d0c: $ff
	ld   d, c                                        ; $5d0d: $51
	rst  $38                                         ; $5d0e: $ff
	nop                                              ; $5d0f: $00
	rst  $38                                         ; $5d10: $ff
	ld   a, [de]                                     ; $5d11: $1a
	rst  $38                                         ; $5d12: $ff
	ret  z                                           ; $5d13: $c8

	rst  $38                                         ; $5d14: $ff
	jp   nc, $dfff                                   ; $5d15: $d2 $ff $df

	rst  $38                                         ; $5d18: $ff
	ld   e, [hl]                                     ; $5d19: $5e
	rst  $38                                         ; $5d1a: $ff
	inc  [hl]                                        ; $5d1b: $34
	rst  $38                                         ; $5d1c: $ff
	or   l                                           ; $5d1d: $b5
	rst  $38                                         ; $5d1e: $ff
	nop                                              ; $5d1f: $00
	rst  $38                                         ; $5d20: $ff
	cp   e                                           ; $5d21: $bb
	rst  $38                                         ; $5d22: $ff
	ldh  [rIE], a                                    ; $5d23: $e0 $ff
	ld   e, e                                        ; $5d25: $5b
	rst  $38                                         ; $5d26: $ff
	or   l                                           ; $5d27: $b5
	rst  $38                                         ; $5d28: $ff
	add  b                                           ; $5d29: $80
	rst  $38                                         ; $5d2a: $ff
	or   b                                           ; $5d2b: $b0
	rst  $38                                         ; $5d2c: $ff
	adc  d                                           ; $5d2d: $8a
	rst  $30                                         ; $5d2e: $f7
	ld   [hl], a                                     ; $5d2f: $77
	pop  af                                          ; $5d30: $f1
	sbc  l                                           ; $5d31: $9d
	db   $fc                                         ; $5d32: $fc
	ld   l, a                                        ; $5d33: $6f
	rst  $38                                         ; $5d34: $ff
	or   a                                           ; $5d35: $b7
	rst  $38                                         ; $5d36: $ff
	db   $db                                         ; $5d37: $db
	rst  $38                                         ; $5d38: $ff
	db   $ed                                         ; $5d39: $ed
	rst  $38                                         ; $5d3a: $ff
	ld   [hl], $ff                                   ; $5d3b: $36 $ff
	jr   c, jr_07e_5cc5                              ; $5d3d: $38 $86

	nop                                              ; $5d3f: $00
	inc  b                                           ; $5d40: $04
	rst  $38                                         ; $5d41: $ff
	nop                                              ; $5d42: $00
	rst  $38                                         ; $5d43: $ff
	nop                                              ; $5d44: $00
	rst  $38                                         ; $5d45: $ff
	add  b                                           ; $5d46: $80
	nop                                              ; $5d47: $00
	nop                                              ; $5d48: $00
	rst  $38                                         ; $5d49: $ff
	add  l                                           ; $5d4a: $85
	nop                                              ; $5d4b: $00
	dec  b                                           ; $5d4c: $05
	ld   b, $f9                                      ; $5d4d: $06 $f9
	ld   h, e                                        ; $5d4f: $63
	db   $e3                                         ; $5d50: $e3
	ld   c, a                                        ; $5d51: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d52: $cf
	add  b                                           ; $5d53: $80
	rra                                              ; $5d54: $1f
	nop                                              ; $5d55: $00
	rst  $38                                         ; $5d56: $ff
	add  l                                           ; $5d57: $85
	nop                                              ; $5d58: $00
	ld   [$fa07], sp                                 ; $5d59: $08 $07 $fa
	ldh  [c], a                                      ; $5d5c: $e2
	push af                                          ; $5d5d: $f5
	push de                                          ; $5d5e: $d5
	ld   [$d5aa], a                                  ; $5d5f: $ea $aa $d5
	xor  d                                           ; $5d62: $aa
	add  l                                           ; $5d63: $85
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	ldh  a, [$80]                                    ; $5d66: $f0 $80
	and  b                                           ; $5d68: $a0
	add  b                                           ; $5d69: $80
	ld   d, b                                        ; $5d6a: $50
	add  b                                           ; $5d6b: $80
	and  b                                           ; $5d6c: $a0
	dec  c                                           ; $5d6d: $0d
	ld   d, b                                        ; $5d6e: $50
	cpl                                              ; $5d6f: $2f
	ld   a, [hl]                                     ; $5d70: $7e
	ld   l, [hl]                                     ; $5d71: $6e
	ld   a, l                                        ; $5d72: $7d
	ld   e, l                                        ; $5d73: $5d
	ld   a, d                                        ; $5d74: $7a
	ld   a, [$75f5]                                  ; $5d75: $fa $f5 $75
	ld   a, d                                        ; $5d78: $7a
	push bc                                          ; $5d79: $c5
	rst  $38                                         ; $5d7a: $ff
	nop                                              ; $5d7b: $00
	add  b                                           ; $5d7c: $80
	ccf                                              ; $5d7d: $3f
	add  b                                           ; $5d7e: $80
	nop                                              ; $5d7f: $00

Call_07e_5d80:
	add  b                                           ; $5d80: $80
	xor  d                                           ; $5d81: $aa
	add  b                                           ; $5d82: $80
	ld   d, l                                        ; $5d83: $55
	add  b                                           ; $5d84: $80
	xor  d                                           ; $5d85: $aa
	add  b                                           ; $5d86: $80
	ld   d, h                                        ; $5d87: $54
	inc  bc                                          ; $5d88: $03
	xor  b                                           ; $5d89: $a8
	ld   d, a                                        ; $5d8a: $57
	rst  $38                                         ; $5d8b: $ff
	nop                                              ; $5d8c: $00
	add  b                                           ; $5d8d: $80
	rst  $38                                         ; $5d8e: $ff
	add  b                                           ; $5d8f: $80
	nop                                              ; $5d90: $00
	add  b                                           ; $5d91: $80
	add  b                                           ; $5d92: $80
	add  l                                           ; $5d93: $85
	nop                                              ; $5d94: $00
	add  b                                           ; $5d95: $80
	rst  $38                                         ; $5d96: $ff
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	add  b                                           ; $5d99: $80
	rst  $38                                         ; $5d9a: $ff
	ld   bc, $0f00                                   ; $5d9b: $01 $00 $0f
	add  a                                           ; $5d9e: $87
	nop                                              ; $5d9f: $00
	add  b                                           ; $5da0: $80
	ldh  a, [rP1]                                    ; $5da1: $f0 $00
	nop                                              ; $5da3: $00
	add  b                                           ; $5da4: $80
	ldh  a, [rTMA]                                   ; $5da5: $f0 $06
	nop                                              ; $5da7: $00
	adc  l                                           ; $5da8: $8d
	ld   l, l                                        ; $5da9: $6d
	rst  $28                                         ; $5daa: $ef
	ret  nz                                          ; $5dab: $c0

	ld   b, b                                        ; $5dac: $40
	ld   a, a                                        ; $5dad: $7f
	add  b                                           ; $5dae: $80
	rst  $38                                         ; $5daf: $ff
	add  b                                           ; $5db0: $80
	ld   b, b                                        ; $5db1: $40
	add  b                                           ; $5db2: $80
	rst  $38                                         ; $5db3: $ff
	ld   bc, $7f40                                   ; $5db4: $01 $40 $7f
	add  b                                           ; $5db7: $80
	rst  $38                                         ; $5db8: $ff
	inc  b                                           ; $5db9: $04
	sbc  [hl]                                        ; $5dba: $9e
	or   c                                           ; $5dbb: $b1
	rst  $20                                         ; $5dbc: $e7
	rrca                                             ; $5dbd: $0f
	ld   [$f880], sp                                 ; $5dbe: $08 $80 $f8
	nop                                              ; $5dc1: $00
	ld   sp, hl                                      ; $5dc2: $f9
	add  b                                           ; $5dc3: $80
	add  hl, bc                                      ; $5dc4: $09
	rlca                                             ; $5dc5: $07
	ld   sp, hl                                      ; $5dc6: $f9
	rst  $38                                         ; $5dc7: $ff
	rrca                                             ; $5dc8: $0f
	rst  $38                                         ; $5dc9: $ff
	db   $fd                                         ; $5dca: $fd
	ei                                               ; $5dcb: $fb
	ld   sp, hl                                      ; $5dcc: $f9
	nop                                              ; $5dcd: $00
	add  b                                           ; $5dce: $80
	add  b                                           ; $5dcf: $80
	inc  bc                                          ; $5dd0: $03
	nop                                              ; $5dd1: $00
	add  b                                           ; $5dd2: $80
	ld   c, a                                        ; $5dd3: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd4: $cf
	add  b                                           ; $5dd5: $80
	ret  nz                                          ; $5dd6: $c0

	add  h                                           ; $5dd7: $84
	ldh  [rSB], a                                    ; $5dd8: $e0 $01
	jr   nz, jr_07e_5dec                             ; $5dda: $20 $10

	add  b                                           ; $5ddc: $80
	jr   nc, jr_07e_5ddf                             ; $5ddd: $30 $00

jr_07e_5ddf:
	or   b                                           ; $5ddf: $b0
	add  b                                           ; $5de0: $80
	ld   [hl], b                                     ; $5de1: $70
	nop                                              ; $5de2: $00
	add  b                                           ; $5de3: $80
	add  e                                           ; $5de4: $83
	nop                                              ; $5de5: $00
	add  b                                           ; $5de6: $80
	jr   nc, @+$06                                   ; $5de7: $30 $04

	db   $10                                         ; $5de9: $10
	ld   c, a                                        ; $5dea: $4f
	ld   h, b                                        ; $5deb: $60

jr_07e_5dec:
	ldh  [$e2], a                                    ; $5dec: $e0 $e2
	add  b                                           ; $5dee: $80
	ld   h, d                                        ; $5def: $62
	add  b                                           ; $5df0: $80
	ldh  [c], a                                      ; $5df1: $e2
	add  b                                           ; $5df2: $80
	ld   h, d                                        ; $5df3: $62
	ld   b, $e2                                      ; $5df4: $06 $e2
	xor  $6e                                         ; $5df6: $ee $6e
	ld   h, b                                        ; $5df8: $60
	ldh  [$e2], a                                    ; $5df9: $e0 $e2
	rst  ToBoot                                         ; $5dfb: $c7
	add  b                                           ; $5dfc: $80

jr_07e_5dfd:
	inc  bc                                          ; $5dfd: $03
	add  [hl]                                        ; $5dfe: $86
	inc  de                                          ; $5dff: $13
	add  b                                           ; $5e00: $80
	ld   [hl], e                                     ; $5e01: $73
	add  b                                           ; $5e02: $80
	inc  bc                                          ; $5e03: $03
	ld   bc, $0913                                   ; $5e04: $01 $13 $09
	add  e                                           ; $5e07: $83
	ld   h, b                                        ; $5e08: $60
	nop                                              ; $5e09: $00
	ld   h, h                                        ; $5e0a: $64

jr_07e_5e0b:
	add  b                                           ; $5e0b: $80
	ld   h, [hl]                                     ; $5e0c: $66
	ld   [$0f07], sp                                 ; $5e0d: $08 $07 $0f
	ld   l, a                                        ; $5e10: $6f
	ld   h, e                                        ; $5e11: $63
	ld   a, a                                        ; $5e12: $7f

jr_07e_5e13:
	ld   [hl], a                                     ; $5e13: $77
	ld   l, a                                        ; $5e14: $6f
	rst  ToBoot                                         ; $5e15: $c7
	ld   b, b                                        ; $5e16: $40
	add  b                                           ; $5e17: $80
	db   $10                                         ; $5e18: $10
	add  b                                           ; $5e19: $80
	ld   h, b                                        ; $5e1a: $60
	add  b                                           ; $5e1b: $80
	nop                                              ; $5e1c: $00
	ld   [$3010], sp                                 ; $5e1d: $08 $10 $30
	db   $10                                         ; $5e20: $10
	ldh  a, [rP1]                                    ; $5e21: $f0 $00
	ldh  a, [rAUD4LEN]                               ; $5e23: $f0 $20
	ldh  a, [rAUD3LOW]                               ; $5e25: $f0 $1d
	add  c                                           ; $5e27: $81
	cp   $16                                         ; $5e28: $fe $16
	ei                                               ; $5e2a: $fb
	rst  $38                                         ; $5e2b: $ff
	rlca                                             ; $5e2c: $07
	rst  $38                                         ; $5e2d: $ff
	rrca                                             ; $5e2e: $0f
	xor  a                                           ; $5e2f: $af
	cp   a                                           ; $5e30: $bf
	ld   e, a                                        ; $5e31: $5f
	ld   e, [hl]                                     ; $5e32: $5e
	cp   a                                           ; $5e33: $bf
	ld   e, l                                        ; $5e34: $5d
	rst  $38                                         ; $5e35: $ff
	dec  a                                           ; $5e36: $3d
	ld   a, $7c                                      ; $5e37: $3e $7c
	ld   a, l                                        ; $5e39: $7d
	ld   sp, hl                                      ; $5e3a: $f9
	ld   a, [$f5e2]                                  ; $5e3b: $fa $e2 $f5
	push de                                          ; $5e3e: $d5
	ld   [$802a], a                                  ; $5e3f: $ea $2a $80
	ld   d, l                                        ; $5e42: $55
	add  b                                           ; $5e43: $80
	xor  d                                           ; $5e44: $aa
	add  b                                           ; $5e45: $80
	ld   d, l                                        ; $5e46: $55
	add  b                                           ; $5e47: $80
	xor  d                                           ; $5e48: $aa
	add  b                                           ; $5e49: $80
	ld   d, l                                        ; $5e4a: $55
	add  b                                           ; $5e4b: $80
	xor  d                                           ; $5e4c: $aa
	add  b                                           ; $5e4d: $80
	ld   d, l                                        ; $5e4e: $55
	add  b                                           ; $5e4f: $80
	xor  d                                           ; $5e50: $aa
	add  b                                           ; $5e51: $80
	ld   d, l                                        ; $5e52: $55
	add  b                                           ; $5e53: $80
	xor  d                                           ; $5e54: $aa
	ld   bc, $5f50                                   ; $5e55: $01 $50 $5f
	add  b                                           ; $5e58: $80
	and  b                                           ; $5e59: $a0
	add  b                                           ; $5e5a: $80
	ld   d, b                                        ; $5e5b: $50
	add  b                                           ; $5e5c: $80
	and  b                                           ; $5e5d: $a0
	add  b                                           ; $5e5e: $80
	ld   d, b                                        ; $5e5f: $50
	add  b                                           ; $5e60: $80
	and  b                                           ; $5e61: $a0
	add  b                                           ; $5e62: $80
	ld   b, b                                        ; $5e63: $40
	add  c                                           ; $5e64: $81
	nop                                              ; $5e65: $00
	ld   bc, $fe0e                                   ; $5e66: $01 $0e $fe
	add  d                                           ; $5e69: $82
	ret                                              ; $5e6a: $c9


	add  hl, bc                                      ; $5e6b: $09
	jp   z, Jump_07e_7ec8                            ; $5e6c: $ca $c8 $7e

	ld   b, b                                        ; $5e6f: $40
	jp   Jump_07e_67f4                               ; $5e70: $c3 $f4 $67


	ld   c, h                                        ; $5e73: $4c
	rst  $30                                         ; $5e74: $f7
	rst  $10                                         ; $5e75: $d7
	add  d                                           ; $5e76: $82
	nop                                              ; $5e77: $00
	add  b                                           ; $5e78: $80
	ret  nz                                          ; $5e79: $c0

	add  b                                           ; $5e7a: $80
	jr   nz, jr_07e_5dfd                             ; $5e7b: $20 $80

	db   $10                                         ; $5e7d: $10
	ld   b, $88                                      ; $5e7e: $06 $88
	ld   [$c404], sp                                 ; $5e80: $08 $04 $c4
	add  d                                           ; $5e83: $82
	ld   h, d                                        ; $5e84: $62
	and  b                                           ; $5e85: $a0
	add  c                                           ; $5e86: $81
	nop                                              ; $5e87: $00
	add  d                                           ; $5e88: $82
	jr   nz, jr_07e_5e0b                             ; $5e89: $20 $80

	rst  $30                                         ; $5e8b: $f7
	add  d                                           ; $5e8c: $82
	ld   bc, $0080                                   ; $5e8d: $01 $80 $00
	add  [hl]                                        ; $5e90: $86
	jr   nz, jr_07e_5e13                             ; $5e91: $20 $80

	ldh  a, [$83]                                    ; $5e93: $f0 $83
	nop                                              ; $5e95: $00
	ld   [bc], a                                     ; $5e96: $02
	db   $10                                         ; $5e97: $10
	ld   c, a                                        ; $5e98: $4f
	ld   h, b                                        ; $5e99: $60
	add  b                                           ; $5e9a: $80
	ldh  [rSB], a                                    ; $5e9b: $e0 $01
	ld   h, b                                        ; $5e9d: $60
	ld   h, d                                        ; $5e9e: $62
	add  b                                           ; $5e9f: $80
	ldh  [c], a                                      ; $5ea0: $e2
	add  b                                           ; $5ea1: $80
	ld   h, d                                        ; $5ea2: $62
	add  b                                           ; $5ea3: $80
	ldh  [c], a                                      ; $5ea4: $e2
	add  b                                           ; $5ea5: $80
	ld   h, d                                        ; $5ea6: $62
	ld   [bc], a                                     ; $5ea7: $02
	ldh  [c], a                                      ; $5ea8: $e2
	xor  $cb                                         ; $5ea9: $ee $cb
	add  d                                           ; $5eab: $82
	inc  bc                                          ; $5eac: $03
	adc  b                                           ; $5ead: $88
	inc  de                                          ; $5eae: $13
	inc  b                                           ; $5eaf: $04
	di                                               ; $5eb0: $f3
	or   $1f                                         ; $5eb1: $f6 $1f
	ld   [$8268], sp                                 ; $5eb3: $08 $68 $82
	ld   h, b                                        ; $5eb6: $60
	add  d                                           ; $5eb7: $82
	ld   l, b                                        ; $5eb8: $68
	dec  b                                           ; $5eb9: $05
	ld   a, a                                        ; $5eba: $7f
	ld   e, a                                        ; $5ebb: $5f
	ld   b, b                                        ; $5ebc: $40
	ld   h, b                                        ; $5ebd: $60
	ld   [hl], b                                     ; $5ebe: $70
	ldh  a, [$88]                                    ; $5ebf: $f0 $88
	nop                                              ; $5ec1: $00
	add  b                                           ; $5ec2: $80
	ldh  a, [$80]                                    ; $5ec3: $f0 $80
	ld   b, b                                        ; $5ec5: $40
	ld   bc, $625f                                   ; $5ec6: $01 $5f $62
	add  c                                           ; $5ec9: $81
	ldh  [c], a                                      ; $5eca: $e2
	add  b                                           ; $5ecb: $80
	and  d                                           ; $5ecc: $a2
	nop                                              ; $5ecd: $00
	ldh  [c], a                                      ; $5ece: $e2
	add  b                                           ; $5ecf: $80
	ld   h, d                                        ; $5ed0: $62
	inc  bc                                          ; $5ed1: $03
	ldh  [c], a                                      ; $5ed2: $e2
	xor  $6e                                         ; $5ed3: $ee $6e
	ld   h, b                                        ; $5ed5: $60

jr_07e_5ed6:
	add  b                                           ; $5ed6: $80
	ldh  [rP1], a                                    ; $5ed7: $e0 $00
	push bc                                          ; $5ed9: $c5
	add  a                                           ; $5eda: $87
	inc  de                                          ; $5edb: $13
	inc  bc                                          ; $5edc: $03
	db   $10                                         ; $5edd: $10
	ld   [hl], c                                     ; $5ede: $71
	ld   [hl], a                                     ; $5edf: $77
	rlca                                             ; $5ee0: $07
	add  b                                           ; $5ee1: $80
	ld   bc, $1000                                   ; $5ee2: $01 $00 $10
	add  b                                           ; $5ee5: $80
	ld   l, a                                        ; $5ee6: $6f
	add  b                                           ; $5ee7: $80
	rrca                                             ; $5ee8: $0f
	add  e                                           ; $5ee9: $83
	ld   l, a                                        ; $5eea: $6f
	add  b                                           ; $5eeb: $80
	rst  $28                                         ; $5eec: $ef
	rlca                                             ; $5eed: $07
	cpl                                              ; $5eee: $2f
	rst  $28                                         ; $5eef: $ef
	jp   hl                                          ; $5ef0: $e9


	rst  $28                                         ; $5ef1: $ef
	ld   b, c                                        ; $5ef2: $41
	ldh  [hScriptOpcodeParams], a                                    ; $5ef3: $e0 $a0
	ldh  [$83], a                                    ; $5ef5: $e0 $83
	and  b                                           ; $5ef7: $a0
	rlca                                             ; $5ef8: $07
	or   b                                           ; $5ef9: $b0
	add  b                                           ; $5efa: $80
	ldh  a, [$80]                                    ; $5efb: $f0 $80
	ldh  a, [$b0]                                    ; $5efd: $f0 $b0

Jump_07e_5eff:
	ldh  a, [rIF]                                    ; $5eff: $f0 $0f
	add  b                                           ; $5f01: $80
	nop                                              ; $5f02: $00
	add  d                                           ; $5f03: $82
	add  b                                           ; $5f04: $80
	add  b                                           ; $5f05: $80
	xor  b                                           ; $5f06: $a8
	add  b                                           ; $5f07: $80
	inc  l                                           ; $5f08: $2c
	add  d                                           ; $5f09: $82
	ld   l, [hl]                                     ; $5f0a: $6e
	ld   [bc], a                                     ; $5f0b: $02
	ld   l, h                                        ; $5f0c: $6c
	ld   [hl], e                                     ; $5f0d: $73
	rra                                              ; $5f0e: $1f
	add  b                                           ; $5f0f: $80
	inc  bc                                          ; $5f10: $03
	add  a                                           ; $5f11: $87
	nop                                              ; $5f12: $00
	add  b                                           ; $5f13: $80
	ld   h, b                                        ; $5f14: $60
	inc  bc                                          ; $5f15: $03
	ld   l, l                                        ; $5f16: $6d
	adc  l                                           ; $5f17: $8d
	cp   $de                                         ; $5f18: $fe $de
	add  c                                           ; $5f1a: $81
	rst  $38                                         ; $5f1b: $ff
	add  c                                           ; $5f1c: $81
	ccf                                              ; $5f1d: $3f
	add  b                                           ; $5f1e: $80
	rrca                                             ; $5f1f: $0f
	add  b                                           ; $5f20: $80
	inc  bc                                          ; $5f21: $03
	add  b                                           ; $5f22: $80
	nop                                              ; $5f23: $00
	inc  bc                                          ; $5f24: $03
	ld   [$f0f7], sp                                 ; $5f25: $08 $f7 $f0
	ld   [hl], b                                     ; $5f28: $70
	add  b                                           ; $5f29: $80
	ldh  a, [rP1]                                    ; $5f2a: $f0 $00
	ret  nz                                          ; $5f2c: $c0

	add  b                                           ; $5f2d: $80
	ldh  [$82], a                                    ; $5f2e: $e0 $82
	ldh  a, [rDIV]                                   ; $5f30: $f0 $04
	ret  nc                                          ; $5f32: $d0

	ldh  a, [$e0]                                    ; $5f33: $f0 $e0
	ldh  a, [$8f]                                    ; $5f35: $f0 $8f
	add  d                                           ; $5f37: $82
	call z, Call_07e_5880                            ; $5f38: $cc $80 $58
	inc  b                                           ; $5f3b: $04
	jr   jr_07e_5ed6                                 ; $5f3c: $18 $98

	add  b                                           ; $5f3e: $80
	ret  nz                                          ; $5f3f: $c0

	pop  bc                                          ; $5f40: $c1
	add  b                                           ; $5f41: $80
	pop  af                                          ; $5f42: $f1
	ld   [bc], a                                     ; $5f43: $02
	db   $fd                                         ; $5f44: $fd
	db   $fc                                         ; $5f45: $fc
	nop                                              ; $5f46: $00
	add  b                                           ; $5f47: $80
	ld   l, l                                        ; $5f48: $6d
	add  b                                           ; $5f49: $80
	ld   l, h                                        ; $5f4a: $6c
	add  d                                           ; $5f4b: $82
	call z, $8e82                                    ; $5f4c: $cc $82 $8e
	add  b                                           ; $5f4f: $80
	sbc  [hl]                                        ; $5f50: $9e
	ld   bc, $609f                                   ; $5f51: $01 $9f $60
	rst  $38                                         ; $5f54: $ff
	nop                                              ; $5f55: $00
	rst  $38                                         ; $5f56: $ff
	nop                                              ; $5f57: $00
	rst  $38                                         ; $5f58: $ff
	nop                                              ; $5f59: $00
	rst  $38                                         ; $5f5a: $ff
	nop                                              ; $5f5b: $00
	rst  $38                                         ; $5f5c: $ff
	nop                                              ; $5f5d: $00
	rst  $38                                         ; $5f5e: $ff
	nop                                              ; $5f5f: $00
	rst  $38                                         ; $5f60: $ff
	nop                                              ; $5f61: $00
	sub  [hl]                                        ; $5f62: $96
	nop                                              ; $5f63: $00
	ret  c                                           ; $5f64: $d8

	nop                                              ; $5f65: $00
	ld   bc, $010e                                   ; $5f66: $01 $0e $01
	add  b                                           ; $5f69: $80
	nop                                              ; $5f6a: $00
	add  b                                           ; $5f6b: $80
	ld   bc, $0088                                   ; $5f6c: $01 $88 $00
	ld   de, $7f90                                   ; $5f6f: $11 $90 $7f
	rst  $28                                         ; $5f72: $ef
	rst  $38                                         ; $5f73: $ff
	ld   l, a                                        ; $5f74: $6f
	ld   a, a                                        ; $5f75: $7f
	rst  $28                                         ; $5f76: $ef
	rst  $38                                         ; $5f77: $ff
	ld   l, a                                        ; $5f78: $6f
	ld   a, a                                        ; $5f79: $7f
	rst  $28                                         ; $5f7a: $ef
	rst  $38                                         ; $5f7b: $ff
	ld   l, a                                        ; $5f7c: $6f
	ld   a, a                                        ; $5f7d: $7f
	rst  $28                                         ; $5f7e: $ef
	rst  $38                                         ; $5f7f: $ff
	push af                                          ; $5f80: $f5
	ld   a, [de]                                     ; $5f81: $1a
	add  b                                           ; $5f82: $80
	sbc  a                                           ; $5f83: $9f
	add  b                                           ; $5f84: $80
	ld   a, [de]                                     ; $5f85: $1a
	add  b                                           ; $5f86: $80
	dec  e                                           ; $5f87: $1d
	add  b                                           ; $5f88: $80
	ld   a, [de]                                     ; $5f89: $1a
	add  b                                           ; $5f8a: $80
	dec  a                                           ; $5f8b: $3d
	add  b                                           ; $5f8c: $80
	ld   a, [de]                                     ; $5f8d: $1a
	add  b                                           ; $5f8e: $80
	cp   l                                           ; $5f8f: $bd
	nop                                              ; $5f90: $00
	and  $81                                         ; $5f91: $e6 $81
	ld   b, $8a                                      ; $5f93: $06 $8a
	nop                                              ; $5f95: $00
	dec  e                                           ; $5f96: $1d
	ld   a, [bc]                                     ; $5f97: $0a
	rrca                                             ; $5f98: $0f
	add  hl, bc                                      ; $5f99: $09
	rrca                                             ; $5f9a: $0f
	add  hl, bc                                      ; $5f9b: $09
	rrca                                             ; $5f9c: $0f
	add  hl, bc                                      ; $5f9d: $09
	rrca                                             ; $5f9e: $0f
	add  hl, bc                                      ; $5f9f: $09
	rrca                                             ; $5fa0: $0f
	add  hl, bc                                      ; $5fa1: $09
	rrca                                             ; $5fa2: $0f
	add  hl, bc                                      ; $5fa3: $09
	rrca                                             ; $5fa4: $0f
	add  hl, bc                                      ; $5fa5: $09
	rrca                                             ; $5fa6: $0f
	ld   c, $fd                                      ; $5fa7: $0e $fd
	db   $ec                                         ; $5fa9: $ec
	db   $fc                                         ; $5faa: $fc
	call z, $8cdc                                    ; $5fab: $cc $dc $8c
	sbc  h                                           ; $5fae: $9c
	db   $ec                                         ; $5faf: $ec
	db   $fc                                         ; $5fb0: $fc
	add  sp, -$08                                    ; $5fb1: $e8 $f8
	call nc, $80f4                                   ; $5fb3: $d4 $f4 $80
	ld   a, [$8801]                                  ; $5fb6: $fa $01 $88
	ld   c, b                                        ; $5fb9: $48
	add  d                                           ; $5fba: $82
	nop                                              ; $5fbb: $00
	add  b                                           ; $5fbc: $80
	ld   [hl], b                                     ; $5fbd: $70
	add  b                                           ; $5fbe: $80
	ld   h, b                                        ; $5fbf: $60
	add  d                                           ; $5fc0: $82
	nop                                              ; $5fc1: $00
	add  b                                           ; $5fc2: $80
	inc  c                                           ; $5fc3: $0c
	rlca                                             ; $5fc4: $07
	ld   a, $3f                                      ; $5fc5: $3e $3f
	ld   a, [bc]                                     ; $5fc7: $0a
	dec  bc                                          ; $5fc8: $0b
	ld   e, $1f                                      ; $5fc9: $1e $1f
	ld   a, [hl+]                                    ; $5fcb: $2a
	dec  hl                                          ; $5fcc: $2b
	add  b                                           ; $5fcd: $80
	rra                                              ; $5fce: $1f
	add  b                                           ; $5fcf: $80
	ld   a, [bc]                                     ; $5fd0: $0a
	add  b                                           ; $5fd1: $80
	rlca                                             ; $5fd2: $07
	add  b                                           ; $5fd3: $80
	nop                                              ; $5fd4: $00
	inc  de                                          ; $5fd5: $13
	ld   a, [bc]                                     ; $5fd6: $0a
	rst  $38                                         ; $5fd7: $ff
	and  b                                           ; $5fd8: $a0
	rst  $38                                         ; $5fd9: $ff
	ld   bc, $83ff                                   ; $5fda: $01 $ff $83
	rst  $38                                         ; $5fdd: $ff
	add  e                                           ; $5fde: $83
	rst  $38                                         ; $5fdf: $ff
	adc  d                                           ; $5fe0: $8a
	cp   $dd                                         ; $5fe1: $fe $dd
	db   $fd                                         ; $5fe3: $fd
	db   $fc                                         ; $5fe4: $fc
	rst  $38                                         ; $5fe5: $ff
	xor  h                                           ; $5fe6: $ac
	rst  $38                                         ; $5fe7: $ff
	xor  a                                           ; $5fe8: $af
	rst  $38                                         ; $5fe9: $ff
	add  b                                           ; $5fea: $80
	db   $fd                                         ; $5feb: $fd
	add  b                                           ; $5fec: $80
	ld   [$d580], a                                  ; $5fed: $ea $80 $d5
	add  b                                           ; $5ff0: $80
	add  b                                           ; $5ff1: $80
	add  b                                           ; $5ff2: $80
	ld   b, $80                                      ; $5ff3: $06 $80
	ldh  [$80], a                                    ; $5ff5: $e0 $80
	cp   $80                                         ; $5ff7: $fe $80
	xor  e                                           ; $5ff9: $ab
	add  b                                           ; $5ffa: $80
	ld   d, h                                        ; $5ffb: $54
	add  b                                           ; $5ffc: $80
	ld   a, [bc]                                     ; $5ffd: $0a
	add  b                                           ; $5ffe: $80
	inc  d                                           ; $5fff: $14
	add  b                                           ; $6000: $80
	ld   a, [bc]                                     ; $6001: $0a
	add  b                                           ; $6002: $80
	ld   bc, $0081                                   ; $6003: $01 $81 $00
	ld   b, $07                                      ; $6006: $06 $07
	add  e                                           ; $6008: $83
	add  a                                           ; $6009: $87
	ld   bc, $8003                                   ; $600a: $01 $03 $80
	add  c                                           ; $600d: $81
	add  [hl]                                        ; $600e: $86
	nop                                              ; $600f: $00
	inc  sp                                          ; $6010: $33
	ld   hl, $e1d0                                   ; $6011: $21 $d0 $e1
	add  sp, -$30                                    ; $6014: $e8 $d0
	call nc, $e2e0                                   ; $6016: $d4 $e0 $e2
	ld   d, b                                        ; $6019: $50
	pop  de                                          ; $601a: $d1
	jr   nz, jr_07e_607d                             ; $601b: $20 $60

	ld   d, c                                        ; $601d: $51
	ld   [hl], c                                     ; $601e: $71
	ld   l, b                                        ; $601f: $68
	ld   a, b                                        ; $6020: $78
	rst  $30                                         ; $6021: $f7
	inc  b                                           ; $6022: $04
	ld   bc, $4183                                   ; $6023: $01 $83 $41
	nop                                              ; $6026: $00
	jr   nz, jr_07e_6029                             ; $6027: $20 $00

jr_07e_6029:
	stop                                             ; $6029: $10 $00
	ld   [$2284], sp                                 ; $602b: $08 $84 $22
	ld   h, b                                        ; $602e: $60
	pop  bc                                          ; $602f: $c1
	ldh  a, [$8f]                                    ; $6030: $f0 $8f
	ld   a, b                                        ; $6032: $78
	jr   c, jr_07e_6071                              ; $6033: $38 $3c

	inc  c                                           ; $6035: $0c
	adc  a                                           ; $6036: $8f
	ld   b, e                                        ; $6037: $43
	inc  hl                                          ; $6038: $23
	ld   de, $0c01                                   ; $6039: $11 $01 $0c
	inc  b                                           ; $603c: $04
	ld   b, $00                                      ; $603d: $06 $00
	ld   bc, $0400                                   ; $603f: $01 $00 $04
	rlca                                             ; $6042: $07
	ld   [bc], a                                     ; $6043: $02
	ld   bc, $0081                                   ; $6044: $01 $81 $00
	add  b                                           ; $6047: $80
	ret  nz                                          ; $6048: $c0

	ld   [$60e0], sp                                 ; $6049: $08 $e0 $60
	ld   a, b                                        ; $604c: $78
	jr   c, jr_07e_608b                              ; $604d: $38 $3c

	adc  h                                           ; $604f: $8c
	adc  a                                           ; $6050: $8f
	pop  af                                          ; $6051: $f1
	ld   bc, $0a80                                   ; $6052: $01 $80 $0a
	add  h                                           ; $6055: $84
	rrca                                             ; $6056: $0f
	rla                                              ; $6057: $17

jr_07e_6058:
	dec  b                                           ; $6058: $05
	rrca                                             ; $6059: $0f
	nop                                              ; $605a: $00
	rrca                                             ; $605b: $0f
	dec  b                                           ; $605c: $05
	rrca                                             ; $605d: $0f
	sbc  a                                           ; $605e: $9f
	ld   a, a                                        ; $605f: $7f
	rst  $28                                         ; $6060: $ef
	rst  $38                                         ; $6061: $ff
	rst  $28                                         ; $6062: $ef
	rst  $38                                         ; $6063: $ff
	rst  $28                                         ; $6064: $ef
	rst  $38                                         ; $6065: $ff
	xor  a                                           ; $6066: $af
	rst  $38                                         ; $6067: $ff
	rrca                                             ; $6068: $0f
	rst  $38                                         ; $6069: $ff
	rrca                                             ; $606a: $0f
	rst  $38                                         ; $606b: $ff
	ld   e, a                                        ; $606c: $5f
	rst  $38                                         ; $606d: $ff
	ld   b, l                                        ; $606e: $45
	ld   e, d                                        ; $606f: $5a
	add  b                                           ; $6070: $80

jr_07e_6071:
	cp   l                                           ; $6071: $bd
	inc  c                                           ; $6072: $0c
	adc  $de                                         ; $6073: $ce $de
	db   $ed                                         ; $6075: $ed
	db   $fd                                         ; $6076: $fd
	xor  $fe                                         ; $6077: $ee $fe
	rst  $20                                         ; $6079: $e7
	rst  $38                                         ; $607a: $ff
	db   $e3                                         ; $607b: $e3
	rst  $38                                         ; $607c: $ff

jr_07e_607d:
	pop  af                                          ; $607d: $f1
	rst  $38                                         ; $607e: $ff
	ld   a, [$0081]                                  ; $607f: $fa $81 $00
	add  b                                           ; $6082: $80
	add  b                                           ; $6083: $80
	add  b                                           ; $6084: $80
	ld   b, b                                        ; $6085: $40
	add  b                                           ; $6086: $80
	and  b                                           ; $6087: $a0
	add  b                                           ; $6088: $80
	ld   d, l                                        ; $6089: $55
	add  b                                           ; $608a: $80

jr_07e_608b:
	xor  d                                           ; $608b: $aa
	inc  de                                          ; $608c: $13
	ld   d, l                                        ; $608d: $55
	rst  $38                                         ; $608e: $ff
	and  b                                           ; $608f: $a0
	rrca                                             ; $6090: $0f
	add  hl, bc                                      ; $6091: $09
	rrca                                             ; $6092: $0f
	add  hl, bc                                      ; $6093: $09
	rrca                                             ; $6094: $0f
	add  hl, bc                                      ; $6095: $09
	rrca                                             ; $6096: $0f
	add  hl, bc                                      ; $6097: $09
	rrca                                             ; $6098: $0f
	ld   e, c                                        ; $6099: $59
	ld   e, a                                        ; $609a: $5f
	cp   c                                           ; $609b: $b9
	cp   a                                           ; $609c: $bf
	ld   d, c                                        ; $609d: $51
	rst  $38                                         ; $609e: $ff
	sbc  a                                           ; $609f: $9f
	db   $f4                                         ; $60a0: $f4
	add  b                                           ; $60a1: $80
	ld   a, [$d401]                                  ; $60a2: $fa $01 $d4
	db   $f4                                         ; $60a5: $f4
	add  b                                           ; $60a6: $80
	ld   hl, sp-$80                                  ; $60a7: $f8 $80
	db   $fc                                         ; $60a9: $fc
	ld   b, $ee                                      ; $60aa: $06 $ee
	cp   $f7                                         ; $60ac: $fe $f7
	rst  $38                                         ; $60ae: $ff
	ei                                               ; $60af: $fb
	rst  $38                                         ; $60b0: $ff
	db   $fc                                         ; $60b1: $fc
	add  c                                           ; $60b2: $81
	nop                                              ; $60b3: $00
	add  b                                           ; $60b4: $80
	ld   b, b                                        ; $60b5: $40
	add  [hl]                                        ; $60b6: $86
	nop                                              ; $60b7: $00
	add  b                                           ; $60b8: $80
	add  b                                           ; $60b9: $80
	add  b                                           ; $60ba: $80
	ld   bc, $0084                                   ; $60bb: $01 $84 $00
	add  b                                           ; $60be: $80
	ld   bc, $0880                                   ; $60bf: $01 $80 $08
	add  b                                           ; $60c2: $80
	dec  b                                           ; $60c3: $05
	add  b                                           ; $60c4: $80
	nop                                              ; $60c5: $00
	inc  bc                                          ; $60c6: $03
	ld   e, [hl]                                     ; $60c7: $5e
	ld   e, a                                        ; $60c8: $5f
	cp   a                                           ; $60c9: $bf
	cp   [hl]                                        ; $60ca: $be
	add  b                                           ; $60cb: $80
	ld   e, l                                        ; $60cc: $5d
	add  b                                           ; $60cd: $80
	ld   a, [hl+]                                    ; $60ce: $2a
	add  b                                           ; $60cf: $80
	ld   d, b                                        ; $60d0: $50
	add  b                                           ; $60d1: $80
	xor  b                                           ; $60d2: $a8
	add  b                                           ; $60d3: $80
	ld   d, b                                        ; $60d4: $50
	add  b                                           ; $60d5: $80
	jr   nc, jr_07e_6058                             ; $60d6: $30 $80

	nop                                              ; $60d8: $00
	add  b                                           ; $60d9: $80
	add  b                                           ; $60da: $80
	sub  b                                           ; $60db: $90
	nop                                              ; $60dc: $00
	ld   [bc], a                                     ; $60dd: $02
	ld   l, b                                        ; $60de: $68
	ld   a, b                                        ; $60df: $78
	db   $10                                         ; $60e0: $10
	add  a                                           ; $60e1: $87
	nop                                              ; $60e2: $00
	add  b                                           ; $60e3: $80
	ld   b, d                                        ; $60e4: $42
	add  b                                           ; $60e5: $80
	inc  e                                           ; $60e6: $1c
	inc  bc                                          ; $60e7: $03
	inc  d                                           ; $60e8: $14
	inc  e                                           ; $60e9: $1c
	db   $10                                         ; $60ea: $10
	jr   jr_07e_6071                                 ; $60eb: $18 $84

	nop                                              ; $60ed: $00
	rlca                                             ; $60ee: $07
	ld   a, d                                        ; $60ef: $7a
	ld   a, l                                        ; $60f0: $7d
	ld   a, [de]                                     ; $60f1: $1a
	ld   e, $05                                      ; $60f2: $1e $05
	rlca                                             ; $60f4: $07
	nop                                              ; $60f5: $00
	ld   bc, $0086                                   ; $60f6: $01 $86 $00
	ld   [bc], a                                     ; $60f9: $02
	add  b                                           ; $60fa: $80
	ld   a, b                                        ; $60fb: $78
	ld   hl, sp-$80                                  ; $60fc: $f8 $80
	db   $fc                                         ; $60fe: $fc
	add  b                                           ; $60ff: $80
	cp   $03                                         ; $6100: $fe $03
	rst  $38                                         ; $6102: $ff
	ld   a, a                                        ; $6103: $7f
	rst  $38                                         ; $6104: $ff
	ld   a, a                                        ; $6105: $7f
	add  b                                           ; $6106: $80
	ccf                                              ; $6107: $3f
	add  b                                           ; $6108: $80
	rra                                              ; $6109: $1f
	dec  c                                           ; $610a: $0d
	rrca                                             ; $610b: $0f
	ld   [hl], b                                     ; $610c: $70
	ld   b, b                                        ; $610d: $40
	jr   nz, jr_07e_6110                             ; $610e: $20 $00

jr_07e_6110:
	stop                                             ; $6110: $10 $00
	ld   [$0204], sp                                 ; $6112: $08 $04 $02
	add  b                                           ; $6115: $80
	and  c                                           ; $6116: $a1
	ldh  [$c0], a                                    ; $6117: $e0 $c0
	add  b                                           ; $6119: $80
	ldh  a, [$09]                                    ; $611a: $f0 $09
	ld   hl, sp+$3f                                  ; $611c: $f8 $3f
	ld   b, a                                        ; $611e: $47
	ld   [hl], c                                     ; $611f: $71
	ld   sp, $0838                                   ; $6120: $31 $38 $08
	ld   c, $06                                      ; $6123: $0e $06
	rlca                                             ; $6125: $07
	add  b                                           ; $6126: $80
	inc  bc                                          ; $6127: $03
	dec  b                                           ; $6128: $05
	ld   bc, $0081                                   ; $6129: $01 $81 $00
	ld   b, b                                        ; $612c: $40
	nop                                              ; $612d: $00
	ret  nz                                          ; $612e: $c0

	cp   l                                           ; $612f: $bd
	nop                                              ; $6130: $00
	rlca                                             ; $6131: $07
	ld   c, [hl]                                     ; $6132: $4e
	ei                                               ; $6133: $fb
	ld   hl, sp-$05                                  ; $6134: $f8 $fb
	or   b                                           ; $6136: $b0
	ei                                               ; $6137: $fb
	or   d                                           ; $6138: $b2
	ld   hl, sp-$80                                  ; $6139: $f8 $80
	ei                                               ; $613b: $fb
	ld   [bc], a                                     ; $613c: $02
	or   e                                           ; $613d: $b3
	ei                                               ; $613e: $fb
	or   $81                                         ; $613f: $f6 $81
	rst  $38                                         ; $6141: $ff
	db   $10                                         ; $6142: $10
	reti                                             ; $6143: $d9


	rst  $38                                         ; $6144: $ff
	adc  a                                           ; $6145: $8f
	rst  $38                                         ; $6146: $ff
	adc  e                                           ; $6147: $8b
	rst  $38                                         ; $6148: $ff
	ld   d, e                                        ; $6149: $53
	ld   a, a                                        ; $614a: $7f
	ld   d, e                                        ; $614b: $53
	ld   a, a                                        ; $614c: $7f
	ld   de, $107f                                   ; $614d: $11 $7f $10
	ld   a, a                                        ; $6150: $7f
	db   $10                                         ; $6151: $10
	ld   a, a                                        ; $6152: $7f
	ld   b, l                                        ; $6153: $45
	add  a                                           ; $6154: $87
	rst  $38                                         ; $6155: $ff
	rlca                                             ; $6156: $07
	ld   e, a                                        ; $6157: $5f
	rst  $38                                         ; $6158: $ff

jr_07e_6159:
	rra                                              ; $6159: $1f
	rst  $38                                         ; $615a: $ff
	rra                                              ; $615b: $1f
	rst  $38                                         ; $615c: $ff
	ldh  a, [$50]                                    ; $615d: $f0 $50
	adc  h                                           ; $615f: $8c
	ldh  a, [rTIMA]                                  ; $6160: $f0 $05
	ldh  [rAUD4LEN], a                               ; $6162: $e0 $20
	inc  [hl]                                        ; $6164: $34
	inc  c                                           ; $6165: $0c
	ld   b, $01                                      ; $6166: $06 $01
	add  h                                           ; $6168: $84
	nop                                              ; $6169: $00
	ld   bc, $00ff                                   ; $616a: $01 $ff $00
	add  b                                           ; $616d: $80
	ret  nz                                          ; $616e: $c0

jr_07e_616f:
	ld   [bc], a                                     ; $616f: $02
	inc  bc                                          ; $6170: $03
	inc  b                                           ; $6171: $04
	rlca                                             ; $6172: $07
	add  c                                           ; $6173: $81
	nop                                              ; $6174: $00
	ld   b, $e0                                      ; $6175: $06 $e0
	jr   nz, @+$3c                                   ; $6177: $20 $3a

	ld   b, $03                                      ; $6179: $06 $03
	nop                                              ; $617b: $00
	rst  $38                                         ; $617c: $ff
	add  c                                           ; $617d: $81
	nop                                              ; $617e: $00
	ld   b, $82                                      ; $617f: $06 $82
	ld   a, a                                        ; $6181: $7f
	push hl                                          ; $6182: $e5
	ld   h, a                                        ; $6183: $67
	ld   a, [hl]                                     ; $6184: $7e
	ld   b, $07                                      ; $6185: $06 $07
	add  c                                           ; $6187: $81
	nop                                              ; $6188: $00
	db   $10                                         ; $6189: $10
	rst  $38                                         ; $618a: $ff
	nop                                              ; $618b: $00
	and  b                                           ; $618c: $a0
	ld   h, b                                        ; $618d: $60
	inc  [hl]                                        ; $618e: $34
	inc  c                                           ; $618f: $0c
	and  a                                           ; $6190: $a7
	ldh  a, [rLCDC]                                  ; $6191: $f0 $40
	ldh  a, [$60]                                    ; $6193: $f0 $60
	ld   [hl], b                                     ; $6195: $70
	ret  nz                                          ; $6196: $c0

	ld   b, b                                        ; $6197: $40
	ld   [hl], b                                     ; $6198: $70
	nop                                              ; $6199: $00
	ldh  a, [$83]                                    ; $619a: $f0 $83
	nop                                              ; $619c: $00
	dec  c                                           ; $619d: $0d
	jp   c, $d0ea                                    ; $619e: $da $ea $d0

	ldh  a, [hScriptOpcodeParams+4]                                    ; $61a1: $f0 $a4
	ld   a, h                                        ; $61a3: $7c
	add  hl, de                                      ; $61a4: $19
	ccf                                              ; $61a5: $3f
	ld   d, $0f                                      ; $61a6: $16 $0f
	inc  bc                                          ; $61a8: $03
	rlca                                             ; $61a9: $07
	ld   bc, $8002                                   ; $61aa: $01 $02 $80
	dec  b                                           ; $61ad: $05
	dec  b                                           ; $61ae: $05
	cp   a                                           ; $61af: $bf
	or   b                                           ; $61b0: $b0
	ld   [$0204], sp                                 ; $61b1: $08 $04 $02
	ld   bc, $0080                                   ; $61b4: $01 $80 $00
	dec  d                                           ; $61b7: $15
	ld   b, b                                        ; $61b8: $40
	ret  nz                                          ; $61b9: $c0

	sub  b                                           ; $61ba: $90
	ldh  a, [$e4]                                    ; $61bb: $f0 $e4
	db   $fc                                         ; $61bd: $fc
	cp   e                                           ; $61be: $bb
	ld   a, a                                        ; $61bf: $7f
	rst  $38                                         ; $61c0: $ff
	ld   b, d                                        ; $61c1: $42
	ld   [hl], c                                     ; $61c2: $71
	db   $10                                         ; $61c3: $10
	jr   jr_07e_61ca                                 ; $61c4: $18 $04

	add  d                                           ; $61c6: $82
	ld   b, c                                        ; $61c7: $41
	jr   z, jr_07e_61e2                              ; $61c8: $28 $18

jr_07e_61ca:
	ld   a, [bc]                                     ; $61ca: $0a
	ld   b, $02                                      ; $61cb: $06 $02
	ld   bc, $0080                                   ; $61cd: $01 $80 $00
	nop                                              ; $61d0: $00
	ldh  a, [$80]                                    ; $61d1: $f0 $80
	nop                                              ; $61d3: $00
	ld   [bc], a                                     ; $61d4: $02
	add  b                                           ; $61d5: $80
	ld   d, b                                        ; $61d6: $50
	jr   nz, jr_07e_6159                             ; $61d7: $20 $80

	nop                                              ; $61d9: $00
	inc  bc                                          ; $61da: $03
	and  b                                           ; $61db: $a0
	ld   h, b                                        ; $61dc: $60
	jr   nc, jr_07e_61df                             ; $61dd: $30 $00

jr_07e_61df:
	add  b                                           ; $61df: $80
	add  b                                           ; $61e0: $80
	ld   [bc], a                                     ; $61e1: $02

jr_07e_61e2:
	and  b                                           ; $61e2: $a0
	ld   h, b                                        ; $61e3: $60
	jr   nc, jr_07e_616f                             ; $61e4: $30 $89

	nop                                              ; $61e6: $00
	inc  b                                           ; $61e7: $04
	and  b                                           ; $61e8: $a0
	cp   a                                           ; $61e9: $bf
	ld   a, [bc]                                     ; $61ea: $0a
	rst  $38                                         ; $61eb: $ff
	ld   [$0089], a                                  ; $61ec: $ea $89 $00
	inc  b                                           ; $61ef: $04

Jump_07e_61f0:
	rra                                              ; $61f0: $1f
	rst  $38                                         ; $61f1: $ff
	sbc  d                                           ; $61f2: $9a
	ld   a, [$8780]                                  ; $61f3: $fa $80 $87
	nop                                              ; $61f6: $00
	add  b                                           ; $61f7: $80
	ld   a, a                                        ; $61f8: $7f
	add  b                                           ; $61f9: $80
	add  l                                           ; $61fa: $85
	add  b                                           ; $61fb: $80
	ld   [bc], a                                     ; $61fc: $02
	adc  b                                           ; $61fd: $88
	nop                                              ; $61fe: $00
	add  h                                           ; $61ff: $84
	ldh  a, [rSC]                                    ; $6200: $f0 $02
	inc  bc                                          ; $6202: $03
	db   $fc                                         ; $6203: $fc
	cp   [hl]                                        ; $6204: $be
	add  c                                           ; $6205: $81
	cp   a                                           ; $6206: $bf
	add  b                                           ; $6207: $80
	ld   a, a                                        ; $6208: $7f
	ld   bc, $7f7e                                   ; $6209: $01 $7e $7f
	add  b                                           ; $620c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620d: $cf
	add  b                                           ; $620e: $80
	ld   c, e                                        ; $620f: $4b
	add  b                                           ; $6210: $80
	ld   c, c                                        ; $6211: $49
	jr   nz, jr_07e_6289                             ; $6212: $20 $75

	ld   a, a                                        ; $6214: $7f
	ld   [hl], b                                     ; $6215: $70
	ld   a, a                                        ; $6216: $7f
	jp   nz, $e2ef                                   ; $6217: $c2 $ef $e2

	rst  $28                                         ; $621a: $ef
	xor  d                                           ; $621b: $aa
	adc  a                                           ; $621c: $8f
	jp   z, $e2ef                                    ; $621d: $ca $ef $e2

	rst  $28                                         ; $6220: $ef
	call nz, Call_07e_41ed                           ; $6221: $c4 $ed $41
	rst  $38                                         ; $6224: $ff
	rra                                              ; $6225: $1f
	rst  $38                                         ; $6226: $ff
	dec  bc                                          ; $6227: $0b
	rst  $38                                         ; $6228: $ff
	inc  bc                                          ; $6229: $03
	rst  $38                                         ; $622a: $ff
	inc  bc                                          ; $622b: $03
	rst  $38                                         ; $622c: $ff
	inc  bc                                          ; $622d: $03
	rst  $38                                         ; $622e: $ff
	ld   [bc], a                                     ; $622f: $02
	rst  $38                                         ; $6230: $ff
	ld   b, b                                        ; $6231: $40
	rst  $38                                         ; $6232: $ff
	ld   a, [de]                                     ; $6233: $1a
	adc  c                                           ; $6234: $89
	ldh  a, [rAUD1LOW]                               ; $6235: $f0 $13
	or   b                                           ; $6237: $b0
	ldh  a, [$30]                                    ; $6238: $f0 $30
	ldh  a, [rAUD2LOW]                               ; $623a: $f0 $18
	sbc  b                                           ; $623c: $98
	and  a                                           ; $623d: $a7
	ld   h, a                                        ; $623e: $67
	jr   z, jr_07e_6259                              ; $623f: $28 $18

	ld   c, [hl]                                     ; $6241: $4e
	jp   nz, $a0c3                                   ; $6242: $c2 $c3 $a0

	ld   d, h                                        ; $6245: $54
	ld   c, h                                        ; $6246: $4c
	xor  l                                           ; $6247: $ad
	xor  e                                           ; $6248: $ab
	call nc, $82d5                                   ; $6249: $d4 $d5 $82
	nop                                              ; $624c: $00
	add  b                                           ; $624d: $80
	ldh  [$80], a                                    ; $624e: $e0 $80
	jr   jr_07e_625b                                 ; $6250: $18 $09

	add  e                                           ; $6252: $83
	add  h                                           ; $6253: $84
	push de                                          ; $6254: $d5
	inc  sp                                          ; $6255: $33
	dec  d                                           ; $6256: $15
	inc  c                                           ; $6257: $0c
	push bc                                          ; $6258: $c5

jr_07e_6259:
	ld   b, e                                        ; $6259: $43
	ld   a, a                                        ; $625a: $7f

jr_07e_625b:
	ld   bc, $0084                                   ; $625b: $01 $84 $00
	nop                                              ; $625e: $00
	rst  $38                                         ; $625f: $ff
	add  c                                           ; $6260: $81
	nop                                              ; $6261: $00
	ld   [$60a0], sp                                 ; $6262: $08 $a0 $60
	jr   c, jr_07e_626f                              ; $6265: $38 $08

	rst  $38                                         ; $6267: $ff
	nop                                              ; $6268: $00
	ret  nc                                          ; $6269: $d0

	jr   nc, jr_07e_627c                             ; $626a: $30 $10

	add  c                                           ; $626c: $81
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00

jr_07e_626f:
	ldh  a, [$85]                                    ; $626f: $f0 $85
	nop                                              ; $6271: $00
	rla                                              ; $6272: $17
	jp   c, $95aa                                    ; $6273: $da $aa $95

	push af                                          ; $6276: $f5
	ld   [$31fa], a                                  ; $6277: $ea $fa $31
	dec  a                                           ; $627a: $3d
	inc  e                                           ; $627b: $1c

jr_07e_627c:
	ld   e, $c6                                      ; $627c: $1e $c6
	rst  ToBoot                                         ; $627e: $c7
	db   $e3                                         ; $627f: $e3
	ld   h, e                                        ; $6280: $63
	ld   a, e                                        ; $6281: $7b
	dec  sp                                          ; $6282: $3b
	adc  a                                           ; $6283: $8f
	cp   a                                           ; $6284: $bf
	ld   e, e                                        ; $6285: $5b
	ld   d, a                                        ; $6286: $57
	xor  c                                           ; $6287: $a9
	xor  e                                           ; $6288: $ab

jr_07e_6289:
	ld   d, h                                        ; $6289: $54
	ld   d, l                                        ; $628a: $55
	add  b                                           ; $628b: $80
	xor  d                                           ; $628c: $aa
	dec  d                                           ; $628d: $15
	ld   d, l                                        ; $628e: $55
	push de                                          ; $628f: $d5
	xor  d                                           ; $6290: $aa
	ld   [$f5d5], a                                  ; $6291: $ea $d5 $f5
	ld   h, b                                        ; $6294: $60
	add  b                                           ; $6295: $80
	ld   sp, $caf1                                   ; $6296: $31 $f1 $ca
	ld   a, [$ff33]                                  ; $6299: $fa $33 $ff
	sbc  h                                           ; $629c: $9c
	cp   a                                           ; $629d: $bf
	ld   b, a                                        ; $629e: $47
	ld   e, a                                        ; $629f: $5f
	xor  l                                           ; $62a0: $ad
	xor  e                                           ; $62a1: $ab
	ld   d, h                                        ; $62a2: $54
	ld   d, l                                        ; $62a3: $55
	add  b                                           ; $62a4: $80
	db   $10                                         ; $62a5: $10
	add  b                                           ; $62a6: $80
	ld   d, b                                        ; $62a7: $50
	add  b                                           ; $62a8: $80
	or   b                                           ; $62a9: $b0
	add  b                                           ; $62aa: $80
	ld   [hl], b                                     ; $62ab: $70
	add  b                                           ; $62ac: $80
	ldh  a, [rAUD2ENV]                               ; $62ad: $f0 $17
	ld   [hl], b                                     ; $62af: $70
	ldh  a, [$90]                                    ; $62b0: $f0 $90
	ldh  a, [$e0]                                    ; $62b2: $f0 $e0
	ldh  a, [$da]                                    ; $62b4: $f0 $da
	rst  JumpTable                                         ; $62b6: $df
	inc  b                                           ; $62b7: $04
	rra                                              ; $62b8: $1f
	add  h                                           ; $62b9: $84
	rst  JumpTable                                         ; $62ba: $df
	add  h                                           ; $62bb: $84
	rst  JumpTable                                         ; $62bc: $df
	inc  b                                           ; $62bd: $04
	rra                                              ; $62be: $1f
	sub  b                                           ; $62bf: $90
	db   $db                                         ; $62c0: $db
	ret  c                                           ; $62c1: $d8

	db   $db                                         ; $62c2: $db
	and  b                                           ; $62c3: $a0
	db   $e3                                         ; $62c4: $e3
	inc  bc                                          ; $62c5: $03
	db   $fd                                         ; $62c6: $fd
	add  b                                           ; $62c7: $80
	cp   $80                                         ; $62c8: $fe $80
	rst  $38                                         ; $62ca: $ff
	dec  bc                                          ; $62cb: $0b
	ld   a, a                                        ; $62cc: $7f
	rst  $38                                         ; $62cd: $ff
	cpl                                              ; $62ce: $2f
	rst  $38                                         ; $62cf: $ff
	rrca                                             ; $62d0: $0f
	rst  $38                                         ; $62d1: $ff
	adc  a                                           ; $62d2: $8f
	rst  $38                                         ; $62d3: $ff
	adc  a                                           ; $62d4: $8f
	rst  $38                                         ; $62d5: $ff
	and  c                                           ; $62d6: $a1
	ld   bc, $8280                                   ; $62d7: $01 $80 $82
	add  b                                           ; $62da: $80
	ld   b, c                                        ; $62db: $41
	add  b                                           ; $62dc: $80
	and  b                                           ; $62dd: $a0
	add  b                                           ; $62de: $80
	ret  nc                                          ; $62df: $d0

	add  b                                           ; $62e0: $80
	ld   [$f580], a                                  ; $62e1: $ea $80 $f5
	add  b                                           ; $62e4: $80
	ld   a, [$7080]                                  ; $62e5: $fa $80 $70
	add  b                                           ; $62e8: $80
	or   b                                           ; $62e9: $b0
	add  b                                           ; $62ea: $80
	ld   d, b                                        ; $62eb: $50
	add  b                                           ; $62ec: $80
	or   b                                           ; $62ed: $b0
	add  b                                           ; $62ee: $80
	ld   d, b                                        ; $62ef: $50
	add  b                                           ; $62f0: $80
	or   b                                           ; $62f1: $b0
	add  b                                           ; $62f2: $80
	ld   d, b                                        ; $62f3: $50
	add  b                                           ; $62f4: $80
	and  b                                           ; $62f5: $a0
	ld   bc, $49b6                                   ; $62f6: $01 $b6 $49
	add  b                                           ; $62f9: $80
	jp   hl                                          ; $62fa: $e9


	add  b                                           ; $62fb: $80
	ld   e, l                                        ; $62fc: $5d
	add  b                                           ; $62fd: $80
	ld   c, e                                        ; $62fe: $4b
	add  b                                           ; $62ff: $80
	ld   c, c                                        ; $6300: $49
	add  b                                           ; $6301: $80
	ld   bc, $0080                                   ; $6302: $01 $80 $00
	dec  bc                                          ; $6305: $0b
	add  b                                           ; $6306: $80
	nop                                              ; $6307: $00
	ld   l, l                                        ; $6308: $6d
	db   $ed                                         ; $6309: $ed
	db   $ec                                         ; $630a: $ec
	db   $ed                                         ; $630b: $ed
	db   $fc                                         ; $630c: $fc
	db   $fd                                         ; $630d: $fd
	ldh  a, [$f1]                                    ; $630e: $f0 $f1
	db   $fc                                         ; $6310: $fc
	db   $fd                                         ; $6311: $fd
	add  b                                           ; $6312: $80
	cp   l                                           ; $6313: $bd
	add  b                                           ; $6314: $80
	dec  a                                           ; $6315: $3d
	add  b                                           ; $6316: $80
	rlca                                             ; $6317: $07
	jr   nz, jr_07e_636f                             ; $6318: $20 $55

	rst  $38                                         ; $631a: $ff
	ld   b, b                                        ; $631b: $40
	rst  $38                                         ; $631c: $ff
	ld   b, b                                        ; $631d: $40
	rst  $38                                         ; $631e: $ff
	ld   b, b                                        ; $631f: $40
	rst  $38                                         ; $6320: $ff
	adc  b                                           ; $6321: $88
	cp   a                                           ; $6322: $bf
	adc  b                                           ; $6323: $88
	cp   a                                           ; $6324: $bf
	adc  b                                           ; $6325: $88
	cp   a                                           ; $6326: $bf
	adc  b                                           ; $6327: $88
	cp   a                                           ; $6328: $bf
	ld   e, d                                        ; $6329: $5a
	ldh  a, [$30]                                    ; $632a: $f0 $30
	ldh  a, [$30]                                    ; $632c: $f0 $30
	ldh  a, [$30]                                    ; $632e: $f0 $30
	ldh  a, [$30]                                    ; $6330: $f0 $30
	ldh  a, [rAUD1SWEEP]                             ; $6332: $f0 $10
	ldh  a, [rP1]                                    ; $6334: $f0 $00
	ldh  a, [rP1]                                    ; $6336: $f0 $00
	ldh  a, [hScriptOpcodeParams]                                    ; $6338: $f0 $a0
	rst  $38                                         ; $633a: $ff
	nop                                              ; $633b: $00
	rst  $38                                         ; $633c: $ff
	nop                                              ; $633d: $00
	rst  $38                                         ; $633e: $ff
	nop                                              ; $633f: $00
	rst  $38                                         ; $6340: $ff
	nop                                              ; $6341: $00
	rst  $38                                         ; $6342: $ff
	nop                                              ; $6343: $00
	rst  $38                                         ; $6344: $ff
	nop                                              ; $6345: $00
	rst  $30                                         ; $6346: $f7
	nop                                              ; $6347: $00
	ld   c, b                                        ; $6348: $48
	ld   bc, $0801                                   ; $6349: $01 $01 $08
	rlca                                             ; $634c: $07
	add  b                                           ; $634d: $80
	ld   a, [bc]                                     ; $634e: $0a
	add  b                                           ; $634f: $80
	rlca                                             ; $6350: $07
	add  b                                           ; $6351: $80
	ld   a, [bc]                                     ; $6352: $0a
	add  b                                           ; $6353: $80
	dec  b                                           ; $6354: $05
	add  b                                           ; $6355: $80
	ld   a, [bc]                                     ; $6356: $0a
	add  b                                           ; $6357: $80
	dec  b                                           ; $6358: $05
	add  b                                           ; $6359: $80
	ld   [bc], a                                     ; $635a: $02
	ld   bc, $54a4                                   ; $635b: $01 $a4 $54
	add  b                                           ; $635e: $80
	xor  d                                           ; $635f: $aa
	add  b                                           ; $6360: $80
	ld   d, h                                        ; $6361: $54
	add  b                                           ; $6362: $80
	xor  d                                           ; $6363: $aa
	add  b                                           ; $6364: $80
	ld   d, h                                        ; $6365: $54
	add  b                                           ; $6366: $80
	xor  d                                           ; $6367: $aa
	add  b                                           ; $6368: $80
	ld   d, h                                        ; $6369: $54
	add  b                                           ; $636a: $80
	xor  d                                           ; $636b: $aa
	nop                                              ; $636c: $00
	cp   [hl]                                        ; $636d: $be
	add  b                                           ; $636e: $80

jr_07e_636f:
	xor  [hl]                                        ; $636f: $ae
	add  b                                           ; $6370: $80
	cp   [hl]                                        ; $6371: $be
	ld   [bc], a                                     ; $6372: $02
	xor  [hl]                                        ; $6373: $ae
	and  [hl]                                        ; $6374: $a6
	or   [hl]                                        ; $6375: $b6
	add  b                                           ; $6376: $80
	ld   b, $81                                      ; $6377: $06 $81
	cp   [hl]                                        ; $6379: $be
	add  b                                           ; $637a: $80
	xor  [hl]                                        ; $637b: $ae
	nop                                              ; $637c: $00
	cp   [hl]                                        ; $637d: $be
	add  b                                           ; $637e: $80
	ld   a, a                                        ; $637f: $7f
	add  b                                           ; $6380: $80
	rst  $38                                         ; $6381: $ff
	add  b                                           ; $6382: $80
	ld   a, a                                        ; $6383: $7f
	add  b                                           ; $6384: $80
	rst  $38                                         ; $6385: $ff
	add  b                                           ; $6386: $80
	ld   a, a                                        ; $6387: $7f
	add  b                                           ; $6388: $80
	rst  $38                                         ; $6389: $ff
	add  b                                           ; $638a: $80
	ld   a, a                                        ; $638b: $7f
	add  b                                           ; $638c: $80
	rst  $38                                         ; $638d: $ff
	nop                                              ; $638e: $00
	ld   hl, sp-$76                                  ; $638f: $f8 $8a
	ret  c                                           ; $6391: $d8

	nop                                              ; $6392: $00
	ld   hl, sp-$80                                  ; $6393: $f8 $80
	add  b                                           ; $6395: $80
	add  e                                           ; $6396: $83
	nop                                              ; $6397: $00
	add  b                                           ; $6398: $80
	ld   bc, $0381                                   ; $6399: $01 $81 $03
	ld   bc, $0102                                   ; $639c: $01 $02 $01
	add  b                                           ; $639f: $80
	rlca                                             ; $63a0: $07
	add  b                                           ; $63a1: $80
	inc  bc                                          ; $63a2: $03
	add  d                                           ; $63a3: $82
	nop                                              ; $63a4: $00
	inc  de                                          ; $63a5: $13
	ld   bc, $f0fd                                   ; $63a6: $01 $fd $f0
	rst  $38                                         ; $63a9: $ff
	add  e                                           ; $63aa: $83
	rst  $38                                         ; $63ab: $ff
	ld   l, a                                        ; $63ac: $6f
	rst  $38                                         ; $63ad: $ff
	rst  $20                                         ; $63ae: $e7
	rst  $38                                         ; $63af: $ff

jr_07e_63b0:
	ei                                               ; $63b0: $fb
	rst  $38                                         ; $63b1: $ff
	ld   b, $05                                      ; $63b2: $06 $05
	dec  hl                                          ; $63b4: $2b
	inc  sp                                          ; $63b5: $33
	rra                                              ; $63b6: $1f
	ld   sp, hl                                      ; $63b7: $f9
	rst  $38                                         ; $63b8: $ff
	cp   $80                                         ; $63b9: $fe $80
	rst  $38                                         ; $63bb: $ff
	add  b                                           ; $63bc: $80
	cp   $00                                         ; $63bd: $fe $00
	rst  $38                                         ; $63bf: $ff
	add  b                                           ; $63c0: $80
	or   $01                                         ; $63c1: $f6 $01
	jp   $812c                                       ; $63c3: $c3 $2c $81


	ldh  a, [$80]                                    ; $63c6: $f0 $80
	rst  $38                                         ; $63c8: $ff
	jr   nz, jr_07e_644a                             ; $63c9: $20 $7f

	ldh  [$3f], a                                    ; $63cb: $e0 $3f
	ld   a, a                                        ; $63cd: $7f
	rst  $38                                         ; $63ce: $ff
	ccf                                              ; $63cf: $3f
	db   $fc                                         ; $63d0: $fc
	rst  $38                                         ; $63d1: $ff
	inc  bc                                          ; $63d2: $03
	db   $fc                                         ; $63d3: $fc
	dec  bc                                          ; $63d4: $0b
	jr   jr_07e_63d7                                 ; $63d5: $18 $00

jr_07e_63d7:
	jr   z, jr_07e_63b0                              ; $63d7: $28 $d7

	rst  $38                                         ; $63d9: $ff
	rst  $28                                         ; $63da: $ef
	nop                                              ; $63db: $00
	cp   $ff                                         ; $63dc: $fe $ff
	push de                                          ; $63de: $d5
	rst  $38                                         ; $63df: $ff
	jp   $c7ff                                       ; $63e0: $c3 $ff $c7


	rst  $38                                         ; $63e3: $ff
	db   $fd                                         ; $63e4: $fd
	scf                                              ; $63e5: $37
	jr   nc, jr_07e_641f                             ; $63e6: $30 $37

	ldh  a, [c]                                      ; $63e8: $f2
	rst  $30                                         ; $63e9: $f7
	rst  $20                                         ; $63ea: $e7
	add  b                                           ; $63eb: $80
	rlca                                             ; $63ec: $07
	nop                                              ; $63ed: $00
	rst  $38                                         ; $63ee: $ff
	add  b                                           ; $63ef: $80
	cp   $06                                         ; $63f0: $fe $06
	ldh  a, [$f4]                                    ; $63f2: $f0 $f4
	rst  $30                                         ; $63f4: $f7
	ldh  a, [rHDMA3]                                 ; $63f5: $f0 $53
	rst  $38                                         ; $63f7: $ff
	ld   d, b                                        ; $63f8: $50
	add  b                                           ; $63f9: $80
	db   $fc                                         ; $63fa: $fc
	add  e                                           ; $63fb: $83
	rst  $38                                         ; $63fc: $ff
	add  b                                           ; $63fd: $80
	ld   a, [hl]                                     ; $63fe: $7e
	dec  b                                           ; $63ff: $05
	cp   $7e                                         ; $6400: $fe $7e
	cp   $3e                                         ; $6402: $fe $3e
	ld   b, b                                        ; $6404: $40
	rst  $38                                         ; $6405: $ff
	add  b                                           ; $6406: $80
	ld   a, a                                        ; $6407: $7f
	add  b                                           ; $6408: $80
	add  a                                           ; $6409: $87
	add  d                                           ; $640a: $82
	ldh  [rTMA], a                                   ; $640b: $e0 $06
	ld   h, e                                        ; $640d: $63
	db   $e3                                         ; $640e: $e3
	add  e                                           ; $640f: $83
	db   $e3                                         ; $6410: $e3
	cp   $ff                                         ; $6411: $fe $ff
	ld   e, $80                                      ; $6413: $1e $80
	ldh  a, [$80]                                    ; $6415: $f0 $80
	cp   $00                                         ; $6417: $fe $00
	rst  $38                                         ; $6419: $ff
	add  b                                           ; $641a: $80
	ld   a, a                                        ; $641b: $7f
	add  b                                           ; $641c: $80
	rrca                                             ; $641d: $0f
	add  b                                           ; $641e: $80

jr_07e_641f:
	pop  bc                                          ; $641f: $c1
	add  b                                           ; $6420: $80
	ld   hl, sp+$03                                  ; $6421: $f8 $03
	ld   a, a                                        ; $6423: $7f
	rst  $38                                         ; $6424: $ff
	inc  c                                           ; $6425: $0c
	ld   [hl], a                                     ; $6426: $77
	add  b                                           ; $6427: $80
	rla                                              ; $6428: $17
	nop                                              ; $6429: $00
	dec  b                                           ; $642a: $05
	add  b                                           ; $642b: $80
	db   $e3                                         ; $642c: $e3
	ld   bc, $feff                                   ; $642d: $01 $ff $fe
	add  c                                           ; $6430: $81
	rst  $38                                         ; $6431: $ff
	add  b                                           ; $6432: $80
	rra                                              ; $6433: $1f
	add  b                                           ; $6434: $80
	add  c                                           ; $6435: $81
	nop                                              ; $6436: $00
	ld   b, h                                        ; $6437: $44
	add  c                                           ; $6438: $81
	rst  $38                                         ; $6439: $ff
	ld   [$ff99], sp                                 ; $643a: $08 $99 $ff
	cp   h                                           ; $643d: $bc
	cp   a                                           ; $643e: $bf
	cpl                                              ; $643f: $2f
	rst  JumpTable                                         ; $6440: $df
	jp   nc, $fcff                                   ; $6441: $d2 $ff $fc

	add  c                                           ; $6444: $81
	rst  $38                                         ; $6445: $ff
	ld   bc, $01f1                                   ; $6446: $01 $f1 $01
	adc  h                                           ; $6449: $8c

jr_07e_644a:
	nop                                              ; $644a: $00
	ld   bc, $54a4                                   ; $644b: $01 $a4 $54
	add  b                                           ; $644e: $80
	xor  d                                           ; $644f: $aa
	add  b                                           ; $6450: $80
	ld   d, h                                        ; $6451: $54
	adc  b                                           ; $6452: $88
	nop                                              ; $6453: $00
	add  b                                           ; $6454: $80
	cp   a                                           ; $6455: $bf
	add  d                                           ; $6456: $82
	or   b                                           ; $6457: $b0
	adc  b                                           ; $6458: $88
	nop                                              ; $6459: $00
	add  b                                           ; $645a: $80
	ldh  [$88], a                                    ; $645b: $e0 $88
	nop                                              ; $645d: $00
	add  b                                           ; $645e: $80
	dec  b                                           ; $645f: $05
	add  b                                           ; $6460: $80
	ld   a, [hl+]                                    ; $6461: $2a
	add  h                                           ; $6462: $84
	nop                                              ; $6463: $00
	add  b                                           ; $6464: $80
	ld   [$5f80], sp                                 ; $6465: $08 $80 $5f
	add  b                                           ; $6468: $80
	cp   a                                           ; $6469: $bf
	add  b                                           ; $646a: $80
	ld   e, a                                        ; $646b: $5f
	add  b                                           ; $646c: $80
	cp   [hl]                                        ; $646d: $be
	add  b                                           ; $646e: $80
	ld   bc, $0086                                   ; $646f: $01 $86 $00
	add  b                                           ; $6472: $80
	add  b                                           ; $6473: $80
	add  d                                           ; $6474: $82
	nop                                              ; $6475: $00
	add  b                                           ; $6476: $80
	db   $fc                                         ; $6477: $fc
	add  b                                           ; $6478: $80
	ld   [hl], d                                     ; $6479: $72
	add  b                                           ; $647a: $80
	dec  b                                           ; $647b: $05
	add  b                                           ; $647c: $80

jr_07e_647d:
	ld   [bc], a                                     ; $647d: $02
	add  b                                           ; $647e: $80
	dec  b                                           ; $647f: $05
	add  b                                           ; $6480: $80
	ld   [bc], a                                     ; $6481: $02
	add  b                                           ; $6482: $80
	ld   bc, $0080                                   ; $6483: $01 $80 $00
	inc  bc                                          ; $6486: $03
	jr   c, jr_07e_64c5                              ; $6487: $38 $3c

	or   a                                           ; $6489: $b7
	or   e                                           ; $648a: $b3
	add  b                                           ; $648b: $80
	ld   a, a                                        ; $648c: $7f
	add  b                                           ; $648d: $80
	cp   a                                           ; $648e: $bf
	add  b                                           ; $648f: $80
	ld   a, a                                        ; $6490: $7f
	add  b                                           ; $6491: $80
	cp   a                                           ; $6492: $bf
	add  b                                           ; $6493: $80
	ld   e, a                                        ; $6494: $5f
	add  b                                           ; $6495: $80
	xor  a                                           ; $6496: $af
	inc  bc                                          ; $6497: $03
	nop                                              ; $6498: $00
	rlca                                             ; $6499: $07
	rst  $38                                         ; $649a: $ff
	ld   hl, sp-$76                                  ; $649b: $f8 $8a
	rst  $38                                         ; $649d: $ff
	ld   [de], a                                     ; $649e: $12
	jr   nz, @+$01                                   ; $649f: $20 $ff

	adc  a                                           ; $64a1: $8f
	ld   a, a                                        ; $64a2: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a3: $cf
	rst  $38                                         ; $64a4: $ff
	adc  $fe                                         ; $64a5: $ce $fe
	rst  ToBoot                                         ; $64a7: $c7
	cp   $e2                                         ; $64a8: $fe $e2
	rst  $38                                         ; $64aa: $ff
	pop  af                                          ; $64ab: $f1
	rst  $38                                         ; $64ac: $ff
	ld   a, [$0fff]                                  ; $64ad: $fa $ff $0f
	ldh  a, [c]                                      ; $64b0: $f2
	db   $fd                                         ; $64b1: $fd
	add  b                                           ; $64b2: $80
	ld   hl, sp+$00                                  ; $64b3: $f8 $00
	rst  $38                                         ; $64b5: $ff
	add  b                                           ; $64b6: $80
	ccf                                              ; $64b7: $3f
	ld   a, [bc]                                     ; $64b8: $0a
	rst  ToBoot                                         ; $64b9: $c7
	rlca                                             ; $64ba: $07
	jr   c, jr_07e_647d                              ; $64bb: $38 $c0

	ld   b, a                                        ; $64bd: $47
	ld   hl, sp+$38                                  ; $64be: $f8 $38
	cp   $3f                                         ; $64c0: $fe $3f
	ld   a, $be                                      ; $64c2: $3e $be
	add  b                                           ; $64c4: $80

jr_07e_64c5:
	ld   a, [hl]                                     ; $64c5: $7e
	add  h                                           ; $64c6: $84
	cp   $80                                         ; $64c7: $fe $80
	sbc  [hl]                                        ; $64c9: $9e
	add  b                                           ; $64ca: $80
	ld   e, $01                                      ; $64cb: $1e $01
	ld   a, $21                                      ; $64cd: $3e $21
	adc  l                                           ; $64cf: $8d
	rst  $38                                         ; $64d0: $ff
	ld   [bc], a                                     ; $64d1: $02
	xor  $ff                                         ; $64d2: $ee $ff
	ldh  a, [$85]                                    ; $64d4: $f0 $85
	rst  $38                                         ; $64d6: $ff
	dec  b                                           ; $64d7: $05
	cp   $ff                                         ; $64d8: $fe $ff
	ret  nz                                          ; $64da: $c0

	rst  $38                                         ; $64db: $ff
	inc  a                                           ; $64dc: $3c
	db   $fd                                         ; $64dd: $fd
	add  b                                           ; $64de: $80
	ldh  a, [$80]                                    ; $64df: $f0 $80
	cp   $0d                                         ; $64e1: $fe $0d
	rra                                              ; $64e3: $1f
	rst  $38                                         ; $64e4: $ff
	db   $e3                                         ; $64e5: $e3
	rst  $38                                         ; $64e6: $ff
	inc  e                                           ; $64e7: $1c
	rst  $38                                         ; $64e8: $ff
	rst  $28                                         ; $64e9: $ef
	rst  $38                                         ; $64ea: $ff
	jp   $afff                                       ; $64eb: $c3 $ff $af


	db   $fc                                         ; $64ee: $fc
	ld   e, a                                        ; $64ef: $5f
	ccf                                              ; $64f0: $3f
	add  b                                           ; $64f1: $80
	inc  bc                                          ; $64f2: $03
	add  b                                           ; $64f3: $80
	ret  nz                                          ; $64f4: $c0

	add  b                                           ; $64f5: $80
	db   $fc                                         ; $64f6: $fc
	inc  b                                           ; $64f7: $04
	ld   a, a                                        ; $64f8: $7f
	rst  $38                                         ; $64f9: $ff
	add  a                                           ; $64fa: $87
	rst  $38                                         ; $64fb: $ff
	ld   hl, sp-$7f                                  ; $64fc: $f8 $81
	rst  $38                                         ; $64fe: $ff
	add  [hl]                                        ; $64ff: $86
	nop                                              ; $6500: $00
	ld   bc, $807f                                   ; $6501: $01 $7f $80
	add  b                                           ; $6504: $80
	inc  bc                                          ; $6505: $03
	add  b                                           ; $6506: $80
	ccf                                              ; $6507: $3f
	add  c                                           ; $6508: $81
	rst  $38                                         ; $6509: $ff
	add  l                                           ; $650a: $85
	nop                                              ; $650b: $00
	ld   bc, $08f7                                   ; $650c: $01 $f7 $08
	add  b                                           ; $650f: $80
	add  b                                           ; $6510: $80
	add  b                                           ; $6511: $80
	adc  b                                           ; $6512: $88
	add  b                                           ; $6513: $80
	add  b                                           ; $6514: $80
	nop                                              ; $6515: $00
	rst  $38                                         ; $6516: $ff
	add  l                                           ; $6517: $85
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	rst  $38                                         ; $651a: $ff
	add  l                                           ; $651b: $85
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	rst  $38                                         ; $651e: $ff
	add  l                                           ; $651f: $85
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	ldh  a, [$85]                                    ; $6522: $f0 $85
	nop                                              ; $6524: $00
	ld   bc, $beb1                                   ; $6525: $01 $b1 $be
	add  b                                           ; $6528: $80
	cp   a                                           ; $6529: $bf
	add  b                                           ; $652a: $80
	cp   [hl]                                        ; $652b: $be
	add  b                                           ; $652c: $80
	cp   a                                           ; $652d: $bf
	add  b                                           ; $652e: $80
	cp   [hl]                                        ; $652f: $be
	add  b                                           ; $6530: $80
	cp   a                                           ; $6531: $bf
	add  b                                           ; $6532: $80
	cp   $80                                         ; $6533: $fe $80
	add  c                                           ; $6535: $81
	add  b                                           ; $6536: $80
	adc  b                                           ; $6537: $88
	add  b                                           ; $6538: $80
	nop                                              ; $6539: $00
	add  b                                           ; $653a: $80
	adc  b                                           ; $653b: $88
	add  b                                           ; $653c: $80
	nop                                              ; $653d: $00
	add  b                                           ; $653e: $80
	adc  b                                           ; $653f: $88
	add  b                                           ; $6540: $80

jr_07e_6541:
	nop                                              ; $6541: $00
	add  b                                           ; $6542: $80
	adc  b                                           ; $6543: $88
	add  b                                           ; $6544: $80
	nop                                              ; $6545: $00
	add  c                                           ; $6546: $81
	rst  $38                                         ; $6547: $ff
	ld   bc, $7d7f                                   ; $6548: $01 $7f $7d
	add  b                                           ; $654b: $80
	db   $fd                                         ; $654c: $fd
	add  b                                           ; $654d: $80
	ld   a, l                                        ; $654e: $7d
	add  b                                           ; $654f: $80
	cp   l                                           ; $6550: $bd
	add  b                                           ; $6551: $80
	ld   a, l                                        ; $6552: $7d
	add  b                                           ; $6553: $80
	dec  a                                           ; $6554: $3d
	ld   [bc], a                                     ; $6555: $02
	ld   a, l                                        ; $6556: $7d
	cpl                                              ; $6557: $2f
	and  b                                           ; $6558: $a0
	add  b                                           ; $6559: $80
	ret  nc                                          ; $655a: $d0

	add  b                                           ; $655b: $80
	ldh  [$82], a                                    ; $655c: $e0 $82
	ret  nz                                          ; $655e: $c0

jr_07e_655f:
	nop                                              ; $655f: $00
	ret  nc                                          ; $6560: $d0

	add  c                                           ; $6561: $81
	ret  nz                                          ; $6562: $c0

	inc  bc                                          ; $6563: $03
	ret  nc                                          ; $6564: $d0

	ret  nz                                          ; $6565: $c0

	ldh  a, [rIE]                                    ; $6566: $f0 $ff
	add  b                                           ; $6568: $80
	add  c                                           ; $6569: $81
	dec  c                                           ; $656a: $0d
	sbc  a                                           ; $656b: $9f
	cp   a                                           ; $656c: $bf
	adc  b                                           ; $656d: $88
	cp   b                                           ; $656e: $b8
	add  c                                           ; $656f: $81
	or   b                                           ; $6570: $b0
	sub  [hl]                                        ; $6571: $96
	and  [hl]                                        ; $6572: $a6
	or   $4f                                         ; $6573: $f6 $4f
	ld   b, a                                        ; $6575: $47
	ld   a, a                                        ; $6576: $7f
	rra                                              ; $6577: $1f
	adc  [hl]                                        ; $6578: $8e
	add  b                                           ; $6579: $80
	inc  c                                           ; $657a: $0c
	add  b                                           ; $657b: $80
	adc  d                                           ; $657c: $8a
	add  b                                           ; $657d: $80
	add  h                                           ; $657e: $84
	ld   bc, $0a0b                                   ; $657f: $01 $0b $0a
	add  b                                           ; $6582: $80
	inc  b                                           ; $6583: $04
	ld   bc, $0a8a                                   ; $6584: $01 $8a $0a
	add  b                                           ; $6587: $80
	inc  b                                           ; $6588: $04
	dec  b                                           ; $6589: $05
	ld   e, b                                        ; $658a: $58
	ld   [$dc0f], sp                                 ; $658b: $08 $0f $dc
	db   $ed                                         ; $658e: $ed
	adc  [hl]                                        ; $658f: $8e
	add  b                                           ; $6590: $80
	adc  a                                           ; $6591: $8f
	add  b                                           ; $6592: $80
	rrca                                             ; $6593: $0f
	ld   b, $ef                                      ; $6594: $06 $ef
	rrca                                             ; $6596: $0f
	ld   a, a                                        ; $6597: $7f
	xor  a                                           ; $6598: $af
	sub  b                                           ; $6599: $90
	ld   b, b                                        ; $659a: $40
	ccf                                              ; $659b: $3f
	add  b                                           ; $659c: $80
	nop                                              ; $659d: $00
	inc  b                                           ; $659e: $04
	jr   nz, jr_07e_6541                             ; $659f: $20 $a0

	nop                                              ; $65a1: $00
	ret  nc                                          ; $65a2: $d0

	ldh  [$84], a                                    ; $65a3: $e0 $84
	ldh  a, [$80]                                    ; $65a5: $f0 $80
	nop                                              ; $65a7: $00
	ld   bc, $fff0                                   ; $65a8: $01 $f0 $ff
	add  b                                           ; $65ab: $80
	nop                                              ; $65ac: $00
	add  d                                           ; $65ad: $82
	rst  $38                                         ; $65ae: $ff
	nop                                              ; $65af: $00
	db   $fc                                         ; $65b0: $fc
	add  b                                           ; $65b1: $80
	inc  bc                                          ; $65b2: $03
	add  b                                           ; $65b3: $80
	rrca                                             ; $65b4: $0f
	nop                                              ; $65b5: $00
	rst  $38                                         ; $65b6: $ff
	add  b                                           ; $65b7: $80
	db   $e3                                         ; $65b8: $e3
	ld   bc, $808b                                   ; $65b9: $01 $8b $80
	add  b                                           ; $65bc: $80
	nop                                              ; $65bd: $00
	add  b                                           ; $65be: $80
	add  b                                           ; $65bf: $80
	nop                                              ; $65c0: $00
	call z, $b881                                    ; $65c1: $cc $81 $b8
	nop                                              ; $65c4: $00
	add  h                                           ; $65c5: $84
	add  e                                           ; $65c6: $83
	cp   l                                           ; $65c7: $bd
	ld   bc, $df9a                                   ; $65c8: $01 $9a $df
	add  b                                           ; $65cb: $80
	ret  nz                                          ; $65cc: $c0

	add  b                                           ; $65cd: $80
	rst  JumpTable                                         ; $65ce: $df
	add  b                                           ; $65cf: $80
	ret  nz                                          ; $65d0: $c0

	add  b                                           ; $65d1: $80
	rst  JumpTable                                         ; $65d2: $df
	add  b                                           ; $65d3: $80
	nop                                              ; $65d4: $00
	dec  b                                           ; $65d5: $05
	rst  $38                                         ; $65d6: $ff
	nop                                              ; $65d7: $00
	cp   $00                                         ; $65d8: $fe $00
	xor  $e0                                         ; $65da: $ee $e0
	add  b                                           ; $65dc: $80
	jr   nc, jr_07e_655f                             ; $65dd: $30 $80

	ret  nz                                          ; $65df: $c0

	add  b                                           ; $65e0: $80
	ld   [hl], b                                     ; $65e1: $70
	add  b                                           ; $65e2: $80
	add  b                                           ; $65e3: $80
	add  b                                           ; $65e4: $80
	ldh  a, [$80]                                    ; $65e5: $f0 $80
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	ldh  a, [$80]                                    ; $65e9: $f0 $80
	nop                                              ; $65eb: $00
	ld   [$7fff], sp                                 ; $65ec: $08 $ff $7f
	rst  $38                                         ; $65ef: $ff
	inc  l                                           ; $65f0: $2c
	db   $fc                                         ; $65f1: $fc
	ld   d, b                                        ; $65f2: $50
	add  b                                           ; $65f3: $80
	add  d                                           ; $65f4: $82
	ld   [bc], a                                     ; $65f5: $02
	add  b                                           ; $65f6: $80
	ld   d, l                                        ; $65f7: $55
	add  b                                           ; $65f8: $80
	ld   [$c180], a                                  ; $65f9: $ea $80 $c1
	add  b                                           ; $65fc: $80
	adc  b                                           ; $65fd: $88
	add  b                                           ; $65fe: $80
	add  b                                           ; $65ff: $80
	add  b                                           ; $6600: $80
	ld   [$0080], sp                                 ; $6601: $08 $80 $00
	add  b                                           ; $6604: $80
	adc  b                                           ; $6605: $88
	add  b                                           ; $6606: $80
	nop                                              ; $6607: $00
	add  b                                           ; $6608: $80
	adc  b                                           ; $6609: $88
	add  b                                           ; $660a: $80
	nop                                              ; $660b: $00
	add  b                                           ; $660c: $80
	and  b                                           ; $660d: $a0
	add  b                                           ; $660e: $80
	ld   d, h                                        ; $660f: $54
	add  b                                           ; $6610: $80
	xor  d                                           ; $6611: $aa
	add  b                                           ; $6612: $80
	push af                                          ; $6613: $f5
	add  b                                           ; $6614: $80
	ld   a, [$fd80]                                  ; $6615: $fa $80 $fd
	add  b                                           ; $6618: $80
	cp   $80                                         ; $6619: $fe $80
	rst  $38                                         ; $661b: $ff
	nop                                              ; $661c: $00
	rrca                                             ; $661d: $0f
	add  l                                           ; $661e: $85
	nop                                              ; $661f: $00
	add  b                                           ; $6620: $80
	add  b                                           ; $6621: $80
	add  b                                           ; $6622: $80
	ld   b, b                                        ; $6623: $40
	add  b                                           ; $6624: $80
	and  b                                           ; $6625: $a0
	add  b                                           ; $6626: $80
	ld   d, b                                        ; $6627: $50
	ld   bc, $beb1                                   ; $6628: $01 $b1 $be
	add  b                                           ; $662b: $80
	cp   a                                           ; $662c: $bf
	dec  bc                                          ; $662d: $0b
	sbc  [hl]                                        ; $662e: $9e
	cp   [hl]                                        ; $662f: $be
	sbc  a                                           ; $6630: $9f
	cp   a                                           ; $6631: $bf
	sbc  [hl]                                        ; $6632: $9e
	cp   [hl]                                        ; $6633: $be
	sbc  a                                           ; $6634: $9f
	cp   a                                           ; $6635: $bf
	adc  [hl]                                        ; $6636: $8e
	cp   $8f                                         ; $6637: $fe $8f
	rst  $38                                         ; $6639: $ff
	add  b                                           ; $663a: $80
	adc  b                                           ; $663b: $88
	add  b                                           ; $663c: $80
	nop                                              ; $663d: $00
	add  b                                           ; $663e: $80
	adc  b                                           ; $663f: $88
	add  b                                           ; $6640: $80
	ld   [$8c80], sp                                 ; $6641: $08 $80 $8c
	ld   b, $06                                      ; $6644: $06 $06
	ld   c, $82                                      ; $6646: $0e $82
	adc  [hl]                                        ; $6648: $8e
	ld   [bc], a                                     ; $6649: $02
	ld   c, $f5                                      ; $664a: $0e $f5
	add  b                                           ; $664c: $80
	dec  a                                           ; $664d: $3d
	add  b                                           ; $664e: $80
	ld   e, l                                        ; $664f: $5d
	add  b                                           ; $6650: $80
	dec  a                                           ; $6651: $3d
	add  b                                           ; $6652: $80
	ld   e, l                                        ; $6653: $5d
	ld   [$3f3d], sp                                 ; $6654: $08 $3d $3f
	ld   e, c                                        ; $6657: $59
	ld   b, b                                        ; $6658: $40
	jr   nz, jr_07e_6693                             ; $6659: $20 $38

	ld   d, b                                        ; $665b: $50
	ld   h, c                                        ; $665c: $61
	ret  nz                                          ; $665d: $c0

	adc  c                                           ; $665e: $89
	ldh  a, [rP1]                                    ; $665f: $f0 $00
	ld   [hl], b                                     ; $6661: $70
	add  b                                           ; $6662: $80
	jr   nc, jr_07e_6676                             ; $6663: $30 $11

	ld   e, b                                        ; $6665: $58
	rst  $38                                         ; $6666: $ff
	ld   b, a                                        ; $6667: $47
	ld   a, a                                        ; $6668: $7f
	sub  c                                           ; $6669: $91
	add  c                                           ; $666a: $81
	xor  a                                           ; $666b: $af
	cp   a                                           ; $666c: $bf
	add  a                                           ; $666d: $87
	cp   a                                           ; $666e: $bf
	add  a                                           ; $666f: $87
	cp   a                                           ; $6670: $bf
	add  a                                           ; $6671: $87
	cp   a                                           ; $6672: $bf
	add  a                                           ; $6673: $87
	cp   a                                           ; $6674: $bf
	ret  c                                           ; $6675: $d8

jr_07e_6676:
	adc  b                                           ; $6676: $88
	add  b                                           ; $6677: $80
	add  b                                           ; $6678: $80
	ld   bc, $88e8                                   ; $6679: $01 $e8 $88
	add  b                                           ; $667c: $80
	add  b                                           ; $667d: $80
	add  b                                           ; $667e: $80
	adc  b                                           ; $667f: $88
	nop                                              ; $6680: $00
	or   b                                           ; $6681: $b0
	add  e                                           ; $6682: $83
	add  b                                           ; $6683: $80
	dec  c                                           ; $6684: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6685: $cf
	sbc  a                                           ; $6686: $9f
	add  b                                           ; $6687: $80
	ld   b, b                                        ; $6688: $40
	ld   e, a                                        ; $6689: $5f
	sbc  a                                           ; $668a: $9f
	add  b                                           ; $668b: $80
	ld   b, b                                        ; $668c: $40
	ld   e, a                                        ; $668d: $5f
	rst  JumpTable                                         ; $668e: $df
	ret  nz                                          ; $668f: $c0

	ld   b, b                                        ; $6690: $40
	ld   e, a                                        ; $6691: $5f
	rst  JumpTable                                         ; $6692: $df

jr_07e_6693:
	add  b                                           ; $6693: $80
	ret  nz                                          ; $6694: $c0

	ld   bc, $f0ff                                   ; $6695: $01 $ff $f0
	add  b                                           ; $6698: $80
	nop                                              ; $6699: $00
	add  b                                           ; $669a: $80
	ldh  a, [$80]                                    ; $669b: $f0 $80
	nop                                              ; $669d: $00
	add  b                                           ; $669e: $80
	ldh  a, [$80]                                    ; $669f: $f0 $80
	nop                                              ; $66a1: $00
	add  b                                           ; $66a2: $80
	ldh  a, [$80]                                    ; $66a3: $f0 $80
	db   $10                                         ; $66a5: $10
	rlca                                             ; $66a6: $07
	inc  de                                          ; $66a7: $13
	rra                                              ; $66a8: $1f
	db   $e3                                         ; $66a9: $e3
	rst  $38                                         ; $66aa: $ff
	ccf                                              ; $66ab: $3f
	rst  $38                                         ; $66ac: $ff
	adc  a                                           ; $66ad: $8f
	cp   a                                           ; $66ae: $bf
	add  b                                           ; $66af: $80
	ld   e, a                                        ; $66b0: $5f
	add  b                                           ; $66b1: $80
	cp   a                                           ; $66b2: $bf
	rrca                                             ; $66b3: $0f
	rst  $20                                         ; $66b4: $e7
	rst  $38                                         ; $66b5: $ff
	ret  z                                           ; $66b6: $c8

	ret  nz                                          ; $66b7: $c0

	rlca                                             ; $66b8: $07
	cp   l                                           ; $66b9: $bd
	db   $e4                                         ; $66ba: $e4
	sbc  $7e                                         ; $66bb: $de $7e
	add  d                                           ; $66bd: $82
	cp   [hl]                                        ; $66be: $be
	sub  $fe                                         ; $66bf: $d6 $fe
	ld   [$fefc], a                                  ; $66c1: $ea $fc $fe
	add  b                                           ; $66c4: $80
	db   $fc                                         ; $66c5: $fc
	ld   [$0203], sp                                 ; $66c6: $08 $03 $02
	ld   [hl+], a                                    ; $66c9: $22
	ret  nz                                          ; $66ca: $c0

	cp   $10                                         ; $66cb: $fe $10
	ld   [hl], a                                     ; $66cd: $77
	sub  a                                           ; $66ce: $97
	sub  [hl]                                        ; $66cf: $96
	add  c                                           ; $66d0: $81
	sub  a                                           ; $66d1: $97
	add  hl, bc                                      ; $66d2: $09
	sub  c                                           ; $66d3: $91
	sub  b                                           ; $66d4: $90
	db   $10                                         ; $66d5: $10
	rst  $30                                         ; $66d6: $f7
	ei                                               ; $66d7: $fb
	inc  bc                                          ; $66d8: $03
	stop                                             ; $66d9: $10 $00
	stop                                             ; $66db: $10 $00
	add  b                                           ; $66dd: $80
	ldh  a, [rP1]                                    ; $66de: $f0 $00
	db   $10                                         ; $66e0: $10
	add  c                                           ; $66e1: $81
	ldh  a, [rP1]                                    ; $66e2: $f0 $00
	ldh  [$80], a                                    ; $66e4: $e0 $80
	nop                                              ; $66e6: $00
	add  c                                           ; $66e7: $81
	ldh  a, [$83]                                    ; $66e8: $f0 $83
	ret  nz                                          ; $66ea: $c0

	add  b                                           ; $66eb: $80
	pop  bc                                          ; $66ec: $c1
	rrca                                             ; $66ed: $0f
	cp   $c2                                         ; $66ee: $fe $c2
	rst  $38                                         ; $66f0: $ff
	db   $fc                                         ; $66f1: $fc
	rst  $38                                         ; $66f2: $ff
	ld   a, [hl]                                     ; $66f3: $7e
	cp   $87                                         ; $66f4: $fe $87
	rst  $38                                         ; $66f6: $ff
	ld   hl, sp+$1c                                  ; $66f7: $f8 $1c
	ld   e, $62                                      ; $66f9: $1e $62
	ld   h, l                                        ; $66fb: $65
	add  a                                           ; $66fc: $87
	add  d                                           ; $66fd: $82
	add  b                                           ; $66fe: $80
	rlca                                             ; $66ff: $07
	add  b                                           ; $6700: $80
	ld   bc, $e015                                   ; $6701: $01 $15 $e0
	ld   b, b                                        ; $6704: $40
	cp   h                                           ; $6705: $bc
	ld   c, b                                        ; $6706: $48
	ld   d, a                                        ; $6707: $57
	inc  bc                                          ; $6708: $03
	nop                                              ; $6709: $00
	ld   d, b                                        ; $670a: $50
	ld   hl, sp+$0c                                  ; $670b: $f8 $0c
	ld   hl, sp+$54                                  ; $670d: $f8 $54
	ldh  a, [$88]                                    ; $670f: $f0 $88
	add  b                                           ; $6711: $80
	ret                                              ; $6712: $c9


	nop                                              ; $6713: $00
	ccf                                              ; $6714: $3f
	ld   bc, $861e                                   ; $6715: $01 $1e $86
	sbc  a                                           ; $6718: $9f
	rst  $38                                         ; $6719: $ff
	nop                                              ; $671a: $00
	rst  $38                                         ; $671b: $ff
	nop                                              ; $671c: $00
	rst  $38                                         ; $671d: $ff
	nop                                              ; $671e: $00
	rst  $38                                         ; $671f: $ff
	nop                                              ; $6720: $00
	rst  $38                                         ; $6721: $ff
	nop                                              ; $6722: $00
	rst  $38                                         ; $6723: $ff
	nop                                              ; $6724: $00
	rst  $38                                         ; $6725: $ff
	nop                                              ; $6726: $00
	add  $00                                         ; $6727: $c6 $00
	ld   sp, $0001                                   ; $6729: $31 $01 $00
	nop                                              ; $672c: $00
	add  b                                           ; $672d: $80
	ld   a, [bc]                                     ; $672e: $0a
	add  b                                           ; $672f: $80
	dec  b                                           ; $6730: $05
	add  b                                           ; $6731: $80
	ld   c, $81                                      ; $6732: $0e $81
	rrca                                             ; $6734: $0f
	add  b                                           ; $6735: $80
	dec  bc                                          ; $6736: $0b
	add  d                                           ; $6737: $82
	inc  bc                                          ; $6738: $03
	inc  bc                                          ; $6739: $03
	ldh  [rAUD1SWEEP], a                             ; $673a: $e0 $10
	adc  b                                           ; $673c: $88
	ld   [$1480], sp                                 ; $673d: $08 $80 $14
	add  b                                           ; $6740: $80
	ld   [$5401], sp                                 ; $6741: $08 $01 $54
	inc  d                                           ; $6744: $14
	add  b                                           ; $6745: $80
	ld   [$1480], sp                                 ; $6746: $08 $80 $14
	add  b                                           ; $6749: $80
	jr   jr_07e_674c                                 ; $674a: $18 $00

jr_07e_674c:
	add  b                                           ; $674c: $80
	adc  l                                           ; $674d: $8d
	nop                                              ; $674e: $00
	ld   b, $40                                      ; $674f: $06 $40
	ld   [$0709], sp                                 ; $6751: $08 $09 $07
	dec  b                                           ; $6754: $05
	rra                                              ; $6755: $1f
	inc  de                                          ; $6756: $13
	add  c                                           ; $6757: $81
	ccf                                              ; $6758: $3f
	rlca                                             ; $6759: $07
	rlca                                             ; $675a: $07
	ld   a, a                                        ; $675b: $7f
	ld   h, a                                        ; $675c: $67
	ld   l, a                                        ; $675d: $6f
	ld   l, [hl]                                     ; $675e: $6e
	xor  $c0                                         ; $675f: $ee $c0
	nop                                              ; $6761: $00
	add  b                                           ; $6762: $80
	and  b                                           ; $6763: $a0
	add  d                                           ; $6764: $82
	or   b                                           ; $6765: $b0
	add  d                                           ; $6766: $82
	ret  c                                           ; $6767: $d8

	add  b                                           ; $6768: $80
	call c, $0080                                    ; $6769: $dc $80 $00
	nop                                              ; $676c: $00
	ld   [bc], a                                     ; $676d: $02
	adc  l                                           ; $676e: $8d
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	dec  hl                                          ; $6771: $2b
	add  c                                           ; $6772: $81
	add  hl, hl                                      ; $6773: $29
	add  b                                           ; $6774: $80
	cpl                                              ; $6775: $2f
	add  d                                           ; $6776: $82
	add  hl, hl                                      ; $6777: $29
	add  b                                           ; $6778: $80
	cpl                                              ; $6779: $2f
	add  d                                           ; $677a: $82
	add  hl, hl                                      ; $677b: $29
	add  d                                           ; $677c: $82
	ld   [hl+], a                                    ; $677d: $22
	add  b                                           ; $677e: $80
	ldh  a, [c]                                      ; $677f: $f2
	add  d                                           ; $6780: $82
	ld   [hl+], a                                    ; $6781: $22
	add  b                                           ; $6782: $80
	ldh  a, [c]                                      ; $6783: $f2
	add  d                                           ; $6784: $82
	ld   [hl+], a                                    ; $6785: $22
	dec  b                                           ; $6786: $05
	add  b                                           ; $6787: $80
	cp   a                                           ; $6788: $bf
	ccf                                              ; $6789: $3f
	rlca                                             ; $678a: $07
	xor  a                                           ; $678b: $af
	xor  b                                           ; $678c: $a8
	add  [hl]                                        ; $678d: $86
	xor  h                                           ; $678e: $ac
	add  b                                           ; $678f: $80
	and  b                                           ; $6790: $a0
	ld   [bc], a                                     ; $6791: $02
	rlca                                             ; $6792: $07
	add  $ce                                         ; $6793: $c6 $ce
	add  b                                           ; $6795: $80
	rst  JumpTable                                         ; $6796: $df
	ld   c, $3f                                      ; $6797: $0e $3f
	cp   a                                           ; $6799: $bf
	cpl                                              ; $679a: $2f
	dec  hl                                          ; $679b: $2b
	dec  bc                                          ; $679c: $0b
	rrc  e                                           ; $679d: $cb $0b
	ld   c, e                                        ; $679f: $4b
	dec  bc                                          ; $67a0: $0b
	rrc  e                                           ; $67a1: $cb $0b
	call nz, $8c0c                                   ; $67a3: $c4 $0c $8c
	inc  c                                           ; $67a6: $0c
	add  b                                           ; $67a7: $80
	rrca                                             ; $67a8: $0f
	add  c                                           ; $67a9: $81
	inc  c                                           ; $67aa: $0c
	add  l                                           ; $67ab: $85
	rrca                                             ; $67ac: $0f
	nop                                              ; $67ad: $00
	adc  d                                           ; $67ae: $8a
	add  c                                           ; $67af: $81
	ld   bc, $e180                                   ; $67b0: $01 $80 $e1
	add  b                                           ; $67b3: $80
	ld   bc, $1900                                   ; $67b4: $01 $00 $19
	add  l                                           ; $67b7: $85
	ld   sp, hl                                      ; $67b8: $f9
	nop                                              ; $67b9: $00
	ld   e, h                                        ; $67ba: $5c
	add  c                                           ; $67bb: $81
	inc  a                                           ; $67bc: $3c
	dec  b                                           ; $67bd: $05
	inc  b                                           ; $67be: $04
	inc  a                                           ; $67bf: $3c
	jr   c, jr_07e_67fe                              ; $67c0: $38 $3c

	cp   h                                           ; $67c2: $bc
	ld   a, h                                        ; $67c3: $7c
	add  b                                           ; $67c4: $80
	ld   [hl], b                                     ; $67c5: $70
	nop                                              ; $67c6: $00
	db   $10                                         ; $67c7: $10
	add  c                                           ; $67c8: $81
	nop                                              ; $67c9: $00
	ld   [$0070], sp                                 ; $67ca: $08 $70 $00
	ld   [bc], a                                     ; $67cd: $02
	nop                                              ; $67ce: $00
	stop                                             ; $67cf: $10 $00
	ld   bc, $0800                                   ; $67d1: $01 $00 $08
	add  e                                           ; $67d4: $83
	nop                                              ; $67d5: $00
	inc  b                                           ; $67d6: $04
	inc  b                                           ; $67d7: $04
	nop                                              ; $67d8: $00
	inc  b                                           ; $67d9: $04
	nop                                              ; $67da: $00
	inc  c                                           ; $67db: $0c
	add  c                                           ; $67dc: $81
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	ld   [bc], a                                     ; $67df: $02
	add  c                                           ; $67e0: $81
	nop                                              ; $67e1: $00
	inc  de                                          ; $67e2: $13
	add  c                                           ; $67e3: $81
	ld   [bc], a                                     ; $67e4: $02
	ld   [hl], h                                     ; $67e5: $74
	ld   a, [hl]                                     ; $67e6: $7e
	ld   b, [hl]                                     ; $67e7: $46
	ld   a, $e7                                      ; $67e8: $3e $e7
	rra                                              ; $67ea: $1f
	cp   a                                           ; $67eb: $bf
	ccf                                              ; $67ec: $3f
	dec  hl                                          ; $67ed: $2b
	ccf                                              ; $67ee: $3f
	ld   b, b                                        ; $67ef: $40
	ld   e, $00                                      ; $67f0: $1e $00
	ld   e, $34                                      ; $67f2: $1e $34

Jump_07e_67f4:
	ld   c, $ee                                      ; $67f4: $0e $ee
	rrca                                             ; $67f6: $0f
	add  b                                           ; $67f7: $80
	rst  $28                                         ; $67f8: $ef
	ld   bc, $03fc                                   ; $67f9: $01 $fc $03
	add  b                                           ; $67fc: $80
	dec  c                                           ; $67fd: $0d

jr_07e_67fe:
	add  b                                           ; $67fe: $80
	ld   c, $88                                      ; $67ff: $0e $88
	rrca                                             ; $6801: $0f
	inc  b                                           ; $6802: $04
	inc  l                                           ; $6803: $2c
	inc  e                                           ; $6804: $1c
	ld   e, h                                        ; $6805: $5c
	inc  e                                           ; $6806: $1c
	sbc  h                                           ; $6807: $9c
	add  e                                           ; $6808: $83
	inc  e                                           ; $6809: $1c
	add  b                                           ; $680a: $80
	inc  c                                           ; $680b: $0c
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	add  b                                           ; $680e: $80
	ld   b, b                                        ; $680f: $40
	ld   bc, $3070                                   ; $6810: $01 $70 $30
	add  [hl]                                        ; $6813: $86
	nop                                              ; $6814: $00
	add  l                                           ; $6815: $85
	ld   bc, $7002                                   ; $6816: $01 $02 $70
	ldh  a, [$f7]                                    ; $6819: $f0 $f7
	add  b                                           ; $681b: $80
	db   $f4                                         ; $681c: $f4
	add  b                                           ; $681d: $80
	ldh  a, [rSB]                                    ; $681e: $f0 $01
	or   $d6                                         ; $6820: $f6 $d6
	add  b                                           ; $6822: $80
	or   $80                                         ; $6823: $f6 $80
	ldh  a, [$80]                                    ; $6825: $f0 $80
	ldh  a, [c]                                      ; $6827: $f2
	inc  bc                                          ; $6828: $03
	db   $f4                                         ; $6829: $f4
	ld   c, $40                                      ; $682a: $0e $40

jr_07e_682c:
	ld   d, d                                        ; $682c: $52
	add  b                                           ; $682d: $80
	sub  b                                           ; $682e: $90
	add  b                                           ; $682f: $80
	jr   nz, @-$7e                                   ; $6830: $20 $80

	ld   c, b                                        ; $6832: $48
	add  b                                           ; $6833: $80
	ld   [de], a                                     ; $6834: $12
	add  b                                           ; $6835: $80
	ld   b, h                                        ; $6836: $44
	add  b                                           ; $6837: $80
	sub  b                                           ; $6838: $90
	ld   bc, $de22                                   ; $6839: $01 $22 $de
	adc  l                                           ; $683c: $8d
	nop                                              ; $683d: $00
	ld   bc, $2f2d                                   ; $683e: $01 $2d $2f
	add  d                                           ; $6841: $82
	add  hl, hl                                      ; $6842: $29
	add  b                                           ; $6843: $80
	cpl                                              ; $6844: $2f
	add  d                                           ; $6845: $82
	add  hl, hl                                      ; $6846: $29
	add  b                                           ; $6847: $80
	cpl                                              ; $6848: $2f
	add  b                                           ; $6849: $80
	add  hl, hl                                      ; $684a: $29

jr_07e_684b:
	add  b                                           ; $684b: $80
	ldh  a, [c]                                      ; $684c: $f2
	add  d                                           ; $684d: $82
	ld   [hl+], a                                    ; $684e: $22
	add  b                                           ; $684f: $80
	ldh  a, [c]                                      ; $6850: $f2
	add  d                                           ; $6851: $82
	ld   [hl+], a                                    ; $6852: $22
	add  b                                           ; $6853: $80
	ldh  [c], a                                      ; $6854: $e2
	add  b                                           ; $6855: $80
	ld   [hl+], a                                    ; $6856: $22
	add  [hl]                                        ; $6857: $86
	nop                                              ; $6858: $00
	add  b                                           ; $6859: $80
	ld   b, $80                                      ; $685a: $06 $80
	jr   jr_07e_6865                                 ; $685c: $18 $07

	ld   h, b                                        ; $685e: $60
	ld   h, [hl]                                     ; $685f: $66
	add  a                                           ; $6860: $87
	sbc  a                                           ; $6861: $9f
	xor  [hl]                                        ; $6862: $ae
	or   b                                           ; $6863: $b0
	or   a                                           ; $6864: $b7

jr_07e_6865:
	or   b                                           ; $6865: $b0
	add  b                                           ; $6866: $80
	jr   nz, jr_07e_6869                             ; $6867: $20 $00

jr_07e_6869:
	ret  nz                                          ; $6869: $c0

	add  c                                           ; $686a: $81
	db   $10                                         ; $686b: $10
	ld   b, $14                                      ; $686c: $06 $14
	jr   jr_07e_684b                                 ; $686e: $18 $db

	jr   jr_07e_682c                                 ; $6870: $18 $ba

	or   d                                           ; $6872: $b2
	inc  d                                           ; $6873: $14
	add  e                                           ; $6874: $83
	rrca                                             ; $6875: $0f
	ld   [bc], a                                     ; $6876: $02
	ld   a, e                                        ; $6877: $7b
	ld   a, a                                        ; $6878: $7f
	rrca                                             ; $6879: $0f
	add  e                                           ; $687a: $83
	ld   a, a                                        ; $687b: $7f
	ld   [bc], a                                     ; $687c: $02
	cp   a                                           ; $687d: $bf
	rst  $38                                         ; $687e: $ff
	ld   b, $83                                      ; $687f: $06 $83
	ld   sp, hl                                      ; $6881: $f9
	nop                                              ; $6882: $00
	ret  nz                                          ; $6883: $c0

	add  a                                           ; $6884: $87
	rst  $38                                         ; $6885: $ff
	nop                                              ; $6886: $00
	inc  de                                          ; $6887: $13

jr_07e_6888:
	add  b                                           ; $6888: $80
	nop                                              ; $6889: $00
	ld   bc, $ed01                                   ; $688a: $01 $01 $ed
	add  b                                           ; $688d: $80
	inc  bc                                          ; $688e: $03
	add  a                                           ; $688f: $87
	rst  $38                                         ; $6890: $ff
	inc  b                                           ; $6891: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6892: $cf
	jr   c, jr_07e_6888                              ; $6893: $38 $f3

	ei                                               ; $6895: $fb
	nop                                              ; $6896: $00
	adc  d                                           ; $6897: $8a
	rst  $38                                         ; $6898: $ff
	nop                                              ; $6899: $00
	ccf                                              ; $689a: $3f
	add  b                                           ; $689b: $80
	cp   a                                           ; $689c: $bf
	nop                                              ; $689d: $00
	ccf                                              ; $689e: $3f
	sbc  c                                           ; $689f: $99
	rst  $38                                         ; $68a0: $ff
	add  a                                           ; $68a1: $87
	nop                                              ; $68a2: $00
	add  [hl]                                        ; $68a3: $86
	rst  $38                                         ; $68a4: $ff
	add  [hl]                                        ; $68a5: $86
	nop                                              ; $68a6: $00
	add  b                                           ; $68a7: $80
	ld   hl, sp-$80                                  ; $68a8: $f8 $80
	ret  nz                                          ; $68aa: $c0

	add  b                                           ; $68ab: $80
	add  b                                           ; $68ac: $80
	add  b                                           ; $68ad: $80
	inc  b                                           ; $68ae: $04
	sub  l                                           ; $68af: $95
	nop                                              ; $68b0: $00
	ld   a, [bc]                                     ; $68b1: $0a
	and  b                                           ; $68b2: $a0
	nop                                              ; $68b3: $00

jr_07e_68b4:
	ld   h, b                                        ; $68b4: $60
	nop                                              ; $68b5: $00
	jr   nz, jr_07e_68b8                             ; $68b6: $20 $00

jr_07e_68b8:
	and  b                                           ; $68b8: $a0
	nop                                              ; $68b9: $00
	ld   a, b                                        ; $68ba: $78
	ret                                              ; $68bb: $c9


	adc  c                                           ; $68bc: $89
	add  b                                           ; $68bd: $80
	adc  b                                           ; $68be: $88
	nop                                              ; $68bf: $00
	sbc  b                                           ; $68c0: $98
	add  b                                           ; $68c1: $80
	jr   jr_07e_68c6                                 ; $68c2: $18 $02

	rra                                              ; $68c4: $1f
	rst  $38                                         ; $68c5: $ff

jr_07e_68c6:
	inc  a                                           ; $68c6: $3c
	add  b                                           ; $68c7: $80
	pop  bc                                          ; $68c8: $c1
	inc  bc                                          ; $68c9: $03
	call $bf8e                                       ; $68ca: $cd $8e $bf
	ret  nz                                          ; $68cd: $c0

	add  d                                           ; $68ce: $82
	rst  $38                                         ; $68cf: $ff
	add  b                                           ; $68d0: $80
	db   $fd                                         ; $68d1: $fd
	inc  bc                                          ; $68d2: $03
	ld   l, b                                        ; $68d3: $68
	add  sp, -$0b                                    ; $68d4: $e8 $f5
	ld   [hl], l                                     ; $68d6: $75
	add  b                                           ; $68d7: $80
	cp   $81                                         ; $68d8: $fe $81
	rst  $38                                         ; $68da: $ff
	nop                                              ; $68db: $00
	db   $fd                                         ; $68dc: $fd
	add  b                                           ; $68dd: $80
	db   $fc                                         ; $68de: $fc
	ld   bc, $aba8                                   ; $68df: $01 $a8 $ab
	add  b                                           ; $68e2: $80
	sub  $80                                         ; $68e3: $d6 $80
	ld   [bc], a                                     ; $68e5: $02
	add  b                                           ; $68e6: $80
	ld   [$9480], sp                                 ; $68e7: $08 $80 $94
	nop                                              ; $68ea: $00
	cp   $80                                         ; $68eb: $fe $80
	rst  $38                                         ; $68ed: $ff
	ld   [bc], a                                     ; $68ee: $02
	rst  $28                                         ; $68ef: $ef
	ld   h, b                                        ; $68f0: $60
	ld   d, b                                        ; $68f1: $50
	add  b                                           ; $68f2: $80
	ret  nz                                          ; $68f3: $c0

	add  b                                           ; $68f4: $80
	add  b                                           ; $68f5: $80
	add  c                                           ; $68f6: $81
	nop                                              ; $68f7: $00
	ld   bc, $00d0                                   ; $68f8: $01 $d0 $00
	add  b                                           ; $68fb: $80
	and  b                                           ; $68fc: $a0
	add  b                                           ; $68fd: $80
	stop                                             ; $68fe: $10 $00

jr_07e_6900:
	rrca                                             ; $6900: $0f
	add  b                                           ; $6901: $80
	nop                                              ; $6902: $00
	add  b                                           ; $6903: $80
	push de                                          ; $6904: $d5
	add  b                                           ; $6905: $80
	ld   l, e                                        ; $6906: $6b
	add  h                                           ; $6907: $84
	ld   c, c                                        ; $6908: $49
	add  b                                           ; $6909: $80
	ld   a, a                                        ; $690a: $7f
	inc  bc                                          ; $690b: $03
	push de                                          ; $690c: $d5
	ld   [$ca4a], a                                  ; $690d: $ea $4a $ca
	add  b                                           ; $6910: $80
	ld   d, c                                        ; $6911: $51
	add  b                                           ; $6912: $80
	ld   l, d                                        ; $6913: $6a
	add  b                                           ; $6914: $80
	ld   d, h                                        ; $6915: $54
	add  b                                           ; $6916: $80
	ld   h, b                                        ; $6917: $60
	add  c                                           ; $6918: $81
	ld   b, b                                        ; $6919: $40
	add  b                                           ; $691a: $80
	ret  nz                                          ; $691b: $c0

	add  b                                           ; $691c: $80
	nop                                              ; $691d: $00
	add  b                                           ; $691e: $80
	ld   bc, $0382                                   ; $691f: $01 $82 $03
	add  b                                           ; $6922: $80
	ld   bc, $0700                                   ; $6923: $01 $00 $07
	add  b                                           ; $6926: $80
	ld   b, $00                                      ; $6927: $06 $00
	rlca                                             ; $6929: $07
	add  b                                           ; $692a: $80
	dec  c                                           ; $692b: $0d
	inc  bc                                          ; $692c: $03
	ldh  a, [rAUD4LEN]                               ; $692d: $f0 $20
	nop                                              ; $692f: $00
	sub  b                                           ; $6930: $90
	add  b                                           ; $6931: $80
	jr   nc, jr_07e_68b4                             ; $6932: $30 $80

	and  b                                           ; $6934: $a0
	add  c                                           ; $6935: $81
	or   b                                           ; $6936: $b0
	add  b                                           ; $6937: $80
	sub  b                                           ; $6938: $90
	add  b                                           ; $6939: $80
	and  b                                           ; $693a: $a0
	inc  b                                           ; $693b: $04
	add  b                                           ; $693c: $80
	adc  a                                           ; $693d: $8f
	ld   c, c                                        ; $693e: $49
	ret                                              ; $693f: $c9


	add  c                                           ; $6940: $81
	add  b                                           ; $6941: $80
	pop  hl                                          ; $6942: $e1
	dec  b                                           ; $6943: $05
	db   $fd                                         ; $6944: $fd
	push de                                          ; $6945: $d5
	dec  d                                           ; $6946: $15
	add  hl, hl                                      ; $6947: $29
	push de                                          ; $6948: $d5
	ret  nz                                          ; $6949: $c0

	add  b                                           ; $694a: $80
	ld   a, b                                        ; $694b: $78
	inc  hl                                          ; $694c: $23
	ld   h, h                                        ; $694d: $64
	ld   h, b                                        ; $694e: $60
	dec  bc                                          ; $694f: $0b
	ld   d, b                                        ; $6950: $50
	ld   e, b                                        ; $6951: $58
	ld   d, b                                        ; $6952: $50
	ld   d, d                                        ; $6953: $52
	ld   d, b                                        ; $6954: $50
	ld   d, [hl]                                     ; $6955: $56
	ld   d, b                                        ; $6956: $50
	ld   d, e                                        ; $6957: $53
	ld   d, b                                        ; $6958: $50
	ld   d, [hl]                                     ; $6959: $56
	db   $10                                         ; $695a: $10
	ld   sp, $1600                                   ; $695b: $31 $00 $16
	nop                                              ; $695e: $00
	ld   sp, hl                                      ; $695f: $f9
	dec  a                                           ; $6960: $3d
	ld   de, $3b1f                                   ; $6961: $11 $1f $3b
	dec  a                                           ; $6964: $3d
	ld   a, c                                        ; $6965: $79
	ld   l, [hl]                                     ; $6966: $6e
	inc  l                                           ; $6967: $2c
	ccf                                              ; $6968: $3f
	ld   l, l                                        ; $6969: $6d
	inc  a                                           ; $696a: $3c
	ld   l, h                                        ; $696b: $6c
	dec  [hl]                                        ; $696c: $35
	jr   c, jr_07e_69a8                              ; $696d: $38 $39

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $696f: $cf
	add  b                                           ; $6970: $80
	add  b                                           ; $6971: $80
	db   $10                                         ; $6972: $10
	add  b                                           ; $6973: $80
	or   b                                           ; $6974: $b0
	add  b                                           ; $6975: $80
	jr   nc, jr_07e_6978                             ; $6976: $30 $00

jr_07e_6978:
	sub  b                                           ; $6978: $90
	add  b                                           ; $6979: $80
	jr   nz, jr_07e_697e                             ; $697a: $20 $02

	or   b                                           ; $697c: $b0
	and  b                                           ; $697d: $a0

jr_07e_697e:
	jr   nc, jr_07e_6900                             ; $697e: $30 $80

	jr   nz, jr_07e_6984                             ; $6980: $20 $02

	ldh  a, [rIE]                                    ; $6982: $f0 $ff

jr_07e_6984:
	rst  $30                                         ; $6984: $f7
	add  b                                           ; $6985: $80
	push af                                          ; $6986: $f5
	add  b                                           ; $6987: $80
	ldh  [$80], a                                    ; $6988: $e0 $80
	push af                                          ; $698a: $f5
	ld   bc, $e7f7                                   ; $698b: $01 $f7 $e7
	add  b                                           ; $698e: $80
	and  e                                           ; $698f: $a3
	inc  bc                                          ; $6990: $03
	ld   b, e                                        ; $6991: $43
	ld   h, e                                        ; $6992: $63
	ret                                              ; $6993: $c9


	pop  af                                          ; $6994: $f1
	add  b                                           ; $6995: $80
	adc  b                                           ; $6996: $88
	add  b                                           ; $6997: $80
	ld   b, l                                        ; $6998: $45
	add  b                                           ; $6999: $80
	xor  [hl]                                        ; $699a: $ae
	add  b                                           ; $699b: $80
	ld   [hl], l                                     ; $699c: $75
	add  l                                           ; $699d: $85
	rst  $38                                         ; $699e: $ff
	nop                                              ; $699f: $00
	cp   $80                                         ; $69a0: $fe $80
	nop                                              ; $69a2: $00
	inc  bc                                          ; $69a3: $03
	ld   b, b                                        ; $69a4: $40
	ld   b, d                                        ; $69a5: $42
	add  b                                           ; $69a6: $80
	adc  h                                           ; $69a7: $8c

jr_07e_69a8:
	add  b                                           ; $69a8: $80
	ld   b, b                                        ; $69a9: $40
	ld   bc, $ebe0                                   ; $69aa: $01 $e0 $eb
	add  b                                           ; $69ad: $80
	db   $d3                                         ; $69ae: $d3
	dec  c                                           ; $69af: $0d
	ld   a, [$fdfc]                                  ; $69b0: $fa $fc $fd
	rrca                                             ; $69b3: $0f
	nop                                              ; $69b4: $00
	ld   [hl], b                                     ; $69b5: $70
	nop                                              ; $69b6: $00

jr_07e_69b7:
	ld   [hl], b                                     ; $69b7: $70
	nop                                              ; $69b8: $00
	ldh  a, [rP1]                                    ; $69b9: $f0 $00
	ldh  a, [rP1]                                    ; $69bb: $f0 $00
	ldh  [$80], a                                    ; $69bd: $e0 $80
	ld   b, b                                        ; $69bf: $40
	add  b                                           ; $69c0: $80
	add  b                                           ; $69c1: $80
	dec  b                                           ; $69c2: $05
	jr   nz, jr_07e_6a11                             ; $69c3: $20 $4c

	sbc  h                                           ; $69c5: $9c
	rra                                              ; $69c6: $1f
	ld   a, a                                        ; $69c7: $7f
	rst  $38                                         ; $69c8: $ff
	add  b                                           ; $69c9: $80
	add  b                                           ; $69ca: $80
	add  d                                           ; $69cb: $82
	or   [hl]                                        ; $69cc: $b6
	add  hl, bc                                      ; $69cd: $09
	rst  $38                                         ; $69ce: $ff
	ld   a, [hl]                                     ; $69cf: $7e
	ld   b, b                                        ; $69d0: $40
	ld   b, c                                        ; $69d1: $41
	rst  $38                                         ; $69d2: $ff
	nop                                              ; $69d3: $00
	rst  $38                                         ; $69d4: $ff
	ld   a, a                                        ; $69d5: $7f
	rst  $38                                         ; $69d6: $ff
	ld   a, a                                        ; $69d7: $7f
	add  d                                           ; $69d8: $82
	rst  $38                                         ; $69d9: $ff
	add  b                                           ; $69da: $80
	ei                                               ; $69db: $fb
	add  b                                           ; $69dc: $80
	db   $dd                                         ; $69dd: $dd
	inc  bc                                          ; $69de: $03
	ld   l, e                                        ; $69df: $6b
	db   $eb                                         ; $69e0: $eb
	sub  l                                           ; $69e1: $95
	dec  d                                           ; $69e2: $15
	add  h                                           ; $69e3: $84
	rst  $38                                         ; $69e4: $ff
	add  b                                           ; $69e5: $80
	db   $fd                                         ; $69e6: $fd
	add  b                                           ; $69e7: $80
	add  sp, -$80                                    ; $69e8: $e8 $80
	ld   [hl], l                                     ; $69ea: $75
	add  b                                           ; $69eb: $80
	xor  d                                           ; $69ec: $aa
	ld   bc, $1151                                   ; $69ed: $01 $51 $11
	add  l                                           ; $69f0: $85
	or   b                                           ; $69f1: $b0
	add  b                                           ; $69f2: $80
	stop                                             ; $69f3: $10 $00
	or   b                                           ; $69f5: $b0
	add  c                                           ; $69f6: $81
	jr   nc, jr_07e_69fb                             ; $69f7: $30 $02

	nop                                              ; $69f9: $00
	add  b                                           ; $69fa: $80

jr_07e_69fb:
	rrca                                             ; $69fb: $0f
	add  b                                           ; $69fc: $80
	ld   l, e                                        ; $69fd: $6b
	add  h                                           ; $69fe: $84
	ld   c, c                                        ; $69ff: $49

jr_07e_6a00:
	add  b                                           ; $6a00: $80
	ld   a, a                                        ; $6a01: $7f

jr_07e_6a02:
	add  b                                           ; $6a02: $80

jr_07e_6a03:
	push de                                          ; $6a03: $d5
	add  b                                           ; $6a04: $80
	ld   l, e                                        ; $6a05: $6b

jr_07e_6a06:
	dec  bc                                          ; $6a06: $0b
	ld   c, c                                        ; $6a07: $49
	or   $40                                         ; $6a08: $f6 $40
	ret  nz                                          ; $6a0a: $c0

	ld   b, b                                        ; $6a0b: $40
	ret  nz                                          ; $6a0c: $c0

	ld   b, b                                        ; $6a0d: $40
	ret  nz                                          ; $6a0e: $c0

	ld   b, b                                        ; $6a0f: $40
	ld   d, b                                        ; $6a10: $50

jr_07e_6a11:
	ld   b, b                                        ; $6a11: $40
	ld   l, b                                        ; $6a12: $68
	add  b                                           ; $6a13: $80
	ret  nc                                          ; $6a14: $d0

	add  b                                           ; $6a15: $80
	ld   b, b                                        ; $6a16: $40
	inc  c                                           ; $6a17: $0c
	ld   d, b                                        ; $6a18: $50
	and  d                                           ; $6a19: $a2
	rrca                                             ; $6a1a: $0f

jr_07e_6a1b:
	inc  b                                           ; $6a1b: $04
	ld   b, $04                                      ; $6a1c: $06 $04
	nop                                              ; $6a1e: $00
	inc  c                                           ; $6a1f: $0c
	dec  c                                           ; $6a20: $0d
	dec  e                                           ; $6a21: $1d
	dec  de                                          ; $6a22: $1b
	ld   sp, $8035                                   ; $6a23: $31 $35 $80
	rra                                              ; $6a26: $1f
	ld   [bc], a                                     ; $6a27: $02
	ccf                                              ; $6a28: $3f
	dec  bc                                          ; $6a29: $0b
	call nz, $8080                                   ; $6a2a: $c4 $80 $80
	add  b                                           ; $6a2d: $80
	db   $10                                         ; $6a2e: $10
	add  b                                           ; $6a2f: $80
	or   b                                           ; $6a30: $b0
	add  b                                           ; $6a31: $80
	jr   nc, jr_07e_69b7                             ; $6a32: $30 $83

	or   b                                           ; $6a34: $b0
	add  b                                           ; $6a35: $80
	db   $10                                         ; $6a36: $10
	ld   a, [de]                                     ; $6a37: $1a
	ld   e, h                                        ; $6a38: $5c
	ld   h, b                                        ; $6a39: $60
	ld   [hl], e                                     ; $6a3a: $73
	ldh  a, [$e3]                                    ; $6a3b: $f0 $e3
	ldh  [$e6], a                                    ; $6a3d: $e0 $e6
	ldh  [$e2], a                                    ; $6a3f: $e0 $e2
	ldh  [rDIV], a                                   ; $6a41: $e0 $04
	jr   @+$1d                                       ; $6a43: $18 $1b

	ldh  a, [$f2]                                    ; $6a45: $f0 $f2
	ret  nz                                          ; $6a47: $c0

	ld   b, l                                        ; $6a48: $45
	db   $10                                         ; $6a49: $10
	sub  b                                           ; $6a4a: $90
	db   $10                                         ; $6a4b: $10

jr_07e_6a4c:
	sub  b                                           ; $6a4c: $90
	jr   nc, jr_07e_6a06                             ; $6a4d: $30 $b7

	jr   nz, jr_07e_6a00                             ; $6a4f: $20 $af

	jr   nz, jr_07e_6a02                             ; $6a51: $20 $af

	add  b                                           ; $6a53: $80
	ld   h, b                                        ; $6a54: $60
	inc  d                                           ; $6a55: $14
	ld   l, a                                        ; $6a56: $6f
	rst  $28                                         ; $6a57: $ef
	cpl                                              ; $6a58: $2f
	ld   c, a                                        ; $6a59: $4f
	ld   a, [de]                                     ; $6a5a: $1a
	ld   a, e                                        ; $6a5b: $7b
	ld   [hl], l                                     ; $6a5c: $75
	push af                                          ; $6a5d: $f5
	ld   sp, hl                                      ; $6a5e: $f9
	ld   hl, sp-$2a                                  ; $6a5f: $f8 $d6
	ld   d, [hl]                                     ; $6a61: $56
	ld   l, d                                        ; $6a62: $6a
	ld   l, [hl]                                     ; $6a63: $6e
	ld   [hl], a                                     ; $6a64: $77
	push af                                          ; $6a65: $f5
	rst  $38                                         ; $6a66: $ff
	ld   a, c                                        ; $6a67: $79
	ld   [hl], l                                     ; $6a68: $75
	ld   e, d                                        ; $6a69: $5a
	and  b                                           ; $6a6a: $a0
	add  b                                           ; $6a6b: $80
	sub  b                                           ; $6a6c: $90
	inc  b                                           ; $6a6d: $04
	jr   nz, jr_07e_6aa0                             ; $6a6e: $20 $30

	nop                                              ; $6a70: $00
	jr   nc, jr_07e_6a73                             ; $6a71: $30 $00

jr_07e_6a73:
	add  b                                           ; $6a73: $80
	jr   nc, jr_07e_6a7d                             ; $6a74: $30 $07

	and  b                                           ; $6a76: $a0
	add  b                                           ; $6a77: $80
	and  b                                           ; $6a78: $a0
	jr   nz, jr_07e_6a1b                             ; $6a79: $20 $a0

	xor  [hl]                                        ; $6a7b: $ae
	add  b                                           ; $6a7c: $80

jr_07e_6a7d:
	ld   bc, $0081                                   ; $6a7d: $01 $81 $00
	add  b                                           ; $6a80: $80
	jr   nc, jr_07e_6a03                             ; $6a81: $30 $80

	ld   sp, $3082                                   ; $6a83: $31 $82 $30
	add  b                                           ; $6a86: $80
	nop                                              ; $6a87: $00
	add  b                                           ; $6a88: $80
	ld   e, $08                                      ; $6a89: $1e $08
	dec  b                                           ; $6a8b: $05
	rrca                                             ; $6a8c: $0f
	nop                                              ; $6a8d: $00
	rrca                                             ; $6a8e: $0f
	nop                                              ; $6a8f: $00
	ld   c, $01                                      ; $6a90: $0e $01
	rrca                                             ; $6a92: $0f
	dec  b                                           ; $6a93: $05
	add  b                                           ; $6a94: $80
	dec  c                                           ; $6a95: $0d
	add  b                                           ; $6a96: $80
	ld   c, $11                                      ; $6a97: $0e $11
	rrca                                             ; $6a99: $0f
	dec  c                                           ; $6a9a: $0d
	ld   a, [$bbbf]                                  ; $6a9b: $fa $bf $bb
	db   $f4                                         ; $6a9e: $f4
	sbc  a                                           ; $6a9f: $9f

jr_07e_6aa0:
	sub  [hl]                                        ; $6aa0: $96
	ei                                               ; $6aa1: $fb
	ld   [$62f8], a                                  ; $6aa2: $ea $f8 $62
	ld   a, [de]                                     ; $6aa5: $1a
	sub  b                                           ; $6aa6: $90
	ld   l, l                                        ; $6aa7: $6d
	ld   a, l                                        ; $6aa8: $7d
	and  [hl]                                        ; $6aa9: $a6
	cp   c                                           ; $6aaa: $b9
	add  b                                           ; $6aab: $80
	db   $10                                         ; $6aac: $10
	rlca                                             ; $6aad: $07
	jr   nc, @-$6e                                   ; $6aae: $30 $90

	or   b                                           ; $6ab0: $b0
	sub  b                                           ; $6ab1: $90
	or   b                                           ; $6ab2: $b0
	db   $10                                         ; $6ab3: $10
	or   b                                           ; $6ab4: $b0
	ret  nc                                          ; $6ab5: $d0

	add  c                                           ; $6ab6: $81
	db   $10                                         ; $6ab7: $10
	inc  bc                                          ; $6ab8: $03
	or   b                                           ; $6ab9: $b0
	nop                                              ; $6aba: $00
	rst  $28                                         ; $6abb: $ef
	nop                                              ; $6abc: $00
	add  b                                           ; $6abd: $80
	ld   bc, $008b                                   ; $6abe: $01 $8b $00
	add  b                                           ; $6ac1: $80
	ld   e, $82                                      ; $6ac2: $1e $82
	rra                                              ; $6ac4: $1f
	add  b                                           ; $6ac5: $80
	ld   e, $80                                      ; $6ac6: $1e $80
	dec  a                                           ; $6ac8: $3d
	add  b                                           ; $6ac9: $80
	jr   c, jr_07e_6a4c                              ; $6aca: $38 $80

	ld   a, $19                                      ; $6acc: $3e $19
	dec  a                                           ; $6ace: $3d
	or   c                                           ; $6acf: $b1
	ld   a, [hl]                                     ; $6ad0: $7e
	and  $3e                                         ; $6ad1: $e6 $3e
	cpl                                              ; $6ad3: $2f
	ld   [hl], l                                     ; $6ad4: $75
	ld   c, c                                        ; $6ad5: $49
	cp   c                                           ; $6ad6: $b9
	xor  c                                           ; $6ad7: $a9
	db   $eb                                         ; $6ad8: $eb
	pop  bc                                          ; $6ad9: $c1
	rst  $20                                         ; $6ada: $e7
	res  7, a                                        ; $6adb: $cb $bf
	sbc  e                                           ; $6add: $9b
	ld   c, e                                        ; $6ade: $4b
	ld   e, a                                        ; $6adf: $5f
	db   $10                                         ; $6ae0: $10
	ld   d, b                                        ; $6ae1: $50
	stop                                             ; $6ae2: $10 $00
	stop                                             ; $6ae4: $10 $00
	stop                                             ; $6ae6: $10 $00
	add  b                                           ; $6ae8: $80
	stop                                             ; $6ae9: $10 $00
	nop                                              ; $6aeb: $00
	add  d                                           ; $6aec: $82
	stop                                             ; $6aed: $10 $00
	or   b                                           ; $6aef: $b0
	rst  $38                                         ; $6af0: $ff
	nop                                              ; $6af1: $00
	rst  $38                                         ; $6af2: $ff
	nop                                              ; $6af3: $00
	rst  $38                                         ; $6af4: $ff
	nop                                              ; $6af5: $00
	rst  $38                                         ; $6af6: $ff
	nop                                              ; $6af7: $00
	rst  $38                                         ; $6af8: $ff
	nop                                              ; $6af9: $00
	rst  $38                                         ; $6afa: $ff
	nop                                              ; $6afb: $00
	rst  $30                                         ; $6afc: $f7
	nop                                              ; $6afd: $00
	ld   e, b                                        ; $6afe: $58
	ld   bc, $0f01                                   ; $6aff: $01 $01 $0f
	nop                                              ; $6b02: $00
	add  b                                           ; $6b03: $80
	rrca                                             ; $6b04: $0f
	add  b                                           ; $6b05: $80
	ld   c, $82                                      ; $6b06: $0e $82
	nop                                              ; $6b08: $00
	add  b                                           ; $6b09: $80
	ld   bc, $0f82                                   ; $6b0a: $01 $82 $0f
	ld   bc, $fe0e                                   ; $6b0d: $01 $0e $fe
	add  b                                           ; $6b10: $80
	adc  $84                                         ; $6b11: $ce $84
	ld   c, $84                                      ; $6b13: $0e $84
	adc  [hl]                                        ; $6b15: $8e
	ld   bc, $0706                                   ; $6b16: $01 $06 $07
	add  d                                           ; $6b19: $82
	db   $dd                                         ; $6b1a: $dd
	ld   [bc], a                                     ; $6b1b: $02
	reti                                             ; $6b1c: $d9


	ret  c                                           ; $6b1d: $d8

	rst  JumpTable                                         ; $6b1e: $df
	add  b                                           ; $6b1f: $80
	ret  c                                           ; $6b20: $d8

	nop                                              ; $6b21: $00
	ret  nc                                          ; $6b22: $d0

	add  b                                           ; $6b23: $80
	ret  nz                                          ; $6b24: $c0

	ld   [bc], a                                     ; $6b25: $02
	ret  nc                                          ; $6b26: $d0

	ret  nz                                          ; $6b27: $c0

	xor  c                                           ; $6b28: $a9
	add  c                                           ; $6b29: $81
	rst  $38                                         ; $6b2a: $ff
	ld   [bc], a                                     ; $6b2b: $02
	cp   $ff                                         ; $6b2c: $fe $ff
	cp   $80                                         ; $6b2e: $fe $80
	rst  $38                                         ; $6b30: $ff
	inc  b                                           ; $6b31: $04
	ld   a, a                                        ; $6b32: $7f
	ld   [hl], $02                                   ; $6b33: $36 $02
	ld   b, $04                                      ; $6b35: $06 $04
	add  b                                           ; $6b37: $80
	ld   [$c000], sp                                 ; $6b38: $08 $00 $c0
	add  b                                           ; $6b3b: $80
	add  b                                           ; $6b3c: $80
	inc  b                                           ; $6b3d: $04
	ret  nz                                          ; $6b3e: $c0

	nop                                              ; $6b3f: $00
	add  b                                           ; $6b40: $80
	add  c                                           ; $6b41: $81
	ld   bc, $0680                                   ; $6b42: $01 $80 $06
	add  b                                           ; $6b45: $80
	ld   [$1080], sp                                 ; $6b46: $08 $80 $10

jr_07e_6b49:
	add  hl, bc                                      ; $6b49: $09
	ld   h, b                                        ; $6b4a: $60
	ld   h, c                                        ; $6b4b: $61
	ld   bc, $f600                                   ; $6b4c: $01 $00 $f6
	rst  $38                                         ; $6b4f: $ff
	cpl                                              ; $6b50: $2f
	rra                                              ; $6b51: $1f
	rst  JumpTable                                         ; $6b52: $df
	sbc  a                                           ; $6b53: $9f
	add  c                                           ; $6b54: $81
	rra                                              ; $6b55: $1f
	ld   bc, $f99f                                   ; $6b56: $01 $9f $f9
	add  b                                           ; $6b59: $80
	add  b                                           ; $6b5a: $80
	inc  bc                                          ; $6b5b: $03
	nop                                              ; $6b5c: $00
	ret                                              ; $6b5d: $c9


	rst  $38                                         ; $6b5e: $ff
	ld   a, a                                        ; $6b5f: $7f
	add  a                                           ; $6b60: $87
	rst  $38                                         ; $6b61: $ff
	nop                                              ; $6b62: $00
	or   [hl]                                        ; $6b63: $b6
	add  c                                           ; $6b64: $81
	nop                                              ; $6b65: $00
	dec  c                                           ; $6b66: $0d
	add  hl, sp                                      ; $6b67: $39
	ld   sp, hl                                      ; $6b68: $f9
	ret                                              ; $6b69: $c9


	ld   sp, hl                                      ; $6b6a: $f9
	ld   [$daf2], a                                  ; $6b6b: $ea $f2 $da
	ldh  [c], a                                      ; $6b6e: $e2
	inc  h                                           ; $6b6f: $24
	call nz, $04f5                                   ; $6b70: $c4 $f5 $04
	ret  z                                           ; $6b73: $c8

	ld   [$0980], sp                                 ; $6b74: $08 $80 $09
	ld   [bc], a                                     ; $6b77: $02
	add  b                                           ; $6b78: $80
	ld   a, [hl]                                     ; $6b79: $7e
	ld   h, h                                        ; $6b7a: $64
	add  c                                           ; $6b7b: $81
	ld   a, h                                        ; $6b7c: $7c
	dec  c                                           ; $6b7d: $0d
	ld   [hl], h                                     ; $6b7e: $74
	ld   a, l                                        ; $6b7f: $7d
	ld   e, l                                        ; $6b80: $5d
	ld   a, l                                        ; $6b81: $7d
	ld   a, c                                        ; $6b82: $79
	ld   sp, hl                                      ; $6b83: $f9
	ld   l, c                                        ; $6b84: $69
	ld   hl, sp-$50                                  ; $6b85: $f8 $b0
	ldh  a, [c]                                      ; $6b87: $f2
	ld   h, d                                        ; $6b88: $62
	nop                                              ; $6b89: $00
	rra                                              ; $6b8a: $1f
	sbc  a                                           ; $6b8b: $9f
	add  c                                           ; $6b8c: $81
	cp   a                                           ; $6b8d: $bf
	nop                                              ; $6b8e: $00
	ccf                                              ; $6b8f: $3f
	add  b                                           ; $6b90: $80
	nop                                              ; $6b91: $00
	add  d                                           ; $6b92: $82
	ld   a, a                                        ; $6b93: $7f
	add  b                                           ; $6b94: $80
	rst  $38                                         ; $6b95: $ff
	ld   bc, $e101                                   ; $6b96: $01 $01 $e1
	add  d                                           ; $6b99: $82
	ldh  [$80], a                                    ; $6b9a: $e0 $80
	pop  hl                                          ; $6b9c: $e1
	ld   [bc], a                                     ; $6b9d: $02
	db   $10                                         ; $6b9e: $10
	ldh  a, [rP1]                                    ; $6b9f: $f0 $00
	add  e                                           ; $6ba1: $83
	rst  $38                                         ; $6ba2: $ff
	ld   [bc], a                                     ; $6ba3: $02
	ldh  a, [rIE]                                    ; $6ba4: $f0 $ff
	ldh  a, [$80]                                    ; $6ba6: $f0 $80
	ld   [hl], c                                     ; $6ba8: $71
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	add  b                                           ; $6bab: $80
	add  b                                           ; $6bac: $80
	add  b                                           ; $6bad: $80
	ld   h, b                                        ; $6bae: $60
	ld   [bc], a                                     ; $6baf: $02
	add  b                                           ; $6bb0: $80
	add  c                                           ; $6bb1: $81
	ld   bc, $f180                                   ; $6bb2: $01 $80 $f1
	add  b                                           ; $6bb5: $80
	rst  $38                                         ; $6bb6: $ff
	add  hl, bc                                      ; $6bb7: $09
	nop                                              ; $6bb8: $00
	ccf                                              ; $6bb9: $3f
	rst  $38                                         ; $6bba: $ff
	rst  ToBoot                                         ; $6bbb: $c7
	rst  $38                                         ; $6bbc: $ff
	ld   sp, hl                                      ; $6bbd: $f9
	rst  $38                                         ; $6bbe: $ff
	add  c                                           ; $6bbf: $81
	ld   a, a                                        ; $6bc0: $7f
	nop                                              ; $6bc1: $00
	add  d                                           ; $6bc2: $82
	rst  $38                                         ; $6bc3: $ff
	inc  b                                           ; $6bc4: $04
	adc  a                                           ; $6bc5: $8f
	xor  a                                           ; $6bc6: $af
	jr   nc, jr_07e_6b49                             ; $6bc7: $30 $80

	sub  b                                           ; $6bc9: $90
	add  b                                           ; $6bca: $80
	ret  nc                                          ; $6bcb: $d0

	add  b                                           ; $6bcc: $80
	ret  nz                                          ; $6bcd: $c0

	add  b                                           ; $6bce: $80
	rst  $30                                         ; $6bcf: $f7
	inc  bc                                          ; $6bd0: $03
	inc  bc                                          ; $6bd1: $03
	db   $e3                                         ; $6bd2: $e3
	pop  hl                                          ; $6bd3: $e1
	pop  bc                                          ; $6bd4: $c1
	add  c                                           ; $6bd5: $81
	ret  nz                                          ; $6bd6: $c0

	add  d                                           ; $6bd7: $82
	rrca                                             ; $6bd8: $0f
	add  b                                           ; $6bd9: $80
	dec  bc                                          ; $6bda: $0b
	ld   bc, $f50d                                   ; $6bdb: $01 $0d $f5
	add  c                                           ; $6bde: $81
	ld   hl, sp-$80                                  ; $6bdf: $f8 $80
	ldh  a, [$80]                                    ; $6be1: $f0 $80
	nop                                              ; $6be3: $00
	ld   [bc], a                                     ; $6be4: $02
	ld   a, $81                                      ; $6be5: $3e $81
	ret  nz                                          ; $6be7: $c0

	add  [hl]                                        ; $6be8: $86
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	ld   b, b                                        ; $6beb: $40
	add  c                                           ; $6bec: $81
	nop                                              ; $6bed: $00
	ld   bc, $e020                                   ; $6bee: $01 $20 $e0
	adc  c                                           ; $6bf1: $89
	rrca                                             ; $6bf2: $0f
	add  b                                           ; $6bf3: $80
	inc  c                                           ; $6bf4: $0c
	add  b                                           ; $6bf5: $80
	inc  bc                                          ; $6bf6: $03
	nop                                              ; $6bf7: $00
	ld   a, [hl]                                     ; $6bf8: $7e
	add  a                                           ; $6bf9: $87
	adc  [hl]                                        ; $6bfa: $8e
	add  b                                           ; $6bfb: $80
	ld   c, $80                                      ; $6bfc: $0e $80
	ld   c, [hl]                                     ; $6bfe: $4e
	add  b                                           ; $6bff: $80
	adc  [hl]                                        ; $6c00: $8e
	nop                                              ; $6c01: $00
	rst  JumpTable                                         ; $6c02: $df
	add  d                                           ; $6c03: $82
	pop  bc                                          ; $6c04: $c1
	ld   b, $c0                                      ; $6c05: $06 $c0
	ret  nc                                          ; $6c07: $d0

	ret  nz                                          ; $6c08: $c0

	ret                                              ; $6c09: $c9


	pop  bc                                          ; $6c0a: $c1
	rst  ToBoot                                         ; $6c0b: $c7
	jp   nz, $9280                                   ; $6c0c: $c2 $80 $92

	inc  bc                                          ; $6c0f: $03
	ld   [hl], d                                     ; $6c10: $72
	ld   [hl], b                                     ; $6c11: $70
	ld   l, [hl]                                     ; $6c12: $6e
	sub  c                                           ; $6c13: $91
	add  b                                           ; $6c14: $80
	ldh  [$80], a                                    ; $6c15: $e0 $80
	ld   b, b                                        ; $6c17: $40
	add  d                                           ; $6c18: $82
	add  b                                           ; $6c19: $80
	add  b                                           ; $6c1a: $80
	pop  af                                          ; $6c1b: $f1
	dec  b                                           ; $6c1c: $05
	cp   $3e                                         ; $6c1d: $fe $3e
	inc  h                                           ; $6c1f: $24
	rra                                              ; $6c20: $1f
	sbc  e                                           ; $6c21: $9b
	ld   h, c                                        ; $6c22: $61
	add  b                                           ; $6c23: $80
	ld   sp, $1b05                                   ; $6c24: $31 $05 $1b
	jr   jr_07e_6c5e                                 ; $6c27: $18 $35

	ld   sp, $282e                                   ; $6c29: $31 $2e $28
	add  b                                           ; $6c2c: $80
	and  b                                           ; $6c2d: $a0
	inc  b                                           ; $6c2e: $04
	ldh  [$c0], a                                    ; $6c2f: $e0 $c0
	rst  $38                                         ; $6c31: $ff
	ld   [$8335], a                                  ; $6c32: $ea $35 $83
	nop                                              ; $6c35: $00
	add  b                                           ; $6c36: $80
	rst  $38                                         ; $6c37: $ff
	add  h                                           ; $6c38: $84
	nop                                              ; $6c39: $00
	ld   [bc], a                                     ; $6c3a: $02
	cp   c                                           ; $6c3b: $b9
	ld   c, a                                        ; $6c3c: $4f
	or   $81                                         ; $6c3d: $f6 $81
	nop                                              ; $6c3f: $00
	add  b                                           ; $6c40: $80
	inc  bc                                          ; $6c41: $03
	add  b                                           ; $6c42: $80
	db   $fc                                         ; $6c43: $fc
	add  d                                           ; $6c44: $82
	nop                                              ; $6c45: $00
	add  b                                           ; $6c46: $80
	ld   bc, $ef03                                   ; $6c47: $01 $03 $ef
	ld   e, d                                        ; $6c4a: $5a
	and  a                                           ; $6c4b: $a7
	ld   de, $6380                                   ; $6c4c: $11 $80 $63
	ld   bc, $8387                                   ; $6c4f: $01 $87 $83
	add  b                                           ; $6c52: $80
	inc  bc                                          ; $6c53: $03
	inc  c                                           ; $6c54: $0c
	rrca                                             ; $6c55: $0f
	rlca                                             ; $6c56: $07
	ld   d, $07                                      ; $6c57: $16 $07
	and  l                                           ; $6c59: $a5
	ld   d, a                                        ; $6c5a: $57
	inc  de                                          ; $6c5b: $13
	ld   h, a                                        ; $6c5c: $67
	rst  $30                                         ; $6c5d: $f7

jr_07e_6c5e:
	ldh  a, [c]                                      ; $6c5e: $f2
	jp   nc, Jump_07e_61f0                           ; $6c5f: $d2 $f0 $61

	add  c                                           ; $6c62: $81
	push hl                                          ; $6c63: $e5
	inc  bc                                          ; $6c64: $03
	and  l                                           ; $6c65: $a5
	pop  hl                                          ; $6c66: $e1
	ret  nz                                          ; $6c67: $c0

	ret  z                                           ; $6c68: $c8

	add  b                                           ; $6c69: $80
	rlc  e                                           ; $6c6a: $cb $03
	ld   c, e                                        ; $6c6c: $4b
	db   $d3                                         ; $6c6d: $d3
	stop                                             ; $6c6e: $10 $00
	add  [hl]                                        ; $6c70: $86
	rst  $38                                         ; $6c71: $ff
	add  b                                           ; $6c72: $80
	nop                                              ; $6c73: $00
	add  d                                           ; $6c74: $82
	rst  $38                                         ; $6c75: $ff
	ld   [bc], a                                     ; $6c76: $02
	ei                                               ; $6c77: $fb
	rst  $38                                         ; $6c78: $ff
	inc  b                                           ; $6c79: $04
	add  l                                           ; $6c7a: $85
	rst  $38                                         ; $6c7b: $ff
	ld   [bc], a                                     ; $6c7c: $02
	nop                                              ; $6c7d: $00
	rst  $38                                         ; $6c7e: $ff
	nop                                              ; $6c7f: $00
	add  c                                           ; $6c80: $81
	rst  $38                                         ; $6c81: $ff
	inc  bc                                          ; $6c82: $03
	ld   a, a                                        ; $6c83: $7f
	db   $e3                                         ; $6c84: $e3
	ld   h, e                                        ; $6c85: $63
	ret  nz                                          ; $6c86: $c0

	add  b                                           ; $6c87: $80
	pop  bc                                          ; $6c88: $c1
	ld   b, $c3                                      ; $6c89: $06 $c3
	db   $e3                                         ; $6c8b: $e3
	rst  $28                                         ; $6c8c: $ef
	rst  $38                                         ; $6c8d: $ff
	rrca                                             ; $6c8e: $0f
	rst  $38                                         ; $6c8f: $ff
	nop                                              ; $6c90: $00
	add  c                                           ; $6c91: $81
	rst  $38                                         ; $6c92: $ff
	dec  b                                           ; $6c93: $05
	ld   hl, sp+$07                                  ; $6c94: $f8 $07
	nop                                              ; $6c96: $00
	rlca                                             ; $6c97: $07
	adc  e                                           ; $6c98: $8b
	adc  a                                           ; $6c99: $8f
	add  b                                           ; $6c9a: $80
	rst  $38                                         ; $6c9b: $ff
	inc  b                                           ; $6c9c: $04
	di                                               ; $6c9d: $f3
	rst  $38                                         ; $6c9e: $ff
	ldh  a, [rIE]                                    ; $6c9f: $f0 $ff
	nop                                              ; $6ca1: $00
	add  c                                           ; $6ca2: $81
	rst  $38                                         ; $6ca3: $ff
	ld   [bc], a                                     ; $6ca4: $02
	ld   a, $c1                                      ; $6ca5: $3e $c1
	nop                                              ; $6ca7: $00
	add  b                                           ; $6ca8: $80
	ret  nz                                          ; $6ca9: $c0

	add  b                                           ; $6caa: $80
	pop  af                                          ; $6cab: $f1
	add  c                                           ; $6cac: $81
	rst  $38                                         ; $6cad: $ff
	ld   [bc], a                                     ; $6cae: $02
	nop                                              ; $6caf: $00
	rst  $38                                         ; $6cb0: $ff
	nop                                              ; $6cb1: $00
	add  c                                           ; $6cb2: $81
	rst  $38                                         ; $6cb3: $ff
	ld   bc, $f807                                   ; $6cb4: $01 $07 $f8
	add  c                                           ; $6cb7: $81
	nop                                              ; $6cb8: $00
	add  e                                           ; $6cb9: $83
	rst  $38                                         ; $6cba: $ff
	ld   [bc], a                                     ; $6cbb: $02
	nop                                              ; $6cbc: $00
	rst  $38                                         ; $6cbd: $ff
	nop                                              ; $6cbe: $00
	add  c                                           ; $6cbf: $81
	rst  $38                                         ; $6cc0: $ff
	dec  b                                           ; $6cc1: $05
	add  c                                           ; $6cc2: $81
	ld   [hl], c                                     ; $6cc3: $71
	ld   sp, $1f39                                   ; $6cc4: $31 $39 $1f
	ld   hl, sp-$7e                                  ; $6cc7: $f8 $82
	rst  $38                                         ; $6cc9: $ff
	ld   [bc], a                                     ; $6cca: $02
	nop                                              ; $6ccb: $00
	ldh  [$3f], a                                    ; $6ccc: $e0 $3f
	add  c                                           ; $6cce: $81
	rst  $38                                         ; $6ccf: $ff
	nop                                              ; $6cd0: $00
	ccf                                              ; $6cd1: $3f
	add  l                                           ; $6cd2: $85
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	rst  $38                                         ; $6cd5: $ff
	add  b                                           ; $6cd6: $80
	rlca                                             ; $6cd7: $07
	dec  b                                           ; $6cd8: $05
	ccf                                              ; $6cd9: $3f
	ld   a, $7f                                      ; $6cda: $3e $7f
	ld   a, l                                        ; $6cdc: $7d
	rst  $38                                         ; $6cdd: $ff
	inc  bc                                          ; $6cde: $03
	add  l                                           ; $6cdf: $85
	nop                                              ; $6ce0: $00
	inc  b                                           ; $6ce1: $04
	ldh  [rIE], a                                    ; $6ce2: $e0 $ff
	sbc  a                                           ; $6ce4: $9f
	rst  $38                                         ; $6ce5: $ff
	ld   a, a                                        ; $6ce6: $7f
	add  d                                           ; $6ce7: $82
	rst  $38                                         ; $6ce8: $ff
	add  [hl]                                        ; $6ce9: $86
	nop                                              ; $6cea: $00
	add  [hl]                                        ; $6ceb: $86
	rst  $38                                         ; $6cec: $ff
	add  [hl]                                        ; $6ced: $86
	nop                                              ; $6cee: $00
	add  [hl]                                        ; $6cef: $86
	ldh  a, [$87]                                    ; $6cf0: $f0 $87
	rst  $38                                         ; $6cf2: $ff
	nop                                              ; $6cf3: $00
	cp   $80                                         ; $6cf4: $fe $80
	rst  $38                                         ; $6cf6: $ff
	ld   d, $fe                                      ; $6cf7: $16 $fe
	db   $fc                                         ; $6cf9: $fc
	db   $fd                                         ; $6cfa: $fd
	pop  hl                                          ; $6cfb: $e1
	rst  $38                                         ; $6cfc: $ff
	rst  JumpTable                                         ; $6cfd: $df
	rst  $38                                         ; $6cfe: $ff
	cp   [hl]                                        ; $6cff: $be
	rst  $38                                         ; $6d00: $ff
	ld   a, l                                        ; $6d01: $7d
	ei                                               ; $6d02: $fb
	rst  $38                                         ; $6d03: $ff
	rst  $20                                         ; $6d04: $e7
	db   $e4                                         ; $6d05: $e4
	add  h                                           ; $6d06: $84
	adc  b                                           ; $6d07: $88
	ld   l, e                                        ; $6d08: $6b
	ld   [hl], e                                     ; $6d09: $73
	jp   nc, $fffd                                   ; $6d0a: $d2 $fd $ff

	ccf                                              ; $6d0d: $3f
	rst  $38                                         ; $6d0e: $ff
	add  b                                           ; $6d0f: $80
	cp   $80                                         ; $6d10: $fe $80
	ldh  [$08], a                                    ; $6d12: $e0 $08
	nop                                              ; $6d14: $00
	jr   jr_07e_6d36                                 ; $6d15: $18 $1f

	rst  $20                                         ; $6d17: $e7
	rst  $28                                         ; $6d18: $ef
	ld   c, a                                        ; $6d19: $4f
	ld   e, a                                        ; $6d1a: $5f
	sbc  a                                           ; $6d1b: $9f
	ld   a, a                                        ; $6d1c: $7f
	add  c                                           ; $6d1d: $81
	ldh  a, [$80]                                    ; $6d1e: $f0 $80
	db   $10                                         ; $6d20: $10
	add  b                                           ; $6d21: $80
	nop                                              ; $6d22: $00
	add  [hl]                                        ; $6d23: $86
	ldh  a, [rSB]                                    ; $6d24: $f0 $01
	ld   c, e                                        ; $6d26: $4b
	ld   d, h                                        ; $6d27: $54
	add  b                                           ; $6d28: $80
	call nc, $9080                                   ; $6d29: $d4 $80 $90
	ld   bc, $8898                                   ; $6d2c: $01 $98 $88
	add  b                                           ; $6d2f: $80
	add  b                                           ; $6d30: $80
	add  b                                           ; $6d31: $80
	add  c                                           ; $6d32: $81
	add  b                                           ; $6d33: $80
	add  e                                           ; $6d34: $83
	inc  bc                                          ; $6d35: $03

jr_07e_6d36:
	ld   [bc], a                                     ; $6d36: $02
	ld   [hl+], a                                    ; $6d37: $22
	ld   hl, $8001                                   ; $6d38: $21 $01 $80
	inc  bc                                          ; $6d3b: $03
	add  b                                           ; $6d3c: $80
	rrca                                             ; $6d3d: $0f
	add  b                                           ; $6d3e: $80
	ccf                                              ; $6d3f: $3f
	add  d                                           ; $6d40: $82
	rst  $38                                         ; $6d41: $ff
	add  b                                           ; $6d42: $80
	rlca                                             ; $6d43: $07
	ld   [bc], a                                     ; $6d44: $02
	inc  bc                                          ; $6d45: $03
	ei                                               ; $6d46: $fb
	rlca                                             ; $6d47: $07
	adc  e                                           ; $6d48: $8b
	rst  $38                                         ; $6d49: $ff
	add  b                                           ; $6d4a: $80
	rrca                                             ; $6d4b: $0f
	nop                                              ; $6d4c: $00
	rst  $38                                         ; $6d4d: $ff
	adc  l                                           ; $6d4e: $8d
	ldh  a, [rP1]                                    ; $6d4f: $f0 $00
	rrca                                             ; $6d51: $0f
	add  d                                           ; $6d52: $82
	ld   bc, $3e02                                   ; $6d53: $01 $02 $3e
	ld   a, [hl]                                     ; $6d56: $7e
	ld   c, a                                        ; $6d57: $4f
	add  c                                           ; $6d58: $81
	adc  a                                           ; $6d59: $8f
	ld   bc, $27a7                                   ; $6d5a: $01 $a7 $27
	add  b                                           ; $6d5d: $80
	ld   a, e                                        ; $6d5e: $7b
	add  hl, bc                                      ; $6d5f: $09
	ld   [hl], b                                     ; $6d60: $70
	ld   [hl], h                                     ; $6d61: $74
	db   $f4                                         ; $6d62: $f4
	ld   hl, sp-$38                                  ; $6d63: $f8 $c8
	ldh  a, [$b0]                                    ; $6d65: $f0 $b0
	sub  b                                           ; $6d67: $90
	stop                                             ; $6d68: $10 $00
	add  b                                           ; $6d6a: $80
	add  b                                           ; $6d6b: $80
	add  b                                           ; $6d6c: $80
	ret  nz                                          ; $6d6d: $c0

	add  c                                           ; $6d6e: $81
	ldh  [rSB], a                                    ; $6d6f: $e0 $01
	pop  hl                                          ; $6d71: $e1
	ld   bc, $1080                                   ; $6d72: $01 $80 $10
	add  b                                           ; $6d75: $80
	inc  a                                           ; $6d76: $3c
	add  b                                           ; $6d77: $80
	ccf                                              ; $6d78: $3f
	add  b                                           ; $6d79: $80

jr_07e_6d7a:
	ld   a, a                                        ; $6d7a: $7f
	add  b                                           ; $6d7b: $80
	rst  $38                                         ; $6d7c: $ff
	add  b                                           ; $6d7d: $80
	ccf                                              ; $6d7e: $3f
	add  b                                           ; $6d7f: $80
	inc  bc                                          ; $6d80: $03
	ld   bc, $f0ff                                   ; $6d81: $01 $ff $f0
	add  b                                           ; $6d84: $80
	ld   [hl], b                                     ; $6d85: $70
	add  b                                           ; $6d86: $80
	nop                                              ; $6d87: $00
	adc  b                                           ; $6d88: $88
	ldh  a, [$08]                                    ; $6d89: $f0 $08
	nop                                              ; $6d8b: $00
	rst  $38                                         ; $6d8c: $ff
	rst  $28                                         ; $6d8d: $ef
	rst  $38                                         ; $6d8e: $ff
	rst  JumpTable                                         ; $6d8f: $df
	rst  $38                                         ; $6d90: $ff
	cp   a                                           ; $6d91: $bf
	rst  $38                                         ; $6d92: $ff
	ld   a, a                                        ; $6d93: $7f
	sub  e                                           ; $6d94: $93
	rst  $38                                         ; $6d95: $ff
	ld   [bc], a                                     ; $6d96: $02
	db   $fc                                         ; $6d97: $fc
	rst  $38                                         ; $6d98: $ff
	db   $fc                                         ; $6d99: $fc
	add  l                                           ; $6d9a: $85
	rst  $38                                         ; $6d9b: $ff
	ld   [$fffc], sp                                 ; $6d9c: $08 $fc $ff
	ldh  [rIE], a                                    ; $6d9f: $e0 $ff

jr_07e_6da1:
	sub  e                                           ; $6da1: $93
	rst  $38                                         ; $6da2: $ff
	ld   l, a                                        ; $6da3: $6f
	rst  $38                                         ; $6da4: $ff
	rra                                              ; $6da5: $1f
	add  l                                           ; $6da6: $85
	ldh  a, [rSC]                                    ; $6da7: $f0 $02
	ld   [hl], b                                     ; $6da9: $70
	ldh  a, [rSVBK]                                  ; $6daa: $f0 $70
	add  e                                           ; $6dac: $83
	ldh  a, [rTIMA]                                  ; $6dad: $f0 $05
	rst  $30                                         ; $6daf: $f7
	ei                                               ; $6db0: $fb
	di                                               ; $6db1: $f3
	rst  $30                                         ; $6db2: $f7
	rst  $20                                         ; $6db3: $e7
	xor  $80                                         ; $6db4: $ee $80
	ld   l, [hl]                                     ; $6db6: $6e
	nop                                              ; $6db7: $00
	ld   c, [hl]                                     ; $6db8: $4e
	add  c                                           ; $6db9: $81

jr_07e_6dba:
	ld   e, h                                        ; $6dba: $5c
	ld   bc, $595d                                   ; $6dbb: $01 $5d $59
	add  b                                           ; $6dbe: $80
	ld   e, d                                        ; $6dbf: $5a

jr_07e_6dc0:
	dec  b                                           ; $6dc0: $05
	jr   z, jr_07e_6d7a                              ; $6dc1: $28 $b7

	rst  $20                                         ; $6dc3: $e7
	ld   l, h                                        ; $6dc4: $6c
	dec  c                                           ; $6dc5: $0d
	ld   bc, $1f80                                   ; $6dc6: $01 $80 $1f
	add  b                                           ; $6dc9: $80
	rst  $38                                         ; $6dca: $ff
	add  b                                           ; $6dcb: $80
	ld   hl, sp-$80                                  ; $6dcc: $f8 $80
	add  b                                           ; $6dce: $80
	add  b                                           ; $6dcf: $80
	nop                                              ; $6dd0: $00
	add  b                                           ; $6dd1: $80
	ccf                                              ; $6dd2: $3f
	add  h                                           ; $6dd3: $84
	rst  $38                                         ; $6dd4: $ff
	add  b                                           ; $6dd5: $80
	rst  ToBoot                                         ; $6dd6: $c7
	add  b                                           ; $6dd7: $80
	rra                                              ; $6dd8: $1f
	add  b                                           ; $6dd9: $80
	ld   a, a                                        ; $6dda: $7f
	add  c                                           ; $6ddb: $81
	rst  $38                                         ; $6ddc: $ff
	adc  l                                           ; $6ddd: $8d
	ldh  a, [$03]                                    ; $6dde: $f0 $03
	rrca                                             ; $6de0: $0f
	ld   hl, $4b29                                   ; $6de1: $21 $29 $4b
	add  b                                           ; $6de4: $80
	ld   e, e                                        ; $6de5: $5b
	nop                                              ; $6de6: $00
	ld   d, e                                        ; $6de7: $53
	add  c                                           ; $6de8: $81
	ld   d, d                                        ; $6de9: $52
	ld   bc, $4042                                   ; $6dea: $01 $42 $40
	add  b                                           ; $6ded: $80
	ld   b, e                                        ; $6dee: $43
	ld   [bc], a                                     ; $6def: $02
	ld   b, [hl]                                     ; $6df0: $46
	ld   b, $00                                      ; $6df1: $06 $00
	add  b                                           ; $6df3: $80
	db   $fc                                         ; $6df4: $fc
	add  b                                           ; $6df5: $80
	add  b                                           ; $6df6: $80
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	add  b                                           ; $6df9: $80
	ld   e, $80                                      ; $6dfa: $1e $80
	ld   a, a                                        ; $6dfc: $7f
	add  b                                           ; $6dfd: $80
	rst  $38                                         ; $6dfe: $ff
	add  b                                           ; $6dff: $80
	add  $03                                         ; $6e00: $c6 $03
	nop                                              ; $6e02: $00
	jr   c, jr_07e_6e40                              ; $6e03: $38 $3b

	inc  bc                                          ; $6e05: $03
	add  b                                           ; $6e06: $80
	nop                                              ; $6e07: $00
	add  b                                           ; $6e08: $80
	ccf                                              ; $6e09: $3f
	add  b                                           ; $6e0a: $80
	ld   a, a                                        ; $6e0b: $7f
	add  b                                           ; $6e0c: $80
	ccf                                              ; $6e0d: $3f
	add  b                                           ; $6e0e: $80
	inc  a                                           ; $6e0f: $3c
	add  b                                           ; $6e10: $80
	nop                                              ; $6e11: $00
	add  b                                           ; $6e12: $80
	inc  bc                                          ; $6e13: $03
	nop                                              ; $6e14: $00
	rst  $38                                         ; $6e15: $ff
	add  c                                           ; $6e16: $81
	ldh  a, [$80]                                    ; $6e17: $f0 $80
	ld   [hl], b                                     ; $6e19: $70
	add  d                                           ; $6e1a: $82
	ldh  a, [$80]                                    ; $6e1b: $f0 $80
	jr   nc, jr_07e_6da1                             ; $6e1d: $30 $82

	ldh  a, [rSB]                                    ; $6e1f: $f0 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e21: $cf
	ret  nz                                          ; $6e22: $c0

	add  b                                           ; $6e23: $80
	adc  b                                           ; $6e24: $88
	add  b                                           ; $6e25: $80
	ld   [$0980], sp                                 ; $6e26: $08 $80 $09
	add  b                                           ; $6e29: $80
	ld   bc, $7180                                   ; $6e2a: $01 $80 $71
	inc  b                                           ; $6e2d: $04
	ld   hl, $38e1                                   ; $6e2e: $21 $e1 $38
	ld   hl, sp+$00                                  ; $6e31: $f8 $00
	add  b                                           ; $6e33: $80
	ld   [hl], b                                     ; $6e34: $70
	add  b                                           ; $6e35: $80
	jr   nc, jr_07e_6dba                             ; $6e36: $30 $82

	db   $10                                         ; $6e38: $10
	add  l                                           ; $6e39: $85
	nop                                              ; $6e3a: $00
	add  b                                           ; $6e3b: $80
	ret  nz                                          ; $6e3c: $c0

	add  b                                           ; $6e3d: $80
	jr   nc, jr_07e_6dc0                             ; $6e3e: $30 $80

jr_07e_6e40:
	add  e                                           ; $6e40: $83
	add  b                                           ; $6e41: $80
	ldh  a, [$80]                                    ; $6e42: $f0 $80
	ld   a, $80                                      ; $6e44: $3e $80
	dec  bc                                          ; $6e46: $0b
	add  b                                           ; $6e47: $80
	ld   [$a880], sp                                 ; $6e48: $08 $80 $a8
	ld   bc, $707f                                   ; $6e4b: $01 $7f $70
	add  d                                           ; $6e4e: $82
	nop                                              ; $6e4f: $00
	add  b                                           ; $6e50: $80
	ld   h, b                                        ; $6e51: $60
	add  b                                           ; $6e52: $80
	db   $10                                         ; $6e53: $10
	add  b                                           ; $6e54: $80
	ret  nz                                          ; $6e55: $c0

	add  b                                           ; $6e56: $80
	ldh  a, [$80]                                    ; $6e57: $f0 $80
	jr   nc, jr_07e_6e5c                             ; $6e59: $30 $01

	inc  de                                          ; $6e5b: $13

jr_07e_6e5c:
	db   $fc                                         ; $6e5c: $fc
	add  [hl]                                        ; $6e5d: $86

Call_07e_6e5e:
	ld   a, h                                        ; $6e5e: $7c
	add  d                                           ; $6e5f: $82
	ld   hl, sp+$02                                  ; $6e60: $f8 $02
	ret  c                                           ; $6e62: $d8

	ld   hl, sp-$19                                  ; $6e63: $f8 $e7
	add  c                                           ; $6e65: $81
	daa                                              ; $6e66: $27
	add  d                                           ; $6e67: $82

jr_07e_6e68:
	ld   h, a                                        ; $6e68: $67
	add  b                                           ; $6e69: $80
	rlca                                             ; $6e6a: $07
	add  b                                           ; $6e6b: $80
	inc  bc                                          ; $6e6c: $03
	add  b                                           ; $6e6d: $80
	ld   b, h                                        ; $6e6e: $44
	add  b                                           ; $6e6f: $80
	rrca                                             ; $6e70: $0f
	adc  h                                           ; $6e71: $8c
	xor  b                                           ; $6e72: $a8
	add  b                                           ; $6e73: $80
	jr   z, jr_07e_6e77                              ; $6e74: $28 $01

	rrca                                             ; $6e76: $0f

jr_07e_6e77:
	nop                                              ; $6e77: $00
	add  b                                           ; $6e78: $80
	add  b                                           ; $6e79: $80
	add  b                                           ; $6e7a: $80
	ldh  [$88], a                                    ; $6e7b: $e0 $88
	ldh  a, [$03]                                    ; $6e7d: $f0 $03
	ld   a, a                                        ; $6e7f: $7f
	ldh  a, [rLCDC]                                  ; $6e80: $f0 $40
	ret  nz                                          ; $6e82: $c0

	add  b                                           ; $6e83: $80
	nop                                              ; $6e84: $00
	add  b                                           ; $6e85: $80
	cp   $80                                         ; $6e86: $fe $80
	rst  $38                                         ; $6e88: $ff
	add  b                                           ; $6e89: $80
	nop                                              ; $6e8a: $00
	add  d                                           ; $6e8b: $82
	rst  $38                                         ; $6e8c: $ff
	add  b                                           ; $6e8d: $80
	inc  bc                                          ; $6e8e: $03
	add  b                                           ; $6e8f: $80
	inc  e                                           ; $6e90: $1c
	add  b                                           ; $6e91: $80
	rst  $20                                         ; $6e92: $e7
	add  b                                           ; $6e93: $80
	add  hl, sp                                      ; $6e94: $39
	add  b                                           ; $6e95: $80
	sbc  [hl]                                        ; $6e96: $9e
	add  b                                           ; $6e97: $80
	rlca                                             ; $6e98: $07
	add  b                                           ; $6e99: $80
	pop  af                                          ; $6e9a: $f1
	add  b                                           ; $6e9b: $80
	db   $fc                                         ; $6e9c: $fc
	add  d                                           ; $6e9d: $82
	add  sp, -$80                                    ; $6e9e: $e8 $80
	adc  b                                           ; $6ea0: $88
	add  b                                           ; $6ea1: $80
	ret  z                                           ; $6ea2: $c8

	add  b                                           ; $6ea3: $80
	ld   a, c                                        ; $6ea4: $79
	add  b                                           ; $6ea5: $80
	adc  [hl]                                        ; $6ea6: $8e
	add  b                                           ; $6ea7: $80
	db   $e3                                         ; $6ea8: $e3
	add  b                                           ; $6ea9: $80
	ld   hl, sp+$00                                  ; $6eaa: $f8 $00
	rst  $38                                         ; $6eac: $ff
	add  e                                           ; $6ead: $83
	ldh  a, [$80]                                    ; $6eae: $f0 $80
	jr   nc, @-$7e                                   ; $6eb0: $30 $80

	ret  nz                                          ; $6eb2: $c0

	add  b                                           ; $6eb3: $80
	ld   [hl], b                                     ; $6eb4: $70
	add  b                                           ; $6eb5: $80
	sub  b                                           ; $6eb6: $90
	add  b                                           ; $6eb7: $80
	ldh  [rP1], a                                    ; $6eb8: $e0 $00
	ldh  a, [rIE]                                    ; $6eba: $f0 $ff
	nop                                              ; $6ebc: $00
	rst  $38                                         ; $6ebd: $ff

jr_07e_6ebe:
	nop                                              ; $6ebe: $00
	rst  $38                                         ; $6ebf: $ff
	nop                                              ; $6ec0: $00
	rst  $38                                         ; $6ec1: $ff
	nop                                              ; $6ec2: $00
	rst  $38                                         ; $6ec3: $ff
	nop                                              ; $6ec4: $00
	rst  $38                                         ; $6ec5: $ff
	nop                                              ; $6ec6: $00
	rst  $30                                         ; $6ec7: $f7
	nop                                              ; $6ec8: $00
	dec  e                                           ; $6ec9: $1d
	ld   bc, $0086                                   ; $6eca: $01 $86 $00
	ld   [bc], a                                     ; $6ecd: $02
	jr   nc, @-$1d                                   ; $6ece: $30 $e1

	cpl                                              ; $6ed0: $2f
	add  c                                           ; $6ed1: $81
	ld   hl, $a102                                   ; $6ed2: $21 $02 $a1

jr_07e_6ed5:
	ld   hl, $855f                                   ; $6ed5: $21 $5f $85
	nop                                              ; $6ed8: $00
	inc  bc                                          ; $6ed9: $03
	sub  b                                           ; $6eda: $90
	ld   [hl], b                                     ; $6edb: $70
	ld   h, b                                        ; $6edc: $60
	ld   a, a                                        ; $6edd: $7f
	add  c                                           ; $6ede: $81
	ld   h, b                                        ; $6edf: $60
	ld   bc, $f06f                                   ; $6ee0: $01 $6f $f0
	add  l                                           ; $6ee3: $85
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	jr   c, jr_07e_6e68                              ; $6ee6: $38 $80

	ld   b, b                                        ; $6ee8: $40
	nop                                              ; $6ee9: $00
	rst  ToBoot                                         ; $6eea: $c7
	add  b                                           ; $6eeb: $80
	ld   b, b                                        ; $6eec: $40
	ld   [bc], a                                     ; $6eed: $02
	ld   h, b                                        ; $6eee: $60
	rst  ToBoot                                         ; $6eef: $c7
	ld   e, b                                        ; $6ef0: $58
	add  l                                           ; $6ef1: $85
	nop                                              ; $6ef2: $00
	inc  bc                                          ; $6ef3: $03
	db   $10                                         ; $6ef4: $10
	ld   [hl], b                                     ; $6ef5: $70
	ld   h, b                                        ; $6ef6: $60
	ldh  a, [$81]                                    ; $6ef7: $f0 $81
	ld   h, b                                        ; $6ef9: $60
	ld   bc, $70e0                                   ; $6efa: $01 $e0 $70
	add  c                                           ; $6efd: $81
	rrca                                             ; $6efe: $0f
	inc  a                                           ; $6eff: $3c
	inc  c                                           ; $6f00: $0c
	rrca                                             ; $6f01: $0f
	inc  c                                           ; $6f02: $0c
	rrca                                             ; $6f03: $0f
	rlca                                             ; $6f04: $07
	rrca                                             ; $6f05: $0f
	rlca                                             ; $6f06: $07
	rrca                                             ; $6f07: $0f
	inc  bc                                          ; $6f08: $03
	rrca                                             ; $6f09: $0f
	nop                                              ; $6f0a: $00
	rrca                                             ; $6f0b: $0f
	ld   [$5bff], sp                                 ; $6f0c: $08 $ff $5b
	rst  $38                                         ; $6f0f: $ff
	ld   e, [hl]                                     ; $6f10: $5e
	rst  $38                                         ; $6f11: $ff
	ld   hl, sp-$01                                  ; $6f12: $f8 $ff
	pop  hl                                          ; $6f14: $e1
	rst  $38                                         ; $6f15: $ff
	add  a                                           ; $6f16: $87
	rst  $38                                         ; $6f17: $ff
	ld   e, $ff                                      ; $6f18: $1e $ff
	sbc  h                                           ; $6f1a: $9c
	rst  $38                                         ; $6f1b: $ff
	dec  e                                           ; $6f1c: $1d
	ld   a, [$ffc5]                                  ; $6f1d: $fa $c5 $ff
	ld   bc, $1dff                                   ; $6f20: $01 $ff $1d
	rst  $38                                         ; $6f23: $ff
	ret  nz                                          ; $6f24: $c0

	rst  $38                                         ; $6f25: $ff
	add  e                                           ; $6f26: $83
	rst  $38                                         ; $6f27: $ff
	ld   e, $ff                                      ; $6f28: $1e $ff
	jr   @+$01                                       ; $6f2a: $18 $ff

	sbc  c                                           ; $6f2c: $99
	inc  bc                                          ; $6f2d: $03
	xor  e                                           ; $6f2e: $ab
	rst  $38                                         ; $6f2f: $ff
	dec  d                                           ; $6f30: $15
	rst  $38                                         ; $6f31: $ff
	ld   c, b                                        ; $6f32: $48
	rst  $38                                         ; $6f33: $ff
	ld   a, [bc]                                     ; $6f34: $0a
	rst  $38                                         ; $6f35: $ff
	ret  nz                                          ; $6f36: $c0

	rst  $38                                         ; $6f37: $ff
	nop                                              ; $6f38: $00
	rst  $38                                         ; $6f39: $ff
	ld   hl, sp-$01                                  ; $6f3a: $f8 $ff
	jr   c, jr_07e_6ebe                              ; $6f3c: $38 $80

	cp   b                                           ; $6f3e: $b8
	add  b                                           ; $6f3f: $80
	push af                                          ; $6f40: $f5
	add  b                                           ; $6f41: $80
	cp   $80                                         ; $6f42: $fe $80
	db   $fd                                         ; $6f44: $fd
	rlca                                             ; $6f45: $07
	ld   hl, sp-$48                                  ; $6f46: $f8 $b8
	push af                                          ; $6f48: $f5
	or   l                                           ; $6f49: $b5
	ld   a, [$f55a]                                  ; $6f4a: $fa $5a $f5
	ld   d, l                                        ; $6f4d: $55
	add  b                                           ; $6f4e: $80
	nop                                              ; $6f4f: $00
	add  b                                           ; $6f50: $80
	db   $10                                         ; $6f51: $10
	add  b                                           ; $6f52: $80
	jr   z, jr_07e_6ed5                              ; $6f53: $28 $80

	db   $10                                         ; $6f55: $10
	add  b                                           ; $6f56: $80
	xor  b                                           ; $6f57: $a8
	add  b                                           ; $6f58: $80
	ret  nz                                          ; $6f59: $c0

	add  b                                           ; $6f5a: $80
	add  sp, -$80                                    ; $6f5b: $e8 $80
	ld   d, b                                        ; $6f5d: $50
	adc  l                                           ; $6f5e: $8d
	nop                                              ; $6f5f: $00
	rlca                                             ; $6f60: $07
	ld   a, a                                        ; $6f61: $7f
	cp   a                                           ; $6f62: $bf
	rst  JumpTable                                         ; $6f63: $df
	ld   a, a                                        ; $6f64: $7f
	ld   h, c                                        ; $6f65: $61
	rra                                              ; $6f66: $1f
	jr   jr_07e_6f6a                                 ; $6f67: $18 $01

	add  b                                           ; $6f69: $80

jr_07e_6f6a:
	inc  b                                           ; $6f6a: $04
	ld   [$0717], sp                                 ; $6f6b: $08 $17 $07
	ccf                                              ; $6f6e: $3f
	rlca                                             ; $6f6f: $07
	scf                                              ; $6f70: $37
	rlca                                             ; $6f71: $07
	pop  hl                                          ; $6f72: $e1
	rst  $38                                         ; $6f73: $ff
	cp   $80                                         ; $6f74: $fe $80
	rst  $38                                         ; $6f76: $ff
	ld   b, $fe                                      ; $6f77: $06 $fe
	ld   a, $f9                                      ; $6f79: $3e $f9
	ld   bc, $003b                                   ; $6f7b: $01 $3b $00
	inc  bc                                          ; $6f7e: $03
	add  b                                           ; $6f7f: $80
	ret  nz                                          ; $6f80: $c0

	add  b                                           ; $6f81: $80
	ld   hl, sp+$0d                                  ; $6f82: $f8 $0d
	ld   e, a                                        ; $6f84: $5f
	rst  JumpTable                                         ; $6f85: $df
	xor  [hl]                                        ; $6f86: $ae
	cp   a                                           ; $6f87: $bf
	sub  h                                           ; $6f88: $94
	ld   a, a                                        ; $6f89: $7f
	ld   a, b                                        ; $6f8a: $78
	rst  $38                                         ; $6f8b: $ff
	db   $fd                                         ; $6f8c: $fd
	rst  $38                                         ; $6f8d: $ff
	ccf                                              ; $6f8e: $3f
	rst  $38                                         ; $6f8f: $ff
	nop                                              ; $6f90: $00
	ccf                                              ; $6f91: $3f
	add  b                                           ; $6f92: $80
	nop                                              ; $6f93: $00
	ld   a, [bc]                                     ; $6f94: $0a
	db   $fd                                         ; $6f95: $fd
	rst  $38                                         ; $6f96: $ff
	db   $fd                                         ; $6f97: $fd
	rst  $38                                         ; $6f98: $ff
	db   $fd                                         ; $6f99: $fd
	rst  $38                                         ; $6f9a: $ff
	xor  b                                           ; $6f9b: $a8
	rst  $38                                         ; $6f9c: $ff
	ld   d, h                                        ; $6f9d: $54
	rst  $38                                         ; $6f9e: $ff
	cp   $81                                         ; $6f9f: $fe $81
	rst  $38                                         ; $6fa1: $ff
	inc  b                                           ; $6fa2: $04
	ld   bc, $4ffe                                   ; $6fa3: $01 $fe $4f
	rst  $28                                         ; $6fa6: $ef
	ld   c, a                                        ; $6fa7: $4f
	add  c                                           ; $6fa8: $81
	rst  $28                                         ; $6fa9: $ef
	inc  b                                           ; $6faa: $04
	db   $db                                         ; $6fab: $db
	rst  JumpTable                                         ; $6fac: $df
	ld   d, c                                        ; $6fad: $51
	rst  JumpTable                                         ; $6fae: $df
	adc  d                                           ; $6faf: $8a
	add  b                                           ; $6fb0: $80
	rst  JumpTable                                         ; $6fb1: $df
	add  b                                           ; $6fb2: $80
	ccf                                              ; $6fb3: $3f
	ld   [$1eff], sp                                 ; $6fb4: $08 $ff $1e
	ld   bc, $0111                                   ; $6fb7: $01 $11 $01
	ld   c, a                                        ; $6fba: $4f
	ld   b, a                                        ; $6fbb: $47
	db   $e4                                         ; $6fbc: $e4
	db   $e3                                         ; $6fbd: $e3
	add  b                                           ; $6fbe: $80
	ld   [hl], c                                     ; $6fbf: $71
	add  b                                           ; $6fc0: $80
	ld   sp, hl                                      ; $6fc1: $f9
	add  b                                           ; $6fc2: $80
	ld   d, h                                        ; $6fc3: $54
	add  b                                           ; $6fc4: $80
	ld   a, [$9f00]                                  ; $6fc5: $fa $00 $9f
	add  c                                           ; $6fc8: $81
	ld   l, a                                        ; $6fc9: $6f
	inc  bc                                          ; $6fca: $03
	ldh  a, [rIE]                                    ; $6fcb: $f0 $ff
	nop                                              ; $6fcd: $00
	cp   $86                                         ; $6fce: $fe $86
	rst  $38                                         ; $6fd0: $ff
	rlca                                             ; $6fd1: $07
	add  $bb                                         ; $6fd2: $c6 $bb
	rst  $38                                         ; $6fd4: $ff
	ld   a, l                                        ; $6fd5: $7d
	ld   a, h                                        ; $6fd6: $7c
	ld   a, l                                        ; $6fd7: $7d
	cp   h                                           ; $6fd8: $bc
	cp   l                                           ; $6fd9: $bd
	add  b                                           ; $6fda: $80
	cp   c                                           ; $6fdb: $b9
	add  h                                           ; $6fdc: $84
	reti                                             ; $6fdd: $d9


	nop                                              ; $6fde: $00
	ld   l, [hl]                                     ; $6fdf: $6e
	add  c                                           ; $6fe0: $81
	ldh  [rSC], a                                    ; $6fe1: $e0 $02
	ld   [hl], b                                     ; $6fe3: $70
	ldh  a, [rP1]                                    ; $6fe4: $f0 $00
	add  b                                           ; $6fe6: $80
	ldh  a, [$81]                                    ; $6fe7: $f0 $81
	add  b                                           ; $6fe9: $80
	inc  b                                           ; $6fea: $04
	ret  nz                                          ; $6feb: $c0

	add  b                                           ; $6fec: $80
	or   b                                           ; $6fed: $b0
	ret  nz                                          ; $6fee: $c0

	ld   b, b                                        ; $6fef: $40
	add  c                                           ; $6ff0: $81
	rrca                                             ; $6ff1: $0f
	inc  b                                           ; $6ff2: $04
	rlca                                             ; $6ff3: $07
	rrca                                             ; $6ff4: $0f
	nop                                              ; $6ff5: $00
	rrca                                             ; $6ff6: $0f
	ld   a, [bc]                                     ; $6ff7: $0a

jr_07e_6ff8:
	add  c                                           ; $6ff8: $81
	rrca                                             ; $6ff9: $0f
	db   $10                                         ; $6ffa: $10
	ld   c, $0f                                      ; $6ffb: $0e $0f
	inc  bc                                          ; $6ffd: $03
	rrca                                             ; $6ffe: $0f
	sbc  h                                           ; $6fff: $9c
	rst  $38                                         ; $7000: $ff
	dec  hl                                          ; $7001: $2b
	rst  $38                                         ; $7002: $ff
	ld   b, a                                        ; $7003: $47
	rst  $38                                         ; $7004: $ff
	ccf                                              ; $7005: $3f
	rst  $38                                         ; $7006: $ff
	sbc  $ff                                         ; $7007: $de $ff
	ei                                               ; $7009: $fb
	rst  $38                                         ; $700a: $ff
	ldh  [$81], a                                    ; $700b: $e0 $81
	rst  $38                                         ; $700d: $ff
	ld   a, [bc]                                     ; $700e: $0a
	db   $ed                                         ; $700f: $ed
	rst  $38                                         ; $7010: $ff
	rst  ToBoot                                         ; $7011: $c7
	rst  $38                                         ; $7012: $ff
	sbc  [hl]                                        ; $7013: $9e
	rst  $38                                         ; $7014: $ff
	ld   c, h                                        ; $7015: $4c
	rst  $38                                         ; $7016: $ff
	ld   bc, $fbff                                   ; $7017: $01 $ff $fb
	add  c                                           ; $701a: $81
	rst  $38                                         ; $701b: $ff
	ld   c, $e7                                      ; $701c: $0e $e7
	rst  $38                                         ; $701e: $ff
	push de                                          ; $701f: $d5
	rst  $38                                         ; $7020: $ff
	inc  b                                           ; $7021: $04
	rst  $38                                         ; $7022: $ff
	dec  a                                           ; $7023: $3d
	rst  $38                                         ; $7024: $ff
	jr   nc, @+$01                                   ; $7025: $30 $ff

	ld   [bc], a                                     ; $7027: $02
	rst  $38                                         ; $7028: $ff
	xor  $ff                                         ; $7029: $ee $ff
	sbc  a                                           ; $702b: $9f
	add  c                                           ; $702c: $81
	rst  $38                                         ; $702d: $ff
	ld   [$ebbf], sp                                 ; $702e: $08 $bf $eb
	xor  e                                           ; $7031: $ab
	db   $fd                                         ; $7032: $fd
	cp   l                                           ; $7033: $bd
	rst  $38                                         ; $7034: $ff
	sub  a                                           ; $7035: $97
	db   $fd                                         ; $7036: $fd
	sub  l                                           ; $7037: $95
	add  b                                           ; $7038: $80
	ei                                               ; $7039: $fb
	add  h                                           ; $703a: $84
	rst  $38                                         ; $703b: $ff
	add  b                                           ; $703c: $80
	ldh  [$80], a                                    ; $703d: $e0 $80
	ld   [hl], b                                     ; $703f: $70
	add  b                                           ; $7040: $80
	ld   [$f480], a                                  ; $7041: $ea $80 $f4
	add  b                                           ; $7044: $80
	cp   d                                           ; $7045: $ba
	add  b                                           ; $7046: $80
	ld   d, a                                        ; $7047: $57
	add  b                                           ; $7048: $80
	cp   [hl]                                        ; $7049: $be
	add  b                                           ; $704a: $80
	rst  $38                                         ; $704b: $ff
	add  h                                           ; $704c: $84
	nop                                              ; $704d: $00
	add  b                                           ; $704e: $80
	db   $10                                         ; $704f: $10
	add  b                                           ; $7050: $80
	ld   a, [hl+]                                    ; $7051: $2a
	add  b                                           ; $7052: $80
	ld   b, l                                        ; $7053: $45
	add  b                                           ; $7054: $80
	and  d                                           ; $7055: $a2
	ld   de, $2905                                   ; $7056: $11 $05 $29
	inc  bc                                          ; $7059: $03
	ld   [hl], b                                     ; $705a: $70
	nop                                              ; $705b: $00
	ld   h, b                                        ; $705c: $60
	nop                                              ; $705d: $00
	jr   nz, jr_07e_7060                             ; $705e: $20 $00

jr_07e_7060:
	jr   nc, jr_07e_7062                             ; $7060: $30 $00

jr_07e_7062:
	ld   a, [hl-]                                    ; $7062: $3a
	nop                                              ; $7063: $00
	ld   d, $00                                      ; $7064: $16 $00
	ld   b, $00                                      ; $7066: $06 $00
	dec  b                                           ; $7068: $05
	add  c                                           ; $7069: $81
	rst  $38                                         ; $706a: $ff
	add  b                                           ; $706b: $80
	ccf                                              ; $706c: $3f
	add  b                                           ; $706d: $80
	rrca                                             ; $706e: $0f
	add  b                                           ; $706f: $80
	ld   bc, $0082                                   ; $7070: $01 $82 $00
	inc  bc                                          ; $7073: $03
	and  b                                           ; $7074: $a0
	nop                                              ; $7075: $00
	jr   nz, jr_07e_6ff8                             ; $7076: $20 $80

	add  b                                           ; $7078: $80
	ld   hl, sp-$7c                                  ; $7079: $f8 $84
	rst  $38                                         ; $707b: $ff
	add  b                                           ; $707c: $80
	rra                                              ; $707d: $1f
	add  [hl]                                        ; $707e: $86
	nop                                              ; $707f: $00
	add  b                                           ; $7080: $80
	ret  nz                                          ; $7081: $c0

	add  [hl]                                        ; $7082: $86
	rst  $38                                         ; $7083: $ff
	add  b                                           ; $7084: $80
	ld   bc, $7f80                                   ; $7085: $01 $80 $7f
	add  d                                           ; $7088: $82
	nop                                              ; $7089: $00
	add  b                                           ; $708a: $80
	ret  nz                                          ; $708b: $c0

	add  [hl]                                        ; $708c: $86
	rst  $38                                         ; $708d: $ff
	ld   bc, $4db2                                   ; $708e: $01 $b2 $4d
	add  b                                           ; $7091: $80
	xor  a                                           ; $7092: $af
	add  b                                           ; $7093: $80
	ld   d, l                                        ; $7094: $55
	add  b                                           ; $7095: $80
	adc  [hl]                                        ; $7096: $8e
	add  b                                           ; $7097: $80
	ld   d, e                                        ; $7098: $53
	add  b                                           ; $7099: $80
	dec  b                                           ; $709a: $05
	add  b                                           ; $709b: $80
	sub  b                                           ; $709c: $90
	add  b                                           ; $709d: $80
	ld   [hl+], a                                    ; $709e: $22
	inc  bc                                          ; $709f: $03
	ld   a, [hl]                                     ; $70a0: $7e
	ld   a, a                                        ; $70a1: $7f
	cp   $ff                                         ; $70a2: $fe $ff
	add  d                                           ; $70a4: $82
	ccf                                              ; $70a5: $3f
	add  d                                           ; $70a6: $82
	rra                                              ; $70a7: $1f
	add  b                                           ; $70a8: $80
	rrca                                             ; $70a9: $0f
	add  b                                           ; $70aa: $80
	ld   c, a                                        ; $70ab: $4f
	ld   bc, $d927                                   ; $70ac: $01 $27 $d9
	add  b                                           ; $70af: $80
	add  hl, de                                      ; $70b0: $19
	ld   bc, $bb38                                   ; $70b1: $01 $38 $bb
	add  b                                           ; $70b4: $80
	add  e                                           ; $70b5: $83
	add  d                                           ; $70b6: $82
	ei                                               ; $70b7: $fb
	nop                                              ; $70b8: $00
	ld   a, [$fb81]                                  ; $70b9: $fa $81 $fb
	nop                                              ; $70bc: $00
	ld   a, h                                        ; $70bd: $7c
	add  c                                           ; $70be: $81
	add  b                                           ; $70bf: $80
	nop                                              ; $70c0: $00
	or   b                                           ; $70c1: $b0
	add  d                                           ; $70c2: $82
	nop                                              ; $70c3: $00
	ld   bc, $7040                                   ; $70c4: $01 $40 $70
	add  b                                           ; $70c7: $80
	ld   b, b                                        ; $70c8: $40
	rrca                                             ; $70c9: $0f
	ldh  a, [rSVBK]                                  ; $70ca: $f0 $70
	ret  nz                                          ; $70cc: $c0

	ld   l, a                                        ; $70cd: $6f
	rst  $38                                         ; $70ce: $ff
	push bc                                          ; $70cf: $c5
	rst  $38                                         ; $70d0: $ff
	ld   [$efff], a                                  ; $70d1: $ea $ff $ef
	rst  $38                                         ; $70d4: $ff
	ld   b, l                                        ; $70d5: $45
	rst  $38                                         ; $70d6: $ff
	and  b                                           ; $70d7: $a0
	rst  $38                                         ; $70d8: $ff
	push af                                          ; $70d9: $f5
	add  d                                           ; $70da: $82
	rst  $38                                         ; $70db: $ff
	inc  bc                                          ; $70dc: $03
	cp   $40                                         ; $70dd: $fe $40
	cp   $be                                         ; $70df: $fe $be
	add  c                                           ; $70e1: $81
	cp   $06                                         ; $70e2: $fe $06
	sub  $fe                                         ; $70e4: $d6 $fe
	add  d                                           ; $70e6: $82
	cp   $51                                         ; $70e7: $fe $51
	db   $fd                                         ; $70e9: $fd
	ld   hl, sp-$80                                  ; $70ea: $f8 $80
	db   $fd                                         ; $70ec: $fd
	ld   bc, $00ff                                   ; $70ed: $01 $ff $00
	add  l                                           ; $70f0: $85
	rst  $38                                         ; $70f1: $ff
	inc  b                                           ; $70f2: $04
	xor  a                                           ; $70f3: $af
	rst  $38                                         ; $70f4: $ff
	ld   b, l                                        ; $70f5: $45
	rst  $38                                         ; $70f6: $ff
	ld   [$ff81], a                                  ; $70f7: $ea $81 $ff
	ld   [bc], a                                     ; $70fa: $02
	ld   d, l                                        ; $70fb: $55
	rst  $38                                         ; $70fc: $ff
	xor  d                                           ; $70fd: $aa
	add  e                                           ; $70fe: $83
	rst  $38                                         ; $70ff: $ff
	inc  b                                           ; $7100: $04
	ld   [$41ff], a                                  ; $7101: $ea $ff $41
	rst  $38                                         ; $7104: $ff
	xor  e                                           ; $7105: $ab
	add  b                                           ; $7106: $80
	rst  $38                                         ; $7107: $ff
	inc  bc                                          ; $7108: $03
	rst  $30                                         ; $7109: $f7
	ld   b, b                                        ; $710a: $40
	rst  $30                                         ; $710b: $f7
	or   a                                           ; $710c: $b7
	add  e                                           ; $710d: $83
	rst  $30                                         ; $710e: $f7
	ld   a, [bc]                                     ; $710f: $0a
	ld   [$41fb], a                                  ; $7110: $ea $fb $41
	ei                                               ; $7113: $fb
	xor  e                                           ; $7114: $ab
	db   $fd                                         ; $7115: $fd
	rst  $30                                         ; $7116: $f7
	rst  $38                                         ; $7117: $ff
	xor  d                                           ; $7118: $aa
	rst  $38                                         ; $7119: $ff
	ld   e, a                                        ; $711a: $5f
	add  c                                           ; $711b: $81
	rst  $38                                         ; $711c: $ff
	ld   a, [bc]                                     ; $711d: $0a
	db   $fd                                         ; $711e: $fd
	rst  $38                                         ; $711f: $ff
	xor  b                                           ; $7120: $a8
	rst  $38                                         ; $7121: $ff
	ld   d, d                                        ; $7122: $52
	rst  $38                                         ; $7123: $ff
	ld   d, a                                        ; $7124: $57
	rst  $38                                         ; $7125: $ff
	ld   a, [$aafe]                                  ; $7126: $fa $fe $aa
	add  c                                           ; $7129: $81
	cp   $89                                         ; $712a: $fe $89
	rst  $38                                         ; $712c: $ff
	add  e                                           ; $712d: $83
	ldh  a, [$82]                                    ; $712e: $f0 $82
	ld   [hl], b                                     ; $7130: $70
	add  b                                           ; $7131: $80
	or   b                                           ; $7132: $b0
	add  d                                           ; $7133: $82
	ret  nc                                          ; $7134: $d0

	inc  bc                                          ; $7135: $03
	rst  $30                                         ; $7136: $f7
	rst  $38                                         ; $7137: $ff
	nop                                              ; $7138: $00
	rlca                                             ; $7139: $07
	add  d                                           ; $713a: $82
	nop                                              ; $713b: $00
	add  b                                           ; $713c: $80
	ld   hl, sp-$7c                                  ; $713d: $f8 $84
	rst  $38                                         ; $713f: $ff
	inc  bc                                          ; $7140: $03
	nop                                              ; $7141: $00
	ei                                               ; $7142: $fb
	nop                                              ; $7143: $00
	ei                                               ; $7144: $fb
	add  h                                           ; $7145: $84
	nop                                              ; $7146: $00
	add  h                                           ; $7147: $84
	rst  $38                                         ; $7148: $ff
	inc  bc                                          ; $7149: $03
	nop                                              ; $714a: $00
	rst  $38                                         ; $714b: $ff
	nop                                              ; $714c: $00
	rst  $38                                         ; $714d: $ff
	add  h                                           ; $714e: $84
	nop                                              ; $714f: $00
	add  h                                           ; $7150: $84
	rst  $38                                         ; $7151: $ff
	inc  bc                                          ; $7152: $03
	dec  d                                           ; $7153: $15
	rst  $38                                         ; $7154: $ff
	dec  d                                           ; $7155: $15
	rst  $38                                         ; $7156: $ff
	add  h                                           ; $7157: $84
	nop                                              ; $7158: $00
	add  h                                           ; $7159: $84
	rst  $38                                         ; $715a: $ff
	dec  b                                           ; $715b: $05
	ld   a, b                                        ; $715c: $78
	rst  ToBoot                                         ; $715d: $c7
	nop                                              ; $715e: $00
	ld   h, d                                        ; $715f: $62
	sub  d                                           ; $7160: $92
	or   b                                           ; $7161: $b0
	add  b                                           ; $7162: $80
	add  sp, $09                                     ; $7163: $e8 $09
	adc  c                                           ; $7165: $89
	reti                                             ; $7166: $d9


	db   $10                                         ; $7167: $10
	ld   l, b                                        ; $7168: $68
	add  b                                           ; $7169: $80
	cp   c                                           ; $716a: $b9
	ld   b, c                                        ; $716b: $41
	ld   [hl], b                                     ; $716c: $70
	rst  $28                                         ; $716d: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $716e: $cf
	add  b                                           ; $716f: $80
	add  a                                           ; $7170: $87
	add  b                                           ; $7171: $80
	rst  ToBoot                                         ; $7172: $c7
	add  b                                           ; $7173: $80
	rlca                                             ; $7174: $07
	ld   [$e7a7], sp                                 ; $7175: $08 $a7 $e7
	add  e                                           ; $7178: $83
	db   $e3                                         ; $7179: $e3
	and  e                                           ; $717a: $a3
	db   $d3                                         ; $717b: $d3
	ld   d, e                                        ; $717c: $53
	db   $eb                                         ; $717d: $eb
	ld   l, a                                        ; $717e: $6f
	add  c                                           ; $717f: $81
	ei                                               ; $7180: $fb
	add  b                                           ; $7181: $80
	jp   $eb02                                       ; $7182: $c3 $02 $eb


	add  a                                           ; $7185: $87
	rst  $28                                         ; $7186: $ef
	add  b                                           ; $7187: $80
	add  a                                           ; $7188: $87
	add  c                                           ; $7189: $81
	rst  $38                                         ; $718a: $ff
	add  b                                           ; $718b: $80
	cp   $00                                         ; $718c: $fe $00
	add  b                                           ; $718e: $80
	add  e                                           ; $718f: $83
	ret  nz                                          ; $7190: $c0

	rlca                                             ; $7191: $07
	ldh  a, [$c0]                                    ; $7192: $f0 $c0
	and  b                                           ; $7194: $a0
	ret  nz                                          ; $7195: $c0

	ldh  [$c0], a                                    ; $7196: $e0 $c0
	ld   b, b                                        ; $7198: $40
	ld   [hl], b                                     ; $7199: $70
	add  b                                           ; $719a: $80
	or   b                                           ; $719b: $b0
	inc  bc                                          ; $719c: $03
	xor  d                                           ; $719d: $aa
	db   $fd                                         ; $719e: $fd
	ld   d, l                                        ; $719f: $55
	db   $fd                                         ; $71a0: $fd
	add  h                                           ; $71a1: $84
	nop                                              ; $71a2: $00
	add  [hl]                                        ; $71a3: $86
	rst  $38                                         ; $71a4: $ff
	add  b                                           ; $71a5: $80
	ldh  [$82], a                                    ; $71a6: $e0 $82
	nop                                              ; $71a8: $00
	add  b                                           ; $71a9: $80
	rra                                              ; $71aa: $1f
	add  h                                           ; $71ab: $84
	rst  $38                                         ; $71ac: $ff
	add  b                                           ; $71ad: $80
	cp   $82                                         ; $71ae: $fe $82
	nop                                              ; $71b0: $00
	add  b                                           ; $71b1: $80
	inc  bc                                          ; $71b2: $03
	add  a                                           ; $71b3: $87
	rst  $38                                         ; $71b4: $ff
	rst  $38                                         ; $71b5: $ff
	nop                                              ; $71b6: $00
	adc  l                                           ; $71b7: $8d
	nop                                              ; $71b8: $00
	add  b                                           ; $71b9: $80
	ld   d, h                                        ; $71ba: $54
	add  b                                           ; $71bb: $80
	inc  a                                           ; $71bc: $3c
	add  b                                           ; $71bd: $80
	ld   a, b                                        ; $71be: $78
	add  b                                           ; $71bf: $80
	cp   h                                           ; $71c0: $bc
	add  b                                           ; $71c1: $80
	ld   e, h                                        ; $71c2: $5c
	add  b                                           ; $71c3: $80
	inc  a                                           ; $71c4: $3c
	add  b                                           ; $71c5: $80
	inc  d                                           ; $71c6: $14
	ld   bc, $2b28                                   ; $71c7: $01 $28 $2b
	add  b                                           ; $71ca: $80
	di                                               ; $71cb: $f3
	ld   bc, $a9ab                                   ; $71cc: $01 $ab $a9
	add  b                                           ; $71cf: $80
	pop  bc                                          ; $71d0: $c1
	add  b                                           ; $71d1: $80
	pop  hl                                          ; $71d2: $e1
	add  b                                           ; $71d3: $80
	pop  de                                          ; $71d4: $d1
	add  b                                           ; $71d5: $80
	pop  hl                                          ; $71d6: $e1
	inc  b                                           ; $71d7: $04
	ld   d, c                                        ; $71d8: $51
	ld   d, b                                        ; $71d9: $50
	add  b                                           ; $71da: $80
	ld   a, a                                        ; $71db: $7f
	rst  $38                                         ; $71dc: $ff
	add  b                                           ; $71dd: $80
	ld   a, [$f580]                                  ; $71de: $fa $80 $f5
	add  b                                           ; $71e1: $80
	cp   $80                                         ; $71e2: $fe $80
	db   $fd                                         ; $71e4: $fd
	add  b                                           ; $71e5: $80
	cp   b                                           ; $71e6: $b8
	add  b                                           ; $71e7: $80
	inc  d                                           ; $71e8: $14
	add  b                                           ; $71e9: $80
	xor  b                                           ; $71ea: $a8
	add  b                                           ; $71eb: $80
	ld   d, b                                        ; $71ec: $50
	add  b                                           ; $71ed: $80
	nop                                              ; $71ee: $00
	add  b                                           ; $71ef: $80
	db   $10                                         ; $71f0: $10
	rst  $38                                         ; $71f1: $ff
	nop                                              ; $71f2: $00
	call z, $8000                                    ; $71f3: $cc $00 $80
	ldh  [$80], a                                    ; $71f6: $e0 $80
	ld   a, [$fc07]                                  ; $71f8: $fa $07 $fc
	ld   [bc], a                                     ; $71fb: $02
	cp   $fc                                         ; $71fc: $fe $fc
	nop                                              ; $71fe: $00
	ld   [bc], a                                     ; $71ff: $02
	nop                                              ; $7200: $00
	cp   $84                                         ; $7201: $fe $84
	nop                                              ; $7203: $00
	add  b                                           ; $7204: $80
	ld   h, l                                        ; $7205: $65
	rlca                                             ; $7206: $07
	ld   l, c                                        ; $7207: $69
	inc  c                                           ; $7208: $0c
	ld   h, l                                        ; $7209: $65
	ld   l, c                                        ; $720a: $69
	nop                                              ; $720b: $00
	inc  c                                           ; $720c: $0c
	nop                                              ; $720d: $00

jr_07e_720e:
	ld   h, l                                        ; $720e: $65
	add  [hl]                                        ; $720f: $86
	nop                                              ; $7210: $00
	ld   bc, $00ff                                   ; $7211: $01 $ff $00
	add  b                                           ; $7214: $80
	rst  $38                                         ; $7215: $ff
	add  c                                           ; $7216: $81
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	rst  $38                                         ; $7219: $ff
	add  [hl]                                        ; $721a: $86
	nop                                              ; $721b: $00
	add  c                                           ; $721c: $81
	ldh  a, [rP1]                                    ; $721d: $f0 $00
	nop                                              ; $721f: $00
	add  b                                           ; $7220: $80
	ldh  a, [rSB]                                    ; $7221: $f0 $01
	nop                                              ; $7223: $00
	ldh  a, [rIE]                                    ; $7224: $f0 $ff
	nop                                              ; $7226: $00
	cp   h                                           ; $7227: $bc
	nop                                              ; $7228: $00
	dec  b                                           ; $7229: $05
	ret  nz                                          ; $722a: $c0

	nop                                              ; $722b: $00
	jr   nc, jr_07e_720e                             ; $722c: $30 $e0

	add  sp, -$10                                    ; $722e: $e8 $f0
	add  b                                           ; $7230: $80
	or   $01                                         ; $7231: $f6 $01
	rst  $30                                         ; $7233: $f7
	ld   [hl], e                                     ; $7234: $73
	add  b                                           ; $7235: $80
	ld   [hl], d                                     ; $7236: $72
	add  b                                           ; $7237: $80
	ld   [hl], c                                     ; $7238: $71
	ld   [bc], a                                     ; $7239: $02
	halt                                             ; $723a: $76
	ld   h, d                                        ; $723b: $62
	sbc  b                                           ; $723c: $98
	add  e                                           ; $723d: $83
	nop                                              ; $723e: $00
	add  b                                           ; $723f: $80
	ld   l, b                                        ; $7240: $68
	add  d                                           ; $7241: $82
	ld   l, h                                        ; $7242: $6c
	add  b                                           ; $7243: $80
	ld   h, h                                        ; $7244: $64
	add  b                                           ; $7245: $80
	jr   nz, jr_07e_724a                             ; $7246: $20 $02

	rst  $38                                         ; $7248: $ff
	nop                                              ; $7249: $00

jr_07e_724a:
	rst  $38                                         ; $724a: $ff
	add  c                                           ; $724b: $81
	nop                                              ; $724c: $00
	add  b                                           ; $724d: $80
	add  b                                           ; $724e: $80
	add  b                                           ; $724f: $80
	ld   d, h                                        ; $7250: $54
	add  b                                           ; $7251: $80
	ld   a, [$7980]                                  ; $7252: $fa $80 $79
	add  b                                           ; $7255: $80
	and  b                                           ; $7256: $a0
	inc  b                                           ; $7257: $04
	ldh  a, [rP1]                                    ; $7258: $f0 $00
	add  b                                           ; $725a: $80
	nop                                              ; $725b: $00
	ld   [hl], b                                     ; $725c: $70
	rst  $38                                         ; $725d: $ff
	nop                                              ; $725e: $00
	ret  z                                           ; $725f: $c8

	nop                                              ; $7260: $00
	ld   [bc], a                                     ; $7261: $02
	add  b                                           ; $7262: $80
	nop                                              ; $7263: $00
	add  b                                           ; $7264: $80
	adc  c                                           ; $7265: $89
	nop                                              ; $7266: $00
	ld   [bc], a                                     ; $7267: $02
	rst  $38                                         ; $7268: $ff
	rst  $28                                         ; $7269: $ef
	db   $10                                         ; $726a: $10
	adc  c                                           ; $726b: $89
	nop                                              ; $726c: $00
	add  b                                           ; $726d: $80
	rrca                                             ; $726e: $0f

jr_07e_726f:
	add  b                                           ; $726f: $80
	rst  $38                                         ; $7270: $ff
	adc  b                                           ; $7271: $88
	nop                                              ; $7272: $00
	ld   b, $0f                                      ; $7273: $06 $0f
	inc  bc                                          ; $7275: $03
	di                                               ; $7276: $f3
	db   $fd                                         ; $7277: $fd
	ld   sp, hl                                      ; $7278: $f9
	cp   $05                                         ; $7279: $fe $05
	add  l                                           ; $727b: $85
	nop                                              ; $727c: $00
	add  b                                           ; $727d: $80
	db   $10                                         ; $727e: $10
	add  d                                           ; $727f: $82
	ldh  a, [rSC]                                    ; $7280: $f0 $02
	and  b                                           ; $7282: $a0
	ldh  a, [$50]                                    ; $7283: $f0 $50
	rst  $38                                         ; $7285: $ff
	nop                                              ; $7286: $00
	cp   h                                           ; $7287: $bc
	nop                                              ; $7288: $00
	ld   [bc], a                                     ; $7289: $02
	ld   bc, $0f00                                   ; $728a: $01 $00 $0f
	add  d                                           ; $728d: $82
	inc  c                                           ; $728e: $0c
	add  c                                           ; $728f: $81
	rrca                                             ; $7290: $0f
	inc  b                                           ; $7291: $04
	dec  c                                           ; $7292: $0d
	ld   c, $02                                      ; $7293: $0e $02
	ld   c, $0a                                      ; $7295: $0e $0a
	add  c                                           ; $7297: $81
	ld   c, $07                                      ; $7298: $0e $07
	cp   $8f                                         ; $729a: $fe $8f
	adc  e                                           ; $729c: $8b
	adc  a                                           ; $729d: $8f
	add  h                                           ; $729e: $84
	add  l                                           ; $729f: $85
	inc  bc                                          ; $72a0: $03
	add  e                                           ; $72a1: $83
	add  b                                           ; $72a2: $80
	adc  a                                           ; $72a3: $8f
	add  b                                           ; $72a4: $80
	sbc  a                                           ; $72a5: $9f
	add  b                                           ; $72a6: $80
	rst  $38                                         ; $72a7: $ff
	ld   [bc], a                                     ; $72a8: $02
	ld   a, a                                        ; $72a9: $7f
	rst  $38                                         ; $72aa: $ff
	add  b                                           ; $72ab: $80
	add  c                                           ; $72ac: $81
	ld   hl, sp+$03                                  ; $72ad: $f8 $03
	ld   b, $fe                                      ; $72af: $06 $fe
	ld   a, $fe                                      ; $72b1: $3e $fe
	add  b                                           ; $72b3: $80

jr_07e_72b4:
	db   $fc                                         ; $72b4: $fc
	add  b                                           ; $72b5: $80
	ldh  a, [$81]                                    ; $72b6: $f0 $81
	ret  nz                                          ; $72b8: $c0

	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	add  b                                           ; $72bb: $80
	jp   c, $dc80                                    ; $72bc: $da $80 $dc

	add  b                                           ; $72bf: $80
	jp   c, $dd80                                    ; $72c0: $da $80 $dd

	add  b                                           ; $72c3: $80
	db   $d3                                         ; $72c4: $d3
	add  b                                           ; $72c5: $80
	adc  $80                                         ; $72c6: $ce $80
	sbc  a                                           ; $72c8: $9f
	inc  bc                                          ; $72c9: $03
	ld   a, c                                        ; $72ca: $79
	ld   a, a                                        ; $72cb: $7f
	nop                                              ; $72cc: $00
	ld   b, $80                                      ; $72cd: $06 $80
	nop                                              ; $72cf: $00
	add  d                                           ; $72d0: $82
	rlca                                             ; $72d1: $07
	add  b                                           ; $72d2: $80
	nop                                              ; $72d3: $00
	add  b                                           ; $72d4: $80
	rra                                              ; $72d5: $1f
	dec  b                                           ; $72d6: $05
	cp   $ff                                         ; $72d7: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72d9: $cf
	rst  $38                                         ; $72da: $ff
	ld   d, c                                        ; $72db: $51
	ld   h, b                                        ; $72dc: $60
	add  b                                           ; $72dd: $80
	rrca                                             ; $72de: $0f
	add  b                                           ; $72df: $80
	ld   h, b                                        ; $72e0: $60
	add  b                                           ; $72e1: $80
	sbc  a                                           ; $72e2: $9f
	add  hl, bc                                      ; $72e3: $09
	ld   l, d                                        ; $72e4: $6a
	ld   a, a                                        ; $72e5: $7f
	sub  l                                           ; $72e6: $95
	rst  $38                                         ; $72e7: $ff
	call c, $2fff                                    ; $72e8: $dc $ff $2f
	rst  $38                                         ; $72eb: $ff
	xor  h                                           ; $72ec: $ac
	jr   nz, jr_07e_726f                             ; $72ed: $20 $80

	rst  $38                                         ; $72ef: $ff
	add  b                                           ; $72f0: $80
	nop                                              ; $72f1: $00
	add  b                                           ; $72f2: $80
	rst  $38                                         ; $72f3: $ff
	ld   [$ffaa], sp                                 ; $72f4: $08 $aa $ff
	ld   d, l                                        ; $72f7: $55
	rst  $38                                         ; $72f8: $ff
	and  b                                           ; $72f9: $a0
	rst  $38                                         ; $72fa: $ff
	dec  de                                          ; $72fb: $1b
	rst  $38                                         ; $72fc: $ff
	dec  l                                           ; $72fd: $2d
	add  c                                           ; $72fe: $81
	jp   hl                                          ; $72ff: $e9


	nop                                              ; $7300: $00
	add  sp, -$80                                    ; $7301: $e8 $80
	jp   hl                                          ; $7303: $e9


	ld   [bc], a                                     ; $7304: $02
	db   $eb                                         ; $7305: $eb
	db   $ec                                         ; $7306: $ec
	rst  $28                                         ; $7307: $ef
	add  b                                           ; $7308: $80
	ldh  [rDIV], a                                   ; $7309: $e0 $04
	nop                                              ; $730b: $00
	add  b                                           ; $730c: $80
	ld   a, a                                        ; $730d: $7f
	rst  $38                                         ; $730e: $ff
	ld   a, a                                        ; $730f: $7f
	add  c                                           ; $7310: $81
	rst  $38                                         ; $7311: $ff
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	add  c                                           ; $7314: $81
	rst  $38                                         ; $7315: $ff
	ld   bc, $ff00                                   ; $7316: $01 $00 $ff
	add  d                                           ; $7319: $82
	nop                                              ; $731a: $00
	add  b                                           ; $731b: $80
	rst  $38                                         ; $731c: $ff
	nop                                              ; $731d: $00
	sub  e                                           ; $731e: $93
	add  c                                           ; $731f: $81
	di                                               ; $7320: $f3
	nop                                              ; $7321: $00
	ld   [hl], b                                     ; $7322: $70
	add  b                                           ; $7323: $80
	di                                               ; $7324: $f3
	ld   [bc], a                                     ; $7325: $02
	rst  $30                                         ; $7326: $f7
	jr   @+$01                                       ; $7327: $18 $ff

	add  d                                           ; $7329: $82
	nop                                              ; $732a: $00
	add  b                                           ; $732b: $80
	rst  $38                                         ; $732c: $ff
	nop                                              ; $732d: $00
	ret                                              ; $732e: $c9


	add  c                                           ; $732f: $81
	ld   sp, hl                                      ; $7330: $f9
	nop                                              ; $7331: $00
	jr   c, jr_07e_72b4                              ; $7332: $38 $80

	ld   sp, hl                                      ; $7334: $f9
	ld   [bc], a                                     ; $7335: $02
	ei                                               ; $7336: $fb
	inc  c                                           ; $7337: $0c
	rst  $38                                         ; $7338: $ff
	add  d                                           ; $7339: $82
	nop                                              ; $733a: $00
	add  b                                           ; $733b: $80
	rst  $38                                         ; $733c: $ff
	add  b                                           ; $733d: $80
	add  hl, sp                                      ; $733e: $39
	add  b                                           ; $733f: $80
	ld   e, $80                                      ; $7340: $1e $80
	rlca                                             ; $7342: $07
	add  b                                           ; $7343: $80
	ld   b, c                                        ; $7344: $41
	add  b                                           ; $7345: $80
	ld   [hl], b                                     ; $7346: $70
	add  b                                           ; $7347: $80
	ld   a, h                                        ; $7348: $7c
	add  b                                           ; $7349: $80
	rra                                              ; $734a: $1f
	add  b                                           ; $734b: $80
	inc  bc                                          ; $734c: $03
	nop                                              ; $734d: $00
	ld   [hl], $85                                   ; $734e: $36 $85
	rst  $30                                         ; $7350: $f7
	ld   bc, $f737                                   ; $7351: $01 $37 $f7
	add  b                                           ; $7354: $80
	rlca                                             ; $7355: $07
	dec  b                                           ; $7356: $05
	nop                                              ; $7357: $00
	ld   bc, $fffe                                   ; $7358: $01 $fe $ff
	add  hl, bc                                      ; $735b: $09
	ld   [$ff80], sp                                 ; $735c: $08 $80 $ff
	add  b                                           ; $735f: $80
	nop                                              ; $7360: $00
	add  b                                           ; $7361: $80
	rst  $38                                         ; $7362: $ff
	dec  bc                                          ; $7363: $0b
	ld   d, l                                        ; $7364: $55
	rst  $38                                         ; $7365: $ff
	xor  d                                           ; $7366: $aa
	rst  $38                                         ; $7367: $ff
	ld   bc, $ceff                                   ; $7368: $01 $ff $ce
	rst  $38                                         ; $736b: $ff
	jr   nz, jr_07e_737f                             ; $736c: $20 $11

	db   $fd                                         ; $736e: $fd
	cp   $80                                         ; $736f: $fe $80
	ld   [bc], a                                     ; $7371: $02
	add  b                                           ; $7372: $80
	cp   $08                                         ; $7373: $fe $08
	ld   d, [hl]                                     ; $7375: $56
	cp   $aa                                         ; $7376: $fe $aa
	cp   $06                                         ; $7378: $fe $06
	cp   $ba                                         ; $737a: $fe $ba
	cp   $40                                         ; $737c: $fe $40
	add  b                                           ; $737e: $80

jr_07e_737f:
	ld   [bc], a                                     ; $737f: $02
	ld   b, $3e                                      ; $7380: $06 $3e
	sbc  $fe                                         ; $7382: $de $fe
	ld   b, $1e                                      ; $7384: $06 $1e
	ld   [bc], a                                     ; $7386: $02
	ld   b, $80                                      ; $7387: $06 $80
	push hl                                          ; $7389: $e5
	inc  b                                           ; $738a: $04
	db   $f4                                         ; $738b: $f4
	push af                                          ; $738c: $f5
	db   $fc                                         ; $738d: $fc
	db   $fd                                         ; $738e: $fd
	ld   sp, hl                                      ; $738f: $f9
	add  l                                           ; $7390: $85
	rrca                                             ; $7391: $0f
	ld   [bc], a                                     ; $7392: $02
	ld   c, $0c                                      ; $7393: $0e $0c
	inc  b                                           ; $7395: $04
	add  e                                           ; $7396: $83
	nop                                              ; $7397: $00
	ld   bc, $fc8c                                   ; $7398: $01 $8c $fc
	add  b                                           ; $739b: $80
	ldh  a, [$80]                                    ; $739c: $f0 $80
	ret  nz                                          ; $739e: $c0

	nop                                              ; $739f: $00
	add  b                                           ; $73a0: $80
	add  e                                           ; $73a1: $83
	nop                                              ; $73a2: $00
	add  b                                           ; $73a3: $80
	ld   bc, $0780                                   ; $73a4: $01 $80 $07
	add  b                                           ; $73a7: $80
	nop                                              ; $73a8: $00
	add  b                                           ; $73a9: $80
	ld   bc, $0780                                   ; $73aa: $01 $80 $07
	ld   [de], a                                     ; $73ad: $12
	ld   c, $0f                                      ; $73ae: $0e $0f
	dec  a                                           ; $73b0: $3d
	ccf                                              ; $73b1: $3f
	ld   a, [$e5ff]                                  ; $73b2: $fa $ff $e5
	rst  $38                                         ; $73b5: $ff
	jp   nc, $d2ff                                   ; $73b6: $d2 $ff $d2

	rst  $38                                         ; $73b9: $ff
	db   $d3                                         ; $73ba: $d3
	rst  $38                                         ; $73bb: $ff
	xor  a                                           ; $73bc: $af
	rst  $38                                         ; $73bd: $ff
	ld   e, a                                        ; $73be: $5f
	rst  $38                                         ; $73bf: $ff
	inc  sp                                          ; $73c0: $33
	add  c                                           ; $73c1: $81
	rst  $38                                         ; $73c2: $ff
	inc  b                                           ; $73c3: $04
	call z, $ddff                                    ; $73c4: $cc $ff $dd
	rst  $38                                         ; $73c7: $ff
	and  $81                                         ; $73c8: $e6 $81
	rst  $38                                         ; $73ca: $ff
	jr   nz, @-$78                                   ; $73cb: $20 $86

	rst  $38                                         ; $73cd: $ff
	db   $ec                                         ; $73ce: $ec
	rst  $38                                         ; $73cf: $ff
	rst  $10                                         ; $73d0: $d7
	rst  $38                                         ; $73d1: $ff
	or   d                                           ; $73d2: $b2
	rst  $38                                         ; $73d3: $ff
	db   $f4                                         ; $73d4: $f4
	rst  $38                                         ; $73d5: $ff
	rrca                                             ; $73d6: $0f
	rst  $38                                         ; $73d7: $ff
	ld   c, b                                        ; $73d8: $48
	rst  $38                                         ; $73d9: $ff
	cp   b                                           ; $73da: $b8
	rst  $38                                         ; $73db: $ff
	cp   l                                           ; $73dc: $bd
	rst  $38                                         ; $73dd: $ff
	cp   c                                           ; $73de: $b9
	rst  $38                                         ; $73df: $ff
	sbc  [hl]                                        ; $73e0: $9e
	rst  $38                                         ; $73e1: $ff
	sub  l                                           ; $73e2: $95
	rst  $38                                         ; $73e3: $ff
	adc  a                                           ; $73e4: $8f
	rst  $38                                         ; $73e5: $ff
	cp   a                                           ; $73e6: $bf
	rst  $38                                         ; $73e7: $ff
	call c, $fbff                                    ; $73e8: $dc $ff $fb
	rst  $38                                         ; $73eb: $ff
	rst  $20                                         ; $73ec: $e7
	add  c                                           ; $73ed: $81
	rst  $38                                         ; $73ee: $ff
	ld   [$ff7f], sp                                 ; $73ef: $08 $7f $ff
	di                                               ; $73f2: $f3
	rst  $38                                         ; $73f3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73f4: $cf
	rst  $38                                         ; $73f5: $ff
	dec  hl                                          ; $73f6: $2b
	rst  $38                                         ; $73f7: $ff
	sub  a                                           ; $73f8: $97
	add  c                                           ; $73f9: $81
	rst  $38                                         ; $73fa: $ff
	inc  c                                           ; $73fb: $0c
	jp   z, $d6ff                                    ; $73fc: $ca $ff $d6

	rst  $38                                         ; $73ff: $ff
	and  a                                           ; $7400: $a7
	rst  $38                                         ; $7401: $ff
	add  hl, hl                                      ; $7402: $29
	rst  $38                                         ; $7403: $ff
	ld   e, l                                        ; $7404: $5d
	rst  $38                                         ; $7405: $ff
	db   $d3                                         ; $7406: $d3
	rst  $38                                         ; $7407: $ff
	db   $e3                                         ; $7408: $e3
	add  e                                           ; $7409: $83
	rst  $38                                         ; $740a: $ff
	ld   a, [bc]                                     ; $740b: $0a
	cp   a                                           ; $740c: $bf
	rst  $38                                         ; $740d: $ff
	rst  ToBoot                                         ; $740e: $c7
	rst  $38                                         ; $740f: $ff
	sbc  $ff                                         ; $7410: $de $ff
	ld   l, c                                        ; $7412: $69
	rst  $38                                         ; $7413: $ff
	ccf                                              ; $7414: $3f
	rst  $38                                         ; $7415: $ff
	ldh  a, [$81]                                    ; $7416: $f0 $81
	rst  $38                                         ; $7418: $ff
	inc  c                                           ; $7419: $0c
	ld   [hl], a                                     ; $741a: $77
	rst  $38                                         ; $741b: $ff
	ld   h, a                                        ; $741c: $67
	rst  $38                                         ; $741d: $ff
	ld   l, h                                        ; $741e: $6c
	rst  $38                                         ; $741f: $ff
	ld   h, [hl]                                     ; $7420: $66
	rst  $38                                         ; $7421: $ff
	dec  e                                           ; $7422: $1d
	rst  $38                                         ; $7423: $ff
	ld   d, [hl]                                     ; $7424: $56
	rst  $38                                         ; $7425: $ff
	xor  [hl]                                        ; $7426: $ae
	add  c                                           ; $7427: $81
	rst  $38                                         ; $7428: $ff
	inc  c                                           ; $7429: $0c
	db   $fd                                         ; $742a: $fd
	rst  $38                                         ; $742b: $ff
	cp   b                                           ; $742c: $b8
	rst  $38                                         ; $742d: $ff
	sbc  d                                           ; $742e: $9a
	rst  $38                                         ; $742f: $ff
	cp   $ff                                         ; $7430: $fe $ff
	inc  a                                           ; $7432: $3c
	rst  $38                                         ; $7433: $ff
	ld   [de], a                                     ; $7434: $12
	rst  $38                                         ; $7435: $ff
	ldh  a, [$83]                                    ; $7436: $f0 $83
	rst  $38                                         ; $7438: $ff
	ld   a, [bc]                                     ; $7439: $0a
	db   $e3                                         ; $743a: $e3
	rst  $38                                         ; $743b: $ff

jr_07e_743c:
	db   $e4                                         ; $743c: $e4
	rst  $38                                         ; $743d: $ff
	jp   nz, Jump_07e_5eff                           ; $743e: $c2 $ff $5e

	rst  $38                                         ; $7441: $ff
	sbc  e                                           ; $7442: $9b
	rst  $38                                         ; $7443: $ff
	nop                                              ; $7444: $00
	add  c                                           ; $7445: $81

jr_07e_7446:
	rst  $38                                         ; $7446: $ff
	inc  a                                           ; $7447: $3c
	rst  $30                                         ; $7448: $f7
	rst  $38                                         ; $7449: $ff
	ld   d, e                                        ; $744a: $53
	rst  $38                                         ; $744b: $ff
	ei                                               ; $744c: $fb
	rst  $38                                         ; $744d: $ff
	cp   l                                           ; $744e: $bd
	rst  $38                                         ; $744f: $ff
	ld   [hl], e                                     ; $7450: $73
	rst  $38                                         ; $7451: $ff
	ld   l, a                                        ; $7452: $6f
	rst  $38                                         ; $7453: $ff
	nop                                              ; $7454: $00

jr_07e_7455:
	rst  $38                                         ; $7455: $ff
	cp   $ff                                         ; $7456: $fe $ff
	cp   a                                           ; $7458: $bf
	rst  $38                                         ; $7459: $ff
	cp   a                                           ; $745a: $bf
	rst  $38                                         ; $745b: $ff
	db   $db                                         ; $745c: $db
	rst  $38                                         ; $745d: $ff
	sbc  e                                           ; $745e: $9b
	rst  $38                                         ; $745f: $ff
	db   $db                                         ; $7460: $db
	rst  $38                                         ; $7461: $ff
	ld   h, e                                        ; $7462: $63
	rst  $38                                         ; $7463: $ff
	ld   [$8efe], sp                                 ; $7464: $08 $fe $8e
	db   $fc                                         ; $7467: $fc
	cp   a                                           ; $7468: $bf
	rst  $38                                         ; $7469: $ff
	adc  a                                           ; $746a: $8f
	rst  $38                                         ; $746b: $ff
	dec  sp                                          ; $746c: $3b
	rst  $38                                         ; $746d: $ff
	dec  bc                                          ; $746e: $0b
	rst  $38                                         ; $746f: $ff
	sbc  h                                           ; $7470: $9c
	rst  $38                                         ; $7471: $ff
	cp   e                                           ; $7472: $bb
	rst  $38                                         ; $7473: $ff
	sbc  d                                           ; $7474: $9a
	db   $fd                                         ; $7475: $fd
	dec  a                                           ; $7476: $3d
	ld   a, l                                        ; $7477: $7d
	db   $fd                                         ; $7478: $fd
	sbc  l                                           ; $7479: $9d
	db   $dd                                         ; $747a: $dd
	push bc                                          ; $747b: $c5
	or   h                                           ; $747c: $b4
	db   $f4                                         ; $747d: $f4
	inc  c                                           ; $747e: $0c
	db   $fc                                         ; $747f: $fc
	ld   c, h                                        ; $7480: $4c
	ld   hl, sp+$6e                                  ; $7481: $f8 $6e
	rst  $38                                         ; $7483: $ff
	ld   l, [hl]                                     ; $7484: $6e
	add  l                                           ; $7485: $85
	nop                                              ; $7486: $00
	ld   bc, $ba45                                   ; $7487: $01 $45 $ba
	add  b                                           ; $748a: $80
	ld   a, e                                        ; $748b: $7b
	add  d                                           ; $748c: $82
	db   $fd                                         ; $748d: $fd
	nop                                              ; $748e: $00
	rst  $38                                         ; $748f: $ff
	add  l                                           ; $7490: $85
	nop                                              ; $7491: $00
	ld   [$fe01], sp                                 ; $7492: $08 $01 $fe
	ld   a, b                                        ; $7495: $78
	ld   a, [hl]                                     ; $7496: $7e
	jr   nz, @+$3a                                   ; $7497: $20 $38

	ld   de, $c030                                   ; $7499: $11 $30 $c0
	add  l                                           ; $749c: $85
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	rst  $38                                         ; $749f: $ff
	add  b                                           ; $74a0: $80
	call z, $c405                                    ; $74a1: $cc $05 $c4
	add  $46                                         ; $74a4: $c6 $46
	ld   b, d                                        ; $74a6: $42
	ld   b, [hl]                                     ; $74a7: $46
	cp   a                                           ; $74a8: $bf
	add  l                                           ; $74a9: $85
	nop                                              ; $74aa: $00
	add  l                                           ; $74ab: $85
	ldh  a, [$03]                                    ; $74ac: $f0 $03
	ld   [hl], b                                     ; $74ae: $70
	add  l                                           ; $74af: $85
	ld   [bc], a                                     ; $74b0: $02
	inc  b                                           ; $74b1: $04
	add  c                                           ; $74b2: $81
	nop                                              ; $74b3: $00
	dec  b                                           ; $74b4: $05
	inc  c                                           ; $74b5: $0c
	nop                                              ; $74b6: $00
	scf                                              ; $74b7: $37
	rlca                                             ; $74b8: $07
	ret  c                                           ; $74b9: $d8

	jr   jr_07e_743c                                 ; $74ba: $18 $80

	rst  $20                                         ; $74bc: $e7
	add  b                                           ; $74bd: $80
	inc  e                                           ; $74be: $1c
	add  b                                           ; $74bf: $80
	ld   bc, $0680                                   ; $74c0: $01 $80 $06
	add  b                                           ; $74c3: $80
	jr   c, jr_07e_7446                              ; $74c4: $38 $80

	rst  ToBoot                                         ; $74c6: $c7
	add  b                                           ; $74c7: $80
	inc  e                                           ; $74c8: $1c
	add  b                                           ; $74c9: $80
	db   $e3                                         ; $74ca: $e3
	dec  b                                           ; $74cb: $05
	ld   e, $1f                                      ; $74cc: $1e $1f
	ld   sp, hl                                      ; $74ce: $f9
	ei                                               ; $74cf: $fb
	call nz, $80c7                                   ; $74d0: $c4 $c7 $80
	jr   jr_07e_7455                                 ; $74d3: $18 $80

	rst  $20                                         ; $74d5: $e7
	add  b                                           ; $74d6: $80
	rrca                                             ; $74d7: $0f
	add  b                                           ; $74d8: $80
	rst  $38                                         ; $74d9: $ff
	ld   [bc], a                                     ; $74da: $02
	rst  JumpTable                                         ; $74db: $df
	rst  $38                                         ; $74dc: $ff
	ld   a, a                                        ; $74dd: $7f
	add  c                                           ; $74de: $81
	rst  $38                                         ; $74df: $ff
	ld   bc, $802f                                   ; $74e0: $01 $2f $80
	adc  h                                           ; $74e3: $8c
	nop                                              ; $74e4: $00
	ld   bc, $abe6                                   ; $74e5: $01 $e6 $ab
	add  d                                           ; $74e8: $82
	db   $eb                                         ; $74e9: $eb
	dec  b                                           ; $74ea: $05
	xor  c                                           ; $74eb: $a9
	xor  e                                           ; $74ec: $ab
	xor  d                                           ; $74ed: $aa
	jp   hl                                          ; $74ee: $e9


	ld   [$822a], a                                  ; $74ef: $ea $2a $82
	jr   z, @+$03                                    ; $74f2: $28 $01

jr_07e_74f4:
	ld   hl, sp-$28                                  ; $74f4: $f8 $d8
	add  b                                           ; $74f6: $80
	cp   c                                           ; $74f7: $b9
	add  b                                           ; $74f8: $80
	ld   e, d                                        ; $74f9: $5a
	add  b                                           ; $74fa: $80
	sbc  b                                           ; $74fb: $98
	add  [hl]                                        ; $74fc: $86
	jr   jr_07e_7501                                 ; $74fd: $18 $02

jr_07e_74ff:
	sbc  h                                           ; $74ff: $9c
	cp   a                                           ; $7500: $bf

jr_07e_7501:
	ccf                                              ; $7501: $3f
	adc  e                                           ; $7502: $8b
	rlca                                             ; $7503: $07
	dec  b                                           ; $7504: $05
	db   $10                                         ; $7505: $10
	db   $eb                                         ; $7506: $eb
	jr   z, jr_07e_74f4                              ; $7507: $28 $eb

	xor  c                                           ; $7509: $a9
	xor  d                                           ; $750a: $aa
	add  b                                           ; $750b: $80
	add  hl, hl                                      ; $750c: $29
	add  b                                           ; $750d: $80
	ld   a, [hl+]                                    ; $750e: $2a
	dec  c                                           ; $750f: $0d
	add  hl, hl                                      ; $7510: $29
	jp   hl                                          ; $7511: $e9


	add  d                                           ; $7512: $82
	rst  $38                                         ; $7513: $ff
	ld   a, a                                        ; $7514: $7f

jr_07e_7515:
	add  d                                           ; $7515: $82
	sbc  b                                           ; $7516: $98
	ei                                               ; $7517: $fb
	jr   jr_07e_7515                                 ; $7518: $18 $fb

	ld   e, b                                        ; $751a: $58
	cp   e                                           ; $751b: $bb
	ld   e, b                                        ; $751c: $58
	ld   e, e                                        ; $751d: $5b
	add  b                                           ; $751e: $80
	sbc  e                                           ; $751f: $9b
	add  b                                           ; $7520: $80
	ld   a, [de]                                     ; $7521: $1a
	dec  c                                           ; $7522: $0d
	add  hl, de                                      ; $7523: $19
	ld   sp, hl                                      ; $7524: $f9
	sbc  d                                           ; $7525: $9a
	ld   a, [$ff9c]                                  ; $7526: $fa $9c $ff
	ccf                                              ; $7529: $3f
	rst  $38                                         ; $752a: $ff
	ld   a, a                                        ; $752b: $7f
	rst  $10                                         ; $752c: $d7
	rla                                              ; $752d: $17
	rst  $38                                         ; $752e: $ff
	ccf                                              ; $752f: $3f
	ld   d, a                                        ; $7530: $57
	add  b                                           ; $7531: $80
	sub  a                                           ; $7532: $97
	add  d                                           ; $7533: $82
	rla                                              ; $7534: $17
	ld   de, $c0e8                                   ; $7535: $11 $e8 $c0
	or   b                                           ; $7538: $b0
	ldh  a, [rAUD4LEN]                               ; $7539: $f0 $20
	ldh  [$30], a                                    ; $753b: $e0 $30
	ldh  a, [rAUD4LEN]                               ; $753d: $f0 $20
	ldh  [$30], a                                    ; $753f: $e0 $30
	ldh  a, [rAUD4ENV]                               ; $7541: $f0 $21
	pop  hl                                          ; $7543: $e1
	inc  sp                                          ; $7544: $33
	di                                               ; $7545: $f3
	inc  bc                                          ; $7546: $03
	add  e                                           ; $7547: $83
	add  b                                           ; $7548: $80
	cp   h                                           ; $7549: $bc
	add  [hl]                                        ; $754a: $86
	cp   a                                           ; $754b: $bf
	add  b                                           ; $754c: $80
	sbc  a                                           ; $754d: $9f
	add  b                                           ; $754e: $80
	daa                                              ; $754f: $27
	add  b                                           ; $7550: $80
	db   $fc                                         ; $7551: $fc
	dec  bc                                          ; $7552: $0b
	ld   hl, sp-$05                                  ; $7553: $f8 $fb
	db   $e3                                         ; $7555: $e3
	rst  $20                                         ; $7556: $e7
	rst  $30                                         ; $7557: $f7
	db   $f4                                         ; $7558: $f4
	sub  h                                           ; $7559: $94
	db   $e4                                         ; $755a: $e4
	ld   b, h                                        ; $755b: $44

jr_07e_755c:
	call nz, $8a84                                   ; $755c: $c4 $84 $8a
	add  b                                           ; $755f: $80
	ld   [bc], a                                     ; $7560: $02
	ld   bc, $80e5                                   ; $7561: $01 $e5 $80
	add  b                                           ; $7564: $80
	add  h                                           ; $7565: $84
	nop                                              ; $7566: $00
	sbc  [hl]                                        ; $7567: $9e
	add  d                                           ; $7568: $82
	adc  $03                                         ; $7569: $ce $03
	ld   l, [hl]                                     ; $756b: $6e
	ld   l, a                                        ; $756c: $6f
	ld   h, a                                        ; $756d: $67
	ld   b, a                                        ; $756e: $47
	add  b                                           ; $756f: $80
	ld   h, $02                                      ; $7570: $26 $02
	jr   nz, jr_07e_7576                             ; $7572: $20 $02

	ld   h, d                                        ; $7574: $62
	add  b                                           ; $7575: $80

jr_07e_7576:
	ld   h, e                                        ; $7576: $63
	inc  bc                                          ; $7577: $03
	ldh  [hScriptOpcodeParams], a                                    ; $7578: $e0 $a0
	ret  nz                                          ; $757a: $c0

	ld   h, b                                        ; $757b: $60
	add  b                                           ; $757c: $80
	jr   nz, jr_07e_74ff                             ; $757d: $20 $80

	inc  bc                                          ; $757f: $03
	ld   bc, $0f8f                                   ; $7580: $01 $8f $0f
	add  b                                           ; $7583: $80
	jr   nc, jr_07e_7586                             ; $7584: $30 $00

jr_07e_7586:
	rrca                                             ; $7586: $0f
	add  b                                           ; $7587: $80
	ld   [hl], b                                     ; $7588: $70
	add  l                                           ; $7589: $85
	nop                                              ; $758a: $00
	add  b                                           ; $758b: $80
	ldh  a, [$80]                                    ; $758c: $f0 $80
	add  b                                           ; $758e: $80
	add  b                                           ; $758f: $80
	nop                                              ; $7590: $00
	inc  bc                                          ; $7591: $03
	db   $ec                                         ; $7592: $ec
	db   $e3                                         ; $7593: $e3
	dec  e                                           ; $7594: $1d
	rra                                              ; $7595: $1f
	add  b                                           ; $7596: $80
	ei                                               ; $7597: $fb
	ld   [de], a                                     ; $7598: $12
	xor  e                                           ; $7599: $ab
	db   $eb                                         ; $759a: $eb
	jp   hl                                          ; $759b: $e9


	db   $eb                                         ; $759c: $eb
	jp   hl                                          ; $759d: $e9


	db   $eb                                         ; $759e: $eb
	xor  e                                           ; $759f: $ab
	db   $eb                                         ; $75a0: $eb
	xor  e                                           ; $75a1: $ab
	db   $eb                                         ; $75a2: $eb
	jp   c, $f8fb                                    ; $75a3: $da $fb $f8

	ei                                               ; $75a6: $fb
	ret  c                                           ; $75a7: $d8

	ei                                               ; $75a8: $fb
	cp   e                                           ; $75a9: $bb
	ei                                               ; $75aa: $fb
	sbc  e                                           ; $75ab: $9b
	add  c                                           ; $75ac: $81
	ei                                               ; $75ad: $fb
	ld   bc, $fb7b                                   ; $75ae: $01 $7b $fb
	add  b                                           ; $75b1: $80
	ld   a, [$9c07]                                  ; $75b2: $fa $07 $9c
	rst  $38                                         ; $75b5: $ff
	rst  $10                                         ; $75b6: $d7
	rst  $38                                         ; $75b7: $ff
	rla                                              ; $75b8: $17
	rst  $30                                         ; $75b9: $f7
	rla                                              ; $75ba: $17
	rst  $30                                         ; $75bb: $f7
	add  b                                           ; $75bc: $80
	rst  JumpTable                                         ; $75bd: $df
	ld   bc, $b7d7                                   ; $75be: $01 $d7 $b7
	add  b                                           ; $75c1: $80
	scf                                              ; $75c2: $37
	add  b                                           ; $75c3: $80
	ld   [hl], a                                     ; $75c4: $77
	nop                                              ; $75c5: $00
	rst  ToBoot                                         ; $75c6: $c7
	adc  l                                           ; $75c7: $8d
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	db   $e4                                         ; $75ca: $e4
	add  h                                           ; $75cb: $84
	jr   z, jr_07e_75ce                              ; $75cc: $28 $00

jr_07e_75ce:
	db   $eb                                         ; $75ce: $eb
	add  b                                           ; $75cf: $80
	rst  $38                                         ; $75d0: $ff
	add  b                                           ; $75d1: $80
	nop                                              ; $75d2: $00
	add  b                                           ; $75d3: $80
	db   $eb                                         ; $75d4: $eb
	ld   [bc], a                                     ; $75d5: $02
	dec  hl                                          ; $75d6: $2b
	db   $eb                                         ; $75d7: $eb
	dec  sp                                          ; $75d8: $3b
	add  h                                           ; $75d9: $84
	jr   jr_07e_755c                                 ; $75da: $18 $80

	ld   hl, sp+$00                                  ; $75dc: $f8 $00
	ei                                               ; $75de: $fb
	add  b                                           ; $75df: $80
	rst  $38                                         ; $75e0: $ff
	add  b                                           ; $75e1: $80
	nop                                              ; $75e2: $00
	add  b                                           ; $75e3: $80
	ei                                               ; $75e4: $fb
	nop                                              ; $75e5: $00
	rst  $38                                         ; $75e6: $ff
	add  [hl]                                        ; $75e7: $86
	rlca                                             ; $75e8: $07
	add  c                                           ; $75e9: $81
	rst  $38                                         ; $75ea: $ff
	add  b                                           ; $75eb: $80
	ccf                                              ; $75ec: $3f
	add  b                                           ; $75ed: $80
	jp   $0000                                      ; $75ee: $c3 $00 $00


	add  b                                           ; $75f1: $80
	ld   a, l                                        ; $75f2: $7d
	ld   [de], a                                     ; $75f3: $12
	ld   a, c                                        ; $75f4: $79
	ld   a, b                                        ; $75f5: $78
	ld   [hl], b                                     ; $75f6: $70
	ld   [hl], d                                     ; $75f7: $72
	ld   h, c                                        ; $75f8: $61
	ld   l, [hl]                                     ; $75f9: $6e
	ld   h, l                                        ; $75fa: $65
	ld   e, c                                        ; $75fb: $59
	ld   d, d                                        ; $75fc: $52
	and  d                                           ; $75fd: $a2
	ld   c, h                                        ; $75fe: $4c
	adc  h                                           ; $75ff: $8c
	jr   nc, @-$33                                   ; $7600: $30 $cb

	ld   a, e                                        ; $7602: $7b
	ei                                               ; $7603: $fb
	ld   hl, sp+$1c                                  ; $7604: $f8 $1c
	sbc  a                                           ; $7606: $9f
	add  b                                           ; $7607: $80
	and  e                                           ; $7608: $a3
	add  b                                           ; $7609: $80
	cp   h                                           ; $760a: $bc
	add  b                                           ; $760b: $80
	add  a                                           ; $760c: $87
	add  b                                           ; $760d: $80
	cp   b                                           ; $760e: $b8
	add  b                                           ; $760f: $80
	cp   a                                           ; $7610: $bf
	rlca                                             ; $7611: $07
	rst  $38                                         ; $7612: $ff
	rst  $10                                         ; $7613: $d7
	sub  a                                           ; $7614: $97
	ld   a, a                                        ; $7615: $7f
	ccf                                              ; $7616: $3f
	rst  $10                                         ; $7617: $d7
	rst  JumpTable                                         ; $7618: $df
	rst  $30                                         ; $7619: $f7
	add  b                                           ; $761a: $80
	rla                                              ; $761b: $17
	add  b                                           ; $761c: $80
	rst  $20                                         ; $761d: $e7
	add  b                                           ; $761e: $80
	ccf                                              ; $761f: $3f
	add  b                                           ; $7620: $80
	rst  ToBoot                                         ; $7621: $c7
	inc  bc                                          ; $7622: $03
	sub  b                                           ; $7623: $90
	pop  de                                          ; $7624: $d1
	db   $dd                                         ; $7625: $dd
	sbc  l                                           ; $7626: $9d
	add  b                                           ; $7627: $80
	rst  JumpTable                                         ; $7628: $df
	add  b                                           ; $7629: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $762a: $cf
	add  e                                           ; $762b: $83
	ld   bc, $0081                                   ; $762c: $01 $81 $00
	nop                                              ; $762f: $00
	rst  $38                                         ; $7630: $ff
	rst  $38                                         ; $7631: $ff
	nop                                              ; $7632: $00
	rst  $38                                         ; $7633: $ff
	nop                                              ; $7634: $00
	rst  $38                                         ; $7635: $ff
	nop                                              ; $7636: $00
	rst  $38                                         ; $7637: $ff
	nop                                              ; $7638: $00
	rst  $38                                         ; $7639: $ff
	nop                                              ; $763a: $00
	rst  $38                                         ; $763b: $ff
	nop                                              ; $763c: $00
	rst  $38                                         ; $763d: $ff
	nop                                              ; $763e: $00
	rst  $38                                         ; $763f: $ff
	nop                                              ; $7640: $00
	add  l                                           ; $7641: $85
	nop                                              ; $7642: $00
	inc  hl                                          ; $7643: $23
	ld   bc, $0000                                   ; $7644: $01 $00 $00
	add  a                                           ; $7647: $87
	rrca                                             ; $7648: $0f
	add  b                                           ; $7649: $80
	rlca                                             ; $764a: $07
	add  e                                           ; $764b: $83
	rrca                                             ; $764c: $0f
	add  c                                           ; $764d: $81
	rst  $38                                         ; $764e: $ff
	add  b                                           ; $764f: $80
	ld   [$2280], a                                  ; $7650: $ea $80 $22
	add  hl, bc                                      ; $7653: $09
	ldh  a, [rIE]                                    ; $7654: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7656: $cf
	rst  JumpTable                                         ; $7657: $df
	sbc  a                                           ; $7658: $9f
	rst  $38                                         ; $7659: $ff
	ld   a, a                                        ; $765a: $7f
	rst  $38                                         ; $765b: $ff
	ld   a, b                                        ; $765c: $78
	add  a                                           ; $765d: $87
	add  b                                           ; $765e: $80
	rrca                                             ; $765f: $0f
	add  b                                           ; $7660: $80
	ld   e, $80                                      ; $7661: $1e $80
	dec  a                                           ; $7663: $3d
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	add  l                                           ; $7666: $85
	rst  $38                                         ; $7667: $ff
	ld   bc, $9f60                                   ; $7668: $01 $60 $9f
	add  b                                           ; $766b: $80
	ld   a, a                                        ; $766c: $7f
	add  b                                           ; $766d: $80
	rst  $38                                         ; $766e: $ff
	add  b                                           ; $766f: $80
	cp   $00                                         ; $7670: $fe $00
	nop                                              ; $7672: $00
	add  l                                           ; $7673: $85
	rst  $38                                         ; $7674: $ff
	ld   bc, $de21                                   ; $7675: $01 $21 $de
	add  b                                           ; $7678: $80
	cp   h                                           ; $7679: $bc
	add  b                                           ; $767a: $80
	ld   a, d                                        ; $767b: $7a
	add  b                                           ; $767c: $80
	pop  af                                          ; $767d: $f1
	add  hl, bc                                      ; $767e: $09
	nop                                              ; $767f: $00
	rst  $38                                         ; $7680: $ff
	db   $fd                                         ; $7681: $fd
	db   $fc                                         ; $7682: $fc
	ld   sp, hl                                      ; $7683: $f9
	ld   hl, sp-$10                                  ; $7684: $f8 $f0
	ldh  [$ce], a                                    ; $7686: $e0 $ce
	ld   hl, $0580                                   ; $7688: $21 $80 $05
	add  b                                           ; $768b: $80
	rst  $38                                         ; $768c: $ff
	add  b                                           ; $768d: $80
	ld   a, a                                        ; $768e: $7f
	ld   [$ff00], sp                                 ; $768f: $08 $00 $ff
	inc  de                                          ; $7692: $13
	inc  bc                                          ; $7693: $03
	rst  $30                                         ; $7694: $f7
	rlca                                             ; $7695: $07
	rst  $28                                         ; $7696: $ef
	rrca                                             ; $7697: $0f
	nop                                              ; $7698: $00
	add  l                                           ; $7699: $85
	rst  $38                                         ; $769a: $ff
	ld   [$ff00], sp                                 ; $769b: $08 $00 $ff
	db   $f4                                         ; $769e: $f4
	ldh  a, [$e7]                                    ; $769f: $f0 $e7
	ldh  [$c3], a                                    ; $76a1: $e0 $c3
	ret  nz                                          ; $76a3: $c0

	nop                                              ; $76a4: $00
	add  l                                           ; $76a5: $85
	rst  $38                                         ; $76a6: $ff
	add  hl, bc                                      ; $76a7: $09
	nop                                              ; $76a8: $00
	rst  $38                                         ; $76a9: $ff
	ld   e, a                                        ; $76aa: $5f
	rra                                              ; $76ab: $1f
	rst  $38                                         ; $76ac: $ff
	ccf                                              ; $76ad: $3f
	cp   a                                           ; $76ae: $bf
	ccf                                              ; $76af: $3f
	or   c                                           ; $76b0: $b1
	ld   c, [hl]                                     ; $76b1: $4e
	add  b                                           ; $76b2: $80
	rst  $38                                         ; $76b3: $ff
	add  b                                           ; $76b4: $80
	ld   b, b                                        ; $76b5: $40
	add  b                                           ; $76b6: $80
	inc  bc                                          ; $76b7: $03
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	add  l                                           ; $76ba: $85
	rst  $38                                         ; $76bb: $ff
	ld   bc, $c03f                                   ; $76bc: $01 $3f $c0
	add  b                                           ; $76bf: $80
	add  d                                           ; $76c0: $82
	add  e                                           ; $76c1: $83
	nop                                              ; $76c2: $00
	add  l                                           ; $76c3: $85
	rst  $38                                         ; $76c4: $ff
	ld   bc, $7b84                                   ; $76c5: $01 $84 $7b
	add  b                                           ; $76c8: $80
	inc  de                                          ; $76c9: $13
	add  b                                           ; $76ca: $80
	ld   [de], a                                     ; $76cb: $12
	add  c                                           ; $76cc: $81
	nop                                              ; $76cd: $00
	add  l                                           ; $76ce: $85
	rst  $38                                         ; $76cf: $ff
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	add  c                                           ; $76d2: $81
	rst  $38                                         ; $76d3: $ff
	add  b                                           ; $76d4: $80
	cp   a                                           ; $76d5: $bf
	add  b                                           ; $76d6: $80
	daa                                              ; $76d7: $27
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	add  l                                           ; $76da: $85
	rst  $38                                         ; $76db: $ff
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	add  e                                           ; $76de: $83
	rst  $38                                         ; $76df: $ff
	add  b                                           ; $76e0: $80
	cp   $00                                         ; $76e1: $fe $00
	nop                                              ; $76e3: $00
	add  l                                           ; $76e4: $85
	rst  $38                                         ; $76e5: $ff
	ld   bc, $f807                                   ; $76e6: $01 $07 $f8
	add  b                                           ; $76e9: $80
	sbc  d                                           ; $76ea: $9a
	add  b                                           ; $76eb: $80
	rst  $38                                         ; $76ec: $ff
	add  b                                           ; $76ed: $80
	ld   [hl+], a                                    ; $76ee: $22
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	add  l                                           ; $76f1: $85
	rst  $38                                         ; $76f2: $ff
	ld   bc, $37c8                                   ; $76f3: $01 $c8 $37
	add  b                                           ; $76f6: $80
	inc  hl                                          ; $76f7: $23
	add  b                                           ; $76f8: $80
	ld   bc, $7880                                   ; $76f9: $01 $80 $78
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	add  l                                           ; $76fe: $85
	rst  $38                                         ; $76ff: $ff
	ld   bc, $bf40                                   ; $7700: $01 $40 $bf
	add  b                                           ; $7703: $80
	rst  JumpTable                                         ; $7704: $df
	add  b                                           ; $7705: $80
	rst  $28                                         ; $7706: $ef
	add  b                                           ; $7707: $80
	rst  $30                                         ; $7708: $f7
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	add  l                                           ; $770b: $85

jr_07e_770c:
	rst  $38                                         ; $770c: $ff
	inc  b                                           ; $770d: $04
	ld   bc, $090f                                   ; $770e: $01 $0f $09
	rrca                                             ; $7711: $0f
	rlca                                             ; $7712: $07
	adc  c                                           ; $7713: $89
	rrca                                             ; $7714: $0f
	jr   nz, jr_07e_770c                             ; $7715: $20 $f5

	rst  $38                                         ; $7717: $ff
	and  b                                           ; $7718: $a0
	rst  $38                                         ; $7719: $ff
	dec  b                                           ; $771a: $05
	rst  $38                                         ; $771b: $ff
	dec  b                                           ; $771c: $05
	rst  $38                                         ; $771d: $ff
	dec  d                                           ; $771e: $15
	rst  $38                                         ; $771f: $ff
	dec  d                                           ; $7720: $15
	rst  $38                                         ; $7721: $ff
	dec  b                                           ; $7722: $05
	rst  $38                                         ; $7723: $ff
	dec  b                                           ; $7724: $05
	rst  $38                                         ; $7725: $ff
	ld   [bc], a                                     ; $7726: $02
	rst  $38                                         ; $7727: $ff
	inc  bc                                          ; $7728: $03
	rst  $38                                         ; $7729: $ff
	ld   b, c                                        ; $772a: $41
	rst  $38                                         ; $772b: $ff
	ld   b, b                                        ; $772c: $40
	rst  $38                                         ; $772d: $ff
	ld   d, l                                        ; $772e: $55
	rst  $38                                         ; $772f: $ff
	ld   d, l                                        ; $7730: $55
	rst  $38                                         ; $7731: $ff
	ld   d, l                                        ; $7732: $55
	rst  $38                                         ; $7733: $ff
	ld   d, l                                        ; $7734: $55
	rst  $38                                         ; $7735: $ff
	xor  d                                           ; $7736: $aa
	add  c                                           ; $7737: $81
	rst  $38                                         ; $7738: $ff
	ld   de, $ff7f                                   ; $7739: $11 $7f $ff
	ccf                                              ; $773c: $3f
	cp   $1f                                         ; $773d: $fe $1f
	db   $fc                                         ; $773f: $fc
	ld   c, $f8                                      ; $7740: $0e $f8
	dec  bc                                          ; $7742: $0b
	ldh  a, [rAUD1SWEEP]                             ; $7743: $f0 $10
	ldh  [$bf], a                                    ; $7745: $e0 $bf
	ret  nz                                          ; $7747: $c0

	ldh  [$80], a                                    ; $7748: $e0 $80
	ret  nz                                          ; $774a: $c0

	nop                                              ; $774b: $00
	add  b                                           ; $774c: $80
	ld   a, a                                        ; $774d: $7f
	nop                                              ; $774e: $00
	add  b                                           ; $774f: $80
	add  b                                           ; $7750: $80
	nop                                              ; $7751: $00
	ld   [bc], a                                     ; $7752: $02
	ld   bc, $01ff                                   ; $7753: $01 $ff $01
	add  b                                           ; $7756: $80
	inc  bc                                          ; $7757: $03
	dec  c                                           ; $7758: $0d
	rst  $38                                         ; $7759: $ff
	rra                                              ; $775a: $1f
	ld   e, $3e                                      ; $775b: $1e $3e
	dec  a                                           ; $775d: $3d
	inc  a                                           ; $775e: $3c
	cp   c                                           ; $775f: $b9
	ld   sp, hl                                      ; $7760: $f9
	ld   [hl], d                                     ; $7761: $72
	ldh  a, [$e4]                                    ; $7762: $f0 $e4
	ldh  [$c7], a                                    ; $7764: $e0 $c7
	ret  nz                                          ; $7766: $c0

	add  b                                           ; $7767: $80
	add  b                                           ; $7768: $80
	ld   [bc], a                                     ; $7769: $02
	ld   a, a                                        ; $776a: $7f
	nop                                              ; $776b: $00
	add  b                                           ; $776c: $80
	add  c                                           ; $776d: $81
	nop                                              ; $776e: $00
	ld   [hl-], a                                    ; $776f: $32
	db   $fc                                         ; $7770: $fc
	db   $fd                                         ; $7771: $fd
	nop                                              ; $7772: $00
	inc  bc                                          ; $7773: $03
	nop                                              ; $7774: $00
	inc  bc                                          ; $7775: $03
	db   $fc                                         ; $7776: $fc
	rlca                                             ; $7777: $07
	nop                                              ; $7778: $00
	rrca                                             ; $7779: $0f
	and  b                                           ; $777a: $a0
	ld   a, a                                        ; $777b: $7f
	add  b                                           ; $777c: $80
	rst  $38                                         ; $777d: $ff
	nop                                              ; $777e: $00
	rst  $38                                         ; $777f: $ff
	nop                                              ; $7780: $00
	rst  $38                                         ; $7781: $ff
	dec  b                                           ; $7782: $05
	rst  $38                                         ; $7783: $ff
	dec  b                                           ; $7784: $05
	rst  $38                                         ; $7785: $ff
	dec  d                                           ; $7786: $15
	rst  $38                                         ; $7787: $ff
	dec  d                                           ; $7788: $15
	rst  $38                                         ; $7789: $ff
	nop                                              ; $778a: $00
	rst  $38                                         ; $778b: $ff
	nop                                              ; $778c: $00
	rst  $38                                         ; $778d: $ff
	dec  d                                           ; $778e: $15
	rst  $38                                         ; $778f: $ff
	dec  d                                           ; $7790: $15
	rst  $38                                         ; $7791: $ff
	ld   d, l                                        ; $7792: $55
	rst  $38                                         ; $7793: $ff
	ld   d, a                                        ; $7794: $57
	rst  $38                                         ; $7795: $ff
	ld   d, a                                        ; $7796: $57
	rst  $38                                         ; $7797: $ff
	ld   e, a                                        ; $7798: $5f
	rst  $38                                         ; $7799: $ff
	ld   a, [bc]                                     ; $779a: $0a
	rst  $38                                         ; $779b: $ff
	nop                                              ; $779c: $00
	rst  $38                                         ; $779d: $ff
	ld   d, l                                        ; $779e: $55
	rst  $38                                         ; $779f: $ff
	ld   d, l                                        ; $77a0: $55
	rst  $38                                         ; $77a1: $ff
	ld   d, l                                        ; $77a2: $55
	add  l                                           ; $77a3: $85
	rst  $38                                         ; $77a4: $ff
	ld   [$ffaa], sp                                 ; $77a5: $08 $aa $ff
	nop                                              ; $77a8: $00
	rst  $38                                         ; $77a9: $ff
	ld   d, l                                        ; $77aa: $55
	rst  $38                                         ; $77ab: $ff
	ld   a, a                                        ; $77ac: $7f
	rst  $38                                         ; $77ad: $ff
	ld   a, a                                        ; $77ae: $7f
	add  l                                           ; $77af: $85
	rst  $38                                         ; $77b0: $ff
	inc  b                                           ; $77b1: $04
	xor  d                                           ; $77b2: $aa
	rst  $38                                         ; $77b3: $ff
	nop                                              ; $77b4: $00
	rst  $38                                         ; $77b5: $ff
	ld   d, l                                        ; $77b6: $55
	adc  c                                           ; $77b7: $89
	rst  $38                                         ; $77b8: $ff
	ld   [$ffaa], sp                                 ; $77b9: $08 $aa $ff
	nop                                              ; $77bc: $00
	rst  $38                                         ; $77bd: $ff
	ld   d, l                                        ; $77be: $55
	rst  $38                                         ; $77bf: $ff
	push af                                          ; $77c0: $f5
	rst  $38                                         ; $77c1: $ff
	push af                                          ; $77c2: $f5
	add  l                                           ; $77c3: $85
	rst  $38                                         ; $77c4: $ff
	ld   [$ffaa], sp                                 ; $77c5: $08 $aa $ff
	nop                                              ; $77c8: $00
	rst  $38                                         ; $77c9: $ff
	ld   b, b                                        ; $77ca: $40
	rst  $38                                         ; $77cb: $ff
	ld   b, b                                        ; $77cc: $40
	rst  $38                                         ; $77cd: $ff
	ld   d, l                                        ; $77ce: $55
	add  l                                           ; $77cf: $85
	rst  $38                                         ; $77d0: $ff
	inc  c                                           ; $77d1: $0c
	nop                                              ; $77d2: $00
	rst  $38                                         ; $77d3: $ff
	xor  a                                           ; $77d4: $af
	rst  $38                                         ; $77d5: $ff
	dec  b                                           ; $77d6: $05
	rst  $38                                         ; $77d7: $ff
	nop                                              ; $77d8: $00
	rst  $38                                         ; $77d9: $ff
	ld   b, b                                        ; $77da: $40
	rst  $38                                         ; $77db: $ff
	ldh  [rIE], a                                    ; $77dc: $e0 $ff
	push af                                          ; $77de: $f5
	add  c                                           ; $77df: $81
	rst  $38                                         ; $77e0: $ff
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	add  c                                           ; $77e3: $81
	rst  $38                                         ; $77e4: $ff
	inc  c                                           ; $77e5: $0c
	ld   a, a                                        ; $77e6: $7f
	rst  $38                                         ; $77e7: $ff
	ccf                                              ; $77e8: $3f
	rst  $38                                         ; $77e9: $ff
	rla                                              ; $77ea: $17
	rst  $38                                         ; $77eb: $ff
	ld   [bc], a                                     ; $77ec: $02
	rst  $38                                         ; $77ed: $ff
	nop                                              ; $77ee: $00
	rst  $38                                         ; $77ef: $ff
	nop                                              ; $77f0: $00
	rst  $38                                         ; $77f1: $ff
	ld   d, l                                        ; $77f2: $55
	add  l                                           ; $77f3: $85
	nop                                              ; $77f4: $00
	ld   bc, $28d7                                   ; $77f5: $01 $d7 $28
	add  b                                           ; $77f8: $80
	sub  h                                           ; $77f9: $94
	add  b                                           ; $77fa: $80
	xor  b                                           ; $77fb: $a8
	add  b                                           ; $77fc: $80
	sub  h                                           ; $77fd: $94
	nop                                              ; $77fe: $00
	rst  $38                                         ; $77ff: $ff
	add  l                                           ; $7800: $85
	nop                                              ; $7801: $00
	ld   bc, $a857                                   ; $7802: $01 $57 $a8
	add  b                                           ; $7805: $80
	ld   d, h                                        ; $7806: $54
	add  b                                           ; $7807: $80
	xor  b                                           ; $7808: $a8
	add  b                                           ; $7809: $80
	ld   d, h                                        ; $780a: $54
	nop                                              ; $780b: $00
	rst  $38                                         ; $780c: $ff
	add  l                                           ; $780d: $85
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	rst  $38                                         ; $7810: $ff
	add  l                                           ; $7811: $85
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	rst  $38                                         ; $7814: $ff
	add  l                                           ; $7815: $85

jr_07e_7816:
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	ldh  a, [$85]                                    ; $7818: $f0 $85

jr_07e_781a:
	nop                                              ; $781a: $00
	ld   bc, $b8b7                                   ; $781b: $01 $b7 $b8
	add  b                                           ; $781e: $80
	inc  a                                           ; $781f: $3c
	add  b                                           ; $7820: $80
	cp   b                                           ; $7821: $b8

jr_07e_7822:
	add  b                                           ; $7822: $80
	cp   h                                           ; $7823: $bc
	add  b                                           ; $7824: $80
	inc  a                                           ; $7825: $3c
	add  h                                           ; $7826: $84
	cp   h                                           ; $7827: $bc
	add  b                                           ; $7828: $80
	add  sp, -$80                                    ; $7829: $e8 $80
	db   $f4                                         ; $782b: $f4
	add  b                                           ; $782c: $80
	add  sp, -$80                                    ; $782d: $e8 $80
	db   $f4                                         ; $782f: $f4
	add  b                                           ; $7830: $80
	ld   hl, sp-$80                                  ; $7831: $f8 $80
	db   $f4                                         ; $7833: $f4
	add  b                                           ; $7834: $80
	ld   hl, sp-$80                                  ; $7835: $f8 $80
	db   $fc                                         ; $7837: $fc
	adc  [hl]                                        ; $7838: $8e
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	rrca                                             ; $783b: $0f
	adc  l                                           ; $783c: $8d
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	or   e                                           ; $783f: $b3
	adc  l                                           ; $7840: $8d
	cp   h                                           ; $7841: $bc
	adc  [hl]                                        ; $7842: $8e
	db   $fc                                         ; $7843: $fc
	nop                                              ; $7844: $00
	rst  $38                                         ; $7845: $ff
	add  c                                           ; $7846: $81
	rrca                                             ; $7847: $0f
	ld   [$0f0e], sp                                 ; $7848: $08 $0e $0f
	inc  c                                           ; $784b: $0c
	rrca                                             ; $784c: $0f
	inc  bc                                          ; $784d: $03
	rlca                                             ; $784e: $07
	ld   [bc], a                                     ; $784f: $02
	rlca                                             ; $7850: $07
	dec  c                                           ; $7851: $0d
	add  c                                           ; $7852: $81
	rrca                                             ; $7853: $0f
	db   $10                                         ; $7854: $10
	adc  $07                                         ; $7855: $ce $07
	adc  a                                           ; $7857: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7858: $cf
	ld   e, a                                        ; $7859: $5f
	rla                                              ; $785a: $17
	inc  bc                                          ; $785b: $03
	ld   h, a                                        ; $785c: $67
	ld   e, l                                        ; $785d: $5d
	ld   h, a                                        ; $785e: $67
	ld   l, a                                        ; $785f: $6f
	dec  [hl]                                        ; $7860: $35
	ldh  a, [$d4]                                    ; $7861: $f0 $d4
	ret  nc                                          ; $7863: $d0

	ret  z                                           ; $7864: $c8

	ld   [$0089], sp                                 ; $7865: $08 $89 $00
	add  b                                           ; $7868: $80
	ret  nz                                          ; $7869: $c0

	add  b                                           ; $786a: $80
	rst  $38                                         ; $786b: $ff
	add  d                                           ; $786c: $82
	db   $fc                                         ; $786d: $fc
	adc  d                                           ; $786e: $8a
	nop                                              ; $786f: $00
	ld   b, $fe                                      ; $7870: $06 $fe
	ld   c, $08                                      ; $7872: $0e $08
	inc  c                                           ; $7874: $0c
	ld   [$0c0e], sp                                 ; $7875: $08 $0e $0c
	add  c                                           ; $7878: $81
	rrca                                             ; $7879: $0f
	ld   bc, $0706                                   ; $787a: $01 $06 $07
	add  b                                           ; $787d: $80
	inc  bc                                          ; $787e: $03
	add  b                                           ; $787f: $80
	ld   [$010a], sp                                 ; $7880: $08 $0a $01
	pop  af                                          ; $7883: $f1
	ld   hl, sp-$07                                  ; $7884: $f8 $f9
	add  hl, sp                                      ; $7886: $39
	dec  a                                           ; $7887: $3d
	ld   a, c                                        ; $7888: $79
	ld   a, [hl]                                     ; $7889: $7e
	ld   a, d                                        ; $788a: $7a
	ld   a, [$80b2]                                  ; $788b: $fa $b2 $80
	ld   hl, sp+$04                                  ; $788e: $f8 $04
	jr   nc, jr_07e_78d2                             ; $7890: $30 $40

	ret  nz                                          ; $7892: $c0

	xor  b                                           ; $7893: $a8
	jr   z, jr_07e_7816                              ; $7894: $28 $80

	inc  d                                           ; $7896: $14
	add  b                                           ; $7897: $80
	jr   z, jr_07e_781a                              ; $7898: $28 $80

	inc  d                                           ; $789a: $14
	add  b                                           ; $789b: $80
	xor  b                                           ; $789c: $a8
	add  b                                           ; $789d: $80
	or   h                                           ; $789e: $b4
	add  b                                           ; $789f: $80
	jr   c, jr_07e_7822                              ; $78a0: $38 $80

	or   h                                           ; $78a2: $b4
	add  b                                           ; $78a3: $80
	xor  b                                           ; $78a4: $a8
	add  b                                           ; $78a5: $80
	ld   d, h                                        ; $78a6: $54
	add  b                                           ; $78a7: $80
	xor  b                                           ; $78a8: $a8
	add  b                                           ; $78a9: $80
	ld   d, h                                        ; $78aa: $54
	add  b                                           ; $78ab: $80
	xor  b                                           ; $78ac: $a8
	add  b                                           ; $78ad: $80
	ld   d, h                                        ; $78ae: $54
	add  b                                           ; $78af: $80

jr_07e_78b0:
	xor  b                                           ; $78b0: $a8
	add  b                                           ; $78b1: $80
	call nc, $f300                                   ; $78b2: $d4 $00 $f3
	add  c                                           ; $78b5: $81
	inc  bc                                          ; $78b6: $03
	add  d                                           ; $78b7: $82
	ld   b, $80                                      ; $78b8: $06 $80
	ld   a, [bc]                                     ; $78ba: $0a
	add  b                                           ; $78bb: $80
	inc  c                                           ; $78bc: $0c
	add  d                                           ; $78bd: $82
	ld   c, $00                                      ; $78be: $0e $00
	ldh  a, [$80]                                    ; $78c0: $f0 $80
	ld   e, $80                                      ; $78c2: $1e $80
	ld   [hl], a                                     ; $78c4: $77
	add  b                                           ; $78c5: $80
	rst  $30                                         ; $78c6: $f7
	add  h                                           ; $78c7: $84
	ei                                               ; $78c8: $fb
	add  b                                           ; $78c9: $80
	di                                               ; $78ca: $f3
	ld   [bc], a                                     ; $78cb: $02
	ld   [hl], e                                     ; $78cc: $73
	ld   c, a                                        ; $78cd: $4f
	inc  a                                           ; $78ce: $3c
	add  b                                           ; $78cf: $80
	cp   h                                           ; $78d0: $bc
	add  b                                           ; $78d1: $80

jr_07e_78d2:
	inc  a                                           ; $78d2: $3c
	adc  b                                           ; $78d3: $88
	cp   h                                           ; $78d4: $bc
	add  b                                           ; $78d5: $80
	ld   hl, sp-$74                                  ; $78d6: $f8 $8c
	db   $fc                                         ; $78d8: $fc
	nop                                              ; $78d9: $00
	rst  $38                                         ; $78da: $ff
	adc  e                                           ; $78db: $8b
	rrca                                             ; $78dc: $0f
	add  b                                           ; $78dd: $80
	ld   c, $00                                      ; $78de: $0e $00
	ldh  a, [$82]                                    ; $78e0: $f0 $82
	ld   [hl], e                                     ; $78e2: $73
	add  b                                           ; $78e3: $80
	ld   [hl], a                                     ; $78e4: $77
	ld   bc, $7273                                   ; $78e5: $01 $73 $72
	add  b                                           ; $78e8: $80
	ld   h, a                                        ; $78e9: $67
	ld   bc, $6163                                   ; $78ea: $01 $63 $61
	add  b                                           ; $78ed: $80
	ld   l, a                                        ; $78ee: $6f
	ld   bc, $58e7                                   ; $78ef: $01 $e7 $58
	add  c                                           ; $78f2: $81
	cp   h                                           ; $78f3: $bc
	add  b                                           ; $78f4: $80
	add  d                                           ; $78f5: $82
	add  b                                           ; $78f6: $80
	cp   l                                           ; $78f7: $bd
	add  b                                           ; $78f8: $80
	add  d                                           ; $78f9: $82
	add  b                                           ; $78fa: $80
	cp   l                                           ; $78fb: $bd
	add  d                                           ; $78fc: $82
	cp   h                                           ; $78fd: $bc
	add  h                                           ; $78fe: $84
	db   $fc                                         ; $78ff: $fc
	add  b                                           ; $7900: $80
	cp   $80                                         ; $7901: $fe $80
	nop                                              ; $7903: $00
	add  b                                           ; $7904: $80
	cp   $80                                         ; $7905: $fe $80
	nop                                              ; $7907: $00
	add  b                                           ; $7908: $80
	db   $fc                                         ; $7909: $fc
	ld   bc, $00f0                                   ; $790a: $01 $f0 $00
	add  b                                           ; $790d: $80
	ld   c, $01                                      ; $790e: $0e $01
	nop                                              ; $7910: $00
	ld   bc, $0d81                                   ; $7911: $01 $81 $0d
	nop                                              ; $7914: $00
	inc  c                                           ; $7915: $0c
	add  d                                           ; $7916: $82
	nop                                              ; $7917: $00
	add  b                                           ; $7918: $80
	ld   c, $01                                      ; $7919: $0e $01
	ldh  a, [$ec]                                    ; $791b: $f0 $ec
	add  b                                           ; $791d: $80
	rst  $28                                         ; $791e: $ef
	ld   bc, $dce8                                   ; $791f: $01 $e8 $dc
	add  b                                           ; $7922: $80
	sbc  $03                                         ; $7923: $de $03
	rst  $10                                         ; $7925: $d7
	cp   a                                           ; $7926: $bf

jr_07e_7927:
	or   l                                           ; $7927: $b5
	dec  b                                           ; $7928: $05
	add  b                                           ; $7929: $80
	inc  hl                                          ; $792a: $23
	add  b                                           ; $792b: $80
	rra                                              ; $792c: $1f
	add  [hl]                                        ; $792d: $86
	jr   nz, jr_07e_78b0                             ; $792e: $20 $80

	ld   hl, $2082                                   ; $7930: $21 $82 $20
	add  b                                           ; $7933: $80
	cp   $80                                         ; $7934: $fe $80
	db   $fc                                         ; $7936: $fc
	adc  h                                           ; $7937: $8c
	rst  $38                                         ; $7938: $ff
	add  b                                           ; $7939: $80
	nop                                              ; $793a: $00
	add  b                                           ; $793b: $80
	ldh  a, [$8a]                                    ; $793c: $f0 $8a
	rst  $38                                         ; $793e: $ff
	nop                                              ; $793f: $00
	rrca                                             ; $7940: $0f
	add  c                                           ; $7941: $81
	nop                                              ; $7942: $00
	add  b                                           ; $7943: $80
	ret  nz                                          ; $7944: $c0

	adc  c                                           ; $7945: $89
	ldh  a, [$85]                                    ; $7946: $f0 $85
	rst  $38                                         ; $7948: $ff
	add  hl, bc                                      ; $7949: $09
	rrca                                             ; $794a: $0f
	rst  $38                                         ; $794b: $ff
	rst  $30                                         ; $794c: $f7
	rst  $38                                         ; $794d: $ff
	ei                                               ; $794e: $fb
	rst  $38                                         ; $794f: $ff
	db   $fd                                         ; $7950: $fd
	rst  $38                                         ; $7951: $ff
	xor  c                                           ; $7952: $a9
	ld   d, a                                        ; $7953: $57
	add  b                                           ; $7954: $80
	ld   d, h                                        ; $7955: $54
	add  b                                           ; $7956: $80
	ld   b, d                                        ; $7957: $42
	inc  bc                                          ; $7958: $03
	jp   z, $18d2                                    ; $7959: $ca $d2 $18

	nop                                              ; $795c: $00

jr_07e_795d:
	add  b                                           ; $795d: $80
	ld   bc, $8380                                   ; $795e: $01 $80 $83
	inc  de                                          ; $7961: $13
	sra  e                                           ; $7962: $cb $2b
	add  b                                           ; $7964: $80
	sub  b                                           ; $7965: $90
	rrca                                             ; $7966: $0f
	adc  a                                           ; $7967: $8f
	ld   c, h                                        ; $7968: $4c
	inc  e                                           ; $7969: $1c
	add  hl, sp                                      ; $796a: $39
	jr   jr_07e_79a1                                 ; $796b: $18 $34

	scf                                              ; $796d: $37
	inc  l                                           ; $796e: $2c
	cpl                                              ; $796f: $2f
	ld   d, [hl]                                     ; $7970: $56
	ld   d, a                                        ; $7971: $57
	ld   c, [hl]                                     ; $7972: $4e
	ld   c, a                                        ; $7973: $4f
	dec  a                                           ; $7974: $3d
	inc  a                                           ; $7975: $3c
	add  b                                           ; $7976: $80
	cp   h                                           ; $7977: $bc
	add  e                                           ; $7978: $83
	inc  a                                           ; $7979: $3c
	rlca                                             ; $797a: $07
	cp   h                                           ; $797b: $bc
	inc  a                                           ; $797c: $3c
	cp   h                                           ; $797d: $bc
	inc  a                                           ; $797e: $3c
	cp   h                                           ; $797f: $bc
	inc  a                                           ; $7980: $3c
	cp   h                                           ; $7981: $bc
	nop                                              ; $7982: $00
	add  a                                           ; $7983: $87
	rst  $38                                         ; $7984: $ff
	rla                                              ; $7985: $17
	cp   a                                           ; $7986: $bf
	rst  $38                                         ; $7987: $ff
	rra                                              ; $7988: $1f
	rst  $38                                         ; $7989: $ff
	rra                                              ; $798a: $1f
	rst  $38                                         ; $798b: $ff
	ld   b, b                                        ; $798c: $40
	rst  $38                                         ; $798d: $ff
	ld   a, a                                        ; $798e: $7f
	rst  $38                                         ; $798f: $ff
	cp   a                                           ; $7990: $bf
	rst  $38                                         ; $7991: $ff
	rst  JumpTable                                         ; $7992: $df
	rst  $38                                         ; $7993: $ff
	rst  $20                                         ; $7994: $e7
	rst  $38                                         ; $7995: $ff
	ei                                               ; $7996: $fb
	rst  $38                                         ; $7997: $ff
	db   $fd                                         ; $7998: $fd
	rst  $38                                         ; $7999: $ff
	cp   $ff                                         ; $799a: $fe $ff
	ld   c, b                                        ; $799c: $48
	or   a                                           ; $799d: $b7
	add  b                                           ; $799e: $80
	sub  $80                                         ; $799f: $d6 $80

jr_07e_79a1:
	ld   a, e                                        ; $79a1: $7b
	add  b                                           ; $79a2: $80
	adc  $80                                         ; $79a3: $ce $80
	jr   nc, jr_07e_7927                             ; $79a5: $30 $80

	inc  a                                           ; $79a7: $3c
	add  b                                           ; $79a8: $80
	db   $ec                                         ; $79a9: $ec
	add  b                                           ; $79aa: $80
	jp   z, $9f80                                    ; $79ab: $ca $80 $9f

	nop                                              ; $79ae: $00
	rst  $38                                         ; $79af: $ff
	add  b                                           ; $79b0: $80
	ccf                                              ; $79b1: $3f
	add  c                                           ; $79b2: $81
	ld   a, a                                        ; $79b3: $7f
	ld   bc, $7fff                                   ; $79b4: $01 $ff $7f
	add  b                                           ; $79b7: $80
	ei                                               ; $79b8: $fb
	add  d                                           ; $79b9: $82
	rst  $30                                         ; $79ba: $f7
	ld   de, $bc5c                                   ; $79bb: $11 $5c $bc
	sbc  h                                           ; $79be: $9c
	call c, $5c9c                                    ; $79bf: $dc $9c $5c
	inc  e                                           ; $79c2: $1c
	sbc  h                                           ; $79c3: $9c
	call c, $1c5c                                    ; $79c4: $dc $5c $1c
	call c, $bcfc                                    ; $79c7: $dc $fc $bc
	call c, $aa3c                                    ; $79ca: $dc $3c $aa
	xor  b                                           ; $79cd: $a8
	add  b                                           ; $79ce: $80
	db   $ec                                         ; $79cf: $ec
	ld   bc, $3033                                   ; $79d0: $01 $33 $30
	add  b                                           ; $79d3: $80
	sub  [hl]                                        ; $79d4: $96
	ld   bc, $bebf                                   ; $79d5: $01 $bf $be
	add  b                                           ; $79d8: $80
	jr   jr_07e_795d                                 ; $79d9: $18 $82

	rst  $38                                         ; $79db: $ff
	add  b                                           ; $79dc: $80
	db   $ed                                         ; $79dd: $ed
	add  b                                           ; $79de: $80
	ld   c, d                                        ; $79df: $4a
	add  b                                           ; $79e0: $80
	dec  b                                           ; $79e1: $05
	add  b                                           ; $79e2: $80
	ld   [hl], b                                     ; $79e3: $70
	add  b                                           ; $79e4: $80
	ld   a, a                                        ; $79e5: $7f
	ld   b, $be                                      ; $79e6: $06 $be
	cp   a                                           ; $79e8: $bf
	cp   h                                           ; $79e9: $bc
	cp   a                                           ; $79ea: $bf
	cp   h                                           ; $79eb: $bc
	cp   a                                           ; $79ec: $bf
	cp   $ff                                         ; $79ed: $fe $ff
	nop                                              ; $79ef: $00
	rst  $38                                         ; $79f0: $ff
	nop                                              ; $79f1: $00
	rst  $38                                         ; $79f2: $ff
	nop                                              ; $79f3: $00
	rst  $38                                         ; $79f4: $ff
	nop                                              ; $79f5: $00
	rst  $38                                         ; $79f6: $ff
	nop                                              ; $79f7: $00
	rst  $38                                         ; $79f8: $ff
	nop                                              ; $79f9: $00
	rst  ToBoot                                         ; $79fa: $c7
	nop                                              ; $79fb: $00
	ld   [hl], d                                     ; $79fc: $72
	ld   bc, $0086                                   ; $79fd: $01 $86 $00
	nop                                              ; $7a00: $00
	rrca                                             ; $7a01: $0f
	add  b                                           ; $7a02: $80
	ld   bc, $0083                                   ; $7a03: $01 $83 $00
	nop                                              ; $7a06: $00
	rrca                                             ; $7a07: $0f
	add  l                                           ; $7a08: $85
	nop                                              ; $7a09: $00
	add  b                                           ; $7a0a: $80
	rst  ToBoot                                         ; $7a0b: $c7
	ld   [bc], a                                     ; $7a0c: $02
	ld   hl, sp+$38                                  ; $7a0d: $f8 $38
	scf                                              ; $7a0f: $37
	add  b                                           ; $7a10: $80
	rla                                              ; $7a11: $17
	ld   bc, $d720                                   ; $7a12: $01 $20 $d7
	add  l                                           ; $7a15: $85
	nop                                              ; $7a16: $00
	add  b                                           ; $7a17: $80
	sbc  a                                           ; $7a18: $9f
	add  b                                           ; $7a19: $80
	add  c                                           ; $7a1a: $81
	add  b                                           ; $7a1b: $80
	adc  $02                                         ; $7a1c: $ce $02
	ld   hl, sp+$78                                  ; $7a1e: $f8 $78
	add  b                                           ; $7a20: $80
	add  l                                           ; $7a21: $85
	nop                                              ; $7a22: $00
	ld   bc, $7e7b                                   ; $7a23: $01 $7b $7e
	add  b                                           ; $7a26: $80
	adc  $82                                         ; $7a27: $ce $82
	rrca                                             ; $7a29: $0f
	nop                                              ; $7a2a: $00
	dec  b                                           ; $7a2b: $05
	add  l                                           ; $7a2c: $85
	nop                                              ; $7a2d: $00
	ld   [$8778], sp                                 ; $7a2e: $08 $78 $87
	ld   hl, sp+$00                                  ; $7a31: $f8 $00
	add  a                                           ; $7a33: $87
	rrca                                             ; $7a34: $0f
	or   a                                           ; $7a35: $b7
	rst  ToBoot                                         ; $7a36: $c7
	rst  $38                                         ; $7a37: $ff
	add  l                                           ; $7a38: $85
	nop                                              ; $7a39: $00
	ld   bc, $c738                                   ; $7a3a: $01 $38 $c7
	add  b                                           ; $7a3d: $80
	ld   a, b                                        ; $7a3e: $78
	add  b                                           ; $7a3f: $80
	add  a                                           ; $7a40: $87
	add  b                                           ; $7a41: $80
	ld   hl, sp+$00                                  ; $7a42: $f8 $00
	rst  $38                                         ; $7a44: $ff
	add  l                                           ; $7a45: $85
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	ld   h, c                                        ; $7a48: $61
	add  l                                           ; $7a49: $85
	sbc  $00                                         ; $7a4a: $de $00
	cp   a                                           ; $7a4c: $bf
	add  l                                           ; $7a4d: $85
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	ldh  a, [$85]                                    ; $7a50: $f0 $85
	nop                                              ; $7a52: $00
	dec  b                                           ; $7a53: $05
	rst  $38                                         ; $7a54: $ff
	nop                                              ; $7a55: $00
	ld   [$0200], sp                                 ; $7a56: $08 $00 $02
	dec  b                                           ; $7a59: $05
	add  b                                           ; $7a5a: $80
	rlca                                             ; $7a5b: $07
	add  b                                           ; $7a5c: $80
	dec  b                                           ; $7a5d: $05
	add  b                                           ; $7a5e: $80
	rlca                                             ; $7a5f: $07
	inc  b                                           ; $7a60: $04
	dec  b                                           ; $7a61: $05
	dec  c                                           ; $7a62: $0d
	rlca                                             ; $7a63: $07
	nop                                              ; $7a64: $00
	ldh  a, [$81]                                    ; $7a65: $f0 $81
	nop                                              ; $7a67: $00
	ld   [bc], a                                     ; $7a68: $02
	and  b                                           ; $7a69: $a0
	ld   b, b                                        ; $7a6a: $40
	ld   e, a                                        ; $7a6b: $5f
	add  l                                           ; $7a6c: $85
	ld   b, b                                        ; $7a6d: $40
	dec  bc                                          ; $7a6e: $0b
	db   $f4                                         ; $7a6f: $f4
	inc  c                                           ; $7a70: $0c
	rlca                                             ; $7a71: $07
	nop                                              ; $7a72: $00
	ld   b, b                                        ; $7a73: $40
	jr   nz, jr_07e_7ad6                             ; $7a74: $20 $60

	nop                                              ; $7a76: $00
	add  b                                           ; $7a77: $80
	nop                                              ; $7a78: $00
	ld   l, d                                        ; $7a79: $6a
	dec  d                                           ; $7a7a: $15
	add  b                                           ; $7a7b: $80
	rla                                              ; $7a7c: $17
	add  b                                           ; $7a7d: $80
	dec  d                                           ; $7a7e: $15
	add  b                                           ; $7a7f: $80
	rla                                              ; $7a80: $17
	nop                                              ; $7a81: $00
	ei                                               ; $7a82: $fb
	add  a                                           ; $7a83: $87
	ld   c, $02                                      ; $7a84: $0e $02
	cp   $0e                                         ; $7a86: $fe $0e
	ld   a, [bc]                                     ; $7a88: $0a
	add  c                                           ; $7a89: $81
	ld   c, $01                                      ; $7a8a: $0e $01
	cp   $00                                         ; $7a8c: $fe $00
	add  b                                           ; $7a8e: $80
	inc  a                                           ; $7a8f: $3c
	add  b                                           ; $7a90: $80
	ld   e, h                                        ; $7a91: $5c
	add  b                                           ; $7a92: $80
	ld   l, h                                        ; $7a93: $6c
	add  b                                           ; $7a94: $80
	ld   [hl], l                                     ; $7a95: $75
	add  b                                           ; $7a96: $80
	ld   a, c                                        ; $7a97: $79
	add  b                                           ; $7a98: $80
	dec  c                                           ; $7a99: $0d
	add  b                                           ; $7a9a: $80
	ldh  a, [$80]                                    ; $7a9b: $f0 $80
	ld   bc, $f880                                   ; $7a9d: $01 $80 $f8
	add  b                                           ; $7aa0: $80
	add  hl, sp                                      ; $7aa1: $39
	add  b                                           ; $7aa2: $80
	adc  c                                           ; $7aa3: $89
	add  b                                           ; $7aa4: $80
	ld   d, c                                        ; $7aa5: $51
	add  b                                           ; $7aa6: $80
	xor  b                                           ; $7aa7: $a8
	add  b                                           ; $7aa8: $80
	pop  de                                          ; $7aa9: $d1
	add  b                                           ; $7aaa: $80
	ld   l, c                                        ; $7aab: $69
	nop                                              ; $7aac: $00
	sbc  [hl]                                        ; $7aad: $9e
	adc  l                                           ; $7aae: $8d
	sbc  $00                                         ; $7aaf: $de $00
	ld   c, a                                        ; $7ab1: $4f
	adc  l                                           ; $7ab2: $8d
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	rst  $38                                         ; $7ab5: $ff
	add  b                                           ; $7ab6: $80
	nop                                              ; $7ab7: $00
	add  b                                           ; $7ab8: $80
	ld   bc, $0680                                   ; $7ab9: $01 $80 $06
	add  b                                           ; $7abc: $80
	ld   [$0e03], sp                                 ; $7abd: $08 $03 $0e
	inc  c                                           ; $7ac0: $0c
	inc  bc                                          ; $7ac1: $03
	ld   bc, $0080                                   ; $7ac2: $01 $80 $00
	ld   bc, $ff07                                   ; $7ac5: $01 $07 $ff
	add  b                                           ; $7ac8: $80
	ret  nz                                          ; $7ac9: $c0

	add  e                                           ; $7aca: $83
	nop                                              ; $7acb: $00
	ld   a, [bc]                                     ; $7acc: $0a
	inc  bc                                          ; $7acd: $03
	nop                                              ; $7ace: $00
	rlca                                             ; $7acf: $07
	ldh  [$d2], a                                    ; $7ad0: $e0 $d2
	jr   nz, @+$1f                                   ; $7ad2: $20 $1d

	ld   [bc], a                                     ; $7ad4: $02
	nop                                              ; $7ad5: $00

jr_07e_7ad6:
	ld   b, $07                                      ; $7ad6: $06 $07
	add  b                                           ; $7ad8: $80
	dec  c                                           ; $7ad9: $0d
	inc  b                                           ; $7ada: $04
	inc  [hl]                                        ; $7adb: $34
	or   h                                           ; $7adc: $b4
	ld   b, h                                        ; $7add: $44
	ret  nz                                          ; $7ade: $c0

	nop                                              ; $7adf: $00
	add  b                                           ; $7ae0: $80
	inc  b                                           ; $7ae1: $04
	dec  b                                           ; $7ae2: $05
	nop                                              ; $7ae3: $00
	ld   bc, $02e1                                   ; $7ae4: $01 $e1 $02
	inc  de                                          ; $7ae7: $13
	rrca                                             ; $7ae8: $0f
	add  b                                           ; $7ae9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aea: $cf
	ld   [bc], a                                     ; $7aeb: $02
	or   [hl]                                        ; $7aec: $b6
	halt                                             ; $7aed: $76
	ld   [hl], $80                                   ; $7aee: $36 $80
	ld   b, $01                                      ; $7af0: $06 $01
	ld   d, $10                                      ; $7af2: $16 $10
	add  b                                           ; $7af4: $80
	ld   h, h                                        ; $7af5: $64
	add  b                                           ; $7af6: $80
	add  h                                           ; $7af7: $84
	ld   [bc], a                                     ; $7af8: $02
	inc  b                                           ; $7af9: $04
	or   $f8                                         ; $7afa: $f6 $f8
	add  b                                           ; $7afc: $80
	dec  a                                           ; $7afd: $3d
	add  b                                           ; $7afe: $80
	call $3180                                       ; $7aff: $cd $80 $31
	dec  b                                           ; $7b02: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b03: $cf
	ret  z                                           ; $7b04: $c8

	db   $f4                                         ; $7b05: $f4
	ldh  a, [$fd]                                    ; $7b06: $f0 $fd
	cp   $80                                         ; $7b08: $fe $80
	ccf                                              ; $7b0a: $3f
	add  b                                           ; $7b0b: $80
	rst  $38                                         ; $7b0c: $ff
	add  b                                           ; $7b0d: $80
	rra                                              ; $7b0e: $1f
	add  b                                           ; $7b0f: $80
	db   $e3                                         ; $7b10: $e3
	add  b                                           ; $7b11: $80
	db   $fc                                         ; $7b12: $fc
	inc  bc                                          ; $7b13: $03
	rst  $38                                         ; $7b14: $ff
	ld   a, a                                        ; $7b15: $7f
	cp   a                                           ; $7b16: $bf
	ccf                                              ; $7b17: $3f
	add  b                                           ; $7b18: $80
	ld   c, a                                        ; $7b19: $4f
	add  b                                           ; $7b1a: $80
	add  e                                           ; $7b1b: $83
	nop                                              ; $7b1c: $00
	sbc  [hl]                                        ; $7b1d: $9e
	adc  l                                           ; $7b1e: $8d
	sbc  $00                                         ; $7b1f: $de $00
	ld   c, a                                        ; $7b21: $4f
	adc  l                                           ; $7b22: $8d
	nop                                              ; $7b23: $00
	ld   bc, $00ff                                   ; $7b24: $01 $ff $00
	add  b                                           ; $7b27: $80
	ld   [$0780], sp                                 ; $7b28: $08 $80 $07
	add  b                                           ; $7b2b: $80
	ld   [$0f80], sp                                 ; $7b2c: $08 $80 $0f
	add  b                                           ; $7b2f: $80
	ld   bc, $0500                                   ; $7b30: $01 $00 $05
	add  c                                           ; $7b33: $81
	add  hl, bc                                      ; $7b34: $09
	nop                                              ; $7b35: $00
	db   $fc                                         ; $7b36: $fc
	add  c                                           ; $7b37: $81
	nop                                              ; $7b38: $00
	add  b                                           ; $7b39: $80
	db   $fc                                         ; $7b3a: $fc
	add  b                                           ; $7b3b: $80
	inc  bc                                          ; $7b3c: $03
	add  b                                           ; $7b3d: $80
	db   $fc                                         ; $7b3e: $fc
	add  b                                           ; $7b3f: $80
	rlca                                             ; $7b40: $07
	nop                                              ; $7b41: $00
	or   a                                           ; $7b42: $b7
	add  c                                           ; $7b43: $81
	ld   b, a                                        ; $7b44: $47
	ld   [bc], a                                     ; $7b45: $02
	ldh  a, [c]                                      ; $7b46: $f2
	dec  c                                           ; $7b47: $0d
	rrca                                             ; $7b48: $0f
	add  c                                           ; $7b49: $81
	nop                                              ; $7b4a: $00
	add  b                                           ; $7b4b: $80
	cp   $80                                         ; $7b4c: $fe $80
	nop                                              ; $7b4e: $00
	add  b                                           ; $7b4f: $80
	ld   c, $80                                      ; $7b50: $0e $80
	xor  $80                                         ; $7b52: $ee $80
	ld   l, $03                                      ; $7b54: $2e $03
	db   $f4                                         ; $7b56: $f4
	ld   c, $fe                                      ; $7b57: $0e $fe
	ld   c, $80                                      ; $7b59: $0e $80
	ld   a, [bc]                                     ; $7b5b: $0a
	add  l                                           ; $7b5c: $85
	ld   c, $81                                      ; $7b5d: $0e $81
	ld   l, [hl]                                     ; $7b5f: $6e
	ld   bc, $ff95                                   ; $7b60: $01 $95 $ff
	add  b                                           ; $7b63: $80
	sbc  a                                           ; $7b64: $9f
	add  b                                           ; $7b65: $80
	ld   a, a                                        ; $7b66: $7f
	add  b                                           ; $7b67: $80
	nop                                              ; $7b68: $00

jr_07e_7b69:
	add  b                                           ; $7b69: $80
	adc  [hl]                                        ; $7b6a: $8e
	add  b                                           ; $7b6b: $80
	ld   a, a                                        ; $7b6c: $7f
	dec  b                                           ; $7b6d: $05
	ld   [hl], a                                     ; $7b6e: $77
	rst  $38                                         ; $7b6f: $ff
	ld   [hl+], a                                    ; $7b70: $22
	rst  $38                                         ; $7b71: $ff
	call nc, $8281                                   ; $7b72: $d4 $81 $82
	ld   sp, hl                                      ; $7b75: $f9
	add  b                                           ; $7b76: $80
	ld   bc, $3d80                                   ; $7b77: $01 $80 $3d
	add  b                                           ; $7b7a: $80
	push bc                                          ; $7b7b: $c5
	inc  b                                           ; $7b7c: $04
	ld   [hl], l                                     ; $7b7d: $75
	db   $fd                                         ; $7b7e: $fd
	inc  h                                           ; $7b7f: $24
	db   $fd                                         ; $7b80: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b81: $cf
	adc  c                                           ; $7b82: $89
	sbc  $80                                         ; $7b83: $de $80
	sbc  [hl]                                        ; $7b85: $9e
	add  b                                           ; $7b86: $80
	sbc  $00                                         ; $7b87: $de $00
	ld   c, a                                        ; $7b89: $4f
	adc  d                                           ; $7b8a: $8a
	nop                                              ; $7b8b: $00
	add  b                                           ; $7b8c: $80
	db   $10                                         ; $7b8d: $10
	inc  bc                                          ; $7b8e: $03
	jr   nz, jr_07e_7b69                             ; $7b8f: $20 $d8

	nop                                              ; $7b91: $00
	rlca                                             ; $7b92: $07
	adc  e                                           ; $7b93: $8b
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	ldh  a, [$8d]                                    ; $7b96: $f0 $8d
	nop                                              ; $7b98: $00
	inc  b                                           ; $7b99: $04
	ld   a, $20                                      ; $7b9a: $3e $20
	inc  e                                           ; $7b9c: $1c
	inc  bc                                          ; $7b9d: $03
	ld   bc, $0089                                   ; $7b9e: $01 $89 $00
	nop                                              ; $7ba1: $00
	ld   a, [bc]                                     ; $7ba2: $0a
	add  b                                           ; $7ba3: $80
	inc  b                                           ; $7ba4: $04
	rlca                                             ; $7ba5: $07
	db   $e4                                         ; $7ba6: $e4
	call z, $0c3c                                    ; $7ba7: $cc $3c $0c
	call c, $0c08                                    ; $7baa: $dc $08 $0c
	adc  $83                                         ; $7bad: $ce $83
	ld   c, $01                                      ; $7baf: $0e $01
	add  l                                           ; $7bb1: $85
	adc  a                                           ; $7bb2: $8f
	add  b                                           ; $7bb3: $80
	add  c                                           ; $7bb4: $81
	add  b                                           ; $7bb5: $80
	ld   c, b                                        ; $7bb6: $48
	add  b                                           ; $7bb7: $80
	ld   d, $80                                      ; $7bb8: $16 $80
	jp   $d980                                       ; $7bba: $c3 $80 $d9


	add  b                                           ; $7bbd: $80
	adc  $80                                         ; $7bbe: $ce $80
	rst  $10                                         ; $7bc0: $d7
	add  b                                           ; $7bc1: $80
	ret  nc                                          ; $7bc2: $d0

	add  b                                           ; $7bc3: $80
	call c, $7f05                                    ; $7bc4: $dc $05 $7f
	rrca                                             ; $7bc7: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bc8: $cf
	sbc  a                                           ; $7bc9: $9f
	rlca                                             ; $7bca: $07
	daa                                              ; $7bcb: $27
	add  b                                           ; $7bcc: $80
	ld   c, b                                        ; $7bcd: $48
	add  b                                           ; $7bce: $80
	inc  sp                                          ; $7bcf: $33
	add  b                                           ; $7bd0: $80
	ld   c, c                                        ; $7bd1: $49
	nop                                              ; $7bd2: $00
	sbc  [hl]                                        ; $7bd3: $9e
	adc  l                                           ; $7bd4: $8d
	sbc  $00                                         ; $7bd5: $de $00
	ld   c, a                                        ; $7bd7: $4f
	adc  l                                           ; $7bd8: $8d
	nop                                              ; $7bd9: $00
	ld   bc, $09fa                                   ; $7bda: $01 $fa $09
	add  e                                           ; $7bdd: $83
	dec  c                                           ; $7bde: $0d
	nop                                              ; $7bdf: $00
	ld   bc, $0f86                                   ; $7be0: $01 $86 $0f
	add  b                                           ; $7be3: $80
	ld   b, a                                        ; $7be4: $47
	add  d                                           ; $7be5: $82
	rst  $30                                         ; $7be6: $f7
	ld   bc, $07f6                                   ; $7be7: $01 $f6 $07
	add  [hl]                                        ; $7bea: $86
	rst  $38                                         ; $7beb: $ff
	ld   bc, $2eaf                                   ; $7bec: $01 $af $2e
	add  l                                           ; $7bef: $85
	xor  [hl]                                        ; $7bf0: $ae
	nop                                              ; $7bf1: $00
	ld   l, $82                                      ; $7bf2: $2e $82
	xor  $80                                         ; $7bf4: $ee $80
	ld   c, $00                                      ; $7bf6: $0e $00
	inc  b                                           ; $7bf8: $04
	add  [hl]                                        ; $7bf9: $86
	ld   l, [hl]                                     ; $7bfa: $6e
	add  l                                           ; $7bfb: $85
	ld   c, $01                                      ; $7bfc: $0e $01
	rst  $38                                         ; $7bfe: $ff
	rra                                              ; $7bff: $1f
	add  c                                           ; $7c00: $81
	dec  d                                           ; $7c01: $15
	add  b                                           ; $7c02: $80
	add  hl, de                                      ; $7c03: $19
	add  e                                           ; $7c04: $83
	ld   de, $fb80                                   ; $7c05: $11 $80 $fb
	add  b                                           ; $7c08: $80
	or   l                                           ; $7c09: $b5
	ld   [bc], a                                     ; $7c0a: $02
	cp   e                                           ; $7c0b: $bb
	db   $fd                                         ; $7c0c: $fd
	ld   d, l                                        ; $7c0d: $55
	add  b                                           ; $7c0e: $80
	ld   b, h                                        ; $7c0f: $44
	add  b                                           ; $7c10: $80
	add  h                                           ; $7c11: $84
	add  e                                           ; $7c12: $83
	inc  b                                           ; $7c13: $04
	add  b                                           ; $7c14: $80
	inc  h                                           ; $7c15: $24
	add  b                                           ; $7c16: $80
	add  h                                           ; $7c17: $84
	ld   bc, $9e27                                   ; $7c18: $01 $27 $9e
	add  b                                           ; $7c1b: $80
	sbc  $8a                                         ; $7c1c: $de $8a
	sbc  [hl]                                        ; $7c1e: $9e
	nop                                              ; $7c1f: $00
	ld   c, a                                        ; $7c20: $4f
	add  b                                           ; $7c21: $80
	ld   d, b                                        ; $7c22: $50
	add  b                                           ; $7c23: $80
	and  b                                           ; $7c24: $a0
	add  b                                           ; $7c25: $80
	ld   d, b                                        ; $7c26: $50
	add  b                                           ; $7c27: $80
	and  b                                           ; $7c28: $a0
	add  b                                           ; $7c29: $80
	ld   b, b                                        ; $7c2a: $40
	add  b                                           ; $7c2b: $80
	add  b                                           ; $7c2c: $80
	add  b                                           ; $7c2d: $80
	db   $10                                         ; $7c2e: $10
	ld   bc, $d020                                   ; $7c2f: $01 $20 $d0
	add  a                                           ; $7c32: $87
	rrca                                             ; $7c33: $0f
	ld   [bc], a                                     ; $7c34: $02
	ld   c, $0f                                      ; $7c35: $0e $0f
	ld   bc, $0a80                                   ; $7c37: $01 $80 $0a
	ld   [bc], a                                     ; $7c3a: $02
	dec  b                                           ; $7c3b: $05
	dec  bc                                          ; $7c3c: $0b
	cp   $86                                         ; $7c3d: $fe $86
	rst  $38                                         ; $7c3f: $ff
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	add  b                                           ; $7c42: $80
	ld   d, l                                        ; $7c43: $55
	add  b                                           ; $7c44: $80
	xor  d                                           ; $7c45: $aa
	ld   bc, $d17f                                   ; $7c46: $01 $7f $d1
	add  a                                           ; $7c49: $87
	xor  [hl]                                        ; $7c4a: $ae
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	add  b                                           ; $7c4d: $80
	ld   d, l                                        ; $7c4e: $55
	add  b                                           ; $7c4f: $80
	cp   a                                           ; $7c50: $bf
	ld   bc, $fbff                                   ; $7c51: $01 $ff $fb
	add  c                                           ; $7c54: $81
	ld   c, $80                                      ; $7c55: $0e $80
	ld   a, [bc]                                     ; $7c57: $0a
	add  e                                           ; $7c58: $83
	ld   c, $80                                      ; $7c59: $0e $80
	ld   e, [hl]                                     ; $7c5b: $5e
	add  c                                           ; $7c5c: $81
	cp   $01                                         ; $7c5d: $fe $01
	ld   c, a                                        ; $7c5f: $4f
	ld   e, e                                        ; $7c60: $5b
	add  b                                           ; $7c61: $80
	or   c                                           ; $7c62: $b1
	add  e                                           ; $7c63: $83
	ld   de, $1080                                   ; $7c64: $11 $80 $10
	add  c                                           ; $7c67: $81
	nop                                              ; $7c68: $00
	add  b                                           ; $7c69: $80
	ld   bc, $1201                                   ; $7c6a: $01 $01 $12
	inc  d                                           ; $7c6d: $14
	add  [hl]                                        ; $7c6e: $86
	inc  b                                           ; $7c6f: $04
	add  b                                           ; $7c70: $80
	dec  d                                           ; $7c71: $15
	add  b                                           ; $7c72: $80
	inc  l                                           ; $7c73: $2c
	add  b                                           ; $7c74: $80
	ld   d, l                                        ; $7c75: $55
	nop                                              ; $7c76: $00
	daa                                              ; $7c77: $27
	adc  l                                           ; $7c78: $8d
	sbc  [hl]                                        ; $7c79: $9e
	nop                                              ; $7c7a: $00
	ld   c, a                                        ; $7c7b: $4f
	add  b                                           ; $7c7c: $80
	ld   d, b                                        ; $7c7d: $50
	add  b                                           ; $7c7e: $80
	and  b                                           ; $7c7f: $a0
	add  b                                           ; $7c80: $80
	ret  nc                                          ; $7c81: $d0

	add  b                                           ; $7c82: $80
	or   b                                           ; $7c83: $b0
	add  b                                           ; $7c84: $80
	ldh  a, [$80]                                    ; $7c85: $f0 $80
	ldh  [$81], a                                    ; $7c87: $e0 $81
	ldh  a, [rP1]                                    ; $7c89: $f0 $00
	rrca                                             ; $7c8b: $0f
	add  b                                           ; $7c8c: $80
	dec  b                                           ; $7c8d: $05
	add  b                                           ; $7c8e: $80
	ld   a, [bc]                                     ; $7c8f: $0a
	add  b                                           ; $7c90: $80
	dec  b                                           ; $7c91: $05
	add  b                                           ; $7c92: $80
	ld   a, [bc]                                     ; $7c93: $0a
	add  l                                           ; $7c94: $85
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	ldh  a, [$80]                                    ; $7c97: $f0 $80
	ld   d, l                                        ; $7c99: $55
	add  b                                           ; $7c9a: $80
	xor  d                                           ; $7c9b: $aa
	add  b                                           ; $7c9c: $80
	ld   d, l                                        ; $7c9d: $55
	add  b                                           ; $7c9e: $80
	and  b                                           ; $7c9f: $a0
	add  e                                           ; $7ca0: $83
	nop                                              ; $7ca1: $00
	ld   [bc], a                                     ; $7ca2: $02
	ccf                                              ; $7ca3: $3f
	nop                                              ; $7ca4: $00
	ccf                                              ; $7ca5: $3f
	add  b                                           ; $7ca6: $80
	ld   d, l                                        ; $7ca7: $55
	add  b                                           ; $7ca8: $80
	xor  d                                           ; $7ca9: $aa
	add  b                                           ; $7caa: $80
	ld   d, b                                        ; $7cab: $50
	add  c                                           ; $7cac: $81
	nop                                              ; $7cad: $00
	ld   [bc], a                                     ; $7cae: $02
	ld   bc, $fe00                                   ; $7caf: $01 $00 $fe
	add  c                                           ; $7cb2: $81
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	ei                                               ; $7cb5: $fb
	add  b                                           ; $7cb6: $80
	ld   e, [hl]                                     ; $7cb7: $5e
	add  b                                           ; $7cb8: $80
	xor  [hl]                                        ; $7cb9: $ae
	add  e                                           ; $7cba: $83
	ld   c, $00                                      ; $7cbb: $0e $00
	cp   $81                                         ; $7cbd: $fe $81
	ld   c, $02                                      ; $7cbf: $0e $02
	sbc  $d6                                         ; $7cc1: $de $d6
	ldh  a, [c]                                      ; $7cc3: $f2
	add  a                                           ; $7cc4: $87
	rst  $38                                         ; $7cc5: $ff
	ld   b, $dd                                      ; $7cc6: $06 $dd
	rst  $38                                         ; $7cc8: $ff
	ld   d, h                                        ; $7cc9: $54
	rst  $38                                         ; $7cca: $ff
	ld   d, h                                        ; $7ccb: $54
	rst  $38                                         ; $7ccc: $ff
	db   $dd                                         ; $7ccd: $dd
	add  e                                           ; $7cce: $83
	rst  $38                                         ; $7ccf: $ff
	dec  bc                                          ; $7cd0: $0b
	db   $dd                                         ; $7cd1: $dd
	rst  $38                                         ; $7cd2: $ff
	ld   d, h                                        ; $7cd3: $54
	rst  $38                                         ; $7cd4: $ff
	ld   d, h                                        ; $7cd5: $54
	rst  $38                                         ; $7cd6: $ff
	adc  b                                           ; $7cd7: $88
	rst  $38                                         ; $7cd8: $ff
	nop                                              ; $7cd9: $00
	rst  $38                                         ; $7cda: $ff
	adc  b                                           ; $7cdb: $88
	sbc  l                                           ; $7cdc: $9d
	add  b                                           ; $7cdd: $80
	db   $dd                                         ; $7cde: $dd
	nop                                              ; $7cdf: $00
	sbc  l                                           ; $7ce0: $9d
	add  b                                           ; $7ce1: $80
	db   $dd                                         ; $7ce2: $dd
	add  a                                           ; $7ce3: $87
	sbc  l                                           ; $7ce4: $9d
	nop                                              ; $7ce5: $00
	cp   a                                           ; $7ce6: $bf
	adc  l                                           ; $7ce7: $8d
	ldh  a, [rP1]                                    ; $7ce8: $f0 $00
	rst  $38                                         ; $7cea: $ff
	add  e                                           ; $7ceb: $83
	rrca                                             ; $7cec: $0f
	add  h                                           ; $7ced: $84
	nop                                              ; $7cee: $00
	add  b                                           ; $7cef: $80
	inc  bc                                          ; $7cf0: $03
	ld   [bc], a                                     ; $7cf1: $02
	rrca                                             ; $7cf2: $0f
	ld   c, $fe                                      ; $7cf3: $0e $fe
	add  c                                           ; $7cf5: $81
	rst  $38                                         ; $7cf6: $ff
	add  [hl]                                        ; $7cf7: $86
	nop                                              ; $7cf8: $00
	add  c                                           ; $7cf9: $81
	rst  $38                                         ; $7cfa: $ff
	add  b                                           ; $7cfb: $80
	xor  d                                           ; $7cfc: $aa
	add  c                                           ; $7cfd: $81
	rst  $38                                         ; $7cfe: $ff
	add  h                                           ; $7cff: $84
	nop                                              ; $7d00: $00
	add  b                                           ; $7d01: $80
	ld   a, a                                        ; $7d02: $7f
	nop                                              ; $7d03: $00
	rst  $38                                         ; $7d04: $ff
	add  b                                           ; $7d05: $80
	push de                                          ; $7d06: $d5
	ld   [bc], a                                     ; $7d07: $02
	xor  d                                           ; $7d08: $aa
	xor  [hl]                                        ; $7d09: $ae
	cp   $86                                         ; $7d0a: $fe $86
	ld   c, $81                                      ; $7d0c: $0e $81
	cp   $80                                         ; $7d0e: $fe $80
	ld   e, [hl]                                     ; $7d10: $5e
	ld   [bc], a                                     ; $7d11: $02
	xor  [hl]                                        ; $7d12: $ae
	ld   d, a                                        ; $7d13: $57
	ld   [bc], a                                     ; $7d14: $02
	add  b                                           ; $7d15: $80
	dec  d                                           ; $7d16: $15
	add  b                                           ; $7d17: $80
	xor  a                                           ; $7d18: $af
	adc  b                                           ; $7d19: $88
	rst  $38                                         ; $7d1a: $ff
	ld   bc, $acaa                                   ; $7d1b: $01 $aa $ac
	add  h                                           ; $7d1e: $84
	db   $fd                                         ; $7d1f: $fd
	add  b                                           ; $7d20: $80
	rst  $38                                         ; $7d21: $ff
	ld   [bc], a                                     ; $7d22: $02
	or   $ff                                         ; $7d23: $f6 $ff
	ldh  a, [$81]                                    ; $7d25: $f0 $81
	rst  $38                                         ; $7d27: $ff
	nop                                              ; $7d28: $00
	ld   hl, $9e83                                   ; $7d29: $21 $83 $9e
	inc  b                                           ; $7d2c: $04
	sbc  l                                           ; $7d2d: $9d
	sbc  h                                           ; $7d2e: $9c
	call c, $9ddd                                    ; $7d2f: $dc $dd $9d
	add  b                                           ; $7d32: $80
	db   $dd                                         ; $7d33: $dd
	add  b                                           ; $7d34: $80
	sbc  l                                           ; $7d35: $9d
	ld   bc, $0fdd                                   ; $7d36: $01 $dd $0f
	add  e                                           ; $7d39: $83
	ldh  a, [$81]                                    ; $7d3a: $f0 $81
	nop                                              ; $7d3c: $00
	add  [hl]                                        ; $7d3d: $86
	ldh  a, [$83]                                    ; $7d3e: $f0 $83
	nop                                              ; $7d40: $00
	add  b                                           ; $7d41: $80
	rrca                                             ; $7d42: $0f
	add  d                                           ; $7d43: $82
	nop                                              ; $7d44: $00
	add  b                                           ; $7d45: $80
	ld   b, $82                                      ; $7d46: $06 $82
	nop                                              ; $7d48: $00
	add  b                                           ; $7d49: $80
	ld   b, $80                                      ; $7d4a: $06 $80
	ld   hl, sp-$7a                                  ; $7d4c: $f8 $86
	nop                                              ; $7d4e: $00
	add  b                                           ; $7d4f: $80
	and  b                                           ; $7d50: $a0
	add  b                                           ; $7d51: $80
	ld   e, $80                                      ; $7d52: $1e $80
	and  b                                           ; $7d54: $a0
	adc  d                                           ; $7d55: $8a
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	rra                                              ; $7d58: $1f
	add  b                                           ; $7d59: $80
	jr   jr_07e_7d5c                                 ; $7d5a: $18 $00

jr_07e_7d5c:
	ld   e, $80                                      ; $7d5c: $1e $80
	ld   c, $00                                      ; $7d5e: $0e $00
	ld   bc, $0087                                   ; $7d60: $01 $87 $00
	jr   nz, @-$54                                   ; $7d63: $20 $aa

	rst  $38                                         ; $7d65: $ff
	nop                                              ; $7d66: $00
	rst  $38                                         ; $7d67: $ff
	nop                                              ; $7d68: $00
	rst  $38                                         ; $7d69: $ff
	nop                                              ; $7d6a: $00
	rst  $38                                         ; $7d6b: $ff
	nop                                              ; $7d6c: $00
	rst  $38                                         ; $7d6d: $ff
	nop                                              ; $7d6e: $00
	rst  $38                                         ; $7d6f: $ff
	nop                                              ; $7d70: $00
	rst  $38                                         ; $7d71: $ff
	nop                                              ; $7d72: $00
	rst  $38                                         ; $7d73: $ff
	nop                                              ; $7d74: $00
	rst  $38                                         ; $7d75: $ff
	nop                                              ; $7d76: $00
	rst  $38                                         ; $7d77: $ff
	nop                                              ; $7d78: $00
	rst  $38                                         ; $7d79: $ff
	nop                                              ; $7d7a: $00
	rst  $38                                         ; $7d7b: $ff
	nop                                              ; $7d7c: $00
	rst  $38                                         ; $7d7d: $ff
	nop                                              ; $7d7e: $00
	rst  $38                                         ; $7d7f: $ff
	nop                                              ; $7d80: $00
	rst  $38                                         ; $7d81: $ff
	nop                                              ; $7d82: $00
	rst  $38                                         ; $7d83: $ff
	adc  b                                           ; $7d84: $88
	add  c                                           ; $7d85: $81
	sbc  l                                           ; $7d86: $9d
	add  b                                           ; $7d87: $80
	sbc  h                                           ; $7d88: $9c
	adc  b                                           ; $7d89: $88
	sbc  [hl]                                        ; $7d8a: $9e
	nop                                              ; $7d8b: $00
	cp   a                                           ; $7d8c: $bf
	add  c                                           ; $7d8d: $81
	ldh  a, [$80]                                    ; $7d8e: $f0 $80
	nop                                              ; $7d90: $00
	ld   bc, $20d0                                   ; $7d91: $01 $d0 $20
	add  b                                           ; $7d94: $80
	ld   d, b                                        ; $7d95: $50
	add  b                                           ; $7d96: $80
	and  b                                           ; $7d97: $a0
	add  b                                           ; $7d98: $80
	ld   d, b                                        ; $7d99: $50
	add  b                                           ; $7d9a: $80
	or   b                                           ; $7d9b: $b0
	rst  $38                                         ; $7d9c: $ff
	nop                                              ; $7d9d: $00
	rst  $38                                         ; $7d9e: $ff
	nop                                              ; $7d9f: $00
	rst  $38                                         ; $7da0: $ff
	nop                                              ; $7da1: $00
	rst  $38                                         ; $7da2: $ff
	nop                                              ; $7da3: $00
	rst  $38                                         ; $7da4: $ff
	nop                                              ; $7da5: $00
	ld   sp, hl                                      ; $7da6: $f9
	nop                                              ; $7da7: $00
	adc  e                                           ; $7da8: $8b
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	ld   c, $8b                                      ; $7dab: $0e $8b
	ld   bc, $0f80                                   ; $7dad: $01 $80 $0f
	nop                                              ; $7db0: $00
	ld   hl, sp-$75                                  ; $7db1: $f8 $8b
	ld   [$f880], sp                                 ; $7db3: $08 $80 $f8
	ld   d, [hl]                                     ; $7db6: $56
	ld   d, l                                        ; $7db7: $55
	ld   a, a                                        ; $7db8: $7f
	dec  d                                           ; $7db9: $15
	ccf                                              ; $7dba: $3f
	dec  c                                           ; $7dbb: $0d
	rrca                                             ; $7dbc: $0f
	dec  b                                           ; $7dbd: $05
	rlca                                             ; $7dbe: $07
	ld   bc, $0103                                   ; $7dbf: $01 $03 $01
	inc  bc                                          ; $7dc2: $03
	ld   bc, $0103                                   ; $7dc3: $01 $03 $01
	inc  bc                                          ; $7dc6: $03
	ld   d, l                                        ; $7dc7: $55
	rst  $38                                         ; $7dc8: $ff
	ld   d, l                                        ; $7dc9: $55
	rst  $38                                         ; $7dca: $ff
	ld   l, l                                        ; $7dcb: $6d
	rst  $38                                         ; $7dcc: $ff

jr_07e_7dcd:
	ld   l, l                                        ; $7dcd: $6d
	rst  $38                                         ; $7dce: $ff
	ld   a, l                                        ; $7dcf: $7d
	rst  $38                                         ; $7dd0: $ff
	ld   a, l                                        ; $7dd1: $7d
	rst  $38                                         ; $7dd2: $ff
	ld   a, l                                        ; $7dd3: $7d
	rst  $38                                         ; $7dd4: $ff
	ld   a, l                                        ; $7dd5: $7d
	rst  $38                                         ; $7dd6: $ff
	ld   e, a                                        ; $7dd7: $5f
	rst  $38                                         ; $7dd8: $ff
	ld   [hl], l                                     ; $7dd9: $75
	rst  $38                                         ; $7dda: $ff
	ld   [hl], l                                     ; $7ddb: $75
	rst  $38                                         ; $7ddc: $ff
	ld   [hl], l                                     ; $7ddd: $75
	rst  $38                                         ; $7dde: $ff
	inc  [hl]                                        ; $7ddf: $34
	rst  $38                                         ; $7de0: $ff
	ld   a, [hl-]                                    ; $7de1: $3a
	rst  $38                                         ; $7de2: $ff
	ld   a, [hl+]                                    ; $7de3: $2a
	rst  $38                                         ; $7de4: $ff
	ld   a, [hl+]                                    ; $7de5: $2a
	rst  $38                                         ; $7de6: $ff
	ld   a, a                                        ; $7de7: $7f
	rst  $38                                         ; $7de8: $ff
	ld   e, d                                        ; $7de9: $5a
	rst  $38                                         ; $7dea: $ff
	ld   l, d                                        ; $7deb: $6a
	rst  $38                                         ; $7dec: $ff
	ld   a, [hl-]                                    ; $7ded: $3a
	rst  $38                                         ; $7dee: $ff
	xor  d                                           ; $7def: $aa
	rst  $38                                         ; $7df0: $ff
	xor  d                                           ; $7df1: $aa
	rst  $38                                         ; $7df2: $ff
	xor  d                                           ; $7df3: $aa
	rst  $38                                         ; $7df4: $ff
	xor  d                                           ; $7df5: $aa
	rst  $38                                         ; $7df6: $ff
	db   $ec                                         ; $7df7: $ec
	db   $fd                                         ; $7df8: $fd
	and  c                                           ; $7df9: $a1
	db   $e3                                         ; $7dfa: $e3
	cp   c                                           ; $7dfb: $b9
	ei                                               ; $7dfc: $fb
	xor  b                                           ; $7dfd: $a8
	add  sp, -$58                                    ; $7dfe: $e8 $a8
	add  sp, -$58                                    ; $7e00: $e8 $a8
	add  sp, -$58                                    ; $7e02: $e8 $a8
	add  sp, -$38                                    ; $7e04: $e8 $c8
	adc  b                                           ; $7e06: $88
	db   $fc                                         ; $7e07: $fc
	rst  $38                                         ; $7e08: $ff
	ld   [hl], a                                     ; $7e09: $77
	rst  $38                                         ; $7e0a: $ff
	ld   [hl], a                                     ; $7e0b: $77
	cp   $02                                         ; $7e0c: $fe $02
	add  b                                           ; $7e0e: $80
	nop                                              ; $7e0f: $00
	add  e                                           ; $7e10: $83
	ld   [$0b03], sp                                 ; $7e11: $08 $03 $0b
	ld   [$c1cb], sp                                 ; $7e14: $08 $cb $c1
	add  b                                           ; $7e17: $80
	add  c                                           ; $7e18: $81
	add  hl, bc                                      ; $7e19: $09
	ld   bc, $0200                                   ; $7e1a: $01 $00 $02
	ld   bc, $0f03                                   ; $7e1d: $01 $03 $0f
	add  hl, sp                                      ; $7e20: $39
	add  hl, bc                                      ; $7e21: $09
	cp   a                                           ; $7e22: $bf
	ld   a, a                                        ; $7e23: $7f
	add  b                                           ; $7e24: $80
	reti                                             ; $7e25: $d9


	dec  b                                           ; $7e26: $05
	cp   $1d                                         ; $7e27: $fe $1d
	ld   de, $2d31                                   ; $7e29: $11 $31 $2d
	jp   hl                                          ; $7e2c: $e9


	add  b                                           ; $7e2d: $80
	cp   b                                           ; $7e2e: $b8
	add  b                                           ; $7e2f: $80
	ld   hl, sp+$01                                  ; $7e30: $f8 $01
	jr   nc, jr_07e_7e68                             ; $7e32: $30 $34

	add  b                                           ; $7e34: $80
	db   $fc                                         ; $7e35: $fc
	ld   [bc], a                                     ; $7e36: $02
	cp   d                                           ; $7e37: $ba
	cp   b                                           ; $7e38: $b8
	ld   c, [hl]                                     ; $7e39: $4e
	add  l                                           ; $7e3a: $85
	or   b                                           ; $7e3b: $b0
	add  [hl]                                        ; $7e3c: $86
	jr   nc, jr_07e_7dcd                             ; $7e3d: $30 $8e

	ld   c, $8e                                      ; $7e3f: $0e $8e
	ld   bc, $808a                                   ; $7e41: $01 $8a $80

jr_07e_7e44:
	add  c                                           ; $7e44: $81
	sub  b                                           ; $7e45: $90
	inc  b                                           ; $7e46: $04
	sbc  b                                           ; $7e47: $98
	ld   [$2a3f], sp                                 ; $7e48: $08 $3f $2a
	ld   a, [bc]                                     ; $7e4b: $0a
	add  b                                           ; $7e4c: $80
	rra                                              ; $7e4d: $1f
	ld   bc, $0a1a                                   ; $7e4e: $01 $1a $0a
	add  b                                           ; $7e51: $80
	rrca                                             ; $7e52: $0f
	add  b                                           ; $7e53: $80
	dec  b                                           ; $7e54: $05
	dec  b                                           ; $7e55: $05
	rrca                                             ; $7e56: $0f
	rra                                              ; $7e57: $1f
	dec  [hl]                                        ; $7e58: $35
	dec  d                                           ; $7e59: $15
	ccf                                              ; $7e5a: $3f
	rst  $38                                         ; $7e5b: $ff
	add  b                                           ; $7e5c: $80
	xor  d                                           ; $7e5d: $aa
	add  b                                           ; $7e5e: $80
	rst  $38                                         ; $7e5f: $ff
	add  b                                           ; $7e60: $80
	ld   d, l                                        ; $7e61: $55
	add  b                                           ; $7e62: $80
	rst  $38                                         ; $7e63: $ff
	add  b                                           ; $7e64: $80
	ld   d, d                                        ; $7e65: $52
	add  b                                           ; $7e66: $80
	rst  $38                                         ; $7e67: $ff

jr_07e_7e68:
	add  b                                           ; $7e68: $80
	ld   c, c                                        ; $7e69: $49
	ld   bc, $000f                                   ; $7e6a: $01 $0f $00
	add  b                                           ; $7e6d: $80
	rrca                                             ; $7e6e: $0f
	add  b                                           ; $7e6f: $80
	nop                                              ; $7e70: $00
	add  h                                           ; $7e71: $84
	rrca                                             ; $7e72: $0f
	inc  b                                           ; $7e73: $04
	dec  b                                           ; $7e74: $05
	rrca                                             ; $7e75: $0f
	ld   a, [bc]                                     ; $7e76: $0a
	nop                                              ; $7e77: $00
	ldh  a, [$83]                                    ; $7e78: $f0 $83
	nop                                              ; $7e7a: $00
	add  d                                           ; $7e7b: $82
	cp   $80                                         ; $7e7c: $fe $80
	nop                                              ; $7e7e: $00
	add  d                                           ; $7e7f: $82
	ld   b, [hl]                                     ; $7e80: $46
	jr   c, jr_07e_7e44                              ; $7e81: $38 $c1

	jp   $3331                                       ; $7e83: $c3 $31 $33


	push af                                          ; $7e86: $f5
	rst  $30                                         ; $7e87: $f7
	push hl                                          ; $7e88: $e5
	rst  $20                                         ; $7e89: $e7
	add  l                                           ; $7e8a: $85
	add  a                                           ; $7e8b: $87
	dec  h                                           ; $7e8c: $25
	daa                                              ; $7e8d: $27
	dec  h                                           ; $7e8e: $25
	daa                                              ; $7e8f: $27
	ld   [hl+], a                                    ; $7e90: $22
	jr   nz, @+$80                                   ; $7e91: $20 $7e

	rst  $38                                         ; $7e93: $ff
	ld   a, [hl]                                     ; $7e94: $7e
	rst  $38                                         ; $7e95: $ff
	ld   a, [hl]                                     ; $7e96: $7e
	rst  $38                                         ; $7e97: $ff
	ld   a, [hl]                                     ; $7e98: $7e
	rst  $38                                         ; $7e99: $ff
	ld   a, [hl]                                     ; $7e9a: $7e
	rst  $38                                         ; $7e9b: $ff
	ld   a, [hl]                                     ; $7e9c: $7e
	rst  $38                                         ; $7e9d: $ff
	ld   a, [hl]                                     ; $7e9e: $7e
	rst  $38                                         ; $7e9f: $ff
	add  c                                           ; $7ea0: $81
	nop                                              ; $7ea1: $00
	adc  [hl]                                        ; $7ea2: $8e
	rst  $38                                         ; $7ea3: $ff
	xor  d                                           ; $7ea4: $aa
	rst  $38                                         ; $7ea5: $ff
	xor  d                                           ; $7ea6: $aa
	rst  $38                                         ; $7ea7: $ff
	xor  d                                           ; $7ea8: $aa
	rst  $38                                         ; $7ea9: $ff
	xor  d                                           ; $7eaa: $aa
	rst  $38                                         ; $7eab: $ff
	xor  l                                           ; $7eac: $ad
	db   $fc                                         ; $7ead: $fc
	and  b                                           ; $7eae: $a0
	ret  nz                                          ; $7eaf: $c0

	ld   b, b                                        ; $7eb0: $40
	nop                                              ; $7eb1: $00
	ld   hl, sp-$04                                  ; $7eb2: $f8 $fc
	xor  c                                           ; $7eb4: $a9
	rst  $38                                         ; $7eb5: $ff
	and  e                                           ; $7eb6: $a3
	rst  $38                                         ; $7eb7: $ff
	di                                               ; $7eb8: $f3
	rst  $38                                         ; $7eb9: $ff
	inc  bc                                          ; $7eba: $03
	add  b                                           ; $7ebb: $80
	rst  $38                                         ; $7ebc: $ff
	add  c                                           ; $7ebd: $81
	inc  bc                                          ; $7ebe: $03
	ld   bc, $0002                                   ; $7ebf: $01 $02 $00
	add  b                                           ; $7ec2: $80
	rst  $30                                         ; $7ec3: $f7
	ld   c, a                                        ; $7ec4: $4f
	ld   bc, $fdff                                   ; $7ec5: $01 $ff $fd

Jump_07e_7ec8:
	rst  $38                                         ; $7ec8: $ff
	inc  bc                                          ; $7ec9: $03

jr_07e_7eca:
	rst  $38                                         ; $7eca: $ff
	ld   [hl], b                                     ; $7ecb: $70
	rst  $38                                         ; $7ecc: $ff
	push bc                                          ; $7ecd: $c5
	ld   [hl], l                                     ; $7ece: $75
	jp   nz, $18fa                                   ; $7ecf: $c2 $fa $18

	rra                                              ; $7ed2: $1f
	rst  $38                                         ; $7ed3: $ff

jr_07e_7ed4:
	ld   sp, hl                                      ; $7ed4: $f9
	add  sp, -$07                                    ; $7ed5: $e8 $f9
	jr   jr_07e_7ed4                                 ; $7ed7: $18 $fb

	ld   [$08fb], sp                                 ; $7ed9: $08 $fb $08
	ei                                               ; $7edc: $fb
	ld   a, b                                        ; $7edd: $78
	ld   a, e                                        ; $7ede: $7b
	cp   b                                           ; $7edf: $b8
	cp   e                                           ; $7ee0: $bb
	ld   [$fcf7], sp                                 ; $7ee1: $08 $f7 $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee4: $cf
	ld   c, d                                        ; $7ee5: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee6: $cf
	ld   e, d                                        ; $7ee7: $5a
	rst  JumpTable                                         ; $7ee8: $df
	ld   d, d                                        ; $7ee9: $52
	rst  JumpTable                                         ; $7eea: $df
	ld   e, d                                        ; $7eeb: $5a
	rst  JumpTable                                         ; $7eec: $df
	ld   a, d                                        ; $7eed: $7a
	rst  $38                                         ; $7eee: $ff
	ld   l, d                                        ; $7eef: $6a
	rst  $38                                         ; $7ef0: $ff
	xor  $ff                                         ; $7ef1: $ee $ff
	adc  $ff                                         ; $7ef3: $ce $ff
	ld   d, d                                        ; $7ef5: $52
	rst  $38                                         ; $7ef6: $ff
	ld   d, d                                        ; $7ef7: $52
	rst  $38                                         ; $7ef8: $ff
	ld   [hl], d                                     ; $7ef9: $72
	rst  $38                                         ; $7efa: $ff
	ld   [hl], d                                     ; $7efb: $72
	rst  $38                                         ; $7efc: $ff
	halt                                             ; $7efd: $76
	rst  $38                                         ; $7efe: $ff
	halt                                             ; $7eff: $76
	rst  $38                                         ; $7f00: $ff
	ld   a, [hl]                                     ; $7f01: $7e
	rst  $38                                         ; $7f02: $ff
	ld   [hl], c                                     ; $7f03: $71
	ldh  a, [$b0]                                    ; $7f04: $f0 $b0
	ldh  a, [$b0]                                    ; $7f06: $f0 $b0
	ldh  a, [$b0]                                    ; $7f08: $f0 $b0
	ldh  a, [$b0]                                    ; $7f0a: $f0 $b0
	ldh  a, [$b0]                                    ; $7f0c: $f0 $b0
	ldh  a, [$b0]                                    ; $7f0e: $f0 $b0
	ldh  a, [$b0]                                    ; $7f10: $f0 $b0
	ldh  a, [rVBK]                                   ; $7f12: $f0 $4f
	nop                                              ; $7f14: $00
	add  b                                           ; $7f15: $80
	ldh  a, [$80]                                    ; $7f16: $f0 $80
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	ldh  a, [$87]                                    ; $7f1a: $f0 $87
	nop                                              ; $7f1c: $00
	ld   bc, $00ff                                   ; $7f1d: $01 $ff $00
	add  b                                           ; $7f20: $80
	rst  $38                                         ; $7f21: $ff
	add  b                                           ; $7f22: $80
	add  b                                           ; $7f23: $80
	nop                                              ; $7f24: $00
	cp   a                                           ; $7f25: $bf
	add  a                                           ; $7f26: $87
	add  b                                           ; $7f27: $80
	jr   nc, jr_07e_7eca                             ; $7f28: $30 $a0

	sbc  a                                           ; $7f2a: $9f
	adc  d                                           ; $7f2b: $8a
	sbc  a                                           ; $7f2c: $9f

jr_07e_7f2d:
	adc  d                                           ; $7f2d: $8a
	sbc  a                                           ; $7f2e: $9f
	adc  d                                           ; $7f2f: $8a
	sbc  a                                           ; $7f30: $9f
	adc  d                                           ; $7f31: $8a
	sbc  a                                           ; $7f32: $9f
	adc  d                                           ; $7f33: $8a
	adc  a                                           ; $7f34: $8f
	adc  d                                           ; $7f35: $8a
	adc  a                                           ; $7f36: $8f
	add  d                                           ; $7f37: $82
	add  a                                           ; $7f38: $87
	ld   hl, sp-$01                                  ; $7f39: $f8 $ff
	sub  d                                           ; $7f3b: $92
	rst  $38                                         ; $7f3c: $ff
	sub  d                                           ; $7f3d: $92
	rst  $38                                         ; $7f3e: $ff
	jp   nc, $d2ff                                   ; $7f3f: $d2 $ff $d2

	rst  $38                                         ; $7f42: $ff
	ret  nc                                          ; $7f43: $d0

	rst  $38                                         ; $7f44: $ff
	jp   nc, $d2ff                                   ; $7f45: $d2 $ff $d2

	rst  $38                                         ; $7f48: $ff

jr_07e_7f49:
	jp   nc, $a9ff                                   ; $7f49: $d2 $ff $a9

	rst  $38                                         ; $7f4c: $ff
	xor  c                                           ; $7f4d: $a9
	rst  $38                                         ; $7f4e: $ff
	xor  c                                           ; $7f4f: $a9
	rst  $38                                         ; $7f50: $ff
	xor  c                                           ; $7f51: $a9
	rst  $38                                         ; $7f52: $ff
	xor  e                                           ; $7f53: $ab
	rst  $38                                         ; $7f54: $ff
	xor  e                                           ; $7f55: $ab
	rst  $38                                         ; $7f56: $ff
	xor  e                                           ; $7f57: $ab
	rst  $38                                         ; $7f58: $ff
	xor  e                                           ; $7f59: $ab
	add  l                                           ; $7f5a: $85
	nop                                              ; $7f5b: $00
	add  d                                           ; $7f5c: $82
	rst  $38                                         ; $7f5d: $ff
	ld   bc, $fa05                                   ; $7f5e: $01 $05 $fa
	add  b                                           ; $7f61: $80
	push af                                          ; $7f62: $f5
	nop                                              ; $7f63: $00
	rst  $38                                         ; $7f64: $ff
	add  l                                           ; $7f65: $85
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	ld   sp, hl                                      ; $7f68: $f9
	add  c                                           ; $7f69: $81
	cp   $01                                         ; $7f6a: $fe $01
	ld   e, [hl]                                     ; $7f6c: $5e
	and  [hl]                                        ; $7f6d: $a6
	add  b                                           ; $7f6e: $80
	ld   d, [hl]                                     ; $7f6f: $56
	add  b                                           ; $7f70: $80
	and  [hl]                                        ; $7f71: $a6
	add  b                                           ; $7f72: $80
	ld   b, [hl]                                     ; $7f73: $46
	add  c                                           ; $7f74: $81
	ld   b, $03                                      ; $7f75: $06 $03
	cp   $06                                         ; $7f77: $fe $06
	cp   $3e                                         ; $7f79: $fe $3e
	add  e                                           ; $7f7b: $83
	add  $00                                         ; $7f7c: $c6 $00
	rlca                                             ; $7f7e: $07
	add  l                                           ; $7f7f: $85
	nop                                              ; $7f80: $00
	add  d                                           ; $7f81: $82
	ldh  a, [rP1]                                    ; $7f82: $f0 $00
	nop                                              ; $7f84: $00
	add  c                                           ; $7f85: $81
	ldh  a, [rSB]                                    ; $7f86: $f0 $01
	ld   a, [de]                                     ; $7f88: $1a
	ld   [$7580], a                                  ; $7f89: $ea $80 $75
	add  b                                           ; $7f8c: $80
	ld   [$7580], a                                  ; $7f8d: $ea $80 $75
	add  b                                           ; $7f90: $80
	ld   [$7d80], a                                  ; $7f91: $ea $80 $7d
	add  b                                           ; $7f94: $80
	ld   [$7d80], a                                  ; $7f95: $ea $80 $7d
	nop                                              ; $7f98: $00
	ld   sp, hl                                      ; $7f99: $f9
	add  c                                           ; $7f9a: $81
	cp   $8a                                         ; $7f9b: $fe $8a
	add  $00                                         ; $7f9d: $c6 $00
	ld   b, a                                        ; $7f9f: $47
	adc  l                                           ; $7fa0: $8d
	add  b                                           ; $7fa1: $80
	nop                                              ; $7fa2: $00
	ret  nz                                          ; $7fa3: $c0

	add  b                                           ; $7fa4: $80
	ld   b, b                                        ; $7fa5: $40
	add  d                                           ; $7fa6: $82
	nop                                              ; $7fa7: $00
	add  b                                           ; $7fa8: $80
	db   $10                                         ; $7fa9: $10
	add  b                                           ; $7faa: $80
	jr   nz, jr_07e_7f2d                             ; $7fab: $20 $80

	nop                                              ; $7fad: $00
	add  b                                           ; $7fae: $80
	add  b                                           ; $7faf: $80
	adc  a                                           ; $7fb0: $8f
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	ld   bc, $068d                                   ; $7fb3: $01 $8d $06
	nop                                              ; $7fb6: $00
	ld   b, a                                        ; $7fb7: $47
	add  a                                           ; $7fb8: $87
	add  b                                           ; $7fb9: $80
	nop                                              ; $7fba: $00
	ldh  a, [$81]                                    ; $7fbb: $f0 $81
	and  b                                           ; $7fbd: $a0
	ld   [bc], a                                     ; $7fbe: $02
	ldh  [hScriptOpcodeParams], a                                    ; $7fbf: $e0 $a0
	ret  nc                                          ; $7fc1: $d0

	add  d                                           ; $7fc2: $82
	nop                                              ; $7fc3: $00
	add  b                                           ; $7fc4: $80
	db   $10                                         ; $7fc5: $10
	add  b                                           ; $7fc6: $80
	jr   nz, jr_07e_7f49                             ; $7fc7: $20 $80

	ld   d, b                                        ; $7fc9: $50
	add  b                                           ; $7fca: $80
	and  b                                           ; $7fcb: $a0
	add  b                                           ; $7fcc: $80
	ld   d, b                                        ; $7fcd: $50
	ld   bc, $32a0                                   ; $7fce: $01 $a0 $32
	adc  l                                           ; $7fd1: $8d
	ld   l, l                                        ; $7fd2: $6d
	adc  [hl]                                        ; $7fd3: $8e
	or   [hl]                                        ; $7fd4: $b6
	adc  [hl]                                        ; $7fd5: $8e
	xor  d                                           ; $7fd6: $aa
	nop                                              ; $7fd7: $00
	xor  a                                           ; $7fd8: $af
	adc  l                                           ; $7fd9: $8d
	and  b                                           ; $7fda: $a0
	ld   bc, $aaa5                                   ; $7fdb: $01 $a5 $aa
	add  b                                           ; $7fde: $80
	ld   d, l                                        ; $7fdf: $55
	add  c                                           ; $7fe0: $81
	nop                                              ; $7fe1: $00
	inc  b                                           ; $7fe2: $04
	rst  $38                                         ; $7fe3: $ff
	nop                                              ; $7fe4: $00
	rst  $38                                         ; $7fe5: $ff
	adc  d                                           ; $7fe6: $8a
	ld   [hl], l                                     ; $7fe7: $75
	add  b                                           ; $7fe8: $80
	ld   [$7580], a                                  ; $7fe9: $ea $80 $75
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
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
	push hl                                          ; $7ffe: $e5
	nop                                              ; $7fff: $00
