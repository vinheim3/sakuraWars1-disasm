; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

	ld   c, [hl]                                     ; $4000: $4e
	ld   bc, $ff8c                                   ; $4001: $01 $8c $ff
	ld   [bc], a                                     ; $4004: $02
	nop                                              ; $4005: $00
	rst  $38                                         ; $4006: $ff
	nop                                              ; $4007: $00
	adc  e                                           ; $4008: $8b
	rst  $38                                         ; $4009: $ff
	ld   [bc], a                                     ; $400a: $02
	nop                                              ; $400b: $00
	rst  $38                                         ; $400c: $ff
	nop                                              ; $400d: $00
	adc  e                                           ; $400e: $8b
	rst  $38                                         ; $400f: $ff
	ld   [bc], a                                     ; $4010: $02
	nop                                              ; $4011: $00
	rst  $38                                         ; $4012: $ff
	nop                                              ; $4013: $00
	adc  e                                           ; $4014: $8b
	rst  $38                                         ; $4015: $ff
	ld   [bc], a                                     ; $4016: $02
	nop                                              ; $4017: $00
	rst  $38                                         ; $4018: $ff
	nop                                              ; $4019: $00
	adc  e                                           ; $401a: $8b
	rst  $38                                         ; $401b: $ff
	ld   [bc], a                                     ; $401c: $02
	nop                                              ; $401d: $00
	rst  $38                                         ; $401e: $ff
	nop                                              ; $401f: $00
	add  c                                           ; $4020: $81
	rst  $38                                         ; $4021: $ff
	inc  c                                           ; $4022: $0c
	ld   sp, hl                                      ; $4023: $f9
	rst  $38                                         ; $4024: $ff
	add  [hl]                                        ; $4025: $86
	rst  $38                                         ; $4026: $ff
	add  [hl]                                        ; $4027: $86
	rst  $38                                         ; $4028: $ff
	add  $ff                                         ; $4029: $c6 $ff
	add  $ff                                         ; $402b: $c6 $ff
	ld   b, $ff                                      ; $402d: $06 $ff
	nop                                              ; $402f: $00
	add  c                                           ; $4030: $81
	rst  $38                                         ; $4031: $ff
	inc  c                                           ; $4032: $0c
	db   $fc                                         ; $4033: $fc
	rst  $38                                         ; $4034: $ff
	rra                                              ; $4035: $1f
	rst  $38                                         ; $4036: $ff
	rra                                              ; $4037: $1f
	rst  $38                                         ; $4038: $ff
	ld   a, [hl-]                                    ; $4039: $3a
	rst  $38                                         ; $403a: $ff
	jr   c, @+$01                                    ; $403b: $38 $ff

	ld   bc, $00ff                                   ; $403d: $01 $ff $00
	add  c                                           ; $4040: $81
	rst  $38                                         ; $4041: $ff
	ld   [$ff30], sp                                 ; $4042: $08 $30 $ff
	inc  a                                           ; $4045: $3c
	rst  $38                                         ; $4046: $ff
	inc  c                                           ; $4047: $0c
	rst  $38                                         ; $4048: $ff
	add  $ff                                         ; $4049: $c6 $ff
	add  $81                                         ; $404b: $c6 $81
	rst  $38                                         ; $404d: $ff
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	add  c                                           ; $4050: $81
	rst  $38                                         ; $4051: $ff
	nop                                              ; $4052: $00
	di                                               ; $4053: $f3
	add  c                                           ; $4054: $81
	rst  $38                                         ; $4055: $ff
	ld   [$ff7c], sp                                 ; $4056: $08 $7c $ff
	ld   l, l                                        ; $4059: $6d
	rst  $38                                         ; $405a: $ff
	rst  $10                                         ; $405b: $d7
	rst  $38                                         ; $405c: $ff
	dec  [hl]                                        ; $405d: $35
	rst  $38                                         ; $405e: $ff
	nop                                              ; $405f: $00
	add  l                                           ; $4060: $85
	rst  $38                                         ; $4061: $ff
	ld   [bc], a                                     ; $4062: $02
	inc  bc                                          ; $4063: $03
	rst  $38                                         ; $4064: $ff
	ld   d, e                                        ; $4065: $53
	add  c                                           ; $4066: $81
	rst  $38                                         ; $4067: $ff
	ld   [bc], a                                     ; $4068: $02
	ld   d, b                                        ; $4069: $50
	rst  $38                                         ; $406a: $ff
	nop                                              ; $406b: $00
	add  e                                           ; $406c: $83
	rst  $38                                         ; $406d: $ff
	nop                                              ; $406e: $00
	ccf                                              ; $406f: $3f
	add  l                                           ; $4070: $85
	rst  $38                                         ; $4071: $ff
	ld   [bc], a                                     ; $4072: $02
	ret  nz                                          ; $4073: $c0

	rst  $38                                         ; $4074: $ff
	nop                                              ; $4075: $00
	adc  e                                           ; $4076: $8b
	rst  $38                                         ; $4077: $ff
	ld   [bc], a                                     ; $4078: $02
	nop                                              ; $4079: $00
	rst  $38                                         ; $407a: $ff
	nop                                              ; $407b: $00
	adc  e                                           ; $407c: $8b
	rst  $38                                         ; $407d: $ff
	ld   [bc], a                                     ; $407e: $02
	nop                                              ; $407f: $00
	rst  $38                                         ; $4080: $ff
	nop                                              ; $4081: $00
	adc  e                                           ; $4082: $8b
	rst  $38                                         ; $4083: $ff
	ld   [bc], a                                     ; $4084: $02
	nop                                              ; $4085: $00
	rst  $38                                         ; $4086: $ff
	nop                                              ; $4087: $00
	adc  e                                           ; $4088: $8b
	rst  $38                                         ; $4089: $ff
	ld   [bc], a                                     ; $408a: $02
	nop                                              ; $408b: $00
	rst  $38                                         ; $408c: $ff
	nop                                              ; $408d: $00
	adc  e                                           ; $408e: $8b
	rst  $38                                         ; $408f: $ff
	ld   [bc], a                                     ; $4090: $02
	nop                                              ; $4091: $00
	rst  $38                                         ; $4092: $ff
	nop                                              ; $4093: $00
	adc  h                                           ; $4094: $8c
	rst  $38                                         ; $4095: $ff
	add  b                                           ; $4096: $80
	nop                                              ; $4097: $00
	adc  h                                           ; $4098: $8c
	rst  $38                                         ; $4099: $ff
	add  b                                           ; $409a: $80
	nop                                              ; $409b: $00
	adc  h                                           ; $409c: $8c
	rst  $38                                         ; $409d: $ff
	add  b                                           ; $409e: $80
	nop                                              ; $409f: $00
	adc  h                                           ; $40a0: $8c
	rst  $38                                         ; $40a1: $ff
	add  b                                           ; $40a2: $80
	nop                                              ; $40a3: $00
	adc  h                                           ; $40a4: $8c
	rst  $38                                         ; $40a5: $ff
	add  b                                           ; $40a6: $80
	nop                                              ; $40a7: $00
	add  c                                           ; $40a8: $81
	rst  $38                                         ; $40a9: $ff
	inc  c                                           ; $40aa: $0c
	ld   sp, hl                                      ; $40ab: $f9
	rst  $38                                         ; $40ac: $ff
	add  [hl]                                        ; $40ad: $86
	rst  $38                                         ; $40ae: $ff
	add  [hl]                                        ; $40af: $86
	rst  $38                                         ; $40b0: $ff
	add  $ff                                         ; $40b1: $c6 $ff
	add  $ff                                         ; $40b3: $c6 $ff
	ld   b, $ff                                      ; $40b5: $06 $ff
	nop                                              ; $40b7: $00
	add  c                                           ; $40b8: $81
	rst  $38                                         ; $40b9: $ff
	inc  c                                           ; $40ba: $0c
	db   $fc                                         ; $40bb: $fc
	rst  $38                                         ; $40bc: $ff
	rra                                              ; $40bd: $1f
	rst  $38                                         ; $40be: $ff
	rra                                              ; $40bf: $1f
	rst  $38                                         ; $40c0: $ff
	ld   a, [hl-]                                    ; $40c1: $3a
	rst  $38                                         ; $40c2: $ff
	jr   c, @+$01                                    ; $40c3: $38 $ff

	rrca                                             ; $40c5: $0f
	pop  af                                          ; $40c6: $f1
	nop                                              ; $40c7: $00
	add  c                                           ; $40c8: $81
	rst  $38                                         ; $40c9: $ff
	add  hl, bc                                      ; $40ca: $09
	jr   nc, @+$01                                   ; $40cb: $30 $ff

	inc  a                                           ; $40cd: $3c
	rst  $38                                         ; $40ce: $ff
	inc  c                                           ; $40cf: $0c
	rst  $38                                         ; $40d0: $ff
	add  $ff                                         ; $40d1: $c6 $ff
	add  $ff                                         ; $40d3: $c6 $ff
	add  b                                           ; $40d5: $80
	add  e                                           ; $40d6: $83
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	add  c                                           ; $40d9: $81
	rst  $38                                         ; $40da: $ff
	nop                                              ; $40db: $00
	di                                               ; $40dc: $f3
	add  c                                           ; $40dd: $81
	rst  $38                                         ; $40de: $ff
	ld   [$ff7c], sp                                 ; $40df: $08 $7c $ff
	ld   l, l                                        ; $40e2: $6d
	rst  $38                                         ; $40e3: $ff
	rst  $10                                         ; $40e4: $d7
	rst  $38                                         ; $40e5: $ff
	push bc                                          ; $40e6: $c5
	rrca                                             ; $40e7: $0f
	nop                                              ; $40e8: $00
	add  l                                           ; $40e9: $85
	rst  $38                                         ; $40ea: $ff
	ld   [bc], a                                     ; $40eb: $02
	inc  bc                                          ; $40ec: $03
	rst  $38                                         ; $40ed: $ff
	ld   d, e                                        ; $40ee: $53
	add  c                                           ; $40ef: $81
	rst  $38                                         ; $40f0: $ff
	ld   [bc], a                                     ; $40f1: $02
	ld   d, a                                        ; $40f2: $57
	ld   hl, sp+$00                                  ; $40f3: $f8 $00
	add  e                                           ; $40f5: $83
	rst  $38                                         ; $40f6: $ff
	nop                                              ; $40f7: $00
	ccf                                              ; $40f8: $3f
	add  [hl]                                        ; $40f9: $86
	rst  $38                                         ; $40fa: $ff
	ld   bc, $00c0                                   ; $40fb: $01 $c0 $00
	adc  h                                           ; $40fe: $8c
	rst  $38                                         ; $40ff: $ff
	add  b                                           ; $4100: $80
	nop                                              ; $4101: $00
	adc  h                                           ; $4102: $8c
	rst  $38                                         ; $4103: $ff
	add  b                                           ; $4104: $80
	nop                                              ; $4105: $00
	adc  h                                           ; $4106: $8c
	rst  $38                                         ; $4107: $ff
	add  b                                           ; $4108: $80
	nop                                              ; $4109: $00
	adc  h                                           ; $410a: $8c
	rst  $38                                         ; $410b: $ff
	add  b                                           ; $410c: $80
	nop                                              ; $410d: $00
	adc  h                                           ; $410e: $8c
	rst  $38                                         ; $410f: $ff
	add  b                                           ; $4110: $80
	nop                                              ; $4111: $00
	add  c                                           ; $4112: $81
	rst  $38                                         ; $4113: $ff
	ld   bc, $ff00                                   ; $4114: $01 $00 $ff
	adc  c                                           ; $4117: $89
	nop                                              ; $4118: $00
	add  c                                           ; $4119: $81
	rst  $38                                         ; $411a: $ff
	ld   bc, $ff00                                   ; $411b: $01 $00 $ff
	adc  c                                           ; $411e: $89
	nop                                              ; $411f: $00
	add  c                                           ; $4120: $81
	rst  $38                                         ; $4121: $ff
	ld   bc, $ff00                                   ; $4122: $01 $00 $ff
	adc  c                                           ; $4125: $89
	nop                                              ; $4126: $00
	add  c                                           ; $4127: $81
	rst  $38                                         ; $4128: $ff
	ld   bc, $ff00                                   ; $4129: $01 $00 $ff
	adc  c                                           ; $412c: $89
	nop                                              ; $412d: $00
	add  c                                           ; $412e: $81
	rst  $38                                         ; $412f: $ff
	ld   bc, $ff00                                   ; $4130: $01 $00 $ff
	adc  b                                           ; $4133: $88
	nop                                              ; $4134: $00
	dec  b                                           ; $4135: $05
	ld   a, $ff                                      ; $4136: $3e $ff
	sbc  $ff                                         ; $4138: $de $ff
	rra                                              ; $413a: $1f
	rst  $38                                         ; $413b: $ff
	adc  b                                           ; $413c: $88
	nop                                              ; $413d: $00
	dec  b                                           ; $413e: $05
	ld   bc, $9fff                                   ; $413f: $01 $ff $9f
	rst  $38                                         ; $4142: $ff
	ld   h, c                                        ; $4143: $61
	rst  $38                                         ; $4144: $ff
	adc  b                                           ; $4145: $88
	nop                                              ; $4146: $00
	add  b                                           ; $4147: $80
	rst  $38                                         ; $4148: $ff
	inc  bc                                          ; $4149: $03
	inc  bc                                          ; $414a: $03
	rst  $38                                         ; $414b: $ff
	inc  bc                                          ; $414c: $03
	rst  $38                                         ; $414d: $ff
	adc  b                                           ; $414e: $88
	nop                                              ; $414f: $00
	dec  b                                           ; $4150: $05
	dec  b                                           ; $4151: $05
	rst  $38                                         ; $4152: $ff
	push af                                          ; $4153: $f5
	rst  $38                                         ; $4154: $ff
	rrca                                             ; $4155: $0f
	rst  $38                                         ; $4156: $ff
	adc  b                                           ; $4157: $88
	nop                                              ; $4158: $00
	dec  b                                           ; $4159: $05
	ld   d, b                                        ; $415a: $50
	rst  $38                                         ; $415b: $ff
	ld   d, a                                        ; $415c: $57
	rst  $38                                         ; $415d: $ff
	ld   hl, sp-$01                                  ; $415e: $f8 $ff
	adc  b                                           ; $4160: $88
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	ret  nz                                          ; $4163: $c0

	add  c                                           ; $4164: $81
	rst  $38                                         ; $4165: $ff
	ld   bc, $ffc0                                   ; $4166: $01 $c0 $ff
	adc  c                                           ; $4169: $89
	nop                                              ; $416a: $00
	add  c                                           ; $416b: $81
	rst  $38                                         ; $416c: $ff
	ld   bc, $ff00                                   ; $416d: $01 $00 $ff
	adc  c                                           ; $4170: $89
	nop                                              ; $4171: $00
	add  c                                           ; $4172: $81
	rst  $38                                         ; $4173: $ff
	ld   bc, $ff00                                   ; $4174: $01 $00 $ff
	adc  c                                           ; $4177: $89
	nop                                              ; $4178: $00
	add  c                                           ; $4179: $81
	rst  $38                                         ; $417a: $ff
	ld   bc, $ff00                                   ; $417b: $01 $00 $ff
	adc  c                                           ; $417e: $89
	nop                                              ; $417f: $00
	add  c                                           ; $4180: $81
	rst  $38                                         ; $4181: $ff
	ld   bc, $ff00                                   ; $4182: $01 $00 $ff
	adc  c                                           ; $4185: $89
	nop                                              ; $4186: $00
	add  c                                           ; $4187: $81
	rst  $38                                         ; $4188: $ff
	ld   bc, $ff00                                   ; $4189: $01 $00 $ff
	adc  c                                           ; $418c: $89
	nop                                              ; $418d: $00
	pop  de                                          ; $418e: $d1
	rst  $38                                         ; $418f: $ff
	inc  c                                           ; $4190: $0c
	ld   sp, hl                                      ; $4191: $f9
	rst  $38                                         ; $4192: $ff
	add  [hl]                                        ; $4193: $86
	rst  $38                                         ; $4194: $ff
	add  [hl]                                        ; $4195: $86
	rst  $38                                         ; $4196: $ff
	add  $ff                                         ; $4197: $c6 $ff
	add  $ff                                         ; $4199: $c6 $ff
	ld   b, $ff                                      ; $419b: $06 $ff
	nop                                              ; $419d: $00
	add  c                                           ; $419e: $81
	rst  $38                                         ; $419f: $ff
	inc  c                                           ; $41a0: $0c
	db   $fc                                         ; $41a1: $fc
	rst  $38                                         ; $41a2: $ff
	rra                                              ; $41a3: $1f
	rst  $38                                         ; $41a4: $ff
	rra                                              ; $41a5: $1f
	rst  $38                                         ; $41a6: $ff
	ld   a, [hl-]                                    ; $41a7: $3a
	rst  $38                                         ; $41a8: $ff
	jr   c, @+$01                                    ; $41a9: $38 $ff

	rrca                                             ; $41ab: $0f
	rst  $38                                         ; $41ac: $ff
	ld   c, $81                                      ; $41ad: $0e $81
	rst  $38                                         ; $41af: $ff
	inc  c                                           ; $41b0: $0c
	jr   nc, @+$01                                   ; $41b1: $30 $ff

	inc  a                                           ; $41b3: $3c
	rst  $38                                         ; $41b4: $ff
	inc  c                                           ; $41b5: $0c
	rst  $38                                         ; $41b6: $ff
	add  $ff                                         ; $41b7: $c6 $ff
	add  $ff                                         ; $41b9: $c6 $ff
	add  e                                           ; $41bb: $83
	rst  $38                                         ; $41bc: $ff
	ld   a, h                                        ; $41bd: $7c
	add  c                                           ; $41be: $81
	rst  $38                                         ; $41bf: $ff
	nop                                              ; $41c0: $00
	di                                               ; $41c1: $f3
	add  c                                           ; $41c2: $81
	rst  $38                                         ; $41c3: $ff
	ld   [$ff7c], sp                                 ; $41c4: $08 $7c $ff
	ld   l, l                                        ; $41c7: $6d
	rst  $38                                         ; $41c8: $ff
	rst  $10                                         ; $41c9: $d7
	rst  $38                                         ; $41ca: $ff
	push bc                                          ; $41cb: $c5
	rst  $38                                         ; $41cc: $ff
	ldh  a, [$85]                                    ; $41cd: $f0 $85
	rst  $38                                         ; $41cf: $ff
	ld   [bc], a                                     ; $41d0: $02
	inc  bc                                          ; $41d1: $03
	rst  $38                                         ; $41d2: $ff
	ld   d, e                                        ; $41d3: $53
	add  c                                           ; $41d4: $81
	rst  $38                                         ; $41d5: $ff
	ld   [bc], a                                     ; $41d6: $02
	ld   d, a                                        ; $41d7: $57
	rst  $38                                         ; $41d8: $ff
	rlca                                             ; $41d9: $07
	add  e                                           ; $41da: $83
	rst  $38                                         ; $41db: $ff
	nop                                              ; $41dc: $00
	ccf                                              ; $41dd: $3f
	add  a                                           ; $41de: $87
	rst  $38                                         ; $41df: $ff
	nop                                              ; $41e0: $00
	ccf                                              ; $41e1: $3f
	rst  $38                                         ; $41e2: $ff
	rst  $38                                         ; $41e3: $ff
	sbc  h                                           ; $41e4: $9c
	rst  $38                                         ; $41e5: $ff
	ld   a, [bc]                                     ; $41e6: $0a
	pop  bc                                          ; $41e7: $c1
	rst  $38                                         ; $41e8: $ff
	adc  $ff                                         ; $41e9: $ce $ff
	ret  nz                                          ; $41eb: $c0

	rst  $38                                         ; $41ec: $ff
	ldh  a, [rIE]                                    ; $41ed: $f0 $ff
	and  $ff                                         ; $41ef: $e6 $ff
	cp   a                                           ; $41f1: $bf
	add  c                                           ; $41f2: $81
	rst  $38                                         ; $41f3: $ff
	inc  b                                           ; $41f4: $04
	sbc  c                                           ; $41f5: $99
	rst  $38                                         ; $41f6: $ff
	cp   $ff                                         ; $41f7: $fe $ff
	sbc  a                                           ; $41f9: $9f
	add  c                                           ; $41fa: $81
	rst  $38                                         ; $41fb: $ff
	inc  b                                           ; $41fc: $04
	ld   a, a                                        ; $41fd: $7f
	rst  $38                                         ; $41fe: $ff
	ld   e, [hl]                                     ; $41ff: $5e
	rst  $38                                         ; $4200: $ff
	call c, $ff81                                    ; $4201: $dc $81 $ff
	ld   [de], a                                     ; $4204: $12
	sbc  h                                           ; $4205: $9c
	rst  $38                                         ; $4206: $ff
	nop                                              ; $4207: $00
	rst  $38                                         ; $4208: $ff
	add  e                                           ; $4209: $83
	rst  $38                                         ; $420a: $ff
	add  e                                           ; $420b: $83
	rst  $38                                         ; $420c: $ff
	add  e                                           ; $420d: $83
	rst  $38                                         ; $420e: $ff
	nop                                              ; $420f: $00
	rst  $38                                         ; $4210: $ff
	ld   b, h                                        ; $4211: $44
	rst  $38                                         ; $4212: $ff
	ccf                                              ; $4213: $3f
	rst  $38                                         ; $4214: $ff
	ld   hl, sp-$01                                  ; $4215: $f8 $ff
	ld   a, [$ff81]                                  ; $4217: $fa $81 $ff
	inc  b                                           ; $421a: $04
	push hl                                          ; $421b: $e5
	rst  $38                                         ; $421c: $ff
	ldh  [rIE], a                                    ; $421d: $e0 $ff
	db   $e4                                         ; $421f: $e4
	add  e                                           ; $4220: $83
	rst  $38                                         ; $4221: $ff
	ld   [bc], a                                     ; $4222: $02
	db   $e4                                         ; $4223: $e4
	rst  $38                                         ; $4224: $ff
	xor  a                                           ; $4225: $af
	add  c                                           ; $4226: $81
	rst  $38                                         ; $4227: $ff
	inc  b                                           ; $4228: $04
	ld   d, e                                        ; $4229: $53
	rst  $38                                         ; $422a: $ff
	inc  bc                                          ; $422b: $03
	rst  $38                                         ; $422c: $ff
	sub  e                                           ; $422d: $93
	add  e                                           ; $422e: $83
	rst  $38                                         ; $422f: $ff
	ld   [bc], a                                     ; $4230: $02
	sub  e                                           ; $4231: $93
	rst  $38                                         ; $4232: $ff
	ccf                                              ; $4233: $3f
	add  c                                           ; $4234: $81
	rst  $38                                         ; $4235: $ff
	nop                                              ; $4236: $00
	db   $fc                                         ; $4237: $fc
	add  c                                           ; $4238: $81
	rst  $38                                         ; $4239: $ff
	ld   b, $7f                                      ; $423a: $06 $7f
	rst  $38                                         ; $423c: $ff
	db   $db                                         ; $423d: $db
	rst  $38                                         ; $423e: $ff
	and  [hl]                                        ; $423f: $a6
	rst  $38                                         ; $4240: $ff
	pop  bc                                          ; $4241: $c1
	ret  nc                                          ; $4242: $d0

	rst  $38                                         ; $4243: $ff
	add  b                                           ; $4244: $80
	nop                                              ; $4245: $00
	adc  d                                           ; $4246: $8a
	rst  $38                                         ; $4247: $ff
	add  d                                           ; $4248: $82
	nop                                              ; $4249: $00
	adc  d                                           ; $424a: $8a
	rst  $38                                         ; $424b: $ff
	add  d                                           ; $424c: $82
	nop                                              ; $424d: $00
	adc  d                                           ; $424e: $8a
	rst  $38                                         ; $424f: $ff
	add  d                                           ; $4250: $82
	nop                                              ; $4251: $00
	adc  d                                           ; $4252: $8a
	rst  $38                                         ; $4253: $ff
	add  d                                           ; $4254: $82
	nop                                              ; $4255: $00
	adc  d                                           ; $4256: $8a
	rst  $38                                         ; $4257: $ff
	add  d                                           ; $4258: $82
	nop                                              ; $4259: $00
	inc  c                                           ; $425a: $0c
	rst  $38                                         ; $425b: $ff
	ld   sp, hl                                      ; $425c: $f9
	rst  $38                                         ; $425d: $ff
	add  [hl]                                        ; $425e: $86
	rst  $38                                         ; $425f: $ff
	add  [hl]                                        ; $4260: $86
	rst  $38                                         ; $4261: $ff
	add  $ff                                         ; $4262: $c6 $ff
	add  $ff                                         ; $4264: $c6 $ff
	ld   b, $ff                                      ; $4266: $06 $ff
	add  c                                           ; $4268: $81
	nop                                              ; $4269: $00
	inc  c                                           ; $426a: $0c
	rst  $38                                         ; $426b: $ff
	cp   $ff                                         ; $426c: $fe $ff
	rra                                              ; $426e: $1f
	rst  $38                                         ; $426f: $ff
	rra                                              ; $4270: $1f
	rst  $38                                         ; $4271: $ff
	dec  a                                           ; $4272: $3d
	rst  $38                                         ; $4273: $ff
	dec  a                                           ; $4274: $3d
	rst  $38                                         ; $4275: $ff
	rrca                                             ; $4276: $0f
	pop  af                                          ; $4277: $f1
	add  c                                           ; $4278: $81
	nop                                              ; $4279: $00
	ld   a, [bc]                                     ; $427a: $0a
	rst  $38                                         ; $427b: $ff
	db   $10                                         ; $427c: $10
	rst  $38                                         ; $427d: $ff
	sbc  h                                           ; $427e: $9c
	rst  $38                                         ; $427f: $ff
	adc  h                                           ; $4280: $8c
	rst  $38                                         ; $4281: $ff
	ld   b, [hl]                                     ; $4282: $46
	rst  $38                                         ; $4283: $ff
	ld   b, [hl]                                     ; $4284: $46
	rst  $38                                         ; $4285: $ff
	add  b                                           ; $4286: $80
	inc  bc                                          ; $4287: $03
	add  c                                           ; $4288: $81
	nop                                              ; $4289: $00
	inc  c                                           ; $428a: $0c
	rst  $38                                         ; $428b: $ff
	di                                               ; $428c: $f3
	rst  $38                                         ; $428d: $ff
	db   $fc                                         ; $428e: $fc
	rst  $38                                         ; $428f: $ff
	ld   h, l                                        ; $4290: $65
	rst  $38                                         ; $4291: $ff
	ld   l, a                                        ; $4292: $6f
	rst  $38                                         ; $4293: $ff
	push hl                                          ; $4294: $e5
	rst  $38                                         ; $4295: $ff
	push hl                                          ; $4296: $e5
	dec  b                                           ; $4297: $05
	add  c                                           ; $4298: $81
	nop                                              ; $4299: $00
	add  c                                           ; $429a: $81
	rst  $38                                         ; $429b: $ff
	ld   [bc], a                                     ; $429c: $02
	inc  bc                                          ; $429d: $03
	rst  $38                                         ; $429e: $ff
	ld   d, e                                        ; $429f: $53
	add  c                                           ; $42a0: $81
	rst  $38                                         ; $42a1: $ff
	inc  bc                                          ; $42a2: $03
	ld   d, e                                        ; $42a3: $53
	rst  $38                                         ; $42a4: $ff
	ld   d, e                                        ; $42a5: $53
	ld   d, b                                        ; $42a6: $50
	add  c                                           ; $42a7: $81
	nop                                              ; $42a8: $00
	add  c                                           ; $42a9: $81
	rst  $38                                         ; $42aa: $ff
	nop                                              ; $42ab: $00
	ccf                                              ; $42ac: $3f
	add  [hl]                                        ; $42ad: $86
	rst  $38                                         ; $42ae: $ff
	nop                                              ; $42af: $00
	ret  nz                                          ; $42b0: $c0

	add  c                                           ; $42b1: $81
	nop                                              ; $42b2: $00
	adc  d                                           ; $42b3: $8a
	rst  $38                                         ; $42b4: $ff
	add  d                                           ; $42b5: $82
	nop                                              ; $42b6: $00
	adc  d                                           ; $42b7: $8a
	rst  $38                                         ; $42b8: $ff
	add  d                                           ; $42b9: $82
	nop                                              ; $42ba: $00
	adc  d                                           ; $42bb: $8a
	rst  $38                                         ; $42bc: $ff
	add  d                                           ; $42bd: $82
	nop                                              ; $42be: $00
	adc  d                                           ; $42bf: $8a
	rst  $38                                         ; $42c0: $ff
	add  d                                           ; $42c1: $82
	nop                                              ; $42c2: $00
	adc  d                                           ; $42c3: $8a
	rst  $38                                         ; $42c4: $ff
	add  b                                           ; $42c5: $80
	nop                                              ; $42c6: $00
	add  e                                           ; $42c7: $83
	rst  $38                                         ; $42c8: $ff
	ld   bc, $ff00                                   ; $42c9: $01 $00 $ff
	add  a                                           ; $42cc: $87
	nop                                              ; $42cd: $00
	add  e                                           ; $42ce: $83
	rst  $38                                         ; $42cf: $ff
	ld   bc, $ff00                                   ; $42d0: $01 $00 $ff
	add  a                                           ; $42d3: $87
	nop                                              ; $42d4: $00
	add  e                                           ; $42d5: $83
	rst  $38                                         ; $42d6: $ff
	ld   bc, $ff00                                   ; $42d7: $01 $00 $ff
	add  a                                           ; $42da: $87
	nop                                              ; $42db: $00
	add  e                                           ; $42dc: $83
	rst  $38                                         ; $42dd: $ff
	ld   bc, $ff00                                   ; $42de: $01 $00 $ff
	add  a                                           ; $42e1: $87
	nop                                              ; $42e2: $00
	add  e                                           ; $42e3: $83
	rst  $38                                         ; $42e4: $ff
	ld   bc, $ff00                                   ; $42e5: $01 $00 $ff
	add  a                                           ; $42e8: $87
	nop                                              ; $42e9: $00
	add  e                                           ; $42ea: $83
	rst  $38                                         ; $42eb: $ff
	ld   bc, $ff00                                   ; $42ec: $01 $00 $ff
	add  b                                           ; $42ef: $80
	nop                                              ; $42f0: $00
	add  b                                           ; $42f1: $80
	ld   b, $80                                      ; $42f2: $06 $80
	ld   a, a                                        ; $42f4: $7f
	add  b                                           ; $42f5: $80
	ld   b, $00                                      ; $42f6: $06 $00
	nop                                              ; $42f8: $00
	add  e                                           ; $42f9: $83
	rst  $38                                         ; $42fa: $ff
	ld   bc, $ff00                                   ; $42fb: $01 $00 $ff
	add  b                                           ; $42fe: $80
	nop                                              ; $42ff: $00
	add  b                                           ; $4300: $80
	ld   bc, $e180                                   ; $4301: $01 $80 $e1
	add  b                                           ; $4304: $80
	ld   bc, $0000                                   ; $4305: $01 $00 $00
	add  e                                           ; $4308: $83
	rst  $38                                         ; $4309: $ff
	ld   bc, $ff00                                   ; $430a: $01 $00 $ff
	add  b                                           ; $430d: $80
	nop                                              ; $430e: $00
	add  b                                           ; $430f: $80
	rst  $28                                         ; $4310: $ef
	add  b                                           ; $4311: $80
	adc  h                                           ; $4312: $8c
	add  b                                           ; $4313: $80
	rst  $38                                         ; $4314: $ff
	nop                                              ; $4315: $00
	nop                                              ; $4316: $00
	add  e                                           ; $4317: $83
	rst  $38                                         ; $4318: $ff
	ld   bc, $ff00                                   ; $4319: $01 $00 $ff
	add  b                                           ; $431c: $80
	nop                                              ; $431d: $00
	add  b                                           ; $431e: $80
	inc  c                                           ; $431f: $0c
	add  b                                           ; $4320: $80
	rrca                                             ; $4321: $0f
	add  b                                           ; $4322: $80
	sub  l                                           ; $4323: $95
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	add  e                                           ; $4326: $83
	rst  $38                                         ; $4327: $ff
	ld   bc, $ff00                                   ; $4328: $01 $00 $ff
	add  d                                           ; $432b: $82
	nop                                              ; $432c: $00
	add  b                                           ; $432d: $80
	db   $fc                                         ; $432e: $fc
	add  b                                           ; $432f: $80
	ld   d, b                                        ; $4330: $50
	nop                                              ; $4331: $00
	nop                                              ; $4332: $00
	add  e                                           ; $4333: $83
	rst  $38                                         ; $4334: $ff
	ld   bc, $ff00                                   ; $4335: $01 $00 $ff
	add  d                                           ; $4338: $82
	nop                                              ; $4339: $00
	add  d                                           ; $433a: $82
	ret  nz                                          ; $433b: $c0

	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	add  e                                           ; $433e: $83
	rst  $38                                         ; $433f: $ff
	ld   bc, $ff00                                   ; $4340: $01 $00 $ff
	add  a                                           ; $4343: $87
	nop                                              ; $4344: $00
	add  e                                           ; $4345: $83
	rst  $38                                         ; $4346: $ff
	ld   bc, $ff00                                   ; $4347: $01 $00 $ff
	add  a                                           ; $434a: $87
	nop                                              ; $434b: $00
	add  e                                           ; $434c: $83
	rst  $38                                         ; $434d: $ff
	ld   bc, $ff00                                   ; $434e: $01 $00 $ff
	add  a                                           ; $4351: $87
	nop                                              ; $4352: $00
	add  e                                           ; $4353: $83
	rst  $38                                         ; $4354: $ff
	ld   bc, $ff00                                   ; $4355: $01 $00 $ff
	add  a                                           ; $4358: $87
	nop                                              ; $4359: $00
	add  e                                           ; $435a: $83
	rst  $38                                         ; $435b: $ff
	ld   bc, $ff00                                   ; $435c: $01 $00 $ff
	add  [hl]                                        ; $435f: $86
	nop                                              ; $4360: $00
	add  b                                           ; $4361: $80
	rst  $38                                         ; $4362: $ff
	adc  h                                           ; $4363: $8c
	nop                                              ; $4364: $00
	add  b                                           ; $4365: $80
	rst  $38                                         ; $4366: $ff
	adc  h                                           ; $4367: $8c
	nop                                              ; $4368: $00
	add  b                                           ; $4369: $80
	rst  $38                                         ; $436a: $ff
	adc  h                                           ; $436b: $8c
	nop                                              ; $436c: $00
	add  b                                           ; $436d: $80
	rst  $38                                         ; $436e: $ff
	adc  h                                           ; $436f: $8c
	nop                                              ; $4370: $00
	add  b                                           ; $4371: $80
	rst  $38                                         ; $4372: $ff
	adc  h                                           ; $4373: $8c
	nop                                              ; $4374: $00
	add  b                                           ; $4375: $80
	rst  $38                                         ; $4376: $ff
	add  b                                           ; $4377: $80
	rrca                                             ; $4378: $0f
	add  b                                           ; $4379: $80
	jr   nc, @-$7e                                   ; $437a: $30 $80

	ccf                                              ; $437c: $3f
	add  b                                           ; $437d: $80
	ld   h, $82                                      ; $437e: $26 $82

Jump_01c_4380:
	ld   h, [hl]                                     ; $4380: $66

Jump_01c_4381:
	add  b                                           ; $4381: $80
	nop                                              ; $4382: $00
	add  b                                           ; $4383: $80
	rst  $38                                         ; $4384: $ff
	add  d                                           ; $4385: $82
	ld   h, c                                        ; $4386: $61
	add  b                                           ; $4387: $80
	pop  hl                                          ; $4388: $e1
	add  b                                           ; $4389: $80
	ld   b, b                                        ; $438a: $40
	add  d                                           ; $438b: $82
	ld   h, e                                        ; $438c: $63
	add  b                                           ; $438d: $80
	nop                                              ; $438e: $00
	add  b                                           ; $438f: $80
	rst  $38                                         ; $4390: $ff
	add  b                                           ; $4391: $80
	add  e                                           ; $4392: $83
	add  b                                           ; $4393: $80
	rst  $38                                         ; $4394: $ff
	add  b                                           ; $4395: $80
	add  e                                           ; $4396: $83
	add  b                                           ; $4397: $80
	ld   a, h                                        ; $4398: $7c
	add  b                                           ; $4399: $80
	rst  ToBoot                                         ; $439a: $c7
	add  b                                           ; $439b: $80
	rlca                                             ; $439c: $07
	add  b                                           ; $439d: $80
	nop                                              ; $439e: $00
	add  b                                           ; $439f: $80
	rst  $38                                         ; $43a0: $ff
	add  b                                           ; $43a1: $80
	dec  b                                           ; $43a2: $05
	add  b                                           ; $43a3: $80
	rra                                              ; $43a4: $1f
	add  b                                           ; $43a5: $80
	nop                                              ; $43a6: $00
	add  h                                           ; $43a7: $84
	dec  de                                          ; $43a8: $1b
	add  b                                           ; $43a9: $80
	nop                                              ; $43aa: $00
	add  b                                           ; $43ab: $80
	rst  $38                                         ; $43ac: $ff
	add  b                                           ; $43ad: $80
	ld   d, b                                        ; $43ae: $50
	add  b                                           ; $43af: $80
	db   $fc                                         ; $43b0: $fc
	add  b                                           ; $43b1: $80
	nop                                              ; $43b2: $00
	add  h                                           ; $43b3: $84
	ld   l, h                                        ; $43b4: $6c
	add  b                                           ; $43b5: $80
	nop                                              ; $43b6: $00
	add  b                                           ; $43b7: $80
	rst  $38                                         ; $43b8: $ff
	add  b                                           ; $43b9: $80
	ret  nz                                          ; $43ba: $c0

	add  d                                           ; $43bb: $82
	jp   Jump_01c_4380                               ; $43bc: $c3 $80 $43


	add  b                                           ; $43bf: $80
	ld   h, a                                        ; $43c0: $67
	add  b                                           ; $43c1: $80
	ld   a, $80                                      ; $43c2: $3e $80
	nop                                              ; $43c4: $00
	add  b                                           ; $43c5: $80
	rst  $38                                         ; $43c6: $ff
	adc  h                                           ; $43c7: $8c

jr_01c_43c8:
	nop                                              ; $43c8: $00
	add  b                                           ; $43c9: $80
	rst  $38                                         ; $43ca: $ff
	adc  h                                           ; $43cb: $8c
	nop                                              ; $43cc: $00
	add  b                                           ; $43cd: $80
	rst  $38                                         ; $43ce: $ff
	adc  h                                           ; $43cf: $8c
	nop                                              ; $43d0: $00
	add  b                                           ; $43d1: $80
	rst  $38                                         ; $43d2: $ff
	adc  h                                           ; $43d3: $8c
	nop                                              ; $43d4: $00
	add  b                                           ; $43d5: $80
	rst  $38                                         ; $43d6: $ff
	adc  h                                           ; $43d7: $8c
	nop                                              ; $43d8: $00
	ld   d, $01                                      ; $43d9: $16 $01
	nop                                              ; $43db: $00
	ld   bc, $0081                                   ; $43dc: $01 $81 $00
	nop                                              ; $43df: $00
	inc  bc                                          ; $43e0: $03
	adc  c                                           ; $43e1: $89
	ld   bc, $0200                                   ; $43e2: $01 $00 $02
	add  c                                           ; $43e5: $81
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	ld   bc, $00a5                                   ; $43e8: $01 $a5 $00
	inc  b                                           ; $43eb: $04
	ld   [bc], a                                     ; $43ec: $02
	nop                                              ; $43ed: $00
	ld   bc, $0200                                   ; $43ee: $01 $00 $02
	add  a                                           ; $43f1: $87
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	ld   bc, $008d                                   ; $43f4: $01 $8d $00
	inc  de                                          ; $43f7: $13
	rra                                              ; $43f8: $1f
	nop                                              ; $43f9: $00
	ld   h, l                                        ; $43fa: $65

jr_01c_43fb:
	dec  b                                           ; $43fb: $05
	ld   a, [$607a]                                  ; $43fc: $fa $7a $60

jr_01c_43ff:
	ld   a, a                                        ; $43ff: $7f
	rra                                              ; $4400: $1f
	nop                                              ; $4401: $00
	ld   a, b                                        ; $4402: $78
	ld   a, a                                        ; $4403: $7f
	add  a                                           ; $4404: $87
	nop                                              ; $4405: $00
	inc  a                                           ; $4406: $3c
	ccf                                              ; $4407: $3f
	inc  bc                                          ; $4408: $03
	nop                                              ; $4409: $00
	ld   e, a                                        ; $440a: $5f
	rra                                              ; $440b: $1f
	add  b                                           ; $440c: $80
	nop                                              ; $440d: $00
	inc  b                                           ; $440e: $04
	cpl                                              ; $440f: $2f
	rrca                                             ; $4410: $0f
	stop                                             ; $4411: $10 $00
	rrca                                             ; $4413: $0f
	add  l                                           ; $4414: $85
	nop                                              ; $4415: $00
	inc  b                                           ; $4416: $04
	ld   bc, $0600                                   ; $4417: $01 $00 $06
	nop                                              ; $441a: $00
	rlca                                             ; $441b: $07
	adc  l                                           ; $441c: $8d
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	ld   [bc], a                                     ; $441f: $02
	adc  l                                           ; $4420: $8d
	ld   bc, $8103                                   ; $4421: $01 $03 $81
	ld   bc, $80fc                                   ; $4424: $01 $fc $80
	add  h                                           ; $4427: $84
	rst  $38                                         ; $4428: $ff
	add  [hl]                                        ; $4429: $86
	ld   a, a                                        ; $442a: $7f
	nop                                              ; $442b: $00
	cp   a                                           ; $442c: $bf
	add  c                                           ; $442d: $81
	ccf                                              ; $442e: $3f
	ld   a, [bc]                                     ; $442f: $0a
	ld   c, a                                        ; $4430: $4f
	rrca                                             ; $4431: $0f
	jr   nc, jr_01c_4434                             ; $4432: $30 $00

jr_01c_4434:
	di                                               ; $4434: $f3
	inc  bc                                          ; $4435: $03
	pop  hl                                          ; $4436: $e1
	rst  $28                                         ; $4437: $ef
	pop  de                                          ; $4438: $d1
	rst  JumpTable                                         ; $4439: $df
	rst  $38                                         ; $443a: $ff
	add  c                                           ; $443b: $81
	nop                                              ; $443c: $00
	add  [hl]                                        ; $443d: $86
	jr   nz, jr_01c_43c8                             ; $443e: $20 $88

	db   $10                                         ; $4440: $10
	add  [hl]                                        ; $4441: $86
	nop                                              ; $4442: $00
	add  b                                           ; $4443: $80
	inc  bc                                          ; $4444: $03
	ld   bc, $30cf                                   ; $4445: $01 $cf $30
	add  b                                           ; $4448: $80
	ld   b, b                                        ; $4449: $40
	add  b                                           ; $444a: $80
	ld   b, a                                        ; $444b: $47
	dec  bc                                          ; $444c: $0b
	add  h                                           ; $444d: $84
	sub  h                                           ; $444e: $94
	add  e                                           ; $444f: $83
	sub  b                                           ; $4450: $90
	rla                                              ; $4451: $17
	stop                                             ; $4452: $10 $00
	db   $10                                         ; $4454: $10
	rla                                              ; $4455: $17
	ld   d, b                                        ; $4456: $50
	ld   d, a                                        ; $4457: $57
	ld   h, h                                        ; $4458: $64
	add  b                                           ; $4459: $80
	ld   h, a                                        ; $445a: $67
	ld   [bc], a                                     ; $445b: $02
	ei                                               ; $445c: $fb
	jp   $81fc                                       ; $445d: $c3 $fc $81


	add  b                                           ; $4460: $80
	ld   b, $bc                                      ; $4461: $06 $bc
	add  e                                           ; $4463: $83
	cp   e                                           ; $4464: $bb
	add  a                                           ; $4465: $87
	ld   d, a                                        ; $4466: $57
	inc  bc                                          ; $4467: $03
	adc  h                                           ; $4468: $8c
	add  l                                           ; $4469: $85
	nop                                              ; $446a: $00
	add  b                                           ; $446b: $80
	inc  bc                                          ; $446c: $03
	nop                                              ; $446d: $00
	rlca                                             ; $446e: $07
	add  c                                           ; $446f: $81
	inc  b                                           ; $4470: $04
	ld   bc, $0300                                   ; $4471: $01 $00 $03
	add  d                                           ; $4474: $82
	nop                                              ; $4475: $00
	add  b                                           ; $4476: $80
	jr   jr_01c_43fb                                 ; $4477: $18 $82

	inc  a                                           ; $4479: $3c
	add  b                                           ; $447a: $80
	jr   jr_01c_43ff                                 ; $447b: $18 $82

	nop                                              ; $447d: $00
	ld   [bc], a                                     ; $447e: $02
	adc  a                                           ; $447f: $8f
	inc  bc                                          ; $4480: $03
	inc  de                                          ; $4481: $13
	add  b                                           ; $4482: $80
	inc  c                                           ; $4483: $0c
	add  c                                           ; $4484: $81
	rrca                                             ; $4485: $0f
	ld   [$0f4f], sp                                 ; $4486: $08 $4f $0f
	rra                                              ; $4489: $1f
	rlca                                             ; $448a: $07
	ld   h, a                                        ; $448b: $67
	ld   b, a                                        ; $448c: $47
	ld   c, a                                        ; $448d: $4f
	ld   b, c                                        ; $448e: $41
	scf                                              ; $448f: $37
	add  b                                           ; $4490: $80
	ld   h, b                                        ; $4491: $60
	add  b                                           ; $4492: $80
	jr   nz, @+$10                                   ; $4493: $20 $0e

	and  b                                           ; $4495: $a0
	xor  b                                           ; $4496: $a8
	jr   nz, jr_01c_44c5                             ; $4497: $20 $2c

	xor  b                                           ; $4499: $a8
	and  [hl]                                        ; $449a: $a6
	inc  l                                           ; $449b: $2c
	ld   c, d                                        ; $449c: $4a
	ld   h, [hl]                                     ; $449d: $66
	cp   a                                           ; $449e: $bf
	jp   $0363                                       ; $449f: $c3 $63 $03


	adc  $06                                         ; $44a2: $ce $06
	add  b                                           ; $44a4: $80
	dec  b                                           ; $44a5: $05
	add  b                                           ; $44a6: $80
	inc  bc                                          ; $44a7: $03
	ld   bc, $030b                                   ; $44a8: $01 $0b $03
	add  b                                           ; $44ab: $80
	nop                                              ; $44ac: $00
	ld   bc, $03fb                                   ; $44ad: $01 $fb $03
	add  b                                           ; $44b0: $80
	or   h                                           ; $44b1: $b4
	nop                                              ; $44b2: $00
	rst  $38                                         ; $44b3: $ff
	sub  a                                           ; $44b4: $97
	nop                                              ; $44b5: $00
	add  d                                           ; $44b6: $82
	add  b                                           ; $44b7: $80
	add  h                                           ; $44b8: $84
	nop                                              ; $44b9: $00
	add  b                                           ; $44ba: $80
	ld   h, b                                        ; $44bb: $60
	add  d                                           ; $44bc: $82
	ldh  a, [$80]                                    ; $44bd: $f0 $80
	ld   h, b                                        ; $44bf: $60
	sub  d                                           ; $44c0: $92
	nop                                              ; $44c1: $00
	ld   bc, $e41a                                   ; $44c2: $01 $1a $e4

jr_01c_44c5:
	add  b                                           ; $44c5: $80
	ld   hl, sp-$80                                  ; $44c6: $f8 $80
	db   $ec                                         ; $44c8: $ec
	ld   bc, $f6f7                                   ; $44c9: $01 $f7 $f6
	add  b                                           ; $44cc: $80
	ld   a, [$fb80]                                  ; $44cd: $fa $80 $fb
	inc  b                                           ; $44d0: $04
	rrca                                             ; $44d1: $0f
	rst  $38                                         ; $44d2: $ff
	di                                               ; $44d3: $f3
	add  e                                           ; $44d4: $83
	ld   a, a                                        ; $44d5: $7f
	sub  a                                           ; $44d6: $97
	nop                                              ; $44d7: $00
	ld   b, $83                                      ; $44d8: $06 $83
	nop                                              ; $44da: $00
	rrca                                             ; $44db: $0f
	inc  bc                                          ; $44dc: $03
	ld   a, a                                        ; $44dd: $7f
	rrca                                             ; $44de: $0f
	rst  $38                                         ; $44df: $ff
	adc  l                                           ; $44e0: $8d
	nop                                              ; $44e1: $00
	rlca                                             ; $44e2: $07
	rst  $38                                         ; $44e3: $ff
	ccf                                              ; $44e4: $3f
	ld   a, a                                        ; $44e5: $7f
	inc  e                                           ; $44e6: $1c
	sbc  a                                           ; $44e7: $9f
	nop                                              ; $44e8: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e9: $cf
	inc  c                                           ; $44ea: $0c
	add  b                                           ; $44eb: $80
	or   [hl]                                        ; $44ec: $b6
	ld   bc, $dbd3                                   ; $44ed: $01 $d3 $db

jr_01c_44f0:
	add  b                                           ; $44f0: $80
	sbc  e                                           ; $44f1: $9b
	ld   [bc], a                                     ; $44f2: $02
	ld   [hl], c                                     ; $44f3: $71
	ld   a, l                                        ; $44f4: $7d
	ei                                               ; $44f5: $fb
	sbc  c                                           ; $44f6: $99
	nop                                              ; $44f7: $00
	add  b                                           ; $44f8: $80
	inc  bc                                          ; $44f9: $03
	sub  b                                           ; $44fa: $90
	nop                                              ; $44fb: $00
	ld   b, $f7                                      ; $44fc: $06 $f7
	ld   a, b                                        ; $44fe: $78
	ld   [hl], b                                     ; $44ff: $70
	add  e                                           ; $4500: $83
	sub  e                                           ; $4501: $93
	rst  $30                                         ; $4502: $f7
	rst  $20                                         ; $4503: $e7
	add  b                                           ; $4504: $80
	rst  $28                                         ; $4505: $ef
	add  b                                           ; $4506: $80
	ld   l, a                                        ; $4507: $6f
	dec  d                                           ; $4508: $15
	and  [hl]                                        ; $4509: $a6
	xor  [hl]                                        ; $450a: $ae
	add  b                                           ; $450b: $80
	db   $e4                                         ; $450c: $e4
	ld   h, b                                        ; $450d: $60
	db   $e3                                         ; $450e: $e3
	ldh  [$e8], a                                    ; $450f: $e0 $e8
	ldh  [$fc], a                                    ; $4511: $e0 $fc
	ld   hl, sp-$22                                  ; $4513: $f8 $de
	call c, $dcc4                                    ; $4515: $dc $c4 $dc
	sbc  c                                           ; $4518: $99
	cp   h                                           ; $4519: $bc
	add  l                                           ; $451a: $85
	cp   l                                           ; $451b: $bd
	ld   a, [hl]                                     ; $451c: $7e
	ld   a, d                                        ; $451d: $7a
	rst  $38                                         ; $451e: $ff
	adc  l                                           ; $451f: $8d
	nop                                              ; $4520: $00
	inc  b                                           ; $4521: $04
	add  [hl]                                        ; $4522: $86
	ld   a, c                                        ; $4523: $79
	inc  bc                                          ; $4524: $03
	ld   a, e                                        ; $4525: $7b
	ld   a, a                                        ; $4526: $7f
	add  b                                           ; $4527: $80
	ld   [hl], a                                     ; $4528: $77
	add  b                                           ; $4529: $80
	rst  $30                                         ; $452a: $f7
	rlca                                             ; $452b: $07
	rlca                                             ; $452c: $07
	add  e                                           ; $452d: $83
	ccf                                              ; $452e: $3f
	inc  a                                           ; $452f: $3c
	ld   a, $7e                                      ; $4530: $3e $7e
	jr   @+$29                                       ; $4532: $18 $27

	adc  a                                           ; $4534: $8f
	nop                                              ; $4535: $00
	nop                                              ; $4536: $00
	ld   b, b                                        ; $4537: $40
	add  e                                           ; $4538: $83
	nop                                              ; $4539: $00
	nop                                              ; $453a: $00
	add  b                                           ; $453b: $80
	add  b                                           ; $453c: $80
	nop                                              ; $453d: $00
	add  c                                           ; $453e: $81
	add  b                                           ; $453f: $80
	nop                                              ; $4540: $00
	ldh  [$85], a                                    ; $4541: $e0 $85
	ret  nz                                          ; $4543: $c0

	nop                                              ; $4544: $00
	nop                                              ; $4545: $00
	add  l                                           ; $4546: $85
	ret  nz                                          ; $4547: $c0

	inc  b                                           ; $4548: $04
	ldh  [$80], a                                    ; $4549: $e0 $80
	ld   b, b                                        ; $454b: $40
	nop                                              ; $454c: $00
	add  b                                           ; $454d: $80
	add  c                                           ; $454e: $81
	nop                                              ; $454f: $00
	dec  bc                                          ; $4550: $0b
	db   $fc                                         ; $4551: $fc
	nop                                              ; $4552: $00
	cp   $fc                                         ; $4553: $fe $fc
	ld   a, a                                        ; $4555: $7f
	ld   a, [hl]                                     ; $4556: $7e
	ldh  a, [$fe]                                    ; $4557: $f0 $fe
	ld   bc, $0fff                                   ; $4559: $01 $ff $0f

jr_01c_455c:
	rst  $38                                         ; $455c: $ff
	add  b                                           ; $455d: $80
	db   $fc                                         ; $455e: $fc
	ld   b, $e3                                      ; $455f: $06 $e3
	ldh  [$9c], a                                    ; $4561: $e0 $9c
	add  b                                           ; $4563: $80
	ld   h, b                                        ; $4564: $60
	nop                                              ; $4565: $00
	add  b                                           ; $4566: $80
	add  c                                           ; $4567: $81
	nop                                              ; $4568: $00
	inc  b                                           ; $4569: $04
	add  b                                           ; $456a: $80
	nop                                              ; $456b: $00
	ld   b, b                                        ; $456c: $40
	nop                                              ; $456d: $00
	jr   c, jr_01c_44f0                              ; $456e: $38 $80

	ld   b, b                                        ; $4570: $40
	add  c                                           ; $4571: $81
	ld   [hl], b                                     ; $4572: $70
	inc  de                                          ; $4573: $13
	ld   a, b                                        ; $4574: $78
	ld   h, b                                        ; $4575: $60
	add  sp, -$80                                    ; $4576: $e8 $80

jr_01c_4578:
	add  [hl]                                        ; $4578: $86
	cp   b                                           ; $4579: $b8
	jr   c, jr_01c_45b8                              ; $457a: $38 $3c

	ld   a, $b8                                      ; $457c: $3e $b8
	cp   h                                           ; $457e: $bc
	and  b                                           ; $457f: $a0
	cp   b                                           ; $4580: $b8
	nop                                              ; $4581: $00
	ld   a, h                                        ; $4582: $7c
	nop                                              ; $4583: $00
	ld   a, d                                        ; $4584: $7a
	jr   jr_01c_45be                                 ; $4585: $18 $37

	ld   [hl], $80                                   ; $4587: $36 $80
	scf                                              ; $4589: $37
	add  b                                           ; $458a: $80
	ld   l, a                                        ; $458b: $6f
	nop                                              ; $458c: $00
	rst  $38                                         ; $458d: $ff
	sbc  c                                           ; $458e: $99
	nop                                              ; $458f: $00
	add  b                                           ; $4590: $80
	inc  b                                           ; $4591: $04
	add  b                                           ; $4592: $80
	inc  bc                                          ; $4593: $03
	inc  c                                           ; $4594: $0c
	sbc  h                                           ; $4595: $9c
	ld   l, a                                        ; $4596: $6f
	ld   c, h                                        ; $4597: $4c
	ld   e, a                                        ; $4598: $5f
	rra                                              ; $4599: $1f
	rrca                                             ; $459a: $0f
	rst  JumpTable                                         ; $459b: $df
	db   $10                                         ; $459c: $10
	ld   h, a                                        ; $459d: $67
	jr   nc, jr_01c_4578                             ; $459e: $30 $d8

	ld   h, b                                        ; $45a0: $60
	or   b                                           ; $45a1: $b0
	add  c                                           ; $45a2: $81
	ret  nz                                          ; $45a3: $c0

	ld   bc, $6030                                   ; $45a4: $01 $30 $60
	add  b                                           ; $45a7: $80
	and  b                                           ; $45a8: $a0
	add  b                                           ; $45a9: $80
	ret  nz                                          ; $45aa: $c0

	add  b                                           ; $45ab: $80
	ldh  [$80], a                                    ; $45ac: $e0 $80
	add  b                                           ; $45ae: $80
	nop                                              ; $45af: $00
	ld   a, b                                        ; $45b0: $78
	add  b                                           ; $45b1: $80
	ld   [hl], b                                     ; $45b2: $70
	inc  bc                                          ; $45b3: $03
	ldh  a, [$87]                                    ; $45b4: $f0 $87
	nop                                              ; $45b6: $00
	rst  $38                                         ; $45b7: $ff

jr_01c_45b8:
	adc  e                                           ; $45b8: $8b
	nop                                              ; $45b9: $00
	nop                                              ; $45ba: $00
	add  b                                           ; $45bb: $80
	add  e                                           ; $45bc: $83
	nop                                              ; $45bd: $00

jr_01c_45be:
	nop                                              ; $45be: $00
	add  b                                           ; $45bf: $80
	sub  l                                           ; $45c0: $95

jr_01c_45c1:
	nop                                              ; $45c1: $00
	ld   a, [bc]                                     ; $45c2: $0a
	ret  nz                                          ; $45c3: $c0

	nop                                              ; $45c4: $00
	ldh  a, [$c0]                                    ; $45c5: $f0 $c0
	cp   $f0                                         ; $45c7: $fe $f0
	ld   a, a                                        ; $45c9: $7f
	cp   $86                                         ; $45ca: $fe $86
	cp   $f8                                         ; $45cc: $fe $f8
	add  b                                           ; $45ce: $80
	cp   $03                                         ; $45cf: $fe $03
	ld   c, $fe                                      ; $45d1: $0e $fe
	nop                                              ; $45d3: $00
	rrca                                             ; $45d4: $0f
	add  c                                           ; $45d5: $81
	nop                                              ; $45d6: $00
	add  b                                           ; $45d7: $80
	ret  nz                                          ; $45d8: $c0

	add  b                                           ; $45d9: $80
	jr   c, jr_01c_455c                              ; $45da: $38 $80

	ld   b, $90                                      ; $45dc: $06 $90
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	ld   bc, $0083                                   ; $45e0: $01 $83 $00
	ld   [hl+], a                                    ; $45e3: $22
	ld   bc, $6a00                                   ; $45e4: $01 $00 $6a
	nop                                              ; $45e7: $00
	ret  nz                                          ; $45e8: $c0

	ld   b, b                                        ; $45e9: $40
	ld   [hl], b                                     ; $45ea: $70
	ld   h, b                                        ; $45eb: $60
	or   h                                           ; $45ec: $b4
	jr   nc, jr_01c_464b                             ; $45ed: $30 $5c

	inc  e                                           ; $45ef: $1c
	daa                                              ; $45f0: $27
	ld   b, $09                                      ; $45f1: $06 $09
	ld   bc, $0062                                   ; $45f3: $01 $62 $00
	jp   hl                                          ; $45f6: $e9


	ld   h, b                                        ; $45f7: $60
	ld   e, d                                        ; $45f8: $5a
	ld   e, b                                        ; $45f9: $58
	dec  de                                          ; $45fa: $1b
	ld   a, [de]                                     ; $45fb: $1a
	ld   [$f2c8], sp                                 ; $45fc: $08 $c8 $f2
	or   d                                           ; $45ff: $b2
	sbc  l                                           ; $4600: $9d
	cp   h                                           ; $4601: $bc
	and  d                                           ; $4602: $a2
	jr   jr_01c_45c1                                 ; $4603: $18 $bc

	nop                                              ; $4605: $00
	ld   d, b                                        ; $4606: $50
	add  e                                           ; $4607: $83
	ld   [$0084], sp                                 ; $4608: $08 $84 $00
	nop                                              ; $460b: $00
	ld   de, $1081                                   ; $460c: $11 $81 $10
	add  d                                           ; $460f: $82
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	ld   bc, $0087                                   ; $4612: $01 $87 $00
	add  b                                           ; $4615: $80
	ld   b, b                                        ; $4616: $40
	adc  [hl]                                        ; $4617: $8e
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	rlca                                             ; $461a: $07
	add  l                                           ; $461b: $85
	ld   [bc], a                                     ; $461c: $02
	nop                                              ; $461d: $00
	dec  bc                                          ; $461e: $0b
	adc  l                                           ; $461f: $8d
	inc  b                                           ; $4620: $04
	nop                                              ; $4621: $00
	ld   d, $85                                      ; $4622: $16 $85
	ld   [$2c00], sp                                 ; $4624: $08 $00 $2c
	add  l                                           ; $4627: $85
	stop                                             ; $4628: $10 $00
	ld   e, b                                        ; $462a: $58
	add  l                                           ; $462b: $85
	jr   nz, jr_01c_462e                             ; $462c: $20 $00

jr_01c_462e:
	ld   d, b                                        ; $462e: $50
	sbc  l                                           ; $462f: $9d
	nop                                              ; $4630: $00
	ld   a, [bc]                                     ; $4631: $0a
	inc  a                                           ; $4632: $3c
	ei                                               ; $4633: $fb
	rst  $38                                         ; $4634: $ff
	rst  $30                                         ; $4635: $f7
	rst  $38                                         ; $4636: $ff
	rst  $28                                         ; $4637: $ef
	rst  $38                                         ; $4638: $ff
	rst  JumpTable                                         ; $4639: $df
	db   $d3                                         ; $463a: $d3
	rst  $10                                         ; $463b: $d7
	and  h                                           ; $463c: $a4
	add  c                                           ; $463d: $81
	xor  a                                           ; $463e: $af
	add  b                                           ; $463f: $80
	cpl                                              ; $4640: $2f
	nop                                              ; $4641: $00
	rrca                                             ; $4642: $0f
	add  b                                           ; $4643: $80
	ld   d, [hl]                                     ; $4644: $56
	ld   bc, $f909                                   ; $4645: $01 $09 $f9
	add  b                                           ; $4648: $80
	di                                               ; $4649: $f3
	add  b                                           ; $464a: $80

jr_01c_464b:
	pop  af                                          ; $464b: $f1
	add  h                                           ; $464c: $84
	or   $05                                         ; $464d: $f6 $05
	ld   a, [$7c06]                                  ; $464f: $fa $06 $7c
	ld   l, [hl]                                     ; $4652: $6e
	cp   $e0                                         ; $4653: $fe $e0
	add  b                                           ; $4655: $80
	add  c                                           ; $4656: $81
	ld   b, $49                                      ; $4657: $06 $49
	ld   c, e                                        ; $4659: $4b
	ld   c, [hl]                                     ; $465a: $4e
	ld   c, b                                        ; $465b: $48
	db   $f4                                         ; $465c: $f4
	sub  $26                                         ; $465d: $d6 $26
	add  b                                           ; $465f: $80
	inc  a                                           ; $4660: $3c
	add  h                                           ; $4661: $84
	ld   a, a                                        ; $4662: $7f
	ld   a, [bc]                                     ; $4663: $0a
	ccf                                              ; $4664: $3f
	ld   a, a                                        ; $4665: $7f
	ld   l, a                                        ; $4666: $6f
	cp   a                                           ; $4667: $bf
	scf                                              ; $4668: $37
	cp   a                                           ; $4669: $bf
	sbc  e                                           ; $466a: $9b
	cp   a                                           ; $466b: $bf
	cp   l                                           ; $466c: $bd
	cp   a                                           ; $466d: $bf
	sbc  $80                                         ; $466e: $de $80
	ld   a, [$fb0c]                                  ; $4670: $fa $0c $fb
	db   $db                                         ; $4673: $db
	ld   sp, hl                                      ; $4674: $f9
	cp   c                                           ; $4675: $b9
	ld   a, [$187a]                                  ; $4676: $fa $7a $18
	ld   hl, sp+$63                                  ; $4679: $f8 $63
	inc  sp                                          ; $467b: $33
	jr   nc, jr_01c_46f6                             ; $467c: $30 $78

	ld   hl, sp-$80                                  ; $467e: $f8 $80
	push hl                                          ; $4680: $e5
	ld   [bc], a                                     ; $4681: $02
	jr   nz, jr_01c_46a5                             ; $4682: $20 $21

	ld   bc, $8280                                   ; $4684: $01 $80 $82
	add  b                                           ; $4687: $80
	db   $fc                                         ; $4688: $fc
	ld   b, $00                                      ; $4689: $06 $00
	rlca                                             ; $468b: $07
	rst  $38                                         ; $468c: $ff
	jp   $c0fb                                       ; $468d: $c3 $fb $c0


	nop                                              ; $4690: $00
	add  d                                           ; $4691: $82
	db   $fd                                         ; $4692: $fd
	add  b                                           ; $4693: $80
	sbc  [hl]                                        ; $4694: $9e
	inc  b                                           ; $4695: $04
	ld   c, $6e                                      ; $4696: $0e $6e
	ld   h, [hl]                                     ; $4698: $66
	ld   c, [hl]                                     ; $4699: $4e
	ld   [$4e81], sp                                 ; $469a: $08 $81 $4e
	inc  bc                                          ; $469d: $03
	ld   c, $9e                                      ; $469e: $0e $9e
	xor  [hl]                                        ; $46a0: $ae
	jr   nc, @-$7e                                   ; $46a1: $30 $80

	ld   b, b                                        ; $46a3: $40
	add  b                                           ; $46a4: $80

jr_01c_46a5:
	ld   b, a                                        ; $46a5: $47
	dec  bc                                          ; $46a6: $0b
	add  h                                           ; $46a7: $84
	sub  h                                           ; $46a8: $94
	add  e                                           ; $46a9: $83
	sub  b                                           ; $46aa: $90
	rla                                              ; $46ab: $17
	stop                                             ; $46ac: $10 $00
	db   $10                                         ; $46ae: $10
	rla                                              ; $46af: $17
	ld   d, b                                        ; $46b0: $50
	xor  b                                           ; $46b1: $a8
	ei                                               ; $46b2: $fb
	add  b                                           ; $46b3: $80
	dec  a                                           ; $46b4: $3d
	ld   bc, $d5d4                                   ; $46b5: $01 $d4 $d5
	add  b                                           ; $46b8: $80
	db   $dd                                         ; $46b9: $dd
	add  b                                           ; $46ba: $80
	ld   c, l                                        ; $46bb: $4d
	rlca                                             ; $46bc: $07
	adc  c                                           ; $46bd: $89
	add  hl, bc                                      ; $46be: $09
	ld   bc, $d111                                   ; $46bf: $01 $11 $d1
	ld   d, [hl]                                     ; $46c2: $56
	add  hl, hl                                      ; $46c3: $29
	ccf                                              ; $46c4: $3f
	add  b                                           ; $46c5: $80
	adc  a                                           ; $46c6: $8f
	ld   bc, $b6b4                                   ; $46c7: $01 $b4 $b6
	add  b                                           ; $46ca: $80
	adc  $80                                         ; $46cb: $ce $80
	cp   $02                                         ; $46cd: $fe $02
	ld   a, [hl]                                     ; $46cf: $7e
	db   $fd                                         ; $46d0: $fd
	ld   a, [$fb81]                                  ; $46d1: $fa $81 $fb
	inc  c                                           ; $46d4: $0c
	ld   a, c                                        ; $46d5: $79
	db   $fd                                         ; $46d6: $fd
	ret  z                                           ; $46d7: $c8

	adc  $46                                         ; $46d8: $ce $46
	ld   d, [hl]                                     ; $46da: $56
	ld   d, $94                                      ; $46db: $16 $94
	sbc  b                                           ; $46dd: $98
	adc  d                                           ; $46de: $8a
	cp   [hl]                                        ; $46df: $be
	jr   c, @-$04                                    ; $46e0: $38 $fa

	add  b                                           ; $46e2: $80
	ldh  a, [rSB]                                    ; $46e3: $f0 $01
	ld   hl, sp+$06                                  ; $46e5: $f8 $06
	add  d                                           ; $46e7: $82
	db   $fd                                         ; $46e8: $fd
	add  b                                           ; $46e9: $80
	ld   a, d                                        ; $46ea: $7a
	add  b                                           ; $46eb: $80
	nop                                              ; $46ec: $00
	add  b                                           ; $46ed: $80
	ld   a, [hl]                                     ; $46ee: $7e
	add  b                                           ; $46ef: $80
	nop                                              ; $46f0: $00
	add  b                                           ; $46f1: $80
	ld   a, [hl]                                     ; $46f2: $7e
	rlca                                             ; $46f3: $07
	nop                                              ; $46f4: $00
	ret  nz                                          ; $46f5: $c0

jr_01c_46f6:
	call z, $9c8c                                    ; $46f6: $cc $8c $9c
	ld   a, h                                        ; $46f9: $7c
	ld   a, [bc]                                     ; $46fa: $0a
	ld   a, [$0280]                                  ; $46fb: $fa $80 $02
	inc  bc                                          ; $46fe: $03
	ld   b, $f6                                      ; $46ff: $06 $f6
	rlca                                             ; $4701: $07
	ld   h, a                                        ; $4702: $67
	add  b                                           ; $4703: $80
	adc  a                                           ; $4704: $8f
	add  hl, bc                                      ; $4705: $09
	xor  a                                           ; $4706: $af
	ret  c                                           ; $4707: $d8

	rst  $30                                         ; $4708: $f7
	or   a                                           ; $4709: $b7
	rst  $30                                         ; $470a: $f7
	rst  $10                                         ; $470b: $d7
	rst  $30                                         ; $470c: $f7
	db   $e3                                         ; $470d: $e3
	rst  $30                                         ; $470e: $f7
	db   $f4                                         ; $470f: $f4
	add  b                                           ; $4710: $80
	rst  $30                                         ; $4711: $f7
	add  d                                           ; $4712: $82
	ld   a, e                                        ; $4713: $7b
	ld   bc, $42bd                                   ; $4714: $01 $bd $42
	add  d                                           ; $4717: $82
	db   $fd                                         ; $4718: $fd
	add  c                                           ; $4719: $81
	rst  $38                                         ; $471a: $ff
	ld   [bc], a                                     ; $471b: $02
	rra                                              ; $471c: $1f
	rst  $38                                         ; $471d: $ff
	xor  $81                                         ; $471e: $ee $81
	cp   $80                                         ; $4720: $fe $80
	db   $fd                                         ; $4722: $fd
	nop                                              ; $4723: $00
	ldh  a, [$80]                                    ; $4724: $f0 $80
	ld   a, [hl]                                     ; $4726: $7e
	add  b                                           ; $4727: $80
	nop                                              ; $4728: $00
	add  b                                           ; $4729: $80
	ld   a, [hl]                                     ; $472a: $7e
	add  b                                           ; $472b: $80
	nop                                              ; $472c: $00
	add  b                                           ; $472d: $80
	ld   a, [hl]                                     ; $472e: $7e
	add  b                                           ; $472f: $80
	nop                                              ; $4730: $00
	add  b                                           ; $4731: $80
	ld   a, a                                        ; $4732: $7f
	add  b                                           ; $4733: $80
	nop                                              ; $4734: $00
	add  d                                           ; $4735: $82
	rst  $10                                         ; $4736: $d7
	add  b                                           ; $4737: $80
	dec  bc                                          ; $4738: $0b
	add  d                                           ; $4739: $82
	db   $eb                                         ; $473a: $eb
	dec  b                                           ; $473b: $05
	pop  hl                                          ; $473c: $e1
	rst  $20                                         ; $473d: $e7
	or   $f7                                         ; $473e: $f6 $f7
	rst  $20                                         ; $4740: $e7
	ldh  [$80], a                                    ; $4741: $e0 $80
	sbc  $80                                         ; $4743: $de $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4745: $cf
	add  b                                           ; $4746: $80
	sub  a                                           ; $4747: $97
	add  b                                           ; $4748: $80
	cp   c                                           ; $4749: $b9
	add  b                                           ; $474a: $80
	ld   a, $83                                      ; $474b: $3e $83
	ld   a, a                                        ; $474d: $7f
	nop                                              ; $474e: $00
	ld   a, b                                        ; $474f: $78
	add  b                                           ; $4750: $80
	rla                                              ; $4751: $17
	ld   [bc], a                                     ; $4752: $02
	rst  $20                                         ; $4753: $e7
	rst  $38                                         ; $4754: $ff
	sbc  a                                           ; $4755: $9f
	add  b                                           ; $4756: $80
	cp   l                                           ; $4757: $bd
	add  hl, bc                                      ; $4758: $09
	cp   [hl]                                        ; $4759: $be
	cp   h                                           ; $475a: $bc
	sbc  h                                           ; $475b: $9c
	db   $10                                         ; $475c: $10
	pop  de                                          ; $475d: $d1
	jp   $afb3                                       ; $475e: $c3 $b3 $af


	add  b                                           ; $4761: $80
	sbc  h                                           ; $4762: $9c
	add  d                                           ; $4763: $82
	db   $dd                                         ; $4764: $dd
	nop                                              ; $4765: $00
	rst  $38                                         ; $4766: $ff
	add  b                                           ; $4767: $80
	db   $eb                                         ; $4768: $eb
	nop                                              ; $4769: $00
	db   $e3                                         ; $476a: $e3
	add  b                                           ; $476b: $80
	rst  $38                                         ; $476c: $ff
	add  d                                           ; $476d: $82
	ld   a, a                                        ; $476e: $7f
	ld   bc, $6f60                                   ; $476f: $01 $60 $6f
	add  c                                           ; $4772: $81
	rst  $28                                         ; $4773: $ef
	add  c                                           ; $4774: $81
	rst  $30                                         ; $4775: $f7
	ld   c, $d7                                      ; $4776: $0e $d7
	rst  $30                                         ; $4778: $f7
	scf                                              ; $4779: $37
	ld   [hl], b                                     ; $477a: $70
	ldh  a, [$bf]                                    ; $477b: $f0 $bf
	ccf                                              ; $477d: $3f
	cp   [hl]                                        ; $477e: $be
	pop  bc                                          ; $477f: $c1
	ld   a, a                                        ; $4780: $7f
	ccf                                              ; $4781: $3f
	ld   a, a                                        ; $4782: $7f
	ld   c, h                                        ; $4783: $4c
	ld   a, a                                        ; $4784: $7f

jr_01c_4785:
	ld   [hl], e                                     ; $4785: $73
	add  b                                           ; $4786: $80
	rst  $38                                         ; $4787: $ff
	add  b                                           ; $4788: $80
	cp   $80                                         ; $4789: $fe $80
	inc  e                                           ; $478b: $1c
	add  b                                           ; $478c: $80
	ld   h, d                                        ; $478d: $62
	ld   bc, $01fe                                   ; $478e: $01 $fe $01
	rst  $38                                         ; $4791: $ff
	nop                                              ; $4792: $00
	rst  $38                                         ; $4793: $ff
	nop                                              ; $4794: $00
	rst  $38                                         ; $4795: $ff
	nop                                              ; $4796: $00
	rst  $38                                         ; $4797: $ff
	nop                                              ; $4798: $00
	rst  $38                                         ; $4799: $ff
	nop                                              ; $479a: $00
	sbc  b                                           ; $479b: $98
	nop                                              ; $479c: $00
	pop  hl                                          ; $479d: $e1
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	add  c                                           ; $47a1: $81
	rst  $38                                         ; $47a2: $ff
	ld   c, $7e                                      ; $47a3: $0e $7e
	rst  $38                                         ; $47a5: $ff
	ld   e, l                                        ; $47a6: $5d
	ccf                                              ; $47a7: $3f
	xor  $ff                                         ; $47a8: $ee $ff
	ret  z                                           ; $47aa: $c8

	cp   $38                                         ; $47ab: $fe $38
	db   $fd                                         ; $47ad: $fd
	ld   e, $1c                                      ; $47ae: $1e $1c
	di                                               ; $47b0: $f3
	ret  nz                                          ; $47b1: $c0

	ret  nc                                          ; $47b2: $d0

	add  a                                           ; $47b3: $87
	ret  nz                                          ; $47b4: $c0

	nop                                              ; $47b5: $00
	ldh  [$80], a                                    ; $47b6: $e0 $80
	nop                                              ; $47b8: $00
	scf                                              ; $47b9: $37
	add  b                                           ; $47ba: $80
	ld   h, a                                        ; $47bb: $67
	rst  JumpTable                                         ; $47bc: $df
	ld   e, e                                        ; $47bd: $5b
	ld   e, [hl]                                     ; $47be: $5e
	ld   a, a                                        ; $47bf: $7f
	ld   a, l                                        ; $47c0: $7d
	adc  l                                           ; $47c1: $8d
	dec  c                                           ; $47c2: $0d
	ld   [hl], c                                     ; $47c3: $71
	ld   bc, $818d                                   ; $47c4: $01 $8d $81
	add  d                                           ; $47c7: $82
	add  b                                           ; $47c8: $80
	ld   bc, $8900                                   ; $47c9: $01 $00 $89
	rlca                                             ; $47cc: $07
	ld   c, d                                        ; $47cd: $4a
	inc  bc                                          ; $47ce: $03
	pop  hl                                          ; $47cf: $e1
	pop  bc                                          ; $47d0: $c1
	ld   [de], a                                     ; $47d1: $12
	ldh  [c], a                                      ; $47d2: $e2
	db   $eb                                         ; $47d3: $eb
	di                                               ; $47d4: $f3
	ld   [hl], l                                     ; $47d5: $75
	db   $fd                                         ; $47d6: $fd
	cp   d                                           ; $47d7: $ba
	cp   $5d                                         ; $47d8: $fe $5d
	ld   a, a                                        ; $47da: $7f
	ld   bc, $f8e8                                   ; $47db: $01 $e8 $f8
	rst  $30                                         ; $47de: $f7
	ld   a, a                                        ; $47df: $7f
	db   $eb                                         ; $47e0: $eb
	xor  a                                           ; $47e1: $af
	push hl                                          ; $47e2: $e5
	rst  ToBoot                                         ; $47e3: $c7
	ld   [hl], d                                     ; $47e4: $72
	ld   h, e                                        ; $47e5: $63
	cp   c                                           ; $47e6: $b9
	or   c                                           ; $47e7: $b1
	call c, $2ed8                                    ; $47e8: $dc $d8 $2e
	ld   c, l                                        ; $47eb: $4d
	ld   h, e                                        ; $47ec: $63
	rrca                                             ; $47ed: $0f
	inc  c                                           ; $47ee: $0c
	ld   bc, $e0e1                                   ; $47ef: $01 $e1 $e0
	add  b                                           ; $47f2: $80
	cp   $07                                         ; $47f3: $fe $07
	pop  af                                          ; $47f5: $f1
	rst  $30                                         ; $47f6: $f7
	ld   h, [hl]                                     ; $47f7: $66
	ei                                               ; $47f8: $fb
	sbc  e                                           ; $47f9: $9b
	db   $fd                                         ; $47fa: $fd
	ld   bc, $80fb                                   ; $47fb: $01 $fb $80
	cp   a                                           ; $47fe: $bf
	inc  bc                                          ; $47ff: $03
	ccf                                              ; $4800: $3f
	cp   c                                           ; $4801: $b9
	and  c                                           ; $4802: $a1
	jr   nz, jr_01c_4785                             ; $4803: $20 $80

	ld   b, $80                                      ; $4805: $06 $80
	ld   d, [hl]                                     ; $4807: $56

Jump_01c_4808:
	add  b                                           ; $4808: $80
	ld   d, l                                        ; $4809: $55
	add  c                                           ; $480a: $81
	ld   d, e                                        ; $480b: $53
	nop                                              ; $480c: $00
	xor  h                                           ; $480d: $ac
	add  b                                           ; $480e: $80
	add  b                                           ; $480f: $80
	dec  c                                           ; $4810: $0d
	nop                                              ; $4811: $00
	ld   bc, $8200                                   ; $4812: $01 $00 $82
	ld   bc, $8345                                   ; $4815: $01 $45 $83
	xor  d                                           ; $4818: $aa
	rst  ToBoot                                         ; $4819: $c7
	call nc, $c8ce                                   ; $481a: $d4 $ce $c8
	db   $fc                                         ; $481d: $fc
	ld   b, a                                        ; $481e: $47
	add  c                                           ; $481f: $81
	nop                                              ; $4820: $00
	dec  d                                           ; $4821: $15
	add  b                                           ; $4822: $80
	nop                                              ; $4823: $00
	ld   b, b                                        ; $4824: $40
	nop                                              ; $4825: $00
	ld   bc, $7e00                                   ; $4826: $01 $00 $7e
	nop                                              ; $4829: $00
	jr   c, jr_01c_4870                              ; $482a: $38 $44

	add  e                                           ; $482c: $83
	nop                                              ; $482d: $00
	inc  b                                           ; $482e: $04
	nop                                              ; $482f: $00
	dec  b                                           ; $4830: $05
	nop                                              ; $4831: $00
	add  [hl]                                        ; $4832: $86
	nop                                              ; $4833: $00
	cp   b                                           ; $4834: $b8
	nop                                              ; $4835: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4836: $cf
	rrca                                             ; $4837: $0f
	add  b                                           ; $4838: $80
	inc  e                                           ; $4839: $1c
	ld   a, [bc]                                     ; $483a: $0a
	ld   [bc], a                                     ; $483b: $02
	nop                                              ; $483c: $00
	rst  $20                                         ; $483d: $e7
	ld   bc, $09dd                                   ; $483e: $01 $dd $09
	ld   b, [hl]                                     ; $4841: $46
	ld   b, $04                                      ; $4842: $06 $04
	dec  b                                           ; $4844: $05
	ld   a, [de]                                     ; $4845: $1a
	add  c                                           ; $4846: $81
	inc  bc                                          ; $4847: $03
	add  b                                           ; $4848: $80
	ld   [bc], a                                     ; $4849: $02
	ld   b, $c1                                      ; $484a: $06 $c1
	add  b                                           ; $484c: $80
	sbc  h                                           ; $484d: $9c
	add  b                                           ; $484e: $80
	ret  z                                           ; $484f: $c8

	cp   $fc                                         ; $4850: $fe $fc
	add  l                                           ; $4852: $85
	rst  $38                                         ; $4853: $ff
	ld   bc, $ff01                                   ; $4854: $01 $01 $ff
	add  b                                           ; $4857: $80
	dec  bc                                          ; $4858: $0b
	add  b                                           ; $4859: $80
	rla                                              ; $485a: $17
	nop                                              ; $485b: $00
	rrca                                             ; $485c: $0f
	add  b                                           ; $485d: $80
	ld   [hl], c                                     ; $485e: $71

jr_01c_485f:
	rlca                                             ; $485f: $07
	ld   sp, $9f3f                                   ; $4860: $31 $3f $9f
	cp   a                                           ; $4863: $bf
	ldh  [hScriptOpcodeParams], a                                    ; $4864: $e0 $a0
	rst  $38                                         ; $4866: $ff
	sbc  a                                           ; $4867: $9f
	add  e                                           ; $4868: $83
	rst  $38                                         ; $4869: $ff
	ld   [bc], a                                     ; $486a: $02
	ld   a, [$efea]                                  ; $486b: $fa $ea $ef
	add  b                                           ; $486e: $80
	rst  JumpTable                                         ; $486f: $df

jr_01c_4870:
	add  b                                           ; $4870: $80
	ld   a, $80                                      ; $4871: $3e $80
	add  hl, sp                                      ; $4873: $39
	add  b                                           ; $4874: $80
	rst  ToBoot                                         ; $4875: $c7
	add  e                                           ; $4876: $83
	rst  $38                                         ; $4877: $ff
	add  b                                           ; $4878: $80
	xor  d                                           ; $4879: $aa
	add  c                                           ; $487a: $81
	rst  $38                                         ; $487b: $ff
	add  b                                           ; $487c: $80
	rrca                                             ; $487d: $0f
	add  c                                           ; $487e: $81
	rst  $38                                         ; $487f: $ff
	ld   b, $bf                                      ; $4880: $06 $bf
	rst  $38                                         ; $4882: $ff
	ld   e, a                                        ; $4883: $5f
	rst  $38                                         ; $4884: $ff
	ld   e, a                                        ; $4885: $5f
	rst  $38                                         ; $4886: $ff
	cp   a                                           ; $4887: $bf
	add  d                                           ; $4888: $82
	rst  $38                                         ; $4889: $ff
	add  b                                           ; $488a: $80
	rst  $28                                         ; $488b: $ef
	add  b                                           ; $488c: $80
	rst  $20                                         ; $488d: $e7
	add  b                                           ; $488e: $80
	rst  ToBoot                                         ; $488f: $c7
	add  e                                           ; $4890: $83
	rst  $38                                         ; $4891: $ff
	ld   [bc], a                                     ; $4892: $02
	pop  bc                                          ; $4893: $c1
	ld   bc, $8038                                   ; $4894: $01 $38 $80
	add  b                                           ; $4897: $80
	ld   bc, $c4c0                                   ; $4898: $01 $c0 $c4
	add  b                                           ; $489b: $80
	ldh  [$80], a                                    ; $489c: $e0 $80
	ldh  a, [rSB]                                    ; $489e: $f0 $01
	or   b                                           ; $48a0: $b0
	or   d                                           ; $48a1: $b2
	add  b                                           ; $48a2: $80
	cp   b                                           ; $48a3: $b8
	ld   [$8138], sp                                 ; $48a4: $08 $38 $81
	ld   e, b                                        ; $48a7: $58
	and  h                                           ; $48a8: $a4
	cp   h                                           ; $48a9: $bc
	jr   jr_01c_48cb                                 ; $48aa: $18 $1f

	rrca                                             ; $48ac: $0f
	ld   c, $80                                      ; $48ad: $0e $80
	rla                                              ; $48af: $17
	ld   bc, $0b0a                                   ; $48b0: $01 $0a $0b
	add  b                                           ; $48b3: $80
	dec  b                                           ; $48b4: $05
	add  b                                           ; $48b5: $80
	inc  bc                                          ; $48b6: $03
	inc  bc                                          ; $48b7: $03
	ld   e, a                                        ; $48b8: $5f
	rst  $10                                         ; $48b9: $d7
	scf                                              ; $48ba: $37
	or   a                                           ; $48bb: $b7
	add  b                                           ; $48bc: $80
	rst  $30                                         ; $48bd: $f7
	nop                                              ; $48be: $00
	rst  $38                                         ; $48bf: $ff
	add  c                                           ; $48c0: $81
	ld   a, e                                        ; $48c1: $7b
	ld   b, $77                                      ; $48c2: $06 $77
	rst  $38                                         ; $48c4: $ff
	ld   sp, hl                                      ; $48c5: $f9
	cp   $fc                                         ; $48c6: $fe $fc
	cp   $c1                                         ; $48c8: $fe $c1
	add  c                                           ; $48ca: $81

jr_01c_48cb:
	nop                                              ; $48cb: $00
	add  b                                           ; $48cc: $80
	add  b                                           ; $48cd: $80
	ld   [bc], a                                     ; $48ce: $02
	nop                                              ; $48cf: $00
	add  b                                           ; $48d0: $80
	ret  nz                                          ; $48d1: $c0

	add  c                                           ; $48d2: $81
	nop                                              ; $48d3: $00
	nop                                              ; $48d4: $00
	add  b                                           ; $48d5: $80
	add  [hl]                                        ; $48d6: $86
	nop                                              ; $48d7: $00
	add  b                                           ; $48d8: $80
	ld   d, b                                        ; $48d9: $50
	add  b                                           ; $48da: $80
	ret  c                                           ; $48db: $d8

	add  b                                           ; $48dc: $80
	jr   nz, jr_01c_485f                             ; $48dd: $20 $80

	ret  c                                           ; $48df: $d8

	add  b                                           ; $48e0: $80
	ld   d, b                                        ; $48e1: $50
	dec  bc                                          ; $48e2: $0b
	nop                                              ; $48e3: $00
	ld   l, a                                        ; $48e4: $6f
	rra                                              ; $48e5: $1f
	ld   h, e                                        ; $48e6: $63
	rrca                                             ; $48e7: $0f
	dec  d                                           ; $48e8: $15
	rlca                                             ; $48e9: $07
	ld   a, [bc]                                     ; $48ea: $0a
	inc  bc                                          ; $48eb: $03
	inc  b                                           ; $48ec: $04
	nop                                              ; $48ed: $00
	inc  bc                                          ; $48ee: $03
	add  e                                           ; $48ef: $83
	nop                                              ; $48f0: $00
	ld   e, $29                                      ; $48f1: $1e $29
	rst  $10                                         ; $48f3: $d7
	ld   a, [hl+]                                    ; $48f4: $2a
	db   $eb                                         ; $48f5: $eb
	call nc, $e8f4                                   ; $48f6: $d4 $f4 $e8
	ld   hl, sp+$76                                  ; $48f9: $f8 $76
	rst  $38                                         ; $48fb: $ff
	add  hl, de                                      ; $48fc: $19
	ld   a, a                                        ; $48fd: $7f
	add  e                                           ; $48fe: $83
	rra                                              ; $48ff: $1f
	ld   h, h                                        ; $4900: $64
	rlca                                             ; $4901: $07
	ldh  [c], a                                      ; $4902: $e2
	dec  c                                           ; $4903: $0d
	add  hl, bc                                      ; $4904: $09
	db   $fd                                         ; $4905: $fd
	dec  b                                           ; $4906: $05
	ld   sp, hl                                      ; $4907: $f9
	db   $fd                                         ; $4908: $fd
	dec  b                                           ; $4909: $05
	db   $fd                                         ; $490a: $fd
	ld   sp, hl                                      ; $490b: $f9
	db   $fc                                         ; $490c: $fc
	inc  b                                           ; $490d: $04
	inc  e                                           ; $490e: $1c
	dec  a                                           ; $490f: $3d
	db   $dd                                         ; $4910: $dd
	add  b                                           ; $4911: $80
	ei                                               ; $4912: $fb
	add  b                                           ; $4913: $80
	ld   d, a                                        ; $4914: $57
	add  b                                           ; $4915: $80
	ld   d, c                                        ; $4916: $51
	add  b                                           ; $4917: $80
	ld   e, d                                        ; $4918: $5a
	add  b                                           ; $4919: $80
	ld   l, e                                        ; $491a: $6b
	add  b                                           ; $491b: $80
	ld   l, l                                        ; $491c: $6d
	add  b                                           ; $491d: $80
	ld   [hl], $80                                   ; $491e: $36 $80
	sbc  e                                           ; $4920: $9b
	add  b                                           ; $4921: $80
	call z, $e080                                    ; $4922: $cc $80 $e0
	add  b                                           ; $4925: $80
	db   $dd                                         ; $4926: $dd
	add  b                                           ; $4927: $80
	cp   d                                           ; $4928: $ba
	add  b                                           ; $4929: $80
	ld   a, [hl-]                                    ; $492a: $3a
	add  b                                           ; $492b: $80
	or   l                                           ; $492c: $b5
	add  b                                           ; $492d: $80
	ld   d, l                                        ; $492e: $55
	add  b                                           ; $492f: $80
	push hl                                          ; $4930: $e5
	add  hl, bc                                      ; $4931: $09
	add  hl, de                                      ; $4932: $19
	and  $00                                         ; $4933: $e6 $00
	add  b                                           ; $4935: $80
	nop                                              ; $4936: $00
	ld   b, c                                        ; $4937: $41
	add  b                                           ; $4938: $80
	ld   h, b                                        ; $4939: $60
	nop                                              ; $493a: $00
	inc  sp                                          ; $493b: $33
	add  c                                           ; $493c: $81
	nop                                              ; $493d: $00
	add  b                                           ; $493e: $80
	add  b                                           ; $493f: $80
	ld   a, [bc]                                     ; $4940: $0a
	ldh  a, [$c0]                                    ; $4941: $f0 $c0
	ld   b, h                                        ; $4943: $44
	ld   bc, $00e6                                   ; $4944: $01 $e6 $00
	add  c                                           ; $4947: $81
	nop                                              ; $4948: $00
	ld   bc, $0300                                   ; $4949: $01 $00 $03
	add  c                                           ; $494c: $81
	nop                                              ; $494d: $00
	nop                                              ; $494e: $00
	rlca                                             ; $494f: $07
	add  c                                           ; $4950: $81
	nop                                              ; $4951: $00
	rla                                              ; $4952: $17
	ld   e, l                                        ; $4953: $5d
	cp   b                                           ; $4954: $b8
	ld   c, a                                        ; $4955: $4f
	ld   e, a                                        ; $4956: $5f
	and  l                                           ; $4957: $a5
	xor  e                                           ; $4958: $ab
	ld   bc, $8000                                   ; $4959: $01 $00 $80
	nop                                              ; $495c: $00
	ld   [hl], b                                     ; $495d: $70
	nop                                              ; $495e: $00
	rrca                                             ; $495f: $0f
	nop                                              ; $4960: $00
	ret  nz                                          ; $4961: $c0

	nop                                              ; $4962: $00
	ld   l, h                                        ; $4963: $6c
	xor  a                                           ; $4964: $af
	ld   [hl], e                                     ; $4965: $73
	ld   a, a                                        ; $4966: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4967: $cf
	rst  $38                                         ; $4968: $ff
	ld   [$802a], a                                  ; $4969: $ea $2a $80
	dec  b                                           ; $496c: $05
	ld   b, $82                                      ; $496d: $06 $82
	ld   [bc], a                                     ; $496f: $02
	ld   b, c                                        ; $4970: $41
	ld   bc, $8020                                   ; $4971: $01 $20 $80
	sbc  a                                           ; $4974: $9f
	add  c                                           ; $4975: $81
	rst  $38                                         ; $4976: $ff
	inc  bc                                          ; $4977: $03
	db   $fc                                         ; $4978: $fc
	rst  $38                                         ; $4979: $ff
	ld   a, [$80fe]                                  ; $497a: $fa $fe $80
	ld   a, [hl]                                     ; $497d: $7e
	dec  b                                           ; $497e: $05
	cp   e                                           ; $497f: $bb
	cp   a                                           ; $4980: $bf
	ld   d, l                                        ; $4981: $55
	ld   d, a                                        ; $4982: $57
	ld   a, [hl+]                                    ; $4983: $2a
	dec  hl                                          ; $4984: $2b
	add  b                                           ; $4985: $80
	rst  $38                                         ; $4986: $ff
	inc  b                                           ; $4987: $04
	adc  a                                           ; $4988: $8f
	rst  $38                                         ; $4989: $ff
	ld   b, a                                        ; $498a: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $498b: $cf
	inc  bc                                          ; $498c: $03
	add  e                                           ; $498d: $83
	rlca                                             ; $498e: $07
	ld   bc, $8e8a                                   ; $498f: $01 $8a $8e
	add  b                                           ; $4992: $80
	db   $fd                                         ; $4993: $fd
	nop                                              ; $4994: $00
	rlca                                             ; $4995: $07
	add  a                                           ; $4996: $87
	rst  $38                                         ; $4997: $ff
	add  b                                           ; $4998: $80
	ld   a, a                                        ; $4999: $7f
	add  b                                           ; $499a: $80
	cp   a                                           ; $499b: $bf
	add  b                                           ; $499c: $80
	ld   e, a                                        ; $499d: $5f
	add  e                                           ; $499e: $83
	rst  $38                                         ; $499f: $ff
	dec  bc                                          ; $49a0: $0b
	cp   $ff                                         ; $49a1: $fe $ff
	ld   hl, sp-$02                                  ; $49a3: $f8 $fe
	ldh  [$f8], a                                    ; $49a5: $e0 $f8
	ret  nz                                          ; $49a7: $c0

	ldh  [$80], a                                    ; $49a8: $e0 $80
	ret  nz                                          ; $49aa: $c0

	nop                                              ; $49ab: $00
	ld   a, a                                        ; $49ac: $7f
	add  b                                           ; $49ad: $80
	inc  e                                           ; $49ae: $1c
	inc  bc                                          ; $49af: $03
	add  b                                           ; $49b0: $80
	rst  $38                                         ; $49b1: $ff
	nop                                              ; $49b2: $00
	add  b                                           ; $49b3: $80
	add  a                                           ; $49b4: $87
	nop                                              ; $49b5: $00
	add  b                                           ; $49b6: $80
	dec  b                                           ; $49b7: $05
	ld   bc, $0383                                   ; $49b8: $01 $83 $03
	add  b                                           ; $49bb: $80
	ld   bc, $c310                                   ; $49bc: $01 $10 $c3
	inc  bc                                          ; $49bf: $03
	ld   h, c                                        ; $49c0: $61
	ld   bc, $0030                                   ; $49c1: $01 $30 $00
	inc  e                                           ; $49c4: $1c
	nop                                              ; $49c5: $00
	rrca                                             ; $49c6: $0f
	nop                                              ; $49c7: $00
	db   $fd                                         ; $49c8: $fd
	db   $fc                                         ; $49c9: $fc
	ld   hl, sp-$0c                                  ; $49ca: $f8 $f4
	add  d                                           ; $49cc: $82
	ld   hl, sp-$74                                  ; $49cd: $f8 $8c
	add  b                                           ; $49cf: $80
	ldh  a, [rTAC]                                   ; $49d0: $f0 $07
	ldh  [$e8], a                                    ; $49d2: $e0 $e8
	ldh  [rSVBK], a                                  ; $49d4: $e0 $70
	ld   b, b                                        ; $49d6: $40
	ldh  [rP1], a                                    ; $49d7: $e0 $00
	ret  nz                                          ; $49d9: $c0

	sub  d                                           ; $49da: $92
	nop                                              ; $49db: $00
	add  b                                           ; $49dc: $80
	ld   [$0580], sp                                 ; $49dd: $08 $80 $05
	add  b                                           ; $49e0: $80
	inc  bc                                          ; $49e1: $03
	add  b                                           ; $49e2: $80
	rlca                                             ; $49e3: $07
	add  b                                           ; $49e4: $80
	ld   [bc], a                                     ; $49e5: $02
	add  b                                           ; $49e6: $80
	rra                                              ; $49e7: $1f
	add  b                                           ; $49e8: $80
	nop                                              ; $49e9: $00
	add  b                                           ; $49ea: $80
	ld   b, b                                        ; $49eb: $40
	add  b                                           ; $49ec: $80
	ld   b, d                                        ; $49ed: $42
	add  b                                           ; $49ee: $80
	ld   d, h                                        ; $49ef: $54
	add  b                                           ; $49f0: $80
	ld   hl, sp-$80                                  ; $49f1: $f8 $80
	ld   e, h                                        ; $49f3: $5c
	add  b                                           ; $49f4: $80
	add  sp, $04                                     ; $49f5: $e8 $04
	cp   a                                           ; $49f7: $bf
	cp   b                                           ; $49f8: $b8
	nop                                              ; $49f9: $00
	ld   b, a                                        ; $49fa: $47
	ld   b, b                                        ; $49fb: $40
	add  d                                           ; $49fc: $82
	nop                                              ; $49fd: $00
	add  d                                           ; $49fe: $82
	inc  c                                           ; $49ff: $0c
	add  d                                           ; $4a00: $82
	nop                                              ; $4a01: $00
	dec  b                                           ; $4a02: $05
	db   $fc                                         ; $4a03: $fc
	inc  bc                                          ; $4a04: $03
	rst  ToBoot                                         ; $4a05: $c7
	rla                                              ; $4a06: $17
	scf                                              ; $4a07: $37
	rlca                                             ; $4a08: $07
	add  b                                           ; $4a09: $80
	rrca                                             ; $4a0a: $0f
	dec  b                                           ; $4a0b: $05
	cpl                                              ; $4a0c: $2f
	rrca                                             ; $4a0d: $0f
	ld   a, e                                        ; $4a0e: $7b
	dec  sp                                          ; $4a0f: $3b
	rst  $38                                         ; $4a10: $ff
	ld   a, a                                        ; $4a11: $7f
	add  b                                           ; $4a12: $80
	rra                                              ; $4a13: $1f
	inc  bc                                          ; $4a14: $03
	rst  $38                                         ; $4a15: $ff
	di                                               ; $4a16: $f3
	rst  $38                                         ; $4a17: $ff

jr_01c_4a18:
	db   $fc                                         ; $4a18: $fc
	add  b                                           ; $4a19: $80
	rst  $38                                         ; $4a1a: $ff
	nop                                              ; $4a1b: $00
	rst  $28                                         ; $4a1c: $ef
	add  b                                           ; $4a1d: $80
	db   $fd                                         ; $4a1e: $fd
	ld   bc, $d8f8                                   ; $4a1f: $01 $f8 $d8
	add  b                                           ; $4a22: $80
	ld   hl, sp+$03                                  ; $4a23: $f8 $03
	ld   [hl], b                                     ; $4a25: $70
	jr   nc, jr_01c_4a18                             ; $4a26: $30 $f0

	adc  a                                           ; $4a28: $8f
	add  b                                           ; $4a29: $80
	xor  $02                                         ; $4a2a: $ee $02

jr_01c_4a2c:
	ld   l, [hl]                                     ; $4a2c: $6e
	xor  $80                                         ; $4a2d: $ee $80
	add  c                                           ; $4a2f: $81
	cp   $80                                         ; $4a30: $fe $80
	ld   e, $83                                      ; $4a32: $1e $83
	nop                                              ; $4a34: $00
	ld   a, [bc]                                     ; $4a35: $0a
	jp   $3b00                                       ; $4a36: $c3 $00 $3b


	ret  nz                                          ; $4a39: $c0

	cp   $b8                                         ; $4a3a: $fe $b8
	ret  nz                                          ; $4a3c: $c0

	ld   b, $86                                      ; $4a3d: $06 $86
	sbc  h                                           ; $4a3f: $9c
	cp   h                                           ; $4a40: $bc
	add  b                                           ; $4a41: $80
	jp   $ce03                                       ; $4a42: $c3 $03 $ce


	ld   e, [hl]                                     ; $4a45: $5e
	ld   h, c                                        ; $4a46: $61
	db   $eb                                         ; $4a47: $eb
	add  c                                           ; $4a48: $81
	nop                                              ; $4a49: $00
	rrca                                             ; $4a4a: $0f
	rlca                                             ; $4a4b: $07
	nop                                              ; $4a4c: $00
	db   $fd                                         ; $4a4d: $fd
	nop                                              ; $4a4e: $00
	or   e                                           ; $4a4f: $b3
	jr   nc, jr_01c_4a2c                             ; $4a50: $30 $da

	nop                                              ; $4a52: $00
	rra                                              ; $4a53: $1f
	nop                                              ; $4a54: $00
	ld   l, d                                        ; $4a55: $6a
	add  b                                           ; $4a56: $80
	add  e                                           ; $4a57: $83
	jr   z, jr_01c_4a6c                              ; $4a58: $28 $12

	dec  d                                           ; $4a5a: $15
	add  b                                           ; $4a5b: $80
	ld   a, [bc]                                     ; $4a5c: $0a
	add  b                                           ; $4a5d: $80
	dec  b                                           ; $4a5e: $05
	add  b                                           ; $4a5f: $80
	ld   [bc], a                                     ; $4a60: $02
	add  b                                           ; $4a61: $80
	ld   bc, $0080                                   ; $4a62: $01 $80 $00
	ld   de, $0080                                   ; $4a65: $11 $80 $00
	jr   nc, jr_01c_4a6a                             ; $4a68: $30 $00

jr_01c_4a6a:
	ret  z                                           ; $4a6a: $c8

	ld   b, b                                        ; $4a6b: $40

jr_01c_4a6c:
	add  h                                           ; $4a6c: $84
	and  b                                           ; $4a6d: $a0
	ld   b, d                                        ; $4a6e: $42
	ld   d, b                                        ; $4a6f: $50
	and  l                                           ; $4a70: $a5

jr_01c_4a71:
	xor  h                                           ; $4a71: $ac
	ld   d, d                                        ; $4a72: $52
	ld   d, [hl]                                     ; $4a73: $56
	xor  c                                           ; $4a74: $a9
	xor  e                                           ; $4a75: $ab
	ld   d, h                                        ; $4a76: $54
	ld   d, l                                        ; $4a77: $55
	add  b                                           ; $4a78: $80
	ld   [bc], a                                     ; $4a79: $02
	add  [hl]                                        ; $4a7a: $86
	nop                                              ; $4a7b: $00
	add  hl, bc                                      ; $4a7c: $09
	add  b                                           ; $4a7d: $80
	nop                                              ; $4a7e: $00
	ld   b, b                                        ; $4a7f: $40
	nop                                              ; $4a80: $00
	or   b                                           ; $4a81: $b0
	add  b                                           ; $4a82: $80
	ld   a, b                                        ; $4a83: $78
	ld   hl, sp-$80                                  ; $4a84: $f8 $80
	ldh  a, [$8a]                                    ; $4a86: $f0 $8a
	nop                                              ; $4a88: $00
	add  b                                           ; $4a89: $80
	cpl                                              ; $4a8a: $2f
	ld   bc, $1e1f                                   ; $4a8b: $01 $1f $1e
	add  b                                           ; $4a8e: $80
	ld   c, $0c                                      ; $4a8f: $0e $0c
	dec  bc                                          ; $4a91: $0b
	ld   [$080e], sp                                 ; $4a92: $08 $0e $08
	inc  e                                           ; $4a95: $1c
	nop                                              ; $4a96: $00
	jr   c, jr_01c_4a99                              ; $4a97: $38 $00

jr_01c_4a99:
	ldh  [rP1], a                                    ; $4a99: $e0 $00
	ld   b, b                                        ; $4a9b: $40
	nop                                              ; $4a9c: $00
	add  b                                           ; $4a9d: $80
	adc  e                                           ; $4a9e: $8b
	nop                                              ; $4a9f: $00
	add  b                                           ; $4aa0: $80
	inc  c                                           ; $4aa1: $0c
	nop                                              ; $4aa2: $00
	ld   [de], a                                     ; $4aa3: $12
	add  c                                           ; $4aa4: $81
	ld   e, $01                                      ; $4aa5: $1e $01
	nop                                              ; $4aa7: $00
	inc  c                                           ; $4aa8: $0c
	adc  [hl]                                        ; $4aa9: $8e
	nop                                              ; $4aaa: $00
	add  d                                           ; $4aab: $82
	ld   h, b                                        ; $4aac: $60
	add  e                                           ; $4aad: $83
	nop                                              ; $4aae: $00
	add  b                                           ; $4aaf: $80
	ld   [bc], a                                     ; $4ab0: $02
	add  b                                           ; $4ab1: $80
	rlca                                             ; $4ab2: $07
	add  b                                           ; $4ab3: $80
	inc  bc                                          ; $4ab4: $03
	add  b                                           ; $4ab5: $80
	add  l                                           ; $4ab6: $85
	add  b                                           ; $4ab7: $80
	adc  b                                           ; $4ab8: $88
	add  h                                           ; $4ab9: $84
	nop                                              ; $4aba: $00
	add  b                                           ; $4abb: $80
	add  sp, -$80                                    ; $4abc: $e8 $80
	ld   e, h                                        ; $4abe: $5c
	add  b                                           ; $4abf: $80
	ld   hl, sp-$80                                  ; $4ac0: $f8 $80
	ld   d, h                                        ; $4ac2: $54
	add  b                                           ; $4ac3: $80
	ld   b, d                                        ; $4ac4: $42
	add  b                                           ; $4ac5: $80
	ld   b, b                                        ; $4ac6: $40
	add  l                                           ; $4ac7: $85
	nop                                              ; $4ac8: $00
	add  hl, bc                                      ; $4ac9: $09
	ld   bc, $1f00                                   ; $4aca: $01 $00 $1f
	ld   bc, $1838                                   ; $4acd: $01 $38 $18
	ld   [hl], l                                     ; $4ad0: $75
	dec  [hl]                                        ; $4ad1: $35
	db   $eb                                         ; $4ad2: $eb
	ld   l, e                                        ; $4ad3: $6b
	add  b                                           ; $4ad4: $80
	ld   h, a                                        ; $4ad5: $67
	inc  bc                                          ; $4ad6: $03
	and  e                                           ; $4ad7: $a3
	inc  hl                                          ; $4ad8: $23
	db   $fc                                         ; $4ad9: $fc
	ld   a, h                                        ; $4ada: $7c
	add  b                                           ; $4adb: $80
	cp   a                                           ; $4adc: $bf
	ld   bc, $fbfa                                   ; $4add: $01 $fa $fb
	add  b                                           ; $4ae0: $80
	ld   a, a                                        ; $4ae1: $7f
	jr   jr_01c_4a71                                 ; $4ae2: $18 $8d

	adc  a                                           ; $4ae4: $8f
	di                                               ; $4ae5: $f3
	pop  af                                          ; $4ae6: $f1
	ld   a, l                                        ; $4ae7: $7d
	ld   a, [hl]                                     ; $4ae8: $7e
	add  [hl]                                        ; $4ae9: $86
	ldh  [$e4], a                                    ; $4aea: $e0 $e4
	ld   h, b                                        ; $4aec: $60
	sub  b                                           ; $4aed: $90
	add  b                                           ; $4aee: $80
	rst  $38                                         ; $4aef: $ff
	ldh  a, [rIE]                                    ; $4af0: $f0 $ff
	cp   a                                           ; $4af2: $bf
	xor  a                                           ; $4af3: $af
	rlca                                             ; $4af4: $07
	rla                                              ; $4af5: $17
	nop                                              ; $4af6: $00
	ldh  [rP1], a                                    ; $4af7: $e0 $00
	dec  a                                           ; $4af9: $3d
	ld   [bc], a                                     ; $4afa: $02
	scf                                              ; $4afb: $37
	add  b                                           ; $4afc: $80
	push bc                                          ; $4afd: $c5
	ld   [bc], a                                     ; $4afe: $02
	sub  b                                           ; $4aff: $90
	ldh  a, [rSVBK]                                  ; $4b00: $f0 $70
	add  b                                           ; $4b02: $80
	ldh  [$15], a                                    ; $4b03: $e0 $15
	adc  b                                           ; $4b05: $88
	add  b                                           ; $4b06: $80
	ld   a, c                                        ; $4b07: $79
	nop                                              ; $4b08: $00
	adc  [hl]                                        ; $4b09: $8e
	add  b                                           ; $4b0a: $80
	ld   hl, sp+$00                                  ; $4b0b: $f8 $00
	ret  nz                                          ; $4b0d: $c0

	nop                                              ; $4b0e: $00
	ld   h, b                                        ; $4b0f: $60
	nop                                              ; $4b10: $00
	jr   nc, jr_01c_4b13                             ; $4b11: $30 $00

jr_01c_4b13:
	jr   jr_01c_4b15                                 ; $4b13: $18 $00

jr_01c_4b15:
	ld   c, $00                                      ; $4b15: $0e $00
	rlca                                             ; $4b17: $07
	nop                                              ; $4b18: $00
	ld   bc, $8000                                   ; $4b19: $01 $00 $80
	ld   a, [bc]                                     ; $4b1c: $0a
	add  d                                           ; $4b1d: $82
	nop                                              ; $4b1e: $00
	db   $10                                         ; $4b1f: $10
	inc  bc                                          ; $4b20: $03
	nop                                              ; $4b21: $00
	rrca                                             ; $4b22: $0f
	nop                                              ; $4b23: $00
	inc  a                                           ; $4b24: $3c
	nop                                              ; $4b25: $00
	ldh  a, [rP1]                                    ; $4b26: $f0 $00
	ret  nz                                          ; $4b28: $c0

	nop                                              ; $4b29: $00
	cp   b                                           ; $4b2a: $b8
	ret  nz                                          ; $4b2b: $c0

	ld   a, $00                                      ; $4b2c: $3e $00
	rst  ToBoot                                         ; $4b2e: $c7
	nop                                              ; $4b2f: $00
	add  c                                           ; $4b30: $81
	add  a                                           ; $4b31: $87
	nop                                              ; $4b32: $00
	rlca                                             ; $4b33: $07
	inc  bc                                          ; $4b34: $03
	nop                                              ; $4b35: $00
	rrca                                             ; $4b36: $0f
	nop                                              ; $4b37: $00
	db   $fc                                         ; $4b38: $fc
	nop                                              ; $4b39: $00
	ldh  a, [rP1]                                    ; $4b3a: $f0 $00
	add  b                                           ; $4b3c: $80
	jr   nc, jr_01c_4b3f                             ; $4b3d: $30 $00

jr_01c_4b3f:
	ld   c, b                                        ; $4b3f: $48
	add  c                                           ; $4b40: $81
	ld   a, b                                        ; $4b41: $78
	ld   bc, $3000                                   ; $4b42: $01 $00 $30
	ld   h, l                                        ; $4b45: $65
	ld   bc, $ff8c                                   ; $4b46: $01 $8c $ff
	ld   [bc], a                                     ; $4b49: $02
	nop                                              ; $4b4a: $00
	rst  $38                                         ; $4b4b: $ff
	nop                                              ; $4b4c: $00
	adc  e                                           ; $4b4d: $8b
	rst  $38                                         ; $4b4e: $ff
	ld   [bc], a                                     ; $4b4f: $02
	nop                                              ; $4b50: $00
	rst  $38                                         ; $4b51: $ff
	nop                                              ; $4b52: $00
	adc  e                                           ; $4b53: $8b
	rst  $38                                         ; $4b54: $ff
	ld   [bc], a                                     ; $4b55: $02
	nop                                              ; $4b56: $00
	rst  $38                                         ; $4b57: $ff
	nop                                              ; $4b58: $00
	adc  e                                           ; $4b59: $8b
	rst  $38                                         ; $4b5a: $ff
	ld   [bc], a                                     ; $4b5b: $02
	nop                                              ; $4b5c: $00
	rst  $38                                         ; $4b5d: $ff
	nop                                              ; $4b5e: $00
	adc  e                                           ; $4b5f: $8b
	rst  $38                                         ; $4b60: $ff
	ld   [bc], a                                     ; $4b61: $02
	nop                                              ; $4b62: $00
	rst  $38                                         ; $4b63: $ff
	nop                                              ; $4b64: $00
	add  c                                           ; $4b65: $81
	rst  $38                                         ; $4b66: $ff
	nop                                              ; $4b67: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b68: $cf
	add  l                                           ; $4b69: $85
	rst  $38                                         ; $4b6a: $ff
	inc  b                                           ; $4b6b: $04
	ldh  a, [rIE]                                    ; $4b6c: $f0 $ff
	ccf                                              ; $4b6e: $3f
	rst  $38                                         ; $4b6f: $ff
	nop                                              ; $4b70: $00
	add  c                                           ; $4b71: $81
	rst  $38                                         ; $4b72: $ff
	nop                                              ; $4b73: $00
	ld   e, b                                        ; $4b74: $58
	add  c                                           ; $4b75: $81
	rst  $38                                         ; $4b76: $ff
	ld   [$fff8], sp                                 ; $4b77: $08 $f8 $ff
	ld   d, b                                        ; $4b7a: $50
	rst  $38                                         ; $4b7b: $ff
	ccf                                              ; $4b7c: $3f
	rst  $38                                         ; $4b7d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b7e: $cf
	rst  $38                                         ; $4b7f: $ff
	nop                                              ; $4b80: $00
	add  c                                           ; $4b81: $81
	rst  $38                                         ; $4b82: $ff
	ld   b, $0e                                      ; $4b83: $06 $0e
	rst  $38                                         ; $4b85: $ff
	cp   $ff                                         ; $4b86: $fe $ff
	rrca                                             ; $4b88: $0f
	rst  $38                                         ; $4b89: $ff
	ld   b, $81                                      ; $4b8a: $06 $81
	rst  $38                                         ; $4b8c: $ff
	ld   [bc], a                                     ; $4b8d: $02
	ld   sp, hl                                      ; $4b8e: $f9
	rst  $38                                         ; $4b8f: $ff
	nop                                              ; $4b90: $00
	add  c                                           ; $4b91: $81
	rst  $38                                         ; $4b92: $ff
	ld   [bc], a                                     ; $4b93: $02
	inc  b                                           ; $4b94: $04
	rst  $38                                         ; $4b95: $ff
	and  h                                           ; $4b96: $a4
	add  c                                           ; $4b97: $81
	rst  $38                                         ; $4b98: $ff
	ld   b, $a7                                      ; $4b99: $06 $a7
	rst  $38                                         ; $4b9b: $ff
	cp   a                                           ; $4b9c: $bf
	rst  $38                                         ; $4b9d: $ff
	cp   b                                           ; $4b9e: $b8
	rst  $38                                         ; $4b9f: $ff
	nop                                              ; $4ba0: $00
	add  c                                           ; $4ba1: $81
	rst  $38                                         ; $4ba2: $ff
	nop                                              ; $4ba3: $00
	inc  sp                                          ; $4ba4: $33
	add  l                                           ; $4ba5: $85
	rst  $38                                         ; $4ba6: $ff
	inc  b                                           ; $4ba7: $04
	cp   $ff                                         ; $4ba8: $fe $ff
	call $00ff                                       ; $4baa: $cd $ff $00
	add  c                                           ; $4bad: $81
	rst  $38                                         ; $4bae: $ff
	nop                                              ; $4baf: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bb0: $cf
	add  a                                           ; $4bb1: $87
	rst  $38                                         ; $4bb2: $ff
	ld   [bc], a                                     ; $4bb3: $02
	jr   nc, @+$01                                   ; $4bb4: $30 $ff

	nop                                              ; $4bb6: $00
	adc  e                                           ; $4bb7: $8b
	rst  $38                                         ; $4bb8: $ff
	ld   [bc], a                                     ; $4bb9: $02
	nop                                              ; $4bba: $00
	rst  $38                                         ; $4bbb: $ff
	nop                                              ; $4bbc: $00
	adc  e                                           ; $4bbd: $8b
	rst  $38                                         ; $4bbe: $ff
	ld   [bc], a                                     ; $4bbf: $02
	nop                                              ; $4bc0: $00
	rst  $38                                         ; $4bc1: $ff
	nop                                              ; $4bc2: $00
	adc  e                                           ; $4bc3: $8b
	rst  $38                                         ; $4bc4: $ff
	ld   [bc], a                                     ; $4bc5: $02
	nop                                              ; $4bc6: $00
	rst  $38                                         ; $4bc7: $ff
	nop                                              ; $4bc8: $00
	adc  e                                           ; $4bc9: $8b
	rst  $38                                         ; $4bca: $ff
	ld   [bc], a                                     ; $4bcb: $02
	nop                                              ; $4bcc: $00
	rst  $38                                         ; $4bcd: $ff
	nop                                              ; $4bce: $00
	adc  e                                           ; $4bcf: $8b
	rst  $38                                         ; $4bd0: $ff
	ld   [bc], a                                     ; $4bd1: $02
	nop                                              ; $4bd2: $00
	rst  $38                                         ; $4bd3: $ff
	nop                                              ; $4bd4: $00
	adc  h                                           ; $4bd5: $8c
	rst  $38                                         ; $4bd6: $ff
	add  b                                           ; $4bd7: $80
	nop                                              ; $4bd8: $00
	adc  h                                           ; $4bd9: $8c
	rst  $38                                         ; $4bda: $ff
	add  b                                           ; $4bdb: $80
	nop                                              ; $4bdc: $00
	adc  h                                           ; $4bdd: $8c
	rst  $38                                         ; $4bde: $ff
	add  b                                           ; $4bdf: $80
	nop                                              ; $4be0: $00
	adc  h                                           ; $4be1: $8c
	rst  $38                                         ; $4be2: $ff
	add  b                                           ; $4be3: $80
	nop                                              ; $4be4: $00
	adc  h                                           ; $4be5: $8c
	rst  $38                                         ; $4be6: $ff
	add  b                                           ; $4be7: $80
	nop                                              ; $4be8: $00
	add  c                                           ; $4be9: $81
	rst  $38                                         ; $4bea: $ff
	nop                                              ; $4beb: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bec: $cf
	add  l                                           ; $4bed: $85
	rst  $38                                         ; $4bee: $ff
	nop                                              ; $4bef: $00
	ldh  a, [$80]                                    ; $4bf0: $f0 $80
	rst  $38                                         ; $4bf2: $ff
	ld   bc, $003f                                   ; $4bf3: $01 $3f $00

jr_01c_4bf6:
	add  c                                           ; $4bf6: $81
	rst  $38                                         ; $4bf7: $ff
	nop                                              ; $4bf8: $00
	ld   e, b                                        ; $4bf9: $58
	add  c                                           ; $4bfa: $81
	rst  $38                                         ; $4bfb: $ff
	ld   [$fff8], sp                                 ; $4bfc: $08 $f8 $ff
	ld   d, b                                        ; $4bff: $50
	rst  $38                                         ; $4c00: $ff
	ccf                                              ; $4c01: $3f
	rst  $38                                         ; $4c02: $ff
	ldh  a, [$c0]                                    ; $4c03: $f0 $c0
	nop                                              ; $4c05: $00
	add  c                                           ; $4c06: $81
	rst  $38                                         ; $4c07: $ff
	ld   b, $0e                                      ; $4c08: $06 $0e
	rst  $38                                         ; $4c0a: $ff
	cp   $ff                                         ; $4c0b: $fe $ff
	rrca                                             ; $4c0d: $0f
	rst  $38                                         ; $4c0e: $ff
	ld   b, $81                                      ; $4c0f: $06 $81
	rst  $38                                         ; $4c11: $ff
	ld   [bc], a                                     ; $4c12: $02
	rra                                              ; $4c13: $1f
	add  hl, de                                      ; $4c14: $19
	nop                                              ; $4c15: $00
	add  c                                           ; $4c16: $81
	rst  $38                                         ; $4c17: $ff
	ld   [bc], a                                     ; $4c18: $02
	inc  b                                           ; $4c19: $04
	rst  $38                                         ; $4c1a: $ff
	and  h                                           ; $4c1b: $a4
	add  c                                           ; $4c1c: $81
	rst  $38                                         ; $4c1d: $ff
	ld   b, $a7                                      ; $4c1e: $06 $a7
	rst  $38                                         ; $4c20: $ff

jr_01c_4c21:
	cp   a                                           ; $4c21: $bf
	rst  $38                                         ; $4c22: $ff
	db   $fc                                         ; $4c23: $fc
	cp   e                                           ; $4c24: $bb
	nop                                              ; $4c25: $00
	add  c                                           ; $4c26: $81
	rst  $38                                         ; $4c27: $ff
	nop                                              ; $4c28: $00
	inc  sp                                          ; $4c29: $33
	add  l                                           ; $4c2a: $85
	rst  $38                                         ; $4c2b: $ff
	inc  b                                           ; $4c2c: $04
	cp   $ff                                         ; $4c2d: $fe $ff
	db   $fd                                         ; $4c2f: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c30: $cf
	nop                                              ; $4c31: $00
	add  c                                           ; $4c32: $81
	rst  $38                                         ; $4c33: $ff
	nop                                              ; $4c34: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c35: $cf
	adc  b                                           ; $4c36: $88
	rst  $38                                         ; $4c37: $ff
	ld   bc, $0030                                   ; $4c38: $01 $30 $00
	adc  h                                           ; $4c3b: $8c
	rst  $38                                         ; $4c3c: $ff
	add  b                                           ; $4c3d: $80
	nop                                              ; $4c3e: $00
	adc  h                                           ; $4c3f: $8c
	rst  $38                                         ; $4c40: $ff
	add  b                                           ; $4c41: $80
	nop                                              ; $4c42: $00
	adc  h                                           ; $4c43: $8c
	rst  $38                                         ; $4c44: $ff
	add  b                                           ; $4c45: $80
	nop                                              ; $4c46: $00
	adc  h                                           ; $4c47: $8c
	rst  $38                                         ; $4c48: $ff
	add  b                                           ; $4c49: $80
	nop                                              ; $4c4a: $00
	adc  h                                           ; $4c4b: $8c
	rst  $38                                         ; $4c4c: $ff
	add  b                                           ; $4c4d: $80
	nop                                              ; $4c4e: $00
	add  c                                           ; $4c4f: $81
	rst  $38                                         ; $4c50: $ff
	ld   bc, $ff00                                   ; $4c51: $01 $00 $ff
	adc  c                                           ; $4c54: $89
	nop                                              ; $4c55: $00
	add  c                                           ; $4c56: $81
	rst  $38                                         ; $4c57: $ff
	ld   bc, $ff00                                   ; $4c58: $01 $00 $ff
	adc  c                                           ; $4c5b: $89
	nop                                              ; $4c5c: $00
	add  c                                           ; $4c5d: $81
	rst  $38                                         ; $4c5e: $ff
	ld   bc, $ff00                                   ; $4c5f: $01 $00 $ff
	adc  c                                           ; $4c62: $89
	nop                                              ; $4c63: $00
	add  c                                           ; $4c64: $81
	rst  $38                                         ; $4c65: $ff
	ld   bc, $ff00                                   ; $4c66: $01 $00 $ff
	adc  c                                           ; $4c69: $89
	nop                                              ; $4c6a: $00
	add  c                                           ; $4c6b: $81
	rst  $38                                         ; $4c6c: $ff
	ld   bc, $ff00                                   ; $4c6d: $01 $00 $ff
	adc  b                                           ; $4c70: $88
	nop                                              ; $4c71: $00
	nop                                              ; $4c72: $00
	jr   nc, jr_01c_4bf6                             ; $4c73: $30 $81

	rst  $38                                         ; $4c75: $ff
	ld   bc, $ff30                                   ; $4c76: $01 $30 $ff
	adc  c                                           ; $4c79: $89
	nop                                              ; $4c7a: $00
	add  c                                           ; $4c7b: $81
	rst  $38                                         ; $4c7c: $ff
	ld   bc, $ff00                                   ; $4c7d: $01 $00 $ff
	adc  b                                           ; $4c80: $88
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	add  hl, de                                      ; $4c83: $19
	add  c                                           ; $4c84: $81
	rst  $38                                         ; $4c85: $ff
	ld   bc, $ff19                                   ; $4c86: $01 $19 $ff
	adc  b                                           ; $4c89: $88
	nop                                              ; $4c8a: $00
	nop                                              ; $4c8b: $00
	dec  de                                          ; $4c8c: $1b
	add  c                                           ; $4c8d: $81
	rst  $38                                         ; $4c8e: $ff
	ld   bc, $ff1b                                   ; $4c8f: $01 $1b $ff
	adc  b                                           ; $4c92: $88

jr_01c_4c93:
	nop                                              ; $4c93: $00
	dec  b                                           ; $4c94: $05
	rrca                                             ; $4c95: $0f
	rst  $38                                         ; $4c96: $ff
	or   $ff                                         ; $4c97: $f6 $ff
	ld   b, $ff                                      ; $4c99: $06 $ff
	adc  b                                           ; $4c9b: $88
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	jr   nc, jr_01c_4c21                             ; $4c9e: $30 $81

	rst  $38                                         ; $4ca0: $ff
	ld   bc, $ff30                                   ; $4ca1: $01 $30 $ff
	adc  c                                           ; $4ca4: $89
	nop                                              ; $4ca5: $00
	add  c                                           ; $4ca6: $81
	rst  $38                                         ; $4ca7: $ff
	ld   bc, $ff00                                   ; $4ca8: $01 $00 $ff
	adc  c                                           ; $4cab: $89
	nop                                              ; $4cac: $00
	add  c                                           ; $4cad: $81
	rst  $38                                         ; $4cae: $ff
	ld   bc, $ff00                                   ; $4caf: $01 $00 $ff
	adc  c                                           ; $4cb2: $89
	nop                                              ; $4cb3: $00
	add  c                                           ; $4cb4: $81
	rst  $38                                         ; $4cb5: $ff
	ld   bc, $ff00                                   ; $4cb6: $01 $00 $ff
	adc  c                                           ; $4cb9: $89
	nop                                              ; $4cba: $00
	add  c                                           ; $4cbb: $81
	rst  $38                                         ; $4cbc: $ff
	ld   bc, $ff00                                   ; $4cbd: $01 $00 $ff
	adc  c                                           ; $4cc0: $89
	nop                                              ; $4cc1: $00
	add  c                                           ; $4cc2: $81
	rst  $38                                         ; $4cc3: $ff
	ld   bc, $ff00                                   ; $4cc4: $01 $00 $ff
	adc  c                                           ; $4cc7: $89
	nop                                              ; $4cc8: $00
	pop  de                                          ; $4cc9: $d1
	rst  $38                                         ; $4cca: $ff
	nop                                              ; $4ccb: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ccc: $cf
	add  l                                           ; $4ccd: $85
	rst  $38                                         ; $4cce: $ff
	nop                                              ; $4ccf: $00
	ldh  a, [$81]                                    ; $4cd0: $f0 $81
	rst  $38                                         ; $4cd2: $ff
	nop                                              ; $4cd3: $00
	ret  nz                                          ; $4cd4: $c0

	add  c                                           ; $4cd5: $81
	rst  $38                                         ; $4cd6: $ff
	nop                                              ; $4cd7: $00
	ld   e, b                                        ; $4cd8: $58
	add  c                                           ; $4cd9: $81
	rst  $38                                         ; $4cda: $ff
	ld   [$fff8], sp                                 ; $4cdb: $08 $f8 $ff
	ld   d, b                                        ; $4cde: $50
	rst  $38                                         ; $4cdf: $ff
	ccf                                              ; $4ce0: $3f
	rst  $38                                         ; $4ce1: $ff
	ldh  a, [rIE]                                    ; $4ce2: $f0 $ff
	ccf                                              ; $4ce4: $3f
	add  c                                           ; $4ce5: $81
	rst  $38                                         ; $4ce6: $ff
	ld   b, $0e                                      ; $4ce7: $06 $0e
	rst  $38                                         ; $4ce9: $ff
	cp   $ff                                         ; $4cea: $fe $ff
	rrca                                             ; $4cec: $0f
	rst  $38                                         ; $4ced: $ff
	ld   b, $81                                      ; $4cee: $06 $81
	rst  $38                                         ; $4cf0: $ff
	ld   [bc], a                                     ; $4cf1: $02
	rra                                              ; $4cf2: $1f
	rst  $38                                         ; $4cf3: $ff
	and  $81                                         ; $4cf4: $e6 $81
	rst  $38                                         ; $4cf6: $ff
	ld   [bc], a                                     ; $4cf7: $02
	inc  b                                           ; $4cf8: $04
	rst  $38                                         ; $4cf9: $ff
	and  h                                           ; $4cfa: $a4
	add  c                                           ; $4cfb: $81
	rst  $38                                         ; $4cfc: $ff
	ld   b, $a7                                      ; $4cfd: $06 $a7
	rst  $38                                         ; $4cff: $ff
	cp   a                                           ; $4d00: $bf
	rst  $38                                         ; $4d01: $ff
	db   $fc                                         ; $4d02: $fc
	rst  $38                                         ; $4d03: $ff
	ld   b, h                                        ; $4d04: $44
	add  c                                           ; $4d05: $81
	rst  $38                                         ; $4d06: $ff
	nop                                              ; $4d07: $00
	inc  sp                                          ; $4d08: $33
	add  l                                           ; $4d09: $85
	rst  $38                                         ; $4d0a: $ff
	inc  b                                           ; $4d0b: $04
	cp   $ff                                         ; $4d0c: $fe $ff
	db   $fd                                         ; $4d0e: $fd
	rst  $38                                         ; $4d0f: $ff
	jr   nc, jr_01c_4c93                             ; $4d10: $30 $81

	rst  $38                                         ; $4d12: $ff
	nop                                              ; $4d13: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d14: $cf
	adc  c                                           ; $4d15: $89
	rst  $38                                         ; $4d16: $ff
	nop                                              ; $4d17: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d18: $cf
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	sbc  h                                           ; $4d1b: $9c
	rst  $38                                         ; $4d1c: $ff
	nop                                              ; $4d1d: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d1e: $cf
	add  a                                           ; $4d1f: $87
	rst  $38                                         ; $4d20: $ff
	inc  b                                           ; $4d21: $04
	ldh  a, [rIE]                                    ; $4d22: $f0 $ff
	rst  JumpTable                                         ; $4d24: $df
	rst  $38                                         ; $4d25: $ff
	ldh  [$89], a                                    ; $4d26: $e0 $89
	rst  $38                                         ; $4d28: $ff
	ld   b, $3f                                      ; $4d29: $06 $3f
	rst  $38                                         ; $4d2b: $ff
	cp   $ff                                         ; $4d2c: $fe $ff
	ld   a, $ff                                      ; $4d2e: $3e $ff
	and  $81                                         ; $4d30: $e6 $81
	rst  $38                                         ; $4d32: $ff
	inc  c                                           ; $4d33: $0c
	rst  JumpTable                                         ; $4d34: $df
	rst  $38                                         ; $4d35: $ff
	rst  $30                                         ; $4d36: $f7
	rst  $38                                         ; $4d37: $ff
	cp   a                                           ; $4d38: $bf
	rst  $38                                         ; $4d39: $ff
	rst  $28                                         ; $4d3a: $ef
	rst  $38                                         ; $4d3b: $ff
	rra                                              ; $4d3c: $1f
	rst  $38                                         ; $4d3d: $ff
	ld   a, [hl]                                     ; $4d3e: $7e
	rst  $38                                         ; $4d3f: $ff
	db   $e4                                         ; $4d40: $e4
	add  e                                           ; $4d41: $83
	rst  $38                                         ; $4d42: $ff
	ld   [bc], a                                     ; $4d43: $02
	rra                                              ; $4d44: $1f
	rst  $38                                         ; $4d45: $ff
	rra                                              ; $4d46: $1f
	add  c                                           ; $4d47: $81
	rst  $38                                         ; $4d48: $ff
	ld   [$ff1f], sp                                 ; $4d49: $08 $1f $ff
	inc  b                                           ; $4d4c: $04
	rst  $38                                         ; $4d4d: $ff
	ldh  a, [rIE]                                    ; $4d4e: $f0 $ff
	or   $ff                                         ; $4d50: $f6 $ff
	ld   sp, hl                                      ; $4d52: $f9
	add  e                                           ; $4d53: $83
	rst  $38                                         ; $4d54: $ff
	ld   b, $be                                      ; $4d55: $06 $be
	rst  $38                                         ; $4d57: $ff
	ld   a, a                                        ; $4d58: $7f
	rst  $38                                         ; $4d59: $ff
	ld   a, $ff                                      ; $4d5a: $3e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d5c: $cf
	add  e                                           ; $4d5d: $83
	rst  $38                                         ; $4d5e: $ff
	nop                                              ; $4d5f: $00
	xor  a                                           ; $4d60: $af
	add  c                                           ; $4d61: $81
	rst  $38                                         ; $4d62: $ff
	inc  b                                           ; $4d63: $04
	ld   e, a                                        ; $4d64: $5f
	rst  $38                                         ; $4d65: $ff
	cp   a                                           ; $4d66: $bf
	rst  $38                                         ; $4d67: $ff
	ld   a, a                                        ; $4d68: $7f
	ret  nc                                          ; $4d69: $d0

	rst  $38                                         ; $4d6a: $ff
	add  b                                           ; $4d6b: $80
	nop                                              ; $4d6c: $00
	adc  d                                           ; $4d6d: $8a
	rst  $38                                         ; $4d6e: $ff
	add  d                                           ; $4d6f: $82
	nop                                              ; $4d70: $00
	adc  d                                           ; $4d71: $8a
	rst  $38                                         ; $4d72: $ff
	add  d                                           ; $4d73: $82
	nop                                              ; $4d74: $00
	adc  d                                           ; $4d75: $8a
	rst  $38                                         ; $4d76: $ff
	add  d                                           ; $4d77: $82
	nop                                              ; $4d78: $00
	adc  d                                           ; $4d79: $8a
	rst  $38                                         ; $4d7a: $ff
	add  d                                           ; $4d7b: $82
	nop                                              ; $4d7c: $00
	adc  d                                           ; $4d7d: $8a
	rst  $38                                         ; $4d7e: $ff
	add  d                                           ; $4d7f: $82
	nop                                              ; $4d80: $00
	add  c                                           ; $4d81: $81
	rst  $38                                         ; $4d82: $ff
	nop                                              ; $4d83: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d84: $cf
	add  l                                           ; $4d85: $85
	rst  $38                                         ; $4d86: $ff
	ld   bc, $3ff0                                   ; $4d87: $01 $f0 $3f
	add  c                                           ; $4d8a: $81
	nop                                              ; $4d8b: $00
	add  c                                           ; $4d8c: $81
	rst  $38                                         ; $4d8d: $ff
	nop                                              ; $4d8e: $00
	ld   e, b                                        ; $4d8f: $58
	add  c                                           ; $4d90: $81
	rst  $38                                         ; $4d91: $ff
	dec  b                                           ; $4d92: $05
	ld   hl, sp-$01                                  ; $4d93: $f8 $ff
	ld   d, b                                        ; $4d95: $50
	rst  $38                                         ; $4d96: $ff
	ccf                                              ; $4d97: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d98: $cf
	add  c                                           ; $4d99: $81
	nop                                              ; $4d9a: $00
	add  c                                           ; $4d9b: $81
	rst  $38                                         ; $4d9c: $ff
	ld   b, $0e                                      ; $4d9d: $06 $0e
	rst  $38                                         ; $4d9f: $ff
	cp   $ff                                         ; $4da0: $fe $ff
	rrca                                             ; $4da2: $0f
	rst  $38                                         ; $4da3: $ff
	ld   b, $80                                      ; $4da4: $06 $80
	rst  $38                                         ; $4da6: $ff
	nop                                              ; $4da7: $00
	ld   sp, hl                                      ; $4da8: $f9
	add  c                                           ; $4da9: $81
	nop                                              ; $4daa: $00
	add  c                                           ; $4dab: $81
	rst  $38                                         ; $4dac: $ff
	ld   [bc], a                                     ; $4dad: $02
	inc  b                                           ; $4dae: $04
	rst  $38                                         ; $4daf: $ff
	and  h                                           ; $4db0: $a4
	add  c                                           ; $4db1: $81
	rst  $38                                         ; $4db2: $ff
	inc  bc                                          ; $4db3: $03
	and  a                                           ; $4db4: $a7
	rst  $38                                         ; $4db5: $ff
	cp   a                                           ; $4db6: $bf
	cp   b                                           ; $4db7: $b8
	add  c                                           ; $4db8: $81
	nop                                              ; $4db9: $00
	add  c                                           ; $4dba: $81
	rst  $38                                         ; $4dbb: $ff
	nop                                              ; $4dbc: $00
	inc  sp                                          ; $4dbd: $33
	add  l                                           ; $4dbe: $85
	rst  $38                                         ; $4dbf: $ff
	ld   bc, $cdfe                                   ; $4dc0: $01 $fe $cd
	add  c                                           ; $4dc3: $81
	nop                                              ; $4dc4: $00
	add  c                                           ; $4dc5: $81
	rst  $38                                         ; $4dc6: $ff
	nop                                              ; $4dc7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dc8: $cf
	add  [hl]                                        ; $4dc9: $86
	rst  $38                                         ; $4dca: $ff
	nop                                              ; $4dcb: $00
	jr   nc, @-$7d                                   ; $4dcc: $30 $81

	nop                                              ; $4dce: $00
	adc  d                                           ; $4dcf: $8a
	rst  $38                                         ; $4dd0: $ff
	add  d                                           ; $4dd1: $82
	nop                                              ; $4dd2: $00
	adc  d                                           ; $4dd3: $8a
	rst  $38                                         ; $4dd4: $ff
	add  d                                           ; $4dd5: $82
	nop                                              ; $4dd6: $00
	adc  d                                           ; $4dd7: $8a
	rst  $38                                         ; $4dd8: $ff
	add  d                                           ; $4dd9: $82
	nop                                              ; $4dda: $00
	adc  d                                           ; $4ddb: $8a
	rst  $38                                         ; $4ddc: $ff
	add  d                                           ; $4ddd: $82
	nop                                              ; $4dde: $00
	adc  d                                           ; $4ddf: $8a
	rst  $38                                         ; $4de0: $ff
	add  b                                           ; $4de1: $80
	nop                                              ; $4de2: $00
	add  e                                           ; $4de3: $83
	rst  $38                                         ; $4de4: $ff
	ld   bc, $ff00                                   ; $4de5: $01 $00 $ff
	add  a                                           ; $4de8: $87
	nop                                              ; $4de9: $00
	add  e                                           ; $4dea: $83
	rst  $38                                         ; $4deb: $ff
	ld   bc, $ff00                                   ; $4dec: $01 $00 $ff
	add  a                                           ; $4def: $87
	nop                                              ; $4df0: $00
	add  e                                           ; $4df1: $83
	rst  $38                                         ; $4df2: $ff
	ld   bc, $ff00                                   ; $4df3: $01 $00 $ff
	add  a                                           ; $4df6: $87
	nop                                              ; $4df7: $00
	add  e                                           ; $4df8: $83
	rst  $38                                         ; $4df9: $ff
	ld   bc, $ff00                                   ; $4dfa: $01 $00 $ff
	add  a                                           ; $4dfd: $87
	nop                                              ; $4dfe: $00
	add  e                                           ; $4dff: $83
	rst  $38                                         ; $4e00: $ff
	ld   bc, $ff00                                   ; $4e01: $01 $00 $ff
	add  a                                           ; $4e04: $87
	nop                                              ; $4e05: $00
	add  e                                           ; $4e06: $83
	rst  $38                                         ; $4e07: $ff
	ld   bc, $ff00                                   ; $4e08: $01 $00 $ff
	add  b                                           ; $4e0b: $80
	nop                                              ; $4e0c: $00
	add  h                                           ; $4e0d: $84
	jr   nc, jr_01c_4e10                             ; $4e0e: $30 $00

jr_01c_4e10:
	nop                                              ; $4e10: $00
	add  e                                           ; $4e11: $83
	rst  $38                                         ; $4e12: $ff
	ld   bc, $ff00                                   ; $4e13: $01 $00 $ff
	add  b                                           ; $4e16: $80
	nop                                              ; $4e17: $00
	add  d                                           ; $4e18: $82
	and  a                                           ; $4e19: $a7
	add  b                                           ; $4e1a: $80
	and  b                                           ; $4e1b: $a0
	nop                                              ; $4e1c: $00
	nop                                              ; $4e1d: $00
	add  e                                           ; $4e1e: $83
	rst  $38                                         ; $4e1f: $ff
	ld   bc, $ff00                                   ; $4e20: $01 $00 $ff
	add  b                                           ; $4e23: $80
	nop                                              ; $4e24: $00
	add  b                                           ; $4e25: $80
	pop  af                                          ; $4e26: $f1
	add  b                                           ; $4e27: $80
	ldh  a, [$81]                                    ; $4e28: $f0 $81
	nop                                              ; $4e2a: $00
	add  e                                           ; $4e2b: $83
	rst  $38                                         ; $4e2c: $ff
	ld   bc, $ff00                                   ; $4e2d: $01 $00 $ff
	add  b                                           ; $4e30: $80
	nop                                              ; $4e31: $00
	add  b                                           ; $4e32: $80
	ei                                               ; $4e33: $fb
	add  d                                           ; $4e34: $82
	and  b                                           ; $4e35: $a0
	nop                                              ; $4e36: $00
	nop                                              ; $4e37: $00
	add  e                                           ; $4e38: $83
	rst  $38                                         ; $4e39: $ff
	ld   bc, $ff00                                   ; $4e3a: $01 $00 $ff
	add  b                                           ; $4e3d: $80
	nop                                              ; $4e3e: $00
	add  h                                           ; $4e3f: $84
	call z, $0000                                   ; $4e40: $cc $00 $00
	add  e                                           ; $4e43: $83
	rst  $38                                         ; $4e44: $ff
	ld   bc, $ff00                                   ; $4e45: $01 $00 $ff

jr_01c_4e48:
	add  b                                           ; $4e48: $80
	nop                                              ; $4e49: $00
	add  h                                           ; $4e4a: $84
	jr   nc, jr_01c_4e4d                             ; $4e4b: $30 $00

jr_01c_4e4d:
	nop                                              ; $4e4d: $00
	add  e                                           ; $4e4e: $83
	rst  $38                                         ; $4e4f: $ff
	ld   bc, $ff00                                   ; $4e50: $01 $00 $ff
	add  a                                           ; $4e53: $87
	nop                                              ; $4e54: $00
	add  e                                           ; $4e55: $83
	rst  $38                                         ; $4e56: $ff
	ld   bc, $ff00                                   ; $4e57: $01 $00 $ff
	add  a                                           ; $4e5a: $87
	nop                                              ; $4e5b: $00
	add  e                                           ; $4e5c: $83
	rst  $38                                         ; $4e5d: $ff
	ld   bc, $ff00                                   ; $4e5e: $01 $00 $ff
	add  a                                           ; $4e61: $87
	nop                                              ; $4e62: $00
	add  e                                           ; $4e63: $83
	rst  $38                                         ; $4e64: $ff
	ld   bc, $ff00                                   ; $4e65: $01 $00 $ff
	add  a                                           ; $4e68: $87
	nop                                              ; $4e69: $00
	add  e                                           ; $4e6a: $83
	rst  $38                                         ; $4e6b: $ff
	ld   bc, $ff00                                   ; $4e6c: $01 $00 $ff
	add  [hl]                                        ; $4e6f: $86
	nop                                              ; $4e70: $00
	add  b                                           ; $4e71: $80
	rst  $38                                         ; $4e72: $ff
	adc  h                                           ; $4e73: $8c
	nop                                              ; $4e74: $00
	add  b                                           ; $4e75: $80
	rst  $38                                         ; $4e76: $ff
	adc  h                                           ; $4e77: $8c
	nop                                              ; $4e78: $00
	add  b                                           ; $4e79: $80
	rst  $38                                         ; $4e7a: $ff
	adc  h                                           ; $4e7b: $8c
	nop                                              ; $4e7c: $00
	add  b                                           ; $4e7d: $80
	rst  $38                                         ; $4e7e: $ff
	adc  h                                           ; $4e7f: $8c
	nop                                              ; $4e80: $00
	add  b                                           ; $4e81: $80
	rst  $38                                         ; $4e82: $ff
	adc  h                                           ; $4e83: $8c
	nop                                              ; $4e84: $00
	add  b                                           ; $4e85: $80
	rst  $38                                         ; $4e86: $ff
	add  [hl]                                        ; $4e87: $86
	jr   nc, @-$7e                                   ; $4e88: $30 $80

	ccf                                              ; $4e8a: $3f
	add  b                                           ; $4e8b: $80
	rra                                              ; $4e8c: $1f
	add  b                                           ; $4e8d: $80
	nop                                              ; $4e8e: $00
	add  b                                           ; $4e8f: $80
	rst  $38                                         ; $4e90: $ff
	add  [hl]                                        ; $4e91: $86
	nop                                              ; $4e92: $00
	add  b                                           ; $4e93: $80
	ret  nz                                          ; $4e94: $c0

	add  b                                           ; $4e95: $80
	pop  bc                                          ; $4e96: $c1
	add  b                                           ; $4e97: $80
	nop                                              ; $4e98: $00
	add  b                                           ; $4e99: $80
	rst  $38                                         ; $4e9a: $ff
	add  b                                           ; $4e9b: $80
	add  hl, de                                      ; $4e9c: $19
	add  b                                           ; $4e9d: $80
	add  hl, sp                                      ; $4e9e: $39
	add  b                                           ; $4e9f: $80
	ld   sp, $7180                                   ; $4ea0: $31 $80 $71
	add  b                                           ; $4ea3: $80
	ld   h, c                                        ; $4ea4: $61
	add  b                                           ; $4ea5: $80
	add  c                                           ; $4ea6: $81
	add  b                                           ; $4ea7: $80
	nop                                              ; $4ea8: $00
	add  b                                           ; $4ea9: $80
	rst  $38                                         ; $4eaa: $ff
	add  d                                           ; $4eab: $82
	dec  de                                          ; $4eac: $1b
	add  b                                           ; $4ead: $80
	ei                                               ; $4eae: $fb
	add  d                                           ; $4eaf: $82
	dec  de                                          ; $4eb0: $1b
	add  b                                           ; $4eb1: $80
	ei                                               ; $4eb2: $fb

jr_01c_4eb3:
	add  b                                           ; $4eb3: $80
	nop                                              ; $4eb4: $00
	add  b                                           ; $4eb5: $80
	rst  $38                                         ; $4eb6: $ff
	add  b                                           ; $4eb7: $80
	ld   b, $84                                      ; $4eb8: $06 $84
	nop                                              ; $4eba: $00
	add  b                                           ; $4ebb: $80
	ld   b, c                                        ; $4ebc: $41
	add  b                                           ; $4ebd: $80
	pop  bc                                          ; $4ebe: $c1
	add  b                                           ; $4ebf: $80
	nop                                              ; $4ec0: $00
	add  b                                           ; $4ec1: $80
	rst  $38                                         ; $4ec2: $ff
	add  d                                           ; $4ec3: $82
	jr   nc, jr_01c_4e48                             ; $4ec4: $30 $82

	ld   h, b                                        ; $4ec6: $60
	add  b                                           ; $4ec7: $80
	ret  nz                                          ; $4ec8: $c0

	add  b                                           ; $4ec9: $80
	add  b                                           ; $4eca: $80
	add  b                                           ; $4ecb: $80
	nop                                              ; $4ecc: $00
	add  b                                           ; $4ecd: $80
	rst  $38                                         ; $4ece: $ff
	adc  h                                           ; $4ecf: $8c
	nop                                              ; $4ed0: $00
	add  b                                           ; $4ed1: $80
	rst  $38                                         ; $4ed2: $ff
	adc  h                                           ; $4ed3: $8c
	nop                                              ; $4ed4: $00
	add  b                                           ; $4ed5: $80
	rst  $38                                         ; $4ed6: $ff
	adc  h                                           ; $4ed7: $8c
	nop                                              ; $4ed8: $00
	add  b                                           ; $4ed9: $80
	rst  $38                                         ; $4eda: $ff
	adc  h                                           ; $4edb: $8c
	nop                                              ; $4edc: $00

jr_01c_4edd:
	add  b                                           ; $4edd: $80
	rst  $38                                         ; $4ede: $ff
	adc  h                                           ; $4edf: $8c
	nop                                              ; $4ee0: $00


RleXorTileData_EnterName::
	db $45, $01, $80, $00, $80, $e4, $80, $ae, $80, $44, $80, $6e, $80, $a4, $92, $00, $00, $ff, $86, $00, $80, $ff, $01, $00, $ff, $81, $00, $00, $ff, $86, $00, $80
	db $c0, $05, $60, $e0, $30, $70, $10, $d3, $8d, $08, $00, $0b, $85, $00, $86, $fe, $80, $01, $06, $03, $02, $06, $fc, $b4, $88, $b8, $85, $a0, $00, $20, $93, $00
	db $06, $20, $00, $02, $00, $5b, $00, $5c, $83, $00, $00, $01, $81, $00, $04, $60, $00, $4c, $00, $08, $89, $00, $08, $40, $00, $04, $00, $b6, $00, $b2, $00, $c4
	db $81, $00, $08, $98, $00, $38, $00, $02, $00, $3c, $00, $1a, $89, $00, $00, $10, $81, $00, $02, $6e, $00, $6c, $85, $00, $00, $30, $81, $00, $02, $66, $00, $44
	db $89, $00, $00, $08, $81, $00, $02, $f6, $00, $f6, $85, $00, $00, $18, $81, $00, $02, $70, $00, $60, $89, $00, $0a, $22, $00, $5d, $00, $5d, $00, $2a, $00, $36
	db $00, $14, $81, $00, $06, $55, $00, $6b, $00, $77, $00, $63, $89, $00, $14, $a8, $00, $e0, $00, $e6, $00, $f4, $00, $b0, $00, $4e, $00, $40, $00, $4e, $00, $e0
	db $00, $e0, $00, $aa, $89, $00, $14, $44, $00, $11, $00, $7f, $00, $75, $00, $0e, $00, $6e, $00, $6e, $00, $0e, $00, $0e, $00, $02, $00, $53, $89, $00, $00, $10
	db $81, $00, $06, $ee, $00, $ee, $00, $60, $00, $e0, $81, $00, $06, $e0, $00, $60, $00, $30, $00, $20, $87, $00, $08, $08, $00, $40, $00, $16, $00, $74, $00, $60
	db $81, $00, $0a, $60, $00, $75, $00, $17, $00, $1c, $00, $37, $00, $63, $87, $00, $08, $10, $00, $ee, $00, $7c, $00, $fe, $00, $6c, $81, $00, $0a, $8c, $00, $0c
	db $00, $40, $00, $60, $00, $2e, $00, $9e, $83, $00, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24
	db $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24
	db $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $00, $f0, $81, $08, $00, $38, $81, $00, $81, $c0, $93, $00, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10
	db $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10
	db $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $9a, $00, $00, $fe, $81, $00, $01, $7e, $80, $80
	db $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80
	db $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80
	db $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80
	db $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $84, $00, $08
	db $40, $00, $04, $00, $b6, $00, $b2, $00, $c4, $81, $00, $08, $98, $00, $38, $00, $02, $00, $3a, $00, $1c, $89, $00, $00, $10, $81, $00, $10, $ee, $00, $ee, $00
	db $ee, $00, $ee, $00, $60, $00, $e8, $00, $0c, $00, $f6, $00, $62, $89, $00, $14, $38, $00, $38, $00, $fe, $00, $fa, $00, $0c, $00, $18, $00, $38, $00, $60, $00
	db $c0, $00, $0e, $00, $86, $83, $00, $80, $80, $80, $42, $80, $24, $80, $08, $80, $10, $80, $24, $80, $42, $80, $01, $80, $80, $80, $42, $80, $24, $80, $08, $80
	db $10, $80, $24, $80, $42, $80, $01, $81, $00, $82, $c0, $82, $e0, $82, $f0, $82, $f8, $82, $f0, $82, $e0, $82, $c0, $83, $00, $00, $18, $83, $00, $02, $20, $00
	db $20, $8b, $00, $02, $24, $00, $3c, $85, $00, $02, $3c, $00, $7a, $83, $00, $08, $40, $00, $02, $00, $1c, $00, $38, $00, $40, $83, $00, $02, $1e, $00, $7e, $85
	db $00, $02, $3c, $00, $7a, $83, $00, $04, $40, $00, $1a, $00, $1a, $81, $00, $00, $60, $83, $00, $02, $5a, $00, $3c, $85, $00, $00, $16, $83, $00, $00, $30, $83
	db $00, $00, $60, $81, $00, $02, $38, $00, $78, $83, $00, $00, $06, $85, $00, $02, $7c, $00, $3c, $85, $00, $02, $3c, $00, $7a, $83, $00, $00, $40, $81, $00, $02
	db $7a, $00, $3c, $85, $00, $02, $3c, $00, $5c, $85, $00, $02, $1c, $00, $1e, $87, $00, $02, $5e, $00, $3c, $85, $00, $02, $7e, $00, $38, $83, $00, $06, $40, $00
	db $02, $00, $0c, $00, $10, $87, $00, $00, $18, $85, $00, $02, $3c, $00, $7a, $85, $00, $02, $7a, $00, $7a, $87, $00, $02, $7a, $00, $3c, $85, $00, $02, $3c, $00
	db $7a, $85, $00, $02, $78, $00, $38, $87, $00, $02, $3a, $00, $3c, $85, $00, $02, $3c, $00, $7a, $91, $00, $02, $7a, $00, $3c, $84, $00, $82, $03, $82, $07, $82
	db $0f, $82, $1f, $82, $0f, $82, $07, $82, $03, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $fa, $00



	db   $1e                                  ; $5276: $1e
	ld   bc, $0093                                   ; $5277: $01 $93 $00
	inc  bc                                          ; $527a: $03
	db   $10                                         ; $527b: $10
	jr   nz, jr_01c_52ba                             ; $527c: $20 $3c

	inc  sp                                          ; $527e: $33
	add  c                                           ; $527f: $81
	ccf                                              ; $5280: $3f
	dec  b                                           ; $5281: $05
	inc  a                                           ; $5282: $3c
	ld   a, a                                        ; $5283: $7f
	ld   a, l                                        ; $5284: $7d
	ld   a, [hl]                                     ; $5285: $7e
	inc  a                                           ; $5286: $3c
	ld   a, h                                        ; $5287: $7c
	add  b                                           ; $5288: $80
	ld   a, b                                        ; $5289: $78
	ld   bc, $7838                                   ; $528a: $01 $38 $78
	add  c                                           ; $528d: $81
	ld   a, h                                        ; $528e: $7c
	ld   [$043c], sp                                 ; $528f: $08 $3c $04
	inc  e                                           ; $5292: $1c
	inc  d                                           ; $5293: $14
	inc  l                                           ; $5294: $2c
	inc  e                                           ; $5295: $1c
	ld   a, h                                        ; $5296: $7c
	jr   c, jr_01c_5311                              ; $5297: $38 $78

	add  b                                           ; $5299: $80
	jr   c, @-$7e                                    ; $529a: $38 $80

	db $30, $80

	ld   [hl], b                                     ; $529e: $70
	add  b                                           ; $529f: $80
	ld   h, b                                        ; $52a0: $60
	add  b                                           ; $52a1: $80
	db $20, $88

	nop                                              ; $52a4: $00
	add  b                                           ; $52a5: $80
	ld   bc, $0382                                   ; $52a6: $01 $82 $03
	add  h                                           ; $52a9: $84
	rlca                                             ; $52aa: $07
	add  b                                           ; $52ab: $80
	ld   b, $80                                      ; $52ac: $06 $80
	inc  b                                           ; $52ae: $04
	add  c                                           ; $52af: $81
	nop                                              ; $52b0: $00
	inc  bc                                          ; $52b1: $03
	ret  z                                           ; $52b2: $c8

	jr   c, @-$06                                    ; $52b3: $38 $f8

	ld   [$0083], sp                                 ; $52b5: $08 $83 $00
	add  b                                           ; $52b8: $80
	ld   h, b                                        ; $52b9: $60

jr_01c_52ba:
	add  b                                           ; $52ba: $80
	ldh  [$80], a                                    ; $52bb: $e0 $80
	ldh  a, [$80]                                    ; $52bd: $f0 $80
	ld   hl, sp+$0a                                  ; $52bf: $f8 $0a
	db   $fc                                         ; $52c1: $fc
	cp   $dc                                         ; $52c2: $fe $dc
	cp   $9f                                         ; $52c4: $fe $9f
	rst  $38                                         ; $52c6: $ff
	ld   a, a                                        ; $52c7: $7f
	rst  $38                                         ; $52c8: $ff
	rst  JumpTable                                         ; $52c9: $df
	rst  $38                                         ; $52ca: $ff
	rst  $28                                         ; $52cb: $ef
	add  b                                           ; $52cc: $80
	ccf                                              ; $52cd: $3f
	dec  b                                           ; $52ce: $05
	rra                                              ; $52cf: $1f
	rla                                              ; $52d0: $17
	rra                                              ; $52d1: $1f
	dec  de                                          ; $52d2: $1b
	rrca                                             ; $52d3: $0f
	inc  c                                           ; $52d4: $0c
	add  b                                           ; $52d5: $80
	inc  bc                                          ; $52d6: $03
	add  l                                           ; $52d7: $85
	nop                                              ; $52d8: $00
	add  b                                           ; $52d9: $80
	rlca                                             ; $52da: $07
	add  b                                           ; $52db: $80
	rra                                              ; $52dc: $1f
	add  d                                           ; $52dd: $82
	ld   a, a                                        ; $52de: $7f
	inc  c                                           ; $52df: $0c
	ccf                                              ; $52e0: $3f
	cp   a                                           ; $52e1: $bf
	rrca                                             ; $52e2: $0f
	cp   a                                           ; $52e3: $bf
	or   b                                           ; $52e4: $b0
	cp   a                                           ; $52e5: $bf
	rst  $38                                         ; $52e6: $ff
	rst  JumpTable                                         ; $52e7: $df
	sbc  [hl]                                        ; $52e8: $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52e9: $cf
	ld   c, c                                        ; $52ea: $49
	cp   a                                           ; $52eb: $bf
	and  a                                           ; $52ec: $a7

jr_01c_52ed:
	add  b                                           ; $52ed: $80
	ld   a, a                                        ; $52ee: $7f
	nop                                              ; $52ef: $00
	rra                                              ; $52f0: $1f
	add  b                                           ; $52f1: $80
	ld   b, $82                                      ; $52f2: $06 $82
	nop                                              ; $52f4: $00
	add  b                                           ; $52f5: $80
	ldh  [$80], a                                    ; $52f6: $e0 $80
	ldh  a, [$80]                                    ; $52f8: $f0 $80
	ld   hl, sp-$80                                  ; $52fa: $f8 $80
	db   $fc                                         ; $52fc: $fc
	add  d                                           ; $52fd: $82
	cp   $82                                         ; $52fe: $fe $82
	db   $fc                                         ; $5300: $fc
	inc  bc                                          ; $5301: $03
	ld   a, b                                        ; $5302: $78
	ld   hl, sp+$78                                  ; $5303: $f8 $78
	ld   hl, sp-$80                                  ; $5305: $f8 $80
	ldh  [$82], a                                    ; $5307: $e0 $82
	ld   hl, sp-$80                                  ; $5309: $f8 $80

jr_01c_530b:
	jr   nc, @-$70                                   ; $530b: $30 $8e

	nop                                              ; $530d: $00
	ld   bc, $0301                                   ; $530e: $01 $01 $03

jr_01c_5311:
	add  b                                           ; $5311: $80
	ld   [bc], a                                     ; $5312: $02
	ld   bc, $0200                                   ; $5313: $01 $00 $02
	add  b                                           ; $5316: $80
	ld   bc, $008c                                   ; $5317: $01 $8c $00
	add  b                                           ; $531a: $80
	ld   bc, $0281                                   ; $531b: $01 $81 $02
	ld   [bc], a                                     ; $531e: $02
	inc  bc                                          ; $531f: $03
	nop                                              ; $5320: $00
	ld   bc, $0085                                   ; $5321: $01 $85 $00
	add  b                                           ; $5324: $80
	add  b                                           ; $5325: $80
	adc  l                                           ; $5326: $8d
	nop                                              ; $5327: $00
	add  b                                           ; $5328: $80

jr_01c_5329:
	ld   b, b                                        ; $5329: $40
	ld   bc, $6020                                   ; $532a: $01 $20 $60
	add  c                                           ; $532d: $81
	ld   b, b                                        ; $532e: $40
	add  b                                           ; $532f: $80
	add  b                                           ; $5330: $80
	add  l                                           ; $5331: $85
	nop                                              ; $5332: $00
	ld   b, $80                                      ; $5333: $06 $80
	nop                                              ; $5335: $00
	ret  nz                                          ; $5336: $c0

	nop                                              ; $5337: $00
	ret  nz                                          ; $5338: $c0

	nop                                              ; $5339: $00
	add  b                                           ; $533a: $80
	sub  c                                           ; $533b: $91
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	ld   a, a                                        ; $533e: $7f
	add  c                                           ; $533f: $81
	nop                                              ; $5340: $00
	ld   [$0070], sp                                 ; $5341: $08 $70 $00
	ld   [$0400], sp                                 ; $5344: $08 $00 $04

jr_01c_5347:
	nop                                              ; $5347: $00
	ld   [bc], a                                     ; $5348: $02
	nop                                              ; $5349: $00
	ld   bc, $008b                                   ; $534a: $01 $8b $00
	ld   d, $30                                      ; $534d: $16 $30
	nop                                              ; $534f: $00
	ld   [hl], h                                     ; $5350: $74
	jr   c, jr_01c_5347                              ; $5351: $38 $f4

	ld   [hl], b                                     ; $5353: $70
	add  sp, $60                                     ; $5354: $e8 $60
	halt                                             ; $5356: $76
	ld   h, b                                        ; $5357: $60
	ld   h, a                                        ; $5358: $67
	ld   l, [hl]                                     ; $5359: $6e
	ld   l, a                                        ; $535a: $6f
	ld   h, b                                        ; $535b: $60
	ld   l, b                                        ; $535c: $68
	ld   h, a                                        ; $535d: $67
	ld   a, [hl]                                     ; $535e: $7e

jr_01c_535f:
	ld   h, b                                        ; $535f: $60
	or   e                                           ; $5360: $b3

jr_01c_5361:
	inc  a                                           ; $5361: $3c
	add  $00                                         ; $5362: $c6 $00
	jr   c, jr_01c_52ed                              ; $5364: $38 $87

	nop                                              ; $5366: $00
	ld   bc, $2030                                   ; $5367: $01 $30 $20
	add  d                                           ; $536a: $82
	ld   h, b                                        ; $536b: $60
	add  b                                           ; $536c: $80

jr_01c_536d:
	ldh  [rSC], a                                    ; $536d: $e0 $02
	ldh  a, [$c0]                                    ; $536f: $f0 $c0
	jr   nz, @-$72                                   ; $5371: $20 $8c

jr_01c_5373:
	nop                                              ; $5373: $00
	add  b                                           ; $5374: $80
	rlca                                             ; $5375: $07
	add  h                                           ; $5376: $84
	rrca                                             ; $5377: $0f
	add  b                                           ; $5378: $80
	rlca                                             ; $5379: $07
	add  b                                           ; $537a: $80
	inc  bc                                          ; $537b: $03
	add  b                                           ; $537c: $80
	ld   [$0180], sp                                 ; $537d: $08 $80 $01
	add  b                                           ; $5380: $80
	inc  b                                           ; $5381: $04
	add  b                                           ; $5382: $80
	ld   b, $80                                      ; $5383: $06 $80
	inc  bc                                          ; $5385: $03
	add  [hl]                                        ; $5386: $86
	nop                                              ; $5387: $00
	add  d                                           ; $5388: $82
	jr   nz, jr_01c_530b                             ; $5389: $20 $80

	ld   h, b                                        ; $538b: $60
	add  b                                           ; $538c: $80
	jp   hl                                          ; $538d: $e9


	add  d                                           ; $538e: $82
	ld   a, [$ff82]                                  ; $538f: $fa $82 $ff
	add  b                                           ; $5392: $80

jr_01c_5393:
	ld   a, a                                        ; $5393: $7f
	add  b                                           ; $5394: $80
	ccf                                              ; $5395: $3f
	add  b                                           ; $5396: $80
	cpl                                              ; $5397: $2f
	add  b                                           ; $5398: $80
	inc  h                                           ; $5399: $24
	add  b                                           ; $539a: $80
	ldh  a, [$80]                                    ; $539b: $f0 $80
	db   $fc                                         ; $539d: $fc
	add  b                                           ; $539e: $80
	ld   a, $80                                      ; $539f: $3e $80
	ld   c, $84                                      ; $53a1: $0e $84
	nop                                              ; $53a3: $00
	add  b                                           ; $53a4: $80
	ld   b, b                                        ; $53a5: $40
	add  b                                           ; $53a6: $80
	jr   nz, jr_01c_5329                             ; $53a7: $20 $80

	nop                                              ; $53a9: $00
	add  b                                           ; $53aa: $80
	db   $10                                         ; $53ab: $10
	add  b                                           ; $53ac: $80
	ld   [hl], b                                     ; $53ad: $70
	add  h                                           ; $53ae: $84
	ld   hl, sp-$80                                  ; $53af: $f8 $80
	ldh  a, [$80]                                    ; $53b1: $f0 $80
	ld   h, b                                        ; $53b3: $60
	add  e                                           ; $53b4: $83
	nop                                              ; $53b5: $00
	add  b                                           ; $53b6: $80
	rst  $38                                         ; $53b7: $ff
	add  b                                           ; $53b8: $80
	add  e                                           ; $53b9: $83
	add  hl, bc                                      ; $53ba: $09
	add  l                                           ; $53bb: $85
	add  c                                           ; $53bc: $81
	adc  l                                           ; $53bd: $8d
	add  c                                           ; $53be: $81
	sbc  c                                           ; $53bf: $99
	add  c                                           ; $53c0: $81
	or   c                                           ; $53c1: $b1
	add  c                                           ; $53c2: $81
	pop  hl                                          ; $53c3: $e1
	pop  bc                                          ; $53c4: $c1
	add  d                                           ; $53c5: $82
	rst  $38                                         ; $53c6: $ff
	add  b                                           ; $53c7: $80
	add  e                                           ; $53c8: $83
	add  hl, bc                                      ; $53c9: $09
	add  l                                           ; $53ca: $85
	add  c                                           ; $53cb: $81
	adc  l                                           ; $53cc: $8d
	add  c                                           ; $53cd: $81
	sbc  c                                           ; $53ce: $99
	add  c                                           ; $53cf: $81
	or   c                                           ; $53d0: $b1
	add  c                                           ; $53d1: $81
	pop  hl                                          ; $53d2: $e1
	pop  bc                                          ; $53d3: $c1
	add  b                                           ; $53d4: $80
	rst  $38                                         ; $53d5: $ff
	rst  $38                                         ; $53d6: $ff
	nop                                              ; $53d7: $00
	rst  $38                                         ; $53d8: $ff
	nop                                              ; $53d9: $00
	add  h                                           ; $53da: $84
	nop                                              ; $53db: $00
	add  b                                           ; $53dc: $80
	jr   nc, jr_01c_535f                             ; $53dd: $30 $80

	jr   c, jr_01c_5361                              ; $53df: $38 $80

	inc  a                                           ; $53e1: $3c
	add  b                                           ; $53e2: $80
	ld   a, $80                                      ; $53e3: $3e $80
	ccf                                              ; $53e5: $3f
	add  b                                           ; $53e6: $80
	ld   a, $80                                      ; $53e7: $3e $80
	inc  a                                           ; $53e9: $3c
	add  b                                           ; $53ea: $80
	jr   c, jr_01c_536d                              ; $53eb: $38 $80

	jr   nc, @-$6e                                   ; $53ed: $30 $90

	nop                                              ; $53ef: $00
	add  b                                           ; $53f0: $80
	jr   nc, jr_01c_5373                             ; $53f1: $30 $80

	inc  a                                           ; $53f3: $3c
	add  b                                           ; $53f4: $80
	ccf                                              ; $53f5: $3f
	add  b                                           ; $53f6: $80
	inc  a                                           ; $53f7: $3c
	add  b                                           ; $53f8: $80
	jr   nc, jr_01c_5393                             ; $53f9: $30 $98

	nop                                              ; $53fb: $00
	add  b                                           ; $53fc: $80
	ccf                                              ; $53fd: $3f
	adc  h                                           ; $53fe: $8c
	nop                                              ; $53ff: $00
	add  b                                           ; $5400: $80
	rst  $38                                         ; $5401: $ff
	add  b                                           ; $5402: $80
	add  e                                           ; $5403: $83
	add  hl, bc                                      ; $5404: $09
	add  l                                           ; $5405: $85
	add  c                                           ; $5406: $81
	adc  l                                           ; $5407: $8d
	add  c                                           ; $5408: $81
	sbc  c                                           ; $5409: $99
	add  c                                           ; $540a: $81
	or   c                                           ; $540b: $b1
	add  c                                           ; $540c: $81
	pop  hl                                          ; $540d: $e1
	pop  bc                                          ; $540e: $c1
	add  d                                           ; $540f: $82
	rst  $38                                         ; $5410: $ff
	add  b                                           ; $5411: $80
	add  e                                           ; $5412: $83
	add  hl, bc                                      ; $5413: $09
	add  l                                           ; $5414: $85
	add  c                                           ; $5415: $81
	adc  l                                           ; $5416: $8d
	add  c                                           ; $5417: $81
	sbc  c                                           ; $5418: $99
	add  c                                           ; $5419: $81
	or   c                                           ; $541a: $b1
	add  c                                           ; $541b: $81
	pop  hl                                          ; $541c: $e1
	pop  bc                                          ; $541d: $c1
	add  d                                           ; $541e: $82
	rst  $38                                         ; $541f: $ff
	add  b                                           ; $5420: $80
	add  e                                           ; $5421: $83
	add  hl, bc                                      ; $5422: $09
	add  l                                           ; $5423: $85
	add  c                                           ; $5424: $81
	adc  l                                           ; $5425: $8d
	add  c                                           ; $5426: $81
	sbc  c                                           ; $5427: $99
	add  c                                           ; $5428: $81
	or   c                                           ; $5429: $b1
	add  c                                           ; $542a: $81
	pop  hl                                          ; $542b: $e1
	pop  bc                                          ; $542c: $c1
	add  d                                           ; $542d: $82
	rst  $38                                         ; $542e: $ff
	add  b                                           ; $542f: $80
	add  e                                           ; $5430: $83
	add  hl, bc                                      ; $5431: $09
	add  l                                           ; $5432: $85
	add  c                                           ; $5433: $81
	adc  l                                           ; $5434: $8d
	add  c                                           ; $5435: $81
	sbc  c                                           ; $5436: $99
	add  c                                           ; $5437: $81
	or   c                                           ; $5438: $b1
	add  c                                           ; $5439: $81
	pop  hl                                          ; $543a: $e1
	pop  bc                                          ; $543b: $c1
	add  d                                           ; $543c: $82
	rst  $38                                         ; $543d: $ff
	add  b                                           ; $543e: $80
	add  e                                           ; $543f: $83
	add  hl, bc                                      ; $5440: $09
	add  l                                           ; $5441: $85
	add  c                                           ; $5442: $81
	adc  l                                           ; $5443: $8d
	add  c                                           ; $5444: $81
	sbc  c                                           ; $5445: $99
	add  c                                           ; $5446: $81
	or   c                                           ; $5447: $b1
	add  c                                           ; $5448: $81
	pop  hl                                          ; $5449: $e1
	pop  bc                                          ; $544a: $c1
	add  d                                           ; $544b: $82
	rst  $38                                         ; $544c: $ff
	add  b                                           ; $544d: $80
	add  e                                           ; $544e: $83
	add  hl, bc                                      ; $544f: $09
	add  l                                           ; $5450: $85
	add  c                                           ; $5451: $81
	adc  l                                           ; $5452: $8d
	add  c                                           ; $5453: $81
	sbc  c                                           ; $5454: $99
	add  c                                           ; $5455: $81
	or   c                                           ; $5456: $b1
	add  c                                           ; $5457: $81
	pop  hl                                          ; $5458: $e1
	pop  bc                                          ; $5459: $c1
	add  d                                           ; $545a: $82
	rst  $38                                         ; $545b: $ff
	add  b                                           ; $545c: $80
	add  e                                           ; $545d: $83
	add  hl, bc                                      ; $545e: $09
	add  l                                           ; $545f: $85
	add  c                                           ; $5460: $81
	adc  l                                           ; $5461: $8d
	add  c                                           ; $5462: $81
	sbc  c                                           ; $5463: $99
	add  c                                           ; $5464: $81
	or   c                                           ; $5465: $b1
	add  c                                           ; $5466: $81
	pop  hl                                          ; $5467: $e1
	pop  bc                                          ; $5468: $c1
	add  d                                           ; $5469: $82
	rst  $38                                         ; $546a: $ff
	add  b                                           ; $546b: $80
	add  e                                           ; $546c: $83
	add  hl, bc                                      ; $546d: $09
	add  l                                           ; $546e: $85
	add  c                                           ; $546f: $81
	adc  l                                           ; $5470: $8d
	add  c                                           ; $5471: $81
	sbc  c                                           ; $5472: $99
	add  c                                           ; $5473: $81
	or   c                                           ; $5474: $b1
	add  c                                           ; $5475: $81
	pop  hl                                          ; $5476: $e1
	pop  bc                                          ; $5477: $c1
	add  d                                           ; $5478: $82
	rst  $38                                         ; $5479: $ff
	add  b                                           ; $547a: $80
	add  e                                           ; $547b: $83
	add  hl, bc                                      ; $547c: $09
	add  l                                           ; $547d: $85
	add  c                                           ; $547e: $81
	adc  l                                           ; $547f: $8d
	add  c                                           ; $5480: $81
	sbc  c                                           ; $5481: $99
	add  c                                           ; $5482: $81
	or   c                                           ; $5483: $b1
	add  c                                           ; $5484: $81
	pop  hl                                          ; $5485: $e1
	pop  bc                                          ; $5486: $c1
	add  d                                           ; $5487: $82
	rst  $38                                         ; $5488: $ff
	add  b                                           ; $5489: $80
	add  e                                           ; $548a: $83
	add  hl, bc                                      ; $548b: $09
	add  l                                           ; $548c: $85
	add  c                                           ; $548d: $81
	adc  l                                           ; $548e: $8d
	add  c                                           ; $548f: $81
	sbc  c                                           ; $5490: $99
	add  c                                           ; $5491: $81
	or   c                                           ; $5492: $b1
	add  c                                           ; $5493: $81
	pop  hl                                          ; $5494: $e1
	pop  bc                                          ; $5495: $c1
	add  b                                           ; $5496: $80
	rst  $38                                         ; $5497: $ff
	add  b                                           ; $5498: $80
	nop                                              ; $5499: $00
	add  b                                           ; $549a: $80
	inc  e                                           ; $549b: $1c
	ld   [bc], a                                     ; $549c: $02
	ld   [hl+], a                                    ; $549d: $22
	ld   a, $5d                                      ; $549e: $3e $5d
	sub  a                                           ; $54a0: $97
	ld   a, a                                        ; $54a1: $7f
	ld   bc, $ffc1                                   ; $54a2: $01 $c1 $ff
	add  b                                           ; $54a5: $80
	add  e                                           ; $54a6: $83
	add  hl, bc                                      ; $54a7: $09
	add  l                                           ; $54a8: $85
	add  c                                           ; $54a9: $81
	adc  l                                           ; $54aa: $8d
	add  c                                           ; $54ab: $81
	sbc  c                                           ; $54ac: $99
	add  c                                           ; $54ad: $81
	or   c                                           ; $54ae: $b1
	add  c                                           ; $54af: $81
	pop  hl                                          ; $54b0: $e1
	pop  bc                                          ; $54b1: $c1
	add  d                                           ; $54b2: $82
	rst  $38                                         ; $54b3: $ff
	add  b                                           ; $54b4: $80
	add  e                                           ; $54b5: $83
	add  hl, bc                                      ; $54b6: $09
	add  l                                           ; $54b7: $85
	add  c                                           ; $54b8: $81
	adc  l                                           ; $54b9: $8d
	add  c                                           ; $54ba: $81
	sbc  c                                           ; $54bb: $99
	add  c                                           ; $54bc: $81
	or   c                                           ; $54bd: $b1
	add  c                                           ; $54be: $81
	pop  hl                                          ; $54bf: $e1
	pop  bc                                          ; $54c0: $c1
	add  b                                           ; $54c1: $80
	rst  $38                                         ; $54c2: $ff
	sbc  b                                           ; $54c3: $98
	nop                                              ; $54c4: $00
	add  b                                           ; $54c5: $80
	ld   [hl], a                                     ; $54c6: $77
	nop                                              ; $54c7: $00
	adc  b                                           ; $54c8: $88
	add  c                                           ; $54c9: $81
	rst  $38                                         ; $54ca: $ff
	nop                                              ; $54cb: $00
	ld   [hl], a                                     ; $54cc: $77
	add  c                                           ; $54cd: $81
	nop                                              ; $54ce: $00
	add  b                                           ; $54cf: $80
	inc  bc                                          ; $54d0: $03
	ld   [bc], a                                     ; $54d1: $02
	inc  b                                           ; $54d2: $04
	rlca                                             ; $54d3: $07
	dec  bc                                          ; $54d4: $0b
	add  e                                           ; $54d5: $83
	rrca                                             ; $54d6: $0f
	inc  bc                                          ; $54d7: $03
	inc  bc                                          ; $54d8: $03
	rlca                                             ; $54d9: $07
	nop                                              ; $54da: $00
	inc  bc                                          ; $54db: $03
	adc  b                                           ; $54dc: $88
	nop                                              ; $54dd: $00
	add  b                                           ; $54de: $80
	cp   b                                           ; $54df: $b8
	ld   [bc], a                                     ; $54e0: $02
	call nz, $38fc                                   ; $54e1: $c4 $fc $38
	add  c                                           ; $54e4: $81
	nop                                              ; $54e5: $00
	add  b                                           ; $54e6: $80
	rst  $38                                         ; $54e7: $ff
	nop                                              ; $54e8: $00
	nop                                              ; $54e9: $00
	add  a                                           ; $54ea: $87
	rst  $38                                         ; $54eb: $ff
	ld   bc, $ff07                                   ; $54ec: $01 $07 $ff
	adc  h                                           ; $54ef: $8c
	rrca                                             ; $54f0: $0f
	nop                                              ; $54f1: $00
	rlca                                             ; $54f2: $07
	add  c                                           ; $54f3: $81
	nop                                              ; $54f4: $00
	add  b                                           ; $54f5: $80
	add  b                                           ; $54f6: $80
	inc  b                                           ; $54f7: $04
	ld   b, e                                        ; $54f8: $43
	jp   $e7a4                                       ; $54f9: $c3 $a4 $e7


	db   $eb                                         ; $54fc: $eb
	add  e                                           ; $54fd: $83
	rst  $28                                         ; $54fe: $ef
	dec  b                                           ; $54ff: $05
	db   $e3                                         ; $5500: $e3
	rst  $20                                         ; $5501: $e7
	pop  hl                                          ; $5502: $e1
	db   $e3                                         ; $5503: $e3
	ldh  [$e1], a                                    ; $5504: $e0 $e1
	adc  b                                           ; $5506: $88
	ldh  [rP1], a                                    ; $5507: $e0 $00
	ret  nz                                          ; $5509: $c0

jr_01c_550a:
	add  e                                           ; $550a: $83
	nop                                              ; $550b: $00
	add  b                                           ; $550c: $80
	ret  nz                                          ; $550d: $c0

	ld   b, $20                                      ; $550e: $06 $20
	ldh  [$d0], a                                    ; $5510: $e0 $d0
	ldh  a, [$e8]                                    ; $5512: $f0 $e8
	ld   hl, sp-$0c                                  ; $5514: $f8 $f4
	add  c                                           ; $5516: $81
	db   $fc                                         ; $5517: $fc
	add  b                                           ; $5518: $80
	rst  $38                                         ; $5519: $ff
	inc  bc                                          ; $551a: $03
	or   $ff                                         ; $551b: $f6 $ff
	dec  b                                           ; $551d: $05
	rst  $30                                         ; $551e: $f7
	add  [hl]                                        ; $551f: $86
	rlca                                             ; $5520: $07
	nop                                              ; $5521: $00
	inc  bc                                          ; $5522: $03
	adc  a                                           ; $5523: $8f
	nop                                              ; $5524: $00
	add  b                                           ; $5525: $80
	ret  nz                                          ; $5526: $c0

	ld   [bc], a                                     ; $5527: $02
	jr   nz, jr_01c_550a                             ; $5528: $20 $e0

	ret  nc                                          ; $552a: $d0

	add  a                                           ; $552b: $87
	ldh  a, [rP1]                                    ; $552c: $f0 $00
	ldh  [$83], a                                    ; $552e: $e0 $83
	nop                                              ; $5530: $00
	add  b                                           ; $5531: $80
	ld   a, [hl]                                     ; $5532: $7e
	ld   [bc], a                                     ; $5533: $02
	jp   $bdff                                       ; $5534: $c3 $ff $bd


	add  a                                           ; $5537: $87
	rst  $38                                         ; $5538: $ff
	inc  bc                                          ; $5539: $03
	cp   l                                           ; $553a: $bd
	rst  $38                                         ; $553b: $ff
	ld   b, d                                        ; $553c: $42
	ld   a, [hl]                                     ; $553d: $7e
	add  [hl]                                        ; $553e: $86
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	ld   b, c                                        ; $5541: $41
	adc  c                                           ; $5542: $89

jr_01c_5543:
	ld   a, a                                        ; $5543: $7f
	nop                                              ; $5544: $00
	ld   a, [hl]                                     ; $5545: $7e
	adc  c                                           ; $5546: $89
	ld   a, a                                        ; $5547: $7f
	inc  bc                                          ; $5548: $03
	rra                                              ; $5549: $1f
	ccf                                              ; $554a: $3f
	nop                                              ; $554b: $00
	rra                                              ; $554c: $1f
	add  [hl]                                        ; $554d: $86
	nop                                              ; $554e: $00
	add  b                                           ; $554f: $80
	jr   c, @+$06                                    ; $5550: $38 $04

	ld   b, h                                        ; $5552: $44
	ld   a, h                                        ; $5553: $7c
	cp   d                                           ; $5554: $ba
	cp   $7e                                         ; $5555: $fe $7e
	add  c                                           ; $5557: $81
	cp   $0b                                         ; $5558: $fe $0b
	ld   hl, sp-$04                                  ; $555a: $f8 $fc
	ldh  a, [$f8]                                    ; $555c: $f0 $f8
	ldh  [$f0], a                                    ; $555e: $e0 $f0
	ret  nz                                          ; $5560: $c0

	ldh  [$80], a                                    ; $5561: $e0 $80
	ret  nz                                          ; $5563: $c0

	nop                                              ; $5564: $00
	add  b                                           ; $5565: $80
	add  h                                           ; $5566: $84
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	adc  b                                           ; $5569: $88
	add  l                                           ; $556a: $85
	rst  $38                                         ; $556b: $ff
	ld   bc, $7700                                   ; $556c: $01 $00 $77
	add  b                                           ; $556f: $80
	ld   bc, $0200                                   ; $5570: $01 $00 $02
	add  c                                           ; $5573: $81
	inc  bc                                          ; $5574: $03
	nop                                              ; $5575: $00
	dec  b                                           ; $5576: $05
	add  c                                           ; $5577: $81
	rlca                                             ; $5578: $07
	nop                                              ; $5579: $00
	dec  bc                                          ; $557a: $0b
	add  e                                           ; $557b: $83
	rrca                                             ; $557c: $0f
	ld   bc, $0700                                   ; $557d: $01 $00 $07
	add  d                                           ; $5580: $82
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	add  d                                           ; $5583: $82
	add  c                                           ; $5584: $81
	cp   $00                                         ; $5585: $fe $00
	ld   hl, sp-$7f                                  ; $5587: $f8 $81
	db   $fc                                         ; $5589: $fc
	inc  bc                                          ; $558a: $03
	ld   a, h                                        ; $558b: $7c
	db   $fc                                         ; $558c: $fc
	ldh  a, [$f8]                                    ; $558d: $f0 $f8
	add  b                                           ; $558f: $80
	ld   sp, hl                                      ; $5590: $f9
	dec  c                                           ; $5591: $0d
	ld   a, [$e5fb]                                  ; $5592: $fa $fb $e5
	rst  $30                                         ; $5595: $f7
	ei                                               ; $5596: $fb
	rst  $38                                         ; $5597: $ff
	rst  $30                                         ; $5598: $f7
	rst  $38                                         ; $5599: $ff
	rst  JumpTable                                         ; $559a: $df
	rst  $38                                         ; $559b: $ff
	add  a                                           ; $559c: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $559d: $cf
	nop                                              ; $559e: $00
	add  a                                           ; $559f: $87
	add  d                                           ; $55a0: $82
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	ld   [$0f81], sp                                 ; $55a3: $08 $81 $0f
	ld   [$1f17], sp                                 ; $55a6: $08 $17 $1f
	cpl                                              ; $55a9: $2f
	ccf                                              ; $55aa: $3f
	ld   e, a                                        ; $55ab: $5f
	ld   a, a                                        ; $55ac: $7f
	cp   a                                           ; $55ad: $bf
	rst  $38                                         ; $55ae: $ff
	ld   a, a                                        ; $55af: $7f
	add  e                                           ; $55b0: $83
	rst  $38                                         ; $55b1: $ff
	rlca                                             ; $55b2: $07
	db   $e3                                         ; $55b3: $e3
	rst  $38                                         ; $55b4: $ff
	pop  bc                                          ; $55b5: $c1
	db   $e3                                         ; $55b6: $e3
	add  b                                           ; $55b7: $80
	pop  bc                                          ; $55b8: $c1
	nop                                              ; $55b9: $00
	add  b                                           ; $55ba: $80
	add  h                                           ; $55bb: $84
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
	jr   nz, jr_01c_5543                             ; $55be: $20 $83

	ldh  [rSC], a                                    ; $55c0: $e0 $02
	add  b                                           ; $55c2: $80
	ret  nz                                          ; $55c3: $c0

	nop                                              ; $55c4: $00
	add  c                                           ; $55c5: $81
	add  b                                           ; $55c6: $80
	ld   [$c040], sp                                 ; $55c7: $08 $40 $c0
	and  b                                           ; $55ca: $a0
	ldh  [$d1], a                                    ; $55cb: $e0 $d1
	pop  af                                          ; $55cd: $f1
	ld   [$f7fb], a                                  ; $55ce: $ea $fb $f7
	add  c                                           ; $55d1: $81
	rst  $38                                         ; $55d2: $ff
	inc  bc                                          ; $55d3: $03
	ld   [hl], b                                     ; $55d4: $70
	ld   sp, hl                                      ; $55d5: $f9
	nop                                              ; $55d6: $00
	ld   [hl], b                                     ; $55d7: $70
	add  d                                           ; $55d8: $82
	nop                                              ; $55d9: $00
	nop                                              ; $55da: $00
	inc  b                                           ; $55db: $04
	adc  c                                           ; $55dc: $89
	rlca                                             ; $55dd: $07
	inc  b                                           ; $55de: $04
	dec  bc                                          ; $55df: $0b
	rrca                                             ; $55e0: $0f
	rst  $30                                         ; $55e1: $f7
	rst  $38                                         ; $55e2: $ff
	rrca                                             ; $55e3: $0f
	add  l                                           ; $55e4: $85
	rst  $38                                         ; $55e5: $ff
	inc  bc                                          ; $55e6: $03
	cp   $ff                                         ; $55e7: $fe $ff
	nop                                              ; $55e9: $00
	cp   $82                                         ; $55ea: $fe $82
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00
	db   $10                                         ; $55ee: $10
	adc  a                                           ; $55ef: $8f
	ldh  a, [rTIMA]                                  ; $55f0: $f0 $05

jr_01c_55f2:
	ret  nz                                          ; $55f2: $c0

	ldh  [$80], a                                    ; $55f3: $e0 $80
	ret  nz                                          ; $55f5: $c0

	nop                                              ; $55f6: $00
	add  b                                           ; $55f7: $80
	rst  $38                                         ; $55f8: $ff
	nop                                              ; $55f9: $00
	rst  $38                                         ; $55fa: $ff
	nop                                              ; $55fb: $00
	rst  $38                                         ; $55fc: $ff
	nop                                              ; $55fd: $00
	db   $e3                                         ; $55fe: $e3
	nop                                              ; $55ff: $00
	sbc  $00                                         ; $5600: $de $00
	adc  b                                           ; $5602: $88
	nop                                              ; $5603: $00
	ld   [$007c], sp                                 ; $5604: $08 $7c $00
	inc  bc                                          ; $5607: $03
	inc  c                                           ; $5608: $0c
	ld   c, h                                        ; $5609: $4c
	rlca                                             ; $560a: $07
	scf                                              ; $560b: $37
	nop                                              ; $560c: $00
	rrca                                             ; $560d: $0f
	sub  a                                           ; $560e: $97
	nop                                              ; $560f: $00
	inc  b                                           ; $5610: $04
	add  b                                           ; $5611: $80
	nop                                              ; $5612: $00
	ld   a, b                                        ; $5613: $78
	add  b                                           ; $5614: $80
	add  a                                           ; $5615: $87
	add  b                                           ; $5616: $80
	ld   hl, sp+$03                                  ; $5617: $f8 $03
	rrca                                             ; $5619: $0f
	rst  $38                                         ; $561a: $ff
	nop                                              ; $561b: $00
	rrca                                             ; $561c: $0f
	add  a                                           ; $561d: $87
	nop                                              ; $561e: $00
	ld   a, [bc]                                     ; $561f: $0a
	ret  nz                                          ; $5620: $c0

	nop                                              ; $5621: $00
	ld   a, $c0                                      ; $5622: $3e $c0
	pop  bc                                          ; $5624: $c1
	ld   a, [hl]                                     ; $5625: $7e
	cp   $03                                         ; $5626: $fe $03
	ld   a, a                                        ; $5628: $7f
	nop                                              ; $5629: $00
	inc  bc                                          ; $562a: $03
	sub  e                                           ; $562b: $93
	nop                                              ; $562c: $00
	ld   b, $fd                                      ; $562d: $06 $fd
	nop                                              ; $562f: $00
	ld   a, [de]                                     ; $5630: $1a
	nop                                              ; $5631: $00
	db   $e4                                         ; $5632: $e4
	nop                                              ; $5633: $00
	db   $fc                                         ; $5634: $fc
	add  c                                           ; $5635: $81
	nop                                              ; $5636: $00
	ld   [bc], a                                     ; $5637: $02
	inc  a                                           ; $5638: $3c
	ld   bc, $81a1                                   ; $5639: $01 $a1 $81
	ld   bc, $8114                                   ; $563c: $01 $14 $81
	ld   bc, $0121                                   ; $563f: $01 $21 $01
	ld   b, c                                        ; $5642: $41
	nop                                              ; $5643: $00
	add  c                                           ; $5644: $81
	ld   bc, $0307                                   ; $5645: $01 $07 $03
	rrca                                             ; $5648: $0f
	rlca                                             ; $5649: $07
	ld   e, $0e                                      ; $564a: $1e $0e
	inc  a                                           ; $564c: $3c
	inc  e                                           ; $564d: $1c
	sbc  c                                           ; $564e: $99
	jr   jr_01c_56c4                                 ; $564f: $18 $73

	jr   nc, jr_01c_5655                             ; $5651: $30 $02

	add  b                                           ; $5653: $80
	nop                                              ; $5654: $00

jr_01c_5655:
	add  hl, bc                                      ; $5655: $09
	ld   bc, $011d                                   ; $5656: $01 $1d $01
	db   $ed                                         ; $5659: $ed
	nop                                              ; $565a: $00
	stop                                             ; $565b: $10 $00
	cpl                                              ; $565d: $2f
	nop                                              ; $565e: $00
	jr   nc, jr_01c_55f2                             ; $565f: $30 $91

	nop                                              ; $5661: $00
	inc  bc                                          ; $5662: $03
	ldh  [rP1], a                                    ; $5663: $e0 $00
	rst  $38                                         ; $5665: $ff
	ldh  [$80], a                                    ; $5666: $e0 $80
	ccf                                              ; $5668: $3f
	inc  b                                           ; $5669: $04
	pop  bc                                          ; $566a: $c1
	ld   bc, $003e                                   ; $566b: $01 $3e $00
	ld   bc, $008b                                   ; $566e: $01 $8b $00
	ld   b, d                                        ; $5671: $42
	ld   bc, $0200                                   ; $5672: $01 $00 $02
	ld   bc, $0305                                   ; $5675: $01 $05 $03
	dec  bc                                          ; $5678: $0b
	rlca                                             ; $5679: $07
	rla                                              ; $567a: $17
	rrca                                             ; $567b: $0f
	daa                                              ; $567c: $27
	rra                                              ; $567d: $1f
	ld   b, a                                        ; $567e: $47
	ccf                                              ; $567f: $3f
	sbc  a                                           ; $5680: $9f
	ld   a, a                                        ; $5681: $7f
	ld   l, a                                        ; $5682: $6f
	ld   a, a                                        ; $5683: $7f
	ccf                                              ; $5684: $3f
	ld   a, a                                        ; $5685: $7f
	ld   l, a                                        ; $5686: $6f
	cp   $f6                                         ; $5687: $fe $f6
	cp   $e6                                         ; $5689: $fe $e6
	db   $fc                                         ; $568b: $fc
	ld   e, l                                        ; $568c: $5d
	db   $fd                                         ; $568d: $fd
	cp   a                                           ; $568e: $bf
	ei                                               ; $568f: $fb
	cp   $f6                                         ; $5690: $fe $f6
	ld   a, h                                        ; $5692: $7c
	db   $ec                                         ; $5693: $ec
	ld   hl, sp-$28                                  ; $5694: $f8 $d8
	pop  af                                          ; $5696: $f1
	or   b                                           ; $5697: $b0
	ldh  a, [c]                                      ; $5698: $f2
	ld   [hl], b                                     ; $5699: $70
	push hl                                          ; $569a: $e5
	ldh  [$ca], a                                    ; $569b: $e0 $ca
	ret  nz                                          ; $569d: $c0

	sub  l                                           ; $569e: $95
	add  b                                           ; $569f: $80
	jr   z, jr_01c_56a2                              ; $56a0: $28 $00

jr_01c_56a2:
	ld   [hl], d                                     ; $56a2: $72
	nop                                              ; $56a3: $00
	ret  nz                                          ; $56a4: $c0

	nop                                              ; $56a5: $00
	add  l                                           ; $56a6: $85
	nop                                              ; $56a7: $00
	ld   [bc], a                                     ; $56a8: $02
	nop                                              ; $56a9: $00
	dec  bc                                          ; $56aa: $0b
	add  b                                           ; $56ab: $80
	add  e                                           ; $56ac: $83
	add  b                                           ; $56ad: $80
	adc  h                                           ; $56ae: $8c
	nop                                              ; $56af: $00
	ld   bc, $fe00                                   ; $56b0: $01 $00 $fe
	nop                                              ; $56b3: $00
	rst  $38                                         ; $56b4: $ff
	add  c                                           ; $56b5: $81
	nop                                              ; $56b6: $00
	ld   [bc], a                                     ; $56b7: $02
	ld   bc, $fdfc                                   ; $56b8: $01 $fc $fd
	add  b                                           ; $56bb: $80
	cp   $80                                         ; $56bc: $fe $80
	rst  $38                                         ; $56be: $ff
	ld   bc, $fffe                                   ; $56bf: $01 $fe $ff
	add  c                                           ; $56c2: $81
	ld   a, h                                        ; $56c3: $7c

jr_01c_56c4:
	inc  b                                           ; $56c4: $04
	db   $fc                                         ; $56c5: $fc
	inc  a                                           ; $56c6: $3c
	ld   a, h                                        ; $56c7: $7c
	inc  e                                           ; $56c8: $1c
	dec  a                                           ; $56c9: $3d
	add  c                                           ; $56ca: $81
	ld   c, $00                                      ; $56cb: $0e $00
	ld   e, $81                                      ; $56cd: $1e $81
	ld   b, $00                                      ; $56cf: $06 $00
	ld   c, $81                                      ; $56d1: $0e $81
	ld   [bc], a                                     ; $56d3: $02
	ld   bc, $0006                                   ; $56d4: $01 $06 $00
	add  h                                           ; $56d7: $84
	ld   bc, $0601                                   ; $56d8: $01 $01 $06
	ld   [bc], a                                     ; $56db: $02
	add  d                                           ; $56dc: $82
	nop                                              ; $56dd: $00
	add  b                                           ; $56de: $80
	ld   bc, $0382                                   ; $56df: $01 $82 $03
	nop                                              ; $56e2: $00
	rrca                                             ; $56e3: $0f
	add  e                                           ; $56e4: $83
	rlca                                             ; $56e5: $07
	add  b                                           ; $56e6: $80
	dec  b                                           ; $56e7: $05
	add  b                                           ; $56e8: $80
	ld   bc, $0800                                   ; $56e9: $01 $00 $08
	add  c                                           ; $56ec: $81
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	rlca                                             ; $56ef: $07
	add  l                                           ; $56f0: $85
	nop                                              ; $56f1: $00
	inc  bc                                          ; $56f2: $03
	ldh  a, [rP1]                                    ; $56f3: $f0 $00
	rst  $38                                         ; $56f5: $ff
	ldh  a, [$80]                                    ; $56f6: $f0 $80
	rra                                              ; $56f8: $1f
	ld   c, $e0                                      ; $56f9: $0e $e0
	nop                                              ; $56fb: $00
	rra                                              ; $56fc: $1f
	nop                                              ; $56fd: $00
	ld   bc, $0600                                   ; $56fe: $01 $00 $06
	nop                                              ; $5701: $00
	ld   [$3303], sp                                 ; $5702: $08 $03 $33
	rrca                                             ; $5705: $0f
	ld   c, a                                        ; $5706: $4f
	ld   a, $be                                      ; $5707: $3e $be
	add  b                                           ; $5709: $80
	ld   a, h                                        ; $570a: $7c
	ld   [bc], a                                     ; $570b: $02
	ld   hl, sp+$67                                  ; $570c: $f8 $67
	ld   h, b                                        ; $570e: $60
	xor  h                                           ; $570f: $ac
	nop                                              ; $5710: $00
	ld   b, $ff                                      ; $5711: $06 $ff
	nop                                              ; $5713: $00
	adc  a                                           ; $5714: $8f
	jr   nz, @+$62                                   ; $5715: $20 $60

	nop                                              ; $5717: $00
	jr   nc, @-$77                                   ; $5718: $30 $87

	nop                                              ; $571a: $00
	ld   bc, $cc33                                   ; $571b: $01 $33 $cc
	add  d                                           ; $571e: $82
	sbc  b                                           ; $571f: $98
	nop                                              ; $5720: $00
	ld   [hl], $81                                   ; $5721: $36 $81
	jr   nc, jr_01c_5725                             ; $5723: $30 $00

jr_01c_5725:
	ld   l, c                                        ; $5725: $69
	add  c                                           ; $5726: $81
	ld   h, b                                        ; $5727: $60
	add  b                                           ; $5728: $80
	ldh  [rDIV], a                                   ; $5729: $e0 $04
	add  sp, -$20                                    ; $572b: $e8 $e0
	call nz, $c3c0                                   ; $572d: $c4 $c0 $c3
	add  b                                           ; $5730: $80
	ret  nz                                          ; $5731: $c0

	add  b                                           ; $5732: $80
	pop  bc                                          ; $5733: $c1
	nop                                              ; $5734: $00
	jp   Jump_01c_4381                               ; $5735: $c3 $81 $43


	ld   [$8141], sp                                 ; $5738: $08 $41 $81
	ld   bc, $0140                                   ; $573b: $01 $40 $01
	inc  hl                                          ; $573e: $23
	inc  bc                                          ; $573f: $03
	rla                                              ; $5740: $17
	rlca                                             ; $5741: $07
	add  b                                           ; $5742: $80
	inc  b                                           ; $5743: $04
	ld   [$0301], sp                                 ; $5744: $08 $01 $03
	add  c                                           ; $5747: $81
	rlca                                             ; $5748: $07
	ld   [hl], l                                     ; $5749: $75
	add  a                                           ; $574a: $87
	add  [hl]                                        ; $574b: $86
	rst  $30                                         ; $574c: $f7
	ld   [$0099], sp                                 ; $574d: $08 $99 $00
	add  b                                           ; $5750: $80
	add  b                                           ; $5751: $80
	add  b                                           ; $5752: $80
	ldh  a, [$8e]                                    ; $5753: $f0 $8e
	nop                                              ; $5755: $00
	nop                                              ; $5756: $00
	ld   [hl], l                                     ; $5757: $75
	add  c                                           ; $5758: $81
	adc  d                                           ; $5759: $8a
	add  b                                           ; $575a: $80
	add  l                                           ; $575b: $85
	ld   de, $82a2                                   ; $575c: $11 $a2 $82
	sbc  c                                           ; $575f: $99
	add  c                                           ; $5760: $81
	ld   b, $00                                      ; $5761: $06 $00
	add  c                                           ; $5763: $81
	nop                                              ; $5764: $00
	ld   h, e                                        ; $5765: $63
	nop                                              ; $5766: $00
	daa                                              ; $5767: $27
	nop                                              ; $5768: $00
	inc  e                                           ; $5769: $1c
	nop                                              ; $576a: $00
	ei                                               ; $576b: $fb
	inc  bc                                          ; $576c: $03
	ld   a, a                                        ; $576d: $7f
	sbc  a                                           ; $576e: $9f
	add  [hl]                                        ; $576f: $86
	rst  $38                                         ; $5770: $ff
	add  d                                           ; $5771: $82
	nop                                              ; $5772: $00
	add  b                                           ; $5773: $80
	db   $10                                         ; $5774: $10
	add  d                                           ; $5775: $82
	jr   c, @-$7c                                    ; $5776: $38 $82

	ld   [hl], b                                     ; $5778: $70
	add  b                                           ; $5779: $80
	ld   h, b                                        ; $577a: $60
	adc  b                                           ; $577b: $88
	ldh  [$80], a                                    ; $577c: $e0 $80
	ld   h, b                                        ; $577e: $60
	add  b                                           ; $577f: $80
	jr   nz, @-$6e                                   ; $5780: $20 $90

	nop                                              ; $5782: $00
	ld   bc, $f10e                                   ; $5783: $01 $0e $f1
	add  b                                           ; $5786: $80
	db   $e3                                         ; $5787: $e3
	add  b                                           ; $5788: $80
	rst  ToBoot                                         ; $5789: $c7
	add  b                                           ; $578a: $80
	sbc  a                                           ; $578b: $9f
	add  b                                           ; $578c: $80
	ld   [hl], $0a                                   ; $578d: $36 $0a
	jp   hl                                          ; $578f: $e9


	add  sp, -$7d                                    ; $5790: $e8 $83
	add  l                                           ; $5792: $85
	rra                                              ; $5793: $1f
	inc  bc                                          ; $5794: $03
	inc  hl                                          ; $5795: $23
	inc  bc                                          ; $5796: $03
	dec  bc                                          ; $5797: $0b
	rlca                                             ; $5798: $07
	ld   d, a                                        ; $5799: $57
	add  b                                           ; $579a: $80
	rrca                                             ; $579b: $0f
	ld   bc, $9e0e                                   ; $579c: $01 $0e $9e
	add  b                                           ; $579f: $80
	ld   b, $05                                      ; $57a0: $06 $05
	nop                                              ; $57a2: $00
	add  hl, bc                                      ; $57a3: $09
	nop                                              ; $57a4: $00
	inc  b                                           ; $57a5: $04
	nop                                              ; $57a6: $00
	ld   [bc], a                                     ; $57a7: $02
	add  c                                           ; $57a8: $81
	nop                                              ; $57a9: $00
	nop                                              ; $57aa: $00
	add  b                                           ; $57ab: $80
	add  c                                           ; $57ac: $81
	nop                                              ; $57ad: $00
	ld   [$0041], sp                                 ; $57ae: $08 $41 $00
	daa                                              ; $57b1: $27
	ld   bc, $01ff                                   ; $57b2: $01 $ff $01
	add  hl, hl                                      ; $57b5: $29
	rlca                                             ; $57b6: $07
	scf                                              ; $57b7: $37
	add  l                                           ; $57b8: $85
	nop                                              ; $57b9: $00
	add  b                                           ; $57ba: $80
	inc  bc                                          ; $57bb: $03
	and  h                                           ; $57bc: $a4
	nop                                              ; $57bd: $00
	ld   a, [bc]                                     ; $57be: $0a
	rst  $38                                         ; $57bf: $ff
	sub  b                                           ; $57c0: $90
	add  b                                           ; $57c1: $80
	jr   z, jr_01c_57ce                              ; $57c2: $28 $0a

jr_01c_57c4:
	ld   c, d                                        ; $57c4: $4a
	add  hl, de                                      ; $57c5: $19
	sbc  c                                           ; $57c6: $99
	ret  c                                           ; $57c7: $d8

	jr   jr_01c_57c4                                 ; $57c8: $18 $fa

	add  c                                           ; $57ca: $81
	ld   a, [de]                                     ; $57cb: $1a
	dec  c                                           ; $57cc: $0d
	ld   e, b                                        ; $57cd: $58

jr_01c_57ce:
	jr   c, jr_01c_584e                              ; $57ce: $38 $7e

	nop                                              ; $57d0: $00
	inc  a                                           ; $57d1: $3c
	nop                                              ; $57d2: $00
	ld   a, a                                        ; $57d3: $7f
	nop                                              ; $57d4: $00
	rst  $30                                         ; $57d5: $f7
	ld   [hl], b                                     ; $57d6: $70
	rst  $30                                         ; $57d7: $f7
	db   $f4                                         ; $57d8: $f4
	rst  $28                                         ; $57d9: $ef
	xor  $80                                         ; $57da: $ee $80
	rst  ToBoot                                         ; $57dc: $c7
	add  b                                           ; $57dd: $80
	add  hl, sp                                      ; $57de: $39
	nop                                              ; $57df: $00
	rst  $38                                         ; $57e0: $ff
	sub  [hl]                                        ; $57e1: $96
	nop                                              ; $57e2: $00
	add  b                                           ; $57e3: $80
	ret  nz                                          ; $57e4: $c0

	add  b                                           ; $57e5: $80
	nop                                              ; $57e6: $00
	add  b                                           ; $57e7: $80
	ldh  [$80], a                                    ; $57e8: $e0 $80
	ldh  a, [$80]                                    ; $57ea: $f0 $80
	nop                                              ; $57ec: $00
	add  b                                           ; $57ed: $80
	ld   hl, sp-$80                                  ; $57ee: $f8 $80
	ld   a, [$ed80]                                  ; $57f0: $fa $80 $ed
	add  b                                           ; $57f3: $80
	add  $80                                         ; $57f4: $c6 $80
	add  e                                           ; $57f6: $83
	add  b                                           ; $57f7: $80
	add  c                                           ; $57f8: $81
	add  b                                           ; $57f9: $80
	pop  hl                                          ; $57fa: $e1
	adc  l                                           ; $57fb: $8d
	nop                                              ; $57fc: $00
	rlca                                             ; $57fd: $07
	db   $f4                                         ; $57fe: $f4
	ld   [hl], b                                     ; $57ff: $70
	ld   [hl], d                                     ; $5800: $72
	db   $f4                                         ; $5801: $f4
	db   $fd                                         ; $5802: $fd
	inc  e                                           ; $5803: $1c
	sbc  l                                           ; $5804: $9d
	add  c                                           ; $5805: $81
	add  b                                           ; $5806: $80
	ld   [hl], b                                     ; $5807: $70
	add  b                                           ; $5808: $80
	db   $fd                                         ; $5809: $fd
	add  d                                           ; $580a: $82
	rst  $38                                         ; $580b: $ff
	jr   @-$1d                                       ; $580c: $18 $e1

	ret  nz                                          ; $580e: $c0

	jp   z, Jump_01c_7ee0                            ; $580f: $ca $e0 $7e

	ld   [hl], b                                     ; $5812: $70
	rra                                              ; $5813: $1f
	sbc  b                                           ; $5814: $98
	add  e                                           ; $5815: $83
	ldh  [$e5], a                                    ; $5816: $e0 $e5
	ldh  a, [$f7]                                    ; $5818: $f0 $f7
	ld   hl, sp-$06                                  ; $581a: $f8 $fa

jr_01c_581c:
	ldh  [$f8], a                                    ; $581c: $e0 $f8
	call nz, $3ad9                                   ; $581e: $c4 $d9 $3a
	jr   c, jr_01c_581c                              ; $5821: $38 $f9

jr_01c_5823:
	cp   $1e                                         ; $5823: $fe $1e
	rra                                              ; $5825: $1f
	add  b                                           ; $5826: $80
	ldh  [$83], a                                    ; $5827: $e0 $83
	rst  $38                                         ; $5829: $ff
	inc  bc                                          ; $582a: $03
	sub  d                                           ; $582b: $92
	ld   l, l                                        ; $582c: $6d
	dec  l                                           ; $582d: $2d
	xor  l                                           ; $582e: $ad
	add  b                                           ; $582f: $80
	adc  b                                           ; $5830: $88
	dec  b                                           ; $5831: $05
	and  e                                           ; $5832: $a3
	jr   nc, jr_01c_5867                             ; $5833: $30 $32

	sub  b                                           ; $5835: $90
	ld   bc, $8020                                   ; $5836: $01 $20 $80
	ld   [hl], c                                     ; $5839: $71
	ld   b, $60                                      ; $583a: $06 $60
	nop                                              ; $583c: $00
	call nz, $50c0                           ; $583d: $c4 $c0 $50
	db   $10                                         ; $5840: $10
	ld   e, d                                        ; $5841: $5a
	add  c                                           ; $5842: $81
	nop                                              ; $5843: $00
	ld   b, $31                                      ; $5844: $06 $31
	nop                                              ; $5846: $00
	ld   h, b                                        ; $5847: $60
	nop                                              ; $5848: $00
	ret  nz                                          ; $5849: $c0

	nop                                              ; $584a: $00
	add  b                                           ; $584b: $80
	add  e                                           ; $584c: $83
	nop                                              ; $584d: $00

jr_01c_584e:
	ld   [bc], a                                     ; $584e: $02
	ret  nz                                          ; $584f: $c0

	nop                                              ; $5850: $00
	ldh  [$80], a                                    ; $5851: $e0 $80
	ld   b, b                                        ; $5853: $40
	rlca                                             ; $5854: $07
	ret  nz                                          ; $5855: $c0

	ldh  a, [$e0]                                    ; $5856: $f0 $e0
	xor  $e0                                         ; $5858: $ee $e0
	rst  $38                                         ; $585a: $ff
	ldh  [$e1], a                                    ; $585b: $e0 $e1
	adc  [hl]                                        ; $585d: $8e
	nop                                              ; $585e: $00
	add  e                                           ; $585f: $83
	rst  $38                                         ; $5860: $ff
	add  b                                           ; $5861: $80
	cp   $04                                         ; $5862: $fe $04
	pop  af                                          ; $5864: $f1
	ldh  a, [$c5]                                    ; $5865: $f0 $c5

jr_01c_5867:
	ret  nz                                          ; $5867: $c0

	db   $f4                                         ; $5868: $f4
	add  c                                           ; $5869: $81
	ldh  a, [rP1]                                    ; $586a: $f0 $00
	rst  $38                                         ; $586c: $ff
	adc  l                                           ; $586d: $8d
	nop                                              ; $586e: $00
	db   $10                                         ; $586f: $10
	ei                                               ; $5870: $fb
	nop                                              ; $5871: $00
	ld   a, [bc]                                     ; $5872: $0a
	nop                                              ; $5873: $00
	ld   de, $9900                                   ; $5874: $11 $00 $99
	nop                                              ; $5877: $00
	ld   b, $00                                      ; $5878: $06 $00
	ld   [$8f00], sp                                 ; $587a: $08 $00 $8f
	jr   nz, jr_01c_58a3                             ; $587d: $20 $24

	ld   d, b                                        ; $587f: $50
	xor  h                                           ; $5880: $ac
	sbc  l                                           ; $5881: $9d
	nop                                              ; $5882: $00
	ld   bc, $c020                                   ; $5883: $01 $20 $c0
	add  b                                           ; $5886: $80
	nop                                              ; $5887: $00
	ld   [bc], a                                     ; $5888: $02
	ret  nz                                          ; $5889: $c0

	nop                                              ; $588a: $00
	jr   nz, @-$7b                                   ; $588b: $20 $83

	nop                                              ; $588d: $00
	ld   b, $80                                      ; $588e: $06 $80
	nop                                              ; $5890: $00
	ret  nz                                          ; $5891: $c0

	add  b                                           ; $5892: $80
	ldh  [$c0], a                                    ; $5893: $e0 $c0
	ld   [hl], b                                     ; $5895: $70
	add  b                                           ; $5896: $80
	jr   nz, jr_01c_589a                             ; $5897: $20 $01

	nop                                              ; $5899: $00

jr_01c_589a:
	jr   jr_01c_581c                                 ; $589a: $18 $80

	db   $10                                         ; $589c: $10
	add  b                                           ; $589d: $80
	jr   nc, jr_01c_5823                             ; $589e: $30 $83

	ld   [hl], b                                     ; $58a0: $70
	nop                                              ; $58a1: $00
	ld   l, b                                        ; $58a2: $68

jr_01c_58a3:
	add  c                                           ; $58a3: $81
	ld   h, b                                        ; $58a4: $60
	inc  b                                           ; $58a5: $04
	ld   d, b                                        ; $58a6: $50
	ld   b, b                                        ; $58a7: $40

jr_01c_58a8:
	jr   nz, jr_01c_58aa                             ; $58a8: $20 $00

jr_01c_58aa:
	ld   b, b                                        ; $58aa: $40
	add  c                                           ; $58ab: $81
	nop                                              ; $58ac: $00
	nop                                              ; $58ad: $00
	add  b                                           ; $58ae: $80
	add  c                                           ; $58af: $81
	nop                                              ; $58b0: $00
	nop                                              ; $58b1: $00
	add  b                                           ; $58b2: $80
	add  c                                           ; $58b3: $81
	nop                                              ; $58b4: $00
	ld   b, $c0                                      ; $58b5: $06 $c0
	add  b                                           ; $58b7: $80
	and  b                                           ; $58b8: $a0
	add  b                                           ; $58b9: $80
	ldh  a, [rAUD4LEN]                               ; $58ba: $f0 $20
	jr   c, @-$7e                                    ; $58bc: $38 $80

	add  b                                           ; $58be: $80
	add  b                                           ; $58bf: $80
	ret  nz                                          ; $58c0: $c0

	add  c                                           ; $58c1: $81
	ldh  a, [rAUD3HIGH]                              ; $58c2: $f0 $1e
	add  sp, -$20                                    ; $58c4: $e8 $e0
	ret  z                                           ; $58c6: $c8

	ret  nz                                          ; $58c7: $c0

	rlca                                             ; $58c8: $07
	jr   jr_01c_5923                                 ; $58c9: $18 $58

	rrca                                             ; $58cb: $0f
	ld   a, a                                        ; $58cc: $7f
	nop                                              ; $58cd: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ce: $cf
	nop                                              ; $58cf: $00
	ret  nz                                          ; $58d0: $c0

	nop                                              ; $58d1: $00
	ld   h, $01                                      ; $58d2: $26 $01
	add  hl, hl                                      ; $58d4: $29
	ld   bc, $0002                                   ; $58d5: $01 $02 $00
	ld   d, h                                        ; $58d8: $54
	nop                                              ; $58d9: $00
	add  c                                           ; $58da: $81

jr_01c_58db:
	nop                                              ; $58db: $00
	jr   z, jr_01c_58de                              ; $58dc: $28 $00

jr_01c_58de:
	ld   d, b                                        ; $58de: $50

jr_01c_58df:
	nop                                              ; $58df: $00
	ld   bc, sCurrPoints                                   ; $58e0: $01 $00 $a1
	add  c                                           ; $58e3: $81
	nop                                              ; $58e4: $00
	inc  c                                           ; $58e5: $0c
	jr   nz, jr_01c_58a8                             ; $58e6: $20 $c0

	ret  nc                                          ; $58e8: $d0

jr_01c_58e9:
	ldh  [$e8], a                                    ; $58e9: $e0 $e8
	ldh  a, [$f4]                                    ; $58eb: $f0 $f4
	ld   a, b                                        ; $58ed: $78
	ld   a, d                                        ; $58ee: $7a

jr_01c_58ef:
	cp   h                                           ; $58ef: $bc
	cp   l                                           ; $58f0: $bd
	sbc  $21                                         ; $58f1: $de $21
	sub  e                                           ; $58f3: $93
	nop                                              ; $58f4: $00
	ld   a, [bc]                                     ; $58f5: $0a
	add  b                                           ; $58f6: $80
	nop                                              ; $58f7: $00
	ld   [hl], b                                     ; $58f8: $70
	add  b                                           ; $58f9: $80
	adc  b                                           ; $58fa: $88

jr_01c_58fb:
	ldh  [$e4], a                                    ; $58fb: $e0 $e4
	nop                                              ; $58fd: $00
	ldh  [c], a                                      ; $58fe: $e2
	nop                                              ; $58ff: $00
	ld   e, $85                                      ; $5900: $1e $85
	nop                                              ; $5902: $00
	ld   [$0020], sp                                 ; $5903: $08 $20 $00
	inc  a                                           ; $5906: $3c
	nop                                              ; $5907: $00
	inc  bc                                          ; $5908: $03
	inc  c                                           ; $5909: $0c
	inc  e                                           ; $590a: $1c
	inc  bc                                          ; $590b: $03
	rrca                                             ; $590c: $0f
	add  c                                           ; $590d: $81
	nop                                              ; $590e: $00

jr_01c_590f:
	ld   [$030c], sp                                 ; $590f: $08 $0c $03
	inc  sp                                          ; $5912: $33
	inc  c                                           ; $5913: $0c
	ld   c, a                                        ; $5914: $4f
	jr   nc, @-$42                                   ; $5915: $30 $bc

	nop                                              ; $5917: $00
	ldh  a, [$83]                                    ; $5918: $f0 $83
	nop                                              ; $591a: $00
	nop                                              ; $591b: $00
	ld   b, b                                        ; $591c: $40
	add  c                                           ; $591d: $81
	nop                                              ; $591e: $00
	nop                                              ; $591f: $00
	and  b                                           ; $5920: $a0
	add  c                                           ; $5921: $81
	ld   b, b                                        ; $5922: $40

jr_01c_5923:
	ld   [de], a                                     ; $5923: $12
	ld   b, e                                        ; $5924: $43
	ld   b, b                                        ; $5925: $40
	ld   c, h                                        ; $5926: $4c
	ld   b, e                                        ; $5927: $43
	ld   d, e                                        ; $5928: $53
	ld   c, h                                        ; $5929: $4c
	ld   c, a                                        ; $592a: $4f
	ldh  a, [$f4]                                    ; $592b: $f0 $f4
	ldh  a, [$f6]                                    ; $592d: $f0 $f6
	ld   e, b                                        ; $592f: $58
	ld   e, c                                        ; $5930: $59
	ld   b, [hl]                                     ; $5931: $46
	ld   e, [hl]                                     ; $5932: $5e
	ld   b, c                                        ; $5933: $41
	ld   b, a                                        ; $5934: $47
	ld   b, b                                        ; $5935: $40
	pop  hl                                          ; $5936: $e1
	add  c                                           ; $5937: $81
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	ld   b, b                                        ; $593a: $40
	add  c                                           ; $593b: $81
	nop                                              ; $593c: $00
	ld   a, [bc]                                     ; $593d: $0a
	rrca                                             ; $593e: $0f
	nop                                              ; $593f: $00
	ld   sp, $ce0c                                   ; $5940: $31 $0c $ce
	jr   nc, jr_01c_5981                             ; $5943: $30 $3c

	ret  nz                                          ; $5945: $c0

	ldh  a, [rP1]                                    ; $5946: $f0 $00
	ret  nz                                          ; $5948: $c0

	add  l                                           ; $5949: $85
	nop                                              ; $594a: $00
	ld   [bc], a                                     ; $594b: $02
	add  b                                           ; $594c: $80
	nop                                              ; $594d: $00
	ld   b, b                                        ; $594e: $40
	add  b                                           ; $594f: $80
	add  b                                           ; $5950: $80
	inc  bc                                          ; $5951: $03
	nop                                              ; $5952: $00
	ldh  [rP1], a                                    ; $5953: $e0 $00
	jr   nz, jr_01c_58df                             ; $5955: $20 $88

	nop                                              ; $5957: $00
	add  b                                           ; $5958: $80
	jr   nc, jr_01c_58db                             ; $5959: $30 $80

	jr   c, @-$7e                                    ; $595b: $38 $80

	inc  a                                           ; $595d: $3c
	add  b                                           ; $595e: $80
	ld   a, $80                                      ; $595f: $3e $80
	ccf                                              ; $5961: $3f
	add  b                                           ; $5962: $80
	ld   a, $80                                      ; $5963: $3e $80
	inc  a                                           ; $5965: $3c
	add  b                                           ; $5966: $80
	jr   c, jr_01c_58e9                              ; $5967: $38 $80

	jr   nc, jr_01c_58fb                             ; $5969: $30 $90

	nop                                              ; $596b: $00
	add  b                                           ; $596c: $80
	jr   nc, jr_01c_58ef                             ; $596d: $30 $80

	inc  a                                           ; $596f: $3c
	add  b                                           ; $5970: $80
	ccf                                              ; $5971: $3f
	add  b                                           ; $5972: $80
	inc  a                                           ; $5973: $3c
	add  b                                           ; $5974: $80
	jr   nc, jr_01c_590f                             ; $5975: $30 $98

	nop                                              ; $5977: $00
	add  b                                           ; $5978: $80

jr_01c_5979:
	ccf                                              ; $5979: $3f
	rst  $38                                         ; $597a: $ff
	nop                                              ; $597b: $00
	rst  $38                                         ; $597c: $ff
	nop                                              ; $597d: $00
	rst  $38                                         ; $597e: $ff
	nop                                              ; $597f: $00
	rst  $38                                         ; $5980: $ff

jr_01c_5981:
	nop                                              ; $5981: $00
	rst  $38                                         ; $5982: $ff
	nop                                              ; $5983: $00
	and  $00                                         ; $5984: $e6 $00
	rst  $30                                         ; $5986: $f7
	nop                                              ; $5987: $00
	adc  [hl]                                        ; $5988: $8e
	nop                                              ; $5989: $00
	ld   b, $1f                                      ; $598a: $06 $1f
	nop                                              ; $598c: $00
	jr   nz, jr_01c_59ae                             ; $598d: $20 $1f

	ccf                                              ; $598f: $3f
	nop                                              ; $5990: $00
	rra                                              ; $5991: $1f
	adc  l                                           ; $5992: $8d
	nop                                              ; $5993: $00
	ld   a, [bc]                                     ; $5994: $0a
	ld   bc, $0300                                   ; $5995: $01 $00 $03
	ld   bc, $0306                                   ; $5998: $01 $06 $03
	inc  e                                           ; $599b: $1c
	rlca                                             ; $599c: $07
	inc  a                                           ; $599d: $3c
	rra                                              ; $599e: $1f
	ld   a, $97                                      ; $599f: $3e $97
	nop                                              ; $59a1: $00
	ld   [de], a                                     ; $59a2: $12
	ld   bc, $0300                                   ; $59a3: $01 $00 $03
	ld   bc, $001c                                   ; $59a6: $01 $1c $00
	push af                                          ; $59a9: $f5
	ld   bc, $01c1                                   ; $59aa: $01 $c1 $01
	ret  nz                                          ; $59ad: $c0

jr_01c_59ae:
	ld   bc, $01f1                                   ; $59ae: $01 $f1 $01
	dec  d                                           ; $59b1: $15
	nop                                              ; $59b2: $00
	dec  de                                          ; $59b3: $1b
	dec  bc                                          ; $59b4: $0b
	nop                                              ; $59b5: $00
	add  c                                           ; $59b6: $81
	dec  bc                                          ; $59b7: $0b
	inc  bc                                          ; $59b8: $03
	xor  $14                                         ; $59b9: $ee $14
	call nz, $80d4                                   ; $59bb: $c4 $d4 $80
	inc  d                                           ; $59be: $14
	inc  b                                           ; $59bf: $04
	db   $e4                                         ; $59c0: $e4
	inc  b                                           ; $59c1: $04
	ld   de, $1b00                                   ; $59c2: $11 $00 $1b
	add  e                                           ; $59c5: $83
	nop                                              ; $59c6: $00
	ld   [bc], a                                     ; $59c7: $02
	dec  de                                          ; $59c8: $1b
	nop                                              ; $59c9: $00
	rrca                                             ; $59ca: $0f
	adc  a                                           ; $59cb: $8f
	nop                                              ; $59cc: $00
	dec  b                                           ; $59cd: $05
	ld   bc, $0f00                                   ; $59ce: $01 $00 $0f
	ld   bc, $0e1e                                   ; $59d1: $01 $1e $0e
	add  b                                           ; $59d4: $80
	rrca                                             ; $59d5: $0f
	nop                                              ; $59d6: $00
	ld   c, $81                                      ; $59d7: $0e $81
	rrca                                             ; $59d9: $0f
	db   $10                                         ; $59da: $10
	ccf                                              ; $59db: $3f
	rra                                              ; $59dc: $1f
	ld   a, a                                        ; $59dd: $7f
	ccf                                              ; $59de: $3f
	db   $fd                                         ; $59df: $fd
	ld   a, a                                        ; $59e0: $7f
	ei                                               ; $59e1: $fb
	rst  $38                                         ; $59e2: $ff
	rst  $30                                         ; $59e3: $f7
	cp   $ef                                         ; $59e4: $fe $ef
	db   $fc                                         ; $59e6: $fc
	rst  JumpTable                                         ; $59e7: $df
	ld   hl, sp-$41                                  ; $59e8: $f8 $bf
	pop  af                                          ; $59ea: $f1
	adc  e                                           ; $59eb: $8b
	add  l                                           ; $59ec: $85
	nop                                              ; $59ed: $00
	add  h                                           ; $59ee: $84
	inc  b                                           ; $59ef: $04
	add  b                                           ; $59f0: $80
	dec  b                                           ; $59f1: $05
	add  b                                           ; $59f2: $80

jr_01c_59f3:
	ld   a, [bc]                                     ; $59f3: $0a
	add  b                                           ; $59f4: $80
	inc  d                                           ; $59f5: $14
	add  b                                           ; $59f6: $80
	jr   z, jr_01c_5979                              ; $59f7: $28 $80

	ld   d, b                                        ; $59f9: $50
	add  b                                           ; $59fa: $80
	and  b                                           ; $59fb: $a0
	add  b                                           ; $59fc: $80
	ld   b, b                                        ; $59fd: $40
	add  b                                           ; $59fe: $80
	add  b                                           ; $59ff: $80
	sbc  b                                           ; $5a00: $98
	nop                                              ; $5a01: $00
	inc  bc                                          ; $5a02: $03
	ld   [$f700], sp                                 ; $5a03: $08 $00 $f7
	nop                                              ; $5a06: $00
	add  b                                           ; $5a07: $80
	ld   a, [hl+]                                    ; $5a08: $2a
	add  b                                           ; $5a09: $80
	ld   [$0206], sp                                 ; $5a0a: $08 $06 $02
	inc  bc                                          ; $5a0d: $03
	db   $fd                                         ; $5a0e: $fd
	ld   bc, $0003                                   ; $5a0f: $01 $03 $00
	ld   bc, $0093                                   ; $5a12: $01 $93 $00
	nop                                              ; $5a15: $00
	ld   bc, $0081                                   ; $5a16: $01 $81 $00
	nop                                              ; $5a19: $00
	inc  bc                                          ; $5a1a: $03
	add  c                                           ; $5a1b: $81
	ld   bc, $0700                                   ; $5a1c: $01 $00 $07
	add  c                                           ; $5a1f: $81
	inc  bc                                          ; $5a20: $03
	ld   [bc], a                                     ; $5a21: $02
	ld   [bc], a                                     ; $5a22: $02
	inc  bc                                          ; $5a23: $03
	dec  b                                           ; $5a24: $05
	add  c                                           ; $5a25: $81
	ld   bc, $0300                                   ; $5a26: $01 $00 $03
	add  c                                           ; $5a29: $81
	nop                                              ; $5a2a: $00
	ld   [$0107], sp                                 ; $5a2b: $08 $07 $01
	ld   e, $06                                      ; $5a2e: $1e $06
	cpl                                              ; $5a30: $2f
	rrca                                             ; $5a31: $0f
	inc  sp                                          ; $5a32: $33
	inc  bc                                          ; $5a33: $03
	ld   [$0080], sp                                 ; $5a34: $08 $80 $00
	inc  b                                           ; $5a37: $04
	inc  bc                                          ; $5a38: $03
	inc  c                                           ; $5a39: $0c
	rlca                                             ; $5a3a: $07
	rrca                                             ; $5a3b: $0f
	nop                                              ; $5a3c: $00
	add  b                                           ; $5a3d: $80
	ld   bc, $0380                                   ; $5a3e: $01 $80 $03
	add  b                                           ; $5a41: $80
	ld   [bc], a                                     ; $5a42: $02
	sub  h                                           ; $5a43: $94
	nop                                              ; $5a44: $00
	add  b                                           ; $5a45: $80
	ld   bc, $3007                                   ; $5a46: $01 $07 $30
	rrca                                             ; $5a49: $0f
	ld   e, $1f                                      ; $5a4a: $1e $1f
	pop  bc                                          ; $5a4c: $c1
	rlca                                             ; $5a4d: $07
	rst  ToBoot                                         ; $5a4e: $c7
	jp   nz, Jump_01c_7280                           ; $5a4f: $c2 $80 $72

	ld   b, $ba                                      ; $5a52: $06 $ba
	cp   c                                           ; $5a54: $b9
	db   $db                                         ; $5a55: $db
	ret  c                                           ; $5a56: $d8

	ld   [$e7e8], sp                                 ; $5a57: $08 $e8 $e7
	add  e                                           ; $5a5a: $83
	pop  af                                          ; $5a5b: $f1
	rlca                                             ; $5a5c: $07
	cp   $82                                         ; $5a5d: $fe $82
	cp   $06                                         ; $5a5f: $fe $06
	sub  b                                           ; $5a61: $90
	nop                                              ; $5a62: $00
	ei                                               ; $5a63: $fb
	dec  de                                          ; $5a64: $1b
	add  b                                           ; $5a65: $80
	or   [hl]                                        ; $5a66: $b6
	ld   bc, $02fd                                   ; $5a67: $01 $fd $02
	add  b                                           ; $5a6a: $80
	inc  b                                           ; $5a6b: $04
	add  b                                           ; $5a6c: $80
	ld   [$1080], sp                                 ; $5a6d: $08 $80 $10
	add  b                                           ; $5a70: $80
	jr   nz, jr_01c_59f3                             ; $5a71: $20 $80

	ld   b, b                                        ; $5a73: $40
	add  b                                           ; $5a74: $80
	add  b                                           ; $5a75: $80
	and  b                                           ; $5a76: $a0
	nop                                              ; $5a77: $00
	ld   b, $03                                      ; $5a78: $06 $03
	nop                                              ; $5a7a: $00
	ld   b, $02                                      ; $5a7b: $06 $02
	dec  c                                           ; $5a7d: $0d
	dec  b                                           ; $5a7e: $05
	dec  de                                          ; $5a7f: $1b
	add  c                                           ; $5a80: $81
	dec  bc                                          ; $5a81: $0b
	ld   bc, $17f7                                   ; $5a82: $01 $f7 $17
	add  b                                           ; $5a85: $80
	ld   d, a                                        ; $5a86: $57
	ld   [bc], a                                     ; $5a87: $02
	ld   d, $17                                      ; $5a88: $16 $17
	ld   bc, $f380                                   ; $5a8a: $01 $80 $f3
	add  b                                           ; $5a8d: $80
	ldh  a, [$80]                                    ; $5a8e: $f0 $80
	ld   sp, hl                                      ; $5a90: $f9
	rlca                                             ; $5a91: $07
	jr   c, @-$06                                    ; $5a92: $38 $f8

	inc  c                                           ; $5a94: $0c
	inc  a                                           ; $5a95: $3c
	ld   bc, $000d                                   ; $5a96: $01 $0d $00
	ld   b, $81                                      ; $5a99: $06 $81
	inc  bc                                          ; $5a9b: $03
	add  hl, bc                                      ; $5a9c: $09
	dec  c                                           ; $5a9d: $0d
	inc  b                                           ; $5a9e: $04
	dec  de                                          ; $5a9f: $1b
	dec  bc                                          ; $5aa0: $0b
	scf                                              ; $5aa1: $37
	rla                                              ; $5aa2: $17
	ld   d, [hl]                                     ; $5aa3: $56
	ld   d, $cf                                      ; $5aa4: $16 $cf
	ld   c, a                                        ; $5aa6: $4f
	add  b                                           ; $5aa7: $80
	cpl                                              ; $5aa8: $2f
	add  b                                           ; $5aa9: $80
	or   e                                           ; $5aaa: $b3
	nop                                              ; $5aab: $00
	rst  $38                                         ; $5aac: $ff
	adc  a                                           ; $5aad: $8f
	nop                                              ; $5aae: $00
	ld   [bc], a                                     ; $5aaf: $02
	add  b                                           ; $5ab0: $80
	nop                                              ; $5ab1: $00
	ret  nz                                          ; $5ab2: $c0

	add  c                                           ; $5ab3: $81
	add  b                                           ; $5ab4: $80
	nop                                              ; $5ab5: $00
	ld   h, b                                        ; $5ab6: $60
	add  e                                           ; $5ab7: $83
	ld   b, b                                        ; $5ab8: $40
	ld   [bc], a                                     ; $5ab9: $02
	ld   d, b                                        ; $5aba: $50
	ld   b, b                                        ; $5abb: $40
	jr   @-$7d                                       ; $5abc: $18 $81

	ld   d, b                                        ; $5abe: $50
	dec  b                                           ; $5abf: $05
	ld   d, a                                        ; $5ac0: $57
	ld   d, b                                        ; $5ac1: $50
	ld   b, a                                        ; $5ac2: $47
	add  a                                           ; $5ac3: $87
	cp   a                                           ; $5ac4: $bf
	ccf                                              ; $5ac5: $3f
	add  d                                           ; $5ac6: $82
	rst  $38                                         ; $5ac7: $ff
	ld   b, $3f                                      ; $5ac8: $06 $3f
	rst  $38                                         ; $5aca: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5acb: $cf
	rst  $38                                         ; $5acc: $ff
	di                                               ; $5acd: $f3
	rst  $38                                         ; $5ace: $ff
	db   $fc                                         ; $5acf: $fc
	add  b                                           ; $5ad0: $80
	rst  $38                                         ; $5ad1: $ff
	add  b                                           ; $5ad2: $80
	ld   a, [hl]                                     ; $5ad3: $7e
	rlca                                             ; $5ad4: $07
	ld   h, b                                        ; $5ad5: $60
	ld   h, h                                        ; $5ad6: $64
	ld   bc, $f013                                   ; $5ad7: $01 $13 $f0
	rst  $30                                         ; $5ada: $f7
	ldh  a, [rAUD3HIGH]                              ; $5adb: $f0 $1e
	adc  e                                           ; $5add: $8b
	nop                                              ; $5ade: $00
	add  b                                           ; $5adf: $80
	ld   bc, $008e                                   ; $5ae0: $01 $8e $00
	nop                                              ; $5ae3: $00
	rst  $38                                         ; $5ae4: $ff
	add  c                                           ; $5ae5: $81
	sbc  a                                           ; $5ae6: $9f
	nop                                              ; $5ae7: $00
	cp   a                                           ; $5ae8: $bf
	add  c                                           ; $5ae9: $81
	adc  a                                           ; $5aea: $8f
	dec  c                                           ; $5aeb: $0d
	cp   a                                           ; $5aec: $bf
	add  e                                           ; $5aed: $83
	cp   a                                           ; $5aee: $bf
	and  b                                           ; $5aef: $a0
	and  e                                           ; $5af0: $a3
	jr   nz, jr_01c_5b53                             ; $5af1: $20 $60

	ldh  [$78], a                                    ; $5af3: $e0 $78
	ldh  a, [$fc]                                    ; $5af5: $f0 $fc
	ld   hl, sp-$02                                  ; $5af7: $f8 $fe
	db   $fc                                         ; $5af9: $fc
	add  b                                           ; $5afa: $80
	ldh  a, [rSB]                                    ; $5afb: $f0 $01
	rst  $28                                         ; $5afd: $ef
	xor  $80                                         ; $5afe: $ee $80
	db   $dd                                         ; $5b00: $dd
	add  b                                           ; $5b01: $80
	sbc  a                                           ; $5b02: $9f
	ld   [bc], a                                     ; $5b03: $02
	ld   e, b                                        ; $5b04: $58
	ld   e, e                                        ; $5b05: $5b
	db   $fc                                         ; $5b06: $fc
	add  l                                           ; $5b07: $85
	nop                                              ; $5b08: $00
	add  b                                           ; $5b09: $80
	add  b                                           ; $5b0a: $80
	add  b                                           ; $5b0b: $80
	ret  nz                                          ; $5b0c: $c0

	sub  d                                           ; $5b0d: $92
	nop                                              ; $5b0e: $00
	nop                                              ; $5b0f: $00
	ld   b, b                                        ; $5b10: $40
	add  a                                           ; $5b11: $87
	ccf                                              ; $5b12: $3f
	add  d                                           ; $5b13: $82
	cpl                                              ; $5b14: $2f
	add  b                                           ; $5b15: $80
	rrca                                             ; $5b16: $0f
	add  b                                           ; $5b17: $80
	cpl                                              ; $5b18: $2f
	ld   bc, $6faf                                   ; $5b19: $01 $af $6f
	adc  b                                           ; $5b1c: $88
	rst  $28                                         ; $5b1d: $ef
	ld   [bc], a                                     ; $5b1e: $02
	xor  $ef                                         ; $5b1f: $ee $ef
	ld   b, c                                        ; $5b21: $41
	add  d                                           ; $5b22: $82
	rst  $30                                         ; $5b23: $f7
	add  d                                           ; $5b24: $82
	rst  $28                                         ; $5b25: $ef
	dec  b                                           ; $5b26: $05
	sbc  a                                           ; $5b27: $9f
	rst  JumpTable                                         ; $5b28: $df
	rrca                                             ; $5b29: $0f
	cp   a                                           ; $5b2a: $bf
	nop                                              ; $5b2b: $00
	rrca                                             ; $5b2c: $0f
	add  l                                           ; $5b2d: $85
	nop                                              ; $5b2e: $00
	ld   [$0040], sp                                 ; $5b2f: $08 $40 $00
	ldh  [rLCDC], a                                  ; $5b32: $e0 $40
	add  b                                           ; $5b34: $80
	ret  nz                                          ; $5b35: $c0

	ld   h, b                                        ; $5b36: $60
	add  b                                           ; $5b37: $80
	ret  nz                                          ; $5b38: $c0

	add  l                                           ; $5b39: $85
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	add  b                                           ; $5b3c: $80
	add  l                                           ; $5b3d: $85
	nop                                              ; $5b3e: $00
	ld   [bc], a                                     ; $5b3f: $02
	ldh  [rP1], a                                    ; $5b40: $e0 $00
	ldh  [$9d], a                                    ; $5b42: $e0 $9d
	nop                                              ; $5b44: $00
	nop                                              ; $5b45: $00
	add  hl, bc                                      ; $5b46: $09
	add  a                                           ; $5b47: $87
	cp   $04                                         ; $5b48: $fe $04
	ld   sp, hl                                      ; $5b4a: $f9
	ld   hl, sp+$0e                                  ; $5b4b: $f8 $0e
	nop                                              ; $5b4d: $00
	ld   hl, sp-$71                                  ; $5b4e: $f8 $8f
	nop                                              ; $5b50: $00
	add  b                                           ; $5b51: $80
	ld   [bc], a                                     ; $5b52: $02

jr_01c_5b53:
	add  b                                           ; $5b53: $80
	inc  b                                           ; $5b54: $04
	add  b                                           ; $5b55: $80
	ld   [$1080], sp                                 ; $5b56: $08 $80 $10
	add  b                                           ; $5b59: $80
	jr   nz, @-$7e                                   ; $5b5a: $20 $80

	ld   b, b                                        ; $5b5c: $40
	add  b                                           ; $5b5d: $80
	add  b                                           ; $5b5e: $80
	add  h                                           ; $5b5f: $84
	nop                                              ; $5b60: $00
	dec  b                                           ; $5b61: $05
	add  b                                           ; $5b62: $80
	nop                                              ; $5b63: $00
	ret  nz                                          ; $5b64: $c0

	add  b                                           ; $5b65: $80
	and  b                                           ; $5b66: $a0
	ret  nz                                          ; $5b67: $c0

	add  b                                           ; $5b68: $80
	ld   b, b                                        ; $5b69: $40
	inc  b                                           ; $5b6a: $04
	ld   h, b                                        ; $5b6b: $60
	add  b                                           ; $5b6c: $80
	ret  nz                                          ; $5b6d: $c0

	nop                                              ; $5b6e: $00
	add  b                                           ; $5b6f: $80
	sub  e                                           ; $5b70: $93
	nop                                              ; $5b71: $00
	add  b                                           ; $5b72: $80
	add  b                                           ; $5b73: $80
	rst  $38                                         ; $5b74: $ff
	nop                                              ; $5b75: $00
	push de                                          ; $5b76: $d5
	nop                                              ; $5b77: $00
	ld   bc, $fc03                                   ; $5b78: $01 $03 $fc
	add  c                                           ; $5b7b: $81
	cp   $81                                         ; $5b7c: $fe $81
	or   $00                                         ; $5b7e: $f6 $00
	di                                               ; $5b80: $f3
	add  c                                           ; $5b81: $81
	rst  $20                                         ; $5b82: $e7
	inc  b                                           ; $5b83: $04
	sub  l                                           ; $5b84: $95
	rst  $30                                         ; $5b85: $f7
	ld   a, a                                        ; $5b86: $7f
	rst  $38                                         ; $5b87: $ff
	nop                                              ; $5b88: $00
	adc  e                                           ; $5b89: $8b
	or   $03                                         ; $5b8a: $f6 $03
	rst  $30                                         ; $5b8c: $f7
	or   $ea                                         ; $5b8d: $f6 $ea
	db   $e3                                         ; $5b8f: $e3
	add  b                                           ; $5b90: $80
	add  hl, hl                                      ; $5b91: $29
	dec  b                                           ; $5b92: $05
	inc  c                                           ; $5b93: $0c
	dec  l                                           ; $5b94: $2d
	daa                                              ; $5b95: $27
	or   $f7                                         ; $5b96: $f6 $f7
	rlca                                             ; $5b98: $07
	add  b                                           ; $5b99: $80
	rst  $30                                         ; $5b9a: $f7
	nop                                              ; $5b9b: $00
	inc  bc                                          ; $5b9c: $03
	add  c                                           ; $5b9d: $81
	ei                                               ; $5b9e: $fb
	ld   a, [bc]                                     ; $5b9f: $0a
	ld   l, [hl]                                     ; $5ba0: $6e
	sub  a                                           ; $5ba1: $97

jr_01c_5ba2:
	dec  d                                           ; $5ba2: $15
	rla                                              ; $5ba3: $17
	rra                                              ; $5ba4: $1f
	ld   e, h                                        ; $5ba5: $5c
	ld   d, b                                        ; $5ba6: $50
	ld   d, e                                        ; $5ba7: $53
	jp   $cf8f                                       ; $5ba8: $c3 $8f $cf


	add  b                                           ; $5bab: $80
	call z, $e003                                    ; $5bac: $cc $03 $e0
	jr   nz, jr_01c_5ba2                             ; $5baf: $20 $f1

	ldh  a, [$81]                                    ; $5bb1: $f0 $81
	rst  $38                                         ; $5bb3: $ff
	ld   [$07fe], sp                                 ; $5bb4: $08 $fe $07
	rra                                              ; $5bb7: $1f
	ld   a, [$f49e]                                  ; $5bb8: $fa $9e $f4
	sub  c                                           ; $5bbb: $91
	ld   de, $8108                                   ; $5bbc: $11 $08 $81
	ld   b, c                                        ; $5bbf: $41
	nop                                              ; $5bc0: $00
	cp   a                                           ; $5bc1: $bf
	add  b                                           ; $5bc2: $80
	db   $f4                                         ; $5bc3: $f4
	add  b                                           ; $5bc4: $80
	ldh  a, [c]                                      ; $5bc5: $f2
	add  b                                           ; $5bc6: $80
	or   $80                                         ; $5bc7: $f6 $80
	and  $80                                         ; $5bc9: $e6 $80
	sub  $80                                         ; $5bcb: $d6 $80
	or   [hl]                                        ; $5bcd: $b6
	add  b                                           ; $5bce: $80
	halt                                             ; $5bcf: $76
	ld   bc, $08f6                                   ; $5bd0: $01 $f6 $08
	add  b                                           ; $5bd3: $80
	ld   a, [$a280]                                  ; $5bd4: $fa $80 $a2
	add  b                                           ; $5bd7: $80
	ld   a, [$9680]                                  ; $5bd8: $fa $80 $96
	add  b                                           ; $5bdb: $80
	dec  c                                           ; $5bdc: $0d
	add  b                                           ; $5bdd: $80
	ld   [hl], b                                     ; $5bde: $70
	add  b                                           ; $5bdf: $80
	rrca                                             ; $5be0: $0f
	ld   bc, $10ff                                   ; $5be1: $01 $ff $10
	add  b                                           ; $5be4: $80
	xor  l                                           ; $5be5: $ad
	dec  c                                           ; $5be6: $0d
	xor  e                                           ; $5be7: $ab
	inc  c                                           ; $5be8: $0c
	add  b                                           ; $5be9: $80
	rst  $30                                         ; $5bea: $f7
	cpl                                              ; $5beb: $2f
	rst  $28                                         ; $5bec: $ef
	add  b                                           ; $5bed: $80
	ccf                                              ; $5bee: $3f
	nop                                              ; $5bef: $00
	ret  nz                                          ; $5bf0: $c0

	ld   a, a                                        ; $5bf1: $7f
	rst  $38                                         ; $5bf2: $ff
	ccf                                              ; $5bf3: $3f
	pop  bc                                          ; $5bf4: $c1
	add  c                                           ; $5bf5: $81
	or   $02                                         ; $5bf6: $f6 $02
	dec  bc                                          ; $5bf8: $0b
	inc  bc                                          ; $5bf9: $03
	rst  $38                                         ; $5bfa: $ff
	add  b                                           ; $5bfb: $80
	ei                                               ; $5bfc: $fb
	ld   bc, $ff00                                   ; $5bfd: $01 $00 $ff
	add  b                                           ; $5c00: $80
	nop                                              ; $5c01: $00
	add  b                                           ; $5c02: $80
	rst  $38                                         ; $5c03: $ff
	add  b                                           ; $5c04: $80
	cp   $09                                         ; $5c05: $fe $09
	nop                                              ; $5c07: $00
	db   $fc                                         ; $5c08: $fc
	adc  h                                           ; $5c09: $8c
	adc  a                                           ; $5c0a: $8f
	rst  JumpTable                                         ; $5c0b: $df
	inc  hl                                          ; $5c0c: $23
	inc  bc                                          ; $5c0d: $03
	rst  $38                                         ; $5c0e: $ff
	rst  JumpTable                                         ; $5c0f: $df
	sbc  $81                                         ; $5c10: $de $81
	rst  JumpTable                                         ; $5c12: $df
	ld   [de], a                                     ; $5c13: $12
	ld   h, $06                                      ; $5c14: $26 $06
	inc  bc                                          ; $5c16: $03
	dec  b                                           ; $5c17: $05
	inc  de                                          ; $5c18: $13
	pop  af                                          ; $5c19: $f1
	db   $dd                                         ; $5c1a: $dd
	ld   [hl], d                                     ; $5c1b: $72
	ld   a, [$24a4]                                  ; $5c1c: $fa $a4 $24
	db   $d3                                         ; $5c1f: $d3
	add  e                                           ; $5c20: $83
	xor  a                                           ; $5c21: $af
	ld   l, a                                        ; $5c22: $6f
	cpl                                              ; $5c23: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c24: $cf
	ld   e, a                                        ; $5c25: $5f
	rra                                              ; $5c26: $1f
	add  b                                           ; $5c27: $80
	add  b                                           ; $5c28: $80
	add  d                                           ; $5c29: $82
	cp   a                                           ; $5c2a: $bf
	add  b                                           ; $5c2b: $80
	ccf                                              ; $5c2c: $3f
	add  b                                           ; $5c2d: $80
	sbc  a                                           ; $5c2e: $9f
	add  d                                           ; $5c2f: $82
	rst  $28                                         ; $5c30: $ef
	add  b                                           ; $5c31: $80
	rst  $30                                         ; $5c32: $f7
	rlca                                             ; $5c33: $07
	nop                                              ; $5c34: $00
	ld   [bc], a                                     ; $5c35: $02
	cp   $f2                                         ; $5c36: $fe $f2
	or   $c6                                         ; $5c38: $f6 $c6
	or   $36                                         ; $5c3a: $f6 $36
	add  l                                           ; $5c3c: $85
	or   $80                                         ; $5c3d: $f6 $80
	cp   d                                           ; $5c3f: $ba
	add  b                                           ; $5c40: $80
	reti                                             ; $5c41: $d9


	rlca                                             ; $5c42: $07
	rst  JumpTable                                         ; $5c43: $df
	rst  $10                                         ; $5c44: $d7
	rrca                                             ; $5c45: $0f
	rst  $28                                         ; $5c46: $ef
	db   $e3                                         ; $5c47: $e3
	add  e                                           ; $5c48: $83
	db   $fc                                         ; $5c49: $fc
	ld   a, h                                        ; $5c4a: $7c
	add  b                                           ; $5c4b: $80
	rrca                                             ; $5c4c: $0f
	ld   [de], a                                     ; $5c4d: $12
	inc  bc                                          ; $5c4e: $03
	ld   [hl], d                                     ; $5c4f: $72
	ld   [hl], e                                     ; $5c50: $73
	ld   sp, hl                                      ; $5c51: $f9
	rst  $38                                         ; $5c52: $ff
	ld   a, [$f706]                                  ; $5c53: $fa $06 $f7
	di                                               ; $5c56: $f3
	rst  $28                                         ; $5c57: $ef
	db   $ed                                         ; $5c58: $ed
	rst  JumpTable                                         ; $5c59: $df
	db   $dd                                         ; $5c5a: $dd
	cp   a                                           ; $5c5b: $bf
	rst  $38                                         ; $5c5c: $ff
	ccf                                              ; $5c5d: $3f
	ld   e, e                                        ; $5c5e: $5b
	rst  JumpTable                                         ; $5c5f: $df
	rlca                                             ; $5c60: $07
	add  h                                           ; $5c61: $84
	ld   e, a                                        ; $5c62: $5f
	add  b                                           ; $5c63: $80
	xor  a                                           ; $5c64: $af
	add  b                                           ; $5c65: $80
	and  e                                           ; $5c66: $a3
	add  b                                           ; $5c67: $80
	ld   c, h                                        ; $5c68: $4c
	add  d                                           ; $5c69: $82
	ld   e, a                                        ; $5c6a: $5f
	add  d                                           ; $5c6b: $82
	rst  $30                                         ; $5c6c: $f7
	add  d                                           ; $5c6d: $82
	rst  $28                                         ; $5c6e: $ef
	add  b                                           ; $5c6f: $80
	sbc  a                                           ; $5c70: $9f
	add  b                                           ; $5c71: $80
	ld   l, a                                        ; $5c72: $6f
	add  b                                           ; $5c73: $80
	rst  $28                                         ; $5c74: $ef
	ld   bc, $09f7                                   ; $5c75: $01 $f7 $09
	adc  l                                           ; $5c78: $8d
	or   $18                                         ; $5c79: $f6 $18
	ld   [$e2fc], a                                  ; $5c7b: $ea $fc $e2
	ei                                               ; $5c7e: $fb
	ld   a, e                                        ; $5c7f: $7b
	ld   [hl], a                                     ; $5c80: $77
	sub  l                                           ; $5c81: $95
	adc  a                                           ; $5c82: $8f
	cp   $cf                                         ; $5c83: $fe $cf
	rst  $10                                         ; $5c85: $d7
	or   a                                           ; $5c86: $b7
	cp   e                                           ; $5c87: $bb
	ld   a, e                                        ; $5c88: $7b
	cp   h                                           ; $5c89: $bc
	cp   l                                           ; $5c8a: $bd
	ld   h, c                                        ; $5c8b: $61
	xor  $7e                                         ; $5c8c: $ee $7e
	halt                                             ; $5c8e: $76
	ld   [hl], $ba                                   ; $5c8f: $36 $ba
	sbc  d                                           ; $5c91: $9a
	call c, $80cc                                    ; $5c92: $dc $cc $80
	xor  $80                                         ; $5c95: $ee $80
	or   $80                                         ; $5c97: $f6 $80
	ldh  a, [c]                                      ; $5c99: $f2
	dec  c                                           ; $5c9a: $0d
	db   $ec                                         ; $5c9b: $ec
	ldh  a, [$de]                                    ; $5c9c: $f0 $de
	xor  $af                                         ; $5c9e: $ee $af
	rst  ToBoot                                         ; $5ca0: $c7
	ld   b, a                                        ; $5ca1: $47
	ld   e, e                                        ; $5ca2: $5b
	db   $db                                         ; $5ca3: $db
	cp   a                                           ; $5ca4: $bf
	cp   l                                           ; $5ca5: $bd
	cp   a                                           ; $5ca6: $bf
	ld   c, $87                                      ; $5ca7: $0e $87
	add  c                                           ; $5ca9: $81
	or   a                                           ; $5caa: $b7
	rrca                                             ; $5cab: $0f
	nop                                              ; $5cac: $00
	db   $e3                                         ; $5cad: $e3
	ldh  [c], a                                      ; $5cae: $e2
	ld   e, a                                        ; $5caf: $5f
	ld   e, l                                        ; $5cb0: $5d
	ld   e, a                                        ; $5cb1: $5f
	ld   e, [hl]                                     ; $5cb2: $5e

jr_01c_5cb3:
	cp   [hl]                                        ; $5cb3: $be
	cp   l                                           ; $5cb4: $bd
	cp   h                                           ; $5cb5: $bc

jr_01c_5cb6:
	cp   [hl]                                        ; $5cb6: $be
	cp   e                                           ; $5cb7: $bb
	rst  JumpTable                                         ; $5cb8: $df
	ld   [hl], a                                     ; $5cb9: $77
	rst  $20                                         ; $5cba: $e7
	rst  $30                                         ; $5cbb: $f7
	add  b                                           ; $5cbc: $80
	rst  $10                                         ; $5cbd: $d7
	ld   [$dbd3], sp                                 ; $5cbe: $08 $d3 $db
	jp   hl                                          ; $5cc1: $e9


	db   $eb                                         ; $5cc2: $eb
	ld   [$89e9], a                                  ; $5cc3: $ea $e9 $89
	pop  af                                          ; $5cc6: $f1
	ld   [hl], c                                     ; $5cc7: $71
	add  b                                           ; $5cc8: $80
	ld   a, [hl]                                     ; $5cc9: $7e
	add  b                                           ; $5cca: $80
	rra                                              ; $5ccb: $1f
	inc  bc                                          ; $5ccc: $03
	ld   h, b                                        ; $5ccd: $60
	sub  e                                           ; $5cce: $93
	rst  $30                                         ; $5ccf: $f7
	call nz, $ef80                                   ; $5cd0: $c4 $80 $ef
	inc  bc                                          ; $5cd3: $03
	xor  $ae                                         ; $5cd4: $ee $ae
	xor  $6e                                         ; $5cd6: $ee $6e
	add  b                                           ; $5cd8: $80
	ldh  [$80], a                                    ; $5cd9: $e0 $80
	rrca                                             ; $5cdb: $0f
	add  b                                           ; $5cdc: $80
	ld   l, a                                        ; $5cdd: $6f
	inc  b                                           ; $5cde: $04
	or   $ea                                         ; $5cdf: $f6 $ea
	inc  e                                           ; $5ce1: $1c
	ld   l, h                                        ; $5ce2: $6c
	ld   l, a                                        ; $5ce3: $6f
	add  b                                           ; $5ce4: $80
	rst  $30                                         ; $5ce5: $f7
	rlca                                             ; $5ce6: $07
	add  e                                           ; $5ce7: $83
	ld   hl, sp+$78                                  ; $5ce8: $f8 $78
	adc  $fe                                         ; $5cea: $ce $fe
	or   b                                           ; $5cec: $b0
	jp   nz, $8042                                   ; $5ced: $c2 $42 $80

	ret  c                                           ; $5cf0: $d8

	nop                                              ; $5cf1: $00
	rst  $38                                         ; $5cf2: $ff
	rst  $38                                         ; $5cf3: $ff
	nop                                              ; $5cf4: $00
	rst  $38                                         ; $5cf5: $ff
	nop                                              ; $5cf6: $00
	rst  $38                                         ; $5cf7: $ff
	nop                                              ; $5cf8: $00
	rst  $38                                         ; $5cf9: $ff
	nop                                              ; $5cfa: $00
	jp   hl                                          ; $5cfb: $e9


	nop                                              ; $5cfc: $00
	dec  hl                                          ; $5cfd: $2b
	ld   bc, $0086                                   ; $5cfe: $01 $86 $00
	ld   [$0001], sp                                 ; $5d01: $08 $01 $00
	ld   [bc], a                                     ; $5d04: $02
	nop                                              ; $5d05: $00
	inc  b                                           ; $5d06: $04
	nop                                              ; $5d07: $00
	inc  b                                           ; $5d08: $04
	nop                                              ; $5d09: $00
	inc  b                                           ; $5d0a: $04
	add  c                                           ; $5d0b: $81
	nop                                              ; $5d0c: $00
	add  d                                           ; $5d0d: $82
	ld   bc, $0500                                   ; $5d0e: $01 $00 $05
	add  e                                           ; $5d11: $83
	ld   bc, $0202                                   ; $5d12: $01 $02 $02
	nop                                              ; $5d15: $00
	ld   bc, $0089                                   ; $5d16: $01 $89 $00
	nop                                              ; $5d19: $00
	inc  bc                                          ; $5d1a: $03
	add  c                                           ; $5d1b: $81
	nop                                              ; $5d1c: $00
	nop                                              ; $5d1d: $00

jr_01c_5d1e:
	inc  bc                                          ; $5d1e: $03
	and  e                                           ; $5d1f: $a3

jr_01c_5d20:
	nop                                              ; $5d20: $00
	inc  b                                           ; $5d21: $04
	ldh  a, [rP1]                                    ; $5d22: $f0 $00
	adc  a                                           ; $5d24: $8f
	nop                                              ; $5d25: $00
	add  b                                           ; $5d26: $80
	add  b                                           ; $5d27: $80
	nop                                              ; $5d28: $00
	add  b                                           ; $5d29: $80
	add  b                                           ; $5d2a: $80
	add  b                                           ; $5d2b: $80
	ld   [hl], b                                     ; $5d2c: $70
	ld   bc, $2303                                   ; $5d2d: $01 $03 $23
	add  c                                           ; $5d30: $81
	jr   nz, jr_01c_5cb3                             ; $5d31: $20 $80

	jr   z, jr_01c_5cb6                              ; $5d33: $28 $81

	ld   [$a804], sp                                 ; $5d35: $08 $04 $a8
	cp   d                                           ; $5d38: $ba
	ld   a, [hl-]                                    ; $5d39: $3a
	ld   e, $3e                                      ; $5d3a: $1e $3e
	add  b                                           ; $5d3c: $80
	cp   $80                                         ; $5d3d: $fe $80
	ld   a, h                                        ; $5d3f: $7c
	ld   [bc], a                                     ; $5d40: $02
	add  b                                           ; $5d41: $80
	nop                                              ; $5d42: $00
	ld   a, a                                        ; $5d43: $7f
	add  c                                           ; $5d44: $81
	nop                                              ; $5d45: $00
	nop                                              ; $5d46: $00
	rst  $38                                         ; $5d47: $ff
	add  e                                           ; $5d48: $83

jr_01c_5d49:
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00

jr_01c_5d4b:
	rst  $38                                         ; $5d4b: $ff
	sub  a                                           ; $5d4c: $97
	nop                                              ; $5d4d: $00
	inc  b                                           ; $5d4e: $04
	add  b                                           ; $5d4f: $80
	nop                                              ; $5d50: $00
	ld   b, b                                        ; $5d51: $40
	nop                                              ; $5d52: $00
	jr   nz, @-$7e                                   ; $5d53: $20 $80

	add  b                                           ; $5d55: $80
	ld   bc, $1000                                   ; $5d56: $01 $00 $10
	add  l                                           ; $5d59: $85
	nop                                              ; $5d5a: $00
	inc  b                                           ; $5d5b: $04
	ld   [$0700], sp                                 ; $5d5c: $08 $00 $07
	jr   jr_01c_5d7a                                 ; $5d5f: $18 $19

	add  d                                           ; $5d61: $82
	ld   a, l                                        ; $5d62: $7d
	add  hl, bc                                      ; $5d63: $09
	dec  a                                           ; $5d64: $3d
	ccf                                              ; $5d65: $3f
	dec  sp                                          ; $5d66: $3b
	cp   e                                           ; $5d67: $bb
	dec  sp                                          ; $5d68: $3b
	cp   b                                           ; $5d69: $b8
	nop                                              ; $5d6a: $00
	pop  af                                          ; $5d6b: $f1
	ldh  a, [rSB]                                    ; $5d6c: $f0 $01
	add  c                                           ; $5d6e: $81
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00
	rst  $38                                         ; $5d71: $ff
	adc  c                                           ; $5d72: $89
	nop                                              ; $5d73: $00
	inc  b                                           ; $5d74: $04
	ldh  [rP1], a                                    ; $5d75: $e0 $00
	ret  c                                           ; $5d77: $d8

	ret  nz                                          ; $5d78: $c0

	rst  ToBoot                                         ; $5d79: $c7

jr_01c_5d7a:
	add  l                                           ; $5d7a: $85
	ret  nz                                          ; $5d7b: $c0

	add  b                                           ; $5d7c: $80
	nop                                              ; $5d7d: $00
	ld   [bc], a                                     ; $5d7e: $02
	rst  $38                                         ; $5d7f: $ff
	nop                                              ; $5d80: $00
	rst  $38                                         ; $5d81: $ff
	add  c                                           ; $5d82: $81
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	rst  $38                                         ; $5d85: $ff
	adc  a                                           ; $5d86: $8f
	nop                                              ; $5d87: $00
	inc  b                                           ; $5d88: $04
	db   $fc                                         ; $5d89: $fc
	nop                                              ; $5d8a: $00
	ld   [bc], a                                     ; $5d8b: $02

jr_01c_5d8c:
	inc  b                                           ; $5d8c: $04
	dec  b                                           ; $5d8d: $05
	add  c                                           ; $5d8e: $81
	ld   [bc], a                                     ; $5d8f: $02

jr_01c_5d90:
	dec  b                                           ; $5d90: $05
	ldh  [c], a                                      ; $5d91: $e2

jr_01c_5d92:
	ld   c, $ee                                      ; $5d92: $0e $ee
	nop                                              ; $5d94: $00
	inc  bc                                          ; $5d95: $03
	nop                                              ; $5d96: $00
	add  b                                           ; $5d97: $80
	inc  bc                                          ; $5d98: $03
	nop                                              ; $5d99: $00
	inc  hl                                          ; $5d9a: $23
	add  c                                           ; $5d9b: $81
	jr   nz, jr_01c_5d1e                             ; $5d9c: $20 $80

	jr   z, jr_01c_5d20                              ; $5d9e: $28 $80

	ld   l, b                                        ; $5da0: $68
	add  b                                           ; $5da1: $80
	adc  b                                           ; $5da2: $88
	add  b                                           ; $5da3: $80
	ld   a, d                                        ; $5da4: $7a
	add  d                                           ; $5da5: $82
	cp   $80                                         ; $5da6: $fe $80
	ld   a, h                                        ; $5da8: $7c
	ld   [bc], a                                     ; $5da9: $02
	add  b                                           ; $5daa: $80
	nop                                              ; $5dab: $00
	ld   a, a                                        ; $5dac: $7f
	add  c                                           ; $5dad: $81
	nop                                              ; $5dae: $00
	nop                                              ; $5daf: $00
	rst  $38                                         ; $5db0: $ff
	add  e                                           ; $5db1: $83
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	rst  $38                                         ; $5db4: $ff
	adc  l                                           ; $5db5: $8d

jr_01c_5db6:
	nop                                              ; $5db6: $00
	inc  b                                           ; $5db7: $04
	ldh  a, [rP1]                                    ; $5db8: $f0 $00
	adc  a                                           ; $5dba: $8f
	nop                                              ; $5dbb: $00
	add  b                                           ; $5dbc: $80
	add  b                                           ; $5dbd: $80
	nop                                              ; $5dbe: $00
	add  b                                           ; $5dbf: $80
	add  b                                           ; $5dc0: $80
	add  b                                           ; $5dc1: $80
	ld   [hl], b                                     ; $5dc2: $70
	ld   bc, $2303                                   ; $5dc3: $01 $03 $23
	add  c                                           ; $5dc6: $81
	jr   nz, jr_01c_5d49                             ; $5dc7: $20 $80

	jr   z, jr_01c_5d4b                              ; $5dc9: $28 $80

	ld   l, b                                        ; $5dcb: $68
	add  b                                           ; $5dcc: $80
	adc  b                                           ; $5dcd: $88
	add  b                                           ; $5dce: $80
	ld   a, d                                        ; $5dcf: $7a
	add  d                                           ; $5dd0: $82
	cp   $06                                         ; $5dd1: $fe $06
	ld   a, h                                        ; $5dd3: $7c
	ld   a, l                                        ; $5dd4: $7d
	add  c                                           ; $5dd5: $81
	ld   bc, $007f                                   ; $5dd6: $01 $7f $00
	ld   bc, $0085                                   ; $5dd9: $01 $85 $00
	ld   [bc], a                                     ; $5ddc: $02
	ld   a, a                                        ; $5ddd: $7f
	nop                                              ; $5dde: $00
	add  b                                           ; $5ddf: $80
	add  c                                           ; $5de0: $81
	nop                                              ; $5de1: $00
	ld   a, [bc]                                     ; $5de2: $0a
	rst  $38                                         ; $5de3: $ff
	nop                                              ; $5de4: $00
	ld   bc, $0200                                   ; $5de5: $01 $00 $02
	nop                                              ; $5de8: $00
	ld   [bc], a                                     ; $5de9: $02
	nop                                              ; $5dea: $00
	ld   [bc], a                                     ; $5deb: $02
	nop                                              ; $5dec: $00
	inc  b                                           ; $5ded: $04
	add  c                                           ; $5dee: $81
	nop                                              ; $5def: $00
	add  b                                           ; $5df0: $80
	ld   bc, $0500                                   ; $5df1: $01 $00 $05
	add  l                                           ; $5df4: $85
	ld   bc, $0202                                   ; $5df5: $01 $02 $02
	nop                                              ; $5df8: $00
	ld   bc, $0091                                   ; $5df9: $01 $91 $00
	inc  b                                           ; $5dfc: $04

jr_01c_5dfd:
	ld   a, b                                        ; $5dfd: $78
	nop                                              ; $5dfe: $00
	ld   b, a                                        ; $5dff: $47
	nop                                              ; $5e00: $00
	ret  nz                                          ; $5e01: $c0

	add  b                                           ; $5e02: $80
	nop                                              ; $5e03: $00
	add  b                                           ; $5e04: $80
	ld   b, b                                        ; $5e05: $40
	add  b                                           ; $5e06: $80
	jr   c, jr_01c_5e0a                              ; $5e07: $38 $01

	nop                                              ; $5e09: $00

jr_01c_5e0a:
	jr   nz, jr_01c_5d8c                             ; $5e0a: $20 $80

	inc  hl                                          ; $5e0c: $23
	nop                                              ; $5e0d: $00
	jr   nz, jr_01c_5d90                             ; $5e0e: $20 $80

	jr   z, jr_01c_5d92                              ; $5e10: $28 $80

	ld   l, b                                        ; $5e12: $68
	add  b                                           ; $5e13: $80
	adc  b                                           ; $5e14: $88
	add  b                                           ; $5e15: $80
	ld   a, d                                        ; $5e16: $7a
	add  d                                           ; $5e17: $82
	cp   $80                                         ; $5e18: $fe $80
	ld   a, [hl]                                     ; $5e1a: $7e
	ld   b, $80                                      ; $5e1b: $06 $80
	ld   bc, $017d                                   ; $5e1d: $01 $7d $01
	inc  bc                                          ; $5e20: $03
	nop                                              ; $5e21: $00
	ld   bc, $0085                                   ; $5e22: $01 $85 $00
	ld   [bc], a                                     ; $5e25: $02
	ld   a, a                                        ; $5e26: $7f
	nop                                              ; $5e27: $00
	add  b                                           ; $5e28: $80
	add  c                                           ; $5e29: $81
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	rst  $38                                         ; $5e2c: $ff
	adc  a                                           ; $5e2d: $8f
	nop                                              ; $5e2e: $00
	inc  b                                           ; $5e2f: $04
	add  b                                           ; $5e30: $80
	nop                                              ; $5e31: $00
	ld   b, b                                        ; $5e32: $40
	nop                                              ; $5e33: $00
	jr   nz, jr_01c_5db6                             ; $5e34: $20 $80

	nop                                              ; $5e36: $00
	add  b                                           ; $5e37: $80
	add  b                                           ; $5e38: $80
	ld   bc, $1000                                   ; $5e39: $01 $00 $10
	add  a                                           ; $5e3c: $87
	nop                                              ; $5e3d: $00
	inc  bc                                          ; $5e3e: $03
	ld   [$3730], sp                                 ; $5e3f: $08 $30 $37
	ld   a, b                                        ; $5e42: $78
	add  b                                           ; $5e43: $80
	ld   a, e                                        ; $5e44: $7b
	nop                                              ; $5e45: $00
	ld   a, c                                        ; $5e46: $79
	add  d                                           ; $5e47: $82
	ld   a, l                                        ; $5e48: $7d
	dec  b                                           ; $5e49: $05
	dec  a                                           ; $5e4a: $3d
	cp   a                                           ; $5e4b: $bf
	dec  sp                                          ; $5e4c: $3b
	cp   b                                           ; $5e4d: $b8
	ld   a, b                                        ; $5e4e: $78
	ld   a, a                                        ; $5e4f: $7f
	add  b                                           ; $5e50: $80
	ld   [hl], b                                     ; $5e51: $70
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	add  b                                           ; $5e54: $80
	ldh  a, [rP1]                                    ; $5e55: $f0 $00
	rlca                                             ; $5e57: $07
	add  c                                           ; $5e58: $81
	nop                                              ; $5e59: $00
	nop                                              ; $5e5a: $00
	rst  $38                                         ; $5e5b: $ff
	adc  c                                           ; $5e5c: $89
	nop                                              ; $5e5d: $00
	nop                                              ; $5e5e: $00
	ld   bc, $0085                                   ; $5e5f: $01 $85 $00
	nop                                              ; $5e62: $00
	ld   [bc], a                                     ; $5e63: $02
	add  c                                           ; $5e64: $81
	nop                                              ; $5e65: $00
	ld   b, $04                                      ; $5e66: $06 $04
	nop                                              ; $5e68: $00
	ld   [bc], a                                     ; $5e69: $02
	nop                                              ; $5e6a: $00
	inc  b                                           ; $5e6b: $04
	nop                                              ; $5e6c: $00
	ld   bc, $0083                                   ; $5e6d: $01 $83 $00
	ld   b, $0f                                      ; $5e70: $06 $0f
	nop                                              ; $5e72: $00

jr_01c_5e73:
	jr   nc, jr_01c_5e75                             ; $5e73: $30 $00

jr_01c_5e75:
	ld   b, b                                        ; $5e75: $40
	nop                                              ; $5e76: $00
	add  b                                           ; $5e77: $80
	add  b                                           ; $5e78: $80
	jr   nz, jr_01c_5dfd                             ; $5e79: $20 $82

	stop                                             ; $5e7b: $10 $00
	nop                                              ; $5e7d: $00
	add  b                                           ; $5e7e: $80
	inc  bc                                          ; $5e7f: $03
	ld   bc, $2000                                   ; $5e80: $01 $00 $20
	add  b                                           ; $5e83: $80
	cpl                                              ; $5e84: $2f
	add  b                                           ; $5e85: $80
	ld   hl, $2000                                   ; $5e86: $21 $00 $20
	add  b                                           ; $5e89: $80
	ld   b, b                                        ; $5e8a: $40
	ld   bc, $ff00                                   ; $5e8b: $01 $00 $ff
	add  l                                           ; $5e8e: $85
	nop                                              ; $5e8f: $00
	rlca                                             ; $5e90: $07
	ret  nz                                          ; $5e91: $c0

	nop                                              ; $5e92: $00
	jr   nz, jr_01c_5e95                             ; $5e93: $20 $00

jr_01c_5e95:
	stop                                             ; $5e95: $10 $00

jr_01c_5e97:
	ld   [$8000], sp                                 ; $5e97: $08 $00 $80
	ld   [hl], b                                     ; $5e9a: $70
	dec  b                                           ; $5e9b: $05
	ccf                                              ; $5e9c: $3f
	jr   c, jr_01c_5e97                              ; $5e9d: $38 $f8

	ld   a, [$797a]                                  ; $5e9f: $fa $7a $79
	add  b                                           ; $5ea2: $80
	ld   sp, hl                                      ; $5ea3: $f9
	ld   bc, $b8b9                                   ; $5ea4: $01 $b9 $b8
	add  b                                           ; $5ea7: $80
	and  b                                           ; $5ea8: $a0
	add  b                                           ; $5ea9: $80
	ld   c, $02                                      ; $5eaa: $0e $02
	ldh  [rP1], a                                    ; $5eac: $e0 $00
	rra                                              ; $5eae: $1f
	adc  l                                           ; $5eaf: $8d
	nop                                              ; $5eb0: $00
	inc  b                                           ; $5eb1: $04
	rst  $38                                         ; $5eb2: $ff
	nop                                              ; $5eb3: $00
	ld   c, $ce                                      ; $5eb4: $0e $ce
	add  $82                                         ; $5eb6: $c6 $82
	or   $07                                         ; $5eb8: $f6 $07
	halt                                             ; $5eba: $76
	ld   [hl], b                                     ; $5ebb: $70
	ldh  a, [$f3]                                    ; $5ebc: $f0 $f3
	ldh  [$ec], a                                    ; $5ebe: $e0 $ec
	nop                                              ; $5ec0: $00
	ldh  a, [$8d]                                    ; $5ec1: $f0 $8d
	nop                                              ; $5ec3: $00
	inc  b                                           ; $5ec4: $04
	ret  nz                                          ; $5ec5: $c0

	nop                                              ; $5ec6: $00
	jr   c, jr_01c_5ec9                              ; $5ec7: $38 $00

jr_01c_5ec9:
	rlca                                             ; $5ec9: $07
	add  l                                           ; $5eca: $85
	nop                                              ; $5ecb: $00

jr_01c_5ecc:
	nop                                              ; $5ecc: $00
	rst  $38                                         ; $5ecd: $ff
	sub  e                                           ; $5ece: $93

jr_01c_5ecf:
	nop                                              ; $5ecf: $00
	inc  b                                           ; $5ed0: $04
	jr   nc, jr_01c_5ed3                             ; $5ed1: $30 $00

jr_01c_5ed3:
	ret  z                                           ; $5ed3: $c8

	jr   nc, jr_01c_5f0c                             ; $5ed4: $30 $36

	add  b                                           ; $5ed6: $80
	jr   c, jr_01c_5edc                              ; $5ed7: $38 $03

	inc  e                                           ; $5ed9: $1c
	dec  e                                           ; $5eda: $1d
	nop                                              ; $5edb: $00

jr_01c_5edc:
	rst  $38                                         ; $5edc: $ff
	adc  l                                           ; $5edd: $8d
	nop                                              ; $5ede: $00
	inc  b                                           ; $5edf: $04
	ld   a, b                                        ; $5ee0: $78
	nop                                              ; $5ee1: $00
	ld   b, a                                        ; $5ee2: $47
	nop                                              ; $5ee3: $00
	ret  nz                                          ; $5ee4: $c0

	add  b                                           ; $5ee5: $80
	nop                                              ; $5ee6: $00
	add  b                                           ; $5ee7: $80
	ld   b, b                                        ; $5ee8: $40
	add  b                                           ; $5ee9: $80
	jr   c, jr_01c_5eed                              ; $5eea: $38 $01

	nop                                              ; $5eec: $00

jr_01c_5eed:
	jr   nz, @-$7e                                   ; $5eed: $20 $80

	inc  hl                                          ; $5eef: $23
	nop                                              ; $5ef0: $00
	jr   nz, jr_01c_5e73                             ; $5ef1: $20 $80

	jr   z, jr_01c_5e75                              ; $5ef3: $28 $80

	ld   l, b                                        ; $5ef5: $68
	add  b                                           ; $5ef6: $80
	adc  b                                           ; $5ef7: $88
	add  b                                           ; $5ef8: $80
	ld   a, d                                        ; $5ef9: $7a
	add  d                                           ; $5efa: $82
	cp   $80                                         ; $5efb: $fe $80
	ld   a, [hl]                                     ; $5efd: $7e
	inc  b                                           ; $5efe: $04
	add  b                                           ; $5eff: $80
	ld   bc, $007f                                   ; $5f00: $01 $7f $00
	ld   bc, $0089                                   ; $5f03: $01 $89 $00
	ld   [bc], a                                     ; $5f06: $02
	ccf                                              ; $5f07: $3f
	nop                                              ; $5f08: $00
	ld   b, b                                        ; $5f09: $40
	add  c                                           ; $5f0a: $81
	nop                                              ; $5f0b: $00

jr_01c_5f0c:
	nop                                              ; $5f0c: $00
	ld   a, a                                        ; $5f0d: $7f
	adc  l                                           ; $5f0e: $8d
	nop                                              ; $5f0f: $00
	inc  b                                           ; $5f10: $04
	add  b                                           ; $5f11: $80
	nop                                              ; $5f12: $00
	ld   b, b                                        ; $5f13: $40
	nop                                              ; $5f14: $00
	jr   nz, jr_01c_5e97                             ; $5f15: $20 $80

	nop                                              ; $5f17: $00
	add  b                                           ; $5f18: $80
	add  b                                           ; $5f19: $80
	ld   bc, $1000                                   ; $5f1a: $01 $00 $10
	add  a                                           ; $5f1d: $87
	nop                                              ; $5f1e: $00
	inc  bc                                          ; $5f1f: $03
	ld   c, $30                                      ; $5f20: $0e $30
	scf                                              ; $5f22: $37
	halt                                             ; $5f23: $76
	add  [hl]                                        ; $5f24: $86
	ld   [hl], a                                     ; $5f25: $77
	add  b                                           ; $5f26: $80
	ld   [hl], c                                     ; $5f27: $71
	ld   [bc], a                                     ; $5f28: $02
	halt                                             ; $5f29: $76
	ld   [hl], b                                     ; $5f2a: $70
	ld   [hl], c                                     ; $5f2b: $71
	add  d                                           ; $5f2c: $82
	ld   [hl], b                                     ; $5f2d: $70
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	add  b                                           ; $5f30: $80
	ldh  a, [rP1]                                    ; $5f31: $f0 $00
	rlca                                             ; $5f33: $07
	add  c                                           ; $5f34: $81
	nop                                              ; $5f35: $00
	nop                                              ; $5f36: $00
	rst  $38                                         ; $5f37: $ff
	adc  l                                           ; $5f38: $8d
	nop                                              ; $5f39: $00
	inc  b                                           ; $5f3a: $04
	ldh  a, [rP1]                                    ; $5f3b: $f0 $00
	adc  a                                           ; $5f3d: $8f
	nop                                              ; $5f3e: $00
	add  b                                           ; $5f3f: $80
	add  b                                           ; $5f40: $80
	nop                                              ; $5f41: $00
	add  b                                           ; $5f42: $80
	add  b                                           ; $5f43: $80
	add  b                                           ; $5f44: $80
	ld   [hl], b                                     ; $5f45: $70
	ld   bc, $2303                                   ; $5f46: $01 $03 $23
	add  c                                           ; $5f49: $81
	jr   nz, jr_01c_5ecc                             ; $5f4a: $20 $80

	jr   z, jr_01c_5ecf                              ; $5f4c: $28 $81

	ld   [$a804], sp                                 ; $5f4e: $08 $04 $a8
	cp   d                                           ; $5f51: $ba
	ld   a, [hl-]                                    ; $5f52: $3a
	ld   e, $3e                                      ; $5f53: $1e $3e
	add  b                                           ; $5f55: $80
	cp   $06                                         ; $5f56: $fe $06
	ld   a, h                                        ; $5f58: $7c

jr_01c_5f59:
	ld   a, l                                        ; $5f59: $7d
	add  c                                           ; $5f5a: $81
	ld   bc, $007f                                   ; $5f5b: $01 $7f $00
	ld   bc, $0085                                   ; $5f5e: $01 $85 $00
	ld   [bc], a                                     ; $5f61: $02
	ld   a, a                                        ; $5f62: $7f
	nop                                              ; $5f63: $00
	add  b                                           ; $5f64: $80
	add  c                                           ; $5f65: $81
	nop                                              ; $5f66: $00
	nop                                              ; $5f67: $00
	rst  $38                                         ; $5f68: $ff
	sub  c                                           ; $5f69: $91
	nop                                              ; $5f6a: $00
	inc  b                                           ; $5f6b: $04
	add  b                                           ; $5f6c: $80
	nop                                              ; $5f6d: $00
	ld   b, b                                        ; $5f6e: $40
	nop                                              ; $5f6f: $00
	jr   nz, @-$7e                                   ; $5f70: $20 $80

	add  b                                           ; $5f72: $80
	ld   bc, $1000                                   ; $5f73: $01 $00 $10
	add  l                                           ; $5f76: $85
	nop                                              ; $5f77: $00
	ld   [$0010], sp                                 ; $5f78: $08 $10 $00
	jr   jr_01c_5f7d                                 ; $5f7b: $18 $00

jr_01c_5f7d:
	rlca                                             ; $5f7d: $07
	jr   c, jr_01c_5fbb                              ; $5f7e: $38 $3b

	ld   a, e                                        ; $5f80: $7b
	ld   a, c                                        ; $5f81: $79
	add  d                                           ; $5f82: $82
	ld   a, l                                        ; $5f83: $7d
	dec  b                                           ; $5f84: $05
	dec  a                                           ; $5f85: $3d
	cp   a                                           ; $5f86: $bf
	dec  sp                                          ; $5f87: $3b
	cp   b                                           ; $5f88: $b8
	ld   a, b                                        ; $5f89: $78
	ld   a, a                                        ; $5f8a: $7f
	add  b                                           ; $5f8b: $80
	ld   [hl], b                                     ; $5f8c: $70
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	add  b                                           ; $5f8f: $80
	ldh  a, [rP1]                                    ; $5f90: $f0 $00
	rlca                                             ; $5f92: $07
	add  c                                           ; $5f93: $81
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	rst  $38                                         ; $5f96: $ff
	add  a                                           ; $5f97: $87
	nop                                              ; $5f98: $00
	inc  b                                           ; $5f99: $04
	ldh  [rP1], a                                    ; $5f9a: $e0 $00
	call c, $c3c0                                    ; $5f9c: $dc $c0 $c3
	add  e                                           ; $5f9f: $83
	ret  nz                                          ; $5fa0: $c0

	add  b                                           ; $5fa1: $80
	nop                                              ; $5fa2: $00
	ld   [bc], a                                     ; $5fa3: $02
	ldh  a, [rP1]                                    ; $5fa4: $f0 $00
	rrca                                             ; $5fa6: $0f
	add  c                                           ; $5fa7: $81
	nop                                              ; $5fa8: $00
	nop                                              ; $5fa9: $00
	rst  $38                                         ; $5faa: $ff
	add  c                                           ; $5fab: $81
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	rst  $38                                         ; $5fae: $ff
	adc  e                                           ; $5faf: $8b
	nop                                              ; $5fb0: $00
	ld   b, $80                                      ; $5fb1: $06 $80
	nop                                              ; $5fb3: $00
	ld   [hl], b                                     ; $5fb4: $70
	nop                                              ; $5fb5: $00
	ld   c, $00                                      ; $5fb6: $0e $00
	ld   bc, $0281                                   ; $5fb8: $01 $81 $02

jr_01c_5fbb:
	ld   [$0282], sp                                 ; $5fbb: $08 $82 $02
	ld   h, d                                        ; $5fbe: $62
	ld   c, $ee                                      ; $5fbf: $0e $ee
	nop                                              ; $5fc1: $00
	ld   bc, $fe00                                   ; $5fc2: $01 $00 $fe
	adc  c                                           ; $5fc5: $89
	nop                                              ; $5fc6: $00
	inc  b                                           ; $5fc7: $04
	ldh  a, [rP1]                                    ; $5fc8: $f0 $00
	adc  a                                           ; $5fca: $8f
	nop                                              ; $5fcb: $00
	add  b                                           ; $5fcc: $80
	add  b                                           ; $5fcd: $80
	nop                                              ; $5fce: $00
	add  b                                           ; $5fcf: $80
	add  b                                           ; $5fd0: $80
	add  b                                           ; $5fd1: $80
	ld   [hl], b                                     ; $5fd2: $70
	ld   bc, $2303                                   ; $5fd3: $01 $03 $23
	add  c                                           ; $5fd6: $81
	jr   nz, jr_01c_5f59                             ; $5fd7: $20 $80

	jr   z, @-$7d                                    ; $5fd9: $28 $81

	ld   [$a804], sp                                 ; $5fdb: $08 $04 $a8
	cp   d                                           ; $5fde: $ba
	ld   a, [hl-]                                    ; $5fdf: $3a
	ld   e, $3e                                      ; $5fe0: $1e $3e
	add  b                                           ; $5fe2: $80
	cp   $80                                         ; $5fe3: $fe $80
	ld   a, h                                        ; $5fe5: $7c
	inc  b                                           ; $5fe6: $04
	add  b                                           ; $5fe7: $80
	ld   bc, $007f                                   ; $5fe8: $01 $7f $00
	ld   bc, $0089                                   ; $5feb: $01 $89 $00
	ld   [bc], a                                     ; $5fee: $02
	ccf                                              ; $5fef: $3f
	nop                                              ; $5ff0: $00
	ld   b, b                                        ; $5ff1: $40
	add  c                                           ; $5ff2: $81
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	ld   a, a                                        ; $5ff5: $7f
	adc  l                                           ; $5ff6: $8d
	nop                                              ; $5ff7: $00
	inc  b                                           ; $5ff8: $04
	add  b                                           ; $5ff9: $80
	nop                                              ; $5ffa: $00
	ld   b, b                                        ; $5ffb: $40
	nop                                              ; $5ffc: $00
	jr   nz, @-$7e                                   ; $5ffd: $20 $80

	add  b                                           ; $5fff: $80
	ld   bc, $1000                                   ; $6000: $01 $00 $10
	add  l                                           ; $6003: $85
	nop                                              ; $6004: $00
	rlca                                             ; $6005: $07
	stop                                             ; $6006: $10 $00
	stop                                             ; $6008: $10 $00
	ld   c, $30                                      ; $600a: $0e $30
	scf                                              ; $600c: $37
	halt                                             ; $600d: $76
	add  [hl]                                        ; $600e: $86
	ld   [hl], a                                     ; $600f: $77
	add  b                                           ; $6010: $80
	ld   [hl], c                                     ; $6011: $71
	ld   [bc], a                                     ; $6012: $02
	halt                                             ; $6013: $76
	ld   [hl], b                                     ; $6014: $70
	ld   [hl], c                                     ; $6015: $71
	add  d                                           ; $6016: $82
	ld   [hl], b                                     ; $6017: $70
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	add  b                                           ; $601a: $80
	ldh  a, [rP1]                                    ; $601b: $f0 $00
	rlca                                             ; $601d: $07
	add  c                                           ; $601e: $81
	nop                                              ; $601f: $00
	nop                                              ; $6020: $00
	rst  $38                                         ; $6021: $ff
	add  e                                           ; $6022: $83
	nop                                              ; $6023: $00
	ld   b, $c0                                      ; $6024: $06 $c0
	nop                                              ; $6026: $00
	ldh  a, [$c0]                                    ; $6027: $f0 $c0
	call z, $c3c0                                    ; $6029: $cc $c0 $c3
	add  e                                           ; $602c: $83
	ret  nz                                          ; $602d: $c0

	add  b                                           ; $602e: $80
	nop                                              ; $602f: $00
	ld   [bc], a                                     ; $6030: $02
	ldh  a, [rP1]                                    ; $6031: $f0 $00
	rrca                                             ; $6033: $0f
	add  e                                           ; $6034: $83
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	rst  $38                                         ; $6037: $ff
	add  c                                           ; $6038: $81
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	rst  $38                                         ; $603b: $ff
	adc  e                                           ; $603c: $8b
	nop                                              ; $603d: $00
	ld   b, $c0                                      ; $603e: $06 $c0
	nop                                              ; $6040: $00
	jr   c, jr_01c_6043                              ; $6041: $38 $00

jr_01c_6043:
	ld   b, $00                                      ; $6043: $06 $00
	ld   bc, $0080                                   ; $6045: $01 $80 $00
	add  hl, bc                                      ; $6048: $09
	ld   [bc], a                                     ; $6049: $02
	ldh  [c], a                                      ; $604a: $e2
	ld   [bc], a                                     ; $604b: $02
	ld   [hl+], a                                    ; $604c: $22
	ld   e, $de                                      ; $604d: $1e $de
	nop                                              ; $604f: $00
	ld   bc, $fe00                                   ; $6050: $01 $00 $fe
	sub  d                                           ; $6053: $92
	nop                                              ; $6054: $00
	add  b                                           ; $6055: $80
	ld   [$4080], sp                                 ; $6056: $08 $80 $40
	add  d                                           ; $6059: $82
	nop                                              ; $605a: $00
	add  b                                           ; $605b: $80
	ld   [$0094], sp                                 ; $605c: $08 $94 $00
	add  b                                           ; $605f: $80
	ld   b, b                                        ; $6060: $40
	add  b                                           ; $6061: $80
	ld   [$0082], sp                                 ; $6062: $08 $82 $00
	add  b                                           ; $6065: $80
	ld   [bc], a                                     ; $6066: $02
	rst  $38                                         ; $6067: $ff
	nop                                              ; $6068: $00
	rst  $38                                         ; $6069: $ff
	nop                                              ; $606a: $00
	rst  $38                                         ; $606b: $ff
	nop                                              ; $606c: $00
	rst  $38                                         ; $606d: $ff
	nop                                              ; $606e: $00
	rst  $38                                         ; $606f: $ff
	nop                                              ; $6070: $00
	ld   a, [rRAMG]                                  ; $6071: $fa $00 $00
	nop                                              ; $6074: $00
	nop                                              ; $6075: $00
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	nop                                              ; $6078: $00
	nop                                              ; $6079: $00
	nop                                              ; $607a: $00
	nop                                              ; $607b: $00
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	nop                                              ; $608a: $00
	nop                                              ; $608b: $00
	nop                                              ; $608c: $00
	inc  bc                                          ; $608d: $03
	inc  bc                                          ; $608e: $03
	inc  bc                                          ; $608f: $03
	inc  bc                                          ; $6090: $03
	inc  bc                                          ; $6091: $03
	inc  bc                                          ; $6092: $03
	inc  bc                                          ; $6093: $03
	inc  bc                                          ; $6094: $03
	inc  bc                                          ; $6095: $03
	inc  bc                                          ; $6096: $03
	inc  bc                                          ; $6097: $03
	inc  bc                                          ; $6098: $03
	nop                                              ; $6099: $00
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	nop                                              ; $609e: $00
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	inc  bc                                          ; $60a1: $03
	inc  bc                                          ; $60a2: $03
	inc  bc                                          ; $60a3: $03
	inc  bc                                          ; $60a4: $03
	inc  bc                                          ; $60a5: $03
	inc  bc                                          ; $60a6: $03
	inc  bc                                          ; $60a7: $03
	inc  bc                                          ; $60a8: $03
	inc  bc                                          ; $60a9: $03
	inc  bc                                          ; $60aa: $03
	inc  bc                                          ; $60ab: $03
	inc  bc                                          ; $60ac: $03
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	nop                                              ; $60b2: $00
	nop                                              ; $60b3: $00
	nop                                              ; $60b4: $00
	inc  bc                                          ; $60b5: $03
	inc  bc                                          ; $60b6: $03
	inc  bc                                          ; $60b7: $03
	inc  bc                                          ; $60b8: $03
	inc  bc                                          ; $60b9: $03
	inc  bc                                          ; $60ba: $03
	inc  bc                                          ; $60bb: $03
	inc  bc                                          ; $60bc: $03
	inc  bc                                          ; $60bd: $03
	inc  bc                                          ; $60be: $03
	inc  bc                                          ; $60bf: $03
	inc  bc                                          ; $60c0: $03
	nop                                              ; $60c1: $00
	nop                                              ; $60c2: $00
	nop                                              ; $60c3: $00
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	nop                                              ; $60c8: $00
	inc  bc                                          ; $60c9: $03
	inc  bc                                          ; $60ca: $03
	inc  bc                                          ; $60cb: $03
	inc  bc                                          ; $60cc: $03
	inc  bc                                          ; $60cd: $03
	inc  bc                                          ; $60ce: $03
	inc  bc                                          ; $60cf: $03
	inc  bc                                          ; $60d0: $03
	inc  bc                                          ; $60d1: $03
	inc  bc                                          ; $60d2: $03
	inc  bc                                          ; $60d3: $03
	inc  bc                                          ; $60d4: $03
	nop                                              ; $60d5: $00
	nop                                              ; $60d6: $00
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	nop                                              ; $60dc: $00
	inc  bc                                          ; $60dd: $03
	inc  bc                                          ; $60de: $03
	inc  bc                                          ; $60df: $03
	inc  bc                                          ; $60e0: $03
	inc  bc                                          ; $60e1: $03
	inc  bc                                          ; $60e2: $03
	inc  bc                                          ; $60e3: $03
	inc  bc                                          ; $60e4: $03
	inc  bc                                          ; $60e5: $03
	inc  bc                                          ; $60e6: $03
	inc  bc                                          ; $60e7: $03
	inc  bc                                          ; $60e8: $03
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	nop                                              ; $60ee: $00
	nop                                              ; $60ef: $00
	nop                                              ; $60f0: $00
	inc  bc                                          ; $60f1: $03
	inc  bc                                          ; $60f2: $03
	inc  bc                                          ; $60f3: $03
	inc  bc                                          ; $60f4: $03
	inc  bc                                          ; $60f5: $03
	inc  bc                                          ; $60f6: $03
	inc  bc                                          ; $60f7: $03
	inc  bc                                          ; $60f8: $03
	inc  bc                                          ; $60f9: $03
	inc  bc                                          ; $60fa: $03
	inc  bc                                          ; $60fb: $03
	inc  bc                                          ; $60fc: $03
	nop                                              ; $60fd: $00
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	nop                                              ; $6107: $00
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	nop                                              ; $6113: $00
	ld   bc, $0101                                   ; $6114: $01 $01 $01
	ld   bc, $0101                                   ; $6117: $01 $01 $01
	ld   bc, $0101                                   ; $611a: $01 $01 $01
	ld   bc, $0101                                   ; $611d: $01 $01 $01
	ld   bc, $0101                                   ; $6120: $01 $01 $01
	ld   bc, $0121                                   ; $6123: $01 $21 $01
	jr   nz, jr_01c_6128                             ; $6126: $20 $00

jr_01c_6128:
	ld   bc, $0202                                   ; $6128: $01 $02 $02
	ld   [bc], a                                     ; $612b: $02
	ld   [bc], a                                     ; $612c: $02
	ld   [bc], a                                     ; $612d: $02
	ld   [bc], a                                     ; $612e: $02
	ld   [bc], a                                     ; $612f: $02
	ld   [bc], a                                     ; $6130: $02
	ld   [bc], a                                     ; $6131: $02
	ld   [bc], a                                     ; $6132: $02
	ld   [bc], a                                     ; $6133: $02
	ld   [bc], a                                     ; $6134: $02
	ld   [bc], a                                     ; $6135: $02
	ld   [bc], a                                     ; $6136: $02
	ld   [bc], a                                     ; $6137: $02
	ld   [bc], a                                     ; $6138: $02
	ld   bc, $0000                                   ; $6139: $01 $00 $00
	ld   bc, $0202                                   ; $613c: $01 $02 $02
	ld   [bc], a                                     ; $613f: $02
	ld   [bc], a                                     ; $6140: $02
	ld   [bc], a                                     ; $6141: $02
	ld   [bc], a                                     ; $6142: $02
	ld   [bc], a                                     ; $6143: $02
	ld   [bc], a                                     ; $6144: $02
	ld   [bc], a                                     ; $6145: $02
	ld   [bc], a                                     ; $6146: $02
	ld   [bc], a                                     ; $6147: $02
	ld   [bc], a                                     ; $6148: $02
	ld   [bc], a                                     ; $6149: $02
	ld   [bc], a                                     ; $614a: $02
	ld   [bc], a                                     ; $614b: $02
	ld   [bc], a                                     ; $614c: $02
	ld   bc, $4000                                   ; $614d: $01 $00 $40
	ld   bc, $0101                                   ; $6150: $01 $01 $01
	ld   bc, $0101                                   ; $6153: $01 $01 $01
	ld   bc, $0101                                   ; $6156: $01 $01 $01
	ld   bc, $0101                                   ; $6159: $01 $01 $01
	ld   bc, $0101                                   ; $615c: $01 $01 $01
	ld   bc, $0101                                   ; $615f: $01 $01 $01
	ld   h, b                                        ; $6162: $60
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	nop                                              ; $6165: $00
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	nop                                              ; $6168: $00
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	jr   nz, jr_01c_6176                             ; $6174: $20 $00

jr_01c_6176:
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	inc  c                                           ; $6179: $0c
	inc  c                                           ; $617a: $0c
	inc  c                                           ; $617b: $0c
	inc  c                                           ; $617c: $0c
	inc  c                                           ; $617d: $0c
	inc  c                                           ; $617e: $0c
	inc  c                                           ; $617f: $0c
	inc  c                                           ; $6180: $0c
	inc  c                                           ; $6181: $0c
	inc  c                                           ; $6182: $0c
	inc  c                                           ; $6183: $0c
	inc  c                                           ; $6184: $0c
	inc  c                                           ; $6185: $0c
	inc  c                                           ; $6186: $0c
	inc  c                                           ; $6187: $0c
	inc  c                                           ; $6188: $0c
	jr   nz, jr_01c_618b                             ; $6189: $20 $00

jr_01c_618b:
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00
	inc  c                                           ; $618d: $0c
	inc  c                                           ; $618e: $0c
	inc  c                                           ; $618f: $0c
	inc  c                                           ; $6190: $0c
	inc  c                                           ; $6191: $0c
	inc  c                                           ; $6192: $0c
	inc  c                                           ; $6193: $0c
	inc  c                                           ; $6194: $0c
	inc  c                                           ; $6195: $0c
	inc  c                                           ; $6196: $0c
	inc  c                                           ; $6197: $0c
	inc  c                                           ; $6198: $0c
	inc  c                                           ; $6199: $0c
	inc  c                                           ; $619a: $0c
	inc  c                                           ; $619b: $0c
	inc  c                                           ; $619c: $0c
	jr   nz, jr_01c_619f                             ; $619d: $20 $00

jr_01c_619f:
	nop                                              ; $619f: $00
	nop                                              ; $61a0: $00
	inc  c                                           ; $61a1: $0c
	inc  c                                           ; $61a2: $0c
	inc  c                                           ; $61a3: $0c
	inc  c                                           ; $61a4: $0c
	inc  c                                           ; $61a5: $0c
	inc  c                                           ; $61a6: $0c
	inc  c                                           ; $61a7: $0c
	inc  c                                           ; $61a8: $0c
	inc  c                                           ; $61a9: $0c
	inc  c                                           ; $61aa: $0c
	inc  c                                           ; $61ab: $0c
	inc  c                                           ; $61ac: $0c
	inc  c                                           ; $61ad: $0c
	inc  c                                           ; $61ae: $0c
	inc  c                                           ; $61af: $0c
	inc  c                                           ; $61b0: $0c
	jr   nz, jr_01c_61b3                             ; $61b1: $20 $00

jr_01c_61b3:
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	inc  c                                           ; $61b5: $0c
	inc  c                                           ; $61b6: $0c
	inc  c                                           ; $61b7: $0c
	inc  c                                           ; $61b8: $0c
	inc  c                                           ; $61b9: $0c
	inc  c                                           ; $61ba: $0c
	inc  c                                           ; $61bb: $0c
	inc  c                                           ; $61bc: $0c
	inc  c                                           ; $61bd: $0c
	inc  c                                           ; $61be: $0c
	inc  c                                           ; $61bf: $0c
	inc  c                                           ; $61c0: $0c
	inc  c                                           ; $61c1: $0c
	inc  c                                           ; $61c2: $0c
	inc  c                                           ; $61c3: $0c
	inc  c                                           ; $61c4: $0c
	jr   nz, jr_01c_61c7                             ; $61c5: $20 $00

jr_01c_61c7:
	nop                                              ; $61c7: $00
	nop                                              ; $61c8: $00
	ld   b, b                                        ; $61c9: $40
	ld   b, b                                        ; $61ca: $40
	ld   b, b                                        ; $61cb: $40
	ld   b, b                                        ; $61cc: $40
	ld   b, b                                        ; $61cd: $40
	ld   b, b                                        ; $61ce: $40
	ld   b, b                                        ; $61cf: $40
	ld   b, b                                        ; $61d0: $40
	ld   b, b                                        ; $61d1: $40
	ld   b, b                                        ; $61d2: $40
	ld   b, b                                        ; $61d3: $40
	ld   b, b                                        ; $61d4: $40
	ld   b, b                                        ; $61d5: $40
	ld   b, b                                        ; $61d6: $40
	ld   b, b                                        ; $61d7: $40
	ld   b, b                                        ; $61d8: $40
	jr   nz, jr_01c_61db                             ; $61d9: $20 $00

jr_01c_61db:
	nop                                              ; $61db: $00
	ld   bc, $0101                                   ; $61dc: $01 $01 $01
	ld   bc, $0101                                   ; $61df: $01 $01 $01
	ld   bc, $0101                                   ; $61e2: $01 $01 $01
	ld   bc, $0101                                   ; $61e5: $01 $01 $01
	ld   bc, $0101                                   ; $61e8: $01 $01 $01
	ld   bc, $0121                                   ; $61eb: $01 $21 $01
	jr   nz, jr_01c_61f0                             ; $61ee: $20 $00

jr_01c_61f0:
	ld   bc, $0505                                   ; $61f0: $01 $05 $05
	dec  b                                           ; $61f3: $05
	dec  b                                           ; $61f4: $05
	dec  b                                           ; $61f5: $05
	dec  b                                           ; $61f6: $05
	dec  b                                           ; $61f7: $05
	dec  b                                           ; $61f8: $05
	dec  b                                           ; $61f9: $05
	dec  b                                           ; $61fa: $05
	dec  b                                           ; $61fb: $05
	dec  b                                           ; $61fc: $05
	dec  b                                           ; $61fd: $05
	dec  b                                           ; $61fe: $05
	dec  b                                           ; $61ff: $05
	dec  b                                           ; $6200: $05
	ld   bc, $0000                                   ; $6201: $01 $00 $00
	ld   bc, $0505                                   ; $6204: $01 $05 $05
	dec  b                                           ; $6207: $05
	dec  b                                           ; $6208: $05
	dec  b                                           ; $6209: $05
	dec  b                                           ; $620a: $05
	dec  b                                           ; $620b: $05
	dec  b                                           ; $620c: $05
	dec  b                                           ; $620d: $05
	dec  b                                           ; $620e: $05
	dec  b                                           ; $620f: $05
	dec  b                                           ; $6210: $05
	dec  b                                           ; $6211: $05
	dec  b                                           ; $6212: $05
	dec  b                                           ; $6213: $05
	dec  b                                           ; $6214: $05
	ld   bc, $a000                                   ; $6215: $01 $00 $a0
	and  c                                           ; $6218: $a1
	and  d                                           ; $6219: $a2
	and  d                                           ; $621a: $a2
	and  d                                           ; $621b: $a2
	and  d                                           ; $621c: $a2
	and  d                                           ; $621d: $a2
	and  d                                           ; $621e: $a2
	and  d                                           ; $621f: $a2
	and  d                                           ; $6220: $a2
	and  d                                           ; $6221: $a2
	and  d                                           ; $6222: $a2
	and  d                                           ; $6223: $a2
	and  d                                           ; $6224: $a2
	and  d                                           ; $6225: $a2
	and  d                                           ; $6226: $a2
	and  d                                           ; $6227: $a2
	and  d                                           ; $6228: $a2
	and  e                                           ; $6229: $a3
	and  b                                           ; $622a: $a0
	and  b                                           ; $622b: $a0
	and  h                                           ; $622c: $a4
	and  l                                           ; $622d: $a5
	and  [hl]                                        ; $622e: $a6
	and  a                                           ; $622f: $a7
	xor  b                                           ; $6230: $a8
	sub  b                                           ; $6231: $90
	sub  c                                           ; $6232: $91
	sub  d                                           ; $6233: $92
	sub  e                                           ; $6234: $93
	sub  h                                           ; $6235: $94
	sub  l                                           ; $6236: $95
	sub  [hl]                                        ; $6237: $96
	sub  a                                           ; $6238: $97
	sbc  b                                           ; $6239: $98
	sbc  c                                           ; $623a: $99
	sbc  d                                           ; $623b: $9a
	sbc  e                                           ; $623c: $9b
	xor  c                                           ; $623d: $a9
	and  b                                           ; $623e: $a0
	and  b                                           ; $623f: $a0
	xor  d                                           ; $6240: $aa
	xor  e                                           ; $6241: $ab
	and  [hl]                                        ; $6242: $a6
	and  a                                           ; $6243: $a7
	xor  b                                           ; $6244: $a8
	sub  b                                           ; $6245: $90
	sub  c                                           ; $6246: $91
	sub  d                                           ; $6247: $92
	sub  e                                           ; $6248: $93
	sub  h                                           ; $6249: $94
	sub  l                                           ; $624a: $95
	sub  [hl]                                        ; $624b: $96
	sub  a                                           ; $624c: $97
	sbc  b                                           ; $624d: $98
	sbc  c                                           ; $624e: $99
	sbc  d                                           ; $624f: $9a
	sbc  e                                           ; $6250: $9b
	xor  c                                           ; $6251: $a9
	and  b                                           ; $6252: $a0
	and  b                                           ; $6253: $a0
	xor  h                                           ; $6254: $ac
	xor  l                                           ; $6255: $ad
	and  [hl]                                        ; $6256: $a6
	and  a                                           ; $6257: $a7
	xor  b                                           ; $6258: $a8
	sub  b                                           ; $6259: $90
	sub  c                                           ; $625a: $91
	sub  d                                           ; $625b: $92
	sub  e                                           ; $625c: $93
	sub  h                                           ; $625d: $94
	sub  l                                           ; $625e: $95
	sub  [hl]                                        ; $625f: $96
	sub  a                                           ; $6260: $97
	sbc  b                                           ; $6261: $98
	sbc  c                                           ; $6262: $99
	sbc  d                                           ; $6263: $9a
	sbc  e                                           ; $6264: $9b
	xor  c                                           ; $6265: $a9
	and  b                                           ; $6266: $a0
	and  b                                           ; $6267: $a0
	xor  [hl]                                        ; $6268: $ae
	xor  a                                           ; $6269: $af
	or   b                                           ; $626a: $b0
	or   c                                           ; $626b: $b1
	or   d                                           ; $626c: $b2
	sub  b                                           ; $626d: $90
	sub  c                                           ; $626e: $91
	sub  d                                           ; $626f: $92
	sub  e                                           ; $6270: $93
	sub  h                                           ; $6271: $94
	sub  l                                           ; $6272: $95
	sub  [hl]                                        ; $6273: $96
	sub  a                                           ; $6274: $97
	sbc  b                                           ; $6275: $98
	sbc  c                                           ; $6276: $99
	sbc  d                                           ; $6277: $9a
	sbc  e                                           ; $6278: $9b
	xor  c                                           ; $6279: $a9
	and  b                                           ; $627a: $a0
	and  b                                           ; $627b: $a0
	or   e                                           ; $627c: $b3
	or   h                                           ; $627d: $b4
	or   l                                           ; $627e: $b5
	or   [hl]                                        ; $627f: $b6
	or   a                                           ; $6280: $b7
	sub  b                                           ; $6281: $90
	sub  c                                           ; $6282: $91
	sub  d                                           ; $6283: $92
	sub  e                                           ; $6284: $93
	sub  h                                           ; $6285: $94
	sub  l                                           ; $6286: $95
	sub  [hl]                                        ; $6287: $96
	sub  a                                           ; $6288: $97
	sbc  b                                           ; $6289: $98
	sbc  c                                           ; $628a: $99
	sbc  d                                           ; $628b: $9a
	sbc  e                                           ; $628c: $9b
	xor  c                                           ; $628d: $a9
	and  b                                           ; $628e: $a0
	and  b                                           ; $628f: $a0
	cp   b                                           ; $6290: $b8
	cp   c                                           ; $6291: $b9
	cp   d                                           ; $6292: $ba
	cp   e                                           ; $6293: $bb
	cp   h                                           ; $6294: $bc
	sub  b                                           ; $6295: $90
	sub  c                                           ; $6296: $91
	sub  d                                           ; $6297: $92
	sub  e                                           ; $6298: $93
	sub  h                                           ; $6299: $94
	sub  l                                           ; $629a: $95
	sub  [hl]                                        ; $629b: $96
	sub  a                                           ; $629c: $97
	sbc  b                                           ; $629d: $98
	sbc  c                                           ; $629e: $99
	sbc  d                                           ; $629f: $9a
	sbc  e                                           ; $62a0: $9b
	xor  c                                           ; $62a1: $a9
	and  b                                           ; $62a2: $a0
	and  b                                           ; $62a3: $a0
	cp   l                                           ; $62a4: $bd
	cp   [hl]                                        ; $62a5: $be
	cp   a                                           ; $62a6: $bf
	cp   a                                           ; $62a7: $bf
	cp   a                                           ; $62a8: $bf
	cp   a                                           ; $62a9: $bf
	cp   a                                           ; $62aa: $bf
	cp   a                                           ; $62ab: $bf
	cp   a                                           ; $62ac: $bf
	cp   a                                           ; $62ad: $bf
	cp   a                                           ; $62ae: $bf
	cp   a                                           ; $62af: $bf
	cp   a                                           ; $62b0: $bf
	cp   a                                           ; $62b1: $bf
	cp   a                                           ; $62b2: $bf
	cp   a                                           ; $62b3: $bf
	ret  nz                                          ; $62b4: $c0

	pop  bc                                          ; $62b5: $c1
	and  b                                           ; $62b6: $a0
	nop                                              ; $62b7: $00
	ld   bc, $0302                                   ; $62b8: $01 $02 $03
	inc  b                                           ; $62bb: $04
	dec  b                                           ; $62bc: $05
	ld   b, $05                                      ; $62bd: $06 $05
	ld   b, $05                                      ; $62bf: $06 $05
	ld   b, $05                                      ; $62c1: $06 $05
	ld   b, $03                                      ; $62c3: $06 $03
	inc  b                                           ; $62c5: $04
	dec  b                                           ; $62c6: $05
	ld   b, $02                                      ; $62c7: $06 $02
	rlca                                             ; $62c9: $07
	nop                                              ; $62ca: $00
	ld   [$2009], sp                                 ; $62cb: $08 $09 $20
	ld   hl, $2322                                   ; $62ce: $21 $22 $23
	inc  h                                           ; $62d1: $24
	dec  h                                           ; $62d2: $25
	ld   h, $27                                      ; $62d3: $26 $27
	jr   z, @+$2b                                    ; $62d5: $28 $29

	ld   a, [hl+]                                    ; $62d7: $2a
	dec  hl                                          ; $62d8: $2b
	inc  l                                           ; $62d9: $2c
	dec  l                                           ; $62da: $2d
	ld   l, $2f                                      ; $62db: $2e $2f
	dec  bc                                          ; $62dd: $0b
	inc  c                                           ; $62de: $0c
	dec  c                                           ; $62df: $0d
	ld   c, $30                                      ; $62e0: $0e $30
	ld   sp, $3332                                   ; $62e2: $31 $32 $33
	inc  [hl]                                        ; $62e5: $34
	dec  [hl]                                        ; $62e6: $35
	ld   [hl], $37                                   ; $62e7: $36 $37
	jr   c, jr_01c_6324                              ; $62e9: $38 $39

	ld   a, [hl-]                                    ; $62eb: $3a
	dec  sp                                          ; $62ec: $3b
	inc  a                                           ; $62ed: $3c
	dec  a                                           ; $62ee: $3d
	ld   a, $3f                                      ; $62ef: $3e $3f
	dec  d                                           ; $62f1: $15
	ld   d, $00                                      ; $62f2: $16 $00
	rrca                                             ; $62f4: $0f
	db   $10                                         ; $62f5: $10
	ld   de, $1112                                   ; $62f6: $11 $12 $11
	ld   [de], a                                     ; $62f9: $12
	ld   de, $1112                                   ; $62fa: $11 $12 $11
	ld   [de], a                                     ; $62fd: $12
	ld   de, $1112                                   ; $62fe: $11 $12 $11
	ld   [de], a                                     ; $6301: $12
	ld   de, $1312                                   ; $6302: $11 $12 $13
	inc  d                                           ; $6305: $14
	nop                                              ; $6306: $00
	and  b                                           ; $6307: $a0
	rla                                              ; $6308: $17
	jr   jr_01c_6325                                 ; $6309: $18 $1a

	ld   a, [de]                                     ; $630b: $1a
	ld   a, [de]                                     ; $630c: $1a
	ld   a, [de]                                     ; $630d: $1a
	ld   a, [de]                                     ; $630e: $1a
	ld   a, [de]                                     ; $630f: $1a
	ld   a, [de]                                     ; $6310: $1a
	ld   a, [de]                                     ; $6311: $1a
	ld   a, [de]                                     ; $6312: $1a
	ld   a, [de]                                     ; $6313: $1a
	ld   a, [de]                                     ; $6314: $1a
	ld   a, [de]                                     ; $6315: $1a
	ld   a, [de]                                     ; $6316: $1a
	ld   a, [de]                                     ; $6317: $1a
	jr   jr_01c_6333                                 ; $6318: $18 $19

	and  b                                           ; $631a: $a0
	and  b                                           ; $631b: $a0
	dec  de                                          ; $631c: $1b
	add  b                                           ; $631d: $80
	add  d                                           ; $631e: $82
	add  h                                           ; $631f: $84
	add  [hl]                                        ; $6320: $86
	adc  b                                           ; $6321: $88
	adc  d                                           ; $6322: $8a
	adc  h                                           ; $6323: $8c

jr_01c_6324:
	adc  [hl]                                        ; $6324: $8e

jr_01c_6325:
	sub  b                                           ; $6325: $90
	sub  d                                           ; $6326: $92
	sub  h                                           ; $6327: $94
	sub  [hl]                                        ; $6328: $96
	sbc  b                                           ; $6329: $98
	sbc  d                                           ; $632a: $9a
	sbc  h                                           ; $632b: $9c
	sbc  [hl]                                        ; $632c: $9e
	dec  de                                          ; $632d: $1b
	and  b                                           ; $632e: $a0
	and  b                                           ; $632f: $a0
	dec  de                                          ; $6330: $1b
	add  c                                           ; $6331: $81
	add  e                                           ; $6332: $83

jr_01c_6333:
	add  l                                           ; $6333: $85
	add  a                                           ; $6334: $87
	adc  c                                           ; $6335: $89
	adc  e                                           ; $6336: $8b
	adc  l                                           ; $6337: $8d
	adc  a                                           ; $6338: $8f
	sub  c                                           ; $6339: $91
	sub  e                                           ; $633a: $93
	sub  l                                           ; $633b: $95
	sub  a                                           ; $633c: $97
	sbc  c                                           ; $633d: $99
	sbc  e                                           ; $633e: $9b
	sbc  l                                           ; $633f: $9d
	sbc  a                                           ; $6340: $9f
	dec  de                                          ; $6341: $1b
	and  b                                           ; $6342: $a0
	and  b                                           ; $6343: $a0
	dec  de                                          ; $6344: $1b
	and  b                                           ; $6345: $a0
	and  d                                           ; $6346: $a2
	and  h                                           ; $6347: $a4
	and  [hl]                                        ; $6348: $a6
	xor  b                                           ; $6349: $a8
	xor  d                                           ; $634a: $aa
	xor  h                                           ; $634b: $ac
	xor  [hl]                                        ; $634c: $ae
	or   b                                           ; $634d: $b0
	or   d                                           ; $634e: $b2
	or   h                                           ; $634f: $b4
	or   [hl]                                        ; $6350: $b6
	cp   b                                           ; $6351: $b8
	cp   d                                           ; $6352: $ba
	cp   h                                           ; $6353: $bc
	cp   [hl]                                        ; $6354: $be
	dec  de                                          ; $6355: $1b
	and  b                                           ; $6356: $a0
	and  b                                           ; $6357: $a0
	dec  de                                          ; $6358: $1b
	and  c                                           ; $6359: $a1
	and  e                                           ; $635a: $a3
	and  l                                           ; $635b: $a5
	and  a                                           ; $635c: $a7
	xor  c                                           ; $635d: $a9
	xor  e                                           ; $635e: $ab
	xor  l                                           ; $635f: $ad
	xor  a                                           ; $6360: $af
	or   c                                           ; $6361: $b1
	or   e                                           ; $6362: $b3
	or   l                                           ; $6363: $b5
	or   a                                           ; $6364: $b7
	cp   c                                           ; $6365: $b9
	cp   e                                           ; $6366: $bb
	cp   l                                           ; $6367: $bd
	cp   a                                           ; $6368: $bf
	dec  de                                          ; $6369: $1b
	and  b                                           ; $636a: $a0
	and  b                                           ; $636b: $a0
	inc  e                                           ; $636c: $1c
	ld   a, [de]                                     ; $636d: $1a
	ld   a, [de]                                     ; $636e: $1a
	ld   a, [de]                                     ; $636f: $1a
	ld   a, [de]                                     ; $6370: $1a
	ld   a, [de]                                     ; $6371: $1a
	ld   a, [de]                                     ; $6372: $1a
	ld   a, [de]                                     ; $6373: $1a
	ld   a, [de]                                     ; $6374: $1a
	ld   a, [de]                                     ; $6375: $1a
	ld   a, [de]                                     ; $6376: $1a
	ld   a, [de]                                     ; $6377: $1a
	ld   a, [de]                                     ; $6378: $1a
	ld   a, [de]                                     ; $6379: $1a
	ld   a, [de]                                     ; $637a: $1a
	ld   a, [de]                                     ; $637b: $1a
	ld   a, [de]                                     ; $637c: $1a
	inc  e                                           ; $637d: $1c
	and  b                                           ; $637e: $a0
	nop                                              ; $637f: $00
	ld   bc, $0302                                   ; $6380: $01 $02 $03
	inc  b                                           ; $6383: $04
	dec  b                                           ; $6384: $05
	ld   b, $05                                      ; $6385: $06 $05
	ld   b, $05                                      ; $6387: $06 $05
	ld   b, $05                                      ; $6389: $06 $05
	ld   b, $03                                      ; $638b: $06 $03
	inc  b                                           ; $638d: $04
	dec  b                                           ; $638e: $05
	ld   b, $02                                      ; $638f: $06 $02
	rlca                                             ; $6391: $07
	nop                                              ; $6392: $00
	ld   [$2009], sp                                 ; $6393: $08 $09 $20
	ld   hl, $2322                                   ; $6396: $21 $22 $23
	inc  h                                           ; $6399: $24
	dec  h                                           ; $639a: $25
	ld   h, $27                                      ; $639b: $26 $27
	jr   z, jr_01c_63c8                              ; $639d: $28 $29

	ld   a, [hl+]                                    ; $639f: $2a
	dec  hl                                          ; $63a0: $2b
	inc  l                                           ; $63a1: $2c
	dec  l                                           ; $63a2: $2d
	ld   l, $2f                                      ; $63a3: $2e $2f
	dec  bc                                          ; $63a5: $0b
	inc  c                                           ; $63a6: $0c
	dec  c                                           ; $63a7: $0d
	ld   c, $30                                      ; $63a8: $0e $30
	ld   sp, $3332                                   ; $63aa: $31 $32 $33
	inc  [hl]                                        ; $63ad: $34
	dec  [hl]                                        ; $63ae: $35
	ld   [hl], $37                                   ; $63af: $36 $37
	jr   c, jr_01c_63ec                              ; $63b1: $38 $39

	ld   a, [hl-]                                    ; $63b3: $3a
	dec  sp                                          ; $63b4: $3b
	inc  a                                           ; $63b5: $3c
	dec  a                                           ; $63b6: $3d
	ld   a, $3f                                      ; $63b7: $3e $3f
	dec  d                                           ; $63b9: $15
	ld   d, $49                                      ; $63ba: $16 $49
	ld   bc, $ff8c                                   ; $63bc: $01 $8c $ff
	ld   [bc], a                                     ; $63bf: $02
	nop                                              ; $63c0: $00
	rst  $38                                         ; $63c1: $ff
	nop                                              ; $63c2: $00
	adc  e                                           ; $63c3: $8b
	rst  $38                                         ; $63c4: $ff
	ld   [bc], a                                     ; $63c5: $02
	nop                                              ; $63c6: $00
	rst  $38                                         ; $63c7: $ff

jr_01c_63c8:
	nop                                              ; $63c8: $00
	adc  e                                           ; $63c9: $8b
	rst  $38                                         ; $63ca: $ff
	ld   [bc], a                                     ; $63cb: $02
	nop                                              ; $63cc: $00
	rst  $38                                         ; $63cd: $ff
	nop                                              ; $63ce: $00
	adc  e                                           ; $63cf: $8b
	rst  $38                                         ; $63d0: $ff
	ld   [bc], a                                     ; $63d1: $02
	nop                                              ; $63d2: $00
	rst  $38                                         ; $63d3: $ff
	nop                                              ; $63d4: $00
	adc  e                                           ; $63d5: $8b
	rst  $38                                         ; $63d6: $ff
	ld   [bc], a                                     ; $63d7: $02
	nop                                              ; $63d8: $00
	rst  $38                                         ; $63d9: $ff
	nop                                              ; $63da: $00
	adc  e                                           ; $63db: $8b
	rst  $38                                         ; $63dc: $ff
	ld   [bc], a                                     ; $63dd: $02
	nop                                              ; $63de: $00
	rst  $38                                         ; $63df: $ff
	nop                                              ; $63e0: $00
	add  c                                           ; $63e1: $81

jr_01c_63e2:
	rst  $38                                         ; $63e2: $ff
	nop                                              ; $63e3: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63e4: $cf
	add  e                                           ; $63e5: $83
	rst  $38                                         ; $63e6: $ff
	ld   b, $30                                      ; $63e7: $06 $30
	rst  $38                                         ; $63e9: $ff
	jr   nc, @+$01                                   ; $63ea: $30 $ff

jr_01c_63ec:
	jr   nc, @+$01                                   ; $63ec: $30 $ff

	nop                                              ; $63ee: $00
	add  l                                           ; $63ef: $85
	rst  $38                                         ; $63f0: $ff
	ld   [bc], a                                     ; $63f1: $02
	ld   hl, sp-$01                                  ; $63f2: $f8 $ff
	ld   hl, sp-$7f                                  ; $63f4: $f8 $81
	rst  $38                                         ; $63f6: $ff
	ld   b, $00                                      ; $63f7: $06 $00
	rst  $38                                         ; $63f9: $ff
	nop                                              ; $63fa: $00
	rst  $38                                         ; $63fb: $ff
	push af                                          ; $63fc: $f5
	rst  $38                                         ; $63fd: $ff
	ccf                                              ; $63fe: $3f
	add  c                                           ; $63ff: $81
	rst  $38                                         ; $6400: $ff
	ld   [bc], a                                     ; $6401: $02
	push bc                                          ; $6402: $c5
	rst  $38                                         ; $6403: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6404: $cf
	add  c                                           ; $6405: $81
	rst  $38                                         ; $6406: $ff
	ld   [bc], a                                     ; $6407: $02
	ret  nz                                          ; $6408: $c0

	rst  $38                                         ; $6409: $ff
	nop                                              ; $640a: $00
	add  c                                           ; $640b: $81
	rst  $38                                         ; $640c: $ff
	nop                                              ; $640d: $00
	sbc  [hl]                                        ; $640e: $9e
	add  l                                           ; $640f: $85
	rst  $38                                         ; $6410: $ff
	inc  b                                           ; $6411: $04
	rst  $30                                         ; $6412: $f7
	rst  $38                                         ; $6413: $ff
	ld   l, c                                        ; $6414: $69
	rst  $38                                         ; $6415: $ff
	nop                                              ; $6416: $00
	add  c                                           ; $6417: $81
	rst  $38                                         ; $6418: $ff
	nop                                              ; $6419: $00
	ld   a, a                                        ; $641a: $7f
	add  a                                           ; $641b: $87
	rst  $38                                         ; $641c: $ff
	ld   [bc], a                                     ; $641d: $02
	add  b                                           ; $641e: $80
	rst  $38                                         ; $641f: $ff
	nop                                              ; $6420: $00
	adc  e                                           ; $6421: $8b
	rst  $38                                         ; $6422: $ff
	ld   [bc], a                                     ; $6423: $02
	nop                                              ; $6424: $00
	rst  $38                                         ; $6425: $ff
	nop                                              ; $6426: $00
	adc  e                                           ; $6427: $8b
	rst  $38                                         ; $6428: $ff
	ld   [bc], a                                     ; $6429: $02
	nop                                              ; $642a: $00
	rst  $38                                         ; $642b: $ff
	nop                                              ; $642c: $00
	adc  e                                           ; $642d: $8b
	rst  $38                                         ; $642e: $ff
	ld   [bc], a                                     ; $642f: $02
	nop                                              ; $6430: $00
	rst  $38                                         ; $6431: $ff
	nop                                              ; $6432: $00
	adc  e                                           ; $6433: $8b
	rst  $38                                         ; $6434: $ff
	ld   [bc], a                                     ; $6435: $02
	nop                                              ; $6436: $00
	rst  $38                                         ; $6437: $ff
	nop                                              ; $6438: $00
	adc  e                                           ; $6439: $8b
	rst  $38                                         ; $643a: $ff
	ld   [bc], a                                     ; $643b: $02
	nop                                              ; $643c: $00
	rst  $38                                         ; $643d: $ff
	nop                                              ; $643e: $00
	adc  h                                           ; $643f: $8c
	rst  $38                                         ; $6440: $ff
	add  b                                           ; $6441: $80
	nop                                              ; $6442: $00
	adc  h                                           ; $6443: $8c
	rst  $38                                         ; $6444: $ff
	add  b                                           ; $6445: $80
	nop                                              ; $6446: $00
	adc  h                                           ; $6447: $8c
	rst  $38                                         ; $6448: $ff
	add  b                                           ; $6449: $80
	nop                                              ; $644a: $00
	adc  h                                           ; $644b: $8c
	rst  $38                                         ; $644c: $ff
	add  b                                           ; $644d: $80
	nop                                              ; $644e: $00
	adc  h                                           ; $644f: $8c
	rst  $38                                         ; $6450: $ff
	add  b                                           ; $6451: $80
	nop                                              ; $6452: $00
	adc  h                                           ; $6453: $8c
	rst  $38                                         ; $6454: $ff
	add  b                                           ; $6455: $80
	nop                                              ; $6456: $00
	add  c                                           ; $6457: $81
	rst  $38                                         ; $6458: $ff
	nop                                              ; $6459: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $645a: $cf
	add  e                                           ; $645b: $83
	rst  $38                                         ; $645c: $ff
	ld   [bc], a                                     ; $645d: $02
	jr   nc, @+$01                                   ; $645e: $30 $ff

	jr   nc, jr_01c_63e2                             ; $6460: $30 $80

	rst  $38                                         ; $6462: $ff
	ld   bc, $0030                                   ; $6463: $01 $30 $00
	add  l                                           ; $6466: $85
	rst  $38                                         ; $6467: $ff
	ld   [bc], a                                     ; $6468: $02
	ld   hl, sp-$01                                  ; $6469: $f8 $ff
	ld   hl, sp-$7f                                  ; $646b: $f8 $81
	rst  $38                                         ; $646d: $ff
	ld   b, $f8                                      ; $646e: $06 $f8
	rlca                                             ; $6470: $07
	nop                                              ; $6471: $00
	rst  $38                                         ; $6472: $ff
	push af                                          ; $6473: $f5
	rst  $38                                         ; $6474: $ff
	ccf                                              ; $6475: $3f
	add  c                                           ; $6476: $81
	rst  $38                                         ; $6477: $ff
	ld   [bc], a                                     ; $6478: $02
	push bc                                          ; $6479: $c5
	rst  $38                                         ; $647a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $647b: $cf
	add  c                                           ; $647c: $81
	rst  $38                                         ; $647d: $ff
	ld   [bc], a                                     ; $647e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $647f: $cf
	ldh  a, [rP1]                                    ; $6480: $f0 $00
	add  c                                           ; $6482: $81
	rst  $38                                         ; $6483: $ff
	nop                                              ; $6484: $00
	sbc  [hl]                                        ; $6485: $9e
	add  l                                           ; $6486: $85
	rst  $38                                         ; $6487: $ff
	inc  b                                           ; $6488: $04
	rst  $30                                         ; $6489: $f7
	rst  $38                                         ; $648a: $ff
	rst  $28                                         ; $648b: $ef
	ld   a, c                                        ; $648c: $79
	nop                                              ; $648d: $00
	add  c                                           ; $648e: $81
	rst  $38                                         ; $648f: $ff
	nop                                              ; $6490: $00
	ld   a, a                                        ; $6491: $7f
	adc  b                                           ; $6492: $88
	rst  $38                                         ; $6493: $ff
	ld   bc, $0080                                   ; $6494: $01 $80 $00
	adc  h                                           ; $6497: $8c
	rst  $38                                         ; $6498: $ff
	add  b                                           ; $6499: $80
	nop                                              ; $649a: $00
	adc  h                                           ; $649b: $8c
	rst  $38                                         ; $649c: $ff
	add  b                                           ; $649d: $80
	nop                                              ; $649e: $00
	adc  h                                           ; $649f: $8c
	rst  $38                                         ; $64a0: $ff
	add  b                                           ; $64a1: $80
	nop                                              ; $64a2: $00
	adc  h                                           ; $64a3: $8c
	rst  $38                                         ; $64a4: $ff
	add  b                                           ; $64a5: $80
	nop                                              ; $64a6: $00
	adc  h                                           ; $64a7: $8c
	rst  $38                                         ; $64a8: $ff
	add  b                                           ; $64a9: $80
	nop                                              ; $64aa: $00
	add  c                                           ; $64ab: $81
	rst  $38                                         ; $64ac: $ff
	ld   bc, $ff00                                   ; $64ad: $01 $00 $ff
	adc  c                                           ; $64b0: $89
	nop                                              ; $64b1: $00
	add  c                                           ; $64b2: $81
	rst  $38                                         ; $64b3: $ff
	ld   bc, $ff00                                   ; $64b4: $01 $00 $ff
	adc  c                                           ; $64b7: $89
	nop                                              ; $64b8: $00
	add  c                                           ; $64b9: $81
	rst  $38                                         ; $64ba: $ff
	ld   bc, $ff00                                   ; $64bb: $01 $00 $ff
	adc  c                                           ; $64be: $89
	nop                                              ; $64bf: $00
	add  c                                           ; $64c0: $81
	rst  $38                                         ; $64c1: $ff
	ld   bc, $ff00                                   ; $64c2: $01 $00 $ff
	adc  c                                           ; $64c5: $89
	nop                                              ; $64c6: $00
	add  c                                           ; $64c7: $81
	rst  $38                                         ; $64c8: $ff
	ld   bc, $ff00                                   ; $64c9: $01 $00 $ff
	adc  c                                           ; $64cc: $89
	nop                                              ; $64cd: $00
	add  c                                           ; $64ce: $81
	rst  $38                                         ; $64cf: $ff
	ld   bc, $ff00                                   ; $64d0: $01 $00 $ff
	adc  b                                           ; $64d3: $88
	nop                                              ; $64d4: $00
	add  b                                           ; $64d5: $80
	rst  $38                                         ; $64d6: $ff
	inc  bc                                          ; $64d7: $03
	jr   nc, @+$01                                   ; $64d8: $30 $ff

	jr   nc, @+$01                                   ; $64da: $30 $ff

	adc  c                                           ; $64dc: $89
	nop                                              ; $64dd: $00
	add  c                                           ; $64de: $81
	rst  $38                                         ; $64df: $ff
	ld   bc, $ff00                                   ; $64e0: $01 $00 $ff
	adc  b                                           ; $64e3: $88
	nop                                              ; $64e4: $00
	dec  b                                           ; $64e5: $05
	ld   h, b                                        ; $64e6: $60
	rst  $38                                         ; $64e7: $ff
	rst  $28                                         ; $64e8: $ef
	rst  $38                                         ; $64e9: $ff
	ld   [hl], b                                     ; $64ea: $70
	rst  $38                                         ; $64eb: $ff
	adc  b                                           ; $64ec: $88
	nop                                              ; $64ed: $00
	dec  b                                           ; $64ee: $05

jr_01c_64ef:
	ld   a, c                                        ; $64ef: $79
	rst  $38                                         ; $64f0: $ff
	or   a                                           ; $64f1: $b7
	rst  $38                                         ; $64f2: $ff
	ld   sp, $88ff                                   ; $64f3: $31 $ff $88
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	add  b                                           ; $64f8: $80
	add  c                                           ; $64f9: $81
	rst  $38                                         ; $64fa: $ff
	ld   bc, $ff80                                   ; $64fb: $01 $80 $ff
	adc  c                                           ; $64fe: $89
	nop                                              ; $64ff: $00
	add  c                                           ; $6500: $81
	rst  $38                                         ; $6501: $ff
	ld   bc, $ff00                                   ; $6502: $01 $00 $ff
	adc  c                                           ; $6505: $89
	nop                                              ; $6506: $00
	add  c                                           ; $6507: $81
	rst  $38                                         ; $6508: $ff
	ld   bc, $ff00                                   ; $6509: $01 $00 $ff
	adc  c                                           ; $650c: $89
	nop                                              ; $650d: $00
	add  c                                           ; $650e: $81
	rst  $38                                         ; $650f: $ff
	ld   bc, $ff00                                   ; $6510: $01 $00 $ff
	adc  c                                           ; $6513: $89
	nop                                              ; $6514: $00
	add  c                                           ; $6515: $81
	rst  $38                                         ; $6516: $ff
	ld   bc, $ff00                                   ; $6517: $01 $00 $ff
	adc  c                                           ; $651a: $89
	nop                                              ; $651b: $00
	add  c                                           ; $651c: $81
	rst  $38                                         ; $651d: $ff
	ld   bc, $ff00                                   ; $651e: $01 $00 $ff
	adc  c                                           ; $6521: $89
	nop                                              ; $6522: $00
	pop  hl                                          ; $6523: $e1
	rst  $38                                         ; $6524: $ff
	nop                                              ; $6525: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6526: $cf
	add  e                                           ; $6527: $83
	rst  $38                                         ; $6528: $ff
	ld   [bc], a                                     ; $6529: $02
	jr   nc, @+$01                                   ; $652a: $30 $ff

	jr   nc, @-$7d                                   ; $652c: $30 $81

	rst  $38                                         ; $652e: $ff
	nop                                              ; $652f: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6530: $cf
	add  l                                           ; $6531: $85
	rst  $38                                         ; $6532: $ff
	ld   [bc], a                                     ; $6533: $02
	ld   hl, sp-$01                                  ; $6534: $f8 $ff
	ld   hl, sp-$7f                                  ; $6536: $f8 $81
	rst  $38                                         ; $6538: $ff
	ld   b, $f8                                      ; $6539: $06 $f8
	rst  $38                                         ; $653b: $ff
	ld   hl, sp-$01                                  ; $653c: $f8 $ff
	push af                                          ; $653e: $f5
	rst  $38                                         ; $653f: $ff
	ccf                                              ; $6540: $3f
	add  c                                           ; $6541: $81
	rst  $38                                         ; $6542: $ff
	ld   [bc], a                                     ; $6543: $02
	push bc                                          ; $6544: $c5
	rst  $38                                         ; $6545: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6546: $cf
	add  c                                           ; $6547: $81
	rst  $38                                         ; $6548: $ff

jr_01c_6549:
	ld   [bc], a                                     ; $6549: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $654a: $cf
	rst  $38                                         ; $654b: $ff
	rrca                                             ; $654c: $0f
	add  c                                           ; $654d: $81

jr_01c_654e:
	rst  $38                                         ; $654e: $ff
	nop                                              ; $654f: $00
	sbc  [hl]                                        ; $6550: $9e
	add  l                                           ; $6551: $85
	rst  $38                                         ; $6552: $ff
	inc  b                                           ; $6553: $04
	rst  $30                                         ; $6554: $f7
	rst  $38                                         ; $6555: $ff
	rst  $28                                         ; $6556: $ef
	rst  $38                                         ; $6557: $ff
	add  [hl]                                        ; $6558: $86
	add  c                                           ; $6559: $81
	rst  $38                                         ; $655a: $ff
	nop                                              ; $655b: $00
	ld   a, a                                        ; $655c: $7f
	adc  c                                           ; $655d: $89
	rst  $38                                         ; $655e: $ff
	nop                                              ; $655f: $00
	ld   a, a                                        ; $6560: $7f
	rst  $38                                         ; $6561: $ff
	rst  $38                                         ; $6562: $ff
	xor  h                                           ; $6563: $ac
	rst  $38                                         ; $6564: $ff
	ld   [bc], a                                     ; $6565: $02
	nop                                              ; $6566: $00
	rst  $38                                         ; $6567: $ff
	jr   nc, jr_01c_64ef                             ; $6568: $30 $85

	rst  $38                                         ; $656a: $ff
	inc  b                                           ; $656b: $04
	or   $ff                                         ; $656c: $f6 $ff
	reti                                             ; $656e: $d9


	rst  $38                                         ; $656f: $ff
	ldh  [$85], a                                    ; $6570: $e0 $85
	rst  $38                                         ; $6572: $ff
	nop                                              ; $6573: $00
	add  hl, sp                                      ; $6574: $39
	add  c                                           ; $6575: $81
	rst  $38                                         ; $6576: $ff
	inc  c                                           ; $6577: $0c
	ld   a, [$bdff]                                  ; $6578: $fa $ff $bd
	rst  $38                                         ; $657b: $ff
	ld   a, [hl]                                     ; $657c: $7e
	rst  $38                                         ; $657d: $ff
	sbc  a                                           ; $657e: $9f
	rst  $38                                         ; $657f: $ff
	rst  $28                                         ; $6580: $ef
	rst  $38                                         ; $6581: $ff
	cp   a                                           ; $6582: $bf
	rst  $38                                         ; $6583: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6584: $cf
	add  c                                           ; $6585: $81
	rst  $38                                         ; $6586: $ff
	nop                                              ; $6587: $00
	rrca                                             ; $6588: $0f
	add  c                                           ; $6589: $81
	rst  $38                                         ; $658a: $ff
	ld   [$ff0f], sp                                 ; $658b: $08 $0f $ff
	add  [hl]                                        ; $658e: $86
	rst  $38                                         ; $658f: $ff
	or   a                                           ; $6590: $b7
	rst  $38                                         ; $6591: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6592: $cf
	rst  $38                                         ; $6593: $ff
	db   $fd                                         ; $6594: $fd
	add  c                                           ; $6595: $81
	rst  $38                                         ; $6596: $ff
	ld   b, $f2                                      ; $6597: $06 $f2
	rst  $38                                         ; $6599: $ff
	db   $fd                                         ; $659a: $fd
	rst  $38                                         ; $659b: $ff
	di                                               ; $659c: $f3
	rst  $38                                         ; $659d: $ff
	ld   a, a                                        ; $659e: $7f
	add  e                                           ; $659f: $83
	rst  $38                                         ; $65a0: $ff
	nop                                              ; $65a1: $00
	ld   a, a                                        ; $65a2: $7f
	ret  c                                           ; $65a3: $d8

	rst  $38                                         ; $65a4: $ff
	add  b                                           ; $65a5: $80
	nop                                              ; $65a6: $00
	adc  d                                           ; $65a7: $8a
	rst  $38                                         ; $65a8: $ff
	add  d                                           ; $65a9: $82
	nop                                              ; $65aa: $00
	adc  d                                           ; $65ab: $8a
	rst  $38                                         ; $65ac: $ff
	add  d                                           ; $65ad: $82
	nop                                              ; $65ae: $00
	adc  d                                           ; $65af: $8a
	rst  $38                                         ; $65b0: $ff
	add  d                                           ; $65b1: $82
	nop                                              ; $65b2: $00
	adc  d                                           ; $65b3: $8a
	rst  $38                                         ; $65b4: $ff
	add  d                                           ; $65b5: $82
	nop                                              ; $65b6: $00
	adc  d                                           ; $65b7: $8a
	rst  $38                                         ; $65b8: $ff
	add  d                                           ; $65b9: $82
	nop                                              ; $65ba: $00
	adc  d                                           ; $65bb: $8a
	rst  $38                                         ; $65bc: $ff
	add  d                                           ; $65bd: $82
	nop                                              ; $65be: $00
	ld   bc, $cfff                                   ; $65bf: $01 $ff $cf
	add  e                                           ; $65c2: $83
	rst  $38                                         ; $65c3: $ff
	ld   [bc], a                                     ; $65c4: $02
	jr   nc, @+$01                                   ; $65c5: $30 $ff

	jr   nc, jr_01c_6549                             ; $65c7: $30 $80

	rst  $38                                         ; $65c9: $ff
	nop                                              ; $65ca: $00
	jr   nc, jr_01c_654e                             ; $65cb: $30 $81

	nop                                              ; $65cd: $00
	add  e                                           ; $65ce: $83
	rst  $38                                         ; $65cf: $ff
	ld   [bc], a                                     ; $65d0: $02
	ld   hl, sp-$01                                  ; $65d1: $f8 $ff
	ld   hl, sp-$7f                                  ; $65d3: $f8 $81
	rst  $38                                         ; $65d5: $ff
	ld   bc, $07f8                                   ; $65d6: $01 $f8 $07
	add  b                                           ; $65d9: $80
	nop                                              ; $65da: $00
	ld   [bc], a                                     ; $65db: $02
	ld   a, [bc]                                     ; $65dc: $0a
	rst  $38                                         ; $65dd: $ff
	ccf                                              ; $65de: $3f
	add  c                                           ; $65df: $81
	rst  $38                                         ; $65e0: $ff
	ld   [bc], a                                     ; $65e1: $02
	push bc                                          ; $65e2: $c5
	rst  $38                                         ; $65e3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e4: $cf
	add  c                                           ; $65e5: $81
	rst  $38                                         ; $65e6: $ff
	ld   bc, $f0cf                                   ; $65e7: $01 $cf $f0
	add  c                                           ; $65ea: $81
	nop                                              ; $65eb: $00
	ld   bc, $9eff                                   ; $65ec: $01 $ff $9e
	add  l                                           ; $65ef: $85
	rst  $38                                         ; $65f0: $ff
	inc  bc                                          ; $65f1: $03
	rst  $30                                         ; $65f2: $f7
	rst  $38                                         ; $65f3: $ff
	rst  $28                                         ; $65f4: $ef
	ld   a, c                                        ; $65f5: $79
	add  c                                           ; $65f6: $81
	nop                                              ; $65f7: $00
	ld   bc, $7fff                                   ; $65f8: $01 $ff $7f
	adc  b                                           ; $65fb: $88
	rst  $38                                         ; $65fc: $ff
	nop                                              ; $65fd: $00
	add  b                                           ; $65fe: $80
	add  c                                           ; $65ff: $81
	nop                                              ; $6600: $00
	adc  d                                           ; $6601: $8a
	rst  $38                                         ; $6602: $ff
	add  d                                           ; $6603: $82
	nop                                              ; $6604: $00
	adc  d                                           ; $6605: $8a
	rst  $38                                         ; $6606: $ff
	add  d                                           ; $6607: $82
	nop                                              ; $6608: $00
	adc  d                                           ; $6609: $8a
	rst  $38                                         ; $660a: $ff
	add  d                                           ; $660b: $82
	nop                                              ; $660c: $00
	adc  d                                           ; $660d: $8a
	rst  $38                                         ; $660e: $ff
	add  d                                           ; $660f: $82
	nop                                              ; $6610: $00
	adc  d                                           ; $6611: $8a
	rst  $38                                         ; $6612: $ff
	add  b                                           ; $6613: $80
	nop                                              ; $6614: $00
	add  e                                           ; $6615: $83
	rst  $38                                         ; $6616: $ff
	ld   bc, $ff00                                   ; $6617: $01 $00 $ff
	add  a                                           ; $661a: $87
	nop                                              ; $661b: $00
	add  e                                           ; $661c: $83
	rst  $38                                         ; $661d: $ff
	ld   bc, $ff00                                   ; $661e: $01 $00 $ff
	add  a                                           ; $6621: $87
	nop                                              ; $6622: $00
	add  e                                           ; $6623: $83
	rst  $38                                         ; $6624: $ff
	ld   bc, $ff00                                   ; $6625: $01 $00 $ff
	add  a                                           ; $6628: $87
	nop                                              ; $6629: $00
	add  e                                           ; $662a: $83
	rst  $38                                         ; $662b: $ff
	ld   bc, $ff00                                   ; $662c: $01 $00 $ff
	add  a                                           ; $662f: $87
	nop                                              ; $6630: $00
	add  e                                           ; $6631: $83
	rst  $38                                         ; $6632: $ff
	ld   bc, $ff00                                   ; $6633: $01 $00 $ff
	add  a                                           ; $6636: $87
	nop                                              ; $6637: $00

jr_01c_6638:
	add  e                                           ; $6638: $83
	rst  $38                                         ; $6639: $ff
	ld   bc, $ff00                                   ; $663a: $01 $00 $ff
	add  a                                           ; $663d: $87
	nop                                              ; $663e: $00
	add  e                                           ; $663f: $83
	rst  $38                                         ; $6640: $ff
	ld   bc, $ff00                                   ; $6641: $01 $00 $ff
	add  b                                           ; $6644: $80
	nop                                              ; $6645: $00
	add  h                                           ; $6646: $84
	jr   nc, jr_01c_6649                             ; $6647: $30 $00

jr_01c_6649:
	nop                                              ; $6649: $00
	add  e                                           ; $664a: $83
	rst  $38                                         ; $664b: $ff
	ld   bc, $ff00                                   ; $664c: $01 $00 $ff
	add  h                                           ; $664f: $84
	nop                                              ; $6650: $00
	add  b                                           ; $6651: $80

jr_01c_6652:
	rlca                                             ; $6652: $07
	nop                                              ; $6653: $00
	nop                                              ; $6654: $00
	add  e                                           ; $6655: $83
	rst  $38                                         ; $6656: $ff
	ld   bc, $ff00                                   ; $6657: $01 $00 $ff
	add  b                                           ; $665a: $80
	ld   a, [bc]                                     ; $665b: $0a
	add  d                                           ; $665c: $82
	jp   z, $f080                                    ; $665d: $ca $80 $f0

	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	add  e                                           ; $6662: $83
	rst  $38                                         ; $6663: $ff
	ld   bc, $ff00                                   ; $6664: $01 $00 $ff
	add  b                                           ; $6667: $80
	nop                                              ; $6668: $00
	add  h                                           ; $6669: $84
	ld   h, c                                        ; $666a: $61
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	add  e                                           ; $666d: $83
	rst  $38                                         ; $666e: $ff
	ld   bc, $ff00                                   ; $666f: $01 $00 $ff
	add  b                                           ; $6672: $80
	nop                                              ; $6673: $00
	add  h                                           ; $6674: $84
	add  b                                           ; $6675: $80
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	add  e                                           ; $6678: $83
	rst  $38                                         ; $6679: $ff
	ld   bc, $ff00                                   ; $667a: $01 $00 $ff
	add  a                                           ; $667d: $87
	nop                                              ; $667e: $00
	add  e                                           ; $667f: $83
	rst  $38                                         ; $6680: $ff
	ld   bc, $ff00                                   ; $6681: $01 $00 $ff
	add  a                                           ; $6684: $87
	nop                                              ; $6685: $00
	add  e                                           ; $6686: $83
	rst  $38                                         ; $6687: $ff
	ld   bc, $ff00                                   ; $6688: $01 $00 $ff
	add  a                                           ; $668b: $87
	nop                                              ; $668c: $00
	add  e                                           ; $668d: $83
	rst  $38                                         ; $668e: $ff
	ld   bc, $ff00                                   ; $668f: $01 $00 $ff
	add  a                                           ; $6692: $87
	nop                                              ; $6693: $00
	add  e                                           ; $6694: $83
	rst  $38                                         ; $6695: $ff
	ld   bc, $ff00                                   ; $6696: $01 $00 $ff
	add  [hl]                                        ; $6699: $86
	nop                                              ; $669a: $00
	add  b                                           ; $669b: $80
	rst  $38                                         ; $669c: $ff
	adc  h                                           ; $669d: $8c
	nop                                              ; $669e: $00
	add  b                                           ; $669f: $80
	rst  $38                                         ; $66a0: $ff
	adc  h                                           ; $66a1: $8c
	nop                                              ; $66a2: $00
	add  b                                           ; $66a3: $80
	rst  $38                                         ; $66a4: $ff
	adc  h                                           ; $66a5: $8c
	nop                                              ; $66a6: $00
	add  b                                           ; $66a7: $80
	rst  $38                                         ; $66a8: $ff
	adc  h                                           ; $66a9: $8c
	nop                                              ; $66aa: $00
	add  b                                           ; $66ab: $80
	rst  $38                                         ; $66ac: $ff
	adc  h                                           ; $66ad: $8c
	nop                                              ; $66ae: $00
	add  b                                           ; $66af: $80
	rst  $38                                         ; $66b0: $ff
	adc  h                                           ; $66b1: $8c
	nop                                              ; $66b2: $00
	add  b                                           ; $66b3: $80
	rst  $38                                         ; $66b4: $ff
	add  [hl]                                        ; $66b5: $86
	jr   nc, jr_01c_6638                             ; $66b6: $30 $80

	add  hl, sp                                      ; $66b8: $39
	add  b                                           ; $66b9: $80
	rra                                              ; $66ba: $1f
	add  b                                           ; $66bb: $80
	nop                                              ; $66bc: $00
	add  b                                           ; $66bd: $80
	rst  $38                                         ; $66be: $ff
	add  d                                           ; $66bf: $82
	nop                                              ; $66c0: $00
	add  d                                           ; $66c1: $82
	add  $80                                         ; $66c2: $c6 $80
	jp   $8180                                       ; $66c4: $c3 $80 $81


	add  b                                           ; $66c7: $80
	nop                                              ; $66c8: $00
	add  b                                           ; $66c9: $80
	rst  $38                                         ; $66ca: $ff
	add  b                                           ; $66cb: $80
	ld   [hl], b                                     ; $66cc: $70
	add  b                                           ; $66cd: $80
	jr   nc, jr_01c_6652                             ; $66ce: $30 $82

	nop                                              ; $66d0: $00
	add  d                                           ; $66d1: $82
	ldh  a, [$80]                                    ; $66d2: $f0 $80
	nop                                              ; $66d4: $00
	add  b                                           ; $66d5: $80
	rst  $38                                         ; $66d6: $ff
	add  b                                           ; $66d7: $80
	ld   sp, $0180                                   ; $66d8: $31 $80 $01
	add  d                                           ; $66db: $82
	inc  bc                                          ; $66dc: $03
	add  b                                           ; $66dd: $80
	ld   c, $80                                      ; $66de: $0e $80
	inc  c                                           ; $66e0: $0c
	add  b                                           ; $66e1: $80
	nop                                              ; $66e2: $00
	add  b                                           ; $66e3: $80
	rst  $38                                         ; $66e4: $ff
	add  d                                           ; $66e5: $82
	add  b                                           ; $66e6: $80
	adc  b                                           ; $66e7: $88
	nop                                              ; $66e8: $00
	add  b                                           ; $66e9: $80
	rst  $38                                         ; $66ea: $ff
	adc  h                                           ; $66eb: $8c

Call_01c_66ec:
	nop                                              ; $66ec: $00
	add  b                                           ; $66ed: $80
	rst  $38                                         ; $66ee: $ff
	adc  h                                           ; $66ef: $8c
	nop                                              ; $66f0: $00
	add  b                                           ; $66f1: $80
	rst  $38                                         ; $66f2: $ff
	adc  h                                           ; $66f3: $8c
	nop                                              ; $66f4: $00
	add  b                                           ; $66f5: $80
	rst  $38                                         ; $66f6: $ff
	adc  h                                           ; $66f7: $8c
	nop                                              ; $66f8: $00
	add  b                                           ; $66f9: $80
	rst  $38                                         ; $66fa: $ff
	adc  h                                           ; $66fb: $8c
	nop                                              ; $66fc: $00
	ld   l, b                                        ; $66fd: $68
	nop                                              ; $66fe: $00
	rlca                                             ; $66ff: $07
	add  b                                           ; $6700: $80
	ld   bc, $0103                                   ; $6701: $01 $03 $01
	rlca                                             ; $6704: $07
	ld   bc, $8203                                   ; $6705: $01 $03 $82
	add  d                                           ; $6708: $82
	nop                                              ; $6709: $00
	ld   c, $92                                      ; $670a: $0e $92
	dec  de                                          ; $670c: $1b
	db   $eb                                         ; $670d: $eb
	ld   bc, $010f                                   ; $670e: $01 $0f $01
	inc  bc                                          ; $6711: $03
	ld   bc, $0107                                   ; $6712: $01 $07 $01
	inc  bc                                          ; $6715: $03
	ld   bc, $23fd                                   ; $6716: $01 $fd $23
	or   c                                           ; $6719: $b1
	add  e                                           ; $671a: $83
	nop                                              ; $671b: $00
	ld   bc, $f590                                   ; $671c: $01 $90 $f5
	add  c                                           ; $671f: $81
	nop                                              ; $6720: $00
	ld   [bc], a                                     ; $6721: $02
	ldh  a, [rAUD1LOW]                               ; $6722: $f0 $13
	sub  d                                           ; $6724: $92
	add  d                                           ; $6725: $82
	nop                                              ; $6726: $00
	ld   c, $82                                      ; $6727: $0e $82
	dec  bc                                          ; $6729: $0b
	db   $eb                                         ; $672a: $eb
	ld   bc, $010f                                   ; $672b: $01 $0f $01
	inc  bc                                          ; $672e: $03
	ld   bc, $0107                                   ; $672f: $01 $07 $01
	inc  bc                                          ; $6732: $03
	ld   bc, $63dd                                   ; $6733: $01 $dd $63
	pop  bc                                          ; $6736: $c1
	add  e                                           ; $6737: $83
	nop                                              ; $6738: $00
	ld   bc, $c5a0                                   ; $6739: $01 $a0 $c5
	add  c                                           ; $673c: $81
	nop                                              ; $673d: $00
	dec  d                                           ; $673e: $15
	ret  nz                                          ; $673f: $c0

	inc  bc                                          ; $6740: $03
	ld   bc, $010f                                   ; $6741: $01 $0f $01
	inc  bc                                          ; $6744: $03
	ld   bc, $0107                                   ; $6745: $01 $07 $01
	pop  bc                                          ; $6748: $c1
	ld   bc, $0103                                   ; $6749: $01 $03 $01
	db   $fd                                         ; $674c: $fd
	inc  hl                                          ; $674d: $23
	ld   a, a                                        ; $674e: $7f
	ld   bc, $010b                                   ; $674f: $01 $0b $01
	inc  bc                                          ; $6752: $03
	ld   bc, $83c7                                   ; $6753: $01 $c7 $83
	nop                                              ; $6756: $00
	ld   bc, $d5b0                                   ; $6757: $01 $b0 $d5
	add  c                                           ; $675a: $81
	nop                                              ; $675b: $00
	dec  d                                           ; $675c: $15
	ret  nc                                          ; $675d: $d0

	inc  bc                                          ; $675e: $03
	ld   bc, $010f                                   ; $675f: $01 $0f $01
	inc  bc                                          ; $6762: $03
	ld   bc, $0107                                   ; $6763: $01 $07 $01
	pop  bc                                          ; $6766: $c1
	ld   bc, $0103                                   ; $6767: $01 $03 $01
	db   $dd                                         ; $676a: $dd
	ld   h, e                                        ; $676b: $63
	rra                                              ; $676c: $1f
	ld   bc, $010b                                   ; $676d: $01 $0b $01
	inc  bc                                          ; $6770: $03
	ld   bc, $83d7                                   ; $6771: $01 $d7 $83
	nop                                              ; $6774: $00
	ld   bc, $a5c0                                   ; $6775: $01 $c0 $a5
	add  c                                           ; $6778: $81
	nop                                              ; $6779: $00
	dec  d                                           ; $677a: $15
	and  b                                           ; $677b: $a0
	inc  bc                                          ; $677c: $03
	ld   bc, $010f                                   ; $677d: $01 $0f $01
	inc  bc                                          ; $6780: $03
	ld   bc, $0107                                   ; $6781: $01 $07 $01
	inc  bc                                          ; $6784: $03
	ld   bc, $010b                                   ; $6785: $01 $0b $01
	inc  bc                                          ; $6788: $03
	ld   bc, $0129                                   ; $6789: $01 $29 $01
	rrca                                             ; $678c: $0f
	ld   bc, $0103                                   ; $678d: $01 $03 $01
	db   $e3                                         ; $6790: $e3
	add  e                                           ; $6791: $83
	nop                                              ; $6792: $00
	ld   a, [de]                                     ; $6793: $1a
	ret  nc                                          ; $6794: $d0

	ld   bc, $0103                                   ; $6795: $01 $03 $01
	rlca                                             ; $6798: $07
	ld   bc, $0103                                   ; $6799: $01 $03 $01
	rrca                                             ; $679c: $0f
	ld   bc, $0103                                   ; $679d: $01 $03 $01
	rlca                                             ; $67a0: $07
	ld   bc, $0103                                   ; $67a1: $01 $03 $01
	dec  bc                                          ; $67a4: $0b
	ld   bc, $0103                                   ; $67a5: $01 $03 $01
	add  hl, hl                                      ; $67a8: $29
	ld   bc, $010f                                   ; $67a9: $01 $0f $01
	inc  bc                                          ; $67ac: $03
	ld   bc, $83f3                                   ; $67ad: $01 $f3 $83
	nop                                              ; $67b0: $00
	ld   a, [de]                                     ; $67b1: $1a
	ldh  [rSB], a                                    ; $67b2: $e0 $01
	inc  bc                                          ; $67b4: $03
	ld   bc, $0107                                   ; $67b5: $01 $07 $01
	inc  bc                                          ; $67b8: $03
	ld   bc, $010f                                   ; $67b9: $01 $0f $01
	inc  bc                                          ; $67bc: $03
	ld   bc, $0107                                   ; $67bd: $01 $07 $01
	inc  bc                                          ; $67c0: $03
	ld   bc, $010f                                   ; $67c1: $01 $0f $01
	inc  bc                                          ; $67c4: $03
	ld   bc, $01fd                                   ; $67c5: $01 $fd $01
	rrca                                             ; $67c8: $0f
	ld   bc, $0103                                   ; $67c9: $01 $03 $01
	inc  de                                          ; $67cc: $13
	add  e                                           ; $67cd: $83
	nop                                              ; $67ce: $00
	ld   a, [de]                                     ; $67cf: $1a
	ldh  a, [rSB]                                    ; $67d0: $f0 $01
	inc  bc                                          ; $67d2: $03
	ld   bc, $0107                                   ; $67d3: $01 $07 $01
	inc  bc                                          ; $67d6: $03
	ld   bc, $010f                                   ; $67d7: $01 $0f $01
	inc  bc                                          ; $67da: $03
	ld   bc, $0107                                   ; $67db: $01 $07 $01
	inc  bc                                          ; $67de: $03
	ld   bc, $010f                                   ; $67df: $01 $0f $01
	inc  bc                                          ; $67e2: $03
	ld   bc, $01dd                                   ; $67e3: $01 $dd $01
	rrca                                             ; $67e6: $0f
	ld   bc, $0103                                   ; $67e7: $01 $03 $01
	inc  hl                                          ; $67ea: $23
	add  h                                           ; $67eb: $84
	nop                                              ; $67ec: $00
	ld   a, [de]                                     ; $67ed: $1a
	ld   bc, $0103                                   ; $67ee: $01 $03 $01
	rlca                                             ; $67f1: $07
	ld   bc, $0103                                   ; $67f2: $01 $03 $01
	rrca                                             ; $67f5: $0f
	ld   bc, $0103                                   ; $67f6: $01 $03 $01
	rlca                                             ; $67f9: $07
	ld   bc, $0103                                   ; $67fa: $01 $03 $01
	rrca                                             ; $67fd: $0f
	ld   bc, $0103                                   ; $67fe: $01 $03 $01
	rlc  c                                           ; $6801: $cb $01
	inc  bc                                          ; $6803: $03
	ld   bc, $0107                                   ; $6804: $01 $07 $01
	inc  bc                                          ; $6807: $03
	adc  $82                                         ; $6808: $ce $82
	nop                                              ; $680a: $00
	ld   bc, $3410                                   ; $680b: $01 $10 $34
	add  d                                           ; $680e: $82
	nop                                              ; $680f: $00
	dec  d                                           ; $6810: $15
	ld   [hl-], a                                    ; $6811: $32
	ld   bc, $010f                                   ; $6812: $01 $0f $01
	inc  bc                                          ; $6815: $03
	ld   bc, $0107                                   ; $6816: $01 $07 $01
	inc  bc                                          ; $6819: $03
	ld   bc, $010f                                   ; $681a: $01 $0f $01
	inc  bc                                          ; $681d: $03
	ld   bc, $01cb                                   ; $681e: $01 $cb $01
	inc  bc                                          ; $6821: $03
	ld   bc, $0107                                   ; $6822: $01 $07 $01
	inc  bc                                          ; $6825: $03
	sbc  $82                                         ; $6826: $de $82
	nop                                              ; $6828: $00
	ld   bc, $1420                                   ; $6829: $01 $20 $14
	add  d                                           ; $682c: $82
	nop                                              ; $682d: $00
	inc  d                                           ; $682e: $14
	ld   [de], a                                     ; $682f: $12
	ld   bc, $010f                                   ; $6830: $01 $0f $01
	inc  bc                                          ; $6833: $03
	ld   bc, $0107                                   ; $6834: $01 $07 $01
	inc  bc                                          ; $6837: $03
	ld   bc, $010f                                   ; $6838: $01 $0f $01
	inc  bc                                          ; $683b: $03
	ld   bc, $01ed                                   ; $683c: $01 $ed $01
	dec  bc                                          ; $683f: $0b
	ld   bc, $0103                                   ; $6840: $01 $03 $01
	rst  ToBoot                                         ; $6843: $c7
	add  e                                           ; $6844: $83
	nop                                              ; $6845: $00
	ld   a, [de]                                     ; $6846: $1a
	jr   nc, jr_01c_684a                             ; $6847: $30 $01

	inc  bc                                          ; $6849: $03

jr_01c_684a:
	ld   bc, $0107                                   ; $684a: $01 $07 $01
	inc  bc                                          ; $684d: $03
	ld   bc, $010f                                   ; $684e: $01 $0f $01
	inc  bc                                          ; $6851: $03
	ld   bc, $0107                                   ; $6852: $01 $07 $01
	inc  bc                                          ; $6855: $03
	ld   bc, $010f                                   ; $6856: $01 $0f $01
	inc  bc                                          ; $6859: $03
	ld   bc, $39d5                                   ; $685a: $01 $d5 $39
	dec  bc                                          ; $685d: $0b
	ld   bc, $3103                                   ; $685e: $01 $03 $31
	rst  $20                                         ; $6861: $e7
	add  e                                           ; $6862: $83
	nop                                              ; $6863: $00
	ld   [bc], a                                     ; $6864: $02
	ld   b, b                                        ; $6865: $40
	ld   bc, $8003                                   ; $6866: $01 $03 $80
	nop                                              ; $6869: $00
	rlca                                             ; $686a: $07
	inc  bc                                          ; $686b: $03
	ld   bc, $0f07                                   ; $686c: $01 $07 $0f
	ld   bc, $0103                                   ; $686f: $01 $03 $01
	rlca                                             ; $6872: $07
	add  l                                           ; $6873: $85
	nop                                              ; $6874: $00
	ld   b, $82                                      ; $6875: $06 $82
	ld   bc, $010b                                   ; $6877: $01 $0b $01
	inc  bc                                          ; $687a: $03
	ld   bc, $83c7                                   ; $687b: $01 $c7 $83
	nop                                              ; $687e: $00
	ld   a, [de]                                     ; $687f: $1a
	ld   d, b                                        ; $6880: $50
	ld   bc, $0103                                   ; $6881: $01 $03 $01
	rlca                                             ; $6884: $07
	ld   bc, $0103                                   ; $6885: $01 $03 $01
	rrca                                             ; $6888: $0f
	ld   bc, $0103                                   ; $6889: $01 $03 $01
	rlca                                             ; $688c: $07
	ld   de, $0103                                   ; $688d: $11 $03 $01
	db   $fd                                         ; $6890: $fd
	ld   bc, $01f1                                   ; $6891: $01 $f1 $01
	and  l                                           ; $6894: $a5
	add  hl, sp                                      ; $6895: $39
	dec  bc                                          ; $6896: $0b
	ld   bc, $3103                                   ; $6897: $01 $03 $31
	rst  $20                                         ; $689a: $e7
	add  e                                           ; $689b: $83
	nop                                              ; $689c: $00
	inc  d                                           ; $689d: $14
	ld   h, b                                        ; $689e: $60
	ld   bc, $0103                                   ; $689f: $01 $03 $01
	rlca                                             ; $68a2: $07
	ld   bc, $0103                                   ; $68a3: $01 $03 $01
	rrca                                             ; $68a6: $0f
	ld   bc, $0103                                   ; $68a7: $01 $03 $01
	rlca                                             ; $68aa: $07
	ld   sp, $01a9                                   ; $68ab: $31 $a9 $01
	scf                                              ; $68ae: $37
	ld   bc, $26b6                                   ; $68af: $01 $b6 $26
	ld   d, e                                        ; $68b2: $53
	adc  c                                           ; $68b3: $89
	nop                                              ; $68b4: $00
	inc  d                                           ; $68b5: $14
	ld   h, b                                        ; $68b6: $60
	ld   bc, $0103                                   ; $68b7: $01 $03 $01
	rlca                                             ; $68ba: $07
	ld   bc, $1103                                   ; $68bb: $01 $03 $11
	rrca                                             ; $68be: $0f
	ld   bc, $0103                                   ; $68bf: $01 $03 $01
	jr   c, @+$20                                    ; $68c2: $38 $1e

	xor  e                                           ; $68c4: $ab
	ld   bc, $010f                                   ; $68c5: $01 $0f $01
	inc  bc                                          ; $68c8: $03
	xor  c                                           ; $68c9: $a9
	ld   d, e                                        ; $68ca: $53
	adc  c                                           ; $68cb: $89
	nop                                              ; $68cc: $00
	inc  d                                           ; $68cd: $14
	ld   [hl], b                                     ; $68ce: $70
	ld   bc, $0103                                   ; $68cf: $01 $03 $01
	rlca                                             ; $68d2: $07
	ld   bc, $3503                                   ; $68d3: $01 $03 $35
	rlca                                             ; $68d6: $07
	ld   bc, $0503                                   ; $68d7: $01 $03 $05
	nop                                              ; $68da: $00
	cp   b                                           ; $68db: $b8
	rlca                                             ; $68dc: $07
	ld   bc, $0103                                   ; $68dd: $01 $03 $01
	dec  de                                          ; $68e0: $1b
	ld   bc, $89e5                                   ; $68e1: $01 $e5 $89
	nop                                              ; $68e4: $00
	ld   bc, $0140                                   ; $68e5: $01 $40 $01
	add  d                                           ; $68e8: $82
	nop                                              ; $68e9: $00
	ld   bc, $0301                                   ; $68ea: $01 $01 $03
	adc  d                                           ; $68ed: $8a
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	ld   b, e                                        ; $68f0: $43
	adc  c                                           ; $68f1: $89
	nop                                              ; $68f2: $00
	ld   bc, $015e                                   ; $68f3: $01 $5e $01
	adc  a                                           ; $68f6: $8f
	nop                                              ; $68f7: $00
	ld   [bc], a                                     ; $68f8: $02
	ld   bc, $0100                                   ; $68f9: $01 $00 $01
	add  a                                           ; $68fc: $87
	nop                                              ; $68fd: $00
	ld   d, $01                                      ; $68fe: $16 $01
	ld   c, $d0                                      ; $6900: $0e $d0
	ld   [bc], a                                     ; $6902: $02
	ld   b, $02                                      ; $6903: $06 $02
	ld   c, $02                                      ; $6905: $0e $02
	ld   b, $02                                      ; $6907: $06 $02
	ld   e, $02                                      ; $6909: $1e $02
	ld   b, $02                                      ; $690b: $06 $02
	ld   c, $02                                      ; $690d: $0e $02

jr_01c_690f:
	ld   b, $02                                      ; $690f: $06 $02
	ld   a, $02                                      ; $6911: $3e $02
	ldh  a, [c]                                      ; $6913: $f2
	nop                                              ; $6914: $00
	dec  [hl]                                        ; $6915: $35
	add  a                                           ; $6916: $87
	nop                                              ; $6917: $00
	ld   d, $35                                      ; $6918: $16 $35
	nop                                              ; $691a: $00
	pop  de                                          ; $691b: $d1
	ld   [bc], a                                     ; $691c: $02
	ld   b, $02                                      ; $691d: $06 $02
	ld   c, $02                                      ; $691f: $0e $02
	ld   b, $02                                      ; $6921: $06 $02
	ld   e, $02                                      ; $6923: $1e $02
	ld   b, $02                                      ; $6925: $06 $02
	ld   c, $02                                      ; $6927: $0e $02
	ld   b, $02                                      ; $6929: $06 $02
	ld   a, $02                                      ; $692b: $3e $02
	di                                               ; $692d: $f3
	nop                                              ; $692e: $00
	dec  [hl]                                        ; $692f: $35
	add  a                                           ; $6930: $87
	nop                                              ; $6931: $00
	ld   d, $35                                      ; $6932: $16 $35
	nop                                              ; $6934: $00
	db   $f4                                         ; $6935: $f4
	ld   [bc], a                                     ; $6936: $02
	ld   c, $02                                      ; $6937: $0e $02
	ld   b, $02                                      ; $6939: $06 $02
	ld   e, $02                                      ; $693b: $1e $02
	ld   b, $02                                      ; $693d: $06 $02
	ld   c, $02                                      ; $693f: $0e $02
	ld   b, $02                                      ; $6941: $06 $02
	ld   a, [hl]                                     ; $6943: $7e
	ld   [bc], a                                     ; $6944: $02
	ld   [de], a                                     ; $6945: $12
	ld   [bc], a                                     ; $6946: $02
	add  d                                           ; $6947: $82
	ld   c, $01                                      ; $6948: $0e $01
	add  a                                           ; $694a: $87
	nop                                              ; $694b: $00
	dec  d                                           ; $694c: $15
	ld   bc, $f50e                                   ; $694d: $01 $0e $f5
	ld   [bc], a                                     ; $6950: $02
	ld   c, $02                                      ; $6951: $0e $02
	ld   b, $02                                      ; $6953: $06 $02
	ld   e, $02                                      ; $6955: $1e $02
	ld   b, $02                                      ; $6957: $06 $02
	ld   c, $02                                      ; $6959: $0e $02
	ld   b, $02                                      ; $695b: $06 $02
	ld   a, [hl]                                     ; $695d: $7e
	ld   [bc], a                                     ; $695e: $02
	ld   [de], a                                     ; $695f: $12
	ld   [bc], a                                     ; $6960: $02
	add  e                                           ; $6961: $83
	ld   d, b                                        ; $6962: $50
	adc  c                                           ; $6963: $89
	nop                                              ; $6964: $00
	ld   bc, $015e                                   ; $6965: $01 $5e $01
	adc  a                                           ; $6968: $8f
	nop                                              ; $6969: $00
	ld   bc, $5e01                                   ; $696a: $01 $01 $5e
	adc  c                                           ; $696d: $89
	nop                                              ; $696e: $00
	db   $10                                         ; $696f: $10
	ld   h, e                                        ; $6970: $63
	ld   l, h                                        ; $6971: $6c
	jr   nz, jr_01c_690f                             ; $6972: $20 $9b

	ei                                               ; $6974: $fb
	dec  bc                                          ; $6975: $0b
	ld   bc, $e321                                   ; $6976: $01 $21 $e3
	rrca                                             ; $6979: $0f
	sbc  c                                           ; $697a: $99
	inc  bc                                          ; $697b: $03
	ld   bc, $0107                                   ; $697c: $01 $07 $01
	ld   [hl], b                                     ; $697f: $70
	ld   h, l                                        ; $6980: $65
	adc  l                                           ; $6981: $8d
	nop                                              ; $6982: $00
	db   $10                                         ; $6983: $10
	ld   [hl], e                                     ; $6984: $73
	ld   l, h                                        ; $6985: $6c
	jr   nz, @-$60                                   ; $6986: $20 $9e

	cp   $0b                                         ; $6988: $fe $0b
	ld   bc, $e321                                   ; $698a: $01 $21 $e3
	rrca                                             ; $698d: $0f
	cp   c                                           ; $698e: $b9
	inc  bc                                          ; $698f: $03
	ld   bc, $0107                                   ; $6990: $01 $07 $01
	ld   b, b                                        ; $6993: $40
	ld   h, l                                        ; $6994: $65
	adc  l                                           ; $6995: $8d
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	ld   h, l                                        ; $6998: $65
	add  d                                           ; $6999: $82
	nop                                              ; $699a: $00
	ld   [bc], a                                     ; $699b: $02
	rlca                                             ; $699c: $07
	inc  l                                           ; $699d: $2c
	dec  hl                                          ; $699e: $2b
	add  c                                           ; $699f: $81
	nop                                              ; $69a0: $00
	ld   de, $002b                                   ; $69a1: $11 $2b $00
	ld   b, $2d                                      ; $69a4: $06 $2d
	nop                                              ; $69a6: $00
	ld   [hl+], a                                    ; $69a7: $22
	call nc, $d802                                   ; $69a8: $d4 $02 $d8
	jp   nz, $9d07                                   ; $69ab: $c2 $07 $9d

	ld   e, e                                        ; $69ae: $5b
	ld   bc, $0107                                   ; $69af: $01 $07 $01
	inc  bc                                          ; $69b2: $03
	dec  hl                                          ; $69b3: $2b
	add  [hl]                                        ; $69b4: $86
	nop                                              ; $69b5: $00
	ld   [bc], a                                     ; $69b6: $02
	rla                                              ; $69b7: $17
	inc  l                                           ; $69b8: $2c
	dec  sp                                          ; $69b9: $3b
	add  c                                           ; $69ba: $81
	nop                                              ; $69bb: $00
	ld   [de], a                                     ; $69bc: $12
	dec  sp                                          ; $69bd: $3b
	nop                                              ; $69be: $00
	ld   b, $3d                                      ; $69bf: $06 $3d
	nop                                              ; $69c1: $00
	ld   [hl-], a                                    ; $69c2: $32
	db   $f4                                         ; $69c3: $f4
	ld   [bc], a                                     ; $69c4: $02
	ld   hl, sp-$3e                                  ; $69c5: $f8 $c2
	rlca                                             ; $69c7: $07
	cp   l                                           ; $69c8: $bd
	ld   a, e                                        ; $69c9: $7b
	ld   bc, $0107                                   ; $69ca: $01 $07 $01
	inc  bc                                          ; $69cd: $03
	rrca                                             ; $69ce: $0f
	inc  [hl]                                        ; $69cf: $34
	add  b                                           ; $69d0: $80
	nop                                              ; $69d1: $00
	ld   c, $19                                      ; $69d2: $0e $19
	rst  $28                                         ; $69d4: $ef
	rlca                                             ; $69d5: $07
	ld   d, b                                        ; $69d6: $50
	ld   d, a                                        ; $69d7: $57
	push de                                          ; $69d8: $d5
	ld   [hl+], a                                    ; $69d9: $22
	db   $e3                                         ; $69da: $e3
	rrca                                             ; $69db: $0f
	sbc  c                                           ; $69dc: $99
	inc  bc                                          ; $69dd: $03
	ld   bc, $0107                                   ; $69de: $01 $07 $01
	ld   [hl], b                                     ; $69e1: $70
	add  d                                           ; $69e2: $82
	nop                                              ; $69e3: $00
	dec  b                                           ; $69e4: $05
	rst  $28                                         ; $69e5: $ef
	ld   [bc], a                                     ; $69e6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e7: $cf
	call nc, $f402                                   ; $69e8: $d4 $02 $f4
	add  b                                           ; $69eb: $80
	nop                                              ; $69ec: $00
	inc  de                                          ; $69ed: $13
	db   $ec                                         ; $69ee: $ec
	ld   bc, $d4cf                                   ; $69ef: $01 $cf $d4
	ld   [bc], a                                     ; $69f2: $02
	adc  [hl]                                        ; $69f3: $8e
	cp   h                                           ; $69f4: $bc
	rlca                                             ; $69f5: $07
	rst  $10                                         ; $69f6: $d7
	ret  nc                                          ; $69f7: $d0

	push af                                          ; $69f8: $f5
	ld   [hl+], a                                    ; $69f9: $22
	db   $e3                                         ; $69fa: $e3
	rrca                                             ; $69fb: $0f
	cp   c                                           ; $69fc: $b9
	inc  bc                                          ; $69fd: $03
	ld   bc, $0107                                   ; $69fe: $01 $07 $01
	ld   b, b                                        ; $6a01: $40
	add  d                                           ; $6a02: $82
	nop                                              ; $6a03: $00
	dec  b                                           ; $6a04: $05
	rst  $38                                         ; $6a05: $ff
	ld   [bc], a                                     ; $6a06: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a07: $cf
	db   $f4                                         ; $6a08: $f4
	ld   [bc], a                                     ; $6a09: $02
	call nz, $0080                                   ; $6a0a: $c4 $80 $00
	dec  d                                           ; $6a0d: $15
	db   $fc                                         ; $6a0e: $fc
	ld   bc, $f4cf                                   ; $6a0f: $01 $cf $f4
	ld   [bc], a                                     ; $6a12: $02
	call z, $0103                                    ; $6a13: $cc $03 $01
	rrca                                             ; $6a16: $0f
	ld   bc, $c133                                   ; $6a17: $01 $33 $c1
	rst  $30                                         ; $6a1a: $f7
	db   $e3                                         ; $6a1b: $e3
	rrca                                             ; $6a1c: $0f
	sbc  c                                           ; $6a1d: $99
	inc  bc                                          ; $6a1e: $03
	ld   bc, $0107                                   ; $6a1f: $01 $07 $01
	ld   [hl], b                                     ; $6a22: $70
	ld   h, l                                        ; $6a23: $65
	adc  l                                           ; $6a24: $8d
	nop                                              ; $6a25: $00
	inc  bc                                          ; $6a26: $03
	ld   a, l                                        ; $6a27: $7d
	inc  bc                                          ; $6a28: $03
	ld   bc, $800f                                   ; $6a29: $01 $0f $80
	ld   bc, $d30a                                   ; $6a2c: $01 $0a $d3
	rst  $10                                         ; $6a2f: $d7
	db   $e3                                         ; $6a30: $e3
	rrca                                             ; $6a31: $0f
	cp   c                                           ; $6a32: $b9
	inc  bc                                          ; $6a33: $03
	ld   bc, $0107                                   ; $6a34: $01 $07 $01
	ld   b, b                                        ; $6a37: $40
	ld   h, l                                        ; $6a38: $65
	adc  l                                           ; $6a39: $8d
	nop                                              ; $6a3a: $00
	or   $00                                         ; $6a3b: $f6 $00
	add  b                                           ; $6a3d: $80
	nop                                              ; $6a3e: $00
	ld   a, [bc]                                     ; $6a3f: $0a
	ld   [hl], a                                     ; $6a40: $77
	nop                                              ; $6a41: $00
	cpl                                              ; $6a42: $2f

jr_01c_6a43:
	inc  hl                                          ; $6a43: $23
	ld   a, [hl+]                                    ; $6a44: $2a

jr_01c_6a45:
	ld   h, $10                                      ; $6a45: $26 $10

jr_01c_6a47:
	add  hl, bc                                      ; $6a47: $09
	and  c                                           ; $6a48: $a1

jr_01c_6a49:
	ld   d, $46                                      ; $6a49: $16 $46

jr_01c_6a4b:
	add  b                                           ; $6a4b: $80
	cpl                                              ; $6a4c: $2f

jr_01c_6a4d:
	inc  b                                           ; $6a4d: $04
	ld   l, $b1                                      ; $6a4e: $2e $b1
	nop                                              ; $6a50: $00
	rst  $38                                         ; $6a51: $ff
	nop                                              ; $6a52: $00
	add  b                                           ; $6a53: $80
	rst  $38                                         ; $6a54: $ff
	add  c                                           ; $6a55: $81
	nop                                              ; $6a56: $00
	add  b                                           ; $6a57: $80
	or   a                                           ; $6a58: $b7
	add  b                                           ; $6a59: $80

jr_01c_6a5a:
	rlca                                             ; $6a5a: $07
	add  b                                           ; $6a5b: $80
	ld   d, b                                        ; $6a5c: $50
	inc  b                                           ; $6a5d: $04
	ld   a, [bc]                                     ; $6a5e: $0a
	push af                                          ; $6a5f: $f5
	nop                                              ; $6a60: $00
	rst  $38                                         ; $6a61: $ff
	nop                                              ; $6a62: $00
	add  c                                           ; $6a63: $81
	cp   $05                                         ; $6a64: $fe $05
	ldh  a, [$30]                                    ; $6a66: $f0 $30
	ld   [hl], $18                                   ; $6a68: $36 $18
	ret  nc                                          ; $6a6a: $d0

	adc  $80                                         ; $6a6b: $ce $80
	ld   l, d                                        ; $6a6d: $6a
	rlca                                             ; $6a6e: $07
	ld   [$0003], a                                  ; $6a6f: $ea $03 $00
	ccf                                              ; $6a72: $3f
	nop                                              ; $6a73: $00
	jp   Jump_01c_4808                               ; $6a74: $c3 $08 $48


	add  c                                           ; $6a77: $81
	ld   c, e                                        ; $6a78: $4b
	ld   bc, $5a4a                                   ; $6a79: $01 $4a $5a
	add  b                                           ; $6a7c: $80
	add  hl, de                                      ; $6a7d: $19
	add  b                                           ; $6a7e: $80
	nop                                              ; $6a7f: $00
	rlca                                             ; $6a80: $07
	ldh  a, [rP1]                                    ; $6a81: $f0 $00
	rst  $30                                         ; $6a83: $f7
	rlca                                             ; $6a84: $07
	rrc  e                                           ; $6a85: $cb $0b
	ld   l, l                                        ; $6a87: $6d
	xor  l                                           ; $6a88: $ad
	add  b                                           ; $6a89: $80
	ld   h, [hl]                                     ; $6a8a: $66
	add  b                                           ; $6a8b: $80
	db   $d3                                         ; $6a8c: $d3
	add  b                                           ; $6a8d: $80
	or   c                                           ; $6a8e: $b1
	add  b                                           ; $6a8f: $80
	nop                                              ; $6a90: $00
	dec  b                                           ; $6a91: $05
	inc  bc                                          ; $6a92: $03
	nop                                              ; $6a93: $00
	ld   l, e                                        ; $6a94: $6b
	jr   z, jr_01c_6ac1                              ; $6a95: $28 $2a

	ld   l, d                                        ; $6a97: $6a
	add  b                                           ; $6a98: $80
	sbc  d                                           ; $6a99: $9a
	add  b                                           ; $6a9a: $80
	or   $80                                         ; $6a9b: $f6 $80
	ld   c, $80                                      ; $6a9d: $0e $80
	cp   $80                                         ; $6a9f: $fe $80
	nop                                              ; $6aa1: $00
	ld   [bc], a                                     ; $6aa2: $02
	add  b                                           ; $6aa3: $80
	nop                                              ; $6aa4: $00
	ld   a, [hl+]                                    ; $6aa5: $2a
	add  c                                           ; $6aa6: $81
	jr   nz, jr_01c_6aab                             ; $6aa7: $20 $02

	ld   b, b                                        ; $6aa9: $40
	nop                                              ; $6aaa: $00

jr_01c_6aab:
	jr   nz, @-$7d                                   ; $6aab: $20 $81

	nop                                              ; $6aad: $00
	inc  b                                           ; $6aae: $04
	rra                                              ; $6aaf: $1f
	nop                                              ; $6ab0: $00
	ld   a, [bc]                                     ; $6ab1: $0a
	nop                                              ; $6ab2: $00
	add  d                                           ; $6ab3: $82
	sbc  h                                           ; $6ab4: $9c
	nop                                              ; $6ab5: $00
	add  b                                           ; $6ab6: $80
	jr   c, jr_01c_6a43                              ; $6ab7: $38 $8a

	nop                                              ; $6ab9: $00
	add  d                                           ; $6aba: $82
	jr   c, jr_01c_6a45                              ; $6abb: $38 $88

	nop                                              ; $6abd: $00
	add  h                                           ; $6abe: $84
	jr   c, jr_01c_6a47                              ; $6abf: $38 $86

jr_01c_6ac1:
	nop                                              ; $6ac1: $00
	add  [hl]                                        ; $6ac2: $86
	jr   c, jr_01c_6a49                              ; $6ac3: $38 $84

	nop                                              ; $6ac5: $00
	adc  b                                           ; $6ac6: $88
	jr   c, jr_01c_6a4b                              ; $6ac7: $38 $82

	nop                                              ; $6ac9: $00
	adc  d                                           ; $6aca: $8a
	jr   c, jr_01c_6a4d                              ; $6acb: $38 $80

	nop                                              ; $6acd: $00
	sbc  e                                           ; $6ace: $9b
	jr   c, jr_01c_6ad1                              ; $6acf: $38 $00

jr_01c_6ad1:
	dec  h                                           ; $6ad1: $25
	add  c                                           ; $6ad2: $81
	ld   l, $03                                      ; $6ad3: $2e $03
	ld   a, [hl]                                     ; $6ad5: $7e
	ld   [hl], $9e                                   ; $6ad6: $36 $9e
	jr   jr_01c_6a5a                                 ; $6ad8: $18 $80

	ld   c, $80                                      ; $6ada: $0e $80
	daa                                              ; $6adc: $27
	add  b                                           ; $6add: $80
	inc  sp                                          ; $6ade: $33
	add  b                                           ; $6adf: $80
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	add  b                                           ; $6ae2: $80
	add  b                                           ; $6ae3: $80
	ld   [$ad80], a                                  ; $6ae4: $ea $80 $ad
	add  b                                           ; $6ae7: $80
	xor  d                                           ; $6ae8: $aa
	add  b                                           ; $6ae9: $80
	and  $00                                         ; $6aea: $e6 $00
	nop                                              ; $6aec: $00
	add  d                                           ; $6aed: $82
	rst  $38                                         ; $6aee: $ff
	add  b                                           ; $6aef: $80
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	ld   c, $81                                      ; $6af2: $0e $81
	ld   [$fa07], a                                  ; $6af4: $ea $07 $fa
	sbc  $fe                                         ; $6af7: $de $fe
	jr   nc, @-$0e                                   ; $6af9: $30 $f0

	or   $f8                                         ; $6afb: $f6 $f8
	ldh  a, [$80]                                    ; $6afd: $f0 $80
	cp   $80                                         ; $6aff: $fe $80
	nop                                              ; $6b01: $00
	inc  b                                           ; $6b02: $04
	cp   [hl]                                        ; $6b03: $be
	ld   a, $9e                                      ; $6b04: $3e $9e
	ld   e, $6e                                      ; $6b06: $1e $6e
	add  b                                           ; $6b08: $80
	ld   c, $00                                      ; $6b09: $0e $00
	ld   l, [hl]                                     ; $6b0b: $6e
	add  b                                           ; $6b0c: $80
	ld   e, $01                                      ; $6b0d: $1e $01
	cp   [hl]                                        ; $6b0f: $be
	ld   a, $80                                      ; $6b10: $3e $80
	nop                                              ; $6b12: $00
	ld   [bc], a                                     ; $6b13: $02
	ld   e, [hl]                                     ; $6b14: $5e
	ld   e, $fa                                      ; $6b15: $1e $fa
	add  c                                           ; $6b17: $81
	ld   a, [de]                                     ; $6b18: $1a
	add  d                                           ; $6b19: $82
	jp   c, $1a82                                    ; $6b1a: $da $82 $1a

	add  d                                           ; $6b1d: $82
	jp   c, $b005                                    ; $6b1e: $da $05 $b0

	sub  b                                           ; $6b21: $90
	ld   l, a                                        ; $6b22: $6f
	cpl                                              ; $6b23: $2f
	ld   l, $6e                                      ; $6b24: $2e $6e
	add  b                                           ; $6b26: $80
	sbc  l                                           ; $6b27: $9d
	ld   [$7a7b], sp                                 ; $6b28: $08 $7b $7a
	halt                                             ; $6b2b: $76
	ld   [hl], l                                     ; $6b2c: $75
	ld   [hl], h                                     ; $6b2d: $74
	ld   [hl], d                                     ; $6b2e: $72
	ld   l, b                                        ; $6b2f: $68
	ld   l, c                                        ; $6b30: $69
	ccf                                              ; $6b31: $3f
	add  c                                           ; $6b32: $81
	ld   a, [de]                                     ; $6b33: $1a
	dec  b                                           ; $6b34: $05
	ld   e, d                                        ; $6b35: $5a
	ld   a, [hl-]                                    ; $6b36: $3a
	or   d                                           ; $6b37: $b2
	ld   [hl], d                                     ; $6b38: $72
	and  $66                                         ; $6b39: $e6 $66
	add  b                                           ; $6b3b: $80
	ld   c, $80                                      ; $6b3c: $0e $80
	sbc  [hl]                                        ; $6b3e: $9e
	add  b                                           ; $6b3f: $80
	ld   bc, $0080                                   ; $6b40: $01 $80 $00
	nop                                              ; $6b43: $00
	rst  $38                                         ; $6b44: $ff
	add  a                                           ; $6b45: $87
	nop                                              ; $6b46: $00
	rlca                                             ; $6b47: $07
	rst  $38                                         ; $6b48: $ff
	nop                                              ; $6b49: $00
	rst  $38                                         ; $6b4a: $ff
	nop                                              ; $6b4b: $00
	rst  $38                                         ; $6b4c: $ff
	nop                                              ; $6b4d: $00
	rst  $38                                         ; $6b4e: $ff
	nop                                              ; $6b4f: $00
	add  h                                           ; $6b50: $84
	ld   bc, $0080                                   ; $6b51: $01 $80 $00
	rlca                                             ; $6b54: $07
	rst  $38                                         ; $6b55: $ff
	nop                                              ; $6b56: $00
	rst  $38                                         ; $6b57: $ff
	nop                                              ; $6b58: $00
	rst  $38                                         ; $6b59: $ff
	nop                                              ; $6b5a: $00
	rst  $38                                         ; $6b5b: $ff
	nop                                              ; $6b5c: $00
	add  h                                           ; $6b5d: $84
	inc  bc                                          ; $6b5e: $03
	add  b                                           ; $6b5f: $80
	nop                                              ; $6b60: $00
	rlca                                             ; $6b61: $07
	rst  $38                                         ; $6b62: $ff
	nop                                              ; $6b63: $00
	rst  $38                                         ; $6b64: $ff
	nop                                              ; $6b65: $00
	rst  $38                                         ; $6b66: $ff
	nop                                              ; $6b67: $00
	rst  $38                                         ; $6b68: $ff
	nop                                              ; $6b69: $00
	add  h                                           ; $6b6a: $84
	rlca                                             ; $6b6b: $07
	add  b                                           ; $6b6c: $80
	nop                                              ; $6b6d: $00
	rlca                                             ; $6b6e: $07
	rst  $38                                         ; $6b6f: $ff
	nop                                              ; $6b70: $00
	rst  $38                                         ; $6b71: $ff
	nop                                              ; $6b72: $00
	rst  $38                                         ; $6b73: $ff
	nop                                              ; $6b74: $00
	rst  $38                                         ; $6b75: $ff
	nop                                              ; $6b76: $00
	add  h                                           ; $6b77: $84
	rrca                                             ; $6b78: $0f
	add  b                                           ; $6b79: $80
	nop                                              ; $6b7a: $00
	rlca                                             ; $6b7b: $07
	rst  $38                                         ; $6b7c: $ff
	nop                                              ; $6b7d: $00
	rst  $38                                         ; $6b7e: $ff
	nop                                              ; $6b7f: $00
	rst  $38                                         ; $6b80: $ff
	nop                                              ; $6b81: $00
	rst  $38                                         ; $6b82: $ff
	nop                                              ; $6b83: $00
	add  h                                           ; $6b84: $84
	rra                                              ; $6b85: $1f
	add  b                                           ; $6b86: $80
	nop                                              ; $6b87: $00
	rlca                                             ; $6b88: $07
	rst  $38                                         ; $6b89: $ff
	nop                                              ; $6b8a: $00
	rst  $38                                         ; $6b8b: $ff
	nop                                              ; $6b8c: $00
	rst  $38                                         ; $6b8d: $ff
	nop                                              ; $6b8e: $00
	rst  $38                                         ; $6b8f: $ff
	nop                                              ; $6b90: $00
	add  h                                           ; $6b91: $84
	ccf                                              ; $6b92: $3f
	add  b                                           ; $6b93: $80
	nop                                              ; $6b94: $00
	rlca                                             ; $6b95: $07
	rst  $38                                         ; $6b96: $ff
	nop                                              ; $6b97: $00
	rst  $38                                         ; $6b98: $ff
	nop                                              ; $6b99: $00
	rst  $38                                         ; $6b9a: $ff
	nop                                              ; $6b9b: $00
	rst  $38                                         ; $6b9c: $ff
	nop                                              ; $6b9d: $00
	add  h                                           ; $6b9e: $84
	ld   a, a                                        ; $6b9f: $7f
	add  b                                           ; $6ba0: $80
	nop                                              ; $6ba1: $00
	rlca                                             ; $6ba2: $07
	rst  $38                                         ; $6ba3: $ff
	nop                                              ; $6ba4: $00
	rst  $38                                         ; $6ba5: $ff
	nop                                              ; $6ba6: $00
	rst  $38                                         ; $6ba7: $ff

jr_01c_6ba8:
	nop                                              ; $6ba8: $00
	rst  $38                                         ; $6ba9: $ff
	nop                                              ; $6baa: $00
	add  h                                           ; $6bab: $84
	rst  $38                                         ; $6bac: $ff
	add  b                                           ; $6bad: $80
	nop                                              ; $6bae: $00

jr_01c_6baf:
	dec  b                                           ; $6baf: $05
	rst  $38                                         ; $6bb0: $ff
	nop                                              ; $6bb1: $00
	rst  $38                                         ; $6bb2: $ff
	nop                                              ; $6bb3: $00
	ld   e, l                                        ; $6bb4: $5d
	nop                                              ; $6bb5: $00
	adc  d                                           ; $6bb6: $8a
	inc  c                                           ; $6bb7: $0c
	inc  bc                                          ; $6bb8: $03
	inc  e                                           ; $6bb9: $1c
	nop                                              ; $6bba: $00
	ld   a, $00                                      ; $6bbb: $3e $00
	add  b                                           ; $6bbd: $80
	ld   a, $02                                      ; $6bbe: $3e $02
	ld   b, b                                        ; $6bc0: $40
	nop                                              ; $6bc1: $00
	ld   a, [hl+]                                    ; $6bc2: $2a
	add  e                                           ; $6bc3: $83
	nop                                              ; $6bc4: $00
	inc  b                                           ; $6bc5: $04
	rra                                              ; $6bc6: $1f
	nop                                              ; $6bc7: $00
	ld   a, [bc]                                     ; $6bc8: $0a
	nop                                              ; $6bc9: $00
	ld   e, l                                        ; $6bca: $5d
	add  b                                           ; $6bcb: $80
	nop                                              ; $6bcc: $00
	adc  c                                           ; $6bcd: $89
	inc  c                                           ; $6bce: $0c
	inc  c                                           ; $6bcf: $0c
	stop                                             ; $6bd0: $10 $00
	cp   [hl]                                        ; $6bd2: $be
	nop                                              ; $6bd3: $00
	sbc  [hl]                                        ; $6bd4: $9e
	sub  d                                           ; $6bd5: $92
	ld   [hl], e                                     ; $6bd6: $73
	ld   b, b                                        ; $6bd7: $40
	sbc  $21                                         ; $6bd8: $de $21
	ld   b, b                                        ; $6bda: $40
	sbc  [hl]                                        ; $6bdb: $9e
	ld   e, $80                                      ; $6bdc: $1e $80
	ccf                                              ; $6bde: $3f
	add  b                                           ; $6bdf: $80
	add  b                                           ; $6be0: $80
	ld   [bc], a                                     ; $6be1: $02
	cp   a                                           ; $6be2: $bf
	cp   [hl]                                        ; $6be3: $be
	nop                                              ; $6be4: $00
	add  b                                           ; $6be5: $80
	ld   a, h                                        ; $6be6: $7c
	add  b                                           ; $6be7: $80
	sbc  h                                           ; $6be8: $9c
	ld   e, $ec                                      ; $6be9: $1e $ec
	inc  l                                           ; $6beb: $2c
	or   h                                           ; $6bec: $b4
	ld   d, h                                        ; $6bed: $54
	jr   jr_01c_6ba8                                 ; $6bee: $18 $b8

	sbc  b                                           ; $6bf0: $98
	ret  c                                           ; $6bf1: $d8

	call z, Call_01c_66ec                            ; $6bf2: $cc $ec $66
	add  a                                           ; $6bf5: $87
	ld   [hl], b                                     ; $6bf6: $70
	ld   d, b                                        ; $6bf7: $50
	ld   h, l                                        ; $6bf8: $65
	inc  b                                           ; $6bf9: $04
	ld   [de], a                                     ; $6bfa: $12
	ld   d, b                                        ; $6bfb: $50
	inc  b                                           ; $6bfc: $04
	ld   bc, $6369                                   ; $6bfd: $01 $69 $63
	ld   d, e                                        ; $6c00: $53
	ld   b, a                                        ; $6c01: $47
	daa                                              ; $6c02: $27
	rrca                                             ; $6c03: $0f
	jr   nc, jr_01c_6c06                             ; $6c04: $30 $00

jr_01c_6c06:
	rst  $38                                         ; $6c06: $ff
	ld   b, b                                        ; $6c07: $40
	ld   d, d                                        ; $6c08: $52
	add  b                                           ; $6c09: $80
	ld   c, c                                        ; $6c0a: $49
	ld   [bc], a                                     ; $6c0b: $02
	ret                                              ; $6c0c: $c9


	db   $e4                                         ; $6c0d: $e4
	ret  nz                                          ; $6c0e: $c0

	add  b                                           ; $6c0f: $80
	rst  $38                                         ; $6c10: $ff
	add  b                                           ; $6c11: $80
	add  a                                           ; $6c12: $87
	dec  bc                                          ; $6c13: $0b
	ld   a, $36                                      ; $6c14: $3e $36
	ld   [$f700], sp                                 ; $6c16: $08 $00 $f7
	nop                                              ; $6c19: $00
	ld   b, b                                        ; $6c1a: $40
	inc  hl                                          ; $6c1b: $23
	inc  h                                           ; $6c1c: $24
	jr   nz, jr_01c_6baf                             ; $6c1d: $20 $90

	nop                                              ; $6c1f: $00
	add  d                                           ; $6c20: $82
	db   $fc                                         ; $6c21: $fc
	inc  b                                           ; $6c22: $04
	rra                                              ; $6c23: $1f
	jr   jr_01c_6c91                                 ; $6c24: $18 $6b

	ld   h, l                                        ; $6c26: $65
	sub  c                                           ; $6c27: $91
	add  b                                           ; $6c28: $80
	inc  de                                          ; $6c29: $13
	nop                                              ; $6c2a: $00
	add  e                                           ; $6c2b: $83
	add  b                                           ; $6c2c: $80
	inc  bc                                          ; $6c2d: $03
	ld   [bc], a                                     ; $6c2e: $02
	ld   b, e                                        ; $6c2f: $43
	ld   d, e                                        ; $6c30: $53
	ld   h, a                                        ; $6c31: $67
	add  b                                           ; $6c32: $80
	ld   h, l                                        ; $6c33: $65
	inc  bc                                          ; $6c34: $03
	ld   l, c                                        ; $6c35: $69
	or   e                                           ; $6c36: $b3
	ld   [hl-], a                                    ; $6c37: $32
	add  h                                           ; $6c38: $84
	add  b                                           ; $6c39: $80
	add  b                                           ; $6c3a: $80
	add  b                                           ; $6c3b: $80
	ld   a, a                                        ; $6c3c: $7f
	add  b                                           ; $6c3d: $80
	add  b                                           ; $6c3e: $80
	add  b                                           ; $6c3f: $80
	cp   $80                                         ; $6c40: $fe $80
	sub  d                                           ; $6c42: $92
	add  b                                           ; $6c43: $80
	and  $80                                         ; $6c44: $e6 $80
	sbc  e                                           ; $6c46: $9b
	inc  bc                                          ; $6c47: $03
	rst  $38                                         ; $6c48: $ff
	ldh  a, [c]                                      ; $6c49: $f2
	db   $ec                                         ; $6c4a: $ec
	rst  $20                                         ; $6c4b: $e7
	add  l                                           ; $6c4c: $85
	or   $00                                         ; $6c4d: $f6 $00
	db   $fc                                         ; $6c4f: $fc
	add  b                                           ; $6c50: $80
	xor  h                                           ; $6c51: $ac
	inc  b                                           ; $6c52: $04
	inc  l                                           ; $6c53: $2c
	add  hl, sp                                      ; $6c54: $39
	ret  c                                           ; $6c55: $d8

	pop  bc                                          ; $6c56: $c1
	nop                                              ; $6c57: $00
	add  b                                           ; $6c58: $80
	ld   a, a                                        ; $6c59: $7f
	add  b                                           ; $6c5a: $80
	ld   [hl], b                                     ; $6c5b: $70
	add  b                                           ; $6c5c: $80
	ld   l, c                                        ; $6c5d: $69
	nop                                              ; $6c5e: $00
	ld   d, [hl]                                     ; $6c5f: $56
	add  b                                           ; $6c60: $80
	ld   d, d                                        ; $6c61: $52
	nop                                              ; $6c62: $00
	ld   d, [hl]                                     ; $6c63: $56
	add  b                                           ; $6c64: $80
	add  hl, de                                      ; $6c65: $19
	dec  c                                           ; $6c66: $0d
	ret  nz                                          ; $6c67: $c0

	nop                                              ; $6c68: $00
	cp   h                                           ; $6c69: $bc
	ld   l, h                                        ; $6c6a: $6c
	xor  c                                           ; $6c6b: $a9
	sbc  c                                           ; $6c6c: $99
	di                                               ; $6c6d: $f3
	db   $d3                                         ; $6c6e: $d3
	ld   h, a                                        ; $6c6f: $67
	ld   h, [hl]                                     ; $6c70: $66
	or   [hl]                                        ; $6c71: $b6
	or   l                                           ; $6c72: $b5
	reti                                             ; $6c73: $d9


	db   $db                                         ; $6c74: $db
	add  b                                           ; $6c75: $80
	ret  nz                                          ; $6c76: $c0

	ld   [bc], a                                     ; $6c77: $02
	rra                                              ; $6c78: $1f
	nop                                              ; $6c79: $00
	ldh  [$80], a                                    ; $6c7a: $e0 $80
	db   $db                                         ; $6c7c: $db
	add  b                                           ; $6c7d: $80
	cp   e                                           ; $6c7e: $bb
	ld   [bc], a                                     ; $6c7f: $02
	ld   a, e                                        ; $6c80: $7b
	ld   a, h                                        ; $6c81: $7c
	ld   hl, sp-$7e                                  ; $6c82: $f8 $82
	ldh  [$09], a                                    ; $6c84: $e0 $09
	rrca                                             ; $6c86: $0f
	nop                                              ; $6c87: $00
	ldh  a, [rP1]                                    ; $6c88: $f0 $00
	ld   c, b                                        ; $6c8a: $48
	or   l                                           ; $6c8b: $b5
	cp   c                                           ; $6c8c: $b9
	cp   d                                           ; $6c8d: $ba
	cp   h                                           ; $6c8e: $bc
	cp   l                                           ; $6c8f: $bd
	add  b                                           ; $6c90: $80

jr_01c_6c91:
	ld   e, $00                                      ; $6c91: $1e $00
	ld   l, a                                        ; $6c93: $6f
	add  b                                           ; $6c94: $80
	cpl                                              ; $6c95: $2f
	nop                                              ; $6c96: $00
	ld   l, a                                        ; $6c97: $6f
	add  b                                           ; $6c98: $80
	sub  b                                           ; $6c99: $90
	rlca                                             ; $6c9a: $07
	rst  $38                                         ; $6c9b: $ff
	nop                                              ; $6c9c: $00
	rst  $38                                         ; $6c9d: $ff
	ld   a, a                                        ; $6c9e: $7f
	rst  $38                                         ; $6c9f: $ff
	sbc  [hl]                                        ; $6ca0: $9e
	rst  $38                                         ; $6ca1: $ff
	pop  hl                                          ; $6ca2: $e1
	add  b                                           ; $6ca3: $80
	ld   a, a                                        ; $6ca4: $7f
	add  b                                           ; $6ca5: $80
	sbc  [hl]                                        ; $6ca6: $9e
	add  b                                           ; $6ca7: $80
	ldh  [$80], a                                    ; $6ca8: $e0 $80
	nop                                              ; $6caa: $00
	dec  b                                           ; $6cab: $05
	rst  $38                                         ; $6cac: $ff
	nop                                              ; $6cad: $00
	add  $b8                                         ; $6cae: $c6 $b8
	ldh  a, [rSVBK]                                  ; $6cb0: $f0 $70
	add  b                                           ; $6cb2: $80
	db   $e4                                         ; $6cb3: $e4
	add  b                                           ; $6cb4: $80
	adc  h                                           ; $6cb5: $8c
	add  b                                           ; $6cb6: $80
	inc  e                                           ; $6cb7: $1c
	inc  b                                           ; $6cb8: $04
	ld   a, d                                        ; $6cb9: $7a
	ld   a, b                                        ; $6cba: $78
	inc  b                                           ; $6cbb: $04
	nop                                              ; $6cbc: $00
	ld   hl, sp-$61                                  ; $6cbd: $f8 $9f
	nop                                              ; $6cbf: $00
	dec  b                                           ; $6cc0: $05
	ld   hl, $1a1e                                   ; $6cc1: $21 $1e $1a
	ld   [de], a                                     ; $6cc4: $12
	ld   a, [de]                                     ; $6cc5: $1a
	ld   [de], a                                     ; $6cc6: $12
	add  b                                           ; $6cc7: $80
	ld   e, $80                                      ; $6cc8: $1e $80
	ld   c, $80                                      ; $6cca: $0e $80
	ld   d, $80                                      ; $6ccc: $16 $80
	ld   [de], a                                     ; $6cce: $12
	add  b                                           ; $6ccf: $80
	db   $10                                         ; $6cd0: $10
	add  b                                           ; $6cd1: $80
	ld   [de], a                                     ; $6cd2: $12
	ld   [bc], a                                     ; $6cd3: $02
	ld   [hl], d                                     ; $6cd4: $72
	ld   [hl-], a                                    ; $6cd5: $32
	ld   a, [hl+]                                    ; $6cd6: $2a
	add  c                                           ; $6cd7: $81
	ld   [hl+], a                                    ; $6cd8: $22
	ld   bc, $222a                                   ; $6cd9: $01 $2a $22
	add  b                                           ; $6cdc: $80
	ld   a, $80                                      ; $6cdd: $3e $80
	nop                                              ; $6cdf: $00
	ld   [bc], a                                     ; $6ce0: $02
	ld   a, $00                                      ; $6ce1: $3e $00
	ld   b, c                                        ; $6ce3: $41
	rst  $38                                         ; $6ce4: $ff
	nop                                              ; $6ce5: $00
	xor  h                                           ; $6ce6: $ac
	nop                                              ; $6ce7: $00
	inc  bc                                          ; $6ce8: $03
	rst  $38                                         ; $6ce9: $ff
	rrca                                             ; $6cea: $0f
	adc  a                                           ; $6ceb: $8f
	inc  c                                           ; $6cec: $0c
	add  b                                           ; $6ced: $80
	ld   c, $82                                      ; $6cee: $0e $82
	adc  [hl]                                        ; $6cf0: $8e
	inc  bc                                          ; $6cf1: $03
	adc  h                                           ; $6cf2: $8c
	rrca                                             ; $6cf3: $0f
	adc  a                                           ; $6cf4: $8f
	inc  c                                           ; $6cf5: $0c
	add  b                                           ; $6cf6: $80
	ld   c, $07                                      ; $6cf7: $0e $07
	add  d                                           ; $6cf9: $82
	db   $ec                                         ; $6cfa: $ec
	db   $e4                                         ; $6cfb: $e4
	db   $fc                                         ; $6cfc: $fc
	ld   hl, sp-$44                                  ; $6cfd: $f8 $bc
	xor  h                                           ; $6cff: $ac
	cp   h                                           ; $6d00: $bc
	add  b                                           ; $6d01: $80
	db   $fc                                         ; $6d02: $fc
	ld   [bc], a                                     ; $6d03: $02
	xor  h                                           ; $6d04: $ac
	db   $fc                                         ; $6d05: $fc
	db   $ec                                         ; $6d06: $ec
	add  c                                           ; $6d07: $81
	cp   h                                           ; $6d08: $bc
	ld   [bc], a                                     ; $6d09: $02
	xor  h                                           ; $6d0a: $ac
	adc  [hl]                                        ; $6d0b: $8e
	adc  h                                           ; $6d0c: $8c
	add  b                                           ; $6d0d: $80
	adc  a                                           ; $6d0e: $8f
	ld   [bc], a                                     ; $6d0f: $02
	inc  c                                           ; $6d10: $0c
	adc  [hl]                                        ; $6d11: $8e
	ld   c, $80                                      ; $6d12: $0e $80
	ld   e, $0b                                      ; $6d14: $1e $0b
	sbc  h                                           ; $6d16: $9c
	sbc  a                                           ; $6d17: $9f
	xor  a                                           ; $6d18: $af
	scf                                              ; $6d19: $37
	ld   [de], a                                     ; $6d1a: $12
	ld   [bc], a                                     ; $6d1b: $02
	ld   d, l                                        ; $6d1c: $55
	db   $fc                                         ; $6d1d: $fc
	xor  h                                           ; $6d1e: $ac
	db   $fc                                         ; $6d1f: $fc
	db   $ec                                         ; $6d20: $ec
	cp   h                                           ; $6d21: $bc
	add  b                                           ; $6d22: $80
	cp   [hl]                                        ; $6d23: $be
	dec  b                                           ; $6d24: $05
	cp   $fc                                         ; $6d25: $fe $fc
	xor  [hl]                                        ; $6d27: $ae
	cp   $d6                                         ; $6d28: $fe $d6
	call nc, $aa80                                   ; $6d2a: $d4 $80 $aa
	nop                                              ; $6d2d: $00
	cp   $8d                                         ; $6d2e: $fe $8d
	nop                                              ; $6d30: $00
	add  b                                           ; $6d31: $80
	ld   d, l                                        ; $6d32: $55
	add  b                                           ; $6d33: $80
	xor  d                                           ; $6d34: $aa
	add  b                                           ; $6d35: $80
	ld   d, l                                        ; $6d36: $55
	add  b                                           ; $6d37: $80
	xor  d                                           ; $6d38: $aa
	add  b                                           ; $6d39: $80
	ld   d, l                                        ; $6d3a: $55
	add  b                                           ; $6d3b: $80
	xor  d                                           ; $6d3c: $aa
	add  b                                           ; $6d3d: $80
	ld   d, l                                        ; $6d3e: $55
	add  b                                           ; $6d3f: $80
	xor  d                                           ; $6d40: $aa
	adc  [hl]                                        ; $6d41: $8e
	rst  $38                                         ; $6d42: $ff
	db   $10                                         ; $6d43: $10
	xor  d                                           ; $6d44: $aa
	rst  $38                                         ; $6d45: $ff
	nop                                              ; $6d46: $00
	rst  $38                                         ; $6d47: $ff
	nop                                              ; $6d48: $00
	rst  $38                                         ; $6d49: $ff
	nop                                              ; $6d4a: $00
	rst  $38                                         ; $6d4b: $ff
	nop                                              ; $6d4c: $00
	rst  $38                                         ; $6d4d: $ff
	nop                                              ; $6d4e: $00
	rst  $38                                         ; $6d4f: $ff
	nop                                              ; $6d50: $00
	rst  $38                                         ; $6d51: $ff
	nop                                              ; $6d52: $00
	rst  $38                                         ; $6d53: $ff
	xor  d                                           ; $6d54: $aa
	adc  l                                           ; $6d55: $8d
	rst  $38                                         ; $6d56: $ff
	add  b                                           ; $6d57: $80
	xor  d                                           ; $6d58: $aa
	add  b                                           ; $6d59: $80
	ld   d, l                                        ; $6d5a: $55
	add  b                                           ; $6d5b: $80
	xor  d                                           ; $6d5c: $aa
	add  b                                           ; $6d5d: $80
	ld   d, l                                        ; $6d5e: $55
	add  b                                           ; $6d5f: $80
	xor  d                                           ; $6d60: $aa
	add  b                                           ; $6d61: $80
	ld   d, l                                        ; $6d62: $55
	add  b                                           ; $6d63: $80
	xor  d                                           ; $6d64: $aa
	add  b                                           ; $6d65: $80
	ld   d, l                                        ; $6d66: $55
	rst  $38                                         ; $6d67: $ff
	nop                                              ; $6d68: $00
	rst  $38                                         ; $6d69: $ff
	nop                                              ; $6d6a: $00
	rst  $38                                         ; $6d6b: $ff
	nop                                              ; $6d6c: $00
	rst  $38                                         ; $6d6d: $ff
	nop                                              ; $6d6e: $00
	rst  $38                                         ; $6d6f: $ff
	nop                                              ; $6d70: $00
	rst  $38                                         ; $6d71: $ff
	nop                                              ; $6d72: $00
	ret  c                                           ; $6d73: $d8

	nop                                              ; $6d74: $00
	ld   hl, $8c01                                   ; $6d75: $21 $01 $8c
	rst  $38                                         ; $6d78: $ff
	ld   [bc], a                                     ; $6d79: $02
	nop                                              ; $6d7a: $00
	rst  $38                                         ; $6d7b: $ff
	nop                                              ; $6d7c: $00
	adc  e                                           ; $6d7d: $8b
	rst  $38                                         ; $6d7e: $ff
	ld   [bc], a                                     ; $6d7f: $02
	nop                                              ; $6d80: $00
	rst  $38                                         ; $6d81: $ff
	nop                                              ; $6d82: $00
	adc  e                                           ; $6d83: $8b
	rst  $38                                         ; $6d84: $ff
	ld   [bc], a                                     ; $6d85: $02
	nop                                              ; $6d86: $00
	rst  $38                                         ; $6d87: $ff
	nop                                              ; $6d88: $00
	adc  e                                           ; $6d89: $8b
	rst  $38                                         ; $6d8a: $ff
	ld   [bc], a                                     ; $6d8b: $02
	nop                                              ; $6d8c: $00
	rst  $38                                         ; $6d8d: $ff
	nop                                              ; $6d8e: $00
	adc  e                                           ; $6d8f: $8b
	rst  $38                                         ; $6d90: $ff
	ld   [bc], a                                     ; $6d91: $02
	nop                                              ; $6d92: $00
	rst  $38                                         ; $6d93: $ff
	nop                                              ; $6d94: $00
	adc  e                                           ; $6d95: $8b
	rst  $38                                         ; $6d96: $ff
	ld   [bc], a                                     ; $6d97: $02
	nop                                              ; $6d98: $00
	rst  $38                                         ; $6d99: $ff
	nop                                              ; $6d9a: $00
	add  c                                           ; $6d9b: $81
	rst  $38                                         ; $6d9c: $ff
	inc  c                                           ; $6d9d: $0c
	ldh  [rIE], a                                    ; $6d9e: $e0 $ff
	ld   sp, hl                                      ; $6da0: $f9
	rst  $38                                         ; $6da1: $ff
	ld   sp, hl                                      ; $6da2: $f9
	rst  $38                                         ; $6da3: $ff
	ld   sp, hl                                      ; $6da4: $f9
	rst  $38                                         ; $6da5: $ff
	ld   sp, hl                                      ; $6da6: $f9
	rst  $38                                         ; $6da7: $ff
	rra                                              ; $6da8: $1f
	rst  $38                                         ; $6da9: $ff
	nop                                              ; $6daa: $00
	add  c                                           ; $6dab: $81
	rst  $38                                         ; $6dac: $ff
	inc  c                                           ; $6dad: $0c
	rlca                                             ; $6dae: $07
	rst  $38                                         ; $6daf: $ff
	sbc  a                                           ; $6db0: $9f
	rst  $38                                         ; $6db1: $ff
	sbc  a                                           ; $6db2: $9f
	rst  $38                                         ; $6db3: $ff
	sbc  a                                           ; $6db4: $9f
	rst  $38                                         ; $6db5: $ff
	sbc  a                                           ; $6db6: $9f
	rst  $38                                         ; $6db7: $ff
	ld   hl, sp-$01                                  ; $6db8: $f8 $ff
	nop                                              ; $6dba: $00
	add  c                                           ; $6dbb: $81
	rst  $38                                         ; $6dbc: $ff
	inc  c                                           ; $6dbd: $0c
	ret  nz                                          ; $6dbe: $c0

	rst  $38                                         ; $6dbf: $ff
	ret  nz                                          ; $6dc0: $c0

	rst  $38                                         ; $6dc1: $ff
	cp   $ff                                         ; $6dc2: $fe $ff
	ld   hl, sp-$01                                  ; $6dc4: $f8 $ff
	ld   a, [$03ff]                                  ; $6dc6: $fa $ff $03
	rst  $38                                         ; $6dc9: $ff
	nop                                              ; $6dca: $00
	add  c                                           ; $6dcb: $81
	rst  $38                                         ; $6dcc: $ff
	nop                                              ; $6dcd: $00
	ccf                                              ; $6dce: $3f
	add  e                                           ; $6dcf: $83
	rst  $38                                         ; $6dd0: $ff
	nop                                              ; $6dd1: $00
	ccf                                              ; $6dd2: $3f
	add  c                                           ; $6dd3: $81
	rst  $38                                         ; $6dd4: $ff
	ld   [bc], a                                     ; $6dd5: $02
	nop                                              ; $6dd6: $00
	rst  $38                                         ; $6dd7: $ff
	nop                                              ; $6dd8: $00
	adc  e                                           ; $6dd9: $8b
	rst  $38                                         ; $6dda: $ff
	ld   [bc], a                                     ; $6ddb: $02
	nop                                              ; $6ddc: $00
	rst  $38                                         ; $6ddd: $ff
	nop                                              ; $6dde: $00
	adc  e                                           ; $6ddf: $8b
	rst  $38                                         ; $6de0: $ff
	ld   [bc], a                                     ; $6de1: $02
	nop                                              ; $6de2: $00
	rst  $38                                         ; $6de3: $ff
	nop                                              ; $6de4: $00
	adc  e                                           ; $6de5: $8b
	rst  $38                                         ; $6de6: $ff
	ld   [bc], a                                     ; $6de7: $02
	nop                                              ; $6de8: $00
	rst  $38                                         ; $6de9: $ff
	nop                                              ; $6dea: $00
	adc  e                                           ; $6deb: $8b
	rst  $38                                         ; $6dec: $ff
	ld   [bc], a                                     ; $6ded: $02
	nop                                              ; $6dee: $00
	rst  $38                                         ; $6def: $ff
	nop                                              ; $6df0: $00
	adc  e                                           ; $6df1: $8b
	rst  $38                                         ; $6df2: $ff
	ld   [bc], a                                     ; $6df3: $02
	nop                                              ; $6df4: $00
	rst  $38                                         ; $6df5: $ff
	nop                                              ; $6df6: $00
	adc  e                                           ; $6df7: $8b
	rst  $38                                         ; $6df8: $ff
	ld   [bc], a                                     ; $6df9: $02
	nop                                              ; $6dfa: $00
	rst  $38                                         ; $6dfb: $ff
	nop                                              ; $6dfc: $00
	adc  h                                           ; $6dfd: $8c
	rst  $38                                         ; $6dfe: $ff
	add  b                                           ; $6dff: $80
	nop                                              ; $6e00: $00
	adc  h                                           ; $6e01: $8c
	rst  $38                                         ; $6e02: $ff
	add  b                                           ; $6e03: $80
	nop                                              ; $6e04: $00
	adc  h                                           ; $6e05: $8c
	rst  $38                                         ; $6e06: $ff
	add  b                                           ; $6e07: $80
	nop                                              ; $6e08: $00
	adc  h                                           ; $6e09: $8c
	rst  $38                                         ; $6e0a: $ff
	add  b                                           ; $6e0b: $80
	nop                                              ; $6e0c: $00
	adc  h                                           ; $6e0d: $8c
	rst  $38                                         ; $6e0e: $ff
	add  b                                           ; $6e0f: $80
	nop                                              ; $6e10: $00
	adc  h                                           ; $6e11: $8c
	rst  $38                                         ; $6e12: $ff
	add  b                                           ; $6e13: $80
	nop                                              ; $6e14: $00
	add  c                                           ; $6e15: $81
	rst  $38                                         ; $6e16: $ff
	inc  c                                           ; $6e17: $0c
	ldh  [rIE], a                                    ; $6e18: $e0 $ff
	ld   sp, hl                                      ; $6e1a: $f9
	rst  $38                                         ; $6e1b: $ff
	ld   sp, hl                                      ; $6e1c: $f9
	rst  $38                                         ; $6e1d: $ff
	ld   sp, hl                                      ; $6e1e: $f9
	rst  $38                                         ; $6e1f: $ff
	ld   sp, hl                                      ; $6e20: $f9
	rst  $38                                         ; $6e21: $ff
	pop  hl                                          ; $6e22: $e1
	ld   bc, $8100                                   ; $6e23: $01 $00 $81
	rst  $38                                         ; $6e26: $ff
	inc  c                                           ; $6e27: $0c
	rlca                                             ; $6e28: $07
	rst  $38                                         ; $6e29: $ff
	sbc  a                                           ; $6e2a: $9f
	rst  $38                                         ; $6e2b: $ff
	sbc  a                                           ; $6e2c: $9f
	rst  $38                                         ; $6e2d: $ff
	sbc  a                                           ; $6e2e: $9f
	rst  $38                                         ; $6e2f: $ff
	sbc  a                                           ; $6e30: $9f
	rst  $38                                         ; $6e31: $ff
	add  a                                           ; $6e32: $87
	add  b                                           ; $6e33: $80
	nop                                              ; $6e34: $00
	add  c                                           ; $6e35: $81
	rst  $38                                         ; $6e36: $ff
	ld   a, [bc]                                     ; $6e37: $0a
	ret  nz                                          ; $6e38: $c0

	rst  $38                                         ; $6e39: $ff
	ret  nz                                          ; $6e3a: $c0

	rst  $38                                         ; $6e3b: $ff
	cp   $ff                                         ; $6e3c: $fe $ff
	ld   hl, sp-$01                                  ; $6e3e: $f8 $ff
	ld   a, [$fcff]                                  ; $6e40: $fa $ff $fc
	add  b                                           ; $6e43: $80
	nop                                              ; $6e44: $00
	add  c                                           ; $6e45: $81
	rst  $38                                         ; $6e46: $ff
	nop                                              ; $6e47: $00
	ccf                                              ; $6e48: $3f
	add  e                                           ; $6e49: $83
	rst  $38                                         ; $6e4a: $ff
	nop                                              ; $6e4b: $00
	ccf                                              ; $6e4c: $3f
	add  d                                           ; $6e4d: $82
	rst  $38                                         ; $6e4e: $ff
	add  b                                           ; $6e4f: $80
	nop                                              ; $6e50: $00
	adc  h                                           ; $6e51: $8c
	rst  $38                                         ; $6e52: $ff
	add  b                                           ; $6e53: $80
	nop                                              ; $6e54: $00
	adc  h                                           ; $6e55: $8c
	rst  $38                                         ; $6e56: $ff
	add  b                                           ; $6e57: $80
	nop                                              ; $6e58: $00
	adc  h                                           ; $6e59: $8c
	rst  $38                                         ; $6e5a: $ff
	add  b                                           ; $6e5b: $80
	nop                                              ; $6e5c: $00
	adc  h                                           ; $6e5d: $8c
	rst  $38                                         ; $6e5e: $ff
	add  b                                           ; $6e5f: $80
	nop                                              ; $6e60: $00
	adc  h                                           ; $6e61: $8c
	rst  $38                                         ; $6e62: $ff
	add  b                                           ; $6e63: $80
	nop                                              ; $6e64: $00
	adc  h                                           ; $6e65: $8c
	rst  $38                                         ; $6e66: $ff
	add  b                                           ; $6e67: $80
	nop                                              ; $6e68: $00
	add  c                                           ; $6e69: $81
	rst  $38                                         ; $6e6a: $ff
	ld   bc, $ff00                                   ; $6e6b: $01 $00 $ff
	adc  c                                           ; $6e6e: $89
	nop                                              ; $6e6f: $00
	add  c                                           ; $6e70: $81
	rst  $38                                         ; $6e71: $ff
	ld   bc, $ff00                                   ; $6e72: $01 $00 $ff
	adc  c                                           ; $6e75: $89
	nop                                              ; $6e76: $00
	add  c                                           ; $6e77: $81
	rst  $38                                         ; $6e78: $ff
	ld   bc, $ff00                                   ; $6e79: $01 $00 $ff
	adc  c                                           ; $6e7c: $89
	nop                                              ; $6e7d: $00
	add  c                                           ; $6e7e: $81
	rst  $38                                         ; $6e7f: $ff
	ld   bc, $ff00                                   ; $6e80: $01 $00 $ff
	adc  c                                           ; $6e83: $89
	nop                                              ; $6e84: $00
	add  c                                           ; $6e85: $81
	rst  $38                                         ; $6e86: $ff
	ld   bc, $ff00                                   ; $6e87: $01 $00 $ff
	adc  c                                           ; $6e8a: $89
	nop                                              ; $6e8b: $00
	add  c                                           ; $6e8c: $81
	rst  $38                                         ; $6e8d: $ff
	ld   bc, $ff00                                   ; $6e8e: $01 $00 $ff
	adc  b                                           ; $6e91: $88
	nop                                              ; $6e92: $00
	dec  b                                           ; $6e93: $05
	ld   bc, $e1ff                                   ; $6e94: $01 $ff $e1
	rst  $38                                         ; $6e97: $ff
	rra                                              ; $6e98: $1f
	rst  $38                                         ; $6e99: $ff
	adc  b                                           ; $6e9a: $88
	nop                                              ; $6e9b: $00
	dec  b                                           ; $6e9c: $05
	add  b                                           ; $6e9d: $80
	rst  $38                                         ; $6e9e: $ff
	add  a                                           ; $6e9f: $87
	rst  $38                                         ; $6ea0: $ff
	ld   hl, sp-$01                                  ; $6ea1: $f8 $ff
	adc  b                                           ; $6ea3: $88
	nop                                              ; $6ea4: $00
	dec  b                                           ; $6ea5: $05
	ld   a, a                                        ; $6ea6: $7f
	rst  $38                                         ; $6ea7: $ff
	add  e                                           ; $6ea8: $83
	rst  $38                                         ; $6ea9: $ff
	inc  bc                                          ; $6eaa: $03
	rst  $38                                         ; $6eab: $ff
	adc  b                                           ; $6eac: $88
	nop                                              ; $6ead: $00
	dec  b                                           ; $6eae: $05
	ldh  a, [rIE]                                    ; $6eaf: $f0 $ff
	rrca                                             ; $6eb1: $0f
	rst  $38                                         ; $6eb2: $ff
	nop                                              ; $6eb3: $00
	rst  $38                                         ; $6eb4: $ff
	adc  c                                           ; $6eb5: $89
	nop                                              ; $6eb6: $00
	add  c                                           ; $6eb7: $81
	rst  $38                                         ; $6eb8: $ff
	ld   bc, $ff00                                   ; $6eb9: $01 $00 $ff
	adc  c                                           ; $6ebc: $89
	nop                                              ; $6ebd: $00
	add  c                                           ; $6ebe: $81
	rst  $38                                         ; $6ebf: $ff
	ld   bc, $ff00                                   ; $6ec0: $01 $00 $ff
	adc  c                                           ; $6ec3: $89
	nop                                              ; $6ec4: $00
	add  c                                           ; $6ec5: $81
	rst  $38                                         ; $6ec6: $ff
	ld   bc, $ff00                                   ; $6ec7: $01 $00 $ff
	adc  c                                           ; $6eca: $89
	nop                                              ; $6ecb: $00
	add  c                                           ; $6ecc: $81
	rst  $38                                         ; $6ecd: $ff
	ld   bc, $ff00                                   ; $6ece: $01 $00 $ff
	adc  c                                           ; $6ed1: $89
	nop                                              ; $6ed2: $00
	add  c                                           ; $6ed3: $81
	rst  $38                                         ; $6ed4: $ff
	ld   bc, $ff00                                   ; $6ed5: $01 $00 $ff
	adc  c                                           ; $6ed8: $89
	nop                                              ; $6ed9: $00
	add  c                                           ; $6eda: $81
	rst  $38                                         ; $6edb: $ff
	ld   bc, $ff00                                   ; $6edc: $01 $00 $ff
	adc  c                                           ; $6edf: $89
	nop                                              ; $6ee0: $00
	pop  hl                                          ; $6ee1: $e1
	rst  $38                                         ; $6ee2: $ff
	inc  c                                           ; $6ee3: $0c
	ldh  [rIE], a                                    ; $6ee4: $e0 $ff
	ld   sp, hl                                      ; $6ee6: $f9
	rst  $38                                         ; $6ee7: $ff
	ld   sp, hl                                      ; $6ee8: $f9
	rst  $38                                         ; $6ee9: $ff
	ld   sp, hl                                      ; $6eea: $f9
	rst  $38                                         ; $6eeb: $ff
	ld   sp, hl                                      ; $6eec: $f9
	rst  $38                                         ; $6eed: $ff
	pop  hl                                          ; $6eee: $e1
	rst  $38                                         ; $6eef: $ff
	cp   $81                                         ; $6ef0: $fe $81
	rst  $38                                         ; $6ef2: $ff
	inc  c                                           ; $6ef3: $0c
	rlca                                             ; $6ef4: $07
	rst  $38                                         ; $6ef5: $ff
	sbc  a                                           ; $6ef6: $9f
	rst  $38                                         ; $6ef7: $ff
	sbc  a                                           ; $6ef8: $9f
	rst  $38                                         ; $6ef9: $ff
	sbc  a                                           ; $6efa: $9f
	rst  $38                                         ; $6efb: $ff
	sbc  a                                           ; $6efc: $9f
	rst  $38                                         ; $6efd: $ff
	add  a                                           ; $6efe: $87
	rst  $38                                         ; $6eff: $ff
	ld   a, a                                        ; $6f00: $7f
	add  c                                           ; $6f01: $81
	rst  $38                                         ; $6f02: $ff
	inc  c                                           ; $6f03: $0c
	ret  nz                                          ; $6f04: $c0

	rst  $38                                         ; $6f05: $ff
	ret  nz                                          ; $6f06: $c0

	rst  $38                                         ; $6f07: $ff
	cp   $ff                                         ; $6f08: $fe $ff
	ld   hl, sp-$01                                  ; $6f0a: $f8 $ff
	ld   a, [$83ff]                                  ; $6f0c: $fa $ff $83
	rst  $38                                         ; $6f0f: $ff
	add  b                                           ; $6f10: $80
	add  c                                           ; $6f11: $81
	rst  $38                                         ; $6f12: $ff
	nop                                              ; $6f13: $00
	ccf                                              ; $6f14: $3f
	add  e                                           ; $6f15: $83
	rst  $38                                         ; $6f16: $ff
	nop                                              ; $6f17: $00
	ccf                                              ; $6f18: $3f
	add  c                                           ; $6f19: $81
	rst  $38                                         ; $6f1a: $ff
	ld   [bc], a                                     ; $6f1b: $02
	rrca                                             ; $6f1c: $0f
	rst  $38                                         ; $6f1d: $ff
	rrca                                             ; $6f1e: $0f
	rst  $38                                         ; $6f1f: $ff
	rst  $38                                         ; $6f20: $ff
	cp   h                                           ; $6f21: $bc
	rst  $38                                         ; $6f22: $ff
	ld   [$ffe0], sp                                 ; $6f23: $08 $e0 $ff
	pop  hl                                          ; $6f26: $e1
	rst  $38                                         ; $6f27: $ff
	pop  hl                                          ; $6f28: $e1
	rst  $38                                         ; $6f29: $ff
	ldh  [rIE], a                                    ; $6f2a: $e0 $ff
	ret                                              ; $6f2c: $c9


	add  c                                           ; $6f2d: $81
	rst  $38                                         ; $6f2e: $ff
	nop                                              ; $6f2f: $00
	ret                                              ; $6f30: $c9


	add  c                                           ; $6f31: $81
	rst  $38                                         ; $6f32: $ff
	ld   [$ff07], sp                                 ; $6f33: $08 $07 $ff
	add  a                                           ; $6f36: $87
	rst  $38                                         ; $6f37: $ff
	add  a                                           ; $6f38: $87
	rst  $38                                         ; $6f39: $ff
	rlca                                             ; $6f3a: $07
	rst  $38                                         ; $6f3b: $ff
	sub  e                                           ; $6f3c: $93
	add  c                                           ; $6f3d: $81
	rst  $38                                         ; $6f3e: $ff
	nop                                              ; $6f3f: $00
	sub  e                                           ; $6f40: $93
	add  c                                           ; $6f41: $81
	rst  $38                                         ; $6f42: $ff
	nop                                              ; $6f43: $00
	db   $fc                                         ; $6f44: $fc
	add  e                                           ; $6f45: $83
	rst  $38                                         ; $6f46: $ff
	ld   [bc], a                                     ; $6f47: $02
	rst  $30                                         ; $6f48: $f7
	rst  $38                                         ; $6f49: $ff
	di                                               ; $6f4a: $f3
	add  c                                           ; $6f4b: $81
	rst  $38                                         ; $6f4c: $ff
	nop                                              ; $6f4d: $00
	ld   hl, sp-$0e                                  ; $6f4e: $f8 $f2
	rst  $38                                         ; $6f50: $ff
	add  b                                           ; $6f51: $80
	nop                                              ; $6f52: $00
	adc  d                                           ; $6f53: $8a
	rst  $38                                         ; $6f54: $ff
	add  d                                           ; $6f55: $82
	nop                                              ; $6f56: $00
	adc  d                                           ; $6f57: $8a
	rst  $38                                         ; $6f58: $ff
	add  d                                           ; $6f59: $82
	nop                                              ; $6f5a: $00
	adc  d                                           ; $6f5b: $8a
	rst  $38                                         ; $6f5c: $ff
	add  d                                           ; $6f5d: $82
	nop                                              ; $6f5e: $00
	adc  d                                           ; $6f5f: $8a
	rst  $38                                         ; $6f60: $ff
	add  d                                           ; $6f61: $82
	nop                                              ; $6f62: $00
	adc  d                                           ; $6f63: $8a
	rst  $38                                         ; $6f64: $ff
	add  d                                           ; $6f65: $82
	nop                                              ; $6f66: $00
	adc  d                                           ; $6f67: $8a
	rst  $38                                         ; $6f68: $ff
	add  d                                           ; $6f69: $82
	nop                                              ; $6f6a: $00
	dec  bc                                          ; $6f6b: $0b
	rst  $38                                         ; $6f6c: $ff
	ldh  [rIE], a                                    ; $6f6d: $e0 $ff
	ld   sp, hl                                      ; $6f6f: $f9
	rst  $38                                         ; $6f70: $ff
	ld   sp, hl                                      ; $6f71: $f9
	rst  $38                                         ; $6f72: $ff
	ld   sp, hl                                      ; $6f73: $f9
	rst  $38                                         ; $6f74: $ff
	ld   sp, hl                                      ; $6f75: $f9
	rst  $38                                         ; $6f76: $ff
	ldh  [$82], a                                    ; $6f77: $e0 $82
	nop                                              ; $6f79: $00
	dec  bc                                          ; $6f7a: $0b
	rst  $38                                         ; $6f7b: $ff
	rlca                                             ; $6f7c: $07
	rst  $38                                         ; $6f7d: $ff
	sbc  a                                           ; $6f7e: $9f
	rst  $38                                         ; $6f7f: $ff
	sbc  a                                           ; $6f80: $9f
	rst  $38                                         ; $6f81: $ff
	sbc  a                                           ; $6f82: $9f
	rst  $38                                         ; $6f83: $ff
	sbc  a                                           ; $6f84: $9f
	rst  $38                                         ; $6f85: $ff
	rlca                                             ; $6f86: $07
	add  d                                           ; $6f87: $82
	nop                                              ; $6f88: $00
	inc  c                                           ; $6f89: $0c
	rst  $38                                         ; $6f8a: $ff
	ret  nz                                          ; $6f8b: $c0

	rst  $38                                         ; $6f8c: $ff
	ret  nz                                          ; $6f8d: $c0

	rst  $38                                         ; $6f8e: $ff
	cp   $ff                                         ; $6f8f: $fe $ff
	ld   hl, sp-$01                                  ; $6f91: $f8 $ff
	ld   a, [$83ff]                                  ; $6f93: $fa $ff $83
	ld   a, a                                        ; $6f96: $7f
	add  c                                           ; $6f97: $81
	nop                                              ; $6f98: $00
	ld   bc, $3fff                                   ; $6f99: $01 $ff $3f
	add  e                                           ; $6f9c: $83
	rst  $38                                         ; $6f9d: $ff
	nop                                              ; $6f9e: $00
	ccf                                              ; $6f9f: $3f
	add  c                                           ; $6fa0: $81
	rst  $38                                         ; $6fa1: $ff
	ld   bc, $f00f                                   ; $6fa2: $01 $0f $f0
	add  c                                           ; $6fa5: $81
	nop                                              ; $6fa6: $00
	adc  d                                           ; $6fa7: $8a
	rst  $38                                         ; $6fa8: $ff
	add  d                                           ; $6fa9: $82
	nop                                              ; $6faa: $00
	adc  d                                           ; $6fab: $8a
	rst  $38                                         ; $6fac: $ff
	add  d                                           ; $6fad: $82
	nop                                              ; $6fae: $00
	adc  d                                           ; $6faf: $8a
	rst  $38                                         ; $6fb0: $ff
	add  d                                           ; $6fb1: $82
	nop                                              ; $6fb2: $00
	adc  d                                           ; $6fb3: $8a
	rst  $38                                         ; $6fb4: $ff
	add  d                                           ; $6fb5: $82
	nop                                              ; $6fb6: $00
	adc  d                                           ; $6fb7: $8a
	rst  $38                                         ; $6fb8: $ff
	add  d                                           ; $6fb9: $82
	nop                                              ; $6fba: $00
	adc  d                                           ; $6fbb: $8a
	rst  $38                                         ; $6fbc: $ff
	add  b                                           ; $6fbd: $80
	nop                                              ; $6fbe: $00
	add  e                                           ; $6fbf: $83
	rst  $38                                         ; $6fc0: $ff
	ld   bc, $ff00                                   ; $6fc1: $01 $00 $ff
	add  a                                           ; $6fc4: $87
	nop                                              ; $6fc5: $00
	add  e                                           ; $6fc6: $83
	rst  $38                                         ; $6fc7: $ff
	ld   bc, $ff00                                   ; $6fc8: $01 $00 $ff
	add  a                                           ; $6fcb: $87
	nop                                              ; $6fcc: $00
	add  e                                           ; $6fcd: $83
	rst  $38                                         ; $6fce: $ff
	ld   bc, $ff00                                   ; $6fcf: $01 $00 $ff
	add  a                                           ; $6fd2: $87
	nop                                              ; $6fd3: $00
	add  e                                           ; $6fd4: $83
	rst  $38                                         ; $6fd5: $ff
	ld   bc, $ff00                                   ; $6fd6: $01 $00 $ff
	add  a                                           ; $6fd9: $87
	nop                                              ; $6fda: $00
	add  e                                           ; $6fdb: $83
	rst  $38                                         ; $6fdc: $ff
	ld   bc, $ff00                                   ; $6fdd: $01 $00 $ff
	add  a                                           ; $6fe0: $87
	nop                                              ; $6fe1: $00
	add  e                                           ; $6fe2: $83
	rst  $38                                         ; $6fe3: $ff
	ld   bc, $ff00                                   ; $6fe4: $01 $00 $ff
	add  a                                           ; $6fe7: $87
	nop                                              ; $6fe8: $00
	add  e                                           ; $6fe9: $83
	rst  $38                                         ; $6fea: $ff
	ld   bc, $ff00                                   ; $6feb: $01 $00 $ff
	add  b                                           ; $6fee: $80
	nop                                              ; $6fef: $00
	add  b                                           ; $6ff0: $80
	rra                                              ; $6ff1: $1f
	add  b                                           ; $6ff2: $80
	add  hl, de                                      ; $6ff3: $19
	add  b                                           ; $6ff4: $80
	rra                                              ; $6ff5: $1f
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	add  e                                           ; $6ff8: $83
	rst  $38                                         ; $6ff9: $ff
	ld   bc, $ff00                                   ; $6ffa: $01 $00 $ff
	add  b                                           ; $6ffd: $80
	nop                                              ; $6ffe: $00
	add  b                                           ; $6fff: $80
	ld   hl, sp-$80                                  ; $7000: $f8 $80
	sbc  b                                           ; $7002: $98
	add  b                                           ; $7003: $80
	ld   hl, sp+$00                                  ; $7004: $f8 $00
	nop                                              ; $7006: $00
	add  e                                           ; $7007: $83
	rst  $38                                         ; $7008: $ff
	ld   bc, $ff00                                   ; $7009: $01 $00 $ff
	add  b                                           ; $700c: $80
	nop                                              ; $700d: $00
	add  b                                           ; $700e: $80
	ccf                                              ; $700f: $3f
	add  b                                           ; $7010: $80
	nop                                              ; $7011: $00
	add  b                                           ; $7012: $80
	ld   bc, $0000                                   ; $7013: $01 $00 $00
	add  e                                           ; $7016: $83
	rst  $38                                         ; $7017: $ff
	ld   bc, $ff00                                   ; $7018: $01 $00 $ff
	add  b                                           ; $701b: $80
	nop                                              ; $701c: $00
	add  h                                           ; $701d: $84
	ret  nz                                          ; $701e: $c0

	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	add  e                                           ; $7021: $83
	rst  $38                                         ; $7022: $ff
	ld   bc, $ff00                                   ; $7023: $01 $00 $ff
	add  a                                           ; $7026: $87
	nop                                              ; $7027: $00
	add  e                                           ; $7028: $83
	rst  $38                                         ; $7029: $ff
	ld   bc, $ff00                                   ; $702a: $01 $00 $ff
	add  a                                           ; $702d: $87
	nop                                              ; $702e: $00
	add  e                                           ; $702f: $83
	rst  $38                                         ; $7030: $ff
	ld   bc, $ff00                                   ; $7031: $01 $00 $ff
	add  a                                           ; $7034: $87
	nop                                              ; $7035: $00
	add  e                                           ; $7036: $83
	rst  $38                                         ; $7037: $ff
	ld   bc, $ff00                                   ; $7038: $01 $00 $ff
	add  a                                           ; $703b: $87
	nop                                              ; $703c: $00
	add  e                                           ; $703d: $83
	rst  $38                                         ; $703e: $ff
	ld   bc, $ff00                                   ; $703f: $01 $00 $ff
	add  a                                           ; $7042: $87
	nop                                              ; $7043: $00
	add  e                                           ; $7044: $83
	rst  $38                                         ; $7045: $ff
	ld   bc, $ff00                                   ; $7046: $01 $00 $ff
	add  [hl]                                        ; $7049: $86
	nop                                              ; $704a: $00
	add  b                                           ; $704b: $80
	rst  $38                                         ; $704c: $ff
	adc  h                                           ; $704d: $8c
	nop                                              ; $704e: $00
	add  b                                           ; $704f: $80
	rst  $38                                         ; $7050: $ff
	adc  h                                           ; $7051: $8c
	nop                                              ; $7052: $00
	add  b                                           ; $7053: $80
	rst  $38                                         ; $7054: $ff
	adc  h                                           ; $7055: $8c
	nop                                              ; $7056: $00
	add  b                                           ; $7057: $80
	rst  $38                                         ; $7058: $ff
	adc  h                                           ; $7059: $8c
	nop                                              ; $705a: $00
	add  b                                           ; $705b: $80
	rst  $38                                         ; $705c: $ff
	adc  h                                           ; $705d: $8c
	nop                                              ; $705e: $00
	add  b                                           ; $705f: $80
	rst  $38                                         ; $7060: $ff
	adc  h                                           ; $7061: $8c
	nop                                              ; $7062: $00
	add  b                                           ; $7063: $80
	rst  $38                                         ; $7064: $ff
	add  b                                           ; $7065: $80
	rra                                              ; $7066: $1f
	add  b                                           ; $7067: $80
	ld   bc, $1f80                                   ; $7068: $01 $80 $1f
	add  b                                           ; $706b: $80
	nop                                              ; $706c: $00
	add  d                                           ; $706d: $82
	ld   [hl], $80                                   ; $706e: $36 $80
	nop                                              ; $7070: $00
	add  b                                           ; $7071: $80
	rst  $38                                         ; $7072: $ff
	add  b                                           ; $7073: $80
	ld   hl, sp-$80                                  ; $7074: $f8 $80
	add  b                                           ; $7076: $80
	add  b                                           ; $7077: $80
	ld   hl, sp-$80                                  ; $7078: $f8 $80
	nop                                              ; $707a: $00
	add  d                                           ; $707b: $82
	ld   l, h                                        ; $707c: $6c
	add  b                                           ; $707d: $80
	nop                                              ; $707e: $00
	add  b                                           ; $707f: $80
	rst  $38                                         ; $7080: $ff
	add  h                                           ; $7081: $84
	inc  bc                                          ; $7082: $03
	add  b                                           ; $7083: $80
	dec  bc                                          ; $7084: $0b
	add  d                                           ; $7085: $82
	rlca                                             ; $7086: $07
	add  b                                           ; $7087: $80
	nop                                              ; $7088: $00
	add  b                                           ; $7089: $80
	rst  $38                                         ; $708a: $ff
	adc  h                                           ; $708b: $8c
	nop                                              ; $708c: $00
	add  b                                           ; $708d: $80
	rst  $38                                         ; $708e: $ff
	adc  h                                           ; $708f: $8c
	nop                                              ; $7090: $00
	add  b                                           ; $7091: $80
	rst  $38                                         ; $7092: $ff
	adc  h                                           ; $7093: $8c
	nop                                              ; $7094: $00
	add  b                                           ; $7095: $80
	rst  $38                                         ; $7096: $ff
	adc  h                                           ; $7097: $8c
	nop                                              ; $7098: $00
	add  b                                           ; $7099: $80
	rst  $38                                         ; $709a: $ff
	adc  h                                           ; $709b: $8c
	nop                                              ; $709c: $00

jr_01c_709d:
	add  b                                           ; $709d: $80
	rst  $38                                         ; $709e: $ff
	adc  h                                           ; $709f: $8c
	nop                                              ; $70a0: $00
	add  b                                           ; $70a1: $80
	rst  $38                                         ; $70a2: $ff
	adc  h                                           ; $70a3: $8c
	nop                                              ; $70a4: $00
	inc  hl                                          ; $70a5: $23
	ld   bc, $008e                                   ; $70a6: $01 $8e $00

jr_01c_70a9:
	inc  b                                           ; $70a9: $04
	ld   h, b                                        ; $70aa: $60
	nop                                              ; $70ab: $00
	and  b                                           ; $70ac: $a0
	nop                                              ; $70ad: $00
	ld   e, $81                                      ; $70ae: $1e $81
	inc  e                                           ; $70b0: $1c
	inc  b                                           ; $70b1: $04
	ld   [bc], a                                     ; $70b2: $02
	nop                                              ; $70b3: $00
	and  b                                           ; $70b4: $a0
	nop                                              ; $70b5: $00
	ld   h, b                                        ; $70b6: $60
	add  e                                           ; $70b7: $83
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	inc  bc                                          ; $70ba: $03
	add  b                                           ; $70bb: $80
	nop                                              ; $70bc: $00
	add  d                                           ; $70bd: $82
	inc  bc                                          ; $70be: $03

jr_01c_70bf:
	add  b                                           ; $70bf: $80
	nop                                              ; $70c0: $00
	add  c                                           ; $70c1: $81
	inc  bc                                          ; $70c2: $03
	nop                                              ; $70c3: $00
	rlca                                             ; $70c4: $07
	add  b                                           ; $70c5: $80

jr_01c_70c6:
	nop                                              ; $70c6: $00
	add  d                                           ; $70c7: $82
	rlca                                             ; $70c8: $07
	add  b                                           ; $70c9: $80
	nop                                              ; $70ca: $00
	add  d                                           ; $70cb: $82
	rlca                                             ; $70cc: $07
	add  b                                           ; $70cd: $80
	nop                                              ; $70ce: $00
	dec  b                                           ; $70cf: $05
	rlca                                             ; $70d0: $07
	rrca                                             ; $70d1: $0f
	nop                                              ; $70d2: $00
	rrca                                             ; $70d3: $0f
	nop                                              ; $70d4: $00
	cp   $80                                         ; $70d5: $fe $80
	nop                                              ; $70d7: $00
	add  b                                           ; $70d8: $80
	ld   hl, sp-$80                                  ; $70d9: $f8 $80
	db   $fc                                         ; $70db: $fc
	ld   bc, $0200                                   ; $70dc: $01 $00 $02
	add  b                                           ; $70df: $80
	ldh  a, [$80]                                    ; $70e0: $f0 $80
	ld   hl, sp-$80                                  ; $70e2: $f8 $80
	nop                                              ; $70e4: $00
	add  b                                           ; $70e5: $80
	ldh  a, [$80]                                    ; $70e6: $f0 $80
	ld   hl, sp-$80                                  ; $70e8: $f8 $80
	nop                                              ; $70ea: $00
	add  b                                           ; $70eb: $80
	ldh  a, [$80]                                    ; $70ec: $f0 $80
	ld   hl, sp+$01                                  ; $70ee: $f8 $01
	nop                                              ; $70f0: $00
	inc  b                                           ; $70f1: $04
	add  b                                           ; $70f2: $80
	ldh  a, [rSB]                                    ; $70f3: $f0 $01
	nop                                              ; $70f5: $00
	ld   hl, sp-$70                                  ; $70f6: $f8 $90
	nop                                              ; $70f8: $00
	add  d                                           ; $70f9: $82
	ld   c, $80                                      ; $70fa: $0e $80
	ld   [bc], a                                     ; $70fc: $02
	adc  l                                           ; $70fd: $8d
	nop                                              ; $70fe: $00
	add  b                                           ; $70ff: $80
	ld   b, $80                                      ; $7100: $06 $80
	rra                                              ; $7102: $1f
	add  b                                           ; $7103: $80
	ccf                                              ; $7104: $3f
	add  b                                           ; $7105: $80
	ld   a, h                                        ; $7106: $7c
	add  b                                           ; $7107: $80

jr_01c_7108:
	ldh  a, [$80]                                    ; $7108: $f0 $80
	ret  nz                                          ; $710a: $c0

	add  b                                           ; $710b: $80
	add  b                                           ; $710c: $80
	adc  [hl]                                        ; $710d: $8e
	nop                                              ; $710e: $00
	add  b                                           ; $710f: $80
	inc  c                                           ; $7110: $0c
	add  b                                           ; $7111: $80
	add  h                                           ; $7112: $84
	add  b                                           ; $7113: $80
	ld   b, d                                        ; $7114: $42
	add  b                                           ; $7115: $80
	add  d                                           ; $7116: $82
	sub  h                                           ; $7117: $94
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	jr   nz, jr_01c_709d                             ; $711a: $20 $81

jr_01c_711c:
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	jr   jr_01c_70a9                                 ; $711e: $18 $89

	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	ld   b, h                                        ; $7122: $44
	add  c                                           ; $7123: $81
	nop                                              ; $7124: $00
	ld   [bc], a                                     ; $7125: $02

jr_01c_7126:
	ld   b, h                                        ; $7126: $44
	nop                                              ; $7127: $00
	jr   c, jr_01c_70bf                              ; $7128: $38 $95

	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	ld   b, b                                        ; $712c: $40
	add  l                                           ; $712d: $85
	nop                                              ; $712e: $00
	ld   [bc], a                                     ; $712f: $02
	and  b                                           ; $7130: $a0
	nop                                              ; $7131: $00
	ldh  [$88], a                                    ; $7132: $e0 $88
	nop                                              ; $7134: $00
	add  d                                           ; $7135: $82
	ld   c, $80                                      ; $7136: $0e $80
	ld   e, $9a                                      ; $7138: $1e $9a
	nop                                              ; $713a: $00
	add  b                                           ; $713b: $80
	jr   c, @-$62                                    ; $713c: $38 $9c

	nop                                              ; $713e: $00
	add  b                                           ; $713f: $80
	jr   nc, jr_01c_70c6                             ; $7140: $30 $84

	inc  a                                           ; $7142: $3c
	add  b                                           ; $7143: $80
	ld   c, $8b                                      ; $7144: $0e $8b
	nop                                              ; $7146: $00
	add  [hl]                                        ; $7147: $86
	rst  $38                                         ; $7148: $ff
	add  b                                           ; $7149: $80
	ccf                                              ; $714a: $3f
	add  b                                           ; $714b: $80
	rlca                                             ; $714c: $07
	add  b                                           ; $714d: $80
	ld   bc, $0086                                   ; $714e: $01 $86 $00
	add  b                                           ; $7151: $80
	ldh  [$80], a                                    ; $7152: $e0 $80
	ld   h, b                                        ; $7154: $60

jr_01c_7155:
	add  b                                           ; $7155: $80
	ld   [hl], b                                     ; $7156: $70
	add  b                                           ; $7157: $80
	db   $10                                         ; $7158: $10
	add  b                                           ; $7159: $80
	nop                                              ; $715a: $00
	add  b                                           ; $715b: $80
	add  a                                           ; $715c: $87
	add  b                                           ; $715d: $80
	add  [hl]                                        ; $715e: $86
	add  b                                           ; $715f: $80
	add  h                                           ; $7160: $84
	sub  h                                           ; $7161: $94
	add  b                                           ; $7162: $80
	add  d                                           ; $7163: $82
	nop                                              ; $7164: $00
	add  b                                           ; $7165: $80
	ccf                                              ; $7166: $3f
	add  d                                           ; $7167: $82
	rra                                              ; $7168: $1f
	add  h                                           ; $7169: $84
	rrca                                             ; $716a: $0f
	add  h                                           ; $716b: $84
	rlca                                             ; $716c: $07
	add  h                                           ; $716d: $84
	inc  bc                                          ; $716e: $03
	add  d                                           ; $716f: $82
	ld   bc, $0082                                   ; $7170: $01 $82 $00
	add  d                                           ; $7173: $82
	ld   a, a                                        ; $7174: $7f
	add  h                                           ; $7175: $84
	ccf                                              ; $7176: $3f
	adc  h                                           ; $7177: $8c
	rra                                              ; $7178: $1f
	add  b                                           ; $7179: $80
	ccf                                              ; $717a: $3f
	add  b                                           ; $717b: $80
	ld   a, a                                        ; $717c: $7f
	add  b                                           ; $717d: $80
	rst  $38                                         ; $717e: $ff
	add  b                                           ; $717f: $80
	rra                                              ; $7180: $1f
	add  b                                           ; $7181: $80
	nop                                              ; $7182: $00
	add  c                                           ; $7183: $81
	ccf                                              ; $7184: $3f
	nop                                              ; $7185: $00
	jr   nz, jr_01c_7108                             ; $7186: $20 $80

	cpl                                              ; $7188: $2f
	add  b                                           ; $7189: $80
	xor  a                                           ; $718a: $af
	add  b                                           ; $718b: $80
	xor  $00                                         ; $718c: $ee $00
	cp   $80                                         ; $718e: $fe $80
	sbc  $02                                         ; $7190: $de $02
	ld   e, [hl]                                     ; $7192: $5e
	ld   e, h                                        ; $7193: $5c
	inc  e                                           ; $7194: $1c
	add  b                                           ; $7195: $80
	cp   l                                           ; $7196: $bd
	add  b                                           ; $7197: $80
	dec  a                                           ; $7198: $3d
	add  b                                           ; $7199: $80
	jr   c, jr_01c_711c                              ; $719a: $38 $80

	ld   a, b                                        ; $719c: $78
	add  l                                           ; $719d: $85
	rst  $38                                         ; $719e: $ff
	add  e                                           ; $719f: $83
	nop                                              ; $71a0: $00
	add  c                                           ; $71a1: $81
	ccf                                              ; $71a2: $3f
	nop                                              ; $71a3: $00
	jr   nz, jr_01c_7126                             ; $71a4: $20 $80

	rst  $28                                         ; $71a6: $ef
	nop                                              ; $71a7: $00
	rst  $38                                         ; $71a8: $ff
	add  c                                           ; $71a9: $81
	rst  JumpTable                                         ; $71aa: $df
	ld   bc, $00c0                                   ; $71ab: $01 $c0 $00
	add  b                                           ; $71ae: $80
	ld   a, a                                        ; $71af: $7f
	add  d                                           ; $71b0: $82
	rst  $38                                         ; $71b1: $ff
	add  b                                           ; $71b2: $80
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	rlca                                             ; $71b5: $07
	add  b                                           ; $71b6: $80
	add  a                                           ; $71b7: $87
	inc  bc                                          ; $71b8: $03
	rst  $20                                         ; $71b9: $e7
	xor  $0e                                         ; $71ba: $ee $0e
	rst  $38                                         ; $71bc: $ff
	add  c                                           ; $71bd: $81
	nop                                              ; $71be: $00
	add  b                                           ; $71bf: $80
	ccf                                              ; $71c0: $3f
	inc  bc                                          ; $71c1: $03
	rst  $38                                         ; $71c2: $ff
	ldh  [$ee], a                                    ; $71c3: $e0 $ee
	ld   c, $80                                      ; $71c5: $0e $80
	db   $ed                                         ; $71c7: $ed
	add  b                                           ; $71c8: $80
	db   $db                                         ; $71c9: $db
	add  b                                           ; $71ca: $80
	cp   e                                           ; $71cb: $bb
	add  b                                           ; $71cc: $80
	dec  a                                           ; $71cd: $3d
	add  b                                           ; $71ce: $80
	cp   $82                                         ; $71cf: $fe $82
	rst  $38                                         ; $71d1: $ff
	add  b                                           ; $71d2: $80
	jr   c, jr_01c_7155                              ; $71d3: $38 $80

	ld   a, b                                        ; $71d5: $78
	ld   bc, $7370                                   ; $71d6: $01 $70 $73
	add  b                                           ; $71d9: $80
	ld   [hl], d                                     ; $71da: $72
	nop                                              ; $71db: $00

jr_01c_71dc:
	db   $fc                                         ; $71dc: $fc
	add  c                                           ; $71dd: $81
	nop                                              ; $71de: $00
	add  b                                           ; $71df: $80
	adc  a                                           ; $71e0: $8f
	rrca                                             ; $71e1: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71e2: $cf
	ret  z                                           ; $71e3: $c8

	ei                                               ; $71e4: $fb
	ld   a, e                                        ; $71e5: $7b
	rst  $38                                         ; $71e6: $ff
	or   a                                           ; $71e7: $b7
	rst  $30                                         ; $71e8: $f7
	rst  $10                                         ; $71e9: $d7
	ldh  a, [$e0]                                    ; $71ea: $f0 $e0
	ldh  a, [$f4]                                    ; $71ec: $f0 $f4
	db   $e4                                         ; $71ee: $e4
	rst  $20                                         ; $71ef: $e7
	ld   b, a                                        ; $71f0: $47
	ld   b, b                                        ; $71f1: $40
	add  b                                           ; $71f2: $80
	adc  a                                           ; $71f3: $8f
	add  c                                           ; $71f4: $81
	rra                                              ; $71f5: $1f
	dec  b                                           ; $71f6: $05
	ld   e, a                                        ; $71f7: $5f
	ld   b, b                                        ; $71f8: $40
	ret  nz                                          ; $71f9: $c0

	nop                                              ; $71fa: $00
	jr   nc, jr_01c_720c                             ; $71fb: $30 $0f

	add  c                                           ; $71fd: $81
	nop                                              ; $71fe: $00
	add  c                                           ; $71ff: $81
	rst  $38                                         ; $7200: $ff
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	add  h                                           ; $7203: $84
	rst  $38                                         ; $7204: $ff
	add  e                                           ; $7205: $83
	nop                                              ; $7206: $00
	add  b                                           ; $7207: $80
	rst  $38                                         ; $7208: $ff
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	add  h                                           ; $720b: $84

jr_01c_720c:
	rst  $38                                         ; $720c: $ff
	add  d                                           ; $720d: $82
	inc  bc                                          ; $720e: $03
	nop                                              ; $720f: $00
	rst  $38                                         ; $7210: $ff
	add  c                                           ; $7211: $81
	nop                                              ; $7212: $00
	add  b                                           ; $7213: $80
	rst  $30                                         ; $7214: $f7
	dec  b                                           ; $7215: $05
	rst  $38                                         ; $7216: $ff
	dec  e                                           ; $7217: $1d
	rst  $38                                         ; $7218: $ff
	ld   [$c7cf], a                                  ; $7219: $ea $cf $c7
	add  b                                           ; $721c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $721d: $cf
	add  b                                           ; $721e: $80
	rlca                                             ; $721f: $07
	rlca                                             ; $7220: $07
	inc  bc                                          ; $7221: $03
	dec  de                                          ; $7222: $1b
	add  hl, de                                      ; $7223: $19
	db   $fd                                         ; $7224: $fd
	db   $fc                                         ; $7225: $fc
	ld   c, $ee                                      ; $7226: $0e $ee
	rst  $20                                         ; $7228: $e7
	add  b                                           ; $7229: $80
	push hl                                          ; $722a: $e5
	add  b                                           ; $722b: $80
	db   $e4                                         ; $722c: $e4
	add  b                                           ; $722d: $80
	call nz, $c102                                   ; $722e: $c4 $02 $c1
	ret                                              ; $7231: $c9


	ldh  a, [$83]                                    ; $7232: $f0 $83
	nop                                              ; $7234: $00
	add  b                                           ; $7235: $80
	add  b                                           ; $7236: $80
	add  b                                           ; $7237: $80
	ret  nz                                          ; $7238: $c0

	inc  c                                           ; $7239: $0c
	db   $e3                                         ; $723a: $e3
	ld   h, e                                        ; $723b: $63
	di                                               ; $723c: $f3
	or   d                                           ; $723d: $b2
	cp   $de                                         ; $723e: $fe $de
	sbc  a                                           ; $7240: $9f
	adc  l                                           ; $7241: $8d
	dec  c                                           ; $7242: $0d
	dec  e                                           ; $7243: $1d
	inc  d                                           ; $7244: $14
	inc  [hl]                                        ; $7245: $34
	inc  a                                           ; $7246: $3c
	add  b                                           ; $7247: $80
	ld   a, [hl]                                     ; $7248: $7e
	ld   [$7ff7], sp                                 ; $7249: $08 $f7 $7f
	ld   l, e                                        ; $724c: $6b
	rst  $38                                         ; $724d: $ff
	db   $dd                                         ; $724e: $dd
	rst  $38                                         ; $724f: $ff
	cp   [hl]                                        ; $7250: $be
	ld   c, a                                        ; $7251: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7252: $cf
	add  d                                           ; $7253: $82
	sbc  [hl]                                        ; $7254: $9e
	add  b                                           ; $7255: $80
	inc  e                                           ; $7256: $1c
	add  d                                           ; $7257: $82
	inc  a                                           ; $7258: $3c
	add  b                                           ; $7259: $80
	jr   c, jr_01c_71dc                              ; $725a: $38 $80

	ld   a, b                                        ; $725c: $78
	add  d                                           ; $725d: $82
	ld   a, a                                        ; $725e: $7f
	rlca                                             ; $725f: $07
	ccf                                              ; $7260: $3f
	cp   a                                           ; $7261: $bf
	add  b                                           ; $7262: $80
	ret  nz                                          ; $7263: $c0

	ld   b, b                                        ; $7264: $40
	ld   h, b                                        ; $7265: $60
	jr   nz, jr_01c_72a7                             ; $7266: $20 $3f

	add  d                                           ; $7268: $82
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	rst  $38                                         ; $726b: $ff
	add  b                                           ; $726c: $80
	nop                                              ; $726d: $00
	add  b                                           ; $726e: $80
	ld   [bc], a                                     ; $726f: $02
	ld   [bc], a                                     ; $7270: $02
	ld   a, $27                                      ; $7271: $3e $27
	ld   h, l                                        ; $7273: $65
	add  c                                           ; $7274: $81
	ld   a, l                                        ; $7275: $7d
	inc  b                                           ; $7276: $04
	call $a3ef                                       ; $7277: $cd $ef $a3
	rst  $30                                         ; $727a: $f7
	ld   [hl], a                                     ; $727b: $77
	add  b                                           ; $727c: $80
	rst  $30                                         ; $727d: $f7
	add  b                                           ; $727e: $80
	rst  $28                                         ; $727f: $ef

Jump_01c_7280:
	add  b                                           ; $7280: $80
	call z, $0081                                    ; $7281: $cc $81 $00
	add  b                                           ; $7284: $80
	stop                                             ; $7285: $10 $00
	rst  $38                                         ; $7287: $ff
	add  d                                           ; $7288: $82
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	db   $10                                         ; $728b: $10
	add  c                                           ; $728c: $81
	rst  $28                                         ; $728d: $ef
	add  b                                           ; $728e: $80
	sbc  $80                                         ; $728f: $de $80
	call c, $bc80                                    ; $7291: $dc $80 $bc
	add  b                                           ; $7294: $80
	cp   a                                           ; $7295: $bf
	add  b                                           ; $7296: $80
	rst  $38                                         ; $7297: $ff
	add  b                                           ; $7298: $80
	cp   $80                                         ; $7299: $fe $80
	ldh  a, [$80]                                    ; $729b: $f0 $80
	add  b                                           ; $729d: $80
	dec  b                                           ; $729e: $05
	nop                                              ; $729f: $00
	inc  bc                                          ; $72a0: $03
	ld   [bc], a                                     ; $72a1: $02
	ld   e, $18                                      ; $72a2: $1e $18
	ld   hl, sp-$80                                  ; $72a4: $f8 $80
	ret  nz                                          ; $72a6: $c0

jr_01c_72a7:
	add  d                                           ; $72a7: $82
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	ld   c, [hl]                                     ; $72aa: $4e
	add  b                                           ; $72ab: $80
	or   d                                           ; $72ac: $b2
	nop                                              ; $72ad: $00
	or   [hl]                                        ; $72ae: $b6
	add  b                                           ; $72af: $80
	inc  [hl]                                        ; $72b0: $34
	add  b                                           ; $72b1: $80
	db   $f4                                         ; $72b2: $f4
	add  b                                           ; $72b3: $80
	rst  $30                                         ; $72b4: $f7
	inc  bc                                          ; $72b5: $03
	or   a                                           ; $72b6: $b7
	or   [hl]                                        ; $72b7: $b6
	cp   a                                           ; $72b8: $bf
	cp   c                                           ; $72b9: $b9
	add  b                                           ; $72ba: $80
	ccf                                              ; $72bb: $3f
	add  b                                           ; $72bc: $80
	ld   a, a                                        ; $72bd: $7f
	add  b                                           ; $72be: $80
	ccf                                              ; $72bf: $3f
	rlca                                             ; $72c0: $07
	ld   e, $de                                      ; $72c1: $1e $de
	ld   b, b                                        ; $72c3: $40
	ld   h, b                                        ; $72c4: $60
	jr   nz, @+$32                                   ; $72c5: $20 $30

	db   $10                                         ; $72c7: $10
	rra                                              ; $72c8: $1f
	add  d                                           ; $72c9: $82
	nop                                              ; $72ca: $00
	add  b                                           ; $72cb: $80
	rrca                                             ; $72cc: $0f
	add  h                                           ; $72cd: $84
	nop                                              ; $72ce: $00
	add  b                                           ; $72cf: $80
	pop  bc                                          ; $72d0: $c1
	dec  b                                           ; $72d1: $05
	db   $e3                                         ; $72d2: $e3
	ld   h, e                                        ; $72d3: $63
	rst  $38                                         ; $72d4: $ff
	cp   [hl]                                        ; $72d5: $be
	rst  $38                                         ; $72d6: $ff
	pop  bc                                          ; $72d7: $c1
	add  b                                           ; $72d8: $80
	adc  a                                           ; $72d9: $8f
	add  d                                           ; $72da: $82
	rra                                              ; $72db: $1f
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	add  b                                           ; $72de: $80
	ld   b, b                                        ; $72df: $40
	ld   [bc], a                                     ; $72e0: $02
	ldh  [rAUD4LEN], a                               ; $72e1: $e0 $20
	ccf                                              ; $72e3: $3f
	add  d                                           ; $72e4: $82
	nop                                              ; $72e5: $00
	dec  bc                                          ; $72e6: $0b
	db   $fc                                         ; $72e7: $fc
	ei                                               ; $72e8: $fb
	ccf                                              ; $72e9: $3f
	scf                                              ; $72ea: $37
	ld   a, a                                        ; $72eb: $7f
	ld   l, a                                        ; $72ec: $6f
	rst  $38                                         ; $72ed: $ff
	rst  JumpTable                                         ; $72ee: $df
	cp   $be                                         ; $72ef: $fe $be
	db   $fc                                         ; $72f1: $fc
	ld   a, h                                        ; $72f2: $7c
	add  b                                           ; $72f3: $80
	ld   hl, sp-$80                                  ; $72f4: $f8 $80
	ldh  a, [$80]                                    ; $72f6: $f0 $80
	pop  hl                                          ; $72f8: $e1
	add  b                                           ; $72f9: $80

jr_01c_72fa:
	jp   $8302                                       ; $72fa: $c3 $02 $83


	adc  e                                           ; $72fd: $8b
	ld   [$1880], sp                                 ; $72fe: $08 $80 $18
	ld   [bc], a                                     ; $7301: $02
	inc  a                                           ; $7302: $3c
	inc  h                                           ; $7303: $24
	rst  $20                                         ; $7304: $e7
	add  d                                           ; $7305: $82
	nop                                              ; $7306: $00
	rrca                                             ; $7307: $0f

jr_01c_7308:
	dec  sp                                          ; $7308: $3b
	res  1, a                                        ; $7309: $cb $8f
	adc  [hl]                                        ; $730b: $8e
	adc  a                                           ; $730c: $8f
	sbc  l                                           ; $730d: $9d

jr_01c_730e:
	rra                                              ; $730e: $1f
	dec  de                                          ; $730f: $1b
	rra                                              ; $7310: $1f
	scf                                              ; $7311: $37
	ccf                                              ; $7312: $3f
	ld   l, a                                        ; $7313: $6f
	ld   a, a                                        ; $7314: $7f
	rst  JumpTable                                         ; $7315: $df
	cp   $3e                                         ; $7316: $fe $3e
	add  b                                           ; $7318: $80
	db   $fc                                         ; $7319: $fc

jr_01c_731a:
	add  b                                           ; $731a: $80
	ld   hl, sp+$07                                  ; $731b: $f8 $07
	ldh  a, [$f1]                                    ; $731d: $f0 $f1
	ld   bc, $0203                                   ; $731f: $01 $03 $02
	ld   b, $04                                      ; $7322: $06 $04
	db   $fc                                         ; $7324: $fc
	adc  h                                           ; $7325: $8c
	nop                                              ; $7326: $00
	add  c                                           ; $7327: $81
	rst  $38                                         ; $7328: $ff
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	add  h                                           ; $732b: $84
	rst  $38                                         ; $732c: $ff
	add  e                                           ; $732d: $83

jr_01c_732e:
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	rst  $38                                         ; $7330: $ff
	add  b                                           ; $7331: $80
	nop                                              ; $7332: $00
	add  b                                           ; $7333: $80
	add  b                                           ; $7334: $80
	add  b                                           ; $7335: $80
	ret  nz                                          ; $7336: $c0

	ld   bc, $7c83                                   ; $7337: $01 $83 $7c
	add  b                                           ; $733a: $80
	ld   hl, sp+$09                                  ; $733b: $f8 $09
	ldh  a, [$f1]                                    ; $733d: $f0 $f1
	pop  hl                                          ; $733f: $e1
	db   $e3                                         ; $7340: $e3
	jp   nz, $87c6                                   ; $7341: $c2 $c6 $87

	adc  a                                           ; $7344: $8f
	rrca                                             ; $7345: $0f
	nop                                              ; $7346: $00
	add  b                                           ; $7347: $80
	ccf                                              ; $7348: $3f
	add  d                                           ; $7349: $82
	ld   a, a                                        ; $734a: $7f
	add  c                                           ; $734b: $81
	nop                                              ; $734c: $00
	add  b                                           ; $734d: $80
	add  b                                           ; $734e: $80
	nop                                              ; $734f: $00
	rst  $38                                         ; $7350: $ff
	add  h                                           ; $7351: $84
	nop                                              ; $7352: $00
	ld   c, $ff                                      ; $7353: $0e $ff
	nop                                              ; $7355: $00
	ld   a, $00                                      ; $7356: $3e $00
	ld   h, b                                        ; $7358: $60
	nop                                              ; $7359: $00
	jr   nc, jr_01c_735c                             ; $735a: $30 $00

jr_01c_735c:
	jr   jr_01c_735e                                 ; $735c: $18 $00

jr_01c_735e:
	inc  c                                           ; $735e: $0c
	nop                                              ; $735f: $00
	ld   b, $00                                      ; $7360: $06 $00
	ld   a, h                                        ; $7362: $7c
	add  c                                           ; $7363: $81
	nop                                              ; $7364: $00
	ld   c, $3e                                      ; $7365: $0e $3e
	nop                                              ; $7367: $00
	ld   h, b                                        ; $7368: $60
	nop                                              ; $7369: $00
	jr   nc, jr_01c_736c                             ; $736a: $30 $00

jr_01c_736c:
	jr   jr_01c_736e                                 ; $736c: $18 $00

jr_01c_736e:
	inc  c                                           ; $736e: $0c
	nop                                              ; $736f: $00
	ld   b, $00                                      ; $7370: $06 $00
	ld   a, h                                        ; $7372: $7c
	nop                                              ; $7373: $00
	rst  $38                                         ; $7374: $ff
	add  l                                           ; $7375: $85
	nop                                              ; $7376: $00
	add  b                                           ; $7377: $80
	jr   nc, jr_01c_72fa                             ; $7378: $30 $80

	jr   c, @-$7e                                    ; $737a: $38 $80

	inc  a                                           ; $737c: $3c
	add  b                                           ; $737d: $80
	ld   a, $80                                      ; $737e: $3e $80
	ccf                                              ; $7380: $3f
	add  b                                           ; $7381: $80
	ld   a, $80                                      ; $7382: $3e $80
	inc  a                                           ; $7384: $3c
	add  b                                           ; $7385: $80
	jr   c, jr_01c_7308                              ; $7386: $38 $80

	jr   nc, jr_01c_731a                             ; $7388: $30 $90

	nop                                              ; $738a: $00

jr_01c_738b:
	add  b                                           ; $738b: $80
	jr   nc, jr_01c_730e                             ; $738c: $30 $80

	inc  a                                           ; $738e: $3c
	add  b                                           ; $738f: $80
	ccf                                              ; $7390: $3f
	add  b                                           ; $7391: $80
	inc  a                                           ; $7392: $3c
	add  b                                           ; $7393: $80
	jr   nc, jr_01c_732e                             ; $7394: $30 $98

	nop                                              ; $7396: $00
	add  b                                           ; $7397: $80
	ccf                                              ; $7398: $3f
	rst  $38                                         ; $7399: $ff
	nop                                              ; $739a: $00
	xor  e                                           ; $739b: $ab
	nop                                              ; $739c: $00
	add  hl, bc                                      ; $739d: $09
	jr   z, jr_01c_73b0                              ; $739e: $28 $10

	ld   [hl], b                                     ; $73a0: $70
	jr   nc, jr_01c_738b                             ; $73a1: $30 $e8

	ld   h, b                                        ; $73a3: $60
	dec  c                                           ; $73a4: $0d
	nop                                              ; $73a5: $00
	sbc  [hl]                                        ; $73a6: $9e
	sbc  h                                           ; $73a7: $9c
	add  h                                           ; $73a8: $84
	ld   [hl-], a                                    ; $73a9: $32
	nop                                              ; $73aa: $00
	rst  $38                                         ; $73ab: $ff
	rst  $38                                         ; $73ac: $ff
	nop                                              ; $73ad: $00
	rst  $38                                         ; $73ae: $ff
	nop                                              ; $73af: $00

jr_01c_73b0:
	rst  $38                                         ; $73b0: $ff
	nop                                              ; $73b1: $00
	rst  $38                                         ; $73b2: $ff
	nop                                              ; $73b3: $00
	rst  $38                                         ; $73b4: $ff
	nop                                              ; $73b5: $00
	add  sp, $00                                     ; $73b6: $e8 $00
	ld   a, h                                        ; $73b8: $7c
	nop                                              ; $73b9: $00
	dec  b                                           ; $73ba: $05
	nop                                              ; $73bb: $00
	ld   bc, $0103                                   ; $73bc: $01 $03 $01
	rlca                                             ; $73bf: $07
	ld   b, h                                        ; $73c0: $44
	add  c                                           ; $73c1: $81
	nop                                              ; $73c2: $00
	ld   b, $6a                                      ; $73c3: $06 $6a
	ld   sp, $0107                                   ; $73c5: $31 $07 $01
	inc  bc                                          ; $73c8: $03
	ld   bc, $815f                                   ; $73c9: $01 $5f $81
	nop                                              ; $73cc: $00
	ld   bc, $006a                                   ; $73cd: $01 $6a $00
	add  b                                           ; $73d0: $80
	rla                                              ; $73d1: $17
	ld   bc, $f700                                   ; $73d2: $01 $00 $f7
	add  l                                           ; $73d5: $85
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	call $0081                                       ; $73d8: $cd $81 $00
	ld   [bc], a                                     ; $73db: $02
	ld   bc, $0203                                   ; $73dc: $01 $03 $02
	add  b                                           ; $73df: $80
	nop                                              ; $73e0: $00
	ld   [bc], a                                     ; $73e1: $02
	dec  e                                           ; $73e2: $1d
	inc  bc                                          ; $73e3: $03
	ld   e, $80                                      ; $73e4: $1e $80
	nop                                              ; $73e6: $00
	ld   [bc], a                                     ; $73e7: $02
	ld   bc, $0203                                   ; $73e8: $01 $03 $02
	add  c                                           ; $73eb: $81
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	call $0089                                       ; $73ee: $cd $89 $00
	nop                                              ; $73f1: $00
	ld   c, b                                        ; $73f2: $48
	add  b                                           ; $73f3: $80
	nop                                              ; $73f4: $00
	ld   [$039c], sp                                 ; $73f5: $08 $9c $03
	ld   bc, $9907                                   ; $73f8: $01 $07 $99
	nop                                              ; $73fb: $00
	adc  b                                           ; $73fc: $88
	inc  bc                                          ; $73fd: $03
	adc  e                                           ; $73fe: $8b
	add  b                                           ; $73ff: $80
	nop                                              ; $7400: $00
	ld   [bc], a                                     ; $7401: $02
	sub  e                                           ; $7402: $93
	ld   bc, $8192                                   ; $7403: $01 $92 $81
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	cp   a                                           ; $7408: $bf
	add  b                                           ; $7409: $80
	rla                                              ; $740a: $17
	ld   bc, $f700                                   ; $740b: $01 $00 $f7
	add  l                                           ; $740e: $85
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	ld   c, b                                        ; $7411: $48
	add  b                                           ; $7412: $80
	nop                                              ; $7413: $00
	ld   c, $8c                                      ; $7414: $0e $8c
	inc  bc                                          ; $7416: $03
	ld   bc, $8907                                   ; $7417: $01 $07 $89
	nop                                              ; $741a: $00
	adc  b                                           ; $741b: $88
	inc  bc                                          ; $741c: $03
	adc  e                                           ; $741d: $8b
	nop                                              ; $741e: $00
	add  b                                           ; $741f: $80
	inc  bc                                          ; $7420: $03
	ld   bc, $8d0f                                   ; $7421: $01 $0f $8d
	add  b                                           ; $7424: $80
	nop                                              ; $7425: $00
	inc  b                                           ; $7426: $04
	xor  a                                           ; $7427: $af
	ld   bc, $1607                                   ; $7428: $01 $07 $16
	rst  $30                                         ; $742b: $f7
	add  l                                           ; $742c: $85
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	ld   c, b                                        ; $742f: $48
	add  b                                           ; $7430: $80
	nop                                              ; $7431: $00
	ld   c, $bc                                      ; $7432: $0e $bc
	inc  bc                                          ; $7434: $03
	ld   bc, $b907                                   ; $7435: $01 $07 $b9
	nop                                              ; $7438: $00
	adc  b                                           ; $7439: $88
	inc  bc                                          ; $743a: $03
	adc  e                                           ; $743b: $8b
	nop                                              ; $743c: $00
	or   b                                           ; $743d: $b0
	inc  bc                                          ; $743e: $03
	ld   bc, $bd0f                                   ; $743f: $01 $0f $bd
	add  b                                           ; $7442: $80
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	ld   c, b                                        ; $7445: $48
	adc  c                                           ; $7446: $89
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	ld   c, b                                        ; $7449: $48
	add  b                                           ; $744a: $80
	sub  b                                           ; $744b: $90
	ld   c, $ac                                      ; $744c: $0e $ac
	inc  bc                                          ; $744e: $03
	ld   bc, $a907                                   ; $744f: $01 $07 $a9
	sub  b                                           ; $7452: $90
	jr   jr_01c_7458                                 ; $7453: $18 $03

	adc  e                                           ; $7455: $8b
	nop                                              ; $7456: $00
	and  b                                           ; $7457: $a0

jr_01c_7458:
	inc  bc                                          ; $7458: $03
	ld   bc, $ad0f                                   ; $7459: $01 $0f $ad
	add  b                                           ; $745c: $80
	nop                                              ; $745d: $00
	inc  b                                           ; $745e: $04
	xor  a                                           ; $745f: $af
	ld   bc, $1607                                   ; $7460: $01 $07 $16
	rst  $30                                         ; $7463: $f7
	add  l                                           ; $7464: $85
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	ld   c, b                                        ; $7467: $48
	add  b                                           ; $7468: $80
	sbc  l                                           ; $7469: $9d
	ld   c, $dc                                      ; $746a: $0e $dc
	inc  bc                                          ; $746c: $03
	ld   bc, $d907                                   ; $746d: $01 $07 $d9
	sbc  l                                           ; $7470: $9d
	dec  d                                           ; $7471: $15
	inc  bc                                          ; $7472: $03
	adc  e                                           ; $7473: $8b
	nop                                              ; $7474: $00
	ret  nc                                          ; $7475: $d0

	inc  bc                                          ; $7476: $03
	ld   bc, $dd0f                                   ; $7477: $01 $0f $dd
	add  b                                           ; $747a: $80
	nop                                              ; $747b: $00
	ld   [$030c], sp                                 ; $747c: $08 $0c $03
	ld   bc, $0107                                   ; $747f: $01 $07 $01
	inc  bc                                          ; $7482: $03
	ld   bc, $7d3f                                   ; $7483: $01 $3f $7d
	add  c                                           ; $7486: $81
	nop                                              ; $7487: $00
	inc  e                                           ; $7488: $1c
	ld   c, b                                        ; $7489: $48
	or   d                                           ; $748a: $b2
	rrca                                             ; $748b: $0f
	ld   [hl], c                                     ; $748c: $71
	inc  bc                                          ; $748d: $03
	ld   bc, $7907                                   ; $748e: $01 $07 $79
	inc  bc                                          ; $7491: $03
	dec  sp                                          ; $7492: $3b
	inc  bc                                          ; $7493: $03
	add  hl, sp                                      ; $7494: $39
	rrca                                             ; $7495: $0f
	ld   a, l                                        ; $7496: $7d
	inc  bc                                          ; $7497: $03
	ld   bc, $7d0f                                   ; $7498: $01 $0f $7d
	inc  bc                                          ; $749b: $03
	or   e                                           ; $749c: $b3
	inc  a                                           ; $749d: $3c
	inc  bc                                          ; $749e: $03
	ld   bc, $0107                                   ; $749f: $01 $07 $01
	inc  bc                                          ; $74a2: $03
	ld   bc, $7c0e                                   ; $74a3: $01 $0e $7c
	add  c                                           ; $74a6: $81
	nop                                              ; $74a7: $00
	inc  e                                           ; $74a8: $1c
	ld   c, b                                        ; $74a9: $48
	and  d                                           ; $74aa: $a2
	rrca                                             ; $74ab: $0f
	ld   d, c                                        ; $74ac: $51
	inc  bc                                          ; $74ad: $03
	ld   bc, $5907                                   ; $74ae: $01 $07 $59
	inc  bc                                          ; $74b1: $03
	dec  hl                                          ; $74b2: $2b
	inc  bc                                          ; $74b3: $03
	add  hl, hl                                      ; $74b4: $29
	rrca                                             ; $74b5: $0f
	ld   e, l                                        ; $74b6: $5d
	inc  bc                                          ; $74b7: $03
	ld   bc, $5d0f                                   ; $74b8: $01 $0f $5d
	inc  bc                                          ; $74bb: $03
	and  e                                           ; $74bc: $a3
	scf                                              ; $74bd: $37
	ld   bc, $0107                                   ; $74be: $01 $07 $01
	inc  bc                                          ; $74c1: $03
	ld   bc, $180f                                   ; $74c2: $01 $0f $18
	ld   l, l                                        ; $74c5: $6d
	add  c                                           ; $74c6: $81
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	ld   c, b                                        ; $74c9: $48
	add  b                                           ; $74ca: $80
	nop                                              ; $74cb: $00
	ld   c, $ec                                      ; $74cc: $0e $ec
	inc  bc                                          ; $74ce: $03
	ld   bc, $e907                                   ; $74cf: $01 $07 $e9
	nop                                              ; $74d2: $00
	adc  b                                           ; $74d3: $88
	inc  bc                                          ; $74d4: $03
	adc  e                                           ; $74d5: $8b
	nop                                              ; $74d6: $00
	ldh  [$03], a                                    ; $74d7: $e0 $03
	ld   bc, $ed0f                                   ; $74d9: $01 $0f $ed
	add  b                                           ; $74dc: $80
	nop                                              ; $74dd: $00
	ld   [$0127], sp                                 ; $74de: $08 $27 $01
	rlca                                             ; $74e1: $07
	ld   bc, $0103                                   ; $74e2: $01 $03 $01
	rrca                                             ; $74e5: $0f
	add  hl, bc                                      ; $74e6: $09
	ld   l, h                                        ; $74e7: $6c
	add  c                                           ; $74e8: $81
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	ld   c, b                                        ; $74eb: $48
	add  c                                           ; $74ec: $81
	nop                                              ; $74ed: $00
	ld   [bc], a                                     ; $74ee: $02
	add  [hl]                                        ; $74ef: $86
	rlca                                             ; $74f0: $07
	add  c                                           ; $74f1: $81
	add  b                                           ; $74f2: $80
	nop                                              ; $74f3: $00
	ld   [bc], a                                     ; $74f4: $02
	adc  b                                           ; $74f5: $88
	inc  bc                                          ; $74f6: $03
	adc  e                                           ; $74f7: $8b
	add  b                                           ; $74f8: $80
	nop                                              ; $74f9: $00
	ld   [bc], a                                     ; $74fa: $02
	add  [hl]                                        ; $74fb: $86
	rlca                                             ; $74fc: $07
	add  c                                           ; $74fd: $81
	add  c                                           ; $74fe: $81
	nop                                              ; $74ff: $00
	ld   [$43b4], sp                                 ; $7500: $08 $b4 $43
	ld   bc, $6b07                                   ; $7503: $01 $07 $6b
	ld   h, b                                        ; $7506: $60
	rst  $28                                         ; $7507: $ef
	jp   $819e                                       ; $7508: $c3 $9e $81


	nop                                              ; $750b: $00
	inc  e                                           ; $750c: $1c
	db   $fd                                         ; $750d: $fd
	ld   bc, $0143                           ; $750e: $01 $43 $01
	rlca                                             ; $7511: $07
	ld   l, e                                        ; $7512: $6b
	ld   h, b                                        ; $7513: $60
	rst  $28                                         ; $7514: $ef
	jp   $2407                                       ; $7515: $c3 $07 $24


	ld   bc, $0143                           ; $7518: $01 $43 $01
	rlca                                             ; $751b: $07
	ld   h, h                                        ; $751c: $64
	ld   bc, $c303                                   ; $751d: $01 $03 $c3
	inc  bc                                          ; $7520: $03
	or   e                                           ; $7521: $b3
	ld   b, e                                        ; $7522: $43
	ld   bc, $6b07                                   ; $7523: $01 $07 $6b
	ld   h, b                                        ; $7526: $60
	rst  $28                                         ; $7527: $ef
	jp   $818e                                       ; $7528: $c3 $8e $81


	nop                                              ; $752b: $00
	inc  e                                           ; $752c: $1c
	db   $ed                                         ; $752d: $ed
	ld   bc, $0143                           ; $752e: $01 $43 $01
	rlca                                             ; $7531: $07
	ld   l, e                                        ; $7532: $6b
	ld   h, b                                        ; $7533: $60
	rst  $28                                         ; $7534: $ef
	jp   $2407                                       ; $7535: $c3 $07 $24


	ld   bc, $0143                           ; $7538: $01 $43 $01
	rlca                                             ; $753b: $07
	ld   h, h                                        ; $753c: $64
	ld   bc, $c303                                   ; $753d: $01 $03 $c3
	inc  bc                                          ; $7540: $03
	di                                               ; $7541: $f3
	ld   b, e                                        ; $7542: $43
	ld   bc, $6407                                   ; $7543: $01 $07 $64
	ld   bc, $c303                                   ; $7546: $01 $03 $c3
	ld   e, h                                        ; $7549: $5c
	add  c                                           ; $754a: $81
	nop                                              ; $754b: $00
	inc  c                                           ; $754c: $0c
	ldh  a, [$03]                                    ; $754d: $f0 $03
	ld   bc, $ac00                                   ; $754f: $01 $00 $ac
	rlca                                             ; $7552: $07
	ld   bc, $0103                                   ; $7553: $01 $03 $01
	rrca                                             ; $7556: $0f
	ld   bc, $0103                                   ; $7557: $01 $03 $01
	add  e                                           ; $755a: $83
	nop                                              ; $755b: $00
	ld   a, [bc]                                     ; $755c: $0a
	rra                                              ; $755d: $1f
	dec  de                                          ; $755e: $1b
	cp   $43                                         ; $755f: $fe $43
	ld   bc, $6407                                   ; $7561: $01 $07 $64
	ld   bc, $c303                                   ; $7564: $01 $03 $c3
	ld   c, h                                        ; $7567: $4c
	add  c                                           ; $7568: $81
	nop                                              ; $7569: $00
	ld   bc, $54a3                                   ; $756a: $01 $a3 $54
	add  c                                           ; $756d: $81
	nop                                              ; $756e: $00
	add  b                                           ; $756f: $80
	rla                                              ; $7570: $17
	adc  d                                           ; $7571: $8a
	nop                                              ; $7572: $00
	ld   c, $54                                      ; $7573: $0e $54
	cp   a                                           ; $7575: $bf
	inc  bc                                          ; $7576: $03
	ld   bc, $0107                                   ; $7577: $01 $07 $01
	inc  bc                                          ; $757a: $03
	ld   bc, $010f                                   ; $757b: $01 $0f $01
	inc  bc                                          ; $757e: $03
	rla                                              ; $757f: $17
	nop                                              ; $7580: $00
	and  e                                           ; $7581: $a3
	db   $10                                         ; $7582: $10
	add  c                                           ; $7583: $81
	nop                                              ; $7584: $00
	add  b                                           ; $7585: $80
	ld   d, b                                        ; $7586: $50
	adc  d                                           ; $7587: $8a
	nop                                              ; $7588: $00
	ld   c, $10                                      ; $7589: $0e $10
	xor  a                                           ; $758b: $af
	inc  bc                                          ; $758c: $03
	ld   bc, $0107                                   ; $758d: $01 $07 $01
	inc  bc                                          ; $7590: $03
	ld   bc, $010f                                   ; $7591: $01 $0f $01
	inc  bc                                          ; $7594: $03
	rlca                                             ; $7595: $07
	nop                                              ; $7596: $00
	and  e                                           ; $7597: $a3
	ld   d, h                                        ; $7598: $54
	add  c                                           ; $7599: $81
	nop                                              ; $759a: $00
	add  b                                           ; $759b: $80
	rla                                              ; $759c: $17
	adc  d                                           ; $759d: $8a
	nop                                              ; $759e: $00
	add  hl, de                                      ; $759f: $19
	ld   d, h                                        ; $75a0: $54
	sbc  a                                           ; $75a1: $9f
	inc  bc                                          ; $75a2: $03
	ld   bc, $0107                                   ; $75a3: $01 $07 $01
	inc  bc                                          ; $75a6: $03
	ld   bc, $010f                                   ; $75a7: $01 $0f $01
	inc  bc                                          ; $75aa: $03
	scf                                              ; $75ab: $37
	nop                                              ; $75ac: $00
	ld   d, e                                        ; $75ad: $53
	db   $d3                                         ; $75ae: $d3
	inc  bc                                          ; $75af: $03
	ld   bc, $3022                                   ; $75b0: $01 $22 $30
	inc  bc                                          ; $75b3: $03
	ld   bc, $6372                                   ; $75b4: $01 $72 $63
	nop                                              ; $75b7: $00
	ld   h, e                                        ; $75b8: $63
	ld   [hl], d                                     ; $75b9: $72
	add  b                                           ; $75ba: $80
	nop                                              ; $75bb: $00
	jr   jr_01c_762f                                 ; $75bc: $18 $71

	ld   h, c                                        ; $75be: $61
	ld   bc, $d303                                   ; $75bf: $01 $03 $d3
	ld   a, a                                        ; $75c2: $7f
	inc  bc                                          ; $75c3: $03
	ld   bc, $0107                                   ; $75c4: $01 $07 $01
	inc  bc                                          ; $75c7: $03
	ld   bc, $010f                                   ; $75c8: $01 $0f $01
	inc  bc                                          ; $75cb: $03
	daa                                              ; $75cc: $27
	nop                                              ; $75cd: $00
	call nc, $0103                                   ; $75ce: $d4 $03 $01
	rlca                                             ; $75d1: $07
	sbc  c                                           ; $75d2: $99
	sub  e                                           ; $75d3: $93
	ld   bc, $8692                                   ; $75d4: $01 $92 $86
	nop                                              ; $75d7: $00
	add  b                                           ; $75d8: $80
	ld   a, [hl+]                                    ; $75d9: $2a
	ld   d, $00                                      ; $75da: $16 $00
	ld   a, [hl+]                                    ; $75dc: $2a
	cp   a                                           ; $75dd: $bf
	db   $10                                         ; $75de: $10
	jr   nc, jr_01c_7606                             ; $75df: $30 $25

	inc  bc                                          ; $75e1: $03
	ld   bc, $010f                                   ; $75e2: $01 $0f $01
	inc  bc                                          ; $75e5: $03
	ld   bc, $00d6                                   ; $75e6: $01 $d6 $00
	call nz, $0103                                   ; $75e9: $c4 $03 $01
	rlca                                             ; $75ec: $07
	add  hl, bc                                      ; $75ed: $09
	inc  bc                                          ; $75ee: $03
	ld   bc, $8d0f                                   ; $75ef: $01 $0f $8d
	add  l                                           ; $75f2: $85
	nop                                              ; $75f3: $00
	jr   @+$2a                                       ; $75f4: $18 $28

	inc  bc                                          ; $75f6: $03
	nop                                              ; $75f7: $00
	inc  bc                                          ; $75f8: $03
	halt                                             ; $75f9: $76
	rlca                                             ; $75fa: $07
	ld   bc, $0103                                   ; $75fb: $01 $03 $01
	rra                                              ; $75fe: $1f
	pop  de                                          ; $75ff: $d1
	inc  bc                                          ; $7600: $03
	ld   bc, $d907                                   ; $7601: $01 $07 $d9
	nop                                              ; $7604: $00
	db   $f4                                         ; $7605: $f4

jr_01c_7606:
	inc  bc                                          ; $7606: $03
	ld   bc, $0907                                   ; $7607: $01 $07 $09
	inc  bc                                          ; $760a: $03
	ld   bc, $bd0f                                   ; $760b: $01 $0f $bd
	add  l                                           ; $760e: $85
	nop                                              ; $760f: $00
	jr   @+$30                                       ; $7610: $18 $2e

	rlca                                             ; $7612: $07
	nop                                              ; $7613: $00
	rlca                                             ; $7614: $07
	ld   h, b                                        ; $7615: $60
	rlca                                             ; $7616: $07
	ld   bc, $0103                                   ; $7617: $01 $03 $01
	ccf                                              ; $761a: $3f
	pop  af                                          ; $761b: $f1
	inc  bc                                          ; $761c: $03
	ld   bc, $c907                                   ; $761d: $01 $07 $c9
	nop                                              ; $7620: $00
	db   $e4                                         ; $7621: $e4
	inc  bc                                          ; $7622: $03
	ld   bc, $0907                                   ; $7623: $01 $07 $09
	inc  bc                                          ; $7626: $03
	ld   bc, $ad0f                                   ; $7627: $01 $0f $ad
	add  l                                           ; $762a: $85
	nop                                              ; $762b: $00
	jr   @-$20                                       ; $762c: $18 $de

	pop  af                                          ; $762e: $f1

jr_01c_762f:
	nop                                              ; $762f: $00
	pop  af                                          ; $7630: $f1
	and  b                                           ; $7631: $a0
	rlca                                             ; $7632: $07
	ld   bc, $0103                                   ; $7633: $01 $03 $01
	rra                                              ; $7636: $1f
	pop  de                                          ; $7637: $d1
	inc  bc                                          ; $7638: $03
	ld   bc, $f907                                   ; $7639: $01 $07 $f9
	nop                                              ; $763c: $00
	sub  h                                           ; $763d: $94
	inc  bc                                          ; $763e: $03
	ld   bc, $0907                                   ; $763f: $01 $07 $09
	inc  bc                                          ; $7642: $03
	ld   bc, $dd0f                                   ; $7643: $01 $0f $dd
	add  l                                           ; $7646: $85
	nop                                              ; $7647: $00
	jr   @-$20                                       ; $7648: $18 $de

	pop  af                                          ; $764a: $f1
	nop                                              ; $764b: $00
	pop  af                                          ; $764c: $f1
	or   b                                           ; $764d: $b0
	rlca                                             ; $764e: $07
	ld   bc, $0103                                   ; $764f: $01 $03 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7652: $cf
	ld   bc, $0103                                   ; $7653: $01 $03 $01
	rlca                                             ; $7656: $07
	jp   hl                                          ; $7657: $e9


	nop                                              ; $7658: $00
	add  h                                           ; $7659: $84
	inc  bc                                          ; $765a: $03
	ld   bc, $0907                                   ; $765b: $01 $07 $09
	inc  bc                                          ; $765e: $03
	ld   bc, $cd0f                                   ; $765f: $01 $0f $cd
	add  l                                           ; $7662: $85
	nop                                              ; $7663: $00
	jr   jr_01c_7694                                 ; $7664: $18 $2e

	rlca                                             ; $7666: $07
	nop                                              ; $7667: $00
	rlca                                             ; $7668: $07
	or   a                                           ; $7669: $b7
	ld   bc, $0103                                   ; $766a: $01 $03 $01
	ld   a, [de]                                     ; $766d: $1a
	inc  bc                                          ; $766e: $03
	ld   bc, $010f                                   ; $766f: $01 $0f $01
	inc  bc                                          ; $7672: $03
	ld   bc, $b4c6                                   ; $7673: $01 $c6 $b4
	inc  bc                                          ; $7676: $03
	ld   bc, $0907                                   ; $7677: $01 $07 $09
	inc  bc                                          ; $767a: $03
	ld   bc, $fd0f                                   ; $767b: $01 $0f $fd
	add  l                                           ; $767e: $85
	nop                                              ; $767f: $00
	inc  b                                           ; $7680: $04
	jr   z, jr_01c_7686                              ; $7681: $28 $03

	nop                                              ; $7683: $00
	inc  bc                                          ; $7684: $03
	ld   h, b                                        ; $7685: $60

jr_01c_7686:
	adc  c                                           ; $7686: $89
	nop                                              ; $7687: $00
	ld   [$03a4], sp                                 ; $7688: $08 $a4 $03
	ld   bc, $0907                                   ; $768b: $01 $07 $09
	inc  bc                                          ; $768e: $03
	ld   bc, $ed0f                                   ; $768f: $01 $0f $ed
	add  l                                           ; $7692: $85
	nop                                              ; $7693: $00

jr_01c_7694:
	add  b                                           ; $7694: $80
	ld   a, [hl+]                                    ; $7695: $2a
	inc  b                                           ; $7696: $04
	nop                                              ; $7697: $00
	ld   a, [hl+]                                    ; $7698: $2a
	or   $03                                         ; $7699: $f6 $03
	sub  a                                           ; $769b: $97
	sub  a                                           ; $769c: $97
	nop                                              ; $769d: $00
	add  b                                           ; $769e: $80
	ld   e, l                                        ; $769f: $5d
	add  c                                           ; $76a0: $81
	nop                                              ; $76a1: $00
	add  b                                           ; $76a2: $80
	add  h                                           ; $76a3: $84
	sub  a                                           ; $76a4: $97
	nop                                              ; $76a5: $00
	add  b                                           ; $76a6: $80
	ld   c, l                                        ; $76a7: $4d
	add  c                                           ; $76a8: $81
	nop                                              ; $76a9: $00
	add  hl, bc                                      ; $76aa: $09
	or   h                                           ; $76ab: $b4
	inc  bc                                          ; $76ac: $03
	ld   bc, $0107                                   ; $76ad: $01 $07 $01
	inc  bc                                          ; $76b0: $03
	ld   bc, $010f                                   ; $76b1: $01 $0f $01
	cp   h                                           ; $76b4: $bc
	rst  $38                                         ; $76b5: $ff
	nop                                              ; $76b6: $00
	or   [hl]                                        ; $76b7: $b6
	nop                                              ; $76b8: $00
	add  hl, bc                                      ; $76b9: $09
	rrca                                             ; $76ba: $0f
	nop                                              ; $76bb: $00
	db   $10                                         ; $76bc: $10
	ld   [bc], a                                     ; $76bd: $02
	ld   [hl+], a                                    ; $76be: $22
	ld   b, $03                                      ; $76bf: $06 $03
	ld   b, l                                        ; $76c1: $45

jr_01c_76c2:
	ld   a, [bc]                                     ; $76c2: $0a
	adc  d                                           ; $76c3: $8a
	add  b                                           ; $76c4: $80
	ld   d, l                                        ; $76c5: $55
	add  b                                           ; $76c6: $80
	xor  d                                           ; $76c7: $aa
	add  b                                           ; $76c8: $80
	ld   a, a                                        ; $76c9: $7f
	ld   bc, $080b                                   ; $76ca: $01 $0b $08
	add  b                                           ; $76cd: $80
	dec  b                                           ; $76ce: $05
	ld   bc, $0b08                                   ; $76cf: $01 $08 $0b
	add  b                                           ; $76d2: $80
	dec  b                                           ; $76d3: $05
	add  b                                           ; $76d4: $80
	add  e                                           ; $76d5: $83
	add  b                                           ; $76d6: $80
	dec  b                                           ; $76d7: $05
	inc  bc                                          ; $76d8: $03
	or   d                                           ; $76d9: $b2
	and  d                                           ; $76da: $a2
	ld   b, l                                        ; $76db: $45
	ld   d, l                                        ; $76dc: $55
	add  b                                           ; $76dd: $80
	xor  d                                           ; $76de: $aa
	ld   bc, $55d5                                   ; $76df: $01 $d5 $55
	add  b                                           ; $76e2: $80
	ld   a, [$3f03]                                  ; $76e3: $fa $03 $3f
	rst  $38                                         ; $76e6: $ff
	ccf                                              ; $76e7: $3f
	ld   a, a                                        ; $76e8: $7f
	add  b                                           ; $76e9: $80
	rst  $38                                         ; $76ea: $ff
	inc  c                                           ; $76eb: $0c
	rst  $28                                         ; $76ec: $ef
	rst  $38                                         ; $76ed: $ff
	rst  $20                                         ; $76ee: $e7
	rst  $38                                         ; $76ef: $ff
	rst  $30                                         ; $76f0: $f7
	nop                                              ; $76f1: $00
	add  b                                           ; $76f2: $80
	nop                                              ; $76f3: $00
	ret  nz                                          ; $76f4: $c0

	and  b                                           ; $76f5: $a0
	ld   b, b                                        ; $76f6: $40
	ld   e, b                                        ; $76f7: $58
	ld   hl, sp-$80                                  ; $76f8: $f8 $80
	cp   $05                                         ; $76fa: $fe $05
	rst  $38                                         ; $76fc: $ff
	rst  $28                                         ; $76fd: $ef
	rst  $38                                         ; $76fe: $ff
	db   $e3                                         ; $76ff: $e3
	rst  $38                                         ; $7700: $ff
	di                                               ; $7701: $f3
	adc  d                                           ; $7702: $8a
	nop                                              ; $7703: $00
	add  b                                           ; $7704: $80
	ret  nz                                          ; $7705: $c0

	add  b                                           ; $7706: $80
	ldh  a, [$80]                                    ; $7707: $f0 $80
	rlca                                             ; $7709: $07
	ld   [bc], a                                     ; $770a: $02
	inc  bc                                          ; $770b: $03
	ld   [bc], a                                     ; $770c: $02
	ld   bc, $0088                                   ; $770d: $01 $88 $00
	rlca                                             ; $7710: $07
	ld   a, e                                        ; $7711: $7b
	ei                                               ; $7712: $fb
	cp   l                                           ; $7713: $bd
	db   $fd                                         ; $7714: $fd
	ld   e, h                                        ; $7715: $5c
	db   $fc                                         ; $7716: $fc
	ld   e, $7e                                      ; $7717: $1e $7e
	add  b                                           ; $7719: $80
	ld   a, $80                                      ; $771a: $3e $80
	dec  de                                          ; $771c: $1b
	add  b                                           ; $771d: $80
	inc  c                                           ; $771e: $0c
	add  b                                           ; $771f: $80
	inc  b                                           ; $7720: $04
	inc  bc                                          ; $7721: $03
	or   $fe                                         ; $7722: $f6 $fe
	rst  $30                                         ; $7724: $f7
	rst  $38                                         ; $7725: $ff
	add  b                                           ; $7726: $80
	ld   [hl], a                                     ; $7727: $77
	add  b                                           ; $7728: $80
	inc  sp                                          ; $7729: $33
	add  b                                           ; $772a: $80
	rra                                              ; $772b: $1f
	add  b                                           ; $772c: $80
	ld   bc, $8480                                   ; $772d: $01 $80 $84
	add  b                                           ; $7730: $80
	ld   b, $01                                      ; $7731: $06 $01
	rlca                                             ; $7733: $07
	nop                                              ; $7734: $00
	add  b                                           ; $7735: $80
	ld   bc, $8504                                   ; $7736: $01 $04 $85
	add  c                                           ; $7739: $81
	jp   $e1c1                                       ; $773a: $c3 $c1 $e1


	add  c                                           ; $773d: $81
	ldh  [$80], a                                    ; $773e: $e0 $80
	jr   nc, jr_01c_76c2                             ; $7740: $30 $80

	jr   @+$0b                                       ; $7742: $18 $09

	dec  e                                           ; $7744: $1d
	db   $ec                                         ; $7745: $ec
	inc  [hl]                                        ; $7746: $34
	ld   a, h                                        ; $7747: $7c
	add  $bc                                         ; $7748: $c6 $bc
	db   $fc                                         ; $774a: $fc
	call z, $f2fe                                    ; $774b: $cc $fe $f2
	add  b                                           ; $774e: $80
	ld   a, [$f705]                                  ; $774f: $fa $05 $f7
	ld   [hl], a                                     ; $7752: $77
	ld   [hl], e                                     ; $7753: $73
	inc  sp                                          ; $7754: $33
	ret  nz                                          ; $7755: $c0

	nop                                              ; $7756: $00
	add  b                                           ; $7757: $80
	cp   d                                           ; $7758: $ba
	add  b                                           ; $7759: $80
	add  d                                           ; $775a: $82
	inc  de                                          ; $775b: $13
	cp   $00                                         ; $775c: $fe $00
	inc  e                                           ; $775e: $1c
	nop                                              ; $775f: $00
	ldh  [c], a                                      ; $7760: $e2
	inc  e                                           ; $7761: $1c
	sbc  h                                           ; $7762: $9c
	cp   [hl]                                        ; $7763: $be
	ld   [hl], d                                     ; $7764: $72
	ld   [hl-], a                                    ; $7765: $32
	jr   nz, jr_01c_7768                             ; $7766: $20 $00

jr_01c_7768:
	ld   b, d                                        ; $7768: $42
	nop                                              ; $7769: $00
	cp   h                                           ; $776a: $bc
	jr   nz, jr_01c_7791                             ; $776b: $20 $24

	or   l                                           ; $776d: $b5
	sub  l                                           ; $776e: $95
	or   l                                           ; $776f: $b5
	add  b                                           ; $7770: $80
	inc  h                                           ; $7771: $24
	add  hl, de                                      ; $7772: $19
	and  c                                           ; $7773: $a1
	and  b                                           ; $7774: $a0
	or   c                                           ; $7775: $b1
	add  h                                           ; $7776: $84
	and  l                                           ; $7777: $a5
	ld   a, [de]                                     ; $7778: $1a
	and  d                                           ; $7779: $a2
	dec  b                                           ; $777a: $05
	ld   [hl], c                                     ; $777b: $71
	db   $e3                                         ; $777c: $e3
	sbc  c                                           ; $777d: $99
	ld   [hl], b                                     ; $777e: $70
	ld   l, a                                        ; $777f: $6f
	ld   a, c                                        ; $7780: $79
	ld   [hl], e                                     ; $7781: $73
	ld   a, e                                        ; $7782: $7b
	ld   a, a                                        ; $7783: $7f
	ld   h, d                                        ; $7784: $62
	ld   h, [hl]                                     ; $7785: $66
	nop                                              ; $7786: $00
	di                                               ; $7787: $f3
	ccf                                              ; $7788: $3f
	cp   a                                           ; $7789: $bf
	ccf                                              ; $778a: $3f
	dec  l                                           ; $778b: $2d
	dec  a                                           ; $778c: $3d
	add  b                                           ; $778d: $80
	ld   a, a                                        ; $778e: $7f
	dec  b                                           ; $778f: $05
	ld   e, a                                        ; $7790: $5f

jr_01c_7791:
	ld   a, a                                        ; $7791: $7f
	ei                                               ; $7792: $fb
	cp   e                                           ; $7793: $bb
	or   a                                           ; $7794: $b7
	scf                                              ; $7795: $37
	add  b                                           ; $7796: $80
	ld   b, $82                                      ; $7797: $06 $82
	ret  nz                                          ; $7799: $c0

	ld   bc, $8141                                   ; $779a: $01 $41 $81
	add  b                                           ; $779d: $80
	add  e                                           ; $779e: $83
	ld   bc, $0382                                   ; $779f: $01 $82 $03
	add  b                                           ; $77a2: $80
	rlca                                             ; $77a3: $07
	nop                                              ; $77a4: $00
	ld   b, $81                                      ; $77a5: $06 $81
	rlca                                             ; $77a7: $07
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	add  b                                           ; $77aa: $80
	ld   hl, sp-$7e                                  ; $77ab: $f8 $82
	ldh  a, [$80]                                    ; $77ad: $f0 $80
	ldh  [$81], a                                    ; $77af: $e0 $81
	ret  nz                                          ; $77b1: $c0

	ld   bc, $8040                                   ; $77b2: $01 $40 $80
	adc  e                                           ; $77b5: $8b
	nop                                              ; $77b6: $00
	ld   [bc], a                                     ; $77b7: $02
	ld   bc, $0302                                   ; $77b8: $01 $02 $03
	add  b                                           ; $77bb: $80
	rlca                                             ; $77bc: $07
	dec  c                                           ; $77bd: $0d
	ld   bc, $0f0e                                   ; $77be: $01 $0e $0f
	rra                                              ; $77c1: $1f
	ld   e, $3f                                      ; $77c2: $1e $3f
	ld   a, l                                        ; $77c4: $7d
	ld   a, a                                        ; $77c5: $7f
	or   e                                           ; $77c6: $b3
	rst  $38                                         ; $77c7: $ff
	adc  [hl]                                        ; $77c8: $8e
	rst  $38                                         ; $77c9: $ff
	cp   $ff                                         ; $77ca: $fe $ff
	add  b                                           ; $77cc: $80
	rst  $30                                         ; $77cd: $f7
	ld   a, [bc]                                     ; $77ce: $0a
	nop                                              ; $77cf: $00
	rst  $38                                         ; $77d0: $ff
	cp   [hl]                                        ; $77d1: $be
	rst  $38                                         ; $77d2: $ff
	jr   c, @+$01                                    ; $77d3: $38 $ff

	ld   [hl], l                                     ; $77d5: $75
	rst  $38                                         ; $77d6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d7: $cf
	rst  $38                                         ; $77d8: $ff
	inc  sp                                          ; $77d9: $33
	add  b                                           ; $77da: $80
	rst  $30                                         ; $77db: $f7
	inc  b                                           ; $77dc: $04
	rst  $38                                         ; $77dd: $ff
	di                                               ; $77de: $f3
	rst  $38                                         ; $77df: $ff
	ld   d, [hl]                                     ; $77e0: $56
	xor  d                                           ; $77e1: $aa
	add  b                                           ; $77e2: $80
	ld   d, l                                        ; $77e3: $55
	add  b                                           ; $77e4: $80
	ld   [$f505], a                                  ; $77e5: $ea $05 $f5
	dec  [hl]                                        ; $77e8: $35
	ld   a, $1e                                      ; $77e9: $3e $1e
	sbc  a                                           ; $77eb: $9f
	ld   a, a                                        ; $77ec: $7f
	add  d                                           ; $77ed: $82
	rst  $38                                         ; $77ee: $ff
	ld   a, [bc]                                     ; $77ef: $0a
	pop  af                                          ; $77f0: $f1
	rst  $38                                         ; $77f1: $ff
	or   $ff                                         ; $77f2: $f6 $ff
	ld   a, a                                        ; $77f4: $7f
	rst  $38                                         ; $77f5: $ff
	ld   [hl-], a                                    ; $77f6: $32
	cp   $9b                                         ; $77f7: $fe $9b
	rst  $38                                         ; $77f9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77fa: $cf
	add  c                                           ; $77fb: $81
	rst  $38                                         ; $77fc: $ff
	nop                                              ; $77fd: $00
	rst  $28                                         ; $77fe: $ef
	add  c                                           ; $77ff: $81
	rst  $38                                         ; $7800: $ff
	dec  b                                           ; $7801: $05
	rst  $30                                         ; $7802: $f7
	rst  $38                                         ; $7803: $ff
	ccf                                              ; $7804: $3f
	rst  $38                                         ; $7805: $ff
	rst  ToBoot                                         ; $7806: $c7
	rst  $38                                         ; $7807: $ff
	add  b                                           ; $7808: $80
	ld   a, a                                        ; $7809: $7f
	add  b                                           ; $780a: $80
	rra                                              ; $780b: $1f
	add  b                                           ; $780c: $80
	add  [hl]                                        ; $780d: $86
	add  b                                           ; $780e: $80
	add  b                                           ; $780f: $80
	ld   [bc], a                                     ; $7810: $02
	inc  c                                           ; $7811: $0c
	db   $fc                                         ; $7812: $fc
	rrca                                             ; $7813: $0f
	add  e                                           ; $7814: $83
	rst  $38                                         ; $7815: $ff
	add  b                                           ; $7816: $80
	ld   a, a                                        ; $7817: $7f
	add  b                                           ; $7818: $80
	inc  hl                                          ; $7819: $23
	add  b                                           ; $781a: $80
	rrca                                             ; $781b: $0f
	add  b                                           ; $781c: $80
	ccf                                              ; $781d: $3f
	add  d                                           ; $781e: $82
	nop                                              ; $781f: $00
	add  d                                           ; $7820: $82
	add  b                                           ; $7821: $80
	add  b                                           ; $7822: $80
	ld   a, b                                        ; $7823: $78
	inc  b                                           ; $7824: $04
	ldh  a, [$fe]                                    ; $7825: $f0 $fe
	adc  $ff                                         ; $7827: $ce $ff
	ccf                                              ; $7829: $3f
	add  b                                           ; $782a: $80
	rst  $38                                         ; $782b: $ff
	adc  d                                           ; $782c: $8a
	nop                                              ; $782d: $00
	add  b                                           ; $782e: $80
	add  b                                           ; $782f: $80
	dec  c                                           ; $7830: $0d
	ldh  [$bf], a                                    ; $7831: $e0 $bf
	ld   e, a                                        ; $7833: $5f
	db   $fc                                         ; $7834: $fc
	rst  $38                                         ; $7835: $ff
	ld   bc, $7c7f                                   ; $7836: $01 $7f $7c
	ccf                                              ; $7839: $3f
	ld   a, $1f                                      ; $783a: $3e $1f
	inc  e                                           ; $783c: $1c
	rrca                                             ; $783d: $0f
	inc  c                                           ; $783e: $0c
	add  b                                           ; $783f: $80
	rlca                                             ; $7840: $07
	ld   de, $fd01                                   ; $7841: $11 $01 $fd
	db   $fc                                         ; $7844: $fc
	nop                                              ; $7845: $00
	cp   $e6                                         ; $7846: $fe $e6
	cp   $46                                         ; $7848: $fe $46
	rst  $38                                         ; $784a: $ff
	sbc  a                                           ; $784b: $9f
	rst  $38                                         ; $784c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $784d: $cf
	rst  $38                                         ; $784e: $ff
	inc  bc                                          ; $784f: $03
	rst  $38                                         ; $7850: $ff
	pop  af                                          ; $7851: $f1
	rst  $38                                         ; $7852: $ff
	ldh  a, [c]                                      ; $7853: $f2
	add  b                                           ; $7854: $80
	db   $10                                         ; $7855: $10
	add  b                                           ; $7856: $80
	inc  e                                           ; $7857: $1c
	nop                                              ; $7858: $00
	rrca                                             ; $7859: $0f
	add  b                                           ; $785a: $80
	rlca                                             ; $785b: $07
	inc  b                                           ; $785c: $04
	add  e                                           ; $785d: $83
	inc  bc                                          ; $785e: $03
	ld   bc, $4041                                   ; $785f: $01 $41 $40
	add  c                                           ; $7862: $81
	ld   h, b                                        ; $7863: $60
	db   $10                                         ; $7864: $10
	ld   h, c                                        ; $7865: $61
	nop                                              ; $7866: $00
	ld   b, b                                        ; $7867: $40
	nop                                              ; $7868: $00
	ld   a, a                                        ; $7869: $7f
	ld   bc, $013d                                   ; $786a: $01 $3d $01
	ld   b, h                                        ; $786d: $44
	add  d                                           ; $786e: $82
	cp   b                                           ; $786f: $b8
	call nz, $0038                                  ; $7870: $c4 $38 $00
	inc  bc                                          ; $7873: $03
	ld   bc, $814d                                   ; $7874: $01 $4d $81
	add  h                                           ; $7877: $84
	nop                                              ; $7878: $00
	push hl                                          ; $7879: $e5
	add  b                                           ; $787a: $80
	call nz, $c505                                   ; $787b: $c4 $05 $c5
	push af                                          ; $787e: $f5
	push hl                                          ; $787f: $e5
	or   l                                           ; $7880: $b5
	or   h                                           ; $7881: $b4
	ld   d, l                                        ; $7882: $55
	add  c                                           ; $7883: $81
	inc  d                                           ; $7884: $14
	ld   [$0445], sp                                 ; $7885: $08 $45 $04
	rrca                                             ; $7888: $0f
	ld   l, h                                        ; $7889: $6c
	ld   h, b                                        ; $788a: $60
	ldh  a, [$c1]                                    ; $788b: $f0 $c1
	ret  nz                                          ; $788d: $c0

	ld   c, $80                                      ; $788e: $0e $80
	nop                                              ; $7890: $00
	ld   d, $02                                      ; $7891: $16 $02

jr_01c_7893:
	rst  $38                                         ; $7893: $ff
	ld   bc, $03ff                                   ; $7894: $01 $ff $03
	rst  $20                                         ; $7897: $e7
	ld   h, b                                        ; $7898: $60

jr_01c_7899:
	inc  e                                           ; $7899: $1c
	ld   a, h                                        ; $789a: $7c
	ld   h, h                                        ; $789b: $64
	ld   a, h                                        ; $789c: $7c
	ldh  a, [$f8]                                    ; $789d: $f0 $f8
	jr   nz, jr_01c_7899                             ; $789f: $20 $f8

	jr   jr_01c_7893                                 ; $78a1: $18 $f0

	ldh  [$f0], a                                    ; $78a3: $e0 $f0
	sub  b                                           ; $78a5: $90
	ldh  a, [$b7]                                    ; $78a6: $f0 $b7
	rlca                                             ; $78a8: $07
	add  b                                           ; $78a9: $80
	ld   [bc], a                                     ; $78aa: $02
	add  b                                           ; $78ab: $80
	jr   jr_01c_78b6                                 ; $78ac: $18 $08

	inc  c                                           ; $78ae: $0c
	inc  a                                           ; $78af: $3c
	jr   nc, jr_01c_78ea                             ; $78b0: $30 $38

	jr   nc, jr_01c_792c                             ; $78b2: $30 $78

	ld   h, b                                        ; $78b4: $60
	ld   [hl], b                                     ; $78b5: $70

jr_01c_78b6:
	ld   h, b                                        ; $78b6: $60
	add  b                                           ; $78b7: $80
	ldh  [$87], a                                    ; $78b8: $e0 $87
	nop                                              ; $78ba: $00
	add  c                                           ; $78bb: $81
	ld   bc, $0304                                   ; $78bc: $01 $04 $03
	ld   [bc], a                                     ; $78bf: $02
	rlca                                             ; $78c0: $07
	ld   [$800f], sp                                 ; $78c1: $08 $0f $80
	dec  de                                          ; $78c4: $1b
	add  b                                           ; $78c5: $80
	ld   a, $80                                      ; $78c6: $3e $80
	ld   l, b                                        ; $78c8: $68
	add  d                                           ; $78c9: $82
	nop                                              ; $78ca: $00
	add  b                                           ; $78cb: $80
	ret  c                                           ; $78cc: $d8

	add  b                                           ; $78cd: $80
	ldh  a, [$09]                                    ; $78ce: $f0 $09
	nop                                              ; $78d0: $00
	rst  $38                                         ; $78d1: $ff
	ld   a, a                                        ; $78d2: $7f
	rst  $38                                         ; $78d3: $ff
	rra                                              ; $78d4: $1f
	rst  $38                                         ; $78d5: $ff
	and  b                                           ; $78d6: $a0
	rst  $38                                         ; $78d7: $ff
	db   $db                                         ; $78d8: $db
	ei                                               ; $78d9: $fb
	add  b                                           ; $78da: $80
	cp   $00                                         ; $78db: $fe $00
	rst  $28                                         ; $78dd: $ef
	add  e                                           ; $78de: $83
	rst  $38                                         ; $78df: $ff
	dec  b                                           ; $78e0: $05
	rst  $30                                         ; $78e1: $f7
	rst  $38                                         ; $78e2: $ff
	add  a                                           ; $78e3: $87
	rst  $38                                         ; $78e4: $ff
	ld   a, a                                        ; $78e5: $7f
	rst  $38                                         ; $78e6: $ff
	add  b                                           ; $78e7: $80
	rst  $30                                         ; $78e8: $f7
	add  b                                           ; $78e9: $80

jr_01c_78ea:
	ld   a, b                                        ; $78ea: $78
	add  b                                           ; $78eb: $80
	nop                                              ; $78ec: $00
	add  d                                           ; $78ed: $82
	ret  nz                                          ; $78ee: $c0

	add  b                                           ; $78ef: $80
	call nz, $c380                                   ; $78f0: $c4 $80 $c3
	add  b                                           ; $78f3: $80
	inc  bc                                          ; $78f4: $03
	ld   c, $82                                      ; $78f5: $0e $82
	add  e                                           ; $78f7: $83
	dec  c                                           ; $78f8: $0d
	rrca                                             ; $78f9: $0f
	inc  sp                                          ; $78fa: $33
	ccf                                              ; $78fb: $3f
	inc  l                                           ; $78fc: $2c
	ccf                                              ; $78fd: $3f
	ld   h, b                                        ; $78fe: $60
	ld   a, a                                        ; $78ff: $7f
	ld   [hl], e                                     ; $7900: $73
	ld   a, a                                        ; $7901: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7902: $cf
	rst  $38                                         ; $7903: $ff
	scf                                              ; $7904: $37
	add  c                                           ; $7905: $81
	rst  $38                                         ; $7906: $ff
	ld   b, $ef                                      ; $7907: $06 $ef
	rst  $38                                         ; $7909: $ff
	inc  bc                                          ; $790a: $03
	rst  $38                                         ; $790b: $ff
	rra                                              ; $790c: $1f
	rst  $38                                         ; $790d: $ff
	ei                                               ; $790e: $fb
	add  c                                           ; $790f: $81
	rst  $38                                         ; $7910: $ff
	inc  c                                           ; $7911: $0c
	adc  a                                           ; $7912: $8f
	rst  $38                                         ; $7913: $ff
	add  b                                           ; $7914: $80
	rst  $38                                         ; $7915: $ff
	ldh  a, [rIE]                                    ; $7916: $f0 $ff
	cp   $ff                                         ; $7918: $fe $ff
	ret  nz                                          ; $791a: $c0

	rst  $38                                         ; $791b: $ff
	ld   bc, $2fff                                   ; $791c: $01 $ff $2f
	add  b                                           ; $791f: $80
	ld   hl, sp+$09                                  ; $7920: $f8 $09
	cp   $e6                                         ; $7922: $fe $e6
	rst  $38                                         ; $7924: $ff
	ld   a, a                                        ; $7925: $7f
	rst  $38                                         ; $7926: $ff
	add  hl, bc                                      ; $7927: $09
	rst  $38                                         ; $7928: $ff
	nop                                              ; $7929: $00
	rst  $38                                         ; $792a: $ff
	ld   a, [hl]                                     ; $792b: $7e

jr_01c_792c:
	add  d                                           ; $792c: $82
	rst  $38                                         ; $792d: $ff
	add  d                                           ; $792e: $82
	nop                                              ; $792f: $00
	add  b                                           ; $7930: $80
	add  b                                           ; $7931: $80
	add  b                                           ; $7932: $80
	ldh  [$09], a                                    ; $7933: $e0 $09
	ld   hl, sp+$08                                  ; $7935: $f8 $08
	cp   $01                                         ; $7937: $fe $01
	rst  $38                                         ; $7939: $ff
	ldh  a, [rIE]                                    ; $793a: $f0 $ff
	ret  nz                                          ; $793c: $c0

	rst  $38                                         ; $793d: $ff
	ret  nz                                          ; $793e: $c0

	add  b                                           ; $793f: $80
	ld   a, a                                        ; $7940: $7f
	ld   de, $383f                                   ; $7941: $11 $3f $38
	rra                                              ; $7944: $1f
	db   $10                                         ; $7945: $10
	rrca                                             ; $7946: $0f
	rlca                                             ; $7947: $07
	inc  bc                                          ; $7948: $03
	add  e                                           ; $7949: $83
	add  c                                           ; $794a: $81
	ld   bc, $10e0                                   ; $794b: $01 $e0 $10
	or   b                                           ; $794e: $b0
	ld   a, b                                        ; $794f: $78
	ret  c                                           ; $7950: $d8

	inc  a                                           ; $7951: $3c
	db   $ec                                         ; $7952: $ec
	ld   a, $80                                      ; $7953: $3e $80
	ldh  a, [c]                                      ; $7955: $f2
	nop                                              ; $7956: $00
	db   $f4                                         ; $7957: $f4
	add  c                                           ; $7958: $81
	push af                                          ; $7959: $f5
	ld   b, $f7                                      ; $795a: $06 $f7
	rst  $38                                         ; $795c: $ff
	ei                                               ; $795d: $fb
	add  d                                           ; $795e: $82
	ld   bc, $1373                                   ; $795f: $01 $73 $13
	add  b                                           ; $7962: $80
	inc  bc                                          ; $7963: $03
	nop                                              ; $7964: $00
	dec  de                                          ; $7965: $1b
	add  c                                           ; $7966: $81
	inc  bc                                          ; $7967: $03
	ld   bc, $0105                                   ; $7968: $01 $05 $01
	add  b                                           ; $796b: $80
	add  c                                           ; $796c: $81
	inc  bc                                          ; $796d: $03
	jp   $afc1                                       ; $796e: $c3 $c1 $af


	inc  d                                           ; $7971: $14
	add  b                                           ; $7972: $80
	inc  b                                           ; $7973: $04
	inc  b                                           ; $7974: $04
	dec  h                                           ; $7975: $25
	inc  b                                           ; $7976: $04
	dec  b                                           ; $7977: $05
	inc  b                                           ; $7978: $04
	dec  b                                           ; $7979: $05
	add  e                                           ; $797a: $83
	inc  b                                           ; $797b: $04
	add  b                                           ; $797c: $80
	dec  b                                           ; $797d: $05
	ld   b, $a3                                      ; $797e: $06 $a3
	rlca                                             ; $7980: $07
	rst  ToBoot                                         ; $7981: $c7
	rlca                                             ; $7982: $07
	ld   bc, $3031                                   ; $7983: $01 $31 $30
	add  b                                           ; $7986: $80
	ld   a, [hl]                                     ; $7987: $7e
	add  hl, bc                                      ; $7988: $09
	di                                               ; $7989: $f3
	sub  e                                           ; $798a: $93
	sbc  h                                           ; $798b: $9c
	ret  nz                                          ; $798c: $c0

	inc  bc                                          ; $798d: $03
	ld   hl, sp-$40                                  ; $798e: $f8 $c0
	ld   a, b                                        ; $7990: $78
	ldh  [$60], a                                    ; $7991: $e0 $60
	add  b                                           ; $7993: $80
	pop  hl                                          ; $7994: $e1
	inc  bc                                          ; $7995: $03
	pop  bc                                          ; $7996: $c1
	ld   b, c                                        ; $7997: $41
	ld   b, e                                        ; $7998: $43
	jp   $8380                                       ; $7999: $c3 $80 $83


	add  b                                           ; $799c: $80
	add  [hl]                                        ; $799d: $86
	inc  bc                                          ; $799e: $03
	ld   b, $0e                                      ; $799f: $06 $0e
	inc  b                                           ; $79a1: $04
	inc  c                                           ; $79a2: $0c
	rst  $38                                         ; $79a3: $ff
	nop                                              ; $79a4: $00
	db   $fc                                         ; $79a5: $fc
	nop                                              ; $79a6: $00


RleXorTileMap_SaveScreen::
	db $56, $00, $01, $80, $01, $83, $00, $0d, $03, $01, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $71, $89, $00, $14, $70, $1f, $01, $03, $01, $07, $01
	db $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $3f, $01, $03, $5d, $89, $00, $14, $5c, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $1f, $01
	db $03, $01, $07, $01, $03, $49, $89, $00, $14, $48, $0f, $01, $03, $01, $07, $01, $03, $01, $7f, $01, $03, $01, $07, $01, $03, $01, $0f, $01, $03, $35, $89, $00
	db $05, $34, $07, $01, $1c, $1e, $1f, $80, $00, $03, $03, $07, $01, $03, $83, $00, $03, $01, $0f, $01, $26, $89, $00, $14, $25, $01, $07, $01, $03, $86, $02, $06
	db $02, $3e, $02, $06, $02, $0e, $02, $06, $02, $b0, $3f, $03, $1d, $89, $00, $14, $1c, $07, $01, $03, $38, $87, $02, $06, $02, $3e, $02, $06, $02, $0e, $02, $06
	db $02, $b1, $37, $03, $15, $89, $00, $02, $14, $07, $22, $8d, $00, $02, $23, $03, $11, $89, $00, $14, $10, $1f, $01, $03, $2c, $08, $0e, $02, $06, $02, $3e, $02
	db $06, $02, $0e, $02, $06, $32, $2d, $07, $0b, $89, $00, $14, $0a, $11, $12, $01, $29, $09, $0e, $02, $06, $02, $3e, $02, $06, $02, $0e, $02, $06, $33, $26, $01
	db $06, $89, $00, $02, $05, $16, $22, $8d, $00, $02, $23, $16, $04, $89, $00, $14, $03, $01, $03, $01, $21, $2e, $02, $06, $02, $0e, $02, $06, $02, $fe, $02, $06
	db $02, $d8, $2d, $f3, $ff, $89, $00, $14, $fe, $fc, $ff, $01, $dd, $2f, $02, $06, $02, $0e, $02, $06, $02, $fe, $02, $06, $02, $d9, $da, $01, $fa, $89, $00, $05
	db $f9, $01, $ca, $00, $02, $1f, $80, $00, $03, $03, $07, $01, $03, $83, $00, $03, $01, $da, $03, $f1, $89, $00, $14, $f0, $1f, $01, $03, $01, $07, $01, $03, $01
	db $0f, $01, $03, $01, $07, $01, $07, $04, $01, $02, $3d, $df, $89, $00, $14, $de, $03, $01, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $1f, $01
	db $03, $1d, $1c, $cc, $89, $00, $14, $cb, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $7f, $01, $03, $01, $07, $01, $07, $04, $b9, $89, $00, $0f, $b8
	db $0f, $01, $03, $01, $07, $01, $03, $01, $1f, $01, $03, $01, $07, $01, $03, $81, $00, $01, $01, $a8, $89, $00, $01, $7f, $01, $83, $00, $0d, $03, $01, $07, $01
	db $03, $01, $0f, $01, $03, $01, $07, $01, $03, $71, $89, $00, $14, $70, $1f, $42, $da, $01, $9d, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $3f, $01
	db $03, $5d, $89, $00, $14, $5c, $07, $ae, $01, $07, $a4, $01, $03, $01, $07, $01, $03, $01, $1f, $01, $03, $01, $07, $01, $03, $49, $89, $00, $14, $70, $1f, $01
	db $03, $01, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $3f, $01, $03, $5d, $89, $00, $14, $5c, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01
	db $03, $01, $1f, $01, $03, $01, $07, $01, $03, $49, $89, $00, $14, $70, $1f, $1a, $01, $19, $06, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $3f, $01
	db $03, $5d, $89, $00, $14, $5c, $07, $28, $01, $2b, $0e, $01, $03, $01, $07, $01, $03, $01, $1f, $01, $03, $01, $07, $01, $03, $49, $89, $00, $14, $70, $1f, $1e
	db $01, $1f, $01, $03, $01, $07, $01, $0c, $03, $01, $07, $01, $03, $01, $3f, $01, $03, $5d, $89, $00, $14, $5c, $35, $01, $0f, $01, $03, $01, $07, $01, $03, $33
	db $03, $01, $1f, $01, $03, $01, $07, $01, $03, $49, $89, $00, $14, $70, $1f, $0f, $3f, $01, $03, $01, $07, $01, $03, $3f, $03, $01, $07, $01, $03, $01, $3f, $01
	db $03, $5d, $89, $00, $08, $5c, $07, $03, $0f, $01, $03, $01, $07, $01, $81, $03, $08, $01, $1f, $01, $03, $01, $07, $01, $03, $49, $89, $00, $01, $7f, $2f, $83
	db $00, $0d, $1f, $01, $03, $01, $35, $01, $0f, $01, $03, $01, $07, $01, $03, $71, $89, $00, $14, $4b, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $24
	db $07, $01, $03, $01, $3f, $01, $03, $5d, $89, $00, $14, $3f, $01, $03, $01, $07, $01, $03, $01, $0f, $01, $03, $01, $64, $1f, $01, $03, $01, $07, $01, $03, $49
	db $89, $00


	
	ei                                               ; $7c89: $fb
	nop                                              ; $7c8a: $00
	adc  a                                           ; $7c8b: $8f
	nop                                              ; $7c8c: $00
	add  h                                           ; $7c8d: $84
	ld   [bc], a                                     ; $7c8e: $02
	add  d                                           ; $7c8f: $82
	ld   b, $80                                      ; $7c90: $06 $80
	inc  b                                           ; $7c92: $04
	add  d                                           ; $7c93: $82
	nop                                              ; $7c94: $00

jr_01c_7c95:
	add  d                                           ; $7c95: $82
	ld   b, $81                                      ; $7c96: $06 $81
	ld   c, $00                                      ; $7c98: $0e $00
	inc  c                                           ; $7c9a: $0c
	add  c                                           ; $7c9b: $81
	ld   c, $00                                      ; $7c9c: $0e $00
	inc  c                                           ; $7c9e: $0c
	add  e                                           ; $7c9f: $83
	inc  e                                           ; $7ca0: $1c
	nop                                              ; $7ca1: $00
	jr   @-$7d                                       ; $7ca2: $18 $81

	inc  e                                           ; $7ca4: $1c
	add  a                                           ; $7ca5: $87
	jr   @-$70                                       ; $7ca6: $18 $8e

	nop                                              ; $7ca8: $00
	add  b                                           ; $7ca9: $80
	db   $10                                         ; $7caa: $10
	ld   [bc], a                                     ; $7cab: $02
	jr   jr_01c_7cb6                                 ; $7cac: $18 $08

	jr   @-$7d                                       ; $7cae: $18 $81

	ld   [$0c02], sp                                 ; $7cb0: $08 $02 $0c
	inc  b                                           ; $7cb3: $04
	inc  c                                           ; $7cb4: $0c
	add  c                                           ; $7cb5: $81

jr_01c_7cb6:
	inc  b                                           ; $7cb6: $04
	inc  bc                                          ; $7cb7: $03
	ld   b, $02                                      ; $7cb8: $06 $02
	ld   b, $02                                      ; $7cba: $06 $02
	adc  [hl]                                        ; $7cbc: $8e
	nop                                              ; $7cbd: $00
	add  b                                           ; $7cbe: $80
	add  b                                           ; $7cbf: $80
	add  b                                           ; $7cc0: $80
	ld   b, b                                        ; $7cc1: $40
	add  d                                           ; $7cc2: $82
	ld   h, b                                        ; $7cc3: $60
	add  b                                           ; $7cc4: $80
	ld   [hl], b                                     ; $7cc5: $70
	add  b                                           ; $7cc6: $80
	ld   a, b                                        ; $7cc7: $78
	add  b                                           ; $7cc8: $80
	jr   c, @-$7e                                    ; $7cc9: $38 $80

	inc  a                                           ; $7ccb: $3c
	add  d                                           ; $7ccc: $82
	nop                                              ; $7ccd: $00

jr_01c_7cce:
	inc  b                                           ; $7cce: $04
	inc  b                                           ; $7ccf: $04
	nop                                              ; $7cd0: $00
	inc  [hl]                                        ; $7cd1: $34
	inc  l                                           ; $7cd2: $2c
	inc  e                                           ; $7cd3: $1c
	sub  a                                           ; $7cd4: $97
	nop                                              ; $7cd5: $00
	add  c                                           ; $7cd6: $81
	inc  c                                           ; $7cd7: $0c
	inc  bc                                          ; $7cd8: $03
	nop                                              ; $7cd9: $00
	ld   l, h                                        ; $7cda: $6c
	ld   e, b                                        ; $7cdb: $58
	jr   c, @-$67                                    ; $7cdc: $38 $97

	nop                                              ; $7cde: $00
	add  d                                           ; $7cdf: $82
	ld   b, b                                        ; $7ce0: $40
	add  h                                           ; $7ce1: $84
	jr   nz, @-$7e                                   ; $7ce2: $20 $80

	db $30, $82

	db   $10                                         ; $7ce6: $10
	add  b                                           ; $7ce7: $80
	ld   a, [bc]                                     ; $7ce8: $0a
	sub  h                                           ; $7ce9: $94
	nop                                              ; $7cea: $00
	add  b                                           ; $7ceb: $80
	ld   b, b                                        ; $7cec: $40
	add  b                                           ; $7ced: $80
	ld   [hl], b                                     ; $7cee: $70
	add  b                                           ; $7cef: $80
	ld   a, a                                        ; $7cf0: $7f
	add  h                                           ; $7cf1: $84
	rst  $38                                         ; $7cf2: $ff
	add  b                                           ; $7cf3: $80
	rra                                              ; $7cf4: $1f
	sub  e                                           ; $7cf5: $93
	nop                                              ; $7cf6: $00
	inc  c                                           ; $7cf7: $0c
	db   $10                                         ; $7cf8: $10
	ldh  a, [hScriptOpcodeParams]                                    ; $7cf9: $f0 $a0
	ret  nz                                          ; $7cfb: $c0

	and  b                                           ; $7cfc: $a0
	ldh  [$d0], a                                    ; $7cfd: $e0 $d0
	ldh  a, [$e8]                                    ; $7cff: $f0 $e8
	ld   hl, sp-$0c                                  ; $7d01: $f8 $f4
	inc  a                                           ; $7d03: $3c
	jr   c, jr_01c_7c95                              ; $7d04: $38 $8f

	nop                                              ; $7d06: $00
	add  b                                           ; $7d07: $80
	ld   bc, $0408                                   ; $7d08: $01 $08 $04
	rlca                                             ; $7d0b: $07
	inc  bc                                          ; $7d0c: $03
	rrca                                             ; $7d0d: $0f
	dec  bc                                          ; $7d0e: $0b
	rlca                                             ; $7d0f: $07
	ld   bc, $0103                                   ; $7d10: $01 $03 $01
	adc  l                                           ; $7d13: $8d
	nop                                              ; $7d14: $00
	ld   b, $04                                      ; $7d15: $06 $04
	rlca                                             ; $7d17: $07
	inc  de                                          ; $7d18: $13
	rra                                              ; $7d19: $1f
	ld   c, a                                        ; $7d1a: $4f
	ld   a, a                                        ; $7d1b: $7f
	ccf                                              ; $7d1c: $3f
	add  [hl]                                        ; $7d1d: $86
	rst  $38                                         ; $7d1e: $ff
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	add  b                                           ; $7d21: $80
	ld   bc, $0087                                   ; $7d22: $01 $87 $00
	add  b                                           ; $7d25: $80

jr_01c_7d26:
	ld   bc, $0380                                   ; $7d26: $01 $80 $03
	add  b                                           ; $7d29: $80
	rlca                                             ; $7d2a: $07
	add  b                                           ; $7d2b: $80
	inc  bc                                          ; $7d2c: $03
	add  b                                           ; $7d2d: $80
	rrca                                             ; $7d2e: $0f
	add  d                                           ; $7d2f: $82
	rst  $28                                         ; $7d30: $ef
	add  d                                           ; $7d31: $82
	rst  $38                                         ; $7d32: $ff
	ld   b, $fe                                      ; $7d33: $06 $fe
	rst  $38                                         ; $7d35: $ff
	ld   sp, hl                                      ; $7d36: $f9
	rst  $38                                         ; $7d37: $ff
	rst  ToBoot                                         ; $7d38: $c7
	cp   $3e                                         ; $7d39: $fe $3e
	add  b                                           ; $7d3b: $80
	ldh  a, [$83]                                    ; $7d3c: $f0 $83
	nop                                              ; $7d3e: $00
	add  b                                           ; $7d3f: $80
	ld   [$0c80], sp                                 ; $7d40: $08 $80 $0c
	add  b                                           ; $7d43: $80
	ld   e, $80                                      ; $7d44: $1e $80
	rra                                              ; $7d46: $1f
	add  d                                           ; $7d47: $82
	ld   a, $82                                      ; $7d48: $3e $82
	inc  e                                           ; $7d4a: $1c
	add  d                                           ; $7d4b: $82
	jr   jr_01c_7cce                                 ; $7d4c: $18 $80

	sub  b                                           ; $7d4e: $90
	add  h                                           ; $7d4f: $84
	add  b                                           ; $7d50: $80
	add  l                                           ; $7d51: $85
	nop                                              ; $7d52: $00
	inc  b                                           ; $7d53: $04
	ld   b, $00                                      ; $7d54: $06 $00
	ld   [$1100], sp                                 ; $7d56: $08 $00 $11
	add  c                                           ; $7d59: $81
	nop                                              ; $7d5a: $00
	ld   [$0020], sp                                 ; $7d5b: $08 $20 $00
	inc  bc                                          ; $7d5e: $03
	nop                                              ; $7d5f: $00
	ld   c, h                                        ; $7d60: $4c
	nop                                              ; $7d61: $00
	jr   nc, jr_01c_7d64                             ; $7d62: $30 $00

jr_01c_7d64:
	ld   b, b                                        ; $7d64: $40
	adc  a                                           ; $7d65: $8f
	nop                                              ; $7d66: $00
	inc  c                                           ; $7d67: $0c
	rrca                                             ; $7d68: $0f
	nop                                              ; $7d69: $00
	ld   h, b                                        ; $7d6a: $60

jr_01c_7d6b:
	nop                                              ; $7d6b: $00
	ld   b, b                                        ; $7d6c: $40
	nop                                              ; $7d6d: $00
	ld   de, $0200                                   ; $7d6e: $11 $00 $02
	nop                                              ; $7d71: $00
	inc  [hl]                                        ; $7d72: $34
	nop                                              ; $7d73: $00
	ld   [$008f], sp                                 ; $7d74: $08 $8f $00
	nop                                              ; $7d77: $00
	ldh  a, [$81]                                    ; $7d78: $f0 $81
	nop                                              ; $7d7a: $00
	ld   [bc], a                                     ; $7d7b: $02
	jr   nc, jr_01c_7d7e                             ; $7d7c: $30 $00

jr_01c_7d7e:
	ret  nz                                          ; $7d7e: $c0

	sub  h                                           ; $7d7f: $94
	nop                                              ; $7d80: $00
	add  b                                           ; $7d81: $80
	add  b                                           ; $7d82: $80
	add  b                                           ; $7d83: $80
	ld   b, b                                        ; $7d84: $40
	add  b                                           ; $7d85: $80
	ld   h, b                                        ; $7d86: $60
	add  b                                           ; $7d87: $80
	ld   [hl], b                                     ; $7d88: $70
	add  d                                           ; $7d89: $82
	ld   a, b                                        ; $7d8a: $78
	add  d                                           ; $7d8b: $82
	inc  a                                           ; $7d8c: $3c
	add  d                                           ; $7d8d: $82
	ld   e, $80                                      ; $7d8e: $1e $80
	ld   c, $82                                      ; $7d90: $0e $82
	ld   b, $82                                      ; $7d92: $06 $82
	ld   [bc], a                                     ; $7d94: $02
	add  d                                           ; $7d95: $82
	nop                                              ; $7d96: $00
	add  h                                           ; $7d97: $84
	ld   bc, $0384                                   ; $7d98: $01 $84 $03
	add  h                                           ; $7d9b: $84
	rlca                                             ; $7d9c: $07
	add  b                                           ; $7d9d: $80
	rrca                                             ; $7d9e: $0f
	add  d                                           ; $7d9f: $82
	ld   c, $80                                      ; $7da0: $0e $80
	inc  c                                           ; $7da2: $0c
	add  b                                           ; $7da3: $80
	jr   jr_01c_7d26                                 ; $7da4: $18 $80

	db   $10                                         ; $7da6: $10
	add  a                                           ; $7da7: $87
	nop                                              ; $7da8: $00
	add  b                                           ; $7da9: $80
	ld   bc, $0207                                   ; $7daa: $01 $07 $02
	inc  bc                                          ; $7dad: $03
	dec  b                                           ; $7dae: $05
	rlca                                             ; $7daf: $07
	dec  bc                                          ; $7db0: $0b
	rrca                                             ; $7db1: $0f
	rlca                                             ; $7db2: $07
	rrca                                             ; $7db3: $0f
	add  b                                           ; $7db4: $80
	rra                                              ; $7db5: $1f
	ld   bc, $1f0f                                   ; $7db6: $01 $0f $1f
	add  b                                           ; $7db9: $80
	ccf                                              ; $7dba: $3f
	inc  b                                           ; $7dbb: $04
	rra                                              ; $7dbc: $1f
	ccf                                              ; $7dbd: $3f
	ld   a, $1f                                      ; $7dbe: $3e $1f
	ld   e, $81                                      ; $7dc0: $1e $81
	ld   a, $00                                      ; $7dc2: $3e $00
	inc  a                                           ; $7dc4: $3c
	add  c                                           ; $7dc5: $81
	ld   a, [hl]                                     ; $7dc6: $7e
	nop                                              ; $7dc7: $00
	ld   a, h                                        ; $7dc8: $7c
	add  c                                           ; $7dc9: $81
	db   $fc                                         ; $7dca: $fc
	ld   bc, $fcf8                                   ; $7dcb: $01 $f8 $fc
	add  b                                           ; $7dce: $80
	ld   hl, sp+$01                                  ; $7dcf: $f8 $01
	ldh  a, [$f8]                                    ; $7dd1: $f0 $f8
	add  c                                           ; $7dd3: $81
	ldh  a, [$82]                                    ; $7dd4: $f0 $82
	ldh  [$80], a                                    ; $7dd6: $e0 $80
	ret  nz                                          ; $7dd8: $c0

	add  d                                           ; $7dd9: $82
	add  b                                           ; $7dda: $80
	adc  l                                           ; $7ddb: $8d
	nop                                              ; $7ddc: $00
	ld   [$0601], sp                                 ; $7ddd: $08 $01 $06
	ld   [$2030], sp                                 ; $7de0: $08 $30 $20
	nop                                              ; $7de3: $00
	jr   nz, jr_01c_7de6                             ; $7de4: $20 $00

jr_01c_7de6:
	jr   nz, jr_01c_7d6b                             ; $7de6: $20 $83

	nop                                              ; $7de8: $00
	ld   b, $10                                      ; $7de9: $06 $10
	nop                                              ; $7deb: $00
	ld   bc, $0600                                   ; $7dec: $01 $00 $06
	nop                                              ; $7def: $00
	ld   [$0087], sp                                 ; $7df0: $08 $87 $00

jr_01c_7df3:
	ld   [bc], a                                     ; $7df3: $02
	jr   @+$62                                       ; $7df4: $18 $60

	add  b                                           ; $7df6: $80
	add  e                                           ; $7df7: $83
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	ld   [$0081], sp                                 ; $7dfa: $08 $81 $00
	add  b                                           ; $7dfd: $80
	db   $10                                         ; $7dfe: $10
	inc  b                                           ; $7dff: $04
	jr   nc, jr_01c_7e22                             ; $7e00: $30 $20

	ld   h, b                                        ; $7e02: $60
	ld   b, b                                        ; $7e03: $40
	ret  nz                                          ; $7e04: $c0

	add  b                                           ; $7e05: $80
	add  b                                           ; $7e06: $80
	add  e                                           ; $7e07: $83
	nop                                              ; $7e08: $00
	ld   [$013e], sp                                 ; $7e09: $08 $3e $01
	inc  bc                                          ; $7e0c: $03
	ld   [bc], a                                     ; $7e0d: $02
	ld   h, $04                                      ; $7e0e: $26 $04
	ld   l, h                                        ; $7e10: $6c
	ld   [$9d78], sp                                 ; $7e11: $08 $78 $9d
	nop                                              ; $7e14: $00
	ld   c, $e0                                      ; $7e15: $0e $e0
	db   $10                                         ; $7e17: $10
	inc  c                                           ; $7e18: $0c
	ld   [bc], a                                     ; $7e19: $02
	add  c                                           ; $7e1a: $81
	add  b                                           ; $7e1b: $80
	ret  nz                                          ; $7e1c: $c0

	ld   b, b                                        ; $7e1d: $40
	ld   h, c                                        ; $7e1e: $61
	jr   nz, jr_01c_7e51                             ; $7e1f: $20 $30

	db   $10                                         ; $7e21: $10

jr_01c_7e22:
	jr   jr_01c_7e2c                                 ; $7e22: $18 $08

	ld   c, $80                                      ; $7e24: $0e $80
	inc  b                                           ; $7e26: $04
	adc  c                                           ; $7e27: $89
	nop                                              ; $7e28: $00
	add  d                                           ; $7e29: $82
	ld   b, b                                        ; $7e2a: $40
	add  d                                           ; $7e2b: $82

jr_01c_7e2c:
	ld   h, b                                        ; $7e2c: $60
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	add  b                                           ; $7e2f: $80
	add  b                                           ; $7e30: $80
	add  b                                           ; $7e31: $80
	ld   [hl], b                                     ; $7e32: $70
	add  b                                           ; $7e33: $80
	ld   a, b                                        ; $7e34: $78
	add  b                                           ; $7e35: $80
	inc  a                                           ; $7e36: $3c
	add  b                                           ; $7e37: $80
	ld   e, $80                                      ; $7e38: $1e $80
	ld   c, $82                                      ; $7e3a: $0e $82
	rrca                                             ; $7e3c: $0f
	add  [hl]                                        ; $7e3d: $86
	nop                                              ; $7e3e: $00
	ld   [bc], a                                     ; $7e3f: $02
	ld   bc, $0200                                   ; $7e40: $01 $00 $02
	add  c                                           ; $7e43: $81
	nop                                              ; $7e44: $00
	ld   bc, $0704                                   ; $7e45: $01 $04 $07
	add  a                                           ; $7e48: $87
	nop                                              ; $7e49: $00
	ld   [bc], a                                     ; $7e4a: $02
	ld   bc, $0100                                   ; $7e4b: $01 $00 $01
	sub  c                                           ; $7e4e: $91
	nop                                              ; $7e4f: $00
	db   $10                                         ; $7e50: $10

jr_01c_7e51:
	ld   bc, $0402                                   ; $7e51: $01 $02 $04
	ld   [$2013], sp                                 ; $7e54: $08 $13 $20
	ld   c, a                                        ; $7e57: $4f
	add  b                                           ; $7e58: $80
	inc  a                                           ; $7e59: $3c
	nop                                              ; $7e5a: $00
	ld   [hl], b                                     ; $7e5b: $70
	nop                                              ; $7e5c: $00

jr_01c_7e5d:
	rst  ToBoot                                         ; $7e5d: $c7
	nop                                              ; $7e5e: $00
	ld   hl, sp+$00                                  ; $7e5f: $f8 $00
	add  b                                           ; $7e61: $80
	add  a                                           ; $7e62: $87
	nop                                              ; $7e63: $00
	ld   bc, $01fe                                   ; $7e64: $01 $fe $01
	add  d                                           ; $7e67: $82
	nop                                              ; $7e68: $00
	ld   [bc], a                                     ; $7e69: $02
	add  b                                           ; $7e6a: $80
	nop                                              ; $7e6b: $00
	ld   b, b                                        ; $7e6c: $40
	add  c                                           ; $7e6d: $81
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	jr   nz, jr_01c_7df3                             ; $7e70: $20 $81

	nop                                              ; $7e72: $00
	inc  b                                           ; $7e73: $04
	stop                                             ; $7e74: $10 $00
	inc  bc                                          ; $7e76: $03

jr_01c_7e77:
	nop                                              ; $7e77: $00
	inc  c                                           ; $7e78: $0c

jr_01c_7e79:
	adc  l                                           ; $7e79: $8d
	nop                                              ; $7e7a: $00
	ld   [$423c], sp                                 ; $7e7b: $08 $3c $42
	add  c                                           ; $7e7e: $81
	nop                                              ; $7e7f: $00
	ld   a, b                                        ; $7e80: $78
	nop                                              ; $7e81: $00
	rst  $38                                         ; $7e82: $ff
	nop                                              ; $7e83: $00
	add  a                                           ; $7e84: $87

jr_01c_7e85:
	add  e                                           ; $7e85: $83
	nop                                              ; $7e86: $00
	ld   [bc], a                                     ; $7e87: $02
	db   $fc                                         ; $7e88: $fc
	nop                                              ; $7e89: $00
	inc  bc                                          ; $7e8a: $03

jr_01c_7e8b:
	adc  d                                           ; $7e8b: $8a
	nop                                              ; $7e8c: $00
	ld   a, [bc]                                     ; $7e8d: $0a
	add  b                                           ; $7e8e: $80
	ld   b, b                                        ; $7e8f: $40
	jr   nz, jr_01c_7ea2                             ; $7e90: $20 $10

	ld   [$0400], sp                                 ; $7e92: $08 $00 $04
	nop                                              ; $7e95: $00
	ld   [bc], a                                     ; $7e96: $02

jr_01c_7e97:
	nop                                              ; $7e97: $00
	ld   bc, $0080                                   ; $7e98: $01 $80 $00
	ld   [bc], a                                     ; $7e9b: $02
	ccf                                              ; $7e9c: $3f
	inc  hl                                          ; $7e9d: $23
	db   $e3                                         ; $7e9e: $e3
	add  b                                           ; $7e9f: $80
	add  b                                           ; $7ea0: $80
	sub  d                                           ; $7ea1: $92

jr_01c_7ea2:
	nop                                              ; $7ea2: $00
	ld   a, [bc]                                     ; $7ea3: $0a
	add  b                                           ; $7ea4: $80
	ld   b, b                                        ; $7ea5: $40
	jr   nz, jr_01c_7ea8                             ; $7ea6: $20 $00

jr_01c_7ea8:
	db   $10                                         ; $7ea8: $10
	ret  z                                           ; $7ea9: $c8

	nop                                              ; $7eaa: $00

jr_01c_7eab:
	db   $e4                                         ; $7eab: $e4
	nop                                              ; $7eac: $00
	jr   nz, jr_01c_7eb1                             ; $7ead: $20 $02

jr_01c_7eaf:
	add  b                                           ; $7eaf: $80
	nop                                              ; $7eb0: $00

jr_01c_7eb1:
	ld   a, [bc]                                     ; $7eb1: $0a
	add  b                                           ; $7eb2: $80
	ld   bc, $0060                                   ; $7eb3: $01 $60 $00
	stop                                             ; $7eb6: $10 $00
	ld   [$0400], sp                                 ; $7eb8: $08 $00 $04
	nop                                              ; $7ebb: $00
	ld   [bc], a                                     ; $7ebc: $02
	add  c                                           ; $7ebd: $81
	nop                                              ; $7ebe: $00
	ld   [$0801], sp                                 ; $7ebf: $08 $01 $08
	nop                                              ; $7ec2: $00
	inc  b                                           ; $7ec3: $04
	ld   [$0002], sp                                 ; $7ec4: $08 $02 $00
	ld   bc, $8104                                   ; $7ec7: $01 $04 $81
	nop                                              ; $7eca: $00
	ld   [bc], a                                     ; $7ecb: $02
	ld   [bc], a                                     ; $7ecc: $02
	nop                                              ; $7ecd: $00
	ld   bc, $0083                                   ; $7ece: $01 $83 $00

jr_01c_7ed1:
	nop                                              ; $7ed1: $00
	jr   jr_01c_7e5d                                 ; $7ed2: $18 $89

	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	db   $10                                         ; $7ed6: $10
	add  c                                           ; $7ed7: $81
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	ld   [$008d], sp                                 ; $7eda: $08 $8d $00
	ld   bc, $c038                                   ; $7edd: $01 $38 $c0

Jump_01c_7ee0:
	add  b                                           ; $7ee0: $80
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	ld   [$0081], sp                                 ; $7ee3: $08 $81 $00
	ld   [bc], a                                     ; $7ee6: $02
	jr   nc, jr_01c_7ee9                             ; $7ee7: $30 $00

jr_01c_7ee9:
	ret  nz                                          ; $7ee9: $c0

jr_01c_7eea:
	and  h                                           ; $7eea: $a4
	nop                                              ; $7eeb: $00
	add  b                                           ; $7eec: $80
	rlca                                             ; $7eed: $07
	add  d                                           ; $7eee: $82
	inc  bc                                          ; $7eef: $03
	add  d                                           ; $7ef0: $82
	ld   bc, $008c                                   ; $7ef1: $01 $8c $00
	add  b                                           ; $7ef4: $80
	jr   nc, jr_01c_7e77                             ; $7ef5: $30 $80

	jr   c, jr_01c_7e79                              ; $7ef7: $38 $80

	inc  a                                           ; $7ef9: $3c
	add  b                                           ; $7efa: $80
	ld   a, $80                                      ; $7efb: $3e $80
	ccf                                              ; $7efd: $3f
	add  b                                           ; $7efe: $80
	ld   a, $80                                      ; $7eff: $3e $80
	inc  a                                           ; $7f01: $3c
	add  b                                           ; $7f02: $80
	jr   c, jr_01c_7e85                              ; $7f03: $38 $80

	jr   nc, jr_01c_7e97                             ; $7f05: $30 $90

	nop                                              ; $7f07: $00
	add  b                                           ; $7f08: $80
	jr   nc, jr_01c_7e8b                             ; $7f09: $30 $80

	inc  a                                           ; $7f0b: $3c
	add  b                                           ; $7f0c: $80
	ccf                                              ; $7f0d: $3f
	add  b                                           ; $7f0e: $80
	inc  a                                           ; $7f0f: $3c
	add  b                                           ; $7f10: $80
	jr   nc, jr_01c_7eab                             ; $7f11: $30 $98

	nop                                              ; $7f13: $00
	add  b                                           ; $7f14: $80
	ccf                                              ; $7f15: $3f
	sbc  e                                           ; $7f16: $9b
	nop                                              ; $7f17: $00
	inc  bc                                          ; $7f18: $03
	ld   hl, sp+$00                                  ; $7f19: $f8 $00
	ld   hl, sp+$00                                  ; $7f1b: $f8 $00
	add  b                                           ; $7f1d: $80
	ccf                                              ; $7f1e: $3f
	add  c                                           ; $7f1f: $81
	inc  c                                           ; $7f20: $0c
	add  b                                           ; $7f21: $80
	inc  l                                           ; $7f22: $2c
	add  c                                           ; $7f23: $81
	inc  c                                           ; $7f24: $0c
	add  b                                           ; $7f25: $80
	nop                                              ; $7f26: $00
	inc  bc                                          ; $7f27: $03
	jr   c, jr_01c_7eea                              ; $7f28: $38 $c0

	ld   hl, sp+$00                                  ; $7f2a: $f8 $00
	add  b                                           ; $7f2c: $80
	jr   nc, jr_01c_7eaf                             ; $7f2d: $30 $80

	or   b                                           ; $7f2f: $b0
	add  b                                           ; $7f30: $80
	ldh  a, [$80]                                    ; $7f31: $f0 $80
	ld   [hl], b                                     ; $7f33: $70
	add  b                                           ; $7f34: $80
	jr   nc, jr_01c_7ed1                             ; $7f35: $30 $9a

	nop                                              ; $7f37: $00
	add  b                                           ; $7f38: $80
	ld   bc, $0207                                   ; $7f39: $01 $07 $02
	inc  bc                                          ; $7f3c: $03
	dec  b                                           ; $7f3d: $05
	rlca                                             ; $7f3e: $07
	dec  bc                                          ; $7f3f: $0b
	rrca                                             ; $7f40: $0f
	rlca                                             ; $7f41: $07
	inc  c                                           ; $7f42: $0c
	add  b                                           ; $7f43: $80
	inc  e                                           ; $7f44: $1c
	ld   bc, $1c0c                                   ; $7f45: $01 $0c $1c
	add  b                                           ; $7f48: $80
	inc  a                                           ; $7f49: $3c
	nop                                              ; $7f4a: $00
	inc  e                                           ; $7f4b: $1c
	add  b                                           ; $7f4c: $80
	inc  a                                           ; $7f4d: $3c
	add  b                                           ; $7f4e: $80
	inc  e                                           ; $7f4f: $1c
	add  b                                           ; $7f50: $80
	inc  a                                           ; $7f51: $3c
	adc  c                                           ; $7f52: $89
	nop                                              ; $7f53: $00
	ld   b, $01                                      ; $7f54: $06 $01
	ld   b, $08                                      ; $7f56: $06 $08
	jr   nc, jr_01c_7f7a                             ; $7f58: $30 $20

	nop                                              ; $7f5a: $00
	rra                                              ; $7f5b: $1f
	rst  $38                                         ; $7f5c: $ff
	nop                                              ; $7f5d: $00
	rst  $38                                         ; $7f5e: $ff
	nop                                              ; $7f5f: $00
	rst  $38                                         ; $7f60: $ff
	nop                                              ; $7f61: $00
	rst  $38                                         ; $7f62: $ff
	nop                                              ; $7f63: $00
	rst  $38                                         ; $7f64: $ff
	nop                                              ; $7f65: $00
	add  $00                                         ; $7f66: $c6 $00
	jr   nc, jr_01c_7f6a                             ; $7f68: $30 $00

jr_01c_7f6a:
	inc  bc                                          ; $7f6a: $03
	db   $10                                         ; $7f6b: $10
	ld   bc, $5603                                   ; $7f6c: $01 $03 $56
	add  e                                           ; $7f6f: $83
	nop                                              ; $7f70: $00
	ld   [bc], a                                     ; $7f71: $02
	add  h                                           ; $7f72: $84
	ld   bc, $8585                                   ; $7f73: $01 $85 $85
	nop                                              ; $7f76: $00
	ld   bc, $3543                                   ; $7f77: $01 $43 $35

jr_01c_7f7a:
	adc  c                                           ; $7f7a: $89
	nop                                              ; $7f7b: $00
	ld   [bc], a                                     ; $7f7c: $02
	ld   hl, $5007                                   ; $7f7d: $21 $07 $50
	add  e                                           ; $7f80: $83
	nop                                              ; $7f81: $00
	inc  b                                           ; $7f82: $04
	add  [hl]                                        ; $7f83: $86
	ld   bc, $0107                                   ; $7f84: $01 $07 $01
	add  c                                           ; $7f87: $81
	add  h                                           ; $7f88: $84
	nop                                              ; $7f89: $00
	ld   bc, $3543                                   ; $7f8a: $01 $43 $35
	adc  c                                           ; $7f8d: $89
	nop                                              ; $7f8e: $00
	ld   [bc], a                                     ; $7f8f: $02
	ld   bc, $5325                                   ; $7f90: $01 $25 $53
	add  h                                           ; $7f93: $84
	nop                                              ; $7f94: $00
	ld   [bc], a                                     ; $7f95: $02
	add  e                                           ; $7f96: $83
	ld   bc, $8582                                   ; $7f97: $01 $82 $85
	nop                                              ; $7f9a: $00
	ld   bc, $3542                                   ; $7f9b: $01 $42 $35
	adc  c                                           ; $7f9e: $89
	nop                                              ; $7f9f: $00
	ld   bc, $7206                                   ; $7fa0: $01 $06 $72
	add  h                                           ; $7fa3: $84
	nop                                              ; $7fa4: $00
	dec  b                                           ; $7fa5: $05
	adc  [hl]                                        ; $7fa6: $8e
	ld   bc, $0103                                   ; $7fa7: $01 $03 $01
	rlca                                             ; $7faa: $07
	adc  d                                           ; $7fab: $8a
	add  e                                           ; $7fac: $83
	nop                                              ; $7fad: $00
	ld   bc, $3541                                   ; $7fae: $01 $41 $35
	adc  c                                           ; $7fb1: $89
	nop                                              ; $7fb2: $00
	ld   bc, $6712                                   ; $7fb3: $01 $12 $67
	add  h                                           ; $7fb6: $84
	nop                                              ; $7fb7: $00
	inc  bc                                          ; $7fb8: $03
	adc  d                                           ; $7fb9: $8a
	inc  bc                                          ; $7fba: $03
	ld   bc, $8088                                   ; $7fbb: $01 $88 $80
	sub  a                                           ; $7fbe: $97
	add  e                                           ; $7fbf: $83
	nop                                              ; $7fc0: $00
	ld   bc, $3540                                   ; $7fc1: $01 $40 $35
	adc  c                                           ; $7fc4: $89
	nop                                              ; $7fc5: $00
	ld   bc, $6812                                   ; $7fc6: $01 $12 $68
	add  h                                           ; $7fc9: $84
	nop                                              ; $7fca: $00
	inc  bc                                          ; $7fcb: $03
	sbc  c                                           ; $7fcc: $99
	inc  bc                                          ; $7fcd: $03
	ld   bc, $859b                                   ; $7fce: $01 $9b $85
	nop                                              ; $7fd1: $00
	ld   bc, $354f                                   ; $7fd2: $01 $4f $35
	adc  c                                           ; $7fd5: $89
	nop                                              ; $7fd6: $00
	ld   bc, $6912                                   ; $7fd7: $01 $12 $69
	add  d                                           ; $7fda: $82
	nop                                              ; $7fdb: $00
	add  b                                           ; $7fdc: $80
	sbc  l                                           ; $7fdd: $9d
	inc  bc                                          ; $7fde: $03
	sbc  h                                           ; $7fdf: $9c
	inc  bc                                          ; $7fe0: $03
	ld   bc, $839e                                   ; $7fe1: $01 $9e $83
	nop                                              ; $7fe4: $00
	inc  bc                                          ; $7fe5: $03
	ld   e, h                                        ; $7fe6: $5c
	ld   [hl], $07                                   ; $7fe7: $36 $07
	ld   d, $89                                      ; $7fe9: $16 $89
	nop                                              ; $7feb: $00
	ld   bc, $6810                                   ; $7fec: $01 $10 $68
	add  d                                           ; $7fef: $82
	nop                                              ; $7ff0: $00
	add  b                                           ; $7ff1: $80
	sub  d                                           ; $7ff2: $92
	rlca                                             ; $7ff3: $07
	sub  e                                           ; $7ff4: $93
	inc  bc                                          ; $7ff5: $03
	ld   bc, $9607                                   ; $7ff6: $01 $07 $96
	nop                                              ; $7ff9: $00
	ld   l, a                                        ; $7ffa: $6f
	inc  bc                                          ; $7ffb: $03
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
