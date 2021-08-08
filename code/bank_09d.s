; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09d", ROMX[$4000], BANK[$9d]

	ld   [hl], e                                     ; $4000: $73
	ld   bc, $0082                                   ; $4001: $01 $82 $00
	ld   [bc], a                                     ; $4004: $02
	ld   a, [hl]                                     ; $4005: $7e
	nop                                              ; $4006: $00
	add  c                                           ; $4007: $81
	add  b                                           ; $4008: $80
	inc  a                                           ; $4009: $3c
	add  b                                           ; $400a: $80
	ld   a, [hl]                                     ; $400b: $7e
	adc  [hl]                                        ; $400c: $8e
	ld   h, [hl]                                     ; $400d: $66
	add  b                                           ; $400e: $80
	ld   a, [hl]                                     ; $400f: $7e
	inc  bc                                          ; $4010: $03
	inc  a                                           ; $4011: $3c
	cp   l                                           ; $4012: $bd
	nop                                              ; $4013: $00
	ld   a, [hl]                                     ; $4014: $7e
	add  c                                           ; $4015: $81
	nop                                              ; $4016: $00
	ld   [bc], a                                     ; $4017: $02
	inc  a                                           ; $4018: $3c
	nop                                              ; $4019: $00
	ld   b, b                                        ; $401a: $40
	add  b                                           ; $401b: $80
	db   $18, $80                                    ; $401c: $18 $80
	jr   c, @+$03                                    ; $401e: $38 $01

	jr   jr_09d_407a                                 ; $4020: $18 $58

	sub  b                                           ; $4022: $90
	jr   jr_09d_4026                                 ; $4023: $18 $01

	nop                                              ; $4025: $00

jr_09d_4026:
	inc  a                                           ; $4026: $3c
	add  c                                           ; $4027: $81
	nop                                              ; $4028: $00
	ld   [bc], a                                     ; $4029: $02
	ld   a, [hl]                                     ; $402a: $7e
	nop                                              ; $402b: $00
	add  c                                           ; $402c: $81
	add  b                                           ; $402d: $80
	inc  a                                           ; $402e: $3c
	add  b                                           ; $402f: $80
	ld   a, [hl]                                     ; $4030: $7e
	add  d                                           ; $4031: $82
	ld   h, [hl]                                     ; $4032: $66
	add  hl, bc                                      ; $4033: $09
	ld   b, $e6                                      ; $4034: $06 $e6
	ld   b, $26                                      ; $4036: $06 $26
	inc  c                                           ; $4038: $0c
	ld   c, l                                        ; $4039: $4d
	db   $18, $9a                                    ; $403a: $18 $9a
	jr   nc, jr_09d_4071                             ; $403c: $30 $33

	add  b                                           ; $403e: $80
	ld   h, b                                        ; $403f: $60
	add  d                                           ; $4040: $82
	ld   a, [hl]                                     ; $4041: $7e
	ld   bc, $ff00                                   ; $4042: $01 $00 $ff
	add  c                                           ; $4045: $81
	nop                                              ; $4046: $00
	ld   [bc], a                                     ; $4047: $02
	ld   a, [hl]                                     ; $4048: $7e
	nop                                              ; $4049: $00
	add  c                                           ; $404a: $81
	add  b                                           ; $404b: $80
	inc  a                                           ; $404c: $3c
	add  b                                           ; $404d: $80
	ld   a, [hl]                                     ; $404e: $7e
	add  d                                           ; $404f: $82
	ld   h, [hl]                                     ; $4050: $66
	ld   bc, $c606                                   ; $4051: $01 $06 $c6
	add  b                                           ; $4054: $80
	inc  e                                           ; $4055: $1c
	inc  bc                                          ; $4056: $03
	ld   b, $36                                      ; $4057: $06 $36
	ld   b, $f6                                      ; $4059: $06 $f6
	add  b                                           ; $405b: $80
	ld   b, $80                                      ; $405c: $06 $80
	ld   h, [hl]                                     ; $405e: $66
	add  b                                           ; $405f: $80
	ld   a, [hl]                                     ; $4060: $7e
	inc  bc                                          ; $4061: $03
	inc  a                                           ; $4062: $3c
	cp   l                                           ; $4063: $bd
	nop                                              ; $4064: $00
	ld   a, [hl]                                     ; $4065: $7e
	add  c                                           ; $4066: $81
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	ld   e, $80                                      ; $4069: $1e $80
	nop                                              ; $406b: $00
	ld   bc, $2c0c                                   ; $406c: $01 $0c $2c
	add  b                                           ; $406f: $80
	inc  c                                           ; $4070: $0c

jr_09d_4071:
	add  c                                           ; $4071: $81
	inc  e                                           ; $4072: $1c
	nop                                              ; $4073: $00
	ld   e, h                                        ; $4074: $5c
	add  b                                           ; $4075: $80
	inc  a                                           ; $4076: $3c
	inc  bc                                          ; $4077: $03
	inc  l                                           ; $4078: $2c
	xor  h                                           ; $4079: $ac

jr_09d_407a:
	inc  l                                           ; $407a: $2c
	dec  l                                           ; $407b: $2d
	add  b                                           ; $407c: $80
	ld   l, h                                        ; $407d: $6c
	add  d                                           ; $407e: $82
	ld   a, [hl]                                     ; $407f: $7e

Jump_09d_4080:
	ld   bc, $ed0c                                   ; $4080: $01 $0c $ed
	add  b                                           ; $4083: $80
	inc  c                                           ; $4084: $0c
	ld   bc, $1e00                                   ; $4085: $01 $00 $1e
	add  c                                           ; $4088: $81
	nop                                              ; $4089: $00
	nop                                              ; $408a: $00
	rst  $38                                         ; $408b: $ff
	add  b                                           ; $408c: $80
	nop                                              ; $408d: $00
	add  d                                           ; $408e: $82
	ld   a, [hl]                                     ; $408f: $7e
	dec  b                                           ; $4090: $05
	ld   h, b                                        ; $4091: $60
	ld   l, a                                        ; $4092: $6f
	ld   h, b                                        ; $4093: $60
	ld   l, [hl]                                     ; $4094: $6e
	ld   h, b                                        ; $4095: $60
	ld   h, c                                        ; $4096: $61
	add  b                                           ; $4097: $80
	ld   a, h                                        ; $4098: $7c
	add  b                                           ; $4099: $80
	ld   a, [hl]                                     ; $409a: $7e
	add  b                                           ; $409b: $80
	ld   h, [hl]                                     ; $409c: $66
	add  b                                           ; $409d: $80
	ld   b, $80                                      ; $409e: $06 $80
	ld   h, [hl]                                     ; $40a0: $66
	add  b                                           ; $40a1: $80
	ld   a, [hl]                                     ; $40a2: $7e
	inc  bc                                          ; $40a3: $03
	inc  a                                           ; $40a4: $3c
	cp   l                                           ; $40a5: $bd
	nop                                              ; $40a6: $00
	ld   a, [hl]                                     ; $40a7: $7e
	add  c                                           ; $40a8: $81
	nop                                              ; $40a9: $00
	ld   [bc], a                                     ; $40aa: $02
	ld   a, [hl]                                     ; $40ab: $7e
	nop                                              ; $40ac: $00
	add  c                                           ; $40ad: $81
	add  b                                           ; $40ae: $80
	inc  a                                           ; $40af: $3c
	add  b                                           ; $40b0: $80
	ld   a, [hl]                                     ; $40b1: $7e
	add  b                                           ; $40b2: $80
	ld   h, [hl]                                     ; $40b3: $66
	inc  bc                                          ; $40b4: $03
	ld   h, b                                        ; $40b5: $60
	ld   h, c                                        ; $40b6: $61
	ld   h, b                                        ; $40b7: $60
	ld   h, c                                        ; $40b8: $61
	add  b                                           ; $40b9: $80
	ld   a, h                                        ; $40ba: $7c
	add  b                                           ; $40bb: $80
	ld   a, [hl]                                     ; $40bc: $7e
	add  h                                           ; $40bd: $84
	ld   h, [hl]                                     ; $40be: $66
	add  b                                           ; $40bf: $80
	ld   a, [hl]                                     ; $40c0: $7e
	inc  bc                                          ; $40c1: $03
	inc  a                                           ; $40c2: $3c
	cp   l                                           ; $40c3: $bd
	nop                                              ; $40c4: $00
	ld   a, [hl]                                     ; $40c5: $7e
	add  c                                           ; $40c6: $81
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	rst  $38                                         ; $40c9: $ff
	add  b                                           ; $40ca: $80
	nop                                              ; $40cb: $00
	add  d                                           ; $40cc: $82
	ld   a, [hl]                                     ; $40cd: $7e
	add  d                                           ; $40ce: $82
	ld   h, [hl]                                     ; $40cf: $66
	rlca                                             ; $40d0: $07
	ld   b, $e6                                      ; $40d1: $06 $e6
	ld   b, $26                                      ; $40d3: $06 $26
	inc  c                                           ; $40d5: $0c
	dec  c                                           ; $40d6: $0d
	jr   jr_09d_40f3                                 ; $40d7: $18 $1a

	add  [hl]                                        ; $40d9: $86
	jr   jr_09d_40dd                                 ; $40da: $18 $01

	nop                                              ; $40dc: $00

jr_09d_40dd:
	inc  a                                           ; $40dd: $3c
	add  c                                           ; $40de: $81
	nop                                              ; $40df: $00
	ld   [bc], a                                     ; $40e0: $02

jr_09d_40e1:
	ld   a, [hl]                                     ; $40e1: $7e
	nop                                              ; $40e2: $00
	add  c                                           ; $40e3: $81
	add  b                                           ; $40e4: $80
	inc  a                                           ; $40e5: $3c
	add  b                                           ; $40e6: $80
	ld   a, [hl]                                     ; $40e7: $7e

jr_09d_40e8:
	add  d                                           ; $40e8: $82
	ld   h, [hl]                                     ; $40e9: $66
	add  b                                           ; $40ea: $80
	ld   a, [hl]                                     ; $40eb: $7e
	add  b                                           ; $40ec: $80
	inc  a                                           ; $40ed: $3c
	add  b                                           ; $40ee: $80
	ld   a, [hl]                                     ; $40ef: $7e
	add  h                                           ; $40f0: $84
	ld   h, [hl]                                     ; $40f1: $66
	add  b                                           ; $40f2: $80

jr_09d_40f3:
	ld   a, [hl]                                     ; $40f3: $7e
	inc  bc                                          ; $40f4: $03
	inc  a                                           ; $40f5: $3c
	cp   l                                           ; $40f6: $bd
	nop                                              ; $40f7: $00
	ld   a, [hl]                                     ; $40f8: $7e
	add  c                                           ; $40f9: $81
	nop                                              ; $40fa: $00
	ld   [bc], a                                     ; $40fb: $02
	ld   a, [hl]                                     ; $40fc: $7e
	nop                                              ; $40fd: $00
	add  c                                           ; $40fe: $81
	add  b                                           ; $40ff: $80
	inc  a                                           ; $4100: $3c
	add  b                                           ; $4101: $80
	ld   a, [hl]                                     ; $4102: $7e
	add  h                                           ; $4103: $84
	ld   h, [hl]                                     ; $4104: $66
	add  b                                           ; $4105: $80
	ld   a, [hl]                                     ; $4106: $7e
	inc  bc                                          ; $4107: $03
	ld   a, $be                                      ; $4108: $3e $be
	ld   b, $86                                      ; $410a: $06 $86
	add  b                                           ; $410c: $80
	ld   b, $80                                      ; $410d: $06 $80
	ld   h, [hl]                                     ; $410f: $66
	add  b                                           ; $4110: $80
	ld   a, [hl]                                     ; $4111: $7e
	inc  bc                                          ; $4112: $03
	inc  a                                           ; $4113: $3c
	cp   l                                           ; $4114: $bd
	nop                                              ; $4115: $00
	ld   a, [hl]                                     ; $4116: $7e
	add  b                                           ; $4117: $80
	nop                                              ; $4118: $00
	ld   bc, $407f                                   ; $4119: $01 $7f $40
	add  c                                           ; $411c: $81
	ld   a, a                                        ; $411d: $7f
	nop                                              ; $411e: $00
	ld   [hl], b                                     ; $411f: $70
	add  c                                           ; $4120: $81
	ld   a, a                                        ; $4121: $7f
	nop                                              ; $4122: $00
	ld   [hl], b                                     ; $4123: $70
	add  c                                           ; $4124: $81
	ld   a, a                                        ; $4125: $7f
	nop                                              ; $4126: $00
	ld   [hl], b                                     ; $4127: $70
	add  e                                           ; $4128: $83
	ld   a, a                                        ; $4129: $7f
	nop                                              ; $412a: $00
	ld   [hl], b                                     ; $412b: $70
	add  c                                           ; $412c: $81
	ld   a, a                                        ; $412d: $7f
	nop                                              ; $412e: $00
	ld   b, b                                        ; $412f: $40
	add  b                                           ; $4130: $80
	ld   a, a                                        ; $4131: $7f
	add  h                                           ; $4132: $84
	nop                                              ; $4133: $00
	ld   bc, $09f9                                   ; $4134: $01 $f9 $09
	add  c                                           ; $4137: $81
	ld   sp, hl                                      ; $4138: $f9
	nop                                              ; $4139: $00
	add  hl, sp                                      ; $413a: $39
	add  b                                           ; $413b: $80
	ld   sp, hl                                      ; $413c: $f9
	ld   bc, $3afb                                   ; $413d: $01 $fb $3a
	add  c                                           ; $4140: $81
	ld   a, [$3a00]                                  ; $4141: $fa $00 $3a
	add  b                                           ; $4144: $80
	ld   a, [$fe00]                                  ; $4145: $fa $00 $fe
	add  b                                           ; $4148: $80
	db   $fd                                         ; $4149: $fd
	nop                                              ; $414a: $00
	dec  a                                           ; $414b: $3d
	add  c                                           ; $414c: $81
	db   $fd                                         ; $414d: $fd
	nop                                              ; $414e: $00
	rrca                                             ; $414f: $0f
	add  b                                           ; $4150: $80
	rst  $38                                         ; $4151: $ff
	add  e                                           ; $4152: $83
	nop                                              ; $4153: $00
	nop                                              ; $4154: $00
	ccf                                              ; $4155: $3f
	add  b                                           ; $4156: $80
	nop                                              ; $4157: $00
	add  b                                           ; $4158: $80
	rra                                              ; $4159: $1f
	add  d                                           ; $415a: $82
	jr   jr_09d_40dd                                 ; $415b: $18 $80

	rra                                              ; $415d: $1f
	add  d                                           ; $415e: $82
	jr   jr_09d_40e1                                 ; $415f: $18 $80

	rra                                              ; $4161: $1f
	ld   bc, $5b18                                   ; $4162: $01 $18 $5b
	add  b                                           ; $4165: $80
	jr   jr_09d_40e8                                 ; $4166: $18 $80

	jr   c, jr_09d_416d                              ; $4168: $38 $03

	jr   nc, jr_09d_41a0                             ; $416a: $30 $34

	nop                                              ; $416c: $00

jr_09d_416d:
	ld   a, b                                        ; $416d: $78
	add  e                                           ; $416e: $83
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	ld   sp, hl                                      ; $4171: $f9
	add  b                                           ; $4172: $80
	nop                                              ; $4173: $00
	add  b                                           ; $4174: $80
	ldh  a, [$81]                                    ; $4175: $f0 $81
	jr   nc, jr_09d_4179                             ; $4177: $30 $00

jr_09d_4179:
	ld   [hl-], a                                    ; $4179: $32
	add  b                                           ; $417a: $80
	ldh  a, [$82]                                    ; $417b: $f0 $82
	ld   sp, $f103                                   ; $417d: $31 $03 $f1
	push af                                          ; $4180: $f5
	ld   sp, $84b1                                   ; $4181: $31 $b1 $84
	ld   [hl-], a                                    ; $4184: $32
	ld   bc, $7f00                                   ; $4185: $01 $00 $7f
	add  e                                           ; $4188: $83
	nop                                              ; $4189: $00
	ld   [bc], a                                     ; $418a: $02
	rlca                                             ; $418b: $07
	nop                                              ; $418c: $00
	ld   a, b                                        ; $418d: $78
	add  b                                           ; $418e: $80
	inc  bc                                          ; $418f: $03
	add  d                                           ; $4190: $82
	inc  sp                                          ; $4191: $33
	add  b                                           ; $4192: $80
	dec  sp                                          ; $4193: $3b
	rlca                                             ; $4194: $07
	dec  de                                          ; $4195: $1b
	ld   e, e                                        ; $4196: $5b
	inc  bc                                          ; $4197: $03
	inc  hl                                          ; $4198: $23
	rlca                                             ; $4199: $07
	daa                                              ; $419a: $27
	rrca                                             ; $419b: $0f
	ld   c, a                                        ; $419c: $4f
	add  b                                           ; $419d: $80
	inc  e                                           ; $419e: $1c
	dec  b                                           ; $419f: $05

jr_09d_41a0:
	jr   c, jr_09d_41dd                              ; $41a0: $38 $3b

	jr   nc, jr_09d_41d8                             ; $41a2: $30 $34

	nop                                              ; $41a4: $00
	ld   a, b                                        ; $41a5: $78
	add  e                                           ; $41a6: $83
	nop                                              ; $41a7: $00
	ld   [bc], a                                     ; $41a8: $02
	add  c                                           ; $41a9: $81
	nop                                              ; $41aa: $00
	ld   a, b                                        ; $41ab: $78
	add  b                                           ; $41ac: $80
	nop                                              ; $41ad: $00
	add  c                                           ; $41ae: $81
	jr   nc, jr_09d_41b1                             ; $41af: $30 $00

jr_09d_41b1:
	ld   [hl-], a                                    ; $41b1: $32
	add  b                                           ; $41b2: $80
	ld   [hl], b                                     ; $41b3: $70
	rlca                                             ; $41b4: $07
	ld   h, c                                        ; $41b5: $61
	ld   l, c                                        ; $41b6: $69
	ld   bc, $8111                                   ; $41b7: $01 $11 $81
	sub  l                                           ; $41ba: $95
	pop  bc                                          ; $41bb: $c1
	ret                                              ; $41bc: $c9


	add  b                                           ; $41bd: $80
	ldh  [c], a                                      ; $41be: $e2
	add  b                                           ; $41bf: $80
	ld   [hl], d                                     ; $41c0: $72
	inc  bc                                          ; $41c1: $03
	ld   [hl-], a                                    ; $41c2: $32
	or   d                                           ; $41c3: $b2
	nop                                              ; $41c4: $00
	ld   a, a                                        ; $41c5: $7f
	add  e                                           ; $41c6: $83
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	rlca                                             ; $41c9: $07
	add  b                                           ; $41ca: $80
	nop                                              ; $41cb: $00
	add  c                                           ; $41cc: $81
	inc  bc                                          ; $41cd: $03
	nop                                              ; $41ce: $00
	ld   a, e                                        ; $41cf: $7b
	add  b                                           ; $41d0: $80
	inc  bc                                          ; $41d1: $03
	add  d                                           ; $41d2: $82
	dec  sp                                          ; $41d3: $3b
	add  d                                           ; $41d4: $82
	dec  de                                          ; $41d5: $1b
	add  d                                           ; $41d6: $82
	inc  sp                                          ; $41d7: $33

jr_09d_41d8:
	ld   bc, $7b03                                   ; $41d8: $01 $03 $7b
	add  b                                           ; $41db: $80
	inc  bc                                          ; $41dc: $03

jr_09d_41dd:
	ld   bc, $0700                                   ; $41dd: $01 $00 $07
	add  e                                           ; $41e0: $83
	nop                                              ; $41e1: $00
	nop                                              ; $41e2: $00
	add  c                                           ; $41e3: $81
	add  c                                           ; $41e4: $81
	nop                                              ; $41e5: $00
	nop                                              ; $41e6: $00
	ld   a, b                                        ; $41e7: $78
	add  b                                           ; $41e8: $80
	nop                                              ; $41e9: $00

jr_09d_41ea:
	ld   bc, $3230                                   ; $41ea: $01 $30 $32
	add  b                                           ; $41ed: $80
	ld   [hl], b                                     ; $41ee: $70
	dec  b                                           ; $41ef: $05
	ld   h, c                                        ; $41f0: $61
	ld   l, c                                        ; $41f1: $69
	ld   h, c                                        ; $41f2: $61
	ld   l, c                                        ; $41f3: $69
	ld   h, c                                        ; $41f4: $61
	ld   h, l                                        ; $41f5: $65
	add  b                                           ; $41f6: $80
	ld   [hl], c                                     ; $41f7: $71
	add  b                                           ; $41f8: $80
	ld   [hl-], a                                    ; $41f9: $32
	ld   bc, $7a02                                   ; $41fa: $01 $02 $7a
	add  b                                           ; $41fd: $80
	ld   [bc], a                                     ; $41fe: $02
	ld   bc, $8700                                   ; $41ff: $01 $00 $87

Jump_09d_4202:
	add  e                                           ; $4202: $83
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	rlca                                             ; $4205: $07
	add  b                                           ; $4206: $80
	nop                                              ; $4207: $00
	ld   bc, $7b03                                   ; $4208: $01 $03 $7b
	add  b                                           ; $420b: $80
	inc  bc                                          ; $420c: $03
	add  d                                           ; $420d: $82
	ccf                                              ; $420e: $3f
	dec  b                                           ; $420f: $05
	rrca                                             ; $4210: $0f
	ld   l, a                                        ; $4211: $6f
	rrca                                             ; $4212: $0f
	cpl                                              ; $4213: $2f
	rra                                              ; $4214: $1f
	ld   e, a                                        ; $4215: $5f
	add  d                                           ; $4216: $82
	dec  sp                                          ; $4217: $3b
	dec  b                                           ; $4218: $05
	inc  sp                                          ; $4219: $33
	dec  sp                                          ; $421a: $3b
	inc  bc                                          ; $421b: $03
	ld   [hl], e                                     ; $421c: $73
	nop                                              ; $421d: $00
	rlca                                             ; $421e: $07
	add  e                                           ; $421f: $83
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	add  c                                           ; $4222: $81
	add  c                                           ; $4223: $81
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	ld   a, b                                        ; $4226: $78
	add  b                                           ; $4227: $80
	nop                                              ; $4228: $00
	ld   bc, $f2f0                                   ; $4229: $01 $f0 $f2
	add  b                                           ; $422c: $80
	ldh  a, [rSB]                                    ; $422d: $f0 $01
	pop  bc                                          ; $422f: $c1
	ret                                              ; $4230: $c9


	add  b                                           ; $4231: $80
	pop  bc                                          ; $4232: $c1
	ld   bc, $ede1                                   ; $4233: $01 $e1 $ed
	add  b                                           ; $4236: $80
	ld   [hl], c                                     ; $4237: $71
	add  b                                           ; $4238: $80
	ld   [hl], d                                     ; $4239: $72
	dec  b                                           ; $423a: $05
	ld   [hl-], a                                    ; $423b: $32
	ld   [hl], d                                     ; $423c: $72
	ld   [bc], a                                     ; $423d: $02
	ld   a, [hl-]                                    ; $423e: $3a
	nop                                              ; $423f: $00
	add  a                                           ; $4240: $87
	add  e                                           ; $4241: $83
	nop                                              ; $4242: $00
	inc  b                                           ; $4243: $04
	rlca                                             ; $4244: $07
	nop                                              ; $4245: $00
	jr   jr_09d_424b                                 ; $4246: $18 $03

	ld   h, e                                        ; $4248: $63
	add  b                                           ; $4249: $80
	rrca                                             ; $424a: $0f

jr_09d_424b:
	add  b                                           ; $424b: $80
	inc  a                                           ; $424c: $3c
	add  b                                           ; $424d: $80
	jr   nz, jr_09d_4259                             ; $424e: $20 $09

	rra                                              ; $4250: $1f
	ld   a, a                                        ; $4251: $7f
	inc  bc                                          ; $4252: $03
	inc  hl                                          ; $4253: $23
	rrca                                             ; $4254: $0f
	ld   c, a                                        ; $4255: $4f
	inc  sp                                          ; $4256: $33
	ld   [hl], e                                     ; $4257: $73
	inc  de                                          ; $4258: $13

jr_09d_4259:
	ld   d, e                                        ; $4259: $53
	add  b                                           ; $425a: $80
	rrca                                             ; $425b: $0f
	add  b                                           ; $425c: $80
	ccf                                              ; $425d: $3f
	ld   bc, $7f00                                   ; $425e: $01 $00 $7f
	add  e                                           ; $4261: $83
	nop                                              ; $4262: $00
	inc  b                                           ; $4263: $04
	add  c                                           ; $4264: $81
	nop                                              ; $4265: $00
	ld   h, b                                        ; $4266: $60
	nop                                              ; $4267: $00
	jr   jr_09d_41ea                                 ; $4268: $18 $80

	ret  nz                                          ; $426a: $c0

	ld   bc, $f2f0                                   ; $426b: $01 $f0 $f2
	add  b                                           ; $426e: $80
	db   $10                                         ; $426f: $10
	add  hl, bc                                      ; $4270: $09
	pop  hl                                          ; $4271: $e1
	ld   sp, hl                                      ; $4272: $f9
	ld   bc, $c111                                   ; $4273: $01 $11 $c1
	call $3931                                       ; $4276: $cd $31 $39
	ld   [hl+], a                                    ; $4279: $22
	ld   a, [hl+]                                    ; $427a: $2a
	add  b                                           ; $427b: $80
	jp   nz, $f280                                   ; $427c: $c2 $80 $f2

	ld   bc, $ff00                                   ; $427f: $01 $00 $ff
	add  e                                           ; $4282: $83
	nop                                              ; $4283: $00
	ld   bc, $0007                                   ; $4284: $01 $07 $00
	add  d                                           ; $4287: $82
	inc  bc                                          ; $4288: $03
	ld   bc, $033b                                   ; $4289: $01 $3b $03
	add  d                                           ; $428c: $82
	rra                                              ; $428d: $1f
	add  b                                           ; $428e: $80
	inc  bc                                          ; $428f: $03
	nop                                              ; $4290: $00
	dec  sp                                          ; $4291: $3b
	add  c                                           ; $4292: $81
	inc  bc                                          ; $4293: $03
	ld   bc, $037b                                   ; $4294: $01 $7b $03
	add  d                                           ; $4297: $82
	ccf                                              ; $4298: $3f
	add  b                                           ; $4299: $80
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	ld   a, a                                        ; $429c: $7f
	add  e                                           ; $429d: $83
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	add  c                                           ; $42a0: $81
	add  e                                           ; $42a1: $83
	nop                                              ; $42a2: $00
	ld   [bc], a                                     ; $42a3: $02
	ld   [hl], b                                     ; $42a4: $70
	nop                                              ; $42a5: $00
	ldh  [c], a                                      ; $42a6: $e2
	add  b                                           ; $42a7: $80
	ldh  [rP1], a                                    ; $42a8: $e0 $00
	pop  hl                                          ; $42aa: $e1
	add  b                                           ; $42ab: $80
	ld   bc, $7105                                   ; $42ac: $01 $05 $71
	ld   bc, $0105                                   ; $42af: $01 $05 $01
	ld   a, c                                        ; $42b2: $79
	ld   [bc], a                                     ; $42b3: $02
	add  d                                           ; $42b4: $82
	ldh  a, [c]                                      ; $42b5: $f2
	ld   [bc], a                                     ; $42b6: $02
	ld   [bc], a                                     ; $42b7: $02
	nop                                              ; $42b8: $00
	rst  $38                                         ; $42b9: $ff
	add  e                                           ; $42ba: $83
	nop                                              ; $42bb: $00
	inc  bc                                          ; $42bc: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42bd: $cf
	nop                                              ; $42be: $00
	ld   [hl], $86                                   ; $42bf: $36 $86
	add  b                                           ; $42c1: $80
	sbc  a                                           ; $42c2: $9f
	add  b                                           ; $42c3: $80
	add  [hl]                                        ; $42c4: $86
	add  b                                           ; $42c5: $80
	sbc  a                                           ; $42c6: $9f
	inc  bc                                          ; $42c7: $03
	sbc  c                                           ; $42c8: $99
	add  hl, de                                      ; $42c9: $19
	ld   e, a                                        ; $42ca: $5f
	rra                                              ; $42cb: $1f
	add  b                                           ; $42cc: $80
	add  hl, de                                      ; $42cd: $19
	add  b                                           ; $42ce: $80
	rra                                              ; $42cf: $1f
	add  b                                           ; $42d0: $80
	ld   b, $01                                      ; $42d1: $06 $01
	sbc  a                                           ; $42d3: $9f
	rra                                              ; $42d4: $1f
	add  b                                           ; $42d5: $80
	ld   b, $02                                      ; $42d6: $06 $02
	jr   nc, jr_09d_42da                             ; $42d8: $30 $00

jr_09d_42da:
	rrca                                             ; $42da: $0f
	add  e                                           ; $42db: $83
	nop                                              ; $42dc: $00
	inc  bc                                          ; $42dd: $03
	ld   a, a                                        ; $42de: $7f
	nop                                              ; $42df: $00
	cp   [hl]                                        ; $42e0: $be
	ld   a, $80                                      ; $42e1: $3e $80
	or   [hl]                                        ; $42e3: $b6
	add  b                                           ; $42e4: $80
	ld   [hl], $80                                   ; $42e5: $36 $80
	cp   [hl]                                        ; $42e7: $be
	add  d                                           ; $42e8: $82
	or   [hl]                                        ; $42e9: $b6
	add  b                                           ; $42ea: $80
	cp   [hl]                                        ; $42eb: $be
	add  b                                           ; $42ec: $80
	or   [hl]                                        ; $42ed: $b6
	add  b                                           ; $42ee: $80
	ld   [hl], $80                                   ; $42ef: $36 $80
	or   [hl]                                        ; $42f1: $b6
	add  b                                           ; $42f2: $80
	ld   [hl], $02                                   ; $42f3: $36 $02
	add  b                                           ; $42f5: $80
	nop                                              ; $42f6: $00
	ld   a, a                                        ; $42f7: $7f
	add  e                                           ; $42f8: $83
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42fb: $cf
	add  b                                           ; $42fc: $80
	nop                                              ; $42fd: $00
	add  b                                           ; $42fe: $80
	add  a                                           ; $42ff: $87

Call_09d_4300:
	add  b                                           ; $4300: $80
	add  h                                           ; $4301: $84
	ld   bc, $9787                                   ; $4302: $01 $87 $97
	add  b                                           ; $4305: $80
	adc  b                                           ; $4306: $88
	inc  bc                                          ; $4307: $03
	dec  bc                                          ; $4308: $0b
	ld   c, e                                        ; $4309: $4b
	ld   a, [bc]                                     ; $430a: $0a
	ld   a, [hl+]                                    ; $430b: $2a
	add  b                                           ; $430c: $80
	dec  de                                          ; $430d: $1b
	inc  bc                                          ; $430e: $03
	ld   a, [de]                                     ; $430f: $1a
	ld   a, [hl-]                                    ; $4310: $3a
	inc  bc                                          ; $4311: $03
	and  e                                           ; $4312: $a3
	add  b                                           ; $4313: $80
	nop                                              ; $4314: $00
	add  b                                           ; $4315: $80
	rra                                              ; $4316: $1f
	ld   bc, $3f00                                   ; $4317: $01 $00 $3f
	add  e                                           ; $431a: $83
	nop                                              ; $431b: $00
	nop                                              ; $431c: $00
	db   $fc                                         ; $431d: $fc
	add  b                                           ; $431e: $80
	nop                                              ; $431f: $00
	add  b                                           ; $4320: $80
	ld   hl, sp-$80                                  ; $4321: $f8 $80
	ld   [$f801], sp                                 ; $4323: $08 $01 $f8
	ld   a, [$0480]                                  ; $4326: $fa $80 $04
	add  b                                           ; $4329: $80
	db   $f4                                         ; $432a: $f4
	ld   bc, $1514                                   ; $432b: $01 $14 $15
	add  b                                           ; $432e: $80
	or   $03                                         ; $432f: $f6 $03
	ld   d, $17                                      ; $4331: $16 $17
	ldh  a, [$f1]                                    ; $4333: $f0 $f1
	add  b                                           ; $4335: $80
	nop                                              ; $4336: $00
	add  b                                           ; $4337: $80
	cp   $01                                         ; $4338: $fe $01
	nop                                              ; $433a: $00
	rst  $38                                         ; $433b: $ff
	add  e                                           ; $433c: $83
	nop                                              ; $433d: $00
	inc  bc                                          ; $433e: $03
	pop  bc                                          ; $433f: $c1
	nop                                              ; $4340: $00
	ld   a, $80                                      ; $4341: $3e $80
	add  b                                           ; $4343: $80
	sbc  a                                           ; $4344: $9f
	add  b                                           ; $4345: $80
	add  b                                           ; $4346: $80
	dec  b                                           ; $4347: $05
	and  [hl]                                        ; $4348: $a6
	add  [hl]                                        ; $4349: $86
	adc  [hl]                                        ; $434a: $8e
	ld   c, $6c                                      ; $434b: $0e $6c
	inc  c                                           ; $434d: $0c
	add  d                                           ; $434e: $82
	inc  e                                           ; $434f: $1c
	add  b                                           ; $4350: $80
	inc  c                                           ; $4351: $0c
	nop                                              ; $4352: $00
	xor  l                                           ; $4353: $ad
	add  c                                           ; $4354: $81
	inc  c                                           ; $4355: $0c
	add  b                                           ; $4356: $80
	nop                                              ; $4357: $00
	nop                                              ; $4358: $00
	ld   e, $83                                      ; $4359: $1e $83
	nop                                              ; $435b: $00
	inc  bc                                          ; $435c: $03
	ldh  [rP1], a                                    ; $435d: $e0 $00
	rst  JumpTable                                         ; $435f: $df
	ret  nz                                          ; $4360: $c0

	add  b                                           ; $4361: $80
	cp   $80                                         ; $4362: $fe $80
	nop                                              ; $4364: $00
	ld   bc, $6061                                   ; $4365: $01 $61 $60
	add  b                                           ; $4368: $80
	ld   a, h                                        ; $4369: $7c
	add  b                                           ; $436a: $80
	ld   l, h                                        ; $436b: $6c
	add  b                                           ; $436c: $80
	db   $fc                                         ; $436d: $fc
	add  b                                           ; $436e: $80
	call z, $3880                                    ; $436f: $cc $80 $38
	add  b                                           ; $4372: $80
	ld   a, h                                        ; $4373: $7c
	add  b                                           ; $4374: $80
	ld   l, h                                        ; $4375: $6c
	ld   [bc], a                                     ; $4376: $02
	stop                                             ; $4377: $10 $00
	xor  $89                                         ; $4379: $ee $89
	nop                                              ; $437b: $00
	nop                                              ; $437c: $00
	rst  $38                                         ; $437d: $ff
	add  b                                           ; $437e: $80
	nop                                              ; $437f: $00
	add  b                                           ; $4380: $80
	ld   a, [hl]                                     ; $4381: $7e
	add  h                                           ; $4382: $84
	ld   h, [hl]                                     ; $4383: $66
	add  b                                           ; $4384: $80
	ld   a, [hl]                                     ; $4385: $7e
	add  [hl]                                        ; $4386: $86
	ld   h, [hl]                                     ; $4387: $66
	add  b                                           ; $4388: $80
	ld   a, [hl]                                     ; $4389: $7e
	ld   bc, $ff00                                   ; $438a: $01 $00 $ff
	add  l                                           ; $438d: $85
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	cp   $80                                         ; $4390: $fe $80
	nop                                              ; $4392: $00
	add  b                                           ; $4393: $80
	db   $fc                                         ; $4394: $fc
	add  d                                           ; $4395: $82
	call z, $fc80                                    ; $4396: $cc $80 $fc
	add  d                                           ; $4399: $82
	call z, $fc80                                    ; $439a: $cc $80 $fc
	add  d                                           ; $439d: $82
	call z, $fc80                                    ; $439e: $cc $80 $fc
	ld   bc, $fe00                                   ; $43a1: $01 $00 $fe
	rst  $38                                         ; $43a4: $ff
	nop                                              ; $43a5: $00
	rst  $38                                         ; $43a6: $ff
	nop                                              ; $43a7: $00
	rst  $38                                         ; $43a8: $ff
	nop                                              ; $43a9: $00
	rst  $38                                         ; $43aa: $ff
	nop                                              ; $43ab: $00
	rst  $38                                         ; $43ac: $ff
	nop                                              ; $43ad: $00
	cp   $00                                         ; $43ae: $fe $00
	nop                                              ; $43b0: $00
	ret  nz                                          ; $43b1: $c0

	add  l                                           ; $43b2: $85
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	ret  nz                                          ; $43b5: $c0

	sub  [hl]                                        ; $43b6: $96
	nop                                              ; $43b7: $00
	add  [hl]                                        ; $43b8: $86
	ret  nz                                          ; $43b9: $c0

	sub  l                                           ; $43ba: $95
	nop                                              ; $43bb: $00
	add  [hl]                                        ; $43bc: $86
	ret  nz                                          ; $43bd: $c0

	sub  d                                           ; $43be: $92
	nop                                              ; $43bf: $00
	inc  c                                           ; $43c0: $0c
	ret  nz                                          ; $43c1: $c0

	nop                                              ; $43c2: $00
	jr   nz, jr_09d_4405                             ; $43c3: $20 $40

	ld   d, b                                        ; $43c5: $50
	ld   h, b                                        ; $43c6: $60
	ld   l, b                                        ; $43c7: $68
	ld   [hl], b                                     ; $43c8: $70
	ld   [hl], h                                     ; $43c9: $74
	ld   a, b                                        ; $43ca: $78
	ld   a, d                                        ; $43cb: $7a
	ld   a, h                                        ; $43cc: $7c
	ld   a, l                                        ; $43cd: $7d
	add  c                                           ; $43ce: $81
	ld   a, [hl]                                     ; $43cf: $7e
	inc  c                                           ; $43d0: $0c
	ld   a, a                                        ; $43d1: $7f
	ld   a, h                                        ; $43d2: $7c
	ld   a, [hl]                                     ; $43d3: $7e
	ld   a, b                                        ; $43d4: $78
	ld   a, h                                        ; $43d5: $7c
	ld   [hl], b                                     ; $43d6: $70
	ld   a, b                                        ; $43d7: $78
	ld   h, b                                        ; $43d8: $60
	ld   [hl], b                                     ; $43d9: $70
	ld   b, b                                        ; $43da: $40
	ld   h, b                                        ; $43db: $60
	nop                                              ; $43dc: $00
	ret  nz                                          ; $43dd: $c0

	rst  $38                                         ; $43de: $ff
	nop                                              ; $43df: $00
	rlca                                             ; $43e0: $07
	ld   bc, $0094                                   ; $43e1: $01 $94 $00
	nop                                              ; $43e4: $00
	ld   bc, $0081                                   ; $43e5: $01 $81 $00
	ld   b, $03                                      ; $43e8: $06 $03
	ld   bc, $0306                                   ; $43ea: $01 $06 $03
	dec  e                                           ; $43ed: $1d
	rlca                                             ; $43ee: $07
	inc  e                                           ; $43ef: $1c
	adc  e                                           ; $43f0: $8b
	nop                                              ; $43f1: $00
	ld   [de], a                                     ; $43f2: $12
	ccf                                              ; $43f3: $3f
	nop                                              ; $43f4: $00
	ld   a, a                                        ; $43f5: $7f
	ccf                                              ; $43f6: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f7: $cf
	ld   a, a                                        ; $43f8: $7f
	ld   l, a                                        ; $43f9: $6f
	ld   a, a                                        ; $43fa: $7f
	cp   a                                           ; $43fb: $bf
	rst  $38                                         ; $43fc: $ff
	rst  $28                                         ; $43fd: $ef
	rst  $38                                         ; $43fe: $ff
	ld   l, a                                        ; $43ff: $6f
	rst  $38                                         ; $4400: $ff
	rst  JumpTable                                         ; $4401: $df
	rst  $38                                         ; $4402: $ff
	ld   a, a                                        ; $4403: $7f
	rst  $38                                         ; $4404: $ff

jr_09d_4405:
	cp   a                                           ; $4405: $bf
	add  l                                           ; $4406: $85
	nop                                              ; $4407: $00
	rrca                                             ; $4408: $0f
	ld   bc, $0700                                   ; $4409: $01 $00 $07
	ld   bc, $073f                                   ; $440c: $01 $3f $07
	db   $fc                                         ; $440f: $fc
	ccf                                              ; $4410: $3f
	ldh  a, [rIE]                                    ; $4411: $f0 $ff
	rst  $30                                         ; $4413: $f7
	rst  $38                                         ; $4414: $ff
	di                                               ; $4415: $f3
	rst  $38                                         ; $4416: $ff
	db   $f4                                         ; $4417: $f4
	db   $fc                                         ; $4418: $fc
	add  b                                           ; $4419: $80
	ei                                               ; $441a: $fb
	add  b                                           ; $441b: $80
	rst  $30                                         ; $441c: $f7
	add  e                                           ; $441d: $83
	rst  $38                                         ; $441e: $ff
	add  l                                           ; $441f: $85
	nop                                              ; $4420: $00
	rlca                                             ; $4421: $07
	add  b                                           ; $4422: $80
	nop                                              ; $4423: $00
	call z, $be80                                    ; $4424: $cc $80 $be
	adc  h                                           ; $4427: $8c
	rst  JumpTable                                         ; $4428: $df
	sbc  $80                                         ; $4429: $de $80
	rst  $38                                         ; $442b: $ff
	add  b                                           ; $442c: $80
	adc  $80                                         ; $442d: $ce $80
	scf                                              ; $442f: $37
	add  d                                           ; $4430: $82
	di                                               ; $4431: $f3
	add  b                                           ; $4432: $80
	rst  $30                                         ; $4433: $f7
	add  d                                           ; $4434: $82
	rst  $38                                         ; $4435: $ff
	jr   nz, jr_09d_44b7                             ; $4436: $20 $7f

	nop                                              ; $4438: $00
	ld   b, b                                        ; $4439: $40
	nop                                              ; $443a: $00
	ld   hl, sp-$40                                  ; $443b: $f8 $c0
	cp   $f8                                         ; $443d: $fe $f8
	di                                               ; $443f: $f3
	cp   $f1                                         ; $4440: $fe $f1
	rst  $38                                         ; $4442: $ff
	pop  af                                          ; $4443: $f1
	rst  $38                                         ; $4444: $ff
	rst  $30                                         ; $4445: $f7
	rst  $38                                         ; $4446: $ff
	ei                                               ; $4447: $fb
	rst  $38                                         ; $4448: $ff
	db   $f4                                         ; $4449: $f4
	db   $fc                                         ; $444a: $fc
	ldh  a, [c]                                      ; $444b: $f2
	cp   $bb                                         ; $444c: $fe $bb
	cp   a                                           ; $444e: $bf
	ret                                              ; $444f: $c9


	call $e6e0                                       ; $4450: $cd $e0 $e6
	ld   [hl], b                                     ; $4453: $70
	ld   [hl], e                                     ; $4454: $73
	ld   [hl], b                                     ; $4455: $70
	ld   a, c                                        ; $4456: $79
	rst  $30                                         ; $4457: $f7
	add  e                                           ; $4458: $83
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	add  b                                           ; $445b: $80
	adc  e                                           ; $445c: $8b
	nop                                              ; $445d: $00
	ld   d, $c0                                      ; $445e: $16 $c0
	add  b                                           ; $4460: $80
	ld   [hl], b                                     ; $4461: $70
	ld   b, b                                        ; $4462: $40
	inc  e                                           ; $4463: $1c
	db   $10                                         ; $4464: $10
	add  e                                           ; $4465: $83
	add  b                                           ; $4466: $80
	and  e                                           ; $4467: $a3
	add  b                                           ; $4468: $80
	db   $fc                                         ; $4469: $fc
	ret  nz                                          ; $446a: $c0

	ldh  [rP1], a                                    ; $446b: $e0 $00
	ld   bc, $3f00                                   ; $446d: $01 $00 $3f
	ld   bc, $0333                                   ; $4470: $01 $33 $03
	inc  c                                           ; $4473: $0c
	nop                                              ; $4474: $00
	inc  bc                                          ; $4475: $03
	add  c                                           ; $4476: $81
	nop                                              ; $4477: $00
	add  hl, de                                      ; $4478: $19
	ld   bc, $0300                                   ; $4479: $01 $00 $03
	ld   bc, $0307                                   ; $447c: $01 $07 $03
	rrca                                             ; $447f: $0f
	rlca                                             ; $4480: $07
	ld   e, $0e                                      ; $4481: $1e $0e
	add  hl, sp                                      ; $4483: $39
	jr   @-$37                                       ; $4484: $18 $c7

	nop                                              ; $4486: $00
	ld   hl, sp+$00                                  ; $4487: $f8 $00
	inc  bc                                          ; $4489: $03
	nop                                              ; $448a: $00
	ld   [hl+], a                                    ; $448b: $22
	rra                                              ; $448c: $1f
	rst  $38                                         ; $448d: $ff
	ccf                                              ; $448e: $3f
	or   $f7                                         ; $448f: $f6 $f7
	ld   c, $0f                                      ; $4491: $0e $0f
	add  b                                           ; $4493: $80
	rra                                              ; $4494: $1f
	inc  bc                                          ; $4495: $03
	cp   l                                           ; $4496: $bd
	dec  a                                           ; $4497: $3d
	ei                                               ; $4498: $fb
	ld   a, e                                        ; $4499: $7b
	add  b                                           ; $449a: $80
	or   $80                                         ; $449b: $f6 $80
	and  $80                                         ; $449d: $e6 $80
	call $8980                                       ; $449f: $cd $80 $89
	add  b                                           ; $44a2: $80
	dec  de                                          ; $44a3: $1b
	add  b                                           ; $44a4: $80
	inc  de                                          ; $44a5: $13
	add  b                                           ; $44a6: $80
	daa                                              ; $44a7: $27
	ld   a, [bc]                                     ; $44a8: $0a
	and  a                                           ; $44a9: $a7
	daa                                              ; $44aa: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ab: $cf
	ld   c, a                                        ; $44ac: $4f
	db   $fd                                         ; $44ad: $fd
	nop                                              ; $44ae: $00
	ld   b, $00                                      ; $44af: $06 $00
	ld   bc, $0400                                   ; $44b1: $01 $00 $04
	add  l                                           ; $44b4: $85
	nop                                              ; $44b5: $00
	nop                                              ; $44b6: $00

jr_09d_44b7:
	ld   bc, $008f                                   ; $44b7: $01 $8f $00
	inc  b                                           ; $44ba: $04
	or   c                                           ; $44bb: $b1
	ld   c, [hl]                                     ; $44bc: $4e
	ld   l, $0e                                      ; $44bd: $2e $0e
	ld   a, h                                        ; $44bf: $7c
	add  c                                           ; $44c0: $81
	inc  e                                           ; $44c1: $1c
	add  b                                           ; $44c2: $80
	jr   jr_09d_44c6                                 ; $44c3: $18 $01

	ld   sp, hl                                      ; $44c5: $f9

jr_09d_44c6:
	add  hl, sp                                      ; $44c6: $39
	add  b                                           ; $44c7: $80
	ld   sp, $3501                                   ; $44c8: $31 $01 $35
	ld   sp, $2180                                   ; $44cb: $31 $80 $21
	ld   bc, $2129                                   ; $44ce: $01 $29 $21
	add  b                                           ; $44d1: $80
	jr   nz, jr_09d_44e1                             ; $44d2: $20 $0d

	stop                                             ; $44d4: $10 $00
	ld   bc, $2000                                   ; $44d6: $01 $00 $20
	nop                                              ; $44d9: $00
	ld   c, l                                        ; $44da: $4d
	nop                                              ; $44db: $00
	inc  a                                           ; $44dc: $3c
	inc  c                                           ; $44dd: $0c
	sbc  a                                           ; $44de: $9f
	ld   b, b                                        ; $44df: $40
	ld   [hl], b                                     ; $44e0: $70

jr_09d_44e1:
	ld   h, b                                        ; $44e1: $60
	add  b                                           ; $44e2: $80
	jr   nz, @+$03                                   ; $44e3: $20 $01

	jr   c, jr_09d_4517                              ; $44e5: $38 $30

	add  b                                           ; $44e7: $80
	db   $10                                         ; $44e8: $10
	ld   bc, $989c                                   ; $44e9: $01 $9c $98
	add  b                                           ; $44ec: $80
	adc  b                                           ; $44ed: $88
	inc  b                                           ; $44ee: $04
	xor  b                                           ; $44ef: $a8
	adc  b                                           ; $44f0: $88
	add  [hl]                                        ; $44f1: $86
	add  h                                           ; $44f2: $84
	sub  h                                           ; $44f3: $94

jr_09d_44f4:
	add  c                                           ; $44f4: $81
	add  h                                           ; $44f5: $84
	nop                                              ; $44f6: $00
	adc  b                                           ; $44f7: $88
	add  c                                           ; $44f8: $81
	add  b                                           ; $44f9: $80
	nop                                              ; $44fa: $00
	ld   b, h                                        ; $44fb: $44
	add  c                                           ; $44fc: $81
	nop                                              ; $44fd: $00
	inc  c                                           ; $44fe: $0c
	ld   [bc], a                                     ; $44ff: $02
	nop                                              ; $4500: $00
	add  b                                           ; $4501: $80
	nop                                              ; $4502: $00
	inc  bc                                          ; $4503: $03
	nop                                              ; $4504: $00
	dec  b                                           ; $4505: $05
	inc  bc                                          ; $4506: $03
	ld   a, [bc]                                     ; $4507: $0a
	rlca                                             ; $4508: $07
	rla                                              ; $4509: $17
	rrca                                             ; $450a: $0f
	cpl                                              ; $450b: $2f
	add  c                                           ; $450c: $81
	ld   e, $00                                      ; $450d: $1e $00
	ld   e, a                                        ; $450f: $5f
	add  c                                           ; $4510: $81
	inc  a                                           ; $4511: $3c
	add  hl, bc                                      ; $4512: $09
	cp   [hl]                                        ; $4513: $be
	ld   a, b                                        ; $4514: $78
	ld   a, c                                        ; $4515: $79
	ld   a, b                                        ; $4516: $78

jr_09d_4517:
	ld   a, d                                        ; $4517: $7a
	ld   hl, sp-$01                                  ; $4518: $f8 $ff
	rst  ToBoot                                         ; $451a: $c7
	rst  $38                                         ; $451b: $ff
	ccf                                              ; $451c: $3f
	add  d                                           ; $451d: $82
	rst  $38                                         ; $451e: $ff
	dec  d                                           ; $451f: $15
	inc  sp                                          ; $4520: $33
	jr   nc, jr_09d_458f                             ; $4521: $30 $6c

	ldh  [$90], a                                    ; $4523: $e0 $90
	ret  nz                                          ; $4525: $c0

	ldh  [$80], a                                    ; $4526: $e0 $80
	ret  nz                                          ; $4528: $c0

	nop                                              ; $4529: $00
	add  b                                           ; $452a: $80
	nop                                              ; $452b: $00
	ld   a, $00                                      ; $452c: $3e $00
	rla                                              ; $452e: $17
	ld   d, $71                                      ; $452f: $16 $71
	add  hl, sp                                      ; $4531: $39
	ldh  a, [$7e]                                    ; $4532: $f0 $7e
	ld   a, [$80ff]                                  ; $4534: $fa $ff $80
	ld   a, a                                        ; $4537: $7f
	ld   bc, $bfbd                                   ; $4538: $01 $bd $bf
	add  b                                           ; $453b: $80
	rst  JumpTable                                         ; $453c: $df
	ld   [$ef6e], sp                                 ; $453d: $08 $6e $ef
	or   a                                           ; $4540: $b7
	rst  $30                                         ; $4541: $f7
	ret  nz                                          ; $4542: $c0

	rra                                              ; $4543: $1f
	ld   e, a                                        ; $4544: $5f
	rra                                              ; $4545: $1f
	sbc  a                                           ; $4546: $9f
	add  b                                           ; $4547: $80
	rrca                                             ; $4548: $0f
	add  b                                           ; $4549: $80
	rlca                                             ; $454a: $07
	rla                                              ; $454b: $17
	rla                                              ; $454c: $17
	ld   d, a                                        ; $454d: $57
	inc  sp                                          ; $454e: $33
	or   e                                           ; $454f: $b3
	ld   sp, $22b1                                   ; $4550: $31 $b1 $22
	xor  d                                           ; $4553: $aa
	ld   h, e                                        ; $4554: $63
	ld   [hl], e                                     ; $4555: $73
	ld   b, e                                        ; $4556: $43
	ld   l, e                                        ; $4557: $6b
	inc  bc                                          ; $4558: $03
	ld   d, e                                        ; $4559: $53
	dec  bc                                          ; $455a: $0b
	and  e                                           ; $455b: $a3
	dec  de                                          ; $455c: $1b
	ld   c, e                                        ; $455d: $4b
	dec  sp                                          ; $455e: $3b
	cp   e                                           ; $455f: $bb
	ld   a, e                                        ; $4560: $7b
	ld   e, e                                        ; $4561: $5b
	dec  sp                                          ; $4562: $3b
	ld   b, $81                                      ; $4563: $06 $81
	ldh  [rP1], a                                    ; $4565: $e0 $00
	ldh  [c], a                                      ; $4567: $e2
	add  b                                           ; $4568: $80
	ldh  [$80], a                                    ; $4569: $e0 $80
	ret  nz                                          ; $456b: $c0

	add  b                                           ; $456c: $80
	ret  nc                                          ; $456d: $d0

	ld   bc, $9890                                   ; $456e: $01 $90 $98
	add  d                                           ; $4571: $82
	jr   nz, jr_09d_44f4                             ; $4572: $20 $80

	ld   h, b                                        ; $4574: $60
	dec  b                                           ; $4575: $05
	jr   nz, jr_09d_45d8                             ; $4576: $20 $60

	nop                                              ; $4578: $00
	jr   nz, jr_09d_457b                             ; $4579: $20 $00

jr_09d_457b:
	sub  b                                           ; $457b: $90
	add  l                                           ; $457c: $85
	nop                                              ; $457d: $00
	ld   [bc], a                                     ; $457e: $02
	ld   bc, $0200                                   ; $457f: $01 $00 $02
	add  c                                           ; $4582: $81
	ld   bc, $0500                                   ; $4583: $01 $00 $05
	add  c                                           ; $4586: $81
	inc  bc                                          ; $4587: $03
	nop                                              ; $4588: $00
	dec  bc                                          ; $4589: $0b
	add  c                                           ; $458a: $81
	rlca                                             ; $458b: $07
	nop                                              ; $458c: $00
	rla                                              ; $458d: $17
	add  c                                           ; $458e: $81

jr_09d_458f:
	rrca                                             ; $458f: $0f
	nop                                              ; $4590: $00
	cpl                                              ; $4591: $2f
	add  c                                           ; $4592: $81
	rra                                              ; $4593: $1f
	inc  b                                           ; $4594: $04
	ld   e, l                                        ; $4595: $5d
	ccf                                              ; $4596: $3f
	dec  sp                                          ; $4597: $3b
	ccf                                              ; $4598: $3f
	rst  ToBoot                                         ; $4599: $c7
	add  c                                           ; $459a: $81
	ld   a, a                                        ; $459b: $7f
	ld   [bc], a                                     ; $459c: $02
	ld   a, c                                        ; $459d: $79
	ld   a, a                                        ; $459e: $7f
	ld   hl, sp-$7d                                  ; $459f: $f8 $83
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	ld   bc, $0083                                   ; $45a3: $01 $83 $00
	ld   [bc], a                                     ; $45a6: $02
	ld   a, $01                                      ; $45a7: $3e $01
	pop  bc                                          ; $45a9: $c1
	add  b                                           ; $45aa: $80
	ccf                                              ; $45ab: $3f
	nop                                              ; $45ac: $00
	rst  $38                                         ; $45ad: $ff
	add  b                                           ; $45ae: $80
	rst  ToBoot                                         ; $45af: $c7
	add  b                                           ; $45b0: $80
	add  a                                           ; $45b1: $87
	add  b                                           ; $45b2: $80

jr_09d_45b3:
	rlca                                             ; $45b3: $07
	add  b                                           ; $45b4: $80
	rra                                              ; $45b5: $1f
	add  b                                           ; $45b6: $80
	ccf                                              ; $45b7: $3f
	add  b                                           ; $45b8: $80
	ld   a, a                                        ; $45b9: $7f
	add  b                                           ; $45ba: $80
	rst  $38                                         ; $45bb: $ff
	inc  c                                           ; $45bc: $0c
	ld   a, b                                        ; $45bd: $78
	nop                                              ; $45be: $00
	db   $f4                                         ; $45bf: $f4
	ld   [hl], b                                     ; $45c0: $70
	ld   a, [$3df8]                                  ; $45c1: $fa $f8 $3d
	inc  a                                           ; $45c4: $3c
	dec  c                                           ; $45c5: $0d
	call $f1c1                                       ; $45c6: $cd $c1 $f1
	ldh  a, [$83]                                    ; $45c9: $f0 $83
	cp   $05                                         ; $45cb: $fe $05
	add  [hl]                                        ; $45cd: $86
	add  a                                           ; $45ce: $87
	pop  hl                                          ; $45cf: $e1
	ld   bc, $01e1                                   ; $45d0: $01 $e1 $01

jr_09d_45d3:
	add  b                                           ; $45d3: $80
	ldh  [$80], a                                    ; $45d4: $e0 $80
	ret  nz                                          ; $45d6: $c0

	adc  d                                           ; $45d7: $8a

jr_09d_45d8:
	nop                                              ; $45d8: $00
	inc  b                                           ; $45d9: $04
	add  b                                           ; $45da: $80
	nop                                              ; $45db: $00
	ld   h, b                                        ; $45dc: $60
	add  b                                           ; $45dd: $80
	sbc  a                                           ; $45de: $9f
	add  b                                           ; $45df: $80
	ldh  [$82], a                                    ; $45e0: $e0 $82
	rst  $30                                         ; $45e2: $f7
	add  e                                           ; $45e3: $83
	ld   a, e                                        ; $45e4: $7b
	nop                                              ; $45e5: $00
	ei                                               ; $45e6: $fb
	add  h                                           ; $45e7: $84
	dec  a                                           ; $45e8: $3d
	ld   bc, $621d                                   ; $45e9: $01 $1d $62
	adc  c                                           ; $45ec: $89
	nop                                              ; $45ed: $00
	ld   [$00e0], sp                                 ; $45ee: $08 $e0 $00
	jr   jr_09d_45d3                                 ; $45f1: $18 $e0

	db   $e4                                         ; $45f3: $e4
	ld   hl, sp-$06                                  ; $45f4: $f8 $fa
	db   $fc                                         ; $45f6: $fc
	db   $fd                                         ; $45f7: $fd
	add  d                                           ; $45f8: $82
	cp   $81                                         ; $45f9: $fe $81
	rst  $38                                         ; $45fb: $ff
	ld   bc, $fff9                                   ; $45fc: $01 $f9 $ff
	add  b                                           ; $45ff: $80
	ei                                               ; $4600: $fb
	nop                                              ; $4601: $00
	ld   b, $85                                      ; $4602: $06 $85
	nop                                              ; $4604: $00
	ld   a, [de]                                     ; $4605: $1a
	add  b                                           ; $4606: $80
	nop                                              ; $4607: $00
	ld   b, b                                        ; $4608: $40
	add  b                                           ; $4609: $80
	and  b                                           ; $460a: $a0
	ret  nz                                          ; $460b: $c0

	ret  nc                                          ; $460c: $d0

	ldh  [$e8], a                                    ; $460d: $e0 $e8
	ldh  a, [$f4]                                    ; $460f: $f0 $f4
	ld   hl, sp-$06                                  ; $4611: $f8 $fa
	db   $fc                                         ; $4613: $fc
	ld   a, h                                        ; $4614: $7c
	db   $fc                                         ; $4615: $fc
	db   $fd                                         ; $4616: $fd
	cp   $f6                                         ; $4617: $fe $f6
	cp   $6e                                         ; $4619: $fe $6e
	ld   a, [hl]                                     ; $461b: $7e
	ld   d, $7e                                      ; $461c: $16 $7e
	ld   sp, hl                                      ; $461e: $f9
	nop                                              ; $461f: $00
	adc  h                                           ; $4620: $8c
	add  e                                           ; $4621: $83
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	add  $83                                         ; $4624: $c6 $83
	nop                                              ; $4626: $00
	ld   [bc], a                                     ; $4627: $02
	jr   nz, jr_09d_462a                             ; $4628: $20 $00

jr_09d_462a:
	inc  bc                                          ; $462a: $03
	add  c                                           ; $462b: $81
	nop                                              ; $462c: $00
	nop                                              ; $462d: $00
	jr   nc, jr_09d_45b3                             ; $462e: $30 $83

	jr   nz, jr_09d_4634                             ; $4630: $20 $02

	jr   c, jr_09d_4664                              ; $4632: $38 $30

jr_09d_4634:
	ldh  a, [$81]                                    ; $4634: $f0 $81
	ld   [hl], b                                     ; $4636: $70
	rlca                                             ; $4637: $07
	rla                                              ; $4638: $17
	ld   e, $5e                                      ; $4639: $1e $5e
	ld   e, $8e                                      ; $463b: $1e $8e
	ld   c, $06                                      ; $463d: $0e $06
	ld   c, $80                                      ; $463f: $0e $80
	rla                                              ; $4641: $17
	ld   d, $77                                      ; $4642: $16 $77
	inc  sp                                          ; $4644: $33
	or   e                                           ; $4645: $b3
	ld   sp, $22a1                                   ; $4646: $31 $a1 $22

jr_09d_4649:
	ld   [$5363], a                                  ; $4649: $ea $63 $53
	ld   b, e                                        ; $464c: $43
	dec  hl                                          ; $464d: $2b
	inc  bc                                          ; $464e: $03
	ld   e, e                                        ; $464f: $5b
	inc  bc                                          ; $4650: $03
	or   e                                           ; $4651: $b3
	inc  bc                                          ; $4652: $03
	ld   h, e                                        ; $4653: $63
	inc  bc                                          ; $4654: $03
	jp   nz, Jump_09d_4202                           ; $4655: $c2 $02 $42

	ld   [bc], a                                     ; $4658: $02
	cp   $81                                         ; $4659: $fe $81
	jr   nz, jr_09d_4660                             ; $465b: $20 $03

	ld   [hl+], a                                    ; $465d: $22
	jr   nz, jr_09d_46c0                             ; $465e: $20 $60

jr_09d_4660:
	ld   b, b                                        ; $4660: $40
	add  b                                           ; $4661: $80
	ld   d, b                                        ; $4662: $50
	ld   [bc], a                                     ; $4663: $02

jr_09d_4664:
	ret  nc                                          ; $4664: $d0

	sub  b                                           ; $4665: $90
	xor  b                                           ; $4666: $a8
	add  c                                           ; $4667: $81
	jr   nz, @-$7e                                   ; $4668: $20 $80

	ld   h, b                                        ; $466a: $60
	add  b                                           ; $466b: $80
	jr   nz, jr_09d_4672                             ; $466c: $20 $04

	ld   b, b                                        ; $466e: $40
	nop                                              ; $466f: $00
	jr   nz, jr_09d_4672                             ; $4670: $20 $00

jr_09d_4672:
	sub  b                                           ; $4672: $90
	rst  $38                                         ; $4673: $ff
	nop                                              ; $4674: $00
	rst  $38                                         ; $4675: $ff
	nop                                              ; $4676: $00
	add  h                                           ; $4677: $84
	nop                                              ; $4678: $00
	add  b                                           ; $4679: $80
	sbc  a                                           ; $467a: $9f
	add  b                                           ; $467b: $80
	ccf                                              ; $467c: $3f
	inc  bc                                          ; $467d: $03
	ld   a, a                                        ; $467e: $7f
	ld   a, l                                        ; $467f: $7d
	call nc, $80d2                                   ; $4680: $d4 $d2 $80
	and  b                                           ; $4683: $a0
	inc  c                                           ; $4684: $0c
	jp   hl                                          ; $4685: $e9


	ld   h, l                                        ; $4686: $65
	ld   d, c                                        ; $4687: $51
	pop  bc                                          ; $4688: $c1
	ret  nz                                          ; $4689: $c0

	jp   c, $fbfd                                    ; $468a: $da $fd $fb

	cp   e                                           ; $468d: $bb
	or   d                                           ; $468e: $b2
	ld   [hl], d                                     ; $468f: $72
	ld   h, [hl]                                     ; $4690: $66
	and  $80                                         ; $4691: $e6 $80
	call nz, $cd07                                   ; $4693: $c4 $07 $cd
	adc  h                                           ; $4696: $8c
	db   $ec                                         ; $4697: $ec
	inc  c                                           ; $4698: $0c
	ld   a, [bc]                                     ; $4699: $0a
	ld   [$bf1c], sp                                 ; $469a: $08 $1c $bf
	add  b                                           ; $469d: $80
	rla                                              ; $469e: $17
	add  b                                           ; $469f: $80
	ld   b, e                                        ; $46a0: $43
	add  b                                           ; $46a1: $80
	xor  c                                           ; $46a2: $a9
	add  b                                           ; $46a3: $80
	nop                                              ; $46a4: $00
	ld   [bc], a                                     ; $46a5: $02
	cp   $00                                         ; $46a6: $fe $00
	ld   bc, $0081                                   ; $46a8: $01 $81 $00
	ld   bc, $c038                                   ; $46ab: $01 $38 $c0
	add  b                                           ; $46ae: $80
	ldh  [rSC], a                                    ; $46af: $e0 $02
	ld   c, b                                        ; $46b1: $48
	ld   b, b                                        ; $46b2: $40
	db   $10                                         ; $46b3: $10
	add  b                                           ; $46b4: $80
	add  b                                           ; $46b5: $80
	ld   bc, $d0c0                                   ; $46b6: $01 $c0 $d0
	add  c                                           ; $46b9: $81
	ldh  [$03], a                                    ; $46ba: $e0 $03
	add  sp, -$10                                    ; $46bc: $e8 $f0
	ld   [hl], a                                     ; $46be: $77
	ld   a, a                                        ; $46bf: $7f

jr_09d_46c0:
	add  b                                           ; $46c0: $80
	ld   h, [hl]                                     ; $46c1: $66
	add  d                                           ; $46c2: $82
	jr   nc, jr_09d_4649                             ; $46c3: $30 $84

	jr   c, @-$7e                                    ; $46c5: $38 $80

	ld   a, h                                        ; $46c7: $7c
	ld   bc, $8283                                   ; $46c8: $01 $83 $82
	add  e                                           ; $46cb: $83
	ld   [bc], a                                     ; $46cc: $02
	add  e                                           ; $46cd: $83
	inc  bc                                          ; $46ce: $03
	add  d                                           ; $46cf: $82
	rlca                                             ; $46d0: $07
	adc  l                                           ; $46d1: $8d
	rst  $38                                         ; $46d2: $ff
	dec  b                                           ; $46d3: $05
	rst  $28                                         ; $46d4: $ef
	db   $e4                                         ; $46d5: $e4
	ei                                               ; $46d6: $fb
	pop  af                                          ; $46d7: $f1
	ei                                               ; $46d8: $fb
	cp   $81                                         ; $46d9: $fe $81
	db   $fd                                         ; $46db: $fd
	inc  b                                           ; $46dc: $04
	push af                                          ; $46dd: $f5
	db   $fd                                         ; $46de: $fd
	rst  $38                                         ; $46df: $ff
	cp   $f6                                         ; $46e0: $fe $f6
	add  c                                           ; $46e2: $81
	sbc  $02                                         ; $46e3: $de $02
	ld   e, b                                        ; $46e5: $58
	ldh  a, [$f3]                                    ; $46e6: $f0 $f3
	add  c                                           ; $46e8: $81
	ld   hl, sp+$00                                  ; $46e9: $f8 $00
	ld   a, d                                        ; $46eb: $7a
	add  c                                           ; $46ec: $81
	db   $fc                                         ; $46ed: $fc
	nop                                              ; $46ee: $00
	db   $fd                                         ; $46ef: $fd
	add  c                                           ; $46f0: $81
	cp   $01                                         ; $46f1: $fe $01
	or   $f7                                         ; $46f3: $f6 $f7
	add  b                                           ; $46f5: $80
	db   $fc                                         ; $46f6: $fc
	dec  b                                           ; $46f7: $05
	cp   $0e                                         ; $46f8: $fe $0e
	rst  $28                                         ; $46fa: $ef
	inc  de                                          ; $46fb: $13
	rrca                                             ; $46fc: $0f
	inc  bc                                          ; $46fd: $03
	add  h                                           ; $46fe: $84
	nop                                              ; $46ff: $00
	inc  bc                                          ; $4700: $03
	add  b                                           ; $4701: $80
	nop                                              ; $4702: $00
	adc  a                                           ; $4703: $8f
	rrca                                             ; $4704: $0f
	add  b                                           ; $4705: $80
	rra                                              ; $4706: $1f
	dec  b                                           ; $4707: $05
	ccf                                              ; $4708: $3f
	jr   c, @+$01                                    ; $4709: $38 $ff

	ldh  a, [rOCPD]                                  ; $470b: $f0 $6b
	ld   h, e                                        ; $470d: $63
	add  d                                           ; $470e: $82
	rlca                                             ; $470f: $07
	add  b                                           ; $4710: $80
	inc  b                                           ; $4711: $04
	add  [hl]                                        ; $4712: $86
	rst  $38                                         ; $4713: $ff
	nop                                              ; $4714: $00
	cp   $85                                         ; $4715: $fe $85
	rst  $38                                         ; $4717: $ff
	ld   [bc], a                                     ; $4718: $02
	or   $ef                                         ; $4719: $f6 $ef
	db   $e3                                         ; $471b: $e3
	add  c                                           ; $471c: $81
	rst  $20                                         ; $471d: $e7
	nop                                              ; $471e: $00
	jp   hl                                          ; $471f: $e9


	add  c                                           ; $4720: $81
	db   $eb                                         ; $4721: $eb
	ld   b, $6c                                      ; $4722: $06 $6c
	db   $ed                                         ; $4724: $ed
	push hl                                          ; $4725: $e5
	push af                                          ; $4726: $f5
	or   l                                           ; $4727: $b5
	push af                                          ; $4728: $f5
	inc  de                                          ; $4729: $13
	add  e                                           ; $472a: $83
	rst  $28                                         ; $472b: $ef
	inc  b                                           ; $472c: $04
	rst  $38                                         ; $472d: $ff
	rst  $30                                         ; $472e: $f7
	push af                                          ; $472f: $f5
	rst  $30                                         ; $4730: $f7
	or   a                                           ; $4731: $b7
	add  c                                           ; $4732: $81
	rst  $30                                         ; $4733: $f7
	inc  bc                                          ; $4734: $03
	or   $f7                                         ; $4735: $f6 $f7
	add  e                                           ; $4737: $83
	ld   a, e                                        ; $4738: $7b
	add  e                                           ; $4739: $83
	ld   a, c                                        ; $473a: $79
	nop                                              ; $473b: $00
	cp   c                                           ; $473c: $b9
	add  e                                           ; $473d: $83
	cp   h                                           ; $473e: $bc
	add  c                                           ; $473f: $81
	call c, $a000                                    ; $4740: $dc $00 $a0
	add  c                                           ; $4743: $81
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	ld   b, b                                        ; $4746: $40
	add  e                                           ; $4747: $83
	add  b                                           ; $4748: $80
	nop                                              ; $4749: $00
	and  b                                           ; $474a: $a0
	add  e                                           ; $474b: $83
	ret  nz                                          ; $474c: $c0

	nop                                              ; $474d: $00
	ld   e, a                                        ; $474e: $5f
	add  c                                           ; $474f: $81
	ld   e, $00                                      ; $4750: $1e $00
	ld   a, $83                                      ; $4752: $3e $83
	ld   c, $02                                      ; $4754: $0e $02
	ld   e, $06                                      ; $4756: $1e $06
	add  $81                                         ; $4758: $c6 $81
	ld   b, $01                                      ; $475a: $06 $01
	push af                                          ; $475c: $f5
	ei                                               ; $475d: $fb
	add  b                                           ; $475e: $80
	ld   sp, hl                                      ; $475f: $f9
	ld   bc, $f9c9                                   ; $4760: $01 $c9 $f9
	add  b                                           ; $4763: $80
	ld   [wIsGBC], a                                  ; $4764: $ea $00 $c2
	add  c                                           ; $4767: $81
	ld   [$6900], a                                  ; $4768: $ea $00 $69
	add  c                                           ; $476b: $81
	ld   l, l                                        ; $476c: $6d
	nop                                              ; $476d: $00
	sbc  e                                           ; $476e: $9b
	adc  l                                           ; $476f: $8d
	nop                                              ; $4770: $00
	ld   [$40c0], sp                                 ; $4771: $08 $c0 $40
	ld   h, b                                        ; $4774: $60
	and  b                                           ; $4775: $a0
	or   b                                           ; $4776: $b0
	ret  nc                                          ; $4777: $d0

	call c, $efec                                    ; $4778: $dc $ec $ef
	add  b                                           ; $477b: $80
	di                                               ; $477c: $f3
	add  b                                           ; $477d: $80
	db   $fc                                         ; $477e: $fc
	nop                                              ; $477f: $00
	rst  $38                                         ; $4780: $ff
	add  b                                           ; $4781: $80
	ld   a, a                                        ; $4782: $7f
	dec  c                                           ; $4783: $0d
	rlca                                             ; $4784: $07
	inc  b                                           ; $4785: $04
	inc  c                                           ; $4786: $0c
	ld   a, [bc]                                     ; $4787: $0a
	ld   a, [de]                                     ; $4788: $1a
	ld   d, $36                                      ; $4789: $16 $36
	ld   l, $ea                                      ; $478b: $2e $ea
	jp   c, $32d2                                    ; $478d: $da $d2 $32

	ld   [hl+], a                                    ; $4790: $22
	ldh  [c], a                                      ; $4791: $e2
	add  b                                           ; $4792: $80
	jp   nz, $0285                                   ; $4793: $c2 $85 $02

	nop                                              ; $4796: $00
	inc  bc                                          ; $4797: $03
	add  d                                           ; $4798: $82
	nop                                              ; $4799: $00
	add  d                                           ; $479a: $82
	add  b                                           ; $479b: $80
	add  b                                           ; $479c: $80
	nop                                              ; $479d: $00
	add  h                                           ; $479e: $84
	add  b                                           ; $479f: $80
	add  d                                           ; $47a0: $82
	nop                                              ; $47a1: $00
	add  b                                           ; $47a2: $80
	ld   bc, $0302                                   ; $47a3: $01 $02 $03
	ld   [bc], a                                     ; $47a6: $02
	ld   bc, $00ff                                   ; $47a7: $01 $ff $00
	rst  $38                                         ; $47aa: $ff
	nop                                              ; $47ab: $00
	rst  $38                                         ; $47ac: $ff
	nop                                              ; $47ad: $00
	rst  $38                                         ; $47ae: $ff
	nop                                              ; $47af: $00
	rst  $38                                         ; $47b0: $ff
	nop                                              ; $47b1: $00
	adc  b                                           ; $47b2: $88
	nop                                              ; $47b3: $00
	rst  $28                                         ; $47b4: $ef
	nop                                              ; $47b5: $00
	add  h                                           ; $47b6: $84
	nop                                              ; $47b7: $00
	inc  b                                           ; $47b8: $04
	rrca                                             ; $47b9: $0f
	nop                                              ; $47ba: $00
	ld   c, $00                                      ; $47bb: $0e $00
	ld   bc, $0097                                   ; $47bd: $01 $97 $00
	ld   [bc], a                                     ; $47c0: $02
	ld   bc, $0300                                   ; $47c1: $01 $00 $03
	adc  e                                           ; $47c4: $8b
	ld   bc, $0702                                   ; $47c5: $01 $02 $07
	inc  bc                                          ; $47c8: $03
	ld   [bc], a                                     ; $47c9: $02
	add  c                                           ; $47ca: $81
	inc  bc                                          ; $47cb: $03
	rlca                                             ; $47cc: $07
	inc  c                                           ; $47cd: $0c
	rlca                                             ; $47ce: $07
	dec  e                                           ; $47cf: $1d
	rrca                                             ; $47d0: $0f
	ld   a, [hl+]                                    ; $47d1: $2a
	ld   a, [bc]                                     ; $47d2: $0a
	ld   a, [$803a]                                  ; $47d3: $fa $3a $80
	ld   h, [hl]                                     ; $47d6: $66
	inc  bc                                          ; $47d7: $03
	ld   d, $06                                      ; $47d8: $16 $06
	and  $06                                         ; $47da: $e6 $06
	add  b                                           ; $47dc: $80
	inc  b                                           ; $47dd: $04
	nop                                              ; $47de: $00
	inc  e                                           ; $47df: $1c
	add  c                                           ; $47e0: $81
	inc  c                                           ; $47e1: $0c
	nop                                              ; $47e2: $00
	ld   a, [bc]                                     ; $47e3: $0a
	add  e                                           ; $47e4: $83
	ld   [$0902], sp                                 ; $47e5: $08 $02 $09
	ld   [$8104], sp                                 ; $47e8: $08 $04 $81
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00
	db   $10                                         ; $47ed: $10
	add  e                                           ; $47ee: $83
	nop                                              ; $47ef: $00
	db   $10                                         ; $47f0: $10
	jr   z, jr_09d_4803                              ; $47f1: $28 $10

	add  b                                           ; $47f3: $80
	ld   [$0114], sp                                 ; $47f4: $08 $14 $01
	add  $00                                         ; $47f7: $c6 $00
	inc  sp                                          ; $47f9: $33
	nop                                              ; $47fa: $00
	ld   [hl], b                                     ; $47fb: $70
	nop                                              ; $47fc: $00
	dec  c                                           ; $47fd: $0d
	nop                                              ; $47fe: $00
	ld   h, $00                                      ; $47ff: $26 $00
	inc  bc                                          ; $4801: $03
	adc  l                                           ; $4802: $8d

jr_09d_4803:
	nop                                              ; $4803: $00
	db   $10                                         ; $4804: $10
	cpl                                              ; $4805: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4806: $cf
	ld   d, a                                        ; $4807: $57
	ld   b, a                                        ; $4808: $47
	ld   e, h                                        ; $4809: $5c
	ld   d, d                                        ; $480a: $52
	sub  l                                           ; $480b: $95
	db   $10                                         ; $480c: $10
	inc  hl                                          ; $480d: $23
	nop                                              ; $480e: $00
	ld   [hl], b                                     ; $480f: $70
	nop                                              ; $4810: $00
	dec  c                                           ; $4811: $0d
	nop                                              ; $4812: $00
	ld   h, $00                                      ; $4813: $26 $00
	inc  bc                                          ; $4815: $03
	sbc  l                                           ; $4816: $9d
	nop                                              ; $4817: $00
	nop                                              ; $4818: $00
	ld   bc, $0081                                   ; $4819: $01 $81 $00
	nop                                              ; $481c: $00
	ld   bc, $008d                                   ; $481d: $01 $8d $00
	inc  b                                           ; $4820: $04
	ld   e, $00                                      ; $4821: $1e $00
	ld   hl, $0818                                   ; $4823: $21 $18 $08
	add  b                                           ; $4826: $80
	db   $10                                         ; $4827: $10
	inc  bc                                          ; $4828: $03
	ld   de, $2361                                   ; $4829: $11 $61 $23
	add  e                                           ; $482c: $83
	add  b                                           ; $482d: $80
	rrca                                             ; $482e: $0f
	dec  c                                           ; $482f: $0d
	rst  $38                                         ; $4830: $ff
	jr   c, @+$01                                    ; $4831: $38 $ff

	rlca                                             ; $4833: $07
	ccf                                              ; $4834: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4835: $cf
	rrca                                             ; $4836: $0f
	jr   nc, jr_09d_4839                             ; $4837: $30 $00

jr_09d_4839:
	dec  c                                           ; $4839: $0d
	ld   bc, $0002                                   ; $483a: $01 $02 $00
	ld   bc, $0085                                   ; $483d: $01 $85 $00
	inc  b                                           ; $4840: $04
	jp   Jump_09d_7c00                               ; $4841: $c3 $00 $7c


	ld   b, b                                        ; $4844: $40
	nop                                              ; $4845: $00
	add  b                                           ; $4846: $80
	db   $ec                                         ; $4847: $ec
	add  b                                           ; $4848: $80
	pop  de                                          ; $4849: $d1
	inc  b                                           ; $484a: $04
	pop  bc                                          ; $484b: $c1
	ret  nz                                          ; $484c: $c0

	pop  bc                                          ; $484d: $c1
	nop                                              ; $484e: $00
	ret  nz                                          ; $484f: $c0

	add  b                                           ; $4850: $80
	ldh  [$80], a                                    ; $4851: $e0 $80
	ldh  a, [rSB]                                    ; $4853: $f0 $01
	rrca                                             ; $4855: $0f
	nop                                              ; $4856: $00
	add  b                                           ; $4857: $80
	ld   h, b                                        ; $4858: $60
	dec  b                                           ; $4859: $05
	ret  nc                                          ; $485a: $d0

	ret  nz                                          ; $485b: $c0

	jr   nz, jr_09d_485e                             ; $485c: $20 $00

jr_09d_485e:
	call nz, $8003                                   ; $485e: $c4 $03 $80
	ld   [bc], a                                     ; $4861: $02
	inc  bc                                          ; $4862: $03
	add  hl, sp                                      ; $4863: $39
	ld   bc, $3efe                                   ; $4864: $01 $fe $3e
	add  d                                           ; $4867: $82
	db   $fd                                         ; $4868: $fd

jr_09d_4869:
	add  b                                           ; $4869: $80
	pop  af                                          ; $486a: $f1
	add  b                                           ; $486b: $80
	pop  hl                                          ; $486c: $e1
	add  b                                           ; $486d: $80
	call $de80                                       ; $486e: $cd $80 $de
	add  c                                           ; $4871: $81
	db   $fc                                         ; $4872: $fc
	nop                                              ; $4873: $00
	ld   a, h                                        ; $4874: $7c
	add  b                                           ; $4875: $80
	ld   a, b                                        ; $4876: $78
	nop                                              ; $4877: $00
	ld   a, l                                        ; $4878: $7d
	add  d                                           ; $4879: $82
	db   $fc                                         ; $487a: $fc
	ld   [bc], a                                     ; $487b: $02
	cp   h                                           ; $487c: $bc
	xor  h                                           ; $487d: $ac
	db   $ec                                         ; $487e: $ec
	add  d                                           ; $487f: $82
	db   $e4                                         ; $4880: $e4
	add  b                                           ; $4881: $80
	ld   h, h                                        ; $4882: $64
	nop                                              ; $4883: $00
	ld   l, e                                        ; $4884: $6b
	add  c                                           ; $4885: $81
	ld   l, d                                        ; $4886: $6a
	add  b                                           ; $4887: $80
	ld   a, [hl+]                                    ; $4888: $2a
	ld   bc, $28a8                                   ; $4889: $01 $a8 $28
	add  b                                           ; $488c: $80
	jr   nc, jr_09d_489b                             ; $488d: $30 $0c

	ld   d, h                                        ; $488f: $54
	db   $10                                         ; $4890: $10
	ld   de, $2010                                   ; $4891: $11 $10 $20
	nop                                              ; $4894: $00
	ld   d, $00                                      ; $4895: $16 $00
	ld   [$0600], sp                                 ; $4897: $08 $00 $06
	nop                                              ; $489a: $00

jr_09d_489b:
	ld   [bc], a                                     ; $489b: $02
	add  c                                           ; $489c: $81
	nop                                              ; $489d: $00
	inc  c                                           ; $489e: $0c
	add  b                                           ; $489f: $80
	nop                                              ; $48a0: $00
	ldh  [rP1], a                                    ; $48a1: $e0 $00
	jr   c, jr_09d_48a5                              ; $48a3: $38 $00

jr_09d_48a5:
	sbc  a                                           ; $48a5: $9f
	nop                                              ; $48a6: $00
	add  b                                           ; $48a7: $80
	nop                                              ; $48a8: $00
	ld   l, b                                        ; $48a9: $68
	ld   [bc], a                                     ; $48aa: $02
	ld   [hl-], a                                    ; $48ab: $32
	add  b                                           ; $48ac: $80
	ld   b, $01                                      ; $48ad: $06 $01
	dec  c                                           ; $48af: $0d
	dec  l                                           ; $48b0: $2d
	add  b                                           ; $48b1: $80
	dec  e                                           ; $48b2: $1d
	ld   bc, $5a1a                                   ; $48b3: $01 $1a $5a
	add  b                                           ; $48b6: $80
	ld   a, [hl-]                                    ; $48b7: $3a
	add  l                                           ; $48b8: $85
	inc  [hl]                                        ; $48b9: $34
	ld   [bc], a                                     ; $48ba: $02
	and  h                                           ; $48bb: $a4
	ld   [hl], h                                     ; $48bc: $74
	dec  d                                           ; $48bd: $15
	add  l                                           ; $48be: $85
	ld   [hl], h                                     ; $48bf: $74
	ld   bc, $34b4                                   ; $48c0: $01 $b4 $34
	add  b                                           ; $48c3: $80
	inc  h                                           ; $48c4: $24
	nop                                              ; $48c5: $00
	ld   d, h                                        ; $48c6: $54
	add  c                                           ; $48c7: $81
	inc  d                                           ; $48c8: $14
	nop                                              ; $48c9: $00
	ld   l, h                                        ; $48ca: $6c
	add  c                                           ; $48cb: $81
	inc  l                                           ; $48cc: $2c
	ld   [bc], a                                     ; $48cd: $02
	ld   h, $28                                      ; $48ce: $26 $28
	ld   e, b                                        ; $48d0: $58
	add  c                                           ; $48d1: $81
	jr   jr_09d_48d4                                 ; $48d2: $18 $00

jr_09d_48d4:
	ld   [$1881], sp                                 ; $48d4: $08 $81 $18
	nop                                              ; $48d7: $00
	ld   [$1881], sp                                 ; $48d8: $08 $81 $18
	nop                                              ; $48db: $00
	ret  z                                           ; $48dc: $c8

	add  b                                           ; $48dd: $80
	jr   @-$78                                       ; $48de: $18 $86

	ld   e, b                                        ; $48e0: $58
	add  c                                           ; $48e1: $81
	ld   l, h                                        ; $48e2: $6c
	inc  bc                                          ; $48e3: $03
	ld   e, h                                        ; $48e4: $5c
	ld   [hl], h                                     ; $48e5: $74
	ld   a, h                                        ; $48e6: $7c
	jr   c, jr_09d_4869                              ; $48e7: $38 $80

	inc  c                                           ; $48e9: $0c
	ld   [bc], a                                     ; $48ea: $02
	ldh  a, [rP1]                                    ; $48eb: $f0 $00
	inc  c                                           ; $48ed: $0c
	add  l                                           ; $48ee: $85
	nop                                              ; $48ef: $00
	dec  c                                           ; $48f0: $0d
	ret  nz                                          ; $48f1: $c0

	nop                                              ; $48f2: $00
	ld   h, b                                        ; $48f3: $60
	ret  nz                                          ; $48f4: $c0

	or   b                                           ; $48f5: $b0
	ldh  [$98], a                                    ; $48f6: $e0 $98
	ldh  a, [$9c]                                    ; $48f8: $f0 $9c
	ld   hl, sp+$3e                                  ; $48fa: $f8 $3e
	db   $fc                                         ; $48fc: $fc
	cp   a                                           ; $48fd: $bf
	cp   [hl]                                        ; $48fe: $be
	add  b                                           ; $48ff: $80
	rst  JumpTable                                         ; $4900: $df
	add  b                                           ; $4901: $80
	xor  $80                                         ; $4902: $ee $80
	rst  $30                                         ; $4904: $f7
	add  b                                           ; $4905: $80
	ld   [hl], e                                     ; $4906: $73
	add  b                                           ; $4907: $80
	ld   a, c                                        ; $4908: $79
	add  b                                           ; $4909: $80
	cp   h                                           ; $490a: $bc
	add  b                                           ; $490b: $80
	inc  e                                           ; $490c: $1c
	add  b                                           ; $490d: $80
	adc  [hl]                                        ; $490e: $8e
	ld   b, $fe                                      ; $490f: $06 $fe
	nop                                              ; $4911: $00
	ld   [bc], a                                     ; $4912: $02
	ld   bc, $0305                                   ; $4913: $01 $05 $03
	dec  bc                                          ; $4916: $0b
	add  c                                           ; $4917: $81
	rlca                                             ; $4918: $07
	nop                                              ; $4919: $00
	rla                                              ; $491a: $17
	add  c                                           ; $491b: $81
	rrca                                             ; $491c: $0f
	nop                                              ; $491d: $00
	cpl                                              ; $491e: $2f
	add  b                                           ; $491f: $80
	rra                                              ; $4920: $1f
	ld   bc, $5e1e                                   ; $4921: $01 $1e $5e
	add  b                                           ; $4924: $80
	ld   a, $03                                      ; $4925: $3e $03
	dec  a                                           ; $4927: $3d
	cp   l                                           ; $4928: $bd
	ld   a, l                                        ; $4929: $7d
	add  d                                           ; $492a: $82
	add  l                                           ; $492b: $85
	nop                                              ; $492c: $00
	rla                                              ; $492d: $17
	add  b                                           ; $492e: $80
	nop                                              ; $492f: $00
	ret  nz                                          ; $4930: $c0

	add  b                                           ; $4931: $80
	ld   h, b                                        ; $4932: $60
	ld   b, b                                        ; $4933: $40
	sub  b                                           ; $4934: $90
	add  b                                           ; $4935: $80
	ret  c                                           ; $4936: $d8

	ret  nz                                          ; $4937: $c0

	ld   hl, sp-$20                                  ; $4938: $f8 $e0
	jr   c, jr_09d_496c                              ; $493a: $38 $30

	ld   b, h                                        ; $493c: $44
	nop                                              ; $493d: $00
	ld   [hl-], a                                    ; $493e: $32
	nop                                              ; $493f: $00
	call $8380                                       ; $4940: $cd $80 $83
	add  b                                           ; $4943: $80
	ldh  [$c0], a                                    ; $4944: $e0 $c0
	add  b                                           ; $4946: $80
	ld   b, b                                        ; $4947: $40
	ld   b, $a0                                      ; $4948: $06 $a0
	jr   nz, jr_09d_499c                             ; $494a: $20 $50

	nop                                              ; $494c: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $494d: $cf
	nop                                              ; $494e: $00
	rst  $38                                         ; $494f: $ff
	adc  c                                           ; $4950: $89
	nop                                              ; $4951: $00
	nop                                              ; $4952: $00
	rst  $38                                         ; $4953: $ff
	add  b                                           ; $4954: $80
	nop                                              ; $4955: $00
	dec  d                                           ; $4956: $15
	rst  $38                                         ; $4957: $ff
	rrca                                             ; $4958: $0f
	rst  $38                                         ; $4959: $ff
	pop  af                                          ; $495a: $f1
	rst  $38                                         ; $495b: $ff
	nop                                              ; $495c: $00
	ld   bc, $00fe                                   ; $495d: $01 $fe $00
	pop  bc                                          ; $4960: $c1
	nop                                              ; $4961: $00
	ldh  a, [$c0]                                    ; $4962: $f0 $c0
	ld   a, h                                        ; $4964: $7c
	ld   [hl], b                                     ; $4965: $70
	rrca                                             ; $4966: $0f
	ld   a, h                                        ; $4967: $7c
	sub  c                                           ; $4968: $91
	rst  $38                                         ; $4969: $ff
	rst  $28                                         ; $496a: $ef
	rst  $38                                         ; $496b: $ff

jr_09d_496c:
	pop  af                                          ; $496c: $f1
	add  l                                           ; $496d: $85
	rst  $38                                         ; $496e: $ff
	add  b                                           ; $496f: $80
	nop                                              ; $4970: $00
	ld   [bc], a                                     ; $4971: $02
	ld   a, a                                        ; $4972: $7f
	nop                                              ; $4973: $00
	add  b                                           ; $4974: $80
	sub  e                                           ; $4975: $93
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	ld   bc, $0091                                   ; $4978: $01 $91 $00
	jr   nz, jr_09d_497e                             ; $497b: $20 $01

	nop                                              ; $497d: $00

jr_09d_497e:
	add  b                                           ; $497e: $80
	nop                                              ; $497f: $00
	ld   [hl], b                                     ; $4980: $70
	add  b                                           ; $4981: $80
	adc  [hl]                                        ; $4982: $8e
	ldh  a, [$f1]                                    ; $4983: $f0 $f1
	cp   $3e                                         ; $4985: $fe $3e
	rst  $38                                         ; $4987: $ff
	rrca                                             ; $4988: $0f
	ccf                                              ; $4989: $3f
	pop  bc                                          ; $498a: $c1
	rrca                                             ; $498b: $0f
	ld   [hl-], a                                    ; $498c: $32
	inc  bc                                          ; $498d: $03
	inc  c                                           ; $498e: $0c
	nop                                              ; $498f: $00
	inc  bc                                          ; $4990: $03
	nop                                              ; $4991: $00
	ret  nz                                          ; $4992: $c0

	nop                                              ; $4993: $00
	ldh  [$c0], a                                    ; $4994: $e0 $c0
	ld   hl, sp-$20                                  ; $4996: $f8 $e0
	inc  b                                           ; $4998: $04
	nop                                              ; $4999: $00
	rst  $38                                         ; $499a: $ff
	db   $fc                                         ; $499b: $fc

jr_09d_499c:
	rrca                                             ; $499c: $0f
	add  c                                           ; $499d: $81
	rst  $38                                         ; $499e: $ff
	ld   b, $8f                                      ; $499f: $06 $8f
	rst  $38                                         ; $49a1: $ff
	ld   a, h                                        ; $49a2: $7c
	nop                                              ; $49a3: $00
	ld   a, h                                        ; $49a4: $7c
	nop                                              ; $49a5: $00
	add  b                                           ; $49a6: $80
	add  b                                           ; $49a7: $80
	ld   a, b                                        ; $49a8: $78
	add  b                                           ; $49a9: $80
	ld   a, [$f780]                                  ; $49aa: $fa $80 $f7
	ld   [$0fef], sp                                 ; $49ad: $08 $ef $0f
	rst  $28                                         ; $49b0: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49b1: $cf
	rst  JumpTable                                         ; $49b2: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49b3: $cf
	sbc  $12                                         ; $49b4: $de $12
	dec  e                                           ; $49b6: $1d
	add  b                                           ; $49b7: $80
	ld   l, l                                        ; $49b8: $6d
	ld   bc, $e5e4                                   ; $49b9: $01 $e4 $e5
	add  b                                           ; $49bc: $80
	reti                                             ; $49bd: $d9


	add  b                                           ; $49be: $80
	ld   a, [de]                                     ; $49bf: $1a
	ld   a, [bc]                                     ; $49c0: $0a
	rst  $20                                         ; $49c1: $e7
	rlca                                             ; $49c2: $07
	dec  de                                          ; $49c3: $1b
	inc  bc                                          ; $49c4: $03
	inc  b                                           ; $49c5: $04
	nop                                              ; $49c6: $00
	jp   $3c00                                       ; $49c7: $c3 $00 $3c


	ret  nz                                          ; $49ca: $c0

	jp   $fc80                                       ; $49cb: $c3 $80 $fc


	add  h                                           ; $49ce: $84
	rst  $38                                         ; $49cf: $ff
	rlca                                             ; $49d0: $07
	ccf                                              ; $49d1: $3f
	rst  $38                                         ; $49d2: $ff
	rrca                                             ; $49d3: $0f
	ccf                                              ; $49d4: $3f
	inc  bc                                          ; $49d5: $03
	rrca                                             ; $49d6: $0f
	nop                                              ; $49d7: $00
	inc  bc                                          ; $49d8: $03
	add  c                                           ; $49d9: $81
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	add  b                                           ; $49dc: $80
	add  c                                           ; $49dd: $81
	nop                                              ; $49de: $00
	ld   c, $5e                                      ; $49df: $0e $5e
	add  b                                           ; $49e1: $80
	sbc  $00                                         ; $49e2: $de $00
	ld   [hl], b                                     ; $49e4: $70
	nop                                              ; $49e5: $00
	call z, $0fc0                                    ; $49e6: $cc $c0 $0f
	inc  c                                           ; $49e9: $0c
	nop                                              ; $49ea: $00
	add  b                                           ; $49eb: $80
	add  c                                           ; $49ec: $81
	or   c                                           ; $49ed: $b1
	or   b                                           ; $49ee: $b0
	add  b                                           ; $49ef: $80
	ld   [hl], b                                     ; $49f0: $70
	add  b                                           ; $49f1: $80
	halt                                             ; $49f2: $76
	ld   a, [bc]                                     ; $49f3: $0a
	rst  $28                                         ; $49f4: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f5: $cf
	rst  $28                                         ; $49f6: $ef
	adc  a                                           ; $49f7: $8f
	sbc  $5c                                         ; $49f8: $de $5c
	sbc  $cc                                         ; $49fa: $de $cc
	call c, Call_09d_5e52                            ; $49fc: $dc $52 $5e
	add  b                                           ; $49ff: $80
	and  b                                           ; $4a00: $a0
	add  b                                           ; $4a01: $80
	rst  $38                                         ; $4a02: $ff
	add  b                                           ; $4a03: $80
	rra                                              ; $4a04: $1f
	nop                                              ; $4a05: $00
	ldh  [$81], a                                    ; $4a06: $e0 $81
	nop                                              ; $4a08: $00
	ld   [bc], a                                     ; $4a09: $02
	add  b                                           ; $4a0a: $80
	nop                                              ; $4a0b: $00
	ld   h, b                                        ; $4a0c: $60
	add  b                                           ; $4a0d: $80
	add  b                                           ; $4a0e: $80
	add  b                                           ; $4a0f: $80
	ldh  [rP1], a                                    ; $4a10: $e0 $00
	ldh  a, [$83]                                    ; $4a12: $f0 $83
	rst  $30                                         ; $4a14: $f7
	dec  c                                           ; $4a15: $0d
	rst  ToBoot                                         ; $4a16: $c7
	rst  $30                                         ; $4a17: $f7
	rlca                                             ; $4a18: $07
	ld   c, e                                        ; $4a19: $4b
	inc  bc                                          ; $4a1a: $03
	ld   b, e                                        ; $4a1b: $43
	inc  bc                                          ; $4a1c: $03
	ld   [hl], e                                     ; $4a1d: $73
	inc  bc                                          ; $4a1e: $03
	dec  hl                                          ; $4a1f: $2b
	inc  bc                                          ; $4a20: $03
	jr   jr_09d_4a23                                 ; $4a21: $18 $00

jr_09d_4a23:
	add  a                                           ; $4a23: $87
	add  l                                           ; $4a24: $85
	nop                                              ; $4a25: $00
	inc  b                                           ; $4a26: $04
	add  b                                           ; $4a27: $80
	nop                                              ; $4a28: $00
	ld   b, b                                        ; $4a29: $40
	nop                                              ; $4a2a: $00
	jr   nz, @-$7d                                   ; $4a2b: $20 $81

	nop                                              ; $4a2d: $00
	nop                                              ; $4a2e: $00
	db   $10                                         ; $4a2f: $10
	add  c                                           ; $4a30: $81
	nop                                              ; $4a31: $00
	ld   bc, $0008                                   ; $4a32: $01 $08 $00
	add  b                                           ; $4a35: $80
	db   $10                                         ; $4a36: $10
	ld   bc, $1804                                   ; $4a37: $01 $04 $18
	add  b                                           ; $4a3a: $80
	jr   c, jr_09d_4a41                              ; $4a3b: $38 $04

	ld   a, d                                        ; $4a3d: $7a
	ld   a, b                                        ; $4a3e: $78
	ld   hl, sp-$10                                  ; $4a3f: $f8 $f0

jr_09d_4a41:
	jp   hl                                          ; $4a41: $e9


	add  c                                           ; $4a42: $81
	rst  $38                                         ; $4a43: $ff
	inc  b                                           ; $4a44: $04
	ei                                               ; $4a45: $fb
	rst  $38                                         ; $4a46: $ff
	db   $fd                                         ; $4a47: $fd
	rst  $38                                         ; $4a48: $ff
	cp   $83                                         ; $4a49: $fe $83
	rst  $38                                         ; $4a4b: $ff
	add  b                                           ; $4a4c: $80
	cp   $02                                         ; $4a4d: $fe $02
	ld   bc, $fe00                                   ; $4a4f: $01 $00 $fe
	adc  l                                           ; $4a52: $8d
	nop                                              ; $4a53: $00
	ld   [$00e0], sp                                 ; $4a54: $08 $e0 $00
	ld   [hl], b                                     ; $4a57: $70
	ld   h, b                                        ; $4a58: $60
	ld   a, h                                        ; $4a59: $7c
	ld   [hl], b                                     ; $4a5a: $70
	ld   a, [hl]                                     ; $4a5b: $7e
	ld   a, h                                        ; $4a5c: $7c
	ld   a, a                                        ; $4a5d: $7f
	add  c                                           ; $4a5e: $81
	ld   a, [hl]                                     ; $4a5f: $7e
	add  b                                           ; $4a60: $80
	inc  a                                           ; $4a61: $3c
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	add  b                                           ; $4a64: $80
	ld   [bc], a                                     ; $4a65: $02
	ld   bc, $fffe                                   ; $4a66: $01 $fe $ff
	add  c                                           ; $4a69: $81
	db   $fc                                         ; $4a6a: $fc
	nop                                              ; $4a6b: $00
	cp   $81                                         ; $4a6c: $fe $81
	ld   hl, sp+$00                                  ; $4a6e: $f8 $00

jr_09d_4a70:
	db   $fc                                         ; $4a70: $fc
	add  h                                           ; $4a71: $84
	ldh  a, [$81]                                    ; $4a72: $f0 $81
	ldh  [rP1], a                                    ; $4a74: $e0 $00
	ldh  a, [$81]                                    ; $4a76: $f0 $81
	ret  nc                                          ; $4a78: $d0

	inc  bc                                          ; $4a79: $03
	ldh  a, [$b0]                                    ; $4a7a: $f0 $b0
	ldh  [rSVBK], a                                  ; $4a7c: $e0 $70
	add  b                                           ; $4a7e: $80
	ldh  a, [rDIV]                                   ; $4a7f: $f0 $04
	db   $10                                         ; $4a81: $10
	ldh  a, [$f8]                                    ; $4a82: $f0 $f8
	ldh  [$f0], a                                    ; $4a84: $e0 $f0
	add  c                                           ; $4a86: $81
	ret  nz                                          ; $4a87: $c0

	ld   [bc], a                                     ; $4a88: $02
	ldh  [$80], a                                    ; $4a89: $e0 $80
	ret  nz                                          ; $4a8b: $c0

	add  c                                           ; $4a8c: $81
	nop                                              ; $4a8d: $00
	nop                                              ; $4a8e: $00
	add  b                                           ; $4a8f: $80
	add  l                                           ; $4a90: $85
	nop                                              ; $4a91: $00
	nop                                              ; $4a92: $00
	add  b                                           ; $4a93: $80
	add  l                                           ; $4a94: $85
	nop                                              ; $4a95: $00
	nop                                              ; $4a96: $00
	ret  nz                                          ; $4a97: $c0

	add  e                                           ; $4a98: $83
	add  b                                           ; $4a99: $80
	inc  b                                           ; $4a9a: $04
	jr   nz, jr_09d_4a9d                             ; $4a9b: $20 $00

jr_09d_4a9d:
	ret  nc                                          ; $4a9d: $d0

	ret  nz                                          ; $4a9e: $c0

	ld   hl, sp-$7f                                  ; $4a9f: $f8 $81
	ldh  a, [rP1]                                    ; $4aa1: $f0 $00
	add  sp, -$7f                                    ; $4aa3: $e8 $81
	ldh  [$09], a                                    ; $4aa5: $e0 $09
	ld   a, [hl]                                     ; $4aa7: $7e
	add  d                                           ; $4aa8: $82
	cp   d                                           ; $4aa9: $ba
	and  d                                           ; $4aaa: $a2
	ld   [hl], e                                     ; $4aab: $73
	ld   [bc], a                                     ; $4aac: $02
	db   $e4                                         ; $4aad: $e4
	ld   [bc], a                                     ; $4aae: $02
	nop                                              ; $4aaf: $00
	add  c                                           ; $4ab0: $81
	add  c                                           ; $4ab1: $81
	jp   nz, $2013                                   ; $4ab2: $c2 $13 $20

	nop                                              ; $4ab5: $00
	add  b                                           ; $4ab6: $80
	ldh  a, [rAUD4LEN]                               ; $4ab7: $f0 $20
	sbc  b                                           ; $4ab9: $98
	cp   b                                           ; $4aba: $b8
	ld   c, b                                        ; $4abb: $48
	add  sp, -$10                                    ; $4abc: $e8 $f0
	ret  nz                                          ; $4abe: $c0

	call nz, $6444                                   ; $4abf: $c4 $44 $64
	ld   h, b                                        ; $4ac2: $60
	ld   h, a                                        ; $4ac3: $67
	dec  h                                           ; $4ac4: $25
	halt                                             ; $4ac5: $76
	ld   d, b                                        ; $4ac6: $50
	ldh  [$8d], a                                    ; $4ac7: $e0 $8d
	nop                                              ; $4ac9: $00
	ld   c, $5c                                      ; $4aca: $0e $5c
	inc  sp                                          ; $4acc: $33
	push de                                          ; $4acd: $d5
	ld   a, l                                        ; $4ace: $7d
	xor  b                                           ; $4acf: $a8
	jp   nc, $a772                                   ; $4ad0: $d2 $72 $a7

	xor  e                                           ; $4ad3: $ab
	sbc  l                                           ; $4ad4: $9d
	ld   a, [de]                                     ; $4ad5: $1a
	ld   [$1844], sp                                 ; $4ad6: $08 $44 $18
	db   $10                                         ; $4ad9: $10
	adc  c                                           ; $4ada: $89
	nop                                              ; $4adb: $00
	ld   c, $10                                      ; $4adc: $0e $10
	jr   jr_09d_4b4c                                 ; $4ade: $18 $6c

	ld   h, h                                        ; $4ae0: $64
	add  h                                           ; $4ae1: $84
	ld   b, h                                        ; $4ae2: $44
	and  b                                           ; $4ae3: $a0
	ld   h, h                                        ; $4ae4: $64
	inc  d                                           ; $4ae5: $14
	jr   jr_09d_4a70                                 ; $4ae6: $18 $88

	add  b                                           ; $4ae8: $80
	and  c                                           ; $4ae9: $a1
	ld   h, b                                        ; $4aea: $60
	cp   [hl]                                        ; $4aeb: $be
	add  b                                           ; $4aec: $80
	inc  c                                           ; $4aed: $0c
	ld   bc, $8101                                   ; $4aee: $01 $01 $81
	add  b                                           ; $4af1: $80
	add  hl, hl                                      ; $4af2: $29
	ld   a, [bc]                                     ; $4af3: $0a
	ld   l, b                                        ; $4af4: $68
	add  hl, de                                      ; $4af5: $19
	add  d                                           ; $4af6: $82
	cp   d                                           ; $4af7: $ba
	and  d                                           ; $4af8: $a2
	ld   [hl], e                                     ; $4af9: $73
	ld   [bc], a                                     ; $4afa: $02
	db   $e4                                         ; $4afb: $e4
	ld   [bc], a                                     ; $4afc: $02
	nop                                              ; $4afd: $00
	add  c                                           ; $4afe: $81
	add  c                                           ; $4aff: $81
	jp   nz, $2013                                   ; $4b00: $c2 $13 $20

	ld   h, b                                        ; $4b03: $60
	add  b                                           ; $4b04: $80
	jr   nc, jr_09d_4b07                             ; $4b05: $30 $00

jr_09d_4b07:
	ret  c                                           ; $4b07: $d8

	cp   b                                           ; $4b08: $b8
	ret  z                                           ; $4b09: $c8

	add  sp, -$50                                    ; $4b0a: $e8 $b0
	ret  nz                                          ; $4b0c: $c0

	call nz, $6444                                   ; $4b0d: $c4 $44 $64
	ld   h, b                                        ; $4b10: $60
	ld   h, a                                        ; $4b11: $67
	dec  h                                           ; $4b12: $25
	halt                                             ; $4b13: $76
	ld   d, b                                        ; $4b14: $50
	ldh  [$8d], a                                    ; $4b15: $e0 $8d
	nop                                              ; $4b17: $00
	add  hl, de                                      ; $4b18: $19
	ld   e, h                                        ; $4b19: $5c
	inc  sp                                          ; $4b1a: $33
	push de                                          ; $4b1b: $d5
	ld   a, l                                        ; $4b1c: $7d
	add  b                                           ; $4b1d: $80
	jp   z, $b302                                    ; $4b1e: $ca $02 $b3

	sbc  a                                           ; $4b21: $9f
	db   $dd                                         ; $4b22: $dd
	ld   a, [hl-]                                    ; $4b23: $3a
	ld   [$1844], sp                                 ; $4b24: $08 $44 $18
	stop                                             ; $4b27: $10 $00
	adc  [hl]                                        ; $4b29: $8e
	add  d                                           ; $4b2a: $82
	cp   d                                           ; $4b2b: $ba
	and  d                                           ; $4b2c: $a2
	ld   [hl], e                                     ; $4b2d: $73
	ld   [bc], a                                     ; $4b2e: $02
	db   $e4                                         ; $4b2f: $e4
	ld   [bc], a                                     ; $4b30: $02
	nop                                              ; $4b31: $00
	add  c                                           ; $4b32: $81
	add  c                                           ; $4b33: $81
	jp   nz, $2013                                   ; $4b34: $c2 $13 $20

	ld   h, b                                        ; $4b37: $60
	add  b                                           ; $4b38: $80
	stop                                             ; $4b39: $10 $00
	adc  b                                           ; $4b3b: $88
	xor  b                                           ; $4b3c: $a8
	adc  b                                           ; $4b3d: $88
	ret  z                                           ; $4b3e: $c8

	or   b                                           ; $4b3f: $b0
	ret  nz                                          ; $4b40: $c0

	call nz, $6444                                   ; $4b41: $c4 $44 $64
	ld   h, b                                        ; $4b44: $60
	ld   h, a                                        ; $4b45: $67
	dec  h                                           ; $4b46: $25
	halt                                             ; $4b47: $76
	ld   d, b                                        ; $4b48: $50
	ldh  [$8d], a                                    ; $4b49: $e0 $8d
	nop                                              ; $4b4b: $00

jr_09d_4b4c:
	ld   c, $5c                                      ; $4b4c: $0e $5c
	inc  sp                                          ; $4b4e: $33
	push de                                          ; $4b4f: $d5
	ld   a, l                                        ; $4b50: $7d
	add  h                                           ; $4b51: $84
	jp   nz, $8506                                   ; $4b52: $c2 $06 $85

	add  c                                           ; $4b55: $81
	adc  l                                           ; $4b56: $8d
	ld   [bc], a                                     ; $4b57: $02
	db   $10                                         ; $4b58: $10
	inc  h                                           ; $4b59: $24
	ld   [$8930], sp                                 ; $4b5a: $08 $30 $89
	nop                                              ; $4b5d: $00
	ld   b, $10                                      ; $4b5e: $06 $10
	nop                                              ; $4b60: $00
	ld   [hl], b                                     ; $4b61: $70
	ld   b, b                                        ; $4b62: $40
	ld   h, b                                        ; $4b63: $60
	ret  nz                                          ; $4b64: $c0

	add  b                                           ; $4b65: $80
	add  c                                           ; $4b66: $81
	nop                                              ; $4b67: $00
	add  b                                           ; $4b68: $80
	add  b                                           ; $4b69: $80
	ld   [bc], a                                     ; $4b6a: $02
	and  c                                           ; $4b6b: $a1
	ld   h, b                                        ; $4b6c: $60
	cp   [hl]                                        ; $4b6d: $be
	add  b                                           ; $4b6e: $80
	inc  c                                           ; $4b6f: $0c
	ld   bc, $8101                                   ; $4b70: $01 $01 $81
	add  b                                           ; $4b73: $80
	add  hl, hl                                      ; $4b74: $29
	ld   bc, $9768                                   ; $4b75: $01 $68 $97
	rst  $38                                         ; $4b78: $ff
	nop                                              ; $4b79: $00
	rst  $38                                         ; $4b7a: $ff
	nop                                              ; $4b7b: $00
	rst  $38                                         ; $4b7c: $ff
	nop                                              ; $4b7d: $00
	rst  $38                                         ; $4b7e: $ff
	nop                                              ; $4b7f: $00
	rst  $38                                         ; $4b80: $ff
	nop                                              ; $4b81: $00
	rst  $38                                         ; $4b82: $ff
	nop                                              ; $4b83: $00
	rst  $10                                         ; $4b84: $d7
	nop                                              ; $4b85: $00
	push af                                          ; $4b86: $f5
	nop                                              ; $4b87: $00
	sbc  h                                           ; $4b88: $9c
	nop                                              ; $4b89: $00
	ld   a, [bc]                                     ; $4b8a: $0a
	ld   bc, $0b00                                   ; $4b8b: $01 $00 $0b
	rlca                                             ; $4b8e: $07
	dec  de                                          ; $4b8f: $1b
	rrca                                             ; $4b90: $0f
	ld   [bc], a                                     ; $4b91: $02

jr_09d_4b92:
	rrca                                             ; $4b92: $0f
	inc  a                                           ; $4b93: $3c
	rra                                              ; $4b94: $1f
	rla                                              ; $4b95: $17
	add  e                                           ; $4b96: $83
	rra                                              ; $4b97: $1f
	nop                                              ; $4b98: $00
	ld   a, a                                        ; $4b99: $7f
	add  l                                           ; $4b9a: $85
	ccf                                              ; $4b9b: $3f
	nop                                              ; $4b9c: $00
	rst  $38                                         ; $4b9d: $ff
	add  l                                           ; $4b9e: $85
	ld   a, a                                        ; $4b9f: $7f
	add  c                                           ; $4ba0: $81
	rst  $38                                         ; $4ba1: $ff
	ld   bc, $8000                                   ; $4ba2: $01 $00 $80
	add  c                                           ; $4ba5: $81
	nop                                              ; $4ba6: $00
	nop                                              ; $4ba7: $00
	ret  nz                                          ; $4ba8: $c0

	add  e                                           ; $4ba9: $83
	add  b                                           ; $4baa: $80
	add  [hl]                                        ; $4bab: $86
	nop                                              ; $4bac: $00
	add  d                                           ; $4bad: $82
	add  b                                           ; $4bae: $80
	dec  b                                           ; $4baf: $05
	ldh  [$c0], a                                    ; $4bb0: $e0 $c0
	nop                                              ; $4bb2: $00
	ld   b, b                                        ; $4bb3: $40
	db   $10                                         ; $4bb4: $10
	ld   h, b                                        ; $4bb5: $60
	add  b                                           ; $4bb6: $80
	and  b                                           ; $4bb7: $a0
	nop                                              ; $4bb8: $00
	pop  de                                          ; $4bb9: $d1
	add  c                                           ; $4bba: $81
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	ld   [bc], a                                     ; $4bbd: $02
	add  e                                           ; $4bbe: $83
	ld   bc, $0400                                   ; $4bbf: $01 $00 $04
	add  e                                           ; $4bc2: $83
	inc  bc                                          ; $4bc3: $03
	add  b                                           ; $4bc4: $80
	ld   [bc], a                                     ; $4bc5: $02
	nop                                              ; $4bc6: $00
	ld   [$0680], sp                                 ; $4bc7: $08 $80 $06
	nop                                              ; $4bca: $00
	rlca                                             ; $4bcb: $07
	add  b                                           ; $4bcc: $80
	dec  b                                           ; $4bcd: $05
	nop                                              ; $4bce: $00
	inc  b                                           ; $4bcf: $04
	add  l                                           ; $4bd0: $85
	ld   bc, $5700                                   ; $4bd1: $01 $00 $57
	add  l                                           ; $4bd4: $85
	and  b                                           ; $4bd5: $a0
	nop                                              ; $4bd6: $00
	ld   d, b                                        ; $4bd7: $50
	add  c                                           ; $4bd8: $81
	ld   b, b                                        ; $4bd9: $40
	ld   b, $a0                                      ; $4bda: $06 $a0
	add  b                                           ; $4bdc: $80
	sbc  b                                           ; $4bdd: $98
	add  b                                           ; $4bde: $80
	ld   b, b                                        ; $4bdf: $40
	nop                                              ; $4be0: $00
	db   $10                                         ; $4be1: $10
	add  d                                           ; $4be2: $82
	nop                                              ; $4be3: $00
	add  c                                           ; $4be4: $81
	ld   b, b                                        ; $4be5: $40
	adc  [hl]                                        ; $4be6: $8e
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	ld   b, b                                        ; $4be9: $40
	add  c                                           ; $4bea: $81
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	add  b                                           ; $4bed: $80
	add  c                                           ; $4bee: $81
	nop                                              ; $4bef: $00
	ld   b, $80                                      ; $4bf0: $06 $80
	nop                                              ; $4bf2: $00
	ld   [hl], b                                     ; $4bf3: $70
	add  b                                           ; $4bf4: $80
	adc  h                                           ; $4bf5: $8c
	ret  nz                                          ; $4bf6: $c0

	add  $81                                         ; $4bf7: $c6 $81
	call nz, $cc00                                   ; $4bf9: $c4 $00 $cc
	add  c                                           ; $4bfc: $81
	adc  h                                           ; $4bfd: $8c
	ld   [bc], a                                     ; $4bfe: $02
	ld   a, [hl]                                     ; $4bff: $7e
	nop                                              ; $4c00: $00
	add  b                                           ; $4c01: $80
	add  l                                           ; $4c02: $85
	nop                                              ; $4c03: $00
	inc  b                                           ; $4c04: $04
	ret  nz                                          ; $4c05: $c0

	add  b                                           ; $4c06: $80
	ldh  [$c0], a                                    ; $4c07: $e0 $c0
	ld   b, b                                        ; $4c09: $40
	add  c                                           ; $4c0a: $81
	ret  nz                                          ; $4c0b: $c0

	ld   [bc], a                                     ; $4c0c: $02
	ld   b, b                                        ; $4c0d: $40
	ret  nz                                          ; $4c0e: $c0

	jr   nz, jr_09d_4b92                             ; $4c0f: $20 $81

	nop                                              ; $4c11: $00
	ld   [$0040], sp                                 ; $4c12: $08 $40 $00
	add  b                                           ; $4c15: $80
	nop                                              ; $4c16: $00
	add  b                                           ; $4c17: $80
	nop                                              ; $4c18: $00
	ret  nz                                          ; $4c19: $c0

	add  b                                           ; $4c1a: $80
	ldh  [$81], a                                    ; $4c1b: $e0 $81
	ret  nz                                          ; $4c1d: $c0

	nop                                              ; $4c1e: $00
	and  b                                           ; $4c1f: $a0
	add  e                                           ; $4c20: $83
	add  b                                           ; $4c21: $80
	db   $10                                         ; $4c22: $10
	ldh  [$c0], a                                    ; $4c23: $e0 $c0
	stop                                             ; $4c25: $10 $00
	inc  a                                           ; $4c27: $3c
	ldh  a, [$ce]                                    ; $4c28: $f0 $ce
	db   $fc                                         ; $4c2a: $fc
	inc  a                                           ; $4c2b: $3c
	db   $fc                                         ; $4c2c: $fc
	db   $ec                                         ; $4c2d: $ec
	db   $fc                                         ; $4c2e: $fc
	jp   c, $f4f8                                    ; $4c2f: $da $f8 $f4

	ldh  a, [$e8]                                    ; $4c32: $f0 $e8
	add  c                                           ; $4c34: $81
	ldh  [rDIV], a                                   ; $4c35: $e0 $04
	ret  nc                                          ; $4c37: $d0

	ret  nz                                          ; $4c38: $c0

	xor  $01                                         ; $4c39: $ee $01
	add  hl, bc                                      ; $4c3b: $09
	add  c                                           ; $4c3c: $81
	ld   bc, $0504                                   ; $4c3d: $01 $04 $05
	ld   bc, $0002                                   ; $4c40: $01 $02 $00
	ld   bc, $0087                                   ; $4c43: $01 $87 $00
	ld   c, $01                                      ; $4c46: $0e $01
	nop                                              ; $4c48: $00
	ld   b, $01                                      ; $4c49: $06 $01
	add  hl, de                                      ; $4c4b: $19
	nop                                              ; $4c4c: $00
	jr   nz, jr_09d_4c66                             ; $4c4d: $20 $17

	ld   d, a                                        ; $4c4f: $57
	cpl                                              ; $4c50: $2f
	xor  a                                           ; $4c51: $af
	ld   e, e                                        ; $4c52: $5b
	adc  $9f                                         ; $4c53: $ce $9f
	sub  a                                           ; $4c55: $97
	add  e                                           ; $4c56: $83
	sbc  a                                           ; $4c57: $9f
	nop                                              ; $4c58: $00
	add  hl, de                                      ; $4c59: $19
	add  c                                           ; $4c5a: $81
	dec  de                                          ; $4c5b: $1b
	ld   a, [bc]                                     ; $4c5c: $0a
	ld   c, e                                        ; $4c5d: $4b
	dec  bc                                          ; $4c5e: $0b
	add  e                                           ; $4c5f: $83
	inc  bc                                          ; $4c60: $03
	inc  hl                                          ; $4c61: $23
	inc  bc                                          ; $4c62: $03
	ld   h, c                                        ; $4c63: $61
	add  hl, de                                      ; $4c64: $19
	sbc  c                                           ; $4c65: $99

jr_09d_4c66:
	ld   a, l                                        ; $4c66: $7d
	ld   a, h                                        ; $4c67: $7c
	add  b                                           ; $4c68: $80
	cp   $80                                         ; $4c69: $fe $80
	ld   a, a                                        ; $4c6b: $7f
	add  b                                           ; $4c6c: $80
	sbc  a                                           ; $4c6d: $9f
	add  b                                           ; $4c6e: $80
	rst  $28                                         ; $4c6f: $ef
	ld   bc, $30f0                                   ; $4c70: $01 $f0 $30
	add  c                                           ; $4c73: $81
	nop                                              ; $4c74: $00
	dec  bc                                          ; $4c75: $0b
	ld   b, b                                        ; $4c76: $40
	nop                                              ; $4c77: $00
	add  c                                           ; $4c78: $81
	ld   a, a                                        ; $4c79: $7f
	jr   jr_09d_4cfa                                 ; $4c7a: $18 $7e

	xor  [hl]                                        ; $4c7c: $ae
	ld   a, $36                                      ; $4c7d: $3e $36
	ld   a, $5c                                      ; $4c7f: $3e $5c
	dec  e                                           ; $4c81: $1d
	add  b                                           ; $4c82: $80
	ld   bc, $2101                                   ; $4c83: $01 $01 $21
	nop                                              ; $4c86: $00
	add  b                                           ; $4c87: $80
	rrca                                             ; $4c88: $0f
	rlca                                             ; $4c89: $07
	ld   sp, $691f                                   ; $4c8a: $31 $1f $69
	ccf                                              ; $4c8d: $3f
	rst  ToBoot                                         ; $4c8e: $c7
	ld   a, a                                        ; $4c8f: $7f
	ld   e, a                                        ; $4c90: $5f
	ld   a, a                                        ; $4c91: $7f
	add  b                                           ; $4c92: $80
	ld   [hl], b                                     ; $4c93: $70
	inc  c                                           ; $4c94: $0c
	ld   e, h                                        ; $4c95: $5c
	nop                                              ; $4c96: $00
	ld   b, c                                        ; $4c97: $41
	nop                                              ; $4c98: $00
	ld   a, b                                        ; $4c99: $78
	nop                                              ; $4c9a: $00
	ld   [$8500], sp                                 ; $4c9b: $08 $00 $85
	inc  bc                                          ; $4c9e: $03
	dec  bc                                          ; $4c9f: $0b
	rlca                                             ; $4ca0: $07
	jr   @-$7b                                       ; $4ca1: $18 $83

	nop                                              ; $4ca3: $00
	dec  d                                           ; $4ca4: $15
	ret  nz                                          ; $4ca5: $c0

	nop                                              ; $4ca6: $00
	db   $fc                                         ; $4ca7: $fc
	nop                                              ; $4ca8: $00
	dec  de                                          ; $4ca9: $1b
	nop                                              ; $4caa: $00
	ld   [bc], a                                     ; $4cab: $02
	nop                                              ; $4cac: $00
	inc  c                                           ; $4cad: $0c
	nop                                              ; $4cae: $00
	ld   d, b                                        ; $4caf: $50
	nop                                              ; $4cb0: $00
	add  a                                           ; $4cb1: $87
	nop                                              ; $4cb2: $00
	ld   a, [hl]                                     ; $4cb3: $7e
	nop                                              ; $4cb4: $00
	db   $fc                                         ; $4cb5: $fc
	nop                                              ; $4cb6: $00
	ld   a, a                                        ; $4cb7: $7f
	nop                                              ; $4cb8: $00
	ld   [hl], e                                     ; $4cb9: $73
	ld   [hl], b                                     ; $4cba: $70
	add  b                                           ; $4cbb: $80
	ld   hl, sp-$80                                  ; $4cbc: $f8 $80
	inc  a                                           ; $4cbe: $3c
	adc  b                                           ; $4cbf: $88
	nop                                              ; $4cc0: $00
	ld   de, $00e0                                   ; $4cc1: $11 $e0 $00
	sbc  $00                                         ; $4cc4: $de $00
	rlca                                             ; $4cc6: $07
	nop                                              ; $4cc7: $00
	ld   hl, sp+$00                                  ; $4cc8: $f8 $00
	ret  nz                                          ; $4cca: $c0

	nop                                              ; $4ccb: $00
	ld   e, [hl]                                     ; $4ccc: $5e
	jr   nz, @+$42                                   ; $4ccd: $20 $40

	nop                                              ; $4ccf: $00
	jr   nc, jr_09d_4cd2                             ; $4cd0: $30 $00

jr_09d_4cd2:
	ld   [$8000], sp                                 ; $4cd2: $08 $00 $80
	ld   bc, $0382                                   ; $4cd5: $01 $82 $03
	ld   bc, $060e                                   ; $4cd8: $01 $0e $06
	add  b                                           ; $4cdb: $80
	nop                                              ; $4cdc: $00
	add  b                                           ; $4cdd: $80
	ld   bc, $3e03                                   ; $4cde: $01 $03 $3e
	ld   c, $7e                                      ; $4ce1: $0e $7e
	ld   a, $80                                      ; $4ce3: $3e $80
	ccf                                              ; $4ce5: $3f
	ld   bc, $7fff                                   ; $4ce6: $01 $ff $7f
	add  b                                           ; $4ce9: $80
	ld   c, [hl]                                     ; $4cea: $4e
	add  b                                           ; $4ceb: $80
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	db   $fd                                         ; $4cee: $fd
	add  e                                           ; $4cef: $83
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	dec  b                                           ; $4cf2: $05
	add  e                                           ; $4cf3: $83
	nop                                              ; $4cf4: $00
	nop                                              ; $4cf5: $00
	ld   [$0083], sp                                 ; $4cf6: $08 $83 $00
	add  b                                           ; $4cf9: $80

jr_09d_4cfa:
	inc  bc                                          ; $4cfa: $03
	ld   [bc], a                                     ; $4cfb: $02
	dec  de                                          ; $4cfc: $1b
	inc  bc                                          ; $4cfd: $03
	add  e                                           ; $4cfe: $83
	add  c                                           ; $4cff: $81
	inc  bc                                          ; $4d00: $03
	ld   b, $c0                                      ; $4d01: $06 $c0
	nop                                              ; $4d03: $00
	ld   l, l                                        ; $4d04: $6d
	nop                                              ; $4d05: $00
	ld   bc, $3b00                                   ; $4d06: $01 $00 $3b
	add  e                                           ; $4d09: $83
	nop                                              ; $4d0a: $00
	ld   [bc], a                                     ; $4d0b: $02
	rlca                                             ; $4d0c: $07
	nop                                              ; $4d0d: $00
	ld   hl, sp-$7f                                  ; $4d0e: $f8 $81
	nop                                              ; $4d10: $00
	add  b                                           ; $4d11: $80
	ld   bc, $0f80                                   ; $4d12: $01 $80 $0f
	add  b                                           ; $4d15: $80
	ld   a, a                                        ; $4d16: $7f
	add  b                                           ; $4d17: $80
	db   $fc                                         ; $4d18: $fc
	dec  d                                           ; $4d19: $15
	ei                                               ; $4d1a: $fb
	ld   hl, sp-$1c                                  ; $4d1b: $f8 $e4
	ldh  [$98], a                                    ; $4d1d: $e0 $98
	add  b                                           ; $4d1f: $80
	ld   h, b                                        ; $4d20: $60
	nop                                              ; $4d21: $00
	adc  a                                           ; $4d22: $8f
	nop                                              ; $4d23: $00
	cp   $00                                         ; $4d24: $fe $00
	cp   l                                           ; $4d26: $bd
	nop                                              ; $4d27: $00
	inc  [hl]                                        ; $4d28: $34
	nop                                              ; $4d29: $00
	adc  c                                           ; $4d2a: $89
	nop                                              ; $4d2b: $00
	ld   [bc], a                                     ; $4d2c: $02
	nop                                              ; $4d2d: $00
	dec  c                                           ; $4d2e: $0d

jr_09d_4d2f:
	ld   bc, $1f80                                   ; $4d2f: $01 $80 $1f
	add  b                                           ; $4d32: $80
	rst  $28                                         ; $4d33: $ef
	add  b                                           ; $4d34: $80
	ret  nz                                          ; $4d35: $c0

	inc  bc                                          ; $4d36: $03
	ld   a, $01                                      ; $4d37: $3e $01
	rst  ToBoot                                         ; $4d39: $c7
	rlca                                             ; $4d3a: $07
	add  b                                           ; $4d3b: $80
	rrca                                             ; $4d3c: $0f
	add  b                                           ; $4d3d: $80
	rra                                              ; $4d3e: $1f
	rrca                                             ; $4d3f: $0f
	ld   a, a                                        ; $4d40: $7f
	ld   a, h                                        ; $4d41: $7c
	db   $fc                                         ; $4d42: $fc
	nop                                              ; $4d43: $00
	cp   $00                                         ; $4d44: $fe $00
	ld   a, $00                                      ; $4d46: $3e $00
	ld   e, a                                        ; $4d48: $5f
	nop                                              ; $4d49: $00
	ldh  [rP1], a                                    ; $4d4a: $e0 $00
	ld   h, b                                        ; $4d4c: $60
	nop                                              ; $4d4d: $00
	rra                                              ; $4d4e: $1f
	nop                                              ; $4d4f: $00
	add  d                                           ; $4d50: $82
	rst  $38                                         ; $4d51: $ff
	add  b                                           ; $4d52: $80
	cp   $80                                         ; $4d53: $fe $80
	ld   b, $00                                      ; $4d55: $06 $00
	nop                                              ; $4d57: $00
	add  b                                           ; $4d58: $80
	ld   hl, sp-$80                                  ; $4d59: $f8 $80
	db   $fc                                         ; $4d5b: $fc
	inc  c                                           ; $4d5c: $0c
	ret  nz                                          ; $4d5d: $c0

	and  $80                                         ; $4d5e: $e6 $80
	cp   d                                           ; $4d60: $ba
	nop                                              ; $4d61: $00
	xor  [hl]                                        ; $4d62: $ae
	nop                                              ; $4d63: $00
	ld   [hl-], a                                    ; $4d64: $32
	ld   [bc], a                                     ; $4d65: $02
	add  [hl]                                        ; $4d66: $86
	inc  bc                                          ; $4d67: $03
	ld   sp, hl                                      ; $4d68: $f9
	cp   $80                                         ; $4d69: $fe $80
	cp   a                                           ; $4d6b: $bf
	add  b                                           ; $4d6c: $80
	jr   nz, @+$04                                   ; $4d6d: $20 $02

	rlca                                             ; $4d6f: $07
	jr   jr_09d_4d91                                 ; $4d70: $18 $1f

	add  b                                           ; $4d72: $80
	ld   a, a                                        ; $4d73: $7f
	add  b                                           ; $4d74: $80
	rst  $38                                         ; $4d75: $ff
	ld   [bc], a                                     ; $4d76: $02
	ldh  [rIE], a                                    ; $4d77: $e0 $ff
	rra                                              ; $4d79: $1f
	add  b                                           ; $4d7a: $80
	ld   a, a                                        ; $4d7b: $7f
	add  b                                           ; $4d7c: $80
	rst  $38                                         ; $4d7d: $ff
	add  b                                           ; $4d7e: $80
	db   $fd                                         ; $4d7f: $fd
	dec  bc                                          ; $4d80: $0b
	db   $ed                                         ; $4d81: $ed
	and  l                                           ; $4d82: $a5
	sub  b                                           ; $4d83: $90
	ld   d, b                                        ; $4d84: $50
	jr   nc, jr_09d_4d2f                             ; $4d85: $30 $a8

	ld   h, b                                        ; $4d87: $60
	ld   d, b                                        ; $4d88: $50
	jp   nz, $3ce0                                   ; $4d89: $c2 $e0 $3c

	ld   a, $80                                      ; $4d8c: $3e $80
	rst  $38                                         ; $4d8e: $ff
	add  b                                           ; $4d8f: $80
	rlca                                             ; $4d90: $07

jr_09d_4d91:
	dec  bc                                          ; $4d91: $0b
	pop  hl                                          ; $4d92: $e1
	add  hl, de                                      ; $4d93: $19
	jr   jr_09d_4db2                                 ; $4d94: $18 $1c

	db   $e4                                         ; $4d96: $e4
	and  $fe                                         ; $4d97: $e6 $fe
	rlca                                             ; $4d99: $07
	rst  $38                                         ; $4d9a: $ff
	ld   sp, hl                                      ; $4d9b: $f9

jr_09d_4d9c:
	rst  $38                                         ; $4d9c: $ff
	cp   $80                                         ; $4d9d: $fe $80
	rst  $38                                         ; $4d9f: $ff
	add  b                                           ; $4da0: $80
	rst  $30                                         ; $4da1: $f7
	ld   [bc], a                                     ; $4da2: $02
	rst  $10                                         ; $4da3: $d7
	sub  a                                           ; $4da4: $97
	sbc  d                                           ; $4da5: $9a
	add  b                                           ; $4da6: $80
	sub  d                                           ; $4da7: $92
	add  b                                           ; $4da8: $80
	add  d                                           ; $4da9: $82
	dec  de                                          ; $4daa: $1b
	sub  d                                           ; $4dab: $92
	sub  e                                           ; $4dac: $93
	db   $db                                         ; $4dad: $db
	ld   l, a                                        ; $4dae: $6f
	nop                                              ; $4daf: $00
	jr   jr_09d_4db2                                 ; $4db0: $18 $00

jr_09d_4db2:
	adc  h                                           ; $4db2: $8c
	nop                                              ; $4db3: $00
	add  [hl]                                        ; $4db4: $86
	nop                                              ; $4db5: $00
	ld   h, e                                        ; $4db6: $63
	nop                                              ; $4db7: $00
	ld   a, c                                        ; $4db8: $79
	ld   h, b                                        ; $4db9: $60
	halt                                             ; $4dba: $76

jr_09d_4dbb:
	ld   [hl], b                                     ; $4dbb: $70
	ccf                                              ; $4dbc: $3f
	jr   c, jr_09d_4e08                              ; $4dbd: $38 $49

	inc  c                                           ; $4dbf: $0c
	jr   nc, jr_09d_4dc2                             ; $4dc0: $30 $00

jr_09d_4dc2:
	rrca                                             ; $4dc2: $0f
	nop                                              ; $4dc3: $00
	inc  bc                                          ; $4dc4: $03
	nop                                              ; $4dc5: $00
	add  b                                           ; $4dc6: $80
	add  e                                           ; $4dc7: $83
	nop                                              ; $4dc8: $00
	inc  b                                           ; $4dc9: $04
	add  b                                           ; $4dca: $80
	nop                                              ; $4dcb: $00
	adc  [hl]                                        ; $4dcc: $8e
	ld   bc, $8109                                   ; $4dcd: $01 $09 $81
	ld   bc, $0504                                   ; $4dd0: $01 $04 $05
	ld   bc, $0002                                   ; $4dd3: $01 $02 $00
	ld   bc, $0087                                   ; $4dd6: $01 $87 $00
	inc  c                                           ; $4dd9: $0c
	ld   bc, $0600                                   ; $4dda: $01 $00 $06
	ld   bc, $0019                                   ; $4ddd: $01 $19 $00
	daa                                              ; $4de0: $27
	db   $10                                         ; $4de1: $10
	ld   e, b                                        ; $4de2: $58
	jr   nz, jr_09d_4d9c                             ; $4de3: $20 $b7

	ld   b, e                                        ; $4de5: $43
	call nz, $9580                                   ; $4de6: $c4 $80 $95
	nop                                              ; $4de9: $00
	sbc  l                                           ; $4dea: $9d
	add  d                                           ; $4deb: $82
	sbc  h                                           ; $4dec: $9c
	nop                                              ; $4ded: $00
	jr   @-$7d                                       ; $4dee: $18 $81

	ld   a, [de]                                     ; $4df0: $1a
	dec  d                                           ; $4df1: $15
	ld   c, d                                        ; $4df2: $4a
	ld   a, [bc]                                     ; $4df3: $0a

jr_09d_4df4:
	add  d                                           ; $4df4: $82
	ld   [bc], a                                     ; $4df5: $02
	inc  hl                                          ; $4df6: $23
	inc  bc                                          ; $4df7: $03
	ld   h, c                                        ; $4df8: $61
	add  hl, de                                      ; $4df9: $19
	add  l                                           ; $4dfa: $85
	ld   h, c                                        ; $4dfb: $61
	add  d                                           ; $4dfc: $82
	nop                                              ; $4dfd: $00
	add  c                                           ; $4dfe: $81
	nop                                              ; $4dff: $00
	ld   h, b                                        ; $4e00: $60
	add  b                                           ; $4e01: $80
	ld   d, b                                        ; $4e02: $50
	jr   nz, jr_09d_4df4                             ; $4e03: $20 $ef

	ldh  a, [$03]                                    ; $4e05: $f0 $03
	di                                               ; $4e07: $f3

jr_09d_4e08:
	add  b                                           ; $4e08: $80
	ldh  a, [c]                                      ; $4e09: $f2
	add  b                                           ; $4e0a: $80
	ldh  a, [$81]                                    ; $4e0b: $f0 $81
	ldh  [rTAC], a                                   ; $4e0d: $e0 $07
	xor  $e6                                         ; $4e0f: $ee $e6
	add  sp, -$1a                                    ; $4e11: $e8 $e6
	ldh  [c], a                                      ; $4e13: $e2
	push bc                                          ; $4e14: $c5
	reti                                             ; $4e15: $d9


	rst  $10                                         ; $4e16: $d7

jr_09d_4e17:
	add  c                                           ; $4e17: $81
	ret  nc                                          ; $4e18: $d0

	nop                                              ; $4e19: $00
	sub  b                                           ; $4e1a: $90
	add  l                                           ; $4e1b: $85
	or   b                                           ; $4e1c: $b0
	add  b                                           ; $4e1d: $80
	cp   b                                           ; $4e1e: $b8
	ld   de, $3818                                   ; $4e1f: $11 $18 $38
	sbc  [hl]                                        ; $4e22: $9e
	sub  l                                           ; $4e23: $95
	ld   de, $2429                                   ; $4e24: $11 $29 $24
	ld   d, h                                        ; $4e27: $54
	ld   [hl], l                                     ; $4e28: $75
	jr   nc, jr_09d_4e3d                             ; $4e29: $30 $12

	ld   b, b                                        ; $4e2b: $40
	ld   c, h                                        ; $4e2c: $4c
	jr   nc, jr_09d_4e17                             ; $4e2d: $30 $e8

	ld   d, b                                        ; $4e2f: $50
	ld   b, b                                        ; $4e30: $40
	jr   nc, jr_09d_4dbb                             ; $4e31: $30 $88

	nop                                              ; $4e33: $00
	add  b                                           ; $4e34: $80
	ld   bc, $0380                                   ; $4e35: $01 $80 $03
	add  b                                           ; $4e38: $80
	nop                                              ; $4e39: $00
	nop                                              ; $4e3a: $00
	db   $ed                                         ; $4e3b: $ed
	add  d                                           ; $4e3c: $82

jr_09d_4e3d:
	ld   d, [hl]                                     ; $4e3d: $56
	nop                                              ; $4e3e: $00
	sub  $80                                         ; $4e3f: $d6 $80
	ld   d, [hl]                                     ; $4e41: $56
	inc  c                                           ; $4e42: $0c
	ld   b, l                                        ; $4e43: $45
	ld   b, c                                        ; $4e44: $41
	ld   bc, $5455                                   ; $4e45: $01 $55 $54
	ld   b, b                                        ; $4e48: $40
	ld   d, b                                        ; $4e49: $50
	jr   jr_09d_4ebd                                 ; $4e4a: $18 $71

	ld   h, l                                        ; $4e4c: $65
	ld   h, $0a                                      ; $4e4d: $26 $0a
	nop                                              ; $4e4f: $00
	add  c                                           ; $4e50: $81
	ld   [$0209], sp                                 ; $4e51: $08 $09 $02
	ld   a, [bc]                                     ; $4e54: $0a
	ld   [de], a                                     ; $4e55: $12
	sub  d                                           ; $4e56: $92
	ld   [bc], a                                     ; $4e57: $02
	ld   [de], a                                     ; $4e58: $12
	and  d                                           ; $4e59: $a2
	ld   [hl+], a                                    ; $4e5a: $22
	inc  de                                          ; $4e5b: $13
	di                                               ; $4e5c: $f3
	add  b                                           ; $4e5d: $80
	ldh  a, [c]                                      ; $4e5e: $f2
	add  b                                           ; $4e5f: $80
	ldh  a, [$81]                                    ; $4e60: $f0 $81
	ldh  [$80], a                                    ; $4e62: $e0 $80
	xor  $80                                         ; $4e64: $ee $80
	db   $ed                                         ; $4e66: $ed
	inc  bc                                          ; $4e67: $03
	ldh  [$c9], a                                    ; $4e68: $e0 $c9
	reti                                             ; $4e6a: $d9


	rst  JumpTable                                         ; $4e6b: $df
	add  c                                           ; $4e6c: $81
	ret  nc                                          ; $4e6d: $d0

	nop                                              ; $4e6e: $00
	sub  b                                           ; $4e6f: $90
	add  l                                           ; $4e70: $85
	or   b                                           ; $4e71: $b0
	add  b                                           ; $4e72: $80
	cp   b                                           ; $4e73: $b8
	ld   [de], a                                     ; $4e74: $12
	jr   jr_09d_4eaf                                 ; $4e75: $18 $38

	sbc  [hl]                                        ; $4e77: $9e
	sub  l                                           ; $4e78: $95
	ld   de, $2429                                   ; $4e79: $11 $29 $24
	ld   d, h                                        ; $4e7c: $54
	ld   [hl], l                                     ; $4e7d: $75
	jr   nc, jr_09d_4e92                             ; $4e7e: $30 $12

	ld   b, b                                        ; $4e80: $40
	adc  h                                           ; $4e81: $8c
	jr   nc, @+$4a                                   ; $4e82: $30 $48

	ret  nz                                          ; $4e84: $c0

	or   b                                           ; $4e85: $b0
	ret  nz                                          ; $4e86: $c0

	ldh  a, [$87]                                    ; $4e87: $f0 $87
	nop                                              ; $4e89: $00
	add  b                                           ; $4e8a: $80
	ld   bc, $0380                                   ; $4e8b: $01 $80 $03
	add  b                                           ; $4e8e: $80
	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00
	db   $ed                                         ; $4e91: $ed

jr_09d_4e92:
	add  d                                           ; $4e92: $82
	ld   d, [hl]                                     ; $4e93: $56
	nop                                              ; $4e94: $00
	sub  $80                                         ; $4e95: $d6 $80
	ld   d, [hl]                                     ; $4e97: $56
	inc  c                                           ; $4e98: $0c
	ld   b, l                                        ; $4e99: $45
	ld   b, c                                        ; $4e9a: $41
	ld   bc, $7455                                   ; $4e9b: $01 $55 $74
	ld   c, b                                        ; $4e9e: $48
	ld   e, b                                        ; $4e9f: $58
	jr   nc, jr_09d_4eeb                             ; $4ea0: $30 $49

	ld   b, l                                        ; $4ea2: $45
	ld   [hl], $0a                                   ; $4ea3: $36 $0a
	nop                                              ; $4ea5: $00
	add  c                                           ; $4ea6: $81
	ld   [$0209], sp                                 ; $4ea7: $08 $09 $02
	ld   a, [bc]                                     ; $4eaa: $0a
	ld   [de], a                                     ; $4eab: $12
	sub  d                                           ; $4eac: $92
	ld   [bc], a                                     ; $4ead: $02
	ld   [de], a                                     ; $4eae: $12

jr_09d_4eaf:
	and  d                                           ; $4eaf: $a2
	ld   [hl+], a                                    ; $4eb0: $22
	inc  de                                          ; $4eb1: $13
	di                                               ; $4eb2: $f3
	add  b                                           ; $4eb3: $80
	ldh  a, [c]                                      ; $4eb4: $f2
	add  b                                           ; $4eb5: $80
	ldh  a, [$81]                                    ; $4eb6: $f0 $81
	ldh  [$80], a                                    ; $4eb8: $e0 $80
	xor  $05                                         ; $4eba: $ee $05
	db   $ed                                         ; $4ebc: $ed

jr_09d_4ebd:
	rst  $28                                         ; $4ebd: $ef
	db   $e3                                         ; $4ebe: $e3
	pop  bc                                          ; $4ebf: $c1
	ret  nc                                          ; $4ec0: $d0

	rst  JumpTable                                         ; $4ec1: $df
	add  c                                           ; $4ec2: $81
	ret  nc                                          ; $4ec3: $d0

	nop                                              ; $4ec4: $00
	sub  b                                           ; $4ec5: $90
	add  l                                           ; $4ec6: $85
	or   b                                           ; $4ec7: $b0
	add  b                                           ; $4ec8: $80
	cp   b                                           ; $4ec9: $b8
	ld   [de], a                                     ; $4eca: $12
	jr   jr_09d_4f05                                 ; $4ecb: $18 $38

	sbc  [hl]                                        ; $4ecd: $9e
	sub  l                                           ; $4ece: $95
	ld   de, $2429                                   ; $4ecf: $11 $29 $24
	ld   d, h                                        ; $4ed2: $54
	ld   [hl], l                                     ; $4ed3: $75
	jr   nc, jr_09d_4ee8                             ; $4ed4: $30 $12

	ld   b, b                                        ; $4ed6: $40
	adc  h                                           ; $4ed7: $8c
	jr   nc, @+$0a                                   ; $4ed8: $30 $08

	nop                                              ; $4eda: $00
	ldh  a, [$30]                                    ; $4edb: $f0 $30
	ret  nz                                          ; $4edd: $c0

	add  a                                           ; $4ede: $87
	nop                                              ; $4edf: $00
	add  b                                           ; $4ee0: $80
	ld   bc, $0380                                   ; $4ee1: $01 $80 $03
	add  b                                           ; $4ee4: $80
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	db   $ed                                         ; $4ee7: $ed

jr_09d_4ee8:
	add  d                                           ; $4ee8: $82
	ld   d, [hl]                                     ; $4ee9: $56
	nop                                              ; $4eea: $00

jr_09d_4eeb:
	sub  $80                                         ; $4eeb: $d6 $80
	ld   d, [hl]                                     ; $4eed: $56
	inc  c                                           ; $4eee: $0c
	ld   b, l                                        ; $4eef: $45
	ld   b, c                                        ; $4ef0: $41
	ld   bc, $7455                                   ; $4ef1: $01 $55 $74
	ld   c, h                                        ; $4ef4: $4c
	ld   e, h                                        ; $4ef5: $5c
	db   $10                                         ; $4ef6: $10
	ld   h, c                                        ; $4ef7: $61
	ld   b, l                                        ; $4ef8: $45
	ld   a, $0a                                      ; $4ef9: $3e $0a
	nop                                              ; $4efb: $00
	add  c                                           ; $4efc: $81
	ld   [$0208], sp                                 ; $4efd: $08 $08 $02
	ld   a, [bc]                                     ; $4f00: $0a
	ld   [de], a                                     ; $4f01: $12
	sub  d                                           ; $4f02: $92
	ld   [bc], a                                     ; $4f03: $02
	ld   [de], a                                     ; $4f04: $12

jr_09d_4f05:
	and  d                                           ; $4f05: $a2
	ld   [hl+], a                                    ; $4f06: $22
	rra                                              ; $4f07: $1f
	adc  c                                           ; $4f08: $89
	nop                                              ; $4f09: $00
	add  b                                           ; $4f0a: $80
	ld   bc, $1005                                   ; $4f0b: $01 $05 $10
	nop                                              ; $4f0e: $00
	ld   e, $08                                      ; $4f0f: $1e $08
	ld   a, [bc]                                     ; $4f11: $0a
	inc  c                                           ; $4f12: $0c
	sub  [hl]                                        ; $4f13: $96
	nop                                              ; $4f14: $00
	add  b                                           ; $4f15: $80
	ld   bc, $3c07                                   ; $4f16: $01 $07 $3c
	inc  l                                           ; $4f19: $2c
	inc  d                                           ; $4f1a: $14
	ld   d, $0e                                      ; $4f1b: $16 $0e
	stop                                             ; $4f1d: $10 $00
	inc  c                                           ; $4f1f: $0c
	adc  b                                           ; $4f20: $88
	nop                                              ; $4f21: $00
	inc  bc                                          ; $4f22: $03
	add  d                                           ; $4f23: $82
	ld   a, h                                        ; $4f24: $7c
	rst  $38                                         ; $4f25: $ff
	cp   $80                                         ; $4f26: $fe $80
	rrca                                             ; $4f28: $0f
	ld   [bc], a                                     ; $4f29: $02
	inc  bc                                          ; $4f2a: $03
	di                                               ; $4f2b: $f3
	ldh  a, [$80]                                    ; $4f2c: $f0 $80
	ld   hl, sp-$80                                  ; $4f2e: $f8 $80
	db   $fc                                         ; $4f30: $fc
	inc  b                                           ; $4f31: $04
	ld   c, $fe                                      ; $4f32: $0e $fe
	ldh  a, [c]                                      ; $4f34: $f2
	cp   $fc                                         ; $4f35: $fe $fc
	add  b                                           ; $4f37: $80
	rst  $38                                         ; $4f38: $ff
	add  b                                           ; $4f39: $80
	rst  $28                                         ; $4f3a: $ef
	ld   a, [bc]                                     ; $4f3b: $0a
	cpl                                              ; $4f3c: $2f
	xor  a                                           ; $4f3d: $af
	and  l                                           ; $4f3e: $a5
	or   l                                           ; $4f3f: $b5
	sub  h                                           ; $4f40: $94
	or   l                                           ; $4f41: $b5
	sub  l                                           ; $4f42: $95
	or   l                                           ; $4f43: $b5
	daa                                              ; $4f44: $27
	or   [hl]                                        ; $4f45: $b6
	rst  $38                                         ; $4f46: $ff
	rst  $38                                         ; $4f47: $ff
	nop                                              ; $4f48: $00
	rst  $38                                         ; $4f49: $ff
	nop                                              ; $4f4a: $00
	rst  $38                                         ; $4f4b: $ff
	nop                                              ; $4f4c: $00
	rst  $38                                         ; $4f4d: $ff
	nop                                              ; $4f4e: $00
	rst  $38                                         ; $4f4f: $ff
	nop                                              ; $4f50: $00
	rst  $38                                         ; $4f51: $ff

jr_09d_4f52:
	nop                                              ; $4f52: $00
	rst  $38                                         ; $4f53: $ff
	nop                                              ; $4f54: $00
	sub  [hl]                                        ; $4f55: $96
	nop                                              ; $4f56: $00
	jr   jr_09d_4f5a                                 ; $4f57: $18 $01

	nop                                              ; $4f59: $00

jr_09d_4f5a:
	ld   bc, $0081                                   ; $4f5a: $01 $81 $00
	nop                                              ; $4f5d: $00
	ld   [bc], a                                     ; $4f5e: $02
	add  c                                           ; $4f5f: $81
	nop                                              ; $4f60: $00
	inc  c                                           ; $4f61: $0c
	dec  b                                           ; $4f62: $05
	nop                                              ; $4f63: $00
	ld   a, [bc]                                     ; $4f64: $0a
	nop                                              ; $4f65: $00
	dec  d                                           ; $4f66: $15
	nop                                              ; $4f67: $00
	jr   z, jr_09d_4f6a                              ; $4f68: $28 $00

jr_09d_4f6a:
	ld   d, d                                        ; $4f6a: $52
	nop                                              ; $4f6b: $00
	ldh  [rP1], a                                    ; $4f6c: $e0 $00
	add  b                                           ; $4f6e: $80
	add  c                                           ; $4f6f: $81
	nop                                              ; $4f70: $00
	nop                                              ; $4f71: $00
	inc  b                                           ; $4f72: $04
	add  l                                           ; $4f73: $85
	nop                                              ; $4f74: $00
	nop                                              ; $4f75: $00
	db   $10                                         ; $4f76: $10
	add  c                                           ; $4f77: $81
	nop                                              ; $4f78: $00
	ld   [bc], a                                     ; $4f79: $02
	ld   sp, $2000                                   ; $4f7a: $31 $00 $20
	add  e                                           ; $4f7d: $83
	nop                                              ; $4f7e: $00
	nop                                              ; $4f7f: $00
	ld   [bc], a                                     ; $4f80: $02
	adc  c                                           ; $4f81: $89
	nop                                              ; $4f82: $00
	nop                                              ; $4f83: $00
	inc  b                                           ; $4f84: $04
	adc  l                                           ; $4f85: $8d
	nop                                              ; $4f86: $00
	inc  de                                          ; $4f87: $13
	rlca                                             ; $4f88: $07
	nop                                              ; $4f89: $00
	ld   bc, $0700                                   ; $4f8a: $01 $00 $07
	nop                                              ; $4f8d: $00
	ld   c, $00                                      ; $4f8e: $0e $00
	stop                                             ; $4f90: $10 $00
	ld   bc, $2300                                   ; $4f92: $01 $00 $23
	nop                                              ; $4f95: $00
	ld   b, $00                                      ; $4f96: $06 $00
	inc  c                                           ; $4f98: $0c
	inc  h                                           ; $4f99: $24
	ld   a, h                                        ; $4f9a: $7c
	ld   l, b                                        ; $4f9b: $68
	add  b                                           ; $4f9c: $80
	ld   c, b                                        ; $4f9d: $48
	ld   b, $d8                                      ; $4f9e: $06 $d8
	db   $d3                                         ; $4fa0: $d3
	or   c                                           ; $4fa1: $b1
	cp   l                                           ; $4fa2: $bd
	cp   a                                           ; $4fa3: $bf
	ld   a, [hl+]                                    ; $4fa4: $2a
	ld   [$4a80], a                                  ; $4fa5: $ea $80 $4a
	inc  bc                                          ; $4fa8: $03
	ld   d, h                                        ; $4fa9: $54
	call nc, $0c04                                   ; $4faa: $d4 $04 $0c
	add  b                                           ; $4fad: $80
	inc  b                                           ; $4fae: $04
	ld   bc, $1f07                                   ; $4faf: $01 $07 $1f
	add  b                                           ; $4fb2: $80
	ld   a, [bc]                                     ; $4fb3: $0a
	add  b                                           ; $4fb4: $80
	ld   [$0081], sp                                 ; $4fb5: $08 $81 $00
	inc  b                                           ; $4fb8: $04
	jr   nz, jr_09d_4fbb                             ; $4fb9: $20 $00

jr_09d_4fbb:
	ld   bc, $4000                                   ; $4fbb: $01 $00 $40
	add  c                                           ; $4fbe: $81
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	add  b                                           ; $4fc1: $80
	add  c                                           ; $4fc2: $81
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	ld   [hl+], a                                    ; $4fc5: $22
	add  a                                           ; $4fc6: $87
	nop                                              ; $4fc7: $00
	nop                                              ; $4fc8: $00
	ld   [$0083], sp                                 ; $4fc9: $08 $83 $00
	ld   [bc], a                                     ; $4fcc: $02
	stop                                             ; $4fcd: $10 $00
	jr   nz, jr_09d_4f52                             ; $4fcf: $20 $81

	nop                                              ; $4fd1: $00
	inc  b                                           ; $4fd2: $04
	inc  c                                           ; $4fd3: $0c
	nop                                              ; $4fd4: $00
	stop                                             ; $4fd5: $10 $00
	ld   [$0085], sp                                 ; $4fd7: $08 $85 $00
	ld   a, [de]                                     ; $4fda: $1a
	rlca                                             ; $4fdb: $07
	nop                                              ; $4fdc: $00
	ld   [$9000], sp                                 ; $4fdd: $08 $00 $90
	nop                                              ; $4fe0: $00
	add  sp, $00                                     ; $4fe1: $e8 $00
	add  c                                           ; $4fe3: $81
	nop                                              ; $4fe4: $00
	ld   c, [hl]                                     ; $4fe5: $4e
	nop                                              ; $4fe6: $00
	pop  bc                                          ; $4fe7: $c1
	nop                                              ; $4fe8: $00
	adc  c                                           ; $4fe9: $89
	nop                                              ; $4fea: $00
	stop                                             ; $4feb: $10 $00
	jr   nz, jr_09d_4fef                             ; $4fed: $20 $00

jr_09d_4fef:
	ld   c, [hl]                                     ; $4fef: $4e
	nop                                              ; $4ff0: $00
	ld   sp, $4100                                   ; $4ff1: $31 $00 $41
	add  b                                           ; $4ff4: $80
	adc  d                                           ; $4ff5: $8a
	add  c                                           ; $4ff6: $81
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	inc  e                                           ; $4ff9: $1c
	add  b                                           ; $4ffa: $80
	nop                                              ; $4ffb: $00
	inc  bc                                          ; $4ffc: $03
	jr   nz, jr_09d_5012                             ; $4ffd: $20 $13

	ld   b, e                                        ; $4fff: $43
	ld   c, e                                        ; $5000: $4b
	add  b                                           ; $5001: $80
	ld   b, a                                        ; $5002: $47
	ld   [bc], a                                     ; $5003: $02
	rst  ToBoot                                         ; $5004: $c7
	sub  a                                           ; $5005: $97
	and  a                                           ; $5006: $a7
	add  b                                           ; $5007: $80
	and  h                                           ; $5008: $a4
	nop                                              ; $5009: $00
	inc  h                                           ; $500a: $24
	add  b                                           ; $500b: $80
	ld   h, b                                        ; $500c: $60
	add  b                                           ; $500d: $80
	ld   b, b                                        ; $500e: $40
	adc  c                                           ; $500f: $89
	nop                                              ; $5010: $00
	ld   [bc], a                                     ; $5011: $02

jr_09d_5012:
	ldh  [rP1], a                                    ; $5012: $e0 $00
	rra                                              ; $5014: $1f
	add  c                                           ; $5015: $81
	nop                                              ; $5016: $00
	ld   [bc], a                                     ; $5017: $02
	add  b                                           ; $5018: $80
	nop                                              ; $5019: $00
	add  b                                           ; $501a: $80
	add  c                                           ; $501b: $81
	nop                                              ; $501c: $00
	inc  de                                          ; $501d: $13
	ret  nz                                          ; $501e: $c0

	nop                                              ; $501f: $00
	ld   b, b                                        ; $5020: $40
	nop                                              ; $5021: $00
	ret  nz                                          ; $5022: $c0

	nop                                              ; $5023: $00
	ret  nz                                          ; $5024: $c0

	nop                                              ; $5025: $00
	ld   [bc], a                                     ; $5026: $02
	inc  b                                           ; $5027: $04
	rlca                                             ; $5028: $07
	ld   [bc], a                                     ; $5029: $02
	db   $e3                                         ; $502a: $e3
	ld   bc, $0911                                   ; $502b: $01 $11 $09
	pop  bc                                          ; $502e: $c1
	rlca                                             ; $502f: $07
	ld   b, e                                        ; $5030: $43
	inc  bc                                          ; $5031: $03
	add  h                                           ; $5032: $84
	nop                                              ; $5033: $00
	add  b                                           ; $5034: $80
	db   $10                                         ; $5035: $10
	add  d                                           ; $5036: $82
	nop                                              ; $5037: $00
	add  b                                           ; $5038: $80
	add  b                                           ; $5039: $80
	add  b                                           ; $503a: $80
	ld   h, b                                        ; $503b: $60
	add  b                                           ; $503c: $80
	db   $10                                         ; $503d: $10
	add  b                                           ; $503e: $80
	ld   [$3002], sp                                 ; $503f: $08 $02 $30
	nop                                              ; $5042: $00
	ld   [$0083], sp                                 ; $5043: $08 $83 $00
	nop                                              ; $5046: $00
	inc  b                                           ; $5047: $04
	add  c                                           ; $5048: $81
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	inc  a                                           ; $504b: $3c
	add  c                                           ; $504c: $81
	nop                                              ; $504d: $00
	inc  b                                           ; $504e: $04
	jr   c, jr_09d_5051                              ; $504f: $38 $00

jr_09d_5051:
	add  $00                                         ; $5051: $c6 $00
	ld   bc, $0080                                   ; $5053: $01 $80 $00
	add  b                                           ; $5056: $80
	ld   [bc], a                                     ; $5057: $02
	add  b                                           ; $5058: $80
	ld   bc, $0083                                   ; $5059: $01 $83 $00
	ld   [hl+], a                                    ; $505c: $22
	inc  c                                           ; $505d: $0c
	ld   bc, $040e                                   ; $505e: $01 $0e $04
	rlca                                             ; $5061: $07
	inc  bc                                          ; $5062: $03
	add  e                                           ; $5063: $83
	ld   h, c                                        ; $5064: $61
	and  c                                           ; $5065: $a1
	cp   c                                           ; $5066: $b9
	reti                                             ; $5067: $d9


	sbc  a                                           ; $5068: $9f
	xor  a                                           ; $5069: $af
	ld   c, b                                        ; $506a: $48
	ld   d, b                                        ; $506b: $50
	inc  b                                           ; $506c: $04
	adc  b                                           ; $506d: $88
	nop                                              ; $506e: $00
	add  $80                                         ; $506f: $c6 $80
	ld   h, e                                        ; $5071: $63
	nop                                              ; $5072: $00
	ld   bc, $7000                                   ; $5073: $01 $00 $70
	nop                                              ; $5076: $00
	ld   [rROMB1], sp                                 ; $5077: $08 $00 $30
	nop                                              ; $507a: $00
	inc  b                                           ; $507b: $04
	nop                                              ; $507c: $00
	ld   a, [de]                                     ; $507d: $1a
	nop                                              ; $507e: $00
	ld   bc, $0080                                   ; $507f: $01 $80 $00
	ld   bc, $4880                                   ; $5082: $01 $80 $48
	add  c                                           ; $5085: $81
	ret  nz                                          ; $5086: $c0

	add  c                                           ; $5087: $81
	add  b                                           ; $5088: $80
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	add  b                                           ; $508b: $80
	ld   b, b                                        ; $508c: $40
	ld   bc, $e060                                   ; $508d: $01 $60 $e0
	add  b                                           ; $5090: $80
	and  b                                           ; $5091: $a0
	nop                                              ; $5092: $00
	ldh  a, [$80]                                    ; $5093: $f0 $80
	ret  nc                                          ; $5095: $d0

	ld   [bc], a                                     ; $5096: $02
	ret  nz                                          ; $5097: $c0

	ret  z                                           ; $5098: $c8

	add  b                                           ; $5099: $80
	add  b                                           ; $509a: $80
	nop                                              ; $509b: $00
	ld   a, [bc]                                     ; $509c: $0a
	call z, $ec80                                    ; $509d: $cc $80 $ec
	ld   b, b                                        ; $50a0: $40
	ld   [hl], h                                     ; $50a1: $74
	jr   nz, jr_09d_50df                             ; $50a2: $20 $3b

	db   $10                                         ; $50a4: $10
	inc  d                                           ; $50a5: $14
	db   $10                                         ; $50a6: $10
	dec  de                                          ; $50a7: $1b
	add  c                                           ; $50a8: $81
	ld   [$0916], sp                                 ; $50a9: $08 $16 $09
	nop                                              ; $50ac: $00
	add  c                                           ; $50ad: $81
	nop                                              ; $50ae: $00

jr_09d_50af:
	ld   b, h                                        ; $50af: $44
	nop                                              ; $50b0: $00
	and  b                                           ; $50b1: $a0
	nop                                              ; $50b2: $00
	ld   [de], a                                     ; $50b3: $12
	nop                                              ; $50b4: $00
	ld   c, c                                        ; $50b5: $49
	nop                                              ; $50b6: $00
	ld   b, $00                                      ; $50b7: $06 $00
	ld   bc, $a000                                   ; $50b9: $01 $00 $a0
	nop                                              ; $50bc: $00
	ld   b, b                                        ; $50bd: $40
	nop                                              ; $50be: $00
	jr   nz, jr_09d_50c1                             ; $50bf: $20 $00

jr_09d_50c1:
	ld   b, b                                        ; $50c1: $40
	add  c                                           ; $50c2: $81
	nop                                              ; $50c3: $00
	inc  b                                           ; $50c4: $04
	ld   h, b                                        ; $50c5: $60
	nop                                              ; $50c6: $00
	ld   bc, $0100                                   ; $50c7: $01 $00 $01
	add  c                                           ; $50ca: $81
	nop                                              ; $50cb: $00
	ld   d, $e0                                      ; $50cc: $16 $e0
	nop                                              ; $50ce: $00
	jr   nc, jr_09d_50d1                             ; $50cf: $30 $00

jr_09d_50d1:
	call z, $3c00                                    ; $50d1: $cc $00 $3c
	nop                                              ; $50d4: $00
	ret  nz                                          ; $50d5: $c0

	nop                                              ; $50d6: $00
	ldh  [rP1], a                                    ; $50d7: $e0 $00
	jr   nc, jr_09d_50db                             ; $50d9: $30 $00

jr_09d_50db:
	jr   jr_09d_50dd                                 ; $50db: $18 $00

jr_09d_50dd:
	inc  c                                           ; $50dd: $0c
	nop                                              ; $50de: $00

jr_09d_50df:
	add  h                                           ; $50df: $84
	nop                                              ; $50e0: $00
	jp   nz, wIsGBC                                   ; $50e1: $c2 $00 $c2

	add  c                                           ; $50e4: $81
	nop                                              ; $50e5: $00
	nop                                              ; $50e6: $00
	ret  nz                                          ; $50e7: $c0

	add  c                                           ; $50e8: $81
	nop                                              ; $50e9: $00
	inc  b                                           ; $50ea: $04
	ld   h, b                                        ; $50eb: $60
	nop                                              ; $50ec: $00
	jr   nz, jr_09d_50ef                             ; $50ed: $20 $00

jr_09d_50ef:
	add  b                                           ; $50ef: $80
	add  c                                           ; $50f0: $81
	nop                                              ; $50f1: $00
	nop                                              ; $50f2: $00
	ret  nz                                          ; $50f3: $c0

	add  c                                           ; $50f4: $81
	nop                                              ; $50f5: $00
	nop                                              ; $50f6: $00
	ld   h, b                                        ; $50f7: $60
	add  c                                           ; $50f8: $81
	nop                                              ; $50f9: $00
	ld   bc, $0030                                   ; $50fa: $01 $30 $00
	add  b                                           ; $50fd: $80
	ld   b, b                                        ; $50fe: $40
	nop                                              ; $50ff: $00
	jr   c, @-$7d                                    ; $5100: $38 $81

	and  b                                           ; $5102: $a0
	inc  bc                                          ; $5103: $03
	sbc  b                                           ; $5104: $98
	ldh  a, [$e8]                                    ; $5105: $f0 $e8
	ld   a, b                                        ; $5107: $78
	add  b                                           ; $5108: $80
	ld   a, h                                        ; $5109: $7c
	ld   bc, $3c74                                   ; $510a: $01 $74 $3c
	add  c                                           ; $510d: $81
	jr   c, jr_09d_5110                              ; $510e: $38 $00

jr_09d_5110:
	nop                                              ; $5110: $00
	add  b                                           ; $5111: $80
	jr   nz, jr_09d_5117                             ; $5112: $20 $03

	ld   d, b                                        ; $5114: $50
	ld   b, b                                        ; $5115: $40
	ld   e, b                                        ; $5116: $58

jr_09d_5117:
	ld   c, b                                        ; $5117: $48
	add  b                                           ; $5118: $80
	jr   c, jr_09d_50af                              ; $5119: $38 $94

	nop                                              ; $511b: $00
	rlca                                             ; $511c: $07
	ld   sp, hl                                      ; $511d: $f9
	db   $fd                                         ; $511e: $fd
	ld   hl, sp-$02                                  ; $511f: $f8 $fe
	db   $fc                                         ; $5121: $fc
	rst  $38                                         ; $5122: $ff
	pop  af                                          ; $5123: $f1
	ldh  a, [$8b]                                    ; $5124: $f0 $8b
	nop                                              ; $5126: $00
	ld   b, $01                                      ; $5127: $06 $01
	dec  b                                           ; $5129: $05
	inc  b                                           ; $512a: $04
	ld   [bc], a                                     ; $512b: $02
	nop                                              ; $512c: $00
	dec  bc                                          ; $512d: $0b
	add  hl, bc                                      ; $512e: $09
	add  b                                           ; $512f: $80
	ld   b, $80                                      ; $5130: $06 $80
	nop                                              ; $5132: $00
	ld   c, $1a                                      ; $5133: $0e $1a
	ldh  [$cc], a                                    ; $5135: $e0 $cc
	ret  nz                                          ; $5137: $c0

	ret  nc                                          ; $5138: $d0

	ret  nz                                          ; $5139: $c0

	adc  d                                           ; $513a: $8a
	add  b                                           ; $513b: $80
	adc  h                                           ; $513c: $8c
	add  b                                           ; $513d: $80
	jr   nz, jr_09d_5140                             ; $513e: $20 $00

jr_09d_5140:
	ret  nz                                          ; $5140: $c0

	nop                                              ; $5141: $00
	add  b                                           ; $5142: $80
	add  c                                           ; $5143: $81
	nop                                              ; $5144: $00
	ld   [bc], a                                     ; $5145: $02
	add  b                                           ; $5146: $80
	nop                                              ; $5147: $00
	ldh  a, [$80]                                    ; $5148: $f0 $80
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	ld   [$1880], sp                                 ; $514c: $08 $80 $18
	nop                                              ; $514f: $00
	db   $fc                                         ; $5150: $fc
	add  e                                           ; $5151: $83
	ld   hl, sp+$0f                                  ; $5152: $f8 $0f
	ld   [bc], a                                     ; $5154: $02
	nop                                              ; $5155: $00
	inc  bc                                          ; $5156: $03
	nop                                              ; $5157: $00
	rlca                                             ; $5158: $07
	nop                                              ; $5159: $00
	inc  c                                           ; $515a: $0c
	nop                                              ; $515b: $00
	ld   [bc], a                                     ; $515c: $02
	nop                                              ; $515d: $00
	jr   jr_09d_5160                                 ; $515e: $18 $00

jr_09d_5160:
	add  h                                           ; $5160: $84
	add  b                                           ; $5161: $80
	adc  b                                           ; $5162: $88

jr_09d_5163:
	add  b                                           ; $5163: $80
	add  b                                           ; $5164: $80
	ret  nz                                          ; $5165: $c0

	ld   bc, $c0e0                                   ; $5166: $01 $e0 $c0
	add  h                                           ; $5169: $84
	nop                                              ; $516a: $00
	ld   [bc], a                                     ; $516b: $02
	ld   b, b                                        ; $516c: $40
	nop                                              ; $516d: $00
	add  b                                           ; $516e: $80
	add  h                                           ; $516f: $84
	nop                                              ; $5170: $00
	add  [hl]                                        ; $5171: $86
	add  b                                           ; $5172: $80
	add  l                                           ; $5173: $85
	ret  nz                                          ; $5174: $c0

	add  h                                           ; $5175: $84
	nop                                              ; $5176: $00
	ld   [bc], a                                     ; $5177: $02
	ld   b, b                                        ; $5178: $40
	nop                                              ; $5179: $00
	add  b                                           ; $517a: $80
	sub  d                                           ; $517b: $92
	nop                                              ; $517c: $00
	add  b                                           ; $517d: $80
	add  b                                           ; $517e: $80
	add  b                                           ; $517f: $80
	ret  nz                                          ; $5180: $c0

	add  b                                           ; $5181: $80
	ldh  [$80], a                                    ; $5182: $e0 $80
	ld   hl, sp-$7c                                  ; $5184: $f8 $84
	db   $fc                                         ; $5186: $fc
	add  d                                           ; $5187: $82
	cp   $84                                         ; $5188: $fe $84
	nop                                              ; $518a: $00
	add  d                                           ; $518b: $82
	ld   bc, $0080                                   ; $518c: $01 $80 $00
	add  d                                           ; $518f: $82
	rlca                                             ; $5190: $07
	add  b                                           ; $5191: $80
	nop                                              ; $5192: $00
	add  b                                           ; $5193: $80
	inc  bc                                          ; $5194: $03
	add  b                                           ; $5195: $80

jr_09d_5196:
	rrca                                             ; $5196: $0f
	add  b                                           ; $5197: $80
	ld   e, $80                                      ; $5198: $1e $80
	jr   jr_09d_519f                                 ; $519a: $18 $03

	nop                                              ; $519c: $00
	inc  bc                                          ; $519d: $03
	ld   a, e                                        ; $519e: $7b

jr_09d_519f:
	ld   a, b                                        ; $519f: $78
	add  b                                           ; $51a0: $80
	ld   [hl], b                                     ; $51a1: $70
	add  e                                           ; $51a2: $83
	nop                                              ; $51a3: $00
	ld   [bc], a                                     ; $51a4: $02
	inc  c                                           ; $51a5: $0c
	db   $ec                                         ; $51a6: $ec
	ldh  [$80], a                                    ; $51a7: $e0 $80
	db   $ec                                         ; $51a9: $ec
	inc  bc                                          ; $51aa: $03
	nop                                              ; $51ab: $00
	inc  bc                                          ; $51ac: $03
	ei                                               ; $51ad: $fb
	ld   hl, sp-$80                                  ; $51ae: $f8 $80
	add  e                                           ; $51b0: $83
	inc  bc                                          ; $51b1: $03
	nop                                              ; $51b2: $00
	inc  c                                           ; $51b3: $0c
	db   $fc                                         ; $51b4: $fc
	ldh  a, [$80]                                    ; $51b5: $f0 $80
	db   $ec                                         ; $51b7: $ec
	sub  b                                           ; $51b8: $90
	nop                                              ; $51b9: $00
	add  h                                           ; $51ba: $84
	ld   bc, $0002                                   ; $51bb: $01 $02 $00
	inc  c                                           ; $51be: $0c
	inc  b                                           ; $51bf: $04
	add  l                                           ; $51c0: $85
	rlca                                             ; $51c1: $07
	add  c                                           ; $51c2: $81
	inc  bc                                          ; $51c3: $03
	inc  b                                           ; $51c4: $04
	rrca                                             ; $51c5: $0f
	ld   bc, $0003                                   ; $51c6: $01 $03 $00
	ld   bc, $fc80                                   ; $51c9: $01 $80 $fc
	dec  bc                                          ; $51cc: $0b
	ld   a, b                                        ; $51cd: $78
	ld   hl, sp-$50                                  ; $51ce: $f8 $b0
	pop  af                                          ; $51d0: $f1
	pop  bc                                          ; $51d1: $c1
	rst  $20                                         ; $51d2: $e7
	and  $ff                                         ; $51d3: $e6 $ff
	ld   hl, sp-$06                                  ; $51d5: $f8 $fa
	ret  nz                                          ; $51d7: $c0

	call nz, $e080                                   ; $51d8: $c4 $80 $e0
	rlca                                             ; $51db: $07
	jr   c, jr_09d_5196                              ; $51dc: $38 $b8

	nop                                              ; $51de: $00
	ld   c, b                                        ; $51df: $48
	nop                                              ; $51e0: $00
	jr   nz, jr_09d_5163                             ; $51e1: $20 $80

	sub  b                                           ; $51e3: $90
	add  b                                           ; $51e4: $80
	ldh  [$80], a                                    ; $51e5: $e0 $80
	ldh  a, [$80]                                    ; $51e7: $f0 $80
	db   $fc                                         ; $51e9: $fc
	inc  bc                                          ; $51ea: $03
	cp   $ff                                         ; $51eb: $fe $ff
	nop                                              ; $51ed: $00
	ld   bc, $0080                                   ; $51ee: $01 $80 $00
	inc  b                                           ; $51f1: $04
	ld   bc, $0200                                   ; $51f2: $01 $00 $02
	nop                                              ; $51f5: $00
	inc  b                                           ; $51f6: $04
	add  d                                           ; $51f7: $82
	nop                                              ; $51f8: $00
	nop                                              ; $51f9: $00
	inc  b                                           ; $51fa: $04
	add  c                                           ; $51fb: $81
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00

jr_09d_51fe:
	inc  bc                                          ; $51fe: $03
	adc  c                                           ; $51ff: $89
	ld   bc, $0080                                   ; $5200: $01 $80 $00
	nop                                              ; $5203: $00
	ld   bc, $008e                                   ; $5204: $01 $8e $00
	add  b                                           ; $5207: $80
	add  b                                           ; $5208: $80
	dec  c                                           ; $5209: $0d
	ret  nz                                          ; $520a: $c0

	ld   b, b                                        ; $520b: $40
	ldh  a, [rAUD1SWEEP]                             ; $520c: $f0 $10
	cp   $a6                                         ; $520e: $fe $a6
	rst  $38                                         ; $5210: $ff
	ret                                              ; $5211: $c9


	rst  $38                                         ; $5212: $ff
	ldh  a, [c]                                      ; $5213: $f2
	rst  $38                                         ; $5214: $ff
	db   $fd                                         ; $5215: $fd
	rst  $38                                         ; $5216: $ff
	cp   $80                                         ; $5217: $fe $80
	ld   [$0084], sp                                 ; $5219: $08 $84 $00
	add  b                                           ; $521c: $80
	add  b                                           ; $521d: $80
	rlca                                             ; $521e: $07
	ret  nz                                          ; $521f: $c0

	ld   b, b                                        ; $5220: $40
	ldh  [$80], a                                    ; $5221: $e0 $80
	ldh  [$60], a                                    ; $5223: $e0 $60
	ldh  [$80], a                                    ; $5225: $e0 $80
	add  h                                           ; $5227: $84
	ret  nz                                          ; $5228: $c0

	add  h                                           ; $5229: $84
	add  b                                           ; $522a: $80
	add  h                                           ; $522b: $84
	nop                                              ; $522c: $00
	add  b                                           ; $522d: $80
	ld   [$1082], sp                                 ; $522e: $08 $82 $10
	add  d                                           ; $5231: $82
	jr   nz, @-$7c                                   ; $5232: $20 $82

	ld   h, b                                        ; $5234: $60
	add  b                                           ; $5235: $80
	ld   b, b                                        ; $5236: $40
	adc  d                                           ; $5237: $8a
	nop                                              ; $5238: $00
	add  b                                           ; $5239: $80
	ld   d, h                                        ; $523a: $54
	nop                                              ; $523b: $00
	db   $fc                                         ; $523c: $fc
	add  b                                           ; $523d: $80
	xor  b                                           ; $523e: $a8
	inc  bc                                          ; $523f: $03
	inc  b                                           ; $5240: $04
	nop                                              ; $5241: $00
	ld   c, b                                        ; $5242: $48
	ld   b, b                                        ; $5243: $40
	add  b                                           ; $5244: $80
	and  b                                           ; $5245: $a0
	inc  bc                                          ; $5246: $03
	ld   d, b                                        ; $5247: $50
	ld   b, b                                        ; $5248: $40
	and  b                                           ; $5249: $a0
	add  b                                           ; $524a: $80
	add  l                                           ; $524b: $85
	ret  nz                                          ; $524c: $c0

	add  b                                           ; $524d: $80
	ldh  [$80], a                                    ; $524e: $e0 $80
	ld   b, b                                        ; $5250: $40
	add  b                                           ; $5251: $80
	and  b                                           ; $5252: $a0
	add  b                                           ; $5253: $80
	ld   d, b                                        ; $5254: $50
	add  b                                           ; $5255: $80
	and  b                                           ; $5256: $a0
	adc  l                                           ; $5257: $8d
	nop                                              ; $5258: $00
	rlca                                             ; $5259: $07
	ret  nz                                          ; $525a: $c0

	nop                                              ; $525b: $00
	jr   nz, jr_09d_525e                             ; $525c: $20 $00

jr_09d_525e:
	ld   b, b                                        ; $525e: $40
	ld   d, b                                        ; $525f: $50
	and  l                                           ; $5260: $a5
	xor  d                                           ; $5261: $aa
	add  e                                           ; $5262: $83
	rst  $38                                         ; $5263: $ff
	add  b                                           ; $5264: $80
	ld   d, l                                        ; $5265: $55
	add  b                                           ; $5266: $80
	xor  d                                           ; $5267: $aa
	sub  c                                           ; $5268: $91
	nop                                              ; $5269: $00
	inc  b                                           ; $526a: $04
	ld   bc, $4100                                   ; $526b: $01 $00 $41
	add  d                                           ; $526e: $82
	jp   nz, $fe80                                   ; $526f: $c2 $80 $fe

	add  b                                           ; $5272: $80
	db   $fc                                         ; $5273: $fc
	add  b                                           ; $5274: $80
	ld   d, b                                        ; $5275: $50
	ld   bc, $80a0                                   ; $5276: $01 $a0 $80
	add  c                                           ; $5279: $81
	jr   nz, jr_09d_51fe                             ; $527a: $20 $82

	db   $10                                         ; $527c: $10
	ld   [$0888], sp                                 ; $527d: $08 $88 $08
	inc  d                                           ; $5280: $14
	inc  b                                           ; $5281: $04
	add  d                                           ; $5282: $82
	adc  d                                           ; $5283: $8a
	db   $10                                         ; $5284: $10
	inc  d                                           ; $5285: $14
	sbc  h                                           ; $5286: $9c
	sub  b                                           ; $5287: $90
	nop                                              ; $5288: $00
	add  hl, bc                                      ; $5289: $09
	ret  nz                                          ; $528a: $c0

	nop                                              ; $528b: $00
	jr   c, jr_09d_5296                              ; $528c: $38 $08

	nop                                              ; $528e: $00

jr_09d_528f:
	stop                                             ; $528f: $10 $00
	jr   nz, jr_09d_5293                             ; $5291: $20 $00

jr_09d_5293:
	ret  nz                                          ; $5293: $c0

	sbc  l                                           ; $5294: $9d
	nop                                              ; $5295: $00

jr_09d_5296:
	ld   b, $01                                      ; $5296: $06 $01
	nop                                              ; $5298: $00
	ld   [bc], a                                     ; $5299: $02
	nop                                              ; $529a: $00
	inc  b                                           ; $529b: $04
	nop                                              ; $529c: $00
	ld   [$0081], sp                                 ; $529d: $08 $81 $00
	dec  c                                           ; $52a0: $0d
	stop                                             ; $52a1: $10 $00
	ld   bc, $2600                                   ; $52a3: $01 $00 $26
	nop                                              ; $52a6: $00
	ld   [$5000], sp                                 ; $52a7: $08 $00 $50
	nop                                              ; $52aa: $00
	ld   h, c                                        ; $52ab: $61
	ld   a, [hl]                                     ; $52ac: $7e
	ld   a, h                                        ; $52ad: $7c
	db   $fc                                         ; $52ae: $fc
	add  b                                           ; $52af: $80
	ld   hl, sp-$80                                  ; $52b0: $f8 $80
	ret  nz                                          ; $52b2: $c0

	inc  b                                           ; $52b3: $04
	ld   bc, $0200                                   ; $52b4: $01 $00 $02
	nop                                              ; $52b7: $00
	inc  b                                           ; $52b8: $04
	add  l                                           ; $52b9: $85
	nop                                              ; $52ba: $00
	add  b                                           ; $52bb: $80
	add  b                                           ; $52bc: $80
	add  b                                           ; $52bd: $80
	ret  nz                                          ; $52be: $c0

	ld   [$0018], sp                                 ; $52bf: $08 $18 $00
	inc  a                                           ; $52c2: $3c
	inc  e                                           ; $52c3: $1c
	ld   a, h                                        ; $52c4: $7c
	inc  a                                           ; $52c5: $3c
	sbc  [hl]                                        ; $52c6: $9e
	ld   e, $00                                      ; $52c7: $1e $00
	add  c                                           ; $52c9: $81
	inc  a                                           ; $52ca: $3c
	add  b                                           ; $52cb: $80
	ld   a, $00                                      ; $52cc: $3e $00
	ld   a, [hl-]                                    ; $52ce: $3a
	add  c                                           ; $52cf: $81
	ld   e, $80                                      ; $52d0: $1e $80
	rra                                              ; $52d2: $1f
	nop                                              ; $52d3: $00
	rla                                              ; $52d4: $17
	add  e                                           ; $52d5: $83
	rra                                              ; $52d6: $1f
	nop                                              ; $52d7: $00
	rrca                                             ; $52d8: $0f
	add  c                                           ; $52d9: $81
	rra                                              ; $52da: $1f
	add  b                                           ; $52db: $80
	ccf                                              ; $52dc: $3f
	nop                                              ; $52dd: $00
	dec  sp                                          ; $52de: $3b
	add  c                                           ; $52df: $81
	ccf                                              ; $52e0: $3f
	ld   bc, $3e36                                   ; $52e1: $01 $36 $3e
	add  b                                           ; $52e4: $80
	ld   a, [hl]                                     ; $52e5: $7e
	inc  b                                           ; $52e6: $04
	dec  a                                           ; $52e7: $3d
	ccf                                              ; $52e8: $3f
	ld   a, [hl]                                     ; $52e9: $7e
	ld   a, b                                        ; $52ea: $78
	ld   l, b                                        ; $52eb: $68
	add  b                                           ; $52ec: $80
	ld   [hl], b                                     ; $52ed: $70
	nop                                              ; $52ee: $00
	ld   h, b                                        ; $52ef: $60
	add  d                                           ; $52f0: $82
	ret  nz                                          ; $52f1: $c0

	add  b                                           ; $52f2: $80
	add  b                                           ; $52f3: $80
	sub  [hl]                                        ; $52f4: $96
	nop                                              ; $52f5: $00
	ld   [$0080], sp                                 ; $52f6: $08 $80 $00
	ld   b, b                                        ; $52f9: $40
	nop                                              ; $52fa: $00
	jr   nz, jr_09d_52fd                             ; $52fb: $20 $00

jr_09d_52fd:
	ld   h, b                                        ; $52fd: $60
	nop                                              ; $52fe: $00
	add  b                                           ; $52ff: $80
	add  b                                           ; $5300: $80
	ld   a, a                                        ; $5301: $7f
	sub  h                                           ; $5302: $94
	nop                                              ; $5303: $00
	add  b                                           ; $5304: $80
	ld   [bc], a                                     ; $5305: $02
	add  b                                           ; $5306: $80
	inc  b                                           ; $5307: $04
	add  b                                           ; $5308: $80
	ld   [$1880], sp                                 ; $5309: $08 $80 $18
	add  b                                           ; $530c: $80
	jr   nc, jr_09d_528f                             ; $530d: $30 $80

	ld   h, b                                        ; $530f: $60
	nop                                              ; $5310: $00
	nop                                              ; $5311: $00
	add  b                                           ; $5312: $80
	ret  nz                                          ; $5313: $c0

	ld   [bc], a                                     ; $5314: $02
	add  b                                           ; $5315: $80
	nop                                              ; $5316: $00
	add  b                                           ; $5317: $80
	rst  $38                                         ; $5318: $ff
	nop                                              ; $5319: $00
	rst  $38                                         ; $531a: $ff
	nop                                              ; $531b: $00
	rst  $38                                         ; $531c: $ff
	nop                                              ; $531d: $00
	rst  $38                                         ; $531e: $ff
	nop                                              ; $531f: $00
	rst  $38                                         ; $5320: $ff
	nop                                              ; $5321: $00
	rst  $38                                         ; $5322: $ff
	nop                                              ; $5323: $00
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	rrca                                             ; $5326: $0f
	ld   bc, $0086                                   ; $5327: $01 $86 $00
	nop                                              ; $532a: $00
	ld   bc, $0087                                   ; $532b: $01 $87 $00
	ld   c, $02                                      ; $532e: $0e $02
	ld   bc, $0304                                   ; $5330: $01 $04 $03
	dec  bc                                          ; $5333: $0b
	rlca                                             ; $5334: $07
	inc  b                                           ; $5335: $04
	rlca                                             ; $5336: $07
	dec  d                                           ; $5337: $15
	rrca                                             ; $5338: $0f
	ld   c, $0b                                      ; $5339: $0e $0b
	ld   [hl+], a                                    ; $533b: $22
	dec  de                                          ; $533c: $1b
	inc  l                                           ; $533d: $2c
	add  a                                           ; $533e: $87
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	ld   a, a                                        ; $5341: $7f
	add  b                                           ; $5342: $80
	nop                                              ; $5343: $00
	add  b                                           ; $5344: $80
	rra                                              ; $5345: $1f
	ld   bc, $af2f                                   ; $5346: $01 $2f $af
	add  b                                           ; $5349: $80
	ld   [hl], b                                     ; $534a: $70
	dec  c                                           ; $534b: $0d
	ld   a, a                                        ; $534c: $7f
	ld   l, a                                        ; $534d: $6f
	ld   l, [hl]                                     ; $534e: $6e
	ld   c, [hl]                                     ; $534f: $4e
	ld   c, h                                        ; $5350: $4c
	ld   e, a                                        ; $5351: $5f
	db   $d3                                         ; $5352: $d3
	rst  $38                                         ; $5353: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5354: $cf
	rst  $38                                         ; $5355: $ff
	cp   a                                           ; $5356: $bf
	rst  $38                                         ; $5357: $ff
	ld   a, a                                        ; $5358: $7f
	rst  $38                                         ; $5359: $ff
	adc  c                                           ; $535a: $89
	nop                                              ; $535b: $00
	dec  bc                                          ; $535c: $0b
	ldh  [rP1], a                                    ; $535d: $e0 $00
	db   $10                                         ; $535f: $10
	ldh  [$e8], a                                    ; $5360: $e0 $e8
	ldh  a, [$f4]                                    ; $5362: $f0 $f4
	nop                                              ; $5364: $00
	cp   $fc                                         ; $5365: $fe $fc
	rrca                                             ; $5367: $0f
	ld   c, $80                                      ; $5368: $0e $80
	di                                               ; $536a: $f3
	add  b                                           ; $536b: $80
	db   $fd                                         ; $536c: $fd
	add  b                                           ; $536d: $80
	cp   $81                                         ; $536e: $fe $81
	rst  $38                                         ; $5370: $ff
	inc  b                                           ; $5371: $04
	nop                                              ; $5372: $00
	ccf                                              ; $5373: $3f
	nop                                              ; $5374: $00
	rst  $38                                         ; $5375: $ff
	ccf                                              ; $5376: $3f
	add  b                                           ; $5377: $80
	adc  a                                           ; $5378: $8f
	add  b                                           ; $5379: $80
	rlca                                             ; $537a: $07
	add  b                                           ; $537b: $80
	ccf                                              ; $537c: $3f
	adc  e                                           ; $537d: $8b
	rst  $38                                         ; $537e: $ff
	add  d                                           ; $537f: $82
	rst  JumpTable                                         ; $5380: $df
	add  b                                           ; $5381: $80
	db   $ed                                         ; $5382: $ed
	add  b                                           ; $5383: $80
	and  $87                                         ; $5384: $e6 $87
	nop                                              ; $5386: $00
	inc  de                                          ; $5387: $13
	ld   bc, $0e00                                   ; $5388: $01 $00 $0e
	ld   bc, $0f31                                   ; $538b: $01 $31 $0f
	ld   c, a                                        ; $538e: $4f
	ccf                                              ; $538f: $3f
	cp   a                                           ; $5390: $bf
	ld   a, a                                        ; $5391: $7f
	rst  $38                                         ; $5392: $ff
	sbc  a                                           ; $5393: $9f
	rst  $38                                         ; $5394: $ff
	rst  $20                                         ; $5395: $e7
	rst  $38                                         ; $5396: $ff
	ei                                               ; $5397: $fb
	rst  $38                                         ; $5398: $ff
	db   $fd                                         ; $5399: $fd
	rst  $38                                         ; $539a: $ff
	cp   $81                                         ; $539b: $fe $81
	rst  $38                                         ; $539d: $ff
	add  a                                           ; $539e: $87
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	ld   hl, sp-$80                                  ; $53a1: $f8 $80
	nop                                              ; $53a3: $00
	inc  bc                                          ; $53a4: $03
	ldh  a, [rSVBK]                                  ; $53a5: $f0 $70
	ldh  a, [$30]                                    ; $53a7: $f0 $30
	add  c                                           ; $53a9: $81
	ldh  a, [rDIV]                                   ; $53aa: $f0 $04
	ld   d, h                                        ; $53ac: $54
	ld   hl, sp+$28                                  ; $53ad: $f8 $28
	ld   hl, sp-$26                                  ; $53af: $f8 $da
	add  c                                           ; $53b1: $81
	db   $fc                                         ; $53b2: $fc
	dec  bc                                          ; $53b3: $0b
	call z, $9efc                                    ; $53b4: $cc $fc $9e
	ld   a, b                                        ; $53b7: $78
	ei                                               ; $53b8: $fb
	rla                                              ; $53b9: $17
	inc  b                                           ; $53ba: $04
	rla                                              ; $53bb: $17
	ld   l, [hl]                                     ; $53bc: $6e
	ld   l, $22                                      ; $53bd: $2e $22
	ld   l, $80                                      ; $53bf: $2e $80
	inc  c                                           ; $53c1: $0c
	ld   bc, $0c04                                   ; $53c2: $01 $04 $0c
	add  d                                           ; $53c5: $82
	inc  b                                           ; $53c6: $04
	ld   bc, $0424                                   ; $53c7: $01 $24 $04
	add  b                                           ; $53ca: $80
	nop                                              ; $53cb: $00
	nop                                              ; $53cc: $00
	ld   [hl], b                                     ; $53cd: $70
	add  c                                           ; $53ce: $81
	nop                                              ; $53cf: $00
	inc  b                                           ; $53d0: $04
	ld   [hl+], a                                    ; $53d1: $22
	nop                                              ; $53d2: $00
	add  hl, bc                                      ; $53d3: $09
	nop                                              ; $53d4: $00
	inc  b                                           ; $53d5: $04
	add  d                                           ; $53d6: $82
	nop                                              ; $53d7: $00
	add  c                                           ; $53d8: $81
	rst  $38                                         ; $53d9: $ff
	inc  bc                                          ; $53da: $03
	rst  $30                                         ; $53db: $f7
	or   a                                           ; $53dc: $b7
	xor  a                                           ; $53dd: $af
	ld   l, a                                        ; $53de: $6f
	add  b                                           ; $53df: $80
	ld   e, l                                        ; $53e0: $5d
	inc  b                                           ; $53e1: $04
	inc  sp                                          ; $53e2: $33
	sub  d                                           ; $53e3: $92
	add  [hl]                                        ; $53e4: $86
	add  l                                           ; $53e5: $85
	ld   c, l                                        ; $53e6: $4d
	add  b                                           ; $53e7: $80
	add  hl, hl                                      ; $53e8: $29
	ld   bc, $a000                                   ; $53e9: $01 $00 $a0
	add  b                                           ; $53ec: $80
	ld   [bc], a                                     ; $53ed: $02
	ld   bc, $1646                                   ; $53ee: $01 $46 $16
	add  b                                           ; $53f1: $80
	inc  b                                           ; $53f2: $04
	nop                                              ; $53f3: $00
	adc  l                                           ; $53f4: $8d
	add  c                                           ; $53f5: $81
	inc  c                                           ; $53f6: $0c
	nop                                              ; $53f7: $00
	ld   e, $80                                      ; $53f8: $1e $80
	sbc  [hl]                                        ; $53fa: $9e
	adc  b                                           ; $53fb: $88
	rst  $38                                         ; $53fc: $ff
	add  b                                           ; $53fd: $80
	db   $fd                                         ; $53fe: $fd
	dec  b                                           ; $53ff: $05
	ei                                               ; $5400: $fb
	db   $db                                         ; $5401: $db
	db   $d3                                         ; $5402: $d3
	inc  sp                                          ; $5403: $33
	ld   h, $66                                      ; $5404: $26 $66
	add  b                                           ; $5406: $80
	ld   b, [hl]                                     ; $5407: $46
	ld   [bc], a                                     ; $5408: $02
	ld   b, $a6                                      ; $5409: $06 $a6
	ld   h, $81                                      ; $540b: $26 $81
	ld   d, [hl]                                     ; $540d: $56
	ld   [bc], a                                     ; $540e: $02
	ld   d, d                                        ; $540f: $52
	ld   e, d                                        ; $5410: $5a
	ld   c, d                                        ; $5411: $4a
	add  c                                           ; $5412: $81
	xor  d                                           ; $5413: $aa
	ld   bc, $ff47                                   ; $5414: $01 $47 $ff
	add  b                                           ; $5417: $80
	ei                                               ; $5418: $fb
	add  b                                           ; $5419: $80
	db   $fd                                         ; $541a: $fd
	add  b                                           ; $541b: $80
	cp   $81                                         ; $541c: $fe $81
	rst  $38                                         ; $541e: $ff
	add  b                                           ; $541f: $80
	cp   e                                           ; $5420: $bb
	add  b                                           ; $5421: $80
	call $e008                                       ; $5422: $cd $08 $e0
	ret  nz                                          ; $5425: $c0

	ld   d, [hl]                                     ; $5426: $56
	ld   b, [hl]                                     ; $5427: $46
	adc  e                                           ; $5428: $8b
	and  d                                           ; $5429: $a2
	call nz, $f3d1                                   ; $542a: $c4 $d1 $f3
	add  b                                           ; $542d: $80
	sub  e                                           ; $542e: $93
	inc  bc                                          ; $542f: $03
	ret                                              ; $5430: $c9


	ld   c, c                                        ; $5431: $49
	ld   l, c                                        ; $5432: $69
	jp   hl                                          ; $5433: $e9


	add  b                                           ; $5434: $80
	push hl                                          ; $5435: $e5
	ld   a, [bc]                                     ; $5436: $0a
	add  e                                           ; $5437: $83
	cp   b                                           ; $5438: $b8
	ld   a, [$d1d0]                                  ; $5439: $fa $d0 $d1
	sub  $f6                                         ; $543c: $d6 $f6
	rst  $20                                         ; $543e: $e7
	ld   h, a                                        ; $543f: $67
	ld   l, a                                        ; $5440: $6f
	cp   a                                           ; $5441: $bf
	add  c                                           ; $5442: $81
	or   a                                           ; $5443: $b7
	nop                                              ; $5444: $00
	rst  JumpTable                                         ; $5445: $df
	add  c                                           ; $5446: $81
	db   $db                                         ; $5447: $db
	nop                                              ; $5448: $00
	db   $eb                                         ; $5449: $eb
	add  b                                           ; $544a: $80
	ld   l, b                                        ; $544b: $68
	nop                                              ; $544c: $00
	db   $eb                                         ; $544d: $eb
	add  b                                           ; $544e: $80
	ld   l, e                                        ; $544f: $6b
	ld   bc, $7577                                   ; $5450: $01 $77 $75
	add  d                                           ; $5453: $82
	or   l                                           ; $5454: $b5
	add  b                                           ; $5455: $80
	push bc                                          ; $5456: $c5
	nop                                              ; $5457: $00
	cp   $81                                         ; $5458: $fe $81
	nop                                              ; $545a: $00
	db   $10                                         ; $545b: $10
	add  b                                           ; $545c: $80
	nop                                              ; $545d: $00
	ldh  [$80], a                                    ; $545e: $e0 $80
	ld   a, b                                        ; $5460: $78
	ldh  [$9c], a                                    ; $5461: $e0 $9c
	ld   hl, sp-$1a                                  ; $5463: $f8 $e6
	db   $fc                                         ; $5465: $fc
	ld   hl, sp-$04                                  ; $5466: $f8 $fc
	cp   $f8                                         ; $5468: $fe $f8
	db   $fc                                         ; $546a: $fc
	ldh  a, [$f8]                                    ; $546b: $f0 $f8
	add  b                                           ; $546d: $80
	jr   nz, jr_09d_5479                             ; $546e: $20 $09

	ret  nz                                          ; $5470: $c0

	call z, $f2f0                                    ; $5471: $cc $f0 $f2
	db   $fc                                         ; $5474: $fc
	dec  e                                           ; $5475: $1d
	cp   $ee                                         ; $5476: $fe $ee
	db   $fc                                         ; $5478: $fc

jr_09d_5479:
	or   [hl]                                        ; $5479: $b6
	add  c                                           ; $547a: $81
	cp   d                                           ; $547b: $ba
	add  b                                           ; $547c: $80
	ret  nc                                          ; $547d: $d0

	inc  b                                           ; $547e: $04
	ld   e, b                                        ; $547f: $58
	ld   e, e                                        ; $5480: $5b

jr_09d_5481:
	inc  hl                                          ; $5481: $23
	daa                                              ; $5482: $27
	rlca                                             ; $5483: $07

jr_09d_5484:
	add  b                                           ; $5484: $80
	rrca                                             ; $5485: $0f
	add  l                                           ; $5486: $85
	ld   c, a                                        ; $5487: $4f
	inc  b                                           ; $5488: $04
	ld   e, a                                        ; $5489: $5f
	ld   d, a                                        ; $548a: $57
	rst  $10                                         ; $548b: $d7
	rla                                              ; $548c: $17
	ld   d, a                                        ; $548d: $57

jr_09d_548e:
	add  e                                           ; $548e: $83
	rla                                              ; $548f: $17
	dec  b                                           ; $5490: $05
	rra                                              ; $5491: $1f
	dec  de                                          ; $5492: $1b
	rrca                                             ; $5493: $0f
	call $8b89                                       ; $5494: $cd $89 $8b
	add  b                                           ; $5497: $80
	dec  bc                                          ; $5498: $0b
	ld   b, $13                                      ; $5499: $06 $13
	rla                                              ; $549b: $17
	rst  $10                                         ; $549c: $d7
	rla                                              ; $549d: $17
	and  a                                           ; $549e: $a7
	rlca                                             ; $549f: $07
	rst  ToBoot                                         ; $54a0: $c7
	add  b                                           ; $54a1: $80
	inc  bc                                          ; $54a2: $03
	add  b                                           ; $54a3: $80
	ld   bc, $0000                                   ; $54a4: $01 $00 $00
	add  b                                           ; $54a7: $80
	inc  b                                           ; $54a8: $04
	ld   b, $e4                                      ; $54a9: $06 $e4
	inc  b                                           ; $54ab: $04
	add  [hl]                                        ; $54ac: $86
	ld   b, $42                                      ; $54ad: $06 $42
	ld   [bc], a                                     ; $54af: $02
	adc  e                                           ; $54b0: $8b
	add  c                                           ; $54b1: $81
	dec  bc                                          ; $54b2: $0b
	add  b                                           ; $54b3: $80
	ld   c, e                                        ; $54b4: $4b
	nop                                              ; $54b5: $00
	ld   a, b                                        ; $54b6: $78
	add  c                                           ; $54b7: $81
	ld   a, [$b300]                                  ; $54b8: $fa $00 $b3
	add  c                                           ; $54bb: $81
	db   $f4                                         ; $54bc: $f4
	ld   [bc], a                                     ; $54bd: $02
	add  $e8                                         ; $54be: $c6 $e8
	db   $ec                                         ; $54c0: $ec
	add  b                                           ; $54c1: $80
	ldh  [$81], a                                    ; $54c2: $e0 $81
	ldh  a, [rSC]                                    ; $54c4: $f0 $02
	ld   hl, sp-$40                                  ; $54c6: $f8 $c0
	ldh  a, [$80]                                    ; $54c8: $f0 $80
	add  b                                           ; $54ca: $80
	ld   bc, $4000                                   ; $54cb: $01 $00 $40
	add  e                                           ; $54ce: $83
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00
	ld   b, b                                        ; $54d1: $40
	add  c                                           ; $54d2: $81
	nop                                              ; $54d3: $00
	rlca                                             ; $54d4: $07
	pop  bc                                          ; $54d5: $c1
	nop                                              ; $54d6: $00
	inc  bc                                          ; $54d7: $03
	ld   bc, $0307                                   ; $54d8: $01 $07 $03
	rrca                                             ; $54db: $0f
	rlca                                             ; $54dc: $07
	add  b                                           ; $54dd: $80
	ld   b, $00                                      ; $54de: $06 $00
	ld   e, $83                                      ; $54e0: $1e $83
	ld   c, $01                                      ; $54e2: $0e $01
	ld   a, $1e                                      ; $54e4: $3e $1e
	add  d                                           ; $54e6: $82
	dec  e                                           ; $54e7: $1d
	nop                                              ; $54e8: $00
	ld   a, e                                        ; $54e9: $7b
	add  c                                           ; $54ea: $81
	dec  sp                                          ; $54eb: $3b
	add  b                                           ; $54ec: $80
	scf                                              ; $54ed: $37
	nop                                              ; $54ee: $00
	rst  $30                                         ; $54ef: $f7
	add  c                                           ; $54f0: $81
	ld   [hl], a                                     ; $54f1: $77
	nop                                              ; $54f2: $00
	ret  c                                           ; $54f3: $d8

	add  c                                           ; $54f4: $81
	dec  de                                          ; $54f5: $1b
	nop                                              ; $54f6: $00
	dec  bc                                          ; $54f7: $0b
	add  b                                           ; $54f8: $80
	add  hl, de                                      ; $54f9: $19
	ld   [bc], a                                     ; $54fa: $02
	jr   jr_09d_5516                                 ; $54fb: $18 $19

	jr   jr_09d_5481                                 ; $54fd: $18 $82

	inc  e                                           ; $54ff: $1c
	nop                                              ; $5500: $00
	jr   jr_09d_5484                                 ; $5501: $18 $81

	inc  e                                           ; $5503: $1c
	nop                                              ; $5504: $00
	inc  d                                           ; $5505: $14
	add  c                                           ; $5506: $81
	inc  e                                           ; $5507: $1c
	nop                                              ; $5508: $00
	jr   jr_09d_548e                                 ; $5509: $18 $83

	inc  e                                           ; $550b: $1c
	inc  b                                           ; $550c: $04
	dec  d                                           ; $550d: $15
	inc  e                                           ; $550e: $1c
	ld   e, h                                        ; $550f: $5c
	inc  e                                           ; $5510: $1c
	sub  b                                           ; $5511: $90
	add  [hl]                                        ; $5512: $86
	rst  $38                                         ; $5513: $ff
	dec  b                                           ; $5514: $05
	ccf                                              ; $5515: $3f

jr_09d_5516:
	rst  $38                                         ; $5516: $ff
	rra                                              ; $5517: $1f
	ccf                                              ; $5518: $3f
	rlca                                             ; $5519: $07
	rra                                              ; $551a: $1f
	add  b                                           ; $551b: $80
	ld   bc, $0280                                   ; $551c: $01 $80 $02
	rlca                                             ; $551f: $07
	inc  bc                                          ; $5520: $03
	dec  de                                          ; $5521: $1b
	inc  bc                                          ; $5522: $03
	inc  hl                                          ; $5523: $23
	inc  de                                          ; $5524: $13
	ld   d, e                                        ; $5525: $53
	inc  hl                                          ; $5526: $23
	and  e                                           ; $5527: $a3
	add  b                                           ; $5528: $80
	ld   l, e                                        ; $5529: $6b
	add  b                                           ; $552a: $80
	db   $d3                                         ; $552b: $d3
	ld   bc, $28d7                                   ; $552c: $01 $d7 $28
	add  e                                           ; $552f: $83
	nop                                              ; $5530: $00
	add  b                                           ; $5531: $80

jr_09d_5532:
	ld   bc, $0306                                   ; $5532: $01 $06 $03
	ld   [bc], a                                     ; $5535: $02
	ld   c, $09                                      ; $5536: $0e $09
	add  hl, sp                                      ; $5538: $39
	daa                                              ; $5539: $27
	rst  $20                                         ; $553a: $e7
	add  b                                           ; $553b: $80
	sbc  a                                           ; $553c: $9f
	add  b                                           ; $553d: $80
	ld   a, a                                        ; $553e: $7f
	ld   de, $7fff                                   ; $553f: $11 $ff $7f
	ld   a, [hl]                                     ; $5542: $7e
	rlca                                             ; $5543: $07
	nop                                              ; $5544: $00
	rrca                                             ; $5545: $0f
	nop                                              ; $5546: $00
	rra                                              ; $5547: $1f
	ld   bc, $077f                                   ; $5548: $01 $7f $07
	rst  $38                                         ; $554b: $ff
	rrca                                             ; $554c: $0f
	and  $62                                         ; $554d: $e6 $62
	ldh  [c], a                                      ; $554f: $e2
	jp   nz, $80ca                                   ; $5550: $c2 $ca $80

	xor  d                                           ; $5553: $aa
	add  b                                           ; $5554: $80
	ld   h, d                                        ; $5555: $62
	add  d                                           ; $5556: $82
	ldh  [c], a                                      ; $5557: $e2
	ld   bc, $e4e6                                   ; $5558: $01 $e6 $e4
	add  b                                           ; $555b: $80
	call nz, $8408                                   ; $555c: $c4 $08 $84
	call nc, $c504                                   ; $555f: $d4 $04 $c5
	inc  b                                           ; $5562: $04
	call nz, $8c0c                                   ; $5563: $c4 $0c $8c
	inc  c                                           ; $5566: $0c
	add  b                                           ; $5567: $80
	ld   [$0908], sp                                 ; $5568: $08 $08 $09
	jr   jr_09d_5586                                 ; $556b: $18 $19

	jr   jr_09d_55ed                                 ; $556d: $18 $7e

	add  b                                           ; $556f: $80
	ldh  [$c0], a                                    ; $5570: $e0 $c0
	ld   b, b                                        ; $5572: $40
	add  c                                           ; $5573: $81
	ret  nz                                          ; $5574: $c0

	nop                                              ; $5575: $00
	or   b                                           ; $5576: $b0
	add  b                                           ; $5577: $80
	ldh  [$81], a                                    ; $5578: $e0 $81
	ld   h, b                                        ; $557a: $60
	dec  bc                                          ; $557b: $0b
	ld   e, b                                        ; $557c: $58
	ld   [hl], b                                     ; $557d: $70
	ldh  a, [$b0]                                    ; $557e: $f0 $b0
	jr   nc, jr_09d_5532                             ; $5580: $30 $b0

	xor  h                                           ; $5582: $ac
	cp   b                                           ; $5583: $b8
	ld   hl, sp-$28                                  ; $5584: $f8 $d8

jr_09d_5586:
	ld   b, $dc                                      ; $5586: $06 $dc
	add  b                                           ; $5588: $80
	db   $ec                                         ; $5589: $ec
	ld   b, $87                                      ; $558a: $06 $87
	xor  $d6                                         ; $558c: $ee $d6
	or   $7f                                         ; $558e: $f6 $7f
	nop                                              ; $5590: $00
	ret  nz                                          ; $5591: $c0

	add  c                                           ; $5592: $81
	add  b                                           ; $5593: $80
	inc  bc                                          ; $5594: $03
	ldh  [$c0], a                                    ; $5595: $e0 $c0
	ld   [hl], b                                     ; $5597: $70
	ld   h, b                                        ; $5598: $60
	add  b                                           ; $5599: $80
	and  b                                           ; $559a: $a0
	ld   bc, $b0b8                                   ; $559b: $01 $b8 $b0
	add  d                                           ; $559e: $82
	ret  nc                                          ; $559f: $d0

	nop                                              ; $55a0: $00
	ld   l, h                                        ; $55a1: $6c
	add  c                                           ; $55a2: $81
	ld   l, b                                        ; $55a3: $68
	add  b                                           ; $55a4: $80
	jr   z, jr_09d_55a7                              ; $55a5: $28 $00

jr_09d_55a7:
	ld   [hl], $85                                   ; $55a7: $36 $85
	inc  [hl]                                        ; $55a9: $34

jr_09d_55aa:
	nop                                              ; $55aa: $00
	cp   $85                                         ; $55ab: $fe $85
	nop                                              ; $55ad: $00
	dec  de                                          ; $55ae: $1b
	ret  nz                                          ; $55af: $c0

	nop                                              ; $55b0: $00
	ldh  a, [rAUD1SWEEP]                             ; $55b1: $f0 $10
	inc  a                                           ; $55b3: $3c
	inc  b                                           ; $55b4: $04
	ld   e, $00                                      ; $55b5: $1e $00
	ld   bc, $0002                                   ; $55b7: $01 $02 $00
	ld   bc, $0018                                   ; $55ba: $01 $18 $00
	jr   nc, jr_09d_55cf                             ; $55bd: $30 $10

	ld   h, b                                        ; $55bf: $60
	jr   nz, jr_09d_55aa                             ; $55c0: $20 $e8

	ld   h, b                                        ; $55c2: $60
	ret  c                                           ; $55c3: $d8

	ret  nz                                          ; $55c4: $c0

	pop  bc                                          ; $55c5: $c1
	push bc                                          ; $55c6: $c5
	jp   c, $8acc                                    ; $55c7: $da $cc $8a

	adc  b                                           ; $55ca: $88
	add  b                                           ; $55cb: $80
	ld   [$140b], sp                                 ; $55cc: $08 $0b $14

jr_09d_55cf:
	db   $10                                         ; $55cf: $10
	ld   d, b                                        ; $55d0: $50
	sub  b                                           ; $55d1: $90
	ldh  [rLCDC], a                                  ; $55d2: $e0 $40
	ld   b, h                                        ; $55d4: $44
	add  b                                           ; $55d5: $80
	add  d                                           ; $55d6: $82
	add  b                                           ; $55d7: $80
	and  c                                           ; $55d8: $a1
	and  b                                           ; $55d9: $a0
	add  b                                           ; $55da: $80
	and  h                                           ; $55db: $a4
	ld   b, $e4                                      ; $55dc: $06 $e4
	inc  b                                           ; $55de: $04
	add  $46                                         ; $55df: $c6 $46
	jp   nz, $8b82                                   ; $55e1: $c2 $82 $8b

	add  c                                           ; $55e4: $81
	dec  bc                                          ; $55e5: $0b
	add  b                                           ; $55e6: $80
	ld   c, e                                        ; $55e7: $4b
	nop                                              ; $55e8: $00
	rst  $38                                         ; $55e9: $ff
	rst  $38                                         ; $55ea: $ff
	nop                                              ; $55eb: $00
	db   $fc                                         ; $55ec: $fc

jr_09d_55ed:
	nop                                              ; $55ed: $00
	ld   [$0019], sp                                 ; $55ee: $08 $19 $00
	jr   nz, jr_09d_55f3                             ; $55f1: $20 $00

jr_09d_55f3:
	ld   l, b                                        ; $55f3: $68
	nop                                              ; $55f4: $00
	ret  nz                                          ; $55f5: $c0

	nop                                              ; $55f6: $00
	add  b                                           ; $55f7: $80
	add  e                                           ; $55f8: $83
	nop                                              ; $55f9: $00
	ld   [bc], a                                     ; $55fa: $02
	ld   [hl+], a                                    ; $55fb: $22
	nop                                              ; $55fc: $00
	sbc  c                                           ; $55fd: $99
	add  e                                           ; $55fe: $83
	ld   d, l                                        ; $55ff: $55
	add  b                                           ; $5600: $80
	ld   e, [hl]                                     ; $5601: $5e
	add  b                                           ; $5602: $80
	sbc  $83                                         ; $5603: $de $83
	xor  a                                           ; $5605: $af
	inc  d                                           ; $5606: $14
	xor  [hl]                                        ; $5607: $ae
	adc  l                                           ; $5608: $8d
	nop                                              ; $5609: $00
	ret  nc                                          ; $560a: $d0

	nop                                              ; $560b: $00
	pop  bc                                          ; $560c: $c1
	ld   bc, $4181                                   ; $560d: $01 $81 $41
	ld   bc, $c4c1                                   ; $5610: $01 $c1 $c4
	pop  bc                                          ; $5613: $c1
	ld   b, c                                        ; $5614: $41
	ret  nz                                          ; $5615: $c0

	add  b                                           ; $5616: $80
	pop  bc                                          ; $5617: $c1
	xor  $b6                                         ; $5618: $ee $b6
	sub  $d5                                         ; $561a: $d6 $d5
	add  b                                           ; $561c: $80
	ld   d, l                                        ; $561d: $55
	ld   [bc], a                                     ; $561e: $02
	ld   e, c                                        ; $561f: $59
	ld   e, d                                        ; $5620: $5a
	ld   a, [bc]                                     ; $5621: $0a
	add  b                                           ; $5622: $80
	adc  d                                           ; $5623: $8a
	dec  b                                           ; $5624: $05
	ld   l, e                                        ; $5625: $6b
	ld   h, l                                        ; $5626: $65
	push af                                          ; $5627: $f5
	or   c                                           ; $5628: $b1
	cp   c                                           ; $5629: $b9
	db   $e4                                         ; $562a: $e4
	add  b                                           ; $562b: $80
	ld   e, l                                        ; $562c: $5d
	add  c                                           ; $562d: $81
	db   $dd                                         ; $562e: $dd
	add  d                                           ; $562f: $82
	push de                                          ; $5630: $d5
	nop                                              ; $5631: $00
	push af                                          ; $5632: $f5
	add  e                                           ; $5633: $83
	or   l                                           ; $5634: $b5
	ld   [de], a                                     ; $5635: $12
	pop  de                                          ; $5636: $d1
	call nz, $c0c5                                   ; $5637: $c4 $c5 $c0
	rst  ToBoot                                         ; $563a: $c7
	ret  nz                                          ; $563b: $c0

	sbc  $c1                                         ; $563c: $de $c1
	reti                                             ; $563e: $d9


	rst  ToBoot                                         ; $563f: $c7
	rst  $10                                         ; $5640: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5641: $cf
	adc  $de                                         ; $5642: $ce $de
	sbc  h                                           ; $5644: $9c
	cp   h                                           ; $5645: $bc
	ld   a, $1f                                      ; $5646: $3e $1f
	sbc  [hl]                                        ; $5648: $9e
	add  b                                           ; $5649: $80
	ld   a, a                                        ; $564a: $7f
	add  c                                           ; $564b: $81
	rst  $38                                         ; $564c: $ff
	add  b                                           ; $564d: $80
	rst  $28                                         ; $564e: $ef
	add  b                                           ; $564f: $80
	sbc  e                                           ; $5650: $9b
	inc  b                                           ; $5651: $04
	rlca                                             ; $5652: $07
	ld   b, $0e                                      ; $5653: $06 $0e
	dec  c                                           ; $5655: $0d
	push hl                                          ; $5656: $e5
	add  l                                           ; $5657: $85
	db   $db                                         ; $5658: $db
	nop                                              ; $5659: $00
	ei                                               ; $565a: $fb
	add  b                                           ; $565b: $80
	cp   e                                           ; $565c: $bb
	add  b                                           ; $565d: $80
	dec  sp                                          ; $565e: $3b
	add  c                                           ; $565f: $81
	cp   e                                           ; $5660: $bb
	inc  bc                                          ; $5661: $03
	or   e                                           ; $5662: $b3
	call z, $e3e0                                    ; $5663: $cc $e0 $e3
	add  b                                           ; $5666: $80
	cp   $01                                         ; $5667: $fe $01
	ld   a, [$80fe]                                  ; $5669: $fa $fe $80
	ei                                               ; $566c: $fb
	nop                                              ; $566d: $00
	di                                               ; $566e: $f3
	add  c                                           ; $566f: $81
	db   $db                                         ; $5670: $db
	inc  bc                                          ; $5671: $03
	ei                                               ; $5672: $fb
	cp   e                                           ; $5673: $bb
	ld   h, h                                        ; $5674: $64
	rst  $30                                         ; $5675: $f7
	add  b                                           ; $5676: $80
	dec  sp                                          ; $5677: $3b
	rlca                                             ; $5678: $07
	dec  bc                                          ; $5679: $0b
	rlc  l                                           ; $567a: $cb $05
	dec  [hl]                                        ; $567c: $35
	ld   de, $8919                                   ; $567d: $11 $19 $89
	adc  l                                           ; $5680: $8d
	add  b                                           ; $5681: $80
	adc  h                                           ; $5682: $8c
	add  b                                           ; $5683: $80
	call z, $d400                                    ; $5684: $cc $00 $d4
	add  b                                           ; $5687: $80
	xor  e                                           ; $5688: $ab
	ld   bc, $b2aa                                   ; $5689: $01 $aa $b2
	add  b                                           ; $568c: $80
	or   c                                           ; $568d: $b1
	add  b                                           ; $568e: $80
	or   e                                           ; $568f: $b3
	add  e                                           ; $5690: $83
	or   a                                           ; $5691: $b7
	dec  b                                           ; $5692: $05
	sub  a                                           ; $5693: $97
	rst  $10                                         ; $5694: $d7
	ret  nz                                          ; $5695: $c0

	ld   a, b                                        ; $5696: $78
	ld   [hl], b                                     ; $5697: $70
	ldh  a, [$80]                                    ; $5698: $f0 $80
	ldh  [$80], a                                    ; $569a: $e0 $80
	db   $fc                                         ; $569c: $fc
	add  b                                           ; $569d: $80
	rst  $38                                         ; $569e: $ff
	ld   d, $fe                                      ; $569f: $16 $fe
	rst  $38                                         ; $56a1: $ff
	ld   hl, sp-$02                                  ; $56a2: $f8 $fe
	dec  b                                           ; $56a4: $05
	db   $fd                                         ; $56a5: $fd
	ldh  [rAUD3LEN], a                               ; $56a6: $e0 $1b
	dec  sp                                          ; $56a8: $3b
	scf                                              ; $56a9: $37
	ld   [hl], l                                     ; $56aa: $75
	ld   l, l                                        ; $56ab: $6d
	db   $e3                                         ; $56ac: $e3
	db   $d3                                         ; $56ad: $d3
	jp   $a6a2                                       ; $56ae: $c3 $a2 $a6


	ld   h, [hl]                                     ; $56b1: $66
	ld   a, [hl]                                     ; $56b2: $7e
	cp   $3e                                         ; $56b3: $fe $3e
	cp   $06                                         ; $56b5: $fe $06
	add  c                                           ; $56b7: $81
	cp   e                                           ; $56b8: $bb
	nop                                              ; $56b9: $00
	di                                               ; $56ba: $f3
	add  c                                           ; $56bb: $81
	ld   [hl], a                                     ; $56bc: $77
	nop                                              ; $56bd: $00
	rst  $20                                         ; $56be: $e7
	add  b                                           ; $56bf: $80
	rst  $28                                         ; $56c0: $ef
	ld   bc, $ceee                                   ; $56c1: $01 $ee $ce
	add  c                                           ; $56c4: $81
	sbc  $0b                                         ; $56c5: $de $0b
	ld   c, $b7                                      ; $56c7: $0e $b7
	rst  $30                                         ; $56c9: $f7
	ld   [hl], a                                     ; $56ca: $77
	ld   d, [hl]                                     ; $56cb: $56
	ld   [hl], a                                     ; $56cc: $77
	ld   h, a                                        ; $56cd: $67
	ld   l, a                                        ; $56ce: $6f
	ld   l, h                                        ; $56cf: $6c
	ld   l, [hl]                                     ; $56d0: $6e
	jp   z, $80de                                    ; $56d1: $ca $de $80

	call c, $9402                                    ; $56d4: $dc $02 $94
	cp   l                                           ; $56d7: $bd
	ld   sp, $fe82                                   ; $56d8: $31 $82 $fe
	add  b                                           ; $56db: $80
	ld   a, [hl]                                     ; $56dc: $7e
	add  b                                           ; $56dd: $80
	ld   a, a                                        ; $56de: $7f
	add  b                                           ; $56df: $80
	db   $e3                                         ; $56e0: $e3
	add  b                                           ; $56e1: $80
	sbc  l                                           ; $56e2: $9d
	add  b                                           ; $56e3: $80
	ld   a, [hl]                                     ; $56e4: $7e
	ld   bc, $02fd                                   ; $56e5: $01 $fd $02
	rst  $38                                         ; $56e8: $ff
	nop                                              ; $56e9: $00
	rst  $38                                         ; $56ea: $ff
	nop                                              ; $56eb: $00
	rst  $38                                         ; $56ec: $ff
	nop                                              ; $56ed: $00
	rst  $38                                         ; $56ee: $ff
	nop                                              ; $56ef: $00
	rst  $38                                         ; $56f0: $ff
	nop                                              ; $56f1: $00
	ld   hl, sp+$00                                  ; $56f2: $f8 $00
	ld   [$8000], a                                  ; $56f4: $ea $00 $80
	ld   a, [bc]                                     ; $56f7: $0a
	add  b                                           ; $56f8: $80
	dec  c                                           ; $56f9: $0d
	add  b                                           ; $56fa: $80
	ld   a, [bc]                                     ; $56fb: $0a
	add  b                                           ; $56fc: $80
	dec  c                                           ; $56fd: $0d
	add  b                                           ; $56fe: $80
	ld   c, $84                                      ; $56ff: $0e $84
	rrca                                             ; $5701: $0f
	inc  e                                           ; $5702: $1c
	ld   l, $2f                                      ; $5703: $2e $2f
	ld   e, [hl]                                     ; $5705: $5e
	ld   e, a                                        ; $5706: $5f
	ld   l, $2f                                      ; $5707: $2e $2f
	ld   e, [hl]                                     ; $5709: $5e
	ld   e, a                                        ; $570a: $5f
	cp   [hl]                                        ; $570b: $be
	cp   a                                           ; $570c: $bf
	ld   a, h                                        ; $570d: $7c
	ld   a, a                                        ; $570e: $7f
	db   $fd                                         ; $570f: $fd
	rst  $38                                         ; $5710: $ff
	db   $fd                                         ; $5711: $fd
	rst  $38                                         ; $5712: $ff
	cp   h                                           ; $5713: $bc
	db   $fc                                         ; $5714: $fc
	ld   a, $f8                                      ; $5715: $3e $f8
	ld   a, b                                        ; $5717: $78
	ld   hl, sp+$7c                                  ; $5718: $f8 $7c
	ldh  a, [$78]                                    ; $571a: $f0 $78
	ldh  [$e1], a                                    ; $571c: $e0 $e1
	ldh  [$f0], a                                    ; $571e: $e0 $f0
	add  c                                           ; $5720: $81
	ret  nz                                          ; $5721: $c0

	inc  b                                           ; $5722: $04
	xor  d                                           ; $5723: $aa
	ld   [bc], a                                     ; $5724: $02
	sbc  [hl]                                        ; $5725: $9e
	inc  b                                           ; $5726: $04
	inc  c                                           ; $5727: $0c
	add  e                                           ; $5728: $83
	ld   [$2900], sp                                 ; $5729: $08 $00 $29
	add  d                                           ; $572c: $82
	db   $10                                         ; $572d: $10
	dec  c                                           ; $572e: $0d
	nop                                              ; $572f: $00
	ld   hl, sp+$00                                  ; $5730: $f8 $00
	ld   b, b                                        ; $5732: $40
	nop                                              ; $5733: $00
	ld   [bc], a                                     ; $5734: $02
	nop                                              ; $5735: $00
	adc  h                                           ; $5736: $8c
	nop                                              ; $5737: $00
	stop                                             ; $5738: $10 $00
	ld   [rROMB1], sp                                 ; $573a: $08 $00 $30
	add  c                                           ; $573d: $81
	nop                                              ; $573e: $00
	ld   [bc], a                                     ; $573f: $02
	ccf                                              ; $5740: $3f
	rrca                                             ; $5741: $0f
	cpl                                              ; $5742: $2f
	add  c                                           ; $5743: $81
	rra                                              ; $5744: $1f
	inc  c                                           ; $5745: $0c
	rrca                                             ; $5746: $0f
	rra                                              ; $5747: $1f
	inc  de                                          ; $5748: $13
	rra                                              ; $5749: $1f
	dec  e                                           ; $574a: $1d
	rra                                              ; $574b: $1f
	ld   e, $1f                                      ; $574c: $1e $1f
	cpl                                              ; $574e: $2f
	rrca                                             ; $574f: $0f
	pop  hl                                          ; $5750: $e1
	push af                                          ; $5751: $f5
	db   $f4                                         ; $5752: $f4
	add  b                                           ; $5753: $80
	ld   a, [$fc80]                                  ; $5754: $fa $80 $fc
	add  hl, de                                      ; $5757: $19
	cp   $fa                                         ; $5758: $fe $fa
	rst  $38                                         ; $575a: $ff
	ld   hl, sp-$01                                  ; $575b: $f8 $ff
	db   $fd                                         ; $575d: $fd
	rst  $28                                         ; $575e: $ef
	ld   l, [hl]                                     ; $575f: $6e
	rst  $20                                         ; $5760: $e7
	and  c                                           ; $5761: $a1
	cp   $da                                         ; $5762: $fe $da
	rst  $38                                         ; $5764: $ff
	ld   l, [hl]                                     ; $5765: $6e
	ld   a, a                                        ; $5766: $7f
	dec  [hl]                                        ; $5767: $35
	ccf                                              ; $5768: $3f
	dec  de                                          ; $5769: $1b
	sbc  a                                           ; $576a: $9f
	adc  h                                           ; $576b: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $576c: $cf
	ld   b, [hl]                                     ; $576d: $46
	rst  $30                                         ; $576e: $f7
	sub  e                                           ; $576f: $93
	ei                                               ; $5770: $fb
	jr   @-$7e                                       ; $5771: $18 $80

	rst  $38                                         ; $5773: $ff
	add  d                                           ; $5774: $82
	ld   a, a                                        ; $5775: $7f
	add  d                                           ; $5776: $82
	cp   a                                           ; $5777: $bf
	add  e                                           ; $5778: $83
	rst  JumpTable                                         ; $5779: $df
	inc  bc                                          ; $577a: $03
	call z, $c7d3                                    ; $577b: $cc $d3 $c7
	rst  $20                                         ; $577e: $e7
	add  b                                           ; $577f: $80
	rst  $28                                         ; $5780: $ef
	nop                                              ; $5781: $00
	rst  $20                                         ; $5782: $e7
	add  e                                           ; $5783: $83
	rst  $30                                         ; $5784: $f7
	nop                                              ; $5785: $00
	di                                               ; $5786: $f3
	add  c                                           ; $5787: $81
	ei                                               ; $5788: $fb
	inc  bc                                          ; $5789: $03
	nop                                              ; $578a: $00
	ld   hl, sp-$10                                  ; $578b: $f8 $f0
	db   $f4                                         ; $578d: $f4
	add  d                                           ; $578e: $82
	or   $00                                         ; $578f: $f6 $00
	push hl                                          ; $5791: $e5
	add  b                                           ; $5792: $80
	rst  $20                                         ; $5793: $e7
	ld   bc, $ceef                                   ; $5794: $01 $ef $ce
	add  c                                           ; $5797: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5798: $cf
	ld   bc, $4f40                                   ; $5799: $01 $40 $4f
	add  b                                           ; $579c: $80
	ld   b, a                                        ; $579d: $47
	add  b                                           ; $579e: $80
	ld   h, a                                        ; $579f: $67
	add  b                                           ; $57a0: $80
	ld   h, d                                        ; $57a1: $62
	add  b                                           ; $57a2: $80
	ld   [hl+], a                                    ; $57a3: $22
	add  b                                           ; $57a4: $80
	xor  d                                           ; $57a5: $aa
	add  b                                           ; $57a6: $80
	add  sp, $07                                     ; $57a7: $e8 $07
	ld   l, c                                        ; $57a9: $69
	jp   hl                                          ; $57aa: $e9


	ret                                              ; $57ab: $c9


	ld   c, a                                        ; $57ac: $4f
	ld   c, h                                        ; $57ad: $4c
	ld   c, [hl]                                     ; $57ae: $4e
	ld   e, b                                        ; $57af: $58
	ld   e, l                                        ; $57b0: $5d
	add  b                                           ; $57b1: $80
	dec  e                                           ; $57b2: $1d
	nop                                              ; $57b3: $00
	add  hl, sp                                      ; $57b4: $39
	add  b                                           ; $57b5: $80
	dec  sp                                          ; $57b6: $3b
	dec  b                                           ; $57b7: $05
	ld   a, [hl-]                                    ; $57b8: $3a
	or   d                                           ; $57b9: $b2
	or   h                                           ; $57ba: $b4
	and  h                                           ; $57bb: $a4
	xor  h                                           ; $57bc: $ac
	or   e                                           ; $57bd: $b3
	add  b                                           ; $57be: $80
	ld   a, $80                                      ; $57bf: $3e $80
	inc  a                                           ; $57c1: $3c
	ld   [bc], a                                     ; $57c2: $02
	dec  sp                                          ; $57c3: $3b
	ld   a, [$807e]                                  ; $57c4: $fa $7e $80
	ld   l, l                                        ; $57c7: $6d
	add  b                                           ; $57c8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57c9: $cf
	add  b                                           ; $57ca: $80
	rra                                              ; $57cb: $1f
	add  b                                           ; $57cc: $80
	dec  de                                          ; $57cd: $1b
	inc  bc                                          ; $57ce: $03
	add  sp, $23                                     ; $57cf: $e8 $23
	dec  de                                          ; $57d1: $1b
	jp   z, $0a80                                    ; $57d2: $ca $80 $0a

	inc  b                                           ; $57d5: $04
	ld   a, [hl+]                                    ; $57d6: $2a
	add  hl, bc                                      ; $57d7: $09
	adc  c                                           ; $57d8: $89
	adc  e                                           ; $57d9: $8b
	ld   e, d                                        ; $57da: $5a
	add  c                                           ; $57db: $81
	ld   e, $02                                      ; $57dc: $1e $02
	ld   a, h                                        ; $57de: $7c
	inc  e                                           ; $57df: $1c
	rlca                                             ; $57e0: $07
	add  c                                           ; $57e1: $81
	jp   $c704                                       ; $57e2: $c3 $04 $c7


	pop  bc                                          ; $57e5: $c1
	pop  de                                          ; $57e6: $d1
	pop  hl                                          ; $57e7: $e1
	ld   h, e                                        ; $57e8: $63
	add  c                                           ; $57e9: $81
	ld   h, b                                        ; $57ea: $60
	nop                                              ; $57eb: $00
	ld   h, c                                        ; $57ec: $61
	add  c                                           ; $57ed: $81
	ld   h, b                                        ; $57ee: $60
	ld   [$0f1f], sp                                 ; $57ef: $08 $1f $0f
	dec  b                                           ; $57f2: $05
	rrca                                             ; $57f3: $0f
	nop                                              ; $57f4: $00
	rrca                                             ; $57f5: $0f
	nop                                              ; $57f6: $00
	rrca                                             ; $57f7: $0f
	ld   a, [bc]                                     ; $57f8: $0a
	add  l                                           ; $57f9: $85
	rrca                                             ; $57fa: $0f
	db   $10                                         ; $57fb: $10
	db   $f4                                         ; $57fc: $f4
	rst  $38                                         ; $57fd: $ff
	pop  de                                          ; $57fe: $d1
	rst  $38                                         ; $57ff: $ff
	add  c                                           ; $5800: $81
	rst  $38                                         ; $5801: $ff
	ld   de, $11ff                                   ; $5802: $11 $ff $11
	rst  $38                                         ; $5805: $ff
	ld   d, c                                        ; $5806: $51
	rst  $38                                         ; $5807: $ff
	pop  af                                          ; $5808: $f1
	rst  $38                                         ; $5809: $ff
	pop  af                                          ; $580a: $f1
	rst  $38                                         ; $580b: $ff
	dec  sp                                          ; $580c: $3b
	add  c                                           ; $580d: $81
	add  b                                           ; $580e: $80
	nop                                              ; $580f: $00
	ret  nz                                          ; $5810: $c0

	add  c                                           ; $5811: $81
	nop                                              ; $5812: $00
	ld   [$8040], sp                                 ; $5813: $08 $40 $80
	add  c                                           ; $5816: $81
	add  b                                           ; $5817: $80
	ret  nz                                          ; $5818: $c0

	nop                                              ; $5819: $00
	ld   bc, $bf00                                   ; $581a: $01 $00 $bf
	add  c                                           ; $581d: $81
	nop                                              ; $581e: $00
	inc  b                                           ; $581f: $04
	ld   b, b                                        ; $5820: $40
	nop                                              ; $5821: $00
	inc  b                                           ; $5822: $04
	nop                                              ; $5823: $00
	add  c                                           ; $5824: $81
	add  c                                           ; $5825: $81
	nop                                              ; $5826: $00
	inc  b                                           ; $5827: $04
	ld   bc, $0800                                   ; $5828: $01 $00 $08
	nop                                              ; $582b: $00
	or   d                                           ; $582c: $b2
	add  c                                           ; $582d: $81
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	ret  nz                                          ; $5830: $c0

	add  c                                           ; $5831: $81
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	add  b                                           ; $5834: $80
	add  c                                           ; $5835: $81
	nop                                              ; $5836: $00
	nop                                              ; $5837: $00
	ld   bc, $0081                                   ; $5838: $01 $81 $00
	ld   bc, $0f31                                   ; $583b: $01 $31 $0f
	add  b                                           ; $583e: $80
	rlca                                             ; $583f: $07
	inc  b                                           ; $5840: $04
	ld   b, a                                        ; $5841: $47
	rlca                                             ; $5842: $07
	dec  bc                                          ; $5843: $0b

jr_09d_5844:
	inc  bc                                          ; $5844: $03
	sub  l                                           ; $5845: $95
	add  c                                           ; $5846: $81
	ld   bc, $2200                                   ; $5847: $01 $00 $22
	add  c                                           ; $584a: $81
	nop                                              ; $584b: $00
	jr   nz, jr_09d_5844                             ; $584c: $20 $f6

	db   $eb                                         ; $584e: $eb
	rst  $20                                         ; $584f: $e7
	push af                                          ; $5850: $f5
	rst  $10                                         ; $5851: $d7
	or   $e3                                         ; $5852: $f6 $e3
	ei                                               ; $5854: $fb
	ld   sp, hl                                      ; $5855: $f9
	db   $fd                                         ; $5856: $fd
	push af                                          ; $5857: $f5
	rst  $38                                         ; $5858: $ff
	cp   $ff                                         ; $5859: $fe $ff
	ei                                               ; $585b: $fb
	rst  $38                                         ; $585c: $ff
	ld   [hl], d                                     ; $585d: $72
	db   $fd                                         ; $585e: $fd
	or   l                                           ; $585f: $b5
	db   $fd                                         ; $5860: $fd
	ret  c                                           ; $5861: $d8

	cp   $ee                                         ; $5862: $fe $ee
	ld   a, [hl]                                     ; $5864: $7e
	db   $f4                                         ; $5865: $f4
	sbc  a                                           ; $5866: $9f
	ei                                               ; $5867: $fb
	rst  $28                                         ; $5868: $ef
	db   $fd                                         ; $5869: $fd
	di                                               ; $586a: $f3
	ccf                                              ; $586b: $3f
	db   $fc                                         ; $586c: $fc
	ld   b, b                                        ; $586d: $40
	add  c                                           ; $586e: $81
	rst  $28                                         ; $586f: $ef
	inc  e                                           ; $5870: $1c
	xor  h                                           ; $5871: $ac
	rst  $30                                         ; $5872: $f7
	push af                                          ; $5873: $f5
	rst  $30                                         ; $5874: $f7
	ld   d, a                                        ; $5875: $57
	ld   a, e                                        ; $5876: $7b
	ld   l, d                                        ; $5877: $6a
	ld   a, e                                        ; $5878: $7b
	inc  sp                                          ; $5879: $33
	cp   b                                           ; $587a: $b8
	and  a                                           ; $587b: $a7
	and  b                                           ; $587c: $a0
	add  h                                           ; $587d: $84
	ei                                               ; $587e: $fb
	ld   sp, hl                                      ; $587f: $f9
	db   $fd                                         ; $5880: $fd
	ld   a, l                                        ; $5881: $7d
	db   $fd                                         ; $5882: $fd
	adc  h                                           ; $5883: $8c
	db   $fc                                         ; $5884: $fc
	push af                                          ; $5885: $f5
	db   $fd                                         ; $5886: $fd
	ld   hl, sp-$02                                  ; $5887: $f8 $fe
	inc  e                                           ; $5889: $1c
	ld   e, $e0                                      ; $588a: $1e $e0

jr_09d_588c:
	nop                                              ; $588c: $00
	ld   [hl], b                                     ; $588d: $70
	add  c                                           ; $588e: $81
	sbc  a                                           ; $588f: $9f
	rlca                                             ; $5890: $07
	ld   c, a                                        ; $5891: $4f
	ld   e, a                                        ; $5892: $5f
	call c, $b3df                                    ; $5893: $dc $df $b3
	cp   a                                           ; $5896: $bf
	xor  a                                           ; $5897: $af
	cp   a                                           ; $5898: $bf
	add  b                                           ; $5899: $80
	cp   h                                           ; $589a: $bc
	inc  hl                                          ; $589b: $23
	ld   h, e                                        ; $589c: $63
	ld   h, b                                        ; $589d: $60
	ld   d, h                                        ; $589e: $54
	rst  $10                                         ; $589f: $d7
	call c, $a3df                                    ; $58a0: $dc $df $a3
	cp   a                                           ; $58a3: $bf

jr_09d_58a4:
	rra                                              ; $58a4: $1f
	cp   a                                           ; $58a5: $bf
	cp   [hl]                                        ; $58a6: $be
	cp   a                                           ; $58a7: $bf
	jr   nc, jr_09d_5928                             ; $58a8: $30 $7e

	ld   c, l                                        ; $58aa: $4d
	dec  a                                           ; $58ab: $3d
	ret  nz                                          ; $58ac: $c0

	ld   bc, $9cc5                                   ; $58ad: $01 $c5 $9c
	sub  h                                           ; $58b0: $94
	cp   h                                           ; $58b1: $bc
	xor  h                                           ; $58b2: $ac
	inc  a                                           ; $58b3: $3c
	ld   e, h                                        ; $58b4: $5c
	ld   a, [hl]                                     ; $58b5: $7e
	ld   a, d                                        ; $58b6: $7a
	ld   a, [hl]                                     ; $58b7: $7e
	or   $fe                                         ; $58b8: $f6 $fe
	adc  $f0                                         ; $58ba: $ce $f0
	inc  a                                           ; $58bc: $3c
	call z, $37f7                                    ; $58bd: $cc $f7 $37
	add  b                                           ; $58c0: $80
	daa                                              ; $58c1: $27
	add  b                                           ; $58c2: $80
	ld   c, a                                        ; $58c3: $4f
	add  d                                           ; $58c4: $82
	rrca                                             ; $58c5: $0f
	add  h                                           ; $58c6: $84
	rra                                              ; $58c7: $1f
	ld   a, [bc]                                     ; $58c8: $0a
	jp   $cfcc                                       ; $58c9: $c3 $cc $cf


	ret  z                                           ; $58cc: $c8

	cp   e                                           ; $58cd: $bb
	add  b                                           ; $58ce: $80
	adc  h                                           ; $58cf: $8c
	add  b                                           ; $58d0: $80
	cp   h                                           ; $58d1: $bc
	add  b                                           ; $58d2: $80
	jp   $c081                                       ; $58d3: $c3 $81 $c0


	add  b                                           ; $58d6: $80
	ldh  [rP1], a                                    ; $58d7: $e0 $00
	rst  $28                                         ; $58d9: $ef
	add  c                                           ; $58da: $81
	nop                                              ; $58db: $00
	inc  c                                           ; $58dc: $0c
	add  b                                           ; $58dd: $80
	nop                                              ; $58de: $00
	ld   hl, sp+$00                                  ; $58df: $f8 $00
	ld   l, h                                        ; $58e1: $6c
	nop                                              ; $58e2: $00
	ret  nz                                          ; $58e3: $c0

	nop                                              ; $58e4: $00
	ld   [hl], $00                                   ; $58e5: $36 $00
	inc  c                                           ; $58e7: $0c
	nop                                              ; $58e8: $00
	cp   $bd                                         ; $58e9: $fe $bd
	nop                                              ; $58eb: $00
	ld   d, $01                                      ; $58ec: $16 $01
	nop                                              ; $58ee: $00
	add  c                                           ; $58ef: $81
	nop                                              ; $58f0: $00
	ret  z                                           ; $58f1: $c8

	nop                                              ; $58f2: $00
	ld   l, h                                        ; $58f3: $6c
	nop                                              ; $58f4: $00
	ld   b, $00                                      ; $58f5: $06 $00
	jr   nc, jr_09d_58f9                             ; $58f7: $30 $00

jr_09d_58f9:
	inc  bc                                          ; $58f9: $03
	nop                                              ; $58fa: $00
	jr   jr_09d_58fd                                 ; $58fb: $18 $00

jr_09d_58fd:
	add  hl, bc                                      ; $58fd: $09
	nop                                              ; $58fe: $00
	add  b                                           ; $58ff: $80
	nop                                              ; $5900: $00
	ret  nz                                          ; $5901: $c0

	nop                                              ; $5902: $00
	ld   h, b                                        ; $5903: $60
	add  c                                           ; $5904: $81
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	jr   nc, jr_09d_588c                             ; $5907: $30 $83

	nop                                              ; $5909: $00
	nop                                              ; $590a: $00
	db   $10                                         ; $590b: $10
	sbc  l                                           ; $590c: $9d
	nop                                              ; $590d: $00
	db   $10                                         ; $590e: $10
	db   $fc                                         ; $590f: $fc
	ld   b, b                                        ; $5910: $40
	ld   d, d                                        ; $5911: $52
	ld   b, b                                        ; $5912: $40
	rlca                                             ; $5913: $07
	nop                                              ; $5914: $00
	adc  l                                           ; $5915: $8d
	add  b                                           ; $5916: $80
	add  c                                           ; $5917: $81
	nop                                              ; $5918: $00
	inc  bc                                          ; $5919: $03
	nop                                              ; $591a: $00
	ld   a, [bc]                                     ; $591b: $0a
	nop                                              ; $591c: $00
	inc  d                                           ; $591d: $14
	nop                                              ; $591e: $00
	jr   c, jr_09d_58a4                              ; $591f: $38 $83

	nop                                              ; $5921: $00
	ld   [bc], a                                     ; $5922: $02
	add  b                                           ; $5923: $80
	nop                                              ; $5924: $00
	add  b                                           ; $5925: $80
	add  l                                           ; $5926: $85
	nop                                              ; $5927: $00

jr_09d_5928:
	add  b                                           ; $5928: $80
	ld   a, [hl+]                                    ; $5929: $2a
	add  b                                           ; $592a: $80
	dec  b                                           ; $592b: $05
	add  b                                           ; $592c: $80
	dec  hl                                          ; $592d: $2b
	add  b                                           ; $592e: $80
	dec  b                                           ; $592f: $05

jr_09d_5930:
	add  b                                           ; $5930: $80
	dec  hl                                          ; $5931: $2b
	add  b                                           ; $5932: $80
	rla                                              ; $5933: $17
	add  b                                           ; $5934: $80
	dec  hl                                          ; $5935: $2b
	add  b                                           ; $5936: $80
	rla                                              ; $5937: $17
	add  d                                           ; $5938: $82
	ldh  a, [$0d]                                    ; $5939: $f0 $0d
	ldh  [$f0], a                                    ; $593b: $e0 $f0
	ret  nz                                          ; $593d: $c0

	ldh  a, [$c0]                                    ; $593e: $f0 $c0
	ldh  a, [$c0]                                    ; $5940: $f0 $c0
	ldh  a, [$c0]                                    ; $5942: $f0 $c0
	ldh  a, [$c0]                                    ; $5944: $f0 $c0
	ldh  a, [$88]                                    ; $5946: $f0 $88
	xor  b                                           ; $5948: $a8
	add  b                                           ; $5949: $80
	ld   d, l                                        ; $594a: $55
	add  b                                           ; $594b: $80
	xor  d                                           ; $594c: $aa
	add  b                                           ; $594d: $80
	ld   d, a                                        ; $594e: $57
	add  hl, bc                                      ; $594f: $09
	cp   a                                           ; $5950: $bf
	rst  $38                                         ; $5951: $ff
	sbc  a                                           ; $5952: $9f
	ccf                                              ; $5953: $3f
	sbc  $03                                         ; $5954: $de $03
	ld   a, $00                                      ; $5956: $3e $00
	xor  b                                           ; $5958: $a8
	xor  e                                           ; $5959: $ab
	add  b                                           ; $595a: $80
	ld   d, a                                        ; $595b: $57
	add  b                                           ; $595c: $80
	xor  a                                           ; $595d: $af
	add  b                                           ; $595e: $80
	rst  $38                                         ; $595f: $ff
	add  hl, bc                                      ; $5960: $09
	cp   $ff                                         ; $5961: $fe $ff
	db   $f4                                         ; $5963: $f4
	rst  $38                                         ; $5964: $ff
	and  b                                           ; $5965: $a0
	rst  $38                                         ; $5966: $ff
	add  l                                           ; $5967: $85
	ld   a, a                                        ; $5968: $7f
	ld   d, c                                        ; $5969: $51
	cp   $80                                         ; $596a: $fe $80
	rst  $38                                         ; $596c: $ff
	add  b                                           ; $596d: $80
	cp   $0b                                         ; $596e: $fe $0b
	rst  JumpTable                                         ; $5970: $df
	rst  $38                                         ; $5971: $ff
	sbc  [hl]                                        ; $5972: $9e
	cp   $1f                                         ; $5973: $fe $1f
	rst  $38                                         ; $5975: $ff
	ld   e, $fe                                      ; $5976: $1e $fe
	rra                                              ; $5978: $1f
	rst  $38                                         ; $5979: $ff
	nop                                              ; $597a: $00
	and  b                                           ; $597b: $a0
	add  b                                           ; $597c: $80
	ld   b, b                                        ; $597d: $40
	add  b                                           ; $597e: $80
	add  b                                           ; $597f: $80
	add  b                                           ; $5980: $80
	ld   b, b                                        ; $5981: $40
	add  b                                           ; $5982: $80
	add  b                                           ; $5983: $80
	add  b                                           ; $5984: $80
	ld   b, b                                        ; $5985: $40
	add  b                                           ; $5986: $80
	add  b                                           ; $5987: $80
	add  b                                           ; $5988: $80
	ld   b, b                                        ; $5989: $40

jr_09d_598a:
	add  [hl]                                        ; $598a: $86
	nop                                              ; $598b: $00
	ld   [$00e0], sp                                 ; $598c: $08 $e0 $00
	ld   hl, sp+$00                                  ; $598f: $f8 $00
	sbc  h                                           ; $5991: $9c
	nop                                              ; $5992: $00
	add  [hl]                                        ; $5993: $86
	nop                                              ; $5994: $00
	ld   [bc], a                                     ; $5995: $02
	xor  l                                           ; $5996: $ad
	nop                                              ; $5997: $00
	nop                                              ; $5998: $00
	adc  c                                           ; $5999: $89
	add  e                                           ; $599a: $83
	nop                                              ; $599b: $00
	inc  c                                           ; $599c: $0c
	jr   jr_09d_599f                                 ; $599d: $18 $00

jr_09d_599f:
	ld   [bc], a                                     ; $599f: $02
	nop                                              ; $59a0: $00
	ld   hl, $5000                                   ; $59a1: $21 $00 $50
	nop                                              ; $59a4: $00
	add  a                                           ; $59a5: $87
	nop                                              ; $59a6: $00
	ld   [hl], l                                     ; $59a7: $75
	nop                                              ; $59a8: $00
	add  b                                           ; $59a9: $80
	add  c                                           ; $59aa: $81
	nop                                              ; $59ab: $00
	nop                                              ; $59ac: $00
	jr   nc, jr_09d_5930                             ; $59ad: $30 $81

	nop                                              ; $59af: $00
	inc  b                                           ; $59b0: $04
	ld   h, b                                        ; $59b1: $60
	nop                                              ; $59b2: $00
	ld   b, b                                        ; $59b3: $40
	nop                                              ; $59b4: $00
	add  b                                           ; $59b5: $80
	adc  c                                           ; $59b6: $89
	nop                                              ; $59b7: $00
	add  b                                           ; $59b8: $80
	ld   bc, $0a80                                   ; $59b9: $01 $80 $0a
	add  b                                           ; $59bc: $80
	ld   bc, $0082                                   ; $59bd: $01 $82 $00
	add  b                                           ; $59c0: $80
	jr   nz, @-$7e                                   ; $59c1: $20 $80

	ld   d, b                                        ; $59c3: $50
	add  b                                           ; $59c4: $80
	jr   nz, @-$7e                                   ; $59c5: $20 $80

	ld   d, b                                        ; $59c7: $50
	add  b                                           ; $59c8: $80
	or   b                                           ; $59c9: $b0
	add  b                                           ; $59ca: $80
	ld   [hl], b                                     ; $59cb: $70
	ld   bc, $0020                                   ; $59cc: $01 $20 $00
	add  b                                           ; $59cf: $80
	ld   b, b                                        ; $59d0: $40
	ld   bc, $0060                                   ; $59d1: $01 $60 $00
	add  b                                           ; $59d4: $80
	add  b                                           ; $59d5: $80
	ld   [bc], a                                     ; $59d6: $02
	ret  nz                                          ; $59d7: $c0

	nop                                              ; $59d8: $00
	add  b                                           ; $59d9: $80
	add  a                                           ; $59da: $87
	nop                                              ; $59db: $00
	add  b                                           ; $59dc: $80
	ld   [bc], a                                     ; $59dd: $02
	add  b                                           ; $59de: $80
	ld   bc, $2880                                   ; $59df: $01 $80 $28
	add  b                                           ; $59e2: $80
	dec  b                                           ; $59e3: $05
	add  b                                           ; $59e4: $80
	xor  d                                           ; $59e5: $aa
	add  b                                           ; $59e6: $80
	ld   d, l                                        ; $59e7: $55
	add  b                                           ; $59e8: $80
	xor  a                                           ; $59e9: $af
	add  b                                           ; $59ea: $80
	ld   d, a                                        ; $59eb: $57
	add  b                                           ; $59ec: $80
	xor  a                                           ; $59ed: $af
	add  b                                           ; $59ee: $80
	ld   e, a                                        ; $59ef: $5f
	add  b                                           ; $59f0: $80
	cp   a                                           ; $59f1: $bf
	add  b                                           ; $59f2: $80
	ld   a, a                                        ; $59f3: $7f
	add  b                                           ; $59f4: $80
	cp   [hl]                                        ; $59f5: $be
	add  b                                           ; $59f6: $80
	ld   a, a                                        ; $59f7: $7f
	add  [hl]                                        ; $59f8: $86
	ldh  a, [$80]                                    ; $59f9: $f0 $80
	and  b                                           ; $59fb: $a0
	add  b                                           ; $59fc: $80
	ld   d, b                                        ; $59fd: $50
	add  b                                           ; $59fe: $80
	and  b                                           ; $59ff: $a0
	add  b                                           ; $5a00: $80
	ld   d, b                                        ; $5a01: $50
	ld   [bc], a                                     ; $5a02: $02
	ld   b, b                                        ; $5a03: $40
	cp   b                                           ; $5a04: $b8
	jr   c, jr_09d_598a                              ; $5a05: $38 $83

	ccf                                              ; $5a07: $3f
	db   $10                                         ; $5a08: $10
	rra                                              ; $5a09: $1f
	sbc  a                                           ; $5a0a: $9f
	and  a                                           ; $5a0b: $a7
	rst  ToBoot                                         ; $5a0c: $c7
	ld   sp, hl                                      ; $5a0d: $f9
	pop  hl                                          ; $5a0e: $e1
	or   $f0                                         ; $5a0f: $f6 $f0
	ld   a, [hl]                                     ; $5a11: $7e
	rra                                              ; $5a12: $1f
	ld   a, a                                        ; $5a13: $7f
	rlca                                             ; $5a14: $07
	rra                                              ; $5a15: $1f
	jp   $f1c7                                       ; $5a16: $c3 $c7 $f1


	di                                               ; $5a19: $f3
	add  d                                           ; $5a1a: $82
	ld   hl, sp-$7f                                  ; $5a1b: $f8 $81
	db   $fc                                         ; $5a1d: $fc
	ld   de, $fec3                                   ; $5a1e: $11 $c3 $fe
	rst  JumpTable                                         ; $5a21: $df
	rst  $38                                         ; $5a22: $ff
	adc  $fe                                         ; $5a23: $ce $fe
	adc  a                                           ; $5a25: $8f
	rst  $38                                         ; $5a26: $ff
	adc  [hl]                                        ; $5a27: $8e
	cp   $8f                                         ; $5a28: $fe $8f
	rst  $38                                         ; $5a2a: $ff
	rrca                                             ; $5a2b: $0f
	rst  $38                                         ; $5a2c: $ff
	ld   b, a                                        ; $5a2d: $47
	rst  $38                                         ; $5a2e: $ff
	ld   l, b                                        ; $5a2f: $68
	add  b                                           ; $5a30: $80
	add  b                                           ; $5a31: $80
	ld   d, b                                        ; $5a32: $50
	add  b                                           ; $5a33: $80
	and  b                                           ; $5a34: $a0
	add  b                                           ; $5a35: $80
	ld   d, b                                        ; $5a36: $50
	add  b                                           ; $5a37: $80
	and  b                                           ; $5a38: $a0
	add  b                                           ; $5a39: $80
	ld   d, b                                        ; $5a3a: $50
	add  b                                           ; $5a3b: $80
	and  b                                           ; $5a3c: $a0
	add  b                                           ; $5a3d: $80
	ldh  a, [$03]                                    ; $5a3e: $f0 $03
	ld   hl, sp+$78                                  ; $5a40: $f8 $78
	ld   a, h                                        ; $5a42: $7c
	db   $fc                                         ; $5a43: $fc
	add  b                                           ; $5a44: $80
	cp   $06                                         ; $5a45: $fe $06
	cp   a                                           ; $5a47: $bf
	cp   [hl]                                        ; $5a48: $be
	sbc  $dd                                         ; $5a49: $de $dd
	call $e4cc                                       ; $5a4b: $cd $cc $e4
	add  c                                           ; $5a4e: $81
	ld   h, h                                        ; $5a4f: $64
	ld   [bc], a                                     ; $5a50: $02
	ld   bc, $bc7c                                   ; $5a51: $01 $7c $bc
	add  c                                           ; $5a54: $81
	inc  a                                           ; $5a55: $3c
	ld   bc, $3bba                                   ; $5a56: $01 $ba $3b
	add  b                                           ; $5a59: $80
	ld   l, e                                        ; $5a5a: $6b
	add  b                                           ; $5a5b: $80
	daa                                              ; $5a5c: $27
	add  b                                           ; $5a5d: $80
	inc  bc                                          ; $5a5e: $03
	add  b                                           ; $5a5f: $80
	pop  bc                                          ; $5a60: $c1
	db   $10                                         ; $5a61: $10
	ld   d, h                                        ; $5a62: $54
	ld   a, a                                        ; $5a63: $7f
	ld   d, c                                        ; $5a64: $51
	ld   a, a                                        ; $5a65: $7f
	ld   [hl], b                                     ; $5a66: $70
	ld   a, a                                        ; $5a67: $7f
	ld   [hl], b                                     ; $5a68: $70
	ld   a, a                                        ; $5a69: $7f
	ld   a, d                                        ; $5a6a: $7a
	ld   a, a                                        ; $5a6b: $7f
	ccf                                              ; $5a6c: $3f
	ld   a, a                                        ; $5a6d: $7f
	rra                                              ; $5a6e: $1f
	ld   a, a                                        ; $5a6f: $7f
	adc  a                                           ; $5a70: $8f
	ccf                                              ; $5a71: $3f
	sbc  a                                           ; $5a72: $9f
	add  e                                           ; $5a73: $83
	ldh  a, [rAUD2HIGH]                              ; $5a74: $f0 $19
	ld   d, b                                        ; $5a76: $50
	ldh  a, [rP1]                                    ; $5a77: $f0 $00
	ldh  a, [rP1]                                    ; $5a79: $f0 $00
	ldh  a, [rP1]                                    ; $5a7b: $f0 $00
	ldh  a, [$50]                                    ; $5a7d: $f0 $50
	ldh  a, [$8d]                                    ; $5a7f: $f0 $8d
	jr   nc, jr_09d_5ac0                             ; $5a81: $30 $3d

	jr   nz, jr_09d_5ab8                             ; $5a83: $20 $33

	nop                                              ; $5a85: $00
	ld   l, h                                        ; $5a86: $6c
	nop                                              ; $5a87: $00
	stop                                             ; $5a88: $10 $00
	jr   nz, jr_09d_5a8c                             ; $5a8a: $20 $00

jr_09d_5a8c:
	ld   b, b                                        ; $5a8c: $40
	nop                                              ; $5a8d: $00
	add  b                                           ; $5a8e: $80
	nop                                              ; $5a8f: $00
	add  b                                           ; $5a90: $80
	ldh  [$81], a                                    ; $5a91: $e0 $81
	ld   [hl], e                                     ; $5a93: $73
	ld   [bc], a                                     ; $5a94: $02
	ld   h, e                                        ; $5a95: $63
	dec  hl                                          ; $5a96: $2b
	inc  sp                                          ; $5a97: $33
	add  b                                           ; $5a98: $80
	ld   sp, $3500                                   ; $5a99: $31 $00 $35
	add  c                                           ; $5a9c: $81
	add  hl, sp                                      ; $5a9d: $39
	add  b                                           ; $5a9e: $80
	ld   a, b                                        ; $5a9f: $78
	db   $10                                         ; $5aa0: $10
	sub  e                                           ; $5aa1: $93
	ccf                                              ; $5aa2: $3f
	and  e                                           ; $5aa3: $a3
	ccf                                              ; $5aa4: $3f
	and  e                                           ; $5aa5: $a3
	ccf                                              ; $5aa6: $3f
	ld   h, e                                        ; $5aa7: $63
	rra                                              ; $5aa8: $1f
	ld   de, $311f                                   ; $5aa9: $11 $1f $31
	rrca                                             ; $5aac: $0f
	ld   bc, $190f                                   ; $5aad: $01 $0f $19
	rlca                                             ; $5ab0: $07
	dec  bc                                          ; $5ab1: $0b

jr_09d_5ab2:
	adc  [hl]                                        ; $5ab2: $8e
	ldh  a, [rIE]                                    ; $5ab3: $f0 $ff
	nop                                              ; $5ab5: $00
	rst  $38                                         ; $5ab6: $ff
	nop                                              ; $5ab7: $00

jr_09d_5ab8:
	rst  $38                                         ; $5ab8: $ff
	nop                                              ; $5ab9: $00
	rst  $38                                         ; $5aba: $ff
	nop                                              ; $5abb: $00
	rst  $38                                         ; $5abc: $ff
	nop                                              ; $5abd: $00
	rst  $38                                         ; $5abe: $ff
	nop                                              ; $5abf: $00

jr_09d_5ac0:
	rst  $30                                         ; $5ac0: $f7
	nop                                              ; $5ac1: $00
	jr   jr_09d_5ac5                                 ; $5ac2: $18 $01

	adc  b                                           ; $5ac4: $88

jr_09d_5ac5:
	nop                                              ; $5ac5: $00
	ld   d, $be                                      ; $5ac6: $16 $be
	nop                                              ; $5ac8: $00
	pop  bc                                          ; $5ac9: $c1
	ld   a, [hl-]                                    ; $5aca: $3a
	add  hl, bc                                      ; $5acb: $09
	scf                                              ; $5acc: $37
	inc  b                                           ; $5acd: $04
	scf                                              ; $5ace: $37
	ld   [hl], a                                     ; $5acf: $77
	nop                                              ; $5ad0: $00
	jr   nz, jr_09d_5ad3                             ; $5ad1: $20 $00

jr_09d_5ad3:
	add  [hl]                                        ; $5ad3: $86
	nop                                              ; $5ad4: $00
	ld   de, $4400                                   ; $5ad5: $11 $00 $44
	nop                                              ; $5ad8: $00
	ld   [$2200], sp                                 ; $5ad9: $08 $00 $22
	nop                                              ; $5adc: $00
	and  $89                                         ; $5add: $e6 $89
	nop                                              ; $5adf: $00
	ld   [$00f0], sp                                 ; $5ae0: $08 $f0 $00
	rrca                                             ; $5ae3: $0f
	ldh  a, [rP1]                                    ; $5ae4: $f0 $00
	rst  $38                                         ; $5ae6: $ff
	nop                                              ; $5ae7: $00
	rst  $38                                         ; $5ae8: $ff
	ldh  a, [$80]                                    ; $5ae9: $f0 $80
	rrca                                             ; $5aeb: $0f
	inc  bc                                          ; $5aec: $03
	nop                                              ; $5aed: $00
	ldh  a, [rP1]                                    ; $5aee: $f0 $00
	rrca                                             ; $5af0: $0f
	sub  c                                           ; $5af1: $91
	nop                                              ; $5af2: $00
	ld   [$0080], sp                                 ; $5af3: $08 $80 $00
	ld   a, h                                        ; $5af6: $7c
	add  b                                           ; $5af7: $80
	ld   [bc], a                                     ; $5af8: $02
	ld   hl, sp+$02                                  ; $5af9: $f8 $02
	ld   hl, sp-$80                                  ; $5afb: $f8 $80
	add  b                                           ; $5afd: $80
	ld   a, b                                        ; $5afe: $78
	rla                                              ; $5aff: $17
	nop                                              ; $5b00: $00
	add  b                                           ; $5b01: $80
	nop                                              ; $5b02: $00
	ld   d, h                                        ; $5b03: $54
	nop                                              ; $5b04: $00
	ld   [$9800], sp                                 ; $5b05: $08 $00 $98
	ld   [hl], b                                     ; $5b08: $70
	sub  b                                           ; $5b09: $90
	or   b                                           ; $5b0a: $b0
	inc  [hl]                                        ; $5b0b: $34
	jr   c, @+$4a                                    ; $5b0c: $38 $48

	jr   jr_09d_5ab2                                 ; $5b0e: $18 $a2

	inc  c                                           ; $5b10: $0c
	ld   de, $3206                                   ; $5b11: $11 $06 $32
	nop                                              ; $5b14: $00
	ld   c, e                                        ; $5b15: $4b
	nop                                              ; $5b16: $00
	ld   [hl], h                                     ; $5b17: $74
	sbc  l                                           ; $5b18: $9d

jr_09d_5b19:
	nop                                              ; $5b19: $00
	ld   a, [bc]                                     ; $5b1a: $0a
	rst  $10                                         ; $5b1b: $d7
	xor  a                                           ; $5b1c: $af
	and  l                                           ; $5b1d: $a5
	xor  [hl]                                        ; $5b1e: $ae
	pop  de                                          ; $5b1f: $d1
	ld   e, l                                        ; $5b20: $5d
	and  c                                           ; $5b21: $a1
	nop                                              ; $5b22: $00
	ld   e, d                                        ; $5b23: $5a

jr_09d_5b24:
	nop                                              ; $5b24: $00
	inc  c                                           ; $5b25: $0c
	add  c                                           ; $5b26: $81
	nop                                              ; $5b27: $00
	ld   a, [bc]                                     ; $5b28: $0a
	jr   jr_09d_5b2b                                 ; $5b29: $18 $00

jr_09d_5b2b:
	stop                                             ; $5b2b: $10 $00
	inc  bc                                          ; $5b2d: $03
	nop                                              ; $5b2e: $00
	inc  c                                           ; $5b2f: $0c
	inc  bc                                          ; $5b30: $03
	inc  sp                                          ; $5b31: $33
	rrca                                             ; $5b32: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b33: $cf

jr_09d_5b34:
	add  b                                           ; $5b34: $80
	ccf                                              ; $5b35: $3f
	add  b                                           ; $5b36: $80
	rst  $38                                         ; $5b37: $ff
	add  b                                           ; $5b38: $80
	ei                                               ; $5b39: $fb
	ld   bc, $48b7                                   ; $5b3a: $01 $b7 $48
	adc  l                                           ; $5b3d: $8d
	nop                                              ; $5b3e: $00
	ld   [bc], a                                     ; $5b3f: $02
	rra                                              ; $5b40: $1f
	rlca                                             ; $5b41: $07
	rst  $20                                         ; $5b42: $e7
	add  b                                           ; $5b43: $80
	inc  e                                           ; $5b44: $1c
	dec  b                                           ; $5b45: $05
	sbc  e                                           ; $5b46: $9b
	or   h                                           ; $5b47: $b4
	rst  $28                                         ; $5b48: $ef
	ret                                              ; $5b49: $c9


	ld   sp, hl                                      ; $5b4a: $f9
	ldh  a, [$80]                                    ; $5b4b: $f0 $80
	db   $fc                                         ; $5b4d: $fc
	add  c                                           ; $5b4e: $81
	db   $fd                                         ; $5b4f: $fd
	nop                                              ; $5b50: $00
	ld   [bc], a                                     ; $5b51: $02
	adc  l                                           ; $5b52: $8d
	nop                                              ; $5b53: $00
	ld   [$00c0], sp                                 ; $5b54: $08 $c0 $00
	jr   nz, jr_09d_5b19                             ; $5b57: $20 $c0

	ret  nc                                          ; $5b59: $d0

	ldh  [$ec], a                                    ; $5b5a: $e0 $ec
	nop                                              ; $5b5c: $00
	inc  bc                                          ; $5b5d: $03
	add  b                                           ; $5b5e: $80
	db   $fc                                         ; $5b5f: $fc
	add  d                                           ; $5b60: $82
	rst  $38                                         ; $5b61: $ff
	ld   bc, $02fd                                   ; $5b62: $01 $fd $02
	adc  l                                           ; $5b65: $8d
	nop                                              ; $5b66: $00
	ld   bc, $014a                   ; $5b67: $01 $4a $01
	add  b                                           ; $5b6a: $80
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	sbc  $80                                         ; $5b6d: $de $80
	inc  bc                                          ; $5b6f: $03
	ld   [bc], a                                     ; $5b70: $02
	ld   [bc], a                                     ; $5b71: $02

jr_09d_5b72:
	inc  c                                           ; $5b72: $0c
	inc  b                                           ; $5b73: $04
	add  h                                           ; $5b74: $84
	rlca                                             ; $5b75: $07
	ld   [de], a                                     ; $5b76: $12
	rla                                              ; $5b77: $17
	rlca                                             ; $5b78: $07
	rst  ToBoot                                         ; $5b79: $c7
	rlca                                             ; $5b7a: $07
	adc  e                                           ; $5b7b: $8b
	inc  bc                                          ; $5b7c: $03
	ld   h, e                                        ; $5b7d: $63
	inc  bc                                          ; $5b7e: $03
	or   l                                           ; $5b7f: $b5
	ld   bc, $001a                                   ; $5b80: $01 $1a $00
	ld   [hl], $00                                   ; $5b83: $36 $00
	ld   c, e                                        ; $5b85: $4b
	inc  bc                                          ; $5b86: $03
	or   [hl]                                        ; $5b87: $b6
	add  b                                           ; $5b88: $80
	add  c                                           ; $5b89: $81
	add  c                                           ; $5b8a: $81
	add  b                                           ; $5b8b: $80
	nop                                              ; $5b8c: $00
	add  sp, -$7f                                    ; $5b8d: $e8 $81
	ret  nz                                          ; $5b8f: $c0

	nop                                              ; $5b90: $00
	cp   h                                           ; $5b91: $bc
	add  e                                           ; $5b92: $83
	ldh  [rSC], a                                    ; $5b93: $e0 $02
	cp   $f0                                         ; $5b95: $fe $f0
	ret  nc                                          ; $5b97: $d0

	add  b                                           ; $5b98: $80
	ldh  a, [rSC]                                    ; $5b99: $f0 $02
	ld   [hl], b                                     ; $5b9b: $70
	ldh  a, [$b0]                                    ; $5b9c: $f0 $b0
	add  b                                           ; $5b9e: $80
	ldh  a, [rP1]                                    ; $5b9f: $f0 $00
	jr   nc, jr_09d_5b24                             ; $5ba1: $30 $81

	ldh  a, [$0b]                                    ; $5ba3: $f0 $0b
	ret  nc                                          ; $5ba5: $d0

	ldh  a, [rAUD3ENA]                               ; $5ba6: $f0 $1a
	nop                                              ; $5ba8: $00
	ld   h, b                                        ; $5ba9: $60
	nop                                              ; $5baa: $00
	and  b                                           ; $5bab: $a0
	nop                                              ; $5bac: $00
	ret  nc                                          ; $5bad: $d0

	ldh  [$08], a                                    ; $5bae: $e0 $08
	jr   nc, jr_09d_5b34                             ; $5bb0: $30 $82

	db   $10                                         ; $5bb2: $10
	inc  b                                           ; $5bb3: $04
	inc  b                                           ; $5bb4: $04
	jr   c, jr_09d_5bcf                              ; $5bb5: $38 $18

	ld   hl, sp+$38                                  ; $5bb7: $f8 $38
	add  e                                           ; $5bb9: $83
	ld   hl, sp+$08                                  ; $5bba: $f8 $08
	ld   a, [$e9f8]                                  ; $5bbc: $fa $f8 $e9
	ld   a, [$f7fc]                                  ; $5bbf: $fa $fc $f7
	sub  $f7                                         ; $5bc2: $d6 $f7
	ldh  a, [$84]                                    ; $5bc4: $f0 $84
	rlca                                             ; $5bc6: $07
	ld   bc, $2000                                   ; $5bc7: $01 $00 $20
	add  c                                           ; $5bca: $81
	nop                                              ; $5bcb: $00
	ld   b, $10                                      ; $5bcc: $06 $10
	nop                                              ; $5bce: $00

jr_09d_5bcf:
	ld   [$0400], sp                                 ; $5bcf: $08 $00 $04
	nop                                              ; $5bd2: $00
	inc  bc                                          ; $5bd3: $03
	adc  e                                           ; $5bd4: $8b
	nop                                              ; $5bd5: $00
	nop                                              ; $5bd6: $00
	rst  $38                                         ; $5bd7: $ff
	add  b                                           ; $5bd8: $80
	pop  af                                          ; $5bd9: $f1
	add  b                                           ; $5bda: $80
	db   $fc                                         ; $5bdb: $fc
	add  d                                           ; $5bdc: $82
	cp   $80                                         ; $5bdd: $fe $80
	inc  e                                           ; $5bdf: $1c
	add  b                                           ; $5be0: $80
	ld   bc, $0380                                   ; $5be1: $01 $80 $03
	add  b                                           ; $5be4: $80
	ld   bc, $0081                                   ; $5be5: $01 $81 $00
	rlca                                             ; $5be8: $07
	add  b                                           ; $5be9: $80
	nop                                              ; $5bea: $00
	ld   b, b                                        ; $5beb: $40
	nop                                              ; $5bec: $00
	ld   b, b                                        ; $5bed: $40
	nop                                              ; $5bee: $00
	sbc  b                                           ; $5bef: $98
	jr   jr_09d_5b72                                 ; $5bf0: $18 $80

	ld   e, $84                                      ; $5bf2: $1e $84
	rra                                              ; $5bf4: $1f
	ld   bc, $1f9f                                   ; $5bf5: $01 $9f $1f
	adc  [hl]                                        ; $5bf8: $8e
	rrca                                             ; $5bf9: $0f
	dec  b                                           ; $5bfa: $05
	ld   c, a                                        ; $5bfb: $4f
	rrca                                             ; $5bfc: $0f
	daa                                              ; $5bfd: $27
	rlca                                             ; $5bfe: $07
	inc  de                                          ; $5bff: $13
	inc  bc                                          ; $5c00: $03
	add  b                                           ; $5c01: $80
	inc  b                                           ; $5c02: $04
	add  b                                           ; $5c03: $80
	rlca                                             ; $5c04: $07
	nop                                              ; $5c05: $00
	ldh  a, [$80]                                    ; $5c06: $f0 $80
	ld   b, $80                                      ; $5c08: $06 $80
	ld   c, a                                        ; $5c0a: $4f
	add  b                                           ; $5c0b: $80
	ld   a, a                                        ; $5c0c: $7f
	add  d                                           ; $5c0d: $82
	rst  $38                                         ; $5c0e: $ff
	add  b                                           ; $5c0f: $80
	cp   $80                                         ; $5c10: $fe $80
	db   $fc                                         ; $5c12: $fc
	ld   bc, $07f8                                   ; $5c13: $01 $f8 $07
	adc  l                                           ; $5c16: $8d
	nop                                              ; $5c17: $00
	nop                                              ; $5c18: $00
	ld   hl, sp-$80                                  ; $5c19: $f8 $80
	ldh  [$03], a                                    ; $5c1b: $e0 $03
	db   $10                                         ; $5c1d: $10
	inc  de                                          ; $5c1e: $13
	ldh  a, [$f4]                                    ; $5c1f: $f0 $f4
	add  d                                           ; $5c21: $82
	ldh  a, [rSC]                                    ; $5c22: $f0 $02
	ld   [hl], b                                     ; $5c24: $70
	ld   [hl], e                                     ; $5c25: $73
	inc  bc                                          ; $5c26: $03
	add  b                                           ; $5c27: $80
	dec  bc                                          ; $5c28: $0b
	nop                                              ; $5c29: $00
	rst  $38                                         ; $5c2a: $ff
	sub  c                                           ; $5c2b: $91
	nop                                              ; $5c2c: $00
	nop                                              ; $5c2d: $00

jr_09d_5c2e:
	ld   bc, $0083                                   ; $5c2e: $01 $83 $00
	nop                                              ; $5c31: $00
	ld   [bc], a                                     ; $5c32: $02
	add  c                                           ; $5c33: $81
	nop                                              ; $5c34: $00
	inc  b                                           ; $5c35: $04
	inc  c                                           ; $5c36: $0c
	nop                                              ; $5c37: $00
	jr   nc, jr_09d_5c3a                             ; $5c38: $30 $00

jr_09d_5c3a:
	ret  nz                                          ; $5c3a: $c0

	add  e                                           ; $5c3b: $83
	nop                                              ; $5c3c: $00
	add  b                                           ; $5c3d: $80
	rlca                                             ; $5c3e: $07
	add  b                                           ; $5c3f: $80
	rra                                              ; $5c40: $1f
	add  b                                           ; $5c41: $80
	ld   a, a                                        ; $5c42: $7f
	add  c                                           ; $5c43: $81
	rst  $38                                         ; $5c44: $ff
	add  a                                           ; $5c45: $87
	nop                                              ; $5c46: $00
	inc  c                                           ; $5c47: $0c
	add  b                                           ; $5c48: $80
	nop                                              ; $5c49: $00
	ld   h, b                                        ; $5c4a: $60
	add  b                                           ; $5c4b: $80
	jr   jr_09d_5c2e                                 ; $5c4c: $18 $e0

	add  h                                           ; $5c4e: $84
	ld   hl, sp-$16                                  ; $5c4f: $f8 $ea
	db   $fc                                         ; $5c51: $fc
	push af                                          ; $5c52: $f5
	cp   $fa                                         ; $5c53: $fe $fa
	add  b                                           ; $5c55: $80
	cp   $01                                         ; $5c56: $fe $01
	rst  $38                                         ; $5c58: $ff
	db   $fd                                         ; $5c59: $fd
	add  e                                           ; $5c5a: $83
	rst  $38                                         ; $5c5b: $ff
	nop                                              ; $5c5c: $00
	cp   $95                                         ; $5c5d: $fe $95
	nop                                              ; $5c5f: $00
	nop                                              ; $5c60: $00
	add  b                                           ; $5c61: $80

jr_09d_5c62:
	add  e                                           ; $5c62: $83
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	ld   b, b                                        ; $5c65: $40
	adc  c                                           ; $5c66: $89
	add  b                                           ; $5c67: $80
	ld   [bc], a                                     ; $5c68: $02
	and  b                                           ; $5c69: $a0
	ret  nz                                          ; $5c6a: $c0

	ld   b, b                                        ; $5c6b: $40
	add  a                                           ; $5c6c: $87
	ret  nz                                          ; $5c6d: $c0

	ld   [bc], a                                     ; $5c6e: $02
	ret  nc                                          ; $5c6f: $d0

	ldh  [hScriptOpcodeParams], a                                    ; $5c70: $e0 $a0
	add  c                                           ; $5c72: $81
	ldh  [$80], a                                    ; $5c73: $e0 $80
	ld   h, b                                        ; $5c75: $60
	add  b                                           ; $5c76: $80
	and  b                                           ; $5c77: $a0
	nop                                              ; $5c78: $00
	ret  nc                                          ; $5c79: $d0

	add  a                                           ; $5c7a: $87
	nop                                              ; $5c7b: $00
	inc  b                                           ; $5c7c: $04
	ld   [hl], a                                     ; $5c7d: $77
	nop                                              ; $5c7e: $00
	adc  a                                           ; $5c7f: $8f
	ld   [hl], b                                     ; $5c80: $70
	ld   [hl], c                                     ; $5c81: $71
	add  c                                           ; $5c82: $81
	ld   [hl], b                                     ; $5c83: $70
	nop                                              ; $5c84: $00
	halt                                             ; $5c85: $76
	add  b                                           ; $5c86: $80
	ld   a, b                                        ; $5c87: $78
	ld   bc, $9c1c                                   ; $5c88: $01 $1c $9c
	add  b                                           ; $5c8b: $80
	inc  c                                           ; $5c8c: $0c
	add  b                                           ; $5c8d: $80
	ld   c, $01                                      ; $5c8e: $0e $01
	ld   b, $46                                      ; $5c90: $06 $46
	add  b                                           ; $5c92: $80
	rlca                                             ; $5c93: $07
	ld   bc, $3c03                                   ; $5c94: $01 $03 $3c
	adc  l                                           ; $5c97: $8d
	nop                                              ; $5c98: $00
	inc  b                                           ; $5c99: $04
	ld   hl, sp+$00                                  ; $5c9a: $f8 $00
	or   $00                                         ; $5c9c: $f6 $00
	ld   bc, $0681                                   ; $5c9e: $01 $81 $06
	nop                                              ; $5ca1: $00
	or   $81                                         ; $5ca2: $f6 $81
	ld   b, $00                                      ; $5ca4: $06 $00
	add  [hl]                                        ; $5ca6: $86
	add  b                                           ; $5ca7: $80
	ld   l, $07                                      ; $5ca8: $2e $07
	ld   a, $be                                      ; $5caa: $3e $be
	ld   b, $86                                      ; $5cac: $06 $86
	rlca                                             ; $5cae: $07
	ld   b, a                                        ; $5caf: $47
	inc  bc                                          ; $5cb0: $03
	inc  hl                                          ; $5cb1: $23
	add  c                                           ; $5cb2: $81
	nop                                              ; $5cb3: $00
	nop                                              ; $5cb4: $00
	db   $10                                         ; $5cb5: $10
	add  c                                           ; $5cb6: $81
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	db   $10                                         ; $5cb9: $10
	add  e                                           ; $5cba: $83
	nop                                              ; $5cbb: $00
	ld   [bc], a                                     ; $5cbc: $02
	stop                                             ; $5cbd: $10 $00
	db   $10                                         ; $5cbf: $10
	add  l                                           ; $5cc0: $85
	nop                                              ; $5cc1: $00
	ld   b, $10                                      ; $5cc2: $06 $10
	ld   bc, $008e                                   ; $5cc4: $01 $8e $00
	ld   e, [hl]                                     ; $5cc7: $5e
	nop                                              ; $5cc8: $00
	ld   hl, $1e80                                   ; $5cc9: $21 $80 $1e
	add  d                                           ; $5ccc: $82
	ld   a, a                                        ; $5ccd: $7f
	add  b                                           ; $5cce: $80
	rst  $38                                         ; $5ccf: $ff
	add  b                                           ; $5cd0: $80
	rst  ToBoot                                         ; $5cd1: $c7
	add  b                                           ; $5cd2: $80
	ld   bc, $0080                                   ; $5cd3: $01 $80 $00
	add  b                                           ; $5cd6: $80
	ld   a, $84                                      ; $5cd7: $3e $84
	rst  $38                                         ; $5cd9: $ff
	add  b                                           ; $5cda: $80
	inc  bc                                          ; $5cdb: $03
	add  b                                           ; $5cdc: $80
	ld   bc, $c001                                   ; $5cdd: $01 $01 $c0
	jr   nz, jr_09d_5c62                             ; $5ce0: $20 $80

	rrca                                             ; $5ce2: $0f
	add  b                                           ; $5ce3: $80
	dec  bc                                          ; $5ce4: $0b
	dec  b                                           ; $5ce5: $05
	ld   bc, $0091                                   ; $5ce6: $01 $91 $00
	ld   h, b                                        ; $5ce9: $60
	add  b                                           ; $5cea: $80
	sub  b                                           ; $5ceb: $90
	add  d                                           ; $5cec: $82
	ret  nz                                          ; $5ced: $c0

	add  d                                           ; $5cee: $82
	ldh  [$80], a                                    ; $5cef: $e0 $80
	ld   h, b                                        ; $5cf1: $60
	add  b                                           ; $5cf2: $80
	nop                                              ; $5cf3: $00
	add  b                                           ; $5cf4: $80
	add  b                                           ; $5cf5: $80
	add  b                                           ; $5cf6: $80
	add  c                                           ; $5cf7: $81
	add  d                                           ; $5cf8: $82
	pop  bc                                          ; $5cf9: $c1
	ld   bc, $ddc2                                   ; $5cfa: $01 $c2 $dd
	add  c                                           ; $5cfd: $81
	ret  nz                                          ; $5cfe: $c0

	nop                                              ; $5cff: $00
	ret  nc                                          ; $5d00: $d0

	add  c                                           ; $5d01: $81
	ldh  [rP1], a                                    ; $5d02: $e0 $00
	add  sp, -$7f                                    ; $5d04: $e8 $81
	ldh  a, [rP1]                                    ; $5d06: $f0 $00
	db   $f4                                         ; $5d08: $f4
	add  c                                           ; $5d09: $81
	ld   hl, sp+$00                                  ; $5d0a: $f8 $00
	ld   a, [$fc89]                                  ; $5d0c: $fa $89 $fc
	nop                                              ; $5d0f: $00
	cp   $81                                         ; $5d10: $fe $81
	ld   hl, sp+$00                                  ; $5d12: $f8 $00
	inc  b                                           ; $5d14: $04
	add  c                                           ; $5d15: $81
	nop                                              ; $5d16: $00
	nop                                              ; $5d17: $00
	ld   bc, $0083                                   ; $5d18: $01 $83 $00
	nop                                              ; $5d1b: $00
	ld   [bc], a                                     ; $5d1c: $02
	add  b                                           ; $5d1d: $80
	ld   bc, $0080                                   ; $5d1e: $01 $80 $00
	ld   bc, $0501                                   ; $5d21: $01 $01 $05
	add  b                                           ; $5d24: $80
	inc  bc                                          ; $5d25: $03
	add  hl, bc                                      ; $5d26: $09
	ld   [bc], a                                     ; $5d27: $02
	inc  bc                                          ; $5d28: $03
	ld   bc, $0309                                   ; $5d29: $01 $09 $03
	ld   [bc], a                                     ; $5d2c: $02
	ld   b, $16                                      ; $5d2d: $06 $16
	ld   c, $2e                                      ; $5d2f: $0e $2e
	add  c                                           ; $5d31: $81
	dec  e                                           ; $5d32: $1d
	ld   b, $5d                                      ; $5d33: $06 $5d
	dec  sp                                          ; $5d35: $3b
	inc  sp                                          ; $5d36: $33
	dec  sp                                          ; $5d37: $3b
	inc  hl                                          ; $5d38: $23
	scf                                              ; $5d39: $37
	or   a                                           ; $5d3a: $b7
	add  c                                           ; $5d3b: $81
	ld   [hl], a                                     ; $5d3c: $77
	nop                                              ; $5d3d: $00
	ld   b, a                                        ; $5d3e: $47
	add  c                                           ; $5d3f: $81
	ld   l, a                                        ; $5d40: $6f
	nop                                              ; $5d41: $00
	ld   l, [hl]                                     ; $5d42: $6e
	add  b                                           ; $5d43: $80
	ld   l, a                                        ; $5d44: $6f
	add  c                                           ; $5d45: $81
	cpl                                              ; $5d46: $2f
	inc  c                                           ; $5d47: $0c

jr_09d_5d48:
	ld   e, a                                        ; $5d48: $5f
	rla                                              ; $5d49: $17
	rst  $20                                         ; $5d4a: $e7
	rlca                                             ; $5d4b: $07
	rla                                              ; $5d4c: $17
	inc  bc                                          ; $5d4d: $03
	ld   l, e                                        ; $5d4e: $6b
	inc  bc                                          ; $5d4f: $03
	ld   h, $01                                      ; $5d50: $26 $01
	inc  bc                                          ; $5d52: $03
	nop                                              ; $5d53: $00
	ld   bc, $0081                                   ; $5d54: $01 $81 $00
	ld   [bc], a                                     ; $5d57: $02
	add  b                                           ; $5d58: $80
	nop                                              ; $5d59: $00
	ld   b, b                                        ; $5d5a: $40
	add  e                                           ; $5d5b: $83
	add  b                                           ; $5d5c: $80
	nop                                              ; $5d5d: $00
	and  b                                           ; $5d5e: $a0
	add  d                                           ; $5d5f: $82
	ret  nz                                          ; $5d60: $c0

	ld   bc, $d040                                   ; $5d61: $01 $40 $d0
	add  b                                           ; $5d64: $80
	and  b                                           ; $5d65: $a0
	dec  b                                           ; $5d66: $05
	ret  nz                                          ; $5d67: $c0

	add  b                                           ; $5d68: $80
	ldh  [rBCPS], a                                  ; $5d69: $e0 $68
	ret  nc                                          ; $5d6b: $d0

	sub  h                                           ; $5d6c: $94
	add  c                                           ; $5d6d: $81
	add  sp, $00                                     ; $5d6e: $e8 $00
	ld   [$f481], a                                  ; $5d70: $ea $81 $f4
	nop                                              ; $5d73: $00
	ld   [hl], l                                     ; $5d74: $75
	add  c                                           ; $5d75: $81
	ld   a, [$3a00]                                  ; $5d76: $fa $00 $3a
	add  c                                           ; $5d79: $81
	ld   a, d                                        ; $5d7a: $7a
	ld   [bc], a                                     ; $5d7b: $02
	ld   a, [hl]                                     ; $5d7c: $7e
	ld   a, h                                        ; $5d7d: $7c
	inc  e                                           ; $5d7e: $1c
	add  c                                           ; $5d7f: $81
	or   h                                           ; $5d80: $b4
	nop                                              ; $5d81: $00
	or   l                                           ; $5d82: $b5
	add  c                                           ; $5d83: $81
	or   h                                           ; $5d84: $b4
	nop                                              ; $5d85: $00
	cp   d                                           ; $5d86: $ba
	add  c                                           ; $5d87: $81
	xor  b                                           ; $5d88: $a8
	ld   [$50d4], sp                                 ; $5d89: $08 $d4 $50
	ld   c, b                                        ; $5d8c: $48
	ld   b, b                                        ; $5d8d: $40
	or   b                                           ; $5d8e: $b0
	add  b                                           ; $5d8f: $80
	ld   b, b                                        ; $5d90: $40
	nop                                              ; $5d91: $00
	cp   a                                           ; $5d92: $bf
	add  c                                           ; $5d93: $81
	rst  $38                                         ; $5d94: $ff
	add  b                                           ; $5d95: $80
	ld   a, a                                        ; $5d96: $7f
	ld   bc, $1f3f                                   ; $5d97: $01 $3f $1f
	add  b                                           ; $5d9a: $80
	rst  $38                                         ; $5d9b: $ff
	add  b                                           ; $5d9c: $80
	ld   a, a                                        ; $5d9d: $7f
	ld   c, $af                                      ; $5d9e: $0e $af
	cp   a                                           ; $5da0: $bf
	rst  $10                                         ; $5da1: $d7
	rst  JumpTable                                         ; $5da2: $df
	db   $e3                                         ; $5da3: $e3
	rst  $20                                         ; $5da4: $e7
	ld   sp, $cd33                                   ; $5da5: $31 $33 $cd
	inc  c                                           ; $5da8: $0c
	inc  sp                                          ; $5da9: $33
	inc  bc                                          ; $5daa: $03
	inc  c                                           ; $5dab: $0c
	nop                                              ; $5dac: $00
	inc  bc                                          ; $5dad: $03
	add  e                                           ; $5dae: $83
	nop                                              ; $5daf: $00
	inc  d                                           ; $5db0: $14
	ld   e, [hl]                                     ; $5db1: $5e
	and  b                                           ; $5db2: $a0
	ld   l, d                                        ; $5db3: $6a
	ld   hl, sp-$6c                                  ; $5db4: $f8 $94
	ldh  a, [$e0]                                    ; $5db6: $f0 $e0
	ldh  a, [$e8]                                    ; $5db8: $f0 $e8
	ldh  [$f0], a                                    ; $5dba: $e0 $f0
	ret  nz                                          ; $5dbc: $c0

	ldh  [$80], a                                    ; $5dbd: $e0 $80
	and  b                                           ; $5dbf: $a0
	nop                                              ; $5dc0: $00
	ldh  a, [rP1]                                    ; $5dc1: $f0 $00
	ret  c                                           ; $5dc3: $d8

	nop                                              ; $5dc4: $00
	jr   nz, jr_09d_5d48                             ; $5dc5: $20 $81

	nop                                              ; $5dc7: $00
	ld   [bc], a                                     ; $5dc8: $02
	inc  l                                           ; $5dc9: $2c
	nop                                              ; $5dca: $00
	call nz, $0083                                   ; $5dcb: $c4 $83 $00
	nop                                              ; $5dce: $00
	xor  a                                           ; $5dcf: $af
	add  l                                           ; $5dd0: $85
	rra                                              ; $5dd1: $1f
	nop                                              ; $5dd2: $00
	rst  JumpTable                                         ; $5dd3: $df
	add  d                                           ; $5dd4: $82
	sbc  a                                           ; $5dd5: $9f
	dec  c                                           ; $5dd6: $0d
	rst  JumpTable                                         ; $5dd7: $df
	ld   e, a                                        ; $5dd8: $5f
	rst  JumpTable                                         ; $5dd9: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dda: $cf
	rst  $28                                         ; $5ddb: $ef
	xor  $01                                         ; $5ddc: $ee $01
	add  d                                           ; $5dde: $82
	sbc  $59                                         ; $5ddf: $de $59
	rlca                                             ; $5de1: $07
	ld   a, [bc]                                     ; $5de2: $0a
	ld   l, c                                        ; $5de3: $69
	ld   h, c                                        ; $5de4: $61
	add  b                                           ; $5de5: $80
	ld   b, [hl]                                     ; $5de6: $46
	add  c                                           ; $5de7: $81
	rst  $38                                         ; $5de8: $ff
	nop                                              ; $5de9: $00
	xor  a                                           ; $5dea: $af
	add  l                                           ; $5deb: $85
	rra                                              ; $5dec: $1f
	nop                                              ; $5ded: $00
	rst  JumpTable                                         ; $5dee: $df
	add  d                                           ; $5def: $82
	sbc  a                                           ; $5df0: $9f
	dec  bc                                          ; $5df1: $0b
	rst  JumpTable                                         ; $5df2: $df
	ld   e, a                                        ; $5df3: $5f
	rst  JumpTable                                         ; $5df4: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df5: $cf
	rst  $28                                         ; $5df6: $ef
	xor  $01                                         ; $5df7: $ee $01
	jp   nz, $05de                                   ; $5df9: $c2 $de $05

	rra                                              ; $5dfc: $1f
	ld   b, $80                                      ; $5dfd: $06 $80
	ld   bc, $4680                                   ; $5dff: $01 $80 $46
	add  c                                           ; $5e02: $81
	rst  $38                                         ; $5e03: $ff
	nop                                              ; $5e04: $00
	xor  a                                           ; $5e05: $af
	add  l                                           ; $5e06: $85
	rra                                              ; $5e07: $1f
	nop                                              ; $5e08: $00
	rst  JumpTable                                         ; $5e09: $df
	add  d                                           ; $5e0a: $82
	sbc  a                                           ; $5e0b: $9f
	dec  c                                           ; $5e0c: $0d
	rst  JumpTable                                         ; $5e0d: $df
	ld   e, a                                        ; $5e0e: $5f
	rst  JumpTable                                         ; $5e0f: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e10: $cf
	rst  $28                                         ; $5e11: $ef
	xor  $01                                         ; $5e12: $ee $01
	jp   nz, $ddde                                   ; $5e14: $c2 $de $dd

	rst  $38                                         ; $5e17: $ff
	ld   a, a                                        ; $5e18: $7f
	ld   a, l                                        ; $5e19: $7d
	inc  a                                           ; $5e1a: $3c
	add  b                                           ; $5e1b: $80
	nop                                              ; $5e1c: $00
	add  c                                           ; $5e1d: $81
	rst  $38                                         ; $5e1e: $ff
	nop                                              ; $5e1f: $00
	call nc, $e081                                   ; $5e20: $d4 $81 $e0
	ld   b, $8d                                      ; $5e23: $06 $8d
	ret  nz                                          ; $5e25: $c0

	rst  $20                                         ; $5e26: $e7
	pop  hl                                          ; $5e27: $e1
	add  e                                           ; $5e28: $83
	rst  $20                                         ; $5e29: $e7
	db   $e4                                         ; $5e2a: $e4
	add  c                                           ; $5e2b: $81
	rst  $38                                         ; $5e2c: $ff
	ld   b, $cd                                      ; $5e2d: $06 $cd
	cp   e                                           ; $5e2f: $bb
	adc  c                                           ; $5e30: $89
	rst  $38                                         ; $5e31: $ff
	rst  ToBoot                                         ; $5e32: $c7
	rst  $38                                         ; $5e33: $ff
	rst  ToBoot                                         ; $5e34: $c7
	add  b                                           ; $5e35: $80
	rst  $38                                         ; $5e36: $ff
	add  b                                           ; $5e37: $80
	cp   $07                                         ; $5e38: $fe $07
	db   $fc                                         ; $5e3a: $fc
	ld   a, h                                        ; $5e3b: $7c
	ld   hl, sp+$7c                                  ; $5e3c: $f8 $7c

Call_09d_5e3e:
	inc  [hl]                                        ; $5e3e: $34
	db   $fc                                         ; $5e3f: $fc
	call z, $812b                                    ; $5e40: $cc $2b $81
	ldh  [rTMA], a                                   ; $5e43: $e0 $06
	adc  l                                           ; $5e45: $8d
	ret  nz                                          ; $5e46: $c0

	rst  $20                                         ; $5e47: $e7
	pop  hl                                          ; $5e48: $e1
	add  e                                           ; $5e49: $83
	rst  $20                                         ; $5e4a: $e7
	db   $e4                                         ; $5e4b: $e4
	add  c                                           ; $5e4c: $81
	rst  $38                                         ; $5e4d: $ff
	ld   [$bbfd], sp                                 ; $5e4e: $08 $fd $bb
	adc  l                                           ; $5e51: $8d

Call_09d_5e52:
	rst  $30                                         ; $5e52: $f7
	jp   $c7ff                                       ; $5e53: $c3 $ff $c7


	rst  $38                                         ; $5e56: $ff
	rst  ToBoot                                         ; $5e57: $c7
	add  b                                           ; $5e58: $80
	cp   $08                                         ; $5e59: $fe $08
	db   $fc                                         ; $5e5b: $fc
	ld   a, h                                        ; $5e5c: $7c
	ld   hl, sp+$7c                                  ; $5e5d: $f8 $7c
	inc  [hl]                                        ; $5e5f: $34
	db   $fc                                         ; $5e60: $fc
	call z, $01b5                                    ; $5e61: $cc $b5 $01
	add  b                                           ; $5e64: $80
	nop                                              ; $5e65: $00
	dec  b                                           ; $5e66: $05
	sbc  $03                                         ; $5e67: $de $03
	ld   [bc], a                                     ; $5e69: $02
	inc  bc                                          ; $5e6a: $03
	inc  c                                           ; $5e6b: $0c
	inc  b                                           ; $5e6c: $04
	add  h                                           ; $5e6d: $84
	rlca                                             ; $5e6e: $07
	db   $10                                         ; $5e6f: $10
	rla                                              ; $5e70: $17
	rlca                                             ; $5e71: $07
	rst  ToBoot                                         ; $5e72: $c7
	rlca                                             ; $5e73: $07
	adc  e                                           ; $5e74: $8b
	inc  bc                                          ; $5e75: $03
	ld   h, e                                        ; $5e76: $63
	inc  bc                                          ; $5e77: $03
	or   l                                           ; $5e78: $b5
	ld   bc, $001a                                   ; $5e79: $01 $1a $00
	ld   [hl], $00                                   ; $5e7c: $36 $00
	ld   c, e                                        ; $5e7e: $4b
	inc  bc                                          ; $5e7f: $03
	ld   [hl], a                                     ; $5e80: $77
	rst  $38                                         ; $5e81: $ff
	nop                                              ; $5e82: $00
	rst  $38                                         ; $5e83: $ff
	nop                                              ; $5e84: $00
	rst  $38                                         ; $5e85: $ff
	nop                                              ; $5e86: $00
	rst  $38                                         ; $5e87: $ff
	nop                                              ; $5e88: $00
	rst  $38                                         ; $5e89: $ff
	nop                                              ; $5e8a: $00
	rst  $38                                         ; $5e8b: $ff
	nop                                              ; $5e8c: $00
	or   a                                           ; $5e8d: $b7
	nop                                              ; $5e8e: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e8f: $cf
	nop                                              ; $5e90: $00
	adc  [hl]                                        ; $5e91: $8e
	nop                                              ; $5e92: $00
	ld   d, $01                                      ; $5e93: $16 $01
	nop                                              ; $5e95: $00
	ld   [bc], a                                     ; $5e96: $02
	ld   bc, $0305                                   ; $5e97: $01 $05 $03
	dec  bc                                          ; $5e9a: $0b
	rlca                                             ; $5e9b: $07
	rla                                              ; $5e9c: $17
	rrca                                             ; $5e9d: $0f
	ld   l, $1f                                      ; $5e9e: $2e $1f
	dec  e                                           ; $5ea0: $1d
	rra                                              ; $5ea1: $1f
	ld   e, [hl]                                     ; $5ea2: $5e
	ld   [hl], $32                                   ; $5ea3: $36 $32
	ld   l, $25                                      ; $5ea5: $2e $25
	dec  l                                           ; $5ea7: $2d
	xor  e                                           ; $5ea8: $ab
	ld   e, e                                        ; $5ea9: $5b
	ld   d, e                                        ; $5eaa: $53
	add  b                                           ; $5eab: $80
	ld   e, e                                        ; $5eac: $5b
	rlca                                             ; $5ead: $07
	ld   d, a                                        ; $5eae: $57
	ld   d, e                                        ; $5eaf: $53
	scf                                              ; $5eb0: $37
	inc  sp                                          ; $5eb1: $33
	cpl                                              ; $5eb2: $2f
	inc  l                                           ; $5eb3: $2c
	cpl                                              ; $5eb4: $2f
	xor  a                                           ; $5eb5: $af
	add  c                                           ; $5eb6: $81
	cpl                                              ; $5eb7: $2f
	nop                                              ; $5eb8: $00
	ld   l, a                                        ; $5eb9: $6f
	add  c                                           ; $5eba: $81
	rla                                              ; $5ebb: $17
	db   $10                                         ; $5ebc: $10
	scf                                              ; $5ebd: $37
	inc  bc                                          ; $5ebe: $03
	inc  de                                          ; $5ebf: $13
	ld   bc, $0209                                   ; $5ec0: $01 $09 $02
	ld   b, $01                                      ; $5ec3: $06 $01
	ld   [bc], a                                     ; $5ec5: $02
	nop                                              ; $5ec6: $00
	ld   bc, $0f00                                   ; $5ec7: $01 $00 $0f
	ld   bc, $0f1f                                   ; $5eca: $01 $1f $0f
	ccf                                              ; $5ecd: $3f
	add  c                                           ; $5ece: $81
	rra                                              ; $5ecf: $1f
	inc  b                                           ; $5ed0: $04
	ld   d, a                                        ; $5ed1: $57

jr_09d_5ed2:
	ccf                                              ; $5ed2: $3f
	xor  e                                           ; $5ed3: $ab
	ld   a, a                                        ; $5ed4: $7f
	add  e                                           ; $5ed5: $83
	adc  l                                           ; $5ed6: $8d
	nop                                              ; $5ed7: $00
	rlca                                             ; $5ed8: $07
	rrca                                             ; $5ed9: $0f
	nop                                              ; $5eda: $00
	rst  $30                                         ; $5edb: $f7
	rlca                                             ; $5edc: $07
	ld   hl, sp-$07                                  ; $5edd: $f8 $f9
	rst  $38                                         ; $5edf: $ff
	cp   $84                                         ; $5ee0: $fe $84
	rst  $38                                         ; $5ee2: $ff
	add  b                                           ; $5ee3: $80
	db   $fd                                         ; $5ee4: $fd
	nop                                              ; $5ee5: $00
	rst  $38                                         ; $5ee6: $ff
	adc  l                                           ; $5ee7: $8d
	nop                                              ; $5ee8: $00
	db   $10                                         ; $5ee9: $10
	add  b                                           ; $5eea: $80
	nop                                              ; $5eeb: $00
	ld   hl, sp-$80                                  ; $5eec: $f8 $80
	ld   a, a                                        ; $5eee: $7f
	ld   hl, sp-$59                                  ; $5eef: $f8 $a7
	rst  $20                                         ; $5ef1: $e7
	rst  JumpTable                                         ; $5ef2: $df
	ld   a, a                                        ; $5ef3: $7f
	db   $e3                                         ; $5ef4: $e3
	rst  $38                                         ; $5ef5: $ff
	ei                                               ; $5ef6: $fb
	rst  $38                                         ; $5ef7: $ff
	cp   a                                           ; $5ef8: $bf
	rst  $38                                         ; $5ef9: $ff
	rst  ToBoot                                         ; $5efa: $c7
	sub  c                                           ; $5efb: $91
	nop                                              ; $5efc: $00
	inc  e                                           ; $5efd: $1c
	add  b                                           ; $5efe: $80
	nop                                              ; $5eff: $00
	ldh  [$80], a                                    ; $5f00: $e0 $80
	ldh  a, [$e0]                                    ; $5f02: $f0 $e0
	cp   b                                           ; $5f04: $b8
	ldh  a, [$c4]                                    ; $5f05: $f0 $c4
	cp   b                                           ; $5f07: $b8
	ld   hl, sp-$28                                  ; $5f08: $f8 $d8
	ld   hl, sp-$18                                  ; $5f0a: $f8 $e8
	ld   a, [$dcf4]                                  ; $5f0c: $fa $f4 $dc
	ld   hl, sp-$3b                                  ; $5f0f: $f8 $c5
	db   $fc                                         ; $5f11: $fc
	jr   jr_09d_5ed2                                 ; $5f12: $18 $be

	db   $fd                                         ; $5f14: $fd
	rst  JumpTable                                         ; $5f15: $df
	ld   de, $7ddf                                   ; $5f16: $11 $df $7d
	rst  $28                                         ; $5f19: $ef
	ccf                                              ; $5f1a: $3f
	add  a                                           ; $5f1b: $87
	nop                                              ; $5f1c: $00
	inc  bc                                          ; $5f1d: $03
	add  b                                           ; $5f1e: $80
	nop                                              ; $5f1f: $00
	ld   b, b                                        ; $5f20: $40
	nop                                              ; $5f21: $00
	add  b                                           ; $5f22: $80
	add  b                                           ; $5f23: $80
	nop                                              ; $5f24: $00
	ldh  [$81], a                                    ; $5f25: $e0 $81
	ret  nz                                          ; $5f27: $c0

	nop                                              ; $5f28: $00
	ldh  a, [$81]                                    ; $5f29: $f0 $81
	ldh  [rP1], a                                    ; $5f2b: $e0 $00
	add  sp, -$7f                                    ; $5f2d: $e8 $81
	ldh  a, [rP1]                                    ; $5f2f: $f0 $00
	ld   [hl], b                                     ; $5f31: $70
	add  c                                           ; $5f32: $81
	ldh  a, [rP1]                                    ; $5f33: $f0 $00
	ld   l, b                                        ; $5f35: $68
	adc  l                                           ; $5f36: $8d
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	rst  $38                                         ; $5f39: $ff
	add  b                                           ; $5f3a: $80
	jp   z, Jump_09d_650d                            ; $5f3b: $ca $0d $65

	ld   l, l                                        ; $5f3e: $6d
	ld   h, c                                        ; $5f3f: $61
	ld   h, a                                        ; $5f40: $67
	jr   nz, @+$33                                   ; $5f41: $20 $31

	nop                                              ; $5f43: $00
	ld   [bc], a                                     ; $5f44: $02
	nop                                              ; $5f45: $00
	inc  bc                                          ; $5f46: $03
	nop                                              ; $5f47: $00
	ld   de, $f000                                   ; $5f48: $11 $00 $f0
	adc  l                                           ; $5f4b: $8d
	nop                                              ; $5f4c: $00
	db   $10                                         ; $5f4d: $10
	inc  a                                           ; $5f4e: $3c
	rla                                              ; $5f4f: $17
	ld   d, $02                                      ; $5f50: $16 $02
	ld   a, b                                        ; $5f52: $78
	ld   bc, $004f                                   ; $5f53: $01 $4f $00
	add  hl, bc                                      ; $5f56: $09
	nop                                              ; $5f57: $00
	ld   bc, $0300                                   ; $5f58: $01 $00 $03
	nop                                              ; $5f5b: $00
	ld   b, $00                                      ; $5f5c: $06 $00
	inc  b                                           ; $5f5e: $04
	adc  l                                           ; $5f5f: $8d
	nop                                              ; $5f60: $00
	nop                                              ; $5f61: $00
	rst  $38                                         ; $5f62: $ff
	add  b                                           ; $5f63: $80
	ld   [hl], e                                     ; $5f64: $73
	rlca                                             ; $5f65: $07
	or   $ff                                         ; $5f66: $f6 $ff
	ret  nz                                          ; $5f68: $c0

	or   $00                                         ; $5f69: $f6 $00
	ld   b, b                                        ; $5f6b: $40
	nop                                              ; $5f6c: $00
	add  b                                           ; $5f6d: $80
	add  e                                           ; $5f6e: $83
	nop                                              ; $5f6f: $00
	nop                                              ; $5f70: $00
	sbc  b                                           ; $5f71: $98
	add  e                                           ; $5f72: $83
	ldh  a, [rP1]                                    ; $5f73: $f0 $00
	ret  c                                           ; $5f75: $d8

	add  c                                           ; $5f76: $81
	ldh  [rSC], a                                    ; $5f77: $e0 $02
	and  b                                           ; $5f79: $a0
	ldh  [$f0], a                                    ; $5f7a: $e0 $f0
	add  c                                           ; $5f7c: $81
	ret  nz                                          ; $5f7d: $c0

	inc  b                                           ; $5f7e: $04
	ldh  [$80], a                                    ; $5f7f: $e0 $80
	ret  nz                                          ; $5f81: $c0

	nop                                              ; $5f82: $00
	add  b                                           ; $5f83: $80
	adc  c                                           ; $5f84: $89
	nop                                              ; $5f85: $00
	ld   [bc], a                                     ; $5f86: $02
	ld   bc, $0100                                   ; $5f87: $01 $00 $01
	add  c                                           ; $5f8a: $81
	nop                                              ; $5f8b: $00
	ld   [bc], a                                     ; $5f8c: $02
	rlca                                             ; $5f8d: $07
	nop                                              ; $5f8e: $00
	ld   [$0083], sp                                 ; $5f8f: $08 $83 $00
	ld   bc, $0010                                   ; $5f92: $01 $10 $00
	add  d                                           ; $5f95: $82
	ld   bc, $2100                                   ; $5f96: $01 $00 $21
	add  c                                           ; $5f99: $81
	ld   bc, $0080                                   ; $5f9a: $01 $80 $00
	ld   [bc], a                                     ; $5f9d: $02
	ld   b, b                                        ; $5f9e: $40
	nop                                              ; $5f9f: $00
	add  b                                           ; $5fa0: $80
	add  c                                           ; $5fa1: $81
	nop                                              ; $5fa2: $00
	dec  c                                           ; $5fa3: $0d
	cp   $00                                         ; $5fa4: $fe $00
	ld   [bc], a                                     ; $5fa6: $02
	nop                                              ; $5fa7: $00
	inc  b                                           ; $5fa8: $04
	nop                                              ; $5fa9: $00
	ld   [$1100], sp                                 ; $5faa: $08 $00 $11
	ld   bc, $0323                                   ; $5fad: $01 $23 $03
	ld   b, a                                        ; $5fb0: $47
	rlca                                             ; $5fb1: $07
	add  d                                           ; $5fb2: $82
	rrca                                             ; $5fb3: $0f
	nop                                              ; $5fb4: $00
	sbc  a                                           ; $5fb5: $9f
	add  c                                           ; $5fb6: $81
	rra                                              ; $5fb7: $1f
	adc  h                                           ; $5fb8: $8c
	ccf                                              ; $5fb9: $3f
	add  b                                           ; $5fba: $80
	rra                                              ; $5fbb: $1f
	nop                                              ; $5fbc: $00
	sbc  a                                           ; $5fbd: $9f
	add  c                                           ; $5fbe: $81
	rra                                              ; $5fbf: $1f
	add  b                                           ; $5fc0: $80
	rrca                                             ; $5fc1: $0f
	nop                                              ; $5fc2: $00
	ld   c, a                                        ; $5fc3: $4f
	add  c                                           ; $5fc4: $81
	rrca                                             ; $5fc5: $0f
	ld   [$0727], sp                                 ; $5fc6: $08 $27 $07
	inc  de                                          ; $5fc9: $13
	inc  bc                                          ; $5fca: $03
	add  hl, bc                                      ; $5fcb: $09
	ld   bc, $0004                                   ; $5fcc: $01 $04 $00
	ld   [bc], a                                     ; $5fcf: $02
	add  c                                           ; $5fd0: $81
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	ld   bc, $0081                                   ; $5fd3: $01 $81 $00
	ld   b, $ff                                      ; $5fd6: $06 $ff
	nop                                              ; $5fd8: $00
	inc  a                                           ; $5fd9: $3c
	nop                                              ; $5fda: $00
	ld   h, [hl]                                     ; $5fdb: $66
	nop                                              ; $5fdc: $00
	inc  a                                           ; $5fdd: $3c
	add  c                                           ; $5fde: $81
	nop                                              ; $5fdf: $00
	inc  b                                           ; $5fe0: $04
	inc  a                                           ; $5fe1: $3c
	nop                                              ; $5fe2: $00
	ld   h, [hl]                                     ; $5fe3: $66
	nop                                              ; $5fe4: $00

jr_09d_5fe5:
	inc  a                                           ; $5fe5: $3c
	add  c                                           ; $5fe6: $81
	nop                                              ; $5fe7: $00
	inc  b                                           ; $5fe8: $04
	inc  a                                           ; $5fe9: $3c
	nop                                              ; $5fea: $00
	ld   h, [hl]                                     ; $5feb: $66
	nop                                              ; $5fec: $00
	inc  a                                           ; $5fed: $3c
	add  c                                           ; $5fee: $81
	nop                                              ; $5fef: $00
	inc  de                                          ; $5ff0: $13
	inc  a                                           ; $5ff1: $3c
	nop                                              ; $5ff2: $00
	ld   h, [hl]                                     ; $5ff3: $66
	nop                                              ; $5ff4: $00
	inc  a                                           ; $5ff5: $3c
	nop                                              ; $5ff6: $00
	rst  $30                                         ; $5ff7: $f7
	nop                                              ; $5ff8: $00
	jr   jr_09d_5ffb                                 ; $5ff9: $18 $00

jr_09d_5ffb:
	jr   nc, jr_09d_5ffd                             ; $5ffb: $30 $00

jr_09d_5ffd:
	ldh  [rP1], a                                    ; $5ffd: $e0 $00
	and  b                                           ; $5fff: $a0
	ret  nz                                          ; $6000: $c0

	db   $10                                         ; $6001: $10
	ld   h, b                                        ; $6002: $60
	ld   [$8030], sp                                 ; $6003: $08 $30 $80
	ldh  a, [rSC]                                    ; $6006: $f0 $02
	db   $f4                                         ; $6008: $f4
	ldh  a, [$f3]                                    ; $6009: $f0 $f3
	add  b                                           ; $600b: $80
	db   $f4                                         ; $600c: $f4

jr_09d_600d:
	ld   b, $f7                                      ; $600d: $06 $f7
	di                                               ; $600f: $f3
	rst  $30                                         ; $6010: $f7
	db   $ed                                         ; $6011: $ed
	rst  $38                                         ; $6012: $ff
	sbc  $df                                         ; $6013: $de $df
	add  b                                           ; $6015: $80
	rra                                              ; $6016: $1f
	add  b                                           ; $6017: $80
	ccf                                              ; $6018: $3f
	add  b                                           ; $6019: $80
	nop                                              ; $601a: $00
	inc  b                                           ; $601b: $04
	inc  a                                           ; $601c: $3c
	nop                                              ; $601d: $00
	ld   h, [hl]                                     ; $601e: $66
	nop                                              ; $601f: $00
	inc  a                                           ; $6020: $3c
	add  c                                           ; $6021: $81
	nop                                              ; $6022: $00
	inc  b                                           ; $6023: $04
	inc  a                                           ; $6024: $3c
	nop                                              ; $6025: $00
	ld   h, [hl]                                     ; $6026: $66
	nop                                              ; $6027: $00
	inc  a                                           ; $6028: $3c
	add  c                                           ; $6029: $81
	nop                                              ; $602a: $00
	inc  b                                           ; $602b: $04
	inc  a                                           ; $602c: $3c
	nop                                              ; $602d: $00
	ld   h, [hl]                                     ; $602e: $66
	nop                                              ; $602f: $00
	inc  a                                           ; $6030: $3c
	add  c                                           ; $6031: $81
	nop                                              ; $6032: $00
	ld   b, $3c                                      ; $6033: $06 $3c
	nop                                              ; $6035: $00
	ld   h, [hl]                                     ; $6036: $66
	nop                                              ; $6037: $00
	inc  a                                           ; $6038: $3c
	nop                                              ; $6039: $00
	rst  $38                                         ; $603a: $ff
	add  c                                           ; $603b: $81
	nop                                              ; $603c: $00
	ld   [bc], a                                     ; $603d: $02

jr_09d_603e:
	add  c                                           ; $603e: $81
	nop                                              ; $603f: $00
	ld   b, b                                        ; $6040: $40
	add  c                                           ; $6041: $81
	add  b                                           ; $6042: $80
	ld   [bc], a                                     ; $6043: $02
	and  b                                           ; $6044: $a0
	ret  nz                                          ; $6045: $c0

	ld   b, b                                        ; $6046: $40
	add  c                                           ; $6047: $81
	ret  nz                                          ; $6048: $c0

	dec  b                                           ; $6049: $05
	add  $c0                                         ; $604a: $c6 $c0
	sbc  b                                           ; $604c: $98
	jp   nz, $ecee                                   ; $604d: $c2 $ee $ec

	add  b                                           ; $6050: $80
	ld   e, $80                                      ; $6051: $1e $80
	ccf                                              ; $6053: $3f
	add  d                                           ; $6054: $82
	ld   a, a                                        ; $6055: $7f
	add  c                                           ; $6056: $81
	rst  $38                                         ; $6057: $ff
	adc  l                                           ; $6058: $8d
	nop                                              ; $6059: $00
	ld   d, $88                                      ; $605a: $16 $88
	nop                                              ; $605c: $00
	jr   jr_09d_605f                                 ; $605d: $18 $00

jr_09d_605f:
	ld   [hl], b                                     ; $605f: $70
	nop                                              ; $6060: $00
	jr   nz, jr_09d_6063                             ; $6061: $20 $00

jr_09d_6063:
	jr   nz, jr_09d_5fe5                             ; $6063: $20 $80

	db   $10                                         ; $6065: $10
	ret  nz                                          ; $6066: $c0

	adc  l                                           ; $6067: $8d
	ldh  [$c2], a                                    ; $6068: $e0 $c2
	ld   hl, sp-$18                                  ; $606a: $f8 $e8
	cp   $f2                                         ; $606c: $fe $f2
	rst  $38                                         ; $606e: $ff

jr_09d_606f:
	db   $fd                                         ; $606f: $fd
	rst  $38                                         ; $6070: $ff
	cp   $85                                         ; $6071: $fe $85
	rst  $38                                         ; $6073: $ff
	add  b                                           ; $6074: $80
	cp   $80                                         ; $6075: $fe $80
	ld   a, h                                        ; $6077: $7c
	ld   [de], a                                     ; $6078: $12
	sbc  c                                           ; $6079: $99
	sbc  b                                           ; $607a: $98
	jp   nz, $ecc0                                   ; $607b: $c2 $c0 $ec

	ldh  [$d0], a                                    ; $607e: $e0 $d0
	ret  nz                                          ; $6080: $c0

	and  b                                           ; $6081: $a0
	add  b                                           ; $6082: $80
	ld   b, b                                        ; $6083: $40
	nop                                              ; $6084: $00
	add  b                                           ; $6085: $80
	nop                                              ; $6086: $00
	add  b                                           ; $6087: $80
	nop                                              ; $6088: $00
	ld   b, b                                        ; $6089: $40
	nop                                              ; $608a: $00
	jr   nz, jr_09d_600d                             ; $608b: $20 $80

	add  b                                           ; $608d: $80
	ld   bc, $40c0                                   ; $608e: $01 $c0 $40
	add  b                                           ; $6091: $80
	ret  nz                                          ; $6092: $c0

	dec  b                                           ; $6093: $05
	add  b                                           ; $6094: $80
	jr   nz, jr_09d_6097                             ; $6095: $20 $00

jr_09d_6097:
	ld   b, b                                        ; $6097: $40
	nop                                              ; $6098: $00
	add  b                                           ; $6099: $80
	sub  c                                           ; $609a: $91
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	ld   bc, $0083                                   ; $609d: $01 $83 $00
	rrca                                             ; $60a0: $0f
	ld   [bc], a                                     ; $60a1: $02
	nop                                              ; $60a2: $00
	inc  b                                           ; $60a3: $04
	nop                                              ; $60a4: $00
	inc  c                                           ; $60a5: $0c
	nop                                              ; $60a6: $00
	dec  de                                          ; $60a7: $1b
	nop                                              ; $60a8: $00
	jr   nc, jr_09d_60ab                             ; $60a9: $30 $00

jr_09d_60ab:
	inc  c                                           ; $60ab: $0c

jr_09d_60ac:
	nop                                              ; $60ac: $00
	ld   a, [hl]                                     ; $60ad: $7e
	inc  c                                           ; $60ae: $0c
	inc  l                                           ; $60af: $2c
	inc  c                                           ; $60b0: $0c
	add  b                                           ; $60b1: $80
	dec  c                                           ; $60b2: $0d
	add  b                                           ; $60b3: $80
	inc  e                                           ; $60b4: $1c
	add  b                                           ; $60b5: $80
	jr   jr_09d_60bc                                 ; $60b6: $18 $04

	ld   a, [hl]                                     ; $60b8: $7e

jr_09d_60b9:
	nop                                              ; $60b9: $00
	ret  nz                                          ; $60ba: $c0

	nop                                              ; $60bb: $00

jr_09d_60bc:
	jr   nz, jr_09d_603e                             ; $60bc: $20 $80

	ld   b, b                                        ; $60be: $40
	ld   [$1000], sp                                 ; $60bf: $08 $00 $10
	ret  nz                                          ; $60c2: $c0

	call z, $1f00                                    ; $60c3: $cc $00 $1f
	nop                                              ; $60c6: $00
	ld   c, a                                        ; $60c7: $4f
	inc  c                                           ; $60c8: $0c
	add  b                                           ; $60c9: $80
	ld   c, $0b                                      ; $60ca: $0e $0b
	ld   b, [hl]                                     ; $60cc: $46
	ld   b, $c0                                      ; $60cd: $06 $c0
	nop                                              ; $60cf: $00
	jr   nz, jr_09d_60d5                             ; $60d0: $20 $03

	ld   bc, $7103                                   ; $60d2: $01 $03 $71

jr_09d_60d5:
	ld   a, e                                        ; $60d5: $7b
	dec  bc                                          ; $60d6: $0b
	dec  sp                                          ; $60d7: $3b
	add  b                                           ; $60d8: $80
	ld   a, [hl-]                                    ; $60d9: $3a
	nop                                              ; $60da: $00
	dec  sp                                          ; $60db: $3b
	adc  e                                           ; $60dc: $8b
	nop                                              ; $60dd: $00
	rlca                                             ; $60de: $07
	add  b                                           ; $60df: $80
	nop                                              ; $60e0: $00
	ret  nz                                          ; $60e1: $c0

	nop                                              ; $60e2: $00
	ld   [hl], b                                     ; $60e3: $70
	nop                                              ; $60e4: $00
	ld   c, b                                        ; $60e5: $48
	nop                                              ; $60e6: $00
	add  b                                           ; $60e7: $80
	db   $10                                         ; $60e8: $10
	ld   bc, $30b0                                   ; $60e9: $01 $b0 $30
	add  d                                           ; $60ec: $82
	jr   nz, jr_09d_606f                             ; $60ed: $20 $80

	ld   h, b                                        ; $60ef: $60
	add  hl, bc                                      ; $60f0: $09
	sbc  h                                           ; $60f1: $9c
	jr   jr_09d_60ac                                 ; $60f2: $18 $b8

	jr   c, @+$76                                    ; $60f4: $38 $74

	ld   [hl], b                                     ; $60f6: $70
	ld   a, [hl]                                     ; $60f7: $7e
	ld   a, b                                        ; $60f8: $78
	db   $fd                                         ; $60f9: $fd
	db   $fc                                         ; $60fa: $fc
	add  b                                           ; $60fb: $80
	cp   $80                                         ; $60fc: $fe $80
	db   $fc                                         ; $60fe: $fc
	add  b                                           ; $60ff: $80
	ld   sp, hl                                      ; $6100: $f9
	add  b                                           ; $6101: $80
	ld   [hl], a                                     ; $6102: $77
	add  b                                           ; $6103: $80
	ld   l, a                                        ; $6104: $6f
	add  b                                           ; $6105: $80
	rra                                              ; $6106: $1f
	add  b                                           ; $6107: $80
	ccf                                              ; $6108: $3f
	ld   [$1f9f], sp                                 ; $6109: $08 $9f $1f
	ld   c, a                                        ; $610c: $4f
	rrca                                             ; $610d: $0f
	ld   [hl+], a                                    ; $610e: $22
	ld   [bc], a                                     ; $610f: $02
	jr   jr_09d_6112                                 ; $6110: $18 $00

jr_09d_6112:
	inc  b                                           ; $6112: $04
	add  b                                           ; $6113: $80
	inc  a                                           ; $6114: $3c
	ld   b, $38                                      ; $6115: $06 $38
	dec  a                                           ; $6117: $3d
	ld   sp, $0139                                   ; $6118: $31 $39 $01
	di                                               ; $611b: $f3
	inc  bc                                          ; $611c: $03
	add  b                                           ; $611d: $80
	rrca                                             ; $611e: $0f
	add  [hl]                                        ; $611f: $86
	rst  $38                                         ; $6120: $ff
	add  b                                           ; $6121: $80
	cp   $06                                         ; $6122: $fe $06
	db   $fd                                         ; $6124: $fd
	db   $fc                                         ; $6125: $fc
	and  $e0                                         ; $6126: $e6 $e0
	sbc  b                                           ; $6128: $98
	add  b                                           ; $6129: $80
	ld   h, b                                        ; $612a: $60
	add  c                                           ; $612b: $81
	nop                                              ; $612c: $00
	nop                                              ; $612d: $00
	xor  b                                           ; $612e: $a8
	add  e                                           ; $612f: $83
	ret  nc                                          ; $6130: $d0

	add  b                                           ; $6131: $80
	sub  b                                           ; $6132: $90
	ld   bc, $a0a8                                   ; $6133: $01 $a8 $a0
	add  b                                           ; $6136: $80
	jr   nz, jr_09d_60b9                             ; $6137: $20 $80

	ld   h, b                                        ; $6139: $60
	nop                                              ; $613a: $00
	ret  nc                                          ; $613b: $d0

	add  c                                           ; $613c: $81
	ret  nz                                          ; $613d: $c0

	inc  b                                           ; $613e: $04
	jr   nz, jr_09d_6141                             ; $613f: $20 $00

jr_09d_6141:
	ld   b, b                                        ; $6141: $40
	nop                                              ; $6142: $00
	add  b                                           ; $6143: $80
	sub  a                                           ; $6144: $97
	nop                                              ; $6145: $00
	db   $10                                         ; $6146: $10
	inc  b                                           ; $6147: $04
	nop                                              ; $6148: $00
	add  [hl]                                        ; $6149: $86
	nop                                              ; $614a: $00
	adc  c                                           ; $614b: $89
	nop                                              ; $614c: $00
	ld   e, $00                                      ; $614d: $1e $00
	ld   bc, $3b00                                   ; $614f: $01 $00 $3b
	nop                                              ; $6152: $00
	inc  b                                           ; $6153: $04
	rlca                                             ; $6154: $07
	dec  b                                           ; $6155: $05
	rlca                                             ; $6156: $07
	ld   [hl-], a                                    ; $6157: $32
	add  c                                           ; $6158: $81
	dec  bc                                          ; $6159: $0b
	ld   [$0b03], sp                                 ; $615a: $08 $03 $0b
	dec  hl                                          ; $615d: $2b
	dec  de                                          ; $615e: $1b
	dec  bc                                          ; $615f: $0b
	dec  de                                          ; $6160: $1b
	ld   e, e                                        ; $6161: $5b
	dec  sp                                          ; $6162: $3b
	dec  de                                          ; $6163: $1b
	add  c                                           ; $6164: $81
	dec  sp                                          ; $6165: $3b
	ld   a, [bc]                                     ; $6166: $0a
	add  e                                           ; $6167: $83
	inc  bc                                          ; $6168: $03
	jr   c, jr_09d_61e7                              ; $6169: $38 $7c

	ld   b, h                                        ; $616b: $44
	rlca                                             ; $616c: $07
	ld   b, a                                        ; $616d: $47
	ld   b, e                                        ; $616e: $43
	adc  [hl]                                        ; $616f: $8e
	xor  l                                           ; $6170: $ad
	rst  JumpTable                                         ; $6171: $df
	add  e                                           ; $6172: $83
	rst  $38                                         ; $6173: $ff
	ld   b, $8f                                      ; $6174: $06 $8f
	ldh  [hScriptOpcodeParams], a                                    ; $6176: $e0 $a0
	ldh  [$e8], a                                    ; $6178: $e0 $e8
	ldh  a, [$d0]                                    ; $617a: $f0 $d0
	add  e                                           ; $617c: $83
	ldh  a, [rDIV]                                   ; $617d: $f0 $04
	db   $f4                                         ; $617f: $f4
	ld   hl, sp-$18                                  ; $6180: $f8 $e8
	ld   hl, sp-$07                                  ; $6182: $f8 $f9
	add  c                                           ; $6184: $81
	ld   hl, sp-$7f                                  ; $6185: $f8 $81
	ld   a, b                                        ; $6187: $78
	inc  bc                                          ; $6188: $03
	ld   hl, sp+$6c                                  ; $6189: $f8 $6c
	ldh  a, [$f3]                                    ; $618b: $f0 $f3
	add  b                                           ; $618d: $80
	ldh  a, [rDIV]                                   ; $618e: $f0 $04
	ldh  [$ce], a                                    ; $6190: $e0 $ce
	ldh  [$d4], a                                    ; $6192: $e0 $d4
	rst  $38                                         ; $6194: $ff
	add  d                                           ; $6195: $82
	ld   a, a                                        ; $6196: $7f
	add  b                                           ; $6197: $80
	ccf                                              ; $6198: $3f
	add  b                                           ; $6199: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $619a: $cf
	ld   a, [bc]                                     ; $619b: $0a
	ld   a, [hl]                                     ; $619c: $7e
	rst  $38                                         ; $619d: $ff
	cp   [hl]                                        ; $619e: $be
	rst  $38                                         ; $619f: $ff
	rst  JumpTable                                         ; $61a0: $df
	ld   a, a                                        ; $61a1: $7f
	ld   l, a                                        ; $61a2: $6f
	cp   a                                           ; $61a3: $bf
	or   e                                           ; $61a4: $b3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61a5: $cf
	call z, $f380                                    ; $61a6: $cc $80 $f3
	add  hl, hl                                      ; $61a9: $29
	ld   a, b                                        ; $61aa: $78
	ld   hl, sp+$1e                                  ; $61ab: $f8 $1e
	ld   a, [hl]                                     ; $61ad: $7e
	nop                                              ; $61ae: $00
	jr   jr_09d_61b1                                 ; $61af: $18 $00

jr_09d_61b1:
	inc  bc                                          ; $61b1: $03
	nop                                              ; $61b2: $00
	inc  l                                           ; $61b3: $2c
	ret  nz                                          ; $61b4: $c0

	push de                                          ; $61b5: $d5
	ret  nz                                          ; $61b6: $c0

	and  e                                           ; $61b7: $a3
	cp   b                                           ; $61b8: $b8
	db   $fd                                         ; $61b9: $fd
	or   $ec                                         ; $61ba: $f6 $ec
	rst  $38                                         ; $61bc: $ff
	cpl                                              ; $61bd: $2f
	ld   l, [hl]                                     ; $61be: $6e
	cp   l                                           ; $61bf: $bd
	db   $fc                                         ; $61c0: $fc
	sbc  d                                           ; $61c1: $9a
	ld   hl, sp-$6c                                  ; $61c2: $f8 $94
	ldh  a, [$e8]                                    ; $61c4: $f0 $e8
	ldh  [$90], a                                    ; $61c6: $e0 $90
	ret  nz                                          ; $61c8: $c0

	ld   h, b                                        ; $61c9: $60
	nop                                              ; $61ca: $00
	ldh  [rP1], a                                    ; $61cb: $e0 $00
	or   b                                           ; $61cd: $b0
	nop                                              ; $61ce: $00
	ld   e, b                                        ; $61cf: $58
	nop                                              ; $61d0: $00
	ret  nz                                          ; $61d1: $c0

	nop                                              ; $61d2: $00
	inc  d                                           ; $61d3: $14
	add  c                                           ; $61d4: $81
	dec  bc                                          ; $61d5: $0b
	ld   [$0b03], sp                                 ; $61d6: $08 $03 $0b
	dec  hl                                          ; $61d9: $2b
	dec  de                                          ; $61da: $1b
	dec  bc                                          ; $61db: $0b
	dec  de                                          ; $61dc: $1b
	ld   e, e                                        ; $61dd: $5b
	dec  sp                                          ; $61de: $3b
	dec  de                                          ; $61df: $1b
	add  c                                           ; $61e0: $81
	dec  sp                                          ; $61e1: $3b
	ld   a, [bc]                                     ; $61e2: $0a
	add  e                                           ; $61e3: $83
	inc  bc                                          ; $61e4: $03
	jr   c, jr_09d_6263                              ; $61e5: $38 $7c

jr_09d_61e7:
	ld   e, b                                        ; $61e7: $58
	ccf                                              ; $61e8: $3f
	ld   h, e                                        ; $61e9: $63
	ld   b, e                                        ; $61ea: $43
	add  [hl]                                        ; $61eb: $86
	and  l                                           ; $61ec: $a5
	rst  JumpTable                                         ; $61ed: $df
	add  e                                           ; $61ee: $83
	rst  $38                                         ; $61ef: $ff
	nop                                              ; $61f0: $00
	db   $e3                                         ; $61f1: $e3
	add  c                                           ; $61f2: $81
	dec  bc                                          ; $61f3: $0b
	ld   [$0b03], sp                                 ; $61f4: $08 $03 $0b
	dec  hl                                          ; $61f7: $2b
	dec  de                                          ; $61f8: $1b
	dec  bc                                          ; $61f9: $0b
	dec  de                                          ; $61fa: $1b
	ld   e, e                                        ; $61fb: $5b
	dec  sp                                          ; $61fc: $3b
	dec  de                                          ; $61fd: $1b
	add  c                                           ; $61fe: $81
	dec  sp                                          ; $61ff: $3b
	add  hl, bc                                      ; $6200: $09
	add  e                                           ; $6201: $83
	inc  bc                                          ; $6202: $03
	jr   nc, jr_09d_6281                             ; $6203: $30 $7c

	inc  [hl]                                        ; $6205: $34
	ld   a, a                                        ; $6206: $7f
	ccf                                              ; $6207: $3f
	dec  sp                                          ; $6208: $3b
	add  d                                           ; $6209: $82
	add  c                                           ; $620a: $81
	add  [hl]                                        ; $620b: $86
	rst  $38                                         ; $620c: $ff
	add  d                                           ; $620d: $82
	ld   a, a                                        ; $620e: $7f
	add  b                                           ; $620f: $80
	ccf                                              ; $6210: $3f
	add  b                                           ; $6211: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6212: $cf
	ld   a, [bc]                                     ; $6213: $0a
	ld   a, [hl]                                     ; $6214: $7e
	cp   $bf                                         ; $6215: $fe $bf
	rst  $38                                         ; $6217: $ff
	rst  JumpTable                                         ; $6218: $df
	ld   a, a                                        ; $6219: $7f
	ld   l, a                                        ; $621a: $6f
	cp   a                                           ; $621b: $bf
	or   e                                           ; $621c: $b3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $621d: $cf
	call z, $f380                                    ; $621e: $cc $80 $f3
	add  hl, hl                                      ; $6221: $29
	ld   a, b                                        ; $6222: $78
	ld   hl, sp+$1e                                  ; $6223: $f8 $1e
	ld   a, [hl]                                     ; $6225: $7e
	nop                                              ; $6226: $00
	jr   jr_09d_6229                                 ; $6227: $18 $00

jr_09d_6229:
	inc  bc                                          ; $6229: $03
	nop                                              ; $622a: $00
	inc  l                                           ; $622b: $2c
	ret  nz                                          ; $622c: $c0

	push de                                          ; $622d: $d5
	ret  nz                                          ; $622e: $c0

	and  e                                           ; $622f: $a3
	cp   b                                           ; $6230: $b8
	db   $fd                                         ; $6231: $fd
	or   $ec                                         ; $6232: $f6 $ec
	rst  $38                                         ; $6234: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6235: $cf
	adc  $1d                                         ; $6236: $ce $1d
	ld   e, h                                        ; $6238: $5c
	cp   d                                           ; $6239: $ba
	ld   hl, sp+$34                                  ; $623a: $f8 $34
	ldh  a, [$28]                                    ; $623c: $f0 $28
	ldh  [$90], a                                    ; $623e: $e0 $90
	ret  nz                                          ; $6240: $c0

	ld   h, b                                        ; $6241: $60
	nop                                              ; $6242: $00
	ldh  [rP1], a                                    ; $6243: $e0 $00
	or   b                                           ; $6245: $b0
	nop                                              ; $6246: $00
	ld   e, b                                        ; $6247: $58
	nop                                              ; $6248: $00
	ret  nz                                          ; $6249: $c0

	nop                                              ; $624a: $00
	ld   [$00ff], sp                                 ; $624b: $08 $ff $00
	rst  $38                                         ; $624e: $ff
	nop                                              ; $624f: $00
	rst  $38                                         ; $6250: $ff
	nop                                              ; $6251: $00
	rst  $38                                         ; $6252: $ff
	nop                                              ; $6253: $00
	rst  $38                                         ; $6254: $ff
	nop                                              ; $6255: $00
	rst  $38                                         ; $6256: $ff
	nop                                              ; $6257: $00
	rst  $30                                         ; $6258: $f7
	nop                                              ; $6259: $00
	ld   d, $01                                      ; $625a: $16 $01
	sub  c                                           ; $625c: $91
	nop                                              ; $625d: $00
	add  b                                           ; $625e: $80
	rra                                              ; $625f: $1f
	add  b                                           ; $6260: $80
	dec  e                                           ; $6261: $1d
	add  b                                           ; $6262: $80

jr_09d_6263:
	ld   c, $8b                                      ; $6263: $0e $8b
	nop                                              ; $6265: $00
	add  b                                           ; $6266: $80
	ld   b, b                                        ; $6267: $40
	add  b                                           ; $6268: $80
	and  b                                           ; $6269: $a0
	add  b                                           ; $626a: $80
	ld   b, b                                        ; $626b: $40
	and  d                                           ; $626c: $a2
	nop                                              ; $626d: $00
	add  d                                           ; $626e: $82
	ldh  a, [$92]                                    ; $626f: $f0 $92
	nop                                              ; $6271: $00
	add  b                                           ; $6272: $80

jr_09d_6273:
	ld   bc, $0300                                   ; $6273: $01 $00 $03
	add  c                                           ; $6276: $81
	ld   [bc], a                                     ; $6277: $02
	nop                                              ; $6278: $00
	rlca                                             ; $6279: $07
	add  l                                           ; $627a: $85
	dec  b                                           ; $627b: $05
	add  b                                           ; $627c: $80
	inc  b                                           ; $627d: $04
	ld   bc, $0300                                   ; $627e: $01 $00 $03

jr_09d_6281:
	rst  $38                                         ; $6281: $ff
	nop                                              ; $6282: $00
	rst  $38                                         ; $6283: $ff
	nop                                              ; $6284: $00
	rst  $38                                         ; $6285: $ff
	nop                                              ; $6286: $00
	rst  $38                                         ; $6287: $ff
	nop                                              ; $6288: $00
	rst  $38                                         ; $6289: $ff
	nop                                              ; $628a: $00
	rst  $38                                         ; $628b: $ff
	nop                                              ; $628c: $00
	rst  $38                                         ; $628d: $ff
	nop                                              ; $628e: $00
	rst  $38                                         ; $628f: $ff
	nop                                              ; $6290: $00
	rst  $38                                         ; $6291: $ff
	nop                                              ; $6292: $00
	rst  $38                                         ; $6293: $ff
	nop                                              ; $6294: $00
	rst  $38                                         ; $6295: $ff
	nop                                              ; $6296: $00
	rst  $38                                         ; $6297: $ff
	nop                                              ; $6298: $00
	rst  $38                                         ; $6299: $ff
	nop                                              ; $629a: $00
	rst  $38                                         ; $629b: $ff
	nop                                              ; $629c: $00
	or   $00                                         ; $629d: $f6 $00
	ld   bc, $40bf                                   ; $629f: $01 $bf $40
	add  b                                           ; $62a2: $80
	ld   e, h                                        ; $62a3: $5c
	add  b                                           ; $62a4: $80
	ld   b, l                                        ; $62a5: $45
	add  b                                           ; $62a6: $80
	ld   d, h                                        ; $62a7: $54
	add  d                                           ; $62a8: $82
	ld   d, l                                        ; $62a9: $55
	inc  b                                           ; $62aa: $04
	ld   b, l                                        ; $62ab: $45
	ld   d, l                                        ; $62ac: $55
	ld   d, h                                        ; $62ad: $54
	ld   d, l                                        ; $62ae: $55
	ld   de, $0081                                   ; $62af: $11 $81 $00
	add  b                                           ; $62b2: $80
	add  b                                           ; $62b3: $80
	add  b                                           ; $62b4: $80
	ld   a, [hl]                                     ; $62b5: $7e
	add  b                                           ; $62b6: $80
	adc  a                                           ; $62b7: $8f
	add  hl, bc                                      ; $62b8: $09
	and  $d6                                         ; $62b9: $e6 $d6
	push af                                          ; $62bb: $f5
	or   l                                           ; $62bc: $b5
	or   c                                           ; $62bd: $b1
	and  c                                           ; $62be: $a1
	and  e                                           ; $62bf: $a3
	ei                                               ; $62c0: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62c1: $cf
	rst  $30                                         ; $62c2: $f7
	add  b                                           ; $62c3: $80
	add  a                                           ; $62c4: $87
	add  b                                           ; $62c5: $80
	rra                                              ; $62c6: $1f
	add  b                                           ; $62c7: $80
	ei                                               ; $62c8: $fb
	add  b                                           ; $62c9: $80
	ccf                                              ; $62ca: $3f
	add  b                                           ; $62cb: $80
	jp   $0404                                       ; $62cc: $c3 $04 $04


	db   $fc                                         ; $62cf: $fc
	jr   @+$01                                       ; $62d0: $18 $ff

	rst  $28                                         ; $62d2: $ef
	add  c                                           ; $62d3: $81
	rst  $38                                         ; $62d4: $ff
	nop                                              ; $62d5: $00
	rst  $30                                         ; $62d6: $f7
	add  c                                           ; $62d7: $81
	rst  $38                                         ; $62d8: $ff
	ld   bc, $dcdb                                   ; $62d9: $01 $db $dc
	add  b                                           ; $62dc: $80
	pop  af                                          ; $62dd: $f1
	add  b                                           ; $62de: $80
	ld   h, e                                        ; $62df: $63
	nop                                              ; $62e0: $00
	ld   bc, $fe83                                   ; $62e1: $01 $83 $fe
	add  b                                           ; $62e4: $80
	db   $fc                                         ; $62e5: $fc
	dec  bc                                          ; $62e6: $0b
	db   $fd                                         ; $62e7: $fd
	db   $fc                                         ; $62e8: $fc
	reti                                             ; $62e9: $d9


	jr   nc, jr_09d_6273                             ; $62ea: $30 $87

	ld   e, a                                        ; $62ec: $5f
	add  [hl]                                        ; $62ed: $86
	xor  a                                           ; $62ee: $af
	ld   l, d                                        ; $62ef: $6a
	ld   h, b                                        ; $62f0: $60
	ld   [hl], e                                     ; $62f1: $73
	ld   b, b                                        ; $62f2: $40
	add  b                                           ; $62f3: $80
	ret  nz                                          ; $62f4: $c0

	ld   b, $80                                      ; $62f5: $06 $80
	ret  nz                                          ; $62f7: $c0

	and  b                                           ; $62f8: $a0
	add  b                                           ; $62f9: $80
	or   b                                           ; $62fa: $b0
	add  b                                           ; $62fb: $80
	sbc  b                                           ; $62fc: $98
	add  b                                           ; $62fd: $80
	ret  nc                                          ; $62fe: $d0

	nop                                              ; $62ff: $00
	db   $10                                         ; $6300: $10
	add  b                                           ; $6301: $80
	rst  $38                                         ; $6302: $ff
	inc  bc                                          ; $6303: $03
	ld   a, b                                        ; $6304: $78
	ld   a, a                                        ; $6305: $7f
	cp   a                                           ; $6306: $bf
	ccf                                              ; $6307: $3f
	add  b                                           ; $6308: $80
	ld   a, $09                                      ; $6309: $3e $09
	ld   e, b                                        ; $630b: $58
	add  hl, de                                      ; $630c: $19
	ld   b, $07                                      ; $630d: $06 $07
	jr   c, jr_09d_6311                              ; $630f: $38 $00

jr_09d_6311:
	rlca                                             ; $6311: $07
	nop                                              ; $6312: $00
	ld   a, l                                        ; $6313: $7d
	add  d                                           ; $6314: $82
	add  b                                           ; $6315: $80
	cp   d                                           ; $6316: $ba
	add  c                                           ; $6317: $81
	ld   [hl+], a                                    ; $6318: $22
	add  e                                           ; $6319: $83
	xor  d                                           ; $631a: $aa
	ld   bc, $aa2a                                   ; $631b: $01 $2a $aa
	add  b                                           ; $631e: $80
	ld   a, [hl+]                                    ; $631f: $2a
	inc  bc                                          ; $6320: $03
	adc  e                                           ; $6321: $8b
	ld   h, e                                        ; $6322: $63
	ldh  [rP1], a                                    ; $6323: $e0 $00
	add  b                                           ; $6325: $80
	cp   $80                                         ; $6326: $fe $80
	ld   [bc], a                                     ; $6328: $02
	inc  bc                                          ; $6329: $03
	ld   a, [hl+]                                    ; $632a: $2a
	xor  d                                           ; $632b: $aa
	add  b                                           ; $632c: $80
	nop                                              ; $632d: $00
	add  b                                           ; $632e: $80
	rst  $38                                         ; $632f: $ff
	add  b                                           ; $6330: $80
	nop                                              ; $6331: $00
	rlca                                             ; $6332: $07
	inc  c                                           ; $6333: $0c
	di                                               ; $6334: $f3
	call c, $193c                                    ; $6335: $dc $3c $19
	dec  b                                           ; $6338: $05
	inc  bc                                          ; $6339: $03
	nop                                              ; $633a: $00

jr_09d_633b:
	add  b                                           ; $633b: $80
	rst  $38                                         ; $633c: $ff
	add  b                                           ; $633d: $80
	nop                                              ; $633e: $00
	add  b                                           ; $633f: $80
	rst  $38                                         ; $6340: $ff
	add  b                                           ; $6341: $80
	nop                                              ; $6342: $00
	add  b                                           ; $6343: $80
	add  a                                           ; $6344: $87
	dec  b                                           ; $6345: $05
	ld   b, $87                                      ; $6346: $06 $87
	adc  a                                           ; $6348: $8f
	rrca                                             ; $6349: $0f
	ld   bc, $8000                                   ; $634a: $01 $00 $80
	rst  $38                                         ; $634d: $ff
	add  b                                           ; $634e: $80
	nop                                              ; $634f: $00
	add  b                                           ; $6350: $80
	rst  $38                                         ; $6351: $ff
	add  b                                           ; $6352: $80
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	ld   h, b                                        ; $6355: $60
	add  c                                           ; $6356: $81
	sub  b                                           ; $6357: $90
	inc  bc                                          ; $6358: $03
	ret  nc                                          ; $6359: $d0

	ret  c                                           ; $635a: $d8

	ld   hl, sp+$00                                  ; $635b: $f8 $00
	add  b                                           ; $635d: $80
	rst  $38                                         ; $635e: $ff
	add  b                                           ; $635f: $80
	nop                                              ; $6360: $00
	add  b                                           ; $6361: $80
	rst  $38                                         ; $6362: $ff
	add  c                                           ; $6363: $81
	nop                                              ; $6364: $00
	adc  e                                           ; $6365: $8b
	rst  $38                                         ; $6366: $ff
	add  b                                           ; $6367: $80
	cp   $03                                         ; $6368: $fe $03
	ld   e, $1a                                      ; $636a: $1e $1a
	inc  de                                          ; $636c: $13
	dec  de                                          ; $636d: $1b
	add  b                                           ; $636e: $80
	scf                                              ; $636f: $37
	dec  b                                           ; $6370: $05
	dec  [hl]                                        ; $6371: $35
	scf                                              ; $6372: $37
	ld   [hl-], a                                    ; $6373: $32
	inc  sp                                          ; $6374: $33
	ld   h, d                                        ; $6375: $62
	ld   [hl], d                                     ; $6376: $72
	add  b                                           ; $6377: $80
	ld   h, c                                        ; $6378: $61
	add  b                                           ; $6379: $80
	ld   h, e                                        ; $637a: $63
	dec  bc                                          ; $637b: $0b
	ld   c, a                                        ; $637c: $4f
	jr   nz, jr_09d_633b                             ; $637d: $20 $bc

	or   b                                           ; $637f: $b0
	scf                                              ; $6380: $37
	cp   h                                           ; $6381: $bc
	ld   a, b                                        ; $6382: $78
	ld   l, a                                        ; $6383: $6f
	ld   [hl], b                                     ; $6384: $70
	ld   h, b                                        ; $6385: $60
	ret  z                                           ; $6386: $c8

	ld   hl, sp-$80                                  ; $6387: $f8 $80
	rst  $38                                         ; $6389: $ff
	ld   [bc], a                                     ; $638a: $02
	sbc  a                                           ; $638b: $9f
	cp   a                                           ; $638c: $bf
	push af                                          ; $638d: $f5
	add  c                                           ; $638e: $81
	ld   a, [bc]                                     ; $638f: $0a
	ld   [bc], a                                     ; $6390: $02
	jp   z, $2a0a                                    ; $6391: $ca $0a $2a

	add  c                                           ; $6394: $81
	jp   z, $0a80                                    ; $6395: $ca $80 $0a

	add  b                                           ; $6398: $80
	jp   z, $8a08                                    ; $6399: $ca $08 $8a

	jp   z, $0080                                    ; $639c: $ca $80 $00

	inc  a                                           ; $639f: $3c
	inc  l                                           ; $63a0: $2c
	ld   c, d                                        ; $63a1: $4a
	ld   e, d                                        ; $63a2: $5a
	ld   h, [hl]                                     ; $63a3: $66
	add  b                                           ; $63a4: $80
	ld   h, $00                                      ; $63a5: $26 $00
	ld   h, [hl]                                     ; $63a7: $66
	add  b                                           ; $63a8: $80
	ld   e, d                                        ; $63a9: $5a
	add  b                                           ; $63aa: $80
	inc  a                                           ; $63ab: $3c
	add  d                                           ; $63ac: $82
	nop                                              ; $63ad: $00
	add  b                                           ; $63ae: $80
	rst  $38                                         ; $63af: $ff
	add  b                                           ; $63b0: $80
	nop                                              ; $63b1: $00
	add  b                                           ; $63b2: $80
	rst  $38                                         ; $63b3: $ff
	add  b                                           ; $63b4: $80
	nop                                              ; $63b5: $00
	nop                                              ; $63b6: $00
	rst  $38                                         ; $63b7: $ff
	add  e                                           ; $63b8: $83
	nop                                              ; $63b9: $00
	ld   bc, $00ff                                   ; $63ba: $01 $ff $00
	add  b                                           ; $63bd: $80
	rst  $38                                         ; $63be: $ff
	add  b                                           ; $63bf: $80
	nop                                              ; $63c0: $00
	inc  bc                                          ; $63c1: $03
	ld   e, a                                        ; $63c2: $5f
	ld   b, b                                        ; $63c3: $40
	ld   e, a                                        ; $63c4: $5f
	ld   b, b                                        ; $63c5: $40
	add  b                                           ; $63c6: $80
	ld   a, a                                        ; $63c7: $7f
	add  b                                           ; $63c8: $80
	nop                                              ; $63c9: $00
	ld   [bc], a                                     ; $63ca: $02
	rst  $38                                         ; $63cb: $ff
	nop                                              ; $63cc: $00
	ld   d, l                                        ; $63cd: $55
	add  a                                           ; $63ce: $87
	ld   [hl+], a                                    ; $63cf: $22
	ld   bc, $222a                                   ; $63d0: $01 $2a $22
	add  b                                           ; $63d3: $80
	ld   a, [hl-]                                    ; $63d4: $3a
	add  b                                           ; $63d5: $80
	ld   [bc], a                                     ; $63d6: $02
	nop                                              ; $63d7: $00
	ld   l, d                                        ; $63d8: $6a
	adc  l                                           ; $63d9: $8d
	ld   a, [bc]                                     ; $63da: $0a
	nop                                              ; $63db: $00
	rra                                              ; $63dc: $1f
	adc  l                                           ; $63dd: $8d
	nop                                              ; $63de: $00
	ld   bc, $00ff                                   ; $63df: $01 $ff $00
	add  b                                           ; $63e2: $80
	rst  $38                                         ; $63e3: $ff
	add  b                                           ; $63e4: $80
	nop                                              ; $63e5: $00
	add  b                                           ; $63e6: $80
	ld   a, [$0280]                                  ; $63e7: $fa $80 $02
	add  b                                           ; $63ea: $80
	cp   $80                                         ; $63eb: $fe $80
	nop                                              ; $63ed: $00
	inc  bc                                          ; $63ee: $03
	cp   $ff                                         ; $63ef: $fe $ff
	ld   bc, $8000                                   ; $63f1: $01 $00 $80
	rst  $38                                         ; $63f4: $ff
	add  b                                           ; $63f5: $80
	nop                                              ; $63f6: $00
	add  b                                           ; $63f7: $80
	rst  $38                                         ; $63f8: $ff
	add  b                                           ; $63f9: $80
	nop                                              ; $63fa: $00

jr_09d_63fb:
	inc  bc                                          ; $63fb: $03
	ldh  [rIE], a                                    ; $63fc: $e0 $ff
	db   $10                                         ; $63fe: $10
	ldh  a, [$80]                                    ; $63ff: $f0 $80
	db   $fc                                         ; $6401: $fc
	ld   bc, $00ff                                   ; $6402: $01 $ff $00
	add  b                                           ; $6405: $80
	rst  $38                                         ; $6406: $ff
	add  b                                           ; $6407: $80
	nop                                              ; $6408: $00
	add  b                                           ; $6409: $80
	rst  $38                                         ; $640a: $ff
	add  b                                           ; $640b: $80
	nop                                              ; $640c: $00
	ld   b, $3f                                      ; $640d: $06 $3f
	nop                                              ; $640f: $00
	jr   nz, @-$3e                                   ; $6410: $20 $c0

	ld   e, a                                        ; $6412: $5f
	ld   b, b                                        ; $6413: $40
	sub  l                                           ; $6414: $95
	add  e                                           ; $6415: $83
	ld   d, l                                        ; $6416: $55
	rlca                                             ; $6417: $07
	ld   b, l                                        ; $6418: $45
	ld   d, l                                        ; $6419: $55
	ld   b, l                                        ; $641a: $45
	ld   d, l                                        ; $641b: $55
	ld   b, h                                        ; $641c: $44
	ld   b, l                                        ; $641d: $45
	ld   e, h                                        ; $641e: $5c
	ld   e, l                                        ; $641f: $5d
	add  b                                           ; $6420: $80
	ld   b, c                                        ; $6421: $41
	nop                                              ; $6422: $00
	db   $fc                                         ; $6423: $fc
	add  c                                           ; $6424: $81
	rst  $38                                         ; $6425: $ff
	nop                                              ; $6426: $00
	ei                                               ; $6427: $fb
	add  e                                           ; $6428: $83
	rst  $38                                         ; $6429: $ff
	rlca                                             ; $642a: $07
	ld   a, $ff                                      ; $642b: $3e $ff
	ld   bc, $c7ff                                   ; $642d: $01 $ff $c7
	rst  $38                                         ; $6430: $ff
	inc  bc                                          ; $6431: $03
	db   $fc                                         ; $6432: $fc
	add  b                                           ; $6433: $80
	ldh  [$80], a                                    ; $6434: $e0 $80
	rst  JumpTable                                         ; $6436: $df
	ld   d, $e3                                      ; $6437: $16 $e3
	db   $fc                                         ; $6439: $fc
	sub  d                                           ; $643a: $92
	ldh  a, [c]                                      ; $643b: $f2
	ld   h, e                                        ; $643c: $63
	rst  $28                                         ; $643d: $ef
	jp   $8edf                                       ; $643e: $c3 $df $8e


	cp   a                                           ; $6441: $bf
	and  c                                           ; $6442: $a1
	jr   nc, jr_09d_63fb                             ; $6443: $30 $b6

	and  b                                           ; $6445: $a0
	and  [hl]                                        ; $6446: $a6
	nop                                              ; $6447: $00
	ld   bc, $fffe                                   ; $6448: $01 $fe $ff
	nop                                              ; $644b: $00
	di                                               ; $644c: $f3
	db   $fc                                         ; $644d: $fc
	rrca                                             ; $644e: $0f
	add  c                                           ; $644f: $81
	rst  $38                                         ; $6450: $ff
	nop                                              ; $6451: $00
	add  b                                           ; $6452: $80
	add  c                                           ; $6453: $81
	nop                                              ; $6454: $00
	dec  bc                                          ; $6455: $0b
	ld   b, b                                        ; $6456: $40
	nop                                              ; $6457: $00
	or   b                                           ; $6458: $b0
	ld   b, b                                        ; $6459: $40
	call z, $f610                                    ; $645a: $cc $10 $f6
	inc  e                                           ; $645d: $1c
	add  hl, bc                                      ; $645e: $09
	ld   c, $ce                                      ; $645f: $0e $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6461: $cf
	adc  h                                           ; $6462: $8c
	nop                                              ; $6463: $00
	rlca                                             ; $6464: $07
	add  b                                           ; $6465: $80
	nop                                              ; $6466: $00
	inc  l                                           ; $6467: $2c
	ld   d, e                                        ; $6468: $53
	ld   d, c                                        ; $6469: $51
	ld   d, l                                        ; $646a: $55
	ld   d, h                                        ; $646b: $54
	ld   d, [hl]                                     ; $646c: $56
	add  b                                           ; $646d: $80
	ld   d, h                                        ; $646e: $54
	add  c                                           ; $646f: $81
	ld   d, [hl]                                     ; $6470: $56
	add  b                                           ; $6471: $80
	ld   d, h                                        ; $6472: $54
	add  b                                           ; $6473: $80
	ld   d, d                                        ; $6474: $52
	ld   bc, $f956                                   ; $6475: $01 $56 $f9
	add  e                                           ; $6478: $83
	rst  $38                                         ; $6479: $ff
	add  d                                           ; $647a: $82
	cp   $80                                         ; $647b: $fe $80
	db   $fc                                         ; $647d: $fc
	add  b                                           ; $647e: $80
	ret  nz                                          ; $647f: $c0

	inc  b                                           ; $6480: $04
	add  [hl]                                        ; $6481: $86
	cp   b                                           ; $6482: $b8
	and  d                                           ; $6483: $a2
	cp   a                                           ; $6484: $bf
	rra                                              ; $6485: $1f
	add  c                                           ; $6486: $81
	ld   a, a                                        ; $6487: $7f
	ld   a, [bc]                                     ; $6488: $0a
	dec  a                                           ; $6489: $3d
	rst  $38                                         ; $648a: $ff
	db   $fc                                         ; $648b: $fc
	db   $fd                                         ; $648c: $fd
	ld   hl, sp-$01                                  ; $648d: $f8 $ff
	db   $eb                                         ; $648f: $eb
	rst  $28                                         ; $6490: $ef
	rst  $38                                         ; $6491: $ff
	ld   a, h                                        ; $6492: $7c
	nop                                              ; $6493: $00
	add  h                                           ; $6494: $84
	rst  $38                                         ; $6495: $ff
	inc  b                                           ; $6496: $04
	rst  $28                                         ; $6497: $ef
	inc  de                                          ; $6498: $13
	rst  $38                                         ; $6499: $ff
	inc  a                                           ; $649a: $3c
	ret  nz                                          ; $649b: $c0

	add  c                                           ; $649c: $81
	rst  $38                                         ; $649d: $ff
	ld   bc, $0800                                   ; $649e: $01 $00 $08
	add  h                                           ; $64a1: $84
	rst  $30                                         ; $64a2: $f7
	ld   [bc], a                                     ; $64a3: $02
	ld   [hl], e                                     ; $64a4: $73
	ld   [hl], a                                     ; $64a5: $77
	di                                               ; $64a6: $f3
	add  b                                           ; $64a7: $80
	nop                                              ; $64a8: $00
	ld   a, [bc]                                     ; $64a9: $0a
	db   $fd                                         ; $64aa: $fd
	cp   $fd                                         ; $64ab: $fe $fd
	ld   bc, $80bf                                   ; $64ad: $01 $bf $80
	nop                                              ; $64b0: $00
	add  b                                           ; $64b1: $80
	ldh  [$c0], a                                    ; $64b2: $e0 $c0
	add  b                                           ; $64b4: $80
	add  b                                           ; $64b5: $80
	ret  nz                                          ; $64b6: $c0

	rlca                                             ; $64b7: $07
	add  b                                           ; $64b8: $80
	db   $10                                         ; $64b9: $10
	ld   h, b                                        ; $64ba: $60
	xor  h                                           ; $64bb: $ac
	ld   [hl], b                                     ; $64bc: $70
	or   e                                           ; $64bd: $b3
	add  h                                           ; $64be: $84
	ei                                               ; $64bf: $fb
	adc  e                                           ; $64c0: $8b
	nop                                              ; $64c1: $00
	add  hl, bc                                      ; $64c2: $09
	ret  nz                                          ; $64c3: $c0

	nop                                              ; $64c4: $00
	call nc, $d0f0                                   ; $64c5: $d4 $f0 $d0
	ldh  a, [$de]                                    ; $64c8: $f0 $de
	ld   hl, sp+$1d                                  ; $64ca: $f8 $1d
	nop                                              ; $64cc: $00
	add  b                                           ; $64cd: $80
	rst  $38                                         ; $64ce: $ff
	add  b                                           ; $64cf: $80
	nop                                              ; $64d0: $00
	add  b                                           ; $64d1: $80
	rst  $38                                         ; $64d2: $ff
	add  b                                           ; $64d3: $80
	nop                                              ; $64d4: $00
	inc  hl                                          ; $64d5: $23
	ld   e, b                                        ; $64d6: $58
	ld   b, b                                        ; $64d7: $40
	ld   a, a                                        ; $64d8: $7f
	ld   b, b                                        ; $64d9: $40
	ld   h, a                                        ; $64da: $67
	nop                                              ; $64db: $00
	sbc  $1e                                         ; $64dc: $de $1e
	ld   sp, hl                                      ; $64de: $f9
	ld   a, c                                        ; $64df: $79
	db   $e4                                         ; $64e0: $e4
	rst  $20                                         ; $64e1: $e7
	jp   $87cf                                       ; $64e2: $c3 $cf $87


	adc  a                                           ; $64e5: $8f
	rra                                              ; $64e6: $1f
	ld   h, e                                        ; $64e7: $63
	adc  e                                           ; $64e8: $8b
	rrca                                             ; $64e9: $0f
	sbc  a                                           ; $64ea: $9f
	rra                                              ; $64eb: $1f
	ld   a, a                                        ; $64ec: $7f
	rra                                              ; $64ed: $1f
	cp   $ef                                         ; $64ee: $fe $ef
	add  hl, bc                                      ; $64f0: $09
	rst  $30                                         ; $64f1: $f7
	or   b                                           ; $64f2: $b0
	ret  nz                                          ; $64f3: $c0

	xor  [hl]                                        ; $64f4: $ae
	add  hl, sp                                      ; $64f5: $39
	rrca                                             ; $64f6: $0f
	sbc  b                                           ; $64f7: $98
	add  a                                           ; $64f8: $87
	rst  ToBoot                                         ; $64f9: $c7
	add  b                                           ; $64fa: $80
	rst  JumpTable                                         ; $64fb: $df
	ld   a, [bc]                                     ; $64fc: $0a
	db   $ec                                         ; $64fd: $ec
	ld   l, l                                        ; $64fe: $6d
	xor  l                                           ; $64ff: $ad
	rst  $28                                         ; $6500: $ef
	db   $ec                                         ; $6501: $ec
	rst  $28                                         ; $6502: $ef
	adc  h                                           ; $6503: $8c
	adc  a                                           ; $6504: $8f
	dec  c                                           ; $6505: $0d
	rrca                                             ; $6506: $0f
	ld   bc, $0081                                   ; $6507: $01 $81 $00
	add  b                                           ; $650a: $80
	rst  $38                                         ; $650b: $ff
	nop                                              ; $650c: $00

Jump_09d_650d:
	nop                                              ; $650d: $00
	add  b                                           ; $650e: $80
	rst  $28                                         ; $650f: $ef
	ld   b, $ff                                      ; $6510: $06 $ff
	nop                                              ; $6512: $00
	rst  $38                                         ; $6513: $ff
	ld   b, b                                        ; $6514: $40
	rst  ToBoot                                         ; $6515: $c7
	ccf                                              ; $6516: $3f
	cp   e                                           ; $6517: $bb
	add  d                                           ; $6518: $82
	inc  bc                                          ; $6519: $03
	add  hl, bc                                      ; $651a: $09
	cp   $fd                                         ; $651b: $fe $fd
	ld   [bc], a                                     ; $651d: $02
	ld   a, d                                        ; $651e: $7a
	ld   a, a                                        ; $651f: $7f
	ld   hl, sp+$0e                                  ; $6520: $f8 $0e
	cp   $70                                         ; $6522: $fe $70
	add  b                                           ; $6524: $80
	add  c                                           ; $6525: $81
	rst  $38                                         ; $6526: $ff
	rrca                                             ; $6527: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6528: $cf
	call z, Call_09d_78c0                            ; $6529: $cc $c0 $78
	cp   b                                           ; $652c: $b8
	ld   b, e                                        ; $652d: $43
	ld   [hl], a                                     ; $652e: $77
	or   a                                           ; $652f: $b7
	halt                                             ; $6530: $76
	ld   a, [hl]                                     ; $6531: $7e
	ld   a, e                                        ; $6532: $7b
	ld   bc, $f80b                                   ; $6533: $01 $0b $f8
	db   $fd                                         ; $6536: $fd
	db   $fc                                         ; $6537: $fc
	add  b                                           ; $6538: $80
	ret  nz                                          ; $6539: $c0

	nop                                              ; $653a: $00
	rst  $38                                         ; $653b: $ff
	add  b                                           ; $653c: $80
	nop                                              ; $653d: $00
	add  b                                           ; $653e: $80
	ld   hl, sp-$7b                                  ; $653f: $f8 $85
	rst  $38                                         ; $6541: $ff
	dec  b                                           ; $6542: $05
	ld   a, a                                        ; $6543: $7f
	dec  d                                           ; $6544: $15
	ld   a, [bc]                                     ; $6545: $0a
	ld   c, d                                        ; $6546: $4a
	adc  d                                           ; $6547: $8a
	ld   l, d                                        ; $6548: $6a
	add  c                                           ; $6549: $81
	ld   a, [bc]                                     ; $654a: $0a
	add  c                                           ; $654b: $81
	jp   z, $ea83                                    ; $654c: $ca $83 $ea

	inc  bc                                          ; $654f: $03
	rra                                              ; $6550: $1f
	nop                                              ; $6551: $00
	rst  $38                                         ; $6552: $ff
	nop                                              ; $6553: $00
	add  b                                           ; $6554: $80

jr_09d_6555:
	ld   a, a                                        ; $6555: $7f
	add  b                                           ; $6556: $80
	ld   b, b                                        ; $6557: $40
	inc  bc                                          ; $6558: $03
	ld   e, a                                        ; $6559: $5f
	ld   b, b                                        ; $655a: $40
	rra                                              ; $655b: $1f
	nop                                              ; $655c: $00
	add  b                                           ; $655d: $80
	rst  $38                                         ; $655e: $ff
	add  b                                           ; $655f: $80
	nop                                              ; $6560: $00
	add  b                                           ; $6561: $80
	sbc  [hl]                                        ; $6562: $9e
	ld   bc, $9d9c                                   ; $6563: $01 $9c $9d
	add  b                                           ; $6566: $80
	dec  de                                          ; $6567: $1b
	ld   b, $d9                                      ; $6568: $06 $d9
	dec  de                                          ; $656a: $1b
	ld   h, a                                        ; $656b: $67
	daa                                              ; $656c: $27
	jr   nz, jr_09d_6596                             ; $656d: $20 $27

	inc  sp                                          ; $656f: $33
	add  c                                           ; $6570: $81
	scf                                              ; $6571: $37
	rlca                                             ; $6572: $07
	call z, $37bb                                    ; $6573: $cc $bb $37
	nop                                              ; $6576: $00
	pop  af                                          ; $6577: $f1
	add  b                                           ; $6578: $80
	ei                                               ; $6579: $fb
	nop                                              ; $657a: $00
	add  b                                           ; $657b: $80
	inc  c                                           ; $657c: $0c
	ld   d, $60                                      ; $657d: $16 $60
	dec  de                                          ; $657f: $1b
	jr   nz, jr_09d_6593                             ; $6580: $20 $11

	dec  sp                                          ; $6582: $3b
	ld   a, [bc]                                     ; $6583: $0a
	dec  [hl]                                        ; $6584: $35
	call nz, $60c0                                   ; $6585: $c4 $c0 $60
	and  $36                                         ; $6588: $e6 $36
	or   a                                           ; $658a: $b7
	ld   d, a                                        ; $658b: $57
	ld   d, e                                        ; $658c: $53
	ld   e, e                                        ; $658d: $5b
	ld   e, c                                        ; $658e: $59
	sbc  c                                           ; $658f: $99
	sbc  e                                           ; $6590: $9b
	dec  de                                          ; $6591: $1b
	sbc  e                                           ; $6592: $9b

jr_09d_6593:
	dec  de                                          ; $6593: $1b
	sbc  b                                           ; $6594: $98
	add  c                                           ; $6595: $81

jr_09d_6596:
	nop                                              ; $6596: $00
	inc  c                                           ; $6597: $0c
	ld   [$0b00], sp                                 ; $6598: $08 $00 $0b
	inc  bc                                          ; $659b: $03
	call nz, $ebc7                                   ; $659c: $c4 $c7 $eb
	rst  $28                                         ; $659f: $ef
	ld   hl, sp-$01                                  ; $65a0: $f8 $ff
	db   $fc                                         ; $65a2: $fc
	rst  $38                                         ; $65a3: $ff
	inc  bc                                          ; $65a4: $03
	add  e                                           ; $65a5: $83
	nop                                              ; $65a6: $00
	add  b                                           ; $65a7: $80
	rst  $38                                         ; $65a8: $ff
	add  hl, bc                                      ; $65a9: $09
	nop                                              ; $65aa: $00
	rst  $38                                         ; $65ab: $ff
	cp   $7a                                         ; $65ac: $fe $7a
	cp   e                                           ; $65ae: $bb
	rst  $38                                         ; $65af: $ff
	ccf                                              ; $65b0: $3f
	rst  $38                                         ; $65b1: $ff
	cp   $01                                         ; $65b2: $fe $01
	add  b                                           ; $65b4: $80
	rlca                                             ; $65b5: $07
	add  b                                           ; $65b6: $80
	ld   bc, $fc80                                   ; $65b7: $01 $80 $fc
	dec  b                                           ; $65ba: $05
	inc  b                                           ; $65bb: $04
	db   $fc                                         ; $65bc: $fc
	ld   e, c                                        ; $65bd: $59
	dec  de                                          ; $65be: $1b
	ld   e, b                                        ; $65bf: $58
	add  hl, de                                      ; $65c0: $19
	add  b                                           ; $65c1: $80
	ld   a, [de]                                     ; $65c2: $1a
	inc  bc                                          ; $65c3: $03
	ei                                               ; $65c4: $fb
	rst  $38                                         ; $65c5: $ff
	nop                                              ; $65c6: $00
	rst  $38                                         ; $65c7: $ff
	add  b                                           ; $65c8: $80
	ret  nz                                          ; $65c9: $c0

	add  b                                           ; $65ca: $80
	ld   [bc], a                                     ; $65cb: $02
	add  b                                           ; $65cc: $80
	cp   $80                                         ; $65cd: $fe $80
	nop                                              ; $65cf: $00
	inc  b                                           ; $65d0: $04
	cp   a                                           ; $65d1: $bf
	add  b                                           ; $65d2: $80
	jr   nz, jr_09d_6555                             ; $65d3: $20 $80

	sub  l                                           ; $65d5: $95
	add  b                                           ; $65d6: $80
	ld   [$0a01], a                                  ; $65d7: $ea $01 $0a
	ld   [$0a89], a                                  ; $65da: $ea $89 $0a
	dec  b                                           ; $65dd: $05
	or   a                                           ; $65de: $b7
	rla                                              ; $65df: $17
	inc  hl                                          ; $65e0: $23
	ld   b, e                                        ; $65e1: $43
	ld   a, e                                        ; $65e2: $7b
	ld   e, e                                        ; $65e3: $5b
	add  b                                           ; $65e4: $80
	ld   e, l                                        ; $65e5: $5d
	add  b                                           ; $65e6: $80
	ld   e, [hl]                                     ; $65e7: $5e
	add  b                                           ; $65e8: $80
	ld   c, a                                        ; $65e9: $4f
	add  b                                           ; $65ea: $80
	ld   b, e                                        ; $65eb: $43
	add  b                                           ; $65ec: $80
	ld   b, b                                        ; $65ed: $40
	ld   bc, $0c46                                   ; $65ee: $01 $46 $0c
	add  b                                           ; $65f1: $80
	ld   [$ca03], sp                                 ; $65f2: $08 $03 $ca
	or   c                                           ; $65f5: $b1
	ld   sp, $8200                                   ; $65f6: $31 $00 $82
	rra                                              ; $65f9: $1f
	add  b                                           ; $65fa: $80
	ret  nz                                          ; $65fb: $c0

	add  b                                           ; $65fc: $80
	ldh  [rAUD1LOW], a                               ; $65fd: $e0 $13
	inc  bc                                          ; $65ff: $03
	ld   e, e                                        ; $6600: $5b
	ld   e, a                                        ; $6601: $5f
	ld   d, a                                        ; $6602: $57
	ld   [hl], h                                     ; $6603: $74
	or   h                                           ; $6604: $b4
	ld   a, [$d16b]                                  ; $6605: $fa $6b $d1
	jp   nc, $0300                                   ; $6608: $d2 $00 $03

	pop  de                                          ; $660b: $d1
	ldh  a, [$e8]                                    ; $660c: $f0 $e8
	ldh  a, [$c8]                                    ; $660e: $f0 $c8
	rst  $38                                         ; $6610: $ff
	rst  $28                                         ; $6611: $ef
	rst  $38                                         ; $6612: $ff
	add  b                                           ; $6613: $80
	ld   a, a                                        ; $6614: $7f
	add  b                                           ; $6615: $80
	cp   a                                           ; $6616: $bf
	inc  bc                                          ; $6617: $03
	ccf                                              ; $6618: $3f
	cp   a                                           ; $6619: $bf
	ccf                                              ; $661a: $3f
	cp   a                                           ; $661b: $bf
	add  b                                           ; $661c: $80
	ld   a, a                                        ; $661d: $7f
	add  b                                           ; $661e: $80
	rst  $38                                         ; $661f: $ff
	nop                                              ; $6620: $00
	ldh  [$bd], a                                    ; $6621: $e0 $bd
	nop                                              ; $6623: $00
	pop  af                                          ; $6624: $f1
	nop                                              ; $6625: $00
	add  h                                           ; $6626: $84
	nop                                              ; $6627: $00
	ld   [bc], a                                     ; $6628: $02
	dec  de                                          ; $6629: $1b
	nop                                              ; $662a: $00
	inc  h                                           ; $662b: $24
	add  b                                           ; $662c: $80
	dec  bc                                          ; $662d: $0b
	add  b                                           ; $662e: $80
	add  hl, de                                      ; $662f: $19
	ld   bc, $3d1d                                   ; $6630: $01 $1d $3d
	add  b                                           ; $6633: $80
	ld   c, $80                                      ; $6634: $0e $80
	rlca                                             ; $6636: $07
	ld   bc, $1e0e                                   ; $6637: $01 $0e $1e
	add  b                                           ; $663a: $80
	rlca                                             ; $663b: $07
	ld   bc, $0b03                                   ; $663c: $01 $03 $0b
	add  b                                           ; $663f: $80
	nop                                              ; $6640: $00
	dec  b                                           ; $6641: $05
	inc  bc                                          ; $6642: $03
	rlca                                             ; $6643: $07
	nop                                              ; $6644: $00
	ld   [bc], a                                     ; $6645: $02
	nop                                              ; $6646: $00
	ld   bc, $0085                                   ; $6647: $01 $85 $00
	add  b                                           ; $664a: $80
	ld   bc, $0280                                   ; $664b: $01 $80 $02
	add  b                                           ; $664e: $80
	nop                                              ; $664f: $00
	add  b                                           ; $6650: $80
	ld   bc, $0c04                                   ; $6651: $01 $04 $0c
	nop                                              ; $6654: $00
	jr   nc, jr_09d_665f                             ; $6655: $30 $08

	ret  z                                           ; $6657: $c8

	add  b                                           ; $6658: $80
	inc  a                                           ; $6659: $3c
	inc  bc                                          ; $665a: $03
	db   $fc                                         ; $665b: $fc
	cp   $f8                                         ; $665c: $fe $f8
	ld   sp, hl                                      ; $665e: $f9

jr_09d_665f:
	add  d                                           ; $665f: $82
	ld   hl, sp-$80                                  ; $6660: $f8 $80
	ld   a, h                                        ; $6662: $7c
	add  b                                           ; $6663: $80
	ccf                                              ; $6664: $3f
	add  b                                           ; $6665: $80
	rst  JumpTable                                         ; $6666: $df
	add  b                                           ; $6667: $80
	ld   h, a                                        ; $6668: $67
	add  b                                           ; $6669: $80
	cp   e                                           ; $666a: $bb
	add  b                                           ; $666b: $80
	call c, $e780                                    ; $666c: $dc $80 $e7
	add  b                                           ; $666f: $80
	ld   a, e                                        ; $6670: $7b
	add  c                                           ; $6671: $81
	inc  e                                           ; $6672: $1c
	ld   a, [bc]                                     ; $6673: $0a
	sbc  h                                           ; $6674: $9c
	dec  b                                           ; $6675: $05
	ld   b, l                                        ; $6676: $45
	db   $10                                         ; $6677: $10
	jr   nc, jr_09d_6682                             ; $6678: $30 $08

	jr   jr_09d_667e                                 ; $667a: $18 $02

	ld   c, $00                                      ; $667c: $0e $00

jr_09d_667e:
	inc  bc                                          ; $667e: $03
	adc  c                                           ; $667f: $89
	nop                                              ; $6680: $00
	inc  bc                                          ; $6681: $03

jr_09d_6682:
	rlca                                             ; $6682: $07
	nop                                              ; $6683: $00
	ld   b, h                                        ; $6684: $44
	ld   b, e                                        ; $6685: $43
	add  b                                           ; $6686: $80
	ld   bc, $0084                                   ; $6687: $01 $84 $00
	nop                                              ; $668a: $00
	ld   bc, $0081                                   ; $668b: $01 $81 $00
	inc  b                                           ; $668e: $04
	ld   [bc], a                                     ; $668f: $02
	ld   bc, $038d                                   ; $6690: $01 $8d $03
	ld   [hl], e                                     ; $6693: $73
	add  b                                           ; $6694: $80
	ld   b, $01                                      ; $6695: $06 $01
	inc  a                                           ; $6697: $3c
	dec  a                                           ; $6698: $3d
	add  b                                           ; $6699: $80
	db   $fd                                         ; $669a: $fd
	rla                                              ; $669b: $17
	ld   sp, hl                                      ; $669c: $f9
	ei                                               ; $669d: $fb
	di                                               ; $669e: $f3
	or   $e7                                         ; $669f: $f6 $e7
	db   $e4                                         ; $66a1: $e4
	ld   h, [hl]                                     ; $66a2: $66
	ld   l, l                                        ; $66a3: $6d
	ld   c, c                                        ; $66a4: $49
	ld   e, e                                        ; $66a5: $5b
	sub  e                                           ; $66a6: $93
	and  $76                                         ; $66a7: $e6 $76
	inc  d                                           ; $66a9: $14
	dec  [hl]                                        ; $66aa: $35
	ld   sp, $3a33                                   ; $66ab: $31 $33 $3a
	ld   e, $05                                      ; $66ae: $1e $05
	inc  e                                           ; $66b0: $1c
	ld   a, [bc]                                     ; $66b1: $0a
	ld   [$8004], sp                                 ; $66b2: $08 $04 $80
	add  b                                           ; $66b5: $80
	add  hl, bc                                      ; $66b6: $09
	nop                                              ; $66b7: $00
	adc  b                                           ; $66b8: $88
	jr   nz, jr_09d_670e                             ; $66b9: $20 $53

	nop                                              ; $66bb: $00
	inc  c                                           ; $66bc: $0c
	inc  bc                                          ; $66bd: $03
	inc  sp                                          ; $66be: $33
	rrca                                             ; $66bf: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66c0: $cf
	add  b                                           ; $66c1: $80
	ccf                                              ; $66c2: $3f
	ld   bc, $fffe                                   ; $66c3: $01 $fe $ff
	add  b                                           ; $66c6: $80
	db   $fd                                         ; $66c7: $fd
	ld   c, $f9                                      ; $66c8: $0e $f9
	ei                                               ; $66ca: $fb
	di                                               ; $66cb: $f3
	rst  $30                                         ; $66cc: $f7
	or   $f4                                         ; $66cd: $f6 $f4
	and  $ee                                         ; $66cf: $e6 $ee
	adc  $df                                         ; $66d1: $ce $df
	sbc  e                                           ; $66d3: $9b
	cp   c                                           ; $66d4: $b9
	or   c                                           ; $66d5: $b1
	or   h                                           ; $66d6: $b4
	dec  h                                           ; $66d7: $25
	add  b                                           ; $66d8: $80
	ld   l, l                                        ; $66d9: $6d
	ld   d, $d0                                      ; $66da: $16 $d0
	ldh  a, [c]                                      ; $66dc: $f2
	ret                                              ; $66dd: $c9


	adc  h                                           ; $66de: $8c
	and  h                                           ; $66df: $a4
	inc  l                                           ; $66e0: $2c
	ld   l, d                                        ; $66e1: $6a
	ld   l, b                                        ; $66e2: $68
	add  h                                           ; $66e3: $84
	sub  b                                           ; $66e4: $90
	ret  c                                           ; $66e5: $d8

	ldh  a, [$28]                                    ; $66e6: $f0 $28
	ld   h, b                                        ; $66e8: $60
	ld   d, h                                        ; $66e9: $54
	ld   b, b                                        ; $66ea: $40
	ld   c, d                                        ; $66eb: $4a
	ret  nz                                          ; $66ec: $c0

	and  h                                           ; $66ed: $a4
	add  d                                           ; $66ee: $82
	ld   b, b                                        ; $66ef: $40
	nop                                              ; $66f0: $00
	add  b                                           ; $66f1: $80
	adc  c                                           ; $66f2: $89
	nop                                              ; $66f3: $00
	inc  b                                           ; $66f4: $04
	ret  nz                                          ; $66f5: $c0

	nop                                              ; $66f6: $00
	jr   nz, @-$7e                                   ; $66f7: $20 $80

	ret  nz                                          ; $66f9: $c0

	add  c                                           ; $66fa: $81
	ld   b, b                                        ; $66fb: $40
	rlca                                             ; $66fc: $07
	ret  nc                                          ; $66fd: $d0

	ldh  [hScriptOpcodeParams], a                                    ; $66fe: $e0 $a0
	ldh  [rAUD4LEN], a                               ; $6700: $e0 $20
	and  b                                           ; $6702: $a0
	ld   e, b                                        ; $6703: $58
	ld   d, b                                        ; $6704: $50
	add  b                                           ; $6705: $80
	ret  nc                                          ; $6706: $d0

	ld   b, $88                                      ; $6707: $06 $88
	and  b                                           ; $6709: $a0
	jr   nz, jr_09d_676c                             ; $670a: $20 $60

	ld   d, b                                        ; $670c: $50
	ret  nz                                          ; $670d: $c0

jr_09d_670e:
	and  b                                           ; $670e: $a0
	add  c                                           ; $670f: $81
	add  b                                           ; $6710: $80
	inc  h                                           ; $6711: $24
	ld   b, b                                        ; $6712: $40
	nop                                              ; $6713: $00
	add  b                                           ; $6714: $80
	nop                                              ; $6715: $00
	ld   bc, $0300                                   ; $6716: $01 $00 $03
	ld   bc, $0206                                   ; $6719: $01 $06 $02
	inc  c                                           ; $671c: $0c
	rlca                                             ; $671d: $07
	add  hl, bc                                      ; $671e: $09
	inc  bc                                          ; $671f: $03
	inc  d                                           ; $6720: $14
	ld   bc, $101a                                   ; $6721: $01 $1a $10
	ld   e, $3a                                      ; $6724: $1e $3a
	ld   h, e                                        ; $6726: $63
	dec  a                                           ; $6727: $3d
	inc  e                                           ; $6728: $1c
	rra                                              ; $6729: $1f
	ccf                                              ; $672a: $3f
	cpl                                              ; $672b: $2f
	ld   e, $17                                      ; $672c: $1e $17
	ld   c, [hl]                                     ; $672e: $4e
	ld   [$1303], sp                                 ; $672f: $08 $03 $13
	jr   nc, @+$06                                   ; $6732: $30 $04

	inc  e                                           ; $6734: $1c
	nop                                              ; $6735: $00
	ld   [$0180], sp                                 ; $6736: $08 $80 $01
	add  c                                           ; $6739: $81
	rlca                                             ; $673a: $07
	inc  b                                           ; $673b: $04
	ld   b, $07                                      ; $673c: $06 $07
	inc  d                                           ; $673e: $14
	rrca                                             ; $673f: $0f
	dec  l                                           ; $6740: $2d
	add  d                                           ; $6741: $82
	rra                                              ; $6742: $1f
	nop                                              ; $6743: $00
	inc  e                                           ; $6744: $1c
	add  b                                           ; $6745: $80
	rra                                              ; $6746: $1f
	inc  bc                                          ; $6747: $03
	ccf                                              ; $6748: $3f
	rrca                                             ; $6749: $0f
	dec  de                                          ; $674a: $1b
	rlca                                             ; $674b: $07
	add  b                                           ; $674c: $80
	ld   b, $00                                      ; $674d: $06 $00
	ld   [$0180], sp                                 ; $674f: $08 $80 $01
	add  hl, bc                                      ; $6752: $09
	inc  bc                                          ; $6753: $03
	dec  de                                          ; $6754: $1b
	rlca                                             ; $6755: $07
	daa                                              ; $6756: $27
	ld   c, $32                                      ; $6757: $0e $32
	nop                                              ; $6759: $00
	rlca                                             ; $675a: $07
	inc  bc                                          ; $675b: $03
	rrca                                             ; $675c: $0f
	add  e                                           ; $675d: $83
	rlca                                             ; $675e: $07
	nop                                              ; $675f: $00
	dec  bc                                          ; $6760: $0b
	add  c                                           ; $6761: $81
	inc  bc                                          ; $6762: $03
	add  b                                           ; $6763: $80
	ld   [bc], a                                     ; $6764: $02
	add  b                                           ; $6765: $80
	ld   bc, $0380                                   ; $6766: $01 $80 $03
	ld   bc, $030b                                   ; $6769: $01 $0b $03

jr_09d_676c:
	add  d                                           ; $676c: $82
	rlca                                             ; $676d: $07
	ld   b, $0b                                      ; $676e: $06 $0b
	inc  bc                                          ; $6770: $03
	dec  b                                           ; $6771: $05
	ld   bc, $0002                                   ; $6772: $01 $02 $00
	inc  bc                                          ; $6775: $03
	add  c                                           ; $6776: $81
	ld   bc, $0700                                   ; $6777: $01 $00 $07
	add  l                                           ; $677a: $85
	inc  bc                                          ; $677b: $03
	dec  c                                           ; $677c: $0d
	dec  sp                                          ; $677d: $3b
	inc  bc                                          ; $677e: $03
	ei                                               ; $677f: $fb
	dec  sp                                          ; $6780: $3b
	ld   a, [$cafb]                                  ; $6781: $fa $fb $ca
	ei                                               ; $6784: $fb
	xor  c                                           ; $6785: $a9
	ld   sp, hl                                      ; $6786: $f9
	add  hl, de                                      ; $6787: $19
	ld   sp, hl                                      ; $6788: $f9
	ld   h, l                                        ; $6789: $65
	push hl                                          ; $678a: $e5
	add  b                                           ; $678b: $80
	sbc  $09                                         ; $678c: $de $09
	rst  $20                                         ; $678e: $e7
	rst  $38                                         ; $678f: $ff
	rst  $10                                         ; $6790: $d7
	rst  $38                                         ; $6791: $ff
	xor  [hl]                                        ; $6792: $ae
	cp   $1c                                         ; $6793: $fe $1c
	db   $fd                                         ; $6795: $fd
	ld   a, c                                        ; $6796: $79
	ei                                               ; $6797: $fb
	add  b                                           ; $6798: $80
	di                                               ; $6799: $f3
	ld   bc, $e4e0                                   ; $679a: $01 $e0 $e4
	add  b                                           ; $679d: $80
	call nz, $3480                                   ; $679e: $c4 $80 $34
	inc  b                                           ; $67a1: $04
	ld   a, h                                        ; $67a2: $7c
	ld   a, b                                        ; $67a3: $78
	ldh  a, [$30]                                    ; $67a4: $f0 $30
	ld   [hl], $81                                   ; $67a6: $36 $81
	stop                                             ; $67a8: $10 $00
	rra                                              ; $67aa: $1f
	add  e                                           ; $67ab: $83
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	inc  b                                           ; $67ae: $04
	add  c                                           ; $67af: $81
	nop                                              ; $67b0: $00
	add  hl, bc                                      ; $67b1: $09
	ld   sp, $bfff                                   ; $67b2: $31 $ff $bf
	rst  $38                                         ; $67b5: $ff
	ld   c, a                                        ; $67b6: $4f
	rst  $38                                         ; $67b7: $ff
	cp   l                                           ; $67b8: $bd
	db   $fd                                         ; $67b9: $fd
	ld   a, [hl]                                     ; $67ba: $7e
	cp   $80                                         ; $67bb: $fe $80
	db   $fc                                         ; $67bd: $fc
	nop                                              ; $67be: $00
	ld   hl, sp-$7f                                  ; $67bf: $f8 $81
	ei                                               ; $67c1: $fb
	dec  d                                           ; $67c2: $15
	ld   a, d                                        ; $67c3: $7a
	ld   a, [$fa9a]                                  ; $67c4: $fa $9a $fa
	dec  de                                          ; $67c7: $1b
	ld   a, [$f5f2]                                  ; $67c8: $fa $f2 $f5
	inc  b                                           ; $67cb: $04
	ld   [bc], a                                     ; $67cc: $02
	ld   [$2904], sp                                 ; $67cd: $08 $04 $29
	add  hl, de                                      ; $67d0: $19
	ld   [hl], d                                     ; $67d1: $72
	ld   [hl-], a                                    ; $67d2: $32
	adc  b                                           ; $67d3: $88
	ldh  a, [$fc]                                    ; $67d4: $f0 $fc
	ld   hl, sp-$01                                  ; $67d6: $f8 $ff
	db   $fc                                         ; $67d8: $fc
	add  b                                           ; $67d9: $80
	adc  e                                           ; $67da: $8b
	add  b                                           ; $67db: $80
	ld   [hl], e                                     ; $67dc: $73
	add  b                                           ; $67dd: $80
	dec  de                                          ; $67de: $1b
	inc  c                                           ; $67df: $0c
	inc  bc                                          ; $67e0: $03
	db   $e3                                         ; $67e1: $e3
	pop  hl                                          ; $67e2: $e1
	ld   sp, hl                                      ; $67e3: $f9
	ld   [$800c], sp                                 ; $67e4: $08 $0c $80
	ld   [bc], a                                     ; $67e7: $02
	add  c                                           ; $67e8: $81
	nop                                              ; $67e9: $00
	inc  b                                           ; $67ea: $04
	nop                                              ; $67eb: $00
	ld   c, $81                                      ; $67ec: $0e $81
	nop                                              ; $67ee: $00
	add  hl, bc                                      ; $67ef: $09
	ld   b, e                                        ; $67f0: $43
	nop                                              ; $67f1: $00
	call nz, $ad00                                   ; $67f2: $c4 $00 $ad
	rra                                              ; $67f5: $1f
	ld   a, a                                        ; $67f6: $7f
	ccf                                              ; $67f7: $3f
	db   $fc                                         ; $67f8: $fc
	ld   a, h                                        ; $67f9: $7c
	add  b                                           ; $67fa: $80
	or   e                                           ; $67fb: $b3
	add  b                                           ; $67fc: $80
	and  a                                           ; $67fd: $a7
	add  b                                           ; $67fe: $80
	or   b                                           ; $67ff: $b0
	inc  c                                           ; $6800: $0c
	add  b                                           ; $6801: $80
	adc  a                                           ; $6802: $8f
	rrca                                             ; $6803: $0f
	ccf                                              ; $6804: $3f
	jr   nz, jr_09d_6867                             ; $6805: $20 $60

	ld   b, h                                        ; $6807: $44
	ret  nz                                          ; $6808: $c0

	ld   b, $00                                      ; $6809: $06 $00
	ld   b, e                                        ; $680b: $43
	nop                                              ; $680c: $00
	pop  hl                                          ; $680d: $e1
	add  c                                           ; $680e: $81
	nop                                              ; $680f: $00
	dec  b                                           ; $6810: $05
	add  [hl]                                        ; $6811: $86
	ld   b, $47                                      ; $6812: $06 $47
	inc  bc                                          ; $6814: $03
	ld   h, l                                        ; $6815: $65
	cp   $80                                         ; $6816: $fe $80
	rst  $38                                         ; $6818: $ff
	add  b                                           ; $6819: $80
	rra                                              ; $681a: $1f
	nop                                              ; $681b: $00
	di                                               ; $681c: $f3
	add  c                                           ; $681d: $81
	rst  $38                                         ; $681e: $ff
	ld   [bc], a                                     ; $681f: $02
	ld   l, e                                        ; $6820: $6b
	ld   a, a                                        ; $6821: $7f
	daa                                              ; $6822: $27
	add  l                                           ; $6823: $85
	cp   a                                           ; $6824: $bf
	ld   bc, $5f1f                                   ; $6825: $01 $1f $5f
	add  b                                           ; $6828: $80
	rra                                              ; $6829: $1f
	ld   [$02a2], sp                                 ; $682a: $08 $a2 $02
	ld   h, b                                        ; $682d: $60
	add  b                                           ; $682e: $80
	and  b                                           ; $682f: $a0
	ret  nz                                          ; $6830: $c0

	jp   hl                                          ; $6831: $e9


	pop  af                                          ; $6832: $f1
	add  a                                           ; $6833: $87
	add  e                                           ; $6834: $83
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	ret  nz                                          ; $6837: $c0

	add  e                                           ; $6838: $83
	add  b                                           ; $6839: $80
	ld   c, $b0                                      ; $683a: $0e $b0
	add  b                                           ; $683c: $80
	cp   h                                           ; $683d: $bc
	or   b                                           ; $683e: $b0
	cp   [hl]                                        ; $683f: $be
	cp   h                                           ; $6840: $bc
	xor  a                                           ; $6841: $af
	cp   [hl]                                        ; $6842: $be
	inc  sp                                          ; $6843: $33
	ccf                                              ; $6844: $3f
	ld   l, l                                        ; $6845: $6d
	ld   a, a                                        ; $6846: $7f
	ld   [hl], a                                     ; $6847: $77
	ld   a, a                                        ; $6848: $7f
	ld   sp, hl                                      ; $6849: $f9
	add  c                                           ; $684a: $81
	rst  $38                                         ; $684b: $ff
	dec  c                                           ; $684c: $0d
	rst  JumpTable                                         ; $684d: $df
	rst  $38                                         ; $684e: $ff
	rst  $28                                         ; $684f: $ef
	rst  $38                                         ; $6850: $ff

jr_09d_6851:
	ld   d, a                                        ; $6851: $57
	ld   a, a                                        ; $6852: $7f
	ld   a, e                                        ; $6853: $7b
	ld   a, a                                        ; $6854: $7f
	dec  h                                           ; $6855: $25
	ccf                                              ; $6856: $3f
	rra                                              ; $6857: $1f
	sbc  a                                           ; $6858: $9f
	adc  c                                           ; $6859: $89
	adc  a                                           ; $685a: $8f
	add  b                                           ; $685b: $80
	and  a                                           ; $685c: $a7
	add  b                                           ; $685d: $80
	or   a                                           ; $685e: $b7
	add  b                                           ; $685f: $80
	dec  sp                                          ; $6860: $3b
	inc  d                                           ; $6861: $14
	sbc  h                                           ; $6862: $9c
	inc  e                                           ; $6863: $1c

jr_09d_6864:
	ld   c, [hl]                                     ; $6864: $4e
	ld   c, $f6                                      ; $6865: $0e $f6

jr_09d_6867:
	ld   b, $e8                                      ; $6867: $06 $e8
	nop                                              ; $6869: $00
	inc  d                                           ; $686a: $14
	nop                                              ; $686b: $00
	cp   d                                           ; $686c: $ba
	nop                                              ; $686d: $00
	inc  c                                           ; $686e: $0c
	nop                                              ; $686f: $00
	add  l                                           ; $6870: $85
	nop                                              ; $6871: $00
	ret  nz                                          ; $6872: $c0

	add  b                                           ; $6873: $80
	ldh  [$c0], a                                    ; $6874: $e0 $c0
	ldh  a, [$81]                                    ; $6876: $f0 $81
	ldh  [rSC], a                                    ; $6878: $e0 $02
	ret  nc                                          ; $687a: $d0

	ret  nz                                          ; $687b: $c0

	and  b                                           ; $687c: $a0
	add  e                                           ; $687d: $83
	add  b                                           ; $687e: $80
	nop                                              ; $687f: $00
	ldh  [$81], a                                    ; $6880: $e0 $81
	ret  nz                                          ; $6882: $c0

	nop                                              ; $6883: $00
	ldh  a, [$81]                                    ; $6884: $f0 $81
	ldh  [rP1], a                                    ; $6886: $e0 $00
	ret  nc                                          ; $6888: $d0

	add  c                                           ; $6889: $81
	ret  nz                                          ; $688a: $c0

	rlca                                             ; $688b: $07
	jr   nz, jr_09d_688e                             ; $688c: $20 $00

jr_09d_688e:
	inc  a                                           ; $688e: $3c

jr_09d_688f:
	sbc  e                                           ; $688f: $9b
	sbc  b                                           ; $6890: $98
	ld   h, b                                        ; $6891: $60
	ld   hl, sp+$18                                  ; $6892: $f8 $18
	add  b                                           ; $6894: $80
	ccf                                              ; $6895: $3f
	ld   [$1f5c], sp                                 ; $6896: $08 $5c $1f
	inc  h                                           ; $6899: $24
	rlca                                             ; $689a: $07
	add  hl, de                                      ; $689b: $19
	ld   bc, $0004                                   ; $689c: $01 $04 $00
	inc  bc                                          ; $689f: $03
	adc  l                                           ; $68a0: $8d
	nop                                              ; $68a1: $00
	ld   [$00b8], sp                                 ; $68a2: $08 $b8 $00
	rst  $10                                         ; $68a5: $d7
	nop                                              ; $68a6: $00
	sub  l                                           ; $68a7: $95
	ld   h, b                                        ; $68a8: $60
	ld   h, a                                        ; $68a9: $67
	ld   a, b                                        ; $68aa: $78
	ld   a, d                                        ; $68ab: $7a
	add  b                                           ; $68ac: $80
	ld   a, b                                        ; $68ad: $78
	add  b                                           ; $68ae: $80
	ld   [hl], e                                     ; $68af: $73
	add  hl, bc                                      ; $68b0: $09
	ld   b, b                                        ; $68b1: $40
	ret  nz                                          ; $68b2: $c0

	inc  b                                           ; $68b3: $04
	rst  ToBoot                                         ; $68b4: $c7
	jr   jr_09d_688f                                 ; $68b5: $18 $d8

	jr   jr_09d_6851                                 ; $68b7: $18 $98

	jr   c, jr_09d_68f7                              ; $68b9: $38 $3c

	add  b                                           ; $68bb: $80
	jr   nc, @+$0f                                   ; $68bc: $30 $0d

	ld   [hl], b                                     ; $68be: $70
	ld   [hl], h                                     ; $68bf: $74
	db   $10                                         ; $68c0: $10
	ld   a, a                                        ; $68c1: $7f
	nop                                              ; $68c2: $00
	inc  de                                          ; $68c3: $13
	nop                                              ; $68c4: $00
	or   a                                           ; $68c5: $b7
	nop                                              ; $68c6: $00
	add  sp, $00                                     ; $68c7: $e8 $00
	and  d                                           ; $68c9: $a2
	jr   jr_09d_6864                                 ; $68ca: $18 $98

	add  c                                           ; $68cc: $81
	ld   a, b                                        ; $68cd: $78
	nop                                              ; $68ce: $00
	ld   a, e                                        ; $68cf: $7b
	add  b                                           ; $68d0: $80
	jr   c, jr_09d_68eb                              ; $68d1: $38 $18

	ld   [$800c], sp                                 ; $68d3: $08 $0c $80
	adc  c                                           ; $68d6: $89
	ld   h, b                                        ; $68d7: $60
	ld   h, c                                        ; $68d8: $61
	ld   h, b                                        ; $68d9: $60
	ld   l, b                                        ; $68da: $68
	ld   [hl], b                                     ; $68db: $70

jr_09d_68dc:
	ldh  a, [$30]                                    ; $68dc: $f0 $30
	inc  [hl]                                        ; $68de: $34
	jr   c, @-$41                                    ; $68df: $38 $bd

	jr   nz, jr_09d_68dc                             ; $68e1: $20 $f9

	nop                                              ; $68e3: $00
	jr   nz, jr_09d_68e6                             ; $68e4: $20 $00

jr_09d_68e6:
	ld   hl, sp+$00                                  ; $68e6: $f8 $00
	ld   e, d                                        ; $68e8: $5a
	nop                                              ; $68e9: $00
	ld   h, b                                        ; $68ea: $60

jr_09d_68eb:
	nop                                              ; $68eb: $00
	add  b                                           ; $68ec: $80
	add  b                                           ; $68ed: $80
	inc  b                                           ; $68ee: $04
	ld   h, b                                        ; $68ef: $60
	ret  nz                                          ; $68f0: $c0

	ldh  a, [$e0]                                    ; $68f1: $f0 $e0
	ld   hl, sp-$7f                                  ; $68f3: $f8 $81
	ldh  a, [$08]                                    ; $68f5: $f0 $08

jr_09d_68f7:
	db   $fc                                         ; $68f7: $fc
	ld   hl, sp+$5e                                  ; $68f8: $f8 $5e
	db   $fc                                         ; $68fa: $fc
	daa                                              ; $68fb: $27
	cp   $0b                                         ; $68fc: $fe $0b
	rst  $38                                         ; $68fe: $ff
	di                                               ; $68ff: $f3
	add  e                                           ; $6900: $83
	rst  $38                                         ; $6901: $ff
	ld   [bc], a                                     ; $6902: $02
	pop  af                                          ; $6903: $f1
	rst  $38                                         ; $6904: $ff
	pop  af                                          ; $6905: $f1
	add  e                                           ; $6906: $83
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	add  b                                           ; $6909: $80
	adc  c                                           ; $690a: $89
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	ret  nz                                          ; $690d: $c0

	add  a                                           ; $690e: $87
	add  b                                           ; $690f: $80

jr_09d_6910:
	dec  c                                           ; $6910: $0d
	ld   b, b                                        ; $6911: $40
	nop                                              ; $6912: $00
	add  b                                           ; $6913: $80
	nop                                              ; $6914: $00
	inc  bc                                          ; $6915: $03
	db   $fc                                         ; $6916: $fc
	db   $fd                                         ; $6917: $fd

jr_09d_6918:
	db   $fc                                         ; $6918: $fc
	ld   a, [$e4f8]                                  ; $6919: $fa $f8 $e4
	ldh  [$08], a                                    ; $691c: $e0 $08
	nop                                              ; $691e: $00
	add  b                                           ; $691f: $80
	ld   b, b                                        ; $6920: $40
	ld   bc, $d0d8                                   ; $6921: $01 $d8 $d0
	add  b                                           ; $6924: $80
	db   $10                                         ; $6925: $10
	add  b                                           ; $6926: $80
	jr   nc, jr_09d_6929                             ; $6927: $30 $00

jr_09d_6929:
	db   $fc                                         ; $6929: $fc
	add  c                                           ; $692a: $81
	ld   hl, sp+$01                                  ; $692b: $f8 $01
	ldh  a, [c]                                      ; $692d: $f2
	ldh  a, [$80]                                    ; $692e: $f0 $80
	db   $e4                                         ; $6930: $e4
	ld   bc, $feff                                   ; $6931: $01 $ff $fe
	add  d                                           ; $6934: $82
	ld   a, [hl]                                     ; $6935: $7e
	nop                                              ; $6936: $00
	rst  $38                                         ; $6937: $ff
	add  e                                           ; $6938: $83
	nop                                              ; $6939: $00
	add  b                                           ; $693a: $80
	ld   bc, $0280                                   ; $693b: $01 $80 $02
	add  b                                           ; $693e: $80
	ld   bc, $0380                                   ; $693f: $01 $80 $03
	add  b                                           ; $6942: $80
	ld   [bc], a                                     ; $6943: $02
	add  e                                           ; $6944: $83
	inc  bc                                          ; $6945: $03
	add  b                                           ; $6946: $80
	ld   [bc], a                                     ; $6947: $02
	inc  bc                                          ; $6948: $03
	ld   bc, $0003                                   ; $6949: $01 $03 $00
	ld   bc, $0089                                   ; $694c: $01 $89 $00
	add  b                                           ; $694f: $80
	ret  nz                                          ; $6950: $c0

	add  b                                           ; $6951: $80
	ldh  a, [$80]                                    ; $6952: $f0 $80
	cp   h                                           ; $6954: $bc
	ld   [bc], a                                     ; $6955: $02
	cp   $f4                                         ; $6956: $fe $f4

jr_09d_6958:
	push af                                          ; $6958: $f5
	add  b                                           ; $6959: $80
	sbc  $80                                         ; $695a: $de $80
	db   $fc                                         ; $695c: $fc
	ld   bc, $ebea                                   ; $695d: $01 $ea $eb
	add  b                                           ; $6960: $80
	db   $fc                                         ; $6961: $fc
	dec  b                                           ; $6962: $05
	xor  b                                           ; $6963: $a8
	xor  d                                           ; $6964: $aa
	ld   d, b                                        ; $6965: $50
	call c, Call_09d_7000                            ; $6966: $dc $00 $70
	add  c                                           ; $6969: $81
	nop                                              ; $696a: $00
	add  d                                           ; $696b: $82
	ld   bc, $0080                                   ; $696c: $01 $80 $00
	add  b                                           ; $696f: $80
	rlca                                             ; $6970: $07
	add  b                                           ; $6971: $80
	dec  c                                           ; $6972: $0d
	add  b                                           ; $6973: $80
	add  hl, bc                                      ; $6974: $09
	add  b                                           ; $6975: $80
	ld   b, $80                                      ; $6976: $06 $80
	db   $10                                         ; $6978: $10
	add  b                                           ; $6979: $80
	ld   l, b                                        ; $697a: $68
	add  b                                           ; $697b: $80
	ret  z                                           ; $697c: $c8

	add  b                                           ; $697d: $80
	sub  b                                           ; $697e: $90
	add  b                                           ; $697f: $80
	and  b                                           ; $6980: $a0
	add  b                                           ; $6981: $80
	ret  nz                                          ; $6982: $c0

	sub  b                                           ; $6983: $90
	nop                                              ; $6984: $00
	add  b                                           ; $6985: $80
	inc  b                                           ; $6986: $04
	add  b                                           ; $6987: $80
	ld   a, [bc]                                     ; $6988: $0a
	add  b                                           ; $6989: $80
	ld   [de], a                                     ; $698a: $12
	add  b                                           ; $698b: $80
	inc  d                                           ; $698c: $14
	add  b                                           ; $698d: $80
	jr   jr_09d_6910                                 ; $698e: $18 $80

	ld   b, b                                        ; $6990: $40
	add  b                                           ; $6991: $80
	ldh  [$80], a                                    ; $6992: $e0 $80
	and  b                                           ; $6994: $a0
	add  b                                           ; $6995: $80
	jr   nz, jr_09d_6918                             ; $6996: $20 $80

	ret  nz                                          ; $6998: $c0

	ld   [bc], a                                     ; $6999: $02
	sub  e                                           ; $699a: $93
	rrca                                             ; $699b: $0f
	xor  e                                           ; $699c: $ab
	add  c                                           ; $699d: $81
	rrca                                             ; $699e: $0f
	inc  c                                           ; $699f: $0c
	ld   l, a                                        ; $69a0: $6f
	cpl                                              ; $69a1: $2f
	db   $eb                                         ; $69a2: $eb
	ld   l, a                                        ; $69a3: $6f
	ld   b, a                                        ; $69a4: $47
	ld   [hl], a                                     ; $69a5: $77
	di                                               ; $69a6: $f3
	ei                                               ; $69a7: $fb
	dec  sp                                          ; $69a8: $3b
	rrca                                             ; $69a9: $0f
	sbc  e                                           ; $69aa: $9b
	rst  $30                                         ; $69ab: $f7
	ld   h, e                                        ; $69ac: $63
	add  c                                           ; $69ad: $81
	rst  $38                                         ; $69ae: $ff
	ld   b, $cf                                      ; $69af: $06 $cf
	rst  $38                                         ; $69b1: $ff
	rst  ToBoot                                         ; $69b2: $c7
	rrca                                             ; $69b3: $0f
	ld   b, a                                        ; $69b4: $47
	ld   [hl], a                                     ; $69b5: $77
	scf                                              ; $69b6: $37
	add  d                                           ; $69b7: $82
	rst  $38                                         ; $69b8: $ff
	add  b                                           ; $69b9: $80
	rst  $28                                         ; $69ba: $ef
	ld   c, $ff                                      ; $69bb: $0e $ff
	ld   l, l                                        ; $69bd: $6d
	sub  e                                           ; $69be: $93
	add  hl, sp                                      ; $69bf: $39
	cp   e                                           ; $69c0: $bb
	rst  ToBoot                                         ; $69c1: $c7
	rst  $38                                         ; $69c2: $ff
	add  e                                           ; $69c3: $83
	rst  $28                                         ; $69c4: $ef
	rst  $10                                         ; $69c5: $d7
	rst  $28                                         ; $69c6: $ef
	xor  $ff                                         ; $69c7: $ee $ff
	add  hl, de                                      ; $69c9: $19
	jr   jr_09d_6958                                 ; $69ca: $18 $8c

	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	rst  $38                                         ; $69ce: $ff
	add  b                                           ; $69cf: $80
	rst  $28                                         ; $69d0: $ef
	inc  bc                                          ; $69d1: $03
	rst  $38                                         ; $69d2: $ff
	rst  $10                                         ; $69d3: $d7
	add  hl, sp                                      ; $69d4: $39
	ld   de, $ff85                                   ; $69d5: $11 $85 $ff
	inc  bc                                          ; $69d8: $03
	cp   $ff                                         ; $69d9: $fe $ff
	add  hl, de                                      ; $69db: $19
	jr   @+$01                                       ; $69dc: $18 $ff

	nop                                              ; $69de: $00
	rst  $38                                         ; $69df: $ff
	nop                                              ; $69e0: $00
	rst  $38                                         ; $69e1: $ff
	nop                                              ; $69e2: $00
	rst  $38                                         ; $69e3: $ff
	nop                                              ; $69e4: $00
	rst  $38                                         ; $69e5: $ff
	nop                                              ; $69e6: $00
	rst  $38                                         ; $69e7: $ff
	nop                                              ; $69e8: $00
	rst  $38                                         ; $69e9: $ff
	nop                                              ; $69ea: $00
	push hl                                          ; $69eb: $e5
	nop                                              ; $69ec: $00
	ld   [$1e01], sp                                 ; $69ed: $08 $01 $1e
	dec  d                                           ; $69f0: $15
	rst  $38                                         ; $69f1: $ff
	ldh  [rIE], a                                    ; $69f2: $e0 $ff
	ldh  a, [rIE]                                    ; $69f4: $f0 $ff
	ld   hl, sp-$01                                  ; $69f6: $f8 $ff
	db   $fc                                         ; $69f8: $fc
	rst  $38                                         ; $69f9: $ff
	cp   $ff                                         ; $69fa: $fe $ff
	xor  d                                           ; $69fc: $aa
	rst  $38                                         ; $69fd: $ff
	nop                                              ; $69fe: $00
	rst  $38                                         ; $69ff: $ff
	ld   a, [bc]                                     ; $6a00: $0a
	rst  $38                                         ; $6a01: $ff
	rrca                                             ; $6a02: $0f
	rst  $38                                         ; $6a03: $ff
	dec  b                                           ; $6a04: $05
	rst  $38                                         ; $6a05: $ff
	nop                                              ; $6a06: $00
	rst  $38                                         ; $6a07: $ff
	nop                                              ; $6a08: $00
	rst  $38                                         ; $6a09: $ff
	nop                                              ; $6a0a: $00
	rst  $38                                         ; $6a0b: $ff
	nop                                              ; $6a0c: $00
	rst  $38                                         ; $6a0d: $ff
	nop                                              ; $6a0e: $00
	add  b                                           ; $6a0f: $80
	rst  $38                                         ; $6a10: $ff
	nop                                              ; $6a11: $00
	xor  b                                           ; $6a12: $a8
	add  d                                           ; $6a13: $82
	db   $fc                                         ; $6a14: $fc
	ld   a, [bc]                                     ; $6a15: $0a
	cp   $f9                                         ; $6a16: $fe $f9
	ld   a, c                                        ; $6a18: $79
	ld   a, [$f22f]                                  ; $6a19: $fa $2f $f2
	ld   [bc], a                                     ; $6a1c: $02
	or   $1e                                         ; $6a1d: $f6 $1e
	db   $e4                                         ; $6a1f: $e4
	ld   l, $81                                      ; $6a20: $2e $81
	nop                                              ; $6a22: $00
	ld   [bc], a                                     ; $6a23: $02
	adc  b                                           ; $6a24: $88
	nop                                              ; $6a25: $00
	inc  h                                           ; $6a26: $24
	add  c                                           ; $6a27: $81
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	ld   [hl], b                                     ; $6a2a: $70
	add  c                                           ; $6a2b: $81
	nop                                              ; $6a2c: $00
	ld   [$100a], sp                                 ; $6a2d: $08 $0a $10
	ld   [hl], d                                     ; $6a30: $72
	ccf                                              ; $6a31: $3f
	cpl                                              ; $6a32: $2f
	ccf                                              ; $6a33: $3f
	ld   c, $3f                                      ; $6a34: $0e $3f
	ld   sp, $1f83                                   ; $6a36: $31 $83 $1f
	inc  b                                           ; $6a39: $04
	ld   c, a                                        ; $6a3a: $4f
	rrca                                             ; $6a3b: $0f
	cpl                                              ; $6a3c: $2f
	rrca                                             ; $6a3d: $0f
	rra                                              ; $6a3e: $1f
	add  c                                           ; $6a3f: $81
	rst  $38                                         ; $6a40: $ff
	ld   bc, $ff7f                                   ; $6a41: $01 $7f $ff
	add  b                                           ; $6a44: $80
	ei                                               ; $6a45: $fb
	add  d                                           ; $6a46: $82
	di                                               ; $6a47: $f3
	inc  b                                           ; $6a48: $04
	pop  af                                          ; $6a49: $f1
	ei                                               ; $6a4a: $fb
	di                                               ; $6a4b: $f3
	rst  $38                                         ; $6a4c: $ff
	ld   sp, hl                                      ; $6a4d: $f9
	add  b                                           ; $6a4e: $80
	ei                                               ; $6a4f: $fb
	adc  e                                           ; $6a50: $8b
	rst  $38                                         ; $6a51: $ff
	ld   [bc], a                                     ; $6a52: $02
	jp   $c3ff                                       ; $6a53: $c3 $ff $c3


	adc  e                                           ; $6a56: $8b
	rst  $38                                         ; $6a57: $ff
	nop                                              ; $6a58: $00
	rst  $20                                         ; $6a59: $e7
	add  b                                           ; $6a5a: $80
	push hl                                          ; $6a5b: $e5
	ld   bc, $d7e7                                   ; $6a5c: $01 $e7 $d7
	add  c                                           ; $6a5f: $81
	push bc                                          ; $6a60: $c5
	ld   [bc], a                                     ; $6a61: $02
	db   $dd                                         ; $6a62: $dd
	ret                                              ; $6a63: $c9


	xor  c                                           ; $6a64: $a9
	add  c                                           ; $6a65: $81
	adc  b                                           ; $6a66: $88
	ld   [bc], a                                     ; $6a67: $02
	adc  c                                           ; $6a68: $89
	add  b                                           ; $6a69: $80
	ld   [hl-], a                                    ; $6a6a: $32
	add  e                                           ; $6a6b: $83
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	jr   nz, @-$77                                   ; $6a6e: $20 $87

	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	jp   $8180                                       ; $6a72: $c3 $80 $81


	add  b                                           ; $6a75: $80
	add  b                                           ; $6a76: $80
	ld   bc, $0800                                   ; $6a77: $01 $00 $08
	add  e                                           ; $6a7a: $83
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	inc  b                                           ; $6a7d: $04
	add  c                                           ; $6a7e: $81
	nop                                              ; $6a7f: $00
	inc  b                                           ; $6a80: $04
	ld   d, e                                        ; $6a81: $53
	rrca                                             ; $6a82: $0f
	cpl                                              ; $6a83: $2f
	rrca                                             ; $6a84: $0f
	rra                                              ; $6a85: $1f
	add  e                                           ; $6a86: $83
	rlca                                             ; $6a87: $07
	ld   [bc], a                                     ; $6a88: $02
	rra                                              ; $6a89: $1f
	inc  bc                                          ; $6a8a: $03
	ld   b, e                                        ; $6a8b: $43
	add  c                                           ; $6a8c: $81
	inc  bc                                          ; $6a8d: $03
	nop                                              ; $6a8e: $00
	res  0, b                                        ; $6a8f: $cb $80
	ld   a, [bc]                                     ; $6a91: $0a
	add  b                                           ; $6a92: $80
	ld   c, d                                        ; $6a93: $4a
	add  b                                           ; $6a94: $80
	ld   c, e                                        ; $6a95: $4b
	add  b                                           ; $6a96: $80
	ld   l, l                                        ; $6a97: $6d
	add  b                                           ; $6a98: $80
	or   a                                           ; $6a99: $b7
	rrca                                             ; $6a9a: $0f
	cp   a                                           ; $6a9b: $bf
	cp   [hl]                                        ; $6a9c: $be
	rst  $38                                         ; $6a9d: $ff
	ld   sp, hl                                      ; $6a9e: $f9
	rst  ToBoot                                         ; $6a9f: $c7
	jp   $fbff                                       ; $6aa0: $c3 $ff $fb


	cp   $f6                                         ; $6aa3: $fe $f6
	db   $fc                                         ; $6aa5: $fc
	db   $ec                                         ; $6aa6: $ec
	ldh  a, [$90]                                    ; $6aa7: $f0 $90
	rst  $38                                         ; $6aa9: $ff
	ld   a, a                                        ; $6aaa: $7f
	add  c                                           ; $6aab: $81
	rst  $38                                         ; $6aac: $ff
	add  b                                           ; $6aad: $80
	cp   $01                                         ; $6aae: $fe $01
	ld   a, a                                        ; $6ab0: $7f
	add  b                                           ; $6ab1: $80
	add  b                                           ; $6ab2: $80
	nop                                              ; $6ab3: $00
	add  b                                           ; $6ab4: $80
	ld   bc, $ff81                                   ; $6ab5: $01 $81 $ff
	ld   [$fffc], sp                                 ; $6ab8: $08 $fc $ff
	db   $e3                                         ; $6abb: $e3
	rst  $38                                         ; $6abc: $ff
	sbc  a                                           ; $6abd: $9f
	rst  $38                                         ; $6abe: $ff
	ld   a, a                                        ; $6abf: $7f
	ldh  a, [rIF]                                    ; $6ac0: $f0 $0f
	add  b                                           ; $6ac2: $80
	ld   a, a                                        ; $6ac3: $7f
	dec  b                                           ; $6ac4: $05
	rst  $38                                         ; $6ac5: $ff
	ld   hl, sp-$01                                  ; $6ac6: $f8 $ff
	add  a                                           ; $6ac8: $87
	cp   $7e                                         ; $6ac9: $fe $7e
	add  d                                           ; $6acb: $82
	db   $fc                                         ; $6acc: $fc
	add  b                                           ; $6acd: $80
	ld   hl, sp+$0a                                  ; $6ace: $f8 $0a
	xor  d                                           ; $6ad0: $aa
	rst  $38                                         ; $6ad1: $ff
	nop                                              ; $6ad2: $00
	rst  $38                                         ; $6ad3: $ff
	nop                                              ; $6ad4: $00
	rst  $38                                         ; $6ad5: $ff
	ld   bc, $2bff                                   ; $6ad6: $01 $ff $2b
	rst  $38                                         ; $6ad9: $ff
	ld   a, a                                        ; $6ada: $7f
	add  e                                           ; $6adb: $83
	rst  $38                                         ; $6adc: $ff
	ld   [$ff55], sp                                 ; $6add: $08 $55 $ff
	nop                                              ; $6ae0: $00
	rst  $38                                         ; $6ae1: $ff
	nop                                              ; $6ae2: $00
	rst  $38                                         ; $6ae3: $ff
	ld   b, b                                        ; $6ae4: $40
	rst  $38                                         ; $6ae5: $ff
	ld   [$ff85], a                                  ; $6ae6: $ea $85 $ff
	dec  de                                          ; $6ae9: $1b
	ld   d, e                                        ; $6aea: $53
	db   $ec                                         ; $6aeb: $ec
	inc  c                                           ; $6aec: $0c
	add  sp, $38                                     ; $6aed: $e8 $38
	ret  z                                           ; $6aef: $c8

	dec  c                                           ; $6af0: $0d
	ret  nz                                          ; $6af1: $c0

	add  b                                           ; $6af2: $80
	ret  nz                                          ; $6af3: $c0

	ldh  [c], a                                      ; $6af4: $e2
	add  b                                           ; $6af5: $80
	adc  b                                           ; $6af6: $88
	add  b                                           ; $6af7: $80
	add  l                                           ; $6af8: $85
	add  b                                           ; $6af9: $80
	ld   h, h                                        ; $6afa: $64
	db   $10                                         ; $6afb: $10
	ld   [hl], h                                     ; $6afc: $74
	db   $10                                         ; $6afd: $10
	ld   [de], a                                     ; $6afe: $12
	jr   nz, jr_09d_6b3a                             ; $6aff: $20 $39

	inc  h                                           ; $6b01: $24
	db   $e4                                         ; $6b02: $e4
	dec  h                                           ; $6b03: $25
	dec  d                                           ; $6b04: $15
	ld   c, c                                        ; $6b05: $49
	add  b                                           ; $6b06: $80
	ld   c, e                                        ; $6b07: $4b
	rlca                                             ; $6b08: $07
	res  1, a                                        ; $6b09: $cb $8f
	scf                                              ; $6b0b: $37
	rlca                                             ; $6b0c: $07
	add  e                                           ; $6b0d: $83
	inc  bc                                          ; $6b0e: $03
	ld   bc, $8081                                   ; $6b0f: $01 $81 $80
	add  b                                           ; $6b12: $80
	ld   [bc], a                                     ; $6b13: $02
	sub  b                                           ; $6b14: $90
	add  b                                           ; $6b15: $80
	and  c                                           ; $6b16: $a1
	add  e                                           ; $6b17: $83
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	cpl                                              ; $6b1a: $2f
	add  c                                           ; $6b1b: $81
	rst  $38                                         ; $6b1c: $ff
	nop                                              ; $6b1d: $00
	cp   $81                                         ; $6b1e: $fe $81
	rst  $38                                         ; $6b20: $ff
	ld   [de], a                                     ; $6b21: $12
	ccf                                              ; $6b22: $3f
	ld   a, a                                        ; $6b23: $7f
	ld   e, a                                        ; $6b24: $5f
	rra                                              ; $6b25: $1f
	rlca                                             ; $6b26: $07
	rrca                                             ; $6b27: $0f
	dec  bc                                          ; $6b28: $0b
	inc  bc                                          ; $6b29: $03
	ld   [hl], c                                     ; $6b2a: $71
	db   $fd                                         ; $6b2b: $fd
	adc  e                                           ; $6b2c: $8b
	rra                                              ; $6b2d: $1f
	rst  $20                                         ; $6b2e: $e7
	rst  $38                                         ; $6b2f: $ff
	rst  ToBoot                                         ; $6b30: $c7
	rst  $38                                         ; $6b31: $ff
	rst  $10                                         ; $6b32: $d7
	rst  $38                                         ; $6b33: $ff
	rst  $28                                         ; $6b34: $ef
	adc  c                                           ; $6b35: $89
	rst  $38                                         ; $6b36: $ff
	nop                                              ; $6b37: $00
	cp   $81                                         ; $6b38: $fe $81

jr_09d_6b3a:
	rst  $38                                         ; $6b3a: $ff
	ld   b, $fd                                      ; $6b3b: $06 $fd
	cp   $fa                                         ; $6b3d: $fe $fa
	cp   $f6                                         ; $6b3f: $fe $f6
	db   $fc                                         ; $6b41: $fc
	ld   b, d                                        ; $6b42: $42
	add  c                                           ; $6b43: $81
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	db   $10                                         ; $6b46: $10
	add  e                                           ; $6b47: $83
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	jp   nz, $0083                                   ; $6b4a: $c2 $83 $00

	nop                                              ; $6b4d: $00
	and  h                                           ; $6b4e: $a4
	add  c                                           ; $6b4f: $81
	nop                                              ; $6b50: $00
	ld   [bc], a                                     ; $6b51: $02
	ld   b, b                                        ; $6b52: $40
	nop                                              ; $6b53: $00
	ld   bc, $0081                                   ; $6b54: $01 $81 $00
	nop                                              ; $6b57: $00
	ld   [$0083], sp                                 ; $6b58: $08 $83 $00
	nop                                              ; $6b5b: $00
	add  d                                           ; $6b5c: $82
	add  c                                           ; $6b5d: $81
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	ld   [bc], a                                     ; $6b60: $02
	add  c                                           ; $6b61: $81
	nop                                              ; $6b62: $00
	ld   [bc], a                                     ; $6b63: $02
	stop                                             ; $6b64: $10 $00
	ld   b, b                                        ; $6b66: $40
	add  e                                           ; $6b67: $83
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	ld   l, c                                        ; $6b6a: $69
	add  e                                           ; $6b6b: $83
	inc  bc                                          ; $6b6c: $03
	ld   [bc], a                                     ; $6b6d: $02
	dec  bc                                          ; $6b6e: $0b
	inc  bc                                          ; $6b6f: $03
	ld   b, e                                        ; $6b70: $43
	add  d                                           ; $6b71: $82
	inc  bc                                          ; $6b72: $03
	add  c                                           ; $6b73: $81
	rlca                                             ; $6b74: $07
	ld   [bc], a                                     ; $6b75: $02
	cp   b                                           ; $6b76: $b8
	nop                                              ; $6b77: $00
	ret  nz                                          ; $6b78: $c0

	add  e                                           ; $6b79: $83
	nop                                              ; $6b7a: $00
	rrca                                             ; $6b7b: $0f
	ld   bc, $0700                                   ; $6b7c: $01 $00 $07
	ld   bc, $070f                                   ; $6b7f: $01 $0f $07
	cp   a                                           ; $6b82: $bf
	rrca                                             ; $6b83: $0f
	cp   c                                           ; $6b84: $b9
	ld   bc, $071f                                   ; $6b85: $01 $1f $07
	ccf                                              ; $6b88: $3f
	rra                                              ; $6b89: $1f
	rst  $38                                         ; $6b8a: $ff
	ccf                                              ; $6b8b: $3f
	add  b                                           ; $6b8c: $80
	rst  $38                                         ; $6b8d: $ff
	add  b                                           ; $6b8e: $80
	cp   $04                                         ; $6b8f: $fe $04
	ld   hl, sp-$07                                  ; $6b91: $f8 $f9
	pop  hl                                          ; $6b93: $e1
	rst  $20                                         ; $6b94: $e7
	ld   hl, sp-$7f                                  ; $6b95: $f8 $81
	rst  $38                                         ; $6b97: $ff
	add  b                                           ; $6b98: $80
	db   $fc                                         ; $6b99: $fc
	inc  b                                           ; $6b9a: $04
	ldh  a, [$f3]                                    ; $6b9b: $f0 $f3
	add  e                                           ; $6b9d: $83
	adc  a                                           ; $6b9e: $8f
	rrca                                             ; $6b9f: $0f
	add  b                                           ; $6ba0: $80
	ld   a, a                                        ; $6ba1: $7f
	add  c                                           ; $6ba2: $81
	rst  $38                                         ; $6ba3: $ff
	inc  c                                           ; $6ba4: $0c
	rrca                                             ; $6ba5: $0f
	ldh  a, [$80]                                    ; $6ba6: $f0 $80
	adc  a                                           ; $6ba8: $8f
	rrca                                             ; $6ba9: $0f
	ld   a, a                                        ; $6baa: $7f
	ld   [hl], b                                     ; $6bab: $70
	rst  $38                                         ; $6bac: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bad: $cf
	rst  $38                                         ; $6bae: $ff
	rst  JumpTable                                         ; $6baf: $df
	rst  $38                                         ; $6bb0: $ff
	sbc  a                                           ; $6bb1: $9f
	add  c                                           ; $6bb2: $81
	rst  $38                                         ; $6bb3: $ff

jr_09d_6bb4:
	ld   bc, $fa85                                   ; $6bb4: $01 $85 $fa
	add  b                                           ; $6bb7: $80
	ld   d, l                                        ; $6bb8: $55
	add  b                                           ; $6bb9: $80
	xor  d                                           ; $6bba: $aa
	add  b                                           ; $6bbb: $80
	ld   d, l                                        ; $6bbc: $55
	add  b                                           ; $6bbd: $80
	xor  b                                           ; $6bbe: $a8
	add  b                                           ; $6bbf: $80
	ld   b, b                                        ; $6bc0: $40
	add  d                                           ; $6bc1: $82
	nop                                              ; $6bc2: $00
	add  b                                           ; $6bc3: $80
	xor  a                                           ; $6bc4: $af
	add  b                                           ; $6bc5: $80
	ld   d, l                                        ; $6bc6: $55
	add  b                                           ; $6bc7: $80
	xor  d                                           ; $6bc8: $aa
	add  b                                           ; $6bc9: $80
	ld   d, l                                        ; $6bca: $55
	add  b                                           ; $6bcb: $80
	add  d                                           ; $6bcc: $82
	add  h                                           ; $6bcd: $84
	nop                                              ; $6bce: $00
	inc  b                                           ; $6bcf: $04
	ret                                              ; $6bd0: $c9


	add  b                                           ; $6bd1: $80
	ret  nc                                          ; $6bd2: $d0

	nop                                              ; $6bd3: $00
	dec  bc                                          ; $6bd4: $0b
	add  c                                           ; $6bd5: $81
	nop                                              ; $6bd6: $00
	inc  b                                           ; $6bd7: $04
	inc  b                                           ; $6bd8: $04
	nop                                              ; $6bd9: $00
	jr   nc, jr_09d_6bdc                             ; $6bda: $30 $00

jr_09d_6bdc:
	ret  z                                           ; $6bdc: $c8

	add  c                                           ; $6bdd: $81
	inc  b                                           ; $6bde: $04
	nop                                              ; $6bdf: $00
	ld   a, [bc]                                     ; $6be0: $0a
	add  b                                           ; $6be1: $80
	sbc  d                                           ; $6be2: $9a
	ld   bc, $b292                                   ; $6be3: $01 $92 $b2
	add  c                                           ; $6be6: $81
	db   $10                                         ; $6be7: $10
	ld   [bc], a                                     ; $6be8: $02
	jr   jr_09d_6beb                                 ; $6be9: $18 $00

jr_09d_6beb:
	add  b                                           ; $6beb: $80
	add  c                                           ; $6bec: $81
	nop                                              ; $6bed: $00
	ld   [bc], a                                     ; $6bee: $02
	ld   b, b                                        ; $6bef: $40
	nop                                              ; $6bf0: $00
	add  $83                                         ; $6bf1: $c6 $83
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	ld   [de], a                                     ; $6bf5: $12
	add  c                                           ; $6bf6: $81
	nop                                              ; $6bf7: $00
	ld   b, $80                                      ; $6bf8: $06 $80
	nop                                              ; $6bfa: $00
	inc  b                                           ; $6bfb: $04
	nop                                              ; $6bfc: $00
	rlca                                             ; $6bfd: $07
	nop                                              ; $6bfe: $00
	inc  l                                           ; $6bff: $2c
	add  b                                           ; $6c00: $80
	ld   bc, $0001                                   ; $6c01: $01 $01 $00
	ld   b, b                                        ; $6c04: $40
	add  e                                           ; $6c05: $83
	nop                                              ; $6c06: $00
	inc  c                                           ; $6c07: $0c
	add  h                                           ; $6c08: $84
	nop                                              ; $6c09: $00
	ld   b, b                                        ; $6c0a: $40
	nop                                              ; $6c0b: $00
	add  b                                           ; $6c0c: $80
	nop                                              ; $6c0d: $00
	rst  $30                                         ; $6c0e: $f7
	rst  $38                                         ; $6c0f: $ff
	ccf                                              ; $6c10: $3f
	ld   a, a                                        ; $6c11: $7f
	ld   c, a                                        ; $6c12: $4f
	rra                                              ; $6c13: $1f
	db   $10                                         ; $6c14: $10
	add  b                                           ; $6c15: $80
	ld   h, $80                                      ; $6c16: $26 $80
	add  hl, de                                      ; $6c18: $19
	add  b                                           ; $6c19: $80
	rra                                              ; $6c1a: $1f
	ld   bc, $ef0f                                   ; $6c1b: $01 $0f $ef
	add  b                                           ; $6c1e: $80
	ldh  [$03], a                                    ; $6c1f: $e0 $03
	ldh  a, [c]                                      ; $6c21: $f2
	sub  d                                           ; $6c22: $92
	xor  $6f                                         ; $6c23: $ee $6f
	add  b                                           ; $6c25: $80
	sbc  h                                           ; $6c26: $9c
	add  b                                           ; $6c27: $80
	ld   a, h                                        ; $6c28: $7c
	add  d                                           ; $6c29: $82
	db   $fc                                         ; $6c2a: $fc
	dec  b                                           ; $6c2b: $05
	ldh  [$fc], a                                    ; $6c2c: $e0 $fc
	nop                                              ; $6c2e: $00
	add  c                                           ; $6c2f: $81
	nop                                              ; $6c30: $00
	jr   nz, jr_09d_6bb4                             ; $6c31: $20 $81

	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	add  h                                           ; $6c35: $84
	add  a                                           ; $6c36: $87
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	ld   c, c                                        ; $6c39: $49
	add  e                                           ; $6c3a: $83
	nop                                              ; $6c3b: $00
	dec  bc                                          ; $6c3c: $0b
	add  b                                           ; $6c3d: $80
	nop                                              ; $6c3e: $00
	ld   [bc], a                                     ; $6c3f: $02
	nop                                              ; $6c40: $00
	inc  de                                          ; $6c41: $13
	nop                                              ; $6c42: $00
	inc  bc                                          ; $6c43: $03
	nop                                              ; $6c44: $00
	inc  b                                           ; $6c45: $04
	nop                                              ; $6c46: $00
	ld   b, [hl]                                     ; $6c47: $46
	and  c                                           ; $6c48: $a1
	add  b                                           ; $6c49: $80
	add  c                                           ; $6c4a: $81
	nop                                              ; $6c4b: $00
	and  b                                           ; $6c4c: $a0
	add  b                                           ; $6c4d: $80
	and  h                                           ; $6c4e: $a4
	add  hl, bc                                      ; $6c4f: $09
	xor  l                                           ; $6c50: $ad
	ld   l, l                                        ; $6c51: $6d
	ld   l, a                                        ; $6c52: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c53: $cf
	rst  JumpTable                                         ; $6c54: $df
	sbc  a                                           ; $6c55: $9f
	adc  a                                           ; $6c56: $8f
	cp   a                                           ; $6c57: $bf
	add  e                                           ; $6c58: $83
	inc  sp                                          ; $6c59: $33
	add  b                                           ; $6c5a: $80
	ld   b, a                                        ; $6c5b: $47
	add  b                                           ; $6c5c: $80
	ld   c, a                                        ; $6c5d: $4f
	add  b                                           ; $6c5e: $80
	rst  JumpTable                                         ; $6c5f: $df
	add  c                                           ; $6c60: $81

jr_09d_6c61:
	cp   a                                           ; $6c61: $bf
	ld   b, $be                                      ; $6c62: $06 $be
	ld   a, a                                        ; $6c64: $7f
	ld   a, h                                        ; $6c65: $7c
	rst  $38                                         ; $6c66: $ff
	add  sp, -$01                                    ; $6c67: $e8 $ff
	ld   d, l                                        ; $6c69: $55
	add  c                                           ; $6c6a: $81
	ccf                                              ; $6c6b: $3f
	inc  b                                           ; $6c6c: $04
	ld   e, h                                        ; $6c6d: $5c
	inc  e                                           ; $6c6e: $1c
	jr   jr_09d_6c8c                                 ; $6c6f: $18 $1b

	inc  hl                                          ; $6c71: $23
	add  b                                           ; $6c72: $80
	rlca                                             ; $6c73: $07
	add  c                                           ; $6c74: $81
	rrca                                             ; $6c75: $0f
	inc  b                                           ; $6c76: $04
	rra                                              ; $6c77: $1f
	rlca                                             ; $6c78: $07
	ld   [hl], a                                     ; $6c79: $77
	sbc  a                                           ; $6c7a: $9f
	rra                                              ; $6c7b: $1f
	add  b                                           ; $6c7c: $80
	ld   a, a                                        ; $6c7d: $7f
	adc  e                                           ; $6c7e: $8b
	rst  $38                                         ; $6c7f: $ff
	ld   c, $fc                                      ; $6c80: $0e $fc
	rst  $38                                         ; $6c82: $ff
	ei                                               ; $6c83: $fb
	rst  $38                                         ; $6c84: $ff
	rst  $30                                         ; $6c85: $f7
	rst  $38                                         ; $6c86: $ff
	rst  $28                                         ; $6c87: $ef
	rst  $38                                         ; $6c88: $ff
	db   $e3                                         ; $6c89: $e3
	rst  $38                                         ; $6c8a: $ff
	ei                                               ; $6c8b: $fb

jr_09d_6c8c:
	rst  $38                                         ; $6c8c: $ff
	rst  $30                                         ; $6c8d: $f7
	rst  $38                                         ; $6c8e: $ff
	rrca                                             ; $6c8f: $0f
	adc  [hl]                                        ; $6c90: $8e
	rst  $38                                         ; $6c91: $ff
	adc  c                                           ; $6c92: $89
	nop                                              ; $6c93: $00
	inc  b                                           ; $6c94: $04
	jr   c, jr_09d_6c97                              ; $6c95: $38 $00

jr_09d_6c97:
	rst  ToBoot                                         ; $6c97: $c7
	jr   c, jr_09d_6c61                              ; $6c98: $38 $c7

	add  l                                           ; $6c9a: $85
	nop                                              ; $6c9b: $00
	ld   [$0006], sp                                 ; $6c9c: $08 $06 $00
	rrca                                             ; $6c9f: $0f
	ld   b, $38                                      ; $6ca0: $06 $38
	ld   c, $f6                                      ; $6ca2: $0e $f6
	ld   a, $9f                                      ; $6ca4: $3e $9f
	add  c                                           ; $6ca6: $81
	inc  b                                           ; $6ca7: $04
	ld   c, $05                                      ; $6ca8: $0e $05
	ld   b, $46                                      ; $6caa: $06 $46
	ld   b, $16                                      ; $6cac: $06 $16
	cpl                                              ; $6cae: $2f
	ld   c, a                                        ; $6caf: $4f
	ld   c, h                                        ; $6cb0: $4c
	cp   a                                           ; $6cb1: $bf
	and  e                                           ; $6cb2: $a3
	ld   e, h                                        ; $6cb3: $5c
	ld   c, h                                        ; $6cb4: $4c
	add  [hl]                                        ; $6cb5: $86
	nop                                              ; $6cb6: $00
	inc  b                                           ; $6cb7: $04
	add  c                                           ; $6cb8: $81
	nop                                              ; $6cb9: $00
	ld   bc, $0002                                   ; $6cba: $01 $02 $00
	add  b                                           ; $6cbd: $80
	ld   bc, $5015                                   ; $6cbe: $01 $15 $50
	nop                                              ; $6cc1: $00
	sbc  e                                           ; $6cc2: $9b
	adc  e                                           ; $6cc3: $8b
	jr   nz, jr_09d_6cc6                             ; $6cc4: $20 $00

jr_09d_6cc6:
	daa                                              ; $6cc6: $27
	rlca                                             ; $6cc7: $07
	ccf                                              ; $6cc8: $3f
	rra                                              ; $6cc9: $1f
	cpl                                              ; $6cca: $2f
	ld   a, a                                        ; $6ccb: $7f
	rrca                                             ; $6ccc: $0f
	rst  $38                                         ; $6ccd: $ff
	dec  bc                                          ; $6cce: $0b
	rst  $38                                         ; $6ccf: $ff
	ld   b, c                                        ; $6cd0: $41

jr_09d_6cd1:
	rra                                              ; $6cd1: $1f
	add  sp, -$19                                    ; $6cd2: $e8 $e7
	dec  b                                           ; $6cd4: $05
	nop                                              ; $6cd5: $00
	add  b                                           ; $6cd6: $80
	db   $e4                                         ; $6cd7: $e4
	add  b                                           ; $6cd8: $80
	push af                                          ; $6cd9: $f5
	add  h                                           ; $6cda: $84
	rst  $38                                         ; $6cdb: $ff
	ld   b, $7f                                      ; $6cdc: $06 $7f
	rst  $38                                         ; $6cde: $ff
	jr   nc, jr_09d_6cd1                             ; $6cdf: $30 $f0

	ld   c, a                                        ; $6ce1: $4f
	rrca                                             ; $6ce2: $0f
	rst  $28                                         ; $6ce3: $ef
	add  c                                           ; $6ce4: $81
	ldh  [rP1], a                                    ; $6ce5: $e0 $00
	add  sp, -$7f                                    ; $6ce7: $e8 $81
	ldh  [$80], a                                    ; $6ce9: $e0 $80
	ret  nz                                          ; $6ceb: $c0

	inc  bc                                          ; $6cec: $03
	ld   [hl], $30                                   ; $6ced: $36 $30
	rst  $30                                         ; $6cef: $f7
	or   $80                                         ; $6cf0: $f6 $80
	rst  $30                                         ; $6cf2: $f7
	nop                                              ; $6cf3: $00
	db   $fd                                         ; $6cf4: $fd
	add  a                                           ; $6cf5: $87
	nop                                              ; $6cf6: $00
	ld   b, $0c                                      ; $6cf7: $06 $0c
	nop                                              ; $6cf9: $00
	db   $fc                                         ; $6cfa: $fc
	inc  c                                           ; $6cfb: $0c
	rst  $38                                         ; $6cfc: $ff
	cp   $30                                         ; $6cfd: $fe $30
	add  c                                           ; $6cff: $81
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	ld   hl, $0085                                   ; $6d02: $21 $85 $00
	nop                                              ; $6d05: $00
	ld   de, $0081                                   ; $6d06: $11 $81 $00
	ld   [$00e3], sp                                 ; $6d09: $08 $e3 $00
	cpl                                              ; $6d0c: $2f
	inc  c                                           ; $6d0d: $0c
	ld   b, $16                                      ; $6d0e: $06 $16
	ld   d, c                                        ; $6d10: $51
	add  hl, sp                                      ; $6d11: $39
	cp   b                                           ; $6d12: $b8
	add  b                                           ; $6d13: $80
	ld   a, [hl]                                     ; $6d14: $7e
	add  d                                           ; $6d15: $82
	ld   a, a                                        ; $6d16: $7f
	dec  e                                           ; $6d17: $1d
	rst  $38                                         ; $6d18: $ff
	add  d                                           ; $6d19: $82
	ld   bc, $0082                                   ; $6d1a: $01 $82 $00
	ld   bc, $8000                                   ; $6d1d: $01 $00 $80
	nop                                              ; $6d20: $00
	ld   a, a                                        ; $6d21: $7f
	nop                                              ; $6d22: $00
	inc  bc                                          ; $6d23: $03
	cp   $c2                                         ; $6d24: $fe $c2
	ldh  a, [$30]                                    ; $6d26: $f0 $30
	ret  nz                                          ; $6d28: $c0

	sub  l                                           ; $6d29: $95
	rst  $38                                         ; $6d2a: $ff
	nop                                              ; $6d2b: $00
	rst  $38                                         ; $6d2c: $ff
	add  b                                           ; $6d2d: $80
	ld   a, a                                        ; $6d2e: $7f
	ret  nz                                          ; $6d2f: $c0

	ccf                                              ; $6d30: $3f
	xor  e                                           ; $6d31: $ab
	ld   bc, $02fe                                   ; $6d32: $01 $fe $02
	inc  bc                                          ; $6d35: $03
	add  b                                           ; $6d36: $80
	nop                                              ; $6d37: $00
	inc  bc                                          ; $6d38: $03
	rlca                                             ; $6d39: $07
	ld   [$0f07], sp                                 ; $6d3a: $08 $07 $0f
	add  c                                           ; $6d3d: $81
	inc  bc                                          ; $6d3e: $03
	nop                                              ; $6d3f: $00
	rlca                                             ; $6d40: $07
	add  c                                           ; $6d41: $81
	ld   bc, $0300                                   ; $6d42: $01 $00 $03
	add  c                                           ; $6d45: $81
	nop                                              ; $6d46: $00
	ld   bc, $0001                                   ; $6d47: $01 $01 $00
	adc  d                                           ; $6d4a: $8a
	rst  $38                                         ; $6d4b: $ff
	inc  b                                           ; $6d4c: $04
	cp   $ff                                         ; $6d4d: $fe $ff
	cp   $78                                         ; $6d4f: $fe $78
	ld   [hl], a                                     ; $6d51: $77
	add  c                                           ; $6d52: $81
	rst  $38                                         ; $6d53: $ff
	inc  bc                                          ; $6d54: $03
	rst  $28                                         ; $6d55: $ef
	rst  $38                                         ; $6d56: $ff
	rst  JumpTable                                         ; $6d57: $df
	rst  $38                                         ; $6d58: $ff
	add  b                                           ; $6d59: $80
	db   $fc                                         ; $6d5a: $fc
	ld   b, $a3                                      ; $6d5b: $06 $a3
	db   $e3                                         ; $6d5d: $e3
	sbc  h                                           ; $6d5e: $9c
	rra                                              ; $6d5f: $1f
	add  e                                           ; $6d60: $83

jr_09d_6d61:
	rst  $38                                         ; $6d61: $ff
	ld   a, a                                        ; $6d62: $7f
	add  l                                           ; $6d63: $85
	rst  $38                                         ; $6d64: $ff
	add  l                                           ; $6d65: $85
	ldh  a, [rSB]                                    ; $6d66: $f0 $01
	pop  af                                          ; $6d68: $f1
	cp   $85                                         ; $6d69: $fe $85
	rst  $38                                         ; $6d6b: $ff
	add  l                                           ; $6d6c: $85
	nop                                              ; $6d6d: $00
	ld   bc, $00ff                                   ; $6d6e: $01 $ff $00
	add  l                                           ; $6d71: $85
	rst  $38                                         ; $6d72: $ff
	add  l                                           ; $6d73: $85
	rrca                                             ; $6d74: $0f
	ld   bc, $708f                                   ; $6d75: $01 $8f $70
	adc  l                                           ; $6d78: $8d
	pop  af                                          ; $6d79: $f1
	nop                                              ; $6d7a: $00
	cp   $8d                                         ; $6d7b: $fe $8d
	rst  $38                                         ; $6d7d: $ff
	nop                                              ; $6d7e: $00
	rrca                                             ; $6d7f: $0f
	adc  l                                           ; $6d80: $8d
	add  e                                           ; $6d81: $83
	nop                                              ; $6d82: $00
	ld   a, h                                        ; $6d83: $7c
	add  b                                           ; $6d84: $80
	pop  af                                          ; $6d85: $f1
	add  e                                           ; $6d86: $83
	ldh  a, [$86]                                    ; $6d87: $f0 $86
	rst  $38                                         ; $6d89: $ff
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	add  b                                           ; $6d8c: $80
	rst  $38                                         ; $6d8d: $ff
	add  e                                           ; $6d8e: $83
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	rst  $38                                         ; $6d91: $ff
	add  d                                           ; $6d92: $82
	nop                                              ; $6d93: $00
	add  c                                           ; $6d94: $81
	rst  $38                                         ; $6d95: $ff
	nop                                              ; $6d96: $00
	rrca                                             ; $6d97: $0f
	add  b                                           ; $6d98: $80
	add  e                                           ; $6d99: $83
	add  e                                           ; $6d9a: $83
	inc  bc                                          ; $6d9b: $03
	nop                                              ; $6d9c: $00
	di                                               ; $6d9d: $f3
	add  d                                           ; $6d9e: $82
	inc  bc                                          ; $6d9f: $03
	add  c                                           ; $6da0: $81
	rst  $38                                         ; $6da1: $ff
	rst  $38                                         ; $6da2: $ff
	nop                                              ; $6da3: $00
	rst  $38                                         ; $6da4: $ff
	nop                                              ; $6da5: $00
	rst  $38                                         ; $6da6: $ff
	nop                                              ; $6da7: $00
	rst  $38                                         ; $6da8: $ff
	nop                                              ; $6da9: $00
	rst  $38                                         ; $6daa: $ff
	nop                                              ; $6dab: $00
	rst  $38                                         ; $6dac: $ff
	nop                                              ; $6dad: $00
	ld   hl, sp+$00                                  ; $6dae: $f8 $00
	rrca                                             ; $6db0: $0f
	ld   bc, $0319                                   ; $6db1: $01 $19 $03
	nop                                              ; $6db4: $00
	rrca                                             ; $6db5: $0f
	inc  bc                                          ; $6db6: $03
	rra                                              ; $6db7: $1f
	rrca                                             ; $6db8: $0f
	ccf                                              ; $6db9: $3f
	rra                                              ; $6dba: $1f
	ld   a, a                                        ; $6dbb: $7f
	ccf                                              ; $6dbc: $3f
	ld   e, $3e                                      ; $6dbd: $1e $3e
	sub  b                                           ; $6dbf: $90
	ld   a, c                                        ; $6dc0: $79
	ld   l, c                                        ; $6dc1: $69
	ld   [hl], a                                     ; $6dc2: $77
	ld   d, a                                        ; $6dc3: $57
	ld   l, a                                        ; $6dc4: $6f
	cpl                                              ; $6dc5: $2f
	sbc  $df                                         ; $6dc6: $de $df
	reti                                             ; $6dc8: $d9


	rra                                              ; $6dc9: $1f
	and  a                                           ; $6dca: $a7

jr_09d_6dcb:
	xor  a                                           ; $6dcb: $af

jr_09d_6dcc:
	adc  a                                           ; $6dcc: $8f
	add  b                                           ; $6dcd: $80
	cp   a                                           ; $6dce: $bf
	inc  b                                           ; $6dcf: $04
	ld   a, [hl]                                     ; $6dd0: $7e
	ld   l, [hl]                                     ; $6dd1: $6e
	db   $ec                                         ; $6dd2: $ec
	call c, $87df                                    ; $6dd3: $dc $df $87
	nop                                              ; $6dd6: $00
	dec  b                                           ; $6dd7: $05
	ld   c, $00                                      ; $6dd8: $0e $00
	ccf                                              ; $6dda: $3f
	ld   c, $f8                                      ; $6ddb: $0e $f8
	jr   c, jr_09d_6d61                              ; $6ddd: $38 $82

	ld   hl, sp-$80                                  ; $6ddf: $f8 $80
	db   $fc                                         ; $6de1: $fc
	add  b                                           ; $6de2: $80
	ldh  a, [rDIV]                                   ; $6de3: $f0 $04
	add  b                                           ; $6de5: $80
	adc  a                                           ; $6de6: $8f
	ld   l, a                                        ; $6de7: $6f
	rra                                              ; $6de8: $1f
	cp   a                                           ; $6de9: $bf
	add  b                                           ; $6dea: $80
	ccf                                              ; $6deb: $3f
	ld   bc, $0f30                                   ; $6dec: $01 $30 $0f
	add  e                                           ; $6def: $83
	nop                                              ; $6df0: $00
	inc  bc                                          ; $6df1: $03
	adc  [hl]                                        ; $6df2: $8e
	nop                                              ; $6df3: $00
	ld   a, a                                        ; $6df4: $7f
	ld   c, $80                                      ; $6df5: $0e $80
	ld   a, a                                        ; $6df7: $7f
	add  d                                           ; $6df8: $82
	rst  $38                                         ; $6df9: $ff
	add  b                                           ; $6dfa: $80
	ccf                                              ; $6dfb: $3f
	inc  b                                           ; $6dfc: $04
	rlca                                             ; $6dfd: $07
	rst  ToBoot                                         ; $6dfe: $c7
	pop  bc                                          ; $6dff: $c1
	ld   sp, hl                                      ; $6e00: $f9
	ld   hl, sp-$80                                  ; $6e01: $f8 $80
	cp   $0f                                         ; $6e03: $fe $0f
	ld   a, a                                        ; $6e05: $7f
	rst  $38                                         ; $6e06: $ff
	rrca                                             ; $6e07: $0f
	ld   a, a                                        ; $6e08: $7f
	inc  bc                                          ; $6e09: $03
	rrca                                             ; $6e0a: $0f
	nop                                              ; $6e0b: $00
	jp   $e000                                       ; $6e0c: $c3 $00 $e0


	ret  nz                                          ; $6e0f: $c0

	ld   hl, sp-$20                                  ; $6e10: $f8 $e0
	db   $fc                                         ; $6e12: $fc
	ld   hl, sp-$02                                  ; $6e13: $f8 $fe
	add  c                                           ; $6e15: $81
	db   $fc                                         ; $6e16: $fc
	ld   b, $5f                                      ; $6e17: $06 $5f
	ld   e, [hl]                                     ; $6e19: $5e
	ld   c, $8e                                      ; $6e1a: $0e $8e
	adc  a                                           ; $6e1c: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e1d: $cf
	rst  ToBoot                                         ; $6e1e: $c7
	add  b                                           ; $6e1f: $80
	ldh  [c], a                                      ; $6e20: $e2
	add  b                                           ; $6e21: $80
	db   $f4                                         ; $6e22: $f4
	dec  b                                           ; $6e23: $05
	ld   [hl], l                                     ; $6e24: $75
	pop  af                                          ; $6e25: $f1
	cp   c                                           ; $6e26: $b9
	ld   sp, hl                                      ; $6e27: $f9
	db   $db                                         ; $6e28: $db
	ei                                               ; $6e29: $fb
	add  b                                           ; $6e2a: $80
	db   $eb                                         ; $6e2b: $eb
	ld   bc, $7fe3                                   ; $6e2c: $01 $e3 $7f
	add  e                                           ; $6e2f: $83
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	ret  nz                                          ; $6e32: $c0

	adc  a                                           ; $6e33: $8f

jr_09d_6e34:
	add  b                                           ; $6e34: $80
	ld   bc, $c0e0                                   ; $6e35: $01 $e0 $c0
	adc  [hl]                                        ; $6e38: $8e
	ld   b, b                                        ; $6e39: $40
	nop                                              ; $6e3a: $00
	jr   nc, @-$7d                                   ; $6e3b: $30 $81

	jr   nz, jr_09d_6e3f                             ; $6e3d: $20 $00

jr_09d_6e3f:
	nop                                              ; $6e3f: $00
	add  l                                           ; $6e40: $85
	jr   nz, jr_09d_6e43                             ; $6e41: $20 $00

jr_09d_6e43:
	jr   jr_09d_6dcc                                 ; $6e43: $18 $87

	jr   nc, jr_09d_6e47                             ; $6e45: $30 $00

jr_09d_6e47:
	nop                                              ; $6e47: $00
	add  d                                           ; $6e48: $82
	jr   nz, jr_09d_6dcb                             ; $6e49: $20 $80

	ld   h, b                                        ; $6e4b: $60
	dec  bc                                          ; $6e4c: $0b
	ld   b, b                                        ; $6e4d: $40
	ld   c, b                                        ; $6e4e: $48
	nop                                              ; $6e4f: $00
	stop                                             ; $6e50: $10 $00
	jr   jr_09d_6e34                                 ; $6e52: $18 $e0

	db   $e4                                         ; $6e54: $e4
	ld   hl, sp-$06                                  ; $6e55: $f8 $fa
	db   $fc                                         ; $6e57: $fc
	db   $fd                                         ; $6e58: $fd
	add  b                                           ; $6e59: $80
	cp   $80                                         ; $6e5a: $fe $80
	add  b                                           ; $6e5c: $80
	add  c                                           ; $6e5d: $81
	nop                                              ; $6e5e: $00
	add  b                                           ; $6e5f: $80
	ld   a, a                                        ; $6e60: $7f
	add  e                                           ; $6e61: $83
	rst  $38                                         ; $6e62: $ff
	sub  c                                           ; $6e63: $91
	nop                                              ; $6e64: $00
	ld   [bc], a                                     ; $6e65: $02
	ldh  [rP1], a                                    ; $6e66: $e0 $00
	db   $10                                         ; $6e68: $10
	add  c                                           ; $6e69: $81
	nop                                              ; $6e6a: $00
	ld   [bc], a                                     ; $6e6b: $02
	ret  z                                           ; $6e6c: $c8

	ret  nz                                          ; $6e6d: $c0

	db   $fc                                         ; $6e6e: $fc
	add  c                                           ; $6e6f: $81
	ld   hl, sp-$80                                  ; $6e70: $f8 $80
	ldh  a, [$80]                                    ; $6e72: $f0 $80
	ldh  [rSB], a                                    ; $6e74: $e0 $01
	db   $e4                                         ; $6e76: $e4
	ldh  [$84], a                                    ; $6e77: $e0 $84
	ret  nz                                          ; $6e79: $c0

	inc  bc                                          ; $6e7a: $03
	inc  b                                           ; $6e7b: $04
	nop                                              ; $6e7c: $00
	ldh  a, [c]                                      ; $6e7d: $f2
	ldh  a, [$84]                                    ; $6e7e: $f0 $84
	db   $fc                                         ; $6e80: $fc
	nop                                              ; $6e81: $00
	db   $fd                                         ; $6e82: $fd
	add  c                                           ; $6e83: $81
	db   $fc                                         ; $6e84: $fc
	add  b                                           ; $6e85: $80

jr_09d_6e86:
	ld   hl, sp-$80                                  ; $6e86: $f8 $80
	ldh  [$80], a                                    ; $6e88: $e0 $80
	add  b                                           ; $6e8a: $80
	ld   [bc], a                                     ; $6e8b: $02
	rst  $38                                         ; $6e8c: $ff
	nop                                              ; $6e8d: $00
	ld   bc, $008d                                   ; $6e8e: $01 $8d $00
	ld   bc, $0103                                   ; $6e91: $01 $03 $01
	add  b                                           ; $6e94: $80
	nop                                              ; $6e95: $00
	ld   bc, $0206                                   ; $6e96: $01 $06 $02
	add  h                                           ; $6e99: $84
	ld   bc, $0901                                   ; $6e9a: $01 $01 $09
	ld   bc, $0080                                   ; $6e9d: $01 $80 $00
	inc  bc                                          ; $6ea0: $03
	stop                                             ; $6ea1: $10 $00
	inc  [hl]                                        ; $6ea3: $34
	inc  d                                           ; $6ea4: $14
	add  b                                           ; $6ea5: $80
	ld   [$6a03], sp                                 ; $6ea6: $08 $03 $6a
	ld   a, [hl+]                                    ; $6ea9: $2a
	ret  c                                           ; $6eaa: $d8

	ld   e, b                                        ; $6eab: $58
	add  b                                           ; $6eac: $80
	ld   d, h                                        ; $6ead: $54
	add  b                                           ; $6eae: $80
	or   h                                           ; $6eaf: $b4
	add  hl, bc                                      ; $6eb0: $09
	cp   h                                           ; $6eb1: $bc
	inc  e                                           ; $6eb2: $1c
	ld   e, $9e                                      ; $6eb3: $1e $9e
	ld   e, [hl]                                     ; $6eb5: $5e
	ld   [hl], $34                                   ; $6eb6: $36 $34
	inc  d                                           ; $6eb8: $14
	sub  h                                           ; $6eb9: $94
	ld   l, h                                        ; $6eba: $6c
	add  c                                           ; $6ebb: $81
	ld   c, l                                        ; $6ebc: $4d
	add  b                                           ; $6ebd: $80
	ld   e, l                                        ; $6ebe: $5d
	ld   bc, $ffdd                                   ; $6ebf: $01 $dd $ff
	adc  e                                           ; $6ec2: $8b
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	ld   bc, $0081                                   ; $6ec5: $01 $81 $00
	nop                                              ; $6ec8: $00
	ld   [bc], a                                     ; $6ec9: $02
	add  c                                           ; $6eca: $81
	ld   bc, $0401                                   ; $6ecb: $01 $01 $04
	inc  bc                                          ; $6ece: $03
	add  d                                           ; $6ecf: $82
	ld   [bc], a                                     ; $6ed0: $02
	ld   bc, $0608                                   ; $6ed1: $01 $08 $06
	add  b                                           ; $6ed4: $80
	dec  b                                           ; $6ed5: $05
	nop                                              ; $6ed6: $00
	ld   bc, $0581                                   ; $6ed7: $01 $81 $05
	ld   bc, $0d1d                                   ; $6eda: $01 $1d $0d
	add  h                                           ; $6edd: $84
	add  hl, bc                                      ; $6ede: $09
	nop                                              ; $6edf: $00
	ld   [de], a                                     ; $6ee0: $12
	add  e                                           ; $6ee1: $83
	nop                                              ; $6ee2: $00
	ld   b, $08                                      ; $6ee3: $06 $08
	nop                                              ; $6ee5: $00
	ld   bc, $0600                                   ; $6ee6: $01 $00 $06
	nop                                              ; $6ee9: $00
	ld   [bc], a                                     ; $6eea: $02
	add  e                                           ; $6eeb: $83
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	ld   bc, $0081                                   ; $6eee: $01 $81 $00
	nop                                              ; $6ef1: $00
	inc  bc                                          ; $6ef2: $03
	add  e                                           ; $6ef3: $83
	ld   bc, $0700                                   ; $6ef4: $01 $00 $07
	add  c                                           ; $6ef7: $81
	inc  bc                                          ; $6ef8: $03
	nop                                              ; $6ef9: $00
	inc  c                                           ; $6efa: $0c
	add  c                                           ; $6efb: $81
	inc  b                                           ; $6efc: $04
	inc  b                                           ; $6efd: $04

jr_09d_6efe:
	inc  d                                           ; $6efe: $14
	inc  b                                           ; $6eff: $04
	jr   nc, jr_09d_6f12                             ; $6f00: $30 $10

	ld   [hl], b                                     ; $6f02: $70
	add  c                                           ; $6f03: $81
	jr   nc, jr_09d_6e86                             ; $6f04: $30 $80

	ld   sp, $3980                                   ; $6f06: $31 $80 $39
	nop                                              ; $6f09: $00
	ld   e, c                                        ; $6f0a: $59
	add  c                                           ; $6f0b: $81
	jr   jr_09d_6f1a                                 ; $6f0c: $18 $0c

	ld   d, d                                        ; $6f0e: $52
	sub  b                                           ; $6f0f: $90
	adc  h                                           ; $6f10: $8c
	add  b                                           ; $6f11: $80

jr_09d_6f12:
	stop                                             ; $6f12: $10 $00
	ld   a, a                                        ; $6f14: $7f
	nop                                              ; $6f15: $00
	and  b                                           ; $6f16: $a0
	ld   bc, $0241                                   ; $6f17: $01 $41 $02

jr_09d_6f1a:
	add  d                                           ; $6f1a: $82
	add  b                                           ; $6f1b: $80
	rrca                                             ; $6f1c: $0f
	nop                                              ; $6f1d: $00
	rra                                              ; $6f1e: $1f
	add  b                                           ; $6f1f: $80
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	add  b                                           ; $6f22: $80
	adc  e                                           ; $6f23: $8b
	nop                                              ; $6f24: $00
	ld   b, $9f                                      ; $6f25: $06 $9f
	rra                                              ; $6f27: $1f
	rst  $38                                         ; $6f28: $ff
	ld   c, $1e                                      ; $6f29: $0e $1e
	rlca                                             ; $6f2b: $07
	rst  $30                                         ; $6f2c: $f7
	add  b                                           ; $6f2d: $80
	rlca                                             ; $6f2e: $07
	add  b                                           ; $6f2f: $80
	ei                                               ; $6f30: $fb
	add  b                                           ; $6f31: $80
	rst  $38                                         ; $6f32: $ff
	add  b                                           ; $6f33: $80
	rlca                                             ; $6f34: $07
	inc  bc                                          ; $6f35: $03
	ld   sp, hl                                      ; $6f36: $f9
	rlca                                             ; $6f37: $07
	nop                                              ; $6f38: $00
	ld   bc, $008b                                   ; $6f39: $01 $8b $00
	nop                                              ; $6f3c: $00
	ld   h, [hl]                                     ; $6f3d: $66
	add  e                                           ; $6f3e: $83
	sbc  c                                           ; $6f3f: $99
	add  d                                           ; $6f40: $82
	jr   jr_09d_6f59                                 ; $6f41: $18 $16

	nop                                              ; $6f43: $00
	ld   [bc], a                                     ; $6f44: $02
	add  e                                           ; $6f45: $83
	sub  h                                           ; $6f46: $94
	sub  l                                           ; $6f47: $95
	add  b                                           ; $6f48: $80
	sub  e                                           ; $6f49: $93
	sub  b                                           ; $6f4a: $90
	adc  h                                           ; $6f4b: $8c
	add  b                                           ; $6f4c: $80
	stop                                             ; $6f4d: $10 $00
	ld   a, a                                        ; $6f4f: $7f
	nop                                              ; $6f50: $00
	and  b                                           ; $6f51: $a0
	ld   bc, $0241                                   ; $6f52: $01 $41 $02
	add  h                                           ; $6f55: $84
	add  hl, bc                                      ; $6f56: $09
	nop                                              ; $6f57: $00
	db   $10                                         ; $6f58: $10

jr_09d_6f59:
	add  a                                           ; $6f59: $87
	add  c                                           ; $6f5a: $81
	sbc  b                                           ; $6f5b: $98
	add  b                                           ; $6f5c: $80
	adc  h                                           ; $6f5d: $8c
	add  b                                           ; $6f5e: $80
	nop                                              ; $6f5f: $00
	ld   b, $63                                      ; $6f60: $06 $63
	inc  d                                           ; $6f62: $14
	ld   sp, hl                                      ; $6f63: $f9
	ld   b, b                                        ; $6f64: $40
	cp   $09                                         ; $6f65: $fe $09
	add  hl, sp                                      ; $6f67: $39

jr_09d_6f68:
	add  b                                           ; $6f68: $80
	add  h                                           ; $6f69: $84
	rrca                                             ; $6f6a: $0f
	rra                                              ; $6f6b: $1f
	rst  $38                                         ; $6f6c: $ff
	ld   c, $1e                                      ; $6f6d: $0e $1e
	rlca                                             ; $6f6f: $07
	rst  $30                                         ; $6f70: $f7
	rlca                                             ; $6f71: $07
	rst  $30                                         ; $6f72: $f7
	dec  bc                                          ; $6f73: $0b
	ld   a, [$fffe]                                  ; $6f74: $fa $fe $ff
	rlca                                             ; $6f77: $07
	rst  $38                                         ; $6f78: $ff
	ld   bc, $81de                                   ; $6f79: $01 $de $81
	jr   nz, jr_09d_6efe                             ; $6f7c: $20 $80

	ld   h, b                                        ; $6f7e: $60
	add  b                                           ; $6f7f: $80
	ld   b, b                                        ; $6f80: $40
	ld   c, $08                                      ; $6f81: $0e $08
	nop                                              ; $6f83: $00
	stop                                             ; $6f84: $10 $00
	jr   jr_09d_6f68                                 ; $6f86: $18 $e0

	call c, $06c0                                    ; $6f88: $dc $c0 $06
	nop                                              ; $6f8b: $00
	inc  bc                                          ; $6f8c: $03
	nop                                              ; $6f8d: $00
	ld   a, [hl]                                     ; $6f8e: $7e
	nop                                              ; $6f8f: $00
	add  b                                           ; $6f90: $80
	add  c                                           ; $6f91: $81
	nop                                              ; $6f92: $00
	ld   [bc], a                                     ; $6f93: $02
	ld   a, a                                        ; $6f94: $7f
	nop                                              ; $6f95: $00
	add  b                                           ; $6f96: $80
	add  c                                           ; $6f97: $81
	nop                                              ; $6f98: $00
	add  hl, de                                      ; $6f99: $19
	inc  bc                                          ; $6f9a: $03
	nop                                              ; $6f9b: $00
	rrca                                             ; $6f9c: $0f
	inc  bc                                          ; $6f9d: $03
	rra                                              ; $6f9e: $1f
	rrca                                             ; $6f9f: $0f
	ccf                                              ; $6fa0: $3f
	rra                                              ; $6fa1: $1f
	ld   a, a                                        ; $6fa2: $7f
	ccf                                              ; $6fa3: $3f
	ld   a, $1e                                      ; $6fa4: $3e $1e
	reti                                             ; $6fa6: $d9


	jr   nc, jr_09d_6fe3                             ; $6fa7: $30 $3a

	inc  h                                           ; $6fa9: $24
	inc  [hl]                                        ; $6faa: $34
	inc  c                                           ; $6fab: $0c
	xor  c                                           ; $6fac: $a9
	ld   e, b                                        ; $6fad: $58
	ld   e, a                                        ; $6fae: $5f
	ld   e, c                                        ; $6faf: $59
	rra                                              ; $6fb0: $1f
	and  a                                           ; $6fb1: $a7
	xor  a                                           ; $6fb2: $af
	adc  a                                           ; $6fb3: $8f
	add  b                                           ; $6fb4: $80
	cp   a                                           ; $6fb5: $bf
	inc  b                                           ; $6fb6: $04
	ld   a, [hl]                                     ; $6fb7: $7e
	ld   l, [hl]                                     ; $6fb8: $6e
	db   $ec                                         ; $6fb9: $ec
	call c, $87df                                    ; $6fba: $dc $df $87
	nop                                              ; $6fbd: $00
	add  d                                           ; $6fbe: $82
	ld   bc, $0302                                   ; $6fbf: $01 $02 $03
	ld   [bc], a                                     ; $6fc2: $02
	ld   b, $80                                      ; $6fc3: $06 $80
	inc  b                                           ; $6fc5: $04
	ld   [$0a02], sp                                 ; $6fc6: $08 $02 $0a
	ld   b, $36                                      ; $6fc9: $06 $36
	ld   e, $de                                      ; $6fcb: $1e $de
	ld   [hl], b                                     ; $6fcd: $70
	ld   a, [hl]                                     ; $6fce: $7e
	ld   c, $80                                      ; $6fcf: $0e $80
	cp   $80                                         ; $6fd1: $fe $80
	db   $fc                                         ; $6fd3: $fc
	inc  bc                                          ; $6fd4: $03
	sub  e                                           ; $6fd5: $93
	ld   h, b                                        ; $6fd6: $60
	ld   [hl], b                                     ; $6fd7: $70
	ld   l, b                                        ; $6fd8: $68
	add  b                                           ; $6fd9: $80
	ret  z                                           ; $6fda: $c8

	ld   b, $e8                                      ; $6fdb: $06 $e8
	ret  nc                                          ; $6fdd: $d0

	sbc  b                                           ; $6fde: $98
	add  b                                           ; $6fdf: $80
	ret  nz                                          ; $6fe0: $c0

	add  b                                           ; $6fe1: $80
	and  b                                           ; $6fe2: $a0

jr_09d_6fe3:
	add  c                                           ; $6fe3: $81
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	ld   [$0081], sp                                 ; $6fe6: $08 $81 $00
	inc  c                                           ; $6fe9: $0c
	jr   nz, jr_09d_6fec                             ; $6fea: $20 $00

jr_09d_6fec:
	inc  [hl]                                        ; $6fec: $34
	jr   nc, jr_09d_7060                             ; $6fed: $30 $71

	ld   [hl], b                                     ; $6fef: $70
	ldh  [hScriptOpcodeParams], a                                    ; $6ff0: $e0 $a0
	add  b                                           ; $6ff2: $80
	db   $10                                         ; $6ff3: $10
	ld   d, d                                        ; $6ff4: $52
	ld   sp, $ff4a                                   ; $6ff5: $31 $4a $ff
	nop                                              ; $6ff8: $00
	rst  $38                                         ; $6ff9: $ff
	nop                                              ; $6ffa: $00
	cp   e                                           ; $6ffb: $bb
	nop                                              ; $6ffc: $00
	inc  bc                                          ; $6ffd: $03
	ld   [hl], b                                     ; $6ffe: $70
	rrca                                             ; $6fff: $0f

Call_09d_7000:
	rst  $38                                         ; $7000: $ff
	ld   a, a                                        ; $7001: $7f
	add  b                                           ; $7002: $80
	rst  $28                                         ; $7003: $ef
	add  b                                           ; $7004: $80
	rst  JumpTable                                         ; $7005: $df
	add  b                                           ; $7006: $80
	cp   e                                           ; $7007: $bb
	add  b                                           ; $7008: $80
	inc  sp                                          ; $7009: $33
	add  c                                           ; $700a: $81
	ld   h, d                                        ; $700b: $62
	ld   b, $22                                      ; $700c: $06 $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $700e: $cf
	add  b                                           ; $700f: $80
	db   $fc                                         ; $7010: $fc
	ldh  a, [rIE]                                    ; $7011: $f0 $ff
	db   $fc                                         ; $7013: $fc
	add  d                                           ; $7014: $82
	rst  $38                                         ; $7015: $ff
	add  b                                           ; $7016: $80
	xor  a                                           ; $7017: $af
	add  b                                           ; $7018: $80
	xor  e                                           ; $7019: $ab
	add  b                                           ; $701a: $80
	or   e                                           ; $701b: $b3
	rlca                                             ; $701c: $07
	rra                                              ; $701d: $1f
	ld   d, b                                        ; $701e: $50
	ld   b, b                                        ; $701f: $40
	jr   nz, @-$56                                   ; $7020: $20 $a8

	adc  b                                           ; $7022: $88
	ret  nz                                          ; $7023: $c0

	ret  z                                           ; $7024: $c8

	add  b                                           ; $7025: $80
	call z, $c001                                    ; $7026: $cc $01 $c0
	call nz, $d680                                   ; $7029: $c4 $80 $d6
	ld   [bc], a                                     ; $702c: $02
	sbc  c                                           ; $702d: $99
	sbc  e                                           ; $702e: $9b
	cp   $80                                         ; $702f: $fe $80
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	ld   bc, $0280                                   ; $7033: $01 $80 $02
	ld   bc, $0100                                   ; $7036: $01 $00 $01
	add  [hl]                                        ; $7039: $86
	nop                                              ; $703a: $00
	add  [hl]                                        ; $703b: $86
	add  b                                           ; $703c: $80
	add  b                                           ; $703d: $80
	nop                                              ; $703e: $00
	add  d                                           ; $703f: $82
	ld   bc, $030e                                   ; $7040: $01 $0e $03
	ld   [bc], a                                     ; $7043: $02
	ld   l, l                                        ; $7044: $6d
	ld   [hl], e                                     ; $7045: $73
	ld   h, e                                        ; $7046: $63
	ld   l, d                                        ; $7047: $6a
	jp   z, $caea                                    ; $7048: $ca $ea $ca

	ret  nc                                          ; $704b: $d0

	sbc  b                                           ; $704c: $98
	ret  z                                           ; $704d: $c8

	adc  b                                           ; $704e: $88
	adc  c                                           ; $704f: $89
	xor  c                                           ; $7050: $a9

jr_09d_7051:
	add  b                                           ; $7051: $80
	add  hl, hl                                      ; $7052: $29
	ld   de, $7f2b                                   ; $7053: $11 $2b $7f
	add  b                                           ; $7056: $80
	ret  nz                                          ; $7057: $c0

	ld   b, b                                        ; $7058: $40
	ld   h, b                                        ; $7059: $60
	jr   nz, jr_09d_708c                             ; $705a: $20 $30

	db   $10                                         ; $705c: $10
	sub  $0f                                         ; $705d: $d6 $0f
	and  [hl]                                        ; $705f: $a6

jr_09d_7060:
	add  b                                           ; $7060: $80
	pop  af                                          ; $7061: $f1

jr_09d_7062:
	xor  c                                           ; $7062: $a9
	add  h                                           ; $7063: $84
	ld   b, d                                        ; $7064: $42
	add  [hl]                                        ; $7065: $86
	add  b                                           ; $7066: $80
	inc  b                                           ; $7067: $04
	dec  c                                           ; $7068: $0d
	ld   a, [bc]                                     ; $7069: $0a
	ld   [bc], a                                     ; $706a: $02
	ld   d, $26                                      ; $706b: $16 $26
	ld   e, [hl]                                     ; $706d: $5e
	sbc  [hl]                                        ; $706e: $9e
	ld   [hl], b                                     ; $706f: $70
	ld   a, [hl]                                     ; $7070: $7e
	nop                                              ; $7071: $00
	ldh  a, [rP1]                                    ; $7072: $f0 $00
	ld   [bc], a                                     ; $7074: $02
	nop                                              ; $7075: $00
	rst  JumpTable                                         ; $7076: $df
	add  c                                           ; $7077: $81
	inc  hl                                          ; $7078: $23
	add  b                                           ; $7079: $80
	inc  bc                                          ; $707a: $03
	add  b                                           ; $707b: $80
	scf                                              ; $707c: $37
	add  b                                           ; $707d: $80
	halt                                             ; $707e: $76
	add  b                                           ; $707f: $80
	and  $04                                         ; $7080: $e6 $04
	add  $d6                                         ; $7082: $c6 $d6
	sub  h                                           ; $7084: $94
	or   l                                           ; $7085: $b5
	ld   c, $81                                      ; $7086: $0e $81
	ret  nz                                          ; $7088: $c0

	add  hl, bc                                      ; $7089: $09
	ldh  [$60], a                                    ; $708a: $e0 $60

jr_09d_708c:
	ld   [hl], b                                     ; $708c: $70
	or   b                                           ; $708d: $b0
	cp   h                                           ; $708e: $bc
	call c, $271f                                    ; $708f: $dc $1f $27
	ld   b, $1e                                      ; $7092: $06 $1e
	add  b                                           ; $7094: $80
	cp   $07                                         ; $7095: $fe $07
	rst  $38                                         ; $7097: $ff
	ld   [bc], a                                     ; $7098: $02
	cp   d                                           ; $7099: $ba
	ld   b, $6e                                      ; $709a: $06 $6e
	dec  c                                           ; $709c: $0d
	ld   a, $0c                                      ; $709d: $3e $0c
	add  b                                           ; $709f: $80
	nop                                              ; $70a0: $00
	add  b                                           ; $70a1: $80
	ld   bc, $1b00                                   ; $70a2: $01 $00 $1b
	add  b                                           ; $70a5: $80
	ld   [bc], a                                     ; $70a6: $02
	add  hl, bc                                      ; $70a7: $09
	nop                                              ; $70a8: $00
	db   $f4                                         ; $70a9: $f4
	ld   h, e                                        ; $70aa: $63
	jr   nz, jr_09d_7051                             ; $70ab: $20 $a4

	ld   h, b                                        ; $70ad: $60
	ld   e, b                                        ; $70ae: $58
	ld   e, a                                        ; $70af: $5f
	jr   nc, jr_09d_7062                             ; $70b0: $30 $b0

	add  b                                           ; $70b2: $80
	ret  nz                                          ; $70b3: $c0

	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	add  b                                           ; $70b6: $80
	rrca                                             ; $70b7: $0f
	add  b                                           ; $70b8: $80
	ccf                                              ; $70b9: $3f
	ld   bc, $100f                                   ; $70ba: $01 $0f $10
	add  h                                           ; $70bd: $84
	sub  b                                           ; $70be: $90
	add  b                                           ; $70bf: $80
	sbc  b                                           ; $70c0: $98
	add  b                                           ; $70c1: $80
	sbc  d                                           ; $70c2: $9a
	add  d                                           ; $70c3: $82
	sbc  [hl]                                        ; $70c4: $9e
	inc  bc                                          ; $70c5: $03
	pop  hl                                          ; $70c6: $e1
	nop                                              ; $70c7: $00
	ld   bc, $8000                                   ; $70c8: $01 $00 $80
	ld   bc, $0380                                   ; $70cb: $01 $80 $03
	add  b                                           ; $70ce: $80
	rrca                                             ; $70cf: $0f
	add  b                                           ; $70d0: $80
	ccf                                              ; $70d1: $3f
	add  b                                           ; $70d2: $80
	rra                                              ; $70d3: $1f
	add  b                                           ; $70d4: $80
	inc  bc                                          ; $70d5: $03
	inc  b                                           ; $70d6: $04
	cp   $0e                                         ; $70d7: $fe $0e
	rst  $38                                         ; $70d9: $ff
	rlca                                             ; $70da: $07
	rst  $30                                         ; $70db: $f7
	add  h                                           ; $70dc: $84
	ei                                               ; $70dd: $fb
	add  b                                           ; $70de: $80
	di                                               ; $70df: $f3
	add  b                                           ; $70e0: $80
	db   $e3                                         ; $70e1: $e3
	inc  b                                           ; $70e2: $04
	jp   $0033                                       ; $70e3: $c3 $33 $00


	add  hl, bc                                      ; $70e6: $09
	ld   bc, $0384                                   ; $70e7: $01 $84 $03
	ld   bc, $0105                                   ; $70ea: $01 $05 $01
	add  d                                           ; $70ed: $82
	add  c                                           ; $70ee: $81
	nop                                              ; $70ef: $00
	inc  bc                                          ; $70f0: $03
	add  a                                           ; $70f1: $87
	rst  $38                                         ; $70f2: $ff
	add  b                                           ; $70f3: $80
	db   $fc                                         ; $70f4: $fc
	add  b                                           ; $70f5: $80
	ldh  [rSC], a                                    ; $70f6: $e0 $02
	add  e                                           ; $70f8: $83
	add  b                                           ; $70f9: $80
	db   $fc                                         ; $70fa: $fc
	add  a                                           ; $70fb: $87
	rst  $38                                         ; $70fc: $ff
	add  b                                           ; $70fd: $80
	rrca                                             ; $70fe: $0f
	add  b                                           ; $70ff: $80
	nop                                              ; $7100: $00
	inc  bc                                          ; $7101: $03
	rst  $38                                         ; $7102: $ff
	ccf                                              ; $7103: $3f
	ld   b, e                                        ; $7104: $43
	sub  h                                           ; $7105: $94
	add  b                                           ; $7106: $80
	call nc, $d000                                   ; $7107: $d4 $00 $d0
	add  b                                           ; $710a: $80
	ret  nz                                          ; $710b: $c0

	add  b                                           ; $710c: $80
	ret  z                                           ; $710d: $c8

	ld   [$4c48], sp                                 ; $710e: $08 $48 $4c
	inc  c                                           ; $7111: $0c
	rrca                                             ; $7112: $0f
	ld   b, a                                        ; $7113: $47
	ld   h, a                                        ; $7114: $67
	rst  $20                                         ; $7115: $e7
	rst  $38                                         ; $7116: $ff
	rlca                                             ; $7117: $07
	add  b                                           ; $7118: $80
	ld   bc, $030f                                   ; $7119: $01 $0f $03
	ld   [bc], a                                     ; $711c: $02
	ld   b, $04                                      ; $711d: $06 $04
	dec  e                                           ; $711f: $1d
	add  hl, de                                      ; $7120: $19
	ld   a, e                                        ; $7121: $7b
	ld   [hl], d                                     ; $7122: $72
	or   $e4                                         ; $7123: $f6 $e4
	db   $ec                                         ; $7125: $ec
	ret                                              ; $7126: $c9


	adc  $8b                                         ; $7127: $ce $8b
	sub  e                                           ; $7129: $93
	ld   de, $2180                                   ; $712a: $11 $80 $21
	inc  b                                           ; $712d: $04
	pop  hl                                          ; $712e: $e1
	and  c                                           ; $712f: $a1
	or   c                                           ; $7130: $b1
	ld   [hl], c                                     ; $7131: $71
	ld   a, c                                        ; $7132: $79
	add  b                                           ; $7133: $80
	ld   sp, hl                                      ; $7134: $f9
	add  b                                           ; $7135: $80
	cp   c                                           ; $7136: $b9
	ld   bc, $ff79                                   ; $7137: $01 $79 $ff
	add  e                                           ; $713a: $83
	add  b                                           ; $713b: $80
	nop                                              ; $713c: $00
	pop  bc                                          ; $713d: $c1
	add  a                                           ; $713e: $87
	ret  nz                                          ; $713f: $c0

	dec  b                                           ; $7140: $05
	ldh  a, [$03]                                    ; $7141: $f0 $03

jr_09d_7143:
	inc  de                                          ; $7143: $13
	rrca                                             ; $7144: $0f
	stop                                             ; $7145: $10 $00
	add  b                                           ; $7147: $80
	ld   a, b                                        ; $7148: $78
	add  b                                           ; $7149: $80
	ld   e, $80                                      ; $714a: $1e $80
	rlca                                             ; $714c: $07
	ld   bc, $0383                                   ; $714d: $01 $83 $03
	add  b                                           ; $7150: $80
	ld   bc, $4001                                   ; $7151: $01 $01 $40
	ret  nz                                          ; $7154: $c0

	add  b                                           ; $7155: $80
	inc  bc                                          ; $7156: $03
	ld   [bc], a                                     ; $7157: $02
	rrca                                             ; $7158: $0f
	dec  c                                           ; $7159: $0d
	db   $fd                                         ; $715a: $fd
	add  b                                           ; $715b: $80
	di                                               ; $715c: $f3
	ld   bc, $0f8f                                   ; $715d: $01 $8f $0f
	add  c                                           ; $7160: $81
	ld   a, a                                        ; $7161: $7f
	add  b                                           ; $7162: $80
	cp   a                                           ; $7163: $bf
	nop                                              ; $7164: $00
	rst  $38                                         ; $7165: $ff
	rst  $38                                         ; $7166: $ff
	nop                                              ; $7167: $00
	rst  $38                                         ; $7168: $ff
	nop                                              ; $7169: $00
	rst  $38                                         ; $716a: $ff
	nop                                              ; $716b: $00
	rst  $38                                         ; $716c: $ff
	nop                                              ; $716d: $00
	ld   sp, hl                                      ; $716e: $f9
	nop                                              ; $716f: $00
	ld   d, e                                        ; $7170: $53
	ld   bc, $0084                                   ; $7171: $01 $84 $00
	add  b                                           ; $7174: $80
	add  b                                           ; $7175: $80
	add  b                                           ; $7176: $80
	add  c                                           ; $7177: $81
	add  b                                           ; $7178: $80
	ld   b, [hl]                                     ; $7179: $46
	add  b                                           ; $717a: $80
	add  hl, sp                                      ; $717b: $39
	add  b                                           ; $717c: $80
	ld   [bc], a                                     ; $717d: $02
	ld   [bc], a                                     ; $717e: $02
	ccf                                              ; $717f: $3f
	nop                                              ; $7180: $00
	ret  nz                                          ; $7181: $c0

	add  d                                           ; $7182: $82
	nop                                              ; $7183: $00
	add  b                                           ; $7184: $80
	inc  bc                                          ; $7185: $03
	add  b                                           ; $7186: $80
	ld   hl, sp+$00                                  ; $7187: $f8 $00
	rlca                                             ; $7189: $07
	add  b                                           ; $718a: $80
	nop                                              ; $718b: $00
	inc  bc                                          ; $718c: $03
	ld   [$0f00], sp                                 ; $718d: $08 $00 $0f

jr_09d_7190:
	rra                                              ; $7190: $1f
	add  b                                           ; $7191: $80
	db   $10                                         ; $7192: $10
	ld   b, $08                                      ; $7193: $06 $08
	ld   e, b                                        ; $7195: $58
	jr   c, jr_09d_7190                              ; $7196: $38 $f8

	ld   d, h                                        ; $7198: $54
	db   $fc                                         ; $7199: $fc
	inc  c                                           ; $719a: $0c
	add  c                                           ; $719b: $81
	inc  a                                           ; $719c: $3c
	inc  b                                           ; $719d: $04
	rst  ToBoot                                         ; $719e: $c7
	rra                                              ; $719f: $1f
	sub  $95                                         ; $71a0: $d6 $95
	sub  c                                           ; $71a2: $91
	add  c                                           ; $71a3: $81
	sbc  e                                           ; $71a4: $9b
	rlca                                             ; $71a5: $07
	ld   [$014f], sp                                 ; $71a6: $08 $4f $01
	ld   sp, $0f00                                   ; $71a9: $31 $00 $0f
	dec  b                                           ; $71ac: $05
	rlca                                             ; $71ad: $07
	add  b                                           ; $71ae: $80
	inc  b                                           ; $71af: $04
	nop                                              ; $71b0: $00
	inc  bc                                          ; $71b1: $03
	add  l                                           ; $71b2: $85
	nop                                              ; $71b3: $00
	add  b                                           ; $71b4: $80
	inc  bc                                          ; $71b5: $03
	add  b                                           ; $71b6: $80
	rrca                                             ; $71b7: $0f
	add  b                                           ; $71b8: $80
	ld   [hl], b                                     ; $71b9: $70
	ld   [bc], a                                     ; $71ba: $02
	add  b                                           ; $71bb: $80
	adc  a                                           ; $71bc: $8f
	rrca                                             ; $71bd: $0f
	add  c                                           ; $71be: $81
	nop                                              ; $71bf: $00
	add  b                                           ; $71c0: $80
	jr   c, jr_09d_7143                              ; $71c1: $38 $80

jr_09d_71c3:
	rst  ToBoot                                         ; $71c3: $c7
	add  b                                           ; $71c4: $80
	ld   bc, $f880                                   ; $71c5: $01 $80 $f8
	ld   [bc], a                                     ; $71c8: $02
	rlca                                             ; $71c9: $07
	rrca                                             ; $71ca: $0f
	ld   [$ff80], sp                                 ; $71cb: $08 $80 $ff
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	add  b                                           ; $71d0: $80
	rra                                              ; $71d1: $1f
	rrca                                             ; $71d2: $0f
	db   $fc                                         ; $71d3: $fc
	rst  $20                                         ; $71d4: $e7
	ld   [hl], d                                     ; $71d5: $72
	sbc  a                                           ; $71d6: $9f
	ld   b, c                                        ; $71d7: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71d8: $cf
	inc  d                                           ; $71d9: $14
	ld   [hl], e                                     ; $71da: $73
	add  h                                           ; $71db: $84
	inc  e                                           ; $71dc: $1c

jr_09d_71dd:
	ld   h, c                                        ; $71dd: $61
	rst  ToBoot                                         ; $71de: $c7
	pop  hl                                          ; $71df: $e1
	rst  $38                                         ; $71e0: $ff
	jr   nz, jr_09d_71c3                             ; $71e1: $20 $e0

	add  b                                           ; $71e3: $80
	add  b                                           ; $71e4: $80
	add  c                                           ; $71e5: $81
	nop                                              ; $71e6: $00
	ld   [$0001], sp                                 ; $71e7: $08 $01 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71ea: $cf
	ld   bc, $f4ff                                   ; $71eb: $01 $ff $f4
	ld   e, h                                        ; $71ee: $5c
	ld   h, a                                        ; $71ef: $67
	rst  $38                                         ; $71f0: $ff
	add  b                                           ; $71f1: $80
	ld   a, a                                        ; $71f2: $7f
	add  b                                           ; $71f3: $80
	inc  bc                                          ; $71f4: $03
	add  c                                           ; $71f5: $81
	nop                                              ; $71f6: $00
	rlca                                             ; $71f7: $07
	db   $e3                                         ; $71f8: $e3
	ld   [hl+], a                                    ; $71f9: $22
	adc  $00                                         ; $71fa: $ce $00
	ld   sp, $6f01                                   ; $71fc: $31 $01 $6f
	xor  a                                           ; $71ff: $af
	add  e                                           ; $7200: $83
	rst  $38                                         ; $7201: $ff
	ld   d, $e0                                      ; $7202: $16 $e0
	rst  $38                                         ; $7204: $ff
	ld   [bc], a                                     ; $7205: $02
	ldh  [c], a                                      ; $7206: $e2
	inc  c                                           ; $7207: $0c
	dec  e                                           ; $7208: $1d
	jr   nz, jr_09d_71dd                             ; $7209: $20 $d2

	nop                                              ; $720b: $00
	dec  l                                           ; $720c: $2d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $720d: $cf
	rst  $38                                         ; $720e: $ff
	pop  hl                                          ; $720f: $e1
	rst  $38                                         ; $7210: $ff
	add  c                                           ; $7211: $81
	ldh  [c], a                                      ; $7212: $e2
	ld   [bc], a                                     ; $7213: $02
	sbc  [hl]                                        ; $7214: $9e
	nop                                              ; $7215: $00
	ld   h, a                                        ; $7216: $67
	rlca                                             ; $7217: $07
	sbc  l                                           ; $7218: $9d
	inc  e                                           ; $7219: $1c
	add  b                                           ; $721a: $80
	ld   [hl], e                                     ; $721b: $73
	ld   bc, $c6c7                                   ; $721c: $01 $c7 $c6
	add  d                                           ; $721f: $82
	nop                                              ; $7220: $00
	add  d                                           ; $7221: $82
	add  b                                           ; $7222: $80
	add  b                                           ; $7223: $80
	ret  nz                                          ; $7224: $c0

	add  b                                           ; $7225: $80
	ld   b, b                                        ; $7226: $40
	add  b                                           ; $7227: $80
	jr   nz, jr_09d_722b                             ; $7228: $20 $01

	nop                                              ; $722a: $00

jr_09d_722b:
	di                                               ; $722b: $f3
	add  c                                           ; $722c: $81
	dec  bc                                          ; $722d: $0b
	nop                                              ; $722e: $00
	ld   bc, $0583                                   ; $722f: $01 $83 $05
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	add  e                                           ; $7234: $83
	ld   [bc], a                                     ; $7235: $02
	nop                                              ; $7236: $00
	ld   bc, $fb86                                   ; $7237: $01 $86 $fb
	add  e                                           ; $723a: $83
	db   $fd                                         ; $723b: $fd
	inc  bc                                          ; $723c: $03
	ld   a, l                                        ; $723d: $7d
	ld   a, a                                        ; $723e: $7f
	xor  a                                           ; $723f: $af
	ret  nc                                          ; $7240: $d0

	add  b                                           ; $7241: $80
	pop  de                                          ; $7242: $d1
	add  b                                           ; $7243: $80
	ldh  [c], a                                      ; $7244: $e2
	add  b                                           ; $7245: $80
	and  $80                                         ; $7246: $e6 $80
	add  sp, $00                                     ; $7248: $e8 $00
	and  b                                           ; $724a: $a0
	add  e                                           ; $724b: $83
	ldh  [$0c], a                                    ; $724c: $e0 $0c
	ld   a, [hl-]                                    ; $724e: $3a
	nop                                              ; $724f: $00
	add  [hl]                                        ; $7250: $86
	nop                                              ; $7251: $00
	sub  [hl]                                        ; $7252: $96
	nop                                              ; $7253: $00
	sbc  $00                                         ; $7254: $de $00
	ld   e, [hl]                                     ; $7256: $5e
	nop                                              ; $7257: $00
	ld   a, d                                        ; $7258: $7a
	nop                                              ; $7259: $00
	db   $10                                         ; $725a: $10
	add  c                                           ; $725b: $81
	nop                                              ; $725c: $00
	dec  c                                           ; $725d: $0d
	or   $0d                                         ; $725e: $f6 $0d
	rla                                              ; $7260: $17
	dec  de                                          ; $7261: $1b
	ld   l, a                                        ; $7262: $6f
	ld   [hl], a                                     ; $7263: $77
	ret  c                                           ; $7264: $d8

	rst  $28                                         ; $7265: $ef
	and  b                                           ; $7266: $a0
	ret  c                                           ; $7267: $d8

	jp   $0ce3                                       ; $7268: $c3 $e3 $0c


	adc  h                                           ; $726b: $8c
	add  b                                           ; $726c: $80
	jr   nc, jr_09d_726f                             ; $726d: $30 $00

jr_09d_726f:
	nop                                              ; $726f: $00
	add  b                                           ; $7270: $80
	ldh  a, [$08]                                    ; $7271: $f0 $08
	ld   hl, sp+$08                                  ; $7273: $f8 $08
	db   $fc                                         ; $7275: $fc
	nop                                              ; $7276: $00
	rrca                                             ; $7277: $0f
	pop  hl                                          ; $7278: $e1
	db   $e3                                         ; $7279: $e3
	jr   jr_09d_7295                                 ; $727a: $18 $19

	add  b                                           ; $727c: $80
	inc  b                                           ; $727d: $04
	add  b                                           ; $727e: $80
	ld   [bc], a                                     ; $727f: $02
	nop                                              ; $7280: $00
	inc  c                                           ; $7281: $0c
	add  b                                           ; $7282: $80
	ld   e, h                                        ; $7283: $5c
	ld   bc, $747c                                   ; $7284: $01 $7c $74
	add  l                                           ; $7287: $85
	db   $fc                                         ; $7288: $fc
	rlca                                             ; $7289: $07
	ld   a, d                                        ; $728a: $7a
	cp   $3e                                         ; $728b: $fe $3e
	ld   a, [hl]                                     ; $728d: $7e
	ei                                               ; $728e: $fb
	call nz, $3330                                   ; $728f: $c4 $30 $33
	add  b                                           ; $7292: $80
	inc  c                                           ; $7293: $0c
	add  b                                           ; $7294: $80

jr_09d_7295:
	inc  bc                                          ; $7295: $03
	add  b                                           ; $7296: $80
	ld   bc, $0085                                   ; $7297: $01 $85 $00
	add  b                                           ; $729a: $80
	ld   a, a                                        ; $729b: $7f
	sbc  e                                           ; $729c: $9b
	rst  $38                                         ; $729d: $ff
	inc  b                                           ; $729e: $04
	adc  $3f                                         ; $729f: $ce $3f
	rlca                                             ; $72a1: $07
	rrca                                             ; $72a2: $0f
	ld   [bc], a                                     ; $72a3: $02
	add  c                                           ; $72a4: $81
	rlca                                             ; $72a5: $07
	nop                                              ; $72a6: $00
	ld   bc, $0381                                   ; $72a7: $01 $81 $03
	ld   bc, $0100                                   ; $72aa: $01 $00 $01
	add  b                                           ; $72ad: $80
	nop                                              ; $72ae: $00
	inc  b                                           ; $72af: $04
	ld   b, $ff                                      ; $72b0: $06 $ff
	ld   hl, sp-$01                                  ; $72b2: $f8 $ff
	ld   a, [hl]                                     ; $72b4: $7e
	add  c                                           ; $72b5: $81
	rst  $38                                         ; $72b6: $ff
	inc  de                                          ; $72b7: $13
	ccf                                              ; $72b8: $3f
	ld   a, a                                        ; $72b9: $7f
	rra                                              ; $72ba: $1f
	ccf                                              ; $72bb: $3f
	rlca                                             ; $72bc: $07
	rra                                              ; $72bd: $1f
	add  c                                           ; $72be: $81

jr_09d_72bf:
	add  a                                           ; $72bf: $87
	ld   [bc], a                                     ; $72c0: $02
	db   $fc                                         ; $72c1: $fc
	ld   a, h                                        ; $72c2: $7c
	db   $fc                                         ; $72c3: $fc
	jr   c, jr_09d_72bf                              ; $72c4: $38 $f9

	cp   b                                           ; $72c6: $b8
	ei                                               ; $72c7: $fb
	ld   sp, hl                                      ; $72c8: $f9
	ei                                               ; $72c9: $fb
	rst  $30                                         ; $72ca: $f7
	or   $81                                         ; $72cb: $f6 $81
	cp   $08                                         ; $72cd: $fe $08
	db   $fd                                         ; $72cf: $fd
	ld   a, [hl-]                                    ; $72d0: $3a
	ld   e, e                                        ; $72d1: $5b
	inc  de                                          ; $72d2: $13
	or   l                                           ; $72d3: $b5
	dec  h                                           ; $72d4: $25
	xor  d                                           ; $72d5: $aa
	and  d                                           ; $72d6: $a2
	ld   l, d                                        ; $72d7: $6a
	add  b                                           ; $72d8: $80
	ld   e, d                                        ; $72d9: $5a
	nop                                              ; $72da: $00
	ld   [hl], d                                     ; $72db: $72
	add  b                                           ; $72dc: $80
	db   $f4                                         ; $72dd: $f4
	add  c                                           ; $72de: $81
	push af                                          ; $72df: $f5
	inc  b                                           ; $72e0: $04
	ld   b, $0f                                      ; $72e1: $06 $0f
	rlca                                             ; $72e3: $07
	ccf                                              ; $72e4: $3f
	inc  bc                                          ; $72e5: $03
	add  c                                           ; $72e6: $81
	ld   a, a                                        ; $72e7: $7f
	inc  b                                           ; $72e8: $04
	daa                                              ; $72e9: $27
	rst  $38                                         ; $72ea: $ff
	rst  JumpTable                                         ; $72eb: $df
	rst  $38                                         ; $72ec: $ff
	ld   [hl], a                                     ; $72ed: $77
	add  c                                           ; $72ee: $81
	rst  $38                                         ; $72ef: $ff
	ld   bc, $2018                                   ; $72f0: $01 $18 $20
	add  b                                           ; $72f3: $80
	db   $10                                         ; $72f4: $10
	add  b                                           ; $72f5: $80
	sbc  b                                           ; $72f6: $98
	add  b                                           ; $72f7: $80
	adc  h                                           ; $72f8: $8c
	add  b                                           ; $72f9: $80
	adc  a                                           ; $72fa: $8f
	add  b                                           ; $72fb: $80
	jp   $e080                                       ; $72fc: $c3 $80 $e0


	add  b                                           ; $72ff: $80
	ld   hl, sp+$00                                  ; $7300: $f8 $00
	nop                                              ; $7302: $00
	add  h                                           ; $7303: $84
	ld   bc, $0081                                   ; $7304: $01 $81 $00
	add  b                                           ; $7307: $80
	ldh  [$80], a                                    ; $7308: $e0 $80
	nop                                              ; $730a: $00
	add  b                                           ; $730b: $80
	rlca                                             ; $730c: $07
	add  d                                           ; $730d: $82
	ld   a, a                                        ; $730e: $7f
	add  c                                           ; $730f: $81
	ccf                                              ; $7310: $3f
	add  c                                           ; $7311: $81
	cp   a                                           ; $7312: $bf
	add  b                                           ; $7313: $80
	sbc  a                                           ; $7314: $9f
	ld   bc, $5f1f                                   ; $7315: $01 $1f $5f
	add  b                                           ; $7318: $80
	ld   c, a                                        ; $7319: $4f
	nop                                              ; $731a: $00
	rra                                              ; $731b: $1f
	add  e                                           ; $731c: $83
	ldh  [$80], a                                    ; $731d: $e0 $80
	cp   $80                                         ; $731f: $fe $80
	ld   sp, hl                                      ; $7321: $f9
	add  b                                           ; $7322: $80
	ldh  a, [rSB]                                    ; $7323: $f0 $01
	pop  de                                          ; $7325: $d1
	pop  af                                          ; $7326: $f1
	add  b                                           ; $7327: $80
	di                                               ; $7328: $f3
	nop                                              ; $7329: $00
	ldh  [$85], a                                    ; $732a: $e0 $85
	nop                                              ; $732c: $00
	add  b                                           ; $732d: $80
	add  b                                           ; $732e: $80
	add  b                                           ; $732f: $80
	ld   h, b                                        ; $7330: $60
	inc  bc                                          ; $7331: $03
	and  b                                           ; $7332: $a0
	ldh  [$b8], a                                    ; $7333: $e0 $b8
	ld   hl, sp-$80                                  ; $7335: $f8 $80
	ld   b, b                                        ; $7337: $40
	add  b                                           ; $7338: $80
	ret  nz                                          ; $7339: $c0

	add  h                                           ; $733a: $84
	ld   b, b                                        ; $733b: $40
	add  c                                           ; $733c: $81
	ldh  [$81], a                                    ; $733d: $e0 $81
	jr   nz, jr_09d_7341                             ; $733f: $20 $00

jr_09d_7341:
	jp   $3d80                                       ; $7341: $c3 $80 $3d


	add  b                                           ; $7344: $80
	inc  e                                           ; $7345: $1c
	add  c                                           ; $7346: $81
	inc  c                                           ; $7347: $0c
	nop                                              ; $7348: $00
	ld   c, $84                                      ; $7349: $0e $84
	rrca                                             ; $734b: $0f
	inc  bc                                          ; $734c: $03
	adc  a                                           ; $734d: $8f
	call z, $9e7e                                    ; $734e: $cc $7e $9e
	add  c                                           ; $7351: $81
	cp   [hl]                                        ; $7352: $be
	nop                                              ; $7353: $00
	ld   c, [hl]                                     ; $7354: $4e
	add  c                                           ; $7355: $81
	ld   e, [hl]                                     ; $7356: $5e
	ld   bc, $2e26                                   ; $7357: $01 $26 $2e
	add  d                                           ; $735a: $82
	xor  d                                           ; $735b: $aa
	nop                                              ; $735c: $00
	inc  b                                           ; $735d: $04
	adc  [hl]                                        ; $735e: $8e
	nop                                              ; $735f: $00
	add  c                                           ; $7360: $81
	rst  $38                                         ; $7361: $ff
	add  b                                           ; $7362: $80
	inc  bc                                          ; $7363: $03
	add  a                                           ; $7364: $87
	nop                                              ; $7365: $00
	ld   bc, $807f                                   ; $7366: $01 $7f $80
	add  e                                           ; $7369: $83
	rst  $38                                         ; $736a: $ff
	add  b                                           ; $736b: $80
	ld   a, a                                        ; $736c: $7f
	add  b                                           ; $736d: $80
	rrca                                             ; $736e: $0f
	add  b                                           ; $736f: $80
	ld   bc, $0082                                   ; $7370: $01 $82 $00
	adc  d                                           ; $7373: $8a
	rst  $38                                         ; $7374: $ff
	add  b                                           ; $7375: $80
	ld   a, a                                        ; $7376: $7f
	add  b                                           ; $7377: $80
	rra                                              ; $7378: $1f
	ld   a, [bc]                                     ; $7379: $0a
	cp   [hl]                                        ; $737a: $be
	ld   a, a                                        ; $737b: $7f
	ld   e, $3f                                      ; $737c: $1e $3f
	rrca                                             ; $737e: $0f
	rra                                              ; $737f: $1f
	rlca                                             ; $7380: $07
	rrca                                             ; $7381: $0f
	inc  bc                                          ; $7382: $03
	rlca                                             ; $7383: $07
	ld   bc, $0381                                   ; $7384: $01 $81 $03
	inc  b                                           ; $7387: $04
	nop                                              ; $7388: $00
	ld   bc, $ff00                                   ; $7389: $01 $00 $ff
	ld   a, a                                        ; $738c: $7f
	add  c                                           ; $738d: $81
	rst  $38                                         ; $738e: $ff
	ld   [bc], a                                     ; $738f: $02
	ccf                                              ; $7390: $3f
	ld   a, a                                        ; $7391: $7f
	rra                                              ; $7392: $1f
	add  c                                           ; $7393: $81
	ccf                                              ; $7394: $3f
	nop                                              ; $7395: $00
	rrca                                             ; $7396: $0f
	add  c                                           ; $7397: $81
	rra                                              ; $7398: $1f
	ld   bc, $fb01                                   ; $7399: $01 $01 $fb
	add  b                                           ; $739c: $80
	db   $eb                                         ; $739d: $eb
	nop                                              ; $739e: $00
	jp   hl                                          ; $739f: $e9


	add  c                                           ; $73a0: $81
	rst  $28                                         ; $73a1: $ef
	nop                                              ; $73a2: $00
	db   $eb                                         ; $73a3: $eb
	add  c                                           ; $73a4: $81
	rst  $28                                         ; $73a5: $ef
	add  b                                           ; $73a6: $80
	xor  $02                                         ; $73a7: $ee $02
	and  $ee                                         ; $73a9: $e6 $ee
	db   $e3                                         ; $73ab: $e3
	add  c                                           ; $73ac: $81
	rst  $30                                         ; $73ad: $f7
	inc  b                                           ; $73ae: $04
	push af                                          ; $73af: $f5
	di                                               ; $73b0: $f3
	db   $e3                                         ; $73b1: $e3
	ei                                               ; $73b2: $fb
	ld   a, d                                        ; $73b3: $7a
	add  b                                           ; $73b4: $80
	ld   a, e                                        ; $73b5: $7b
	ld   [bc], a                                     ; $73b6: $02
	ld   a, c                                        ; $73b7: $79
	ld   [hl], c                                     ; $73b8: $71
	ld   a, h                                        ; $73b9: $7c
	add  b                                           ; $73ba: $80
	inc  a                                           ; $73bb: $3c
	ld   bc, $fffb                                   ; $73bc: $01 $fb $ff
	add  b                                           ; $73bf: $80
	rst  JumpTable                                         ; $73c0: $df
	add  b                                           ; $73c1: $80
	rst  $20                                         ; $73c2: $e7
	add  b                                           ; $73c3: $80
	ld   hl, sp-$80                                  ; $73c4: $f8 $80
	db   $fc                                         ; $73c6: $fc
	ld   b, $7f                                      ; $73c7: $06 $7f
	rst  $38                                         ; $73c9: $ff
	sbc  a                                           ; $73ca: $9f
	rst  JumpTable                                         ; $73cb: $df
	rst  ToBoot                                         ; $73cc: $c7
	ld   [hl], a                                     ; $73cd: $77
	adc  a                                           ; $73ce: $8f
	add  d                                           ; $73cf: $82
	rst  $38                                         ; $73d0: $ff
	ld   [bc], a                                     ; $73d1: $02
	ld   hl, sp-$07                                  ; $73d2: $f8 $f9
	ld   bc, $0380                                   ; $73d4: $01 $80 $03
	rlca                                             ; $73d7: $07
	rlca                                             ; $73d8: $07
	add  a                                           ; $73d9: $87
	adc  [hl]                                        ; $73da: $8e
	cp   $ec                                         ; $73db: $fe $ec
	db   $fc                                         ; $73dd: $fc
	sub  b                                           ; $73de: $90
	ld   c, a                                        ; $73df: $4f
	add  b                                           ; $73e0: $80
	ld   b, a                                        ; $73e1: $47
	nop                                              ; $73e2: $00
	jp   $e381                                       ; $73e3: $c3 $81 $e3


	add  b                                           ; $73e6: $80
	and  e                                           ; $73e7: $a3
	add  h                                           ; $73e8: $84
	inc  hl                                          ; $73e9: $23
	ld   bc, $1e01                                   ; $73ea: $01 $01 $1e
	add  b                                           ; $73ed: $80
	inc  c                                           ; $73ee: $0c
	add  c                                           ; $73ef: $81
	ld   [$0c01], sp                                 ; $73f0: $08 $01 $0c
	nop                                              ; $73f3: $00
	add  c                                           ; $73f4: $81
	rlca                                             ; $73f5: $07
	nop                                              ; $73f6: $00
	ld   bc, $0381                                   ; $73f7: $01 $81 $03
	ld   bc, $0706                                   ; $73fa: $01 $06 $07
	add  h                                           ; $73fd: $84
	nop                                              ; $73fe: $00
	inc  b                                           ; $73ff: $04
	add  b                                           ; $7400: $80
	nop                                              ; $7401: $00
	ld   a, b                                        ; $7402: $78
	nop                                              ; $7403: $00
	rlca                                             ; $7404: $07
	add  c                                           ; $7405: $81
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7408: $cf
	add  c                                           ; $7409: $81
	cpl                                              ; $740a: $2f
	ld   bc, $1f0f                                   ; $740b: $01 $0f $1f
	add  h                                           ; $740e: $84
	rla                                              ; $740f: $17
	add  b                                           ; $7410: $80
	rlca                                             ; $7411: $07
	inc  b                                           ; $7412: $04
	inc  bc                                          ; $7413: $03
	dec  bc                                          ; $7414: $0b
	ld   b, $87                                      ; $7415: $06 $87
	add  [hl]                                        ; $7417: $86
	add  b                                           ; $7418: $80
	rst  ToBoot                                         ; $7419: $c7
	add  d                                           ; $741a: $82
	rst  $20                                         ; $741b: $e7
	add  h                                           ; $741c: $84
	di                                               ; $741d: $f3
	ld   [bc], a                                     ; $741e: $02
	ei                                               ; $741f: $fb
	and  h                                           ; $7420: $a4
	ld   d, a                                        ; $7421: $57
	add  b                                           ; $7422: $80
	call nc, $b404                                   ; $7423: $d4 $04 $b4
	and  h                                           ; $7426: $a4
	and  b                                           ; $7427: $a0

jr_09d_7428:
	xor  b                                           ; $7428: $a8
	add  sp, -$7f                                    ; $7429: $e8 $81
	ret  z                                           ; $742b: $c8

	nop                                              ; $742c: $00
	ld   b, b                                        ; $742d: $40
	add  c                                           ; $742e: $81
	ld   d, b                                        ; $742f: $50
	ld   bc, $0020                                   ; $7430: $01 $20 $00
	add  b                                           ; $7433: $80
	ret  nz                                          ; $7434: $c0

	add  hl, bc                                      ; $7435: $09
	jr   nc, jr_09d_7428                             ; $7436: $30 $f0

	jr   jr_09d_7476                                 ; $7438: $18 $3c

	db   $10                                         ; $743a: $10
	rra                                              ; $743b: $1f
	scf                                              ; $743c: $37
	inc  sp                                          ; $743d: $33
	ld   [hl], b                                     ; $743e: $70
	ld   h, b                                        ; $743f: $60
	add  b                                           ; $7440: $80
	ret  nz                                          ; $7441: $c0

	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	add  b                                           ; $7444: $80
	add  a                                           ; $7445: $87
	add  d                                           ; $7446: $82
	ld   bc, $8180                                   ; $7447: $01 $80 $81
	add  b                                           ; $744a: $80
	ld   b, c                                        ; $744b: $41
	add  b                                           ; $744c: $80
	ld   hl, $1180                                   ; $744d: $21 $80 $11
	add  b                                           ; $7450: $80
	dec  bc                                          ; $7451: $0b
	dec  b                                           ; $7452: $05
	ldh  [rLCDC], a                                  ; $7453: $e0 $40
	ld   e, h                                        ; $7455: $5c
	ld   b, b                                        ; $7456: $40
	ld   b, e                                        ; $7457: $43
	inc  hl                                          ; $7458: $23
	add  e                                           ; $7459: $83
	ld   [hl+], a                                    ; $745a: $22
	add  d                                           ; $745b: $82
	ld   [de], a                                     ; $745c: $12
	ld   bc, $07f9                                   ; $745d: $01 $f9 $07
	add  b                                           ; $7460: $80
	ld   bc, $0081                                   ; $7461: $01 $81 $00
	add  b                                           ; $7464: $80
	add  b                                           ; $7465: $80
	add  b                                           ; $7466: $80
	ld   b, b                                        ; $7467: $40
	add  b                                           ; $7468: $80
	jr   nz, @-$7e                                   ; $7469: $20 $80

	db   $10                                         ; $746b: $10
	inc  b                                           ; $746c: $04
	ld   [$fff6], sp                                 ; $746d: $08 $f6 $ff
	cp   $ff                                         ; $7470: $fe $ff
	add  b                                           ; $7472: $80
	ld   a, a                                        ; $7473: $7f
	add  b                                           ; $7474: $80
	rra                                              ; $7475: $1f

jr_09d_7476:
	add  b                                           ; $7476: $80
	rrca                                             ; $7477: $0f
	add  b                                           ; $7478: $80
	rlca                                             ; $7479: $07
	add  b                                           ; $747a: $80
	inc  bc                                          ; $747b: $03
	add  b                                           ; $747c: $80
	ld   bc, $f701                                   ; $747d: $01 $01 $f7
	ld   [$8880], sp                                 ; $7480: $08 $80 $88
	add  b                                           ; $7483: $80
	add  h                                           ; $7484: $84
	ld   bc, $c444                                   ; $7485: $01 $44 $c4
	add  b                                           ; $7488: $80
	jp   nz, $a201                                   ; $7489: $c2 $01 $a2

	ldh  [c], a                                      ; $748c: $e2
	add  b                                           ; $748d: $80
	pop  hl                                          ; $748e: $e1
	inc  bc                                          ; $748f: $03
	ret  nc                                          ; $7490: $d0

	ldh  a, [$f1]                                    ; $7491: $f0 $f1
	xor  $80                                         ; $7493: $ee $80
	db   $ec                                         ; $7495: $ec
	add  d                                           ; $7496: $82
	db   $fc                                         ; $7497: $fc
	add  h                                           ; $7498: $84
	ld   hl, sp+$02                                  ; $7499: $f8 $02
	ld   a, b                                        ; $749b: $78
	ld   hl, sp-$44                                  ; $749c: $f8 $bc
	add  c                                           ; $749e: $81
	ld   a, $00                                      ; $749f: $3e $00
	inc  e                                           ; $74a1: $1c
	add  b                                           ; $74a2: $80
	rra                                              ; $74a3: $1f
	nop                                              ; $74a4: $00
	ld   e, $80                                      ; $74a5: $1e $80
	rra                                              ; $74a7: $1f
	add  d                                           ; $74a8: $82
	rrca                                             ; $74a9: $0f
	add  b                                           ; $74aa: $80
	rlca                                             ; $74ab: $07
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	add  b                                           ; $74ae: $80
	inc  e                                           ; $74af: $1c
	add  h                                           ; $74b0: $84
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	ld   bc, $8180                                   ; $74b3: $01 $80 $81
	ld   bc, $c3c1                                   ; $74b6: $01 $c1 $c3
	add  b                                           ; $74b9: $80
	di                                               ; $74ba: $f3
	inc  bc                                          ; $74bb: $03
	call nz, $b0f8                                   ; $74bc: $c4 $f8 $b0
	ld   [hl], b                                     ; $74bf: $70
	add  b                                           ; $74c0: $80
	ldh  [$80], a                                    ; $74c1: $e0 $80
	ret  nz                                          ; $74c3: $c0

	add  b                                           ; $74c4: $80
	pop  bc                                          ; $74c5: $c1
	add  b                                           ; $74c6: $80
	jp   $8282                                       ; $74c7: $c3 $82 $82


	nop                                              ; $74ca: $00
	inc  a                                           ; $74cb: $3c
	add  b                                           ; $74cc: $80
	inc  hl                                          ; $74cd: $23
	nop                                              ; $74ce: $00
	inc  sp                                          ; $74cf: $33
	add  b                                           ; $74d0: $80
	ld   [hl], e                                     ; $74d1: $73
	add  b                                           ; $74d2: $80
	pop  de                                          ; $74d3: $d1
	ld   bc, $8981                                   ; $74d4: $01 $81 $89
	add  d                                           ; $74d7: $82
	add  hl, bc                                      ; $74d8: $09
	inc  b                                           ; $74d9: $04
	nop                                              ; $74da: $00
	inc  b                                           ; $74db: $04
	nop                                              ; $74dc: $00
	rst  $38                                         ; $74dd: $ff
	db   $fd                                         ; $74de: $fd
	add  l                                           ; $74df: $85
	rst  $38                                         ; $74e0: $ff
	nop                                              ; $74e1: $00
	cp   $83                                         ; $74e2: $fe $83
	rst  $38                                         ; $74e4: $ff
	add  e                                           ; $74e5: $83
	nop                                              ; $74e6: $00
	adc  b                                           ; $74e7: $88
	add  b                                           ; $74e8: $80
	ld   bc, $3fc0                                   ; $74e9: $01 $c0 $3f
	add  e                                           ; $74ec: $83
	rst  $38                                         ; $74ed: $ff
	ld   bc, $ffe0                                   ; $74ee: $01 $e0 $ff
	add  h                                           ; $74f1: $84
	ldh  a, [$80]                                    ; $74f2: $f0 $80
	pop  af                                          ; $74f4: $f1
	nop                                              ; $74f5: $00
	ldh  [$83], a                                    ; $74f6: $e0 $83
	rst  $38                                         ; $74f8: $ff
	ld   bc, $ff00                                   ; $74f9: $01 $00 $ff
	add  h                                           ; $74fc: $84
	nop                                              ; $74fd: $00
	add  b                                           ; $74fe: $80
	rst  $38                                         ; $74ff: $ff
	nop                                              ; $7500: $00
	adc  [hl]                                        ; $7501: $8e
	adc  l                                           ; $7502: $8d
	adc  c                                           ; $7503: $89
	ld   bc, $fff8                                   ; $7504: $01 $f8 $ff
	add  h                                           ; $7507: $84
	nop                                              ; $7508: $00
	add  c                                           ; $7509: $81
	rst  $38                                         ; $750a: $ff
	add  c                                           ; $750b: $81
	nop                                              ; $750c: $00
	add  b                                           ; $750d: $80
	rst  $38                                         ; $750e: $ff
	ld   bc, $8971                                   ; $750f: $01 $71 $89
	add  h                                           ; $7512: $84
	add  hl, bc                                      ; $7513: $09
	add  c                                           ; $7514: $81
	ld   sp, hl                                      ; $7515: $f9
	add  c                                           ; $7516: $81
	ld   bc, $ff90                                   ; $7517: $01 $90 $ff
	nop                                              ; $751a: $00
	xor  $8d                                         ; $751b: $ee $8d
	pop  af                                          ; $751d: $f1
	nop                                              ; $751e: $00
	ldh  [rIE], a                                    ; $751f: $e0 $ff
	nop                                              ; $7521: $00
	rst  $38                                         ; $7522: $ff
	nop                                              ; $7523: $00
	rst  $38                                         ; $7524: $ff
	nop                                              ; $7525: $00
	rst  $38                                         ; $7526: $ff
	nop                                              ; $7527: $00
	rst  $38                                         ; $7528: $ff
	nop                                              ; $7529: $00
	rst  $38                                         ; $752a: $ff
	nop                                              ; $752b: $00
	rst  $38                                         ; $752c: $ff
	nop                                              ; $752d: $00
	add  [hl]                                        ; $752e: $86
	nop                                              ; $752f: $00
	ld   e, $01                                      ; $7530: $1e $01
	adc  b                                           ; $7532: $88
	nop                                              ; $7533: $00
	dec  c                                           ; $7534: $0d
	inc  bc                                          ; $7535: $03
	nop                                              ; $7536: $00
	ld   b, $03                                      ; $7537: $06 $03
	inc  c                                           ; $7539: $0c
	dec  b                                           ; $753a: $05
	ld   a, [de]                                     ; $753b: $1a
	dec  bc                                          ; $753c: $0b
	inc  [hl]                                        ; $753d: $34
	rla                                              ; $753e: $17
	dec  d                                           ; $753f: $15
	rla                                              ; $7540: $17
	ld   l, a                                        ; $7541: $6f
	cpl                                              ; $7542: $2f
	add  b                                           ; $7543: $80
	ld   a, [hl+]                                    ; $7544: $2a
	ld   bc, $9616                                   ; $7545: $01 $16 $96
	add  b                                           ; $7548: $80
	sub  h                                           ; $7549: $94
	nop                                              ; $754a: $00
	ld   c, c                                        ; $754b: $49
	add  c                                           ; $754c: $81
	add  hl, bc                                      ; $754d: $09
	add  b                                           ; $754e: $80
	adc  d                                           ; $754f: $8a
	ld   a, [bc]                                     ; $7550: $0a
	add  c                                           ; $7551: $81
	ld   bc, $0121                                   ; $7552: $01 $21 $01
	stop                                             ; $7555: $10 $00
	ld   [$0600], sp                                 ; $7557: $08 $00 $06
	nop                                              ; $755a: $00
	ld   bc, $0091                                   ; $755b: $01 $91 $00
	ld   b, $01                                      ; $755e: $06 $01
	nop                                              ; $7560: $00
	rrca                                             ; $7561: $0f
	ld   bc, $0f3f                                   ; $7562: $01 $3f $0f
	rst  JumpTable                                         ; $7565: $df
	add  b                                           ; $7566: $80
	ccf                                              ; $7567: $3f
	ld   [bc], a                                     ; $7568: $02
	rst  $38                                         ; $7569: $ff
	rst  JumpTable                                         ; $756a: $df
	rst  $38                                         ; $756b: $ff
	add  b                                           ; $756c: $80
	db   $fc                                         ; $756d: $fc
	dec  bc                                          ; $756e: $0b
	db   $d3                                         ; $756f: $d3
	di                                               ; $7570: $f3
	ld   l, a                                        ; $7571: $6f
	set  3, e                                        ; $7572: $cb $db
	sub  l                                           ; $7574: $95
	inc  [hl]                                        ; $7575: $34
	ld   [hl+], a                                    ; $7576: $22
	ld   h, b                                        ; $7577: $60
	ld   d, h                                        ; $7578: $54
	ret  nc                                          ; $7579: $d0

	ld   hl, sp-$80                                  ; $757a: $f8 $80
	pop  af                                          ; $757c: $f1
	dec  b                                           ; $757d: $05
	pop  de                                          ; $757e: $d1
	ret  nc                                          ; $757f: $d0

	pop  hl                                          ; $7580: $e1
	nop                                              ; $7581: $00
	rst  $38                                         ; $7582: $ff
	rra                                              ; $7583: $1f
	add  h                                           ; $7584: $84
	rst  $38                                         ; $7585: $ff
	inc  b                                           ; $7586: $04
	db   $fd                                         ; $7587: $fd
	rst  $38                                         ; $7588: $ff
	db   $fc                                         ; $7589: $fc
	rst  $38                                         ; $758a: $ff
	cp   $81                                         ; $758b: $fe $81
	rst  $38                                         ; $758d: $ff
	add  b                                           ; $758e: $80
	rst  JumpTable                                         ; $758f: $df
	add  b                                           ; $7590: $80
	ccf                                              ; $7591: $3f
	add  b                                           ; $7592: $80
	ld   [hl], a                                     ; $7593: $77
	ld   a, [de]                                     ; $7594: $1a
	rst  $28                                         ; $7595: $ef
	xor  a                                           ; $7596: $af
	adc  a                                           ; $7597: $8f
	ld   c, e                                        ; $7598: $4b
	ld   e, e                                        ; $7599: $5b
	ld   d, e                                        ; $759a: $53
	ld   de, $3694                                   ; $759b: $11 $94 $36
	nop                                              ; $759e: $00
	ldh  a, [$c0]                                    ; $759f: $f0 $c0
	db   $ec                                         ; $75a1: $ec
	ldh  a, [$e3]                                    ; $75a2: $f0 $e3
	db   $fc                                         ; $75a4: $fc
	db   $f4                                         ; $75a5: $f4
	rst  $38                                         ; $75a6: $ff
	cp   $ff                                         ; $75a7: $fe $ff
	ld   h, a                                        ; $75a9: $67
	rst  $38                                         ; $75aa: $ff
	sbc  l                                           ; $75ab: $9d
	rst  $38                                         ; $75ac: $ff
	ld   hl, $ddff                                   ; $75ad: $21 $ff $dd
	add  l                                           ; $75b0: $85
	rst  $38                                         ; $75b1: $ff
	add  b                                           ; $75b2: $80
	rst  $30                                         ; $75b3: $f7
	rrca                                             ; $75b4: $0f

jr_09d_75b5:
	ld   a, e                                        ; $75b5: $7b
	ld   a, [hl-]                                    ; $75b6: $3a
	inc  a                                           ; $75b7: $3c
	dec  d                                           ; $75b8: $15
	sub  a                                           ; $75b9: $97
	nop                                              ; $75ba: $00
	ld   a, b                                        ; $75bb: $78
	nop                                              ; $75bc: $00
	add  [hl]                                        ; $75bd: $86
	ld   e, b                                        ; $75be: $58
	ld   e, c                                        ; $75bf: $59
	ld   h, $e6                                      ; $75c0: $26 $e6
	pop  bc                                          ; $75c2: $c1
	ld   sp, hl                                      ; $75c3: $f9
	ld   hl, sp-$80                                  ; $75c4: $f8 $80
	cp   $89                                         ; $75c6: $fe $89
	rst  $38                                         ; $75c8: $ff
	add  b                                           ; $75c9: $80
	db   $fd                                         ; $75ca: $fd
	add  b                                           ; $75cb: $80
	cp   $03                                         ; $75cc: $fe $03
	db   $f4                                         ; $75ce: $f4
	db   $e4                                         ; $75cf: $e4

jr_09d_75d0:
	ld   c, e                                        ; $75d0: $4b
	ld   e, e                                        ; $75d1: $5b
	add  e                                           ; $75d2: $83
	nop                                              ; $75d3: $00
	inc  b                                           ; $75d4: $04
	add  b                                           ; $75d5: $80
	nop                                              ; $75d6: $00
	ld   b, b                                        ; $75d7: $40
	add  b                                           ; $75d8: $80
	and  b                                           ; $75d9: $a0
	add  b                                           ; $75da: $80
	ret  nz                                          ; $75db: $c0

	add  b                                           ; $75dc: $80
	ld   b, b                                        ; $75dd: $40
	inc  bc                                          ; $75de: $03
	nop                                              ; $75df: $00
	add  a                                           ; $75e0: $87
	add  b                                           ; $75e1: $80
	ret  c                                           ; $75e2: $d8

	add  b                                           ; $75e3: $80
	rst  ToBoot                                         ; $75e4: $c7
	ld   bc, $e0c0                                   ; $75e5: $01 $c0 $e0
	add  b                                           ; $75e8: $80
	db   $ec                                         ; $75e9: $ec
	ld   bc, $f3e3                                   ; $75ea: $01 $e3 $f3
	add  d                                           ; $75ed: $82
	ldh  a, [rTIMA]                                  ; $75ee: $f0 $05
	db   $f4                                         ; $75f0: $f4
	dec  sp                                          ; $75f1: $3b
	nop                                              ; $75f2: $00
	jr   c, jr_09d_75b5                              ; $75f3: $38 $c0

	call nz, $3080                                   ; $75f5: $c4 $80 $30
	add  b                                           ; $75f8: $80
	ld   [$f882], sp                                 ; $75f9: $08 $82 $f8
	ld   bc, $f6f0                                   ; $75fc: $01 $f0 $f6
	add  b                                           ; $75ff: $80
	inc  [hl]                                        ; $7600: $34
	inc  bc                                          ; $7601: $03
	db   $f4                                         ; $7602: $f4
	ldh  a, [$f8]                                    ; $7603: $f0 $f8
	db   $fc                                         ; $7605: $fc
	add  b                                           ; $7606: $80
	inc  b                                           ; $7607: $04
	ld   bc, $3534                                   ; $7608: $01 $34 $35
	add  b                                           ; $760b: $80
	inc  h                                           ; $760c: $24
	add  b                                           ; $760d: $80
	call nz, $e480                                   ; $760e: $c4 $80 $e4
	ld   bc, $8f74                                   ; $7611: $01 $74 $8f
	add  e                                           ; $7614: $83
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	add  b                                           ; $7617: $80
	add  a                                           ; $7618: $87
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	add  b                                           ; $761b: $80
	add  l                                           ; $761c: $85
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	add  b                                           ; $761f: $80
	adc  c                                           ; $7620: $89
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	ret  nz                                          ; $7623: $c0

	adc  c                                           ; $7624: $89
	add  b                                           ; $7625: $80
	nop                                              ; $7626: $00
	and  b                                           ; $7627: $a0
	add  c                                           ; $7628: $81
	ret  nz                                          ; $7629: $c0

	add  d                                           ; $762a: $82
	ld   b, b                                        ; $762b: $40

jr_09d_762c:
	nop                                              ; $762c: $00
	db   $10                                         ; $762d: $10
	add  c                                           ; $762e: $81
	ld   h, b                                        ; $762f: $60

jr_09d_7630:
	add  c                                           ; $7630: $81
	jr   nz, jr_09d_7634                             ; $7631: $20 $01

	and  b                                           ; $7633: $a0

jr_09d_7634:
	adc  b                                           ; $7634: $88
	add  c                                           ; $7635: $81
	or   b                                           ; $7636: $b0
	add  b                                           ; $7637: $80
	sub  b                                           ; $7638: $90
	ld   bc, $d84c                                   ; $7639: $01 $4c $d8
	add  h                                           ; $763c: $84
	ret  z                                           ; $763d: $c8

	ld   bc, $4c4e                                   ; $763e: $01 $4e $4c
	add  h                                           ; $7641: $84
	ld   b, h                                        ; $7642: $44
	add  b                                           ; $7643: $80
	ld   d, b                                        ; $7644: $50
	nop                                              ; $7645: $00
	ld   d, c                                        ; $7646: $51
	add  l                                           ; $7647: $85
	ld   d, b                                        ; $7648: $50
	add  b                                           ; $7649: $80
	inc  l                                           ; $764a: $2c
	add  b                                           ; $764b: $80
	inc  h                                           ; $764c: $24
	add  b                                           ; $764d: $80
	jr   nz, jr_09d_75d0                             ; $764e: $20 $80

	nop                                              ; $7650: $00
	rrca                                             ; $7651: $0f
	jr   nz, jr_09d_7694                             ; $7652: $20 $40

	ld   [hl], c                                     ; $7654: $71
	add  c                                           ; $7655: $81
	add  d                                           ; $7656: $82
	ld   b, d                                        ; $7657: $42
	ld   b, h                                        ; $7658: $44
	inc  b                                           ; $7659: $04
	ld   de, $a2a1                                   ; $765a: $11 $a1 $a2
	ld   b, d                                        ; $765d: $42
	ld   c, h                                        ; $765e: $4c
	adc  h                                           ; $765f: $8c
	add  c                                           ; $7660: $81
	ld   bc, $8080                                   ; $7661: $01 $80 $80
	ld   b, $01                                      ; $7664: $06 $01
	add  b                                           ; $7666: $80
	add  d                                           ; $7667: $82
	add  b                                           ; $7668: $80
	add  h                                           ; $7669: $84
	ret  nz                                          ; $766a: $c0

	ld   sp, $0682                                   ; $766b: $31 $82 $06
	add  e                                           ; $766e: $83
	ld   [bc], a                                     ; $766f: $02
	add  b                                           ; $7670: $80
	db   $10                                         ; $7671: $10
	inc  bc                                          ; $7672: $03
	jr   nz, jr_09d_76a5                             ; $7673: $20 $30

	ld   l, b                                        ; $7675: $68
	ld   h, h                                        ; $7676: $64
	add  b                                           ; $7677: $80
	pop  hl                                          ; $7678: $e1
	inc  bc                                          ; $7679: $03
	ldh  [$e1], a                                    ; $767a: $e0 $e1
	pop  af                                          ; $767c: $f1
	reti                                             ; $767d: $d9


	add  b                                           ; $767e: $80
	db   $d3                                         ; $767f: $d3
	inc  b                                           ; $7680: $04
	pop  af                                          ; $7681: $f1
	or   c                                           ; $7682: $b1
	or   l                                           ; $7683: $b5
	or   b                                           ; $7684: $b0
	rst  $28                                         ; $7685: $ef
	add  c                                           ; $7686: $81
	ld   h, b                                        ; $7687: $60
	ld   [bc], a                                     ; $7688: $02
	inc  b                                           ; $7689: $04
	ret  nz                                          ; $768a: $c0

	ret  nc                                          ; $768b: $d0

	add  a                                           ; $768c: $87
	ret  nz                                          ; $768d: $c0

	inc  b                                           ; $768e: $04
	sbc  $00                                         ; $768f: $de $00
	pop  af                                          ; $7691: $f1
	nop                                              ; $7692: $00
	rrca                                             ; $7693: $0f

jr_09d_7694:
	add  l                                           ; $7694: $85
	nop                                              ; $7695: $00
	ld   c, $80                                      ; $7696: $0e $80
	nop                                              ; $7698: $00
	ldh  [rP1], a                                    ; $7699: $e0 $00
	ld   a, [hl]                                     ; $769b: $7e
	nop                                              ; $769c: $00
	ld   e, $00                                      ; $769d: $1e $00
	rst  $28                                         ; $769f: $ef
	nop                                              ; $76a0: $00
	stop                                             ; $76a1: $10 $00
	stop                                             ; $76a3: $10 $00

jr_09d_76a5:
	inc  b                                           ; $76a5: $04
	add  e                                           ; $76a6: $83
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	jr   nz, jr_09d_762c                             ; $76a9: $20 $81

	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	jr   nz, jr_09d_7630                             ; $76ad: $20 $81

	ret  nz                                          ; $76af: $c0

	nop                                              ; $76b0: $00
	add  $83                                         ; $76b1: $c6 $83
	add  b                                           ; $76b3: $80
	ld   [bc], a                                     ; $76b4: $02
	add  c                                           ; $76b5: $81
	nop                                              ; $76b6: $00
	ld   [bc], a                                     ; $76b7: $02
	add  b                                           ; $76b8: $80
	nop                                              ; $76b9: $00
	dec  bc                                          ; $76ba: $0b
	add  b                                           ; $76bb: $80
	ld   b, [hl]                                     ; $76bc: $46
	ret  nz                                          ; $76bd: $c0

	cp   b                                           ; $76be: $b8
	add  b                                           ; $76bf: $80
	ld   [hl], b                                     ; $76c0: $70
	nop                                              ; $76c1: $00
	ld   e, h                                        ; $76c2: $5c
	nop                                              ; $76c3: $00
	rst  $38                                         ; $76c4: $ff
	nop                                              ; $76c5: $00
	inc  bc                                          ; $76c6: $03
	adc  c                                           ; $76c7: $89
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	ld   [bc], a                                     ; $76ca: $02
	add  e                                           ; $76cb: $83
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	ld   b, $81                                      ; $76ce: $06 $81
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	inc  b                                           ; $76d2: $04
	adc  a                                           ; $76d3: $8f
	nop                                              ; $76d4: $00
	add  b                                           ; $76d5: $80
	inc  bc                                          ; $76d6: $03
	add  b                                           ; $76d7: $80
	rra                                              ; $76d8: $1f
	ld   [bc], a                                     ; $76d9: $02
	rst  $38                                         ; $76da: $ff
	rlca                                             ; $76db: $07
	rst  $38                                         ; $76dc: $ff
	add  h                                           ; $76dd: $84
	inc  bc                                          ; $76de: $03
	add  b                                           ; $76df: $80
	ld   [bc], a                                     ; $76e0: $02
	inc  c                                           ; $76e1: $0c
	nop                                              ; $76e2: $00
	dec  c                                           ; $76e3: $0d
	inc  b                                           ; $76e4: $04
	sbc  e                                           ; $76e5: $9b
	ld   [$0086], sp                                 ; $76e6: $08 $86 $00
	daa                                              ; $76e9: $27
	inc  bc                                          ; $76ea: $03
	ld   c, a                                        ; $76eb: $4f
	rrca                                             ; $76ec: $0f
	cp   a                                           ; $76ed: $bf
	ccf                                              ; $76ee: $3f
	adc  b                                           ; $76ef: $88
	rst  $38                                         ; $76f0: $ff
	nop                                              ; $76f1: $00
	ld   sp, hl                                      ; $76f2: $f9
	add  c                                           ; $76f3: $81
	rst  $38                                         ; $76f4: $ff
	inc  b                                           ; $76f5: $04
	cp   $ff                                         ; $76f6: $fe $ff
	ei                                               ; $76f8: $fb
	db   $fd                                         ; $76f9: $fd
	ld   b, c                                        ; $76fa: $41
	add  b                                           ; $76fb: $80
	ld   b, a                                        ; $76fc: $47
	add  b                                           ; $76fd: $80
	ld   b, e                                        ; $76fe: $43
	inc  b                                           ; $76ff: $04
	ld   b, c                                        ; $7700: $41
	ld   b, a                                        ; $7701: $47
	ld   b, b                                        ; $7702: $40
	ld   b, c                                        ; $7703: $41
	ld   b, b                                        ; $7704: $40
	add  b                                           ; $7705: $80
	ld   d, b                                        ; $7706: $50
	nop                                              ; $7707: $00
	sub  b                                           ; $7708: $90
	add  c                                           ; $7709: $81
	stop                                             ; $770a: $10 $00
	ld   d, h                                        ; $770c: $54
	add  c                                           ; $770d: $81
	db   $10                                         ; $770e: $10
	dec  b                                           ; $770f: $05
	ld   d, $10                                      ; $7710: $16 $10
	inc  de                                          ; $7712: $13
	db   $10                                         ; $7713: $10
	ld   de, $8210                                   ; $7714: $11 $10 $82
	nop                                              ; $7717: $00
	inc  bc                                          ; $7718: $03
	dec  bc                                          ; $7719: $0b
	nop                                              ; $771a: $00
	ld   c, a                                        ; $771b: $4f
	inc  bc                                          ; $771c: $03
	add  b                                           ; $771d: $80
	rrca                                             ; $771e: $0f
	ld   [de], a                                     ; $771f: $12
	sbc  a                                           ; $7720: $9f
	rra                                              ; $7721: $1f
	cp   a                                           ; $7722: $bf
	ccf                                              ; $7723: $3f
	rst  $28                                         ; $7724: $ef
	ld   l, a                                        ; $7725: $6f
	ld   e, l                                        ; $7726: $5d
	ld   e, a                                        ; $7727: $5f
	add  hl, sp                                      ; $7728: $39
	ccf                                              ; $7729: $3f
	ld   [hl], a                                     ; $772a: $77
	ld   a, a                                        ; $772b: $7f
	ld   l, e                                        ; $772c: $6b
	ld   a, a                                        ; $772d: $7f
	rst  JumpTable                                         ; $772e: $df
	rst  $38                                         ; $772f: $ff
	or   a                                           ; $7730: $b7
	db   $fd                                         ; $7731: $fd
	ld   a, l                                        ; $7732: $7d
	add  b                                           ; $7733: $80
	db   $fd                                         ; $7734: $fd
	ld   bc, $e8f8                                   ; $7735: $01 $f8 $e8
	add  b                                           ; $7738: $80
	ld   hl, sp+$03                                  ; $7739: $f8 $03
	ldh  a, [$d0]                                    ; $773b: $f0 $d0
	ldh  a, [$30]                                    ; $773d: $f0 $30
	adc  l                                           ; $773f: $8d
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	ld   bc, $0081                                   ; $7742: $01 $81 $00
	nop                                              ; $7745: $00
	inc  bc                                          ; $7746: $03
	add  c                                           ; $7747: $81
	ld   bc, $0704                                   ; $7748: $01 $04 $07
	inc  bc                                          ; $774b: $03
	ld   [bc], a                                     ; $774c: $02
	inc  bc                                          ; $774d: $03
	rrca                                             ; $774e: $0f
	add  c                                           ; $774f: $81
	rlca                                             ; $7750: $07
	nop                                              ; $7751: $00
	pop  af                                          ; $7752: $f1
	add  h                                           ; $7753: $84
	rst  $38                                         ; $7754: $ff
	ld   bc, $ff07                                   ; $7755: $01 $07 $ff
	add  h                                           ; $7758: $84
	inc  bc                                          ; $7759: $03
	add  b                                           ; $775a: $80
	ld   [bc], a                                     ; $775b: $02
	dec  bc                                          ; $775c: $0b
	nop                                              ; $775d: $00
	add  hl, bc                                      ; $775e: $09
	dec  b                                           ; $775f: $05
	sub  [hl]                                        ; $7760: $96
	ld   a, [bc]                                     ; $7761: $0a
	adc  h                                           ; $7762: $8c
	inc  b                                           ; $7763: $04
	jr   nz, jr_09d_7769                             ; $7764: $20 $03

	ld   b, e                                        ; $7766: $43
	rrca                                             ; $7767: $0f
	adc  a                                           ; $7768: $8f

jr_09d_7769:
	add  b                                           ; $7769: $80
	ccf                                              ; $776a: $3f
	ld   bc, $16ff                                   ; $776b: $01 $ff $16
	add  c                                           ; $776e: $81

jr_09d_776f:
	nop                                              ; $776f: $00
	ld   [$0030], sp                                 ; $7770: $08 $30 $00
	ld   a, [bc]                                     ; $7773: $0a
	nop                                              ; $7774: $00
	ld   h, d                                        ; $7775: $62
	nop                                              ; $7776: $00
	ld   bc, $d404                                   ; $7777: $01 $04 $d4
	add  c                                           ; $777a: $81
	dec  bc                                          ; $777b: $0b
	rlca                                             ; $777c: $07
	xor  d                                           ; $777d: $aa
	rla                                              ; $777e: $17
	ld   d, l                                        ; $777f: $55
	cpl                                              ; $7780: $2f
	and  e                                           ; $7781: $a3
	ld   e, a                                        ; $7782: $5f
	ld   d, e                                        ; $7783: $53
	inc  bc                                          ; $7784: $03
	add  b                                           ; $7785: $80
	db   $fc                                         ; $7786: $fc
	add  h                                           ; $7787: $84
	rst  $38                                         ; $7788: $ff
	ld   [bc], a                                     ; $7789: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $778a: $cf
	nop                                              ; $778b: $00
	db   $10                                         ; $778c: $10
	add  a                                           ; $778d: $87
	nop                                              ; $778e: $00
	inc  b                                           ; $778f: $04
	sbc  $00                                         ; $7790: $de $00
	ld   bc, $0cf0                                   ; $7792: $01 $f0 $0c
	add  c                                           ; $7795: $81
	rst  $38                                         ; $7796: $ff
	inc  b                                           ; $7797: $04
	ei                                               ; $7798: $fb
	rst  $38                                         ; $7799: $ff
	rst  $20                                         ; $779a: $e7
	rst  $38                                         ; $779b: $ff
	rra                                              ; $779c: $1f

jr_09d_779d:
	add  b                                           ; $779d: $80
	ld   a, a                                        ; $779e: $7f
	dec  b                                           ; $779f: $05
	sbc  a                                           ; $77a0: $9f
	ld   e, a                                        ; $77a1: $5f
	pop  hl                                          ; $77a2: $e1
	pop  bc                                          ; $77a3: $c1
	rst  $38                                         ; $77a4: $ff
	ldh  [$83], a                                    ; $77a5: $e0 $83
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	ld   b, b                                        ; $77a9: $40
	add  e                                           ; $77aa: $83
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	ret  nz                                          ; $77ad: $c0

	adc  c                                           ; $77ae: $89
	nop                                              ; $77af: $00
	ld   [$0080], sp                                 ; $77b0: $08 $80 $00
	jr   c, jr_09d_77b5                              ; $77b3: $38 $00

jr_09d_77b5:
	cp   $38                                         ; $77b5: $fe $38
	ld   a, l                                        ; $77b7: $7d
	ld   a, h                                        ; $77b8: $7c
	rst  $38                                         ; $77b9: $ff
	rst  $38                                         ; $77ba: $ff
	nop                                              ; $77bb: $00
	call c, $0700                                    ; $77bc: $dc $00 $07
	ld   [$0307], sp                                 ; $77bf: $08 $07 $03
	add  e                                           ; $77c2: $83
	adc  b                                           ; $77c3: $88
	xor  b                                           ; $77c4: $a8
	jr   z, jr_09d_783f                              ; $77c5: $28 $78

	add  b                                           ; $77c7: $80
	ld   a, l                                        ; $77c8: $7d
	add  b                                           ; $77c9: $80
	dec  a                                           ; $77ca: $3d
	add  b                                           ; $77cb: $80
	inc  a                                           ; $77cc: $3c
	add  b                                           ; $77cd: $80
	inc  l                                           ; $77ce: $2c
	dec  b                                           ; $77cf: $05
	ld   hl, sp-$05                                  ; $77d0: $f8 $fb
	dec  sp                                          ; $77d2: $3b
	add  hl, sp                                      ; $77d3: $39
	ld   a, c                                        ; $77d4: $79
	ld   a, b                                        ; $77d5: $78
	add  b                                           ; $77d6: $80
	ld   hl, sp+$01                                  ; $77d7: $f8 $01
	cp   b                                           ; $77d9: $b8
	cp   c                                           ; $77da: $b9
	add  b                                           ; $77db: $80
	ld   a, c                                        ; $77dc: $79
	ld   bc, $7071                                   ; $77dd: $01 $71 $70
	add  b                                           ; $77e0: $80
	ldh  a, [$80]                                    ; $77e1: $f0 $80
	db   $e4                                         ; $77e3: $e4
	ld   bc, $8988                                   ; $77e4: $01 $88 $89
	add  b                                           ; $77e7: $80
	add  hl, bc                                      ; $77e8: $09
	ld   bc, $1011                                   ; $77e9: $01 $11 $10
	add  b                                           ; $77ec: $80
	jr   nc, jr_09d_776f                             ; $77ed: $30 $80

	jr   z, jr_09d_77ff                              ; $77ef: $28 $0e

	ld   d, b                                        ; $77f1: $50
	ld   d, h                                        ; $77f2: $54
	and  h                                           ; $77f3: $a4
	and  [hl]                                        ; $77f4: $a6
	ld   h, $58                                      ; $77f5: $26 $58
	ld   h, b                                        ; $77f7: $60
	inc  h                                           ; $77f8: $24
	jr   nz, jr_09d_779d                             ; $77f9: $20 $a2

	or   d                                           ; $77fb: $b2
	ldh  a, [$f4]                                    ; $77fc: $f0 $f4
	di                                               ; $77fe: $f3

jr_09d_77ff:
	ei                                               ; $77ff: $fb
	add  b                                           ; $7800: $80
	ld   [hl], a                                     ; $7801: $77
	add  b                                           ; $7802: $80
	ld   h, e                                        ; $7803: $63
	ld   [bc], a                                     ; $7804: $02
	and  c                                           ; $7805: $a1
	jp   $8065                                       ; $7806: $c3 $65 $80


	ld   b, h                                        ; $7809: $44
	ld   [bc], a                                     ; $780a: $02
	add  h                                           ; $780b: $84
	sub  h                                           ; $780c: $94
	rla                                              ; $780d: $17
	add  b                                           ; $780e: $80
	inc  d                                           ; $780f: $14
	add  b                                           ; $7810: $80
	ld   [de], a                                     ; $7811: $12
	add  b                                           ; $7812: $80
	ld   d, $82                                      ; $7813: $16 $82
	jr   jr_09d_7818                                 ; $7815: $18 $01

	ret  nz                                          ; $7817: $c0

jr_09d_7818:
	jp   nz, $e280                                   ; $7818: $c2 $80 $e2

	add  b                                           ; $781b: $80
	ldh  a, [c]                                      ; $781c: $f2
	ld   [bc], a                                     ; $781d: $02
	ld   [hl+], a                                    ; $781e: $22
	inc  hl                                          ; $781f: $23
	inc  bc                                          ; $7820: $03
	add  d                                           ; $7821: $82
	ld   hl, $2580                                   ; $7822: $21 $80 $25
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	add  b                                           ; $7827: $80
	stop                                             ; $7828: $10 $00
	nop                                              ; $782a: $00
	add  b                                           ; $782b: $80
	db   $10                                         ; $782c: $10
	add  h                                           ; $782d: $84
	inc  d                                           ; $782e: $14
	add  d                                           ; $782f: $82
	inc  [hl]                                        ; $7830: $34
	add  d                                           ; $7831: $82
	dec  h                                           ; $7832: $25
	add  d                                           ; $7833: $82
	and  l                                           ; $7834: $a5
	add  [hl]                                        ; $7835: $86
	or   d                                           ; $7836: $b2
	ld   a, [bc]                                     ; $7837: $0a
	ret  nz                                          ; $7838: $c0

	rst  $10                                         ; $7839: $d7
	sub  [hl]                                        ; $783a: $96
	xor  a                                           ; $783b: $af
	add  hl, hl                                      ; $783c: $29
	ld   e, a                                        ; $783d: $5f
	ld   e, e                                        ; $783e: $5b

jr_09d_783f:
	inc  bc                                          ; $783f: $03
	ld   hl, sp-$04                                  ; $7840: $f8 $fc
	ei                                               ; $7842: $fb
	add  e                                           ; $7843: $83
	rst  $38                                         ; $7844: $ff
	nop                                              ; $7845: $00
	call nc, $1481                                   ; $7846: $d4 $81 $14
	nop                                              ; $7849: $00
	ld   d, d                                        ; $784a: $52
	add  e                                           ; $784b: $83
	ld   [de], a                                     ; $784c: $12
	ld   bc, $1393                                   ; $784d: $01 $93 $13
	add  b                                           ; $7850: $80
	ld   de, $9103                                   ; $7851: $11 $03 $91
	ld   de, $b232                                   ; $7854: $11 $32 $b2
	add  b                                           ; $7857: $80
	cp   d                                           ; $7858: $ba
	add  d                                           ; $7859: $82
	cp   c                                           ; $785a: $b9
	add  l                                           ; $785b: $85
	cp   l                                           ; $785c: $bd
	ld   bc, $fbb9                                   ; $785d: $01 $b9 $fb
	add  e                                           ; $7860: $83
	rst  $38                                         ; $7861: $ff
	add  h                                           ; $7862: $84
	db   $fd                                         ; $7863: $fd
	ld   a, [bc]                                     ; $7864: $0a
	ld   sp, hl                                      ; $7865: $f9
	ei                                               ; $7866: $fb
	ld   a, e                                        ; $7867: $7b
	ei                                               ; $7868: $fb
	ld   [hl], d                                     ; $7869: $72
	rst  $38                                         ; $786a: $ff
	rst  $30                                         ; $786b: $f7
	rst  $38                                         ; $786c: $ff
	ld   sp, hl                                      ; $786d: $f9
	rst  $38                                         ; $786e: $ff

jr_09d_786f:
	cp   $81                                         ; $786f: $fe $81
	rst  $38                                         ; $7871: $ff
	add  h                                           ; $7872: $84
	cp   $00                                         ; $7873: $fe $00
	nop                                              ; $7875: $00
	add  b                                           ; $7876: $80
	add  b                                           ; $7877: $80
	add  b                                           ; $7878: $80
	ret  nz                                          ; $7879: $c0

	add  c                                           ; $787a: $81
	ldh  [rSC], a                                    ; $787b: $e0 $02
	jr   nz, jr_09d_786f                             ; $787d: $20 $f0

	ld   b, b                                        ; $787f: $40
	add  b                                           ; $7880: $80
	ldh  a, [rDIV]                                   ; $7881: $f0 $04
	ld   hl, sp-$10                                  ; $7883: $f8 $f0
	ld   hl, sp+$1d                                  ; $7885: $f8 $1d
	sbc  c                                           ; $7887: $99
	add  e                                           ; $7888: $83
	sbc  b                                           ; $7889: $98
	nop                                              ; $788a: $00
	adc  b                                           ; $788b: $88
	add  c                                           ; $788c: $81
	adc  d                                           ; $788d: $8a
	add  b                                           ; $788e: $80
	adc  h                                           ; $788f: $8c
	add  b                                           ; $7890: $80
	add  h                                           ; $7891: $84
	dec  b                                           ; $7892: $05
	sub  h                                           ; $7893: $94
	cp   $fd                                         ; $7894: $fe $fd
	rst  $38                                         ; $7896: $ff
	cp   $fa                                         ; $7897: $fe $fa
	add  d                                           ; $7899: $82
	cp   $01                                         ; $789a: $fe $01
	rst  $38                                         ; $789c: $ff
	db   $fd                                         ; $789d: $fd
	add  e                                           ; $789e: $83
	rst  $38                                         ; $789f: $ff
	nop                                              ; $78a0: $00
	ld   [hl], $83                                   ; $78a1: $36 $83
	ei                                               ; $78a3: $fb
	ld   [bc], a                                     ; $78a4: $02
	db   $db                                         ; $78a5: $db
	ei                                               ; $78a6: $fb
	ldh  [c], a                                      ; $78a7: $e2
	add  b                                           ; $78a8: $80
	ld   [hl], a                                     ; $78a9: $77
	dec  b                                           ; $78aa: $05
	halt                                             ; $78ab: $76
	ld   [hl], a                                     ; $78ac: $77
	xor  b                                           ; $78ad: $a8
	xor  d                                           ; $78ae: $aa
	xor  b                                           ; $78af: $a8
	ld   d, a                                        ; $78b0: $57
	add  c                                           ; $78b1: $81
	cp   $04                                         ; $78b2: $fe $04
	ld   a, [$f5fd]                                  ; $78b4: $fa $fd $f5
	db   $fd                                         ; $78b7: $fd
	dec  c                                           ; $78b8: $0d
	add  b                                           ; $78b9: $80
	db   $fd                                         ; $78ba: $fd
	dec  b                                           ; $78bb: $05
	dec  a                                           ; $78bc: $3d
	db   $fd                                         ; $78bd: $fd
	dec  c                                           ; $78be: $0d
	dec  l                                           ; $78bf: $2d

Call_09d_78c0:
	inc  bc                                          ; $78c0: $03
	sub  e                                           ; $78c1: $93
	add  b                                           ; $78c2: $80
	ld   hl, sp+$00                                  ; $78c3: $f8 $00
	db   $fc                                         ; $78c5: $fc
	add  d                                           ; $78c6: $82
	db   $ec                                         ; $78c7: $ec
	nop                                              ; $78c8: $00
	call z, $ec80                                    ; $78c9: $cc $80 $ec
	ld   bc, $a8e8                                   ; $78cc: $01 $e8 $a8
	add  c                                           ; $78cf: $81
	add  sp, $00                                     ; $78d0: $e8 $00
	halt                                             ; $78d2: $76
	add  h                                           ; $78d3: $84
	sub  [hl]                                        ; $78d4: $96
	nop                                              ; $78d5: $00
	sbc  [hl]                                        ; $78d6: $9e
	add  b                                           ; $78d7: $80
	ld   e, $80                                      ; $78d8: $1e $80
	ld   e, [hl]                                     ; $78da: $5e
	add  d                                           ; $78db: $82
	ld   c, h                                        ; $78dc: $4c
	nop                                              ; $78dd: $00
	rst  $38                                         ; $78de: $ff
	rst  $38                                         ; $78df: $ff
	nop                                              ; $78e0: $00
	rst  $38                                         ; $78e1: $ff
	nop                                              ; $78e2: $00
	rst  $38                                         ; $78e3: $ff
	nop                                              ; $78e4: $00
	rst  $38                                         ; $78e5: $ff
	nop                                              ; $78e6: $00
	rst  $38                                         ; $78e7: $ff
	nop                                              ; $78e8: $00
	cp   b                                           ; $78e9: $b8
	nop                                              ; $78ea: $00
	rst  $30                                         ; $78eb: $f7
	nop                                              ; $78ec: $00
	sub  [hl]                                        ; $78ed: $96
	nop                                              ; $78ee: $00
	add  hl, bc                                      ; $78ef: $09
	add  b                                           ; $78f0: $80
	nop                                              ; $78f1: $00
	ret  nz                                          ; $78f2: $c0

	add  b                                           ; $78f3: $80
	jr   nz, jr_09d_78f6                             ; $78f4: $20 $00

jr_09d_78f6:
	or   b                                           ; $78f6: $b0
	nop                                              ; $78f7: $00
	daa                                              ; $78f8: $27
	ld   bc, $0080                                   ; $78f9: $01 $80 $00
	ld   [bc], a                                     ; $78fc: $02
	inc  hl                                          ; $78fd: $23
	nop                                              ; $78fe: $00
	jr   @-$7d                                       ; $78ff: $18 $81

	nop                                              ; $7901: $00
	dec  b                                           ; $7902: $05
	ret  nz                                          ; $7903: $c0

	nop                                              ; $7904: $00
	jr   jr_09d_7907                                 ; $7905: $18 $00

jr_09d_7907:
	add  [hl]                                        ; $7907: $86
	nop                                              ; $7908: $00
	add  b                                           ; $7909: $80
	ld   [$0e05], sp                                 ; $790a: $08 $05 $0e
	inc  c                                           ; $790d: $0c
	ld   l, $1e                                      ; $790e: $2e $1e
	rra                                              ; $7910: $1f
	inc  e                                           ; $7911: $1c
	add  b                                           ; $7912: $80
	jr   jr_09d_791b                                 ; $7913: $18 $06

	ld   c, h                                        ; $7915: $4c
	jr   nz, jr_09d_7955                             ; $7916: $20 $3d

	inc  c                                           ; $7918: $0c
	or   b                                           ; $7919: $b0
	inc  sp                                          ; $791a: $33

jr_09d_791b:
	db   $fc                                         ; $791b: $fc
	add  c                                           ; $791c: $81
	nop                                              ; $791d: $00
	inc  b                                           ; $791e: $04
	inc  bc                                          ; $791f: $03
	nop                                              ; $7920: $00
	dec  e                                           ; $7921: $1d
	ld   bc, $811e                                   ; $7922: $01 $1e $81
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	inc  bc                                          ; $7927: $03
	add  c                                           ; $7928: $81
	ld   bc, $0701                                   ; $7929: $01 $01 $07
	inc  bc                                          ; $792c: $03
	add  d                                           ; $792d: $82
	ld   [bc], a                                     ; $792e: $02
	ld   [bc], a                                     ; $792f: $02
	inc  c                                           ; $7930: $0c
	inc  b                                           ; $7931: $04
	ld   [bc], a                                     ; $7932: $02
	add  c                                           ; $7933: $81
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	inc  b                                           ; $7936: $04
	add  c                                           ; $7937: $81
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	ld   [$0087], sp                                 ; $793a: $08 $87 $00
	nop                                              ; $793d: $00
	ld   bc, $0091                                   ; $793e: $01 $91 $00
	add  hl, bc                                      ; $7941: $09
	rst  $38                                         ; $7942: $ff
	nop                                              ; $7943: $00
	rst  $38                                         ; $7944: $ff
	nop                                              ; $7945: $00
	inc  bc                                          ; $7946: $03
	nop                                              ; $7947: $00
	rrca                                             ; $7948: $0f
	inc  bc                                          ; $7949: $03
	ccf                                              ; $794a: $3f
	rrca                                             ; $794b: $0f
	add  d                                           ; $794c: $82
	rra                                              ; $794d: $1f
	dec  bc                                          ; $794e: $0b
	inc  bc                                          ; $794f: $03
	rrca                                             ; $7950: $0f
	dec  bc                                          ; $7951: $0b

jr_09d_7952:
	rra                                              ; $7952: $1f
	ld   d, l                                        ; $7953: $55
	ccf                                              ; $7954: $3f

jr_09d_7955:
	sub  e                                           ; $7955: $93
	ld   [hl], a                                     ; $7956: $77
	cp   [hl]                                        ; $7957: $be
	rst  $28                                         ; $7958: $ef
	ld   d, e                                        ; $7959: $53
	ld   e, a                                        ; $795a: $5f
	add  b                                           ; $795b: $80
	rst  JumpTable                                         ; $795c: $df
	nop                                              ; $795d: $00
	and  [hl]                                        ; $795e: $a6
	add  c                                           ; $795f: $81
	cp   a                                           ; $7960: $bf
	dec  b                                           ; $7961: $05
	ld   l, c                                        ; $7962: $69
	ld   a, e                                        ; $7963: $7b
	add  a                                           ; $7964: $87
	rlca                                             ; $7965: $07
	rst  $28                                         ; $7966: $ef
	ld   l, a                                        ; $7967: $6f
	add  b                                           ; $7968: $80
	rst  $28                                         ; $7969: $ef
	add  b                                           ; $796a: $80
	db   $fd                                         ; $796b: $fd
	add  b                                           ; $796c: $80
	ld   sp, hl                                      ; $796d: $f9
	add  b                                           ; $796e: $80
	di                                               ; $796f: $f3
	add  b                                           ; $7970: $80
	or   $80                                         ; $7971: $f6 $80
	db   $e4                                         ; $7973: $e4
	nop                                              ; $7974: $00
	rst  $38                                         ; $7975: $ff
	adc  l                                           ; $7976: $8d
	nop                                              ; $7977: $00
	rlca                                             ; $7978: $07
	add  b                                           ; $7979: $80
	nop                                              ; $797a: $00
	ret  nz                                          ; $797b: $c0

	add  b                                           ; $797c: $80
	ldh  [$c0], a                                    ; $797d: $e0 $c0
	ld   hl, sp-$20                                  ; $797f: $f8 $e0
	add  b                                           ; $7981: $80
	ldh  a, [rTMA]                                   ; $7982: $f0 $06
	inc  a                                           ; $7984: $3c
	cp   b                                           ; $7985: $b8
	ld   [$00c8], sp                                 ; $7986: $08 $c8 $00
	ld   h, b                                        ; $7989: $60
	jr   nz, @-$7e                                   ; $798a: $20 $80

	ld   [hl], b                                     ; $798c: $70
	inc  b                                           ; $798d: $04
	cp   b                                           ; $798e: $b8
	ld   [de], a                                     ; $798f: $12
	cp   h                                           ; $7990: $bc
	ld   c, e                                        ; $7991: $4b
	sbc  $80                                         ; $7992: $de $80
	jp   c, $ed80                                    ; $7994: $da $80 $ed

	ld   bc, $ed6d                                   ; $7997: $01 $6d $ed
	add  b                                           ; $799a: $80
	xor  $01                                         ; $799b: $ee $01
	adc  c                                           ; $799d: $89
	adc  b                                           ; $799e: $88
	add  b                                           ; $799f: $80
	adc  c                                           ; $79a0: $89
	ld   [bc], a                                     ; $79a1: $02
	xor  e                                           ; $79a2: $ab
	adc  d                                           ; $79a3: $8a
	sub  d                                           ; $79a4: $92
	add  c                                           ; $79a5: $81
	add  d                                           ; $79a6: $82
	dec  b                                           ; $79a7: $05
	ld   b, d                                        ; $79a8: $42
	ld   [bc], a                                     ; $79a9: $02
	ld   [de], a                                     ; $79aa: $12
	ld   a, [bc]                                     ; $79ab: $0a
	adc  b                                           ; $79ac: $88
	inc  c                                           ; $79ad: $0c
	add  b                                           ; $79ae: $80
	inc  b                                           ; $79af: $04
	dec  b                                           ; $79b0: $05
	nop                                              ; $79b1: $00
	ld   [bc], a                                     ; $79b2: $02
	jr   nc, jr_09d_79b5                             ; $79b3: $30 $00

jr_09d_79b5:
	inc  bc                                          ; $79b5: $03
	nop                                              ; $79b6: $00
	add  b                                           ; $79b7: $80
	inc  b                                           ; $79b8: $04
	ld   b, $7c                                      ; $79b9: $06 $7c
	db   $10                                         ; $79bb: $10
	dec  a                                           ; $79bc: $3d
	nop                                              ; $79bd: $00
	cp   a                                           ; $79be: $bf
	nop                                              ; $79bf: $00
	and  e                                           ; $79c0: $a3
	add  c                                           ; $79c1: $81
	stop                                             ; $79c2: $10 $00
	jp   nz, Jump_09d_4080                           ; $79c4: $c2 $80 $40

	inc  bc                                          ; $79c7: $03
	ld   c, b                                        ; $79c8: $48
	ld   c, c                                        ; $79c9: $49
	ld   c, b                                        ; $79ca: $48
	ld   c, h                                        ; $79cb: $4c
	add  c                                           ; $79cc: $81
	ld   d, b                                        ; $79cd: $50
	inc  b                                           ; $79ce: $04
	nop                                              ; $79cf: $00
	jr   nz, jr_09d_7952                             ; $79d0: $20 $80

	nop                                              ; $79d2: $00
	inc  c                                           ; $79d3: $0c
	add  c                                           ; $79d4: $81
	nop                                              ; $79d5: $00
	ld   a, [bc]                                     ; $79d6: $0a
	ld   h, b                                        ; $79d7: $60
	nop                                              ; $79d8: $00
	ld   [bc], a                                     ; $79d9: $02
	inc  b                                           ; $79da: $04
	ld   e, h                                        ; $79db: $5c
	inc  c                                           ; $79dc: $0c
	cp   h                                           ; $79dd: $bc

jr_09d_79de:
	nop                                              ; $79de: $00
	rst  $38                                         ; $79df: $ff
	nop                                              ; $79e0: $00
	ld   sp, $0081                                   ; $79e1: $31 $81 $00
	nop                                              ; $79e4: $00
	ld   bc, $0081                                   ; $79e5: $01 $81 $00
	ld   [bc], a                                     ; $79e8: $02
	ld   [bc], a                                     ; $79e9: $02
	nop                                              ; $79ea: $00
	inc  b                                           ; $79eb: $04
	add  b                                           ; $79ec: $80
	nop                                              ; $79ed: $00
	dec  b                                           ; $79ee: $05
	ld   bc, $0105                                   ; $79ef: $01 $05 $01
	nop                                              ; $79f2: $00
	ld   bc, $8102                                   ; $79f3: $01 $02 $81
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	ld   bc, $0091                                   ; $79f8: $01 $91 $00
	dec  c                                           ; $79fb: $0d
	ld   bc, $0600                                   ; $79fc: $01 $00 $06
	nop                                              ; $79ff: $00
	ld   a, [de]                                     ; $7a00: $1a
	ld   [bc], a                                     ; $7a01: $02
	jr   nc, jr_09d_7a14                             ; $7a02: $30 $10

	pop  de                                          ; $7a04: $d1
	ld   de, $8382                                   ; $7a05: $11 $82 $83
	add  c                                           ; $7a08: $81
	adc  e                                           ; $7a09: $8b
	add  b                                           ; $7a0a: $80
	dec  hl                                          ; $7a0b: $2b
	ld   [bc], a                                     ; $7a0c: $02
	ld   a, [hl+]                                    ; $7a0d: $2a
	ld   l, e                                        ; $7a0e: $6b
	ld   l, a                                        ; $7a0f: $6f
	add  c                                           ; $7a10: $81
	ld   l, l                                        ; $7a11: $6d
	add  b                                           ; $7a12: $80
	ld   l, [hl]                                     ; $7a13: $6e

jr_09d_7a14:
	ld   bc, $6e26                                   ; $7a14: $01 $26 $6e
	add  b                                           ; $7a17: $80
	or   a                                           ; $7a18: $b7
	add  b                                           ; $7a19: $80
	nop                                              ; $7a1a: $00
	ld   [bc], a                                     ; $7a1b: $02
	call c, $0c1c                                    ; $7a1c: $dc $1c $0c
	add  c                                           ; $7a1f: $81
	dec  e                                           ; $7a20: $1d
	nop                                              ; $7a21: $00
	add  hl, de                                      ; $7a22: $19
	add  c                                           ; $7a23: $81
	inc  e                                           ; $7a24: $1c
	ld   [bc], a                                     ; $7a25: $02
	dec  e                                           ; $7a26: $1d
	inc  e                                           ; $7a27: $1c
	inc  b                                           ; $7a28: $04
	add  l                                           ; $7a29: $85
	inc  e                                           ; $7a2a: $1c
	nop                                              ; $7a2b: $00
	inc  c                                           ; $7a2c: $0c
	sub  c                                           ; $7a2d: $91
	inc  e                                           ; $7a2e: $1c
	nop                                              ; $7a2f: $00
	ld   [hl+], a                                    ; $7a30: $22
	adc  l                                           ; $7a31: $8d
	nop                                              ; $7a32: $00
	ld   [$0003], sp                                 ; $7a33: $08 $03 $00
	ld   b, $03                                      ; $7a36: $06 $03
	add  hl, bc                                      ; $7a38: $09
	rlca                                             ; $7a39: $07
	scf                                              ; $7a3a: $37
	rrca                                             ; $7a3b: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3c: $cf
	add  b                                           ; $7a3d: $80
	nop                                              ; $7a3e: $00
	add  b                                           ; $7a3f: $80
	rst  $38                                         ; $7a40: $ff
	add  b                                           ; $7a41: $80
	rrca                                             ; $7a42: $0f
	add  b                                           ; $7a43: $80
	rlca                                             ; $7a44: $07
	ld   bc, $e303                                   ; $7a45: $01 $03 $e3
	add  b                                           ; $7a48: $80
	ld   bc, $0081                                   ; $7a49: $01 $81 $00
	ld   c, $3f                                      ; $7a4c: $0e $3f
	nop                                              ; $7a4e: $00
	jr   jr_09d_7a51                                 ; $7a4f: $18 $00

jr_09d_7a51:
	jr   jr_09d_7a53                                 ; $7a51: $18 $00

jr_09d_7a53:
	ccf                                              ; $7a53: $3f
	nop                                              ; $7a54: $00
	ld   b, $00                                      ; $7a55: $06 $00
	ld   a, [bc]                                     ; $7a57: $0a
	nop                                              ; $7a58: $00
	db   $f4                                         ; $7a59: $f4
	nop                                              ; $7a5a: $00
	jr   jr_09d_79de                                 ; $7a5b: $18 $81

	nop                                              ; $7a5d: $00
	add  b                                           ; $7a5e: $80
	jp   nz, $fe80                                   ; $7a5f: $c2 $80 $fe

	ld   bc, $fe7e                                   ; $7a62: $01 $7e $fe
	add  b                                           ; $7a65: $80
	db   $fd                                         ; $7a66: $fd
	ld   [$7dbd], sp                                 ; $7a67: $08 $bd $7d
	db   $db                                         ; $7a6a: $db
	dec  sp                                          ; $7a6b: $3b
	ld   h, h                                        ; $7a6c: $64
	inc  d                                           ; $7a6d: $14
	inc  sp                                          ; $7a6e: $33
	nop                                              ; $7a6f: $00
	inc  e                                           ; $7a70: $1c
	sub  e                                           ; $7a71: $93
	nop                                              ; $7a72: $00
	ld   [$0001], sp                                 ; $7a73: $08 $01 $00
	pop  hl                                          ; $7a76: $e1
	nop                                              ; $7a77: $00
	ldh  a, [rAUD4LEN]                               ; $7a78: $f0 $20
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a7a: $cf
	nop                                              ; $7a7b: $00
	rst  $38                                         ; $7a7c: $ff
	add  e                                           ; $7a7d: $83
	nop                                              ; $7a7e: $00
	ld   de, $00ff                                   ; $7a7f: $11 $ff $00
	add  sp, -$11                                    ; $7a82: $e8 $ef
	rst  ToBoot                                         ; $7a84: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a85: $cf
	cpl                                              ; $7a86: $2f
	rrca                                             ; $7a87: $0f
	rst  ToBoot                                         ; $7a88: $c7
	rrca                                             ; $7a89: $0f
	rla                                              ; $7a8a: $17
	rlca                                             ; $7a8b: $07
	inc  bc                                          ; $7a8c: $03
	rlca                                             ; $7a8d: $07
	add  hl, bc                                      ; $7a8e: $09
	inc  bc                                          ; $7a8f: $03
	nop                                              ; $7a90: $00
	ld   bc, $0280                                   ; $7a91: $01 $80 $02
	nop                                              ; $7a94: $00
	dec  b                                           ; $7a95: $05
	add  c                                           ; $7a96: $81
	ld   bc, $0200                                   ; $7a97: $01 $00 $02
	add  e                                           ; $7a9a: $83
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	inc  bc                                          ; $7a9d: $03
	add  c                                           ; $7a9e: $81
	ld   bc, $8f00                                   ; $7a9f: $01 $00 $8f
	add  c                                           ; $7aa2: $81
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	ld   b, $81                                      ; $7aa5: $06 $81

jr_09d_7aa7:
	inc  b                                           ; $7aa7: $04
	ld   [bc], a                                     ; $7aa8: $02
	dec  b                                           ; $7aa9: $05
	inc  b                                           ; $7aaa: $04
	dec  b                                           ; $7aab: $05
	add  c                                           ; $7aac: $81
	inc  b                                           ; $7aad: $04
	nop                                              ; $7aae: $00
	res  0, c                                        ; $7aaf: $cb $81
	ld   [bc], a                                     ; $7ab1: $02
	ld   bc, $0282                                   ; $7ab2: $01 $82 $02
	add  b                                           ; $7ab5: $80
	inc  bc                                          ; $7ab6: $03
	ld   [bc], a                                     ; $7ab7: $02
	jr   c, jr_09d_7aba                              ; $7ab8: $38 $00

jr_09d_7aba:
	rst  $38                                         ; $7aba: $ff
	add  e                                           ; $7abb: $83
	nop                                              ; $7abc: $00
	ld   [bc], a                                     ; $7abd: $02
	rst  $38                                         ; $7abe: $ff
	nop                                              ; $7abf: $00
	sbc  l                                           ; $7ac0: $9d
	add  c                                           ; $7ac1: $81
	ld   bc, $c100                                   ; $7ac2: $01 $00 $c1
	add  c                                           ; $7ac5: $81
	ld   bc, $8100                                   ; $7ac6: $01 $00 $81
	add  c                                           ; $7ac9: $81
	ld   bc, $0200                                   ; $7aca: $01 $00 $02
	add  c                                           ; $7acd: $81
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	ld   hl, $008e                                   ; $7ad0: $21 $8e $00
	nop                                              ; $7ad3: $00
	rst  $38                                         ; $7ad4: $ff
	add  b                                           ; $7ad5: $80
	ld   a, a                                        ; $7ad6: $7f
	inc  c                                           ; $7ad7: $0c
	cp   a                                           ; $7ad8: $bf
	ccf                                              ; $7ad9: $3f
	ld   e, a                                        ; $7ada: $5f
	rra                                              ; $7adb: $1f
	inc  l                                           ; $7adc: $2c
	inc  c                                           ; $7add: $0c
	stop                                             ; $7ade: $10 $00
	adc  b                                           ; $7ae0: $88
	nop                                              ; $7ae1: $00
	call nz, Call_09d_4300                           ; $7ae2: $c4 $00 $43
	adc  l                                           ; $7ae5: $8d
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	ld   [bc], a                                     ; $7ae8: $02
	add  c                                           ; $7ae9: $81
	db   $fc                                         ; $7aea: $fc
	inc  c                                           ; $7aeb: $0c
	ld   a, [$f4f8]                                  ; $7aec: $fa $f8 $f4
	ldh  a, [rBCPS]                                  ; $7aef: $f0 $68
	ld   h, b                                        ; $7af1: $60
	ld   de, $2300                                   ; $7af2: $11 $00 $23
	nop                                              ; $7af5: $00
	ld   b, [hl]                                     ; $7af6: $46
	nop                                              ; $7af7: $00
	add  h                                           ; $7af8: $84
	adc  l                                           ; $7af9: $8d
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	ld   d, c                                        ; $7afc: $51
	add  c                                           ; $7afd: $81
	jr   nz, jr_09d_7b02                             ; $7afe: $20 $02

	ldh  [$60], a                                    ; $7b00: $e0 $60

jr_09d_7b02:
	ld   d, e                                        ; $7b02: $53
	add  c                                           ; $7b03: $81
	ld   b, b                                        ; $7b04: $40
	ld   b, $41                                      ; $7b05: $06 $41
	ld   b, b                                        ; $7b07: $40
	ld   b, c                                        ; $7b08: $41
	ld   b, b                                        ; $7b09: $40
	add  $c0                                         ; $7b0a: $c6 $c0
	and  b                                           ; $7b0c: $a0
	add  e                                           ; $7b0d: $83
	add  b                                           ; $7b0e: $80
	ld   [bc], a                                     ; $7b0f: $02
	dec  sp                                          ; $7b10: $3b
	nop                                              ; $7b11: $00
	rst  $38                                         ; $7b12: $ff
	add  e                                           ; $7b13: $83
	nop                                              ; $7b14: $00
	inc  bc                                          ; $7b15: $03
	rst  $38                                         ; $7b16: $ff
	nop                                              ; $7b17: $00
	rrca                                             ; $7b18: $0f
	rst  $28                                         ; $7b19: $ef
	add  b                                           ; $7b1a: $80
	rst  $20                                         ; $7b1b: $e7
	add  hl, bc                                      ; $7b1c: $09
	db   $eb                                         ; $7b1d: $eb
	db   $e3                                         ; $7b1e: $e3
	push bc                                          ; $7b1f: $c5
	pop  hl                                          ; $7b20: $e1
	jp   nc, $81c0                                   ; $7b21: $d2 $c0 $81

	ret  nz                                          ; $7b24: $c0

	jr   nz, jr_09d_7aa7                             ; $7b25: $20 $80

	add  b                                           ; $7b27: $80
	nop                                              ; $7b28: $00
	add  b                                           ; $7b29: $80
	add  b                                           ; $7b2a: $80
	nop                                              ; $7b2b: $00
	ld   b, b                                        ; $7b2c: $40
	add  c                                           ; $7b2d: $81
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	add  b                                           ; $7b30: $80
	add  l                                           ; $7b31: $85
	nop                                              ; $7b32: $00
	ld   [bc], a                                     ; $7b33: $02
	add  b                                           ; $7b34: $80
	nop                                              ; $7b35: $00
	ld   l, a                                        ; $7b36: $6f
	add  c                                           ; $7b37: $81
	add  b                                           ; $7b38: $80
	ld   b, $d2                                      ; $7b39: $06 $d2
	nop                                              ; $7b3b: $00
	ld   [$0100], sp                                 ; $7b3c: $08 $00 $01
	nop                                              ; $7b3f: $00
	inc  e                                           ; $7b40: $1c
	add  c                                           ; $7b41: $81
	nop                                              ; $7b42: $00
	inc  b                                           ; $7b43: $04
	ld   [hl], b                                     ; $7b44: $70
	db   $10                                         ; $7b45: $10
	or   b                                           ; $7b46: $b0
	jr   nc, jr_09d_7b7d                             ; $7b47: $30 $34

	add  c                                           ; $7b49: $81
	jr   c, jr_09d_7b60                              ; $7b4a: $38 $14

	ld   a, b                                        ; $7b4c: $78
	jr   @+$20                                       ; $7b4d: $18 $1e

	jr   jr_09d_7ba1                                 ; $7b4f: $18 $50

	nop                                              ; $7b51: $00
	cp   h                                           ; $7b52: $bc
	jr   nc, jr_09d_7b64                             ; $7b53: $30 $0f

	adc  $ff                                         ; $7b55: $ce $ff
	nop                                              ; $7b57: $00
	ld   [hl], b                                     ; $7b58: $70
	ret  nz                                          ; $7b59: $c0

	sbc  b                                           ; $7b5a: $98
	ldh  a, [$64]                                    ; $7b5b: $f0 $64
	add  b                                           ; $7b5d: $80
	ld   [bc], a                                     ; $7b5e: $02
	ld   a, b                                        ; $7b5f: $78

jr_09d_7b60:
	ld   a, c                                        ; $7b60: $79
	add  b                                           ; $7b61: $80
	cp   $80                                         ; $7b62: $fe $80

jr_09d_7b64:
	ldh  [rAUD2ENV], a                               ; $7b64: $e0 $17
	add  b                                           ; $7b66: $80
	sbc  h                                           ; $7b67: $9c
	add  b                                           ; $7b68: $80
	and  d                                           ; $7b69: $a2
	nop                                              ; $7b6a: $00
	ld   de, $2000                                   ; $7b6b: $11 $00 $20
	nop                                              ; $7b6e: $00
	ld   hl, sp+$00                                  ; $7b6f: $f8 $00
	jr   nc, jr_09d_7b73                             ; $7b71: $30 $00

jr_09d_7b73:
	jr   nc, jr_09d_7b75                             ; $7b73: $30 $00

jr_09d_7b75:
	ld   hl, sp+$00                                  ; $7b75: $f8 $00
	pop  bc                                          ; $7b77: $c1
	nop                                              ; $7b78: $00
	and  b                                           ; $7b79: $a0
	nop                                              ; $7b7a: $00
	ld   e, a                                        ; $7b7b: $5f
	nop                                              ; $7b7c: $00

jr_09d_7b7d:
	ld   sp, $0081                                   ; $7b7d: $31 $81 $00
	add  b                                           ; $7b80: $80
	ld   b, c                                        ; $7b81: $41
	add  d                                           ; $7b82: $82
	ld   a, a                                        ; $7b83: $7f
	add  b                                           ; $7b84: $80
	cp   [hl]                                        ; $7b85: $be
	ld   [$dcdd], sp                                 ; $7b86: $08 $dd $dc
	ld   [$c4e8], a                                  ; $7b89: $ea $e8 $c4
	ret  nz                                          ; $7b8c: $c0

	jr   c, jr_09d_7b8f                              ; $7b8d: $38 $00

jr_09d_7b8f:
	ret  nz                                          ; $7b8f: $c0

	adc  a                                           ; $7b90: $8f
	nop                                              ; $7b91: $00
	inc  c                                           ; $7b92: $0c
	ret  nz                                          ; $7b93: $c0

	nop                                              ; $7b94: $00
	jr   nc, jr_09d_7b97                             ; $7b95: $30 $00

jr_09d_7b97:
	inc  c                                           ; $7b97: $0c
	nop                                              ; $7b98: $00
	jp   nz, $00c0                                   ; $7b99: $c2 $c0 $00

	ld   h, b                                        ; $7b9c: $60
	ld   l, c                                        ; $7b9d: $69
	xor  b                                           ; $7b9e: $a8
	and  b                                           ; $7b9f: $a0
	add  b                                           ; $7ba0: $80

jr_09d_7ba1:
	xor  h                                           ; $7ba1: $ac
	add  b                                           ; $7ba2: $80
	xor  l                                           ; $7ba3: $ad
	add  c                                           ; $7ba4: $81
	ld   l, l                                        ; $7ba5: $6d
	inc  c                                           ; $7ba6: $0c
	db   $ec                                         ; $7ba7: $ec
	db   $ed                                         ; $7ba8: $ed
	ldh  [$ec], a                                    ; $7ba9: $e0 $ec
	cp   d                                           ; $7bab: $ba
	jp   c, $0001                                    ; $7bac: $da $01 $00

	halt                                             ; $7baf: $76
	ld   [hl], b                                     ; $7bb0: $70
	jr   nc, jr_09d_7c23                             ; $7bb1: $30 $70

	ld   h, b                                        ; $7bb3: $60
	add  e                                           ; $7bb4: $83
	ld   [hl], b                                     ; $7bb5: $70
	nop                                              ; $7bb6: $00
	db   $10                                         ; $7bb7: $10
	add  a                                           ; $7bb8: $87
	ld   [hl], b                                     ; $7bb9: $70
	nop                                              ; $7bba: $00
	jr   nc, @-$7d                                   ; $7bbb: $30 $81

	ld   [hl], b                                     ; $7bbd: $70
	nop                                              ; $7bbe: $00
	adc  b                                           ; $7bbf: $88
	add  l                                           ; $7bc0: $85
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	add  b                                           ; $7bc3: $80
	add  a                                           ; $7bc4: $87
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	add  b                                           ; $7bc7: $80
	adc  a                                           ; $7bc8: $8f
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	add  b                                           ; $7bcb: $80
	add  c                                           ; $7bcc: $81
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	ret  nz                                          ; $7bcf: $c0

	add  c                                           ; $7bd0: $81
	add  b                                           ; $7bd1: $80
	add  b                                           ; $7bd2: $80
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	ld   b, b                                        ; $7bd5: $40
	add  c                                           ; $7bd6: $81
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	ret  nz                                          ; $7bd9: $c0

	add  l                                           ; $7bda: $85
	add  b                                           ; $7bdb: $80
	add  d                                           ; $7bdc: $82
	nop                                              ; $7bdd: $00
	inc  b                                           ; $7bde: $04
	add  b                                           ; $7bdf: $80
	nop                                              ; $7be0: $00
	cp   a                                           ; $7be1: $bf
	nop                                              ; $7be2: $00
	rst  $38                                         ; $7be3: $ff
	adc  a                                           ; $7be4: $8f
	nop                                              ; $7be5: $00
	ld   b, $0e                                      ; $7be6: $06 $0e
	nop                                              ; $7be8: $00
	rra                                              ; $7be9: $1f
	ld   [bc], a                                     ; $7bea: $02
	db   $ec                                         ; $7beb: $ec
	nop                                              ; $7bec: $00
	rst  $38                                         ; $7bed: $ff
	add  e                                           ; $7bee: $83
	nop                                              ; $7bef: $00
	inc  b                                           ; $7bf0: $04
	ret  c                                           ; $7bf1: $d8

	nop                                              ; $7bf2: $00
	jr   nz, jr_09d_7bf5                             ; $7bf3: $20 $00

jr_09d_7bf5:
	db   $f4                                         ; $7bf5: $f4
	add  c                                           ; $7bf6: $81
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	ld   b, $81                                      ; $7bf9: $06 $81
	inc  b                                           ; $7bfb: $04
	add  hl, bc                                      ; $7bfc: $09
	ldh  a, [rP1]                                    ; $7bfd: $f0 $00
	rst  $30                                         ; $7bff: $f7

Jump_09d_7c00:
	ld   b, $00                                      ; $7c00: $06 $00
	db   $10                                         ; $7c02: $10
	ld   h, $06                                      ; $7c03: $26 $06
	ld   a, a                                        ; $7c05: $7f
	ccf                                              ; $7c06: $3f
	add  b                                           ; $7c07: $80
	ld   [hl], b                                     ; $7c08: $70
	ld   [bc], a                                     ; $7c09: $02
	ld   l, [hl]                                     ; $7c0a: $6e
	ld   l, d                                        ; $7c0b: $6a
	ld   a, e                                        ; $7c0c: $7b
	add  b                                           ; $7c0d: $80
	ld   bc, $0080                                   ; $7c0e: $01 $80 $00
	ld   bc, $7f80                                   ; $7c11: $01 $80 $7f
	add  e                                           ; $7c14: $83
	rst  $38                                         ; $7c15: $ff
	rrca                                             ; $7c16: $0f
	ld   a, a                                        ; $7c17: $7f
	rst  $38                                         ; $7c18: $ff
	ld   a, l                                        ; $7c19: $7d
	ld   a, e                                        ; $7c1a: $7b
	ld   sp, hl                                      ; $7c1b: $f9
	ccf                                              ; $7c1c: $3f
	cp   [hl]                                        ; $7c1d: $be
	rra                                              ; $7c1e: $1f
	cp   [hl]                                        ; $7c1f: $be
	cpl                                              ; $7c20: $2f
	ccf                                              ; $7c21: $3f
	scf                                              ; $7c22: $37

jr_09d_7c23:
	dec  a                                           ; $7c23: $3d
	dec  sp                                          ; $7c24: $3b
	dec  a                                           ; $7c25: $3d
	inc  a                                           ; $7c26: $3c
	add  d                                           ; $7c27: $82
	ccf                                              ; $7c28: $3f
	rlca                                             ; $7c29: $07
	rst  $38                                         ; $7c2a: $ff
	ld   a, a                                        ; $7c2b: $7f
	ccf                                              ; $7c2c: $3f
	rst  $38                                         ; $7c2d: $ff
	rst  JumpTable                                         ; $7c2e: $df
	rst  $38                                         ; $7c2f: $ff
	and  b                                           ; $7c30: $a0
	ld   a, a                                        ; $7c31: $7f
	add  b                                           ; $7c32: $80
	ccf                                              ; $7c33: $3f
	add  b                                           ; $7c34: $80
	ld   a, a                                        ; $7c35: $7f
	rrca                                             ; $7c36: $0f
	ld   a, $ff                                      ; $7c37: $3e $ff
	ld   a, $de                                      ; $7c39: $3e $de
	rra                                              ; $7c3b: $1f
	db   $fc                                         ; $7c3c: $fc
	ld   a, h                                        ; $7c3d: $7c
	ld   hl, sp+$79                                  ; $7c3e: $f8 $79
	ldh  a, [$f4]                                    ; $7c40: $f0 $f4
	db   $e4                                         ; $7c42: $e4
	xor  l                                           ; $7c43: $ad
	call z, $3cbc                                    ; $7c44: $cc $bc $3c
	add  b                                           ; $7c47: $80
	db   $fc                                         ; $7c48: $fc
	ld   [$f4f0], sp                                 ; $7c49: $08 $f0 $f4
	rst  $30                                         ; $7c4c: $f7
	or   $f5                                         ; $7c4d: $f6 $f5
	rst  $30                                         ; $7c4f: $f7
	and  $ef                                         ; $7c50: $e6 $ef
	rrca                                             ; $7c52: $0f
	add  e                                           ; $7c53: $83
	rst  $38                                         ; $7c54: $ff
	rrca                                             ; $7c55: $0f
	ld   a, a                                        ; $7c56: $7f
	rst  $38                                         ; $7c57: $ff
	ld   a, h                                        ; $7c58: $7c
	ld   a, e                                        ; $7c59: $7b
	ei                                               ; $7c5a: $fb
	ccf                                              ; $7c5b: $3f
	cp   h                                           ; $7c5c: $bc
	rra                                              ; $7c5d: $1f
	cp   [hl]                                        ; $7c5e: $be
	cpl                                              ; $7c5f: $2f
	ld   a, $37                                      ; $7c60: $3e $37
	dec  a                                           ; $7c62: $3d
	dec  sp                                          ; $7c63: $3b
	dec  a                                           ; $7c64: $3d
	inc  a                                           ; $7c65: $3c
	add  d                                           ; $7c66: $82
	ccf                                              ; $7c67: $3f
	rlca                                             ; $7c68: $07
	rst  $38                                         ; $7c69: $ff
	ld   a, a                                        ; $7c6a: $7f
	ccf                                              ; $7c6b: $3f
	rst  $38                                         ; $7c6c: $ff
	rst  JumpTable                                         ; $7c6d: $df
	rst  $38                                         ; $7c6e: $ff
	and  b                                           ; $7c6f: $a0
	ld   a, a                                        ; $7c70: $7f
	add  b                                           ; $7c71: $80
	ccf                                              ; $7c72: $3f
	add  b                                           ; $7c73: $80
	ld   a, a                                        ; $7c74: $7f
	rrca                                             ; $7c75: $0f
	ld   a, $ff                                      ; $7c76: $3e $ff
	ld   a, $de                                      ; $7c78: $3e $de
	sbc  a                                           ; $7c7a: $9f
	cp   h                                           ; $7c7b: $bc
	inc  a                                           ; $7c7c: $3c
	ld   hl, sp+$79                                  ; $7c7d: $f8 $79
	ldh  a, [$74]                                    ; $7c7f: $f0 $74
	db   $e4                                         ; $7c81: $e4
	xor  l                                           ; $7c82: $ad
	call z, $3cbc                                    ; $7c83: $cc $bc $3c
	add  b                                           ; $7c86: $80
	db   $fc                                         ; $7c87: $fc
	ld   [$f4f0], sp                                 ; $7c88: $08 $f0 $f4
	rst  $30                                         ; $7c8b: $f7
	or   $f5                                         ; $7c8c: $f6 $f5
	rst  $30                                         ; $7c8e: $f7
	and  $ef                                         ; $7c8f: $e6 $ef
	ldh  a, [rIE]                                    ; $7c91: $f0 $ff
	nop                                              ; $7c93: $00
	rst  $38                                         ; $7c94: $ff
	nop                                              ; $7c95: $00
	rst  $38                                         ; $7c96: $ff
	nop                                              ; $7c97: $00
	rst  $38                                         ; $7c98: $ff
	nop                                              ; $7c99: $00
	rst  $38                                         ; $7c9a: $ff
	nop                                              ; $7c9b: $00
	rst  $38                                         ; $7c9c: $ff
	nop                                              ; $7c9d: $00
	rst  $30                                         ; $7c9e: $f7
	nop                                              ; $7c9f: $00
	add  hl, de                                      ; $7ca0: $19
	ld   bc, $0000                                   ; $7ca1: $01 $00 $00
	add  c                                           ; $7ca4: $81
	rst  $38                                         ; $7ca5: $ff
	add  b                                           ; $7ca6: $80
	cp   $80                                         ; $7ca7: $fe $80
	ld   hl, sp-$80                                  ; $7ca9: $f8 $80
	ret  nz                                          ; $7cab: $c0

	add  c                                           ; $7cac: $81
	nop                                              ; $7cad: $00
	inc  bc                                          ; $7cae: $03
	ldh  [rP1], a                                    ; $7caf: $e0 $00
	cp   $e1                                         ; $7cb1: $fe $e1
	add  d                                           ; $7cb3: $82
	nop                                              ; $7cb4: $00
	add  d                                           ; $7cb5: $82
	ld   bc, $0f04                                   ; $7cb6: $01 $04 $0f
	dec  c                                           ; $7cb9: $0d
	inc  bc                                          ; $7cba: $03
	ld   a, $3f                                      ; $7cbb: $3e $3f
	add  b                                           ; $7cbd: $80
	ld   a, a                                        ; $7cbe: $7f
	ld   [bc], a                                     ; $7cbf: $02
	db   $10                                         ; $7cc0: $10
	rra                                              ; $7cc1: $1f
	ld   c, a                                        ; $7cc2: $4f
	add  b                                           ; $7cc3: $80
	ld   e, [hl]                                     ; $7cc4: $5e
	inc  b                                           ; $7cc5: $04
	ld   [hl], c                                     ; $7cc6: $71
	ld   sp, $aa28                                   ; $7cc7: $31 $28 $aa
	add  d                                           ; $7cca: $82
	add  b                                           ; $7ccb: $80
	ld   h, $80                                      ; $7ccc: $26 $80
	ld   [hl], a                                     ; $7cce: $77
	add  b                                           ; $7ccf: $80
	rst  $38                                         ; $7cd0: $ff
	inc  b                                           ; $7cd1: $04
	cp   $f8                                         ; $7cd2: $fe $f8
	cp   b                                           ; $7cd4: $b8
	cp   [hl]                                        ; $7cd5: $be
	rlca                                             ; $7cd6: $07
	add  b                                           ; $7cd7: $80
	daa                                              ; $7cd8: $27
	add  c                                           ; $7cd9: $81
	ld   [hl], a                                     ; $7cda: $77
	ld   bc, $fe8e                                   ; $7cdb: $01 $8e $fe
	add  b                                           ; $7cde: $80
	ld   sp, hl                                      ; $7cdf: $f9
	add  b                                           ; $7ce0: $80
	rst  $38                                         ; $7ce1: $ff
	add  d                                           ; $7ce2: $82
	ld   bc, $8280                                   ; $7ce3: $01 $80 $82
	add  b                                           ; $7ce6: $80
	add  h                                           ; $7ce7: $84
	add  b                                           ; $7ce8: $80
	sbc  b                                           ; $7ce9: $98
	add  b                                           ; $7cea: $80
	ldh  [$80], a                                    ; $7ceb: $e0 $80
	add  b                                           ; $7ced: $80
	add  b                                           ; $7cee: $80
	ld   b, b                                        ; $7cef: $40
	nop                                              ; $7cf0: $00
	ret  nz                                          ; $7cf1: $c0

	add  e                                           ; $7cf2: $83
	ccf                                              ; $7cf3: $3f
	add  d                                           ; $7cf4: $82
	rra                                              ; $7cf5: $1f
	add  b                                           ; $7cf6: $80
	rrca                                             ; $7cf7: $0f
	add  b                                           ; $7cf8: $80
	rlca                                             ; $7cf9: $07
	add  b                                           ; $7cfa: $80
	inc  bc                                          ; $7cfb: $03
	nop                                              ; $7cfc: $00
	ret  nz                                          ; $7cfd: $c0

	add  c                                           ; $7cfe: $81
	rst  $38                                         ; $7cff: $ff
	inc  b                                           ; $7d00: $04
	rst  JumpTable                                         ; $7d01: $df
	rst  $38                                         ; $7d02: $ff

jr_09d_7d03:
	rst  $20                                         ; $7d03: $e7
	rst  $38                                         ; $7d04: $ff
	ld   hl, sp-$7b                                  ; $7d05: $f8 $85
	rst  $38                                         ; $7d07: $ff
	inc  bc                                          ; $7d08: $03
	jr   jr_09d_7d03                                 ; $7d09: $18 $f8

	sbc  $fe                                         ; $7d0b: $de $fe
	add  b                                           ; $7d0d: $80
	rst  $38                                         ; $7d0e: $ff
	ld   [bc], a                                     ; $7d0f: $02
	cp   a                                           ; $7d10: $bf
	rst  $38                                         ; $7d11: $ff
	ld   a, a                                        ; $7d12: $7f
	add  c                                           ; $7d13: $81
	rst  $38                                         ; $7d14: $ff
	add  b                                           ; $7d15: $80
	db   $fc                                         ; $7d16: $fc
	add  b                                           ; $7d17: $80
	ldh  [$03], a                                    ; $7d18: $e0 $03
	ld   hl, $3701                                   ; $7d1a: $21 $01 $37
	rlca                                             ; $7d1d: $07
	add  b                                           ; $7d1e: $80
	xor  c                                           ; $7d1f: $a9
	add  b                                           ; $7d20: $80
	ret  nz                                          ; $7d21: $c0

	add  d                                           ; $7d22: $82
	rst  $28                                         ; $7d23: $ef
	add  b                                           ; $7d24: $80
	rrca                                             ; $7d25: $0f
	inc  b                                           ; $7d26: $04
	inc  sp                                          ; $7d27: $33
	inc  bc                                          ; $7d28: $03
	ret  nz                                          ; $7d29: $c0

	rst  $38                                         ; $7d2a: $ff
	rst  $28                                         ; $7d2b: $ef
	add  c                                           ; $7d2c: $81
	rst  $38                                         ; $7d2d: $ff
	inc  b                                           ; $7d2e: $04
	rst  $30                                         ; $7d2f: $f7
	rst  $38                                         ; $7d30: $ff
	ei                                               ; $7d31: $fb
	rst  $38                                         ; $7d32: $ff
	db   $fc                                         ; $7d33: $fc
	add  e                                           ; $7d34: $83
	rst  $38                                         ; $7d35: $ff
	nop                                              ; $7d36: $00
	cp   e                                           ; $7d37: $bb
	add  c                                           ; $7d38: $81
	ld   a, h                                        ; $7d39: $7c
	nop                                              ; $7d3a: $00
	db   $10                                         ; $7d3b: $10
	add  c                                           ; $7d3c: $81
	jr   c, @+$03                                    ; $7d3d: $38 $01

	ld   [$8418], sp                                 ; $7d3f: $08 $18 $84
	db   $10                                         ; $7d42: $10
	add  b                                           ; $7d43: $80
	ldh  [$80], a                                    ; $7d44: $e0 $80
	ld   sp, hl                                      ; $7d46: $f9
	add  b                                           ; $7d47: $80
	adc  l                                           ; $7d48: $8d
	add  b                                           ; $7d49: $80
	rst  $38                                         ; $7d4a: $ff
	add  b                                           ; $7d4b: $80
	cp   a                                           ; $7d4c: $bf
	inc  bc                                          ; $7d4d: $03
	ld   a, [de]                                     ; $7d4e: $1a
	ld   e, d                                        ; $7d4f: $5a
	xor  l                                           ; $7d50: $ad
	db   $ed                                         ; $7d51: $ed

jr_09d_7d52:
	add  b                                           ; $7d52: $80
	rst  $38                                         ; $7d53: $ff
	inc  bc                                          ; $7d54: $03
	xor  h                                           ; $7d55: $ac
	db   $ec                                         ; $7d56: $ec
	sub  l                                           ; $7d57: $95
	push de                                          ; $7d58: $d5
	add  b                                           ; $7d59: $80
	ld   h, a                                        ; $7d5a: $67
	add  b                                           ; $7d5b: $80
	inc  e                                           ; $7d5c: $1c
	add  b                                           ; $7d5d: $80
	add  b                                           ; $7d5e: $80
	add  b                                           ; $7d5f: $80
	ldh  [$80], a                                    ; $7d60: $e0 $80
	sbc  a                                           ; $7d62: $9f
	add  b                                           ; $7d63: $80
	sub  a                                           ; $7d64: $97
	inc  l                                           ; $7d65: $2c
	call $beff                                       ; $7d66: $cd $ff $be
	rst  $38                                         ; $7d69: $ff
	ld   l, a                                        ; $7d6a: $6f
	rst  $38                                         ; $7d6b: $ff
	db   $fd                                         ; $7d6c: $fd
	rst  $38                                         ; $7d6d: $ff
	rst  $10                                         ; $7d6e: $d7
	rst  $38                                         ; $7d6f: $ff
	ld   a, [hl-]                                    ; $7d70: $3a
	rst  $38                                         ; $7d71: $ff
	db   $ed                                         ; $7d72: $ed
	rst  $38                                         ; $7d73: $ff
	rst  $28                                         ; $7d74: $ef
	rst  $38                                         ; $7d75: $ff
	ld   e, $fb                                      ; $7d76: $1e $fb
	ld   [hl], e                                     ; $7d78: $73
	db   $fd                                         ; $7d79: $fd
	ld   l, c                                        ; $7d7a: $69
	rst  $38                                         ; $7d7b: $ff
	db   $fc                                         ; $7d7c: $fc
	rst  $38                                         ; $7d7d: $ff
	rst  $30                                         ; $7d7e: $f7
	rst  $38                                         ; $7d7f: $ff
	ei                                               ; $7d80: $fb
	rst  $38                                         ; $7d81: $ff
	ld   a, h                                        ; $7d82: $7c
	rst  $38                                         ; $7d83: $ff
	sbc  l                                           ; $7d84: $9d
	rst  $38                                         ; $7d85: $ff
	inc  h                                           ; $7d86: $24

jr_09d_7d87:
	cp   a                                           ; $7d87: $bf
	sbc  b                                           ; $7d88: $98
	rst  JumpTable                                         ; $7d89: $df

jr_09d_7d8a:
	call $f0ff                                       ; $7d8a: $cd $ff $f0
	rst  $38                                         ; $7d8d: $ff
	inc  a                                           ; $7d8e: $3c
	rst  $38                                         ; $7d8f: $ff
	jp   $fcff                                       ; $7d90: $c3 $ff $fc


	add  b                                           ; $7d93: $80
	rst  $38                                         ; $7d94: $ff
	inc  bc                                          ; $7d95: $03
	db   $fc                                         ; $7d96: $fc
	ld   [bc], a                                     ; $7d97: $02
	rst  $38                                         ; $7d98: $ff
	cp   $8b                                         ; $7d99: $fe $8b
	rst  $38                                         ; $7d9b: $ff
	stop                                             ; $7d9c: $10 $00
	add  b                                           ; $7d9e: $80
	nop                                              ; $7d9f: $00
	ret  nz                                          ; $7da0: $c0

	adc  h                                           ; $7da1: $8c
	ldh  [$cc], a                                    ; $7da2: $e0 $cc
	ldh  a, [$e2]                                    ; $7da4: $f0 $e2
	ld   hl, sp-$0e                                  ; $7da6: $f8 $f2
	db   $fc                                         ; $7da8: $fc
	ld   hl, sp-$02                                  ; $7da9: $f8 $fe
	db   $fc                                         ; $7dab: $fc
	rst  $38                                         ; $7dac: $ff
	ld   bc, $0085                                   ; $7dad: $01 $85 $00
	ld   b, $a0                                      ; $7db0: $06 $a0
	nop                                              ; $7db2: $00
	and  b                                           ; $7db3: $a0
	nop                                              ; $7db4: $00
	sbc  [hl]                                        ; $7db5: $9e
	nop                                              ; $7db6: $00
	sbc  [hl]                                        ; $7db7: $9e
	add  l                                           ; $7db8: $85
	nop                                              ; $7db9: $00
	ld   [bc], a                                     ; $7dba: $02
	push de                                          ; $7dbb: $d5
	nop                                              ; $7dbc: $00
	push de                                          ; $7dbd: $d5
	add  c                                           ; $7dbe: $81
	nop                                              ; $7dbf: $00
	inc  b                                           ; $7dc0: $04
	and  b                                           ; $7dc1: $a0
	nop                                              ; $7dc2: $00
	and  b                                           ; $7dc3: $a0
	nop                                              ; $7dc4: $00
	ccf                                              ; $7dc5: $3f
	add  c                                           ; $7dc6: $81
	ld   b, b                                        ; $7dc7: $40
	nop                                              ; $7dc8: $00
	ld   h, b                                        ; $7dc9: $60
	add  e                                           ; $7dca: $83
	jr   nz, jr_09d_7dcd                             ; $7dcb: $20 $00

jr_09d_7dcd:
	jr   nc, jr_09d_7d52                             ; $7dcd: $30 $83

	stop                                             ; $7dcf: $10 $00
	rra                                              ; $7dd1: $1f
	adc  e                                           ; $7dd2: $8b
	nop                                              ; $7dd3: $00
	add  b                                           ; $7dd4: $80
	ld   bc, $ff80                                   ; $7dd5: $01 $80 $ff
	adc  b                                           ; $7dd8: $88
	nop                                              ; $7dd9: $00
	add  b                                           ; $7dda: $80
	inc  bc                                          ; $7ddb: $03
	add  b                                           ; $7ddc: $80
	rst  $38                                         ; $7ddd: $ff
	adc  b                                           ; $7dde: $88
	nop                                              ; $7ddf: $00
	add  b                                           ; $7de0: $80
	ld   a, a                                        ; $7de1: $7f
	add  c                                           ; $7de2: $81
	rst  $38                                         ; $7de3: $ff
	ld   [bc], a                                     ; $7de4: $02
	cp   $20                                         ; $7de5: $fe $20
	ld   bc, $0080                                   ; $7de7: $01 $80 $00
	nop                                              ; $7dea: $00
	ld   h, b                                        ; $7deb: $60
	add  c                                           ; $7dec: $81
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	ret  nz                                          ; $7def: $c0

	add  c                                           ; $7df0: $81
	nop                                              ; $7df1: $00
	add  b                                           ; $7df2: $80
	ld   b, b                                        ; $7df3: $40
	ld   bc, $e060                                   ; $7df4: $01 $60 $e0
	add  b                                           ; $7df7: $80
	rst  $38                                         ; $7df8: $ff
	add  b                                           ; $7df9: $80
	ld   a, a                                        ; $7dfa: $7f
	add  b                                           ; $7dfb: $80
	rrca                                             ; $7dfc: $0f
	add  [hl]                                        ; $7dfd: $86
	nop                                              ; $7dfe: $00
	inc  b                                           ; $7dff: $04
	ld   bc, $e100                                   ; $7e00: $01 $00 $e1
	db   $10                                         ; $7e03: $10
	jr   nc, jr_09d_7d87                             ; $7e04: $30 $81

	jr   nz, jr_09d_7d8a                             ; $7e06: $20 $82

jr_09d_7e08:
	ld   h, b                                        ; $7e08: $60
	nop                                              ; $7e09: $00
	ldh  [$81], a                                    ; $7e0a: $e0 $81
	ret  nz                                          ; $7e0c: $c0

	ld   [bc], a                                     ; $7e0d: $02
	ld   b, b                                        ; $7e0e: $40
	ret  nz                                          ; $7e0f: $c0

	ld   b, b                                        ; $7e10: $40
	adc  l                                           ; $7e11: $8d
	nop                                              ; $7e12: $00
	ld   bc, $8a75                                   ; $7e13: $01 $75 $8a
	add  b                                           ; $7e16: $80
	ld   a, [bc]                                     ; $7e17: $0a
	add  b                                           ; $7e18: $80
	push bc                                          ; $7e19: $c5
	add  b                                           ; $7e1a: $80
	ld   h, d                                        ; $7e1b: $62
	add  b                                           ; $7e1c: $80
	jp   nc, $ea07                                   ; $7e1d: $d2 $07 $ea

	ld   a, [hl+]                                    ; $7e20: $2a
	push de                                          ; $7e21: $d5
	push af                                          ; $7e22: $f5
	db   $eb                                         ; $7e23: $eb
	ei                                               ; $7e24: $fb
	ld   c, $fe                                      ; $7e25: $0e $fe
	add  b                                           ; $7e27: $80
	cpl                                              ; $7e28: $2f
	add  b                                           ; $7e29: $80
	inc  d                                           ; $7e2a: $14
	ld   [bc], a                                     ; $7e2b: $02
	sub  h                                           ; $7e2c: $94
	sub  a                                           ; $7e2d: $97
	adc  c                                           ; $7e2e: $89
	add  c                                           ; $7e2f: $81
	adc  e                                           ; $7e30: $8b
	add  b                                           ; $7e31: $80
	ld   e, e                                        ; $7e32: $5b
	add  b                                           ; $7e33: $80
	ld   h, e                                        ; $7e34: $63
	dec  bc                                          ; $7e35: $0b
	add  c                                           ; $7e36: $81
	add  b                                           ; $7e37: $80
	ld   a, a                                        ; $7e38: $7f
	ld   d, l                                        ; $7e39: $55
	inc  de                                          ; $7e3a: $13
	add  hl, sp                                      ; $7e3b: $39
	rra                                              ; $7e3c: $1f
	push de                                          ; $7e3d: $d5
	push bc                                          ; $7e3e: $c5
	cpl                                              ; $7e3f: $2f
	inc  hl                                          ; $7e40: $23
	inc  de                                          ; $7e41: $13
	add  b                                           ; $7e42: $80
	rla                                              ; $7e43: $17
	ld   [bc], a                                     ; $7e44: $02
	inc  de                                          ; $7e45: $13
	dec  bc                                          ; $7e46: $0b
	rst  $30                                         ; $7e47: $f7
	add  b                                           ; $7e48: $80
	xor  d                                           ; $7e49: $aa
	add  b                                           ; $7e4a: $80
	ld   d, l                                        ; $7e4b: $55
	add  b                                           ; $7e4c: $80
	cp   $0a                                         ; $7e4d: $fe $0a
	ld   e, l                                        ; $7e4f: $5d
	ld   l, e                                        ; $7e50: $6b
	cp   b                                           ; $7e51: $b8
	ld   [hl], c                                     ; $7e52: $71
	ld   a, b                                        ; $7e53: $78
	ld   hl, sp-$1c                                  ; $7e54: $f8 $e4
	xor  l                                           ; $7e56: $ad
	ret                                              ; $7e57: $c9


	add  b                                           ; $7e58: $80
	ld   a, a                                        ; $7e59: $7f
	add  b                                           ; $7e5a: $80
	rra                                              ; $7e5b: $1f
	add  b                                           ; $7e5c: $80
	rrca                                             ; $7e5d: $0f
	add  b                                           ; $7e5e: $80
	inc  bc                                          ; $7e5f: $03
	ld   [$8101], sp                                 ; $7e60: $08 $01 $81
	ld   bc, $0041                                   ; $7e63: $01 $41 $00
	jr   nz, jr_09d_7e68                             ; $7e66: $20 $00

jr_09d_7e68:
	db   $10                                         ; $7e68: $10
	rrca                                             ; $7e69: $0f
	adc  l                                           ; $7e6a: $8d
	rst  $38                                         ; $7e6b: $ff
	ld   [de], a                                     ; $7e6c: $12
	ld   d, [hl]                                     ; $7e6d: $56
	add  b                                           ; $7e6e: $80
	ld   d, [hl]                                     ; $7e6f: $56
	ret  nz                                          ; $7e70: $c0

	add  b                                           ; $7e71: $80
	ldh  [$c0], a                                    ; $7e72: $e0 $c0
	ldh  a, [$e0]                                    ; $7e74: $f0 $e0
	ld   hl, sp-$10                                  ; $7e76: $f8 $f0
	db   $fc                                         ; $7e78: $fc
	ld   hl, sp-$02                                  ; $7e79: $f8 $fe
	db   $fc                                         ; $7e7b: $fc
	rst  $38                                         ; $7e7c: $ff
	add  hl, hl                                      ; $7e7d: $29
	nop                                              ; $7e7e: $00
	jr   z, jr_09d_7e08                              ; $7e7f: $28 $87

	nop                                              ; $7e81: $00
	dec  b                                           ; $7e82: $05
	adc  d                                           ; $7e83: $8a
	nop                                              ; $7e84: $00
	adc  d                                           ; $7e85: $8a
	nop                                              ; $7e86: $00
	rlca                                             ; $7e87: $07
	ld   [$0c80], sp                                 ; $7e88: $08 $80 $0c
	add  d                                           ; $7e8b: $82
	ld   a, [bc]                                     ; $7e8c: $0a
	add  d                                           ; $7e8d: $82
	add  hl, bc                                      ; $7e8e: $09
	dec  b                                           ; $7e8f: $05
	xor  b                                           ; $7e90: $a8
	ld   [$10a0], sp                                 ; $7e91: $08 $a0 $10
	jr   jr_09d_7e9d                                 ; $7e94: $18 $07

	add  b                                           ; $7e96: $80
	rrca                                             ; $7e97: $0f
	add  d                                           ; $7e98: $82
	rra                                              ; $7e99: $1f
	add  d                                           ; $7e9a: $82
	ccf                                              ; $7e9b: $3f
	nop                                              ; $7e9c: $00

jr_09d_7e9d:
	cp   a                                           ; $7e9d: $bf
	add  c                                           ; $7e9e: $81
	ccf                                              ; $7e9f: $3f
	nop                                              ; $7ea0: $00
	ld   a, a                                        ; $7ea1: $7f
	adc  [hl]                                        ; $7ea2: $8e
	rst  $38                                         ; $7ea3: $ff
	add  d                                           ; $7ea4: $82
	cp   $83                                         ; $7ea5: $fe $83
	db   $fd                                         ; $7ea7: $fd
	add  h                                           ; $7ea8: $84
	ld   sp, hl                                      ; $7ea9: $f9
	ld   bc, $f0f2                                   ; $7eaa: $01 $f2 $f0
	add  b                                           ; $7ead: $80
	ld   hl, sp-$80                                  ; $7eae: $f8 $80
	db   $fc                                         ; $7eb0: $fc
	add  b                                           ; $7eb1: $80
	cp   $86                                         ; $7eb2: $fe $86
	rst  $38                                         ; $7eb4: $ff
	ld   b, $fd                                      ; $7eb5: $06 $fd
	inc  bc                                          ; $7eb7: $03
	dec  c                                           ; $7eb8: $0d
	rrca                                             ; $7eb9: $0f
	dec  bc                                          ; $7eba: $0b
	rrca                                             ; $7ebb: $0f
	ld   d, $81                                      ; $7ebc: $16 $81
	rra                                              ; $7ebe: $1f
	ld   [bc], a                                     ; $7ebf: $02
	cpl                                              ; $7ec0: $2f
	ccf                                              ; $7ec1: $3f
	dec  a                                           ; $7ec2: $3d
	add  c                                           ; $7ec3: $81
	ld   a, $00                                      ; $7ec4: $3e $00
	ldh  [c], a                                      ; $7ec6: $e2
	add  c                                           ; $7ec7: $81
	add  b                                           ; $7ec8: $80
	ld   b, $9e                                      ; $7ec9: $06 $9e
	add  b                                           ; $7ecb: $80
	sbc  [hl]                                        ; $7ecc: $9e
	nop                                              ; $7ecd: $00
	ld   a, [bc]                                     ; $7ece: $0a
	nop                                              ; $7ecf: $00
	ld   a, [bc]                                     ; $7ed0: $0a
	add  e                                           ; $7ed1: $83
	nop                                              ; $7ed2: $00

jr_09d_7ed3:
	ld   a, [bc]                                     ; $7ed3: $0a
	and  b                                           ; $7ed4: $a0
	nop                                              ; $7ed5: $00
	and  b                                           ; $7ed6: $a0
	nop                                              ; $7ed7: $00
	ret  nc                                          ; $7ed8: $d0

	nop                                              ; $7ed9: $00
	ret  nc                                          ; $7eda: $d0

	nop                                              ; $7edb: $00
	ld   a, [$fa00]                                  ; $7edc: $fa $00 $fa
	add  e                                           ; $7edf: $83
	nop                                              ; $7ee0: $00
	ld   b, $fa                                      ; $7ee1: $06 $fa
	db   $fd                                         ; $7ee3: $fd
	ld   a, [$fdfe]                                  ; $7ee4: $fa $fe $fd
	rst  $38                                         ; $7ee7: $ff
	cp   $87                                         ; $7ee8: $fe $87
	rst  $38                                         ; $7eea: $ff
	ld   bc, $1fe1                                   ; $7eeb: $01 $e1 $1f
	add  b                                           ; $7eee: $80
	ld   h, e                                        ; $7eef: $63
	add  b                                           ; $7ef0: $80
	add  e                                           ; $7ef1: $83
	ld   [bc], a                                     ; $7ef2: $02
	add  l                                           ; $7ef3: $85
	add  a                                           ; $7ef4: $87
	rst  ToBoot                                         ; $7ef5: $c7
	add  l                                           ; $7ef6: $85
	ld   b, a                                        ; $7ef7: $47
	nop                                              ; $7ef8: $00
	add  b                                           ; $7ef9: $80
	add  b                                           ; $7efa: $80
	ld   a, [bc]                                     ; $7efb: $0a
	ld   bc, FarGetAddrBank                                   ; $7efc: $01 $09 $0b
	add  b                                           ; $7eff: $80
	inc  b                                           ; $7f00: $04
	add  b                                           ; $7f01: $80
	dec  b                                           ; $7f02: $05
	add  b                                           ; $7f03: $80
	inc  b                                           ; $7f04: $04
	add  e                                           ; $7f05: $83
	dec  b                                           ; $7f06: $05
	nop                                              ; $7f07: $00
	ei                                               ; $7f08: $fb
	add  b                                           ; $7f09: $80
	cp   $80                                         ; $7f0a: $fe $80
	ld   e, a                                        ; $7f0c: $5f
	add  b                                           ; $7f0d: $80
	cpl                                              ; $7f0e: $2f

jr_09d_7f0f:
	add  b                                           ; $7f0f: $80
	ld   b, b                                        ; $7f10: $40
	add  b                                           ; $7f11: $80
	add  d                                           ; $7f12: $82
	add  b                                           ; $7f13: $80
	ldh  a, [$80]                                    ; $7f14: $f0 $80
	add  b                                           ; $7f16: $80
	ld   b, $fc                                      ; $7f17: $06 $fc
	inc  c                                           ; $7f19: $0c
	ld   [$0400], sp                                 ; $7f1a: $08 $00 $04
	nop                                              ; $7f1d: $00
	inc  bc                                          ; $7f1e: $03
	adc  b                                           ; $7f1f: $88
	nop                                              ; $7f20: $00
	ld   bc, $7f80                                   ; $7f21: $01 $80 $7f
	add  b                                           ; $7f24: $80
	ccf                                              ; $7f25: $3f
	add  b                                           ; $7f26: $80
	rra                                              ; $7f27: $1f
	ld   a, [bc]                                     ; $7f28: $0a
	rlca                                             ; $7f29: $07
	add  a                                           ; $7f2a: $87
	inc  bc                                          ; $7f2b: $03
	ld   h, e                                        ; $7f2c: $63
	ld   bc, $0019                                   ; $7f2d: $01 $19 $00
	ld   b, $00                                      ; $7f30: $06 $00
	ld   bc, $8b00                                   ; $7f32: $01 $00 $8b
	rst  $38                                         ; $7f35: $ff
	nop                                              ; $7f36: $00
	ld   a, a                                        ; $7f37: $7f
	add  b                                           ; $7f38: $80
	rst  $38                                         ; $7f39: $ff
	rrca                                             ; $7f3a: $0f
	add  b                                           ; $7f3b: $80
	ld   b, b                                        ; $7f3c: $40
	ret  nz                                          ; $7f3d: $c0

	and  b                                           ; $7f3e: $a0
	ldh  [$d0], a                                    ; $7f3f: $e0 $d0
	ldh  a, [$e8]                                    ; $7f41: $f0 $e8
	ld   hl, sp-$0c                                  ; $7f43: $f8 $f4
	db   $fc                                         ; $7f45: $fc
	ld   a, [$fdfe]                                  ; $7f46: $fa $fe $fd
	rst  $38                                         ; $7f49: $ff
	pop  hl                                          ; $7f4a: $e1
	add  l                                           ; $7f4b: $85
	stop                                             ; $7f4c: $10 $00
	jr   nc, jr_09d_7ed3                             ; $7f4e: $30 $83

	jr   nz, jr_09d_7f53                             ; $7f50: $20 $01

	ld   h, b                                        ; $7f52: $60

jr_09d_7f53:
	ld   b, b                                        ; $7f53: $40
	add  e                                           ; $7f54: $83
	ccf                                              ; $7f55: $3f
	add  h                                           ; $7f56: $84
	rra                                              ; $7f57: $1f
	add  h                                           ; $7f58: $84
	rrca                                             ; $7f59: $0f
	adc  l                                           ; $7f5a: $8d
	rst  $38                                         ; $7f5b: $ff
	nop                                              ; $7f5c: $00
	ei                                               ; $7f5d: $fb
	adc  l                                           ; $7f5e: $8d
	ld   sp, hl                                      ; $7f5f: $f9
	nop                                              ; $7f60: $00
	db   $fd                                         ; $7f61: $fd
	adc  l                                           ; $7f62: $8d
	rst  $38                                         ; $7f63: $ff
	inc  b                                           ; $7f64: $04
	call c, Call_09d_5e3e                            ; $7f65: $dc $3e $5e
	ld   a, [hl]                                     ; $7f68: $7e
	ld   a, d                                        ; $7f69: $7a
	adc  c                                           ; $7f6a: $89
	ld   a, h                                        ; $7f6b: $7c
	nop                                              ; $7f6c: $00
	call nz, $0085                                   ; $7f6d: $c4 $85 $00
	ld   b, $80                                      ; $7f70: $06 $80
	nop                                              ; $7f72: $00
	add  b                                           ; $7f73: $80
	nop                                              ; $7f74: $00
	xor  b                                           ; $7f75: $a8
	nop                                              ; $7f76: $00
	xor  b                                           ; $7f77: $a8
	adc  a                                           ; $7f78: $8f
	nop                                              ; $7f79: $00
	add  b                                           ; $7f7a: $80
	cp   $80                                         ; $7f7b: $fe $80
	xor  $80                                         ; $7f7d: $ee $80
	ld   c, $0a                                      ; $7f7f: $0e $0a
	ld   e, $9f                                      ; $7f81: $1e $9f
	sbc  h                                           ; $7f83: $9c
	sbc  [hl]                                        ; $7f84: $9e
	sbc  b                                           ; $7f85: $98
	sbc  h                                           ; $7f86: $9c
	nop                                              ; $7f87: $00
	ld   e, b                                        ; $7f88: $58
	nop                                              ; $7f89: $00
	jr   nz, jr_09d_7f8c                             ; $7f8a: $20 $00

jr_09d_7f8c:
	add  b                                           ; $7f8c: $80
	jr   c, jr_09d_7f0f                              ; $7f8d: $38 $80

	ld   a, b                                        ; $7f8f: $78
	add  b                                           ; $7f90: $80
	ld   a, h                                        ; $7f91: $7c
	add  c                                           ; $7f92: $81
	db   $fc                                         ; $7f93: $fc
	ld   [bc], a                                     ; $7f94: $02
	ldh  a, [c]                                      ; $7f95: $f2
	cp   $ef                                         ; $7f96: $fe $ef
	add  c                                           ; $7f98: $81
	rst  $38                                         ; $7f99: $ff
	nop                                              ; $7f9a: $00
	ld   [hl+], a                                    ; $7f9b: $22
	add  b                                           ; $7f9c: $80
	cp   [hl]                                        ; $7f9d: $be
	nop                                              ; $7f9e: $00
	ld   a, $86                                      ; $7f9f: $3e $86
	ld   a, [hl]                                     ; $7fa1: $7e
	nop                                              ; $7fa2: $00
	ld   a, b                                        ; $7fa3: $78
	add  c                                           ; $7fa4: $81
	db   $fc                                         ; $7fa5: $fc
	ld   bc, $fd85                                   ; $7fa6: $01 $85 $fd
	add  b                                           ; $7fa9: $80
	ld   a, a                                        ; $7faa: $7f
	add  b                                           ; $7fab: $80
	add  e                                           ; $7fac: $83
	dec  b                                           ; $7fad: $05
	ld   b, b                                        ; $7fae: $40
	halt                                             ; $7faf: $76
	ld   [hl], $3f                                   ; $7fb0: $36 $3f
	ldh  [$df], a                                    ; $7fb2: $e0 $df
	add  b                                           ; $7fb4: $80
	rst  ToBoot                                         ; $7fb5: $c7
	add  b                                           ; $7fb6: $80
	add  hl, de                                      ; $7fb7: $19
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	add  e                                           ; $7fba: $83
	rst  $38                                         ; $7fbb: $ff
	ld   bc, $ffe0                                   ; $7fbc: $01 $e0 $ff
	add  h                                           ; $7fbf: $84
	ldh  a, [$80]                                    ; $7fc0: $f0 $80
	pop  af                                          ; $7fc2: $f1
	nop                                              ; $7fc3: $00
	ldh  [$83], a                                    ; $7fc4: $e0 $83
	rst  $38                                         ; $7fc6: $ff
	ld   bc, $ff00                                   ; $7fc7: $01 $00 $ff
	add  h                                           ; $7fca: $84
	nop                                              ; $7fcb: $00
	add  b                                           ; $7fcc: $80
	rst  $38                                         ; $7fcd: $ff
	nop                                              ; $7fce: $00
	adc  [hl]                                        ; $7fcf: $8e
	adc  l                                           ; $7fd0: $8d
	adc  c                                           ; $7fd1: $89
	ld   bc, $fff8                                   ; $7fd2: $01 $f8 $ff
	add  h                                           ; $7fd5: $84
	nop                                              ; $7fd6: $00
	add  c                                           ; $7fd7: $81
	rst  $38                                         ; $7fd8: $ff
	add  c                                           ; $7fd9: $81
	nop                                              ; $7fda: $00
	add  b                                           ; $7fdb: $80
	rst  $38                                         ; $7fdc: $ff
	ld   bc, $8971                                   ; $7fdd: $01 $71 $89
	add  h                                           ; $7fe0: $84
	add  hl, bc                                      ; $7fe1: $09
	add  c                                           ; $7fe2: $81
	ld   sp, hl                                      ; $7fe3: $f9
	add  c                                           ; $7fe4: $81
	ld   bc, $ff90                                   ; $7fe5: $01 $90 $ff
	nop                                              ; $7fe8: $00
	xor  $8d                                         ; $7fe9: $ee $8d
	pop  af                                          ; $7feb: $f1
	nop                                              ; $7fec: $00
	ldh  [rIE], a                                    ; $7fed: $e0 $ff
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
	add  [hl]                                        ; $7ffc: $86
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
